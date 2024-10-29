SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

    jp Jump_006_40e3


    jp Jump_006_487b


Call_006_4006:
    jp Jump_006_412b


    jp Jump_006_402b


    jp Jump_006_41cb


    jp Jump_006_491e


    jp Jump_006_4065


    jp Jump_006_4073


    jp Jump_006_4032


    jp Jump_006_4079


    jp Jump_006_4059


    jp Jump_006_4027


    jp Jump_006_40af


Jump_006_4027:
    ld [$dd78], a
    ret


Jump_006_402b:
    call Call_006_41cb
    call Call_006_491e
    ret


Jump_006_4032:
    ldh a, [rNR50]
    and $07
    jr z, jr_006_403f

    dec a
    or $08
    ld b, a
    jp Jump_006_4041


jr_006_403f:
    ld b, $00

Jump_006_4041:
    ldh a, [rNR50]
    and $70
    jr z, jr_006_404c

    sub $10
    jp Jump_006_404e


jr_006_404c:
    ld a, $00

Jump_006_404e:
    or b
    cp $00
    jr nz, jr_006_4056

    call Call_006_4065

jr_006_4056:
    ldh [rNR50], a
    ret


Jump_006_4059:
    xor a
    ldh [rNR51], a
    ld [$dd79], a
    ldh [rNR50], a
    ld [$dd76], a
    ret


Call_006_4065:
Jump_006_4065:
    ld a, $00
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR32], a
    ldh [rNR42], a
    ld [$dd76], a
    ret


Call_006_4073:
Jump_006_4073:
    ld a, $ff
    ld [$dd76], a
    ret


Jump_006_4079:
    call Call_006_4073
    ldh a, [rNR50]
    cp $00
    jr nz, jr_006_4087

    ld a, $88
    ldh [rNR50], a
    ret


jr_006_4087:
    and $07
    cp $07
    jr z, jr_006_4090

    add $01
    ld b, a

jr_006_4090:
    ldh a, [rNR50]
    and $70
    srl a
    srl a
    srl a
    srl a
    cp $07
    ret z

    add $01
    sla a
    sla a
    sla a
    sla a
    or b
    or $88
    ldh [rNR50], a
    ret


Jump_006_40af:
    add a
    add a
    ld hl, $6f1c
    add l
    ld l, a
    jr nc, jr_006_40b9

    inc h

jr_006_40b9:
    ld a, [hl]
    cp $ff
    jr z, jr_006_40c1

    call Call_006_40dd

jr_006_40c1:
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_006_40ca

    call Call_006_40dd

jr_006_40ca:
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_006_40d3

    call Call_006_40dd

jr_006_40d3:
    inc hl
    ld a, [hl]
    cp $ff
    jr z, jr_006_40dc

    call Call_006_40dd

jr_006_40dc:
    ret


Call_006_40dd:
    push hl
    call Call_006_487b
    pop hl
    ret


Jump_006_40e3:
    ld a, $00
    ldh [rNR52], a
    nop
    ldh [rNR52], a
    ld [$dd68], a
    ld [$dd69], a
    ld [$dd6b], a
    ld [$dd6c], a
    ld [$dd6e], a
    ld [$dd6f], a
    ld [$dd71], a
    ld [$dd72], a
    ld [$dd00], a
    ld [$dd18], a
    ld [$dd30], a
    ld [$dd48], a
    ld a, $ff
    ld [$dd78], a
    ld a, $01
    ld [$dd77], a
    ld de, $ff30
    ld hl, $49dd
    ld b, $10

jr_006_4120:
    ld a, [hl]
    ld [de], a
    inc hl
    inc de
    dec b
    jr nz, jr_006_4120

    call Call_006_418b
    ret


Jump_006_412b:
    ld l, a
    ld h, $00
    add hl, hl
    ld d, h
    ld e, l
    add hl, hl
    add hl, hl
    add hl, de
    ld de, $49ed
    add hl, de
    ld a, [hl+]
    ld [$dd02], a
    ld a, [hl+]
    ld [$dd03], a
    ld a, [hl+]
    ld [$dd1a], a
    ld a, [hl+]
    ld [$dd1b], a
    ld a, [hl+]
    ld [$dd32], a
    ld a, [hl+]
    ld [$dd33], a
    ld a, [hl+]
    ld [$dd4a], a
    ld a, [hl+]
    ld [$dd4b], a
    ld a, [hl+]
    ld [$dd60], a
    ld a, [hl+]
    ld [$dd61], a
    ld a, $01
    ld [$dd01], a
    ld [$dd19], a
    ld a, $02
    ld [$dd31], a
    ld [$dd49], a
    ld a, $03
    ld [$dd00], a
    ld [$dd18], a
    ld [$dd30], a
    ld [$dd48], a
    ld [$dd76], a
    ld a, $ff
    ld [$dd78], a
    ld a, $01
    ld [$dd77], a

Call_006_418b:
    ld a, $8f
    ldh [rNR52], a
    nop
    nop
    ldh [rNR52], a
    ld a, $08
    ldh [rNR10], a
    ld a, $ff
    ldh [rNR51], a
    ld [$dd79], a
    ld a, $77
    ldh [rNR50], a
    ld a, $80
    ldh [rNR30], a
    xor a
    ldh [rNR12], a
    ldh [rNR22], a
    ldh [rNR32], a
    ldh [rNR42], a
    ld [$dd14], a
    ld [$dd2c], a
    ld [$dd44], a
    ld [$dd5c], a
    ld [$dd15], a
    ld [$dd2d], a
    ld [$dd45], a
    ld [$dd5d], a
    ld [$dd55], a
    ret


Call_006_41cb:
Jump_006_41cb:
    ld a, [$dd76]
    and a
    ret z

    ld a, [$dd78]
    ld b, a
    ld a, [$dd77]
    add b
    ld [$dd77], a
    ret nc

    xor a
    ld [$dd7b], a
    ld hl, $dd62
    ld de, $41dc
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$dd14]
    ld [$dd65], a
    ld hl, $dd00
    ld de, $ff11
    call Call_006_44d4
    ld a, [$dd00]
    and $01
    jp z, Jump_006_429b

    ld a, [$dd69]
    and a
    jp nz, Jump_006_429b

    ld hl, $dd0a
    ld de, $dd0b
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $ff12
    call Call_006_446c
    ld de, $dd0b
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    ld hl, $dd00
    ld de, $ff13
    call Call_006_45a7
    ld hl, $dd0d
    ld de, $dd0e
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $dd05
    call Call_006_4494
    ld de, $dd0e
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    ld a, [$dd10]
    and a
    jr z, jr_006_429b

    dec a
    ld [$dd10], a
    and a
    jr nz, jr_006_429b

    ld a, [$dd11]
    ld c, a
    ld a, [$dd12]
    ld b, a
    ld a, [bc]
    cp $ff
    jr z, jr_006_428c

    ld [$dd10], a
    inc bc
    ld a, [bc]
    ld e, a
    ld a, [$dd7c]
    add e
    push af
    ld de, $481b
    add e
    ld e, a
    jr nc, jr_006_426f

    inc d

jr_006_426f:
    ld a, [de]
    ld [$dd04], a
    pop af
    ld de, $47bb
    add e
    ld e, a
    jr nc, jr_006_427c

    inc d

jr_006_427c:
    ld a, [de]
    ld [$dd05], a
    inc bc
    ld a, c
    ld [$dd11], a
    ld a, b
    ld [$dd12], a
    jp Jump_006_429b


jr_006_428c:
    ld a, $01
    ld [$dd10], a
    inc bc
    ld a, [bc]
    ld [$dd11], a
    inc bc
    ld a, [bc]
    ld [$dd12], a

Jump_006_429b:
jr_006_429b:
    ld a, $01
    ld [$dd7b], a
    ld hl, $dd62
    ld de, $429b
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$dd2c]
    ld [$dd65], a
    ld hl, $dd18
    ld de, $ff16
    call Call_006_44d4
    ld a, [$dd18]
    and $01
    jp z, Jump_006_435b

    ld a, [$dd6c]
    and a
    jp nz, Jump_006_435b

    ld hl, $dd22
    ld de, $dd23
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $ff17
    call Call_006_446c
    ld de, $dd23
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    ld hl, $dd18
    ld de, $ff18
    call Call_006_45a7
    ld hl, $dd25
    ld de, $dd26
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $dd1d
    call Call_006_4494
    ld de, $dd26
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    ld a, [$dd28]
    and a
    jr z, jr_006_435b

    dec a
    ld [$dd28], a
    and a
    jr nz, jr_006_435b

    ld a, [$dd29]
    ld c, a
    ld a, [$dd2a]
    ld b, a
    ld a, [bc]
    cp $ff
    jr z, jr_006_434c

    ld [$dd28], a
    inc bc
    ld a, [bc]
    ld e, a
    ld a, [$dd7d]
    add e
    push af
    ld de, $481b
    add e
    ld e, a
    jr nc, jr_006_432f

    inc d

jr_006_432f:
    ld a, [de]
    ld [$dd1c], a
    pop af
    ld de, $47bb
    add e
    ld e, a
    jr nc, jr_006_433c

    inc d

jr_006_433c:
    ld a, [de]
    ld [$dd1d], a
    inc bc
    ld a, c
    ld [$dd29], a
    ld a, b
    ld [$dd2a], a
    jp Jump_006_435b


jr_006_434c:
    ld a, $01
    ld [$dd28], a
    inc bc
    ld a, [bc]
    ld [$dd29], a
    inc bc
    ld a, [bc]
    ld [$dd2a], a

Jump_006_435b:
jr_006_435b:
    ld a, $02
    ld [$dd7b], a
    ld hl, $dd62
    ld de, $435b
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$dd44]
    ld [$dd65], a
    ld hl, $dd30
    ld de, $ff1b
    call Call_006_44d4
    ld a, [$dd30]
    and $01
    jp z, Jump_006_441b

    ld a, [$dd6f]
    and a
    jp nz, Jump_006_441b

    ld hl, $dd30
    ld de, $ff1d
    call Call_006_45a7
    ld hl, $dd3a
    ld de, $dd3b
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $ff1c
    call Call_006_446c
    ld de, $dd3b
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    ld hl, $dd3d
    ld de, $dd3e
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $dd35
    call Call_006_4494
    ld de, $dd3e
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    ld a, [$dd40]
    and a
    jr z, jr_006_441b

    dec a
    ld [$dd40], a
    and a
    jr nz, jr_006_441b

    ld a, [$dd41]
    ld c, a
    ld a, [$dd42]
    ld b, a
    ld a, [bc]
    cp $ff
    jr z, jr_006_440c

    ld [$dd40], a
    inc bc
    ld a, [bc]
    ld e, a
    ld a, [$dd7e]
    add e
    push af
    ld de, $481b
    add e
    ld e, a
    jr nc, jr_006_43ef

    inc d

jr_006_43ef:
    ld a, [de]
    ld [$dd34], a
    pop af
    ld de, $47bb
    add e
    ld e, a
    jr nc, jr_006_43fc

    inc d

jr_006_43fc:
    ld a, [de]
    ld [$dd35], a
    inc bc
    ld a, c
    ld [$dd41], a
    ld a, b
    ld [$dd42], a
    jp Jump_006_441b


jr_006_440c:
    ld a, $01
    ld [$dd40], a
    inc bc
    ld a, [bc]
    ld [$dd41], a
    inc bc
    ld a, [bc]
    ld [$dd42], a

Jump_006_441b:
jr_006_441b:
    ld a, $03
    ld [$dd7b], a
    ld hl, $dd62
    ld de, $441b
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$dd5c]
    ld [$dd65], a
    ld hl, $dd48
    ld de, $ff20
    call Call_006_44d4
    ld a, [$dd48]
    and $01
    jr z, jr_006_4462

    ld a, [$dd72]
    and a
    jp nz, Jump_006_4462

    ld hl, $dd52
    ld de, $dd53
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    ld de, $ff21
    call Call_006_446c
    ld de, $dd53
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    call Call_006_45de

Jump_006_4462:
jr_006_4462:
    ld hl, $dd48
    ld de, $ff22
    call Call_006_45a7
    ret


Call_006_446c:
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret nz

    ld a, [bc]
    cp $ff
    jr nz, jr_006_447a

    ld a, $00
    ld [hl], a
    ret


jr_006_447a:
    ld [de], a
    inc bc
    ld a, [bc]
    ld [hl], a
    ld a, l
    sub $06
    ld l, a
    jr nc, jr_006_4485

    dec h

jr_006_4485:
    ld a, [hl]
    or $80
    ld [hl], a
    ld a, l
    add $04
    ld l, a
    jr nc, jr_006_4490

    inc h

jr_006_4490:
    ld a, [de]
    ld [hl], a
    inc bc
    ret


Call_006_4494:
    ld a, [hl]
    and a
    ret z

    dec [hl]
    ret nz

    inc bc
    ld a, [bc]
    push hl
    ld [hl], a
    dec bc
    ld a, [de]
    ld l, a
    dec de
    ld a, [de]
    ld h, a
    ld a, [bc]
    cp $7e
    jr nz, jr_006_44aa

    pop hl
    ret


jr_006_44aa:
    cp $7d
    jr z, jr_006_44c7

    cp $7f
    jr nc, jr_006_44b9

    add l
    ld l, a
    jr nc, jr_006_44b7

    inc h

jr_006_44b7:
    jr jr_006_44be

jr_006_44b9:
    add l
    ld l, a
    jr c, jr_006_44be

    dec h

jr_006_44be:
    ld a, h
    ld [de], a
    inc de
    ld a, l
    ld [de], a
    inc bc
    inc bc
    pop hl
    ret


jr_006_44c7:
    inc bc
    ld a, [bc]
    push af
    inc bc
    ld a, [bc]
    ld b, a
    pop af
    ld c, a
    pop hl
    ld a, $01
    ld [hl], a
    ret


Call_006_44d4:
    ld a, [hl]
    and $02
    ret z

    inc hl
    dec [hl]
    ret nz

    inc hl
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [bc]
    ld [$dd66], a
    and $7f
    cp $5f
    jp nc, Jump_006_4637

    push de
    ld de, $dd65
    ld a, [de]
    ld d, a
    ld a, [bc]
    and $7f
    add d
    ld d, a
    push af
    ld a, [$dd7b]
    cp $00
    jr nz, jr_006_4501

    ld a, d
    ld [$dd7c], a

jr_006_4501:
    cp $01
    jr nz, jr_006_4509

    ld a, d
    ld [$dd7d], a

jr_006_4509:
    cp $02
    jr nz, jr_006_4511

    ld a, d
    ld [$dd7e], a

jr_006_4511:
    pop af
    ld de, $481b
    add e
    ld e, a
    jp nc, Jump_006_451b

    inc d

Jump_006_451b:
    ld a, [de]
    inc hl
    ld [hl], a
    ld de, $dd65
    ld a, [de]
    ld d, a
    ld a, [bc]
    and $7f
    add d
    ld de, $47bb
    add e
    ld e, a
    jr nc, jr_006_452f

    inc d

jr_006_452f:
    ld a, [de]
    inc hl
    ld [hl], a
    inc bc
    ld a, [bc]
    and $0f
    push hl
    ld hl, $dd61
    ld d, [hl]
    dec hl
    ld e, [hl]
    pop hl
    add e
    ld e, a
    jr nc, jr_006_4543

    inc d

jr_006_4543:
    ld a, [de]
    ld de, $fffc
    add hl, de
    ld [hl], a
    ld a, [$dd66]
    and $80
    srl a
    srl a
    ld d, a
    ld a, [bc]
    and $f0
    srl a
    srl a
    srl a
    add d
    push hl
    ld hl, $4a8f
    add l
    ld l, a
    jr nc, jr_006_4566

    inc h

jr_006_4566:
    ld e, [hl]
    inc hl
    ld d, [hl]
    pop hl
    inc bc
    inc hl
    ld [hl], c
    inc hl
    ld [hl], b
    ld b, d
    ld c, e
    pop de
    inc hl
    ld a, [bc]
    or [hl]
    ld [hl], a
    inc hl
    inc hl
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    inc de
    inc hl
    ld a, [bc]
    ld [hl], a
    inc hl
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    inc hl
    ld a, [bc]
    ld [hl], a
    inc bc
    inc hl
    ld a, [bc]
    ld [hl], a
    inc bc
    inc hl
    ld a, [bc]
    ld [hl], a
    ret


Call_006_45a7:
    ld a, [hl]
    and $01
    ret z

    ld bc, $0005
    add hl, bc
    ld a, e
    cp $22
    jp z, Jump_006_45d5

    ld a, [hl]
    ld [de], a

jr_006_45b7:
    dec hl
    inc de
    push de
    push hl
    ld a, [hl]
    and $80
    jr z, jr_006_45cd

    ld bc, $0003
    add hl, bc
    dec de
    dec de
    dec de
    ld a, [hl]
    ld [de], a
    inc hl
    inc de
    ld a, [hl]
    ld [de], a

jr_006_45cd:
    pop hl
    pop de
    ld a, [hl]
    ld [de], a
    and $7f
    ld [hl], a
    ret


Jump_006_45d5:
    ld a, [$dd64]
    ld [$dd4d], a
    ld [de], a
    jr jr_006_45b7

Call_006_45de:
    ld a, [$dd55]
    and a
    ret z

    dec a
    ld [$dd55], a
    and a
    ret nz

    ld a, [$dd56]
    ld l, a
    ld a, [$dd57]
    ld h, a
    ld a, [hl]
    cp $7e
    ret z

    cp $7d
    jr z, jr_006_460b

    ld [$dd64], a
    inc hl
    ld a, [hl]
    ld [$dd55], a
    inc hl
    ld a, l
    ld [$dd56], a
    ld a, h
    ld [$dd57], a
    ret


jr_006_460b:
    ld a, $01
    ld [$dd55], a
    inc hl
    ld a, [hl]
    ld [$dd56], a
    inc hl
    ld a, [hl]
    ld [$dd57], a
    ret


    ld c, e
    ld b, [hl]
    ld h, a
    ld b, [hl]
    ld [hl], b
    ld b, [hl]
    add c
    ld b, [hl]
    sub l
    ld b, [hl]
    ldh [rDMA], a
    add hl, de
    ld b, a
    dec l
    ld b, a
    add d
    ld b, a
    sbc d
    ld b, a
    ld b, d
    ld b, a
    ld d, d
    ld b, a
    ld h, d
    ld b, a
    ld [hl], d
    ld b, a

Jump_006_4637:
    sub $60
    add a
    push hl
    dec hl
    dec hl
    inc [hl]
    ld hl, $461c
    add l
    ld l, a
    jr nc, jr_006_4646

    inc h

jr_006_4646:
    ld a, [hl]
    dec hl
    ld l, [hl]
    ld h, a
    jp hl


    ld hl, $dd61
    ld a, [hl]
    dec hl
    ld l, [hl]
    ld h, a
    inc bc
    ld a, [bc]
    and $0f
    add l
    ld l, a
    jr jr_006_465b

    inc h

jr_006_465b:
    ld a, [hl]
    pop hl
    ld de, $fffe
    add hl, de
    ld [hl], a
    inc bc
    inc hl
    jp Jump_006_47ad


    pop hl
    ld bc, $fffd
    add hl, bc
    ld a, $00
    ld [hl], a
    ret


    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    jp Jump_006_47b1


    pop hl
    inc bc
    ld a, [bc]
    ld [$dd64], a
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    inc bc
    call Call_006_47ad
    jp Jump_006_47b1


    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    inc bc
    ld a, [bc]
    sla a
    jr nc, jr_006_46a9

    ld de, $6d7c
    inc d
    jr jr_006_46ac

jr_006_46a9:
    ld de, $6d7c

jr_006_46ac:
    add e
    ld e, a
    jr nc, jr_006_46b1

    inc d

jr_006_46b1:
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl+], a
    ld d, h
    ld e, l
    ld a, $10
    add e
    ld e, a
    jr nc, jr_006_46bf

    inc d

jr_006_46bf:
    inc bc
    ld a, [bc]
    ld [de], a
    inc de
    ld a, [de]
    and a
    jr z, jr_006_46ca

    inc bc
    jr jr_006_46d6

jr_006_46ca:
    ld a, $01
    ld [de], a
    dec de
    dec de
    inc bc
    ld a, [bc]
    sub $01
    ld [de], a
    inc de
    inc de

jr_006_46d6:
    inc bc
    inc de
    ld a, c
    ld [de], a
    inc de
    ld a, b
    ld [de], a
    jp Jump_006_47b1


    inc bc
    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    ld d, h
    ld e, l
    ld a, $11
    add e
    ld e, a
    jr nc, jr_006_46f2

    inc d

jr_006_46f2:
    ld a, [de]
    and a
    jr z, jr_006_470a

    sub $01
    ld [de], a
    inc de
    inc de
    inc de
    ld a, [de]
    sub $04
    ld [hl+], a
    inc de
    ld a, [de]
    jr nc, jr_006_4706

    sub $01

jr_006_4706:
    ld [hl], a
    jp Jump_006_47b1


jr_006_470a:
    inc de
    ld a, $00
    ld [de], a
    inc de
    ld [de], a
    inc de
    ld a, [de]
    ld [hl+], a
    inc de
    ld a, [de]
    ld [hl], a
    jp Jump_006_47b1


    inc bc
    ld a, [bc]
    ld [$dd67], a
    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    inc bc
    call Call_006_47ad
    jp Jump_006_47b1


    inc bc
    ld a, [bc]
    ldh [rNR51], a
    ld [$dd79], a

jr_006_4734:
    inc bc
    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    call Call_006_47ad
    jr jr_006_47b1

    inc bc
    ld a, [$dd79]
    and $ee
    ld h, a
    ld a, [bc]
    or h
    ld [$dd79], a
    ldh [rNR51], a
    jr jr_006_4734

    inc bc
    ld a, [$dd79]
    and $dd
    ld h, a
    ld a, [bc]
    or h
    ld [$dd79], a
    ldh [rNR51], a
    jr jr_006_4734

    inc bc
    ld a, [$dd79]
    and $bb
    ld h, a
    ld a, [bc]
    or h
    ld [$dd79], a
    ldh [rNR51], a
    jr jr_006_4734

    inc bc
    ld a, [$dd79]
    and $77
    ld h, a
    ld a, [bc]
    or h
    ld [$dd79], a
    ldh [rNR51], a
    jr jr_006_4734

    inc bc
    ld a, [bc]
    ld [$dd60], a
    inc bc
    ld a, [bc]
    ld [$dd61], a
    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    inc bc
    call Call_006_47ad
    jr jr_006_47b1

    inc bc
    ld a, [bc]
    ld [$dd78], a
    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    inc bc
    call Call_006_47ad
    jr jr_006_47b1

Call_006_47ad:
Jump_006_47ad:
    ld [hl], c
    inc hl
    ld [hl], b
    ret


Jump_006_47b1:
jr_006_47b1:
    pop hl
    ld de, $dd62
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    jp hl


    sbc l
    rlca
    ld l, e
    jp z, Jump_006_7823

    rst $00
    ld [de], a
    ld e, c
    sbc h
    db $db
    rla
    ld c, a
    add h
    or [hl]
    push hl
    ld [de], a
    inc a
    ld h, h
    adc c
    xor l
    adc $ee
    inc c
    jr z, jr_006_4817

    ld e, e
    ld [hl], e
    adc c
    sbc [hl]
    or d
    push bc
    rst $10
    rst $20
    rst $30
    ld b, $14
    ld hl, $3a2e
    ld b, l
    ld c, a
    ld e, c
    ld h, e
    ld l, h
    ld [hl], h
    ld a, h
    add e
    adc d
    sub c
    sub a
    sbc l
    and e
    xor b
    xor l
    or c
    or [hl]
    cp d
    cp [hl]
    jp nz, $c9c5

    call z, $d2cf
    call nc, $d9d7
    db $db
    db $dd
    rst $18
    pop hl
    db $e3
    push hl
    and $e8
    jp hl


    ld [$edec], a
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    di
    db $f4
    push af
    push af
    rst $30
    rst $30

jr_006_4817:
    ld hl, sp-$08
    ld a, [$00fa]
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

Call_006_487b:
Jump_006_487b:
    ld hl, $6e9e
    sla a
    add l
    ld l, a
    jr nc, jr_006_4885

    inc h

jr_006_4885:
    ld a, [hl]
    ld c, a
    inc hl
    ld a, [hl]
    ld b, a
    ld a, $8f
    ldh [rNR52], a
    ld a, [bc]
    inc bc
    cp $01
    jr z, jr_006_48bd

    cp $02
    jr z, jr_006_48de

    cp $03
    jr z, jr_006_48ff

    ld a, [$dd79]
    ld d, a
    ld a, $11
    or d
    ld [$dd7a], a
    ld a, [$dd00]
    and $fe
    ld [$dd00], a
    ld a, c
    ld [$dd68], a
    ld a, b
    ld [$dd69], a
    ld a, $02
    ld [$dd6a], a
    jr jr_006_491e

jr_006_48bd:
    ld a, [$dd79]
    ld d, a
    ld a, $22
    or d
    ld [$dd7a], a
    ld a, [$dd18]
    and $fe
    ld [$dd18], a
    ld a, c
    ld [$dd6b], a
    ld a, b
    ld [$dd6c], a
    ld a, $02
    ld [$dd6d], a
    jr jr_006_491e

jr_006_48de:
    ld a, [$dd79]
    ld d, a
    ld a, $44
    or d
    ld [$dd7a], a
    ld a, [$dd30]
    and $fe
    ld [$dd30], a
    ld a, c
    ld [$dd6e], a
    ld a, b
    ld [$dd6f], a
    ld a, $02
    ld [$dd70], a
    jr jr_006_491e

jr_006_48ff:
    ld a, [$dd79]
    ld d, a
    ld a, $88
    or d
    ld [$dd7a], a
    ld a, [$dd48]
    and $fe
    ld [$dd48], a
    ld a, c
    ld [$dd71], a
    ld a, b
    ld [$dd72], a
    ld a, $02
    ld [$dd73], a

Call_006_491e:
Jump_006_491e:
jr_006_491e:
    ld hl, $dd00
    ld a, l
    ld [$dd74], a
    ld a, h
    ld [$dd75], a
    ld hl, $dd68
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr z, jr_006_4939

    ld de, $ff11
    call Call_006_498b

jr_006_4939:
    ld hl, $dd18
    ld a, l
    ld [$dd74], a
    ld a, h
    ld [$dd75], a
    ld hl, $dd6b
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr z, jr_006_4954

    ld de, $ff16
    call Call_006_498b

jr_006_4954:
    ld hl, $dd30
    ld a, l
    ld [$dd74], a
    ld a, h
    ld [$dd75], a
    ld hl, $dd6e
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr z, jr_006_496f

    ld de, $ff1b
    call Call_006_498b

jr_006_496f:
    ld hl, $dd48
    ld a, l
    ld [$dd74], a
    ld a, h
    ld [$dd75], a
    ld hl, $dd71
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr z, jr_006_498a

    ld de, $ff20
    call Call_006_498b

jr_006_498a:
    ret


Call_006_498b:
    ld a, [$dd7a]
    ldh [rNR51], a
    inc hl
    dec [hl]
    jr z, jr_006_4995

    ret


jr_006_4995:
    ld a, [bc]
    cp $ff
    jr z, jr_006_49b5

    cp $fe
    jr z, jr_006_49d1

    ld [hl], a
    inc bc
    ld a, [bc]
    ld [de], a
    inc bc
    inc de
    ld a, [bc]
    ld [de], a
    inc bc
    inc de
    inc de
    ld a, [bc]
    ld [de], a
    inc bc
    dec de
    ld a, [bc]
    ld [de], a
    inc bc

jr_006_49b0:
    dec hl
    ld [hl], b
    dec hl
    ld [hl], c
    ret


jr_006_49b5:
    ld a, $00
    dec hl
    ld [hl], a
    dec hl
    ld [hl], a
    ld hl, $dd74
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [bc]
    and $02
    jp z, Jump_006_49cb

    ld a, [bc]
    or $01
    ld [bc], a

Jump_006_49cb:
    ld a, [$dd79]
    ldh [rNR51], a
    ret


jr_006_49d1:
    inc bc
    ld a, [bc]
    ld e, a
    inc bc
    ld a, [bc]
    ld b, a
    ld c, e
    ld a, $01
    ld [hl], a
    jr jr_006_49b0

    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    xor d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    ld l, l
    ld a, c
    ld l, l
    ld a, c
    ld l, l
    ld a, c
    ld l, l
    ld a, a
    ld c, d
    push af
    ld c, [hl]
    ld [hl+], a
    ld c, a
    ld c, c
    ld c, a
    ld [hl], b
    ld c, a
    ld a, a
    ld c, d
    and e
    ld d, h
    cp h
    ld d, h
    db $d3
    ld d, h
    ld [$7f54], a
    ld c, d
    ld d, l
    ld d, [hl]
    ld a, [hl]
    ld d, [hl]
    and c
    ld d, [hl]
    cp h
    ld d, [hl]
    ld a, a
    ld c, d
    ld [hl], c
    ld e, c
    adc b
    ld e, c
    sbc c
    ld e, c
    xor h
    ld e, c
    ld a, a
    ld c, d
    ld d, l
    ld e, e
    ld [hl], h
    ld e, e
    adc c
    ld e, e
    sbc b
    ld e, e
    ld l, a
    ld c, d
    ld d, c
    ld e, [hl]
    ld e, [hl]
    ld e, [hl]
    ld e, a
    ld e, [hl]
    ld h, [hl]
    ld e, [hl]
    ld l, a
    ld c, d
    bit 3, [hl]
    ldh a, [$5e]
    rra
    ld e, a
    ld a, [hl-]
    ld e, a
    ld a, a
    ld c, d
    ld h, e
    ld h, d
    or b
    ld h, d
    di
    ld h, d
    ld a, [hl+]
    ld h, e
    ld a, a
    ld c, d
    jp nz, $d365

    ld h, l
    sbc $65
    jp hl


    ld h, l
    ld l, a
    ld c, d
    ld [$1967], sp
    ld h, a
    inc h
    ld h, a
    cpl
    ld h, a
    ld l, a
    ld c, d
    ld c, [hl]
    ld l, b
    ld [hl], a
    ld l, b
    and [hl]
    ld l, b
    pop bc
    ld l, b
    ld l, a
    ld c, d
    sub $6b
    rst $28
    ld l, e
    ld [bc], a
    ld l, h
    dec d
    ld l, h
    ld a, a
    ld c, d
    inc bc
    inc b
    ld b, $09
    inc c
    ld [de], a
    jr jr_006_4a9b

    jr nc, jr_006_4ac1

    ld h, b
    sub b
    ret nz

    ld [$2a10], sp
    inc b
    ld b, $08
    inc c
    db $10
    jr jr_006_4aa6

    jr nc, jr_006_4ac8

    ld h, b
    add b
    ret nz

    db $fc
    dec b
    ld a, [bc]
    inc d
    rst $08
    ld c, d
    db $db
    ld c, d
    rst $20
    ld c, d
    di
    ld c, d
    rst $38
    ld c, d
    dec bc
    ld c, e

jr_006_4a9b:
    rla
    ld c, e
    inc hl
    ld c, e
    cpl
    ld c, e
    dec sp
    ld c, e
    ld b, a
    ld c, e
    ld d, e

jr_006_4aa6:
    ld c, e
    ld e, a
    ld c, e
    ld l, e
    ld c, e
    ld [hl], a
    ld c, e
    add e
    ld c, e
    adc a
    ld c, e
    sbc e
    ld c, e
    and a
    ld c, e
    or e
    ld c, e
    cp a
    ld c, e
    bit 1, e
    rst $10
    ld c, e
    db $e3
    ld c, e
    rst $28
    ld c, e

jr_006_4ac1:
    ei
    ld c, e
    rlca
    ld c, h
    inc de
    ld c, h
    rra

jr_006_4ac8:
    ld c, h
    dec hl
    ld c, h
    scf
    ld c, h
    ld b, e
    ld c, h
    add b
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
    ret nz

    cp l
    nop
    ld bc, $4c4f
    ld bc, $4d56
    nop
    nop
    nop
    add b
    add b
    nop
    ld bc, $4c58
    ld bc, $4d59
    nop
    nop
    nop
    ret nz

    cp e
    ld sp, $0000
    nop
    ld bc, $4d7a
    nop
    nop
    nop
    ret nz

    cp e
    ld b, c
    nop
    nop
    nop
    ld bc, $4d7a
    nop
    nop
    nop
    add b
    add b
    nop
    ld bc, $4c63
    ld bc, $4d59
    nop
    nop
    nop
    add b
    add b
    nop
    ld bc, $4cd1
    ld [bc], a
    pop de
    ld c, l
    nop
    nop
    nop
    add b
    add b
    nop
    ld bc, $4c8c
    ld bc, $4dbe
    nop
    nop
    nop
    add b
    nop
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4e55
    add b
    add b
    nop
    ld bc, $4ca8
    nop
    nop
    nop
    ld bc, $4e60
    add b
    add b
    scf
    nop
    nop
    nop
    ld bc, $4dbe
    nop
    nop
    nop
    add b
    add b
    sub a
    nop
    nop
    nop
    ld bc, $4dbe
    nop
    nop
    nop
    add b
    add b
    nop
    ld bc, $4cb5
    ld bc, $4dbe
    nop
    nop
    nop
    add b
    add b
    ld h, d
    nop
    nop
    nop
    ld bc, $4dd1
    nop
    nop
    nop
    add b
    add b
    add b
    ld bc, $4cc4
    ld [bc], a
    db $e4
    ld c, l
    nop
    nop
    nop
    add b
    add b
    add b
    ld bc, $4cd1
    ld [bc], a
    db $e4
    ld c, l
    nop
    nop
    nop
    ret nz

    nop
    nop
    ld bc, $4d05
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    ld bc, $4d10
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    ld bc, $4d19
    ld bc, $4e0a
    nop
    nop
    nop
    add b
    add b
    nop
    ld bc, $4ce4
    nop
    nop
    nop
    ld bc, $4e90
    add b
    add b
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4e9f
    add b
    add b
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4eae
    add b
    add b
    nop
    ld bc, $4ce4
    nop
    nop
    nop
    ld [bc], a
    cp l
    ld c, [hl]
    add b
    add b
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $4ecc
    add b
    nop
    nop
    ld bc, $4d26
    ld bc, $4e0a
    nop
    nop
    nop
    add b
    nop
    nop
    ld bc, $4d26
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld b, b
    nop
    ld bc, $4cfc
    ld bc, $4dbe
    nop
    nop
    nop
    add b
    add b
    nop
    ld bc, $4cd1
    nop
    nop
    nop
    ld bc, $4e6d
    add b
    add b
    nop
    ld bc, $4d3b
    nop
    nop
    nop
    ld bc, $4ee6
    add b
    add b
    nop
    ld bc, $4d44
    ld bc, $4e20
    nop
    nop
    nop
    add b
    add b
    nop
    ld bc, $4d4d
    ld bc, $4e20
    nop
    nop
    nop
    add b
    add b
    nop
    ld bc, $4cd1
    ld [bc], a
    rst $30
    ld c, l
    nop
    nop
    nop
    and b
    ld bc, $0100
    jr nc, jr_006_4c56

    nop

jr_006_4c56:
    ld bc, $50ff
    ld bc, $0240
    jr nz, jr_006_4c60

    db $10
    ld [bc], a

jr_006_4c60:
    nop
    ld bc, $50ff
    inc bc
    jr nz, jr_006_4c69

    db $10
    ld [bc], a

jr_006_4c69:
    nop
    ld bc, $60ff
    ld bc, $0150
    jr nc, jr_006_4c75

    jr nz, @+$06

    db $10

jr_006_4c75:
    inc b
    nop
    ld bc, $a0ff
    ld bc, $0150
    and b
    ld bc, $0150
    and b
    ld bc, $0150
    and b
    ld bc, $0150
    nop
    ld bc, $70ff
    ld [bc], a
    ld h, b
    ld [bc], a
    ld d, b
    ld [bc], a
    ld b, b
    ld b, $30
    inc d
    jr nz, jr_006_4cc0

    db $10
    ld [hl-], a
    nop
    nop
    rst $38
    db $10
    inc bc
    jr nz, jr_006_4ca3

    jr nz, @+$07

jr_006_4ca3:
    db $10
    dec b
    nop
    ld bc, $a0ff
    ld bc, $0150
    ld b, b
    ld bc, $0130
    jr nz, jr_006_4cb3

    nop

jr_006_4cb3:
    ld bc, $50ff
    ld bc, $0140
    jr nc, jr_006_4cc0

    jr nz, jr_006_4cdb

    db $10
    ld [hl-], a
    db $10

jr_006_4cc0:
    jr z, jr_006_4cc2

jr_006_4cc2:
    ld bc, $20ff
    inc b
    jr nc, jr_006_4ccc

    jr nc, @+$23

    jr nz, jr_006_4cdb

jr_006_4ccc:
    db $10
    add b
    nop
    ld bc, $20ff
    inc b
    jr nc, @+$06

    ld b, b
    inc b
    ld d, b
    ld [$0c40], sp

jr_006_4cdb:
    jr nc, @+$3e

    jr nz, jr_006_4d57

    db $10
    sub [hl]
    nop
    ld bc, $10ff
    inc d
    jr nz, @+$2a

    jr nc, @+$52

    jr nz, jr_006_4d14

    db $10
    jr z, @+$01

    ld d, b
    ld [bc], a
    ld b, b
    inc b
    jr nc, @+$0a

    jr nz, @+$12

    jr nz, @+$22

    db $10
    ld b, b
    rst $38
    jr nc, @+$03

    jr nz, jr_006_4d02

    db $10
    ld [hl-], a

jr_006_4d02:
    nop
    ld bc, $20ff
    ld bc, $0a40
    ld b, b
    inc c
    ld h, b
    ld e, $00
    ld bc, $20ff
    ld bc, $0640

jr_006_4d14:
    ld h, b
    inc d
    nop
    ld bc, $60ff
    ld [bc], a
    ld b, b
    inc b
    ld b, b
    ld bc, $7840
    ld h, b
    and b
    nop
    ld bc, $20ff
    ld bc, $0a40
    ld h, b
    cp [hl]
    nop
    ld bc, $ffff
    ld b, b
    ld bc, $0230
    jr nz, jr_006_4d38

    db $10
    ld [bc], a

jr_006_4d38:
    nop
    ld bc, $70ff
    ret z

    ld h, b
    ret z

    ld d, b
    ret z

    nop
    ld bc, $90ff
    ld bc, $0240
    jr nz, @+$04

    nop
    ld bc, $50ff
    ld bc, $0120
    db $10
    ld bc, $0100
    rst $38
    ld h, b

jr_006_4d57:
    ret z

    ld a, [hl]
    ld [hl+], a
    ld bc, $0264
    ld [hl+], a
    ld [bc], a
    scf
    ld bc, $0122
    scf
    ld bc, $0122
    ld [hl+], a
    ld bc, $0137
    ld [hl+], a
    ld bc, $0137
    ld [hl+], a
    ld bc, $0137
    ld [hl+], a
    ld bc, $0137
    ld [hl+], a
    db $10
    ld a, [hl]
    ld [de], a
    ret z

    ld a, [hl]
    ld [hl+], a
    ld bc, $c810
    ld a, [hl]
    ld [bc], a
    ld bc, $01fe
    ld [bc], a
    ld bc, $01fe
    ld [bc], a
    ld bc, $01fe
    ld [bc], a
    ld bc, $01fe
    ld a, l
    add d
    ld c, l
    nop
    ld [bc], a
    rst $38
    ld bc, $01fe
    db $fd
    ld bc, $01fc
    ei
    ld bc, $01fa
    ld sp, hl
    ld bc, $01f8
    rst $30
    ld bc, $01f6
    push af
    ld bc, $01f4
    di
    ld bc, $01f2
    pop af
    ld bc, $01f0
    rst $28
    ld bc, $01ec
    rst $20
    ld bc, $027e
    inc bc
    cp $03
    cp $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    cp $03
    cp $03
    ld [bc], a
    inc bc
    ld a, l
    cp [hl]
    ld c, l
    inc b
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    inc b
    inc bc
    ld a, l
    pop de
    ld c, l
    db $fc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    db $fc
    inc bc
    ld a, l
    db $e4
    ld c, l
    ei
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ei
    ld [bc], a
    ei
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    ei
    ld [bc], a
    ld a, l
    rst $30
    ld c, l
    ld [$f803], sp
    inc bc
    ld hl, sp+$03
    ld [$0803], sp
    inc bc
    ld hl, sp+$03
    ld hl, sp+$03
    ld [$7d03], sp
    ld a, [bc]
    ld c, [hl]
    db $fd
    db $fd
    ld a, [hl]
    ld [hl+], a
    ld bc, $0222
    scf
    ld h, h
    ld a, [hl]
    ld [$0800], sp
    inc c
    ld [$0800], sp
    inc c
    ld [$0800], sp
    inc c
    rst $38
    daa
    ld c, [hl]
    ld bc, $01ff
    cp $01
    db $fd
    ld bc, $01fc
    ei
    ld bc, $01fa
    ld sp, hl
    ld bc, $01f8
    rst $30
    ld bc, $01f6
    push af
    ld bc, $01f4
    di
    ret z

    di
    rst $38
    ld [hl], $4e
    inc bc
    nop
    inc bc
    ld bc, $0003
    inc bc
    ld bc, $55ff
    ld c, [hl]
    ld [bc], a
    nop
    ld bc, $0101
    ld [bc], a
    ld bc, $c803
    inc bc
    rst $38
    ld h, b
    ld c, [hl]
    inc bc
    nop
    inc bc
    inc c
    inc bc
    nop
    inc bc
    inc c
    inc b
    nop
    inc b
    inc c
    inc b
    nop
    inc b
    inc c
    dec b
    nop
    dec b
    inc c
    dec b
    nop
    dec b
    inc c
    ld b, $00
    ld b, $0c
    ld b, $00
    ld b, $0c
    rst $38
    ld l, l
    ld c, [hl]
    ld bc, $0100
    inc b
    ld bc, $0107
    nop
    ld bc, HeaderLogo
    rlca
    rst $38
    sub b
    ld c, [hl]
    ld bc, HeaderLogo
    rlca
    ld bc, $010c
    inc b
    ld bc, $0107
    inc c
    rst $38
    sbc a
    ld c, [hl]
    ld bc, $0107
    inc c
    ld bc, $0110
    rlca
    ld bc, $010c
    db $10
    rst $38
    xor [hl]
    ld c, [hl]
    ld bc, $0100
    inc bc
    ld bc, $0107
    nop
    ld bc, $0103
    rlca
    rst $38
    cp l
    ld c, [hl]
    ld bc, $0100
    inc bc
    ld bc, $0106
    nop
    ld bc, $0103
    ld b, $ff
    call z, $014e
    inc c
    ret z

    nop
    ret z

    nop
    ret z

    nop
    rst $38
    db $db
    ld c, [hl]
    ld bc, $0100
    ld bc, $0201
    ld bc, $0103
    inc b
    ld bc, $ff05
    and $4e
    ld h, a
    rst $38
    ld l, c
    call c, Call_000_0064
    db $e4
    ld bc, $0464
    db $e4
    ld bc, $0464
    db $e4
    ld bc, $0864
    db $e4
    ld bc, $0b64
    db $e4
    ld bc, $0e64
    db $e4
    ld bc, $1164
    db $e4
    ld bc, $1464
    ret c

    ld bc, $1764
    db $e4
    ld bc, $0166
    ld h, d
    push af
    ld c, [hl]
    ld h, h
    ld bc, $01d8
    ld h, h
    dec b
    ret c

    ld bc, $0764
    ret c

    ld bc, $0964
    ret c

    ld bc, $0c64
    ret c

    ld bc, $0f64
    ret c

    ld bc, $1264
    db $e4
    ld bc, $1564
    db $e4
    ld bc, $1864
    db $e4
    ld bc, $2262
    ld c, a
    ld h, h
    ld [bc], a
    ldh a, [rSB]
    ld h, h
    ld b, $f0
    ld bc, $0664
    ldh a, [rSB]
    ld h, h
    ld a, [bc]
    ldh a, [rSB]
    ld h, h
    dec c
    ldh a, [rSB]
    ld h, h
    db $10
    ldh a, [rSB]
    ld h, h
    inc de
    ldh a, [rSB]
    ld h, h
    ld d, $f0
    ld bc, $1964
    ldh a, [rSB]
    ld h, d
    ld c, c
    ld c, a
    ld h, h
    inc bc
    nop
    inc c
    ld h, d
    ld [hl], b
    ld c, a
    inc h
    ld a, [bc]
    inc h
    ld a, [bc]
    add hl, sp
    ld hl, sp+$40
    ld hl, sp+$3a
    ld a, [$f839]
    inc a
    ld hl, sp+$3f
    db $fc
    inc h
    nop
    inc h
    ld a, [bc]
    ld h, l
    inc h
    ld a, [bc]
    inc h
    ld a, [bc]
    inc [hl]
    ld hl, sp+$39
    ld hl, sp+$35
    ld a, [$f834]
    add hl, sp
    ld hl, sp+$37
    db $fc
    inc h
    nop
    inc h
    ld a, [bc]
    ld h, l
    and c
    inc d
    and c
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a8
    ld [de], a
    and a
    ld [de], a
    and [hl]
    ld [de], a
    and l
    ld [de], a
    and h
    ld [de], a
    and e
    ld [de], a
    and d
    ld [de], a
    and c
    ld [de], a
    sbc h
    jr jr_006_505f

    ld e, $44
    ld e, $34
    ld e, $34
    ld e, $44
    ld e, $34
    ld e, $34
    ld e, $44
    ld e, $34
    ld e, $44
    ld e, $34
    ld e, $34
    ld e, $44
    ld e, $34
    ld e, $34
    ld e, $44
    ld e, $44
    ld h, l
    dec l
    ld l, d
    inc [hl]
    ld l, d
    inc sp
    ld l, h
    inc h
    nop
    dec l
    ld l, d
    inc [hl]
    ld l, d
    inc l
    ld l, h
    inc h
    nop
    ld h, l
    ld b, l
    ld a, [$fa4c]
    ld c, e
    db $fc
    inc h
    nop
    ld b, l
    ld a, [$fa4c]
    ld b, h
    db $fc
    inc h
    nop
    ld h, l
    ld c, b
    ld [$ea45], a
    ld b, e
    db $ec
    inc h
    nop
    inc a
    ld [$ea45], a
    ld b, c
    db $ec
    inc h
    nop
    ld h, l
    and c
    inc d
    and c
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    inc d
    and c

jr_006_505f:
    ld d, $a1
    ld d, $a4
    inc d
    and h
    ld d, $a4
    inc d
    and h
    ld d, $a4
    ld d, $a4
    inc d
    and h
    ld d, $a4
    inc d
    and h
    ld d, $a4
    ld d, $a1
    inc d
    and c
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $9d
    inc d
    sbc l
    ld d, $9d
    inc d
    sbc l
    ld d, $9d
    ld d, $9d
    inc d
    sbc l
    ld d, $9d
    inc d
    sbc l
    ld d, $9d
    ld d, $65
    ld [hl-], a
    ld l, c
    nop
    ld h, h
    dec [hl]
    ld h, d
    jr c, @+$64

    add hl, sp
    ld l, b
    ld a, $68
    dec a
    ld l, h
    inc h
    nop
    ld [hl-], a
    ld l, c
    nop
    ld h, h
    dec [hl]
    ld h, d
    jr c, jr_006_5119

    add hl, sp
    ld l, b
    ld a, $68
    inc a
    ld l, h
    inc h
    nop
    ld h, l
    dec [hl]
    ld sp, hl
    nop
    db $f4
    ld a, $f2
    ld b, b
    ld a, [c]
    ld b, c
    ld hl, sp+$45
    ld hl, sp+$46
    db $fc
    inc h
    nop
    dec [hl]
    ld sp, hl
    nop
    db $f4
    ld a, $f2
    ld b, b
    ld a, [c]
    ld b, c
    ld hl, sp+$45
    ld hl, sp+$44
    db $fc
    inc h
    nop
    ld h, l
    and [hl]
    inc d
    and [hl]
    ld d, $a6
    inc d
    and [hl]
    ld d, $a6
    ld d, $a6
    inc d
    and [hl]
    ld d, $a6
    inc d
    and [hl]
    ld d, $a6
    ld d, $a2
    inc d
    and d
    ld d, $a2
    inc d
    and d
    ld d, $a2
    ld d, $a2
    inc d
    and d
    ld d, $a2
    inc d
    and d
    ld d, $a2
    ld d, $a6
    inc d
    and [hl]
    ld d, $a6
    inc d
    and [hl]
    ld d, $a6
    ld d, $a6
    inc d
    and [hl]
    ld d, $a6
    inc d

jr_006_5119:
    and [hl]
    ld d, $a6
    ld d, $9d
    inc d
    sbc l
    ld d, $9d
    inc d
    sbc l
    ld d, $9d
    ld d, $9d
    inc d
    sbc l
    ld d, $9d
    inc d
    sbc l
    ld d, $9d
    ld d, $65
    jr nc, jr_006_5198

    ld [hl-], a
    ld h, h
    inc sp
    ld l, b
    scf
    ld h, [hl]
    inc a
    ld l, d
    dec sp
    ld h, h
    ld [hl], $64
    ld sp, $246a
    ld b, $33
    ld h, [hl]
    ld sp, $3066
    ld h, h
    scf
    ld h, h
    inc a
    ld l, b
    ld a, $66
    ccf
    ld h, [hl]
    inc a
    ld h, [hl]
    ccf
    ld h, a
    ld b, e
    ld h, h
    dec a
    ld h, h
    jr c, jr_006_51c0

    dec [hl]
    ld l, e
    inc h
    ld b, $65
    ret z

    ld l, h
    inc h
    nop
    jp nz, Jump_000_246c

    nop
    ret z

    ld l, h
    inc h
    nop
    ret


    inc a
    inc h
    nop
    ld h, l
    and h
    rla
    and h
    rla
    and h
    inc d
    and d
    inc d
    and h
    rla
    and h
    ld d, $a4
    inc d
    and h
    inc d
    and d
    inc d
    sbc [hl]
    rla
    sbc [hl]
    ld d, $9e
    inc d
    sbc [hl]
    inc d
    sbc l
    inc d
    sbc [hl]
    rla
    sbc [hl]
    ld d, $9e
    inc d
    and b
    inc d
    sbc [hl]
    inc d

jr_006_5198:
    and h
    rla
    and h
    ld d, $a4
    inc d
    and h
    inc d
    and d
    inc d
    and h
    rla
    and h
    ld d, $a4
    inc d
    and h
    inc d
    and d
    inc d
    and l
    rla
    and l
    ld d, $a5
    inc d
    and l
    inc d
    and l
    inc d
    and l
    rla
    and l
    ld d, $a5
    inc d
    and l
    inc d
    and l
    inc d

jr_006_51c0:
    ld h, l
    scf
    db $f4
    ld a, [hl-]
    ld a, [c]
    ld a, $f2
    ld b, e
    rst $30
    scf
    ld a, [c]
    ld a, [hl-]
    ld a, [c]
    ld a, $f4
    ld b, e
    or $37
    ld a, [c]
    ld a, [hl-]
    ld a, [c]
    ld a, $f4
    ld b, e
    or $42
    db $f4
    ld b, c
    db $f4
    ld b, b
    db $f4
    ccf
    ld hl, sp+$3a
    or $36
    or $33
    ld hl, sp+$36
    or $3a
    or $39
    db $f4
    inc a
    ld a, [c]
    ld b, b
    ld a, [c]
    ld b, l
    rst $30
    add hl, sp
    ld a, [c]
    inc a
    ld a, [c]
    ld b, b
    db $f4
    ld b, l
    rst $30
    ld b, h
    or $43
    or $42
    or $41
    or $3c
    or $38
    db $f4
    dec [hl]
    or $38
    or $3c
    or $35
    ld hl, sp+$24
    inc b
    ld h, l
    rst $08
    ld l, h
    inc h
    nop
    bit 5, h
    inc h
    nop
    pop de
    ld l, h
    inc h
    nop
    call Call_000_246c
    nop
    ld h, l
    sbc a
    ld d, $9f
    ld d, $9f
    inc d
    sbc a
    ld d, $9f
    ld d, $9f
    ld d, $9f
    inc d
    sbc a
    ld d, $9f
    ld d, $9b
    ld d, $9b
    ld d, $9b
    inc d
    sbc e
    ld d, $9b
    ld d, $9b
    ld d, $9b
    ld d, $9b
    inc d
    sbc l
    inc d
    sbc a
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    ld d, $a1
    ld d, $a1
    inc d
    and c
    inc d
    and c
    inc d
    sbc l
    ld d, $9d
    ld d, $9d
    inc d
    sbc l
    ld d, $9d
    ld d, $9d
    ld d, $9d
    ld d, $9d
    inc d
    sbc l
    inc d
    sbc a
    inc d
    ld h, l
    or h
    cp d
    or e
    cp d
    or h
    cp d
    or e
    cp d
    or d
    cp d
    or c
    cp d
    or d
    cp d
    or h
    cp d
    ld h, l
    or b
    cp d
    xor a
    cp d
    or b
    cp d
    xor a
    cp d
    xor [hl]
    cp d
    xor [hl]
    cp d
    xor [hl]
    cp d
    xor a
    cp d
    ld h, l
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $9f
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    sbc a
    inc d
    and c
    ld d, $9f
    inc d
    sbc a
    ld d, $9f
    ld d, $9f
    inc d
    sbc a
    inc d
    sbc a
    inc d
    sbc a
    ld d, $9f
    ld d, $9f
    inc d
    sbc a
    ld d, $9f
    inc d
    sbc a
    ld d, $9f
    ld d, $9f
    inc d
    sbc a
    ld d, $9f
    inc d
    sbc h
    ld d, $9c
    ld d, $9c
    inc d
    sbc h
    rla
    ld h, l
    call z, $d1b6
    or [hl]
    rst $08
    or [hl]
    add $b6
    push bc
    or [hl]
    call z, $cbb6
    or [hl]
    jp $c5b6


    or [hl]
    cp h
    or [hl]
    cp a
    or [hl]
    jp $c5b6


    cp b
    inc h
    inc b
    push bc
    or d
    rst $00
    or d
    ret z

    or h
    rst $00
    or h
    push bc
    or h
    push bc
    or [hl]
    push bc
    or h
    call nz, $c4b4
    or [hl]
    call nz, $c3b4
    or h
    jp $c3b6


    or h
    jp nz, $c2b4

    or [hl]
    jp nz, $c1b4

    or h
    pop bc
    or [hl]
    pop bc
    or h
    ret nz

    or h
    ret nz

    or [hl]
    ret nz

    or h
    ret nz

    or h
    call nz, $c7b4
    or h
    jp z, $cdb6

    or h
    call z, Call_006_65b6
    push bc
    ld l, b
    srl b
    push bc
    ld l, b
    srl b
    push bc
    ld l, b
    srl b
    push bc
    ld l, d
    push bc
    ld l, h
    inc h
    nop
    push bc
    ld l, d
    call z, Call_006_653a
    and c
    inc d
    xor b
    inc d
    xor l
    inc d
    and a
    ld d, $a2
    inc d
    sbc e
    inc d
    and d
    inc d
    and c
    inc d
    xor b
    inc d
    xor l
    inc d
    and a
    ld d, $a2
    inc d
    sbc e
    inc d
    and d
    inc d
    and c
    inc d
    xor b
    inc d
    xor l
    inc d
    and a
    ld d, $a2
    inc d
    sbc e
    inc d
    and d
    inc d
    and c
    inc d
    and h
    inc d
    and [hl]
    inc d
    xor b
    ld d, $9c
    inc d
    sbc a
    inc d
    and b
    inc d
    and c
    inc d
    and c
    inc d
    and h
    ld [de], a
    and [hl]
    ld [de], a
    and a
    ld [de], a
    xor b
    ld [de], a
    sbc h
    inc d
    sbc h
    rla
    and c
    inc d
    and c
    inc d
    and h
    ld [de], a
    and [hl]
    ld [de], a
    and a
    ld [de], a
    xor b
    ld [de], a
    sbc h
    inc d
    sbc h
    ld d, $9c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    ld [de], a
    and h
    ld [de], a
    and [hl]
    ld [de], a
    and a
    ld [de], a
    sbc h
    inc d
    sbc h
    ld d, $9c
    inc d
    sbc h
    inc d
    sbc h
    inc d
    xor b
    inc d
    xor b
    ld d, $a8
    inc d
    sbc h
    inc d
    sbc h
    inc d
    ld h, l
    cp c
    cp b
    cp d
    or [hl]
    or a
    or [hl]
    cp c
    or a
    cp d
    or a
    or a
    or [hl]
    cp c
    or a
    cp d
    or a
    or e
    or [hl]
    or h
    cp d
    cp c
    or a
    cp d
    or a
    or a
    or [hl]
    cp c
    or a
    cp d
    or a
    or e
    or [hl]
    or h
    or a
    or l
    or a
    or d
    or [hl]
    or h
    cp h
    inc h
    nop
    ret nz

    cp h
    inc h
    nop
    ld h, l
    push bc
    ld l, h
    inc h
    nop
    push bc
    ld l, h
    inc h
    nop
    push bc
    ld l, h
    inc h
    nop
    push bc
    ld l, h
    inc h
    nop
    push bc
    ld l, d
    call z, Call_000_243c
    nop
    ld h, l
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    ld d, $a1
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    ld d, $a1
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    ld d, $a1
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    ld d, $a1
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    inc d
    and c
    inc d
    and c
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    inc d
    and c
    inc d
    xor b
    inc d
    xor b
    ld d, $a8
    ld d, $a8
    inc d
    xor b
    inc d
    xor b
    inc d
    xor b
    inc d
    xor c
    inc d
    xor b
    inc d
    and [hl]
    inc d
    and h
    ld d, $a3
    ld d, $65
    ld h, a
    rst $38
    ld l, c
    call c, Call_000_0a24
    inc h
    ld a, [bc]
    inc h
    ld a, [bc]
    inc h
    ld a, [bc]
    ld h, h
    ld a, [de]
    ld [c], a
    ld bc, $1b64
    ld [c], a
    ld bc, $0166
    ld h, d
    and e
    ld d, h
    ld h, h
    inc e
    ld [c], a
    ld bc, $1c64
    ldh [rSB], a
    ld h, h
    inc e
    ld [c], a
    ld [bc], a
    ld h, h
    inc e
    ldh [rSC], a
    ld h, h
    inc e
    ld [c], a
    ld [bc], a
    ld h, d
    cp h
    ld d, h
    ld h, h
    dec e
    xor $01
    ld h, h
    dec e
    db $ec
    ld bc, $1d64
    xor $02
    ld h, h
    dec e
    db $ec
    ld [bc], a
    ld h, h
    dec e
    xor $02
    ld h, d
    db $d3
    ld d, h
    ld h, h
    ld e, $00
    ld bc, $1f64
    nop
    ld bc, $ea62
    ld d, h
    inc a
    ld a, [c]
    ccf
    ld a, [c]
    ld b, e
    ld a, [c]
    ld b, h
    push af
    ld b, e
    ld hl, sp+$24
    inc b
    ld b, d
    ld a, [$f23c]
    ccf
    ld a, [c]
    ld b, e
    ld a, [c]
    ld b, h
    push af
    ld b, e
    ld hl, sp+$44
    ld a, [c]
    ld b, l
    ld a, [c]
    ld b, a
    ld hl, sp+$46
    ld hl, sp+$65
    ld a, [hl-]
    ld a, [c]
    dec a
    ld a, [c]
    ld b, c
    ld a, [c]
    ld b, d
    push af
    ld b, c
    or $41
    ld a, [c]
    ccf
    ld a, [c]
    dec a
    ld a, [c]
    ccf
    ld a, [c]

jr_006_5528:
    dec a
    db $f4
    inc a
    db $f4
    dec a
    ld a, [c]
    ld a, [hl-]
    rst $30
    inc h
    ld [bc], a
    jr c, jr_006_5528

    ld a, [hl-]
    db $f4
    dec a
    db $f4
    ld a, [hl-]
    ld a, [c]
    dec a
    ld a, [c]
    ccf
    ld a, [c]
    ld b, c
    db $f4
    ld b, d
    ld a, [c]
    ld b, c
    ld a, [c]
    ccf

jr_006_5545:
    ld a, [c]
    ld b, c

jr_006_5547:
    db $f4
    ccf

jr_006_5549:
    db $f4
    dec a

jr_006_554b:
    db $f4
    ld a, [hl-]

jr_006_554d:
    db $f4
    dec a

jr_006_554f:
    ld sp, hl
    dec a

jr_006_5551:
    ld a, [c]
    ccf

jr_006_5553:
    ld a, [c]
    ld b, c

jr_006_5555:
    db $f4
    ld b, e

jr_006_5557:
    ld a, [$f23c]
    ccf
    ld a, [c]
    ld b, e
    ld a, [c]
    ld b, h
    push af
    ld b, e
    db $f4
    inc a
    ld a, [c]
    ccf

jr_006_5565:
    ld a, [c]
    ld b, e

jr_006_5567:
    ld a, [c]
    ld b, h

jr_006_5569:
    push af
    ld b, e

jr_006_556b:
    db $f4
    inc a

jr_006_556d:
    db $fc
    inc h

jr_006_556f:
    nop
    ld h, l

jr_006_5571:
    jr nc, jr_006_5545

jr_006_5573:
    jr nc, jr_006_5547

jr_006_5575:
    jr nc, jr_006_5549

jr_006_5577:
    jr nc, jr_006_554b

jr_006_5579:
    jr nc, jr_006_554d

    jr nc, jr_006_554f

    jr nc, jr_006_5551

    jr nc, jr_006_5553

    jr nc, jr_006_5555

    jr nc, jr_006_5557

    jr nc, @-$2c

    ld sp, $31d2
    jp nc, $d231

    ld l, $d2
    ld l, $d2
    jr nc, jr_006_5565

    jr nc, jr_006_5567

    jr nc, jr_006_5569

    jr nc, jr_006_556b

    jr nc, jr_006_556d

    jr nc, jr_006_556f

    jr nc, jr_006_5571

    jr nc, jr_006_5573

    jr nc, jr_006_5575

    jr nc, jr_006_5577

    jr nc, jr_006_5579

    ld sp, $31d2
    jp nc, $d231

    ld l, $d2
    ld l, $d2
    ld h, l
    and h
    dec d
    and h
    inc d
    and h
    ld [de], a
    sbc b
    dec d
    sbc b
    inc d
    sbc b
    ld [de], a
    sbc a
    inc d
    and d
    inc d
    and h
    dec d
    and h
    inc d
    sbc a
    ld [de], a
    sbc b
    dec d
    sbc b
    inc d
    sbc b
    ld [de], a
    sbc a
    inc d
    and d
    inc d
    ld h, l
    jr jr_006_55e7

    ld e, $32
    ld e, $32
    jr jr_006_55ed

    jr jr_006_55ef

    ld e, $32
    ld a, [de]
    ld [hl+], a
    ld e, $32
    ld e, $32
    jr jr_006_55f9

jr_006_55e7:
    ld e, $32
    jr jr_006_55fd

    jr jr_006_55ff

jr_006_55ed:
    ld e, $32

jr_006_55ef:
    ld a, [de]
    ld [hl+], a
    ld e, $32
    jr jr_006_5607

    ld e, $32
    ld e, $32

jr_006_55f9:
    jr jr_006_560d

    ld e, $32

jr_006_55fd:
    jr jr_006_5611

jr_006_55ff:
    ld a, [de]
    ld [hl+], a
    jr @+$14

    jr @+$14

    ld e, $32

jr_006_5607:
    jr @+$14

    ld e, $32
    ld a, [de]
    ld [hl+], a

jr_006_560d:
    ld a, [de]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a

jr_006_5611:
    ld e, $32
    ld h, l
    jr jr_006_5628

    ld e, $42
    ld e, $42
    jr jr_006_562e

    ld e, $42
    ld a, [de]
    ld [hl+], a
    jr jr_006_5634

    ld e, $42
    ld a, [de]
    ld [hl+], a
    jr jr_006_563a

jr_006_5628:
    ld a, [de]
    ld [hl+], a
    ld e, $42
    jr jr_006_5640

jr_006_562e:
    ld e, $42
    jr jr_006_5644

jr_006_5632:
    ld e, $42

jr_006_5634:
    jr jr_006_5648

    jr jr_006_564a

    ld e, $42

jr_006_563a:
    ld a, [de]
    ld [hl+], a
    ld e, $42
    jr jr_006_5652

jr_006_5640:
    ld a, [de]
    ld [hl+], a
    ld e, $42

jr_006_5644:
    jr jr_006_5658

    ld e, $42

jr_006_5648:
    jr jr_006_565c

jr_006_564a:
    ld e, $42
    ld a, [de]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a

jr_006_5652:
    ld e, $42
    ld h, l
    ld h, a
    rst $38
    ld l, c

jr_006_5658:
    ret z

    ld h, h
    jr nz, jr_006_5632

jr_006_565c:
    ld bc, $2064
    sub $01
    ld h, h
    inc h
    ld [c], a
    ld bc, $2864
    ld [c], a
    ld bc, $2864
    jp hl


    ld bc, $2864
    ld [c], a
    ld bc, $2864
    jp hl


    ld bc, $2b64
    ld [c], a
    ld bc, $0166
    ld h, d
    ld d, l
    ld d, [hl]
    ld h, h
    ld hl, $01d6
    ld h, h
    ld hl, $01d6
    ld h, h
    dec h
    ld [c], a
    ld bc, $2964
    ld [c], a
    ld bc, $2964
    jp hl


    ld bc, $2964
    ld [c], a
    ld bc, $2964
    jp hl


    ld bc, $2c64
    ld [c], a
    ld bc, $7e62
    ld d, [hl]
    ld h, h
    ld [hl+], a
    xor $04
    ld h, h
    ld h, $ee
    ld [bc], a
    ld h, h
    daa
    xor $01
    ld h, h
    ld a, [hl+]
    xor $01
    ld h, h
    ld a, [hl+]
    xor $01
    ld h, h
    dec l
    xor $01
    ld h, d
    and c
    ld d, [hl]
    ld h, h
    inc hl
    nop
    inc b
    ld h, d
    cp h
    ld d, [hl]
    ld b, e
    ld hl, sp+$41
    ld hl, sp+$40
    ld hl, sp+$3f
    ld hl, sp+$65
    ld a, $fa
    ld a, [hl-]
    ld a, [$9f65]
    dec d
    sbc a
    ld [de], a
    xor e
    inc d
    and [hl]
    ld d, $a2
    inc d
    sbc a
    ld [de], a
    and c
    ld [de], a
    and d
    ld [de], a
    sbc a
    ld [de], a
    ld h, l
    jr jr_006_56f8

    ld e, $32
    ld e, $32
    jr jr_006_56fe

    ld a, [de]
    ld [hl+], a
    ld e, $32
    ld e, $32
    jr jr_006_5706

    jr jr_006_5708

    ld e, $32

jr_006_56f8:
    jr jr_006_570c

    ld e, $32
    ld a, [de]
    ld [hl+], a

jr_006_56fe:
    ld e, $32
    ld e, $32
    ld e, $32
    jr jr_006_5718

jr_006_5706:
    ld e, $32

jr_006_5708:
    ld e, $32
    jr jr_006_571e

jr_006_570c:
    ld a, [de]
    ld [hl+], a
    ld e, $32
    jr jr_006_5724

    ld e, $32
    ld e, $32
    ld e, $32

jr_006_5718:
    jr jr_006_572c

    ld e, $32
    ld a, [de]
    ld [hl+], a

jr_006_571e:
    ld a, [de]
    ld [hl+], a
    ld a, [de]
    ld [hl+], a
    ld e, $32

jr_006_5724:
    ld h, l
    ld a, [hl-]
    db $f4
    add hl, sp
    db $f4
    scf
    db $f4
    ld [hl-], a

jr_006_572c:
    or $37
    db $f4
    add hl, sp
    db $f4
    ld a, [hl-]
    db $f4

jr_006_5733:
    ld sp, $30fa
    db $f4

jr_006_5737:
    dec [hl]
    db $f4
    scf
    db $f4
    jr c, jr_006_5733

    scf
    db $f4
    dec [hl]
    db $f4
    jr nc, jr_006_5737

    cpl
    ld a, [$f43e]
    dec a
    db $f4
    ld a, [hl-]
    db $f4
    scf
    or $32
    db $f4
    scf
    db $f4
    ld a, [hl-]
    db $f4
    ld sp, $34f6
    or $2d
    ld hl, sp+$30
    db $f4

jr_006_575b:
    dec [hl]
    db $f4
    scf
    db $f4
    jr c, @-$0a

    scf
    db $f4
    dec [hl]
    db $f4
    jr nc, jr_006_575b

jr_006_5767:
    dec [hl]
    db $f4
    ld [hl-], a
    ld a, [$f830]
    jr nc, jr_006_5767

    ld h, l
    inc h
    inc b
    ld a, [hl-]
    db $f4
    add hl, sp
    db $f4
    scf
    db $f4
    ld [hl-], a
    or $37
    db $f4
    add hl, sp
    db $f4
    ld a, [hl-]
    db $f4

jr_006_5780:
    ld sp, $30fa
    db $f4

jr_006_5784:
    dec [hl]
    db $f4
    scf
    db $f4
    jr c, jr_006_5780

    scf
    db $f4
    dec [hl]
    db $f4
    jr nc, jr_006_5784

    cpl
    ld a, [$f43e]
    dec a
    db $f4
    ld a, [hl-]
    db $f4
    scf
    or $32
    db $f4
    scf
    db $f4
    ld a, [hl-]
    db $f4
    ld sp, $34f6
    or $2d
    ld hl, sp+$30
    db $f4

jr_006_57a8:
    dec [hl]
    db $f4
    scf
    db $f4
    jr c, @-$0a

    scf
    db $f4
    dec [hl]
    db $f4
    jr nc, jr_006_57a8

    dec [hl]
    db $f4
    ld [hl-], a
    ld a, [$f830]
    jr nc, @-$07

    ld h, l
    sbc a
    dec d
    sbc a
    ld [de], a
    xor e
    inc d
    and [hl]
    ld d, $a2
    inc d
    sbc a
    ld [de], a
    and c
    ld [de], a
    and d
    ld [de], a
    sbc a
    ld [de], a
    and c
    dec d
    and c
    ld [de], a
    xor l
    inc d
    xor b
    ld d, $a5
    inc d
    and c
    ld [de], a
    and b
    ld [de], a
    sbc a
    ld [de], a
    sbc [hl]
    ld [de], a
    sbc l
    dec d
    sbc l
    ld [de], a

jr_006_57e5:
    xor c
    inc d

jr_006_57e7:
    and h
    ld d, $a0
    inc d
    sbc l
    ld [de], a
    sbc a
    ld [de], a
    and b
    ld [de], a
    sbc l
    ld [de], a
    sbc a
    dec d
    sbc a
    ld [de], a
    xor e
    inc d
    and [hl]
    ld d, $a3
    ld [de], a
    and d
    ld [de], a
    and c
    ld [de], a
    and b
    ld [de], a
    sbc a
    ld [de], a

jr_006_5805:
    sbc [hl]
    ld [de], a

jr_006_5807:
    ld h, l
    and h
    dec d
    and h
    ld [de], a
    or b
    inc d
    and h
    ld d, $a4
    inc d
    or b
    inc d
    and h
    inc d
    ld h, l
    inc a
    call nz, $c43c
    inc a
    call nz, $c438
    jr c, jr_006_57e5

    jr c, jr_006_57e7

    inc a
    call nz, $c438
    dec sp
    call nz, $c43b
    dec sp
    call nz, $c43b
    dec sp
    call nz, $c43b
    dec sp
    call nz, $c43b
    inc a
    call nz, $c43c
    inc a
    call nz, $c438
    jr c, jr_006_5805

    jr c, jr_006_5807

    inc a
    call nz, $c43c
    dec sp
    call nz, $c43b
    dec sp

jr_006_584c:
    call nz, $c43b
    dec sp
    call nz, $c43b
    dec sp
    call nz, $c43b
    ld h, l
    jr c, @-$3a

    jr c, @-$3a

    jr c, @-$3a

    dec [hl]
    call nz, $c435
    dec [hl]
    call nz, $c438
    dec [hl]
    call nz, $c437
    scf
    call nz, $c437
    scf
    call nz, $c437
    scf
    call nz, $c437
    scf
    call nz, $c438
    jr c, @-$3a

    jr c, @-$3a

    dec [hl]
    call nz, $c435
    dec [hl]
    call nz, $c438
    jr c, jr_006_584c

    scf
    call nz, $c437
    scf
    call nz, $c437
    scf
    call nz, $c437
    scf
    call nz, $c437
    ld h, l
    sbc l
    dec d
    sbc l
    ld [de], a
    and h
    inc d
    and b
    ld d, $9d
    inc d
    sbc l
    ld [de], a
    sbc a
    ld [de], a
    and b
    ld [de], a
    sbc a
    ld [de], a
    sbc l
    dec d
    sbc l
    ld [de], a
    and h
    inc d
    and b
    ld d, $9d
    inc d
    and b
    inc d
    and h
    inc d
    sbc l
    dec d
    sbc l
    ld [de], a
    and h
    inc d
    and b
    ld d, $9d
    inc d
    sbc l
    ld [de], a
    sbc a
    ld [de], a
    and b
    inc d
    sbc l
    dec d
    sbc l
    ld [de], a
    and h
    inc d
    and b
    ld d, $9d
    inc d
    and b
    inc d
    and h
    inc d
    and h
    dec d
    and h
    ld [de], a
    and a
    inc d
    and [hl]
    ld d, $a4
    inc d
    and d
    inc d
    sbc a
    inc d
    and h
    dec d
    and h
    ld [de], a
    and a
    inc d
    and [hl]
    inc d
    and h
    inc d
    and e
    inc d
    sbc a
    inc d
    and e
    inc d
    and h
    dec d
    and h
    ld [de], a
    and a
    inc d
    and [hl]
    ld d, $a4
    inc d
    and d
    inc d
    sbc a
    inc d
    and h
    dec d
    and h
    ld [de], a
    and a
    inc d
    and [hl]
    ld d, $a4
    inc d
    and e
    inc d
    sbc a
    inc d
    ld h, l
    ld b, b
    db $e4
    ld b, b
    db $e4
    ld b, b
    db $e4
    ld b, b
    db $e4
    ld b, d
    db $e4
    ld b, d
    db $e4
    ld b, e
    db $e4
    ld b, e
    db $e4
    ld b, d
    db $e4
    ld b, d
    db $e4
    ld b, d
    db $e4
    ld b, d
    db $e4
    ld b, d
    db $e4
    ld b, d
    db $e4
    ld b, d
    db $e4
    ld b, d
    db $e4
    ld h, l
    dec a
    db $e4
    dec a
    db $e4
    dec a
    db $e4
    dec a
    db $e4
    ld a, $e4
    ld a, $e4
    ld b, b
    db $e4
    ld b, b
    db $e4
    ld a, $e4
    ld a, $e4
    inc a
    db $e4
    inc a
    db $e4
    ld a, [hl-]
    db $e4
    ld a, [hl-]
    db $e4
    add hl, sp
    db $e4
    add hl, sp
    db $e4
    ld h, l
    and c
    dec d
    and c
    ld [de], a
    sbc h
    inc d
    and c
    ld d, $a1
    inc d
    and e
    inc d
    and l
    inc d
    and [hl]
    dec d
    and [hl]
    ld [de], a
    and c
    inc d
    and [hl]
    ld d, $a4
    inc d
    and d
    inc d
    and c
    inc d
    ld h, l
    ld h, a
    rst $38
    ld l, c
    ldh a, [$64]
    inc sp
    and $01
    ld h, h
    inc [hl]
    and $01
    ld h, h
    dec [hl]
    and $01
    inc h
    inc b
    ld h, [hl]
    ld bc, $7162
    ld e, c
    inc h
    inc b
    ld h, h
    inc sp
    and $01
    ld h, h
    inc [hl]
    and $01

jr_006_5992:
    ld h, h
    dec [hl]
    and $01
    ld h, d
    adc b
    ld e, c
    ld h, h
    cpl
    ld a, [c]
    inc bc
    ld h, h
    jr nc, jr_006_5992

    ld bc, $3164
    ld a, [c]
    ld [bc], a
    ld h, h
    ld [hl-], a
    ld a, [c]
    ld bc, $9962
    ld e, c
    ld h, h
    ld l, $00
    ld [$ac62], sp
    ld e, c
    dec hl
    or $32
    db $f4
    inc sp
    rst $30
    ld [hl-], a
    or $2d
    or $34
    db $f4
    dec [hl]
    rst $30
    inc [hl]
    or $2b
    or $32
    db $f4
    inc sp
    rst $30
    ld [hl-], a
    or $2d
    or $34
    db $f4
    dec [hl]
    rst $30
    inc [hl]
    or $2b
    db $f4
    dec l
    db $f4
    ld l, $f4

jr_006_59d9:
    ld [hl-], a
    rst $30
    ld l, $f4
    ld [hl-], a
    db $f4
    ld sp, $32fa
    db $f4
    jr nc, jr_006_59d9

    ld l, $f4
    dec hl
    or $2e
    db $f4
    ld [hl-], a
    db $f4
    scf
    db $f4
    inc [hl]
    ld a, [$f437]
    ld [hl-], a
    db $f4
    ld l, $f4
    dec hl
    or $2c
    db $f4
    dec l
    db $f4
    ld l, $f4
    ld sp, $32fa
    or $2e
    or $2b
    or $37
    or $34
    ld a, [$f432]
    inc sp
    db $f4
    ld [hl-], a
    db $f4
    ld l, $f4
    ld [hl-], a
    db $f4
    inc sp
    db $f4
    ld [hl-], a
    db $f4
    dec l
    db $f4
    ld h, $fa
    ld h, l
    ld a, [hl-]
    or $39
    or $3a
    or $36
    or $39
    ld hl, sp+$37
    ld hl, sp+$36
    ld hl, sp+$33
    ld hl, sp+$2e
    ld a, [$f63a]
    add hl, sp
    or $3a
    or $3e
    or $3f
    or $3e
    or $3d
    or $39
    or $3c
    ld hl, sp+$3a
    or $36
    or $33
    ld a, [$2665]
    or $2d
    db $f4
    ld l, $f6
    dec l
    db $f4
    ld a, [hl+]
    db $f4
    ld h, $f4
    daa
    db $f4
    ld l, $f4
    cpl
    db $f4
    ld l, $f4
    daa
    db $f4
    ld l, $f4
    cpl
    db $f4
    ld l, $f4
    ld h, $f6
    dec l
    db $f4
    ld l, $f6
    dec l
    db $f4
    ld a, [hl+]
    db $f4
    ld h, $f4
    daa
    db $f4
    ld l, $f4
    cpl
    db $f4
    ld l, $f4
    daa
    db $f4
    ld l, $f4
    cpl
    db $f4
    ld l, $f4
    ld h, $f6
    ld a, [hl+]
    or $2d
    or $32
    or $33
    ld hl, sp+$32
    rst $30
    ld h, l
    sbc a
    daa
    xor e
    daa
    sbc a
    ld h, $a1
    daa
    xor l
    daa
    and c
    ld h, $9f
    daa
    xor e
    daa
    sbc a
    ld h, $a1
    daa
    xor l
    daa
    and c
    ld h, $65
    sbc d
    ld h, $9c
    ld h, $9e

jr_006_5aac:
    ld h, $a1
    ld h, $9a
    ld a, [hl+]

jr_006_5ab1:
    ld h, l
    sbc a
    inc h
    sbc a
    inc h
    and [hl]
    inc h
    and [hl]
    inc h
    and a
    inc h
    and h
    inc h
    and d
    inc h
    and c
    inc h
    inc h
    inc b
    sbc a
    inc h
    and [hl]
    inc h
    and a
    daa
    and [hl]
    ld h, $9b
    inc h
    sbc e
    inc h
    and d
    inc h
    and d
    inc h
    and e
    inc h
    and d
    inc h
    and b
    inc h
    sbc [hl]
    inc h
    inc h
    inc b
    sbc e
    inc h
    and d
    inc h
    and e
    daa
    and d
    ld h, $65
    sbc d
    daa
    and c
    ld h, $9e
    inc h
    sbc d
    ld h, $24
    inc b
    sbc e
    ld h, $a2
    ld h, $a3
    inc h
    and d
    ld h, $9a
    daa
    and c
    ld h, $9e
    inc h
    sbc d
    ld h, $24
    inc b
    sbc e
    ld h, $a2
    ld h, $a3
    inc h
    and d
    ld h, $9a
    jr z, jr_006_5aac

    jr z, jr_006_5ab1

    jr z, jr_006_5aac

    jr z, @+$67

    jr jr_006_5b2a

    ld e, $34
    jr jr_006_5b2e

    jr jr_006_5b30

    ld e, $34
    jr jr_006_5b34

    ld a, [de]
    inc h
    ld e, $34
    jr jr_006_5b3a

    ld e, $34
    jr jr_006_5b3e

jr_006_5b2a:
    jr jr_006_5b40

    ld e, $34

jr_006_5b2e:
    jr jr_006_5b44

jr_006_5b30:
    ld a, [de]
    inc h
    ld e, $34

jr_006_5b34:
    jr jr_006_5b4a

    ld e, $34
    jr jr_006_5b4e

jr_006_5b3a:
    jr jr_006_5b50

    ld e, $34

jr_006_5b3e:
    jr jr_006_5b54

jr_006_5b40:
    ld a, [de]
    inc h
    ld e, $34

jr_006_5b44:
    jr jr_006_5b5a

    ld e, $34
    jr jr_006_5b5e

jr_006_5b4a:
    jr jr_006_5b60

    ld e, $34

jr_006_5b4e:
    jr jr_006_5b64

jr_006_5b50:
    ld a, [de]
    inc h
    ld a, [de]
    inc h

jr_006_5b54:
    ld h, l
    ld h, a
    rst $38
    ld l, c
    or h
    inc h

jr_006_5b5a:
    ld a, [bc]
    inc h
    ld a, [bc]
    inc h

jr_006_5b5e:
    ld a, [bc]
    inc h

jr_006_5b60:
    ld a, [bc]
    ld h, h
    ld [hl], $e4

jr_006_5b64:
    ld bc, $3a64
    db $e4
    ld bc, $3d64
    ret c

    ld bc, $0424
    ld h, [hl]
    ld bc, $5562
    ld e, e
    ld h, h
    scf
    db $e4
    ld bc, $0424
    ld h, h
    ld [hl], $e4
    ld bc, $3a64
    db $e4
    ld bc, $3d64
    ret c

    ld bc, $7462
    ld e, e
    ld h, h
    jr c, @-$0e

    inc bc
    ld h, h
    inc a
    ldh a, [rSC]
    ld h, h
    ccf
    ldh a, [rSB]
    ld h, d
    adc c
    ld e, e
    ld h, h
    add hl, sp
    nop
    jr jr_006_5bff

    sbc b
    ld e, e
    dec l
    or $2f
    or $30
    or $34
    or $35
    db $f4
    scf
    db $f4
    jr c, @-$08

    inc a
    or $38
    db $f4
    dec [hl]
    db $f4
    add hl, sp
    ld hl, sp+$40
    ld hl, sp+$41
    or $3c
    or $38
    or $35
    or $3c
    db $f4
    dec sp
    db $f4
    inc a
    or $39
    or $34
    or $38
    or $37
    or $35
    or $30
    or $34
    ld hl, sp+$30
    or $2d
    or $2c
    ld a, [$b965]
    xor l
    cp e
    xor l
    cp h
    xor l
    ret nz

    xor l
    cp h
    xor l
    cp e
    xor l

jr_006_5be6:
    cp c
    xor l
    cp e

jr_006_5be9:
    xor l
    cp h
    xor l
    ret nz

    xor l
    cp h
    xor l

jr_006_5bf0:
    cp e
    xor l
    cp b

jr_006_5bf3:
    xor l
    cp h
    xor l
    cp [hl]
    xor l
    pop bc
    xor l
    cp [hl]
    xor l
    cp h
    xor l
    cp b

jr_006_5bff:
    xor l
    cp h
    xor l
    cp [hl]
    xor l
    pop bc
    xor l
    cp [hl]
    xor l
    cp h
    xor l
    cp c
    xor l
    cp e
    xor l
    cp h
    xor l
    ret nz

    xor l
    cp h
    xor l
    cp e
    xor l
    cp c
    xor l
    cp e
    xor l
    cp h
    xor l
    ret nz

    xor l
    cp h
    xor l
    cp e
    xor l
    cp b
    xor l
    cp h
    xor l
    cp [hl]
    xor l
    pop bc
    xor l
    cp [hl]
    xor l
    cp h
    xor l
    cp b
    xor l
    cp h
    xor l
    cp [hl]
    xor l
    pop bc
    xor l
    cp [hl]
    xor l
    cp h
    xor l
    ld h, l
    and c
    jr z, jr_006_5be6

    jr z, jr_006_5be9

    add hl, hl
    sbc l
    inc h
    and b
    inc h
    and c
    jr z, jr_006_5bf0

    jr z, jr_006_5bf3

    add hl, hl
    sbc l
    ld h, $65
    jr jr_006_5c64

    jr jr_006_5c66

    ld [hl+], a
    ld d, h
    jr jr_006_5c6a

    jr jr_006_5c6e

    ld [hl+], a
    ld d, [hl]
    jr jr_006_5c70

    jr jr_006_5c72

    ld [hl+], a
    ld d, h
    jr jr_006_5c76

    jr jr_006_5c78

jr_006_5c64:
    ld [hl+], a
    ld d, a

jr_006_5c66:
    jr jr_006_5c7c

    jr jr_006_5c7e

jr_006_5c6a:
    ld [hl+], a
    ld d, h
    jr jr_006_5c82

jr_006_5c6e:
    jr jr_006_5c84

jr_006_5c70:
    jr jr_006_5c86

jr_006_5c72:
    ld [hl+], a
    ld d, [hl]
    jr jr_006_5c8a

jr_006_5c76:
    jr jr_006_5c8c

jr_006_5c78:
    ld [hl+], a
    ld d, h
    jr jr_006_5c90

jr_006_5c7c:
    jr jr_006_5c92

jr_006_5c7e:
    ld [hl+], a
    ld d, h
    jr jr_006_5c98

jr_006_5c82:
    ld h, l
    or d

jr_006_5c84:
    ld hl, sp-$47

jr_006_5c86:
    or $ba
    db $f4
    cp c

jr_006_5c8a:
    db $f4
    cp b

jr_006_5c8c:
    rst $30
    or a
    db $f4
    or l

jr_006_5c90:
    db $f4
    cp b

jr_006_5c92:
    db $f4
    cp h
    or $be
    ld hl, sp-$47

jr_006_5c98:
    rst $30
    cp [hl]
    ld a, [c]
    ret nz

    ld a, [c]
    pop bc
    or $bc
    or $b8
    or $b5
    or $ad
    or $b2
    rst $30
    or e
    db $f4
    or h
    or $b5
    rst $30
    or [hl]
    ld a, [c]
    or a
    ld a, [c]
    cp b
    or $bc
    or $be
    or $b9
    or $b5
    or $b2
    or $b8

jr_006_5cc0:
    ld a, [$be65]
    xor l
    ret nz

    xor l
    pop bc
    xor l
    push bc
    xor l
    pop bc
    xor l
    ret nz

    xor l
    cp [hl]
    xor l
    ret nz

    xor l
    pop bc
    xor l

jr_006_5cd4:
    push bc
    xor l
    pop bc
    xor l
    ret nz

    xor l
    pop bc
    xor l
    jp $c4ad


    xor l
    ret z

    xor l
    call nz, $c3ad
    xor l
    pop bc
    xor l
    jp $c4ad


    xor l
    ret z

    xor l
    call nz, $c3ad
    xor l
    cp [hl]
    xor l
    ret nz

    xor l
    pop bc
    xor l
    push bc
    xor l
    pop bc
    xor l
    ret nz

    xor l
    cp [hl]
    xor l
    ret nz

    xor l
    pop bc
    xor l
    push bc
    xor l
    pop bc
    xor l
    ret nz

    xor l
    pop bc
    xor l
    jp $c4ad


    xor l
    ret z

    xor l
    call nz, $c3ad
    xor l
    pop bc
    xor l
    jp $c4ad


    xor l
    ret z

    xor l
    call nz, $c3ad
    xor l
    ld h, l
    and [hl]
    jr z, jr_006_5cc0

    daa
    sbc e
    ld [hl+], a
    sbc h
    ld [hl+], a
    sbc l
    daa
    sbc a
    inc h
    and b
    inc h
    sbc l
    inc h
    and b
    inc h
    and h
    inc h
    and [hl]
    jr z, jr_006_5cd4

    daa
    and [hl]
    inc h
    sbc l
    jr z, @-$55

    inc h
    and h
    inc h
    and b
    inc h
    sbc l
    inc h
    ld h, l
    ld b, [hl]
    ld hl, sp+$52
    ld hl, sp+$50
    ld a, [$f846]
    ld d, d
    ld hl, sp+$50
    ld a, [$f84c]
    ld c, d
    ld hl, sp+$48
    ld hl, sp+$47
    ld a, [$0624]
    inc h
    inc b
    ld h, l
    cp d
    xor l
    cp e
    xor l
    cp [hl]
    xor l
    pop bc
    xor l
    cp [hl]
    xor l
    cp e
    xor l
    cp d
    xor l
    cp e
    xor l
    cp [hl]
    xor l
    pop bc
    xor l
    cp [hl]
    xor l
    cp e
    xor l
    cp b
    xor l
    cp e
    xor l
    cp [hl]
    xor l
    pop bc
    xor l
    cp [hl]
    xor l
    cp e
    xor l
    cp b
    xor l
    cp e
    xor l
    cp [hl]
    xor l
    pop bc
    xor l
    cp [hl]
    xor l
    cp e
    xor l
    cp d
    xor l
    cp e
    xor l
    cp [hl]
    xor l
    pop bc
    xor l
    cp [hl]
    xor l
    cp e
    xor l
    cp d
    xor l
    cp e
    xor l
    cp [hl]
    xor l
    pop bc
    xor l
    cp [hl]
    xor l
    cp e
    xor l
    cp b
    xor l
    cp e
    xor l
    cp [hl]
    xor l
    pop bc
    xor l
    cp [hl]
    xor l
    cp e
    xor l
    cp b
    xor l
    cp e
    xor l
    cp [hl]
    xor l
    pop bc
    xor l
    cp [hl]
    xor l
    cp e
    xor l
    cp b
    xor l
    cp e
    xor l
    cp [hl]
    xor l
    ret nz

    xor l
    cp [hl]
    xor l
    cp e
    xor l
    cp b
    xor l
    cp e
    xor l
    cp [hl]
    xor l
    ret nz

    xor l
    cp [hl]
    xor l
    cp e
    xor l
    or h
    xor l
    cp b
    xor l
    cp e
    xor l
    pop bc
    xor l
    cp e
    xor l
    cp b
    xor l
    or h
    xor l
    cp b
    xor l
    cp e
    xor l
    ret nz

    xor l
    cp e
    xor l
    cp b
    xor l
    or h
    xor l
    cp b
    xor l
    cp e
    xor l
    cp [hl]
    xor l
    cp e
    xor l
    cp b
    xor l
    or h
    xor l
    cp b
    xor l
    cp e
    xor l
    cp h
    xor l
    cp e
    xor l
    cp b
    xor l
    ld h, l
    and d
    inc h
    and d
    ld h, $a2
    inc h
    xor [hl]
    ld h, $a2
    ld h, $a8
    inc h
    xor b
    ld h, $a8
    inc h
    sbc h
    ld h, $a8
    ld h, $a2
    inc h
    and d
    ld h, $a2
    inc h
    xor [hl]
    ld h, $a2
    ld h, $9c
    inc h
    sbc h
    ld h, $9c
    inc h
    xor b
    inc h
    sbc h
    inc h
    and b
    inc h
    sbc h
    inc h
    sbc h
    inc h
    sbc h
    ld h, $9c
    inc h
    xor b
    ld h, $a3
    ld h, $9c
    ld h, $a8
    ld h, $a3
    ld h, $9c
    ld h, $a8
    ld h, $a3
    ld h, $9c
    ld h, $a8
    ld h, $65
    ld h, a
    rst $38
    ld l, c
    or h
    ld h, h

jr_006_5e56:
    ld b, b
    and $01
    ld h, [hl]
    ld bc, $5162

jr_006_5e5d:
    ld e, [hl]
    ld h, c
    ld h, h
    ld b, c
    and $01

jr_006_5e63:
    ld h, d
    ld e, a
    ld e, [hl]
    ld h, c
    inc h
    ld a, [bc]
    inc h
    ld a, [bc]
    inc h
    ld a, [bc]

jr_006_5e6d:
    inc h
    ld a, [bc]
    ld [hl], $f8
    scf
    ei

jr_006_5e73:
    inc sp
    db $fc

jr_006_5e75:
    ccf

jr_006_5e76:
    ld hl, sp+$3e
    ld hl, sp+$3d
    ld sp, hl
    jr c, jr_006_5e73

    dec sp
    ei
    inc a
    db $fc
    inc h
    ld [$f842], sp
    ld b, e
    ld a, [$fb3f]

jr_006_5e89:
    ld [hl-], a
    ld a, [$f831]
    jr nc, jr_006_5e89

    ld sp, $32f8
    ld hl, sp+$37
    ld hl, sp+$34
    ld hl, sp+$3a
    ld hl, sp+$39
    db $fc
    ld h, l
    xor d
    jr z, @-$53

    dec hl
    and a
    inc l
    xor d
    jr z, @-$53

    dec hl
    and a
    inc l
    and [hl]
    jr z, jr_006_5e56

    jr z, jr_006_5e5d

    add hl, hl
    xor h
    ld h, $ad
    inc l
    xor [hl]
    inc l
    xor d
    jr z, @-$53

    dec hl
    and a
    ld a, [hl+]
    and [hl]
    ld a, [hl+]
    and l
    jr z, jr_006_5e63

    ld a, [hl+]
    and l
    ld a, [hl+]
    xor e
    jr z, jr_006_5e6d

    jr z, jr_006_5e75

    jr z, jr_006_5e76

    inc l
    ld h, l
    ld h, a
    rst $38
    ld l, c
    cp [hl]
    ld h, h
    ld c, a
    nop
    ld bc, $4264
    and $01
    ld h, h
    ld b, h
    and $02
    ld h, h
    ld b, a
    jp c, Jump_006_6401

    ld c, b
    adc $01
    ld h, h
    ld c, e
    and $01
    ld h, h
    ld c, l
    and $01
    ld h, [hl]
    ld bc, $cb62
    ld e, [hl]
    ld h, h
    ld c, a
    nop
    inc b
    ld h, h
    ld b, l
    and $02
    ld h, h
    ld b, l
    call c, $6402
    ld c, c
    and $01
    ld h, h
    ld d, b
    ld a, [c]
    inc b
    ld h, h
    ld d, b
    ldh a, [rDIV]
    ld h, h
    ld d, b
    ld a, [c]
    ld [bc], a
    ld h, h
    ld d, b
    push af
    ld [bc], a
    ld h, h
    ld d, b
    ld sp, hl
    ld [bc], a
    ld h, h
    ld d, b
    rst $30
    ld [bc], a
    sbc [hl]
    cp d
    sbc [hl]
    cp d
    ld h, d
    ldh a, [$5e]
    ld h, h
    ld b, e
    ld a, [c]
    inc b
    ld h, h
    ld b, [hl]
    ld a, [c]
    ld [bc], a
    ld h, h
    ld b, [hl]
    db $f4
    ld [bc], a
    ld h, h
    ld c, d
    ld a, [c]
    ld bc, $4c64
    ld a, [c]
    ld bc, $4e64
    ld a, [c]
    ld bc, $1f62
    ld e, a
    ld h, c
    inc [hl]
    ld hl, sp+$33
    ld hl, sp+$32
    ld hl, sp+$31
    ld hl, sp+$30
    ld hl, sp+$2f
    ld hl, sp+$2e
    ld hl, sp+$30
    ld hl, sp+$34
    or $39
    or $38
    or $33
    or $32
    or $37
    or $36
    ld hl, sp+$30
    or $35
    or $34
    or $2f
    or $2e
    or $33
    or $31
    or $30
    or $30
    or $39
    or $38
    or $3b
    or $3a
    or $37
    or $39
    ld hl, sp+$38
    or $35
    or $37
    or $3b
    or $3a
    or $37
    or $3b
    ld hl, sp+$65
    and c
    ld h, $a8
    ld h, $a7
    ld h, $a0
    ld h, $9f
    ld h, $a6
    ld h, $a5
    ld h, $9e
    ld h, $9d
    ld h, $a4
    ld h, $a3
    ld h, $9c
    ld h, $9b
    ld h, $a2
    ld h, $a0
    jr z, jr_006_600a

    inc a
    call nz, $c43c
    inc a
    call nz, $c43c
    inc a
    call nz, $c43c
    inc a
    call nz, $c43c
    dec sp
    call nz, $c43b
    dec sp
    call nz, $c43b
    dec sp
    call nz, $c43b
    dec sp
    call nz, $c43b
    ld a, [hl-]
    call nz, $c43a
    ld a, [hl-]
    call nz, $c43a
    ld a, [hl-]
    call nz, $c43a
    ld a, [hl-]
    call nz, $c43a
    add hl, sp
    call nz, $c439
    add hl, sp
    call nz, $c439
    add hl, sp

jr_006_5fde:
    call nz, $c439
    add hl, sp

jr_006_5fe2:
    call nz, $c439
    ld h, l

jr_006_5fe6:
    inc [hl]
    call nz, $c434

jr_006_5fea:
    inc [hl]
    call nz, $c434
    inc [hl]
    call nz, $c434
    inc [hl]
    call nz, $c434
    inc sp
    call nz, $c433
    inc sp
    call nz, $c433
    inc sp
    call nz, $c433
    inc sp
    call nz, $c433
    ld [hl-], a
    call nz, $c432

jr_006_600a:
    ld [hl-], a
    call nz, $c432
    ld [hl-], a
    call nz, $c432
    ld [hl-], a
    call nz, $c432
    jr nc, @-$3a

    jr nc, jr_006_5fde

    jr nc, @-$3a

    jr nc, jr_006_5fe2

    jr nc, @-$3a

    jr nc, jr_006_5fe6

    jr nc, @-$3a

    jr nc, jr_006_5fea

    ld h, l
    ld l, l
    ld [hl], l
    ld [hl], e
    ld l, c
    ld h, e
    jr nz, jr_006_6090

    ld a, c
    jr nz, @+$4f

    ld b, c
    ld d, d
    ld c, e
    jr nz, @+$56

    ld l, $57
    ld l, $20
    ld b, e
    ld c, a
    ld c, a
    ld c, e
    ld d, e
    ld b, l
    ld e, c
    jr nz, jr_006_6084

    ld d, b
    ld d, d
    ld c, c
    ld c, h
    jr nz, jr_006_607a

    add hl, sp
    add hl, sp
    add hl, sp
    and c
    rla
    and c
    rla
    and c
    ld d, $a1
    rla
    and c
    rla
    and c
    ld d, $a1
    rla
    and c
    rla
    and c
    ld d, $a1
    rla
    and c
    rla
    and c
    ld d, $65
    or [hl]
    or h
    cp e
    or h
    jp nz, $c3b8

    or h
    jp nz, $c1b4

    cp d
    or a
    or h
    cp e
    or h
    ret nz

    or [hl]
    jp nz, $c3b6

jr_006_607a:
    or [hl]
    rst $00
    or [hl]
    jp nz, $beb6

    or [hl]
    cp l
    or [hl]
    cp e

jr_006_6084:
    or h
    cp l
    or h
    cp [hl]
    or h
    jp nz, $c7b7

    or [hl]
    ret z

    or [hl]
    push bc

jr_006_6090:
    or [hl]
    pop bc
    cp b
    call z, $cab4
    or h
    ret


    or [hl]
    rst $00
    or [hl]
    ret nz

    or [hl]
    jp nz, Jump_006_65ba

    ld b, a
    db $f4
    ld c, c
    db $f4
    ld c, d
    or $4e
    or $4f
    db $f4
    ld c, [hl]
    db $f4
    ld c, l
    ld a, [$f647]
    ld c, c
    or $4a
    or $4e
    or $4f
    ld a, [$f74c]
    ld c, d
    db $f4
    ld c, b
    or $45
    or $4b
    ld a, [$f445]
    ld b, a
    db $f4
    ld c, b
    or $45
    or $48
    or $47
    ld a, [$4265]
    add $3b
    add $3e
    add $42
    add $41
    add $39
    add $3c
    add $41
    add $42
    add $3b
    add $3e
    add $42
    add $41
    add $39
    add $3c
    add $41
    add $40
    add $39
    add $3c
    add $40
    add $3f
    add $37
    add $3a
    add $3f
    add $40
    add $39
    add $3c
    add $40
    add $3f
    add $37
    add $3a
    add $3f
    add $65
    and e
    daa
    and e
    inc h
    xor a
    ld h, $a3
    ld h, $a3
    daa
    and e
    inc h
    xor a
    ld h, $af
    ld h, $a3
    daa
    and e
    inc h
    xor a
    ld h, $a3
    ld h, $a3
    daa
    xor a
    daa
    and e
    ld h, $a1
    daa
    xor l
    daa
    xor l
    ld h, $a1
    daa
    xor l
    daa
    xor l
    ld h, $a1
    daa
    xor l
    daa
    xor l
    ld h, $a1
    daa
    xor l
    daa
    xor l

jr_006_6145:
    ld h, $65
    dec l
    ld hl, sp+$2e
    or $2b
    or $2d
    rst $30
    jr nc, jr_006_6145

    inc sp
    or $34
    or $2d
    ld hl, sp+$2e
    or $2b
    or $2d
    rst $30
    jr nc, @-$0a

    inc sp
    or $34
    or $2b
    ld hl, sp+$32
    ld hl, sp+$31
    ld a, [$f82b]
    ld [hl-], a
    ld hl, sp+$31
    ld a, [$3365]
    add h
    inc sp
    add h
    inc sp
    add h
    inc sp
    add h
    inc sp
    add h
    inc sp
    add h
    inc sp
    add h
    inc sp
    add h
    ld h, l
    and c
    add a
    and c
    add h
    and c
    add [hl]
    and c
    add [hl]
    and c
    add a
    and c
    add h
    and c
    add [hl]
    and c
    add [hl]
    and c
    add a
    and c
    add h
    and c
    add [hl]
    and c
    add [hl]
    and c
    add a
    and c
    add h
    and c
    add [hl]
    and c
    add [hl]
    sbc a
    add a
    sbc a
    add h
    sbc a
    add [hl]
    sbc a
    add [hl]
    sbc a
    add a
    sbc a
    add h
    sbc a
    add [hl]
    sbc a
    add [hl]
    sbc a
    add a
    sbc a
    add h
    sbc a
    add [hl]
    sbc a
    add [hl]
    sbc a
    add a
    sbc a
    add h
    sbc a
    add [hl]
    sbc a
    add [hl]
    ld h, l
    add hl, sp
    or $38
    or $39
    or $3a
    or $39
    or $38
    or $39
    or $3a
    or $34
    or $33
    or $34
    or $35
    or $34
    or $33
    or $34
    or $35
    or $36
    or $35
    or $36
    or $37
    or $36
    or $35
    or $36
    or $37
    or $39
    or $38
    or $39
    or $3a
    or $39
    or $38
    or $39
    or $3a
    or $3b
    or $38
    or $34
    or $40
    or $3b
    or $38
    or $34
    ld hl, sp+$65
    and c
    ld h, $a2
    ld h, $a1
    ld h, $a5
    ld h, $a1
    ld h, $a2
    ld h, $a1
    ld h, $a5
    ld h, $a4
    ld h, $a5
    ld h, $a4
    ld h, $a7
    ld h, $a4
    ld h, $a5
    ld h, $a4
    ld h, $a7
    ld h, $a7
    ld h, $a6
    ld h, $a7
    ld h, $a4
    ld h, $a7
    ld h, $a6
    ld h, $a7
    ld h, $a4
    ld h, $a6
    ld h, $a5
    ld h, $a6
    ld h, $a7
    ld h, $a6
    ld h, $a5
    ld h, $a6
    ld h, $a7
    ld h, $a8
    jr z, @-$62

    jr z, @-$56

    jr z, @-$62

    jr z, jr_006_62bf

    inc h
    ld a, [bc]
    inc h
    ld a, [bc]
    inc h
    ld a, [bc]
    inc h
    ld a, [bc]
    ld h, l
    ld h, a
    rst $38
    ld l, c
    jp Jump_000_0a24


    inc h
    ld a, [bc]
    ld h, h
    ld d, h
    db $e3
    ld bc, $5564
    db $e3
    ld bc, $5864
    rst $10
    ld bc, $5964
    db $e3
    ld bc, $5a64
    ei
    ld bc, $5a64
    ld sp, hl
    ld bc, $5d64
    db $e3
    ld bc, $5f64
    db $e3
    ld [bc], a
    ld h, h
    ld h, c
    db $e3
    ld bc, $6164
    ldh [rSB], a
    ld h, h
    ld h, d
    db $e3
    ld bc, $6264
    pop hl
    ld bc, $6164
    db $e3
    ld bc, $6164
    ldh [rSB], a
    ld h, h
    ld h, d
    db $e3
    ld bc, $6264
    pop hl
    ld bc, $0166
    ld h, d
    ld h, e
    ld h, d
    ld h, h
    ld d, d
    db $e3
    rlca
    ld h, h
    ld d, d
    push hl
    ld [bc], a
    ld h, h
    ld d, a
    db $e3
    ld bc, $5b64
    db $e3

jr_006_62bf:
    ld bc, $5b64
    pop hl
    ld bc, $5b64
    db $e3
    ld bc, $5b64
    pop hl
    ld bc, $6064
    db $e3
    ld [bc], a
    ld h, h
    ld h, e
    db $e3
    ld bc, $6364
    ldh [rSB], a
    ld h, h
    ld h, h
    db $e3
    ld bc, $6464
    pop hl
    ld bc, $6364
    db $e3
    ld bc, $6364
    ldh [rSB], a
    ld h, h
    ld h, h
    db $e3
    ld bc, $6464
    pop hl
    ld bc, $b062
    ld h, d
    ld h, h
    ld d, e
    rst $28
    rlca
    ld h, h
    ld d, [hl]
    rst $28
    add hl, bc
    ld h, h
    ld e, h
    ei
    ld bc, $5c64
    ld sp, hl
    ld bc, $5c64
    ei
    ld bc, $5c64
    ld sp, hl
    ld bc, $5e64
    ei
    ld bc, $6564
    rst $28
    ld bc, $6564
    db $ec
    ld bc, $6564
    rst $28
    ld bc, $6564
    rst $28
    ld bc, $6564
    db $ec
    ld bc, $6564
    rst $28
    ld bc, $f362
    ld h, d
    ld h, h
    ld d, c
    nop
    db $10
    ld h, d
    ld a, [hl+]
    ld h, e
    inc a
    ld hl, sp+$43
    ld hl, sp+$42
    ld a, [$f83f]
    ld b, e
    ld hl, sp+$44
    ld a, [$3c65]
    ld a, [c]
    ccf
    ld a, [c]
    ld b, e
    db $f4
    ld b, h
    ld hl, sp+$43
    or $42
    ld a, [$f23c]
    ccf
    ld a, [c]
    ld b, e

jr_006_634f:
    db $f4
    ld b, [hl]
    rst $30
    ld b, h
    db $f4
    ld b, e
    db $f4
    ld b, d
    db $f4
    ld b, c
    ld sp, hl
    dec a
    or $3f
    ld a, [$f83e]
    dec a
    ld hl, sp+$3c
    ld a, [$fa30]
    ld h, l
    jr nc, jr_006_634f

    inc [hl]
    and $33
    and $31
    and $30
    and $34
    and $33
    and $31
    and $65
    and h
    ld h, $a5
    ld h, $a8
    ld h, $a7
    ld h, $a4
    ld h, $a5
    ld h, $a8
    ld h, $a7
    ld h, $65
    ld e, $34
    ld e, $34
    ld e, $34
    ld e, $34
    ld e, $34
    ld e, $34
    ld e, $34
    jr nz, @+$46

    ld e, $34
    ld e, $34
    ld e, $34
    ld e, $34
    ld e, $34
    ld e, $34
    ld e, $34
    jr nz, jr_006_63ed

    ld h, l
    ld c, d
    ld [$ea4b], a
    ld c, d
    ld [$ea4b], a
    ld c, d
    add sp, $45
    add sp, $46
    ld [$e84a], a
    ld b, l
    add sp, $4b
    ld [$3565], a
    ld hl, sp+$39
    ld hl, sp+$38
    ld hl, sp+$3b
    ld hl, sp+$39
    ld hl, sp+$3c
    ld hl, sp+$3b
    ld hl, sp+$3e
    ld hl, sp+$41
    ld hl, sp+$3e
    ld hl, sp+$3f
    ld hl, sp+$3a
    ld hl, sp+$41
    ld hl, sp+$3e
    ld hl, sp+$3f
    or $3a
    or $37
    ld hl, sp+$35
    ld hl, sp+$39
    ld hl, sp+$35
    ld a, [$4565]
    add sp, $41
    add sp, $3f

jr_006_63ed:
    ld [$e845], a
    ld b, c
    add sp, $43
    ld [$e832], a
    dec [hl]
    add sp, $34
    add sp, $38
    add sp, $35
    add sp, $39
    add sp, $38

Jump_006_6401:
    add sp, $3b
    add sp, $3e
    add sp, $39
    add sp, $3a
    add sp, $37
    add sp, $39
    add sp, $39
    add sp, $3a
    and $37
    and $33
    add sp, $32
    add sp, $35
    add sp, $32
    ld [$a665], a
    rlca
    and [hl]
    ld b, $a6
    inc b
    and a
    inc b
    and h
    inc b
    and [hl]
    rlca
    and [hl]
    ld b, $a6
    inc b
    and a
    inc b
    and h
    inc b
    ld h, l
    ld a, [de]
    rst $20
    ld a, [de]
    db $e4
    ld h, $e7
    ld h, $e4
    ld a, [de]
    rst $20
    ld a, [de]
    db $e4
    ld h, $e7
    ld h, $e4
    ld a, [de]
    rst $20
    ld a, [de]
    db $e4
    ld h, $e7
    ld h, $e4
    ld a, [de]
    rst $20
    ld a, [de]
    db $e4
    ld h, $e8
    ld h, l
    ld a, $e6
    ld b, c
    and $44
    and $45
    and $4a
    rst $20
    ld c, h
    db $e4
    ld c, l
    and $4a
    and $45
    jp hl


    ld b, e
    and $41
    and $3e
    add sp, $44
    db $e4
    ld b, l
    db $e4
    ld b, e
    add sp, $3f
    and $3c
    and $48
    add sp, $24
    inc b
    ld b, a
    db $e4
    ld b, [hl]
    db $e4
    ld b, l
    db $e4
    ld b, h
    jp hl


    ld b, d
    and $43
    ld [$3265], a
    and $35
    and $38
    and $39
    and $3a
    and $39
    and $35
    and $31
    and $32
    and $35
    and $38
    and $39
    and $3a
    and $39
    and $35
    and $31
    and $65
    sbc d
    rla
    sbc d
    inc d
    and [hl]
    rla
    and [hl]
    inc d
    sbc d
    rla
    sbc d
    inc d
    and [hl]
    rla
    and [hl]
    inc d
    sbc d
    rla
    sbc d
    inc d
    and [hl]
    rla
    and [hl]
    inc d
    sbc d
    rla
    sbc d
    inc d
    and [hl]
    jr jr_006_6529

    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    dec a
    and h
    dec a
    and h
    dec a
    and h
    dec a
    and h
    dec a
    and h

jr_006_64ee:
    dec a
    and h
    dec a

jr_006_64f1:
    and h
    dec a
    and h
    dec a
    and h
    dec a
    and h
    dec a
    and h
    dec a
    and h
    dec a
    and h
    dec a
    and h
    dec a
    and h
    dec a
    and h
    ld h, l
    dec [hl]

jr_006_6506:
    and h

jr_006_6507:
    dec [hl]
    and h
    dec [hl]
    and h
    dec [hl]
    and h

jr_006_650d:
    dec [hl]
    and h
    dec [hl]
    and h
    dec [hl]
    and h
    dec [hl]
    and h
    dec [hl]
    and h
    dec [hl]

jr_006_6518:
    and h
    dec [hl]
    and h
    dec [hl]
    and h
    dec [hl]
    and h
    dec [hl]
    and h
    dec [hl]
    and h
    dec [hl]
    and h
    ld a, [hl-]
    and h
    ld a, [hl-]
    and h

jr_006_6529:
    ld a, [hl-]
    and h
    ld a, [hl-]
    and h
    ld a, [hl-]
    and h
    ld a, [hl-]
    and h
    ld a, [hl-]
    and h
    ld a, [hl-]
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp

Call_006_653a:
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    add hl, sp
    and h
    ld h, l
    sbc d
    daa
    sbc h
    inc h
    sbc l
    ld h, $a0
    ld h, $a1
    jr z, jr_006_64ee

    ld h, $9a
    ld h, $99
    jr z, jr_006_64f1

    ld h, $9c
    ld h, $a1
    daa
    and e
    inc h
    and l
    ld h, $a1
    ld h, $a6
    jr z, jr_006_6506

    ld h, $9d
    ld h, $9a
    jr z, jr_006_6507

    ld h, $9d
    ld h, $99
    jr z, jr_006_650d

    ld h, $9f
    ld h, $a2
    jr z, jr_006_6518

    jr z, jr_006_65de

    ld b, c
    ld a, [$fa40]
    ccf
    ld a, [$fa3e]
    ld h, l
    ld a, $f8
    ld b, l
    ld hl, sp+$44
    ld hl, sp+$3d
    ld hl, sp+$65
    inc h
    ld [$fa3e], sp
    dec a
    ld a, [$fa3c]
    dec sp
    ld hl, sp+$65
    inc h
    ld b, $39
    ld hl, sp+$3e
    ld hl, sp+$3f
    ld hl, sp+$3a
    or $65
    and [hl]
    ld d, $a9
    ld d, $ac
    ld d, $ad
    rla
    and [hl]
    inc d
    xor c
    ld d, $ac
    ld d, $ad
    ld d, $a4
    ld d, $a7
    ld d, $aa

Call_006_65b6:
    ld d, $ab
    rla
    and h

Jump_006_65ba:
    inc d

jr_006_65bb:
    and a
    ld d, $aa
    ld d, $ab
    ld d, $65
    ld h, a
    rst $38
    ld l, c
    cp c
    ld h, h

jr_006_65c7:
    ld h, [hl]
    db $e4
    ld bc, $6964
    db $e4

jr_006_65cd:
    ld bc, $0166
    inc h
    nop
    ld h, c

jr_006_65d3:
    ld h, h
    ld h, a
    db $e4
    ld bc, $6a64
    db $e4
    ld bc, $0024
    ld h, c

jr_006_65de:
    ld h, h
    ld l, b
    ldh a, [rSB]
    ld h, h
    ld l, e
    ldh a, [rSB]
    inc h
    nop
    ld h, c
    ld h, c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h

jr_006_65f1:
    inc c
    inc h
    dec bc
    ld b, h
    rst $00
    ld b, h

jr_006_65f7:
    call nz, $3865
    xor [hl]
    dec a
    xor [hl]

jr_006_65fd:
    ld b, b
    xor [hl]
    jr c, @-$50

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    jr c, @-$50

    dec a
    xor [hl]
    ld b, b
    xor [hl]

jr_006_660b:
    jr c, jr_006_65bb

    dec a
    xor [hl]

jr_006_660f:
    ld b, b
    xor [hl]
    jr c, @-$50

    dec a
    xor [hl]

jr_006_6615:
    ld b, b
    xor [hl]
    jr c, jr_006_65c7

    dec a
    xor [hl]

jr_006_661b:
    ld b, b
    xor [hl]
    jr c, jr_006_65cd

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_65d3

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    add hl, sp
    xor [hl]
    dec a
    xor [hl]
    ld b, b
    xor [hl]
    add hl, sp
    xor [hl]
    dec a
    xor [hl]
    ld b, b
    xor [hl]
    add hl, sp
    xor [hl]
    ld a, $ae
    ld b, d
    xor [hl]
    add hl, sp
    xor [hl]
    ld a, $ae
    ld b, d
    xor [hl]
    jr c, jr_006_65f1

    inc a
    xor [hl]
    ld b, d

jr_006_6646:
    xor [hl]
    jr c, jr_006_65f7

    dec a
    xor [hl]
    ld b, b

jr_006_664c:
    xor [hl]
    jr c, jr_006_65fd

    dec a
    xor [hl]
    ccf

jr_006_6652:
    xor [hl]
    ld [hl], $ae
    inc a
    xor [hl]
    ccf

jr_006_6658:
    xor [hl]
    inc [hl]
    xor [hl]
    jr c, jr_006_660b

    dec a

jr_006_665e:
    xor [hl]
    jr c, jr_006_660f

    dec a
    xor [hl]
    ld b, b

jr_006_6664:
    xor [hl]
    jr c, jr_006_6615

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_661b

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    ld h, l
    and l
    inc l
    and e
    inc l

jr_006_6676:
    and c
    ld a, [hl+]
    sbc [hl]
    ld a, [hl+]
    and b
    ld a, [hl+]

jr_006_667c:
    and b
    ld a, [hl+]
    and l
    inc l
    ld h, l
    ld b, h
    bit 0, h
    rst $00
    ld b, h
    call nz, $ca44
    ld b, l
    jp z, $ca44

    ld b, d

jr_006_668e:
    ret z

    ld b, a
    ret z

    ld b, b
    call z, $cc40
    ld h, l
    jr c, jr_006_6646

    ccf
    xor [hl]

jr_006_669a:
    ld b, d
    xor [hl]
    jr c, jr_006_664c

    ccf
    xor [hl]

jr_006_66a0:
    ld b, d
    xor [hl]
    jr c, jr_006_6652

    ccf
    xor [hl]
    ld b, d
    xor [hl]
    jr c, jr_006_6658

    ccf
    xor [hl]
    ld b, d
    xor [hl]
    jr c, jr_006_665e

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_6664

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    add hl, sp
    xor [hl]
    dec a
    xor [hl]
    ld b, d
    xor [hl]
    add hl, sp
    xor [hl]
    dec a
    xor [hl]

jr_006_66c4:
    ld b, d
    xor [hl]
    jr c, jr_006_6676

    dec sp
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_667c

    dec sp
    xor [hl]
    ld b, b
    xor [hl]
    add hl, sp
    xor [hl]
    dec sp
    xor [hl]
    ccf
    xor [hl]
    add hl, sp
    xor [hl]
    dec sp
    xor [hl]
    ccf
    xor [hl]
    jr c, jr_006_668e

    dec sp
    xor [hl]
    ld b, b
    xor [hl]
    jr c, @-$50

    dec sp
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_669a

    dec sp
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_66a0

    dec sp
    xor [hl]
    ld b, b

jr_006_66f5:
    xor [hl]
    jr c, jr_006_66c4

    ld h, l
    and h
    inc l

jr_006_66fb:
    and l
    ld a, [hl+]
    sbc [hl]
    ld a, [hl+]
    and e
    ld a, [hl+]

jr_006_6701:
    and e
    ld a, [hl+]
    xor b
    inc l
    sbc h
    inc l

jr_006_6707:
    ld h, l
    ld h, a
    rst $38
    ld l, c
    cp c
    ld h, h

jr_006_670d:
    ld l, h
    db $e4
    ld bc, $6f64
    db $e4

jr_006_6713:
    ld bc, $0166
    inc h
    nop
    ld h, c

jr_006_6719:
    ld h, h
    ld l, l
    db $e4
    ld bc, $7064
    db $e4
    ld bc, $0024
    ld h, c
    ld h, h
    ld l, [hl]
    ldh a, [rSB]
    ld h, h
    ld [hl], c
    ldh a, [rSB]
    inc h
    nop
    ld h, c
    ld h, c
    inc h
    inc c
    inc h
    inc c
    inc h
    inc c
    inc h

jr_006_6737:
    inc c
    inc h
    dec bc
    ld b, h
    rst $00
    ld b, h

jr_006_673d:
    call nz, $3865
    xor [hl]
    dec a
    xor [hl]

jr_006_6743:
    ld b, b
    xor [hl]
    jr c, jr_006_66f5

    dec a
    xor [hl]
    ld a, $ae
    jr c, jr_006_66fb

    dec a
    xor [hl]
    ld b, b
    xor [hl]

jr_006_6751:
    jr c, jr_006_6701

    dec a
    xor [hl]

jr_006_6755:
    ld b, b
    xor [hl]
    jr c, jr_006_6707

    inc a
    xor [hl]

jr_006_675b:
    ld b, b
    xor [hl]
    jr c, jr_006_670d

    dec a
    xor [hl]

jr_006_6761:
    ld b, b
    xor [hl]
    jr c, jr_006_6713

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_6719

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    dec sp
    xor [hl]
    dec a
    xor [hl]
    ld a, $ae
    add hl, sp
    xor [hl]
    dec a
    xor [hl]
    ld b, b
    xor [hl]
    add hl, sp
    xor [hl]
    ld a, $ae
    ld b, d
    xor [hl]
    add hl, sp
    xor [hl]
    ccf
    xor [hl]
    ld b, d
    xor [hl]
    jr c, jr_006_6737

    inc a
    xor [hl]
    ld b, d

jr_006_678c:
    xor [hl]
    jr c, jr_006_673d

    dec a
    xor [hl]
    ld b, b

jr_006_6792:
    xor [hl]
    jr c, jr_006_6743

    ld a, $ae
    ccf
    xor [hl]
    ld [hl], $ae
    dec a
    xor [hl]
    ccf

jr_006_679e:
    xor [hl]
    inc [hl]
    xor [hl]
    jr c, jr_006_6751

    dec a

jr_006_67a4:
    xor [hl]
    jr c, jr_006_6755

    inc a
    xor [hl]
    ld b, b

jr_006_67aa:
    xor [hl]
    jr c, jr_006_675b

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_6761

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    ld h, l
    and l
    inc l
    and e
    inc l

jr_006_67bc:
    and d
    ld a, [hl+]
    sbc [hl]
    ld a, [hl+]
    and b
    ld a, [hl+]

jr_006_67c2:
    sbc a
    ld a, [hl+]
    and l
    inc l
    ld h, l
    ld b, h
    bit 0, h
    rst $00
    ld b, h
    call nz, $ca43
    ld b, l
    jp z, $ca44

    ld b, c

jr_006_67d4:
    ret z

    ld c, b
    ret z

    ld b, b
    call z, $cc40
    ld h, l
    jr c, jr_006_678c

    ccf
    xor [hl]

jr_006_67e0:
    ld b, d
    xor [hl]
    jr c, jr_006_6792

    ccf
    xor [hl]

jr_006_67e6:
    ld b, d
    xor [hl]
    scf
    xor [hl]
    ccf
    xor [hl]
    ld b, c
    xor [hl]
    jr c, jr_006_679e

    ccf
    xor [hl]
    ld b, c
    xor [hl]
    jr c, jr_006_67a4

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_67aa

    dec a
    xor [hl]
    ld b, b
    xor [hl]
    add hl, sp
    xor [hl]
    dec a
    xor [hl]
    ld b, d
    xor [hl]
    add hl, sp
    xor [hl]
    dec a
    xor [hl]

jr_006_680a:
    ld b, d
    xor [hl]
    jr c, jr_006_67bc

    dec sp
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_67c2

    add hl, sp
    xor [hl]
    ld b, b
    xor [hl]
    dec sp
    xor [hl]
    dec sp
    xor [hl]
    ccf
    xor [hl]
    add hl, sp
    xor [hl]
    dec sp
    xor [hl]
    ccf
    xor [hl]
    jr c, jr_006_67d4

    dec sp
    xor [hl]
    ld b, c
    xor [hl]
    jr c, @-$50

    dec sp
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_67e0

    inc a
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_67e6

    dec sp
    xor [hl]
    ld b, b
    xor [hl]
    jr c, jr_006_680a

    ld h, l
    and h
    inc l
    and l
    ld a, [hl+]
    sbc l
    ld a, [hl+]
    and e
    ld a, [hl+]
    and d
    ld a, [hl+]
    xor b
    inc l
    sbc h
    inc l
    ld h, l
    ld h, a
    rst $38
    ld l, c
    and l
    ld h, h
    ld [hl], d
    ld [c], a
    ld [bc], a
    ld h, h
    db $76
    ld [c], a
    ld bc, $7964
    ld [c], a
    ld bc, $0c24
    ld h, h
    ld a, [hl]
    sub $01
    inc h
    ld b, $64
    ld a, a
    ld [c], a
    ld bc, $8264
    ld [c], a
    ld bc, $8564
    ld [c], a
    ld [bc], a
    ld h, [hl]
    ld bc, $4e62
    ld l, b
    ld h, h
    ld [hl], e
    sub $02
    ld h, h
    ld [hl], a
    sub $02
    ld h, h
    ld a, e
    ld [c], a
    inc b
    ld h, h
    ld a, h
    ld [c], a
    inc b
    ld h, h
    ld a, l
    ld [c], a
    ld bc, $0c24
    inc h
    inc b
    ld h, h
    ld a, [hl]
    sub $01
    inc h
    inc b
    inc h
    ld a, [bc]
    ld h, h
    add b
    xor $03
    ld h, h
    add e
    ld [c], a
    ld bc, $8664
    ld [c], a
    ld [bc], a
    ld h, d
    ld [hl], a
    ld l, b
    ld h, h
    ld [hl], h
    ld [c], a
    ld bc, $7864
    xor $01
    ld h, h
    ld a, d
    xor $01
    ld h, h
    add c
    xor $08

jr_006_68b6:
    ld h, h
    add h
    xor $01

jr_006_68ba:
    ld h, h

jr_006_68bb:
    add a
    xor $02
    ld h, d
    and [hl]
    ld l, b
    ld h, h
    ld [hl], l
    nop
    ld [$c162], sp
    ld l, b
    inc sp
    ld sp, hl
    dec [hl]
    db $f4
    scf
    db $f4
    dec sp
    ld hl, sp+$3a
    ld hl, sp+$39
    db $fc
    ld h, l
    ld d, b
    add $4f
    add $49
    add $48
    add $50
    add $4f
    add $49
    add $48
    add $4e
    add $4d
    add $49
    add $45
    add $4e
    add $4d
    add $49
    add $45
    add $65
    and h
    add hl, hl
    and [hl]
    inc h
    and a
    inc h
    xor h
    jr z, @-$53

    jr z, @-$54

    ld a, [hl+]
    xor l
    jr z, jr_006_68b6

    jr z, @-$5a

    add hl, hl
    and [hl]
    inc h
    and a
    inc h
    xor h
    jr z, jr_006_68ba

    jr z, jr_006_68bb

    add hl, hl
    and l
    ld h, $aa
    ld a, [hl+]
    ld h, l
    ld e, $34
    ld e, $36
    ld e, $34
    ld e, $34
    ld e, $36
    ld e, $34
    ld e, $34
    ld e, $36
    ld e, $34
    ld e, $34
    ld e, $36
    ld e, $34
    ld e, $34
    ld e, $36
    ld e, $34
    ld e, $34
    ld e, $36
    ld e, $34
    ld e, $34
    ld e, $36
    ld e, $36
    ld e, $34
    ld e, $34
    ld e, $34
    ld h, l
    ld b, h
    rst $30
    ld b, e
    db $f4
    ld b, c
    or $3c
    or $40
    ld hl, sp+$41
    rst $30
    ld b, e
    ld a, [c]
    ld b, h
    ld a, [c]
    ld b, l
    ld hl, sp+$48
    ld hl, sp+$3f
    ld hl, sp+$40
    ld hl, sp+$44
    rst $30
    ld b, e
    db $f4
    ld b, c
    rst $30
    inc a
    db $f4
    ld b, b
    ld hl, sp+$41
    ld hl, sp+$45
    or $40
    or $48
    rst $30
    ld b, h
    db $f4
    ld b, l
    ld a, [$4d65]
    and h

jr_006_6979:
    ld d, b
    and h
    ld d, c
    and h
    ld d, b
    and h
    ld c, l
    and h
    ld d, b
    and h
    ld d, c

jr_006_6984:
    and h
    ld d, b
    and h
    ld c, l
    and h
    ld d, b
    and h
    ld d, c

jr_006_698c:
    and h
    ld d, b
    and h
    ld c, l
    and h
    ld d, b
    and h
    ld d, c
    and h
    ld d, b
    and h
    ld d, h
    and h
    ld d, a
    and h
    ld e, b
    and h
    ld d, a
    and h
    ld d, h
    and h
    ld d, a
    and h
    ld e, b
    and h
    ld d, a
    and h
    ld d, h
    and h
    ld d, a
    and h
    ld e, b
    and h
    ld d, a
    and h
    ld d, h
    and h
    ld d, a
    and h
    ld e, b
    and h
    ld d, a
    and h
    ld h, l
    sbc l
    rla
    sbc a
    inc d
    and b
    ld d, $a2
    ld d, $a3
    jr @-$57

    ld d, $a9
    ld d, $a1
    rla
    and e
    inc d
    and h
    ld d, $a1
    ld d, $a7
    jr jr_006_6979

    jr @-$61

    rla
    sbc a
    inc d
    and b
    ld d, $a2
    ld d, $a3
    jr jr_006_6984

    ld d, $a9
    ld d, $a1
    rla
    and e
    inc d
    and h
    ld d, $a7
    ld d, $a8
    jr jr_006_698c

    jr jr_006_6a52

    inc [hl]
    ld hl, sp+$39
    ld hl, sp+$3b
    ld hl, sp+$3c
    ld hl, sp+$34
    ld hl, sp+$39
    ld hl, sp+$3b
    ld hl, sp+$3c
    ld hl, sp+$3e
    ld hl, sp+$40
    or $41
    or $44
    ld a, [$f83e]
    ld b, b
    or $41
    or $44
    ld sp, hl
    ld b, l
    or $47
    ld sp, hl
    ld b, l
    or $48
    ld hl, sp+$47
    ld hl, sp+$45
    ld hl, sp+$43
    ld hl, sp+$40
    ld hl, sp+$3c
    ld hl, sp+$65
    inc sp
    and h
    inc [hl]
    and h
    inc sp
    and h
    inc [hl]
    and h
    inc sp
    and h
    inc [hl]
    and h
    inc sp
    and h
    inc [hl]
    and h
    ld h, l
    add hl, sp
    and h
    ld a, [hl-]
    and h
    add hl, sp
    and h
    ld a, [hl-]
    and h
    add hl, sp
    and h
    ld a, [hl-]
    and h
    add hl, sp
    and h
    ld a, [hl-]
    and h
    ld h, l
    ld a, [hl-]
    and h
    dec sp
    and h
    ld a, [hl-]
    and h
    dec sp
    and h
    ld a, [hl-]
    and h
    dec sp
    and h
    ld a, [hl-]
    and h
    dec sp
    and h

jr_006_6a52:
    ld a, [hl-]
    and h
    dec sp
    and h
    ld a, [hl-]
    and h
    dec sp
    and h
    ld a, [hl-]
    and h
    dec sp
    and h
    ld a, [hl-]
    and h
    dec sp
    and h
    add hl, sp
    and h
    ld a, [hl-]
    and h
    add hl, sp
    and h
    ld a, [hl-]
    and h
    add hl, sp
    and h
    ld a, [hl-]
    and h
    add hl, sp
    and h
    ld a, [hl-]
    and h
    add hl, sp
    and h
    ld a, [hl-]
    and h
    add hl, sp
    and h
    ld a, [hl-]
    and h
    add hl, sp
    and h
    ld a, [hl-]
    and h
    add hl, sp
    and [hl]
    ld h, l
    and c
    ld b, $a0
    ld b, $a1
    ld b, $9e
    ld b, $9d
    ld [$08a4], sp
    and c
    ld b, $a0
    ld b, $a1
    ld b, $9e
    ld b, $9d
    ld [$08a4], sp
    and [hl]
    ld [$08a5], sp
    and d
    add hl, hl
    and l
    ld b, $a6
    ld [$08a5], sp
    and d
    add hl, hl
    sbc [hl]
    ld b, $9d
    ld [$28a4], sp
    sbc h
    ld a, [hl+]
    and c
    inc l
    ld h, l
    ld c, d
    ld l, b
    ld c, c
    ld h, [hl]
    ld b, l
    ld h, [hl]
    ld c, b
    ld l, b
    ld b, a
    ld l, b
    ld b, [hl]
    ld l, b
    ld b, e
    ld l, b
    ld b, l
    ld l, c
    ld b, h
    ld h, [hl]
    ld b, c
    ld l, c
    dec a
    ld h, [hl]
    ld a, $68
    ld a, [hl-]
    ld l, b
    add hl, sp
    ld l, c
    ld h, l
    ld b, l
    ld hl, sp+$44
    ld hl, sp+$3f
    ld hl, sp+$43
    ld hl, sp+$42
    ld hl, sp+$3d
    ld hl, sp+$41
    ld hl, sp+$40
    ld hl, sp+$3b
    ld hl, sp+$3f
    ld hl, sp+$3e
    db $fc
    ld h, l
    ld [hl-], a
    and h
    inc sp
    and h
    ld [hl-], a
    and h
    inc sp
    and h
    ld [hl-], a
    and h
    inc sp
    and h
    ld [hl-], a
    and h
    inc sp
    and h
    ld [hl-], a
    and h
    inc sp
    and h
    ld [hl-], a
    and h
    inc sp
    and h
    ld [hl-], a
    and h
    inc sp
    and h
    ld [hl-], a
    and h
    inc sp
    and h
    ld h, l
    sbc d
    inc d
    sbc d
    ld d, $9a
    inc d
    and [hl]
    ld d, $a7
    ld d, $9a
    inc d
    sbc d
    ld d, $9a
    inc d
    and [hl]
    ld d, $a7
    ld d, $65
    dec l
    ld a, [$f933]
    inc h

jr_006_6b21:
    inc b
    dec sp
    ld sp, hl
    inc h
    inc b
    jr c, jr_006_6b21

    inc [hl]
    ld sp, hl
    dec [hl]
    ld hl, sp+$30
    ld a, [$fa36]
    inc sp
    or $30
    ld a, [$2465]
    ld [$fa34], sp
    add hl, sp
    ld hl, sp+$3c
    ld a, [$fa39]
    scf
    ld hl, sp+$33
    ld hl, sp+$3c
    ld a, [$fa37]
    dec hl
    ld a, [$a165]
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a1
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $9f
    inc d
    and c
    ld d, $a1
    ld d, $a1
    inc d
    and c
    ld d, $a3
    inc d
    and h
    rla
    and h
    ld d, $a4
    inc d
    and h
    inc d
    sbc a
    inc d
    and h
    rla
    and h
    ld d, $a4
    inc d
    and h
    inc d
    and e
    inc d
    and h
    ld d, $a4
    ld d, $a4
    inc d
    sbc a
    ld d, $a4
    ld d, $a4
    ld d, $a4
    ld d, $a4
    inc d
    and h
    inc d
    and e
    inc d
    ld h, l
    inc sp
    ld hl, sp+$3a
    ld hl, sp+$33
    ld hl, sp+$3a
    ld hl, sp+$3c
    ld a, [$0624]
    scf
    or $3c
    ld hl, sp+$65
    inc sp
    or $36
    ld hl, sp+$3b
    ld hl, sp+$36
    ld hl, sp+$3b
    ld hl, sp+$37
    ld a, [$f633]
    scf
    ld hl, sp+$65
    sbc e
    add hl, bc
    sbc h
    inc b
    sbc l
    inc b
    sbc [hl]
    inc b
    sbc a
    ld b, $a0
    inc b
    and c
    ld b, $a2
    inc b
    and e
    inc b
    and h
    add hl, bc
    inc h
    inc b
    sbc a
    inc b
    sbc b
    ld a, [bc]
    ld h, l
    ld h, a
    rst $38
    ld l, c
    xor c
    ld h, h
    adc b
    db $e4
    ld bc, $8964
    db $e4
    ld bc, $8864
    db $e4
    ld bc, $8a64
    db $e4
    ld bc, $0166
    ld h, d
    sub $6b
    ld h, h
    adc e
    ldh a, [rSB]
    ld h, h
    adc h
    db $e4
    ld bc, $8b64
    ldh a, [rSB]
    ld h, h
    adc l
    ldh a, [rSB]
    ld h, d
    rst $28
    ld l, e
    ld h, h
    adc [hl]
    ldh a, [rSB]
    ld h, h
    adc a
    ldh a, [rSB]
    ld h, h
    adc [hl]
    ldh a, [rSB]
    ld h, h
    sub b
    ldh a, [rSB]
    ld h, d
    ld [bc], a
    ld l, h
    ld e, $44
    ld e, $44
    ld e, $44
    ld e, $44
    ld e, $44
    ld e, $44
    ld e, $44
    ld e, $44
    ld e, $44
    ld e, $44
    ld e, $44
    ld e, $42
    ld e, $42
    ld h, d
    dec d
    ld l, h
    inc h
    ld b, $3b
    ld [hl], h
    ld b, e
    ld [hl], h
    ld a, $78
    inc a
    ld [hl], h
    ld b, e
    ld [hl], a
    inc h
    ld b, $3b
    ld [hl], h
    ld b, e
    ld [hl], h
    ld a, $78
    inc a
    ld [hl], h
    dec sp
    ld [hl], h
    inc a
    ld [hl], h
    add hl, sp
    ld [hl], h
    ld h, l
    dec sp
    ld [hl], h
    add hl, sp
    ld [hl], h
    dec [hl]
    ld [hl], a
    add hl, sp
    ld [hl], h
    dec sp
    ld [hl], h
    add hl, sp
    ld [hl], h
    inc [hl]
    ld [hl], a
    add hl, sp
    ld [hl], h
    dec sp
    ld [hl], h
    add hl, sp
    ld [hl], h
    dec [hl]
    db $76
    inc [hl]
    ld [hl], h
    ld [hl-], a
    ld [hl], h
    inc [hl]
    db $76
    scf
    db $76
    ld [hl-], a
    db $76
    ld h, l
    ld b, l
    db $76
    ld b, e
    ld [hl], h
    ld b, c
    ld [hl], h
    ld b, b
    ld [hl], h
    ld a, $74
    ld b, e
    db $76
    ld b, b
    db $76
    inc a
    db $76
    ld a, $74
    inc a
    ld [hl], h
    ld a, [hl-]
    ld [hl], h
    add hl, sp
    ld [hl], h
    scf
    ld [hl], h
    dec [hl]
    ld [hl], h
    inc [hl]
    db $76
    jr c, jr_006_6d06

    dec sp
    db $76
    dec [hl]
    ld [hl], h
    add hl, sp
    ld [hl], h
    inc a
    ld [hl], h
    ld b, b
    ld [hl], h
    inc a
    ld [hl], h
    add hl, sp
    ld [hl], h
    inc [hl]
    ld [hl], h
    scf
    ld [hl], h
    dec sp
    ld [hl], h
    ld a, $74
    dec sp
    ld [hl], h
    scf
    ld [hl], h
    add hl, sp
    ld a, e

jr_006_6cac:
    ld h, l
    ld hl, $28c4
    call nz, $c62d
    ld hl, $1fc4
    call nz, $c41d
    inc h
    call nz, $c629
    dec e
    call nz, $c41f
    ld hl, $28c4
    call nz, $c62d
    ld hl, $1fc4
    call nz, $c41d
    inc h
    call nz, $c629
    inc h
    call nz, $c41d
    ld h, l
    ld h, $c4
    dec l
    call nz, $c632
    dec l
    call nz, $c426
    inc h
    call nz, $c42d
    jr nc, jr_006_6cac

    dec l
    call nz, $c424
    ld h, $c4
    dec l
    call nz, $c632
    dec l
    call nz, $c432
    inc e
    call nz, $c423
    jr z, @-$36

    ld h, l
    ld h, $c4
    dec l
    call nz, $c632
    dec l
    call nz, $c426

jr_006_6d05:
    inc h

jr_006_6d06:
    call nz, $c42b
    jr nc, @-$3a

    dec hl
    call nz, $c634
    ld [hl+], a
    call nz, $c429
    ld l, $c4
    add hl, hl
    call nz, $c622
    inc e
    call nz, $c423
    jr z, @-$3a

    inc hl
    call nz, $c62c
    dec e
    call nz, $c424
    add hl, hl
    call nz, $c424
    add hl, hl
    add $1f
    call nz, $c426
    dec hl
    call nz, $c426
    cpl
    add $21
    call nz, $c428
    dec l
    call nz, $c428
    jr nc, jr_006_6d05

    jr z, @-$3a

    ld hl, $28c6
    add $2d
    add $65
    and c
    sbc b
    and c
    sub h
    sbc a
    sub h
    sbc l
    sub [hl]
    xor c
    sbc b
    and c
    sbc b
    and c
    sub h
    sbc a
    sub h
    sbc l
    sub [hl]
    xor c
    sbc b
    ld h, l
    and [hl]
    sbc c
    and h
    sbc c
    and [hl]
    sbc c
    sbc h
    sbc c
    ld h, l
    and [hl]
    sbc c
    and h
    sbc c
    and d
    sbc c
    sbc h
    sbc c
    sbc l
    sbc c
    sbc a
    sbc c
    and c
    sbc c
    and c
    sbc c
    ld h, l
    inc h
    ld bc, $7761
    ld c, a
    adc h
    ld c, a
    and c
    ld c, a
    ld a, [$1b4f]
    ld d, b
    inc l
    ld d, b
    ld c, [hl]
    ld d, b
    dec a
    ld d, b
    sbc a
    ld d, b
    ret nz

    ld d, b
    pop hl
    ld d, b
    ld [hl-], a
    ld d, c
    ld h, c
    ld d, c
    ld [hl], d
    ld d, c
    pop bc
    ld d, c
    ld [de], a
    ld d, d
    inc hl
    ld d, d
    ld [hl], d
    ld d, d
    add e
    ld d, d
    sub h
    ld d, d
    push hl
    ld d, d
    ld a, [hl-]
    ld d, e
    ld d, c
    ld d, e
    call z, $fb53
    ld d, e
    ld [de], a
    ld d, h
    push af
    ld d, h
    ld d, $55
    ld [hl], c
    ld d, l
    or d
    ld d, l
    db $d3
    ld d, l
    inc d
    ld d, [hl]
    jp $cc56


    ld d, [hl]
    pop de
    ld d, [hl]
    db $e4
    ld d, [hl]
    dec h
    ld d, a
    ld [hl], b
    ld d, a
    cp l
    ld d, a
    ld [$1758], sp
    ld e, b
    ld e, b
    ld e, b
    sbc c
    ld e, b
    ld [de], a
    ld e, c
    inc sp
    ld e, c
    ld d, h
    ld e, c
    inc d
    ld e, e
    adc [hl]
    ld e, d
    and a
    ld e, d
    or d
    ld e, d
    rst $20
    ld e, d
    or e
    ld e, c
    ld e, $5a
    ld c, c
    ld e, d
    sbc a
    ld e, e
    jp c, $3b5b

    ld e, h
    ld c, [hl]
    ld e, h
    add e
    ld e, h
    jp nz, Jump_000_235c

    ld e, l
    ld c, b
    ld e, l
    ld h, c
    ld e, l
    ld a, [bc]
    ld e, [hl]
    ld h, a
    ld e, [hl]
    sbc h
    ld e, [hl]
    dec sp
    ld e, a
    add [hl]
    ld e, a
    and l
    ld e, a
    and $5f
    ld c, h
    ld h, b
    ld h, l
    ld h, b
    and b
    ld h, b
    rst $08
    ld h, b
    db $10
    ld h, c
    ld b, a
    ld h, c
    add c
    ld h, c
    jp nz, Jump_000_1161

    ld h, d
    ld e, d
    ld h, d
    ld [hl], b
    ld h, c
    adc c
    ld h, e
    ld h, a
    ld h, e
    ld a, b
    ld h, e
    ld sp, $3e63
    ld h, e
    dec e
    ld h, h
    add sp, $63
    xor d
    ld h, e
    cp a
    ld h, e
    ld [hl-], a
    ld h, h
    add h
    ld h, h
    and l
    ld h, h
    ld d, c
    ld h, h
    ld b, [hl]
    ld h, l
    call nz, $0564
    ld h, l
    ld a, c
    ld h, l
    add d
    ld h, l
    adc e
    ld h, l
    sub [hl]
    ld h, l
    and c
    ld h, l
    ld [$f965], a
    ld h, l
    ld [hl], d
    ld h, [hl]
    add c
    ld h, [hl]
    sub [hl]
    ld h, [hl]
    ld sp, hl
    ld h, [hl]
    jr nc, jr_006_6ebd

    ccf
    ld h, a
    cp b
    ld h, a
    rst $00
    ld h, a
    call c, Call_000_3f67
    ld l, b
    ret z

    ld l, b
    push de
    ld l, b
    or $68
    rla
    ld l, c
    ld c, b
    ld l, c
    ld [hl], a
    ld l, c
    cp b
    ld l, c
    db $ed
    ld l, c
    add c
    ld l, d
    jr nz, jr_006_6ede

    ld sp, $426a
    ld l, d
    or d
    ld l, d
    rst $08
    ld l, d
    and $6a
    rlca
    ld l, e
    inc e
    ld l, e
    dec [hl]
    ld l, e
    ld c, d
    ld l, e
    sbc c
    ld l, e
    xor d
    ld l, e
    cp e
    ld l, e
    ld [hl-], a
    ld l, h
    ld c, a
    ld l, h
    ld [hl], b
    ld l, h
    xor l
    ld l, h
    sub $6c
    ei
    ld l, h
    ld c, d
    ld l, l
    ld e, a
    ld l, l
    ld l, b
    ld l, l
    call nz, $eb6f
    ld l, a
    db $f4
    ld l, a
    ld d, $70
    ld e, c
    ld [hl], b
    xor l
    ld [hl], b
    cp e
    ld [hl], b
    nop
    ld [hl], c
    inc c
    ld [hl], c
    ld l, $71
    dec [hl]
    ld [hl], c
    ld d, d
    ld [hl], c
    ld e, c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld a, d
    ld [hl], c
    adc l

jr_006_6ebd:
    ld [hl], c
    and b
    ld [hl], c
    cp b
    ld [hl], c
    ret nc

    ld [hl], c
    rst $30
    ld [hl], c
    rrca
    ld [hl], d
    dec e
    ld [hl], d
    ld c, c
    ld [hl], d
    adc [hl]
    ld [hl], d
    adc $72
    ld c, $73
    ld h, d
    ld [hl], e
    ld a, a
    ld [hl], e
    db $d3
    ld [hl], e
    daa
    ld [hl], h
    ld c, c
    ld [hl], h
    ld a, d
    ld [hl], h

jr_006_6ede:
    inc hl
    ld [hl], l
    ld b, l
    ld [hl], l
    ld l, h
    ld [hl], l
    and d
    ld [hl], l
    cp d
    ld [hl], l
    ret z

    ld [hl], l
    sbc $75
    db $ec
    ld [hl], l
    ld b, b
    db $76
    sbc c
    db $76
    db $ed
    db $76
    ld b, [hl]
    ld [hl], a
    ld c, a
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    sbc e
    ld [hl], a
    ldh [rPCM34], a
    jr nz, jr_006_6f78

    ld h, b
    ld a, b
    rst $10
    ld a, b
    ld h, $79
    ld a, $79
    ld h, b
    ld a, c
    ld h, h
    ld a, c
    ld [$0279], a
    ld a, d
    ld a, [de]
    ld a, d
    dec l
    ld a, d
    dec sp
    ld a, d
    ld b, d
    ld a, d
    ld c, c
    ld a, d
    ld d, b
    ld a, d
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    inc b
    dec b
    rst $38
    rst $38
    ld b, $07
    rst $38
    rst $38
    ld [$ffff], sp
    rst $38
    add hl, bc
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    dec bc
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    rst $38
    rst $38
    dec c
    rst $38
    rst $38
    rst $38
    ld c, $ff
    rst $38
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    db $10
    ld de, $ffff
    ld [de], a
    inc de
    rst $38
    rst $38
    inc d
    inc de
    rst $38
    rst $38
    dec d
    rst $38
    rst $38
    rst $38
    ld d, $ff
    rst $38
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    rla
    jr @+$01

    rst $38
    add hl, de
    rst $38
    rst $38
    rst $38
    ld a, [de]
    rst $38
    rst $38
    rst $38

jr_006_6f78:
    dec de
    inc e
    dec e
    ld e, $1f
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    rst $38
    rst $38
    ld hl, $ffff
    rst $38
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    inc hl
    inc h
    rst $38
    rst $38
    dec h
    ld h, $ff
    rst $38
    daa
    jr z, @+$01

    rst $38
    add hl, hl

jr_006_6f99:
    ld a, [hl+]
    rst $38
    rst $38
    dec hl
    rst $38
    rst $38
    rst $38
    inc l
    rst $38
    rst $38
    rst $38
    dec l
    ld l, $ff
    rst $38
    cpl
    jr nc, @+$01

    rst $38
    ld sp, $ff32
    rst $38
    inc sp
    inc [hl]
    rst $38
    rst $38
    inc sp
    dec [hl]
    rst $38
    rst $38
    ld [hl], $ff
    rst $38
    rst $38
    scf
    jr c, jr_006_6ff8

    rst $38
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    inc bc
    ld bc, $2000
    add b
    inc sp
    ld bc, $8000
    add b
    inc h
    ld bc, $0000
    nop
    nop
    ld bc, $f000
    add b
    inc h
    dec c
    nop
    nop
    nop
    nop
    ld bc, $c000
    add b
    inc h
    ld bc, $2000
    add b
    inc h
    cp $3c
    ld a, d
    ld bc, $8005
    ret nc

    add a
    jp Jump_000_3cfe


    ld a, d
    ld bc, $8004
    sub b

jr_006_6ff8:
    add [hl]
    jp $8003


    and b
    add a
    inc l
    ld bc, $6080
    add a
    or c
    ld bc, $5080
    add a
    or c
    ld bc, $4080
    add a
    or c
    inc bc
    add b
    jr nc, jr_006_6f99

    or c
    cp $3c
    ld a, d
    ld bc, $8001
    ldh a, [$86]
    rst $08
    ld bc, $a080
    add [hl]
    cp e
    ld bc, $8080
    add [hl]
    or c
    ld bc, $6080
    add [hl]
    and a
    ld bc, $5080
    add [hl]
    sbc l
    ld bc, $4080
    add [hl]
    adc c
    ld bc, $3080
    add [hl]
    ld [hl], l
    ld bc, $2080
    add [hl]
    ld h, c
    ld bc, $1080
    add [hl]
    ld c, l
    ld bc, $1080
    add [hl]
    add hl, sp
    ld [bc], a
    add b
    db $10
    add [hl]
    dec h
    inc b
    add b
    db $10
    add [hl]
    ld de, $8001
    nop
    nop
    nop
    rst $38
    inc bc
    ld [$0b00], sp
    add b
    ld h, c
    ld bc, $f000
    add b
    ld b, h
    ld a, [bc]
    nop
    ld d, d
    add b

jr_006_7068:
    ld h, c
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $f000
    add b

jr_006_7072:
    ld b, h
    ld bc, $4000
    add b
    ld b, h
    ld bc, $2000
    add b
    ld b, h
    ld bc, $2000
    add b
    ld b, h
    ld bc, $1000
    add b
    ld b, h
    inc bc

jr_006_7088:
    nop
    db $10
    add b
    ld b, h
    inc bc
    nop
    db $10
    add b
    ld b, l
    inc bc
    nop
    db $10
    add b
    ld b, [hl]
    inc bc
    nop
    db $10
    add b
    ld b, a
    inc bc
    nop
    db $10
    add b
    ld h, b
    inc bc
    nop
    db $10
    add b
    ld h, c
    ld b, $00
    db $10
    add b
    ld h, d
    cp $3c
    ld a, d
    ld bc, $0009
    nop
    nop
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    add a
    db $e3
    cp $3c
    ld a, d
    inc bc
    ld bc, $f000
    add b
    ld h, b
    ld bc, $7000
    add b
    ld h, b
    ld bc, $3000
    add b
    ld h, b
    ld bc, $2000
    add b
    ld h, b
    ld [bc], a
    nop
    db $10
    add b
    ld h, b
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ldh a, [$80]
    ld h, c
    inc d
    nop
    ld [hl], l
    add b
    ld h, d
    dec b
    nop
    jr nc, jr_006_7068

    ld h, e
    ld [bc], a
    nop
    nop
    nop
    nop
    dec b
    nop
    jr nz, jr_006_7072

    ld h, e
    ld [bc], a
    nop
    nop
    nop
    nop
    dec b
    nop
    db $10
    add b
    ld h, e
    cp $3c
    ld a, d
    ld bc, $0009
    nop
    nop
    nop
    jr z, jr_006_7088

    pop af
    add b
    ld d, b
    rst $38
    ld bc, $8001
    ldh a, [$84]
    ld sp, hl
    ld bc, $1080
    add h
    ld sp, hl
    inc a
    nop
    nop
    nop
    nop
    ld [bc], a
    add b
    ld h, b
    add h
    ld a, [$8001]
    db $10
    add h
    ld a, [$003c]
    nop
    nop
    nop
    cp $0d
    ld [hl], c
    ld bc, $0001
    nop
    nop
    nop
    rst $38

jr_006_7135:
    inc bc
    ld bc, $f000
    add b
    dec [hl]
    inc a
    nop
    nop
    nop
    nop
    ld bc, $9000
    add b
    ld b, e
    ld bc, $1000
    add b
    ld b, e
    inc a
    nop
    nop
    nop
    nop
    cp $36
    ld [hl], c
    inc bc
    ld bc, $0000
    nop
    nop
    rst $38
    inc bc
    ld bc, $f000
    ret nz

    ld b, h
    ld bc, $0000
    nop
    nop
    ld [bc], a
    nop
    db $10
    ret nz

    inc h

jr_006_7169:
    ld [bc], a
    nop
    db $10
    ret nz

    inc hl

jr_006_716e:
    cp $3c
    ld a, d
    inc bc
    ld bc, $f000
    add b
    ld h, d
    cp $3c
    ld a, d
    inc bc
    ld bc, $f000
    add b
    ld h, c
    inc b
    nop
    nop
    nop
    nop
    ld bc, $2000
    add b
    ld b, h
    cp $3c
    ld a, d
    inc bc
    ld bc, $f000
    add b
    ld h, d
    inc b
    nop
    nop
    nop
    nop
    ld bc, $2000
    add b
    ld b, e
    cp $3c
    ld a, d
    ld bc, $0001
    ld d, b
    add [hl]
    push bc
    ld bc, $4000
    add [hl]
    push bc
    ld [bc], a
    nop
    jr nz, jr_006_7135

    push bc
    ld bc, $1000
    add [hl]
    push bc
    cp $3c
    ld a, d
    inc bc
    inc d
    nop
    ld d, l
    add b
    inc sp
    inc b
    nop

jr_006_71c0:
    db $10
    add b
    inc [hl]
    ld b, $00
    db $10
    add b
    dec [hl]
    ld [$1000], sp
    add b
    ld b, d
    cp $3c
    ld a, d
    inc bc
    dec b
    nop
    pop af
    add b
    ld b, d
    ld [bc], a
    nop
    ld h, b
    add b
    inc [hl]
    ld [bc], a
    nop
    ld d, b
    add b
    inc [hl]
    ld [bc], a
    nop
    ld b, b
    add b
    inc [hl]
    inc bc
    nop
    jr nc, jr_006_7169

    inc [hl]
    inc bc
    nop
    jr nz, jr_006_716e

    inc [hl]
    inc b
    nop
    db $10
    add b
    dec [hl]
    cp $3c
    ld a, d
    ld bc, $8001
    ldh a, [$80]
    nop
    ld bc, $1080
    add b
    nop
    ld bc, $f080
    add b
    nop
    ld bc, $1080
    add b
    nop
    cp $3c
    ld a, d
    inc bc
    ld [bc], a
    nop
    ldh a, [$80]
    ld h, c
    ld d, b
    nop
    scf
    add b
    ld h, d
    cp $3c
    ld a, d
    inc bc
    ld [bc], a
    nop
    db $10
    add b
    inc hl
    ld [bc], a
    nop
    jr nz, @-$7e

    inc h
    ld bc, $8000
    add b
    ld [hl-], a
    ld bc, $c000
    add b
    inc sp
    ld bc, $4000
    add b
    inc [hl]
    ld bc, $3000
    add b
    dec [hl]
    ld [bc], a
    nop
    jr nz, jr_006_71c0

    ld b, d
    inc bc
    nop
    db $10
    add b
    ld b, e
    cp $3c
    ld a, d
    inc bc
    ld bc, $1a00
    add b
    inc hl
    ld bc, $1a00
    nop
    ld [hl+], a
    ld bc, $1a00
    nop
    ld hl, $0001
    ld a, [de]
    nop
    ld [hl+], a
    ld bc, $1a00
    nop
    inc hl
    ld bc, $1a00
    nop
    inc h
    ld bc, $1a00
    nop
    ld [hl-], a
    ld bc, $1a00
    nop
    inc sp
    ld bc, $8100
    add b
    inc [hl]
    ld bc, $8100
    nop
    dec [hl]
    ld bc, $8100
    nop
    ld b, d
    ld bc, $8100
    nop
    ld b, e
    ld bc, $8100
    nop
    ld b, h
    cp $3c
    ld a, d
    ld bc, $8004
    inc e
    add c
    ld h, h
    inc b
    add b
    inc e
    ld bc, $0462
    add b
    inc e
    ld bc, $045e
    add b
    inc e
    ld bc, $045a
    add b
    inc e
    ld bc, $0452
    add b
    inc e
    ld bc, $0448
    add b
    inc e
    ld bc, $043e
    add b
    inc e
    ld bc, $0434
    add b
    inc e
    ld bc, $042a
    add b
    inc e
    ld bc, $0420
    add b
    inc e
    ld bc, $1416
    add b
    and h
    add c
    nop
    cp $3c
    ld a, d
    nop
    inc b
    add b
    inc e
    add c
    sub [hl]
    inc b
    add b
    inc e
    ld bc, $0494
    add b
    inc e
    ld bc, $0490
    add b
    inc e
    ld bc, $048c
    add b
    inc e
    ld bc, $0484
    add b
    inc e
    ld bc, $047a
    add b
    inc e
    ld bc, $0470
    add b
    inc e
    ld bc, $0466
    add b
    inc e
    ld bc, $045c
    add b
    inc e
    ld bc, $0452
    add b
    inc e
    ld bc, $1448
    add b
    and h
    add c
    ld [hl-], a
    cp $3c
    ld a, d

jr_006_730e:
    inc bc
    ld bc, $2a00
    add b

jr_006_7313:
    ld h, h
    ld bc, $2a00
    nop
    ld h, e
    ld bc, $2a00
    nop
    ld h, d
    ld bc, $2a00
    nop
    ld h, c
    ld bc, $2a00
    nop
    ld h, b
    ld bc, $2a00
    nop
    ld b, [hl]
    ld bc, $2a00
    nop
    ld b, h
    inc b
    nop
    ldh a, [$80]
    ld h, d
    ld bc, $8000
    add b
    ld b, e
    ld bc, $7000
    add b
    ld h, d
    ld bc, $6000
    add b
    ld b, e
    ld bc, $5000
    add b
    ld h, d
    ld bc, $4000
    add b
    ld b, e
    ld bc, $3000
    add b
    ld h, d
    ld bc, $2000
    add b
    ld b, e
    ld bc, $1000
    add b
    ld h, d
    cp $3c
    ld a, d

jr_006_7362:
    inc bc
    ld bc, $b000
    add b

jr_006_7367:
    dec [hl]
    ld bc, $2000
    add b
    inc sp
    ld bc, $9000
    add b
    ld b, d
    ld bc, $1000
    add b
    inc hl
    ld bc, $9000
    add b
    inc hl
    cp $3c
    ld a, d
    nop
    inc b
    ld b, b
    db $10
    add l
    adc $05
    ld b, b
    jr nz, jr_006_730e

    ret nc

    ld b, $40
    jr nc, jr_006_7313

    db $d3
    rlca
    ld b, b
    ld b, b
    add l
    rst $10
    rlca
    ld b, b
    ld d, b
    add l
    db $db
    rlca
    ld b, b
    ld h, b
    add l
    rst $18
    rlca
    ld b, b
    ld [hl], b
    add l
    db $e3
    rlca
    ld b, b
    add b
    add l
    and $07
    ld b, b
    sub b
    add l
    ld [$4007], a
    and b
    add l
    xor $07
    ld b, b
    or b
    add l
    ld a, [c]
    rlca
    ld b, b
    ret nz

    add l

jr_006_73bb:
    or $07
    ld b, b
    ret nc

    add l

jr_006_73c0:
    ld a, [$4007]
    ldh [$85], a
    rst $38
    rlca
    ld b, b
    ldh a, [$86]
    inc c
    ld a, b
    ld b, b
    rst $30
    add [hl]
    inc c
    cp $3c
    ld a, d

jr_006_73d3:
    ld bc, $4004
    db $10
    add l

jr_006_73d8:
    jp z, $4005

    jr nz, jr_006_7362

jr_006_73dd:
    call z, Call_006_4006
    jr nc, jr_006_7367

jr_006_73e2:
    rst $08
    rlca
    ld b, b
    ld b, b
    add l

jr_006_73e7:
    db $d3
    rlca
    ld b, b
    ld d, b
    add l

jr_006_73ec:
    rst $10
    rlca
    ld b, b
    ld h, b
    add l
    db $db
    rlca
    ld b, b
    ld [hl], b
    add l
    rst $18
    rlca
    ld b, b
    add b
    add l
    ld [c], a
    rlca
    ld b, b
    sub b
    add l
    and $07
    ld b, b
    and b
    add l
    ld [$4007], a
    or b

jr_006_7409:
    add l
    xor $07
    ld b, b
    ret nz

    add l
    ld a, [c]
    rlca
    ld b, b
    ret nc

    add l
    or $07
    ld b, b
    ldh [$85], a
    ei
    rlca
    ld b, b
    ldh a, [$86]
    ld [$4078], sp
    rst $30
    add [hl]
    ld [$3cfe], sp
    ld a, d
    ld [bc], a
    inc c
    nop
    ld h, b
    add l
    ld [de], a
    inc c
    nop
    ld b, b
    add l
    ld [de], a
    inc c
    nop
    jr nz, jr_006_73bb

    ld [de], a
    ld a, b
    nop
    jr nz, jr_006_73c0

    ld [de], a
    jr jr_006_743e

jr_006_743e:
    ld b, b
    add l
    ld [de], a
    jr jr_006_7443

jr_006_7443:
    ld h, b
    add l
    ld [de], a
    cp $3c
    ld a, d
    inc bc
    inc d
    nop
    db $10
    add b
    ld b, [hl]
    inc d
    nop
    jr nz, jr_006_73d3

    ld b, h
    inc d
    nop
    jr nc, jr_006_73d8

    ld b, d
    inc d
    nop
    jr nc, jr_006_73dd

    inc [hl]

jr_006_745e:
    inc d
    nop
    jr nz, jr_006_73e2

    ld [hl-], a

jr_006_7463:
    inc d
    nop
    jr nc, jr_006_73e7

    inc hl
    inc d
    nop
    jr nz, jr_006_73ec

    ld hl, $0014
    db $10
    add b
    inc hl
    inc d
    nop
    db $10
    add b
    ld [hl-], a

jr_006_7477:
    cp $3c
    ld a, d
    inc bc
    ld bc, $1000
    add b
    dec b
    ld bc, $1000
    add b
    ld b, $01
    nop
    jr nz, jr_006_7409

    rlca
    ld bc, $2000
    add b
    inc d
    ld bc, $2000
    add b
    jr nz, jr_006_7496

jr_006_7495:
    nop

jr_006_7496:
    jr nc, @-$7e

    ld hl, $0001
    ld b, b
    add b
    ld [hl+], a
    ld bc, $7000
    add b
    inc hl
    ld bc, $4000
    add b
    inc h
    ld bc, $4000
    add b
    ld [hl-], a

jr_006_74ad:
    ld bc, $5000
    add b
    ld [hl-], a
    ld bc, $5000
    add b
    ld [hl-], a
    ld bc, $5000
    add b
    ld hl, $0001
    ld h, b
    add b
    inc hl
    ld bc, $4000
    add b
    inc h
    ld bc, $3000
    add b
    inc h
    ld bc, $1000
    add b
    inc h
    ld bc, $1000
    add b
    inc h
    ld bc, $1000
    add b

jr_006_74d9:
    inc h
    ld [bc], a
    nop
    jr nz, jr_006_745e

    jr nz, @+$04

    nop
    jr nz, jr_006_7463

    inc hl
    ld [bc], a
    nop
    ld h, b
    add b
    jr nz, jr_006_74eb

    nop

jr_006_74eb:
    jr nz, @-$7e

    inc hl
    ld bc, $2000
    add b
    jr nz, jr_006_74f5

    nop

jr_006_74f5:
    jr nz, jr_006_7477

    inc hl
    ld bc, $6000

jr_006_74fb:
    add b
    jr nz, jr_006_74ff

    nop

jr_006_74ff:
    jr nz, @-$7e

    inc hl
    ld bc, $5000
    add b
    jr nz, jr_006_7509

    nop

jr_006_7509:
    jr nz, @-$7e

    inc hl
    ld bc, $2000
    add b
    jr nz, jr_006_7513

    nop

jr_006_7513:
    jr nz, jr_006_7495

    inc hl
    ld bc, $2000
    add b
    jr nz, jr_006_751d

    nop

jr_006_751d:
    jr nz, @-$7e

    inc hl
    cp $3c
    ld a, d
    inc bc
    ld bc, $8000
    add b
    ld hl, $0001
    jr nz, jr_006_74ad

    inc d
    ld bc, $0000
    nop
    nop
    ld bc, $f000
    add b
    ld [hl+], a
    ld bc, $0000
    nop
    nop
    ld bc, $c000
    add b
    rlca
    cp $3c
    ld a, d
    inc bc
    ld bc, $6000
    add b
    ld hl, $0001
    nop
    nop
    nop
    ld bc, $b000
    add b
    ld hl, $0001
    jr nc, jr_006_74d9

    ld hl, $0004
    nop
    nop
    nop
    ld bc, $f000
    add b
    ld [hl-], a
    ld bc, $6000
    add b
    ld [hl-], a
    cp $3c
    ld a, d
    inc bc
    ld bc, $3000
    add b
    dec b
    ld bc, $c000
    add b
    ld hl, $0001
    jr nc, jr_006_74fb

jr_006_757b:
    ld b, $01
    nop
    ret nz

    add b
    ld [hl+], a
    ld bc, $3000
    add b
    rlca
    ld bc, $c000
    add b
    inc hl
    ld bc, $3000
    add b
    inc d
    ld bc, $c000
    add b
    inc h
    dec b
    nop
    nop
    nop
    nop
    ld bc, $f100
    add b
    inc hl
    cp $3c
    ld a, d
    inc bc
    ld bc, $f000
    add b
    ld b, h
    ld bc, $2000
    add b
    ld b, h
    inc bc
    nop
    pop af
    add b
    ld b, a
    ld d, b
    nop
    ld h, a
    add b

jr_006_75b6:
    ld b, [hl]
    cp $3c
    ld a, d
    ld bc, $8002
    ldh a, [$80]
    sbc l
    ld [bc], a
    add b
    ld b, l
    add b
    sbc l
    cp $3c
    ld a, d
    inc bc
    ld bc, $f000
    add b
    inc hl
    ld bc, $2000
    add b
    inc hl
    inc bc

jr_006_75d4:
    nop
    pop af
    add b
    ld h, c
    jr z, jr_006_75da

jr_006_75da:
    ld h, l
    add b
    ld h, c
    rst $38
    ld bc, $8002
    ldh a, [$80]
    sbc l
    ld [bc], a
    add b
    ld b, h
    add b
    sbc l
    cp $3c
    ld a, d
    nop
    ld bc, $1000
    add l
    inc d
    ld [bc], a
    ld b, b
    jr nz, jr_006_757b

    jr z, jr_006_75fa

    add b
    ld b, b

jr_006_75fa:
    add l
    inc a
    ld [bc], a
    ret nz

    add b
    add l
    ld d, b
    ld [bc], a
    add b
    ret nz

    add l
    ld h, h
    ld [bc], a
    ld b, b
    or b
    add l
    ld d, b
    ld [bc], a
    nop
    and b
    add l

jr_006_760f:
    inc a
    ld [bc], a
    ld b, b
    sub b
    add l

jr_006_7614:
    jr z, jr_006_7618

    add b
    add b

jr_006_7618:
    add l
    inc d
    ld [bc], a
    ret nz

    ld [hl], b
    add l
    nop
    ld [bc], a
    add b
    ld h, b
    add h
    call c, $4002
    ld d, b
    add h
    ret z

    ld [bc], a
    nop
    ld b, b
    add h
    or h
    ld [bc], a

jr_006_762f:
    ld b, b
    jr nc, jr_006_75b6

    and b
    ld [bc], a

jr_006_7634:
    add b
    jr nz, @-$7a

    adc h
    ld [bc], a
    ret nz

    db $10
    add h
    ld a, b
    cp $3c
    ld a, d
    ld bc, $0004
    nop
    nop
    nop
    ld bc, $1000
    add l
    jr @+$04

    ld b, b
    jr nz, jr_006_75d4

    inc l
    ld [bc], a
    add b

jr_006_7652:
    ld b, b
    add l
    ld b, b
    ld [bc], a
    ret nz

jr_006_7657:
    add b
    add l
    ld d, h
    ld [bc], a
    add b

jr_006_765c:
    ret nz

    add l
    ld l, b
    ld [bc], a
    ld b, b

jr_006_7661:
    or b
    add l
    ld d, h
    ld [bc], a
    nop

jr_006_7666:
    and b
    add l
    ld b, b
    ld [bc], a
    ld b, b

jr_006_766b:
    sub b
    add l
    inc l
    ld [bc], a
    add b
    add b
    add l
    jr jr_006_7676

    ret nz

    ld [hl], b

jr_006_7676:
    add l
    inc b
    ld [bc], a
    add b
    ld h, b
    add h
    ldh [rSC], a
    ld b, b
    ld d, b
    add h
    call z, Call_000_0002
    ld b, b
    add h
    cp b
    ld [bc], a

jr_006_7688:
    ld b, b
    jr nc, jr_006_760f

    and h
    ld [bc], a

jr_006_768d:
    add b
    jr nz, jr_006_7614

    sub b
    ld [bc], a
    ret nz

    db $10
    add h
    ld a, h
    cp $3c
    ld a, d
    nop
    ld bc, $1000
    add a
    inc a
    ld [bc], a
    ld b, b
    db $10
    add a
    ld b, c
    ld [bc], a
    add b
    jr nz, jr_006_762f

    ld b, [hl]
    ld [bc], a
    ret nz

    jr nc, jr_006_7634

    ld c, e
    ld [bc], a
    add b

jr_006_76b0:
    ld b, b
    add a
    ld d, b
    ld [bc], a
    ld b, b

jr_006_76b5:
    ld d, b
    add a
    ld c, e
    ld [bc], a
    nop

jr_006_76ba:
    ld d, b
    add a
    ld b, [hl]
    ld [bc], a
    ld b, b

jr_006_76bf:
    ld b, b
    add a
    ld b, c
    ld [bc], a
    add b

jr_006_76c4:
    ld b, b
    add a
    inc a
    ld [bc], a
    ret nz

    jr nc, jr_006_7652

    scf
    ld [bc], a
    add b
    jr nc, jr_006_7657

    ld [hl-], a
    ld [bc], a
    ld b, b
    jr nz, jr_006_765c

    dec l
    ld [bc], a
    nop
    jr nz, jr_006_7661

    jr z, @+$04

    ld b, b
    jr nz, jr_006_7666

    inc hl
    ld [bc], a
    add b
    jr nz, jr_006_766b

    ld e, $02
    ret nz

    db $10
    add a
    add hl, de
    cp $3c
    ld a, d
    ld bc, $0002
    nop
    nop
    nop
    ld bc, $1000
    add a
    ld b, b
    ld [bc], a
    ld b, b
    db $10
    add a
    ld b, l
    ld [bc], a
    add b
    jr nz, jr_006_7688

    ld c, d
    ld [bc], a
    ret nz

    jr nc, jr_006_768d

    ld c, a
    ld [bc], a
    add b
    ld b, b
    add a
    ld d, h
    ld [bc], a
    ld b, b
    ld d, b
    add a
    ld c, a
    ld [bc], a
    nop
    ld d, b
    add a
    ld c, d
    ld [bc], a
    ld b, b
    ld d, b
    add a
    ld b, l
    ld [bc], a
    add b
    ld b, b
    add a
    ld b, b
    ld [bc], a
    ret nz

    ld b, b
    add a
    dec sp
    ld [bc], a
    add b
    jr nc, jr_006_76b0

    ld [hl], $02
    ld b, b
    jr nc, jr_006_76b5

    ld sp, $0002
    jr nz, jr_006_76ba

    inc l
    ld [bc], a
    ld b, b
    jr nz, jr_006_76bf

    daa
    ld [bc], a
    add b
    jr nz, jr_006_76c4

    ld [hl+], a
    ld [bc], a
    ret nz

    db $10
    add a
    dec e
    cp $3c
    ld a, d
    inc bc
    ldh a, [rP1]
    ld d, b
    add b
    ld h, d
    cp $47
    ld [hl], a
    inc bc
    ld bc, $0000
    nop
    nop
    rst $38
    nop
    ld [bc], a
    nop
    db $10
    add l
    ld e, d
    ld [bc], a
    ret nz

    jr nz, @-$79

    ld e, e
    ld [bc], a
    nop
    ld b, b
    add l
    ld e, h
    ld [bc], a
    ret nz

    add b
    add l
    ld e, [hl]
    ld [bc], a
    nop
    ret nz

    add l
    ld h, b
    ld [bc], a
    ret nz

    ldh a, [$85]
    ld h, h
    inc bc
    nop
    ldh a, [$85]
    ld b, [hl]
    inc bc
    ret nz

    ldh a, [$85]
    jr z, jr_006_7782

    nop
    ret nz

jr_006_7782:
    add l
    jr z, jr_006_7787

    ret nz

    sub b

jr_006_7787:
    add l
    ld d, b
    ld [bc], a
    nop
    ld [hl], b
    add l
    ld e, d
    ld [$60c0], sp
    add l
    ld h, h
    ld [$5300], sp
    add l
    ld h, h
    cp $3c
    ld a, d
    ld bc, $c002
    db $10
    add l
    ld [hl-], a
    ld [bc], a
    ret nz

    db $10
    add l
    inc sp
    ld [bc], a
    ret nz

    jr nz, @-$79

    inc [hl]
    ld [bc], a
    ret nz

    ld b, b
    add l
    ld [hl], $02
    ret nz

    add b
    add l
    jr c, jr_006_77b8

    ret nz

    sub b

jr_006_77b8:
    add l
    inc a
    inc bc
    ret nz

    sub b
    add l
    ld e, $03
    ret nz

    sub b
    add l
    nop
    ld [bc], a
    ret nz

    add b
    add l
    nop
    ld [bc], a
    ret nz

    ld h, b
    add l
    jr z, jr_006_77d1

    ret nz

    ld b, b

jr_006_77d1:
    add l
    ld [hl-], a
    ld [$50c0], sp
    add l
    inc a
    ld [$43c0], sp
    add l
    inc a
    cp $3c
    ld a, d
    inc bc
    rrca
    nop
    ld a, [c]
    add b
    ld b, [hl]
    ld [bc], a
    nop
    and b
    add b
    ld h, c
    inc bc
    nop
    nop
    nop
    nop
    inc bc

jr_006_77f1:
    nop
    and c
    add b
    ld h, d
    inc b
    nop
    nop
    nop
    nop
    dec b
    nop
    ld h, c
    add b
    ld h, e
    ld b, $00
    nop
    nop
    nop
    dec b
    nop
    ld b, a
    add b
    ld h, e
    ld a, [bc]
    nop
    nop
    nop
    nop
    inc bc
    nop
    daa
    add b
    ld h, d
    inc c
    nop
    nop
    nop
    nop
    inc bc
    nop
    db $10
    add b
    ld h, h
    cp $3c
    ld a, d
    ld bc, $800f

Jump_006_7823:
    ld a, [c]
    add h
    ld c, a
    ld [bc], a
    add b
    and b
    add h
    rla
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    add b
    and c
    add h
    rla
    inc b
    nop
    nop
    nop
    nop
    dec b
    add b
    ld h, c
    add e
    ld [de], a
    ld b, $00
    nop
    nop
    nop
    dec b
    add b
    ld b, e
    add e
    sbc h
    ld a, [bc]
    nop
    nop
    nop
    nop
    inc bc
    add b
    daa
    add d
    ld a, b
    inc c
    nop
    nop
    nop
    nop
    inc bc
    add b
    db $10
    add h
    rla
    cp $3c
    ld a, d
    ld bc, $8002
    db $10
    add a
    sbc e
    ld [bc], a
    add b
    jr nz, jr_006_77f1

    sbc h
    ld [bc], a
    add b
    ld b, b
    add a
    sbc l
    ld [bc], a
    add b
    add b
    add a
    sbc h
    ld [bc], a
    add b
    sub b
    add a
    sbc e
    ld [bc], a
    add b
    and b
    add a
    sbc e
    ld [bc], a
    add b
    db $10
    add a
    jp hl


    ld [bc], a
    add b
    ld b, b
    add a
    add sp, $02
    add b
    ret nz

    add a
    jp hl


    ld [bc], a
    add b
    ld b, b
    add a
    add sp, $02
    add b
    jr nz, @-$77

    jp hl


jr_006_7898:
    ld [bc], a
    add b
    db $10
    add a
    add sp, $01
    nop
    db $10
    add a
    sbc d
    ld bc, $2040
    add a
    sbc e
    ld bc, $1080
    add a
    sbc d
    ld bc, $20c0
    add a
    sbc e
    ld bc, $1080
    add a
    sbc d
    ld bc, $2040
    add a
    sbc e
    ld bc, $1000
    add a
    sbc d
    ld bc, $2040
    add a
    sbc e
    ld bc, $1080
    add a
    sbc d
    ld bc, $20c0
    add a
    sbc e
    ld a, [bc]
    ret nz

    db $10
    add a
    sbc e
    cp $3c
    ld a, d
    inc bc
    ld [hl+], a
    nop
    nop
    nop
    nop
    ld bc, $f000
    add b
    ld [hl-], a
    ld bc, $0000
    nop
    nop
    ld bc, $f000
    add b
    dec [hl]
    ld bc, $0000
    nop
    nop
    ld [bc], a
    nop
    ldh a, [$80]
    ld b, l
    ld bc, $0000
    nop
    nop
    ld bc, $f000
    add b
    ld b, h
    ld [bc], a
    nop
    add b
    add b
    ld b, l
    ld bc, $c000
    add b
    ld b, h
    ld [bc], a
    nop
    ld b, b
    add b
    ld b, l
    ld bc, $8000
    add b
    ld b, h
    ld [bc], a
    nop

jr_006_7916:
    jr nz, jr_006_7898

    ld b, l
    ld bc, $4000
    add b
    ld b, h
    dec b
    nop
    db $10
    add b
    ld b, l
    cp $3c
    ld a, d
    inc bc
    inc bc
    nop
    and b
    add b
    ld b, h
    ld [bc], a
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    and c
    add b
    ld b, [hl]
    dec b
    nop
    ld h, c
    add b
    ld b, h
    cp $3c
    ld a, d
    ld bc, $8005
    ld [hl], b
    add c
    nop
    dec b
    add b
    ld d, b
    add c
    ld a, [bc]
    dec b
    add b
    ld [hl], b
    add c
    inc d
    dec b
    add b
    ld d, b
    add c
    ld e, $05
    add b
    ld [hl], b
    add c
    jr z, @+$07

    add b
    ld d, b
    add c
    ld [hl-], a
    cp $3f
    ld a, c
    ld bc, $3cfe
    ld a, d
    inc bc
    ld bc, $1000
    add b
    inc h
    ld bc, $2000
    add b
    ld [hl-], a
    ld bc, $3000
    add b
    inc sp
    ld bc, $4000
    add b
    inc [hl]
    inc bc
    nop
    ldh a, [$80]
    dec [hl]
    ld bc, $3000
    add b
    dec [hl]
    ld bc, $2000
    add b
    dec [hl]
    ld [bc], a
    nop
    db $10
    add b
    dec [hl]
    ld a, [bc]
    nop
    nop
    nop
    nop
    dec b
    nop
    jr nz, jr_006_7916

    ld b, [hl]
    ld bc, $c000
    add b
    inc sp
    ld bc, $2000
    add b
    inc sp
    ld bc, $6000
    add b
    inc sp
    ld [bc], a
    nop
    ldh a, [$80]
    ld b, [hl]
    ld bc, $8000
    add b
    ld b, h
    ld bc, $4000
    add b
    ld b, l
    ld bc, $2000
    add b
    ld b, [hl]
    inc b
    nop
    db $10
    add b
    ld b, a
    rlca
    nop
    db $10
    add b
    ld h, d
    ld [bc], a
    nop
    ld b, b
    add b
    ld b, [hl]
    rlca
    nop
    db $10
    add b
    ld h, d
    ld bc, $f000
    add b
    inc [hl]
    inc c
    nop
    db $10
    add b
    ld b, a
    ld bc, $f000
    add b
    dec [hl]
    ld [bc], a
    nop
    jr nc, @-$7e

    ld b, a
    ld [bc], a
    nop
    db $10
    add b
    ld b, a
    cp $3c
    ld a, d
    nop
    inc bc
    nop
    nop
    nop
    nop
    ld b, $80
    pop af
    add [hl]
    ld b, d
    ld h, h
    add b
    rst $30
    add [hl]
    rst $10
    ld b, [hl]
    add b
    db $10
    add [hl]
    rst $10
    cp $3c
    ld a, d
    ld bc, $0006
    nop
    nop
    nop
    ld b, $80
    pop af
    add [hl]
    sbc [hl]
    ld h, h
    add b
    rst $30
    add a
    inc d
    ld b, [hl]
    add b
    db $10
    add a
    inc d
    cp $3c
    ld a, d
    ld [bc], a
    jr z, jr_006_7a1d

jr_006_7a1d:
    jr nz, @-$7a

    add h
    ld d, b
    nop
    ld b, b
    add h
    add h
    jr z, jr_006_7a27

jr_006_7a27:
    ld h, b
    add h
    add h
    cp $3c
    ld a, d
    inc bc
    ld bc, $f000
    add b
    ld b, d
    ld bc, $1000
    add b
    inc hl
    cp $3c
    ld a, d
    nop
    ld bc, $0000
    nop
    nop
    rst $38
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    ld [bc], a
    ld bc, $0000
    nop
    nop
    rst $38
    inc bc
    ld bc, $0000
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
