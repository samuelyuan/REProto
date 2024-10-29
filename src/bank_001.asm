SECTION "ROM Bank $001", ROMX[$4000], BANK[$1]

    ld b, b
    jp Jump_001_405a


    ld a, [hl]
    cp $58
    jp z, Jump_001_4037

    jp Jump_001_405a


    ld a, [hl]
    cp $57
    jp z, Jump_001_4037

    jp Jump_001_405a


    ld a, [hl]
    cp $16
    jp z, Jump_001_403f

    jp Jump_001_405a


    ld a, $16
    ld [hl], a
    ld a, $2e
    ld [de], a
    jr jr_001_4045

    ld a, $57
    ld [hl], a
    ld a, $2e
    ld [de], a
    jr jr_001_4045

    ld a, $58
    ld [hl], a
    ld a, $2e
    ld [de], a
    jr jr_001_4045

Jump_001_4037:
    ld a, $59
    ld [hl], a
    ld a, $2e
    ld [de], a
    jr jr_001_4045

Jump_001_403f:
    ld a, $5a
    ld [hl], a
    ld a, $2e
    ld [de], a

jr_001_4045:
    ld a, $16
    call Call_000_026b
    ld a, [$c123]
    sub $e0
    ld [$c123], a
    call Call_000_36d2
    ld b, $20
    jp Jump_000_02b2


Jump_001_405a:
    ld a, [hl]
    cp $05
    jr z, jr_001_4078

    cp $10
    jr z, jr_001_4078

    cp $16
    jr z, jr_001_4078

    cp $21
    jr z, jr_001_4078

    cp $57
    jr z, jr_001_4078

    cp $58
    jr z, jr_001_4078

    cp $59
    jr z, jr_001_4078

    ret


jr_001_4078:
    ld a, [de]
    cp $05
    jr z, jr_001_408a

    ld a, [hl]
    cp $05
    jr z, jr_001_408a

    ld a, $2e
    ld [de], a
    ld a, $2e
    ld [hl], a
    jr jr_001_4090

jr_001_408a:
    ld a, $05
    ld [de], a
    ld a, $2e
    ld [hl], a

jr_001_4090:
    ld a, $03
    call Call_000_026b
    ld a, [$c123]
    sub $e0
    ld [$c123], a
    call Call_000_36d2
    ld b, $20
    jp Jump_000_02b2


    xor a
    call Call_000_3728
    xor a
    ld [$c10e], a
    ld a, $04
    ld [$c123], a
    ld a, $28
    ld [$c10c], a
    ld a, $38
    ld [$c10d], a
    ld a, $01
    ld [$c105], a
    call Call_000_36d2

jr_001_40c4:
    call Call_000_3ed2
    call Call_001_4870
    call Call_001_4918
    ld c, $00
    call Call_000_3c2f
    call Call_000_08b9
    call Call_000_08c0
    call Call_001_42d3
    ld a, [$c105]
    or a
    call z, Call_000_37e3
    call Call_000_11ad
    call Call_001_4457
    ld a, [$c105]
    cp $5e
    ret z

    ld hl, $2f26
    call Call_001_44a7
    jr jr_001_40c4

    ld a, $ff
    call Call_000_3728
    xor a
    ld [$c10e], a
    ld a, $04
    ld [$c123], a
    ld a, $28
    ld [$c10c], a
    ld a, $38
    ld [$c10d], a
    ld a, $01
    ld [$c105], a
    call Call_000_36d2
    call Call_000_3f43

jr_001_4119:
    call Call_000_3ed2
    call Call_001_4870
    call Call_001_4918
    ld c, $ff
    call Call_000_3c2f
    call Call_000_08b9
    call Call_000_08c0
    call Call_000_08c7
    call Call_000_086e
    ld a, [$c105]
    or a
    call z, Call_001_414e
    call Call_000_11ad
    call Call_001_4457

Jump_001_4140:
    ld a, [$c105]
    cp $5e
    ret z

    ld hl, $2fb2
    call Call_001_44a7
    jr jr_001_4119

Call_001_414e:
    ld a, [$c123]
    cp $80
    jr nc, jr_001_4168

    call Call_001_41f2
    call Call_001_420e
    call Call_001_422a
    call Call_001_4253
    call Call_001_41cd
    call Call_001_4175
    ret


jr_001_4168:
    call Call_001_4285
    call Call_001_42ac
    call Call_001_41d9
    call Call_001_4193
    ret


Call_001_4175:
    ld a, [$c100]
    and $01
    ret z

    ld a, [$c123]
    ld [$c1f3], a
    ld a, $80
    ld [$c123], a
    ld a, $02
    call Call_000_026b
    call Call_000_3f43
    ld b, $10
    jp Jump_000_02b2


Call_001_4193:
    ld a, [$c100]
    and $01
    ret z

    ld a, [$c1f3]
    sub $04
    ld e, a
    ld d, $00
    ld hl, $c1e7
    add hl, de
    ld e, l
    ld d, h
    ld a, [$c185]
    ld c, a
    ld b, $00
    ld hl, $c280

Call_001_41b0:
    add hl, bc
    ld a, [de]
    push af
    ld a, [hl]
    ld [de], a
    pop af
    ld [hl], a
    ld a, [$c1f3]
    ld [$c123], a
    call Call_000_3f43
    call Call_000_36d2
    ld a, $02
    call Call_000_026b
    ld b, $10
    jp Jump_000_02b2


Call_001_41cd:
    ld a, [$c100]
    and $02
    ret z

    ld a, $5c
    ld [$c105], a
    ret


Call_001_41d9:
    ld a, [$c100]
    and $02
    ret z

    ld a, [$c1f3]
    ld [$c123], a
    ld a, $03
    call Call_000_026b
    call Call_000_3f43
    ld b, $10
    jp Jump_000_02b2


Call_001_41f2:
    ld a, [$c100]
    and $20
    ret z

    ld a, [$c123]
    and $01
    ret z

    ld a, [$c123]
    and $fe
    ld [$c123], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


Call_001_420e:
    ld a, [$c100]
    and $10
    ret z

    ld a, [$c123]
    and $01
    ret nz

    ld a, [$c123]
    or $01
    ld [$c123], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


Call_001_422a:
    ld a, [$c100]
    and $40
    jr z, jr_001_424e

    ld a, [$c110]
    or a
    ret nz

    ld a, $ff
    ld [$c110], a
    ld a, [$c123]
    cp $06
    ret c

    sub $02
    ld [$c123], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


jr_001_424e:
    xor a
    ld [$c110], a
    ret


Call_001_4253:
    ld a, [$c100]
    and $80
    jr z, jr_001_4280

    ld a, [$c111]
    or a
    ret nz

    ld a, $ff
    ld [$c111], a
    ld c, $08
    ld a, [$c11b]
    or a
    jr z, jr_001_426e

    ld c, $0a

jr_001_426e:
    ld a, [$c123]
    cp c
    ret nc

    add $02
    ld [$c123], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


jr_001_4280:
    xor a
    ld [$c111], a
    ret


Call_001_4285:
    ld a, [$c100]
    and $40
    jr z, jr_001_42a7

    ld a, [$c110]
    or a
    ret nz

    ld a, $ff
    ld [$c110], a
    ld a, [$c185]
    dec a
    and $1f
    ld [$c185], a
    call Call_000_3f43
    ld a, $0e
    jp Jump_000_026b


jr_001_42a7:
    xor a
    ld [$c110], a
    ret


Call_001_42ac:
    ld a, [$c100]
    and $80
    jr z, jr_001_42ce

    ld a, [$c111]
    or a
    ret nz

    ld a, $ff
    ld [$c111], a
    ld a, [$c185]
    inc a
    and $1f
    ld [$c185], a
    call Call_000_3f43
    ld a, $0e
    jp Jump_000_026b


jr_001_42ce:
    xor a
    ld [$c111], a
    ret


Call_001_42d3:
    ld c, $c0
    ld a, [$c123]
    cp $0c
    jr nz, jr_001_42de

    ld c, $49

jr_001_42de:
    ld hl, $c950
    call Call_000_3d85
    call Call_001_4368
    ld a, [$c1d4]
    ld l, a
    ld h, $00
    push hl
    add hl, hl
    add hl, hl
    push hl
    add hl, hl
    pop de
    add hl, de
    pop de
    add hl, de
    ld de, $c186
    add hl, de
    ld e, l
    ld d, h
    ld hl, $cf00
    ld b, $0d

jr_001_4301:
    ld a, [$c1ae]
    ld c, a
    ld a, $0d
    sub c
    cp b
    jr z, jr_001_4337

    ld a, [de]
    or a
    jr z, jr_001_4323

    ld [hl], $00
    inc hl
    ld [hl], $1c
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $1c
    inc hl
    ld [hl], $fc
    inc hl
    ld [hl], $fc
    inc hl
    jr jr_001_4361

jr_001_4323:
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $00
    inc hl
    jr jr_001_4361

jr_001_4337:
    ld a, [de]
    or a
    jr nz, jr_001_434f

    ld [hl], $04
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $04
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $fc
    inc hl
    ld [hl], $fc
    inc hl
    jr jr_001_4361

jr_001_434f:
    ld [hl], $1c
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $1c
    inc hl
    ld [hl], $00
    inc hl
    ld [hl], $fc
    inc hl
    ld [hl], $fc
    inc hl

jr_001_4361:
    inc de
    dec b
    jr nz, jr_001_4301

    jp Jump_000_11ad


Call_001_4368:
    ld [hl], $2c
    inc l
    ld [hl], c
    inc l
    ld [hl], $40
    inc l
    ld [hl], $07
    inc l
    ld [hl], $3c
    inc l
    ld [hl], c
    inc l
    ld [hl], $42
    inc l
    ld [hl], $07
    inc l
    ld [hl], $4c
    inc l
    ld [hl], c
    inc l
    ld [hl], $44
    inc l
    ld [hl], $07
    ret


Call_001_4389:
    ld a, $00
    ld [$4000], a
    ld a, $0a
    ld [$0000], a
    ret


Call_001_4394:
Jump_001_4394:
    ld a, $00
    ld [$0000], a
    ret


    call Call_001_4515
    call Call_001_4488
    call Call_000_37b8
    ld a, $01
    ld [$c105], a
    ld hl, $458b
    ld a, [$c1fc]
    or a
    jr z, jr_001_43b4

    ld hl, $4591

jr_001_43b4:
    ld b, $03

Jump_001_43b6:
    push bc
    push hl
    ld hl, $0000
    ld b, $07

Jump_001_43bd:
    push bc
    push hl
    ld bc, $63ee
    ld a, $fa
    call Call_000_3dda
    ld hl, $9800
    ld de, $3f92
    call Call_001_4408
    ld hl, $9820
    ld de, $7be6
    call Call_001_4408
    pop hl
    inc h
    inc h
    inc h
    pop bc
    dec b
    jp nz, Jump_001_43bd

    call Call_000_3ed2
    ld a, $0c
    ld hl, $4e44
    call Call_000_353c
    pop hl
    push hl
    call Call_000_3da1
    ld b, $80

jr_001_43f4:
    push bc
    call Call_000_3ed2
    pop bc
    dec b
    jr nz, jr_001_43f4

    pop hl
    inc hl
    inc hl
    pop bc
    dec b
    jp nz, Jump_001_43b6

    call Call_001_4515
    ret


Call_001_4408:
    ld a, d
    srl a
    srl a
    srl a
    srl a
    ld c, a
    call Call_001_4431
    ld a, d
    and $0f
    ld c, a
    call Call_001_4431
    ld a, e
    srl a
    srl a
    srl a
    srl a
    ld c, a
    call Call_001_4431
    ld a, e
    and $0f
    ld c, a
    call Call_001_4431
    ret


Call_001_4431:
    ld a, c
    cp $0a
    jr c, jr_001_4440

    sub $0a
    ld c, a
    add a
    add c
    add $e3
    ld c, a
    jr jr_001_4445

jr_001_4440:
    add a
    add c
    add $b0
    ld c, a

jr_001_4445:
    call Call_000_328a
    ld [hl], c
    ld a, $01
    ldh [rVBK], a
    call Call_000_328a
    ld [hl], $09
    inc hl
    xor a
    ldh [rVBK], a
    ret


Call_001_4457:
    ld a, [$c120]
    xor $01
    ld [$c120], a
    ret


    ld hl, $c900
    ld de, $ca00
    ld b, $a0

jr_001_4468:
    ld a, [hl+]
    ld [de], a
    inc e
    dec b
    jr nz, jr_001_4468

    ret


    ld hl, $447e
    ld de, $ff80
    ld b, $0a

jr_001_4477:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_001_4477

    ret


    ld a, $c9
    ldh [rDMA], a
    ld a, $2c

jr_001_4484:
    dec a
    jr nz, jr_001_4484

    ret


Call_001_4488:
    call Call_001_4457
    call Call_001_4494
    call Call_001_4457
    jp Jump_001_4494


Call_001_4494:
Jump_001_4494:
    ld hl, $c900
    call Call_000_3d85
    ld de, $0004
    ld b, $28
    ld a, $c0

jr_001_44a1:
    ld [hl], a
    add hl, de
    dec b
    jr nz, jr_001_44a1

    ret


Call_001_44a7:
    ld a, [$c105]
    or a
    ret z

    cp $60
    ret nc

    cp $40
    jr nc, jr_001_44b6

    dec a
    jr jr_001_44b7

jr_001_44b6:
    inc a

jr_001_44b7:
    ld [$c105], a
    cp $5e
    jp nc, Jump_001_4515

    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    ld a, [hl]
    push bc
    pop hl
    jp Jump_000_3297


Call_001_44cd:
    ld a, [$c105]
    or a
    ret z

    cp $60
    ret nc

    cp $40
    jr nc, jr_001_44dc

    dec a
    jr jr_001_44dd

jr_001_44dc:
    inc a

jr_001_44dd:
    ld [$c105], a
    cp $5e
    jp nc, Jump_001_4515

    ld a, [$c17c]
    ld l, a
    ld a, [$c17d]
    ld h, a
    add hl, hl
    add hl, hl
    ld de, $71b7
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c17c]
    cp $23
    jr z, jr_001_450a

jr_001_44fd:
    ld e, l
    ld d, h
    ld a, e

Call_001_4500:
    add $40
    ld e, a
    ld a, d
    adc $00
    ld d, a
    jp Jump_000_0849


jr_001_450a:
    ld a, [$c1b1]
    or a
    jr z, jr_001_44fd

    ld hl, $5200
    jr jr_001_44fd

Call_001_4515:
Jump_001_4515:
    ld c, $00
    ld b, $40

jr_001_4519:
    call Call_000_328a
    ld a, c
    ldh [rBCPS], a
    xor a
    ldh [rBCPD], a
    inc c
    dec b
    jr nz, jr_001_4519

    ld c, $00
    ld b, $40

jr_001_452a:
    call Call_000_328a
    ld a, c
    ldh [rOCPS], a
    xor a
    ldh [rOCPD], a
    inc c
    dec b
    jr nz, jr_001_452a

    ret


    call Call_001_4515
    call Call_001_4488
    ld a, $20
    ld [$c105], a
    ld hl, $2f3a
    ld a, $20
    call Call_000_2fdc
    ld a, [$c30b]
    cp $92
    jr z, jr_001_4582

    ld hl, $98b4
    ld de, $9906
    ld bc, $0507

jr_001_455b:
    push bc
    push de
    push hl

jr_001_455e:
    call Call_000_328a
    ld a, [hl]
    ld [de], a
    ld a, $01
    ldh [rVBK], a
    ld a, [hl+]
    ld [de], a
    inc e
    xor a
    ldh [rVBK], a
    dec c
    jr nz, jr_001_455e

    pop hl
    ld de, $0020
    add hl, de
    pop de
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec b
    jr nz, jr_001_455b

jr_001_4582:
    call Call_000_3ed2
    ld a, [$c105]
    cp $5e
    ret z

    ld a, [$c100]
    and $09
    jr z, jr_001_45a1

    ld a, [$c105]
    or a
    jr z, jr_001_459c

    cp $40
    jr nc, jr_001_45a1

jr_001_459c:
    ld a, $40
    ld [$c105], a

jr_001_45a1:
    ld hl, $2f42
    call Call_001_44a7
    jr jr_001_4582

    call Call_001_4389
    ld a, $53
    ld [$c1b9], a
    ld a, $50
    ld [$c1ba], a
    ld a, $41
    ld [$c1bc], a
    ld hl, $c100
    ld de, $a000
    ld bc, $0600

jr_001_45c4:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_001_45c4

    call Call_001_4394
    call Call_001_4515
    call Call_001_4488
    xor a
    call Call_000_0256
    ld a, $01
    ld [$c105], a
    ld hl, $2f48
    ld a, $14
    call Call_000_2fdc
    ld hl, $2f50
    call Call_001_44a7

jr_001_45ec:
    call Call_000_3ed2
    ld a, [$c100]
    and $08
    jr nz, jr_001_45ec

jr_001_45f6:
    call Call_000_3ed2
    ld a, [$c100]
    and $08
    jr z, jr_001_45f6

jr_001_4600:
    call Call_000_3ed2
    ld a, [$c100]
    and $08
    jr nz, jr_001_4600

    call Call_001_4389
    xor a
    ld [$a0b9], a
    ld [$a0ba], a
    ld [$a0bc], a
    call Call_001_4394
    ld a, [$c180]
    call Call_000_0256
    ld a, $01
    ld [$c105], a
    call Call_001_4515
    jp Jump_000_0405


    call Call_001_4488
    ld hl, $2f2c
    ld a, $14
    call Call_000_2fdc
    ld a, $20
    ld [$c105], a
    ld a, $80
    ld [$c1f2], a

jr_001_4640:
    call Call_000_3ed2
    ld a, [$c105]
    cp $5e
    ret z

    ld a, [$c1f2]
    dec a
    ld [$c1f2], a
    jr nz, jr_001_4657

    ld a, $40
    ld [$c105], a

jr_001_4657:
    ld hl, $2f34
    call Call_001_44a7
    jr jr_001_4640

    call Call_001_4515
    call Call_001_4488
    ld a, [$c1c3]
    cp $88
    jr c, jr_001_4694

    ld c, $80
    cp $88
    jr z, jr_001_468c

    ld c, $81
    cp $89
    jr z, jr_001_468c

    ld c, $82
    cp $8a
    jr z, jr_001_468c

    ld c, $83
    cp $8b
    jr z, jr_001_468c

    ld c, $84
    cp $8c
    jr z, jr_001_468c

    ld c, $85

jr_001_468c:
    ld a, c
    ld [$c1bf], a
    pop de
    jp Jump_000_0405


jr_001_4694:
    ld a, [$c1c3]
    ld hl, $2f56
    cp $7e
    jr c, jr_001_46bd

    ld hl, $2f64
    cp $80
    jr c, jr_001_46bd

    ld hl, $2f72
    cp $82
    jr c, jr_001_46bd

    ld hl, $2f80
    cp $84
    jr c, jr_001_46bd

    ld hl, $2f8e
    cp $86
    jr c, jr_001_46bd

    ld hl, $2f9c

jr_001_46bd:
    ld a, $14
    call Call_000_2fdc
    xor a
    ldh [rVBK], a
    ld hl, $9a40
    ld de, $9800
    ld bc, $01c0
    call Call_000_323c
    ld a, $01
    ldh [rVBK], a
    ld hl, $9a40
    ld de, $9800
    ld bc, $01c0
    call Call_000_323c
    xor a
    ldh [rVBK], a
    xor a
    ld [$c1c0], a
    ld a, $20
    ld [$c105], a
    ld a, $80
    ld [$c1f2], a

jr_001_46f2:
    call Call_000_3ed2
    call Call_000_3ed2
    ld a, [$c105]
    cp $5e
    jr z, jr_001_476a

    ld a, [$c1f2]
    dec a
    ld [$c1f2], a
    jr nz, jr_001_470d

    ld a, $40
    ld [$c105], a

jr_001_470d:
    ld a, [$c1c3]
    and $01
    jr z, jr_001_4729

    ld a, [$c1f2]
    and $0f
    ld e, a
    ld d, $00
    ld hl, $477f
    add hl, de
    ld a, [$c1c0]
    add [hl]
    ld [$c1c0], a
    jr jr_001_473c

jr_001_4729:
    ld a, [$c1f2]
    and $0f
    ld e, a
    ld d, $00
    ld hl, $476f
    add hl, de
    ld a, [$c1c0]
    add [hl]
    ld [$c1c0], a

jr_001_473c:
    ld a, [$c1c3]
    ld hl, $2f5e
    cp $7e
    jr c, jr_001_4765

    ld hl, $2f6c
    cp $80
    jr c, jr_001_4765

    ld hl, $2f7a
    cp $82
    jr c, jr_001_4765

    ld hl, $2f88
    cp $84
    jr c, jr_001_4765

    ld hl, $2f96
    cp $86
    jr c, jr_001_4765

    ld hl, $2fa4

jr_001_4765:
    call Call_001_44a7
    jr jr_001_46f2

jr_001_476a:
    xor a
    ld [$c1c0], a
    ret


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
    cp $fe
    db $fd
    db $fc
    ei
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    inc bc
    inc b
    dec b
    call Call_001_4515
    call Call_001_4488
    ld hl, $07ff
    ld a, l
    ld [$c1c4], a
    ld a, h
    ld [$c1c5], a
    ld a, $20
    ld [$c105], a

Jump_001_47a5:
    call Call_000_3ed2
    ld a, [$c1c5]
    add a
    ld l, a
    ld h, $00
    ld de, $4836
    add hl, de
    ld a, [hl+]
    ld [$c17c], a
    ld a, [hl+]
    ld [$c11f], a
    xor a
    ld [$c17d], a
    ld a, [$c1c5]
    push af
    ld a, [$c1c4]
    push af
    ld a, [$c1c4]
    cp $ff
    call z, Call_000_0741
    pop af
    ld [$c1c4], a
    pop af
    ld [$c1c5], a
    ld a, [$c100]
    and $08
    jr z, jr_001_47fa

    ld a, [$c1c5]
    or a
    jr nz, jr_001_47f1

    ld a, [$c1c4]
    cp $20
    jr nc, jr_001_47f1

    call Call_001_4515
    jp Jump_000_016b


jr_001_47f1:
    xor a

jr_001_47f2:
    ld [$c1c5], a
    ld a, $1f
    ld [$c1c4], a

jr_001_47fa:
    ld a, [$c1c4]
    dec a
    ld [$c1c4], a
    cp $ff
    jr nz, jr_001_4813

    ld a, [$c1c5]
    dec a
    ld [$c1c5], a
    cp $ff
    jr nz, jr_001_4813

    jp Jump_000_016b


jr_001_4813:
    ld a, [$c1c4]
    cp $e0
    jr nc, jr_001_4820

    cp $20
    jr c, jr_001_4827

    jr jr_001_4830

jr_001_4820:
    sub $e0
    ld [$c105], a
    jr jr_001_4830

jr_001_4827:
    ld c, a
    ld a, $1f
    sub c
    add $40
    ld [$c105], a

jr_001_4830:
    call Call_001_44cd
    jp Jump_001_47a5


    dec de
    inc b
    ld hl, $2402
    ld bc, $022a
    scf
    inc bc
    ld d, a
    nop
    ld e, l
    ld bc, $0070
    ld d, b
    ld c, b
    ld d, b
    ld c, b
    ld e, b
    ld c, b
    ld h, b
    ld c, b
    ld l, b
    ld c, b
    inc d
    sbc b
    ld d, $98
    ld d, h
    sbc b
    ld d, [hl]
    sbc b
    jr jr_001_47f2

    ld a, [de]
    sbc b
    ld e, b
    sbc b
    ld e, d
    sbc b
    inc e
    sbc b
    ld e, $98
    ld e, h
    sbc b
    ld e, [hl]
    sbc b
    sub h
    sbc b
    sub [hl]
    sbc b
    call nc, $d698
    sbc b

Call_001_4870:
    ld a, [$c30e]
    srl a
    srl a
    srl a
    cp $05
    jr c, jr_001_487f

    ld a, $04

jr_001_487f:
    add a
    ld e, a
    ld d, $00
    ld hl, $4846
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [$c112]
    srl a
    srl a
    srl a
    and $06
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld de, $9965
    ld c, $02

jr_001_48a1:
    call Call_000_328a
    ld a, [hl+]
    ld [de], a
    inc e
    ld a, [hl]
    ld [de], a
    ld a, l
    add $1f
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, e
    add $1f
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec c
    jr nz, jr_001_48a1

    ret


    ld hl, $c960
    call Call_000_3d85
    ld de, $1c4e
    ld bc, $8c4e
    ld a, [$c10c]
    cp $28
    jr z, jr_001_48d6

    ld de, $0000
    ld bc, $0000

jr_001_48d6:
    ld [hl], e
    inc l
    ld [hl], d
    inc l
    ld [hl], $48
    inc l
    ld [hl], $02
    inc l
    ld [hl], c
    inc l
    ld [hl], b
    inc l
    ld [hl], $48
    inc l
    ld [hl], $22
    ret


    ld a, [$c10d]
    and $f8
    add $16
    ld d, a
    ld a, [$c10c]
    and $f8
    add $24
    ld e, a
    ld hl, $c900
    call Call_000_3d85
    ld c, $30
    ld a, [$c10e]
    or a
    jr z, jr_001_490a

    ld c, $18

jr_001_490a:
    ld a, c
    ld [$c108], a
    xor a
    ld [$c109], a
    ld bc, $0403
    jp Jump_000_3d04


Call_001_4918:
    ld de, $6810
    ld hl, $c900
    call Call_000_3d85
    ld c, $00
    ld a, [$c11b]
    or a
    jr z, jr_001_492b

    ld c, $04

jr_001_492b:
    ld a, c
    ld [$c108], a
    ld a, $07
    ld [$c109], a
    ld bc, $0201
    jp Jump_000_3d04


    ld a, [$c10d]
    and $f8
    add $0d
    ld d, a
    ld a, [$c10c]
    and $f8
    add $02
    ld e, a
    ld hl, $c930
    call Call_000_3d85
    xor a
    ld [$c108], a
    ld a, $01
    ld [$c109], a
    ld bc, $0403
    jp Jump_000_3d04


    ld hl, $000d
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_001_4973

    and $7f
    inc a
    cp $0c
    jr c, jr_001_4971

    xor a
    jr jr_001_4973

jr_001_4971:
    or $80

jr_001_4973:
    ld [hl], a
    ret


Call_001_4975:
    ld hl, $c1fa
    ld a, [$c100]
    and $20
    jr nz, jr_001_4988

    ld a, [$c100]
    and $10
    jr nz, jr_001_498c

    jr jr_001_498e

jr_001_4988:
    ld [hl], $00
    jr jr_001_498e

jr_001_498c:
    ld [hl], $01

jr_001_498e:
    ld a, [$c1f8]
    push af
    ld a, [$c1f9]
    push af
    ld a, [hl]
    or a
    jr z, jr_001_49c0

    ld a, [$c1f9]
    ld h, a
    ld a, [$c1f8]
    sub $08
    ld l, a
    ld a, $fa
    ld bc, $642f
    call Call_000_3dda
    ld a, [$c1f9]
    ld h, a
    ld a, [$c1f8]
    add $03
    ld l, a
    ld a, $fa
    ld bc, $642d
    call Call_000_3dda
    jr jr_001_49e4

jr_001_49c0:
    ld a, [$c1f9]
    ld h, a
    ld a, [$c1f8]
    sub $08
    ld l, a
    ld a, $fa
    ld bc, $642d
    call Call_000_3dda
    ld a, [$c1f9]
    ld h, a
    ld a, [$c1f8]
    add $03
    ld l, a
    ld a, $fa
    ld bc, $642f
    call Call_000_3dda

jr_001_49e4:
    pop af
    ld [$c1f9], a
    pop af
    ld [$c1f8], a
    ret


    ld a, [$c1fa]
    or a
    jp nz, Jump_001_4a9e

    ld hl, $0f00
    ld bc, $63ee
    ld a, $fa
    call Call_000_3dda
    ld hl, $c1e7
    ld b, $06
    ld a, [$c30b]
    cp $92
    jr z, jr_001_4a0d

    ld b, $08

jr_001_4a0d:
    ld a, [hl]
    cp $00
    jr z, jr_001_4a24

    inc hl
    dec b
    jr nz, jr_001_4a0d

    ld hl, $0f00
    ld bc, $63ce
    ld a, $fa
    call Call_000_3dda
    jp Jump_001_4a99


jr_001_4a24:
    ld a, [$c1f4]
    cp $06
    jp z, Jump_001_4aa2

    cp $11
    jp z, Jump_001_4aa2

    cp $3a
    jp z, Jump_001_4aa2

    cp $49
    jp z, Jump_001_4aa2

    cp $4a
    jp z, Jump_001_4aa2

    cp $4b
    jp z, Jump_001_4aa2

    cp $4c
    jp z, Jump_001_4aa2

    cp $51
    jp z, Jump_001_4aa2

    cp $52
    jp z, Jump_001_4aa2

    cp $53
    jp z, Jump_001_4aa2

    cp $46
    jp z, Jump_001_4ad0

    cp $48
    jp z, Jump_001_4ad0

    cp $4f
    jp z, Jump_001_4ad0

    cp $50
    jp z, Jump_001_4ad0

    ld [hl], a
    cp $47
    jr nz, jr_001_4a79

    ld a, $8a
    ld [$c1bf], a
    jr jr_001_4a79

jr_001_4a79:
    ld a, [$c1c7]
    ld e, a
    ld d, $00
    ld hl, $c500
    add hl, de
    ld [hl], $00
    ld hl, $0f00
    ld bc, $63c0
    ld a, $fa
    call Call_000_3dda
    call Call_000_08b9
    call Call_000_11ad
    call Call_001_4457

Jump_001_4a99:
    ld b, $80
    call Call_000_02b2

Jump_001_4a9e:
    call Call_001_4515
    ret


Jump_001_4aa2:
    ld a, [$c1c7]
    ld e, a
    ld d, $00
    ld hl, $c500
    add hl, de
    ld [hl], $00
    ld hl, $0f00
    ld bc, $63c0
    ld a, $fa
    call Call_000_3dda
    call Call_000_08b9
    call Call_000_11ad
    call Call_001_4457
    ld a, $ff
    ld [$c126], a
    ld b, $80
    call Call_000_02b2
    call Call_001_4515
    ret


Jump_001_4ad0:
    ld a, [$c1c7]
    ld e, a
    ld d, $00
    ld hl, $c500
    add hl, de
    ld [hl], $00
    ld hl, $0f00
    ld bc, $63c0
    ld a, $fa
    call Call_000_3dda
    call Call_000_08b9
    call Call_000_11ad
    call Call_001_4457
    ld a, $ff
    ld [$c124], a
    ld b, $80
    call Call_000_02b2
    call Call_001_4515
    ret


Jump_001_4afe:
    ld a, [$c17c]
    cp $06
    jp z, Jump_001_4b11

    cp $38
    jp z, Jump_001_4b84

    cp $45
    jp z, Jump_001_4bc6

    ret


Jump_001_4b11:
    ld a, [$c487]
    or a
    ret nz

    ld a, [$c11f]
    cp $01
    jr z, jr_001_4b22

    cp $02
    jr z, jr_001_4b53

    ret


jr_001_4b22:
    ld a, $00
    ld [$c170], a
    ld a, $12
    ld [$c172], a
    ld a, $0a
    ld [$c174], a
    ld a, $10
    ld [$c176], a
    ld hl, $7a96
    ld a, [$c1c4]
    ld c, a
    and $07
    ret nz

    ld a, c
    and $1f
    srl a
    srl a
    srl a
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    jp Jump_000_3073


jr_001_4b53:
    ld a, $03
    ld [$c170], a
    ld a, $10
    ld [$c172], a
    ld a, $08
    ld [$c174], a
    ld a, $0b
    ld [$c176], a
    ld hl, $7aa2
    ld a, [$c1c4]
    ld c, a
    and $07
    ret nz

    ld a, c
    and $1f
    srl a
    srl a
    srl a
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    jp Jump_000_3073


Jump_001_4b84:
    ld a, [$c498]
    or a
    ret z

    ld a, [$c11f]
    cp $02
    jr z, jr_001_4b91

    ret


jr_001_4b91:
    ld a, $09
    ld [$c170], a
    ld a, $0f
    ld [$c172], a
    ld a, $00
    ld [$c174], a
    ld a, $09
    ld [$c176], a
    ld hl, $7b20
    ld a, [$c1c4]
    ld c, a
    and $07
    ret nz

    ld a, c
    and $1f
    ld c, a
    ld a, $1f
    sub c
    srl a
    srl a
    srl a
    ld c, a
    add a
    add c
    ld c, a
    ld b, $00
    add hl, bc
    jp Jump_000_3073


Jump_001_4bc6:
    ld a, [$c309]
    cp $0d
    ret nc

    cp $04
    ret c

    ld a, [$c312]
    cp $01
    ret nz

    ld a, [$c311]
    cp $40
    ret c

    ld a, [$c314]
    cp $ff
    jr z, jr_001_4bea

    ld a, [$c313]
    cp $70
    ret nc

    jr jr_001_4bf0

jr_001_4bea:
    ld a, [$c313]
    cp $b0
    ret c

jr_001_4bf0:
    ld a, [$c306]
    cp $05
    ret nz

    ld a, [$c307]
    cp $14
    jr z, jr_001_4c06

    cp $1c
    jr z, jr_001_4c06

    cp $24
    jr z, jr_001_4c06

    ret


jr_001_4c06:
    ld a, [$c1b2]
    cp $03
    ret nc

    inc a
    ld [$c1b2], a
    cp $03
    jr nc, jr_001_4c17

    jp Jump_000_0942


jr_001_4c17:
    ld a, $ff
    ld [$c450], a
    ld a, [$c17c]
    ld l, a
    ld a, [$c17d]
    ld h, a
    add hl, hl
    add hl, hl
    ld de, $71b5
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    ld [$c174], a
    ld a, $10
    ld [$c176], a
    xor a
    ld [$c170], a
    ld a, $14
    ld [$c172], a
    jp Jump_000_3080


Call_001_4c42:
    ld a, $02
    ld [$c174], a
    ld a, $08
    ld [$c176], a
    ld a, $07
    ld [$c170], a
    ld a, $0d
    ld [$c172], a
    ld hl, $7bc5
    jp Jump_000_3073


Call_001_4c5c:
    ld a, $00
    ld [$c174], a
    ld a, $10
    ld [$c176], a
    ld a, $00
    ld [$c170], a
    ld a, $14
    ld [$c172], a
    ld hl, $7bbf
    call Call_000_3073

Call_001_4c76:
    ld a, [$c2e3]
    ld c, a
    ld a, [$c2e4]
    cp c
    jr z, jr_001_4c86

    ld bc, $7bbf
    call Call_001_4c8f

jr_001_4c86:
    ld a, [$c2e3]
    ld bc, $7bc2
    jp Jump_001_4c8f


Call_001_4c8f:
Jump_001_4c8f:
    add a
    add a
    ld e, a
    ld d, $00
    ld hl, $4cad
    add hl, de
    ld a, [hl+]
    ld [$c170], a
    ld a, [hl+]
    ld [$c172], a
    ld a, [hl+]
    ld [$c174], a
    ld a, [hl+]
    ld [$c176], a
    ld l, c
    ld h, b
    jp Jump_000_3073


    ld [bc], a
    inc b
    rlca
    add hl, bc
    inc b
    ld b, $07
    add hl, bc
    ld b, $08
    rlca
    add hl, bc
    ld [$070a], sp
    add hl, bc
    ld a, [bc]
    inc c
    rlca
    add hl, bc
    inc c
    ld c, $07
    add hl, bc
    ld c, $10
    rlca
    add hl, bc
    db $10
    ld [de], a
    rlca
    add hl, bc
    ld [bc], a
    inc b
    add hl, bc
    dec bc
    inc b
    ld b, $09
    dec bc
    ld b, $08
    add hl, bc
    dec bc
    ld [$090a], sp
    dec bc
    ld a, [bc]
    inc c
    add hl, bc
    dec bc
    inc c
    ld c, $09
    dec bc
    ld c, $10
    add hl, bc
    dec bc
    db $10
    ld [de], a
    add hl, bc
    rrca
    ld [bc], a
    inc b
    dec bc
    dec c
    inc b
    ld b, $0b
    dec c
    ld b, $08
    dec bc
    dec c
    ld [$0b0a], sp
    dec c
    ld a, [bc]
    inc c
    dec bc
    dec c
    inc c
    ld c, $0b
    dec c
    ld c, $10
    dec bc
    dec c
    db $10
    ld [de], a
    add hl, bc
    rrca
    ld [bc], a
    inc b
    dec c
    rrca
    inc b
    ld b, $0d
    rrca
    ld b, $08
    dec c
    rrca
    ld [$0d0a], sp
    rrca
    ld a, [bc]
    inc c
    dec c
    rrca
    inc c
    db $10
    dec c
    rrca
    inc c
    db $10
    dec c
    rrca
    db $10
    ld [de], a
    add hl, bc
    rrca

Call_001_4d2d:
    ld hl, $7be3
    jr jr_001_4d44

Call_001_4d32:
    ld hl, $7bd7
    jr jr_001_4d44

Call_001_4d37:
    ld hl, $7bda
    jr jr_001_4d44

Call_001_4d3c:
    ld hl, $7bdd
    jr jr_001_4d44

Call_001_4d41:
    ld hl, $7be0

jr_001_4d44:
    ld a, $02
    ld [$c174], a
    ld a, $0e
    ld [$c176], a
    ld a, $02
    ld [$c170], a
    ld a, $12
    ld [$c172], a
    call Call_000_3073
    jp Jump_000_0c2e


    xor a
    ld [$c174], a
    ld a, $10
    ld [$c176], a
    xor a
    ld [$c170], a
    ld a, $14
    ld [$c172], a
    call Call_000_3080
    xor a
    ld [$c1c4], a
    call Call_000_0942
    jp Jump_001_4afe


    ld a, [$c311]
    ld e, a
    ld a, [$c312]
    ld d, a
    call Call_001_7135
    ld c, e
    ld b, d
    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call Call_001_7135
    ld a, [$c1f4]
    cp $35
    jp z, Jump_001_5554

    cp $0e
    jp z, Jump_001_5597

    cp $1e
    jp z, Jump_001_55d3

    cp $23
    jp z, Jump_001_5459

    cp $1d
    jp z, Jump_001_54f1

    cp $3b
    jp z, Jump_001_53eb

    cp $29
    jp z, Jump_001_5422

    cp $28
    jp z, Jump_001_55a2

    cp $1c
    jp z, Jump_001_55ad

    cp $22
    jp z, Jump_001_55b8

    cp $45
    jp z, Jump_001_52d9

    cp $39
    jp z, Jump_001_52d9

    cp $3f
    jp z, Jump_001_52d9

    cp $47
    jp z, Jump_001_52d9

    cp $26
    jp z, Jump_001_5277

    cp $18
    jp z, Jump_001_537d

    cp $14
    jp z, Jump_001_523a

    cp $41
    jp z, Jump_001_51d5

    cp $56
    jp z, Jump_001_50c2

    cp $0f
    jp z, Jump_001_4fed

    cp $15
    jp z, Jump_001_4fed

    cp $1b
    jp z, Jump_001_4fed

    cp $20
    jp z, Jump_001_4fa9

    cp $31
    jp z, Jump_001_4f61

    cp $09
    jp z, Jump_001_4ef3

    cp $0a
    jp z, Jump_001_4e8a

    cp $04
    jp z, Jump_001_4ec0

    cp $54
    jp z, Jump_001_4e56

    cp $5a
    jp z, Jump_001_4e2a

    ret


Jump_001_4e2a:
    ld a, [$c17c]
    cp $58
    ret nz

    ld a, b
    or a
    ret nz

    ld a, c
    cp $27
    ret nz

    ld a, d
    cp $ff
    jr z, jr_001_4e42

    ld a, e
    cp $09
    ret nc

    jr jr_001_4e46

jr_001_4e42:
    ld a, e
    cp $e5
    ret c

jr_001_4e46:
    ld a, [$c309]
    cp $10
    ret nc

    ld [hl], $00
    ld a, $ff
    ld [$c49c], a
    jp Jump_001_5623


Jump_001_4e56:
    ld a, [$c17c]
    cp $5d
    ret nz

    ld a, b
    cp $ff
    jr z, jr_001_4e67

    ld a, c
    cp $06
    ret nc

    jr jr_001_4e6b

jr_001_4e67:
    ld a, c
    cp $fa
    ret c

jr_001_4e6b:
    ld a, d
    cp $ff
    ret nz

    ld a, e
    cp $d8
    ret nc

    cp $d4
    ret c

    ld a, [$c309]
    cp $08
    jr c, jr_001_4e80

    cp $18
    ret c

jr_001_4e80:
    ld [hl], $00
    ld a, $ff
    ld [$c4df], a
    jp Jump_001_5623


Jump_001_4e8a:
    ld a, [$c17c]
    cp $41
    ret nz

    ld a, b
    or a
    ret nz

    ld a, c
    cp $7e
    ret c

    cp $80
    ret nc

    ld a, d
    or a
    ret nz

    ld a, e
    cp $1c
    ret c

    cp $24
    ret nc

    ld a, [$c309]
    cp $10
    ret c

    ld [hl], $00
    ld a, $ff
    ld [$c4d9], a
    ld a, [$c4da]
    or a
    jp z, Jump_001_5623

    ld a, $ff
    ld [$c44d], a
    jp Jump_001_5623


Jump_001_4ec0:
    ld a, [$c17c]
    cp $41
    ret nz

    ld a, b
    or a
    ret nz

    ld a, c
    cp $03
    ret nc

    ld a, d
    or a
    ret nz

    ld a, e
    cp $29
    ret c

    cp $30
    ret nc

    ld a, [$c309]
    cp $10
    ret nc

    ld [hl], $00
    ld a, $ff
    ld [$c4da], a
    ld a, [$c4d9]
    or a
    jp z, Jump_001_5623

    ld a, $ff
    ld [$c44d], a
    jp Jump_001_5623


Jump_001_4ef3:
    ld a, [$c17c]
    cp $1f
    jp z, Jump_001_4f01

    cp $22
    jp z, Jump_001_4f31

    ret


Jump_001_4f01:
    ld a, b
    cp $ff
    jr z, jr_001_4f0c

    ld a, c
    cp $04
    ret nc

    jr jr_001_4f10

jr_001_4f0c:
    ld a, c
    cp $f4
    ret c

jr_001_4f10:
    ld a, d
    cp $ff
    ret nz

    ld a, e
    cp $f5
    ret nc

    ld a, [$c309]
    cp $08
    ret c

    cp $18
    ret nc

    ld a, [$c4cb]
    or a
    ret nz

    ld a, $ff
    ld [$c4cb], a
    ld [$c541], a
    jp Jump_001_5623


Jump_001_4f31:
    ld a, b
    cp $ff
    ret nz

    ld a, c
    cp $f0
    ret c

    ld a, d
    cp $ff
    ret nz

    ld a, e
    cp $e9
    ret c

    cp $f0
    ret nc

    ld a, [$c309]
    cp $18
    jr nc, jr_001_4f4e

    cp $08
    ret nc

jr_001_4f4e:
    ld a, [$c4bf]
    or a
    ret nz

    ld a, $ff
    ld [$c4bf], a
    ld [$c545], a
    ld [$c546], a
    jp Jump_001_5623


Jump_001_4f61:
    ld a, [$c17c]
    cp $18
    ret nz

    ld a, b
    cp $ff
    jr z, jr_001_4f72

    ld a, c
    cp $08
    ret nc

    jr jr_001_4f76

jr_001_4f72:
    ld a, c
    cp $f0
    ret c

jr_001_4f76:
    ld a, d
    or a
    ret nz

    ld a, e
    cp $20
    ret c

    ld a, [$c309]
    cp $08
    jr c, jr_001_4f87

    cp $18
    ret c

jr_001_4f87:
    ld a, [$c52e]
    or a
    ret nz

    ld [hl], $00
    ld a, $ff
    ld [$c531], a
    ld a, [$c11b]
    or a
    jr z, jr_001_4fa1

    ld a, $ff
    ld [$c413], a
    jp Jump_001_5623


jr_001_4fa1:
    ld a, $ff
    ld [$c41f], a
    jp Jump_001_5623


Jump_001_4fa9:
    ld a, [$c17c]
    cp $59
    jp z, Jump_001_4fb2

    ret


Jump_001_4fb2:
    ld a, b
    cp $ff
    ret nz

    ld a, c
    cp $8a
    ret c

    cp $90
    ret nc

    ld a, d
    cp $ff
    ret nz

    ld a, e
    cp $82
    ret c

    cp $8a
    ret nc

    ld a, [$c309]
    cp $08
    ret c

    cp $18
    ret nc

    ld [hl], $00
    ld a, $ff
    ld [$c443], a
    call Call_000_0c4c
    ld hl, $4003
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    call Call_000_0c50
    jp Jump_001_5623


Jump_001_4fed:
    ld a, [$c17c]
    cp $60
    jp z, Jump_001_5000

    cp $69
    jp z, Jump_001_5042

    cp $62
    jp z, Jump_001_5082

    ret


Jump_001_5000:
    ld a, b
    cp $ff
    ret nz

    ld a, c
    cp $92
    ret c

    cp $9a
    ret nc

    ld a, d
    cp $ff
    ret nz

    ld a, e
    cp $e8
    ret c

    cp $f0
    ret nc

    ld a, [$c309]
    cp $08
    jp c, Jump_001_5021

    cp $18
    ret c

Jump_001_5021:
    ld a, [$c4aa]
    or a
    ret nz

    ld [hl], $00
    call Call_000_0c4c
    ld hl, $411a
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, $ff
    ld [$c4aa], a
    call Call_000_0c50
    jp Jump_001_5623


Jump_001_5042:
    ld a, b
    or a
    ret nz

    ld a, c
    cp $57
    ret c

    cp $5f
    ret nc

    ld a, d
    or a
    ret nz

    ld a, e
    cp $4d
    ret c

    cp $55
    ret nc

    ld a, [$c309]
    cp $08
    jp c, Jump_001_5061

    cp $14
    ret c

Jump_001_5061:
    ld a, [$c4ab]
    or a
    ret nz

    ld [hl], $00
    call Call_000_0c4c
    ld hl, $411d
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, $ff
    ld [$c4ab], a
    call Call_000_0c50
    jp Jump_001_5623


Jump_001_5082:
    ld a, b
    or a
    ret nz

    ld a, c
    cp $29
    ret c

    cp $31
    ret nc

    ld a, d
    or a
    ret nz

    ld a, e
    cp $0b
    ret c

    cp $13
    ret nc

    ld a, [$c309]
    cp $08
    jp c, Jump_001_50a1

    cp $18
    ret c

Jump_001_50a1:
    ld a, [$c4ac]
    or a
    ret nz

    ld [hl], $00
    call Call_000_0c4c
    ld hl, $4120
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, $ff
    ld [$c4ac], a
    call Call_000_0c50
    jp Jump_001_5623


Jump_001_50c2:
    ld a, [$c17c]
    cp $3b
    jp z, Jump_001_5190

    cp $3e
    jp z, Jump_001_5130

    cp $3f
    jr z, jr_001_50d4

    ret


jr_001_50d4:
    ld a, b
    cp $ff
    ret nz

    ld a, c
    cp $d8
    ret c

    cp $dc
    ret nc

    ld a, d
    cp $ff
    ret nz

    ld a, e
    cp $e7
    ret c

    cp $f4
    ret nc

    ld a, [$c309]
    cp $10
    ret nc

    ld a, [$c2e2]
    or a
    ret nz

    ld a, $05
    ld [$c11f], a
    push hl
    call Call_000_3ed2
    call Call_001_4515
    call Call_000_0741
    call Call_000_06d6
    ld a, $01
    ld [$c105], a
    call Call_001_44cd
    pop hl
    ld b, $30
    call Call_000_02b2
    ld b, $04

jr_001_5117:
    push bc
    push hl
    call Call_000_3ed2
    ld hl, $c2e2
    inc [hl]
    call Call_000_0942
    ld b, $30
    call Call_000_02b2
    pop hl
    pop bc
    dec b
    jr nz, jr_001_5117

    jp Jump_001_5623


Jump_001_5130:
    ld a, b
    or a
    ret nz

    ld a, c
    cp $0c
    ret c

    cp $14
    ret nc

    ld a, d
    cp $ff
    ret nz

    ld a, e
    cp $c0
    ret c

    cp $c8
    ret nc

    ld a, [$c309]
    cp $08
    jp c, Jump_001_5150

    cp $18
    ret c

Jump_001_5150:
    ld a, [$c2e1]
    or a
    ret nz

    ld a, $05
    ld [$c11f], a
    push hl
    call Call_000_3ed2
    call Call_001_4515
    call Call_000_0741
    call Call_000_06d6
    ld a, $01
    ld [$c105], a
    call Call_001_44cd
    pop hl
    ld b, $30
    call Call_000_02b2
    ld b, $02

jr_001_5177:
    push bc
    push hl
    call Call_000_3ed2
    ld hl, $c2e1
    inc [hl]
    call Call_000_0942
    ld b, $30
    call Call_000_02b2
    pop hl
    pop bc
    dec b
    jr nz, jr_001_5177

    jp Jump_001_5623


Jump_001_5190:
    ld a, [$c4c2]
    xor $ff
    ld [$c4c2], a
    cp $ff
    jp nz, Jump_001_5623

    ld de, $c320
    ld b, $07

jr_001_51a2:
    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $ed
    jr z, jr_001_51b8

    ld a, e
    add $20
    ld e, a
    ld a, d

Jump_001_51b0:
    adc $00
    ld d, a
    dec b
    jr nz, jr_001_51a2

jr_001_51b6:
    jr jr_001_51b6

jr_001_51b8:
    ld hl, $0012
    add hl, de
    ld a, [hl-]
    cp $80
    jp c, Jump_001_5623

    cp $ff
    jr c, jr_001_51cc

    ld a, [hl]
    cp $48
    jp nc, Jump_001_5623

jr_001_51cc:
    ld bc, $ffb8
    ld [hl], c
    inc hl
    ld [hl], b
    jp Jump_001_5623


Jump_001_51d5:
    ld a, [$c17c]
    cp $46
    jp z, Jump_001_51e3

    cp $3d
    jp z, Jump_001_5210

    ret


Jump_001_51e3:
    ld a, b
    or a
    ret nz

    ld a, c
    cp $65
    ret c

    cp $6d
    ret nc

    ld a, d
    or a
    ret nz

    ld a, e
    cp $0c
    ret c

    ld a, [$c309]
    cp $08
    jp c, Jump_001_51ff

    cp $18
    ret c

Jump_001_51ff:
    ld a, $ff
    ld [$c583], a
    ld [$c449], a
    xor a
    ld [$c447], a
    ld [hl], $00
    jp Jump_001_5623


Jump_001_5210:
    ld a, b
    or a
    ret nz

    ld a, c
    cp $10
    ret nc

    ld a, d
    cp $ff
    ret nz

    ld a, e
    cp $c2
    ret c

    ld a, e
    cp $ca
    ret nc

    ld a, [$c309]
    cp $10
    ret c

    ld a, $ff
    ld [$c574], a
    ld [$c447], a
    xor a
    ld [$c449], a
    ld [hl], $00
    jp Jump_001_5623


Jump_001_523a:
    ld a, [$c17c]
    cp $38
    ret nz

    ld a, b
    or a
    ret nz

    ld a, c
    cp $13
    ret c

    cp $1a
    ret nc

    ld a, d
    or a
    ret nz

    ld a, e
    cp $58
    ret c

    ld a, [$c309]
    cp $18
    jr nc, jr_001_525b

    cp $08
    ret nc

jr_001_525b:
    ld [hl], $00
    ld a, $ff
    ld [$c43f], a
    call Call_000_0c4c
    ld hl, $4003
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    call Call_000_0c50
    jp Jump_001_5623


Jump_001_5277:
    ld a, [$c17c]
    cp $37
    ret nz

    ld a, b
    or a
    ret nz

    ld a, c
    cp $1a
    ret nc

    ld a, d
    cp $ff
    ret nz

    ld a, e
    cp $e6
    ret c

    cp $f0
    ret nc

    ld a, [$c309]
    cp $08
    ret c

    cp $15
    ret nc

    ld a, $03
    ld [$c11f], a
    call Call_000_0641
    ld a, [$c498]
    or a
    jr z, jr_001_52bf

    call Call_000_0c4c
    xor a
    ld [$c498], a
    ld hl, $40a2
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    call Call_000_0c50
    jp Jump_001_5623


jr_001_52bf:
    call Call_000_0c4c
    ld a, $ff
    ld [$c498], a
    ld hl, $40a8
    call Call_000_0c0a
    call Call_000_0c2e

Jump_001_52d0:
    call Call_000_0c20
    call Call_000_0c50
    jp Jump_001_5623


Jump_001_52d9:
    ld a, [$c17c]
    cp $13
    ret nz

    ld a, b
    or a
    ret nz

    ld a, c
    cp $10
    ret nc

    ld a, d
    cp $ff
    ret nz

    ld a, e
    cp $88
    ret nc

    ld a, [$c309]
    cp $08
    ret c

    cp $15
    ret nc

    ld a, [$c1f4]
    cp $45
    jr z, jr_001_5310

    cp $39
    jr z, jr_001_5324

    cp $3f
    jr z, jr_001_531a

    ld a, $ff
    ld [$c496], a
    ld [hl], $00
    jp Jump_001_532b


Call_001_5310:
jr_001_5310:
    ld a, $ff
    ld [$c495], a
    ld [hl], $00
    jp Jump_001_532b


jr_001_531a:
    ld a, $ff
    ld [$c494], a
    ld [hl], $00
    jp Jump_001_532b


jr_001_5324:
    ld a, $ff
    ld [$c493], a
    ld [hl], $00

Jump_001_532b:
    ld a, [$c493]
    cp $ff
    jr nz, jr_001_536f

    ld a, [$c494]
    cp $ff
    jr nz, jr_001_536f

    ld a, [$c495]
    cp $ff
    jr nz, jr_001_536f

    ld a, [$c496]
    cp $ff
    jr nz, jr_001_536f

    ld a, $ff
    ld [$c41d], a
    ld a, $04
    ld [$c11f], a
    call Call_000_0641
    ld hl, $4078
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4003
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_001_5623


jr_001_536f:
    ld a, $04
    ld [$c11f], a
    call Call_000_0641
    call Call_000_0c2e
    jp Jump_001_5623


Jump_001_537d:
    ld a, [$c49d]
    or a
    ret


    ld a, [$c17c]
    cp $54
    ret nz

    ld a, b
    cp $ff
    ret nz

    ld a, c
    cp $ea
    ret nc

    ld a, d
    cp $ff
    ret nz

    ld a, e
    cp $e0
    ret c

    ld a, [$c309]
    cp $10
    ret c

    ld [hl], $00
    ld a, $ff
    ld [$c49e], a
    ld [$c462], a
    call Call_000_0c4c
    ld hl, $4003
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    call Call_000_0c50
    ld de, $c320
    ld b, $07

jr_001_53bf:
    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $ea
    jr z, jr_001_53d5

    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld e, a
    dec b
    jr nz, jr_001_53bf

jr_001_53d3:
    jr jr_001_53d3

jr_001_53d5:
    ld hl, $0011
    add hl, de
    ld bc, $0150
    ld [hl], c
    inc hl
    ld [hl], b
    xor a
    ld [$c6fa], a
    ld a, $ff
    ld [$c6fb], a
    jp Jump_001_5623


Jump_001_53eb:
    ld a, [$c17c]
    cp $14
    ret nz

    ld a, b
    cp $ff
    jr z, jr_001_53fc

    ld a, c
    cp $10
    ret nc

    jr jr_001_5400

jr_001_53fc:
    ld a, c
    cp $f0
    ret c

jr_001_5400:
    ld a, d
    or a
    ret nz

    ld a, e
    cp $08
    ret c

    ld a, [$c309]
    cp $08
    jp c, Jump_001_5412

    cp $18
    ret c

Jump_001_5412:
    ld a, $00
    ld [hl], a
    ld a, $89
    ld [$c1bf], a
    ld a, $ff
    ld [$c527], a
    jp Jump_001_5623


Jump_001_5422:
    ld a, [$c17c]
    cp $14
    ret nz

    ld a, b
    cp $ff
    jr z, jr_001_5433

    ld a, c
    cp $10
    ret nc

    jr jr_001_5437

jr_001_5433:
    ld a, c
    cp $f0
    ret c

jr_001_5437:
    ld a, d
    or a
    ret nz

    ld a, e
    cp $08
    ret c

    ld a, [$c309]
    cp $08
    jp c, Jump_001_5449

    cp $18
    ret c

Jump_001_5449:
    ld a, $00
    ld [hl], a
    ld a, $8a
    ld [$c1bf], a
    ld a, $ff
    ld [$c528], a
    jp Jump_001_5623


Jump_001_5459:
    ld a, [$c17c]
    cp $01
    jr z, jr_001_5490

    cp $07
    ret nz

    ld a, b
    cp $ff
    ret nz

    ld a, c
    cp $84
    ret nc

    ld a, d
    or a
    jp z, Jump_001_5476

    ld a, e
    cp $f8
    ret c

    jr jr_001_547a

Jump_001_5476:
    ld a, e
    cp $08
    ret nc

jr_001_547a:
    ld a, [$c309]
    cp $10
    ret c

    ld a, [$c530]
    or a
    ret nz

    ld a, $ff
    ld [$c513], a
    ld a, $00
    ld [hl], a
    jp Jump_001_5623


jr_001_5490:
    ld a, b
    or a
    ret nz

    ld a, c
    cp $70
    ret c

    ld a, d
    or a
    jp z, Jump_001_54a2

    ld a, e
    cp $f8
    ret c

    jr jr_001_54a6

Jump_001_54a2:
    ld a, e
    cp $08
    ret nc

jr_001_54a6:
    ld a, [$c309]
    cp $10
    ret nc

    ld a, [$c502]
    or a
    ret nz

    ld a, $ff
    ld [$c52f], a
    ld a, $00
    ld [hl], a
    ld de, $c320
    ld b, $07

jr_001_54be:
    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $e2
    jr z, jr_001_54d4

    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld e, a
    dec b
    jr nz, jr_001_54be

jr_001_54d2:
    jr jr_001_54d2

jr_001_54d4:
    ld hl, $0011
    add hl, de
    ld bc, $00d8
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld bc, $0150
    ld [hl], c
    inc hl
    ld [hl], b
    xor a
    ld [$c6f2], a
    ld a, $ff
    ld [$c6f3], a
    jp Jump_001_5623


Jump_001_54f1:
    ld a, [$c17c]
    cp $01
    jr z, jr_001_5528

    cp $07
    ret nz

    ld a, b
    cp $ff
    ret nz

    ld a, c
    cp $84
    ret nc

    ld a, d
    or a
    jp z, Jump_001_550e

    ld a, e
    cp $f8
    ret c

    jr jr_001_5512

Jump_001_550e:
    ld a, e
    cp $08
    ret nc

jr_001_5512:
    ld a, [$c309]
    cp $10
    ret c

    ld a, [$c513]
    or a
    ret nz

    ld a, $ff
    ld [$c530], a
    ld a, $00
    ld [hl], a
    jp Jump_001_5623


jr_001_5528:
    ld a, b
    or a
    ret nz

    ld a, c
    cp $70
    ret c

    ld a, d
    or a
    jp z, Jump_001_553a

    ld a, e
    cp $f8
    ret c

    jr jr_001_553e

Jump_001_553a:
    ld a, e
    cp $08
    ret nc

jr_001_553e:
    ld a, [$c309]
    cp $10
    ret nc

    ld a, [$c52f]
    or a
    ret nz

    ld a, $ff
    ld [$c502], a
    ld a, $00
    ld [hl], a
    jp Jump_001_5623


Jump_001_5554:
    ld a, [$c17c]
    cp $07
    ret nz

    ld a, b
    cp $ff
    ret nz

    ld a, c
    cp $e0
    ret c

    cp $f8
    ret nc

    ld a, d
    or a
    ret nz

    ld a, e
    cp $05
    ret nc

    ld a, [$c309]
    cp $15
    ret nc

    cp $0c
    ret c

    ld a, [$c30b]
    cp $92
    jr z, jr_001_5587

    ld a, $00
    ld [hl], a
    ld a, $ff
    ld [$c485], a
    jp Jump_001_5623


jr_001_5587:
    ld a, $08
    ld [$c1bf], a
    ld a, $00
    ld [hl], a
    ld a, $ff
    ld [$c484], a
    jp Jump_001_5623


Jump_001_5597:
    ld a, $00
    ld [hl], a
    ld a, $20
    ld [$c30e], a
    jp Jump_001_5634


Jump_001_55a2:
    ld a, $00
    ld [hl], a
    ld c, $0c
    call Call_001_55c3
    jp Jump_001_5634


Jump_001_55ad:
    ld a, $00
    ld [hl], a
    ld c, $0c
    call Call_001_55c3
    jp Jump_001_5634


Jump_001_55b8:
    ld a, $00
    ld [hl], a
    ld c, $0c
    call Call_001_55c3
    jp Jump_001_5634


Call_001_55c3:
    ld a, [$c30e]
    add c
    ld [$c30e], a
    cp $21
    ret c

    ld a, $20
    ld [$c30e], a
    ret


Jump_001_55d3:
    ld a, [$c17c]
    cp $06
    ret nz

    ld a, b
    cp $ff
    ret nz

    ld a, c
    cp $b6
    ret nc

    ld a, d
    or a
    ret nz

    ld a, e
    cp $05
    ret nc

    ld a, [$c309]
    cp $18
    jp nc, Jump_001_55f3

    cp $09
    ret nc

Jump_001_55f3:
    push hl
    ld a, $04
    ld [$c11f], a
    call Call_000_0641
    call Call_000_0c4c
    ld hl, $4003
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    call Call_000_0c50
    pop hl
    ld a, $00
    ld [hl], a
    ld a, $ff
    ld [$c487], a
    ld [$c5c9], a
    ld [$c5ca], a
    ld [$c5cb], a
    jp Jump_001_5623


Jump_001_5623:
    pop hl
    pop hl
    pop hl
    call Call_001_4515
    call Call_001_4488
    ld a, $01
    ld [$c105], a
    jp Jump_000_0405


Jump_001_5634:
    ld a, $04
    ld [$c123], a
    call Call_000_34a9
    call Call_000_3667
    call Call_000_34f7
    call Call_000_08c0
    ld b, $10
    jp Jump_000_02b2


    ld hl, $0038
    ld de, $002e
    ld bc, $0041
    ld a, [$c17c]
    cp $07
    jp z, Jump_001_5681

    cp $0a
    jp z, Jump_001_568a

    cp $35
    jp z, Jump_001_5693

    cp $3a
    jp z, Jump_001_569f

    cp $4c
    jp z, Jump_001_56a7

    cp $5e
    jp z, Jump_001_56b9

    cp $59
    jp z, Jump_001_56b0

    cp $60
    jp z, Jump_001_56c2

    jp Jump_001_56ce


Jump_001_5681:
    ld a, [$c11f]
    cp $01
    jr nz, jr_001_56ce

    jr jr_001_56cb

Jump_001_568a:
    ld a, [$c11f]
    cp $06
    jr nz, jr_001_56ce

    jr jr_001_56cb

Jump_001_5693:
    ld a, [$c11f]
    or a
    jr z, jr_001_569d

    cp $02
    jr nz, jr_001_56ce

jr_001_569d:
    jr jr_001_56cb

Jump_001_569f:
    ld a, [$c11f]
    or a
    jr nz, jr_001_56ce

    jr jr_001_56cb

Jump_001_56a7:
    ld a, [$c11f]
    cp $04
    jr nz, jr_001_56ce

    jr jr_001_56cb

Jump_001_56b0:
    ld a, [$c11f]
    cp $05
    jr nz, jr_001_56ce

    jr jr_001_56cb

Jump_001_56b9:
    ld a, [$c11f]
    cp $04
    jr nz, jr_001_56ce

    jr jr_001_56cb

Jump_001_56c2:
    ld a, [$c11f]
    cp $04
    jr nz, jr_001_56ce

    jr jr_001_56cb

jr_001_56cb:
    ld hl, $002e

Jump_001_56ce:
jr_001_56ce:
    ld a, l
    ld [$c1db], a
    ld a, h
    ld [$c1dc], a
    ld a, e
    ld [$c1dd], a
    ld a, d
    ld [$c1de], a
    ld a, c
    ld [$c1df], a
    ld a, b
    ld [$c1e0], a
    ret


    ld hl, $c900
    call Call_000_3d85
    ld a, [$c10e]
    add a
    add a
    add a
    add a
    add $30
    ld [hl], a
    inc l
    ld [hl], $08
    inc l
    ld [hl], $00
    inc l
    ld [hl], $20
    ret


    ld bc, $4c06
    ld c, a
    ld b, c
    ld b, h
    jr nz, jr_001_5729

    ld b, a
    ld b, c
    ld c, l
    ld b, l
    nop
    ld bc, $5306
    ld b, c
    ld d, [hl]
    ld b, l
    jr nz, jr_001_5736

    ld b, a
    ld b, c
    ld c, l
    ld b, l
    nop
    ld b, e
    ld c, b
    ld d, d
    ld c, c
    ld d, e
    jr nz, @+$4c

    ld c, c
    ld c, h
    ld c, h
    jr nz, jr_001_5747

    ld b, l
    ld c, l

jr_001_5729:
    ld d, b
    ld d, h
    ld e, c
    jr nz, jr_001_572e

jr_001_572e:
    ld c, l
    ld c, b
    ld b, c
    ld c, h
    ld c, h
    jr nz, jr_001_5766

    ld b, [hl]

jr_001_5736:
    jr nz, jr_001_578b

    ld d, h
    ld c, a
    ld d, d
    ld sp, $3120
    ld b, [hl]
    jr nz, jr_001_5794

    ld d, h
    ld c, a
    ld d, d
    ld [hl-], a
    jr nz, @+$33

jr_001_5747:
    ld b, [hl]
    jr nz, jr_001_579d

    ld d, h
    ld c, a
    ld d, d
    inc sp
    jr nz, @+$33

    ld b, [hl]
    jr nz, jr_001_57a6

    ld d, h
    ld c, a
    ld d, d
    inc [hl]
    jr nz, @+$33

    ld b, [hl]
    jr nz, @+$32

    ld sp, $3020
    ld [hl-], a
    jr nz, @+$32

    inc sp
    jr nz, jr_001_5795

    inc [hl]

jr_001_5766:
    jr nz, jr_001_5798

    dec [hl]
    jr nz, jr_001_579b

    ld [hl], $20
    jr nc, jr_001_57a6

    jr nz, jr_001_57a1

    jr c, @+$22

    jr nc, jr_001_57ae

    jr nz, jr_001_57a8

    jr nc, jr_001_5799

    ld sp, $2031
    ld sp, $2032
    ld sp, $2033
    ld sp, $2034
    ld sp, $2035
    ld sp, $2036

jr_001_578b:
    ld sp, $2037
    ld sp, $2038
    ld sp, $2039

jr_001_5794:
    ld [hl-], a

jr_001_5795:
    jr nc, jr_001_57b7

    ld e, e

jr_001_5798:
    ld d, a

jr_001_5799:
    ld e, [hl]
    ld d, a

jr_001_579b:
    ld h, c
    ld d, a

jr_001_579d:
    ld h, h
    ld d, a
    ld h, a
    ld d, a

jr_001_57a1:
    ld l, d
    ld d, a
    ld l, l
    ld d, a
    ld [hl], b

jr_001_57a6:
    ld d, a
    ld [hl], e

jr_001_57a8:
    ld d, a
    db $76
    ld d, a
    ld a, c
    ld d, a
    ld a, h

jr_001_57ae:
    ld d, a
    ld a, a
    ld d, a
    add d
    ld d, a
    add l
    ld d, a
    adc b
    ld d, a

jr_001_57b7:
    adc e
    ld d, a
    adc [hl]
    ld d, a
    sub c
    ld d, a
    sub h
    ld d, a
    inc c
    inc b
    ld b, h
    ld c, a
    jr nz, @+$50

    ld c, a
    ld d, h
    jr nz, jr_001_5815

    ld c, a
    ld b, c
    ld b, h
    nop
    inc c
    inc b
    ld b, h
    ld c, a
    jr nz, jr_001_5821

    ld c, a
    ld d, h
    jr nz, jr_001_582a

    ld b, c
    ld d, [hl]
    ld b, l
    nop

Call_001_57db:
    ld a, $ff
    ld [$c1fd], a
    jr jr_001_57f8

    ld a, [de]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $9800
    add hl, bc
    inc de
    ld a, [de]
    add l
    ld l, a
    inc de

Call_001_57f4:
    xor a
    ld [$c1fd], a

Jump_001_57f8:
jr_001_57f8:
    ld a, [de]
    or a
    ret z

    cp $20
    jr z, jr_001_5865

    cp $39
    jr c, jr_001_582f

    cp $49
    jr c, jr_001_581b

    sub $49
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $9815

jr_001_5815:
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    jr jr_001_5843

jr_001_581b:
    sub $41
    push hl
    ld l, a
    ld h, $00

jr_001_5821:
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $9954
    add hl, bc

jr_001_582a:
    ld c, l
    ld b, h
    pop hl
    jr jr_001_5843

jr_001_582f:
    sub $30
    push hl
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $9814
    add hl, bc
    ld c, l
    ld b, h
    pop hl
    jr jr_001_5843

jr_001_5843:
    call Call_000_328a
    ld a, [bc]
    ld [hl], a
    ld a, $01
    ldh [rVBK], a
    ld a, [bc]
    ld [hl], a
    xor a
    ldh [rVBK], a
    ld a, [$c1fd]
    or a
    jr z, jr_001_5865

    push de
    push hl
    ld a, $16
    call Call_000_026b
    ld b, $10
    call Call_000_02b2
    pop hl
    pop de

jr_001_5865:
    inc hl
    inc de
    jp Jump_001_57f8


    ld de, $bf00
    ld b, $04

jr_001_586f:
    push bc
    push de
    call Call_001_4389
    ld a, [de]
    or a
    jr z, jr_001_589f

    ld a, $04
    sub b
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9882
    add hl, de
    ld a, $04
    sub b
    add a
    add a
    ld c, a
    add a
    add a
    add c
    ld de, $bf14
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a
    call Call_001_57f4
    jr jr_001_58b5

jr_001_589f:
    ld a, $04
    sub b
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9882
    add hl, de
    ld de, $5727
    call Call_001_57f4

jr_001_58b5:
    call Call_001_4394
    pop de
    inc de
    inc de
    inc de
    inc de
    pop bc
    dec b
    jr nz, jr_001_586f

    ret


    call Call_001_4389
    ld a, [$bffc]
    cp $4e
    jr nz, jr_001_58e4

    ld a, [$bffd]
    cp $53
    jr nz, jr_001_58e4

    ld a, [$bffe]
    cp $50
    jr nz, jr_001_58e4

    ld a, [$bfff]
    cp $41
    jr nz, jr_001_58e4

    jp Jump_001_4394


jr_001_58e4:
    ld hl, $a000
    ld bc, $1ffc

jr_001_58ea:
    xor a
    ld [hl+], a
    dec bc
    ld a, b
    or c
    jr nz, jr_001_58ea

    ld a, $4e
    ld [$bffc], a
    ld a, $53
    ld [$bffd], a
    ld a, $50
    ld [$bffe], a
    ld a, $41
    ld [$bfff], a
    jp Jump_001_4394


    call Call_000_3ee0
    ld a, [$c10e]
    add a
    add a
    ld e, a
    ld d, $00
    ld hl, $bf00
    add hl, de
    call Call_001_4389
    ld [hl], $ff
    ld a, [$c10e]
    add a
    add a
    ld c, a
    add a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, $bf14
    add hl, bc
    push hl
    ld de, $571b
    ld a, [$c30b]
    cp $92
    jr z, jr_001_593a

    ld de, $5721

jr_001_593a:
    ld bc, $0006
    call Call_000_321c
    ld de, $572e
    ld a, [$c17c]
    or a
    jr z, jr_001_594c

    ld de, $5737

jr_001_594c:
    ld bc, $0009
    call Call_000_321c
    push hl
    ld a, [$c181]
    add a
    ld e, a
    ld d, $00
    ld hl, $5797
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, [$c181]
    inc a
    ld [$c181], a
    pop hl
    ld bc, $0003
    call Call_000_321c
    ld [hl], $00
    ld a, [$c10e]
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld de, $9882
    add hl, de
    pop de
    call Call_001_57db
    ld de, $a600
    ld a, [$c10e]
    add a
    ld c, a
    add a
    add c
    add d
    ld d, a
    ld a, $53
    ld [$c1b9], a
    ld a, $50
    ld [$c1ba], a
    ld a, $41
    ld [$c1bc], a
    ld hl, $c100
    ld bc, $0600

jr_001_59a6:
    ld a, [hl+]
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_001_59a6

    call Call_001_4394
    ld b, $40
    jp Jump_000_02b2


    ld a, [$c10e]
    add a
    add a
    ld e, a
    ld d, $00
    ld hl, $bf00
    add hl, de
    call Call_001_4389
    ld a, [hl]
    or a
    jr z, jr_001_59f8

    ld de, $a600
    ld a, [$c10e]
    add a
    ld c, a
    add a
    add c
    add d
    ld d, a
    ld a, $53
    ld [$c1b9], a
    ld a, $50
    ld [$c1ba], a
    ld a, $41
    ld [$c1bc], a
    ld hl, $c100
    ld bc, $0600

jr_001_59ea:
    ld a, [de]
    ld [hl+], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_001_59ea

    call Call_001_4394
    ld a, $ff
    ret


jr_001_59f8:
    call Call_001_4394
    xor a
    ret


    ld a, [$c182]
    cp $ff
    jp z, Jump_001_685a

    ld a, [$c182]
    cp $02
    jp z, Jump_001_5b7b

    cp $05
    jp z, Jump_001_5b66

    cp $09
    jp z, Jump_001_5b3d

    cp $0a
    jp z, Jump_001_5b3d

    cp $20
    jp z, Jump_001_5a5c

    cp $2e
    jp z, Jump_001_5ae2

    cp $42
    jp z, Jump_001_5a36

    cp $92
    jp z, Jump_001_5aa3

    cp $f0
    jp nc, Jump_001_5bbb

    ret


Jump_001_5a36:
    ld a, [$c4cb]
    or a
    ret nz

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4090
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4093
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_5a5c:
    ld a, [$c4a7]
    or a
    ret nz

    ld a, $03
    ld [$c11f], a
    call Call_000_0641
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $417d
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4180
    call Call_000_0c0a

jr_001_5a81:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_5a81

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c4a7], a
    ld [$c520], a
    call Call_000_0741
    jp Jump_000_0c50


Jump_001_5aa3:
    ld a, [$c4a8]
    or a
    ret nz

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $417d
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4180
    call Call_000_0c0a

jr_001_5ac0:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_5ac0

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c4a8], a
    ld [$c592], a
    call Call_000_0741
    jp Jump_000_0c50


Jump_001_5ae2:
    ld a, [$c531]
    or a
    ret nz

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4051
    call Call_000_0c0a

jr_001_5af3:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_5af3

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld hl, $c1e7
    ld b, $06
    ld a, [$c11b]
    or a
    jr z, jr_001_5b14

    ld b, $08

jr_001_5b14:
    ld a, [hl]
    cp $37
    jr z, jr_001_5b20

    inc hl
    dec b
    jr nz, jr_001_5b14

    jp Jump_000_0c50


Call_001_5b20:
jr_001_5b20:
    ld [hl], $00
    ld a, $ff
    ld [$c52e], a
    ld a, [$c11b]
    or a
    jr z, jr_001_5b35

    ld a, $ff
    ld [$c413], a
    jp Jump_000_0c50


jr_001_5b35:
    ld a, $ff
    ld [$c41f], a
    jp Jump_000_0c50


Jump_001_5b3d:
    ld a, $05
    ld [$c11f], a
    call Call_000_0641
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4009
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $400c
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_5b66:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4006
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_5b7b:
    ld a, [$c52f]
    or a
    jr nz, jr_001_5b9e

    ld a, $06
    ld [$c11f], a
    call Call_000_0641
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4024
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


jr_001_5b9e:
    ld a, $06
    ld [$c11f], a
    call Call_000_0641
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4027
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_5bbb:
    ld a, [$c17c]
    cp $01
    jp z, Jump_001_5c82

    cp $02
    jp z, Jump_001_5cb8

    cp $04
    jp z, Jump_001_5cc6

    cp $05
    jp z, Jump_001_5d10

    cp $09
    jp z, Jump_001_5d1e

    cp $0c
    jp z, Jump_001_5da5

    cp $0d
    jp z, Jump_001_5dbb

    cp $0e
    jp z, Jump_001_5dc9

    cp $11
    jp z, Jump_001_5de1

    cp $13
    jp z, Jump_001_5def

    cp $14
    jp z, Jump_001_5e45

    cp $16
    jp z, Jump_001_5e62

    cp $18
    jp z, Jump_001_5e78

    cp $21
    jp z, Jump_001_5e90

    cp $22
    jp z, Jump_001_5eb5

    cp $23
    jp z, Jump_001_5edb

    cp $28
    jp z, Jump_001_5f69

    cp $29
    jp z, Jump_001_5f8f

    cp $30
    jp z, Jump_001_5ff4

    cp $32
    jp z, Jump_001_6019

    cp $37
    jp z, Jump_001_6039

    cp $38
    jp z, Jump_001_6059

    cp $49
    jp z, Jump_001_6087

    cp $4d
    jp z, Jump_001_6095

    cp $50
    jp z, Jump_001_611b

    cp $51
    jp z, Jump_001_6121

    cp $53
    jp z, Jump_001_6139

    cp $54
    jp z, Jump_001_6238

    cp $57
    jp z, Jump_001_62a0

    cp $5d
    jp z, Jump_001_62a6

    cp $5f
    jp z, Jump_001_6351

    cp $61
    jp z, Jump_001_63ab

    cp $63
    jp z, Jump_001_6413

    cp $65
    jp z, Jump_001_647b

    cp $68
    jp z, Jump_001_64c5

    cp $6a
    jp z, Jump_001_6511

    cp $6e
    jp z, Jump_001_657d

    cp $6f
    jp z, Jump_001_65e6

    cp $71
    jp z, Jump_001_67fe

    ret


Jump_001_5c82:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_5c9a

    cp $f1
    jr z, jr_001_5ca0

    cp $f2
    jr z, jr_001_5ca6

    cp $f3
    jr z, jr_001_5cac

    cp $f4
    jr z, jr_001_5cb2

    ret


jr_001_5c9a:
    ld hl, $401b
    jp Jump_001_6e21


jr_001_5ca0:
    ld hl, $402d
    jp Jump_001_6e21


jr_001_5ca6:
    ld hl, $4021
    jp Jump_001_6e21


jr_001_5cac:
    ld hl, $4018
    jp Jump_001_6e21


jr_001_5cb2:
    ld hl, $4015
    jp Jump_001_6e21


Jump_001_5cb8:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_5cc0

    ret


jr_001_5cc0:
    ld hl, $4006
    jp Jump_001_6e21


Jump_001_5cc6:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_5ce6

    cp $f1
    jr z, jr_001_5cec

    cp $f2
    jr z, jr_001_5cf2

    cp $f3
    jr z, jr_001_5cf8

    cp $f4
    jr z, jr_001_5cfe

    cp $f5
    jr z, jr_001_5d04

    cp $f6
    jr z, jr_001_5d0a

    ret


jr_001_5ce6:
    ld hl, $4036
    jp Jump_001_6e21


jr_001_5cec:
    ld hl, $400f
    jp Jump_001_6e21


jr_001_5cf2:
    ld hl, $4030
    jp Jump_001_6e21


jr_001_5cf8:
    ld hl, $4033
    jp Jump_001_6e21


jr_001_5cfe:
    ld hl, $4039
    jp Jump_001_6e21


jr_001_5d04:
    ld hl, $403c
    jp Jump_001_6e21


jr_001_5d0a:
    ld hl, $403f
    jp Jump_001_6e21


Jump_001_5d10:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_5d18

    ret


jr_001_5d18:
    ld hl, $4012
    jp Jump_001_6e21


Jump_001_5d1e:
    ld a, [$c514]
    or a
    ret z

    ld a, [$c4ce]
    or a
    jr nz, jr_001_5d75

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4177
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    call Call_001_682b
    or a
    jp z, Jump_000_0c50

    push hl
    ld hl, $417a
    call Call_000_0c0a
    pop hl

jr_001_5d4a:
    push hl
    call Call_001_4975
    pop hl
    ld a, [$c100]
    and $03
    jr z, jr_001_5d4a

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld [hl], $00
    ld a, $ff
    ld [$c4ce], a
    ld hl, $4174
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jr jr_001_5d78

jr_001_5d75:
    call Call_000_0c4c

jr_001_5d78:
    ld a, $03
    ld [$c11f], a
    call Call_000_0641
    ld hl, $4000
    call Call_000_0c0a

jr_001_5d86:
    push hl
    call Call_001_4975
    pop hl
    ld a, [$c100]
    and $03
    jr z, jr_001_5d86

    push hl
    call Call_000_0c20
    pop hl
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    xor a
    ld [$c514], a
    jp Jump_000_0c50


Jump_001_5da5:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_5db5

    cp $f1
    jr z, jr_001_5db5

    cp $f2
    jr z, jr_001_5db5

    ret


jr_001_5db5:
    ld hl, $4042
    jp Jump_001_6e21


Jump_001_5dbb:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_5dc3

    ret


jr_001_5dc3:
    ld hl, $4045
    jp Jump_001_6e21


Jump_001_5dc9:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_5dd5

    cp $f1
    jr z, jr_001_5ddb

    ret


jr_001_5dd5:
    ld hl, $404b
    jp Jump_001_6e21


jr_001_5ddb:
    ld hl, $400f
    jp Jump_001_6e21


Jump_001_5de1:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_5de9

    ret


jr_001_5de9:
    ld hl, $400f
    jp Jump_001_6e21


Jump_001_5def:
    ld a, $04
    ld [$c11f], a
    call Call_000_0641
    ld a, [$c493]
    or a
    jr z, jr_001_5e24

    ld a, [$c494]
    or a
    jr z, jr_001_5e24

    ld a, [$c495]
    or a
    jr z, jr_001_5e24

    ld a, [$c496]
    or a
    jr z, jr_001_5e24

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $407e
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


jr_001_5e24:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4078
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $407b
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_5e45:
    ld a, $01
    ld [$c11f], a
    call Call_000_0641
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4048
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_5e62:
    ld a, [$c182]
    cp $f2
    jr c, jr_001_5e6c

    jr z, jr_001_5e72

    ret


jr_001_5e6c:
    ld hl, $4081
    jp Jump_001_6e21


jr_001_5e72:
    ld hl, $400f
    jp Jump_001_6e21


Jump_001_5e78:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_5e84

    cp $f1
    jr z, jr_001_5e8a

    ret


jr_001_5e84:
    ld hl, $404e
    jp Jump_001_6e21


jr_001_5e8a:
    ld hl, $4054
    jp Jump_001_6e21


Jump_001_5e90:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_5e98

    ret


jr_001_5e98:
    ld a, $07
    ld [$c306], a
    xor a
    ld [$c307], a
    call Call_000_06d6
    ld b, $80
    call Call_000_02b2
    ld hl, $409c
    call Call_001_6e21
    ld a, $00
    ld [$c306], a
    ret


Jump_001_5eb5:
    ld a, [$c182]
    cp $f8
    jr z, jr_001_5ebd

    ret


jr_001_5ebd:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4096
    ld a, [$c4bf]
    or a
    jr z, jr_001_5ecf

    ld hl, $4099

jr_001_5ecf:
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_5edb:
    ld a, [$c182]
    cp $fe
    jr z, jr_001_5ee8

    ld hl, $4087
    jp Jump_001_6e21


jr_001_5ee8:
    ld a, [$c4d4]
    or a
    ret nz

    ld a, $03
    ld [$c11f], a
    call Call_000_0641
    ld b, $40
    call Call_000_02b2
    call Call_000_0c20
    call Call_000_0c4c
    call Call_001_6e90
    or a
    jp nz, Jump_000_0c50

    ld c, $e7
    call Call_001_6eb3
    or a
    jp z, Jump_000_0c50

    ld hl, $0011
    add hl, de
    ld a, [hl+]
    cp $f0
    jp nz, Jump_001_5f39

    ld a, [hl]
    cp $fe
    jp nz, Jump_001_5f39

    ld c, $e8
    call Call_001_6eb3
    or a
    jp z, Jump_000_0c50

    ld hl, $0013
    add hl, de
    ld a, [hl+]
    or a
    jp nz, Jump_001_5f39

    ld a, [hl]
    or a
    jp nz, Jump_001_5f39

    jr jr_001_5f52

Jump_001_5f39:
    ld a, $ff
    ld [$c1b1], a
    ld a, $01
    ld [$c105], a
    ld hl, $4003
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


jr_001_5f52:
    ld hl, $4003
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, $ff
    ld [$c4d4], a
    ld [$c547], a
    jp Jump_000_0c50


Jump_001_5f69:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_5f7d

Call_001_5f70:
    cp $f1
    jr z, jr_001_5f83

    cp $f2
    jr z, jr_001_5f89

    cp $f2
    jr z, jr_001_5f89

    ret


jr_001_5f7d:
    ld hl, $400f
    jp Jump_001_6e21


jr_001_5f83:
    ld hl, $400f
    jp Jump_001_6e21


jr_001_5f89:
    ld hl, $408d
    jp Jump_001_6e21


Jump_001_5f8f:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_5f9b

    cp $f8
    jr z, jr_001_5fa1

    ret


jr_001_5f9b:
    ld hl, $408d
    jp Jump_001_6e21


jr_001_5fa1:
    ld a, [$c4cc]
    or a
    ret nz

    ld a, $02
    ld [$c11f], a
    call Call_000_0641
    ld b, $80
    call Call_000_02b2
    call Call_000_0c20
    call Call_000_0c4c
    call Call_001_6e95
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c4cc], a
    ld de, $c320
    ld b, $07

jr_001_5fca:
    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $e6
    jr z, jr_001_5fe0

    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld e, a
    dec b
    jr nz, jr_001_5fca

jr_001_5fde:
    jr jr_001_5fde

jr_001_5fe0:
    ld hl, $0013
    add hl, de
    ld bc, $ff60
    ld [hl], c
    inc hl
    ld [hl], b
    xor a
    ld [$c6f5], a
    ld a, $ff
    ld [$c6f6], a
    ret


Jump_001_5ff4:
    ld a, [$c182]
    cp $f8
    jr z, jr_001_5ffc

    ret


jr_001_5ffc:
    call Call_000_0c20
    call Call_000_0c4c
    call Call_001_6e95
    or a
    jp nz, Jump_000_0c50

    ld a, [$c4c0]
    xor $ff
    ld [$c4c0], a
    ld a, $01
    ld [$c105], a
    jp Jump_000_0c50


Jump_001_6019:
    ld a, [$c182]
    cp $f8
    jr z, jr_001_6021

    ret


jr_001_6021:
    call Call_000_0c20
    call Call_000_0c4c
    call Call_001_6e95
    or a
    jp nz, Jump_000_0c50

    ld a, [$c4cd]
    xor $ff
    ld [$c4cd], a
    jp Jump_000_0c50


Jump_001_6039:
    ld a, [$c11f]
    cp $01
    jr z, jr_001_604e

    ld a, $03
    ld [$c11f], a
    call Call_000_0641
    ld hl, $40a2
    jp Jump_001_6e21


jr_001_604e:
    ld a, [$c498]
    or a
    ret nz

    ld hl, $40a5
    jp Jump_001_6e21


Jump_001_6059:
    ld a, [$c182]
    cp $f9
    jr z, jr_001_6081

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40ab
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $40ae
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


jr_001_6081:
    ld hl, $40b1
    jp Jump_001_6e21


Jump_001_6087:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_608f

    ret


jr_001_608f:
    ld hl, $400f
    jp Jump_001_6e21


Jump_001_6095:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_60a7

    cp $f8
    jp z, Jump_001_60ad

    cp $f9
    jp z, Jump_001_60dd

    ret


jr_001_60a7:
    ld hl, $400f
    jp Jump_001_6e21


Jump_001_60ad:
    ld a, [$c49b]
    or a
    ret nz

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40ea
    call Call_000_0c0a

jr_001_60be:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_60be

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c49b], a
    call Call_000_0641
    jp Jump_000_0c50


Jump_001_60dd:
    ld a, [$c49b]
    or a
    ret z

    ld a, [$c458]
    or a
    ret nz

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40ed
    call Call_000_0c0a

jr_001_60f3:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_60f3

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld hl, $40f0
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, $ff
    ld [$c458], a
    jp Jump_000_0c50


Jump_001_611b:
    ld hl, $4075
    jp Jump_001_6e21


Jump_001_6121:
    ld a, [$c182]
    cp $f0
    jr z, jr_001_612d

    cp $f1
    jr z, jr_001_6133

    ret


jr_001_612d:
    ld hl, $400f
    jp Jump_001_6e21


jr_001_6133:
    ld hl, $40bd
    jp Jump_001_6e21


Jump_001_6139:
    ld a, [$c182]
    cp $f8
    jp z, Jump_001_61ac

    cp $f9
    jp z, Jump_001_61da

    cp $fa
    jp z, Jump_001_617e

    cp $fb
    jp z, Jump_001_6151

    ret


Jump_001_6151:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40d2
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $40d5
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $40d8
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_617e:
    call Call_001_621d
    or a
    jp z, Jump_001_6208

    push hl
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40c6
    call Call_000_0c0a

jr_001_6192:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_6192

    pop hl
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld [hl], $05
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_61ac:
    call Call_001_621d
    or a
    jp z, Jump_001_6208

    push hl
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40c9
    call Call_000_0c0a

jr_001_61c0:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_61c0

    pop hl
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld [hl], $10
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_61da:
    call Call_001_621d
    or a
    jp z, Jump_001_6208

    push hl
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40cc
    call Call_000_0c0a

jr_001_61ee:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_61ee

    pop hl
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld [hl], $21
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_6208:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40cf
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Call_001_621d:
    ld hl, $c1e7
    ld b, $06
    ld a, [$c11b]
    or a
    jr z, jr_001_622a

    ld b, $08

jr_001_622a:
    ld a, [hl]
    cp $2e
    jr z, jr_001_6235

    inc hl
    dec b
    jr nz, jr_001_622a

    xor a
    ret


jr_001_6235:
    ld a, $ff
    ret


Jump_001_6238:
    ld a, [$c182]
    cp $f8
    jr z, jr_001_6240

    ret


jr_001_6240:
    ld a, [$c49d]
    or a
    jr z, jr_001_6260

    ld a, [$c49e]
    or a
    ret nz

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40e4
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


jr_001_6260:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40db
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $40de
    call Call_000_0c0a

jr_001_6278:
    call Call_001_4975
    ld a, [$c100]
    and $03

Call_001_6280:
    jr z, jr_001_6278

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c49d], a
    ld hl, $40e1
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_62a0:
    ld hl, $40e7
    jp Jump_001_6e21


Jump_001_62a6:
    ld a, [$c182]
    cp $f8
    jp z, Jump_001_62b9

    cp $f9
    jp z, Jump_001_631d

    cp $fa
    jp z, Jump_001_6343

    ret


Jump_001_62b9:
    ld a, [$c4a5]
    or a
    jr nz, jr_001_62ea

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40f3
    call Call_000_0c0a

jr_001_62cb:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_62cb

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c4a5], a
    call Call_000_06d6
    jp Jump_000_0c50


jr_001_62ea:
    ld a, [$c4a6]
    or a
    ret nz

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40f6
    call Call_000_0c0a

jr_001_62fb:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_62fb

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c4a6], a
    ld [$c5b9], a
    call Call_000_06d6
    jp Jump_000_0c50


Jump_001_631d:
    ld a, [$c4df]
    or a
    jr z, jr_001_633d

    ld a, $04
    ld [$c11f], a
    call Call_000_0641
    call Call_001_4d2d
    call Call_001_4d32
    call Call_001_4d37
    call Call_001_4d3c
    call Call_001_4d41
    jp Jump_000_06d6


jr_001_633d:
    ld hl, $40f9
    jp Jump_001_6e21


Jump_001_6343:
    ld a, $04
    ld [$c11f], a
    call Call_000_0641
    ld hl, $40fc
    jp Jump_001_6e21


Jump_001_6351:
    ld a, [$c182]
    cp $f8
    jp z, Jump_001_635a

    ret


Jump_001_635a:
    ld a, $04
    ld [$c11f], a
    call Call_000_0641
    ld b, $50
    call Call_000_02b2
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40ff
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4102
    call Call_000_0c0a

jr_001_637f:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_637f

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    call Call_000_0c50
    ld a, $28
    call Call_000_026b
    ld b, $0a
    call Call_000_02b2
    call Call_001_4c42
    ld b, $50
    call Call_000_02b2
    jp Jump_001_6a5b


Jump_001_63ab:
    ld a, [$c182]
    cp $f8
    jp z, Jump_001_63b4

    ret


Jump_001_63b4:
    ld a, [$c4aa]
    or a
    jr z, jr_001_63c7

    ld a, [$c4af]
    or a
    jr nz, jr_001_63c7

    ld a, $ff
    ld [$c4af], a
    jr jr_001_63e9

jr_001_63c7:
    ld a, [$c4ab]
    or a
    jr z, jr_001_63da

    ld a, [$c4b0]
    or a
    jr nz, jr_001_63da

    ld a, $ff
    ld [$c4b0], a
    jr jr_001_63e9

jr_001_63da:
    ld a, [$c4ac]
    or a
    ret z

    ld a, [$c4b1]
    or a
    ret nz

    ld a, $ff
    ld [$c4b1], a

jr_001_63e9:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $410e
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    call Call_000_0c50
    ld a, [$c4af]
    or a
    ret z

    ld a, [$c4b0]
    or a
    ret z

    ld a, [$c4b1]
    or a
    ret z

    ld a, $ff
    ld [$c470], a
    ret


Jump_001_6413:
    ld a, [$c182]
    cp $f8
    jr z, jr_001_6423

    cp $f9
    jr z, jr_001_6442

    cp $fa
    jr z, jr_001_6461

    ret


jr_001_6423:
    ld a, [$c4d6]
    or a
    ret nz

    call Call_000_0c20
    call Call_000_0c4c
    call Call_001_6e95
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c4d6], a
    ld a, $01
    ld [$c105], a
    jp Jump_000_0c50


jr_001_6442:
    ld a, [$c4d7]
    or a
    ret nz

    call Call_000_0c20
    call Call_000_0c4c
    call Call_001_6e95
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c4d7], a
    ld a, $01
    ld [$c105], a
    jp Jump_000_0c50


jr_001_6461:
    ld c, $03
    ld a, [$c4d6]
    or a
    jr z, jr_001_6471

    ld a, [$c4d7]
    or a
    jr z, jr_001_6471

    ld c, $04

jr_001_6471:
    ld a, c
    ld [$c11f], a
    call Call_000_0641
    jp Jump_000_0c2e


Jump_001_647b:
    ld a, [$c182]
    cp $f8
    jp z, Jump_001_6484

    ret


Jump_001_6484:
    ld a, [$c472]
    or a
    ret nz

    call Call_000_0c20
    call Call_000_0c4c
    call Call_001_6e95
    or a
    jp nz, Jump_000_0c50

    ld a, [$c4ad]
    or a
    jr z, jr_001_64b6

    ld a, [$c4ae]
    or a
    jr z, jr_001_64b6

    ld hl, $4003
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, $ff
    ld [$c472], a
    jp Jump_000_0c50


jr_001_64b6:
    ld hl, $4111
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_64c5:
    ld a, [$c182]
    cp $f8
    jp z, Jump_001_64ce

    ret


Jump_001_64ce:
    ld a, [$c4ad]
    or a
    jr nz, jr_001_650b

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4123
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4126
    call Call_000_0c0a

jr_001_64ec:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_64ec

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c4ad], a
    call Call_000_06d6
    jp Jump_000_0c50


jr_001_650b:
    ld hl, $4129
    jp Jump_001_6e21


Jump_001_6511:
    ld a, [$c182]
    cp $f8
    jp z, Jump_001_655c

    cp $f9
    jp z, Jump_001_651f

    ret


Jump_001_651f:
    call Call_000_0c20
    call Call_000_0c4c
    ld a, [$c4ae]
    or a
    jr nz, jr_001_6556

    ld hl, $4132
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4135
    call Call_000_0c0a

jr_001_653d:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_653d

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c4ae], a

jr_001_6556:
    ld hl, $4138
    jp Jump_001_6e21


Jump_001_655c:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $412c
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $412f
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_657d:
    ld a, [$c182]
    cp $f8
    jp z, Jump_001_6586

    ret


Jump_001_6586:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $413e
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, [$c47e]
    or a
    jp nz, Jump_000_0c50

    ld hl, $4144
    call Call_000_0c0a

jr_001_65a5:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_65a5

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld hl, $4003
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, $ff
    ld [$c4b4], a
    ld [$c47e], a
    jp Jump_000_0c50


    ld a, [$c47e]
    or a
    jp nz, Jump_000_0c50

    ld hl, $4141
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_65e6:
    ld a, [$c182]
    cp $f8
    jr z, jr_001_660e

    cp $f9
    jr z, jr_001_6623

    cp $fa
    jr z, jr_001_6644

    cp $fb
    jr z, jr_001_6665

    cp $fc
    jp z, Jump_001_6686

    cp $fd
    jp z, Jump_001_66a7

    cp $fe
    jp z, Jump_001_66c8

    cp $f7
    jp z, Jump_001_66e9

    ret


jr_001_660e:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4057
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


jr_001_6623:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $405a
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4072
    call Call_000_0c0a
    call Call_001_6716
    call Call_000_0c20
    jp Jump_000_0c50


jr_001_6644:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $405d
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4072
    call Call_000_0c0a
    call Call_001_6716
    call Call_000_0c20
    jp Jump_000_0c50


jr_001_6665:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4060
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4072
    call Call_000_0c0a
    call Call_001_6716
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_6686:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4063
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4072
    call Call_000_0c0a
    call Call_001_6716
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_66a7:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4066
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4072
    call Call_000_0c0a
    call Call_001_6716
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_66c8:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4069
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4072
    call Call_000_0c0a
    call Call_001_6716
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_66e9:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $406c
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $406f
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4072
    call Call_000_0c0a
    call Call_001_6716
    call Call_000_0c20
    jp Jump_000_0c50


Call_001_6716:
jr_001_6716:
    call Call_000_3ed2
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_6716

    ld a, [$c1fa]
    or a
    ret nz

    ld a, [$c182]
    cp $f9
    jp z, Jump_001_674f

    cp $fa
    jp z, Jump_001_6759

    cp $fb
    jp z, Jump_001_6763

    cp $fc
    jp z, Jump_001_676d

    cp $fd
    jp z, Jump_001_6777

    cp $fe
    jp z, Jump_001_6781

    cp $f7
    jp z, Jump_001_678b

    ret


Jump_001_674f:
    ld a, $ff
    ld [$c48c], a
    ld a, $29
    jp Jump_000_026b


Jump_001_6759:
    ld a, $ff
    ld [$c48d], a
    ld a, $29
    jp Jump_000_026b


Jump_001_6763:
    ld a, $ff
    ld [$c48e], a
    ld a, $29
    jp Jump_000_026b


Jump_001_676d:
    ld a, $ff
    ld [$c48f], a
    ld a, $29
    jp Jump_000_026b


Jump_001_6777:
    ld a, $ff
    ld [$c490], a
    ld a, $29
    jp Jump_000_026b


Jump_001_6781:
    ld a, $ff
    ld [$c491], a
    ld a, $29
    jp Jump_000_026b


Jump_001_678b:
    ld a, [$c492]
    or a
    ret nz

    ld a, [$c48c]
    cp $ff
    jr nz, jr_001_67ea

    ld a, [$c48d]
    cp $ff
    jr nz, jr_001_67ea

    ld a, [$c48e]
    cp $ff
    jr nz, jr_001_67ea

    ld a, [$c48f]
    cp $ff
    jr nz, jr_001_67ea

    ld a, [$c490]
    cp $ff
    jr nz, jr_001_67ea

    ld a, [$c491]
    cp $ff
    jr nz, jr_001_67ea

    ld a, $ff
    ld [$c492], a
    ld a, $ff
    ld [$c5cf], a
    ld a, [$c17c]
    ld l, a
    ld a, [$c17d]
    ld h, a
    add hl, hl
    add hl, hl
    ld de, $71b5
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    xor a
    ld [$c174], a
    ld a, $10
    ld [$c176], a
    xor a
    ld [$c170], a
    ld a, $14
    ld [$c172], a
    jp Jump_000_3080


jr_001_67ea:
    xor a
    ld [$c48c], a
    ld [$c48d], a
    ld [$c48e], a
    ld [$c48f], a
    ld [$c490], a
    ld [$c491], a
    ret


Jump_001_67fe:
    ld a, [$c182]
    cp $f8
    jr z, jr_001_6806

    ret


jr_001_6806:
    ld a, [$c4c1]
    or a
    ret nz

    call Call_000_0c20
    call Call_000_0c4c
    call Call_001_6e95
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c4c1], a
    ld [$c5cc], a
    ld [$c5cd], a
    ld a, $01
    ld [$c105], a
    jp Jump_000_0c50


Call_001_682b:
    ld hl, $c1e7
    ld b, $06
    ld a, [$c11b]
    or a
    jr z, jr_001_6838

    ld b, $08

jr_001_6838:
    ld a, [hl]
    cp $13
    jr z, jr_001_6857

    cp $24
    jr z, jr_001_6857

    cp $3d
    jr z, jr_001_6857

    cp $4d
    jr z, jr_001_6857

    cp $4e
    jr z, jr_001_6857

    cp $55
    jr z, jr_001_6857

    inc hl
    dec b
    jr nz, jr_001_6838

    xor a
    ret


jr_001_6857:
    ld a, $ff
    ret


Jump_001_685a:
    ld a, [$c183]
    cp $00
    jp z, Jump_001_6886

    cp $20
    jp z, Jump_001_688c

    cp $35
    jp z, Jump_001_68bc

    cp $3f
    jp z, Jump_001_6908

    cp $5c
    jp z, Jump_001_691b

    cp $60
    jp z, Jump_001_6969

    cp $72
    jp z, Jump_001_69fc

    cp $80
    jp z, Jump_001_6a02

    ret


Jump_001_6886:
    ld hl, $402a
    jp Jump_001_6e21


Jump_001_688c:
    ld a, [$c11b]
    or a
    jr z, jr_001_6898

    ld a, $ff
    ld [$c4db], a
    ret


jr_001_6898:
    call Call_000_0c20
    call Call_000_0c4c
    call Call_001_6e90
    or a
    jp nz, Jump_000_0c50

    ld a, $ff
    ld [$c420], a
    call Call_000_0942
    ld hl, $4003
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_68bc:
    ld a, $07
    ld [$c11f], a
    call Call_000_0641
    call Call_000_0c50
    call Call_000_0c20
    ld hl, $4108
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, [$c11b]
    or a
    jr z, jr_001_68f9

    ld a, [$c4dd]
    or a
    jr z, jr_001_68f9

    ld hl, $410e
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, $ff
    ld [$c4dd], a
    ld [$c435], a
    jp Jump_000_0c50


jr_001_68f9:
    ld hl, $410b
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_6908:
    ld a, [$c17c]
    cp $38
    jr z, jr_001_6915

    ld hl, $409f
    jp Jump_001_6e21


jr_001_6915:
    ld hl, $40b4
    jp Jump_001_6e21


Jump_001_691b:
    ld a, [$c49a]
    or a
    jp nz, Jump_001_69db

    ld a, [$c11b]
    or a
    jp z, Jump_001_69db

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40ba
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, $10
    ld [$c1bf], a
    ld a, $ff
    ld [$c49a], a
    jp Jump_000_0c50


jr_001_6948:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4084
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $40b7
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_6969:
    ld a, [$c11b]
    or a
    jr z, jr_001_6948

    xor a
    ld [$c2e0], a
    ld a, $05
    ld [$c11f], a
    call Call_000_0641
    ld de, $c2c0
    ld b, $1b
    ld hl, $69c0

jr_001_6983:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_001_6983

    call Call_000_092c
    call Call_000_11ad
    call Call_001_4457
    ld hl, $40c0
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $40c3
    call Call_000_0c0a

jr_001_69a4:
    call Call_001_4975
    ld a, [$c100]
    and $01
    jr z, jr_001_69a4

jr_001_69ae:
    ld a, [$c100]
    and $01
    jr nz, jr_001_69ae

    ld a, [$c1fa]
    or a
    ret nz

    call Call_000_0c20
    jp Jump_001_6de0


    rst $38
    inc h
    ld b, h
    nop
    inc h
    ld d, e
    nop
    inc h
    ld h, d
    rst $38
    dec [hl]
    ld b, h
    rst $38
    dec [hl]
    ld d, e
    nop
    dec [hl]
    ld h, d
    rst $38
    ld b, l
    ld b, h
    nop
    ld b, l
    ld d, e
    rst $38
    ld b, l
    ld h, d

Jump_001_69db:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $416e
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4171
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_69fc:
    ld hl, $4111
    jp Jump_001_6e21


Jump_001_6a02:
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4183
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $4189
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld hl, $418c
    call Call_000_0c0a

jr_001_6a26:
    call Call_000_3ed2
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_6a26

    ld a, [$c1fa]
    or a
    jp nz, Jump_001_6a3f

    ld a, $02
    ld [$c17e], a

Jump_001_6a3f:
    call Call_000_0c20
    call Call_000_0c50
    ret


Call_001_6a46:
    ld hl, $c2ec
    jr jr_001_6a4e

Call_001_6a4b:
    ld hl, $c2f1

jr_001_6a4e:
    ld a, $20
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl], $01
    xor a
    ld [$c2e9], a
    ret


Jump_001_6a5b:
    call Call_000_37bd
    ld hl, $c2e3
    xor a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    call Call_001_6a46
    call Call_001_6a4b
    call Call_001_4c5c
    ld hl, $4105
    call Call_000_0c0a
    ld hl, $4147
    ld de, $0101
    ld a, $fa
    call Call_000_3db5
    ld hl, $414a
    ld de, $0201
    ld a, $fa
    call Call_000_3db5

jr_001_6a8d:
    call Call_000_3ed2
    call Call_001_4c76
    ld a, [$c2e3]
    ld [$c2e4], a
    call Call_001_6ac6
    ld a, [$c2e8]
    or a
    jr z, jr_001_6aad

    ld bc, $c2f1
    ld hl, $030a
    ld a, $fa
    call Call_000_3dda

jr_001_6aad:
    ld bc, $c2ec
    ld hl, $0207
    ld a, $fa
    call Call_000_3dda
    ld a, [$c100]
    and $02
    jr z, jr_001_6a8d

    call Call_001_4515
    call Call_000_37b8
    ret


Call_001_6ac6:
    call Call_000_085e
    ld a, [$c100]
    and $01
    jp nz, Jump_001_6ad6

    xor a
    ld [$c1af], a
    ret


Jump_001_6ad6:
    ld hl, $c1af
    ld a, [hl]
    or a
    ret nz

    ld [hl], $ff
    ld a, [$c2e3]
    ld e, a
    ld d, $00
    ld hl, $6c41
    add hl, de
    ld a, [hl]
    cp $00
    jp z, Jump_001_6c2f

    cp $01
    jp z, Jump_001_6b20

    cp $02
    jp z, Jump_001_6c08

    ld c, a
    ld a, [$c2e9]
    ld e, a
    ld d, $00
    call Call_001_6c35
    add hl, de
    ld [hl], c
    ld a, [$c2e9]
    cp $03
    jr z, jr_001_6b0f

    inc a
    ld [$c2e9], a

jr_001_6b0f:
    ld a, $02
    jp Jump_000_026b


    ld c, d
    ld c, a
    ld c, b
    ld c, [hl]
    ld b, c
    ld b, h
    ld b, c
    jr nz, jr_001_6b6a

    ld c, a
    ld c, h
    ld b, l

Jump_001_6b20:
    ld a, [$c2e8]
    or a
    jp z, Jump_001_6bbd

    ld hl, $c2ec
    ld de, $6b14
    ld b, $04

jr_001_6b2f:
    ld a, [de]
    cp [hl]
    jp nz, Jump_001_6bee

    inc de
    inc hl
    dec b
    jr nz, jr_001_6b2f

    ld hl, $c2f1
    ld de, $6b18
    ld b, $04

jr_001_6b41:
    ld a, [de]
    cp [hl]
    jp nz, Jump_001_6b51

    inc de
    inc hl
    dec b
    jr nz, jr_001_6b41

    xor a
    ld [$c2eb], a
    jr jr_001_6b6a

Jump_001_6b51:
    ld hl, $c2f1
    ld de, $6b1c
    ld b, $04

jr_001_6b59:
    ld a, [de]
    cp [hl]
    jp nz, Jump_001_6bd5

    inc de
    inc hl
    dec b
    jr nz, jr_001_6b59

    ld a, $01
    ld [$c2eb], a
    jr jr_001_6b87

jr_001_6b6a:
    ld a, [$c4b2]
    or a
    jr nz, jr_001_6ba4

    ld hl, $4153
    ld de, $0401
    ld a, $fa
    call Call_000_3db5
    call Call_000_0c2e
    call Call_001_6da9
    call Call_001_6a4b
    jp $6c61


jr_001_6b87:
    ld a, [$c4b3]
    or a
    jr nz, jr_001_6ba4

    ld hl, $4153
    ld de, $0401
    ld a, $fa
    call Call_000_3db5
    call Call_000_0c2e
    call Call_001_6da9
    call Call_001_6a4b
    jp $6c61


jr_001_6ba4:
    ld hl, $4159
    ld de, $0401
    ld a, $fa
    call Call_000_3db5
    call Call_000_0c2e
    call Call_001_6dbc
    call Call_001_6a4b
    ld a, $04
    jp Jump_000_026b


Jump_001_6bbd:
    inc a
    ld [$c2e8], a
    xor a
    ld [$c2e9], a
    ld hl, $414d
    ld de, $0301
    ld a, $fa
    call Call_000_3db5
    ld a, $04
    jp Jump_000_026b


Jump_001_6bd5:
    ld hl, $4156
    ld de, $0401
    ld a, $fa
    call Call_000_3db5
    call Call_000_0c2e
    call Call_001_6dbc
    call Call_001_6a4b
    ld a, $01
    jp Jump_000_026b


Jump_001_6bee:
    ld hl, $4150
    ld de, $0401
    ld a, $fa
    call Call_000_3db5
    call Call_000_0c2e
    call Call_001_6da9
    ld a, $02
    call Call_000_026b
    pop hl
    jp Jump_001_6a5b


Jump_001_6c08:
    ld a, [$c2e9]
    ld e, a
    ld d, $00
    call Call_001_6c35
    add hl, de
    ld a, [hl]
    cp $20
    jr z, jr_001_6c1b

    ld [hl], $20
    jr jr_001_6c2a

jr_001_6c1b:
    ld a, [$c2e9]
    or a
    ret z

Jump_001_6c20:
    dec hl
    ld [hl], $20
    ld a, [$c2e9]
    dec a
    ld [$c2e9], a

jr_001_6c2a:
    ld a, $05
    jp Jump_000_026b


Jump_001_6c2f:
    pop hl
    ld a, $03
    jp Jump_000_026b


Call_001_6c35:
    ld hl, $c2ec
    ld a, [$c2e8]
    or a
    ret z

    ld hl, $c2f1
    ret


    nop
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
    ld bc, $504f
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld bc, $5756
    ld e, b
    ld e, c
    ld e, d
    ld [bc], a
    ld [bc], a
    ld bc, $eaaf
    ld [$21c2], a
    ld e, h
    ld b, c
    ld de, $0101
    ld a, $fa
    call Call_000_3db5

jr_001_6c70:
    call Call_000_0866
    call Call_000_3ed2
    ld hl, $415f
    ld de, $0301
    ld c, $fa
    ld b, $00
    call Call_001_6dd2
    ld hl, $4162
    ld de, $0401
    ld c, $fa
    ld b, $01
    call Call_001_6dd2
    ld hl, $4165
    ld de, $0501
    ld c, $fa
    ld b, $02
    call Call_001_6dd2
    ld a, [$c100]
    and $01
    jr nz, jr_001_6cb6

    ld a, [$c100]
    and $02
    jr z, jr_001_6c70

jr_001_6cab:
    call Call_000_3ed2
    ld a, [$c100]
    and $01
    jr nz, jr_001_6cab

    ret


jr_001_6cb6:
    ld a, [$c2ea]
    cp $02
    jp z, Jump_001_6d64

    cp $01
    jr z, jr_001_6d13

jr_001_6cc2:
    call Call_000_3ed2
    ld a, [$c100]
    and $01
    jr nz, jr_001_6cc2

    ld a, [$c467]
    or a

Jump_001_6cd0:
    jp nz, Jump_001_6d70

    ld a, [$c2eb]
    or a
    jr z, jr_001_6ce7

    ld a, [$c4b3]
    or a
    jp nz, Jump_001_6d70

    ld a, $ff
    ld [$c4b3], a
    jr jr_001_6cf3

jr_001_6ce7:
    ld a, [$c4b2]
    or a
    jp nz, Jump_001_6d70

    ld a, $ff
    ld [$c4b2], a

jr_001_6cf3:
    ld a, $ff
    ld [$c467], a
    ld hl, $4168
    ld de, $0401
    ld a, $fa
    call Call_000_3db5
    call Call_000_0c2e
    ld hl, $416b
    ld de, $0401
    ld a, $fa
    call Call_000_3db5
    jr jr_001_6d7e

jr_001_6d13:
    call Call_000_3ed2
    ld a, [$c100]
    and $01
    jr nz, jr_001_6d13

    ld a, [$c46f]
    or a
    jp nz, Jump_001_6d70

    ld a, [$c2eb]
    or a
    jr z, jr_001_6d38

    ld a, [$c4b3]
    or a
    jp nz, Jump_001_6d70

    ld a, $ff
    ld [$c4b3], a
    jr jr_001_6d44

jr_001_6d38:
    ld a, [$c4b2]
    or a
    jp nz, Jump_001_6d70

    ld a, $ff
    ld [$c4b2], a

jr_001_6d44:
    ld a, $ff
    ld [$c46f], a
    ld hl, $4168
    ld de, $0401
    ld a, $fa
    call Call_000_3db5
    call Call_000_0c2e
    ld hl, $416b
    ld de, $0401
    ld a, $fa
    call Call_000_3db5
    jr jr_001_6d7e

Jump_001_6d64:
jr_001_6d64:
    call Call_000_3ed2
    ld a, [$c100]
    and $01
    jr nz, jr_001_6d64

    jr jr_001_6d7e

Jump_001_6d70:
    ld hl, $4159
    ld de, $0101
    ld a, $fa
    call Call_000_3db5
    call Call_000_0c2e

jr_001_6d7e:
    call Call_001_6da9
    ld hl, $4105
    call Call_000_0c0a
    ld hl, $4147
    ld de, $0101
    ld a, $fa
    call Call_000_3db5
    ld hl, $414a
    ld de, $0201
    ld a, $fa
    call Call_000_3db5
    ld hl, $414d
    ld de, $0301
    ld a, $fa
    call Call_000_3db5
    ret


Call_001_6da9:
    ld b, $05

jr_001_6dab:
    push bc
    ld h, b
    ld l, $01
    ld bc, $6486
    ld a, $fa
    call Call_000_3dda
    pop bc
    dec b
    jr nz, jr_001_6dab

    ret


Call_001_6dbc:
    ld b, $02

jr_001_6dbe:
    push bc
    ld h, b
    inc h
    inc h
    inc h
    ld l, $01
    ld bc, $6486
    ld a, $fa
    call Call_000_3dda
    pop bc
    dec b
    jr nz, jr_001_6dbe

    ret


Call_001_6dd2:
    ld a, [$c2ea]
    cp b
    jr z, jr_001_6ddc

    ld a, c
    jp Jump_000_3db5


jr_001_6ddc:
    ld a, c
    jp Jump_000_3dc3


Jump_001_6de0:
jr_001_6de0:
    call Call_000_3ed2
    call Call_000_0925
    call Call_000_092c
    call Call_000_11ad
    call Call_001_4457
    ld a, [$c100]
    and $02
    ret nz

    ld hl, $c2c0
    ld de, $0003
    ld b, $09

jr_001_6dfd:
    ld a, [hl]
    cp $ff
    jr nz, jr_001_6de0

    add hl, de
    dec b
    jr nz, jr_001_6dfd

    ld a, $ff
    ld [$c460], a
    ld b, $32
    call Call_000_02b2
    ld a, $27
    call Call_000_026b
    ld hl, $4174
    call Call_000_0c0a
    call Call_000_0c2e
    jp Jump_000_0c20


Call_001_6e21:
Jump_001_6e21:
    push hl
    call Call_000_0c20
    call Call_000_0c4c
    pop hl
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


    call Call_001_4515
    call Call_001_4488
    call Call_000_37b8
    ld a, $01
    ld [$c105], a
    ld hl, $0000
    ld b, $07

Jump_001_6e48:
    push bc
    push hl
    ld bc, $63ee
    ld a, $fa
    call Call_000_3dda
    pop hl
    inc h
    inc h
    inc h
    pop bc
    dec b
    jp nz, Jump_001_6e48

    call Call_000_3ed2
    ld a, $0c
    ld hl, $4e44
    call Call_000_353c
    ld hl, $4877
    ld a, [$c1d4]
    ld c, a
    add a
    add a
    ld b, a
    add a
    add b
    add c
    ld c, a
    ld a, [$c1ae]
    add c
    ld b, a
    add a
    add b
    ld c, a
    ld b, $00
    add hl, bc
    call Call_001_6e89
    call Call_000_0c2e
    call Call_001_4515
    ret


Call_001_6e89:
    ld de, $0000
    call Call_000_3db5
    ret


Call_001_6e90:
    ld hl, $4072
    jr jr_001_6e98

Call_001_6e95:
    ld hl, $408a

jr_001_6e98:
    call Call_000_0c0a

jr_001_6e9b:
    call Call_001_4975
    ld a, [$c100]
    and $03
    jr z, jr_001_6e9b

jr_001_6ea5:
    ld a, [$c100]
    and $03
    jr nz, jr_001_6ea5

    call Call_000_0c20
    ld a, [$c1fa]
    ret


Call_001_6eb3:
    ld de, $c320
    ld b, $07

jr_001_6eb8:
    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp c
    jr z, jr_001_6ecd

    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_001_6eb8

    xor a
    ret


jr_001_6ecd:
    ld a, $ff
    ret


    ld a, e
    cp $80
    jr c, jr_001_6ef9

    ld a, l
    cp $80
    jr c, jr_001_6ee8

    ld a, l
    xor $ff
    inc a
    ld l, a
    ld a, e
    xor $ff
    inc a
    ld e, a
    call Call_001_6f42
    ret


jr_001_6ee8:
    ld a, e
    xor $ff
    inc a
    ld e, a
    call Call_001_6f42
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret


jr_001_6ef9:
    ld a, l
    cp $80
    jr c, jr_001_6f0e

    xor $ff
    inc a
    ld l, a
    call Call_001_6f42
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret


jr_001_6f0e:
    jp Jump_001_6f42


    ld a, d
    cp $80
    jr c, jr_001_6f2f

    ld a, l
    cp $80
    jr c, jr_001_6f26

    ld a, l
    xor $ff
    inc a
    ld l, a
    call Call_001_7074
    jp Jump_001_6f42


jr_001_6f26:
    call Call_001_7074
    call Call_001_6f42
    jp Jump_001_7074


jr_001_6f2f:
    ld a, l
    cp $80
    jr c, jr_001_6f3f

    ld a, l
    xor $ff
    inc a
    ld l, a
    call Call_001_6f42
    jp Jump_001_7074


jr_001_6f3f:
    jp Jump_001_6f42


Call_001_6f42:
Jump_001_6f42:
    push hl
    ld c, h
    ld a, l
    ld b, $00
    ld h, b
    ld l, b
    add a
    jr nc, jr_001_6f4e

    add hl, de
    adc b

jr_001_6f4e:
    add hl, hl
    adc a
    jr nc, jr_001_6f54

    add hl, de
    adc b

jr_001_6f54:
    add hl, hl
    adc a
    jr nc, jr_001_6f5a

    add hl, de
    adc b

jr_001_6f5a:
    add hl, hl
    adc a
    jr nc, jr_001_6f60

    add hl, de
    adc b

jr_001_6f60:
    add hl, hl
    adc a
    jr nc, jr_001_6f66

    add hl, de
    adc b

jr_001_6f66:
    add hl, hl
    adc a
    jr nc, jr_001_6f6c

    add hl, de
    adc b

jr_001_6f6c:
    add hl, hl
    adc a
    jr nc, jr_001_6f72

    add hl, de
    adc b

jr_001_6f72:
    add hl, hl
    adc a
    jr nc, jr_001_6f78

    add hl, de
    adc b

jr_001_6f78:
    push hl
    ld h, b
    ld l, b
    ld b, a
    ld a, c
    ld c, h
    add a
    jr nc, jr_001_6f83

    add hl, de
    adc c

jr_001_6f83:
    add hl, hl
    adc a
    jr nc, jr_001_6f89

    add hl, de
    adc c

jr_001_6f89:
    add hl, hl
    adc a
    jr nc, jr_001_6f8f

    add hl, de
    adc c

jr_001_6f8f:
    add hl, hl
    adc a
    jr nc, jr_001_6f95

    add hl, de
    adc c

jr_001_6f95:
    add hl, hl
    adc a
    jr nc, jr_001_6f9b

    add hl, de
    adc c

jr_001_6f9b:
    add hl, hl
    adc a
    jr nc, jr_001_6fa1

    add hl, de
    adc c

jr_001_6fa1:
    add hl, hl
    adc a
    jr nc, jr_001_6fa7

    add hl, de
    adc c

jr_001_6fa7:
    add hl, hl
    adc a
    jr nc, jr_001_6fad

    add hl, de
    adc c

jr_001_6fad:
    pop de
    ld c, a
    ld a, d
    add l
    ld d, a
    ld a, b
    adc h
    ld h, a
    ld a, c
    adc $00
    ld b, a
    ld c, h
    pop hl
    ret


    ld a, d
    cp $80
    jr c, jr_001_6fd5

    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    call Call_001_6fd8
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret


jr_001_6fd5:
    jp Jump_001_6fd8


Call_001_6fd8:
Jump_001_6fd8:
    ld hl, $c150
    ld [hl], c
    inc hl
    ld [hl], b
    inc hl
    ld [hl], $11
    ld bc, $0000

Jump_001_6fe4:
    ld hl, $c152
    ld a, e
    rla
    ld e, a
    ld a, d
    rla
    ld d, a
    dec [hl]
    ret z

    ld a, c
    rla
    ld c, a
    ld a, b
    rla
    ld b, a
    dec l
    dec l
    ld a, c
    sub [hl]
    ld c, a
    inc hl
    ld a, b
    sbc [hl]
    ld b, a
    jp nc, Jump_001_7009

    dec l
    ld a, c
    add [hl]
    ld c, a
    inc l
    ld a, b
    adc [hl]
    ld b, a

Jump_001_7009:
    ccf
    jp Jump_001_6fe4


    ld a, d
    cp $80
    jr nc, jr_001_7016

    ld e, d
    ld d, $00
    ret


jr_001_7016:
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ld e, d
    ld d, $00
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret


    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, d
    cp $80
    jr c, jr_001_7042

    call Call_001_7074
    srl d
    rr e
    call Call_001_7074
    ld [hl], d
    dec hl
    ld [hl], e
    pop de
    ret


jr_001_7042:
    srl d
    rr e
    ld [hl], d
    dec hl
    ld [hl], e
    pop de
    ret


    push de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ld a, d
    cp $80
    jr c, jr_001_7067

    call Call_001_7074
    srl d
    rr e
    srl d
    rr e
    call Call_001_7074
    ld [hl], d
    dec hl
    ld [hl], e
    pop de
    ret


jr_001_7067:
    srl d
    rr e
    srl d
    rr e
    ld [hl], d
    dec hl
    ld [hl], e
    pop de
    ret


Call_001_7074:
Jump_001_7074:
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret


    ld a, $00
    sub l
    ld l, a
    ld a, $00
    sbc h
    ld h, a
    ret


    ld a, d
    cp $80
    jr c, jr_001_70ae

    call Call_001_7074
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_001_7074
    ret


jr_001_70ae:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


    ld a, d
    cp $80
    jr c, jr_001_70ef

    call Call_001_7074
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_001_7074
    ret


jr_001_70ef:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


    ld a, d
    cp $80
    jr c, jr_001_7124

    call Call_001_7074
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_001_7074
    ret


jr_001_7124:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


Call_001_7135:
    ld a, d
    cp $80
    jr c, jr_001_714d

    call Call_001_7074
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_001_7074
    ret


jr_001_714d:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


Call_001_715a:
    ld a, d
    cp $80
    jr c, jr_001_716a

    call Call_001_7074
    srl d
    rr e
    call Call_001_7074
    ret


jr_001_716a:
    srl d
    rr e
    ret


    push de
    ld e, c
    ld d, b
    call Call_001_715a
    ld c, e
    ld b, d
    pop de
    ret


    ld a, d
    cp $80
    jr c, jr_001_718d

    call Call_001_7074
    push hl
    push de
    pop hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop hl
    call Call_001_7074
    ret


jr_001_718d:
    push hl
    push de
    pop hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop hl
    ret


    ld a, d
    cp $80
    jr c, jr_001_71ab

    call Call_001_7074
    push hl
    push de
    pop hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop hl
    call Call_001_7074
    ret


jr_001_71ab:
    push hl
    push de
    pop hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop hl
    ret


    add l
    ld [hl], e
    nop
    ld b, b
    sbc d
    ld [hl], e
    add b
    ld b, b
    xor a
    ld [hl], e
    nop
    ld b, c
    pop bc
    ld [hl], e
    add b
    ld b, c
    sub $73
    nop
    ld b, d
    xor $73
    add b
    ld b, d
    nop
    ld [hl], h
    nop
    ld b, e
    ld [de], a
    ld [hl], h
    add b
    ld b, e
    ld a, [hl+]
    ld [hl], h
    nop
    ld b, h
    inc a
    ld [hl], h
    add b
    ld b, h
    ld c, b
    ld [hl], h
    nop
    ld b, l
    ld e, l
    ld [hl], h
    add b
    ld b, l
    ld l, h
    ld [hl], h
    nop
    ld b, [hl]
    ld a, b
    ld [hl], h
    add b
    ld b, [hl]
    add h
    ld [hl], h
    nop
    ld b, a
    sub b
    ld [hl], h
    add b
    ld b, a
    sbc a
    ld [hl], h
    nop
    ld c, b
    xor [hl]
    ld [hl], h
    add b
    ld c, b
    cp d
    ld [hl], h
    nop
    ld c, c
    add $74
    add b
    ld c, c
    push de
    ld [hl], h
    nop
    ld c, d
    db $db
    ld [hl], h
    add b
    ld c, d
    db $e4
    ld [hl], h
    nop
    ld c, e
    db $ed
    ld [hl], h
    add b
    ld c, e
    di
    ld [hl], h
    nop
    ld c, h
    ld sp, hl
    ld [hl], h
    add b
    ld c, h
    dec b
    ld [hl], l
    nop
    ld c, l
    rla
    ld [hl], l
    add b
    ld c, l
    add hl, hl
    ld [hl], l
    nop
    ld c, [hl]
    dec sp
    ld [hl], l
    add b
    ld c, [hl]
    ld c, d
    ld [hl], l
    nop
    ld c, a
    ld e, h
    ld [hl], l
    add b
    ld c, a
    ld h, l
    ld [hl], l
    nop
    ld d, b
    ld a, d
    ld [hl], l
    add b
    ld d, b
    add e
    ld [hl], l
    nop
    ld d, c
    adc h
    ld [hl], l
    add b
    ld d, c
    sbc b
    ld [hl], l
    add b
    ld d, d
    xor l
    ld [hl], l
    nop
    ld d, e
    cp h
    ld [hl], l
    add b
    ld d, e
    push bc
    ld [hl], l
    nop
    ld d, h
    call nc, $8075
    ld d, h
    db $e3
    ld [hl], l
    nop
    ld d, l
    db $ec
    ld [hl], l
    add b
    ld d, l
    ld hl, sp+$75
    nop
    ld d, [hl]
    inc b
    db $76
    add b
    ld d, [hl]
    add hl, de
    halt
    ld d, a
    dec h
    db $76
    add b
    ld d, a
    dec hl
    halt
    ld e, b
    ld a, [hl-]
    db $76
    add b
    ld e, b
    ld b, [hl]
    halt
    ld e, c
    ld e, b
    db $76
    add b
    ld e, c
    ld [hl], b
    halt
    ld e, d
    db $76
    db $76
    add b
    ld e, d
    ld a, a
    halt
    ld e, e
    sub a
    db $76
    add b
    ld e, e
    xor h
    halt
    ld e, h
    call nz, $8076
    ld e, h
    call c, Call_000_0076
    ld e, l
    db $f4
    db $76
    add b
    ld e, l
    ld b, $77
    nop
    ld e, [hl]
    ld [de], a
    ld [hl], a
    add b
    ld e, [hl]
    ld a, [hl+]
    ld [hl], a
    nop
    ld e, a
    ld b, d
    ld [hl], a
    add b
    ld e, a
    ld e, d
    ld [hl], a
    nop
    ld h, b
    ld l, a
    ld [hl], a
    add b
    ld h, b
    ld a, [hl]
    ld [hl], a
    nop
    ld h, c
    sub [hl]
    ld [hl], a
    add b
    ld h, c
    sbc c
    ld [hl], a
    nop
    ld h, d
    xor e
    ld [hl], a
    add b
    ld h, d
    jp Jump_000_0077


    ld h, e
    rst $08
    ld [hl], a
    add b
    ld h, e
    sbc $77
    nop
    ld h, h
    ldh a, [rPCM34]
    add b
    ld h, h
    rst $38
    ld [hl], a
    nop
    ld h, l
    dec b
    ld a, b
    add b
    ld h, l
    ld c, $78
    nop
    ld h, [hl]
    jr nz, jr_001_735f

    add b
    ld h, [hl]
    jr c, @+$7a

    nop
    ld h, a
    ld b, a
    ld a, b
    add b
    ld h, a
    ld e, c
    ld a, b
    nop
    ld l, b
    ld [hl], c
    ld a, b
    add b
    ld l, b
    add [hl]
    ld a, b
    nop
    ld l, c
    adc h
    ld a, b
    add b
    ld l, c
    and h
    ld a, b
    nop
    ld l, d
    or b
    ld a, b
    add b
    ld l, d
    push bc
    ld a, b
    nop
    ld l, e
    bit 7, b
    add b
    ld l, e
    ldh [$78], a
    nop
    ld l, h
    and $78
    add b
    ld l, h
    push af
    ld a, b
    nop
    ld l, l
    dec c
    ld a, c
    add b
    ld l, l
    inc e
    ld a, c
    nop
    ld l, [hl]
    jr z, jr_001_73a0

    add b
    ld l, [hl]
    ld a, [hl-]
    ld a, c
    nop
    ld l, a
    ld c, c
    ld a, c
    add b
    ld l, a
    ld h, c
    ld a, c
    nop
    ld [hl], b
    ld [hl], b
    ld a, c
    add b
    ld [hl], b
    adc b
    ld a, c
    nop
    ld [hl], c
    sub a
    ld a, c
    add b
    ld [hl], c
    xor c
    ld a, c
    nop
    ld [hl], d
    cp b
    ld a, c
    add b
    ld [hl], d
    call nz, Call_000_0079
    ld [hl], e
    sub $79
    add b

Call_001_7350:
    ld [hl], e
    reti


    ld a, c
    nop
    ld [hl], h
    rst $18
    ld a, c
    add b
    ld [hl], h
    rst $30
    ld a, c
    nop
    ld [hl], l
    rrca
    ld a, d

jr_001_735f:
    add b
    ld [hl], l
    ld hl, $007a
    db $76
    inc h
    ld a, d

jr_001_7367:
    add b
    db $76
    inc sp
    ld a, d
    nop
    ld [hl], a
    ld c, b
    ld a, d
    add b
    ld [hl], a
    ld h, b
    ld a, d
    nop
    ld a, b
    ld a, b
    ld a, d
    add b
    ld a, b
    ld a, [hl]
    ld a, d
    nop
    ld a, c
    add h
    ld a, d
    add b
    ld a, c
    add a
    ld a, d
    nop
    ld a, d
    stop
    ld b, b
    db $10
    ld h, b
    ld c, e
    db $10
    jr nz, jr_001_73ee

    db $10
    ld b, b
    ld [hl], l
    ld de, $4560
    ld de, $5460
    ld de, $6990
    ld de, $7d40
    ld [de], a
    ldh a, [rHDMA2]

jr_001_73a0:
    ld [de], a
    sub b
    ld h, a
    ld [de], a
    or b
    ld a, e
    inc de
    ld d, b
    ld d, b
    inc de
    ldh [$61], a
    inc de
    db $10
    ld [hl], d
    inc d
    ld h, b
    ld b, b
    inc d
    ld d, b
    ld d, c
    inc d
    jr nc, jr_001_741a

    inc d
    ldh a, [rSVBK]
    dec d
    ld [hl], b
    ld b, c
    dec d
    add b
    ld d, b
    dec d
    ld b, b
    ld e, a
    dec d
    nop
    ld l, l
    dec d
    ld b, b
    ld a, c
    ld d, $90
    ld b, [hl]
    ld d, $00
    ld e, b
    ld d, $70
    ld l, b
    ld d, $c0
    ld [hl], h
    rla
    and b
    ld b, b
    rla
    ldh a, [rHDMA5]
    rla
    ld h, b
    ld l, c
    rla

Jump_001_73e0:
jr_001_73e0:
    ret nz

    ld a, [hl]
    jr jr_001_73f4

    ld c, h
    jr jr_001_7367

    ld e, [hl]
    jr jr_001_742a

    ld l, a
    add hl, de
    db $10
    ld b, d

jr_001_73ee:
    add hl, de
    db $10
    ld d, d
    add hl, de
    jr nz, jr_001_7454

jr_001_73f4:
    add hl, de
    sub b
    ld l, h
    add hl, de
    ld b, b
    ld a, d
    ld a, [de]
    ret nc

    ld c, b
    ld a, [de]
    jr nc, @+$5d

    ld a, [de]
    add b
    ld l, e
    ld a, [de]
    ldh [$7e], a
    dec de
    nop
    ld d, l
    dec de
    ld d, b
    ld l, d
    dec de
    jr nz, jr_001_748e

    inc e

Jump_001_7410:
    jr nc, @+$4f

    inc e
    ret nz

    ld e, d
    inc e
    ld d, b
    ld h, h
    inc e
    and b

jr_001_741a:
    ld [hl], c
    inc e
    ret nc

    ld a, h
    dec e
    or b
    ld b, e
    dec e
    jr nz, jr_001_7473

    dec e
    and b
    ld e, c
    dec e
    or b
    ld l, d

jr_001_742a:
    dec e
    ret nc

    ld [hl], h
    ld e, $80
    ld b, e
    ld e, $70
    ld d, d
    ld e, $e0
    ld h, c
    ld e, $00
    ld [hl], e
    rra
    db $10
    ld b, d
    rra
    ld d, b
    ld c, l
    rra
    ld h, b
    ld e, e
    rra
    sub b
    ld h, a
    rra
    ld d, b
    ld a, b
    jr nz, @+$52

    ld c, l
    jr nz, jr_001_748d

    ld e, d
    jr nz, jr_001_73e0

jr_001_7450:
    ld l, e
    jr nz, jr_001_7463

    ld a, d

jr_001_7454:
    ld hl, $4c10
    ld hl, $58f0
    ld hl, $6910
    ld hl, $7aa0
    ld [hl+], a
    ld b, b
    ld c, l

jr_001_7463:
    ld [hl+], a
    ret nz

    ld h, d
    ld [hl+], a
    nop
    ld a, b
    inc hl
    ldh [rOBP1], a
    inc hl
    ret nc

    ld e, h
    inc hl
    add b
    ld l, c
    inc hl

jr_001_7473:
    ld b, b
    ld [hl], a
    inc h
    and b
    ld b, d
    inc h
    ld b, b
    ld d, b
    inc h
    ldh a, [$5b]
    inc h
    ld [hl], b
    ld l, c
    inc h
    ld b, b
    ld a, h
    dec h
    jr nc, jr_001_74d2

    dec h
    jr nz, jr_001_74e6

    dec h
    or b
    ld l, h

jr_001_748d:
    dec h

jr_001_748e:
    ldh a, [$7a]
    ld h, $e0
    ld c, b
    ld h, $00
    ld d, [hl]
    ld h, $00
    ld h, a
    ld h, $40
    ld a, d
    daa
    ld d, b
    ld c, e
    daa
    ld b, b
    ld e, e
    daa
    jr nz, jr_001_7510

    daa
    and b
    ld a, e
    jr z, jr_001_74da

    ld b, l
    jr z, jr_001_751d

    ld e, c
    jr z, jr_001_7450

    ld h, c
    jr z, jr_001_7473

    ld [hl], c
    add hl, hl
    ret nz

    ld b, c
    add hl, hl
    ld d, b
    ld d, b
    add hl, hl
    jr nz, jr_001_7520

    add hl, hl
    nop
    ld a, b
    ld a, [hl+]
    ld d, b
    ld c, [hl]
    ld a, [hl+]
    nop
    ld h, h
    ld a, [hl+]
    jr nz, jr_001_7541

    dec hl
    jr nz, jr_001_7514

    dec hl
    ld b, b
    ld e, h
    dec hl
    db $10
    ld l, [hl]

jr_001_74d2:
    inc l
    sub b
    ld b, d
    inc l
    ld [hl], b
    ld d, d
    inc l
    ld h, b

jr_001_74da:
    ld h, l
    inc l
    jr nc, @+$78

    dec l
    ld d, b
    ld b, h
    dec l
    sub b
    ld d, c
    dec l
    add b

jr_001_74e6:
    ld e, [hl]
    dec l
    sub b
    ld l, a
    dec l
    ret nc

    ld a, a
    ld l, $10
    ld c, l
    ld l, $90
    ld e, h
    ld l, $60
    ld l, l
    cpl
    jr nz, jr_001_753b

    cpl

jr_001_74fa:
    and b
    ld d, [hl]
    cpl
    ldh a, [$66]
    cpl
    ldh a, [$74]
    jr nc, @-$0e

jr_001_7504:
    ld b, e
    jr nc, jr_001_7547

    ld d, h
    jr nc, jr_001_74fa

    ld h, d
    jr nc, jr_001_752d

    ld [hl], d
    jr nc, jr_001_7510

jr_001_7510:
    ld a, [hl]
    ld sp, $49f0

jr_001_7514:
    ld sp, $5640
    ld sp, $62d0
    ld sp, $7550

jr_001_751d:
    ld [hl-], a
    nop
    ld c, c

jr_001_7520:
    ld [hl-], a
    ld [hl], b
    ld e, c
    ld [hl-], a
    ret nc

    ld l, b
    ld [hl-], a
    ld b, b
    ld a, e
    inc sp
    ld [hl], b
    ld c, h
    inc sp

jr_001_752d:
    and b
    ld e, l
    inc sp
    db $10
    ld [hl], b
    inc [hl]
    ld b, b
    ld b, e
    inc [hl]
    add b

jr_001_7537:
    ld d, d
    inc [hl]
    db $10
    ld h, h

jr_001_753b:
    inc [hl]
    ldh a, [$6f]
    dec [hl]
    sub b
    ld b, e

jr_001_7541:
    dec [hl]
    jr nc, @+$55

    dec [hl]
    ld d, b
    ld e, a

jr_001_7547:
    dec [hl]
    ldh [$6f], a
    dec [hl]
    ld d, b
    ld a, a
    ld [hl], $90
    ld c, [hl]
    ld [hl], $80
    ld e, l
    ld [hl], $10
    ld l, h
    ld [hl], $b0
    ld a, d
    scf
    jr nz, jr_001_75a8

    scf
    ret nc

    ld h, b
    scf
    ldh [$71], a
    jr c, jr_001_7504

    ld b, c
    jr c, jr_001_7537

    ld c, a
    jr c, jr_001_75da

    ld e, l
    jr c, jr_001_75cd

    ld l, e
    jr c, @+$52

    db $76
    add hl, sp
    or b
    ld b, d
    add hl, sp
    sub b
    ld d, b
    add hl, sp
    ld h, b
    ld e, e
    add hl, sp
    sub b
    ld h, a
    add hl, sp
    nop
    ld [hl], l
    ld a, [hl-]
    ld h, b
    ld b, c
    ld a, [hl-]
    and b
    ld c, [hl]
    ld a, [hl-]
    jr nz, jr_001_75ec

    ld a, [hl-]
    ld [hl], b
    db $76
    dec sp
    ret nz

    ld c, c
    dec sp
    nop
    ld e, a
    dec sp
    and b
    ld [hl], h
    inc a
    ldh [rOBP1], a
    inc a
    sub b
    ld d, h
    inc a
    db $10
    ld h, h
    inc a
    or b
    ld [hl], l
    dec a
    ld h, b
    ld b, c
    dec a
    ld h, b
    ld c, e
    dec a

jr_001_75a8:
    ld h, b
    ld e, e
    dec a
    ldh a, [$63]
    dec a
    jr nz, jr_001_761e

    dec a
    sub b
    ld a, c
    ld a, $00
    ld b, d
    ld a, $e0
    ld c, [hl]
    ld a, $e0
    ld e, c
    ld a, $e0
    ld h, h
    ld a, $c0
    db $76
    ccf
    ldh [rDMA], a
    ccf
    or b
    ld d, l
    ccf
    db $10
    ld h, e
    ccf
    add b

jr_001_75cd:
    ld [hl], c
    ccf
    and b
    ld a, [hl]
    ld b, b
    and b
    ld c, d
    ld b, b
    db $10
    ld d, [hl]
    ld b, b
    ret nz

    ld l, e

jr_001_75da:
    ld b, b
    or b
    ld a, l
    ld b, c
    sub b
    ld d, c
    ld b, c
    and b
    ld h, l
    ld b, c
    ld [hl], b
    ld a, b
    ld b, d
    sub b
    ld c, c
    ld b, d
    ret nc

    ld e, c

jr_001_75ec:
    ld b, d
    ldh [$62], a
    ld b, d
    jr nz, jr_001_766a

    ld b, e
    ld h, b
    ld c, h
    ld b, e
    ld b, b
    ld h, d
    ld b, e
    add b
    ld [hl], a
    ld b, h
    ld b, b
    ld c, l
    ld b, h
    or b
    ld h, d
    ld b, h
    and b
    db $76
    ld b, l
    ret nz

    ld c, b
    ld b, l
    ld b, b
    ld e, a
    ld b, l
    jr nz, jr_001_7681

    ld b, [hl]
    ret nz

    ld c, c
    ld b, [hl]
    ld b, b
    ld h, b
    ld b, [hl]
    ld d, b
    ld [hl], l
    ld b, a
    ret nz

    ld c, e
    ld b, a
    ld b, b
    ld h, b
    ld b, a
    ld h, b

jr_001_761e:
    ld [hl], h
    ld c, b
    jr nz, jr_001_7668

    ld c, b
    and b
    ld e, d
    ld c, b
    ldh a, [rOCPS]
    ld c, b
    db $10
    ld a, a
    ld c, c
    ld h, b
    ld c, e
    ld c, c
    ld d, b
    ld e, h
    ld c, c
    ret nc

    ld l, d
    ld c, c
    ld h, b
    ld a, c
    ld c, d
    jr nz, jr_001_7686

    ld c, d
    ld h, b
    ld e, h
    ld c, d
    nop
    ld l, c
    ld c, d
    db $10
    ld a, c
    ld c, e
    and b
    ld c, d
    ld c, e
    jr nc, jr_001_76a2

    ld c, e
    ret nc

    ld l, h
    ld c, e
    ld b, b
    ld a, a
    ld c, h
    ld d, b
    ld c, a
    ld c, h
    jr nz, jr_001_76b5

    ld c, h
    or b
    ld [hl], e
    ld c, l
    ldh [rLY], a
    ld c, l
    or b
    ld e, d
    ld c, l
    ld h, b
    ld l, l
    ld c, [hl]
    ld [hl], b
    ld b, c
    ld c, [hl]
    ld d, b
    ld d, e
    ld c, [hl]

jr_001_7668:
    ldh a, [$66]

jr_001_766a:
    ld c, [hl]
    ld [hl], b
    ld a, c
    ld c, a
    or b
    ld c, l
    ld c, a
    add b
    ld h, c
    ld c, a
    nop
    ld a, b
    ld d, b
    ld h, b
    ld c, [hl]
    ld d, b
    ld d, b
    ld h, h
    ld d, b
    ld d, b
    ld a, c
    ld d, c
    ret nz

jr_001_7681:
    ld c, h
    ld d, c
    sub b
    ld h, b
    ld d, c

jr_001_7686:
    ret nc

    ld [hl], d
    ld d, d
    db $10
    ld b, d
    ld d, d
    ldh [$4c], a
    ld d, d
    add b
    ld e, c
    ld d, d
    ret nz

    ld h, a
    ld d, d
    db $10
    ld a, b
    ld d, e
    ld [hl], b
    ld c, b
    ld d, e
    jr nz, jr_001_76fa

    ld d, e
    ld [hl], b
    ld [hl], c
    ld d, h
    ld h, b

jr_001_76a2:
    ld b, a
    ld d, h
    ld h, b
    ld e, l
    ld d, h
    or b
    ld [hl], e
    ld d, l
    jr nc, jr_001_76f5

    ld d, l
    ld h, b
    ld e, [hl]
    ld d, l
    ret nz

    ld [hl], h
    ld d, [hl]
    jr nc, jr_001_7700

jr_001_76b5:
    ld d, [hl]
    or b
    ld h, c
    ld d, [hl]
    ret nz

    db $76
    ld d, a
    jr nc, @+$4f

    ld d, a
    ret nc

    ld h, d
    ld d, a
    ldh a, [rPCM34]
    ld e, b
    ld [hl], b
    ld c, h
    ld e, b
    or b
    ld h, c
    ld e, b
    ld [hl], b
    ld [hl], a
    ld e, c
    add b
    ld c, l
    ld e, c
    jr nz, jr_001_7734

    ld e, c
    ld d, b
    ld [hl], a
    ld e, d
    nop
    ld c, l
    ld e, d
    add b
    ld h, e
    ld e, d
    nop
    ld a, b
    ld e, e
    jr nz, jr_001_772a

    ld e, e
    ld [hl], b
    ld e, h
    ld e, e
    ld b, b
    ld [hl], b
    ld e, h
    sub b
    ld b, e
    ld e, h
    or b
    ld d, l
    ld e, h
    and b
    ld h, a
    ld e, h
    jr nz, jr_001_7770

    ld e, l

jr_001_76f5:
    nop
    ld c, a
    ld e, l
    add b
    ld h, l

jr_001_76fa:
    ld e, l
    ldh a, [$7b]
    ld e, [hl]
    ld [hl], b
    ld d, d

jr_001_7700:
    ld e, [hl]
    ldh a, [rBCPS]
    ld e, [hl]
    ld [hl], b
    ld a, a
    ld e, a
    add b
    ld d, l
    ld e, a
    ldh a, [rOCPD]
    ld h, b
    jr nc, jr_001_7751

    ld h, b
    ret nc

    ld d, a
    ld h, b
    ld d, b
    ld l, [hl]
    ld h, c
    ret nz

    ld b, h
    ld h, c
    ldh [$5a], a
    ld h, c
    ld d, b
    ld [hl], c
    ld h, d
    db $10
    ld b, a
    ld h, d
    ld [hl], b
    ld e, l
    ld h, d
    or b
    ld [hl], e
    ld h, e
    or b
    ld c, c

jr_001_772a:
    ld h, e
    sub b
    ld e, a
    ld h, e
    ret nz

    ld [hl], l
    ld h, h
    ld b, b
    ld c, h
    ld h, h

jr_001_7734:
    ret nz

    ld h, d
    ld h, h
    ld b, b
    ld a, c
    ld h, l
    ret nz

    ld c, a
    ld h, l
    ld b, b
    ld h, [hl]
    ld h, l
    ret nz

    ld a, h
    ld h, [hl]
    ld b, b
    ld d, e
    ld h, [hl]
    and b
    ld l, c
    ld h, a
    jr nz, jr_001_778b

    ld h, a
    and b
    ld d, [hl]
    ld h, a
    db $10
    ld l, l

jr_001_7751:
    ld l, b
    jr nc, jr_001_7797

    ld l, b
    or b
    ld e, c
    ld l, b
    nop
    ld l, l
    ld l, c
    add b
    ld b, e
    ld l, c
    ret nc

    ld e, b
    ld l, c
    ld b, b
    ld l, a
    ld l, d
    ld [hl], b
    ld b, l
    ld l, d
    and b
    ld e, e
    ld l, d
    jr nz, jr_001_77de

    ld l, e
    jr nc, jr_001_77b6

    ld l, e

jr_001_7770:
    db $10
    ld e, l
    ld l, e
    or b
    ld [hl], c
    ld l, h
    db $10
    ld b, [hl]
    ld l, h
    ld [hl], b
    ld e, d
    ld l, h
    db $10
    ld l, [hl]
    ld l, h
    ret nz

    ld a, a
    ld l, l
    ret nc

    ld d, c
    ld l, l
    ld b, b
    ld h, a
    ld l, l
    ret nz

    ld a, h
    ld l, [hl]

jr_001_778b:
    ret nz

    ld d, d
    ld l, [hl]
    db $10
    ld l, c
    ld l, [hl]
    and b
    ld a, l
    ld l, a
    ldh a, [rHDMA2]
    ld l, a

jr_001_7797:
    ret nc

    ld l, b
    ld l, a
    and b
    ld a, h
    ld [hl], b
    and b
    ld d, d
    ld [hl], b
    jr nz, jr_001_780b

    ld [hl], b
    ld [hl], b
    ld a, a
    ld [hl], c
    or b
    ld d, l
    ld [hl], c
    ldh a, [rOCPD]
    ld [hl], d
    ld h, b
    ld b, d
    ld [hl], d
    and b
    ld e, b
    ld [hl], d
    jr nz, jr_001_7823

    ld [hl], e
    ld [hl], b

jr_001_77b6:
    ld b, l
    ld [hl], e
    ld h, b
    ld e, e
    ld [hl], e
    and b
    ld [hl], c
    ld [hl], h
    jr nz, jr_001_7808

Jump_001_77c0:
    ld [hl], h
    and b
    ld e, [hl]
    ld [hl], h
    ret nc

    ld l, h
    ld [hl], l
    ld d, b
    ld b, e
    ld [hl], l
    ret nc

    ld e, c
    ld [hl], l
    ld d, b
    ld [hl], b
    db $76
    and b
    ld b, [hl]
    db $76
    jr nz, jr_001_7831

    db $76
    and b
    ld [hl], d
    ld [hl], a
    ret nz

    ld c, b
    ld [hl], a
    jr nc, @+$61

jr_001_77de:
    ld [hl], a
    ret nz

    ld [hl], h
    ld a, b
    ld b, b
    ld c, e
    ld a, b
    sub b
    ld h, c
    ld a, b
    nop
    ld a, b
    ld a, c
    ld [hl], b
    ld c, [hl]
    ld a, c
    or b
    ld h, h
    ld a, c
    jr nz, jr_001_786e

    ld a, d
    ret nz

    ld c, a
    ld a, d
    db $10
    ld h, l
    ld a, d
    ld [hl], b
    db $76
    ld a, e
    or b
    ld c, b
    ld a, e
    db $10
    ld e, b
    ld a, e
    nop
    ld h, l
    ld a, e
    ld d, b
    ld [hl], c

jr_001_7808:
    ld a, h
    ldh a, [rDMA]

jr_001_780b:
    ld a, h
    nop
    ld e, l
    ld a, h
    ret nc

    ld [hl], c
    ld a, l
    sub b
    ld b, d
    ld a, l
    ldh [rHDMA1], a
    ld a, l
    ld [hl], b
    ld h, d
    ld a, l
    ret nc

    ld [hl], d
    ld a, [hl]
    jr nc, jr_001_7860

    ld a, [hl]
    ret nc

    ld d, b

jr_001_7823:
    ld a, [hl]
    ld b, b
    ld h, [hl]
    ld a, [hl]
    ret nc

    ld a, e
    ld a, a
    ld b, b
    ld d, c
    ld a, a
    and b
    ld h, l
    ld a, a
    sub b

jr_001_7831:
    ld a, c
    add b
    ldh [rVBK], a
    add b
    ldh [$65], a
    add b
    ldh [$7b], a
    add c
    ldh [rBGP], a
    add c
    ld b, b
    ld d, e
    add c
    nop
    ld e, a
    add c
    db $10
    ld l, l
    add c
    jr nz, jr_001_78c5

    add d
    ret nz

    ld c, a
    add d
    ret nc

    ld h, l
    add d
    and b
    ld a, e
    add e
    and b
    ld d, c
    add e
    nop
    ld h, a
    add e
    jr nc, jr_001_78d6

    add h
    sub b
    ld d, b
    add h

jr_001_7860:
    db $10
    ld h, a
    add h
    add b
    ld a, l
    add l
    nop
    ld d, h
    add l
    ld b, b
    ld l, d
    add [hl]
    ret nz

    ld b, b

jr_001_786e:
    add [hl]
    ld b, b
    ld d, a
    add [hl]
    ld h, b
    ld l, l
    add a
    ld d, b
    ld b, b
    add a
    ld b, b
    ld d, l
    add a
    and b
    ld l, c
    add a
    add b
    ld a, e
    adc b
    and b
    ld c, a
    adc b
    ld [hl], b
    ld h, l
    adc b
    nop
    ld a, c
    adc c
    ldh a, [rSCX]
    adc c
    ret nz

    ld d, b
    adc c
    db $10
    ld h, a
    adc c
    ret nz

    ld a, e
    adc d
    db $10
    ld d, c
    adc d
    db $10
    ld h, a
    adc d
    ld b, b
    ld a, l
    adc e
    ld d, b
    ld d, d
    adc e
    nop
    ld h, [hl]
    adc e
    jr nz, jr_001_791f

    adc e
    add b
    ld a, [hl]
    adc h
    ld h, b
    ld d, h
    adc h
    sub b
    ld l, c
    adc h
    ld [hl], b
    ld a, h
    adc l
    ld h, b
    ld d, b
    adc l
    ld [hl], b
    ld h, c
    adc l
    or b
    ld [hl], c
    adc [hl]
    ret nz

    ld b, [hl]
    adc [hl]
    ld h, b
    ld e, h
    adc [hl]
    sub b
    ld [hl], c

jr_001_78c5:
    adc [hl]
    ret nc

    ld a, a
    adc a
    ld d, b
    ld c, d
    adc a
    ld [hl], b
    ld d, [hl]
    adc a
    ld [hl], b
    ld l, h
    sub b
    jr nz, jr_001_7916

    sub b
    nop

jr_001_78d6:
    ld d, a
    sub b
    or b
    ld l, c
    sub b
    jr nz, jr_001_795c

    sub c
    jr nc, jr_001_7934

    sub c
    jr nz, jr_001_7949

    sub c
    add b
    ld [hl], a
    sub d
    and b
    ld b, a
    sub d
    or b
    ld e, h
    sub d
    db $10
    ld [hl], d
    sub e
    nop
    ld b, [hl]
    sub e
    nop
    ld e, b
    sub e
    ld b, b
    ld l, e
    sub h
    ld [hl], b
    ld b, b
    sub h
    ldh a, [rHDMA5]
    sub h
    and b
    ld l, c
    sub h
    and b
    ld a, h
    sub l
    ld b, b
    ld d, b
    sub l
    ld d, b
    ld h, e
    sub l
    or b
    ld [hl], d
    sub [hl]
    ld [hl], b
    ld b, c
    sub [hl]
    jr nz, jr_001_7965

    sub [hl]
    ld d, b
    ld h, d

jr_001_7916:
    sub [hl]
    sub b
    ld l, a
    sub a
    ldh a, [rLCDC]
    sub a
    ldh [rRP], a

jr_001_791f:
    sub a
    db $10
    ld l, h
    sub a
    ld [hl], b
    ld a, a
    sbc b
    ret nc

    ld d, c
    sbc b
    ld [hl], b
    ld h, c
    sbc b
    ld [hl], b
    db $76
    sbc c
    ld d, b
    ld c, h
    sbc c
    sub b
    ld h, d

jr_001_7934:
    sbc c
    jr nc, jr_001_79ae

    sbc d
    nop
    ld c, h
    sbc d
    and b
    ld h, c
    sbc d
    jr nc, jr_001_79b0

    sbc d
    nop
    ld a, [hl]
    sbc e
    nop
    ld c, b
    sbc e
    and b
    ld c, [hl]

jr_001_7949:
    sbc e
    ld d, b
    ld d, l
    sbc e
    ldh a, [rBCPS]
    sbc e
    ldh a, [$7d]
    sbc h
    jr nz, jr_001_79a8

    sbc h
    nop
    ld h, [hl]
    sbc h
    ld h, b
    ld a, c
    sbc l

jr_001_795c:
    and b
    ld c, e
    sbc l
    ldh [$5f], a
    sbc l
    ret nc

    ld [hl], d
    sbc [hl]

jr_001_7965:
    ld d, b
    ld b, d
    sbc [hl]
    ld d, b
    ld d, d
    sbc [hl]
    ldh a, [$62]
    sbc [hl]
    ld b, b
    ld l, l
    sbc [hl]
    ld b, b
    ld [hl], a
    sbc a
    ldh a, [rOBP0]
    sbc a
    db $10
    ld e, e
    sbc a
    add b
    ld l, d
    sbc a
    sub b
    ld a, c
    and b
    and b
    ld b, a
    and b
    ret nc

    ld d, d
    and b
    ld d, b
    ld e, a
    and b
    jr nc, jr_001_79f5

    and b
    db $10
    ld a, b
    and c
    ldh [rSCY], a
    and c
    ld d, b
    ld c, l
    and c
    ld h, b
    ld e, d
    and c
    jr nc, jr_001_7a01

    and c
    jr nz, jr_001_7a0f

    and c
    ldh [$7b], a
    and d
    jr nz, jr_001_79eb

    and d
    nop
    ld d, e
    and d
    ld h, b

jr_001_79a8:
    ld e, [hl]
    and d
    sub b
    ld h, [hl]
    and d
    ld [hl], b

jr_001_79ae:
    ld [hl], c
    and d

jr_001_79b0:
    jr nz, jr_001_7a2c

    and e
    ldh a, [rSCX]
    and e
    jr nc, jr_001_7a06

    and e
    ret nc

    ld e, b
    and e
    add b
    ld l, b
    and e
    jr nz, jr_001_7a3a

    and h
    ld d, b
    ld c, b
    and h
    add b
    ld e, c
    and h
    jr nc, jr_001_7a33

    and h
    ldh a, [$74]
    and l
    sub b
    ld b, h
    and l
    ld d, b
    ld d, l
    and l
    add b
    ld h, l
    and l
    jr nz, jr_001_7a4e

    and [hl]
    nop
    ld c, c
    and [hl]
    ret nz

    ld e, h
    and [hl]
    or b
    ld l, a
    and a
    and b
    ld b, e
    and a
    ldh a, [rHDMA4]
    and a
    add b
    ld h, a

jr_001_79eb:
    and a
    db $10
    ld a, c
    xor b
    db $10
    ld c, [hl]
    xor b
    ld h, b
    ld h, d
    xor b

jr_001_79f5:
    db $10
    ld a, b
    xor c
    ld d, b
    ld c, d
    xor c
    ldh [$5d], a
    xor c
    ret nz

    ld l, a
    xor d

jr_001_7a01:
    and b
    ld b, l
    xor d
    ret nz

    ld d, l

jr_001_7a06:
    xor d
    ld h, b
    ld l, c
    xor d
    ret nc

    ld a, e
    xor e
    ldh [rVBK], a

jr_001_7a0f:
    xor e
    ld d, b
    ld h, d
    xor e
    ldh [rPCM34], a
    xor h
    ldh a, [rOBP1]
    xor h
    ld h, b
    ld e, [hl]
    xor h
    db $10
    ld [hl], h
    xor l
    or b
    ld b, a
    xor l
    ldh a, [$57]
    xor l
    ret nz

    ld l, e
    xor l
    ldh a, [$7e]
    xor [hl]
    ld [hl], b

jr_001_7a2c:
    ld d, b
    xor [hl]
    ld b, b
    ld h, c
    xor [hl]
    ret nz

    ld [hl], c

jr_001_7a33:
    xor a
    jr nz, jr_001_7a78

    xor a
    ret nc

    ld c, a
    xor a

jr_001_7a3a:
    db $10
    ld e, h
    xor a
    ld [hl], b
    ld h, [hl]
    xor a
    ret nc

    ld a, c
    or b
    jr nc, jr_001_7a92

    or b
    ld h, b
    ld h, d
    or b
    nop
    ld l, [hl]
    or b
    nop
    ld a, l

jr_001_7a4e:
    or c
    jr nc, jr_001_7aa0

    or c
    ret nz

    ld h, b
    or c
    jr nz, jr_001_7acb

    or d
    add b
    ld b, a
    or d
    and b
    ld e, h
    or d
    ld d, b
    ld l, b
    or d
    jr nc, jr_001_7adb

    or e
    ldh [rLYC], a
    or e
    jr nz, jr_001_7abe

    or e
    ret nc

    ld h, d
    or e
    ret nc

    ld [hl], d
    or h
    ret nc

    ld b, d
    or h
    ld h, b
    ld d, e
    or h
    and b
    ld e, c

jr_001_7a78:
    or h
    nop
    ld h, a
    or h
    ld [hl], b
    ld a, d
    or l
    ld d, b
    ld c, [hl]
    or l
    ret nz

    ld h, e
    or l
    ld h, b
    ld a, c
    or [hl]
    ld h, b
    ld c, b
    or [hl]
    ld d, b
    ld e, l
    or [hl]
    jr nc, jr_001_7b03

    or a
    ld b, b

jr_001_7a92:
    ld c, c
    or a
    ld d, b
    ld e, a
    or a
    ld b, b
    ld [hl], d
    or a
    sub b
    ld a, e
    cp b
    ret nc

    ld b, h
    cp b

jr_001_7aa0:
    jr nz, jr_001_7af0

    cp b
    ld h, b
    ld d, a
    cp b
    ld h, b
    ld e, h
    cp b
    ld h, b
    ld h, c
    cp b
    ld h, b
    ld h, [hl]
    cp b
    ld h, b
    ld l, e
    cp b
    ld d, b
    ld [hl], d
    cp b
    and b
    db $76
    cp b
    ld b, b
    ld a, l
    cp c
    jr nc, @+$46

    cp c

jr_001_7abe:
    ret nc

    ld c, d
    cp c
    jr nc, jr_001_7b15

    cp c
    jr nz, jr_001_7b1b

    cp c
    add b
    ld e, b
    cp c
    ret nz

jr_001_7acb:
    ld e, l
    cp c
    ret nc

    ld h, b
    cp c
    add b
    ld h, l
    cp c
    jr nz, jr_001_7b3f

    cp c
    ld [hl], b
    ld l, a
    cp c
    ldh [$73], a

jr_001_7adb:
    cp c
    nop
    ld a, c
    cp c
    db $10
    ld a, a
    cp d
    jr nz, jr_001_7b27

    cp d
    ldh a, [rBGP]
    cp d
    and b
    ld c, l
    cp d
    ld b, b
    ld e, d
    cp d
    jr nc, jr_001_7b58

jr_001_7af0:
    cp d
    ret nz

    ld [hl], h
    cp e
    ld d, b
    ld b, c
    cp e
    ld [hl], b
    ld c, a
    cp e
    add b
    ld e, h
    cp e
    ld d, b
    ld l, b
    cp e
    ldh a, [$6c]
    cp e

jr_001_7b03:
    sub b
    ld [hl], c
    cp e
    ldh [$75], a
    cp e
    ld [hl], b
    ld a, d
    cp h
    and b
    ld b, c
    cp h
    ldh [rBGP], a
    cp h
    ld h, b
    ld c, l
    cp h

jr_001_7b15:
    jr nc, jr_001_7b6a

    cp h
    jr nc, jr_001_7b72

    cp h

jr_001_7b1b:
    ld b, b
    ld e, h
    cp h
    db $10
    ld h, c
    cp h
    ld h, b
    ld h, h
    cp h
    ld d, b
    ld l, d
    cp h

jr_001_7b27:
    ld b, b
    ld [hl], b
    cp h
    jr nc, @+$78

    cp h
    jr nz, @+$7e

    cp l
    ldh a, [rOBP0]
    cp l
    ld d, b
    ld d, h
    cp l
    ld [hl], b
    ld h, d
    cp l
    sub b
    ld l, a
    cp l
    jr nz, jr_001_7bb9

    cp [hl]

jr_001_7b3f:
    ld b, b
    ld b, a
    cp [hl]
    ret nc

    ld c, [hl]
    cp [hl]
    ret nz

    ld e, [hl]
    cp [hl]
    ld [hl], b
    ld l, [hl]
    cp [hl]
    or b
    ld [hl], l
    cp a
    db $10
    ld b, h
    cp a
    add b
    ld d, d
    cp a
    ret nc

    ld e, l
    cp a
    and b

jr_001_7b58:
    ld l, e
    cp a
    jr nc, jr_001_7bd4

    ret nz

    jr nc, @+$49

    ret nz

    nop
    ld d, l
    ret nz

    sub b
    ld h, c
    ret nz

    ldh [rSVBK], a
    ret nz

    ld h, b

jr_001_7b6a:
    ld a, [hl]
    pop bc
    ld h, b
    ld c, b
    pop bc
    sub b
    ld c, e
    pop bc

jr_001_7b72:
    sub b
    ld c, a
    pop bc
    ld [hl], b
    ld d, e
    pop bc
    db $10
    ld e, c
    pop bc
    jr nc, jr_001_7be2

    pop bc
    ld d, b
    ld l, e
    pop bc
    jr nz, jr_001_7bf3

    pop bc
    ret nz

    ld a, b
    jp nz, Jump_001_4140

    jp nz, $45d0

    jp nz, Jump_001_52d0

    jp nz, $5fd0

    jp nz, Jump_001_6cd0

    jp nz, Jump_001_7410

    jp nz, Jump_001_7bb0

    jp $4300


    jp $4aa0


    jp Jump_001_51b0


    jp $5a80


    jp $6350


    jp Jump_001_6c20


    jp $7000


Jump_001_7bb0:
    jp Jump_001_73e0


    jp Jump_001_77c0


    jp $7b10


jr_001_7bb9:
    jp Jump_001_7e60


    call nz, Call_001_41b0
    call nz, Call_001_4500
    call nz, $4d40
    call nz, Call_001_5310
    call nz, $5670
    call nz, Call_001_5b20
    call nz, Call_001_5f70
    call nz, Call_001_6280

jr_001_7bd4:
    call nz, $65b0
    call nz, $6b50
    call nz, Call_001_7350
    call nz, $7bc0
    push bc
    db $10

jr_001_7be2:
    ld b, l
    push bc
    ldh [$50], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_001_7bf3:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_001_7e60:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
