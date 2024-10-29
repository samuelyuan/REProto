SECTION "ROM Bank $0f8", ROMX[$4000], BANK[$f8]

    ld b, e
    ld c, b
    ld d, d
    ld c, c
    ld d, e
    ld a, [hl-]
    jr nz, jr_0f8_4009

    ld c, d

jr_0f8_4009:
    ld c, c
    ld c, h
    ld c, h
    ld a, [hl-]
    jr nz, jr_0f8_4010

    ld d, a

jr_0f8_4010:
    ld b, l
    ld d, e
    ld c, e
    ld b, l
    ld d, d
    ld a, [hl-]
    jr nz, jr_0f8_4019

    ld d, d

jr_0f8_4019:
    ld b, l
    ld b, d
    ld b, l
    ld b, e
    ld b, e
    ld b, c
    ld a, [hl-]
    jr nz, jr_0f8_4023

    ld b, d

jr_0f8_4023:
    ld b, c
    ld d, d
    ld d, d
    ld e, c
    ld a, [hl-]
    jr nz, jr_0f8_402b

    ld d, h

jr_0f8_402b:
    ld e, c
    ld d, d
    ld b, c
    ld c, [hl]
    ld d, h
    ld a, [hl-]
    jr nz, jr_0f8_4034

    ld b, l

jr_0f8_4034:
    ld c, [hl]
    ld d, d
    ld c, c
    ld b, e
    ld c, a
    ld a, [hl-]
    jr nz, jr_0f8_403d

    ld d, d

jr_0f8_403d:
    ld c, c
    ld b, e
    ld c, b
    ld b, c
    ld d, d
    ld b, h
    ld a, [hl-]
    jr nz, jr_0f8_4047

    ld b, d

jr_0f8_4047:
    ld d, d
    ld b, c
    ld b, h
    ld a, [hl-]
    jr nz, jr_0f8_404e

    ccf

jr_0f8_404e:
    ccf
    ccf
    ccf
    ld a, [hl-]
    jr nz, jr_0f8_4055

    ld c, c

jr_0f8_4055:
    jr nz, jr_0f8_40bb

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_0f8_40d9

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_40cf

    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    ccf
    ld bc, $2e2e
    ld b, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l
    nop
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_40e9

    ld [hl], e
    jr nz, jr_0f8_40c5

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    ccf
    ld bc, $6557
    ld l, h
    ld l, h
    inc l
    jr nz, jr_0f8_40d9

    daa
    ld l, l
    nop
    ld [hl], e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_0f8_40fc

    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_4106

    ld h, l
    daa
    ld [hl], e
    nop
    ld [hl], b
    ld [hl], d
    ld l, a
    ld h, d
    ld h, c
    ld h, d
    ld l, h
    ld a, c
    ld l, $2e
    ld bc, $6f4e
    ld hl, $2e2e
    ld bc, $6857
    ld h, c
    ld [hl], h
    jr nz, @+$6b

    ld [hl], e
    nop

jr_0f8_40bb:
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    ld hl, HeaderManufacturerCode
    ld c, c
    daa
    ld l, h

jr_0f8_40c5:
    ld l, h
    jr nz, jr_0f8_412f

    ld l, a
    nop
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_4132

jr_0f8_40cf:
    ld l, b
    ld h, l
    ld h, e
    ld l, e
    ld l, $01
    ld l, $2e
    ld l, $4f

jr_0f8_40d9:
    ld c, e
    inc l
    nop
    ld c, d
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_4143

    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_412f

    jr nz, @+$79

    ld l, c

jr_0f8_40e9:
    ld l, h
    ld l, h
    jr nz, @+$75

    ld [hl], h
    ld h, c
    ld a, c
    nop
    ld l, c
    ld l, [hl]
    jr nz, jr_0f8_4169

    ld l, b
    ld h, l
    jr nz, jr_0f8_4161

    ld h, c
    ld l, h
    ld l, h

jr_0f8_40fc:
    jr nz, jr_0f8_4167

    ld l, [hl]
    jr nz, jr_0f8_4164

    ld h, c
    ld [hl], e
    ld h, l
    nop
    ld l, a

jr_0f8_4106:
    ld h, [hl]
    jr nz, jr_0f8_416a

    ld l, [hl]
    jr nz, jr_0f8_4171

    ld l, l
    ld h, l
    ld [hl], d
    ld h, a
    ld h, l
    ld l, [hl]
    ld h, e
    ld a, c
    ld l, $01
    ld b, e
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld hl, $5401
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0f8_4186

    ld h, c
    ld [hl], d
    ld h, l
    ld hl, $0001
    ld c, c
    ld l, [hl]
    db $76
    ld h, l
    ld [hl], e
    ld [hl], h

jr_0f8_412f:
    ld l, c
    ld h, a
    ld h, c

jr_0f8_4132:
    ld [hl], h
    ld h, l
    jr nz, jr_0f8_419f

    ld h, [hl]
    jr nz, jr_0f8_41b2

    ld l, a
    ld [hl], l
    nop
    ld l, b
    ld h, l
    ld h, c
    ld [hl], d
    jr nz, jr_0f8_41a3

    ld l, [hl]

jr_0f8_4143:
    ld a, c
    jr nz, @+$69

    ld [hl], l
    ld l, [hl]
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld h, l
    ld l, $01
    nop
    ld d, a
    ld h, l
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d
    inc l
    jr nz, @+$4c

    ld l, c
    ld l, h
    ld l, h
    ld l, $2e
    ccf
    ld bc, $6857

jr_0f8_4161:
    ld h, c
    ld [hl], h
    nop

jr_0f8_4164:
    ld l, b
    ld h, c
    ld [hl], b

jr_0f8_4167:
    ld [hl], b
    ld h, l

jr_0f8_4169:
    ld l, [hl]

jr_0f8_416a:
    ld h, l
    ld h, h
    jr nz, jr_0f8_41e2

    ld l, a
    jr nz, @+$4c

jr_0f8_4171:
    ld l, c
    ld l, h
    ld l, h
    nop
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_41d1

    ld h, l
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d
    ccf
    ld bc, $6857
    ld h, c
    ld h, c
    ld l, a

jr_0f8_4186:
    ld hl, $5700
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_41f7

    ld [hl], e
    jr nz, jr_0f8_41fa

    ld [hl], h
    ccf
    ld bc, $6857
    ld h, c
    ld [hl], h
    ccf
    nop
    ld c, a
    ld l, b
    ld hl, $4f20

jr_0f8_419f:
    ld l, b
    inc l
    jr nz, jr_0f8_4211

jr_0f8_41a3:
    ld l, a
    ld hl, $5320
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    ld hl, $4900
    jr nz, @+$66

    ld l, c
    ld h, h

jr_0f8_41b2:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_4224

    ld h, l
    ld h, c
    ld l, [hl]
    jr nz, jr_0f8_4230

    ld l, a
    nop
    ld h, h
    ld l, a
    jr nz, jr_0f8_4236

    ld l, b
    ld h, c
    ld [hl], h
    ld hl, $2e2e
    ld bc, $6f59
    ld [hl], l
    jr nz, jr_0f8_423b

    ld [hl], l
    ld [hl], e
    ld [hl], h

jr_0f8_41d1:
    nop
    ld h, d
    ld h, l
    jr nz, jr_0f8_423c

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_0f8_4221

    ld [hl], d
    ld h, c
    db $76

jr_0f8_41e2:
    ld l, a
    nop
    ld d, h
    ld h, l
    ld h, c
    ld l, l
    ld l, $2e
    ld bc, $5900
    ld h, l
    ld [hl], e
    ld l, $20
    ld c, c
    daa
    ld l, l
    jr nz, jr_0f8_4248

    ld h, l

jr_0f8_41f7:
    ld h, d
    ld h, l
    ld h, e

jr_0f8_41fa:
    ld h, e
    ld h, c
    ld hl, $5200
    ld h, l
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    jr nz, jr_0f8_424a

    ld l, b
    ld h, c
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    ld [hl], e
    ld hl, $4901

jr_0f8_4211:
    daa
    ld l, l
    jr nz, jr_0f8_4276

    nop
    ld l, [hl]
    ld h, l
    ld [hl], a
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], d
    ld l, $20
    ld c, c

jr_0f8_4221:
    jr nz, jr_0f8_428d

    ld [hl], l

jr_0f8_4224:
    ld [hl], e
    ld [hl], h
    nop
    ld l, d
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, l
    ld h, h
    jr nz, jr_0f8_42a3

    ld l, b

jr_0f8_4230:
    ld h, l
    jr nz, jr_0f8_4286

    ld d, h
    ld b, c
    ld d, d

jr_0f8_4236:
    ld d, e
    nop
    ld b, d
    ld [hl], d
    ld h, c

jr_0f8_423b:
    db $76

jr_0f8_423c:
    ld l, a
    jr nz, jr_0f8_4293

    ld h, l
    ld h, c
    ld l, l
    jr nz, jr_0f8_42b0

    ld h, c
    ld [hl], e
    ld [hl], h
    nop

jr_0f8_4248:
    inc b
    ld l, l

jr_0f8_424a:
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld l, b
    ld hl, $5720
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_0f8_42a0

    daa
    ld l, l
    nop
    inc b
    ld [hl], d
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_0f8_42d6

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $20
    ld b, c
    ld [hl], d
    ld h, l
    nop
    inc b
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, @+$63

    ld l, h
    ld [hl], d
    ld l, c

jr_0f8_4276:
    ld h, a
    ld l, b
    ld [hl], h
    ccf
    ld bc, $6559
    ld [hl], e
    ld l, $00
    ld c, c
    daa
    ld l, l
    jr nz, jr_0f8_42c8

    ld l, b

jr_0f8_4286:
    ld [hl], d
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_42dd

    ld h, l
    ld h, h

jr_0f8_428d:
    ld h, [hl]
    ld l, c
    ld h, l
    ld l, h
    ld h, h
    nop

jr_0f8_4293:
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_0f8_42de

    ld l, h
    ld [hl], b
    ld l, b

jr_0f8_42a0:
    ld h, c
    jr nz, @+$56

jr_0f8_42a3:
    ld h, l
    ld h, c
    ld l, l
    ld l, $01
    ld b, c
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_4326

    ld l, a
    ld [hl], l
    nop

jr_0f8_42b0:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f8_4324

    ld l, [hl]
    ld l, h
    ld a, c
    jr nz, jr_0f8_432a

    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, a
    ld l, [hl]
    jr nz, jr_0f8_4329

    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld h, [hl]
    ld [hl], d
    ld l, a

jr_0f8_42c8:
    ld l, l
    jr nz, jr_0f8_433f

    ld l, b
    ld h, l
    jr nz, jr_0f8_4311

    ld [hl], d
    ld h, c
    db $76
    ld l, a
    jr nz, jr_0f8_4329

    ld h, l

jr_0f8_42d6:
    ld h, c
    ld l, l
    ccf
    ld bc, $6557
    ld l, h

jr_0f8_42dd:
    ld l, h

jr_0f8_42de:
    inc l
    nop
    ld h, d
    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    nop
    ld l, b
    ld h, l
    ld l, h
    ld l, c
    ld h, e
    ld l, a
    ld [hl], b
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_4365

    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_0f8_435e

    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, e
    ld h, l
    ld h, h
    jr nz, jr_0f8_4372

    ld h, c
    ld l, [hl]
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $2e
    ld c, c
    nop
    inc b

jr_0f8_4311:
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_4389

    ld h, c
    ld l, [hl]
    jr nz, jr_0f8_4384

    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_4394

    ld l, b
    ld l, c
    ld [hl], e
    nop

jr_0f8_4324:
    inc b
    ld l, b

jr_0f8_4326:
    ld l, a
    ld [hl], l
    ld [hl], e

jr_0f8_4329:
    ld h, l

jr_0f8_432a:
    jr nz, jr_0f8_438d

    ld l, [hl]
    ld a, c
    ld [hl], a
    ld h, c
    ld a, c
    inc l
    nop
    inc b
    ld h, d
    ld [hl], l
    ld [hl], h
    ld l, $2e
    ld c, c
    ld l, $2e
    ld [hl], l
    ld l, b
    ccf

jr_0f8_433f:
    ld bc, $2049
    ld [hl], e
    ld h, l
    ld h, l
    ld l, $00
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_43b7

    ld [hl], e
    jr nz, jr_0f8_43bf

    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld h, l
    ld l, h
    ld [hl], e
    ld h, l
    jr nz, jr_0f8_43d7

jr_0f8_435e:
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_43c5

    ld l, a
    ld [hl], l
    ld l, h

jr_0f8_4365:
    ld h, h
    jr nz, jr_0f8_43d0

    ld h, c
    db $76
    ld h, l
    nop
    ld h, h
    ld l, a
    ld l, [hl]
    ld h, l
    ld l, $20

jr_0f8_4372:
    ld b, c
    ld l, [hl]
    ld a, c
    ld [hl], a
    ld h, c
    ld a, c
    inc l
    jr nz, @+$6b

    ld [hl], h
    jr nz, jr_0f8_43e7

    ld [hl], e
    nop
    inc b
    ld h, a
    ld l, a
    ld l, a

jr_0f8_4384:
    ld h, h
    jr nz, jr_0f8_43fb

    ld l, b
    ld h, c

jr_0f8_4389:
    ld [hl], h
    jr nz, jr_0f8_4405

    ld l, a

jr_0f8_438d:
    ld [hl], l
    jr nz, jr_0f8_43f1

    ld [hl], d
    ld h, l
    nop
    inc b

jr_0f8_4394:
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $01
    nop
    ld e, c
    ld h, l
    ld [hl], e
    ld l, $20
    ld d, e
    ld l, c
    ld [hl], d
    ld l, $2e
    ld bc, $4200
    ld [hl], l
    ld [hl], h
    inc l
    jr nz, jr_0f8_4416

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_4425

    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, a

jr_0f8_43b7:
    ld h, l
    ld l, $2e
    ld bc, $4900
    jr nz, jr_0f8_4432

jr_0f8_43bf:
    ld h, l
    ld [hl], d
    db $76
    ld l, c
    ld h, e
    ld h, l

jr_0f8_43c5:
    ld h, h
    jr nz, jr_0f8_443c

    ld l, b
    ld h, l
    nop
    ld l, b
    ld h, l
    ld l, h
    ld l, c
    ld h, e

jr_0f8_43d0:
    ld l, a
    ld [hl], b
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_4449

jr_0f8_43d7:
    ld h, l
    ld h, e
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, h
    ld a, c
    inc l
    nop
    ld h, d
    ld [hl], l
    ld [hl], h
    jr nz, @+$75

    ld l, a
    ld l, l

jr_0f8_43e7:
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_4466

    ld h, l
    ld l, [hl]

jr_0f8_43f1:
    ld [hl], h
    nop
    inc b
    ld [hl], a
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_4472

jr_0f8_43fb:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_4474

    ld l, b
    ld h, l
    nop
    inc b
    ld h, l

jr_0f8_4405:
    ld l, [hl]
    ld h, a
    ld l, c
    ld l, [hl]
    ld h, l
    ld l, $20
    ld c, c
    ld [hl], h
    jr nz, jr_0f8_4487

    ld h, c
    ld [hl], e
    jr nz, jr_0f8_4487

    ld [hl], l
    ld h, e

jr_0f8_4416:
    ld l, b
    nop
    inc b
    ld h, c
    jr nz, jr_0f8_448f

    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, @+$68

    ld l, h
    ld l, c
    ld h, a

jr_0f8_4425:
    ld l, b
    ld [hl], h
    ld l, $2e
    ld bc, $4900
    jr nz, jr_0f8_44a5

    ld l, a
    ld l, [hl]
    ld h, h
    ld h, l

jr_0f8_4432:
    ld [hl], d
    nop
    ld l, c
    ld h, [hl]
    jr nz, jr_0f8_449d

    db $76
    ld h, l
    ld [hl], d
    ld a, c

jr_0f8_443c:
    ld h, d
    ld l, a
    ld h, h
    ld a, c
    jr nz, jr_0f8_44ab

    ld [hl], e
    ld l, $2e
    ld bc, $6557
    ld l, h

jr_0f8_4449:
    ld l, h
    inc l
    jr nz, jr_0f8_44c4

    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_0f8_44a2

    jr nz, jr_0f8_44bf

    ld l, a
    jr nz, jr_0f8_44cc

    ld l, a
    ld [hl], a
    ccf
    ld bc, $6649
    jr nz, jr_0f8_44df

jr_0f8_4466:
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_44d1

    ld l, a
    nop
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_44e5

    ld l, a

jr_0f8_4472:
    jr nz, @+$75

jr_0f8_4474:
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    jr nz, jr_0f8_44e1

    ld l, a
    ld [hl], d
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f8_44f2

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_0f8_4487:
    jr nz, jr_0f8_44f6

    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    ld [hl], e

jr_0f8_448f:
    inc l
    nop
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_450f

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_4506

    ld h, l
    ld [hl], h
    ld [hl], h

jr_0f8_449d:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_450f

jr_0f8_44a2:
    ld h, l
    nop
    inc b

jr_0f8_44a5:
    ld h, e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_0f8_4522

jr_0f8_44ab:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_4529

    ld l, a
    ld [hl], l
    ccf
    ld bc, $7449
    daa
    ld [hl], e
    nop
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld a, c

jr_0f8_44bf:
    jr nz, jr_0f8_4525

    ld h, c
    ld l, [hl]
    ld h, a

jr_0f8_44c4:
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    nop
    ld l, a
    ld [hl], l

jr_0f8_44cc:
    ld [hl], h
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l

jr_0f8_44d1:
    ld l, $20
    ld c, h
    ld h, l
    ld [hl], h
    jr nz, jr_0f8_4545

    ld h, l
    jr nz, jr_0f8_454f

    ld h, c
    ld l, e
    ld h, l
    nop

jr_0f8_44df:
    ld h, e
    ld h, c

jr_0f8_44e1:
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_4554

jr_0f8_44e5:
    ld h, [hl]
    jr nz, jr_0f8_4551

    ld [hl], h
    ld l, $21
    ld bc, $4900
    jr nz, jr_0f8_4565

    ld l, [hl]
    ld h, h

jr_0f8_44f2:
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_0f8_44f6:
    ld h, c
    ld l, [hl]
    ld h, h
    ld l, $20
    ld b, [hl]
    ld l, a
    ld [hl], d
    nop
    ld l, [hl]
    ld l, a
    ld [hl], a
    inc l
    jr nz, jr_0f8_454e

    daa

jr_0f8_4506:
    ld l, h
    ld l, h
    jr nz, jr_0f8_4581

    ld h, c
    ld l, c
    ld [hl], h
    jr nz, jr_0f8_4577

jr_0f8_450f:
    ld h, l
    ld [hl], d
    ld h, l
    inc l
    nop
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_0f8_458f

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_4582

    ld [hl], d

jr_0f8_4522:
    ld h, l
    jr nz, jr_0f8_4586

jr_0f8_4525:
    nop
    inc b
    ld l, h
    ld l, a

jr_0f8_4529:
    ld [hl], h
    jr nz, jr_0f8_459b

    ld h, [hl]
    jr nz, jr_0f8_4592

    ld l, b
    ld h, l
    ld l, l
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    ld [hl], e
    jr nz, @+$6b

    ld l, [hl]
    nop
    inc b
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_45b4

    ld l, a
    ld l, a
    ld l, l

jr_0f8_4545:
    jr nz, jr_0f8_45a8

    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_45bf

    ld l, b
    ld h, l
    ld a, c

jr_0f8_454e:
    nop

jr_0f8_454f:
    inc b
    ld l, l

jr_0f8_4551:
    ld l, c
    ld h, a
    ld l, b

jr_0f8_4554:
    ld [hl], h
    jr nz, jr_0f8_45b9

    ld h, l
    jr nz, jr_0f8_45cf

    ld [hl], e
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, $01
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_0f8_4565:
    inc l
    nop
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_45d9

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_0f8_45e1

    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_45eb

jr_0f8_4577:
    ld l, b
    ld h, l
    nop
    ld h, e
    ld l, b
    ld h, l
    ld l, l
    ld l, c
    ld h, e
    ld h, c

jr_0f8_4581:
    ld l, h

jr_0f8_4582:
    ld [hl], e
    ld l, $01
    nop

jr_0f8_4586:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_45f9

    ld h, l
    jr nz, @+$45

jr_0f8_458f:
    ld l, b
    ld [hl], d
    ld l, c

jr_0f8_4592:
    ld [hl], e
    ld l, $01
    ld c, c
    ld [hl], e
    jr nz, jr_0f8_460d

    ld l, b
    ld h, c

jr_0f8_459b:
    ld [hl], h
    nop
    ld a, c
    ld l, a
    ld [hl], l
    inc l
    jr nz, jr_0f8_45f5

    ld h, l
    ld h, d
    ld h, l
    ld h, e
    ld h, e

jr_0f8_45a8:
    ld h, c
    ccf
    ld bc, $4100
    ld l, b
    inc l
    jr nz, jr_0f8_461a

    ld [hl], h
    daa
    ld [hl], e

jr_0f8_45b4:
    jr nz, jr_0f8_462a

    ld l, b
    ld h, l
    nop

jr_0f8_45b9:
    daa
    ld c, l
    ld l, a
    ld l, a
    ld l, [hl]
    ld l, h

jr_0f8_45bf:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_0f8_4618

    ld l, a
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, c
    daa
    ld l, $01
    nop
    ld b, e

jr_0f8_45cf:
    ld h, c
    ld l, [hl]
    jr nz, jr_0f8_464c

    ld l, a
    ld [hl], l
    jr nz, @+$72

    ld l, h
    ld h, c

jr_0f8_45d9:
    ld a, c
    ccf
    ld bc, $6157
    ld l, c
    ld [hl], h
    inc l

jr_0f8_45e1:
    nop
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_4651

    ld [hl], e
    jr nz, jr_0f8_465f

jr_0f8_45eb:
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    ld bc, $4d00
    ld a, c
    jr nz, jr_0f8_465e

jr_0f8_45f5:
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld [hl], d

jr_0f8_45f9:
    ld [hl], b
    ld [hl], d
    ld h, l
    ld [hl], h
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    nop
    ld l, c
    ld [hl], e
    jr nz, @+$71

    ld h, [hl]
    ld h, [hl]
    jr nz, @+$63

    jr nz, jr_0f8_4679

jr_0f8_460d:
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    ld l, $01
    ld b, e
    ld l, b
    ld [hl], d
    ld l, c

jr_0f8_4618:
    ld [hl], e
    inc l

jr_0f8_461a:
    nop
    ld l, l
    ld h, c
    ld a, c
    jr nz, jr_0f8_4669

    jr nz, jr_0f8_4692

    ld [hl], d
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    nop

jr_0f8_462a:
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_0f8_4690

    jr nz, jr_0f8_46a8

    ld l, b
    ld l, c
    ld l, h
    ld h, l
    ccf
    ld bc, $6553
    ld h, l
    inc l
    nop
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_46b4

    ld h, l
    ld l, h
    ld h, c
    ld a, b
    jr nz, jr_0f8_46a9

    ld l, [hl]
    ld h, h
    nop
    ld [hl], b

jr_0f8_464c:
    ld l, h
    ld h, c
    ld a, c
    ld l, $01

jr_0f8_4651:
    nop
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_46c9

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $01
    nop

jr_0f8_465e:
    ld b, e

jr_0f8_465f:
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, $20
    ld b, e
    ld l, b
    ld [hl], d
    ld l, c

jr_0f8_4669:
    ld [hl], e
    ld hl, $0001
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_46de

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_0f8_46e0

    ld [hl], h
    ccf

jr_0f8_4679:
    ld bc, $4f00
    ld l, b
    inc l
    jr nz, jr_0f8_46f4

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_46fc

    ld h, c
    ld [hl], e
    jr nz, jr_0f8_46f0

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld hl, $0001

jr_0f8_4690:
    ld d, a
    ld l, b

jr_0f8_4692:
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_46ff

    ld [hl], e
    jr nz, jr_0f8_470d

    ld l, b
    ld h, c
    ld [hl], h
    ld hl, HeaderManufacturerCode
    ld c, c
    ld [hl], e
    jr nz, jr_0f8_4717

    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld a, c

jr_0f8_46a8:
    ld l, a

jr_0f8_46a9:
    ld [hl], l
    inc l
    jr nz, jr_0f8_46ff

    ld h, l
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    ccf

jr_0f8_46b4:
    ld bc, $6843
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, $00
    ld b, c
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_473a

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_4726

    ld l, h
    ld [hl], d
    ld l, c
    ld h, a

jr_0f8_46c9:
    ld l, b
    ld [hl], h
    ccf
    ld bc, $6559
    ld h, c
    ld l, b
    ld l, $00
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_4741

    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]

jr_0f8_46de:
    ld h, l
    ld h, h

jr_0f8_46e0:
    ccf
    ld bc, $6f59
    ld [hl], l
    jr nz, jr_0f8_475e

    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld h, d
    ld l, c
    ld [hl], h
    ld [hl], h
    ld h, l

jr_0f8_46f0:
    ld l, [hl]
    jr nz, @+$64

    ld a, c

jr_0f8_46f4:
    jr nz, jr_0f8_4757

    nop
    ld [hl], b
    ld l, a
    ld l, c
    ld [hl], e
    ld l, a

jr_0f8_46fc:
    ld l, [hl]
    ld l, a
    ld [hl], l

jr_0f8_46ff:
    ld [hl], e
    jr nz, jr_0f8_4775

    ld l, [hl]
    ld h, c
    ld l, e
    ld h, l
    ld l, $00
    ld b, c
    ld [hl], d
    ld h, l
    jr nz, @+$7b

jr_0f8_470d:
    ld l, a
    ld [hl], l
    jr nz, @+$51

    ld c, e
    ccf
    ld bc, $6f41
    ld [hl], l

jr_0f8_4717:
    ld l, b
    ld hl, $4d00
    ld a, c
    jr nz, @+$6a

    ld h, l
    ld h, c
    ld h, h
    jr nz, jr_0f8_478c

    ld [hl], e
    nop
    ld l, e

jr_0f8_4726:
    ld l, c
    ld l, h
    ld l, h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_479b

    ld h, l
    ld l, $01
    ld c, c
    jr nz, @+$76

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    nop
    ld a, c

jr_0f8_473a:
    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_47a3

jr_0f8_4741:
    ld h, l
    jr nz, jr_0f8_47a5

    ld l, h
    ld [hl], d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    nop
    ld h, d
    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_0f8_479d

    jr nz, jr_0f8_47bd

    ld h, c

jr_0f8_4757:
    db $76
    ld h, l
    jr nz, jr_0f8_47d4

    ld l, a
    ld [hl], l
    nop

jr_0f8_475e:
    ld h, c
    jr nz, jr_0f8_47d4

    ld l, b
    ld l, a
    ld [hl], h
    inc l
    jr nz, jr_0f8_47c9

    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_47db

    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    nop
    inc b
    ld [hl], e
    ld [hl], h
    ld h, c

jr_0f8_4775:
    ld a, c
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_47eb

    ld h, [hl]
    jr nz, @+$76

    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_47ff

jr_0f8_478c:
    ld h, c
    db $76
    ld h, l
    ld h, h
    nop
    ld l, l
    ld a, c
    jr nz, jr_0f8_4801

    ld l, c
    ld h, [hl]
    ld h, l
    ld l, $20
    ld c, c

jr_0f8_479b:
    jr nz, @+$71

jr_0f8_479d:
    ld [hl], a
    ld h, l
    nop
    ld a, c
    ld l, a
    ld [hl], l

jr_0f8_47a3:
    jr nz, jr_0f8_4814

jr_0f8_47a5:
    ld l, [hl]
    ld h, l
    ld l, $01
    nop
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_4819

    ld [hl], e
    jr nz, jr_0f8_4827

    ld l, b
    ld l, c
    ld [hl], e
    ld l, $2e
    ccf
    ld bc, $6f57
    ld [hl], a

jr_0f8_47bd:
    ld hl, $5700
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$63

    jr nz, @+$6f

    ld h, c
    ld l, [hl]

jr_0f8_47c9:
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld bc, $4300
    ld h, c
    ld [hl], b
    ld [hl], h
    ld h, c

jr_0f8_47d4:
    ld l, c
    ld l, [hl]
    jr nz, jr_0f8_482f

    ld h, l
    ld [hl], e
    ld l, e

jr_0f8_47db:
    ld h, l
    ld [hl], d
    inc l
    nop
    ld d, a
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0f8_482b

    ld l, b
    ld [hl], d
    ld l, c

jr_0f8_47eb:
    ld [hl], e
    ccf
    ld bc, $7453
    ld l, a
    ld [hl], b
    jr nz, jr_0f8_485d

    ld [hl], h
    ld hl, $4400
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_486d

    ld [hl], b

jr_0f8_47ff:
    ld h, l
    ld l, [hl]

jr_0f8_4801:
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld h, h
    ld l, a
    ld l, a
    ld [hl], d
    ld hl, $0001
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, @+$45

    ld l, b

jr_0f8_4814:
    ld [hl], d
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_4882

jr_0f8_4819:
    ld [hl], e
    ld l, $2e
    ld l, $2e
    ld hl, $0001
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$6b

jr_0f8_4827:
    ld [hl], e
    jr nz, jr_0f8_4893

    ld [hl], h

jr_0f8_482b:
    ccf
    ld bc, $4d00

jr_0f8_482f:
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, jr_0f8_489e

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_487d

    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ccf
    ld bc, $6f4e
    ld [hl], a
    jr nz, jr_0f8_488f

    ld l, c
    ld l, h
    ld l, h
    inc l
    nop
    ld h, e
    ld h, c
    ld l, [hl]
    jr nz, jr_0f8_48c8

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_48ba

    ld l, a
    ccf
    ld bc, $2749
    ld l, l
    jr nz, jr_0f8_48c2

    ld l, a
    ld l, c

jr_0f8_485d:
    ld l, [hl]
    ld h, a
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_48df

    ld l, a
    ld [hl], l
    ld hl, $4320
    ld l, b
    ld [hl], d

jr_0f8_486d:
    ld l, c
    ld [hl], e
    jr nz, @+$6b

    ld [hl], e
    nop
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_0f8_48e7

    ld l, h
    ld h, h
    jr nz, jr_0f8_48ec

    ld h, c

jr_0f8_487d:
    ld [hl], d
    ld [hl], h
    ld l, [hl]
    ld h, l
    ld [hl], d

jr_0f8_4882:
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_48f3

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $01
    ld c, a
    ld c, e

jr_0f8_488f:
    ld hl, $4c20
    ld h, l

jr_0f8_4893:
    ld [hl], h
    nop
    ld l, l
    ld h, l
    jr nz, jr_0f8_4901

    ld h, c
    ld l, [hl]
    ld h, h
    ld l, h
    ld h, l

jr_0f8_489e:
    jr nz, jr_0f8_4914

    ld l, b
    ld l, c
    ld [hl], e
    ld l, $01
    nop
    ld d, e
    ld [hl], h
    ld h, c
    ld a, c
    jr nz, jr_0f8_48ed

    ld l, h
    ld h, l
    ld [hl], d
    ld [hl], h
    ld l, $01
    nop
    ld b, c
    jr nz, jr_0f8_491a

    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]

jr_0f8_48ba:
    ld h, a
    jr nz, jr_0f8_492f

    ld l, a
    ld l, a
    ld l, l
    ld l, $2e

jr_0f8_48c2:
    ld l, $2e
    ld bc, $6857
    ld h, c

jr_0f8_48c8:
    ld [hl], h
    ccf
    nop
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_493a

    ld [hl], e
    jr nz, jr_0f8_4948

    ld l, b
    ld l, c
    ld [hl], e
    ld l, $2e
    ld l, $3f
    ld bc, $5700
    ld l, b

jr_0f8_48df:
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_494c

    ld [hl], e
    jr nz, jr_0f8_494f

    ld [hl], h

jr_0f8_48e7:
    ccf
    ld bc, $6c42
    ld l, a

jr_0f8_48ec:
    ld l, a

jr_0f8_48ed:
    ld h, h
    ld l, $2e
    ld l, $00
    ld c, d

jr_0f8_48f3:
    ld l, c
    ld l, h
    ld l, h
    inc l
    jr nz, jr_0f8_496c

    ld h, l
    ld h, l
    jr nz, jr_0f8_4966

    ld h, [hl]
    jr nz, jr_0f8_4979

    ld l, a

jr_0f8_4901:
    ld [hl], l
    jr nz, jr_0f8_4967

    ld h, c
    ld l, [hl]
    nop
    ld h, [hl]
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, @+$63

    ld l, [hl]
    ld a, c
    jr nz, @+$71

    ld [hl], h
    ld l, b
    ld h, l

jr_0f8_4914:
    ld [hl], d
    nop
    ld h, e
    ld l, h
    ld [hl], l
    ld h, l

jr_0f8_491a:
    ld [hl], e
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_4985

    ld h, l
    nop
    inc b
    ld h, l
    ld a, b
    ld h, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a

jr_0f8_492f:
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    ld l, $01
    ld c, b
    ld l, a
    ld [hl], b
    ld h, l

jr_0f8_493a:
    jr nz, jr_0f8_49b0

    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld l, c
    ld [hl], e
    jr nz, @+$70

    ld l, a
    ld [hl], h
    jr nz, @+$45

jr_0f8_4948:
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e

jr_0f8_494c:
    daa
    ld [hl], e
    nop

jr_0f8_494f:
    ld h, d
    ld l, h
    ld l, a
    ld l, a
    ld h, h
    ld l, $01
    nop
    ld b, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $2e
    ld l, $2e
    ld hl, $0001
    ld d, a
    ld l, b
    ld h, c

jr_0f8_4966:
    ld [hl], h

jr_0f8_4967:
    jr nz, jr_0f8_49d2

    ld [hl], e
    jr nz, jr_0f8_49d5

jr_0f8_496c:
    ld [hl], h
    ld hl, HeaderManufacturerCode
    ld d, a
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, jr_0f8_49e6

    ld [hl], l
    ld [hl], h

jr_0f8_4979:
    ld hl, $4900
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_49e2

    jr nz, jr_0f8_49f0

    ld l, a
    ld l, [hl]

jr_0f8_4985:
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $4c01
    ld h, l
    ld [hl], h
    jr nz, jr_0f8_49fd

    ld h, l
    nop
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0f8_49fb

    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_4a0c

    ld h, [hl]
    jr nz, jr_0f8_4a14

    ld l, b
    ld l, c
    ld [hl], e
    ld hl, $0001
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_4a15

    ld [hl], e
    jr nz, jr_0f8_4a18

    ld [hl], h

jr_0f8_49b0:
    ccf
    ld bc, $654b
    ld l, [hl]
    ld l, [hl]
    ld h, l
    ld [hl], h
    ld l, b
    nop
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, jr_0f8_4a2a

    ld l, c
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    jr nz, jr_0f8_4a3a

    ld l, a
    ld l, a
    ld l, $00
    ld c, l
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, @+$64

    ld a, c

jr_0f8_49d2:
    jr nz, jr_0f8_4a48

    ld l, b

jr_0f8_49d5:
    ld l, c
    ld [hl], e
    nop
    ld h, e
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $01

jr_0f8_49e2:
    ld b, c
    ld l, [hl]
    ld a, c
    ld [hl], a

jr_0f8_49e6:
    ld h, c
    ld a, c
    nop
    ld l, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_4a62

jr_0f8_49f0:
    ld h, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    jr nz, jr_0f8_4a6b

    ld l, b
    ld l, c
    ld [hl], e
    nop

jr_0f8_49fb:
    ld [hl], h
    ld l, a

jr_0f8_49fd:
    jr nz, jr_0f8_4a56

    ld h, l
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d
    ld l, $01
    ld d, a
    ld h, l
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d

jr_0f8_4a0c:
    ld hl, $4801
    ld h, l
    ld l, h
    ld [hl], b
    jr nz, jr_0f8_4a81

jr_0f8_4a14:
    ld h, l

jr_0f8_4a15:
    nop
    ld l, h
    ld l, a

jr_0f8_4a18:
    ld l, a
    ld l, e
    jr nz, jr_0f8_4a82

    ld l, a
    ld [hl], d
    jr nz, jr_0f8_4a88

    ld l, c
    ld l, l
    jr nz, @+$4c

    ld l, c
    ld l, h
    ld l, h
    inc l
    nop
    ld h, c

jr_0f8_4a2a:
    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_4a92

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_4aa0

    ld h, l
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_4aae

jr_0f8_4a3a:
    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld l, b
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_4aaa

    ld l, a
    ld [hl], d
    jr nz, jr_0f8_4abc

jr_0f8_4a48:
    ld l, b
    ld h, l
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    nop
    inc b
    ld h, d
    ld h, l
    ld l, c
    ld l, [hl]
    ld h, a

jr_0f8_4a56:
    ld hl, $0001
    ld b, [hl]
    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, @+$63

    ld l, [hl]
    ld a, c
    ld [hl], h

jr_0f8_4a62:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_4ab2

    ld l, c
    ld l, h
    ld l, h

jr_0f8_4a6b:
    ccf
    ld bc, $6f4e
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $01
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$6b

    ld [hl], e
    nop
    ld [hl], h
    ld l, b
    ld l, c

jr_0f8_4a81:
    ld [hl], e

jr_0f8_4a82:
    jr nz, @+$63

    ld l, h
    ld l, h
    jr nz, jr_0f8_4ae9

jr_0f8_4a88:
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    ccf
    nop
    ld c, c
    jr nz, jr_0f8_4af4

    ld h, c

jr_0f8_4a92:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_4afd

    ld l, c
    ld h, a
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_4b07

    ld [hl], h
    nop

jr_0f8_4aa0:
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_4b06

    ld [hl], h
    jr nz, jr_0f8_4b09

    ld l, h
    ld l, h

jr_0f8_4aaa:
    ld l, $01
    nop
    ld b, d

jr_0f8_4aae:
    ld h, l
    ld h, c
    ld [hl], h
    ld [hl], e

jr_0f8_4ab2:
    jr nz, jr_0f8_4b21

    ld h, l
    inc l
    jr nz, jr_0f8_4b2c

    ld l, a
    ld l, a
    ld l, $01

jr_0f8_4abc:
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_0f8_4b2a

    ld [hl], h
    daa
    ld [hl], e
    nop
    ld d, a
    ld h, l
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d
    daa
    ld [hl], e
    jr nz, jr_0f8_4b43

    ld l, c
    ld l, l
    ld h, l
    jr nz, jr_0f8_4b48

    ld l, a
    nop
    ld h, h
    ld l, c
    ld [hl], e
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], d
    ld l, $2e
    ld l, $2e
    ld c, c
    jr nz, jr_0f8_4b4a

    ld l, a
    ld l, [hl]
    daa

jr_0f8_4ae9:
    ld [hl], h
    nop
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_0f8_4b68

    ld l, b
    ld h, c
    ld [hl], h

jr_0f8_4af4:
    daa
    ld [hl], e
    jr nz, jr_0f8_4b5f

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    nop

jr_0f8_4afd:
    inc b
    ld l, a
    ld l, [hl]
    ld hl, $5701
    ld h, l
    ld l, h
    ld l, h

jr_0f8_4b06:
    inc l

jr_0f8_4b07:
    nop
    ld l, c

jr_0f8_4b09:
    ld [hl], h
    jr nz, jr_0f8_4b6f

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_4b74

    ld h, l
    jr nz, jr_0f8_4b7d

    ld h, l
    ld l, h
    ld [hl], b
    ld h, l
    ld h, h
    ld l, $00
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e

jr_0f8_4b21:
    jr nz, jr_0f8_4b96

    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    jr nz, jr_0f8_4b90

jr_0f8_4b2a:
    ld l, a
    ld [hl], d

jr_0f8_4b2c:
    jr nz, jr_0f8_4b96

    ld l, c
    ld l, l
    nop
    ld [hl], e
    ld h, l
    ld [hl], b
    ld h, c
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l
    ld l, h
    ld a, c
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    nop
    inc b

jr_0f8_4b43:
    ld h, e
    ld l, b
    ld h, l
    ld h, e
    ld l, e

jr_0f8_4b48:
    jr nz, jr_0f8_4bbe

jr_0f8_4b4a:
    ld l, b
    ld h, l
    jr nz, jr_0f8_4bb2

    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    inc b
    ld [hl], d
    ld l, a
    ld l, a
    ld l, l
    jr nz, jr_0f8_4bbc

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]

jr_0f8_4b5f:
    ld l, $01
    ld c, a
    ld c, e
    ld hl, $4920
    daa
    ld l, h

jr_0f8_4b68:
    ld l, h
    nop
    ld [hl], h
    ld [hl], d
    ld a, c
    jr nz, @+$76

jr_0f8_4b6f:
    ld l, b
    ld h, l
    jr nz, jr_0f8_4bd7

    ld l, a

jr_0f8_4b74:
    ld l, a
    ld [hl], d
    jr nz, jr_0f8_4be7

    ld l, [hl]
    jr nz, jr_0f8_4bef

    ld l, b
    ld h, l

jr_0f8_4b7d:
    nop
    ld l, a
    ld [hl], b
    ld [hl], b
    ld l, a
    ld [hl], e
    ld l, c
    ld [hl], h
    ld h, l
    jr nz, jr_0f8_4bfb

    ld l, c
    ld h, h
    ld h, l
    ld l, $01
    ld d, h
    ld l, b
    ld l, c

jr_0f8_4b90:
    ld [hl], e
    nop
    ld l, l
    ld h, c
    ld l, [hl]
    ld [hl], e

jr_0f8_4b96:
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$6b

    ld [hl], e
    jr nz, @+$69

    ld l, c
    ld h, a
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld h, e
    ld hl, $5700
    ld h, l
    jr nz, jr_0f8_4c0e

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$69

    ld h, l

jr_0f8_4bb2:
    ld [hl], h
    jr nz, jr_0f8_4c1e

    ld l, [hl]
    ld [hl], h
    ld l, a
    nop
    ld [hl], h
    ld [hl], d
    ld l, a

jr_0f8_4bbc:
    ld [hl], l
    ld h, d

jr_0f8_4bbe:
    ld l, h
    ld h, l
    jr nz, jr_0f8_4c2b

    ld h, [hl]
    jr nz, @+$79

    ld h, l
    jr nz, jr_0f8_4c2f

    ld h, l
    ld [hl], h
    nop
    inc b
    ld l, h
    ld l, a
    ld [hl], e
    ld [hl], h
    ld l, $20
    ld d, a
    ld h, l
    jr nz, jr_0f8_4c49

    ld l, b

jr_0f8_4bd7:
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    nop
    inc b
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_0f8_4c4a

    ld [hl], d
    ld l, a
    ld l, l

jr_0f8_4be7:
    jr nz, jr_0f8_4c5d

    ld l, b
    ld h, l
    jr nz, jr_0f8_4c53

    ld l, c
    ld [hl], d

jr_0f8_4bef:
    ld [hl], e
    ld [hl], h
    nop
    inc b
    ld h, [hl]
    ld l, h
    ld l, a
    ld l, a
    ld [hl], d
    inc l
    jr nz, jr_0f8_4c4a

jr_0f8_4bfb:
    ld c, e
    ccf
    jr nz, jr_0f8_4c40

    ld l, [hl]
    ld h, h
    ld l, $2e
    ld bc, $694a
    ld l, h
    ld l, h
    inc l
    nop
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_0f8_4c0e:
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, @+$4e

    ld l, a
    ld h, e
    ld l, e
    jr nz, jr_0f8_4c69

    ld l, c
    ld h, e
    ld l, e
    ld l, $00

jr_0f8_4c1e:
    ld c, c
    ld [hl], h
    jr nz, @+$6f

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_0f8_4c8a

    ld h, l
    jr nz, jr_0f8_4c93

jr_0f8_4c2b:
    ld h, c
    ld l, [hl]
    ld h, h
    ld a, c

jr_0f8_4c2f:
    jr nz, jr_0f8_4c9a

    ld h, [hl]
    nop
    ld a, c
    ld l, a
    ld [hl], l
    inc l
    jr nz, jr_0f8_4cad

    ld l, b
    ld h, l
    jr nz, jr_0f8_4caa

    ld h, c
    ld [hl], e
    ld [hl], h

jr_0f8_4c40:
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_4cb3

    ld h, [hl]
    nop
    inc b
    ld [hl], l
    ld l, [hl]

jr_0f8_4c49:
    ld l, h

jr_0f8_4c4a:
    ld l, a
    ld h, e
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_0f8_4cc7

jr_0f8_4c53:
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0f8_4cc1

    ld [hl], h
    nop
    inc b
    ld [hl], a
    ld l, c

jr_0f8_4c5d:
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_4cda

    ld l, a
    ld [hl], l
    ld l, $01
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]

jr_0f8_4c69:
    ld l, e
    ld [hl], e
    ld l, $00
    ld c, l
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, jr_0f8_4cbd

    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_4ce7

    ld h, l
    ld h, l
    ld h, h
    jr nz, jr_0f8_4ce7

    ld [hl], h
    ld l, $01
    ld c, [hl]
    ld l, a
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    nop

jr_0f8_4c8a:
    ld [hl], h
    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0f8_4cf3

    ld h, c
    ld [hl], d
    ld h, l

jr_0f8_4c93:
    jr nz, @+$71

    ld h, [hl]
    jr nz, @+$76

    ld l, b
    ld h, c

jr_0f8_4c9a:
    ld [hl], h
    nop
    ld h, h
    ld l, c
    ld [hl], d
    ld h, l
    ld h, e
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $20
    ld c, c
    jr nz, jr_0f8_4d1e

jr_0f8_4caa:
    ld l, a
    ld l, h
    ld h, h

jr_0f8_4cad:
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_4d27

jr_0f8_4cb3:
    ld l, a
    jr nz, jr_0f8_4d29

    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_0f8_4d22

    ld [hl], d

jr_0f8_4cbd:
    ld l, a
    ld l, l
    nop
    inc b

jr_0f8_4cc1:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f8_4d35

    ld [hl], h

jr_0f8_4cc7:
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_4d3f

    ld l, c
    ld h, h
    ld h, l
    inc l
    nop
    inc b
    ld c, d
    ld l, c
    ld l, h
    ld l, h
    ld hl, $4c01
    ld l, c

jr_0f8_4cda:
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, [hl]
    inc l
    nop
    ld l, c
    ld h, [hl]
    jr nz, jr_0f8_4d57

    ld l, a
    ld l, l
    ld h, l

jr_0f8_4ce7:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]

jr_0f8_4cf3:
    ld [hl], e
    inc l
    jr nz, jr_0f8_4d63

    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_4d6a

    ld h, l
    ld h, l
    ld [hl], h
    nop
    ld [hl], l
    ld [hl], b
    jr nz, jr_0f8_4d6e

    ld l, [hl]
    jr nz, jr_0f8_4d7c

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_4d75

    ld h, c
    ld l, h
    ld l, h
    ld l, $01
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_4d8c

    ld l, c
    ld l, l
    ld h, l
    nop
    ld c, c
    daa

jr_0f8_4d1e:
    ld l, h
    ld l, h
    jr nz, jr_0f8_4d84

jr_0f8_4d22:
    ld h, l
    jr nz, jr_0f8_4d99

    ld l, b
    ld h, l

jr_0f8_4d27:
    ld [hl], d
    ld h, l

jr_0f8_4d29:
    ld l, $01
    ld c, b
    ld h, l
    ld a, c
    inc l
    nop
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    daa

jr_0f8_4d35:
    ld [hl], e
    jr nz, jr_0f8_4d9f

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$71

    ld l, [hl]

jr_0f8_4d3f:
    ccf
    ld bc, $694a
    ld l, h
    ld l, h
    ccf
    nop
    ld c, c
    ld [hl], e
    jr nz, jr_0f8_4dbf

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, @+$4c

    ld l, c
    ld l, h
    ld l, h

jr_0f8_4d57:
    ccf
    nop
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_4dc7

    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l

jr_0f8_4d63:
    ld l, [hl]
    ld h, l
    ld h, h
    ld hl, HeaderManufacturerCode
    ld b, d

jr_0f8_4d6a:
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c

jr_0f8_4d6e:
    ld hl, $003f
    ld c, b
    ld h, l
    ld l, h
    ld [hl], b

jr_0f8_4d75:
    jr nz, jr_0f8_4de4

    ld h, l
    inc l
    jr nz, @+$72

    ld l, h

jr_0f8_4d7c:
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    ld hl, $5400
    ld l, b

jr_0f8_4d84:
    ld h, l
    jr nz, @+$66

    ld l, a
    ld l, a
    ld [hl], d
    jr nz, jr_0f8_4e03

jr_0f8_4d8c:
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld l, a
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld l, $20
    ld d, c
    ld [hl], l

jr_0f8_4d99:
    ld l, c
    ld h, e
    ld l, e
    ld hl, $5301

jr_0f8_4d9f:
    ld [hl], h
    ld h, c
    ld a, c
    jr nz, jr_0f8_4e05

    ld [hl], a
    ld h, c
    ld a, c
    nop
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0f8_4e22

    ld l, b
    ld h, l
    jr nz, jr_0f8_4e16

    ld l, a
    ld l, a
    ld [hl], d
    jr nz, @+$4c

    ld l, c
    ld l, h
    ld l, h
    ld l, $00
    ld c, c
    daa
    ld l, l

jr_0f8_4dbf:
    jr nz, jr_0f8_4e28

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$76

jr_0f8_4dc7:
    ld l, a
    jr nz, jr_0f8_4e35

    ld l, c
    ld h, e
    ld l, e
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_4e38

    ld l, a
    ld l, a
    ld [hl], d
    jr nz, jr_0f8_4e3d

    ld l, a
    ld [hl], a
    ld l, [hl]
    ld hl, $0001
    ld c, b
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld a, c

jr_0f8_4de4:
    ld hl, $5420
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_4e63

    ld h, c
    ld a, c
    ld hl, $0001
    ld c, a
    ld l, b
    inc l
    jr nz, jr_0f8_4e38

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $01
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_4e79

    ld h, c

jr_0f8_4e03:
    ld [hl], e
    nop

jr_0f8_4e05:
    ld h, e
    ld l, h
    ld l, a
    ld [hl], e
    ld h, l
    ld hl, $5920
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_4e88

    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld h, c

jr_0f8_4e16:
    ld l, h
    ld l, l
    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_4e7e

    jr nz, jr_0f8_4e69

    ld l, c
    ld l, h
    ld l, h

jr_0f8_4e22:
    nop
    ld [hl], e
    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], a

jr_0f8_4e28:
    ld l, c
    ld h, e
    ld l, b
    ld hl, $5901
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_4e93

    ld [hl], d
    ld h, l
    nop

jr_0f8_4e35:
    ld [hl], d
    ld l, c
    ld h, a

jr_0f8_4e38:
    ld l, b
    ld [hl], h
    jr nz, jr_0f8_4e7e

    ld h, c

jr_0f8_4e3d:
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $20
    ld d, h
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    ld [hl], e
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_0f8_4ec1

    ld h, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$6f

    ld a, c
    jr nz, jr_0f8_4ec4

    ld l, c
    ld h, [hl]
    ld h, l
    ld hl, $4201
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_4ea4

    ld h, c

jr_0f8_4e63:
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $00
    ld b, h

jr_0f8_4e69:
    ld l, c
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_4ee9

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_4ee7

    ld h, c
    ld a, c
    jr nz, jr_0f8_4ef1

    ld l, a

jr_0f8_4e79:
    ld [hl], l
    nop
    ld [hl], a
    ld h, l
    ld [hl], d

jr_0f8_4e7e:
    ld h, l
    jr nz, jr_0f8_4ee8

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_4ee9

    ld h, c

jr_0f8_4e88:
    ld h, e
    ld l, e
    jr nz, jr_0f8_4f00

    ld l, a
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f8_4ef7

jr_0f8_4e93:
    ld l, c
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, @+$74

    ld l, a
    ld l, a
    ld l, l
    jr nz, jr_0f8_4f13

    ld l, a
    nop
    inc b
    ld h, h
    ld l, a

jr_0f8_4ea4:
    jr nz, jr_0f8_4f19

    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_0f8_4f1d

    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    ccf
    nop
    inc b
    ld d, a
    ld l, b
    ld a, c
    jr nz, jr_0f8_4f29

    ld l, [hl]
    jr nz, @+$67

    ld h, c
    ld [hl], d
    ld [hl], h
    ld l, b

jr_0f8_4ec1:
    jr nz, jr_0f8_4f24

    ld [hl], d

jr_0f8_4ec4:
    ld h, l
    nop
    inc b
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_4f34

    ld h, l
    ld [hl], d
    ld h, l
    ccf
    ld bc, $6855
    ld l, $20
    ld c, c
    jr nz, jr_0f8_4f42

    ld [hl], l
    ld [hl], e
    ld [hl], h
    nop
    ld l, b
    ld h, c
    ld h, h
    jr nz, jr_0f8_4f54

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c

jr_0f8_4ee7:
    ld l, [hl]

jr_0f8_4ee8:
    ld h, a

jr_0f8_4ee9:
    jr nz, jr_0f8_4f34

    nop
    ld [hl], a
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, l

jr_0f8_4ef1:
    ld h, h
    jr nz, jr_0f8_4f68

    ld l, a
    jr nz, jr_0f8_4f5a

jr_0f8_4ef7:
    ld l, b
    ld h, l
    ld h, e
    ld l, e
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], a

jr_0f8_4f00:
    inc l
    jr nz, jr_0f8_4f6f

    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    nop
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, jr_0f8_4f6f

    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_0f8_4f86

    ld l, a

jr_0f8_4f13:
    nop
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e

jr_0f8_4f19:
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_0f8_4f1d:
    jr nz, jr_0f8_4f85

    ld l, a
    ld [hl], d
    jr nz, @+$76

    ld l, b

jr_0f8_4f24:
    ld h, l
    nop
    ld l, h
    ld l, a
    ld [hl], e

jr_0f8_4f29:
    ld [hl], h
    jr nz, jr_0f8_4f6f

    ld h, c
    ld [hl], b
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_0f8_4f95

jr_0f8_4f34:
    ld l, [hl]
    ld h, h
    nop
    inc b
    ld b, e
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    inc l
    jr nz, jr_0f8_4fb3

    ld l, b
    ld h, c

jr_0f8_4f42:
    ld l, h
    ld l, h
    jr nz, @+$79

    ld h, l
    ccf
    ld bc, $5400
    ld l, b
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, jr_0f8_4fca

    ld l, a
    ld [hl], l
    inc l

jr_0f8_4f54:
    jr nz, jr_0f8_4f98

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c

jr_0f8_4f5a:
    ld hl, $5901
    ld h, c
    ld l, b
    inc l
    jr nz, @+$7b

    ld h, c
    ld l, b
    ld hl, $4201
    ld h, c

jr_0f8_4f68:
    ld [hl], d
    ld [hl], d
    ld a, c
    ld hl, $4a01
    ld l, c

jr_0f8_4f6f:
    ld l, h
    ld l, h
    ld hl, $5700
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_4fe2

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_4ff0

    ld l, [hl]
    ccf
    nop
    ld b, c

jr_0f8_4f85:
    ld l, [hl]

jr_0f8_4f86:
    ld a, c
    jr nz, jr_0f8_4fec

    ld l, h
    ld [hl], l
    ld h, l
    ld [hl], e
    ccf
    ld bc, $6f4e
    inc l
    nop
    ld h, d
    ld [hl], l

jr_0f8_4f95:
    ld [hl], h
    jr nz, jr_0f8_4fc6

jr_0f8_4f98:
    ld l, $2e
    ld d, e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    daa
    ld [hl], e
    nop
    ld [hl], a
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_5024

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_5026

    ld l, b

jr_0f8_4fb3:
    ld l, c
    ld [hl], e
    nop
    jr nz, @+$6a

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    ld hl, $5701
    ld l, b
    ld l, a
    ld h, c
    ld hl, $5400
    ld l, b

jr_0f8_4fc6:
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_5032

jr_0f8_4fca:
    ld h, c
    ld l, h
    ld l, h
    jr nz, @+$6b

    ld [hl], e
    nop
    ld h, h
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    ld l, $20
    ld c, l
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    nop

jr_0f8_4fe2:
    ld l, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_504a

    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l

jr_0f8_4fec:
    ld [hl], d
    jr nz, jr_0f8_5063

    ld l, a

jr_0f8_4ff0:
    nop
    inc b
    ld [hl], e
    ld h, l
    ld h, e
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_5069

    ld [hl], l
    ld [hl], d
    jr nz, jr_0f8_5063

    ld [hl], e
    ld h, e
    ld h, c
    ld [hl], b
    ld h, l
    nop
    inc b
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], h
    ld h, l
    jr nz, jr_0f8_5072

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_5086

    ld [hl], l
    ld [hl], e
    ld [hl], h
    nop
    ld h, d
    ld h, l
    jr nz, jr_0f8_5082

    jr nz, jr_0f8_5085

    ld h, c

jr_0f8_5024:
    ld h, e
    ld l, e

jr_0f8_5026:
    jr nz, jr_0f8_508c

    ld l, a
    ld l, a
    ld [hl], d
    nop
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], a
    ld l, b

jr_0f8_5032:
    ld h, l
    ld [hl], d
    ld h, l
    ld l, $2e
    ld l, $2e
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    nop
    ld [hl], h
    ld [hl], d
    ld a, c
    jr nz, jr_0f8_50b8

    ld l, a
    jr nz, jr_0f8_50ad

    ld l, c
    ld l, [hl]
    ld h, h

jr_0f8_504a:
    jr nz, jr_0f8_50b5

    ld [hl], h
    nop
    inc b
    ld h, [hl]
    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l
    jr nz, jr_0f8_50ca

    ld l, b
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_50d4

    ld h, l
    ccf
    ld bc, $6b4f
    inc l

jr_0f8_5063:
    jr nz, @+$6e

    ld h, l
    ld [hl], h
    daa
    ld [hl], e

jr_0f8_5069:
    nop
    ld [hl], e
    ld h, l
    ld [hl], b
    ld h, c
    ld [hl], d
    ld h, c
    ld [hl], h
    ld h, l

jr_0f8_5072:
    jr nz, jr_0f8_50d5

    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld l, $01
    ld c, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_50e1

    nop
    ld l, l

jr_0f8_5082:
    ld l, a
    ld l, l
    ld h, l

jr_0f8_5085:
    ld l, [hl]

jr_0f8_5086:
    ld [hl], h
    ld l, $20
    ld c, c
    daa
    db $76

jr_0f8_508c:
    ld h, l
    jr nz, jr_0f8_50f5

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    nop
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $01
    nop
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_510f

    ld [hl], e
    jr nz, @+$6b

    ld [hl], h
    ld hl, HeaderManufacturerCode

jr_0f8_50ad:
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_5114

    nop
    ld [hl], a

jr_0f8_50b5:
    ld h, l
    ld h, c
    ld [hl], b

jr_0f8_50b8:
    ld l, a
    ld l, [hl]
    ld l, $20
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_5134

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    nop
    ld [hl], b
    ld l, a

jr_0f8_50ca:
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_0f8_5137

    ld [hl], e
    ld [hl], b

jr_0f8_50d4:
    ld h, l

jr_0f8_50d5:
    ld h, e
    ld l, c
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    nop
    ld h, c
    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]

jr_0f8_50e1:
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_5151

    ld l, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    inc b
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    ld l, $20
    ld b, d

jr_0f8_50f5:
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_5170

    ld h, c
    ld l, e
    ld h, l
    nop
    inc b
    ld l, c
    ld [hl], h
    jr nz, jr_0f8_517c

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld l, $01
    ld b, d

jr_0f8_510f:
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_517b

    ld l, a

jr_0f8_5114:
    ld [hl], a
    nop
    ld h, c
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_5196

    ld l, a
    ld [hl], l
    inc l
    jr nz, jr_0f8_5164

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    ccf
    ld bc, $4900
    jr nz, jr_0f8_5194

    ld h, c
    db $76
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e

jr_0f8_5134:
    ld bc, $6854

jr_0f8_5137:
    ld h, c
    ld l, [hl]
    ld l, e
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld l, $00
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_51ba

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0f8_51bf

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_51c4

    ld l, b

jr_0f8_5151:
    ld h, l
    ld l, [hl]
    ld l, $01
    ld c, d
    ld l, c
    ld l, h
    ld l, h
    ld hl, $4401
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld [hl], e
    ld h, e
    ld h, c

jr_0f8_5164:
    ld [hl], d
    ld h, l
    jr nz, @+$6f

    ld h, l
    ld hl, $5401
    ld l, b
    ld h, c
    ld [hl], h
    daa

jr_0f8_5170:
    ld [hl], e
    nop
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_51c1

    jr nz, jr_0f8_51f1

    ld h, c

jr_0f8_517b:
    ld [hl], e

jr_0f8_517c:
    jr nz, @+$69

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_51f8

    ld l, a
    nop
    ld [hl], e
    ld h, c
    ld a, c
    ld l, $20
    ld b, c
    ld [hl], d
    ld h, l
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_520c

    ld l, a

jr_0f8_5194:
    ld [hl], l
    nop

jr_0f8_5196:
    ld [hl], e
    ld [hl], l
    ld [hl], b
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_0f8_5214

    ld l, a
    jr nz, jr_0f8_5205

    ld h, l
    jr nz, jr_0f8_520d

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    inc b
    ld l, a
    db $76
    ld h, l
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_0f8_521c

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_0f8_51ba:
    jr nz, jr_0f8_5222

    ld l, h
    ld l, a
    ld l, a

jr_0f8_51bf:
    ld [hl], d
    nop

jr_0f8_51c1:
    inc b
    ld b, d
    ld h, c

jr_0f8_51c4:
    ld [hl], d
    ld [hl], d
    ld a, c
    ccf
    ld bc, $6159
    ld l, b
    inc l
    nop
    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_5248

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $20
    ld b, d
    ld [hl], l
    ld [hl], h
    nop
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$76

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0f8_524c

    jr nz, jr_0f8_5259

    ld l, a
    ld l, a
    ld l, e
    nop

jr_0f8_51f1:
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_5269

    ld l, b
    ld l, c
    ld [hl], e

jr_0f8_51f8:
    ld l, $01
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$48

    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e

jr_0f8_5205:
    ld [hl], h
    ld l, $2e
    ld l, $2e
    nop
    ld c, a

jr_0f8_520c:
    ld l, b

jr_0f8_520d:
    jr nz, jr_0f8_527c

    ld a, c
    jr nz, jr_0f8_5259

    ld l, a
    ld h, h

jr_0f8_5214:
    ld bc, $4900
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_527d

jr_0f8_521c:
    ld [hl], a
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, $2e

jr_0f8_5222:
    ld l, $2e
    ld bc, $2749
    ld l, l
    jr nz, jr_0f8_5291

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_5299

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_52a7

    ld [hl], l
    ld [hl], h
    jr nz, @+$79

    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_0f8_528e

jr_0f8_5248:
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e

jr_0f8_524c:
    ld [hl], h
    daa
    ld [hl], e
    nop
    ld h, h
    ld h, l
    ld h, c
    ld [hl], h
    ld l, b
    ld l, $20
    ld c, c
    ld [hl], h

jr_0f8_5259:
    jr nz, jr_0f8_52c7

    ld l, a
    ld l, a
    ld l, e
    ld [hl], e
    nop
    inc b
    ld l, h
    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$63

    jr nz, jr_0f8_52cc

jr_0f8_5269:
    ld [hl], d
    ld l, a
    ld [hl], a
    jr nz, jr_0f8_52dd

    ld [hl], d
    nop
    inc b
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_52e7

jr_0f8_527c:
    ld l, c

jr_0f8_527d:
    ld l, h
    ld l, h
    ld h, l
    ld h, h
    nop
    inc b
    ld l, b
    ld l, c
    ld l, l
    ld l, $20
    ld b, e
    ld h, c
    ld l, [hl]
    jr nz, jr_0f8_5306

    ld l, a

jr_0f8_528e:
    ld [hl], l
    jr nz, jr_0f8_52fd

jr_0f8_5291:
    ld l, a
    ld l, a
    ld l, e
    nop
    inc b
    ld h, c
    ld [hl], d
    ld l, a

jr_0f8_5299:
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_0f8_5308

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    nop

jr_0f8_52a7:
    inc b
    ld h, [hl]
    ld l, h
    ld l, a
    ld l, a
    ld [hl], d
    jr nz, @+$4c

    ld l, c
    ld l, h
    ld l, h
    ld l, $01
    ld c, a
    ld c, e
    ld hl, $4801
    ld h, l
    ld a, c
    inc l
    jr nz, jr_0f8_5308

    ld l, c
    ld l, h
    ld l, h
    ld l, $00
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e

jr_0f8_52c7:
    jr nz, jr_0f8_5336

    ld [hl], l
    ld [hl], e
    ld [hl], h

jr_0f8_52cc:
    jr nz, jr_0f8_5336

    ld h, c
    db $76
    ld h, l
    jr nz, @+$64

    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld b, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h

jr_0f8_52dd:
    daa
    ld [hl], e
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, @+$66

    ld l, a

jr_0f8_52e7:
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld l, b
    ld h, c
    db $76
    ld h, l
    jr nz, @+$63

    jr nz, jr_0f8_536a

    ld h, l
    ld h, c
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld l, $20
    ld d, h
    ld h, c
    ld l, e

jr_0f8_52fd:
    ld h, l
    nop
    inc b
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$79

jr_0f8_5306:
    ld l, c
    ld [hl], h

jr_0f8_5308:
    ld l, b
    jr nz, jr_0f8_5384

    ld l, a
    ld [hl], l
    ld hl, $4901
    ld [hl], e
    jr nz, jr_0f8_5387

    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, @+$4c

    ld l, c
    ld l, h
    ld l, h
    ld l, $2e
    ld l, $3f
    ld bc, $6857
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    nop
    ld h, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_53a1

    ld l, [hl]
    ccf
    jr nz, @+$4a

jr_0f8_5336:
    ld l, a
    ld [hl], a
    jr nz, @+$65

    ld l, a
    ld l, l
    ld h, l
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_53af

    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_0f8_53bb

    ld l, a
    jr nz, jr_0f8_53be

    ld h, e
    ld h, c
    ld [hl], d
    ld h, l
    ld h, h
    ccf
    ld bc, $4c00
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_0f8_53ba

    ld [hl], h
    jr nz, jr_0f8_53d0

    ld l, b
    ld l, c
    ld [hl], e
    ld l, $01
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_53cb

    ld l, a
    nop
    ld a, c

jr_0f8_536a:
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_53e2

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_0f8_53e3

    ld h, [hl]
    jr nz, jr_0f8_53e0

    ld [hl], h
    ld l, $2e
    ld l, $3f
    ld bc, $2749
    db $76
    ld h, l
    jr nz, jr_0f8_53e5

    ld h, l

jr_0f8_5384:
    ld h, l
    ld l, [hl]
    nop

jr_0f8_5387:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_5404

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld l, c
    ld [hl], e
    jr nz, @+$79

    ld [hl], d
    ld l, a
    ld l, [hl]

jr_0f8_53a1:
    ld h, a
    jr nz, jr_0f8_541b

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld l, b
    ld l, a

jr_0f8_53af:
    ld [hl], l
    ld [hl], e
    ld h, l
    ld l, $2e
    ld l, $01
    ld d, d
    ld l, c
    ld h, a
    ld l, b

jr_0f8_53ba:
    ld [hl], h

jr_0f8_53bb:
    ld l, $01
    ld c, b

jr_0f8_53be:
    ld h, l
    ld a, c
    inc l
    nop
    ld [hl], a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_5431

    ld [hl], e
    jr nz, jr_0f8_543f

jr_0f8_53cb:
    ld l, b
    ld l, c
    ld [hl], e
    inc l
    nop

jr_0f8_53d0:
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0f8_543a

    jr nz, jr_0f8_544b

    ld h, c
    ld h, a
    ld h, l
    nop
    ld l, l

jr_0f8_53e0:
    ld l, c
    ld [hl], e

jr_0f8_53e2:
    ld [hl], e

jr_0f8_53e3:
    ld l, c
    ld l, [hl]

jr_0f8_53e5:
    ld h, a
    ld hl, $5901
    ld h, l
    ld h, c
    ld l, b
    ld l, $00
    ld c, c
    jr nz, jr_0f8_5465

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_0f8_545a

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_5478

jr_0f8_5404:
    ld l, a
    ld l, a
    ld l, $20
    ld d, b
    ld h, l
    ld [hl], d
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], e
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$79

    ld h, c
    ld [hl], e
    jr nz, @+$76

    ld l, b

jr_0f8_541b:
    ld h, l
    jr nz, @+$6f

    ld l, a
    ld [hl], e
    ld [hl], h
    nop
    inc b
    ld l, c
    ld l, l
    ld [hl], b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f8_549e

    ld h, c
    ld [hl], d
    ld [hl], h

jr_0f8_5431:
    ld l, $2e
    ld l, $01
    ld d, d
    ld l, c
    ld h, e
    ld l, b
    ld h, c

jr_0f8_543a:
    ld [hl], d
    ld h, h
    ld hl, $5700

jr_0f8_543f:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_54ac

    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h

jr_0f8_544b:
    ccf
    ld bc, $684f
    jr nz, jr_0f8_549b

    ld l, c
    ld l, h
    ld l, h
    ld hl, $5400
    ld l, b
    ld l, c
    ld [hl], e

jr_0f8_545a:
    jr nz, jr_0f8_54c4

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_0f8_54cb

    ld [hl], e
    nop
    ld h, h

jr_0f8_5465:
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    ld l, $2e
    jr nz, @+$56

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld h, c
    ld [hl], d

jr_0f8_5478:
    ld h, l
    jr nz, jr_0f8_54ef

    ld h, l
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, d
    ld l, h
    ld h, l
    nop
    inc b
    ld h, h
    ld h, l
    ld l, l
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld l, $2e
    ld hl, $4f20
    ld [hl], l
    ld h, e
    ld l, b
    ld hl, $5901
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    nop

jr_0f8_549b:
    ld [hl], a
    ld l, a
    ld [hl], l

jr_0f8_549e:
    ld l, [hl]
    ld h, h
    ld h, l
    ld h, h
    ld hl, $5720
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_5515

    ld l, c
    ld l, [hl]

jr_0f8_54ac:
    ld h, h
    nop
    ld l, a
    ld h, [hl]
    jr nz, jr_0f8_5516

    ld h, l
    ld l, l
    ld l, a
    ld l, [hl]
    jr nz, jr_0f8_5519

    ld [hl], h
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    nop
    ld a, c
    ld l, a
    ld [hl], l
    ccf

jr_0f8_54c4:
    ld bc, $7449
    jr nz, jr_0f8_5540

    ld h, c
    ld [hl], e

jr_0f8_54cb:
    jr nz, jr_0f8_552e

    nop
    ld l, b
    ld [hl], l
    ld h, a
    ld h, l
    jr nz, jr_0f8_5547

    ld l, [hl]
    ld h, c
    ld l, e
    ld h, l
    ld l, $2e
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_5540

    ld l, h
    ld [hl], e
    ld l, a
    nop
    ld [hl], b
    ld l, a
    ld l, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld l, a
    ld [hl], l
    ld [hl], e
    ld hl, $5001

jr_0f8_54ef:
    ld l, a
    ld l, c
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld l, a
    ld [hl], l
    ld [hl], e
    ccf
    nop
    ld c, a
    ld l, b
    jr nz, jr_0f8_556b

    ld l, a
    ld l, $20
    ld d, d
    ld l, c
    ld h, e
    ld l, b
    ld h, c
    ld [hl], d
    ld h, h
    inc l
    nop
    ld l, b
    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_0f8_557e

    ld l, [hl]
    ld hl, $5401
    ld l, b
    ld h, l

jr_0f8_5515:
    ld [hl], d

jr_0f8_5516:
    ld h, l
    jr nz, jr_0f8_5582

jr_0f8_5519:
    ld [hl], e
    nop
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], l
    ld l, l
    ld hl, $2e2e
    jr nz, jr_0f8_5574

    ld l, b
    jr nz, jr_0f8_5596

    ld l, a
    ld l, $20
    ld c, c
    nop
    ld [hl], e

jr_0f8_552e:
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$6a

    ld h, c
    db $76
    ld h, l
    jr nz, @+$64

    ld [hl], d
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h

jr_0f8_5540:
    nop
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_0f8_55be

jr_0f8_5547:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_55b9

    ld h, l
    ld l, $01
    nop
    ld c, [hl]
    ld l, a
    jr nz, @+$72

    ld [hl], d
    ld l, a
    ld h, d
    ld l, h
    ld h, l
    ld l, l
    ld hl, $4920
    daa
    ld l, h
    ld l, h
    nop
    ld h, a
    ld l, a
    jr nz, jr_0f8_55c6

    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_55d0

    ld h, l
    ld [hl], h

jr_0f8_556b:
    jr nz, jr_0f8_55d6

    ld [hl], h
    ld hl, $5401
    ld l, b
    ld h, c
    ld l, [hl]

jr_0f8_5574:
    ld l, e
    ld [hl], e
    ld l, $2e
    ld bc, $6548
    ld [hl], d
    ld h, l
    daa

jr_0f8_557e:
    ld [hl], e
    jr nz, jr_0f8_55f5

    ld l, b

jr_0f8_5582:
    ld h, l
    nop
    ld [hl], e
    ld h, l
    ld [hl], d
    ld [hl], l
    ld l, l
    ld hl, $5220
    ld l, c
    ld h, e
    ld l, b
    ld h, c
    ld [hl], d
    ld h, h
    inc l
    nop
    ld l, b
    ld l, a

jr_0f8_5596:
    ld l, h
    ld h, h
    jr nz, @+$71

    ld l, [hl]
    ld hl, $4920
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_560a

    ld l, c
    db $76
    ld h, l
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_560d

    jr nz, jr_0f8_5621

    ld l, b
    ld l, a
    ld [hl], h
    jr nz, jr_0f8_5621

    ld l, a
    ld [hl], a
    ld hl, $4a01
    ld l, c

jr_0f8_55b9:
    ld l, h
    ld l, h
    inc l
    nop
    ld l, b

jr_0f8_55be:
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0f8_5632

    ld a, c

jr_0f8_55c6:
    jr nz, jr_0f8_563a

    ld h, c
    ld h, h
    ld l, c
    ld l, a
    inc l
    nop
    ld a, c
    ld l, a

jr_0f8_55d0:
    ld [hl], l
    jr nz, @+$75

    ld l, b
    ld l, a
    ld [hl], l

jr_0f8_55d6:
    ld l, h
    ld h, h
    jr nz, jr_0f8_5645

    ld h, l
    ld h, l
    ld [hl], b
    jr nz, jr_0f8_5648

    ld [hl], h
    ld l, $00
    ld c, c
    daa
    ld l, l
    ld l, $2e
    ld hl, $0001
    ld c, [hl]
    ld l, a
    ld hl, $5220
    ld l, c
    ld h, e
    ld l, b
    ld h, c
    ld [hl], d
    ld h, h

jr_0f8_55f5:
    ld hl, $4a01
    ld l, c
    ld l, h
    ld l, h
    ld l, $2e
    nop
    ld h, d
    ld h, l
    jr nz, jr_0f8_5665

    ld h, c
    ld [hl], d
    ld h, l
    ld h, [hl]
    ld [hl], l
    ld l, h
    ld l, $2e

jr_0f8_560a:
    ld hl, $5500

jr_0f8_560d:
    ld l, $2e
    ld [hl], l
    ld l, $2e
    ld [hl], l
    ld l, b
    ld l, $2e
    ld bc, $6d41
    jr nz, jr_0f8_5664

    nop
    ld [hl], b
    ld l, a
    ld l, c
    ld [hl], e
    ld l, a

jr_0f8_5621:
    ld l, [hl]
    ld h, l
    ld h, h
    ccf
    jr nz, jr_0f8_566b

    ld h, c
    ld l, l
    ld l, [hl]
    jr nz, jr_0f8_5695

    ld [hl], h
    ld l, $2e
    ld l, $00
    ld h, a

jr_0f8_5632:
    ld l, c
    db $76
    ld h, l
    jr nz, jr_0f8_56a4

    ld h, l
    jr nz, jr_0f8_56ad

jr_0f8_563a:
    ld h, l
    ld [hl], d
    ld [hl], l
    ld l, l
    ld l, $2e
    ld bc, $6854
    ld l, c
    ld [hl], e

jr_0f8_5645:
    jr nz, jr_0f8_56b0

    ld [hl], e

jr_0f8_5648:
    nop
    ld b, d
    ld [hl], d
    ld h, c
    ld h, h
    ld l, $20
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, e
    jr nz, jr_0f8_5697

    ld l, h
    ld [hl], b
    ld l, b
    ld h, c
    nop
    ld [hl], h
    ld h, l
    ld h, c
    ld l, l
    ld l, $2e
    ld l, $50
    ld l, h

jr_0f8_5664:
    ld h, l

jr_0f8_5665:
    ld h, c
    ld [hl], e
    ld h, l
    nop
    ld [hl], d
    ld h, l

jr_0f8_566b:
    ld [hl], e
    ld [hl], b
    ld l, a
    ld l, [hl]
    ld h, h
    ld l, $20
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_56ec

    ld l, b
    ld h, l
    nop
    inc b
    ld l, b
    ld h, l
    ld l, h
    ld l, h
    ccf
    jr nz, jr_0f8_56cc

    ld [hl], e
    jr nz, @+$70

    ld l, a
    ld h, d
    ld l, a
    ld h, h
    ld a, c
    jr nz, jr_0f8_56fc

    ld [hl], l
    ld [hl], h
    nop
    inc b
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_0f8_5695:
    ld h, l
    ccf

jr_0f8_5697:
    ld bc, $6854
    ld l, c
    ld [hl], e
    jr nz, @+$6b

    ld [hl], e
    nop
    ld b, d
    ld [hl], d
    ld h, c
    ld h, h

jr_0f8_56a4:
    ld l, $20
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, e
    jr nz, jr_0f8_56ee

jr_0f8_56ad:
    ld l, h
    ld [hl], b
    ld l, b

jr_0f8_56b0:
    ld h, c
    nop
    ld d, h
    ld h, l
    ld h, c
    ld l, l
    inc l
    jr nz, jr_0f8_56fb

    ld [hl], d
    ld h, c
    db $76
    ld l, a
    jr nz, jr_0f8_5713

    ld h, l
    ld h, c
    ld l, l
    inc l
    nop
    ld l, c
    ld [hl], h
    jr nz, jr_0f8_572c

    ld l, a
    ld h, l
    ld [hl], e
    ld l, [hl]

jr_0f8_56cc:
    daa
    ld [hl], h
    jr nz, jr_0f8_573d

    ld h, c
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $0400
    ld b, c
    ld l, [hl]
    ld a, c
    ld h, d
    ld l, a
    ld h, h
    ld a, c
    jr nz, jr_0f8_5742

    ld l, [hl]
    ld [hl], e
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_5755

    ld h, l
    ld hl, $0400

jr_0f8_56ec:
    ld d, h
    ld l, b

jr_0f8_56ee:
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_575b

    ld [hl], e
    jr nz, @+$44

    ld [hl], d
    ld h, c
    ld h, h
    ld l, $01
    ld d, h

jr_0f8_56fb:
    ld l, b

jr_0f8_56fc:
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_5769

    ld [hl], e
    nop
    ld b, d
    ld [hl], d
    ld h, c
    ld h, h
    ld l, $20
    ld c, c
    jr nz, @+$6d

    ld l, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_0f8_5789

    ld l, a
    ld [hl], l
    nop

jr_0f8_5713:
    ld h, e
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_577b

    ld l, [hl]
    ld [hl], e
    ld [hl], a
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_578e

    ld h, l
    ld hl, $4200
    ld [hl], l
    ld [hl], h
    jr nz, @+$75

    ld l, a
    ld l, l
    ld h, l

jr_0f8_572c:
    ld l, b
    ld l, a
    ld [hl], a
    inc l
    nop
    inc b
    ld h, a
    ld l, c
    db $76
    ld h, l
    jr nz, jr_0f8_57a5

    ld h, l
    jr nz, @+$63

    jr nz, jr_0f8_57b0

jr_0f8_573d:
    ld l, c
    ld h, a
    ld l, [hl]
    ld l, $01

jr_0f8_5742:
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_57ac

    ld l, a
    ld l, l
    ld h, l
    nop
    ld h, c
    ld l, [hl]
    ld a, c
    jr nz, jr_0f8_57b5

    ld l, h
    ld l, a
    ld [hl], e

jr_0f8_5755:
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_0f8_579d

    ld l, b

jr_0f8_575b:
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, $01
    ld d, a
    ld h, c
    ld l, c
    ld [hl], h
    ld l, $00
    ld d, a
    ld l, b
    ld h, c

jr_0f8_5769:
    ld [hl], h
    jr nz, @+$6a

    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    ccf
    ld bc, $4400
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h

jr_0f8_577b:
    ld h, l
    dec l
    ld h, e
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    ld h, l
    ld [hl], d
    ld hl, $4401
    ld l, a
    ld l, [hl]

jr_0f8_5789:
    daa
    ld [hl], h
    ld hl, $5701

jr_0f8_578e:
    ld l, b
    ld l, a
    jr nz, jr_0f8_57fb

    ld [hl], e
    jr nz, jr_0f8_57fe

    ld [hl], h
    ld hl, $2e00
    ld l, $2e
    ld l, $69

jr_0f8_579d:
    ld [hl], e
    jr nz, jr_0f8_5813

    ld l, a
    ld l, l
    ld h, l
    ld h, d
    ld l, a

jr_0f8_57a5:
    ld h, h
    ld a, c
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_0f8_57ac:
    ld h, l
    ld hl, HeaderManufacturerCode

jr_0f8_57b0:
    nop
    ld c, b
    ld h, l
    ld l, h
    ld l, h

jr_0f8_57b5:
    inc l
    jr nz, jr_0f8_580d

    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    ld l, $2e
    ld l, $2e
    ld bc, $4400
    ld l, a
    ld [hl], l
    ld h, d
    ld l, h
    ld h, l
    dec l
    ld h, e
    ld [hl], d
    ld l, a
    ld [hl], e
    ld [hl], e
    ld h, l
    ld [hl], d
    ld l, $2e
    ld l, $3f
    ld bc, $6857
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_5848

    ld h, l
    jr nz, @+$6f

    ld h, l
    ld h, c
    ld l, [hl]
    nop
    ld h, d
    ld a, c
    jr nz, jr_0f8_585f

    ld l, b
    ld h, c
    ld [hl], h
    ccf
    ld bc, $684f
    inc l
    jr nz, jr_0f8_583f

    ld l, c
    ld l, h
    ld l, h
    ld l, $00
    ld d, a

jr_0f8_57fb:
    ld l, b
    ld h, c
    ld [hl], h

jr_0f8_57fe:
    jr nz, jr_0f8_5867

    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_0f8_5879

    ld l, c
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $00
    ld b, c

jr_0f8_580d:
    jr nz, jr_0f8_587c

    ld l, a
    ld l, l
    ld h, l
    ld l, [hl]

jr_0f8_5813:
    ld [hl], h
    jr nz, jr_0f8_5877

    ld h, a
    ld l, a
    jr nz, @+$4b

    jr nz, jr_0f8_5884

    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    nop
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0f8_58a2

    ld l, a
    ld l, c
    ld h, e
    ld h, l
    nop
    inc b
    ld h, e
    ld l, a
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_58a0

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0f8_58b3

jr_0f8_583f:
    ld l, b
    ld l, c
    ld [hl], e
    nop
    inc b
    ld l, b
    ld l, a
    ld l, h
    ld h, l

jr_0f8_5848:
    ld l, $20
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_58b8

    ld l, a
    nop
    inc b
    ld [hl], h
    ld l, a
    ld h, a
    ld h, l
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_58d1

    ld l, c

jr_0f8_585f:
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_0f8_58cd

    ld [hl], h
    daa
    ld [hl], e

jr_0f8_5867:
    nop
    inc b
    ld h, h
    ld h, c
    ld [hl], d
    ld l, e
    jr nz, jr_0f8_58d0

    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_58ea

    ld h, l
    jr nz, jr_0f8_58d9

    ld h, c

jr_0f8_5877:
    ld l, [hl]
    daa

jr_0f8_5879:
    ld [hl], h
    nop
    inc b

jr_0f8_587c:
    ld [hl], e
    ld h, l
    ld h, l
    jr nz, jr_0f8_58f7

    ld h, l
    ld [hl], d
    ld a, c

jr_0f8_5884:
    jr nz, jr_0f8_58fd

    ld h, l
    ld l, h
    ld l, h
    ld l, $01
    ld c, a
    ld c, e
    inc l
    nop
    ld l, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_58fd

    ld l, a
    ld hl, $4f01
    ld c, e
    inc l
    jr nz, jr_0f8_5912

    ld l, b
    ld h, l

jr_0f8_58a0:
    ld l, [hl]
    nop

jr_0f8_58a2:
    ld c, c
    daa
    ld l, l
    jr nz, jr_0f8_590e

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_5921

    ld l, a
    jr nz, jr_0f8_5913

    ld l, a
    db $76
    ld h, l

jr_0f8_58b3:
    ld [hl], d
    nop
    ld a, c
    ld l, a
    ld [hl], l

jr_0f8_58b8:
    ld l, $20
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_5929

    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $01
    ld c, b
    ld h, l
    ld a, c
    inc l
    jr nz, jr_0f8_592e

jr_0f8_58cd:
    ld [hl], d
    ld h, l
    nop

jr_0f8_58d0:
    ld a, c

jr_0f8_58d1:
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_5936

    ld l, h
    ld [hl], d
    ld l, c
    ld h, a

jr_0f8_58d9:
    ld l, b
    ld [hl], h
    ccf
    jr nz, jr_0f8_5927

    jr nz, jr_0f8_5943

    ld h, c
    ld l, [hl]
    nop
    ld h, a
    ld l, a
    jr nz, @+$68

    ld l, c
    ld [hl], d
    ld [hl], e

jr_0f8_58ea:
    ld [hl], h
    jr nz, jr_0f8_5956

    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    nop
    ld [hl], a
    ld h, c
    ld l, [hl]
    ld [hl], h

jr_0f8_58f7:
    jr nz, jr_0f8_5966

    ld h, l
    jr nz, @+$76

    ld l, a

jr_0f8_58fd:
    ld l, $2e
    ld l, $01
    nop
    ld c, c
    ld [hl], e
    jr nz, jr_0f8_597a

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$4c

    ld l, c
    ld l, h
    ld l, h

jr_0f8_590e:
    ccf
    ld bc, $4900

jr_0f8_5912:
    ld [hl], e

jr_0f8_5913:
    jr nz, jr_0f8_5989

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_5990

    ld l, a
    ld l, c
    ld h, e
    ld h, l
    ld l, $2e
    nop

jr_0f8_5921:
    ld b, l
    ld l, [hl]
    ld [hl], d
    ld l, c
    ld h, e
    ld l, a

jr_0f8_5927:
    daa
    ld [hl], e

jr_0f8_5929:
    ccf
    ld bc, $6559
    ld h, c

jr_0f8_592e:
    ld l, b
    ld l, $01
    nop
    ld e, c
    ld l, a
    ld [hl], l
    daa

jr_0f8_5936:
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_599b

    ld l, h
    ld l, c
    db $76
    ld h, l
    ld hl, $0001
    ld d, a
    ld h, c

jr_0f8_5943:
    ld l, c
    ld [hl], h
    jr nz, @+$76

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $4100
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_59cb

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_59cd

jr_0f8_5956:
    ld l, c
    ld [hl], h
    ld l, b
    nop
    ld h, c
    ld l, [hl]
    ld a, c
    ld h, d
    ld l, a
    ld h, h
    ld a, c
    inc l
    jr nz, jr_0f8_59ae

    ld l, c
    ld l, h

jr_0f8_5966:
    ld l, h
    ccf
    ld bc, $5700
    ld l, b
    ld h, c
    ld [hl], h
    ccf
    jr nz, jr_0f8_59c0

    ld l, b
    inc l
    jr nz, jr_0f8_59ee

    ld h, l
    ld [hl], e
    ld l, $01
    ld b, l

jr_0f8_597a:
    ld l, [hl]
    ld [hl], d
    ld l, c
    ld h, e
    ld l, a
    ld hl, $2121
    ld bc, $6f53
    inc l
    jr nz, jr_0f8_59ca

    ld h, c

jr_0f8_5989:
    ld [hl], d
    ld [hl], d
    ld a, c
    nop
    ld h, c
    ld l, [hl]
    ld h, h

jr_0f8_5990:
    jr nz, @+$4c

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_5a0b

    ld l, a
    ld h, a
    ld h, l
    ld [hl], h

jr_0f8_599b:
    ld l, b
    ld h, l
    ld [hl], d
    ld l, $2e
    ld l, $01
    ld b, c
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_5a20

    ld l, a
    ld [hl], l
    nop
    ld h, c
    ld l, h
    ld [hl], d
    ld l, c

jr_0f8_59ae:
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, @+$47

    ld l, [hl]
    ld [hl], d
    ld l, c
    ld h, e
    ld l, a
    ccf
    ld bc, $6854
    ld h, l
    jr nz, @+$55

    ld d, h

jr_0f8_59c0:
    ld b, c
    ld d, d
    ld d, e
    nop
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_5a2d

    ld l, a

jr_0f8_59ca:
    ld l, a

jr_0f8_59cb:
    ld l, l
    ld h, l

jr_0f8_59cd:
    ld h, h
    ld l, $2e
    ld l, $53
    ld l, a
    ld l, l
    ld h, l
    ld l, a
    ld l, [hl]
    ld h, l
    nop
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_5a3e

    jr nz, jr_0f8_5a53

    ld [hl], d
    ld h, c
    ld l, c
    ld [hl], h
    ld l, a
    ld [hl], d
    ld l, $2e
    ld l, $01
    ld b, l
    db $76
    ld h, l
    ld [hl], d
    ld a, c

jr_0f8_59ee:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, jr_0f8_5a69

    ld l, h
    ld l, a
    ld [hl], h
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, @+$68

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, @+$76

    ld l, b
    ld h, l
    nop
    ld [hl], e
    ld [hl], h

jr_0f8_5a0b:
    ld h, c
    ld [hl], d
    ld [hl], h
    jr nz, jr_0f8_5a72

    ld a, c
    jr nz, jr_0f8_5a68

    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    ld l, $2e
    ld bc, $7241
    ld [hl], d

jr_0f8_5a20:
    ld h, a
    ld l, b
    ld hl, $4501
    ld l, [hl]
    ld [hl], d
    ld l, c
    ld h, e
    ld l, a
    ld hl, $2121

jr_0f8_5a2d:
    ld bc, $7548
    ld l, b
    ld hl, $4900
    daa
    ld l, l
    jr nz, @+$74

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    nop

jr_0f8_5a3e:
    ld h, l
    ld l, l
    ld h, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld h, c
    ld [hl], e
    ld [hl], e
    ld h, l
    ld h, h
    ld l, $20
    ld c, c
    jr nz, jr_0f8_5ac5

    ld h, c
    ld [hl], e
    nop
    ld h, e
    ld l, h

jr_0f8_5a53:
    ld [hl], l
    ld l, l
    ld [hl], e
    ld a, c
    ld l, $01
    ld b, d
    ld [hl], d
    ld h, c
    ld h, h
    ld hl, $5400
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_0f8_5ab2

jr_0f8_5a68:
    ld l, c

jr_0f8_5a69:
    ld l, h
    ld l, h
    ld l, $2e
    ld bc, $4200
    ld [hl], d
    ld h, c

jr_0f8_5a72:
    ld h, h
    ccf
    jr nz, jr_0f8_5ab8

    ld [hl], d
    ld h, c
    ld h, h
    ld hl, $2e2e
    ld bc, $6854
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_5aec

    ld [hl], e
    nop
    ld c, d
    ld l, c
    ld l, h
    ld l, h
    ld l, $20
    ld b, d
    ld [hl], d
    ld h, c
    ld h, h
    ld hl, $4f20
    ld l, b
    ld l, $2e
    nop
    ld c, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_5afe

    ld [hl], d
    ld l, a
    ld l, e
    ld h, l
    ld l, [hl]
    ld hl, $4301
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld hl, HeaderManufacturerCode
    ld c, c
    ld [hl], h
    jr nz, jr_0f8_5b12

    ld h, c
    ld l, [hl]
    daa

jr_0f8_5ab2:
    ld [hl], h
    nop
    ld h, d
    ld h, l
    jr nz, jr_0f8_5b2c

jr_0f8_5ab8:
    ld [hl], d
    ld [hl], l
    ld h, l
    ld l, $20
    ld c, c
    daa
    db $76
    ld h, l
    jr nz, jr_0f8_5b25

    ld h, l
    ld h, l

jr_0f8_5ac5:
    ld l, [hl]
    nop
    ld [hl], h
    ld l, a
    ld l, h
    ld h, h
    jr nz, jr_0f8_5b2e

    jr nz, jr_0f8_5b33

    ld l, c
    ld h, [hl]
    ld h, [hl]
    ld h, l
    ld [hl], d
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    ld [hl], e
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld l, $01
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e

jr_0f8_5aec:
    jr nz, jr_0f8_5b5c

    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_5b6d

    ld h, l
    nop
    ld h, e
    ld h, c
    ld l, [hl]
    jr nz, jr_0f8_5b61

    ld l, a

jr_0f8_5afe:
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    nop
    ld [hl], e
    ld l, c
    ld [hl], h
    ld [hl], l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_0f8_5b77

    ld h, c
    ld [hl], e
    nop

jr_0f8_5b12:
    inc b
    ld h, e
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld h, h
    ld bc, $7542
    ld [hl], h
    jr nz, jr_0f8_5b89

    ld [hl], h
    daa
    ld [hl], e
    nop
    ld l, [hl]

jr_0f8_5b25:
    ld l, a
    ld [hl], h
    jr nz, jr_0f8_5b97

    ld h, l
    ld h, e
    ld h, l

jr_0f8_5b2c:
    ld [hl], e
    ld [hl], e

jr_0f8_5b2e:
    ld h, c
    ld [hl], d
    ld a, c
    jr nz, jr_0f8_5b99

jr_0f8_5b33:
    ld l, a
    ld [hl], d
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_5baf

    ld l, a
    jr nz, jr_0f8_5ba2

    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a
    ld a, c
    nop
    ld d, e
    ld d, h
    ld b, c
    ld d, d
    ld d, e
    ld hl, $4901
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_5bc0

    ld l, a
    ld [hl], h
    nop
    ld l, l
    ld a, c
    jr nz, jr_0f8_5bc2

    ld l, [hl]
    ld [hl], h
    ld h, l

jr_0f8_5b5c:
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]

jr_0f8_5b61:
    inc l
    jr nz, jr_0f8_5bc6

    ld [hl], l
    ld [hl], h
    nop
    ld d, l
    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h

jr_0f8_5b6d:
    ld l, h
    ld h, c
    daa
    ld [hl], e
    ld l, $00
    ld c, c
    jr nz, jr_0f8_5bd9

    ld h, c

jr_0f8_5b77:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_5be4

    ld h, l
    ld l, h
    ld [hl], b
    jr nz, @+$6b

    ld [hl], h
    ld l, $01
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    nop

jr_0f8_5b89:
    ld h, c
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_5bfd

    ld a, c
    jr nz, @+$68

    ld h, c
    ld l, l
    ld l, c
    ld l, h

jr_0f8_5b97:
    ld a, c
    ccf

jr_0f8_5b99:
    ld bc, $2049
    ld [hl], a
    ld l, c
    ld l, h
    ld l, h
    nop
    ld h, a

jr_0f8_5ba2:
    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    ld h, l
    jr nz, jr_0f8_5c20

    ld l, b
    ld h, l
    ld l, c

jr_0f8_5baf:
    ld [hl], d
    nop
    ld [hl], e
    ld h, c
    ld h, [hl]
    ld h, l
    ld [hl], h
    ld a, c
    ld l, $01
    nop
    ld d, e
    ld l, a
    jr nz, jr_0f8_5c23

    db $76
    ld h, l

jr_0f8_5bc0:
    ld [hl], d
    ld a, c

jr_0f8_5bc2:
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_0f8_5bc6:
    ld h, a
    nop
    ld h, h
    ld h, l
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_0f8_5c40

    ld l, [hl]
    jr nz, jr_0f8_5c41

    ld h, l
    inc l
    nop
    ld l, b
    ld [hl], l

jr_0f8_5bd9:
    ld l, b
    ccf
    ld bc, $6948
    inc l
    jr nz, jr_0f8_5c2b

    ld l, c
    ld l, h
    ld l, h

jr_0f8_5be4:
    ld l, $01
    ld c, b
    ld l, c
    inc l
    jr nz, jr_0f8_5c2d

    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $00
    ld c, c
    jr nz, jr_0f8_5c5c

    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_0f8_5c6d

    ld l, a
    ld l, l
    ld h, l

jr_0f8_5bfd:
    ld l, a
    ld l, [hl]
    ld h, l
    nop
    ld [hl], h
    ld h, c
    ld l, h
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    ld bc, $6f53
    jr nz, jr_0f8_5c86

    ld l, a
    ld [hl], l
    nop
    ld l, b
    ld h, l
    ld h, c
    ld [hl], d
    ld h, h
    jr nz, jr_0f8_5c80

    ld [hl], h
    ld l, $20
    ld c, c
    jr nz, jr_0f8_5c91

    ld l, b
    ld l, c
    ld l, [hl]

jr_0f8_5c20:
    ld l, e
    nop
    ld c, c

jr_0f8_5c23:
    daa
    ld l, l
    jr nz, jr_0f8_5c8e

    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c

jr_0f8_5c2b:
    ld l, [hl]
    ld h, a

jr_0f8_5c2d:
    jr nz, jr_0f8_5c9e

    ld l, h
    ld h, h
    ld l, $00
    ld c, c
    ld [hl], h
    jr nz, jr_0f8_5caa

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h

jr_0f8_5c40:
    nop

jr_0f8_5c41:
    inc b
    ld [hl], h
    ld h, c
    ld l, h
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_5cbf

    ld l, a
    jr nz, jr_0f8_5cbb

    ld a, c
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    nop
    inc b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_5cbb

    ld h, l
    ld h, e
    ld l, a

jr_0f8_5c5c:
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_5cc3

    jr nz, jr_0f8_5ccc

    ld h, c
    ld h, d
    ld l, c
    ld [hl], h
    ld l, $01
    ld d, h
    ld h, c
    ld l, h

jr_0f8_5c6d:
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_5cef

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, h
    ld h, [hl]
    ccf
    jr nz, jr_0f8_5cc2

jr_0f8_5c80:
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l
    nop

jr_0f8_5c86:
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_0f8_5c8e:
    ld h, a
    jr nz, jr_0f8_5cfe

jr_0f8_5c91:
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_5cfe

    ld h, c
    db $76
    ld h, l
    nop
    ld l, b
    ld h, c
    ld [hl], b
    ld [hl], b

jr_0f8_5c9e:
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    jr nz, jr_0f8_5d18

    ld l, a
    jr nz, jr_0f8_5d20

    ld l, a
    ld [hl], l
    inc l

jr_0f8_5caa:
    jr nz, jr_0f8_5d0d

    ld l, l
    nop
    inc b
    ld c, c
    jr nz, jr_0f8_5d29

    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    ccf
    jr nz, jr_0f8_5d12

    ld l, a
    ld [hl], l

jr_0f8_5cbb:
    jr nz, jr_0f8_5d30

    ld l, a
    ld [hl], l

jr_0f8_5cbf:
    ld l, [hl]
    ld h, h
    nop

jr_0f8_5cc2:
    inc b

jr_0f8_5cc3:
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld l, $01

jr_0f8_5ccc:
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    nop
    ld l, c
    ld [hl], h
    jr nz, jr_0f8_5d49

    ld h, l
    ld h, l
    ld l, l
    ld [hl], e
    jr nz, jr_0f8_5d25

    jr nz, jr_0f8_5d4b

    ld h, c
    ld h, h
    ld h, l
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    nop
    ld [hl], a
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $20
    ld b, d
    ld [hl], l

jr_0f8_5cef:
    ld [hl], h
    jr nz, jr_0f8_5d56

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld [hl], a
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $20

jr_0f8_5cfe:
    ld c, l
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    jr nz, jr_0f8_5d4e

    jr nz, jr_0f8_5d6f

    ld h, c
    db $76
    ld h, l
    nop
    inc b
    ld h, d

jr_0f8_5d0d:
    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_0f8_5d73

jr_0f8_5d12:
    jr nz, jr_0f8_5d82

    ld h, l
    ld [hl], d
    db $76
    ld l, a

jr_0f8_5d18:
    ld [hl], l
    ld [hl], e
    jr nz, jr_0f8_5d93

    ld [hl], d
    ld h, l
    ld h, e
    ld l, e

jr_0f8_5d20:
    nop
    inc b
    ld [hl], e
    ld l, c
    ld l, [hl]

jr_0f8_5d25:
    ld h, e
    ld h, l
    jr nz, jr_0f8_5d9d

jr_0f8_5d29:
    ld l, a
    ld l, a
    jr nz, @+$6f

    ld h, c
    ld l, [hl]
    ld a, c

jr_0f8_5d30:
    nop
    inc b
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld [hl], e
    nop
    inc b
    ld [hl], e
    ld [hl], h
    ld h, c
    ld [hl], d
    ld [hl], h
    ld h, l
    ld h, h

jr_0f8_5d49:
    jr nz, jr_0f8_5db3

jr_0f8_5d4b:
    ld h, c
    ld [hl], b
    ld [hl], b

jr_0f8_5d4e:
    ld h, l
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $00
    inc b

jr_0f8_5d56:
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_0f8_5da6

    jr nz, jr_0f8_5dd3

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_0f8_5dae

    daa
    ld l, h
    ld l, h
    nop
    inc b
    ld h, a
    ld l, a
    jr nz, jr_0f8_5ddd

    ld [hl], l

jr_0f8_5d6f:
    ld [hl], h
    jr nz, jr_0f8_5dd3

    ld l, [hl]

jr_0f8_5d73:
    ld h, h
    jr nz, jr_0f8_5ddd

    ld h, l
    ld [hl], h
    jr nz, jr_0f8_5ded

    ld l, a
    ld l, l
    ld h, l
    nop
    inc b
    ld h, [hl]
    ld [hl], d
    ld h, l

jr_0f8_5d82:
    ld [hl], e
    ld l, b
    jr nz, jr_0f8_5de7

    ld l, c
    ld [hl], d
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_0f8_5def

    nop
    inc b
    ld h, e
    ld l, b
    ld h, c

jr_0f8_5d93:
    ld l, [hl]
    ld h, a
    ld h, l
    ld l, $01
    ld c, c
    jr nz, jr_0f8_5e0f

    ld l, a
    ld l, h

jr_0f8_5d9d:
    ld h, h
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_5e08

    ld l, a
    ld l, [hl]

jr_0f8_5da6:
    daa
    ld [hl], h
    jr nz, @+$79

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c

jr_0f8_5dae:
    ld l, $00
    ld c, c
    daa
    ld l, h

jr_0f8_5db3:
    ld l, h
    jr nz, jr_0f8_5e20

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_5e22

    ld l, a
    jr nz, jr_0f8_5e1f

    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_5e29

    ld h, l
    ld [hl], h
    nop
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l
    jr nz, jr_0f8_5e31

    ld [hl], d
    ld h, l
    ld [hl], e
    ld l, b
    jr nz, jr_0f8_5e32

    ld l, c
    ld [hl], d

jr_0f8_5dd3:
    jr nz, jr_0f8_5e36

    ld l, [hl]
    ld h, h
    nop
    inc b
    ld h, d
    ld h, l
    jr nz, jr_0f8_5e42

jr_0f8_5ddd:
    ld h, c
    ld [hl], h
    ld h, l
    ld l, [hl]
    jr nz, @+$64

    ld a, c
    jr nz, jr_0f8_5e47

    nop

jr_0f8_5de7:
    inc b
    ld l, l
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld [hl], h

jr_0f8_5ded:
    ld h, l
    ld [hl], d

jr_0f8_5def:
    ld bc, $694a
    ld l, h
    ld l, h
    ld hl, $5300
    ld l, a
    jr nz, jr_0f8_5e73

    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_5e74

    ld h, c
    ld h, [hl]
    ld h, l
    ld hl, $5401
    ld l, b

jr_0f8_5e08:
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    nop
    ld [hl], a
    ld l, b

jr_0f8_5e0f:
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_5e5c

    jr nz, @+$79

    ld h, c
    ld [hl], e
    jr nz, jr_0f8_5e80

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], h

jr_0f8_5e1f:
    ld l, a

jr_0f8_5e20:
    jr nz, jr_0f8_5e95

jr_0f8_5e22:
    ld h, c
    ld a, c
    ld hl, $5720
    ld l, b
    ld h, l

jr_0f8_5e29:
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_5e9c

    ld l, [hl]
    nop
    ld h, l
    ld h, c

jr_0f8_5e31:
    ld [hl], d

jr_0f8_5e32:
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_5e9e

jr_0f8_5e36:
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_5eb4

    ld l, a
    ld [hl], l
    nop
    inc b
    ld h, d
    ld h, l
    ld h, l

jr_0f8_5e42:
    ld l, [hl]
    ccf
    jr nz, jr_0f8_5e9f

    ld l, a

jr_0f8_5e47:
    ld [hl], l
    nop
    inc b
    ld h, h
    ld l, c
    ld [hl], e
    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld h, c
    ld [hl], d
    ld h, l
    ld h, h
    jr nz, jr_0f8_5ebd

    ld [hl], d
    ld l, a
    ld l, l
    nop
    inc b

jr_0f8_5e5c:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f8_5ec9

    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_5ec7

    ld l, h
    ld l, h
    jr nz, jr_0f8_5ed9

    ld h, [hl]
    nop
    inc b
    ld h, c
    jr nz, jr_0f8_5ee3

    ld [hl], l
    ld h, h
    ld h, h

jr_0f8_5e73:
    ld h, l

jr_0f8_5e74:
    ld l, [hl]
    ld l, $01
    ld c, c
    daa
    ld l, l
    jr nz, @+$75

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c

jr_0f8_5e80:
    ld l, $00
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, @+$4b

    jr nz, jr_0f8_5ef1

    ld h, c
    ld h, h
    jr nz, jr_0f8_5efa

    ld a, c
    nop
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], e
    ld l, a
    ld l, [hl]

jr_0f8_5e95:
    ld [hl], e
    jr nz, @+$76

    ld l, a
    ld l, $00
    ld d, b

jr_0f8_5e9c:
    ld h, l
    ld [hl], d

jr_0f8_5e9e:
    ld l, b

jr_0f8_5e9f:
    ld h, c
    ld [hl], b
    ld [hl], e
    jr nz, jr_0f8_5f1d

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_5f0f

    ld [hl], l
    ld a, c
    ld [hl], e
    nop
    inc b
    ld l, b
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_5f20

    ld h, l

jr_0f8_5eb4:
    ld [hl], h
    jr nz, jr_0f8_5f2b

    ld l, b
    ld h, l
    ld l, l
    inc l
    jr nz, jr_0f8_5f26

jr_0f8_5ebd:
    ld [hl], h
    nop
    inc b
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, jr_0f8_5f26

    ld l, h
    ld l, h

jr_0f8_5ec7:
    jr nz, jr_0f8_5f12

jr_0f8_5ec9:
    jr nz, jr_0f8_5f2e

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, @+$66

    ld l, a
    nop
    inc b
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_5f48

    ld [hl], d

jr_0f8_5ed9:
    ld l, a
    ld [hl], h
    ld h, l
    ld h, e
    ld [hl], h
    jr nz, jr_0f8_5f4d

    ld a, c
    ld [hl], e
    ld h, l

jr_0f8_5ee3:
    ld l, h
    ld h, [hl]
    nop
    inc b
    ld h, c
    ld h, a
    ld h, c
    ld l, c
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_5f64

    ld l, b

jr_0f8_5ef1:
    ld l, a
    ld [hl], e
    ld h, l
    nop
    inc b
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld h, c

jr_0f8_5efa:
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, @+$65

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld l, $01
    ld c, c
    ld [hl], e
    jr nz, jr_0f8_5f81

    ld l, b
    ld h, c

jr_0f8_5f0f:
    ld [hl], h
    nop
    ld [hl], d

jr_0f8_5f12:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ccf
    jr nz, jr_0f8_5f5a

    ld l, [hl]
    ld a, c
    ld [hl], a
    ld h, c

jr_0f8_5f1d:
    ld a, c
    inc l
    nop

jr_0f8_5f20:
    ld l, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$69

jr_0f8_5f26:
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_0f8_5f9f

jr_0f8_5f2b:
    ld l, a
    jr nz, jr_0f8_5fa1

jr_0f8_5f2e:
    ld h, l
    ld h, l
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_5f97

    ld [hl], d
    ld h, l
    jr nz, jr_0f8_5fad

    ld h, c
    ld h, [hl]
    ld h, l
    ld l, $01
    ld c, a
    ld c, e
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    nop

jr_0f8_5f48:
    ld h, a
    ld l, a
    jr nz, jr_0f8_5fc0

    ld l, a

jr_0f8_5f4d:
    jr nz, jr_0f8_5fc3

    ld l, b
    ld h, l
    jr nz, jr_0f8_5fc2

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    nop
    ld l, b
    ld l, a

jr_0f8_5f5a:
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_0f8_5fc0

    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_5fd6

    ld h, l

jr_0f8_5f64:
    ld h, l
    jr nz, jr_0f8_5fd0

    ld h, [hl]
    jr nz, jr_0f8_5fb3

    nop
    ld h, e
    ld h, c
    ld l, [hl]
    jr nz, jr_0f8_5fd6

    ld l, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_5fd6

    ld l, [hl]
    ld a, c
    jr nz, jr_0f8_5fdc

    ld l, h
    ld [hl], l
    ld h, l
    ld [hl], e
    ld l, $01
    ld d, a
    ld h, l

jr_0f8_5f81:
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d
    ld hl, $4301
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld hl, $5900
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_5ff7

    ld l, h

jr_0f8_5f97:
    ld l, c
    db $76
    ld h, l
    ld hl, $0001
    ld c, l
    ld a, c

jr_0f8_5f9f:
    jr nz, jr_0f8_6018

jr_0f8_5fa1:
    ld l, a
    ld [hl], d
    ld h, h
    ld [hl], e
    jr nz, jr_0f8_600c

    ld a, b
    ld h, c
    ld h, e
    ld [hl], h
    ld l, h
    ld a, c

jr_0f8_5fad:
    ld hl, $0001
    ld d, a
    ld l, b
    ld h, l

jr_0f8_5fb3:
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0f8_6003

    ld l, c
    ld l, h
    ld l, h
    ccf
    nop
    ld b, c
    ld [hl], d

jr_0f8_5fc0:
    ld h, l
    ld l, [hl]

jr_0f8_5fc2:
    daa

jr_0f8_5fc3:
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_6041

    ld l, c
    ld [hl], h
    ld l, b
    nop
    ld c, d
    ld l, c

jr_0f8_5fd0:
    ld l, h
    ld l, h
    ccf
    ld bc, $2749

jr_0f8_5fd6:
    ld l, l
    jr nz, jr_0f8_604c

    ld l, a
    ld [hl], d
    ld [hl], d

jr_0f8_5fdc:
    ld a, c
    ld l, $00
    ld d, a
    ld h, l
    jr nz, jr_0f8_605a

    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_6049

    ld [hl], h
    ld [hl], h
    ld h, c
    ld h, e
    ld l, e
    ld h, l
    ld h, h
    jr nz, jr_0f8_6053

    ld a, c
    nop
    ld h, c
    jr nz, jr_0f8_6069

    ld [hl], h

jr_0f8_5ff7:
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    jr nz, jr_0f8_606b

    ld l, a
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld h, l

jr_0f8_6003:
    ld [hl], d
    ld l, $2e
    nop
    ld c, c
    jr nz, jr_0f8_6076

    ld l, a
    ld [hl], e

jr_0f8_600c:
    ld [hl], h
    jr nz, jr_0f8_6083

    ld [hl], d
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_0f8_6084

    ld h, [hl]
    jr nz, @+$6a

jr_0f8_6018:
    ld h, l
    ld [hl], d
    nop
    inc b
    ld [hl], a
    ld l, b
    ld l, c
    ld l, h
    ld h, l
    jr nz, jr_0f8_609a

    ld h, l
    jr nz, @+$79

    ld h, l
    ld [hl], d
    ld h, l
    nop
    inc b
    ld [hl], e
    ld h, e
    ld l, a
    ld [hl], l
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_6096

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    ld l, $00
    inc b
    ld c, c
    jr nz, jr_0f8_60a8

    ld l, a

jr_0f8_6041:
    ld [hl], b
    ld h, l
    jr nz, jr_0f8_60b8

    ld l, b
    ld h, l
    daa
    ld [hl], e

jr_0f8_6049:
    jr nz, jr_0f8_609a

    ld c, e

jr_0f8_604c:
    ld hl, $4901
    jr nz, jr_0f8_60c4

    ld h, l
    ld h, l

jr_0f8_6053:
    ld l, $2e
    nop
    ld d, a
    ld h, l
    ld l, h
    ld l, h

jr_0f8_605a:
    inc l
    jr nz, jr_0f8_60c6

    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_60d0

    ld l, a
    ld [hl], h
    jr nz, jr_0f8_60df

    ld l, a
    ld [hl], l
    ld [hl], d

jr_0f8_6069:
    nop
    ld h, [hl]

jr_0f8_606b:
    ld h, c
    ld [hl], l
    ld l, h
    ld [hl], h
    ld l, $2e
    jr nz, @+$56

    ld l, b
    ld l, c
    ld [hl], e

jr_0f8_6076:
    jr nz, jr_0f8_60e8

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    nop
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_60e4

    ld [hl], d
    ld h, c

jr_0f8_6083:
    ld a, d

jr_0f8_6084:
    ld a, c
    ld hl, $4920
    ld h, [hl]
    jr nz, jr_0f8_6102

    ld h, l
    nop
    inc b
    ld [hl], e
    ld [hl], h
    ld h, c
    ld a, c
    jr nz, @+$6a

    ld h, l
    ld [hl], d

jr_0f8_6096:
    ld h, l
    inc l
    jr nz, jr_0f8_60fb

jr_0f8_609a:
    ld l, h
    ld l, h
    jr nz, jr_0f8_610d

    ld h, [hl]
    nop
    inc b
    ld [hl], l
    ld [hl], e
    jr nz, @+$79

    ld l, c
    ld l, h
    ld l, h

jr_0f8_60a8:
    jr nz, jr_0f8_610f

    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_6123

    ld [hl], b
    nop
    inc b
    ld h, h
    ld h, l
    ld h, c
    ld h, h
    ld l, $2e
    ld d, a

jr_0f8_60b8:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_6130

    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    nop
    inc b

jr_0f8_60c4:
    ld [hl], a
    ld h, l

jr_0f8_60c6:
    jr nz, @+$66

    ld l, a
    jr nz, @+$59

    ld h, l
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d

jr_0f8_60d0:
    ccf
    ld bc, $6557
    jr nz, jr_0f8_613e

    ld h, c
    db $76
    ld h, l
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_6141

    ld l, a

jr_0f8_60df:
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h

jr_0f8_60e4:
    ld h, l
    jr nz, jr_0f8_615b

    ld l, b

jr_0f8_60e8:
    ld l, c
    ld [hl], e
    nop
    ld l, l
    ld l, c
    ld [hl], e
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $20
    ld d, a
    ld l, b
    ld h, l
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d

jr_0f8_60fb:
    jr nz, jr_0f8_6174

    ld h, l
    nop
    ld h, l
    ld [hl], e
    ld h, e

jr_0f8_6102:
    ld h, c
    ld [hl], b
    ld h, l
    jr nz, jr_0f8_6176

    ld [hl], d
    jr nz, jr_0f8_617d

    ld [hl], h
    ld h, c
    ld a, c

jr_0f8_610d:
    jr nz, jr_0f8_6170

jr_0f8_610f:
    ld l, [hl]
    ld h, h
    nop
    inc b
    ld l, h
    ld l, a
    ld l, a
    ld l, e
    jr nz, jr_0f8_617f

    ld l, a
    ld [hl], d
    jr nz, jr_0f8_6167

    ld l, c
    ld l, h
    ld l, h
    inc l
    jr nz, jr_0f8_619a

jr_0f8_6123:
    ld h, l
    nop
    inc b
    ld h, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_6195

    ld h, c
    db $76
    ld h, l

jr_0f8_6130:
    jr nz, @+$6f

    ld h, c
    ld l, [hl]
    ld a, c
    nop
    inc b
    ld h, d
    ld [hl], l
    ld l, h
    ld l, h
    ld h, l
    ld [hl], h
    ld [hl], e

jr_0f8_613e:
    jr nz, jr_0f8_61ac

    ld h, l

jr_0f8_6141:
    ld h, [hl]
    ld [hl], h
    jr nz, jr_0f8_61a6

    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_61c0

    ld h, l
    nop
    inc b
    ld h, e
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_61b8

    db $76
    ld h, l
    ld l, [hl]
    jr nz, jr_0f8_61c8

    ld [hl], d
    ld l, a
    ld [hl], h

jr_0f8_615b:
    ld h, l
    ld h, e
    ld [hl], h
    nop
    inc b
    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, h
    db $76

jr_0f8_6167:
    ld h, l
    ld [hl], e
    ld l, $20
    ld d, a
    ld h, l
    daa
    ld [hl], d
    ld h, l

jr_0f8_6170:
    nop
    inc b
    ld [hl], e
    ld [hl], h

jr_0f8_6174:
    ld l, c
    ld l, h

jr_0f8_6176:
    ld l, h
    jr nz, jr_0f8_61e2

    ld l, [hl]
    jr nz, jr_0f8_61f0

    ld [hl], d

jr_0f8_617d:
    ld l, a
    ld [hl], l

jr_0f8_617f:
    ld h, d
    ld l, h
    ld h, l
    ld l, $00
    inc b
    ld b, e
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    inc l
    jr nz, jr_0f8_6201

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_61f4

    ld [hl], d
    ld h, l

jr_0f8_6195:
    nop
    inc b
    ld [hl], e
    ld [hl], h
    ld l, c

jr_0f8_619a:
    ld l, h
    ld l, h
    jr nz, jr_0f8_61ff

    jr nz, @+$6e

    ld l, a
    ld [hl], h
    jr nz, jr_0f8_6213

    ld h, [hl]
    nop

jr_0f8_61a6:
    inc b
    ld l, h
    ld l, a
    ld h, e
    ld l, e
    ld h, l

jr_0f8_61ac:
    ld h, h
    jr nz, jr_0f8_6221

    ld l, a
    ld l, a
    ld l, l
    ld [hl], e
    jr nz, jr_0f8_621e

    ld l, [hl]
    nop
    inc b

jr_0f8_61b8:
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_6226

    ld l, a
    ld [hl], l

jr_0f8_61c0:
    ld [hl], e
    ld h, l
    ld l, $20
    ld b, e
    ld l, b
    ld h, l
    ld h, e

jr_0f8_61c8:
    ld l, e
    nop
    inc b
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    jr nz, jr_0f8_6240

    ld l, [hl]
    ld h, l
    jr nz, jr_0f8_6242

    ld l, a
    ld [hl], d
    ld h, l
    jr nz, @+$76

    ld l, c
    ld l, l
    ld h, l
    ld l, $00
    inc b
    ld d, h
    ld l, b

jr_0f8_61e2:
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_6254

    ld h, c
    ld a, c
    jr nz, @+$64

    ld h, l
    jr nz, jr_0f8_624f

    nop
    inc b

jr_0f8_61f0:
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e

jr_0f8_61f4:
    ld h, l
    jr nz, jr_0f8_626b

    ld l, a
    jr nz, jr_0f8_6262

    ld l, c
    ld h, h
    ld h, l
    nop
    inc b

jr_0f8_61ff:
    ld [hl], e
    ld h, c

jr_0f8_6201:
    ld h, [hl]
    ld h, l
    ld l, h
    ld a, c
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_6279

    ld l, a
    ld l, a
    ld l, e
    nop
    inc b
    ld h, c

jr_0f8_6213:
    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_628e

    ld l, b
    ld h, l
    jr nz, jr_0f8_6286

jr_0f8_621e:
    ld l, a
    ld [hl], l
    ld [hl], e

jr_0f8_6221:
    ld h, l
    jr nz, jr_0f8_6285

    nop
    inc b

jr_0f8_6226:
    ld l, h
    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_0f8_629b

    ld l, a
    ld [hl], d
    ld h, l
    ld l, $01
    nop
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$69

    ld h, l
    ld [hl], h
    jr nz, jr_0f8_62a6

    ld l, a

jr_0f8_6240:
    ld l, c
    ld l, [hl]

jr_0f8_6242:
    ld h, a
    ld l, $01
    ld d, d
    ld h, l
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    ld hl, $5900

jr_0f8_624f:
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_62b4

    ld [hl], d

jr_0f8_6254:
    ld h, l
    jr nz, jr_0f8_62ca

    ld h, c
    ld h, [hl]
    ld h, l
    ld hl, $4901
    jr nz, jr_0f8_62d2

    ld h, c
    ld [hl], a
    nop

jr_0f8_6262:
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_62d0

    ld l, [hl]
    jr nz, jr_0f8_62de

    ld l, b

jr_0f8_626b:
    ld h, l
    jr nz, @+$69

    ld h, c
    ld [hl], d
    ld h, h
    ld h, l
    ld l, [hl]
    ld l, $00
    ld c, c
    daa
    db $76
    ld h, l

jr_0f8_6279:
    jr nz, jr_0f8_62de

    ld h, c
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_0f8_62f7

    ld [hl], b
    jr nz, jr_0f8_62fc

jr_0f8_6285:
    ld l, c

jr_0f8_6286:
    ld [hl], h
    ld l, b
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, @+$63

jr_0f8_628e:
    ld [hl], h
    jr nz, jr_0f8_62fd

    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, $20
    ld b, d
    ld [hl], l
    ld [hl], h
    nop
    inc b

jr_0f8_629b:
    ld l, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$63

    jr nz, @+$75

    ld [hl], h
    ld [hl], d
    ld h, c

jr_0f8_62a6:
    ld l, [hl]
    ld h, a
    ld h, l
    nop
    inc b
    ld [hl], b
    ld l, h
    ld h, c
    ld h, e
    ld h, l
    inc l
    jr nz, jr_0f8_631c

    ld [hl], e

jr_0f8_62b4:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_6322

    ld [hl], h
    ld l, $00
    inc b
    ld c, c
    ld [hl], e
    jr nz, jr_0f8_6335

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$63

    jr nz, jr_0f8_6335

    ld h, l
    ld h, l

jr_0f8_62ca:
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    inc b

jr_0f8_62d0:
    ld [hl], d
    ld l, a

jr_0f8_62d2:
    ld l, a
    ld l, l
    jr nz, jr_0f8_6345

    ld [hl], d
    jr nz, jr_0f8_634c

    ld l, a
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b

jr_0f8_62de:
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    ld bc, $6843
    ld [hl], d
    ld l, c
    ld [hl], e
    ld hl, $4a01
    ld l, c
    ld l, h
    ld l, h
    ld hl, $4301
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, $00

jr_0f8_62f7:
    ld d, a
    ld h, l
    ld [hl], e
    ld l, e
    ld h, l

jr_0f8_62fc:
    ld [hl], d

jr_0f8_62fd:
    inc l
    jr nz, @+$6a

    ld h, l
    jr nz, jr_0f8_636c

    ld [hl], e
    ld l, $2e
    ld bc, $2049
    ld l, e
    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $00
    ld d, e
    ld l, b
    ld l, a
    ld l, a
    ld [hl], h
    ld hl, $4920
    ld [hl], h
    jr nz, jr_0f8_637e

    ld l, a
    ld h, l

jr_0f8_631c:
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld l, a

jr_0f8_6322:
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld hl, $4c20
    ld l, a
    ld l, a
    ld l, e
    inc l
    jr nz, jr_0f8_6378

    ld l, c
    ld l, h
    ld l, h
    ld l, $00
    ld d, a
    ld h, c

jr_0f8_6335:
    ld l, c
    ld [hl], h
    jr nz, jr_0f8_63a1

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $00
    inc b
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_63b8

jr_0f8_6345:
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_63c3

    ld l, a
    ld [hl], l

jr_0f8_634c:
    ld hl, $4f01
    ld c, e
    inc l
    nop
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_63cf

    ld h, c
    ld l, c
    ld [hl], h
    ld l, $01
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    ld l, $2e
    nop
    ld c, c
    daa
    ld l, l
    jr nz, jr_0f8_63d0

    ld l, h
    ld h, c
    ld h, h

jr_0f8_636c:
    jr nz, jr_0f8_63e7

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_63d3

    ld [hl], d
    ld h, l
    nop
    ld h, c
    ld l, h
    ld l, h

jr_0f8_6378:
    jr nz, jr_0f8_63ec

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h

jr_0f8_637e:
    inc l
    jr nz, jr_0f8_63e5

    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_63ee

    ld l, a
    nop
    ld h, c
    ld l, h
    ld l, a
    ld l, [hl]
    ld h, l
    ld hl, $4301
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    inc l
    nop
    ld h, c
    ld [hl], e
    jr nz, @+$6f

    ld a, c
    jr nz, jr_0f8_6411

    ld [hl], l
    ld h, d
    ld l, a

jr_0f8_63a1:
    ld [hl], d
    ld h, h
    ld l, c
    ld l, [hl]
    ld h, c
    ld [hl], h
    ld h, l
    inc l
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, @+$6a

    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_6415

    nop
    ld [hl], a
    ld l, a
    ld l, [hl]

jr_0f8_63b8:
    ld h, h
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_0f8_6434

    ld h, c
    ld l, h
    ld h, l

jr_0f8_63c3:
    ld l, [hl]
    ld [hl], h
    ld l, $01
    ld c, c
    jr nz, jr_0f8_6441

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    nop

jr_0f8_63cf:
    ld l, [hl]

jr_0f8_63d0:
    ld h, l
    db $76
    ld h, l

jr_0f8_63d3:
    ld [hl], d
    jr nz, @+$79

    ld l, a
    ld [hl], d
    ld l, e
    jr nz, jr_0f8_6441

    ld l, a
    ld [hl], d
    jr nz, jr_0f8_6440

    nop
    ld h, e
    ld l, a
    ld l, l
    ld [hl], b
    ld h, c

jr_0f8_63e5:
    ld l, [hl]
    ld a, c

jr_0f8_63e7:
    jr nz, jr_0f8_6455

    ld l, c
    ld l, e
    ld h, l

jr_0f8_63ec:
    nop
    ld d, l

jr_0f8_63ee:
    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    ld l, $20
    ld b, c
    ld l, [hl]
    ld h, h
    nop
    inc b
    ld d, a
    ld h, l
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d
    inc l
    jr nz, jr_0f8_647e

    ld l, a
    ld [hl], l
    jr nz, @+$79

    ld h, l
    ld [hl], d
    ld h, l
    nop
    inc b
    ld h, [hl]
    ld l, a
    ld [hl], d

jr_0f8_6411:
    ld l, l
    ld h, l
    ld [hl], d
    ld l, h

jr_0f8_6415:
    ld a, c
    jr nz, jr_0f8_648f

    ld l, c
    ld [hl], h
    ld l, b
    nop
    inc b
    ld d, l
    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    ccf
    ld bc, $6857
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_6491

    ld l, a
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_64a1

jr_0f8_6434:
    ld h, l
    ld h, c
    ld l, [hl]
    ccf
    ld bc, $6953
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_0f8_64b7

jr_0f8_6440:
    ld l, b

jr_0f8_6441:
    ld h, l
    ld l, [hl]
    nop
    ld l, b
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_64c3

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_64b0

    ld h, l
    ld h, l
    ld l, [hl]
    jr nz, jr_0f8_64b4

    ld l, [hl]
    nop

jr_0f8_6455:
    ld d, l
    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    jr nz, @+$63

    ld h, a
    ld h, l
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f8_64c6

    ld l, [hl]
    ld h, h
    nop
    ld h, c
    jr nz, jr_0f8_64df

    ld [hl], d
    ld h, c
    ld l, c
    ld [hl], h
    ld l, a
    ld [hl], d
    jr nz, jr_0f8_64e7

    ld l, a
    nop
    inc b
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f8_64ce

    ld d, h
    ld b, c
    ld d, d

jr_0f8_647e:
    ld d, e
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], a
    ld l, $00
    ld e, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_6505

    ld [hl], d

jr_0f8_648f:
    ld l, a
    ld l, [hl]

jr_0f8_6491:
    ld h, a
    ld l, $20
    ld c, c
    jr nz, jr_0f8_650e

    ld h, c
    ld [hl], e
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld l, l
    ld h, l
    ld [hl], d
    ld l, h

jr_0f8_64a1:
    ld a, c
    jr nz, jr_0f8_651b

    ld l, c
    ld [hl], h
    ld l, b
    nop
    ld d, l
    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c

jr_0f8_64b0:
    inc l
    jr nz, jr_0f8_652c

    ld h, l

jr_0f8_64b4:
    ld [hl], e
    ld l, $20

jr_0f8_64b7:
    ld c, [hl]
    ld l, a
    ld [hl], a
    nop
    inc b
    ld c, c
    daa
    ld l, l
    jr nz, jr_0f8_6531

    ld [hl], d
    ld h, l

jr_0f8_64c3:
    ld [hl], b
    ld h, c
    ld [hl], d

jr_0f8_64c6:
    ld h, l
    ld h, h
    jr nz, jr_0f8_653e

    ld l, a
    jr nz, jr_0f8_6533

    ld h, c

jr_0f8_64ce:
    ld h, e
    ld h, l
    nop
    inc b
    ld h, c
    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    inc l
    jr nz, jr_0f8_6542

    db $76
    ld h, l

jr_0f8_64df:
    ld l, [hl]
    nop
    inc b
    ld h, a
    ld h, l
    ld [hl], h
    ld [hl], h
    ld l, c

jr_0f8_64e7:
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_655d

    ld l, c
    ld h, h
    jr nz, @+$71

    ld h, [hl]
    jr nz, jr_0f8_656b

    ld l, a
    ld [hl], l
    nop
    inc b
    db $76
    ld l, c
    ld h, a
    ld l, c
    ld l, h
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld h, l
    jr nz, jr_0f8_6554

    ld d, h
    ld b, c
    ld d, d
    ld d, e

jr_0f8_6505:
    ld l, $01
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, jr_0f8_6580

    ld l, b
    ld h, l

jr_0f8_650e:
    nop
    ld [hl], a
    ld l, a
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_6586

    ld l, a
    ld [hl], e
    ld [hl], e
    ld l, c
    ld h, d

jr_0f8_651b:
    ld l, h
    ld h, l
    nop
    ld [hl], e
    ld l, c
    ld [hl], h
    ld [hl], l
    ld h, c
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, jr_0f8_6591

    ld h, c
    ld [hl], e
    nop

jr_0f8_652c:
    ld l, a
    ld h, e
    ld h, e
    ld [hl], l
    ld [hl], d

jr_0f8_6531:
    ld [hl], d
    ld h, l

jr_0f8_6533:
    ld h, h
    ld hl, $5420
    ld l, b
    ld h, l
    nop
    inc b
    ld h, [hl]
    ld h, c
    ld l, c

jr_0f8_653e:
    ld l, h
    ld [hl], l
    ld [hl], d
    ld h, l

jr_0f8_6542:
    jr nz, jr_0f8_65b3

    ld h, [hl]
    jr nz, jr_0f8_65bb

    ld l, b
    ld h, l
    nop
    inc b
    ld h, l
    ld a, b
    ld [hl], b
    ld h, l
    ld [hl], d
    ld l, c
    ld l, l
    ld h, l
    ld l, [hl]

jr_0f8_6554:
    ld [hl], h
    jr nz, jr_0f8_65ba

    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h

jr_0f8_655d:
    jr nz, jr_0f8_65c0

    nop
    inc b
    db $76
    ld l, c
    ld [hl], d
    ld [hl], l
    ld [hl], e
    inc l
    jr nz, jr_0f8_65ca

    jr nz, jr_0f8_65cd

jr_0f8_656b:
    ld l, c
    ld l, a
    ld l, h
    ld l, a
    ld h, a
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    nop
    inc b
    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], b
    ld l, a
    ld l, [hl]
    jr nz, jr_0f8_65ab

    jr nz, jr_0f8_65f0

jr_0f8_6580:
    ld l, a
    ld l, h
    ld l, h
    ld [hl], l
    ld [hl], h
    ld l, c

jr_0f8_6586:
    ld l, [hl]
    ld h, a
    nop
    inc b
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f8_65f4

    ld l, [hl]
    ld [hl], h

jr_0f8_6591:
    ld l, c
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_6602

    ld h, c
    ld h, d
    ld l, $01
    ld d, h
    ld l, b
    ld h, l
    jr nz, jr_0f8_6616

    ld l, a
    ld [hl], d
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_660d

    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l

jr_0f8_65ab:
    ld h, h
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_6627

jr_0f8_65b3:
    ld l, b
    ld h, l
    jr nz, @+$56

    ld a, c
    ld [hl], d
    ld h, c

jr_0f8_65ba:
    ld l, [hl]

jr_0f8_65bb:
    ld [hl], h
    nop
    db $76
    ld l, c
    ld [hl], d

jr_0f8_65c0:
    ld [hl], l
    ld [hl], e
    ld l, $2e
    jr nz, jr_0f8_660f

    jr nz, jr_0f8_6634

    ld l, a
    ld [hl], e

jr_0f8_65ca:
    ld [hl], h
    jr nz, jr_0f8_6640

jr_0f8_65cd:
    ld l, a
    ld l, l
    ld h, l
    nop
    ld l, a
    ld h, [hl]
    jr nz, jr_0f8_6642

    ld a, c
    jr nz, jr_0f8_662b

    ld d, h
    ld b, c
    ld d, d
    ld d, e
    jr nz, jr_0f8_6652

    ld h, l
    ld h, c
    ld l, l
    nop
    inc b
    ld l, l
    ld h, l
    ld l, l
    ld h, d
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, @+$64

    ld h, l
    ld h, e
    ld h, c
    ld [hl], l

jr_0f8_65f0:
    ld [hl], e
    ld h, l
    nop
    inc b

jr_0f8_65f4:
    ld l, a
    ld h, [hl]
    jr nz, jr_0f8_6661

    ld [hl], h
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_666b

    ld l, c
    ld l, h

jr_0f8_6602:
    ld l, h
    ld h, l
    ld h, h
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld l, l
    jr nz, jr_0f8_6683

    ld l, c

jr_0f8_660d:
    ld [hl], h
    ld l, b

jr_0f8_660f:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_0f8_6685

jr_0f8_6616:
    ld [hl], a
    ld l, [hl]
    nop
    ld l, b
    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    ld hl, $4420
    ld l, c
    ld h, h
    jr nz, jr_0f8_669e

    ld l, a
    ld [hl], l

jr_0f8_6627:
    nop
    ld l, e
    ld l, c
    ld l, h

jr_0f8_662b:
    ld l, h
    jr nz, jr_0f8_6673

    ld l, [hl]
    ld [hl], d
    ld l, c
    ld h, e
    ld l, a
    ccf

jr_0f8_6634:
    ld bc, $6552
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    ld hl, $0001
    ld e, c
    ld h, l

jr_0f8_6640:
    ld h, c
    ld l, b

jr_0f8_6642:
    inc l
    jr nz, jr_0f8_6691

    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$76

    ld l, b
    ld l, c
    ld [hl], e
    ld hl, $5201
    ld h, l
    ld h, d

jr_0f8_6652:
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    ld hl, $0001
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, @+$6f

    ld l, a

jr_0f8_6661:
    db $76
    ld h, l
    ld hl, $4900
    ld h, [hl]
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_0f8_666b:
    jr nz, jr_0f8_66da

    ld l, a
    db $76
    ld h, l
    inc l
    nop
    ld c, c

jr_0f8_6673:
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_66e3

    ld l, c
    ld l, h
    ld l, h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    ld hl, $4301
    ld l, b

jr_0f8_6683:
    ld [hl], d
    ld l, c

jr_0f8_6685:
    ld [hl], e
    inc l
    nop
    ld c, c
    jr nz, jr_0f8_66f3

    ld h, c
    db $76
    ld h, l
    jr nz, @+$75

    ld l, a

jr_0f8_6691:
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_6710

    ld l, b

jr_0f8_669e:
    ld l, a
    ld [hl], a
    jr nz, jr_0f8_671b

    ld l, a
    ld [hl], l
    ld l, $01
    nop
    ld c, [hl]
    ld l, a
    ld [hl], a
    inc l
    jr nz, @+$79

    ld h, c
    ld l, h
    ld l, e
    ld hl, $0001
    ld c, c
    ld [hl], e
    jr nz, jr_0f8_672b

    ld l, b
    ld l, c
    ld [hl], e
    ld l, $2e
    ld hl, HeaderManufacturerCode
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    nop
    ld [hl], d
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    inc l
    jr nz, jr_0f8_6742

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_0f8_674a

    ld l, b
    ld h, l
    nop
    ld [hl], l

jr_0f8_66da:
    ld l, h
    ld [hl], h
    ld l, c
    ld l, l
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_0f8_674f

jr_0f8_66e3:
    ld l, c
    ld h, [hl]
    ld h, l
    jr nz, @+$68

    ld l, a
    ld [hl], d
    ld l, l
    nop
    dec l
    jr nz, jr_0f8_6743

    ld a, c
    ld [hl], d
    ld h, c
    ld l, [hl]

jr_0f8_66f3:
    ld [hl], h
    ld hl, $4301
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, $2e
    ld bc, $7453
    ld l, a
    ld [hl], b
    jr nz, jr_0f8_676d

    ld [hl], h
    ld hl, $5701
    ld h, l
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d
    inc l
    nop
    ld a, c

jr_0f8_6710:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_6787

    ld l, c
    ld [hl], h
    ld l, c
    ld h, [hl]

jr_0f8_671b:
    ld [hl], l
    ld l, h
    ld l, $01
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_678e

    ld [hl], e
    nop
    ld a, c
    ld l, a
    ld [hl], l
    ld [hl], d

jr_0f8_672b:
    jr nz, @+$75

    ld h, c
    db $76
    ld l, c
    ld l, a
    ld [hl], d
    ccf
    jr nz, jr_0f8_678e

    ld l, a
    ld [hl], l
    nop
    ld [hl], e
    ld h, c
    ld a, c
    jr nz, jr_0f8_67b1

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$29

jr_0f8_6742:
    ld b, [hl]

jr_0f8_6743:
    ld h, c
    ld l, c
    ld l, h
    ld [hl], l
    ld [hl], d
    ld h, l
    daa

jr_0f8_674a:
    nop
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_67c8

jr_0f8_674f:
    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_0f8_67c7

    ld h, c
    db $76
    ld l, c
    ld l, a
    ld [hl], d
    ld hl, HeaderManufacturerCode
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_67c4

    ld h, c
    ld l, [hl]
    nop
    ld l, l
    ld h, c
    ld l, e
    ld h, l
    jr nz, @+$75

    ld [hl], l
    ld [hl], d
    ld h, l

jr_0f8_676d:
    jr nz, jr_0f8_67e8

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, h
    db $76
    ld h, l
    ld [hl], e
    nop
    ld [hl], a
    ld l, b
    ld h, l
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_67f6

    ld l, b
    ld h, l
    jr nz, jr_0f8_67da

    ld a, c

jr_0f8_6787:
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    nop
    ld l, c
    ld [hl], e

jr_0f8_678e:
    jr nz, @+$63

    jr nz, jr_0f8_67f8

    ld h, c
    ld l, c
    ld l, h
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, @+$71

    ld [hl], d
    jr nz, jr_0f8_680b

    ld l, a
    ld [hl], h
    ld hl, $0001
    ld b, a
    ld l, a
    jr nz, jr_0f8_681a

    ld l, a
    jr nz, jr_0f8_6811

    ld h, l
    ld l, h
    ld l, h
    ld hl, $4a00
    ld l, c
    ld l, h

jr_0f8_67b1:
    ld l, h
    jr nz, jr_0f8_682b

    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_6823

    ld l, a
    ld l, c
    ld l, [hl]
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_6836

    ld l, a
    ld l, a

jr_0f8_67c4:
    ld hl, $5701

jr_0f8_67c7:
    ld l, b

jr_0f8_67c8:
    ld h, c
    ld [hl], h
    ld hl, HeaderManufacturerCode
    ld b, h
    ld l, a
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_6837

    ld l, a
    ld l, l
    ld h, l
    nop
    ld [hl], h
    ld l, b

jr_0f8_67da:
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_6855

    ld h, c
    ld a, c
    ld hl, $4f00
    ld l, b
    ld hl, $4e20
    ld c, a

jr_0f8_67e8:
    ld l, $2e
    ld l, $21
    ld bc, $6f59
    ld [hl], l
    jr nz, jr_0f8_6855

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h

jr_0f8_67f6:
    nop
    ld l, e

jr_0f8_67f8:
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_686a

    ld h, l
    ld hl, $5701
    ld l, a
    ld [hl], a
    ld hl, $4801
    ld h, c
    ld l, b
    ld hl, $4900

jr_0f8_680b:
    ld [hl], h
    jr nz, jr_0f8_6881

    ld h, l
    ld h, l
    ld l, l

jr_0f8_6811:
    ld [hl], e
    jr nz, jr_0f8_6880

    ld l, c
    ld l, e
    ld h, l
    jr nz, @+$76

    ld l, b

jr_0f8_681a:
    ld l, c
    ld [hl], e
    nop
    ld h, d
    ld [hl], l
    ld l, h
    ld l, h
    ld h, l
    ld [hl], h

jr_0f8_6823:
    ld [hl], b
    ld [hl], d
    ld l, a
    ld l, a
    ld h, [hl]
    jr nz, jr_0f8_6894

    ld h, c

jr_0f8_682b:
    ld h, e
    ld l, e
    ld h, l
    ld [hl], h
    nop
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_68a4

    ld [hl], d
    ld h, l

jr_0f8_6836:
    ld [hl], h

jr_0f8_6837:
    ld [hl], h
    ld a, c
    jr nz, jr_0f8_68ae

    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, [hl]
    ld h, a
    ld l, $01
    ld c, c
    jr nz, jr_0f8_68b8

    ld h, l
    ld h, l
    ld l, $01
    ld c, b
    ld l, a
    ld [hl], a
    jr nz, @+$63

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    nop
    ld b, e
    ld h, c

jr_0f8_6855:
    ld [hl], b
    ld [hl], h
    ld h, c
    ld l, c
    ld l, [hl]
    jr nz, jr_0f8_68b3

    ld h, l
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d
    ccf
    ld bc, $6548
    jr nz, jr_0f8_68d0

    ld [hl], e
    nop
    ld [hl], e

jr_0f8_686a:
    ld l, h
    ld h, l
    ld h, l
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_68ea

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_68ec

    ld l, b
    ld h, l
    nop
    daa
    ld d, l
    ld l, h
    ld [hl], h
    ld l, c

jr_0f8_6880:
    ld l, l

jr_0f8_6881:
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_0f8_68cc

    ld h, c
    ld l, c
    ld l, h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $27
    nop
    ld c, b
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld a, c

jr_0f8_6894:
    jr nz, jr_0f8_690b

    ld [hl], b
    ld hl, $4920
    jr nz, jr_0f8_6913

    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f8_6915

    ld l, a
    nop
    inc b

jr_0f8_68a4:
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_691c

    ld h, [hl]

jr_0f8_68ae:
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ld h, l

jr_0f8_68b3:
    ld hl, $0001
    ld b, l
    ld a, b

jr_0f8_68b8:
    ld h, e
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_0f8_692b

    ld h, l
    jr nz, jr_0f8_6904

    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld hl, $0001
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h

jr_0f8_68cc:
    ccf
    jr nz, @+$54

    ld h, l

jr_0f8_68d0:
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    ld l, $01
    ld c, c
    jr nz, jr_0f8_694d

    ld h, c
    ld [hl], a
    jr nz, jr_0f8_693f

    nop
    ld d, d
    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    jr nz, jr_0f8_694f

    ld l, c

jr_0f8_68ea:
    ld l, h
    ld h, l

jr_0f8_68ec:
    jr nz, jr_0f8_6957

    ld l, [hl]
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_6962

    ld h, c
    ld h, d
    ld l, $20
    ld c, c
    ld [hl], h
    jr nz, jr_0f8_6971

    ld h, c
    ld l, c
    ld h, h
    nop
    ld [hl], h
    ld l, b

jr_0f8_6904:
    ld h, c
    ld [hl], h
    jr nz, @+$63

    jr nz, jr_0f8_6971

    ld [hl], d

jr_0f8_690b:
    ld h, l
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_6974

    ld h, l
    ld h, c
    ld l, h

jr_0f8_6913:
    nop
    inc b

jr_0f8_6915:
    ld l, a
    ld h, [hl]
    jr nz, jr_0f8_698b

    ld h, l
    ld [hl], e
    ld h, l

jr_0f8_691c:
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    jr nz, jr_0f8_6991

    ld l, [hl]
    jr nz, jr_0f8_6999

    ld l, b
    ld h, l
    nop
    inc b
    ld d, h
    ld a, c

jr_0f8_692b:
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f8_69a7

    ld l, c
    ld [hl], d
    ld [hl], l
    ld [hl], e
    jr nz, jr_0f8_699c

    ld a, b
    ld l, c
    ld [hl], e
    ld [hl], h
    ld [hl], e
    nop
    inc b
    ld [hl], d

jr_0f8_693f:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    jr nz, jr_0f8_69ad

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $2e
    ld d, a
    ld h, l
    nop

jr_0f8_694d:
    inc b
    ld [hl], e

jr_0f8_694f:
    ld l, b
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_0f8_69b8

    ld l, h

jr_0f8_6957:
    ld l, a
    ld [hl], a
    jr nz, jr_0f8_69cf

    ld l, b
    ld l, c
    ld [hl], e
    nop
    inc b
    ld [hl], b
    ld l, h

jr_0f8_6962:
    ld h, c
    ld h, e
    ld h, l
    jr nz, jr_0f8_69dc

    ld [hl], b
    ld l, $01
    ld d, a
    ld h, l
    jr nz, jr_0f8_69cf

    ld [hl], d
    ld h, l
    nop

jr_0f8_6971:
    ld h, c
    ld l, h
    ld [hl], d

jr_0f8_6974:
    ld h, l
    ld h, c
    ld h, h
    ld a, c
    jr nz, jr_0f8_69e3

    ld l, [hl]
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_69e8

    ld [hl], h
    nop
    ld l, a
    db $76
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_69f6

    ld [hl], l
    ld [hl], d
    jr nz, jr_0f8_69f3

jr_0f8_698b:
    ld h, l
    ld h, c
    ld h, h
    ld [hl], e
    ld l, $00

jr_0f8_6991:
    ld d, d
    ld h, l
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    inc l

jr_0f8_6999:
    jr nz, jr_0f8_69fe

    ld h, c

jr_0f8_699c:
    ld l, [hl]
    jr nz, jr_0f8_6a18

    ld l, a
    ld [hl], l
    nop
    inc b
    ld h, h
    ld l, a
    jr nz, jr_0f8_6a10

jr_0f8_69a7:
    ld [hl], h
    ccf
    ld bc, $6559
    ld [hl], e

jr_0f8_69ad:
    inc l
    jr nz, jr_0f8_6a03

    ld l, c
    ld [hl], d
    ld l, $00
    ld c, c
    daa
    ld l, h
    ld l, h

jr_0f8_69b8:
    jr nz, jr_0f8_6a2d

    ld h, l
    ld [hl], h
    dec l
    ld l, a
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_0f8_6a23

    nop
    ld [hl], h
    ld [hl], d
    ld l, c
    ld h, a
    ld h, a
    ld h, l
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_6a42

jr_0f8_69cf:
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, l
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_0f8_6a3b

    jr nz, jr_0f8_6a3e

jr_0f8_69dc:
    ld l, a
    ld l, l
    ld h, d
    ld l, $01
    ld c, a
    ld c, e

jr_0f8_69e3:
    ld hl, $4e00
    ld l, a
    ld [hl], a

jr_0f8_69e8:
    jr nz, @+$79

    ld h, l
    jr nz, jr_0f8_6a55

    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_6a53

    nop

jr_0f8_69f3:
    ld h, e
    ld l, b
    ld h, c

jr_0f8_69f6:
    ld l, [hl]
    ld h, e
    ld h, l
    jr nz, jr_0f8_6a6f

    ld l, a
    jr nz, jr_0f8_6a63

jr_0f8_69fe:
    ld [hl], e
    ld h, e
    ld h, c
    ld [hl], b
    ld h, l

jr_0f8_6a03:
    ld hl, $5300
    ld h, l
    ld h, l
    jr nz, jr_0f8_6a83

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_6a7d

    ld [hl], l
    ld [hl], h

jr_0f8_6a10:
    ld [hl], e
    ld l, c
    ld h, h
    ld h, l
    nop
    inc b
    ld [hl], h
    ld l, b

jr_0f8_6a18:
    ld h, l
    jr nz, jr_0f8_6a83

    ld l, a
    ld [hl], l
    ld [hl], e
    ld h, l
    ld hl, $0001
    ld d, h

jr_0f8_6a23:
    ld l, b
    ld h, l
    jr nz, jr_0f8_6a9b

    ld [hl], d
    ld l, c
    ld h, a
    ld h, a
    ld h, l
    ld [hl], d

jr_0f8_6a2d:
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], e
    ld a, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, l
    jr nz, jr_0f8_6aa1

    ld h, c
    ld [hl], e

jr_0f8_6a3b:
    jr nz, jr_0f8_6aab

    ld l, a

jr_0f8_6a3e:
    ld [hl], a
    jr nz, jr_0f8_6aa3

    ld h, l

jr_0f8_6a42:
    ld h, l
    ld l, [hl]
    nop
    ld h, c
    ld h, e
    ld [hl], h
    ld l, c
    db $76
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    ld l, $20
    ld b, c
    ld l, h
    ld l, h

jr_0f8_6a53:
    nop
    inc b

jr_0f8_6a55:
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
    ld [hl], e
    jr nz, jr_0f8_6ac3

    ld l, [hl]

jr_0f8_6a63:
    ld h, h
    nop
    inc b
    ld h, a
    ld [hl], l
    ld h, c
    ld [hl], d
    ld h, h
    ld [hl], e
    jr nz, jr_0f8_6ae1

    ld l, b

jr_0f8_6a6f:
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_0f8_6ae9

    ld h, c
    ld l, e
    ld h, l
    nop
    inc b
    ld h, e
    ld l, a
    db $76

jr_0f8_6a7d:
    ld h, l
    ld [hl], d
    jr nz, @+$6b

    ld l, l
    ld l, l

jr_0f8_6a83:
    ld h, l
    ld h, h
    ld l, c
    ld h, c
    ld [hl], h
    ld h, l
    ld l, h
    ld a, c
    ld l, $00
    inc b
    ld d, l
    ld l, [hl]
    ld l, h
    ld l, a
    ld h, e
    ld l, e
    jr nz, jr_0f8_6af7

    ld l, h
    ld l, h
    jr nz, jr_0f8_6b0c

    ld l, a

jr_0f8_6a9b:
    ld [hl], l
    ld [hl], h
    ld h, l
    ld [hl], e
    nop
    inc b

jr_0f8_6aa1:
    ld h, [hl]
    ld l, a

jr_0f8_6aa3:
    ld [hl], d
    jr nz, jr_0f8_6b0b

    db $76
    ld h, c
    ld h, e
    ld [hl], l
    ld h, c

jr_0f8_6aab:
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $00
    inc b
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_6b22

    ld [hl], e
    jr nz, @+$76

    ld h, l
    ld l, [hl]
    jr nz, jr_0f8_6b2d

    ld l, c
    ld l, [hl]
    ld [hl], l

jr_0f8_6ac3:
    ld [hl], h
    ld h, l
    ld [hl], e
    nop
    inc b
    ld h, d
    ld h, l
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_6b35

    ld a, b
    ld [hl], b
    ld l, h
    ld l, a
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $01
    ld c, d
    ld l, c
    ld l, h
    ld l, h
    ld hl, $5300

jr_0f8_6ae1:
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_0f8_6b4d

    ld l, a
    ld [hl], d

jr_0f8_6ae9:
    jr nz, @+$6f

    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_6b6d

    ld h, c

jr_0f8_6af7:
    ld l, c
    ld [hl], h
    ld l, $21
    ld bc, $6843
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, $2e
    ld bc, $2049
    ld l, e
    ld l, [hl]
    ld h, l
    ld [hl], a
    nop

jr_0f8_6b0b:
    ld c, c

jr_0f8_6b0c:
    jr nz, jr_0f8_6b71

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_0f8_6b88

    ld [hl], d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_6b93

    ld l, a
    ld [hl], l
    ld l, $01
    ld c, h
    ld h, l
    ld [hl], h
    daa

jr_0f8_6b22:
    ld [hl], e
    jr nz, jr_0f8_6b8c

    ld l, a
    ld hl, $5400
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_0f8_6b2d:
    daa
    ld [hl], e
    jr nz, @+$70

    ld l, a
    jr nz, jr_0f8_6ba2

    ld h, l

jr_0f8_6b35:
    ld h, l
    ld h, h
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_6baf

    ld [hl], h
    ld h, c
    ld a, c
    ld l, $01
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_6bb0

    ld [hl], e
    nop
    ld b, d
    ld [hl], d
    ld h, c
    ld h, h

jr_0f8_6b4d:
    ld hl, $4920
    jr nz, jr_0f8_6bba

    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_6bb8

    jr nz, jr_0f8_6bbf

    ld [hl], l
    ld h, l
    ld l, h
    nop
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], d
    ld [hl], h
    ld h, c
    ld h, a
    ld h, l
    ld l, $2e
    ld c, a
    ld c, e
    ld l, $20
    ld d, h
    ld l, b

jr_0f8_6b6d:
    ld l, c
    ld [hl], e
    nop
    ld l, c

jr_0f8_6b71:
    ld [hl], e
    jr nz, jr_0f8_6be8

    ld l, b
    ld h, l
    jr nz, @+$6e

    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_6bf1

    ld [hl], d
    ld a, c
    ld hl, $4920
    ld h, [hl]
    nop
    inc b
    ld [hl], e
    ld l, a
    ld l, l

jr_0f8_6b88:
    ld h, l
    ld h, d
    ld l, a
    ld h, h

jr_0f8_6b8c:
    ld a, c
    daa
    ld [hl], e
    jr nz, @+$63

    ld l, h
    ld l, c

jr_0f8_6b93:
    db $76
    ld h, l
    inc l
    nop
    inc b
    ld [hl], b
    ld l, h
    ld h, l
    ld h, c
    ld [hl], e
    ld h, l
    jr nz, jr_0f8_6c13

    ld h, l
    ld l, [hl]

jr_0f8_6ba2:
    ld h, h
    jr nz, jr_0f8_6c06

    jr nz, jr_0f8_6c1a

    ld l, c
    ld h, a
    ld l, [hl]
    ld hl, $0400
    ld d, h
    ld l, b

jr_0f8_6baf:
    ld l, c

jr_0f8_6bb0:
    ld [hl], e
    jr nz, jr_0f8_6c1c

    ld [hl], e
    jr nz, @+$76

    ld l, b
    ld h, l

jr_0f8_6bb8:
    jr nz, jr_0f8_6c26

jr_0f8_6bba:
    ld h, c
    ld [hl], e
    ld [hl], h
    ld l, $2e

jr_0f8_6bbf:
    ld bc, $2049
    ld l, l
    ld h, c
    ld h, h
    ld h, l
    jr nz, @+$6b

    ld [hl], h
    ld hl, $4900
    jr nz, @+$75

    ld h, l
    ld [hl], h
    dec l
    ld l, a
    ld h, [hl]
    ld h, [hl]
    jr nz, jr_0f8_6c4a

    ld l, b
    ld h, l
    nop
    ld [hl], h
    ld [hl], d
    ld l, c
    ld h, a
    ld h, a
    ld h, l
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_6c58

    ld a, c
    ld [hl], e
    ld [hl], h

jr_0f8_6be8:
    ld h, l
    ld l, l
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_6c63

    ld l, b
    ld h, l

jr_0f8_6bf1:
    jr nz, @+$64

    ld l, a
    ld l, l
    ld h, d
    ld hl, $4701
    ld [hl], d
    ld h, l
    ld h, c
    ld [hl], h
    ld hl, $5200
    ld h, l
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c

jr_0f8_6c06:
    ld l, $20
    ld b, d
    ld [hl], d
    ld h, c
    ld h, h
    jr nz, jr_0f8_6c83

    ld [hl], b
    jr nz, jr_0f8_6c7a

    ld l, [hl]
    nop

jr_0f8_6c13:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f8_6c80

    ld h, l
    ld l, h

jr_0f8_6c1a:
    ld l, c
    ld h, e

jr_0f8_6c1c:
    ld l, a
    ld [hl], b
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, $2e
    ld bc, $6f4c

jr_0f8_6c26:
    ld l, a
    ld l, e
    ld hl, $4100
    ld [hl], h
    jr nz, @+$63

    ld l, h
    ld l, h
    jr nz, jr_0f8_6ca6

    ld l, b
    ld l, a
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
    ld hl, $4c01
    ld h, l
    ld [hl], h
    jr nz, jr_0f8_6cb3

    ld h, l
    jr nz, @+$76

    ld h, c

jr_0f8_6c4a:
    ld l, e
    ld h, l
    jr nz, jr_0f8_6cb1

    ld h, c
    ld [hl], d
    ld h, l
    nop
    ld l, a
    ld h, [hl]
    jr nz, jr_0f8_6cca

    ld l, b
    ld h, l

jr_0f8_6c58:
    ld l, l
    ld hl, $4301
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    inc l
    nop
    ld h, a

jr_0f8_6c63:
    ld h, l
    ld [hl], h
    jr nz, @+$6b

    ld l, [hl]
    jr nz, jr_0f8_6ccd

    ld l, a
    ld l, [hl]
    ld [hl], h
    ld h, c
    ld h, e
    ld [hl], h
    jr nz, jr_0f8_6ce9

    ld l, c
    ld [hl], h
    ld l, b
    nop
    ld b, d
    ld [hl], d
    ld h, c
    ld h, h

jr_0f8_6c7a:
    jr nz, jr_0f8_6cee

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h

jr_0f8_6c80:
    jr nz, jr_0f8_6ce3

    ld [hl], a

jr_0f8_6c83:
    ld h, c
    ld a, c
    ld hl, $4f01
    ld c, e
    ld hl, $4201
    ld [hl], l
    ld [hl], h
    ld l, $2e
    ld bc, $6843
    ld [hl], d
    ld l, c
    ld [hl], e
    inc l
    nop
    ld [hl], l
    ld [hl], e
    ld h, l
    jr nz, jr_0f8_6d06

    ld [hl], h
    ld hl, $4420
    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a

jr_0f8_6ca6:
    ld a, c
    nop
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, jr_0f8_6d1a

    ld l, a
    ld l, [hl]
    ld [hl], e
    ld [hl], h

jr_0f8_6cb1:
    ld h, l
    ld [hl], d

jr_0f8_6cb3:
    ld [hl], e
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_6d24

    ld [hl], h
    ld hl, $4a01
    ld l, c
    ld l, h
    ld l, h
    ld hl, $5900
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_0f8_6cca:
    jr nz, jr_0f8_6d34

    ld h, l

jr_0f8_6ccd:
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_6d45

    ld l, a
    ld l, a
    ld hl, $5901
    ld h, l
    ld [hl], e
    inc l
    nop
    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$6a

    ld h, l

jr_0f8_6ce3:
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_6d5b

    ld l, a
    ld l, a

jr_0f8_6ce9:
    ld hl, $4c01
    ld l, a
    ld l, a

jr_0f8_6cee:
    ld l, e
    inc l
    nop
    ld c, c
    jr nz, @+$6e

    ld l, a
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_6d66

    ld a, c
    jr nz, jr_0f8_6d73

    ld h, c
    ld a, c
    ld l, $01
    nop
    ld c, h
    ld h, l
    ld [hl], h
    daa
    ld [hl], e

jr_0f8_6d06:
    jr nz, @+$69

    ld h, l
    ld [hl], h
    jr nz, jr_0f8_6d73

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $01
    ld c, a
    ld h, [hl]
    jr nz, @+$65

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e

jr_0f8_6d1a:
    ld h, l
    ld hl, $4400
    ld h, c
    ld l, l
    ld l, [hl]
    jr nz, jr_0f8_6d8c

    ld [hl], h

jr_0f8_6d24:
    inc l
    jr nz, jr_0f8_6d9e

    ld h, l
    jr nz, jr_0f8_6d8b

    ld [hl], d
    ld h, l
    jr nz, jr_0f8_6d97

    ld l, [hl]
    nop
    ld [hl], c
    ld [hl], l
    ld l, c
    ld [hl], h

jr_0f8_6d34:
    ld h, l
    jr nz, jr_0f8_6d98

    jr nz, jr_0f8_6da9

    ld [hl], d
    ld h, l
    ld h, h
    ld l, c
    ld h, e
    ld h, c
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    inc l
    nop

jr_0f8_6d45:
    ld c, d
    ld l, c
    ld l, h
    ld l, h
    ld hl, $4901
    jr nz, jr_0f8_6db9

    ld l, [hl]
    ld l, a
    ld [hl], a
    nop
    ld b, e
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld l, $20
    ld b, c
    ld l, [hl]

jr_0f8_6d5b:
    ld a, c
    ld [hl], a
    ld h, c
    ld a, c
    jr nz, jr_0f8_6daa

    jr nz, jr_0f8_6dcb

    ld h, c
    db $76
    ld h, l

jr_0f8_6d66:
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_6dda

    ld [hl], b
    ld h, l
    ld l, [hl]
    jr nz, jr_0f8_6de4

    ld l, b
    ld l, c
    ld [hl], e

jr_0f8_6d73:
    jr nz, jr_0f8_6de7

    ld l, a
    ld l, a
    ld l, l
    ld l, $01
    ld c, a
    ld l, b
    inc l
    jr nz, jr_0f8_6de8

    ld [hl], h
    nop
    ld h, h
    ld l, a
    ld h, l
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_6e01

    ld l, a

jr_0f8_6d8b:
    ld [hl], d

jr_0f8_6d8c:
    ld l, e
    ld l, $20
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    nop
    ld b, e
    ld l, b

jr_0f8_6d97:
    ld [hl], d

jr_0f8_6d98:
    ld l, c
    ld [hl], e
    inc l
    jr nz, jr_0f8_6dff

    ld h, l

jr_0f8_6d9e:
    jr nz, @+$75

    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_6e19

    ld l, a
    nop
    ld h, e
    ld l, a

jr_0f8_6da9:
    ld l, l

jr_0f8_6daa:
    ld h, l
    jr nz, jr_0f8_6e0f

    ld h, c
    ld h, e
    ld l, e
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_6e1e

    ld h, l
    ld l, h
    ld [hl], b

jr_0f8_6db9:
    nop
    inc b
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_6e33

    ld l, a
    ld l, a
    ld l, [hl]
    ld hl, $5320
    ld l, a
    inc l
    jr nz, @+$79

    ld l, c

jr_0f8_6dcb:
    ld l, h
    ld l, h
    nop
    inc b
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_6e3e

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_6e50

    ld h, c

jr_0f8_6dda:
    ld l, c
    ld [hl], h
    jr nz, jr_0f8_6e46

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $5401

jr_0f8_6de4:
    ld l, b
    ld h, c
    ld l, [hl]

jr_0f8_6de7:
    ld l, e

jr_0f8_6de8:
    ld [hl], e
    ld l, $00
    ld c, c
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_6e53

    ld h, l
    jr nz, jr_0f8_6e5c

    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld [hl], a
    ld h, c
    ld l, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a

jr_0f8_6dff:
    jr nz, jr_0f8_6e67

jr_0f8_6e01:
    ld l, a
    ld [hl], d
    jr nz, jr_0f8_6e7e

    ld l, a
    ld [hl], l
    ld l, $01
    ld d, a
    ld h, l
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d

jr_0f8_6e0f:
    ld l, $2e
    ld bc, $6f59
    ld [hl], l
    jr nz, jr_0f8_6e7b

    ld l, c
    ld h, h

jr_0f8_6e19:
    jr nz, @+$63

    nop
    ld h, [hl]
    ld l, c

jr_0f8_6e1e:
    ld l, [hl]
    ld h, l
    jr nz, jr_0f8_6e8c

    ld l, a
    ld h, d
    ld l, $20
    ld b, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $01
    ld c, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_6e94

jr_0f8_6e33:
    ld [hl], e
    nop
    ld c, c
    jr nz, jr_0f8_6eac

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h

jr_0f8_6e3e:
    ld l, $2e
    ld bc, $2049
    ld [hl], h
    ld l, b
    ld l, c

jr_0f8_6e46:
    ld l, [hl]
    ld l, e
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_6ec1

    ld l, b
    ld l, a

jr_0f8_6e50:
    ld [hl], l
    ld l, h
    ld h, h

jr_0f8_6e53:
    jr nz, jr_0f8_6ec8

    ld [hl], h
    ld h, c
    ld a, c
    jr nz, jr_0f8_6ebb

    ld [hl], a
    ld h, c

jr_0f8_6e5c:
    ld a, c
    nop
    ld h, [hl]
    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0f8_6ea6

    ld h, c
    ld [hl], d
    ld [hl], d

jr_0f8_6e67:
    ld a, c
    inc l
    jr nz, jr_0f8_6eb5

    ld l, c
    ld l, h
    ld l, h
    ld l, $20
    ld c, c
    nop
    ld l, b
    ld h, l
    ld h, c
    ld [hl], d
    jr nz, @+$76

    ld l, b
    ld h, c
    ld [hl], h

jr_0f8_6e7b:
    jr nz, jr_0f8_6ee5

    ld l, c

jr_0f8_6e7e:
    ld [hl], e
    jr nz, jr_0f8_6ef8

    ld l, c
    ld h, [hl]
    ld h, l
    nop
    inc b
    ld h, c
    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_6eff

    ld [hl], a

jr_0f8_6e8c:
    ld l, a
    jr nz, jr_0f8_6ef3

    ld h, c
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h

jr_0f8_6e94:
    ld h, l
    ld [hl], d
    ld [hl], e
    nop
    inc b
    ld [hl], a
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_6f01

    ld h, l
    jr nz, jr_0f8_6f0b

    ld l, [hl]
    jr nz, jr_0f8_6f09

    ld h, c

jr_0f8_6ea6:
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_6f15

jr_0f8_6eac:
    ld h, [hl]
    nop
    inc b
    ld l, b
    ld h, l
    jr nz, jr_0f8_6f17

    ld l, a
    ld h, l

jr_0f8_6eb5:
    ld [hl], e
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_6f1f

jr_0f8_6ebb:
    ld l, a
    nop
    inc b
    ld h, l
    db $76
    ld h, l

jr_0f8_6ec1:
    ld [hl], d
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_0f8_6ec8:
    jr nz, jr_0f8_6f13

    jr nz, jr_0f8_6f40

    ld h, l
    ld l, h
    ld l, h
    nop
    inc b
    ld l, b
    ld l, c
    ld l, l
    jr nz, jr_0f8_6f4a

    ld l, a
    ld l, $01
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_6f3f

    ld [hl], d
    ld h, l
    nop
    ld [hl], e
    ld l, a
    jr nz, jr_0f8_6f48

jr_0f8_6ee5:
    ld [hl], d
    ld [hl], l
    ld h, l
    ld l, h
    ld l, $2e
    ld bc, $6557
    ld l, h
    ld l, h
    jr nz, jr_0f8_6f6b

    ld l, a

jr_0f8_6ef3:
    ld [hl], l
    nop
    ld h, h
    ld l, a
    ld l, [hl]

jr_0f8_6ef8:
    daa
    ld [hl], h
    jr nz, jr_0f8_6f64

    ld h, c
    db $76
    ld h, l

jr_0f8_6eff:
    jr nz, @+$76

jr_0f8_6f01:
    ld l, a
    jr nz, jr_0f8_6f7b

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    nop

jr_0f8_6f09:
    ld h, c
    ld h, d

jr_0f8_6f0b:
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_6f71

    ld l, [hl]
    ld a, c
    ld [hl], h

jr_0f8_6f13:
    ld l, b
    ld l, c

jr_0f8_6f15:
    ld l, [hl]
    ld h, a

jr_0f8_6f17:
    nop
    ld h, d
    ld h, l
    ld h, e
    ld h, c
    ld [hl], l
    ld [hl], e
    ld h, l

jr_0f8_6f1f:
    jr nz, jr_0f8_6f9a

    ld l, a
    ld [hl], l
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_6f8a

    ld h, l
    nop
    inc b
    ld h, [hl]
    ld [hl], d
    ld h, l
    ld h, l
    jr nz, jr_0f8_6f97

    ld [hl], d
    ld l, a
    ld l, l
    jr nz, jr_0f8_6faa

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_6fb2

    ld l, a
    ld [hl], d
    ld l, h
    ld h, h

jr_0f8_6f3f:
    nop

jr_0f8_6f40:
    inc b
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    jr nz, jr_0f8_6fba

    ld l, a

jr_0f8_6f48:
    ld l, a
    ld l, [hl]

jr_0f8_6f4a:
    inc l
    jr nz, jr_0f8_6f97

    ld l, c
    ld l, h
    ld l, h
    ld l, $01
    ld d, a
    ld l, b
    ld a, c
    jr nz, jr_0f8_6fbb

    ld l, a
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_6fc6

    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_6fd7

    ld l, a

jr_0f8_6f64:
    jr nz, jr_0f8_6fca

    ld h, l
    ld [hl], e
    ld [hl], h
    ld [hl], d
    ld l, a

jr_0f8_6f6b:
    ld a, c
    nop
    ld d, e
    ld d, h
    ld b, c
    ld d, d

jr_0f8_6f71:
    ld d, e
    ccf
    ld bc, $6854
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    nop

jr_0f8_6f7b:
    ld d, l
    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    daa
    ld [hl], e
    nop
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld h, l

jr_0f8_6f8a:
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, a
    ld l, [hl]
    ld l, $20
    ld d, h
    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld l, h

jr_0f8_6f97:
    ld h, c
    ld h, d
    ld l, a

jr_0f8_6f9a:
    ld [hl], d
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    jr nz, jr_0f8_700a

    ld h, c
    ld [hl], e
    jr nz, jr_0f8_7008

    ld h, l
    ld h, l
    ld l, [hl]
    nop

jr_0f8_6faa:
    inc b
    ld h, l
    ld l, [hl]
    ld h, a
    ld h, c
    ld h, a
    ld l, c
    ld l, [hl]

jr_0f8_6fb2:
    ld h, a
    jr nz, jr_0f8_701e

    ld l, [hl]
    nop
    inc b
    ld h, h
    ld h, c

jr_0f8_6fba:
    ld l, [hl]

jr_0f8_6fbb:
    ld h, a
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    nop
    inc b
    ld h, l
    ld a, b
    ld [hl], b

jr_0f8_6fc6:
    ld h, l
    ld [hl], d
    ld l, c
    ld l, l

jr_0f8_6fca:
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld [hl], e
    jr nz, jr_0f8_7031

    ld l, [hl]
    ld h, h
    nop
    inc b
    ld [hl], d
    ld h, l
    ld h, e

jr_0f8_6fd7:
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, h
    ld a, c
    jr nz, jr_0f8_703f

    ld l, [hl]
    jr nz, jr_0f8_7042

    ld h, e
    ld h, e
    ld l, c
    ld h, h
    ld h, l
    ld l, [hl]
    ld [hl], h
    nop
    inc b
    ld l, a
    ld h, e
    ld h, e
    ld [hl], l
    ld [hl], d
    ld [hl], d
    ld h, l
    ld h, h
    ld l, $20
    ld b, c
    ld l, [hl]
    ld a, c
    ld [hl], a
    ld h, c
    ld a, c
    inc l
    nop
    inc b
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_7067

    ld l, c
    ld [hl], e
    ld h, c
    ld [hl], e
    ld [hl], h

jr_0f8_7008:
    ld h, l
    ld [hl], d

jr_0f8_700a:
    jr nz, jr_0f8_706f

    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld l, a
    ld [hl], h
    nop
    inc b
    ld h, d
    ld h, l
    jr nz, jr_0f8_7084

    ld h, c
    ld h, h
    ld h, l
    jr nz, jr_0f8_708c

    ld [hl], l
    ld h, d

jr_0f8_701e:
    ld l, h
    ld l, c
    ld h, e
    ld l, $01
    ld b, c
    ld l, b
    inc l
    jr nz, jr_0f8_709c

    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    nop
    ld [hl], a
    ld l, b
    ld a, c

jr_0f8_7031:
    jr nz, jr_0f8_709b

    ld h, c
    db $76
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_708d

    ld d, h
    ld b, c
    ld d, d
    ld d, e
    nop

jr_0f8_703f:
    ld l, [hl]
    ld l, a
    ld [hl], e

jr_0f8_7042:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_70a8

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_70b6

    ld [hl], e
    jr nz, jr_0f8_70c3

    ld l, a
    nop
    ld l, c
    ld l, [hl]
    ld h, e
    ld l, a
    ld l, [hl]
    db $76
    ld h, l
    ld l, [hl]
    ld l, c
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $20
    ld d, e
    ld l, a
    nop
    inc b
    ld a, c
    ld l, a
    ld [hl], l

jr_0f8_7067:
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_70cd

    jr nz, jr_0f8_70e1

    ld l, h

jr_0f8_706f:
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_70e3

    ld h, [hl]
    nop
    inc b
    ld d, l
    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    jr nz, jr_0f8_70ef

    ld l, a
    ld [hl], a
    inc l

jr_0f8_7084:
    jr nz, jr_0f8_70e7

    ld l, h
    ld l, a
    ld l, [hl]
    ld h, a
    nop
    inc b

jr_0f8_708c:
    ld [hl], a

jr_0f8_708d:
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_7106

    ld l, b
    ld h, l
    ld [hl], e
    ld h, l
    jr nz, jr_0f8_710e

    ld l, c
    ld [hl], d
    ld [hl], l

jr_0f8_709b:
    ld [hl], e

jr_0f8_709c:
    nop
    inc b
    ld l, l
    ld l, a
    ld l, [hl]
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, $01

jr_0f8_70a8:
    ld c, c
    jr nz, jr_0f8_711f

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_7122

    ld l, c

jr_0f8_70b6:
    ld [hl], e
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
    jr nz, jr_0f8_7130

jr_0f8_70c3:
    ld h, l
    nop
    ld c, d
    ld l, c
    ld l, h
    ld l, h
    ld l, $20
    ld d, h
    ld l, a

jr_0f8_70cd:
    jr nz, jr_0f8_713c

    ld h, l
    jr nz, jr_0f8_7146

    ld l, b
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
    jr nz, jr_0f8_7158

    ld l, a
    ld [hl], l

jr_0f8_70e1:
    nop
    inc b

jr_0f8_70e3:
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h

jr_0f8_70e7:
    ld l, c
    ld l, a
    ld l, [hl]
    ld h, l
    ld h, h
    jr nz, jr_0f8_715b

    ld h, l

jr_0f8_70ef:
    ld h, c
    ld l, [hl]
    nop
    inc b
    ld l, [hl]
    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    ld l, $20
    ld c, c
    daa
    ld l, l
    jr nz, jr_0f8_7168

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    nop

jr_0f8_7106:
    inc b
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_716d

    ld [hl], l
    ld [hl], d
    ld l, [hl]

jr_0f8_710e:
    jr nz, jr_0f8_7171

    ld l, h
    ld l, h
    jr nz, jr_0f8_7183

    ld h, [hl]
    jr nz, jr_0f8_718b

    ld l, b
    ld h, l
    ld l, l
    nop
    inc b
    ld [hl], h
    ld l, a
    ld h, a

jr_0f8_711f:
    ld h, l
    ld [hl], h
    ld l, b

jr_0f8_7122:
    ld h, l
    ld [hl], d
    jr nz, @+$79

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_719f

    ld l, b
    ld l, c
    ld [hl], e
    nop
    inc b

jr_0f8_7130:
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld [hl], d
    ld h, l
    jr nz, @+$6e

    ld h, c
    ld h, d
    ld l, a
    ld [hl], d

jr_0f8_713c:
    ld h, c
    ld [hl], h
    ld l, a
    ld [hl], d
    ld a, c
    ld l, $20
    ld c, c
    nop
    inc b

jr_0f8_7146:
    ld l, l
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_71af

    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    jr nz, @+$6f

    ld a, c
    nop
    inc b

jr_0f8_7158:
    ld l, l
    ld l, c
    ld [hl], e

jr_0f8_715b:
    ld [hl], e
    ld l, c
    ld l, a
    ld l, [hl]
    jr nz, @+$63

    ld [hl], e
    jr nz, jr_0f8_71d3

    ld [hl], d
    ld h, h
    ld h, l
    ld [hl], d

jr_0f8_7168:
    ld h, l
    ld h, h
    nop
    inc b
    ld h, d

jr_0f8_716d:
    ld a, c
    jr nz, jr_0f8_71c5

    ld l, l

jr_0f8_7171:
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    ld l, $01
    ld b, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l
    jr nz, jr_0f8_71e8

    ld l, a
    nop

jr_0f8_7183:
    ld [hl], l
    ld [hl], b
    jr nz, jr_0f8_71f6

    ld l, [hl]
    jr nz, jr_0f8_71fe

    ld l, b

jr_0f8_718b:
    ld h, l
    jr nz, jr_0f8_71f5

    ld [hl], d
    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_71f6

    ld l, [hl]
    ld h, h
    nop
    ld [hl], a
    ld h, c
    ld l, c
    ld [hl], h
    jr nz, jr_0f8_7212

    ld l, b

jr_0f8_719f:
    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $4201
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    daa
    ld [hl], e
    nop
    ld [hl], e
    ld [hl], l
    ld h, e

jr_0f8_71af:
    ld l, b
    jr nz, jr_0f8_7213

    jr nz, jr_0f8_721a

    ld l, a
    ld l, a
    ld l, h
    ld hl, $4820
    ld h, l
    daa
    ld l, h
    ld l, h
    nop
    ld h, d
    ld h, l
    jr nz, jr_0f8_7238

    ld l, [hl]
    ld h, h

jr_0f8_71c5:
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_723d

    ld l, b
    ld h, l
    nop
    ld h, e
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h

jr_0f8_71d3:
    jr nz, jr_0f8_7244

    ld h, [hl]
    jr nz, jr_0f8_722d

    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    nop
    inc b
    ld h, [hl]
    ld l, a
    ld [hl], d
    ld h, l
    db $76
    ld h, l
    ld [hl], d

jr_0f8_71e8:
    ld l, $01
    ld c, b
    ld l, a
    ld [hl], a
    jr nz, jr_0f8_7252

    ld l, a
    ld l, l
    ld h, l
    nop
    ld h, d
    ld l, a

jr_0f8_71f5:
    ld [hl], h

jr_0f8_71f6:
    ld l, b
    jr nz, jr_0f8_724e

    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h

jr_0f8_71fe:
    ld l, h
    ld h, c
    jr nz, jr_0f8_7263

    ld l, [hl]
    ld h, h
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_726d

    ld h, c
    ld l, [hl]
    jr nz, jr_0f8_7277

    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, l

jr_0f8_7212:
    ld l, c

jr_0f8_7213:
    ld h, h
    ld h, c
    ld [hl], h
    ld h, l
    nop
    ld l, b
    ld l, c

jr_0f8_721a:
    ld l, l
    jr nz, jr_0f8_727f

    ld a, c
    jr nz, @+$76

    ld h, c
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_728f

    ld l, c
    ld [hl], e
    nop
    inc b
    ld h, [hl]
    ld h, c

jr_0f8_722d:
    ld l, l
    ld l, c
    ld l, h
    ld a, c
    jr nz, @+$63

    ld [hl], e
    jr nz, jr_0f8_729e

    ld l, a
    ld [hl], e

jr_0f8_7238:
    ld [hl], h
    ld h, c
    ld h, a
    ld h, l
    ld [hl], e

jr_0f8_723d:
    ccf
    ld bc, $5504
    ld l, l
    ld h, d
    ld [hl], d

jr_0f8_7244:
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    ccf
    jr nz, jr_0f8_72a2

    ld h, l
    ld l, h
    ld l, h

jr_0f8_724e:
    jr nz, @+$4b

    nop
    inc b

jr_0f8_7252:
    ld l, c
    ld l, [hl]
    ld [hl], h
    ld l, c
    ld l, l
    ld l, c
    ld h, h
    ld h, c
    ld [hl], h
    ld h, l
    ld h, h
    jr nz, jr_0f8_72c7

    ld l, c
    ld l, l
    jr nz, jr_0f8_72c5

jr_0f8_7263:
    ld [hl], l
    ld [hl], h
    nop
    inc b
    ld l, c
    ld [hl], h
    jr nz, @+$6a

    ld h, c
    ld h, h

jr_0f8_726d:
    jr nz, jr_0f8_72dd

    ld l, a
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_72eb

jr_0f8_7277:
    ld l, a
    nop
    inc b
    ld h, h
    ld l, a
    jr nz, jr_0f8_72f5

    ld l, c

jr_0f8_727f:
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_72d8

    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    ld l, $20
    ld c, c
    nop
    inc b

jr_0f8_728f:
    ld l, d
    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_730a

    ld [hl], e
    ld h, l
    ld h, h
    jr nz, jr_0f8_7302

    ld l, c
    ld l, l
    jr nz, jr_0f8_7304

jr_0f8_729e:
    ld l, a
    ld [hl], d
    nop
    inc b

jr_0f8_72a2:
    ld l, l
    ld a, c
    jr nz, jr_0f8_7316

    ld h, l
    ld [hl], d
    ld [hl], e
    ld l, a
    ld l, [hl]
    ld h, c
    ld l, h
    nop
    inc b
    ld [hl], b
    ld [hl], l
    ld [hl], d
    ld [hl], b
    ld l, a
    ld [hl], e
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_0f8_732e

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    jr nz, jr_0f8_732a

    ld [hl], h
    nop
    inc b
    ld [hl], e

jr_0f8_72c5:
    ld h, l
    ld h, l

jr_0f8_72c7:
    ld l, l
    ld [hl], e
    jr nz, jr_0f8_732d

    ld l, a
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_7349

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_7335

    ld l, [hl]
    ld h, h
    nop
    inc b

jr_0f8_72d8:
    ld b, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c

jr_0f8_72dd:
    jr nz, jr_0f8_7352

    ld h, l
    ld h, l
    ld l, l
    jr nz, jr_0f8_7358

    ld l, a
    jr nz, @+$76

    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e

jr_0f8_72eb:
    nop
    inc b
    ld c, c
    jr nz, @+$79

    ld h, c
    ld [hl], e
    jr nz, jr_0f8_735a

    ld l, a

jr_0f8_72f5:
    ld l, h
    ld l, h
    ld l, a
    ld [hl], a
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    inc b
    ld l, a
    ld [hl], d
    ld h, h
    ld h, l

jr_0f8_7302:
    ld [hl], d
    ld [hl], e

jr_0f8_7304:
    jr nz, jr_0f8_736c

    ld [hl], d
    ld l, a
    ld l, l
    nop

jr_0f8_730a:
    inc b
    ld d, l
    ld l, l
    ld h, d
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    ld l, $01
    ld b, c

jr_0f8_7316:
    ld l, b
    ld hl, $5320
    ld l, a
    nop
    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_7394

    ld l, h
    ld h, c
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]

jr_0f8_732a:
    ld h, a
    nop
    ld [hl], e

jr_0f8_732d:
    ld l, a

jr_0f8_732e:
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld h, a

jr_0f8_7335:
    inc l
    jr nz, jr_0f8_73b1

    ld h, l
    ld [hl], e
    ccf
    ld bc, $6649
    jr nz, jr_0f8_73b9

    ld l, a
    ld [hl], l
    nop
    ld [hl], e
    ld [hl], l
    ld h, e
    ld h, e
    ld h, l
    ld h, l

jr_0f8_7349:
    ld h, h
    ld h, l
    ld h, h
    jr nz, jr_0f8_73b7

    ld l, [hl]
    nop
    ld h, h
    ld h, l

jr_0f8_7352:
    db $76
    ld h, l
    ld l, h
    ld l, a
    ld [hl], b
    ld l, c

jr_0f8_7358:
    ld l, [hl]
    ld h, a

jr_0f8_735a:
    jr nz, jr_0f8_73d0

    ld l, b
    ld h, l
    nop
    ld [hl], a
    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    daa
    ld [hl], e
    jr nz, jr_0f8_73d5

    ld l, a
    ld [hl], e
    ld [hl], h
    nop

jr_0f8_736c:
    inc b
    ld [hl], b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, jr_0f8_73d9

    ld l, c
    ld l, a
    ld l, h
    ld l, a
    ld h, a
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    nop
    inc b
    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], b
    ld l, a
    ld l, [hl]
    inc l
    jr nz, jr_0f8_7402

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$79

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h

jr_0f8_7394:
    nop
    inc b
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_73ff

    ld l, a
    ccf
    jr nz, @+$59

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_740d

    ld h, [hl]
    jr nz, jr_0f8_7420

    ld l, a
    ld [hl], l
    nop
    inc b
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_741a

jr_0f8_73b1:
    ld l, [hl]
    jr nz, @+$65

    ld l, b
    ld h, c
    ld [hl], d

jr_0f8_73b7:
    ld h, a
    ld h, l

jr_0f8_73b9:
    ccf
    ld bc, $6f59
    ld [hl], l
    jr nz, jr_0f8_742d

    ld [hl], l
    ld [hl], e
    ld [hl], h
    nop
    ld [hl], e
    ld [hl], h
    ld l, a
    ld [hl], b
    jr nz, jr_0f8_743e

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_743d

    ld l, a

jr_0f8_73d0:
    ld [hl], a
    ld hl, $5301
    ld l, a

jr_0f8_73d5:
    inc l
    jr nz, jr_0f8_7451

    ld l, a

jr_0f8_73d9:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    nop
    ld h, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_7459

    ld l, a
    jr nz, jr_0f8_745b

    ld [hl], h
    ld h, l
    ld h, c
    ld l, h
    jr nz, @+$63

    ld l, h
    ld l, h
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$74

    ld h, l
    ld [hl], e
    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    ccf

jr_0f8_73ff:
    ld bc, $6142

jr_0f8_7402:
    ld [hl], d
    ld [hl], d
    ld a, c
    ld hl, $0001
    ld d, e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c

jr_0f8_740d:
    inc l
    jr nz, jr_0f8_745a

    ld l, c
    ld l, h
    ld l, h
    ld l, $2e
    ld bc, $6855
    ld l, $2e

jr_0f8_741a:
    ld l, $49
    jr nz, jr_0f8_7495

    ld h, c
    ld [hl], e

jr_0f8_7420:
    nop
    ld l, h
    ld l, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_74a0

    ld l, a

jr_0f8_742d:
    jr nz, jr_0f8_74a6

    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, @+$63

    ld l, [hl]
    ld h, h
    jr nz, jr_0f8_7493

    ld h, l

jr_0f8_743d:
    ld [hl], e

jr_0f8_743e:
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_74ba

    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld [hl], h
    ld h, c
    ld l, h
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_74b1

    ld h, d

jr_0f8_7451:
    ld l, a
    ld [hl], l
    ld [hl], h
    ld l, $20
    ld c, c
    nop
    inc b

jr_0f8_7459:
    ld [hl], a

jr_0f8_745a:
    ld l, c

jr_0f8_745b:
    ld [hl], e
    ld l, b
    jr nz, jr_0f8_74a8

    jr nz, jr_0f8_74d3

    ld h, l
    ld h, c
    ld l, h
    ld l, c
    ld a, d
    ld h, l
    ld h, h
    jr nz, jr_0f8_74d3

    ld [hl], h
    nop
    inc b
    ld h, l
    ld h, c
    ld [hl], d
    ld l, h
    ld l, c
    ld h, l
    ld [hl], d
    ld l, $20
    ld c, c
    jr nz, jr_0f8_74ed

    ld l, b
    ld l, a
    ld [hl], l
    ld h, a
    ld l, b
    ld [hl], h
    nop
    inc b
    ld l, c
    ld [hl], h
    jr nz, jr_0f8_74f2

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_74f2

    ld h, c
    db $76
    ld h, l
    nop
    inc b
    ld [hl], e
    ld l, a
    ld l, l
    ld h, l

jr_0f8_7493:
    ld [hl], h
    ld l, b

jr_0f8_7495:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_750e

    ld l, a
    jr nz, jr_0f8_7501

    ld l, a
    jr nz, jr_0f8_7517

jr_0f8_74a0:
    ld l, c
    ld [hl], h
    ld l, b
    nop
    inc b
    ld d, l

jr_0f8_74a6:
    ld l, l
    ld h, d

jr_0f8_74a8:
    ld [hl], d
    ld h, l
    ld l, h
    ld l, h
    ld h, c
    jr nz, @+$7b

    ld l, a
    ld [hl], l

jr_0f8_74b1:
    jr nz, jr_0f8_751e

    ld l, [hl]
    ld l, a
    ld [hl], a
    ld l, $01
    ld d, e
    ld l, a

jr_0f8_74ba:
    jr nz, jr_0f8_7525

    ld [hl], h
    daa
    ld [hl], e
    nop
    ld h, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_7527

    ld h, l
    ld h, l
    ld l, [hl]
    nop
    ld l, l
    ld h, c
    ld [hl], e
    ld [hl], h
    ld h, l
    ld [hl], d
    ld l, l
    ld l, c
    ld l, [hl]
    ld h, h

jr_0f8_74d3:
    ld h, l
    ld h, h
    jr nz, jr_0f8_7539

    ld a, c
    jr nz, jr_0f8_7542

    ld l, c
    ld l, l
    ld l, $01
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_754c

    ld [hl], h
    daa
    ld [hl], e
    nop
    ld h, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_0f8_7561

jr_0f8_74ed:
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_756b

jr_0f8_74f2:
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_7561

    ld l, [hl]
    ld l, a
    ld [hl], a
    nop
    ld [hl], h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_756e

    ld l, a

jr_0f8_7501:
    ld [hl], a
    ld l, $20
    ld b, c
    ld l, [hl]
    ld a, c
    ld [hl], a
    ld h, c
    ld a, c
    nop
    ld l, h
    ld h, l
    ld [hl], h

jr_0f8_750e:
    daa
    ld [hl], e
    jr nz, jr_0f8_7579

    ld h, l
    ld [hl], h
    jr nz, jr_0f8_7585

    ld [hl], l

jr_0f8_7517:
    ld [hl], h
    jr nz, jr_0f8_7589

    ld h, [hl]
    nop
    inc b
    ld [hl], h

jr_0f8_751e:
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_758b

    ld l, a
    ld [hl], l

jr_0f8_7525:
    ld [hl], e
    ld h, l

jr_0f8_7527:
    jr nz, @+$68

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, $01
    ld b, h
    ld l, a
    jr nz, jr_0f8_75ac

    ld l, a
    ld [hl], l
    nop
    ld l, b
    ld h, c
    db $76

jr_0f8_7539:
    ld h, l
    jr nz, jr_0f8_759d

    ld l, [hl]
    ld a, c
    jr nz, @+$6b

    ld h, h
    ld h, l

jr_0f8_7542:
    ld h, c
    jr nz, jr_0f8_75bc

    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld d, a
    ld h, l
    ld [hl], e

jr_0f8_754c:
    ld l, e
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_75c8

    ld h, c
    ld [hl], e
    jr nz, jr_0f8_75bc

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_75cf

    ld l, a
    nop
    ld [hl], e
    ld l, b
    ld l, a
    ld [hl], a

jr_0f8_7561:
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_75c8

    ld [hl], h
    jr nz, jr_0f8_75de

    ld l, b

jr_0f8_756b:
    ld h, l
    nop
    inc b

jr_0f8_756e:
    ld h, d
    ld h, c
    ld h, e
    ld l, e
    jr nz, jr_0f8_75e3

    ld h, [hl]
    jr nz, jr_0f8_75eb

    ld l, b
    ld l, c

jr_0f8_7579:
    ld [hl], e
    jr nz, jr_0f8_75ec

    ld l, h
    ld h, c
    ld h, e
    ld h, l
    ccf
    ld bc, $6557
    ld l, h

jr_0f8_7585:
    ld l, h
    inc l
    jr nz, jr_0f8_75f1

jr_0f8_7589:
    ld h, l
    nop

jr_0f8_758b:
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, jr_0f8_7604

    ld h, c
    ld l, h
    ld l, e
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_75f9

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    nop

jr_0f8_759d:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$79

    ld l, a
    ld [hl], d
    ld l, h
    ld h, h
    daa
    ld [hl], e
    jr nz, jr_0f8_7617

    ld l, a
    ld [hl], e

jr_0f8_75ac:
    ld [hl], h
    nop
    ld [hl], b
    ld l, a
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, [hl]
    ld [hl], l
    ld l, h
    jr nz, @+$64

    ld l, c
    ld l, a
    ld l, h
    ld l, a

jr_0f8_75bc:
    ld h, a
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    nop
    inc b
    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], b
    ld l, a

jr_0f8_75c8:
    ld l, [hl]
    jr nz, jr_0f8_762e

    ld h, c
    ld l, h
    ld l, h
    ld h, l

jr_0f8_75cf:
    ld h, h
    jr nz, jr_0f8_7626

    ld a, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    nop
    inc b
    ld l, a
    ld [hl], d
    jr nz, jr_0f8_7650

    ld l, a

jr_0f8_75de:
    ld l, l
    ld h, l
    ld [hl], h
    ld l, b
    ld l, c

jr_0f8_75e3:
    ld l, [hl]
    ld h, a
    inc l
    nop
    inc b
    ld c, c
    jr nz, jr_0f8_765f

jr_0f8_75eb:
    ld l, b

jr_0f8_75ec:
    ld l, c
    ld l, [hl]
    ld l, e
    ld l, $2e

jr_0f8_75f1:
    ld l, $01
    ld b, h
    ld l, a
    jr nz, jr_0f8_7670

    ld l, a
    ld [hl], l

jr_0f8_75f9:
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]
    ld l, e
    jr nz, jr_0f8_7678

    ld h, l
    jr nz, jr_0f8_7667

jr_0f8_7604:
    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    jr nz, jr_0f8_767d

    ld h, l
    ld h, l
    nop
    ld d, h
    ld a, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    jr nz, jr_0f8_7683

    ld l, a
    ld [hl], a

jr_0f8_7617:
    ccf
    ld bc, $6142
    ld [hl], d
    ld [hl], d
    ld a, c
    inc l
    nop
    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l

jr_0f8_7626:
    jr nz, jr_0f8_769b

    ld l, a
    nop
    ld l, a
    ld [hl], b
    ld [hl], h
    ld l, c

jr_0f8_762e:
    ld l, l
    ld l, c
    ld [hl], e
    ld [hl], h
    ld l, c
    ld h, e
    ld hl, $4901
    ld [hl], h
    jr nz, jr_0f8_76b1

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    nop
    ld l, h
    ld l, a
    ld l, a
    ld l, e
    jr nz, @+$64

    ld h, c
    ld h, h
    jr nz, jr_0f8_76af

    ld l, a
    ld [hl], d
    jr nz, jr_0f8_76a0

    ld d, h
    ld b, c
    ld d, d

jr_0f8_7650:
    ld d, e
    nop
    ld l, c
    ld h, [hl]
    jr nz, jr_0f8_76cd

    ld h, l
    jr nz, @+$6e

    ld h, l
    ld [hl], h
    jr nz, jr_0f8_76d0

    ld [hl], l
    ld h, e

jr_0f8_765f:
    ld l, b
    jr nz, jr_0f8_76c3

    nop
    ld h, h
    ld h, c
    ld l, [hl]
    ld h, a

jr_0f8_7667:
    ld h, l
    ld [hl], d
    ld l, a
    ld [hl], l
    ld [hl], e
    jr nz, jr_0f8_76d1

    ld [hl], d
    ld h, l

jr_0f8_7670:
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    nop
    inc b
    ld [hl], d

jr_0f8_7678:
    ld [hl], l
    ld l, [hl]
    jr nz, jr_0f8_76e8

    ld l, a

jr_0f8_767d:
    ld l, a
    ld [hl], e
    ld h, l
    ld l, $01
    ld c, l

jr_0f8_7683:
    ld h, c
    ld a, c
    ld h, d
    ld h, l
    nop
    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_7702

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $2e
    ld l, $00
    ld c, h
    ld h, l
    ld [hl], h

jr_0f8_769b:
    daa
    ld [hl], e
    jr nz, jr_0f8_7706

    ld l, a

jr_0f8_76a0:
    jr nz, jr_0f8_7716

    ld l, b
    ld h, l
    ld l, [hl]
    ld hl, $4901
    ld [hl], h
    jr nz, jr_0f8_770e

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h

jr_0f8_76af:
    nop
    ld h, e

jr_0f8_76b1:
    ld l, a
    ld l, [hl]
    ld [hl], h
    ld [hl], d
    ld l, a
    ld l, h
    jr nz, jr_0f8_7730

    ld l, b
    ld h, c
    ld [hl], h
    nop
    ld l, c
    ld [hl], h
    jr nz, jr_0f8_7725

    ld l, a
    ld h, l

jr_0f8_76c3:
    ld [hl], e
    ld l, $01
    ld b, e
    ld h, c
    ld l, [hl]
    jr nz, jr_0f8_772c

    nop
    ld h, e

jr_0f8_76cd:
    ld [hl], d
    ld h, l
    ld h, c

jr_0f8_76d0:
    ld [hl], h

jr_0f8_76d1:
    ld [hl], l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_7742

    ld l, c
    ld l, e
    ld h, l
    jr nz, jr_0f8_774f

    ld l, b
    ld l, c
    ld [hl], e
    nop
    ld [hl], d
    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    jr nz, jr_0f8_7749

    ld h, l

jr_0f8_76e8:
    jr nz, @+$76

    ld l, b
    ld h, l
    nop
    ld [hl], l
    ld l, h
    ld [hl], h
    ld l, c
    ld l, l
    ld h, c
    ld [hl], h
    ld h, l
    jr nz, jr_0f8_7759

    ld l, c
    ld l, a
    ld l, h
    ld l, a
    ld h, a
    ld l, c
    ld h, e
    ld h, c
    ld l, h
    nop
    inc b

jr_0f8_7702:
    ld [hl], a
    ld h, l
    ld h, c
    ld [hl], b

jr_0f8_7706:
    ld l, a
    ld l, [hl]
    ccf
    ld bc, $6552
    ld h, c
    ld l, h

jr_0f8_770e:
    ld l, h
    ld a, c
    ld l, $00
    ld d, a
    ld h, l
    ld [hl], e
    ld l, e

jr_0f8_7716:
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_7783

    ld [hl], e
    jr nz, jr_0f8_777e

    jr nz, jr_0f8_7782

    ld [hl], d
    ld h, c
    ld a, d
    ld a, c
    nop
    ld l, l

jr_0f8_7725:
    ld h, c
    ld l, [hl]
    ld l, $01
    ld d, h
    ld a, c
    ld [hl], d

jr_0f8_772c:
    ld h, c
    ld l, [hl]
    ld [hl], h
    nop

jr_0f8_7730:
    ld l, c
    ld [hl], e
    jr nz, @+$70

    ld l, a
    ld [hl], h
    jr nz, jr_0f8_779b

    ld l, a
    ld l, l
    ld [hl], b
    ld l, h
    ld h, l
    ld [hl], h
    ld h, l
    ld l, h
    ld a, c
    nop

jr_0f8_7742:
    ld h, h
    ld h, l
    db $76
    ld h, l
    ld l, h
    ld l, a
    ld [hl], b

jr_0f8_7749:
    ld h, l
    ld h, h
    jr nz, jr_0f8_77c6

    ld h, l
    ld [hl], h

jr_0f8_774f:
    ld l, $01
    ld b, d
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_77cd

    ld h, l
    nop
    ld h, e

jr_0f8_7759:
    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_77cb

    ld h, l
    ld [hl], h
    jr nz, jr_0f8_77cc

    ld [hl], h
    jr nz, jr_0f8_77d2

    ld l, c
    db $76
    ld h, l
    ld l, $01
    ld d, h
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_77de

    ld [hl], l
    ld [hl], e
    ld [hl], h
    nop
    ld h, d
    ld h, l
    jr nz, @+$76

    ld l, b
    ld h, l
    jr nz, jr_0f8_77e0

    ld l, a

jr_0f8_777e:
    ld l, l
    ld [hl], b
    ld [hl], l
    ld [hl], h

jr_0f8_7782:
    ld h, l

jr_0f8_7783:
    ld [hl], d
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_0f8_77f7

    ld l, a
    ld l, [hl]
    ld l, c
    ld [hl], h
    ld l, a
    ld [hl], d
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], h
    ld l, b
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_77fd

    ld [hl], d

jr_0f8_779b:
    ld h, l
    ld h, c
    ld [hl], h
    ld [hl], l
    ld [hl], d
    ld h, l
    ld l, $01
    ld d, a
    ld h, c
    ld [hl], h
    ld h, e
    ld l, b
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    ld hl, $0001
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, @+$6a

    ld h, c
    ld [hl], b
    ld [hl], b
    ld h, l
    ld l, [hl]
    ld h, l
    ld h, h
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_7818

    ld h, l
    ld [hl], e
    ld l, e
    ld h, l
    ld [hl], d

jr_0f8_77c6:
    ccf
    ld bc, $6557
    ld [hl], e

jr_0f8_77cb:
    ld l, e

jr_0f8_77cc:
    ld h, l

jr_0f8_77cd:
    ld [hl], d
    nop
    ld l, l
    ld [hl], l
    ld [hl], e

jr_0f8_77d2:
    ld [hl], h
    jr nz, jr_0f8_783d

    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_784d

    ld h, l
    ld [hl], h
    jr nz, jr_0f8_7847

jr_0f8_77de:
    ld [hl], h
    nop

jr_0f8_77e0:
    ld l, a
    ld h, [hl]
    ld h, [hl]
    ld l, $20
    ld d, h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l
    daa
    ld [hl], e
    jr nz, jr_0f8_785c

    ld l, a
    ld [hl], h
    nop
    ld l, l
    ld [hl], l
    ld h, e
    ld l, b
    jr nz, @+$76

jr_0f8_77f7:
    ld l, c
    ld l, l
    ld h, l
    jr nz, @+$6e

    ld h, l

jr_0f8_77fd:
    ld h, [hl]
    ld [hl], h
    nop
    inc b
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_0f8_787b

    ld [hl], e
    ld l, $01
    ld c, a
    ld l, b
    jr nz, jr_0f8_7857

    ld l, c
    ld l, h
    ld l, h
    ld hl, $0001
    ld d, e
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c

jr_0f8_7818:
    jr nz, @+$68

    ld l, a
    ld [hl], d
    jr nz, jr_0f8_7889

    ld h, l
    ld h, l
    ld [hl], b
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld a, c
    ld l, a
    ld [hl], l
    jr nz, @+$79

    ld h, c
    ld l, c
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    ld hl, $0001
    ld d, e
    ld l, a
    jr nz, jr_0f8_789c

    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld [hl], h
    ld l, b

jr_0f8_783d:
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld l, c
    ld [hl], e
    jr nz, jr_0f8_78a9

    ld l, a
    ld l, [hl]

jr_0f8_7847:
    ld h, l
    ccf
    ld bc, $5700
    ld h, l

jr_0f8_784d:
    ld l, h
    ld l, h
    inc l
    jr nz, @+$63

    ld l, h
    ld l, l
    ld l, a
    ld [hl], e
    ld [hl], h

jr_0f8_7857:
    inc l
    jr nz, jr_0f8_78d3

    ld h, l
    ld [hl], e

jr_0f8_785c:
    ld l, $00
    ld c, [hl]
    ld l, a
    ld [hl], a
    jr nz, @+$6e

    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$69

    ld l, a
    ld hl, $4f01
    ld l, b
    jr nz, @+$45

    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld hl, $5300
    ld l, a
    jr nz, jr_0f8_78f3

    ld l, a

jr_0f8_787b:
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, @+$51

    ld c, e
    ld hl, HeaderManufacturerCode
    ld c, h
    ld h, l
    ld [hl], h
    daa

jr_0f8_7889:
    ld [hl], e
    jr nz, jr_0f8_7900

    ld h, c
    ld l, h
    ld l, e
    nop
    ld h, c
    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_790b

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_7908

jr_0f8_789c:
    ld h, c
    ld [hl], h
    ld h, l
    ld [hl], d
    ld hl, $4c00
    ld h, l
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_7910

jr_0f8_78a9:
    ld h, l
    ld [hl], h
    jr nz, @+$71

    ld [hl], l
    ld [hl], h
    nop
    ld l, a
    ld h, [hl]
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ld h, l
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
    ld l, c
    ld [hl], e
    jr nz, @+$6b

    ld [hl], e
    nop
    ld b, d
    ld [hl], d
    ld h, c
    ld h, h
    ld hl, $5720
    ld h, l
    daa

jr_0f8_78d3:
    ld [hl], d
    ld h, l
    jr nz, @+$74

    ld [hl], l
    ld l, [hl]
    ld l, [hl]
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld l, a
    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_7952

    ld h, [hl]
    jr nz, jr_0f8_794c

    ld [hl], l
    ld h, l
    ld l, h
    ld hl, $4920
    ld h, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_0f8_78f3:
    jr nz, jr_0f8_795e

    ld [hl], e
    jr nz, jr_0f8_7959

    ld l, [hl]
    ld a, c
    ld l, a
    ld l, [hl]
    ld h, l
    nop
    inc b
    ld h, c

jr_0f8_7900:
    ld l, h
    ld l, c
    db $76
    ld h, l
    inc l
    jr nz, jr_0f8_796a

    ld l, a

jr_0f8_7908:
    ld l, [hl]
    ld [hl], h
    ld h, c

jr_0f8_790b:
    ld h, e
    ld [hl], h
    jr nz, jr_0f8_797c

    ld h, l

jr_0f8_7910:
    ld hl, $0400
    ld c, a
    ld c, e
    ccf
    jr nz, jr_0f8_796c

    ld l, b
    ld l, c
    ld [hl], e
    jr nz, @+$6b

    ld [hl], e
    jr nz, jr_0f8_7999

    ld l, a
    ld [hl], l
    ld [hl], d
    nop
    inc b
    ld l, h
    ld h, c
    ld [hl], e
    ld [hl], h
    jr nz, jr_0f8_7999

    ld l, a
    ld [hl], h
    ld l, c
    ld h, e
    ld h, l
    ld l, $2e
    ld l, $21
    ld bc, $6f59
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_799e

    nop
    ld h, d
    ld [hl], d
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_79ac

    ld l, c
    ld [hl], d
    ld l, h
    ld hl, $4220
    ld [hl], l

jr_0f8_794c:
    ld [hl], h
    jr nz, jr_0f8_79b8

    ld h, [hl]
    jr nz, jr_0f8_799b

jr_0f8_7952:
    nop
    ld [hl], a
    ld h, l
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_79d2

jr_0f8_7959:
    ld l, a
    ld [hl], l
    inc l
    jr nz, jr_0f8_79a7

jr_0f8_795e:
    jr nz, jr_0f8_79d7

    ld l, a
    ld [hl], l
    ld l, h
    ld h, h
    ld l, [hl]
    daa
    ld [hl], h
    nop
    ld h, a
    ld l, c

jr_0f8_796a:
    db $76
    ld h, l

jr_0f8_796c:
    jr nz, jr_0f8_79e3

    ld [hl], b
    jr nz, @+$75

    ld [hl], l
    ld h, e
    ld l, b
    jr nz, jr_0f8_79d7

    jr nz, jr_0f8_79da

    ld l, c
    ld h, a
    nop
    inc b

jr_0f8_797c:
    ld h, h
    ld l, c
    ld [hl], e
    ld h, e
    ld l, a
    db $76
    ld h, l
    ld [hl], d
    ld a, c
    ld l, $20
    ld e, c
    ld l, a
    ld [hl], l
    jr nz, jr_0f8_79f3

    ld [hl], l
    ld a, c
    ld [hl], e
    nop
    inc b
    ld h, c
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_79ff

    ld h, h
    ld l, c
    ld l, a

jr_0f8_7999:
    ld [hl], h
    ld [hl], e

jr_0f8_799b:
    ld l, $20
    ld c, [hl]

jr_0f8_799e:
    ld l, a
    jr nz, jr_0f8_7a10

    ld l, [hl]
    ld h, l
    nop
    inc b
    ld [hl], l
    ld l, [hl]

jr_0f8_79a7:
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_0f8_79ac:
    ld h, c
    ld l, [hl]
    ld h, h
    ld [hl], e
    jr nz, jr_0f8_7a1b

    ld [hl], h
    daa
    ld [hl], e
    nop
    inc b
    ld [hl], d

jr_0f8_79b8:
    ld h, l
    ld h, c
    ld l, h
    jr nz, jr_0f8_7a33

    ld h, c
    ld l, h
    ld [hl], l
    ld h, l
    ld hl, $4901
    ld [hl], h
    jr nz, jr_0f8_7a34

    ld [hl], l
    ld [hl], e
    ld [hl], h
    jr nz, @+$64

    ld h, l
    nop
    ld h, c
    jr nz, jr_0f8_7a24

    ld d, h

jr_0f8_79d2:
    ld b, c
    ld d, d
    ld d, e
    jr nz, jr_0f8_7a49

jr_0f8_79d7:
    ld h, c
    ld h, h
    ld l, c

jr_0f8_79da:
    ld l, a
    ld hl, $4900
    ld [hl], h
    daa
    ld [hl], e
    jr nz, jr_0f8_7a44

jr_0f8_79e3:
    jr nz, @+$6e

    ld l, c
    ld [hl], h
    ld [hl], h
    ld l, h
    ld h, l
    jr nz, jr_0f8_7a4e

    ld l, c
    ld [hl], h
    nop
    ld h, d
    ld [hl], d
    ld l, a
    ld l, e

jr_0f8_79f3:
    ld h, l
    ld l, [hl]
    inc l
    jr nz, @+$64

    ld [hl], l
    ld [hl], h
    jr nz, jr_0f8_7a65

    ld [hl], h
    jr nz, jr_0f8_7a6c

jr_0f8_79ff:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    nop
    inc b
    ld h, d
    ld h, l
    jr nz, @+$75

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_7a84

    ld [hl], e

jr_0f8_7a10:
    ld h, l
    ld h, c
    ld h, d
    ld l, h
    ld h, l
    ld l, $00
    inc b
    ld c, c
    daa
    ld l, h

jr_0f8_7a1b:
    ld l, h
    jr nz, jr_0f8_7a92

    ld h, c
    ld l, e
    ld h, l
    jr nz, jr_0f8_7a8c

    ld [hl], h

jr_0f8_7a24:
    jr nz, jr_0f8_7a9d

    ld l, c
    ld [hl], h
    ld l, b
    jr nz, @+$6f

    ld h, l
    ld bc, $6552
    ld h, d
    ld h, l
    ld h, e
    ld h, e

jr_0f8_7a33:
    ld h, c

jr_0f8_7a34:
    ld hl, $4900
    ld [hl], e
    jr nz, jr_0f8_7aad

    ld l, b
    ld h, l
    jr nz, jr_0f8_7ab1

    ld [hl], h
    ld l, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_7aad

jr_0f8_7a44:
    ld l, [hl]
    nop
    ld [hl], h
    ld l, b
    ld h, l

jr_0f8_7a49:
    jr nz, jr_0f8_7ab3

    ld l, a
    ld [hl], l
    ld [hl], e

jr_0f8_7a4e:
    ld h, l
    ccf
    ld bc, $6552
    ld h, d
    ld h, l
    ld h, e
    ld h, e
    ld h, c
    ld hl, $4301
    ld l, b
    ld [hl], d
    ld l, c
    ld [hl], e
    ld hl, $5401
    ld l, b
    ld h, c
    ld l, [hl]

jr_0f8_7a65:
    ld l, e
    jr nz, jr_0f8_7aaf

    ld l, a
    ld h, h
    nop
    ld a, c

jr_0f8_7a6c:
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_7ae6

    ld h, c
    ld h, [hl]
    ld h, l
    ld l, $01
    ld c, c
    daa
    ld l, l
    jr nz, jr_0f8_7af0

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    nop
    ld [hl], h
    ld l, b

jr_0f8_7a84:
    ld h, c
    ld [hl], h
    jr nz, @+$7b

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_7b03

jr_0f8_7a8c:
    ld h, l
    ld [hl], d
    ld h, l
    nop
    ld [hl], a
    ld l, a

jr_0f8_7a92:
    ld [hl], d
    ld [hl], d
    ld l, c
    ld h, l
    ld h, h
    jr nz, jr_0f8_7afa

    ld h, d
    ld l, a
    ld [hl], l
    ld [hl], h

jr_0f8_7a9d:
    jr nz, @+$6f

    ld h, l
    ld l, $01
    ld d, a
    ld h, l
    jr nz, @+$63

    ld [hl], d
    ld h, l
    nop
    ld l, c
    ld l, [hl]
    jr nz, jr_0f8_7b14

jr_0f8_7aad:
    ld [hl], d
    ld h, l

jr_0f8_7aaf:
    ld h, c
    ld [hl], h

jr_0f8_7ab1:
    jr nz, jr_0f8_7b17

jr_0f8_7ab3:
    ld h, c
    ld l, [hl]
    ld h, a
    ld h, l
    ld [hl], d
    ld l, $01
    ld d, a
    ld h, l
    jr nz, jr_0f8_7b2b

    ld [hl], l
    ld [hl], e
    ld [hl], h
    nop
    ld l, a
    ld [hl], d
    ld h, a
    ld h, c
    ld l, [hl]
    ld l, c
    ld [hl], e
    ld h, l
    jr nz, jr_0f8_7b2d

    jr nz, jr_0f8_7b41

    ld h, l
    ld h, c
    ld [hl], d
    ld h, e
    ld l, b
    nop
    ld h, [hl]
    ld l, a
    ld [hl], d
    jr nz, jr_0f8_7b4d

    ld l, b
    ld h, l
    jr nz, @+$71

    ld [hl], h
    ld l, b
    ld h, l
    ld [hl], d
    ld [hl], e
    jr nz, jr_0f8_7b45

    ld l, [hl]
    ld h, h

jr_0f8_7ae6:
    nop
    ld h, a
    ld h, l
    ld [hl], h
    jr nz, jr_0f8_7b60

    ld l, b
    ld h, l
    jr nz, jr_0f8_7b58

jr_0f8_7af0:
    ld h, l
    ld l, h
    ld l, h
    jr nz, jr_0f8_7b64

    ld [hl], l
    ld [hl], h
    nop
    inc b
    ld l, a

jr_0f8_7afa:
    ld h, [hl]
    jr nz, @+$6a

    ld h, l
    ld [hl], d
    ld h, l
    ld hl, $5901

jr_0f8_7b03:
    ld h, l
    ld [hl], e
    inc l
    jr nz, jr_0f8_7b5b

    ld l, c
    ld [hl], d
    ld hl, $0001
    ld d, l
    ld l, [hl]
    ld h, h
    ld h, l
    ld [hl], d
    ld [hl], e
    ld [hl], h

jr_0f8_7b14:
    ld l, a
    ld l, a
    ld h, h

jr_0f8_7b17:
    ccf
    ld bc, $4b4f
    ld l, $20
    ld c, c
    daa
    ld l, h
    ld l, h
    nop
    ld h, a
    ld l, a
    jr nz, jr_0f8_7b8c

    ld l, c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc l

jr_0f8_7b2b:
    jr nz, @+$72

jr_0f8_7b2d:
    ld [hl], d
    ld l, a
    ld h, e
    ld h, l
    ld h, l
    ld h, h
    nop
    ld [hl], a
    ld l, c
    ld [hl], h
    ld l, b
    jr nz, jr_0f8_7bb3

    ld l, a
    ld [hl], l
    ld [hl], d
    jr nz, jr_0f8_7bae

    ld [hl], a
    ld l, [hl]

jr_0f8_7b41:
    nop
    ld l, d
    ld [hl], l
    ld h, h

jr_0f8_7b45:
    ld h, a
    ld h, l
    ld l, l
    ld h, l
    ld l, [hl]
    ld [hl], h
    ld l, $00

jr_0f8_7b4d:
    inc b
    ld b, c
    ld l, h
    ld l, h
    jr nz, jr_0f8_7bc5

    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ccf

jr_0f8_7b58:
    nop
    inc b
    ld b, e

jr_0f8_7b5b:
    ld h, c
    ld l, [hl]
    jr nz, jr_0f8_7bd8

    ld l, a

jr_0f8_7b60:
    ld [hl], l
    jr nz, jr_0f8_7bc7

    ld l, a

jr_0f8_7b64:
    jr nz, jr_0f8_7bcf

    ld [hl], h
    ccf
    ld bc, $5900
    ld h, l
    ld [hl], e
    jr nz, jr_0f8_7bb8

    jr nz, jr_0f8_7bd4

    ld h, c
    ld l, [hl]
    ld hl, $0001
    ld b, a
    ld l, a
    ld l, a
    ld h, h
    jr nz, jr_0f8_7be8

    ld [hl], l
    ld h, e
    ld l, e
    ld l, $01
    nop
    ld d, a
    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_7be9

    ld [hl], d
    ld h, l
    jr nz, jr_0f8_7c00

jr_0f8_7b8c:
    ld l, b
    ld h, l
    ld a, c
    ld hl, HeaderManufacturerCode
    ld c, d
    ld l, c
    ld l, h
    ld l, h
    ld hl, $4800
    ld h, c
    db $76
    ld h, l
    jr nz, jr_0f8_7c17

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_7c08

    ld l, a
    ld [hl], l
    ld l, [hl]
    ld h, h
    nop
    ld h, c
    ld l, [hl]
    ld a, c
    ld [hl], h
    ld l, b
    ld l, c
    ld l, [hl]

jr_0f8_7bae:
    ld h, a
    nop
    ld l, c
    ld l, [hl]
    ld [hl], h

jr_0f8_7bb3:
    ld h, l
    ld [hl], d
    ld h, l
    ld [hl], e
    ld [hl], h

jr_0f8_7bb8:
    ld l, c
    ld l, [hl]
    ld h, a
    ccf
    ld bc, $6559
    ld [hl], e
    ld l, $00
    ld b, d
    ld [hl], l
    ld [hl], h

jr_0f8_7bc5:
    jr nz, jr_0f8_7c10

jr_0f8_7bc7:
    jr nz, @+$65

    ld h, c
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_7c42

jr_0f8_7bcf:
    ld h, l
    ld h, l
    nop
    db $76
    ld h, l

jr_0f8_7bd4:
    ld [hl], d
    ld a, c
    jr nz, jr_0f8_7c4f

jr_0f8_7bd8:
    ld h, l
    ld l, h
    ld l, h
    ld l, $2e
    ld l, $2e
    ld bc, $6f48
    ld [hl], a
    jr nz, @+$63

    ld h, d
    ld l, a
    ld [hl], l

jr_0f8_7be8:
    ld [hl], h

jr_0f8_7be9:
    nop
    ld h, a
    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_7c55

    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, @+$76

    ld l, a
    jr nz, jr_0f8_7c5c

    ld l, b
    ld h, l
    ld h, e
    ld l, e
    nop
    ld h, d
    ld a, c

jr_0f8_7c00:
    jr nz, jr_0f8_7c7b

    ld l, a
    ld [hl], l
    ld [hl], d
    ld [hl], e
    ld h, l
    ld l, h

jr_0f8_7c08:
    ld h, [hl]
    ccf
    jr nz, jr_0f8_7c55

    jr nz, jr_0f8_7c76

    ld h, c
    db $76

jr_0f8_7c10:
    ld h, l
    nop
    ld h, c
    jr nz, jr_0f8_7c87

    ld l, a
    ld [hl], b

jr_0f8_7c17:
    ld h, l
    jr nz, jr_0f8_7c82

    ld h, l
    ld [hl], d
    ld h, l
    ld l, $01
    nop
    ld c, a
    ld l, b
    inc l
    jr nz, jr_0f8_7c89

    ld l, a
    jr nz, jr_0f8_7ca1

    ld l, a
    ld [hl], l
    ccf
    ld l, $2e
    ld l, $00
    ld d, a
    ld h, l
    ld l, h
    ld l, h
    inc l
    jr nz, jr_0f8_7caa

    ld l, b
    ld h, l
    ld l, [hl]
    jr nz, jr_0f8_7c84

    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_7cb4

    ld [hl], d
    ld a, c

jr_0f8_7c42:
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_7cae

    ld l, a
    jr nz, jr_0f8_7cae

    ld l, a
    ld [hl], a
    ld l, [hl]
    jr nz, jr_0f8_7cc4

jr_0f8_7c4f:
    ld [hl], e
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    inc b

jr_0f8_7c55:
    ld [hl], h
    ld l, b
    ld h, l
    jr nz, @+$74

    ld l, a
    ld [hl], b

jr_0f8_7c5c:
    ld h, l
    ld l, $2e
    ld bc, $6157
    ld l, c
    ld [hl], h
    ld hl, $4801
    ld h, l
    ld a, c
    ld hl, $5700
    ld l, b
    ld h, c
    ld [hl], h
    daa
    ld [hl], e
    jr nz, @+$69

    ld l, a
    ld l, c
    ld l, [hl]

jr_0f8_7c76:
    ld h, a
    jr nz, jr_0f8_7ce8

    ld l, [hl]
    ccf

jr_0f8_7c7b:
    ld bc, $6f4e
    ld [hl], a
    jr nz, jr_0f8_7cca

    daa

jr_0f8_7c82:
    db $76
    ld h, l

jr_0f8_7c84:
    nop
    ld h, h
    ld l, a

jr_0f8_7c87:
    ld l, [hl]
    ld h, l

jr_0f8_7c89:
    jr nz, jr_0f8_7cf4

    ld [hl], h
    ld hl, $5320
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, jr_0f8_7cdf

    ld l, c
    ld l, h
    ld l, h
    ld l, $00
    ld d, a
    ld h, c
    ld l, c
    ld [hl], h
    ld hl, $4920

jr_0f8_7ca1:
    daa
    ld l, h
    ld l, h
    jr nz, jr_0f8_7d0d

    ld l, a
    jr nz, jr_0f8_7d0a

    ld l, [hl]

jr_0f8_7caa:
    ld h, h
    nop
    ld h, a
    ld h, l

jr_0f8_7cae:
    ld [hl], h
    jr nz, jr_0f8_7d12

    ld l, [hl]
    ld l, a
    ld [hl], h

jr_0f8_7cb4:
    ld l, b
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_7d2b

    ld l, a
    ld [hl], b
    ld h, l
    ld hl, $0001
    ld b, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c

jr_0f8_7cc4:
    ccf
    jr nz, @+$44

    ld h, c
    ld [hl], d
    ld [hl], d

jr_0f8_7cca:
    ld a, c
    ld hl, $4801
    ld h, l
    ld a, c
    ld hl, $4100
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_7d50

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_7d4f

    ld l, b
    ld h, l
    ld [hl], d
    ld h, l

jr_0f8_7cdf:
    ld l, $20
    ld c, d
    ld l, c
    ld l, h
    ld l, h
    ccf
    nop
    ld b, a

jr_0f8_7ce8:
    ld [hl], d
    ld h, c
    ld h, d
    jr nz, jr_0f8_7d61

    ld l, b
    ld h, l
    jr nz, jr_0f8_7d63

    ld l, a
    ld [hl], b
    ld h, l

jr_0f8_7cf4:
    ld hl, $0001
    ld c, c
    daa
    ld l, l
    jr nz, jr_0f8_7d6f

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    jr nz, @+$4c

    ld l, c
    ld l, h
    ld l, h
    ld l, $01
    ld c, c
    jr nz, jr_0f8_7d6e

jr_0f8_7d0a:
    ld l, c
    ld h, h
    ld l, [hl]

jr_0f8_7d0d:
    daa
    ld [hl], h
    nop
    ld l, e
    ld l, [hl]

jr_0f8_7d12:
    ld l, a
    ld [hl], a
    jr nz, jr_0f8_7d8a

    ld l, b
    ld h, c
    ld [hl], h
    jr nz, jr_0f8_7d92

    ld h, c
    ld [hl], e
    jr nz, jr_0f8_7d86

    ld l, a
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], h
    ld l, a
    jr nz, jr_0f8_7d90

    ld h, c
    ld [hl], b
    ld [hl], b

jr_0f8_7d2b:
    ld h, l
    ld l, [hl]
    ld hl, $5301
    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $20
    ld c, c
    nop
    ld [hl], a
    ld h, c
    ld [hl], e
    jr nz, jr_0f8_7daf

    ld h, l
    ld h, c
    ld l, h
    ld l, h
    ld a, c
    nop
    ld h, e
    ld h, c
    ld [hl], d
    ld h, l
    ld l, h
    ld h, l
    ld [hl], e
    ld [hl], e
    ld l, $01
    ld b, c
    ld [hl], d

jr_0f8_7d4f:
    ld h, l

jr_0f8_7d50:
    jr nz, jr_0f8_7dcb

    ld l, a
    ld [hl], l
    nop
    ld c, a
    ld c, e
    ld l, $20
    ld b, d
    ld h, c
    ld [hl], d
    ld [hl], d
    ld a, c
    ccf
    jr nz, jr_0f8_7dae

jr_0f8_7d61:
    ld h, c
    ld a, c

jr_0f8_7d63:
    ld h, d
    ld h, l
    nop
    ld a, c
    ld l, a
    ld [hl], l
    daa
    ld [hl], d
    ld h, l
    jr nz, jr_0f8_7dd5

jr_0f8_7d6e:
    ld h, l

jr_0f8_7d6f:
    ld [hl], h
    ld [hl], h
    ld l, c
    ld l, [hl]
    ld h, a
    nop
    ld [hl], h
    ld l, c
    ld [hl], d
    ld h, l
    ld h, h
    ld l, $2e
    ld bc, $6f4e
    ld l, $00
    ld c, c
    daa
    ld l, l
    jr nz, jr_0f8_7de7

jr_0f8_7d86:
    ld l, h
    ld l, h
    jr nz, jr_0f8_7dfc

jr_0f8_7d8a:
    ld l, c
    ld h, a
    ld l, b
    ld [hl], h
    ld l, $00

jr_0f8_7d90:
    ld b, h
    ld l, a

jr_0f8_7d92:
    ld l, [hl]
    daa
    ld [hl], h
    jr nz, jr_0f8_7e0e

    ld l, a
    ld [hl], d
    ld [hl], d
    ld a, c
    ld l, $01
    ld b, d
    ld h, l
    ld [hl], h
    ld [hl], h
    ld h, l
    ld [hl], d
    jr nz, jr_0f8_7e1e

    ld h, l
    ld [hl], h
    inc l
    jr nz, jr_0f8_7df3

    daa
    ld l, l
    jr nz, jr_0f8_7e15

jr_0f8_7dae:
    ld l, a

jr_0f8_7daf:
    ld l, c
    ld l, [hl]
    ld h, a
    jr nz, jr_0f8_7e28

    ld l, a
    jr nz, jr_0f8_7e2a

    ld l, b
    ld l, a
    ld [hl], a
    jr nz, jr_0f8_7e35

    ld l, a
    ld [hl], l
    jr nz, jr_0f8_7e34

    ld l, b
    ld h, l
    jr nz, jr_0f8_7e18

    ld a, c
    ld [hl], d
    ld h, c
    ld l, [hl]
    ld [hl], h
    ld l, $2e

jr_0f8_7dcb:
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f8_7dd5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f8_7de7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f8_7df3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f8_7dfc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f8_7e0e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f8_7e15:
    nop
    nop
    nop

jr_0f8_7e18:
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f8_7e1e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f8_7e28:
    nop
    nop

jr_0f8_7e2a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0f8_7e34:
    nop

jr_0f8_7e35:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
