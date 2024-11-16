SECTION "ROM Bank $006", ROMX[$4000], BANK[$6]

bank006_4000:
    jp Jump_006_40e3

bank006_4003:
    jp Jump_006_487b

bank006_4006:
    jp Init_006_412b

bank006_4009:
    jp Jump_006_402b

bank006_400c:
    jp Jump_006_41cb

bank006_400f:
    jp Jump_006_491e

bank006_4012:
    jp Jump_006_4065

bank006_4015:
    jp Jump_006_4073

bank006_4018:
    jp Jump_006_4032

bank006_401b:
    jp Jump_006_4079

bank006_401e:
    jp Jump_006_4059

bank006_4021:
    jp Jump_006_4027

bank006_4024:
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
    ld hl, bank006_6f1c
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
    ld [SOUND_CHANNEL1_LAST_SEEN_ADDR], a
    ld [SOUND_CHANNEL1_LAST_SEEN_ADDR + 1], a
    ld [SOUND_CHANNEL2_LAST_SEEN_ADDR], a
    ld [SOUND_CHANNEL2_LAST_SEEN_ADDR + 1], a
    ld [SOUND_CHANNEL3_LAST_SEEN_ADDR], a
    ld [SOUND_CHANNEL3_LAST_SEEN_ADDR + 1], a
    ld [SOUND_CHANNEL4_LAST_SEEN_ADDR], a
    ld [SOUND_CHANNEL4_LAST_SEEN_ADDR + 1], a
    ld [SOUND_CHANNEL1_BASE_RAM_ADDR], a
    ld [SOUND_CHANNEL2_BASE_RAM_ADDR], a
    ld [SOUND_CHANNEL3_BASE_RAM_ADDR], a
    ld [SOUND_CHANNEL4_BASE_RAM_ADDR], a
    ld a, $ff
    ld [$dd78], a
    ld a, $01
    ld [$dd77], a
    ld de, $ff30
    ld hl, bank006_49dd
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


Init_006_412b:
    ; HL = A (value stored in 0x41fe)
    ld l, a
    ld h, $00
    ; HL = A * 2
    add hl, hl
    ; DE = A * 2
    ld d, h
    ld e, l
    ; HL = A * 4
    add hl, hl
    ; HL = A * 8
    add hl, hl
    ; HL = (A * 8) + (A * 2) = A * 10
    add hl, de
    ; Each line in bank 6 0x49ed has 10 bytes
    ; Address is 0x49ed + (10 * A)
    ld de, bank006_49ed
    add hl, de
    ; Read data and store
    ld a, [hl+]
    ld [SOUND_CHANNEL1_ADDR1], a
    ld a, [hl+]
    ld [SOUND_CHANNEL1_ADDR1 + 1], a
    ld a, [hl+]
    ld [SOUND_CHANNEL2_ADDR1], a
    ld a, [hl+]
    ld [SOUND_CHANNEL2_ADDR1 + 1], a
    ld a, [hl+]
    ld [SOUND_CHANNEL3_ADDR1], a
    ld a, [hl+]
    ld [SOUND_CHANNEL3_ADDR1 + 1], a
    ld a, [hl+]
    ld [SOUND_CHANNEL4_ADDR1], a
    ld a, [hl+]
    ld [SOUND_CHANNEL4_ADDR1 + 1], a
    ld a, [hl+]
    ld [SOUND_ADDR_dd60], a
    ld a, [hl+]
    ld [$dd61], a
    ld a, $01
    ld [SOUND_CHANNEL1_BASE_RAM_ADDR + 1], a
    ld [SOUND_CHANNEL2_BASE_RAM_ADDR + 1], a
    ld a, $02
    ld [SOUND_CHANNEL3_BASE_RAM_ADDR + 1], a
    ld [SOUND_CHANNEL4_BASE_RAM_ADDR + 1], a
    ld a, $03
    ld [SOUND_CHANNEL1_BASE_RAM_ADDR], a
    ld [SOUND_CHANNEL2_BASE_RAM_ADDR], a
    ld [SOUND_CHANNEL3_BASE_RAM_ADDR], a
    ld [SOUND_CHANNEL4_BASE_RAM_ADDR], a
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
    ; store 0xdd62 in register BC as (0x62, 0xdd)
    ld hl, SOUND_ADDR_dd62
    ld de, $41dc
    ld [hl], e
    inc hl
    ld [hl], d

    ld a, [$dd14]
    ld [$dd65], a

    ld hl, SOUND_CHANNEL1_BASE_RAM_ADDR
    ld de, $ff11
    call Call_006_44d4

    ld a, [SOUND_CHANNEL1_BASE_RAM_ADDR]
    and $01
    jp z, Jump_006_429b

    ld a, [SOUND_CHANNEL1_LAST_SEEN_ADDR + 1]
    and a
    jp nz, Jump_006_429b

    ld hl, $dd0a
    
    ; load address in 0xdd0b to register BC
    ld de, $dd0b
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a
    
    ld de, $ff12
    call Call_006_446c
    
    ; Store register BC in 0xdd0b
    ld de, $dd0b
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a
    
    ld hl, SOUND_CHANNEL1_BASE_RAM_ADDR
    ld de, $ff13
    call Call_006_45a7
    ld hl, $dd0d

    ; load address in 0xdd0e to register BC
    ld de, $dd0e
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a

    ld de, $dd05
    call Call_006_4494

    ; Store register BC in 0xdd0e
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
    ld de, bank006_481b
    add e
    ld e, a
    jr nc, jr_006_426f

    inc d

jr_006_426f:
    ld a, [de]
    ld [$dd04], a
    pop af
    ld de, bank006_47bb
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
    ld hl, SOUND_ADDR_dd62
    ld de, $429b
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$dd2c]
    ld [$dd65], a
    ld hl, SOUND_CHANNEL2_BASE_RAM_ADDR
    ld de, $ff16
    call Call_006_44d4
    ld a, [SOUND_CHANNEL2_BASE_RAM_ADDR]
    and $01
    jp z, Jump_006_435b

    ld a, [SOUND_CHANNEL2_LAST_SEEN_ADDR + 1]
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
    
    ld hl, SOUND_CHANNEL2_BASE_RAM_ADDR
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
    ld de, bank006_481b
    add e
    ld e, a
    jr nc, jr_006_432f

    inc d

jr_006_432f:
    ld a, [de]
    ld [$dd1c], a
    pop af
    ld de, bank006_47bb
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
    ld hl, SOUND_ADDR_dd62
    ld de, $435b
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$dd44]
    ld [$dd65], a
    ld hl, SOUND_CHANNEL3_BASE_RAM_ADDR
    ld de, $ff1b
    call Call_006_44d4
    ld a, [SOUND_CHANNEL3_BASE_RAM_ADDR]
    and $01
    jp z, Jump_006_441b

    ld a, [SOUND_CHANNEL3_LAST_SEEN_ADDR + 1]
    and a
    jp nz, Jump_006_441b

    ld hl, SOUND_CHANNEL3_BASE_RAM_ADDR
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
    ld de, bank006_481b
    add e
    ld e, a
    jr nc, jr_006_43ef

    inc d

jr_006_43ef:
    ld a, [de]
    ld [$dd34], a
    pop af
    ld de, bank006_47bb
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
    ld hl, SOUND_ADDR_dd62
    ld de, $441b
    ld [hl], e
    inc hl
    ld [hl], d
    ld a, [$dd5c]
    ld [$dd65], a
    ld hl, SOUND_CHANNEL4_BASE_RAM_ADDR
    ld de, $ff20
    call Call_006_44d4
    ld a, [SOUND_CHANNEL4_BASE_RAM_ADDR]
    and $01
    jr z, jr_006_4462

    ld a, [SOUND_CHANNEL4_LAST_SEEN_ADDR + 1]
    and a
    jp nz, Jump_006_4462

    ld hl, $dd52
    
    ; Load address stored in 0xdd53 to register BC
    ld de, $dd53
    ld a, [de]
    ld c, a
    inc de
    ld a, [de]
    ld b, a

    ld de, $ff21
    call Call_006_446c

    ; write value stored in register BC to 0xdd53
    ld de, $dd53
    ld a, c
    ld [de], a
    ld a, b
    inc de
    ld [de], a

    call Call_006_45de

Jump_006_4462:
jr_006_4462:
    ld hl, SOUND_CHANNEL4_BASE_RAM_ADDR
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
    ld de, bank006_481b
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
    ld de, bank006_47bb
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
    ld hl, bank006_4a8f
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

    ; Load 11 values
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

    db $4b
bank006_461c:
    db $46
    dw $4667
    dw $4670
    dw $4681
    dw $4695
    dw $46e0
    dw $4719
    dw $472d
    dw $4782
    dw $479a
    dw $4742
    dw $4752
    dw $4762
    dw $4772

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

bank006_464b:
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

bank006_4667:
    pop hl
    ld bc, $fffd
    add hl, bc
    ld a, $00
    ld [hl], a
    ret

bank006_4670:
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

bank006_4681:
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

bank006_4695:
    pop hl
    ld de, $fffe
    add hl, de
    ld a, $01
    ld [hl+], a
    inc bc
    ld a, [bc]
    sla a
    jr nc, jr_006_46a9

    ld de, bank006_6d7c
    inc d
    jr jr_006_46ac

jr_006_46a9:
    ld de, bank006_6d7c

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
    ld [SOUND_ADDR_dd60], a
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
    ; write value in register BC to register HL (baseRamAddr + 2 and baseRamAddr + 3)
    ld [hl], c
    inc hl
    ld [hl], b
    ret


Jump_006_47b1:
jr_006_47b1:
    pop hl
    ld de, SOUND_ADDR_dd62
    ld a, [de]
    ld l, a
    inc de
    ld a, [de]
    ld h, a
    jp hl


bank006_47bb:
    db $9d, $07, $6b, $ca, $23, $78, $c7, $12, $59, $9c, $db, $17, $4f, $84, $b6, $e5
    db $12, $3c, $64, $89, $ad, $ce, $ee, $0c, $28, $42, $5b, $73, $89, $9e, $b2, $c5
    db $d7, $e7, $f7, $06, $14, $21, $2e, $3a, $45, $4f, $59, $63, $6c, $74, $7c, $83
    db $8a, $91, $97, $9d, $a3, $a8, $ad, $b1, $b6, $ba, $be, $c2, $c5, $c9, $cc, $cf
    db $d2, $d4, $d7, $d9, $db, $dd, $df, $e1, $e3, $e5, $e6, $e8, $e9, $ea, $ec, $ed
    db $ee, $ef, $f0, $f1, $f2, $f3, $f3, $f4, $f5, $f5, $f7, $f7, $f8, $f8, $fa, $fa
    
bank006_481b:
    db $00, $01, $01, $01, $02, $02, $02, $03, $03, $03, $03, $04, $04, $04, $04, $04
    db $05, $05, $05, $05, $05, $05, $05, $06, $06, $06, $06, $06, $06, $06, $06, $06
    db $06, $06, $06, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07
    db $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07, $07

Call_006_487b:
Jump_006_487b:
    ld hl, SoundAddressTable
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
    ld a, [SOUND_CHANNEL1_BASE_RAM_ADDR]
    and $fe
    ld [SOUND_CHANNEL1_BASE_RAM_ADDR], a
    ld a, c
    ld [SOUND_CHANNEL1_LAST_SEEN_ADDR], a
    ld a, b
    ld [SOUND_CHANNEL1_LAST_SEEN_ADDR + 1], a
    ld a, $02
    ld [SOUND_CHANNEL1_CYCLES], a
    jr jr_006_491e

jr_006_48bd:
    ld a, [$dd79]
    ld d, a
    ld a, $22
    or d
    ld [$dd7a], a
    ld a, [SOUND_CHANNEL2_BASE_RAM_ADDR]
    and $fe
    ld [SOUND_CHANNEL2_BASE_RAM_ADDR], a
    
    ; store register BC which has some address after 0x6fc4
    ld a, c
    ld [SOUND_CHANNEL2_LAST_SEEN_ADDR], a
    ld a, b
    ld [SOUND_CHANNEL2_LAST_SEEN_ADDR + 1], a

    ld a, $02
    ld [$dd6d], a
    jr jr_006_491e

jr_006_48de:
    ld a, [$dd79]
    ld d, a
    ld a, $44
    or d
    ld [$dd7a], a
    ld a, [SOUND_CHANNEL3_BASE_RAM_ADDR]
    and $fe
    ld [SOUND_CHANNEL3_BASE_RAM_ADDR], a

    ; store register BC which has some address after 0x6fc4
    ld a, c
    ld [SOUND_CHANNEL3_LAST_SEEN_ADDR], a
    ld a, b
    ld [SOUND_CHANNEL3_LAST_SEEN_ADDR + 1], a

    ld a, $02
    ld [SOUND_CHANNEL3_CYCLES], a
    jr jr_006_491e

jr_006_48ff:
    ld a, [$dd79]
    ld d, a
    ld a, $88
    or d
    ld [$dd7a], a
    ld a, [SOUND_CHANNEL4_BASE_RAM_ADDR]
    and $fe
    ld [SOUND_CHANNEL4_BASE_RAM_ADDR], a
    ld a, c
    ld [SOUND_CHANNEL4_LAST_SEEN_ADDR], a
    ld a, b
    ld [SOUND_CHANNEL4_LAST_SEEN_ADDR + 1], a
    ld a, $02
    ld [SOUND_CHANNEL4_CYCLES], a

Call_006_491e:
Jump_006_491e:
jr_006_491e:
    ld hl, SOUND_CHANNEL1_BASE_RAM_ADDR
    ld a, l
    ld [SOUND_GENERAL_LAST_SEEN_ADDR], a
    ld a, h
    ld [SOUND_GENERAL_LAST_SEEN_ADDR + 1], a
    ld hl, SOUND_CHANNEL1_LAST_SEEN_ADDR
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr z, jr_006_4939

    ; sound channel 1
    ld de, $ff11
    call Call_006_498b

jr_006_4939:
    ld hl, SOUND_CHANNEL2_BASE_RAM_ADDR
    ld a, l
    ld [SOUND_GENERAL_LAST_SEEN_ADDR], a
    ld a, h
    ld [SOUND_GENERAL_LAST_SEEN_ADDR + 1], a
    ld hl, SOUND_CHANNEL2_LAST_SEEN_ADDR
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr z, jr_006_4954

    ; sound channel 2
    ld de, $ff16
    call Call_006_498b

jr_006_4954:
    ld hl, SOUND_CHANNEL3_BASE_RAM_ADDR
    ld a, l
    ld [SOUND_GENERAL_LAST_SEEN_ADDR], a
    ld a, h
    ld [SOUND_GENERAL_LAST_SEEN_ADDR + 1], a
    ld hl, SOUND_CHANNEL3_LAST_SEEN_ADDR
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr z, jr_006_496f

    ; sound channel 3
    ld de, $ff1b
    call Call_006_498b

jr_006_496f:
    ld hl, SOUND_CHANNEL4_BASE_RAM_ADDR
    ld a, l
    ld [SOUND_GENERAL_LAST_SEEN_ADDR], a
    ld a, h
    ld [SOUND_GENERAL_LAST_SEEN_ADDR + 1], a
    ld hl, SOUND_CHANNEL4_LAST_SEEN_ADDR
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, b
    or c
    jr z, jr_006_498a

    ; sound channel 4
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
    ; load second number from register BC (address in bank 6) into register HL (after 0xdd00)
    ld a, [bc]
    cp $ff
    jr z, jr_006_49b5

    cp $fe
    jr z, jr_006_49d1

    ld [hl], a
    inc bc

    ; load next four values into sound channel baseAddr to baseAddr + 3
    ; DE = baseAddr
    ld a, [bc]
    ld [de], a
    inc bc
    inc de
    ; DE = baseAddr + 1
    ld a, [bc]
    ld [de], a
    inc bc
    inc de
    inc de
    ; DE = baseAddr + 3
    ld a, [bc]
    ld [de], a
    inc bc
    dec de
    ; DE = baseAddr + 2
    ld a, [bc]
    ld [de], a
    inc bc

jr_006_49b0:
    ; store last visited bank 6 address back into register after 0xdd00
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
    ld hl, SOUND_GENERAL_LAST_SEEN_ADDR
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

bank006_49dd:
    db $aa, $aa, $aa, $aa, $aa, $aa, $aa, $aa, $00, $00, $00, $00, $00, $00, $00, $00

bank006_49ed:
    dw $6d79, $6d79, $6d79, $6d79, $4a7f
    dw $4ef5, $4f22, $4f49, $4f70, $4a7f
    dw $54a3, $54bc, $54d3, $54ea, $4a7f
    dw $5655, $567e, $56a1, $56bc, $4a7f
    dw $5971, $5988, $5999, $59ac, $4a7f
    dw $5b55, $5b74, $5b89, $5b98, $4a6f
    dw $5e51, $5e5e, $5e5f, $5e66, $4a6f
    dw $5ecb, $5ef0, $5f1f, $5f3a, $4a7f
    dw $6263, $62b0, $62f3, $632a, $4a7f
    dw $65c2, $65d3, $65de, $65e9, $4a6f
    dw $6708, $6719, $6724, $672f, $4a6f
    dw $684e, $6877, $68a6, $68c1, $4a6f
    dw $6bd6, $6bef, $6c02, $6c15, $4a7f

bank006_4a6f:
    db $03, $04, $06, $09, $0c, $12, $18, $24, $30, $48, $60, $90, $c0, $08, $10, $2a

bank006_4a7f:
    db $04, $06, $08, $0c, $10, $18, $20, $30, $40, $60, $80, $c0, $fc, $05, $0a, $14

bank006_4a8f:
    dw $4acf, $4adb, $4ae7, $4af3, $4aff, $4b0b, $4b17, $4b23
    dw $4b2f, $4b3b, $4b47, $4b53, $4b5f, $4b6b, $4b77, $4b83
    dw $4b8f, $4b9b, $4ba7, $4bb3, $4bbf, $4bcb, $4bd7, $4be3
    dw $4bef, $4bfb, $4c07, $4c13, $4c1f, $4c2b, $4c37, $4c43

bank006_4acf:
    db $80, $00, $02, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $c0, $bd, $00, $01, $4f, $4c, $01, $56, $4d, $00, $00, $00
    db $80, $80, $00, $01, $58, $4c, $01, $59, $4d, $00, $00, $00
    db $c0, $bb, $31, $00, $00, $00, $01, $7a, $4d, $00, $00, $00
    db $c0, $bb, $41, $00, $00, $00, $01, $7a, $4d, $00, $00, $00
    db $80, $80, $00, $01, $63, $4c, $01, $59, $4d, $00, $00, $00
    db $80, $80, $00, $01, $d1, $4c, $02, $d1, $4d, $00, $00, $00
    db $80, $80, $00, $01, $8c, $4c, $01, $be, $4d, $00, $00, $00
    db $80, $00, $27, $00, $00, $00, $00, $00, $00, $01, $55, $4e
    db $80, $80, $00, $01, $a8, $4c, $00, $00, $00, $01, $60, $4e
    db $80, $80, $37, $00, $00, $00, $01, $be, $4d, $00, $00, $00
    db $80, $80, $97, $00, $00, $00, $01, $be, $4d, $00, $00, $00
    db $80, $80, $00, $01, $b5, $4c, $01, $be, $4d, $00, $00, $00
    db $80, $80, $62, $00, $00, $00, $01, $d1, $4d, $00, $00, $00
    db $80, $80, $80, $01, $c4, $4c, $02, $e4, $4d, $00, $00, $00
    db $80, $80, $80, $01, $d1, $4c, $02, $e4, $4d, $00, $00, $00
    db $c0, $00, $00, $01, $05, $4d, $00, $00, $00, $00, $00, $00
    db $c0, $00, $00, $01, $10, $4d, $00, $00, $00, $00, $00, $00
    db $80, $00, $00, $01, $19, $4d, $01, $0a, $4e, $00, $00, $00
    db $80, $80, $00, $01, $e4, $4c, $00, $00, $00, $01, $90, $4e
    db $80, $80, $64, $00, $00, $00, $00, $00, $00, $01, $9f, $4e
    db $80, $80, $64, $00, $00, $00, $00, $00, $00, $01, $ae, $4e
    db $80, $80, $00, $01, $e4, $4c, $00, $00, $00, $02, $bd, $4e
    db $80, $80, $56, $00, $00, $00, $00, $00, $00, $01, $cc, $4e
    db $80, $00, $00, $01, $26, $4d, $01, $0a, $4e, $00, $00, $00
    db $80, $00, $00, $01, $26, $4d, $00, $00, $00, $00, $00, $00
    db $80, $40, $00, $01, $fc, $4c, $01, $be, $4d, $00, $00, $00
    db $80, $80, $00, $01, $d1, $4c, $00, $00, $00, $01, $6d, $4e
    db $80, $80, $00, $01, $3b, $4d, $00, $00, $00, $01, $e6, $4e
    db $80, $80, $00, $01, $44, $4d, $01, $20, $4e, $00, $00, $00
    db $80, $80, $00, $01, $4d, $4d, $01, $20, $4e, $00, $00, $00
    db $80, $80, $00, $01, $d1, $4c, $02, $f7, $4d, $00, $00, $00

bank006_4c4f:
    db $a0, $01, $00, $01, $30, $01, $00, $01, $ff
    db $50, $01, $40, $02, $20, $02, $10, $02, $00, $01, $ff
    db $50, $03, $20, $02, $10, $02, $00, $01, $ff
    db $60, $01, $50, $01, $30, $03, $20, $04, $10, $04, $00, $01, $ff
    db $a0, $01, $50, $01, $a0, $01, $50, $01, $a0, $01, $50, $01, $a0, $01, $50, $01, $00, $01, $ff
    db $70, $02, $60, $02, $50, $02, $40, $06, $30, $14, $20
    db $28, $10, $32, $00, $00, $ff
    db $10, $03, $20, $02, $20, $05, $10, $05, $00, $01, $ff
    db $a0, $01, $50, $01, $40, $01, $30, $01, $20, $01, $00, $01, $ff
    db $50, $01, $40, $01, $30, $05, $20, $1e, $10, $32, $10
    db $28, $00, $01, $ff
    db $20, $04, $30, $04, $30, $21, $20, $0f, $10, $80, $00, $01, $ff
    db $20, $04, $30, $04, $40, $04, $50, $08, $40, $0c, $30, $3c, $20, $78, $10, $96, $00, $01, $ff
    db $10, $14, $20
    db $28, $30, $50, $20
    db $28, $10
    db $28, $ff
    db $50, $02, $40, $04, $30, $08, $20, $10, $20, $20, $10, $40, $ff
    db $30, $01, $20, $02, $10, $32, $00, $01, $ff
    db $20, $01, $40, $0a, $40, $0c, $60, $1e, $00, $01, $ff
    db $20, $01, $40, $06, $60, $14, $00, $01, $ff
    db $60, $02, $40, $04, $40, $01, $40, $78, $60, $a0, $00, $01, $ff
    db $20, $01, $40, $0a, $60, $be, $00, $01, $ff
    db $ff
    db $40, $01, $30, $02, $20, $02, $10, $02, $00, $01, $ff
    db $70, $c8, $60, $c8, $50, $c8, $00, $01, $ff
    db $90, $01, $40, $02, $20, $02, $00, $01, $ff
    db $50, $01, $20, $01, $10, $01, $00, $01, $ff
    
bank006_4d56:
    db $60, $c8, $7e, $22, $01, $64, $02, $22, $02, $37, $01, $22, $01, $37, $01, $22
    db $01, $22, $01, $37, $01, $22, $01, $37, $01, $22, $01, $37, $01, $22, $01, $37
    db $01, $22, $10, $7e, $12, $c8, $7e, $22, $01, $10, $c8, $7e, $02, $01, $fe, $01
    db $02, $01, $fe, $01, $02, $01, $fe, $01, $02, $01, $fe, $01, $7d, $82, $4d, $00
    db $02, $ff, $01, $fe, $01, $fd, $01, $fc, $01, $fb, $01, $fa, $01, $f9, $01, $f8
    db $01, $f7, $01, $f6, $01, $f5, $01, $f4, $01, $f3, $01, $f2, $01, $f1, $01, $f0
    db $01, $ef, $01, $ec, $01, $e7, $01, $7e, $02, $03, $fe, $03, $fe, $03, $02, $03
    db $02, $03, $fe, $03, $fe, $03, $02, $03, $7d, $be, $4d, $04, $03, $fc, $03, $fc
    db $03, $04, $03, $04, $03, $fc, $03, $fc, $03, $04, $03, $7d, $d1, $4d, $fc, $03
    db $04, $03, $04, $03, $fc, $03, $fc, $03, $04, $03, $04, $03, $fc, $03, $7d, $e4
    db $4d, $fb, $02, $05, $02, $05, $02, $fb, $02, $fb, $02, $05, $02, $05, $02, $fb
    db $02, $7d, $f7, $4d, $08, $03, $f8, $03, $f8, $03, $08, $03, $08, $03, $f8, $03
    db $f8, $03, $08, $03, $7d, $0a, $4e, $fd, $fd, $7e, $22, $01, $22, $02, $37, $64
    db $7e, $08, $00, $08, $0c, $08, $00, $08, $0c, $08, $00, $08, $0c, $ff, $27, $4e
    db $01, $ff, $01, $fe, $01, $fd, $01, $fc, $01, $fb, $01, $fa, $01, $f9, $01, $f8
    db $01, $f7, $01, $f6, $01, $f5, $01, $f4, $01, $f3, $c8, $f3, $ff, $36, $4e, $03
    db $00, $03, $01, $03, $00, $03, $01, $ff, $55, $4e, $02, $00, $01, $01, $01, $02
    db $01, $03, $c8, $03, $ff, $60, $4e, $03, $00, $03, $0c, $03, $00, $03, $0c, $04
    db $00, $04, $0c, $04, $00, $04, $0c, $05, $00, $05, $0c, $05, $00, $05, $0c, $06
    db $00, $06, $0c, $06, $00, $06, $0c, $ff, $6d, $4e, $01, $00, $01, $04, $01, $07
    db $01, $00, $01, $04, $01, $07, $ff, $90, $4e, $01, $04, $01, $07, $01, $0c, $01
    db $04, $01, $07, $01, $0c, $ff, $9f, $4e, $01, $07, $01, $0c, $01, $10, $01, $07
    db $01, $0c, $01, $10, $ff, $ae, $4e, $01, $00, $01, $03, $01, $07, $01, $00, $01
    db $03, $01, $07, $ff, $bd, $4e, $01, $00, $01, $03, $01, $06, $01, $00, $01, $03
    db $01, $06, $ff, $cc, $4e, $01, $0c, $c8, $00, $c8, $00, $c8, $00, $ff, $db, $4e
    db $01, $00, $01, $01, $01, $02, $01, $03, $01, $04, $01, $05, $ff, $e6, $4e

bank006_4ef5:
    db $67, $ff, $69, $dc
    db $64, $00, $e4, $01
    db $64, $04, $e4, $01
    db $64, $04, $e4, $01
    db $64, $08, $e4, $01
    db $64, $0b, $e4, $01
    db $64, $0e, $e4, $01
    db $64, $11, $e4, $01
    db $64, $14, $d8, $01
    db $64, $17, $e4, $01
    db $66, $01
    db $62, $f5, $4e

bank006_4f22:
    db $64, $01, $d8, $01
    db $64, $05, $d8, $01
    db $64, $07, $d8, $01
    db $64, $09, $d8, $01
    db $64, $0c, $d8, $01
    db $64, $0f, $d8, $01
    db $64, $12, $e4, $01
    db $64, $15, $e4, $01
    db $64, $18, $e4, $01
    db $62, $22, $4f

bank006_4f49:
    db $64, $02, $f0, $01
    db $64, $06, $f0, $01
    db $64, $06, $f0, $01
    db $64, $0a, $f0, $01
    db $64, $0d, $f0, $01
    db $64, $10, $f0, $01
    db $64, $13, $f0, $01
    db $64, $16, $f0, $01
    db $64, $19, $f0, $01
    db $62, $49, $4f

bank006_4f70:
    db $64, $03, $00, $0c
    db $62, $70, $4f

bank006_4f77:
    db $24, $0a, $24, $0a, $39, $f8, $40, $f8, $3a, $fa, $39, $f8, $3c, $f8, $3f, $fc
    db $24, $00, $24, $0a, $65
    
    db $24, $0a, $24, $0a, $34, $f8, $39, $f8, $35, $fa, $34, $f8, $39, $f8, $37, $fc
    db $24, $00, $24, $0a, $65
    
    db $a1, $14, $a1, $16, $a1, $14
    db $a1, $16, $a1, $16, $a1, $14, $a1, $16, $a1, $14, $a1, $16, $a1, $16, $a1, $14
    db $a1, $16, $a1, $14, $a1, $16, $a1, $16, $a1, $14, $a1, $16, $a1, $14, $a1, $16
    db $a1, $16, $a1, $14, $a1, $16, $a1, $14, $a1, $16, $a1, $16, $a1, $14, $a1, $16
    db $a1, $14, $a1, $16, $a1, $16, $a1, $14, $a1, $16, $a1, $14, $a1, $16, $a1, $16
    db $a8, $12, $a7, $12, $a6, $12, $a5, $12, $a4, $12, $a3, $12, $a2, $12, $a1, $12
    db $9c, $18, $65
    
    db $1e, $44, $1e, $34, $1e, $34, $1e, $44, $1e, $34, $1e, $34, $1e, $44, $1e, $34
    db $1e, $44, $1e, $34, $1e, $34, $1e, $44, $1e, $34, $1e, $34, $1e, $44, $1e, $44
    db $65
    
    db $2d, $6a, $34, $6a, $33, $6c, $24, $00, $2d, $6a, $34, $6a, $2c, $6c, $24, $00
    db $65
    
    db $45, $fa, $4c, $fa, $4b, $fc, $24, $00, $45, $fa, $4c, $fa, $44, $fc, $24, $00
    db $65
    
    db $48, $ea, $45, $ea, $43, $ec, $24, $00, $3c, $ea, $45, $ea, $41, $ec, $24, $00
    db $65
    
    db $a1, $14, $a1, $16, $a1, $14, $a1, $16, $a1, $16, $a1, $14, $a1, $16, $a1, $14
    db $a1, $16, $a1, $16, $a4, $14, $a4, $16, $a4, $14, $a4, $16, $a4, $16, $a4, $14
    db $a4, $16, $a4, $14, $a4, $16, $a4, $16, $a1, $14, $a1, $16, $a1, $14, $a1, $16
    db $a1, $16, $a1, $14, $a1, $16, $a1, $14, $a1, $16, $a1, $16, $9d, $14, $9d, $16
    db $9d, $14, $9d, $16, $9d, $16, $9d, $14, $9d, $16, $9d, $14, $9d, $16, $9d, $16
    db $65
    
    db $32, $69, $00, $64, $35, $62, $38, $62, $39, $68, $3e, $68, $3d, $6c, $24, $00
    db $32, $69, $00, $64, $35, $62, $38, $62, $39, $68, $3e, $68, $3c, $6c, $24, $00
    db $65
    
    db $35, $f9, $00, $f4, $3e, $f2, $40, $f2, $41, $f8, $45, $f8, $46, $fc, $24, $00
    db $35, $f9, $00, $f4, $3e, $f2, $40, $f2, $41, $f8, $45, $f8, $44, $fc, $24, $00
    db $65
    
    db $a6, $14, $a6, $16, $a6, $14
    db $a6, $16, $a6, $16, $a6, $14, $a6, $16, $a6, $14, $a6, $16, $a6, $16, $a2, $14
    db $a2, $16, $a2, $14, $a2, $16, $a2, $16, $a2, $14, $a2, $16, $a2, $14, $a2, $16
    db $a2, $16, $a6, $14, $a6, $16, $a6, $14, $a6, $16, $a6, $16, $a6, $14, $a6, $16
    db $a6, $14, $a6, $16, $a6, $16, $9d, $14, $9d, $16, $9d, $14, $9d, $16, $9d, $16
    db $9d, $14, $9d, $16, $9d, $14, $9d, $16, $9d, $16, $65
    
    db $30, $64, $32, $64, $33
    db $68, $37, $66, $3c, $6a, $3b, $64, $36, $64, $31, $6a, $24, $06, $33, $66, $31
    db $66, $30, $64, $37, $64, $3c, $68, $3e, $66, $3f, $66, $3c, $66, $3f, $67, $43
    db $64, $3d, $64, $38, $64, $35, $6b, $24, $06, $65
    
    db $c8, $6c, $24, $00, $c2, $6c, $24, $00, $c8, $6c, $24, $00, $c9, $3c, $24, $00
    db $65
    
    db $a4, $17, $a4, $17, $a4
    db $14, $a2, $14, $a4, $17, $a4, $16, $a4, $14, $a4, $14, $a2, $14, $9e, $17, $9e
    db $16, $9e, $14, $9e, $14, $9d, $14, $9e, $17, $9e, $16, $9e, $14, $a0, $14, $9e
    db $14, $a4, $17, $a4, $16, $a4, $14, $a4, $14, $a2, $14, $a4, $17, $a4, $16, $a4
    db $14, $a4, $14, $a2, $14, $a5, $17, $a5, $16, $a5, $14, $a5, $14, $a5, $14, $a5
    db $17, $a5, $16, $a5, $14, $a5, $14, $a5, $14, $65
    
    db $37, $f4, $3a, $f2, $3e, $f2
    db $43, $f7, $37, $f2, $3a, $f2, $3e, $f4, $43, $f6, $37, $f2, $3a, $f2, $3e, $f4
    db $43, $f6, $42, $f4, $41, $f4, $40, $f4, $3f, $f8, $3a, $f6, $36, $f6, $33, $f8
    db $36, $f6, $3a, $f6, $39, $f4, $3c, $f2, $40, $f2, $45, $f7, $39, $f2, $3c, $f2
    db $40, $f4, $45, $f7, $44, $f6, $43, $f6, $42, $f6, $41, $f6, $3c, $f6, $38, $f4
    db $35, $f6, $38, $f6, $3c, $f6, $35, $f8, $24, $04, $65
    
    db $cf, $6c, $24, $00, $cb
    db $6c, $24, $00, $d1, $6c, $24, $00, $cd, $6c, $24, $00, $65
    
    db $9f, $16, $9f, $16
    db $9f, $14, $9f, $16, $9f, $16, $9f, $16, $9f, $14, $9f, $16, $9f, $16, $9b, $16
    db $9b, $16, $9b, $14, $9b, $16, $9b, $16, $9b, $16, $9b, $16, $9b, $14, $9d, $14
    db $9f, $14, $a1, $16, $a1, $16, $a1, $14, $a1, $16, $a1, $16, $a1, $16, $a1, $16
    db $a1, $14, $a1, $14, $a1, $14, $9d, $16, $9d, $16, $9d, $14, $9d, $16, $9d, $16
    db $9d, $16, $9d, $16, $9d, $14, $9d, $14, $9f, $14, $65
    
    db $b4, $ba, $b3, $ba, $b4
    db $ba, $b3, $ba, $b2, $ba, $b1, $ba, $b2, $ba, $b4, $ba, $65
    
    db $b0, $ba, $af, $ba
    db $b0, $ba, $af, $ba, $ae, $ba, $ae, $ba, $ae, $ba, $af, $ba, $65
    
    db $a1, $16, $a1
    db $16, $a1, $14, $a1, $16, $a1, $14, $a1, $16, $a1, $16, $a1, $14, $a1, $16, $9f
    db $14, $a1, $16, $a1, $16, $a1, $14, $a1, $16, $a1, $14, $a1, $16, $a1, $16, $a1
    db $14, $9f, $14, $a1, $16, $9f, $14, $9f, $16, $9f, $16, $9f, $14, $9f, $14, $9f
    db $14, $9f, $16, $9f, $16, $9f, $14, $9f, $16, $9f, $14, $9f, $16, $9f, $16, $9f
    db $14, $9f, $16, $9f, $14, $9c, $16, $9c, $16, $9c, $14, $9c, $17, $65
    
    db $cc, $b6
    db $d1, $b6, $cf, $b6, $c6, $b6, $c5, $b6, $cc, $b6, $cb, $b6, $c3, $b6, $c5, $b6
    db $bc, $b6, $bf, $b6, $c3, $b6, $c5, $b8, $24, $04, $c5, $b2, $c7, $b2, $c8, $b4
    db $c7, $b4, $c5, $b4, $c5, $b6, $c5, $b4, $c4, $b4, $c4, $b6, $c4, $b4, $c3, $b4
    db $c3, $b6, $c3, $b4, $c2, $b4, $c2, $b6, $c2, $b4, $c1, $b4, $c1, $b6, $c1, $b4
    db $c0, $b4, $c0, $b6, $c0, $b4, $c0, $b4, $c4, $b4, $c7, $b4, $ca, $b6, $cd, $b4
    db $cc, $b6, $65
    
    db $c5, $68, $cb, $38, $c5, $68, $cb, $38, $c5, $68, $cb, $38, $c5
    db $6a, $c5, $6c, $24, $00, $c5, $6a, $cc, $3a, $65
    
    db $a1, $14, $a8, $14, $ad, $14
    db $a7, $16, $a2, $14, $9b, $14, $a2, $14, $a1, $14, $a8, $14, $ad, $14, $a7, $16
    db $a2, $14, $9b, $14, $a2, $14, $a1, $14, $a8, $14, $ad, $14, $a7, $16, $a2, $14
    db $9b, $14, $a2, $14, $a1, $14, $a4, $14, $a6, $14, $a8, $16, $9c, $14, $9f, $14
    db $a0, $14, $a1, $14, $a1, $14, $a4, $12, $a6, $12, $a7, $12, $a8, $12, $9c, $14
    db $9c, $17, $a1, $14, $a1, $14, $a4, $12, $a6, $12, $a7, $12, $a8, $12, $9c, $14
    db $9c, $16, $9c, $14, $a1, $14, $a1, $14, $a1, $12, $a4, $12, $a6, $12, $a7, $12
    db $9c, $14, $9c, $16, $9c, $14, $9c, $14, $9c, $14, $a8, $14, $a8, $16, $a8, $14
    db $9c, $14, $9c, $14, $65
    
    db $b9, $b8, $ba, $b6, $b7, $b6, $b9, $b7, $ba, $b7, $b7
    db $b6, $b9, $b7, $ba, $b7, $b3, $b6, $b4, $ba, $b9, $b7, $ba, $b7, $b7, $b6, $b9
    db $b7, $ba, $b7, $b3, $b6, $b4, $b7, $b5, $b7, $b2, $b6, $b4, $bc, $24, $00, $c0
    db $bc, $24, $00, $65
    
    db $c5, $6c, $24, $00, $c5, $6c, $24, $00, $c5, $6c, $24, $00, $c5, $6c, $24, $00
    db $c5, $6a, $cc, $3c, $24, $00, $65
    
    db $a1, $14, $a1, $14, $a1
    db $14, $a1, $14, $a1, $14, $a1, $16, $a1, $14, $a1, $14, $a1, $14, $a1, $14, $a1
    db $14, $a1, $14, $a1, $14, $a1, $14, $a1, $14, $a1, $14, $a1, $14, $a1, $14, $a1
    db $16, $a1, $14, $a1, $14, $a1, $14, $a1, $14, $a1, $16, $a1, $16, $a1, $14, $a1
    db $14, $a1, $14, $a1, $14, $a1, $14, $a1, $14, $a1, $16, $a1, $16, $a1, $14, $a1
    db $14, $a1, $14, $a1, $14, $a1, $16, $a1, $14, $a1, $14, $a1, $14, $a1, $14, $a1
    db $14, $a1, $14, $a1, $16, $a1, $14, $a1, $14, $a1, $14, $a1, $14, $a1, $16, $a1
    db $16, $a1, $14, $a1, $14, $a1, $14, $a1, $14, $a1, $16, $a1, $16, $a1, $14, $a1
    db $14, $a1, $14, $a8, $14, $a8, $16, $a8, $16, $a8, $14, $a8, $14, $a8, $14, $a8
    db $14, $a9, $14, $a8, $14, $a6, $14, $a4, $16, $a3, $16, $65
    
bank006_54a3:
    db $67, $ff, $69, $dc
    db $24, $0a
    db $24, $0a
    db $24, $0a
    db $24, $0a
    db $64, $1a, $e2, $01
    db $64, $1b, $e2, $01
    db $66, $01
    db $62, $a3, $54

bank006_54bc:
    db $64, $1c, $e2, $01
    db $64, $1c, $e0, $01
    db $64, $1c, $e2, $02
    db $64, $1c, $e0, $02
    db $64, $1c, $e2, $02
    db $62, $bc, $54

bank006_54d3:
    db $64, $1d, $ee, $01
    db $64, $1d, $ec, $01
    db $64, $1d, $ee, $02
    db $64, $1d, $ec, $02
    db $64, $1d, $ee, $02
    db $62, $d3, $54

bank006_54ea:
    db $64, $1e, $00, $01
    db $64, $1f, $00, $01
    db $62, $ea, $54
    
    db $3c, $f2, $3f, $f2, $43, $f2, $44, $f5, $43, $f8, $24, $04, $42, $fa, $3c, $f2
    db $3f, $f2, $43, $f2, $44, $f5, $43, $f8, $44, $f2, $45, $f2, $47, $f8, $46, $f8
    db $65
    
    db $3a, $f2, $3d, $f2, $41, $f2, $42, $f5, $41, $f6, $41, $f2, $3f, $f2, $3d, $f2
    db $3f, $f2, $3d, $f4, $3c, $f4, $3d, $f2, $3a, $f7, $24, $02, $38, $f4, $3a, $f4
    db $3d, $f4, $3a, $f2, $3d, $f2, $3f, $f2, $41, $f4, $42, $f2, $41, $f2, $3f, $f2
    db $41, $f4, $3f, $f4, $3d, $f4, $3a, $f4, $3d, $f9, $3d, $f2, $3f, $f2, $41, $f4
    db $43, $fa, $3c, $f2, $3f, $f2, $43, $f2, $44, $f5, $43, $f4, $3c, $f2, $3f, $f2
    db $43, $f2, $44, $f5, $43, $f4, $3c, $fc, $24, $00, $65
    
    db $30, $d2, $30, $d2, $30, $d2, $30, $d2, $30, $d2, $30, $d2, $30, $d2, $30, $d2
    db $30, $d2, $30, $d2, $30, $d2, $31, $d2, $31, $d2, $31, $d2, $2e, $d2, $2e, $d2
    db $30, $d2, $30, $d2, $30, $d2, $30, $d2, $30, $d2, $30, $d2, $30, $d2, $30, $d2
    db $30, $d2, $30, $d2, $30, $d2, $31, $d2, $31, $d2, $31, $d2, $2e, $d2, $2e, $d2
    db $65
    
    db $a4, $15, $a4, $14, $a4, $12, $98, $15, $98, $14, $98, $12, $9f, $14, $a2, $14
    db $a4, $15, $a4, $14, $9f, $12, $98, $15, $98, $14, $98, $12, $9f, $14, $a2, $14
    db $65
    
    db $18, $12, $1e, $32, $1e, $32, $18, $12, $18, $12, $1e, $32, $1a, $22, $1e, $32
    db $1e, $32, $18, $12, $1e, $32, $18, $12, $18, $12, $1e, $32, $1a, $22, $1e, $32
    db $18, $12, $1e, $32, $1e, $32, $18, $12, $1e, $32, $18, $12, $1a, $22, $18, $12
    db $18, $12, $1e, $32, $18, $12, $1e, $32, $1a, $22, $1a, $22, $1a, $22, $1e, $32
    db $65
    
    db $18, $12, $1e, $42, $1e, $42, $18, $12, $1e, $42, $1a, $22, $18, $12, $1e, $42
    db $1a, $22, $18, $12, $1a, $22, $1e, $42, $18, $12, $1e, $42, $18, $12, $1e, $42
    db $18, $12, $18, $12, $1e, $42, $1a, $22, $1e, $42, $18, $12, $1a, $22, $1e, $42
    db $18, $12, $1e, $42, $18, $12, $1e, $42, $1a, $22, $1a, $22, $1a, $22, $1e, $42
    db $65
    
bank006_5655:
    db $67, $ff, $69, $c8
    db $64, $20, $d6, $01
    db $64, $20, $d6, $01
    db $64, $24, $e2, $01
    db $64, $28, $e2, $01
    db $64, $28, $e9, $01
    db $64, $28, $e2, $01
    db $64, $28, $e9, $01
    db $64, $2b, $e2, $01
    db $66, $01
    db $62, $55, $56

bank006_567e:
    db $64, $21, $d6, $01
    db $64, $21, $d6, $01
    db $64, $25, $e2, $01
    db $64, $29, $e2, $01
    db $64, $29, $e9, $01
    db $64, $29, $e2, $01
    db $64, $29, $e9, $01
    db $64, $2c, $e2, $01
    db $62, $7e, $56

bank006_56a1:
    db $64, $22, $ee, $04
    db $64, $26, $ee, $02
    db $64, $27, $ee, $01
    db $64, $2a, $ee, $01
    db $64, $2a, $ee, $01
    db $64, $2d, $ee, $01
    db $62, $a1, $56

bank006_56bc:
    db $64, $23, $00, $04
    db $62, $bc, $56

bank006_56c3:
    db $43, $f8, $41, $f8
    db $40, $f8, $3f, $f8, $65
    
    db $3e, $fa, $3a, $fa, $65
    
    db $9f, $15, $9f, $12, $ab, $14, $a6, $16, $a2, $14, $9f, $12, $a1, $12, $a2, $12
    db $9f, $12, $65
    
    db $18, $12, $1e
    db $32, $1e, $32, $18, $12, $1a, $22, $1e, $32, $1e, $32, $18, $12, $18, $12, $1e
    db $32, $18, $12, $1e, $32, $1a, $22, $1e, $32, $1e, $32, $1e, $32, $18, $12, $1e
    db $32, $1e, $32, $18, $12, $1a, $22, $1e, $32, $18, $12, $1e, $32, $1e, $32, $1e
    db $32, $18, $12, $1e, $32, $1a, $22, $1a, $22, $1a, $22, $1e, $32, $65
    
    db $3a, $f4
    db $39, $f4, $37, $f4, $32, $f6, $37, $f4, $39, $f4, $3a, $f4, $31, $fa, $30, $f4
    db $35, $f4, $37, $f4, $38, $f6, $37, $f4, $35, $f4, $30, $f4, $2f, $fa, $3e, $f4
    db $3d, $f4, $3a, $f4, $37, $f6, $32, $f4, $37, $f4, $3a, $f4, $31, $f6, $34, $f6
    db $2d, $f8, $30, $f4, $35, $f4, $37, $f4, $38, $f4, $37, $f4, $35, $f4, $30, $f4
    db $35, $f4, $32, $fa, $30, $f8, $30, $f8, $65
    
    db $24, $04, $3a, $f4, $39, $f4, $37
    db $f4, $32, $f6, $37, $f4, $39, $f4, $3a, $f4, $31, $fa, $30, $f4, $35, $f4, $37
    db $f4, $38, $f6, $37, $f4, $35, $f4, $30, $f4, $2f, $fa, $3e, $f4, $3d, $f4, $3a
    db $f4, $37, $f6, $32, $f4, $37, $f4, $3a, $f4, $31, $f6, $34, $f6, $2d, $f8, $30
    db $f4, $35, $f4, $37, $f4, $38, $f4, $37, $f4, $35, $f4, $30, $f4, $35, $f4, $32
    db $fa, $30, $f8, $30, $f7, $65
    
    db $9f, $15, $9f, $12, $ab, $14, $a6, $16, $a2, $14
    db $9f, $12, $a1, $12, $a2, $12, $9f, $12, $a1, $15, $a1, $12, $ad, $14, $a8, $16
    db $a5, $14, $a1, $12, $a0, $12, $9f, $12, $9e, $12, $9d, $15, $9d, $12, $a9, $14
    db $a4, $16, $a0, $14, $9d, $12, $9f, $12, $a0, $12, $9d, $12, $9f, $15, $9f, $12
    db $ab, $14, $a6, $16, $a3, $12, $a2, $12, $a1, $12, $a0, $12, $9f, $12, $9e, $12
    db $65
    
    db $a4, $15, $a4, $12, $b0, $14, $a4, $16, $a4, $14, $b0, $14, $a4, $14, $65
    
    db $3c, $c4, $3c, $c4, $3c, $c4, $38, $c4, $38, $c4, $38, $c4, $3c, $c4, $38, $c4
    db $3b, $c4, $3b, $c4, $3b, $c4, $3b, $c4, $3b, $c4, $3b, $c4, $3b, $c4, $3b, $c4
    db $3c, $c4, $3c, $c4, $3c, $c4, $38, $c4, $38, $c4, $38, $c4, $3c, $c4, $3c, $c4
    db $3b, $c4, $3b, $c4, $3b, $c4, $3b, $c4, $3b, $c4, $3b, $c4, $3b, $c4, $3b, $c4
    db $65
    
    db $38, $c4, $38, $c4, $38, $c4, $35, $c4, $35, $c4, $35, $c4, $38, $c4, $35
    db $c4, $37, $c4, $37, $c4, $37, $c4, $37, $c4, $37, $c4, $37, $c4, $37, $c4, $37
    db $c4, $38, $c4, $38, $c4, $38, $c4, $35, $c4, $35, $c4, $35, $c4, $38, $c4, $38
    db $c4, $37, $c4, $37, $c4, $37, $c4, $37, $c4, $37, $c4, $37, $c4, $37, $c4, $37
    db $c4, $65
    
    db $9d, $15, $9d, $12, $a4, $14, $a0, $16, $9d, $14, $9d, $12, $9f, $12
    db $a0, $12, $9f, $12, $9d, $15, $9d, $12, $a4, $14, $a0, $16, $9d, $14, $a0, $14
    db $a4, $14, $9d, $15, $9d, $12, $a4, $14, $a0, $16, $9d, $14, $9d, $12, $9f, $12
    db $a0, $14, $9d, $15, $9d, $12, $a4, $14, $a0, $16, $9d, $14, $a0, $14, $a4, $14
    db $a4, $15, $a4, $12, $a7, $14, $a6, $16, $a4, $14, $a2, $14, $9f, $14, $a4, $15
    db $a4, $12, $a7, $14, $a6, $14, $a4, $14, $a3, $14, $9f, $14, $a3, $14, $a4, $15
    db $a4, $12, $a7, $14, $a6, $16, $a4, $14, $a2, $14, $9f, $14, $a4, $15, $a4, $12
    db $a7, $14, $a6, $16, $a4, $14, $a3, $14, $9f, $14, $65
    
    db $40, $e4, $40, $e4, $40
    db $e4, $40, $e4, $42, $e4, $42, $e4, $43, $e4, $43, $e4, $42, $e4, $42, $e4, $42
    db $e4, $42, $e4, $42, $e4, $42, $e4, $42, $e4, $42, $e4, $65
    
    db $3d, $e4, $3d, $e4
    db $3d, $e4, $3d, $e4, $3e, $e4, $3e, $e4, $40, $e4, $40, $e4, $3e, $e4, $3e, $e4
    db $3c, $e4, $3c, $e4, $3a, $e4, $3a, $e4, $39, $e4, $39, $e4, $65
    
    db $a1, $15, $a1
    db $12, $9c, $14, $a1, $16, $a1, $14, $a3, $14, $a5, $14, $a6, $15, $a6, $12, $a1
    db $14, $a6, $16, $a4, $14, $a2, $14, $a1, $14, $65
    
bank006_5971:
    db $67, $ff, $69, $f0
    db $64, $33, $e6, $01
    db $64, $34, $e6, $01
    db $64, $35, $e6, $01
    db $24, $04
    db $66, $01
    db $62, $71, $59

bank006_5988:
    db $24, $04
    db $64, $33, $e6, $01
    db $64, $34, $e6, $01
    db $64, $35, $e6, $01
    db $62, $88, $59

bank006_5999:
    db $64, $2f, $f2, $03
    db $64, $30, $f2, $01
    db $64, $31, $f2, $02
    db $64, $32, $f2, $01
    db $62, $99, $59

bank006_59ac:
    db $64, $2e, $00, $08
    db $62, $ac, $59

bank006_59b3:
    db $2b, $f6, $32, $f4, $33, $f7, $32, $f6, $2d, $f6, $34, $f4, $35, $f7, $34, $f6
    db $2b, $f6, $32, $f4, $33, $f7, $32, $f6, $2d, $f6, $34, $f4, $35, $f7, $34, $f6
    db $2b, $f4, $2d, $f4, $2e, $f4, $32, $f7, $2e, $f4, $32, $f4, $31, $fa, $32, $f4
    db $30, $f4, $2e, $f4, $2b, $f6, $2e, $f4, $32, $f4, $37, $f4, $34, $fa, $37, $f4
    db $32, $f4, $2e, $f4, $2b, $f6, $2c, $f4, $2d, $f4, $2e, $f4, $31, $fa, $32, $f6
    db $2e, $f6, $2b, $f6, $37, $f6, $34, $fa, $32, $f4, $33, $f4, $32, $f4, $2e, $f4
    db $32, $f4, $33, $f4, $32, $f4, $2d, $f4, $26, $fa, $65
    
    db $3a, $f6, $39, $f6, $3a
    db $f6, $36, $f6, $39, $f8, $37, $f8, $36, $f8, $33, $f8, $2e, $fa, $3a, $f6, $39
    db $f6, $3a, $f6, $3e, $f6, $3f, $f6, $3e, $f6, $3d, $f6, $39, $f6, $3c, $f8, $3a
    db $f6, $36, $f6, $33, $fa, $65
    
    db $26, $f6, $2d, $f4, $2e, $f6, $2d, $f4, $2a, $f4
    db $26, $f4, $27, $f4, $2e, $f4, $2f, $f4, $2e, $f4, $27, $f4, $2e, $f4, $2f, $f4
    db $2e, $f4, $26, $f6, $2d, $f4, $2e, $f6, $2d, $f4, $2a, $f4, $26, $f4, $27, $f4
    db $2e, $f4, $2f, $f4, $2e, $f4, $27, $f4, $2e, $f4, $2f, $f4, $2e, $f4, $26, $f6
    db $2a, $f6, $2d, $f6, $32, $f6, $33, $f8, $32, $f7, $65
    
    db $9f, $27, $ab, $27, $9f, $26, $a1, $27, $ad, $27, $a1, $26, $9f, $27, $ab, $27
    db $9f, $26, $a1, $27, $ad, $27, $a1, $26, $65
    
    db $9a, $26, $9c, $26, $9e, $26, $a1, $26, $9a, $2a, $65
    
    db $9f
    db $24, $9f, $24, $a6, $24, $a6, $24, $a7, $24, $a4, $24, $a2, $24, $a1, $24, $24
    db $04, $9f, $24, $a6, $24, $a7, $27, $a6, $26, $9b, $24, $9b, $24, $a2, $24, $a2
    db $24, $a3, $24, $a2, $24, $a0, $24, $9e, $24, $24, $04, $9b, $24, $a2, $24, $a3
    db $27, $a2, $26, $65
    
    db $9a, $27, $a1, $26, $9e, $24, $9a, $26, $24, $04, $9b, $26
    db $a2, $26, $a3, $24, $a2, $26, $9a, $27, $a1, $26, $9e, $24, $9a, $26, $24, $04
    db $9b, $26, $a2, $26, $a3, $24, $a2, $26, $9a, $28, $9e, $28, $a1, $28, $9a, $28
    db $65
    
    db $18, $14, $1e, $34, $18, $14, $18, $14, $1e, $34, $18, $14, $1a, $24, $1e
    db $34, $18, $14, $1e, $34, $18, $14, $18, $14, $1e, $34, $18, $14, $1a, $24, $1e
    db $34, $18, $14, $1e, $34, $18, $14, $18, $14, $1e, $34, $18, $14, $1a, $24, $1e
    db $34, $18, $14, $1e, $34, $18, $14, $18, $14, $1e, $34, $18, $14, $1a, $24, $1a
    db $24, $65
    
bank006_5b55:
    db $67, $ff, $69, $b4
    db $24, $0a
    db $24, $0a
    db $24, $0a
    db $24, $0a
    db $64, $36, $e4, $01
    db $64, $3a, $e4, $01
    db $64, $3d, $d8, $01
    db $24, $04
    db $66, $01
    db $62, $55, $5b

bank006_5b74:
    db $64, $37, $e4, $01
    db $24, $04
    db $64, $36, $e4, $01
    db $64, $3a, $e4, $01
    db $64, $3d, $d8, $01
    db $62, $74, $5b

bank006_5b89:
    db $64, $38, $f0, $03
    db $64, $3c, $f0, $02
    db $64, $3f, $f0, $01
    db $62, $89, $5b
    
bank006_5b98:
    db $64, $39, $00, $18
    db $62, $98, $5b

bank006_5b9f:
    db $2d, $f6, $2f, $f6, $30, $f6, $34, $f6, $35, $f4, $37, $f4, $38, $f6, $3c, $f6
    db $38, $f4, $35, $f4, $39, $f8, $40, $f8, $41, $f6, $3c, $f6, $38, $f6, $35, $f6
    db $3c, $f4, $3b, $f4, $3c, $f6, $39, $f6, $34, $f6, $38, $f6, $37, $f6, $35, $f6
    db $30, $f6, $34, $f8, $30, $f6, $2d, $f6, $2c, $fa, $65
    
    db $b9, $ad, $bb, $ad, $bc
    db $ad, $c0, $ad, $bc, $ad, $bb, $ad, $b9, $ad, $bb, $ad, $bc, $ad, $c0, $ad, $bc
    db $ad, $bb, $ad, $b8, $ad, $bc, $ad, $be, $ad, $c1, $ad, $be, $ad, $bc, $ad, $b8
    db $ad, $bc, $ad, $be, $ad, $c1, $ad, $be, $ad, $bc, $ad, $b9, $ad, $bb, $ad, $bc
    db $ad, $c0, $ad, $bc, $ad, $bb, $ad, $b9, $ad, $bb, $ad, $bc, $ad, $c0, $ad, $bc
    db $ad, $bb, $ad, $b8, $ad, $bc, $ad, $be, $ad, $c1, $ad, $be, $ad, $bc, $ad, $b8
    db $ad, $bc, $ad, $be, $ad, $c1, $ad, $be, $ad, $bc, $ad, $65
    
    db $a1, $28, $a8, $28, $a9, $29, $9d, $24, $a0, $24, $a1, $28, $a8, $28, $a9, $29
    db $9d, $26, $65
    
    db $18
    db $14, $18, $14, $22, $54, $18, $14, $18, $16, $22, $56, $18, $14, $18, $14, $22
    db $54, $18, $14, $18, $14, $22, $57, $18, $14, $18, $14, $22, $54, $18, $14, $18
    db $14, $18, $14, $22, $56, $18, $14, $18, $14, $22, $54, $18, $14, $18, $14, $22
    db $54, $18, $16, $65
    
    db $b2, $f8, $b9, $f6, $ba, $f4, $b9, $f4, $b8, $f7, $b7, $f4
    db $b5, $f4, $b8, $f4, $bc, $f6, $be, $f8, $b9, $f7, $be, $f2, $c0, $f2, $c1, $f6
    db $bc, $f6, $b8, $f6, $b5, $f6, $ad, $f6, $b2, $f7, $b3, $f4, $b4, $f6, $b5, $f7
    db $b6, $f2, $b7, $f2, $b8, $f6, $bc, $f6, $be, $f6, $b9, $f6, $b5, $f6, $b2, $f6
    db $b8, $fa, $65
    
    db $be, $ad, $c0, $ad, $c1, $ad, $c5, $ad, $c1, $ad, $c0, $ad, $be
    db $ad, $c0, $ad, $c1, $ad, $c5, $ad, $c1, $ad, $c0, $ad, $c1, $ad, $c3, $ad, $c4
    db $ad, $c8, $ad, $c4, $ad, $c3, $ad, $c1, $ad, $c3, $ad, $c4, $ad, $c8, $ad, $c4
    db $ad, $c3, $ad, $be, $ad, $c0, $ad, $c1, $ad, $c5, $ad, $c1, $ad, $c0, $ad, $be
    db $ad, $c0, $ad, $c1, $ad, $c5, $ad, $c1, $ad, $c0, $ad, $c1, $ad, $c3, $ad, $c4
    db $ad, $c8, $ad, $c4, $ad, $c3, $ad, $c1, $ad, $c3, $ad, $c4, $ad, $c8, $ad, $c4
    db $ad, $c3, $ad, $65
    
    db $a6, $28, $9a, $27, $9b, $22, $9c, $22, $9d, $27, $9f, $24, $a0, $24, $9d, $24
    db $a0, $24, $a4, $24, $a6, $28, $9a, $27, $a6, $24, $9d, $28, $a9, $24, $a4, $24
    db $a0, $24, $9d, $24, $65
    
    db $46, $f8, $52, $f8, $50, $fa, $46, $f8, $52, $f8, $50, $fa, $4c, $f8, $4a, $f8
    db $48, $f8, $47, $fa, $24, $06, $24, $04, $65
    
    db $ba, $ad, $bb, $ad, $be, $ad, $c1, $ad, $be, $ad, $bb, $ad, $ba, $ad
    db $bb, $ad, $be, $ad, $c1, $ad, $be, $ad, $bb, $ad, $b8, $ad, $bb, $ad, $be, $ad
    db $c1, $ad, $be, $ad, $bb, $ad, $b8, $ad, $bb, $ad, $be, $ad, $c1, $ad, $be, $ad
    db $bb, $ad, $ba, $ad, $bb, $ad, $be, $ad, $c1, $ad, $be, $ad, $bb, $ad, $ba, $ad
    db $bb, $ad, $be, $ad, $c1, $ad, $be, $ad, $bb, $ad, $b8, $ad, $bb, $ad, $be, $ad
    db $c1, $ad, $be, $ad, $bb, $ad, $b8, $ad, $bb, $ad, $be, $ad, $c1, $ad, $be, $ad
    db $bb, $ad, $b8, $ad, $bb, $ad, $be, $ad, $c0, $ad, $be, $ad, $bb, $ad, $b8, $ad
    db $bb, $ad, $be, $ad, $c0, $ad, $be, $ad, $bb, $ad, $b4, $ad, $b8, $ad, $bb, $ad
    db $c1, $ad, $bb, $ad, $b8, $ad, $b4, $ad, $b8, $ad, $bb, $ad, $c0, $ad, $bb, $ad
    db $b8, $ad, $b4, $ad, $b8, $ad, $bb, $ad, $be, $ad, $bb, $ad, $b8, $ad, $b4, $ad
    db $b8, $ad, $bb, $ad, $bc, $ad, $bb, $ad, $b8, $ad, $65
    
    db $a2, $24, $a2, $26, $a2
    db $24, $ae, $26, $a2, $26, $a8, $24, $a8, $26, $a8, $24, $9c, $26, $a8, $26, $a2
    db $24, $a2, $26, $a2, $24, $ae, $26, $a2, $26, $9c, $24, $9c, $26, $9c, $24, $a8
    db $24, $9c, $24, $a0, $24, $9c, $24, $9c, $24, $9c, $26, $9c, $24, $a8, $26, $a3
    db $26, $9c, $26, $a8, $26, $a3, $26, $9c, $26, $a8, $26, $a3, $26, $9c, $26, $a8
    db $26, $65
    
bank006_5e51:
    db $67, $ff, $69, $b4
    db $64, $40, $e6, $01
    db $66, $01
    db $62, $51, $5e

bank006_5e5e:
    db $61

bank006_5e5f:
    db $64, $41, $e6, $01
    db $62, $5f, $5e

bank06_5e66:
    db $61, $24, $0a, $24, $0a, $24, $0a, $24, $0a, $36, $f8, $37, $fb, $33, $fc, $3f
    db $f8, $3e, $f8, $3d, $f9, $38, $f6, $3b, $fb, $3c, $fc, $24, $08, $42, $f8, $43
    db $fa, $3f, $fb, $32, $fa, $31, $f8, $30, $fa, $31, $f8, $32, $f8, $37, $f8, $34
    db $f8, $3a, $f8, $39, $fc, $65
    
    db $aa, $28, $ab, $2b, $a7, $2c, $aa, $28, $ab, $2b, $a7, $2c, $a6, $28, $ab, $28
    db $b0, $29, $ac, $26, $ad, $2c, $ae, $2c, $aa, $28, $ab, $2b, $a7, $2a, $a6, $2a
    db $a5, $28, $a4, $2a, $a5, $2a, $ab, $28, $a8, $28, $ae, $28, $ad, $2c, $65

bank006_5ecb:
    db $67, $ff, $69, $be
    db $64, $4f, $00, $01
    db $64, $42, $e6, $01
    db $64, $44, $e6, $02
    db $64, $47, $da, $01
    db $64, $48, $ce, $01
    db $64, $4b, $e6, $01
    db $64, $4d, $e6, $01
    db $66, $01
    db $62, $cb, $5e

bank006_5ef0:
    db $64, $4f, $00, $04
    db $64, $45, $e6, $02
    db $64, $45, $dc, $02
    db $64, $49, $e6, $01
    db $64, $50, $f2, $04
    db $64, $50, $f0, $04
    db $64, $50, $f2, $02
    db $64, $50, $f5, $02
    db $64, $50, $f9, $02
    db $64, $50, $f7, $02
    db $9e, $ba
    db $9e, $ba
    db $62, $f0, $5e

bank006_5f1f:
    db $64, $43, $f2, $04
    db $64, $46, $f2, $02
    db $64, $46, $f4, $02
    db $64, $4a, $f2, $01
    db $64, $4c, $f2, $01
    db $64, $4e, $f2, $01
    db $62, $1f, $5f

bank006_5f3a:
    db $61
    
bank006_5f3b:
    db $34, $f8, $33, $f8, $32, $f8, $31, $f8, $30, $f8, $2f, $f8, $2e, $f8, $30, $f8
    db $34, $f6, $39, $f6, $38, $f6, $33, $f6, $32, $f6, $37, $f6, $36, $f8, $30, $f6
    db $35, $f6, $34, $f6, $2f, $f6, $2e, $f6, $33, $f6, $31, $f6, $30, $f6, $30, $f6
    db $39, $f6, $38, $f6, $3b, $f6, $3a, $f6, $37, $f6, $39, $f8, $38, $f6, $35, $f6
    db $37, $f6, $3b, $f6, $3a, $f6, $37, $f6, $3b, $f8, $65

bank006_5f86:
    db $a1, $26, $a8, $26, $a7, $26, $a0, $26, $9f, $26, $a6, $26, $a5, $26, $9e, $26
    db $9d, $26, $a4, $26, $a3, $26, $9c, $26, $9b, $26, $a2, $26, $a0, $28, $65

bank006_5fa5:
    db $3c, $c4, $3c, $c4, $3c, $c4
    db $3c, $c4, $3c, $c4, $3c, $c4, $3c, $c4, $3c, $c4, $3b, $c4, $3b, $c4, $3b, $c4
    db $3b, $c4, $3b, $c4, $3b, $c4, $3b, $c4, $3b, $c4, $3a, $c4, $3a, $c4, $3a, $c4
    db $3a, $c4, $3a, $c4, $3a, $c4, $3a, $c4, $3a, $c4, $39, $c4, $39, $c4, $39, $c4
    db $39, $c4, $39, $c4, $39, $c4, $39, $c4, $39, $c4, $65

bank006_5fe6:
    db $34, $c4, $34, $c4, $34
    db $c4, $34, $c4, $34, $c4, $34, $c4, $34, $c4, $34, $c4, $33, $c4, $33, $c4, $33
    db $c4, $33, $c4, $33, $c4, $33, $c4, $33, $c4, $33, $c4, $32, $c4, $32, $c4, $32
    db $c4, $32, $c4, $32, $c4, $32, $c4, $32, $c4, $32, $c4, $30, $c4, $30, $c4, $30
    db $c4, $30, $c4, $30, $c4, $30, $c4, $30, $c4, $30, $c4, $65
    
    db $6d, $75, $73, $69
    db $63, $20, $62, $79, $20, $4d, $41, $52, $4b, $20, $54, $2e, $57, $2e, $20, $43
    db $4f, $4f, $4b, $53, $45, $59, $20, $41, $50, $52, $49, $4c, $20, $31, $39, $39
    db $39, $a1, $17, $a1, $17, $a1, $16, $a1, $17, $a1, $17, $a1, $16, $a1, $17, $a1
    db $17, $a1, $16, $a1, $17, $a1, $17, $a1, $16, $65
    
    db $b6, $b4, $bb, $b4, $c2, $b8
    db $c3, $b4, $c2, $b4, $c1, $ba, $b7, $b4, $bb, $b4, $c0, $b6, $c2, $b6, $c3, $b6
    db $c7, $b6, $c2, $b6, $be, $b6, $bd, $b6, $bb, $b4, $bd, $b4, $be, $b4, $c2, $b7
    db $c7, $b6, $c8, $b6, $c5, $b6, $c1, $b8, $cc, $b4, $ca, $b4, $c9, $b6, $c7, $b6
    db $c0, $b6, $c2, $ba, $65
    
    db $47, $f4, $49, $f4, $4a, $f6, $4e, $f6, $4f, $f4, $4e
    db $f4, $4d, $fa, $47, $f6, $49, $f6, $4a, $f6, $4e, $f6, $4f, $fa, $4c, $f7, $4a
    db $f4, $48, $f6, $45, $f6, $4b, $fa, $45, $f4, $47, $f4, $48, $f6, $45, $f6, $48
    db $f6, $47, $fa, $65
    
    db $42, $c6, $3b, $c6, $3e, $c6, $42, $c6, $41, $c6, $39, $c6
    db $3c, $c6, $41, $c6, $42, $c6, $3b, $c6, $3e, $c6, $42, $c6, $41, $c6, $39, $c6
    db $3c, $c6, $41, $c6, $40, $c6, $39, $c6, $3c, $c6, $40, $c6, $3f, $c6, $37, $c6
    db $3a, $c6, $3f, $c6, $40, $c6, $39, $c6, $3c, $c6, $40, $c6, $3f, $c6, $37, $c6
    db $3a, $c6, $3f, $c6, $65
    
    db $a3, $27, $a3, $24, $af, $26, $a3, $26, $a3, $27, $a3
    db $24, $af, $26, $af, $26, $a3, $27, $a3, $24, $af, $26, $a3, $26, $a3, $27, $af
    db $27, $a3, $26, $a1, $27, $ad, $27, $ad, $26, $a1, $27, $ad, $27, $ad, $26, $a1
    db $27, $ad, $27, $ad, $26, $a1, $27, $ad, $27, $ad, $26, $65
    
    db $2d, $f8, $2e, $f6
    db $2b, $f6, $2d, $f7, $30, $f4, $33, $f6, $34, $f6, $2d, $f8, $2e, $f6, $2b, $f6
    db $2d, $f7, $30, $f4, $33, $f6, $34, $f6, $2b, $f8, $32, $f8, $31, $fa, $2b, $f8
    db $32, $f8, $31, $fa, $65
    
    db $33, $84, $33, $84, $33, $84, $33, $84, $33, $84, $33, $84, $33, $84, $33, $84
    db $65
    
    db $a1, $87, $a1, $84, $a1, $86, $a1, $86, $a1, $87
    db $a1, $84, $a1, $86, $a1, $86, $a1, $87, $a1, $84, $a1, $86, $a1, $86, $a1, $87
    db $a1, $84, $a1, $86, $a1, $86, $9f, $87, $9f, $84, $9f, $86, $9f, $86, $9f, $87
    db $9f, $84, $9f, $86, $9f, $86, $9f, $87, $9f, $84, $9f, $86, $9f, $86, $9f, $87
    db $9f, $84, $9f, $86, $9f, $86, $65
    
    db $39, $f6, $38, $f6, $39, $f6, $3a, $f6, $39
    db $f6, $38, $f6, $39, $f6, $3a, $f6, $34, $f6, $33, $f6, $34, $f6, $35, $f6, $34
    db $f6, $33, $f6, $34, $f6, $35, $f6, $36, $f6, $35, $f6, $36, $f6, $37, $f6, $36
    db $f6, $35, $f6, $36, $f6, $37, $f6, $39, $f6, $38, $f6, $39, $f6, $3a, $f6, $39
    db $f6, $38, $f6, $39, $f6, $3a, $f6, $3b, $f6, $38, $f6, $34, $f6, $40, $f6, $3b
    db $f6, $38, $f6, $34, $f8, $65
    
    db $a1, $26, $a2, $26, $a1, $26, $a5, $26, $a1, $26
    db $a2, $26, $a1, $26, $a5, $26, $a4, $26, $a5, $26, $a4, $26, $a7, $26, $a4, $26
    db $a5, $26, $a4, $26, $a7, $26, $a7, $26, $a6, $26, $a7, $26, $a4, $26, $a7, $26
    db $a6, $26, $a7, $26, $a4, $26, $a6, $26, $a5, $26, $a6, $26, $a7, $26, $a6, $26
    db $a5, $26, $a6, $26, $a7, $26, $a8, $28, $9c, $28, $a8, $28, $9c, $28, $65
    
    db $24, $0a, $24, $0a, $24, $0a, $24, $0a, $65
    
bank006_6263:
    db $67, $ff, $69, $c3
    db $24, $0a
    db $24, $0a
    db $64, $54, $e3, $01
    db $64, $55, $e3, $01
    db $64, $58, $d7, $01
    db $64, $59, $e3, $01
    db $64, $5a, $fb, $01
    db $64, $5a, $f9, $01
    db $64, $5d, $e3, $01
    db $64, $5f, $e3, $02
    db $64, $61, $e3, $01
    db $64, $61, $e0, $01
    db $64, $62, $e3, $01
    db $64, $62, $e1, $01
    db $64, $61, $e3, $01
    db $64, $61, $e0, $01
    db $64, $62, $e3, $01
    db $64, $62, $e1, $01
    db $66, $01
    db $62, $63, $62

bank006_62b0:
    db $64, $52, $e3, $07
    db $64, $52, $e5, $02
    db $64, $57, $e3, $01
    db $64, $5b, $e3, $01
    db $64, $5b, $e1, $01
    db $64, $5b, $e3, $01
    db $64, $5b, $e1, $01
    db $64, $60, $e3, $02
    db $64, $63, $e3, $01
    db $64, $63, $e0, $01
    db $64, $64, $e3, $01
    db $64, $64, $e1, $01
    db $64, $63, $e3, $01
    db $64, $63, $e0, $01
    db $64, $64, $e3, $01
    db $64, $64, $e1, $01
    db $62, $b0, $62

bank006_62f3:
    db $64, $53, $ef, $07
    db $64, $56, $ef, $09
    db $64, $5c, $fb, $01
    db $64, $5c, $f9, $01
    db $64, $5c, $fb, $01
    db $64, $5c, $f9, $01
    db $64, $5e, $fb, $01
    db $64, $65, $ef, $01
    db $64, $65, $ec, $01
    db $64, $65, $ef, $01
    db $64, $65, $ef, $01
    db $64, $65, $ec, $01
    db $64, $65, $ef, $01
    db $62, $f3, $62

bank006_632a:
    db $64, $51, $00, $10
    db $62, $2a, $63

bank006_6331:
    db $3c, $f8, $43, $f8, $42, $fa, $3f, $f8, $43, $f8, $44, $fa, $65
    
    db $3c, $f2, $3f
    db $f2, $43, $f4, $44, $f8, $43, $f6, $42, $fa, $3c, $f2, $3f, $f2, $43, $f4, $46
    db $f7, $44, $f4, $43, $f4, $42, $f4, $41, $f9, $3d, $f6, $3f, $fa, $3e, $f8, $3d
    db $f8, $3c, $fa, $30, $fa, $65
    
    db $30, $e6, $34, $e6, $33, $e6, $31, $e6, $30, $e6
    db $34, $e6, $33, $e6, $31, $e6, $65
    
    db $a4, $26, $a5, $26, $a8, $26, $a7, $26, $a4
    db $26, $a5, $26, $a8, $26, $a7, $26, $65
    
    db $1e, $34, $1e, $34, $1e, $34, $1e, $34
    db $1e, $34, $1e, $34, $1e, $34, $20, $44, $1e, $34, $1e, $34, $1e, $34, $1e, $34
    db $1e, $34, $1e, $34, $1e, $34, $20, $44, $65
    
    db $4a, $ea, $4b, $ea, $4a, $ea, $4b
    db $ea, $4a, $e8, $45, $e8, $46, $ea, $4a, $e8, $45, $e8, $4b, $ea, $65
    
    db $35, $f8
    db $39, $f8, $38, $f8, $3b, $f8, $39, $f8, $3c, $f8, $3b, $f8, $3e, $f8, $41, $f8
    db $3e, $f8, $3f, $f8, $3a, $f8, $41, $f8, $3e, $f8, $3f, $f6, $3a, $f6, $37, $f8
    db $35, $f8, $39, $f8, $35, $fa, $65
    
    db $45, $e8, $41, $e8, $3f, $ea, $45, $e8, $41
    db $e8, $43, $ea, $32, $e8, $35, $e8, $34, $e8, $38, $e8, $35, $e8, $39, $e8, $38
    db $e8, $3b, $e8, $3e, $e8, $39, $e8, $3a, $e8, $37, $e8, $39, $e8, $39, $e8, $3a
    db $e6, $37, $e6, $33, $e8, $32, $e8, $35, $e8, $32, $ea, $65
    
    db $a6, $07, $a6, $06
    db $a6, $04, $a7, $04, $a4, $04, $a6, $07, $a6, $06, $a6, $04, $a7, $04, $a4, $04
    db $65
    
    db $1a, $e7, $1a, $e4, $26, $e7, $26, $e4, $1a, $e7, $1a, $e4, $26, $e7, $26
    db $e4, $1a, $e7, $1a, $e4, $26, $e7, $26, $e4, $1a, $e7, $1a, $e4, $26, $e8, $65
    
    db $3e, $e6, $41, $e6, $44, $e6, $45, $e6, $4a, $e7, $4c, $e4, $4d, $e6, $4a, $e6
    db $45, $e9, $43, $e6, $41, $e6, $3e, $e8, $44, $e4, $45, $e4, $43, $e8, $3f, $e6
    db $3c, $e6, $48, $e8, $24, $04, $47, $e4, $46, $e4, $45, $e4, $44, $e9, $42, $e6
    db $43, $ea, $65
    
    db $32, $e6, $35, $e6, $38, $e6, $39, $e6, $3a, $e6, $39, $e6, $35, $e6, $31, $e6
    db $32, $e6, $35, $e6, $38, $e6, $39, $e6, $3a, $e6, $39, $e6, $35, $e6, $31, $e6
    db $65
    
    db $9a, $17, $9a, $14, $a6, $17, $a6, $14, $9a, $17, $9a, $14, $a6, $17, $a6, $14
    db $9a, $17, $9a, $14, $a6, $17, $a6, $14, $9a, $17, $9a, $14, $a6, $18, $65
    
    db $39, $a4, $39, $a4, $39, $a4, $39, $a4, $39, $a4, $39, $a4, $39
    db $a4, $39, $a4, $39, $a4, $39, $a4, $39, $a4, $39, $a4, $39, $a4, $39, $a4, $39
    db $a4, $39, $a4, $3d, $a4, $3d, $a4, $3d, $a4, $3d, $a4, $3d, $a4, $3d, $a4, $3d
    db $a4, $3d, $a4, $3d, $a4, $3d, $a4, $3d, $a4, $3d, $a4, $3d, $a4, $3d, $a4, $3d
    db $a4, $3d, $a4, $65
    
    db $35, $a4, $35, $a4, $35, $a4, $35, $a4, $35, $a4, $35, $a4
    db $35, $a4, $35, $a4, $35, $a4, $35, $a4, $35, $a4, $35, $a4, $35, $a4, $35, $a4
    db $35, $a4, $35, $a4, $3a, $a4, $3a, $a4, $3a, $a4, $3a, $a4, $3a, $a4, $3a, $a4
    db $3a, $a4, $3a, $a4, $39, $a4, $39, $a4, $39, $a4, $39, $a4, $39, $a4, $39, $a4
    db $39, $a4, $39, $a4, $65
    
    db $9a, $27, $9c, $24, $9d, $26, $a0, $26, $a1, $28, $9d
    db $26, $9a, $26, $99, $28, $9a, $26, $9c, $26, $a1, $27, $a3, $24, $a5, $26, $a1
    db $26, $a6, $28, $a1, $26, $9d, $26, $9a, $28, $9c, $26, $9d, $26, $99, $28, $9c
    db $26, $9f, $26, $a2, $28, $a1, $28, $65
    
    db $41, $fa, $40, $fa, $3f, $fa, $3e, $fa, $65
    
    db $3e, $f8, $45, $f8, $44, $f8, $3d, $f8, $65
    
    db $24, $08, $3e, $fa, $3d, $fa, $3c, $fa, $3b, $f8, $65
    
    db $24, $06, $39, $f8, $3e, $f8, $3f, $f8, $3a, $f6, $65
    
    db $a6, $16, $a9, $16, $ac, $16, $ad, $17, $a6, $14, $a9, $16, $ac, $16, $ad, $16
    db $a4, $16, $a7, $16, $aa, $16, $ab, $17, $a4, $14, $a7, $16, $aa, $16, $ab, $16
    db $65
    
    db $67, $ff, $69, $b9, $64, $66, $e4, $01, $64, $69, $e4, $01, $66, $01, $24
    db $00, $61, $64, $67, $e4, $01, $64, $6a, $e4, $01, $24, $00, $61, $64, $68, $f0
    db $01, $64, $6b, $f0, $01, $24, $00, $61, $61, $24, $0c, $24, $0c, $24, $0c, $24
    db $0c, $24, $0b, $44, $c7, $44, $c4, $65
    
    db $38, $ae, $3d, $ae, $40, $ae, $38, $ae
    db $3d, $ae, $40, $ae, $38, $ae, $3d, $ae, $40, $ae, $38, $ae, $3d, $ae, $40, $ae
    db $38, $ae, $3d, $ae, $40, $ae, $38, $ae, $3d, $ae, $40, $ae, $38, $ae, $3d, $ae
    db $40, $ae, $38, $ae, $3d, $ae, $40, $ae, $39, $ae, $3d, $ae, $40, $ae, $39, $ae
    db $3d, $ae, $40, $ae, $39, $ae, $3e, $ae, $42, $ae, $39, $ae, $3e, $ae, $42, $ae
    db $38, $ae, $3c, $ae, $42, $ae, $38, $ae, $3d, $ae, $40, $ae, $38, $ae, $3d, $ae
    db $3f, $ae, $36, $ae, $3c, $ae, $3f, $ae, $34, $ae, $38, $ae, $3d, $ae, $38, $ae
    db $3d, $ae, $40, $ae, $38, $ae, $3d, $ae, $40, $ae, $38, $ae, $3d, $ae, $40, $ae
    db $65
    
    db $a5, $2c, $a3, $2c, $a1, $2a, $9e, $2a, $a0, $2a, $a0, $2a, $a5, $2c, $65
    
    db $44, $cb, $44, $c7, $44, $c4, $44, $ca, $45, $ca, $44, $ca, $42, $c8, $47, $c8
    db $40, $cc, $40, $cc, $65
    
    db $38, $ae, $3f, $ae, $42, $ae, $38, $ae, $3f, $ae, $42
    db $ae, $38, $ae, $3f, $ae, $42, $ae, $38, $ae, $3f, $ae, $42, $ae, $38, $ae, $3d
    db $ae, $40, $ae, $38, $ae, $3d, $ae, $40, $ae, $39, $ae, $3d, $ae, $42, $ae, $39
    db $ae, $3d, $ae, $42, $ae, $38, $ae, $3b, $ae, $40, $ae, $38, $ae, $3b, $ae, $40
    db $ae, $39, $ae, $3b, $ae, $3f, $ae, $39, $ae, $3b, $ae, $3f, $ae, $38, $ae, $3b
    db $ae, $40, $ae, $38, $ae, $3b, $ae, $40, $ae, $38, $ae, $3b, $ae, $40, $ae, $38
    db $ae, $3b, $ae, $40, $ae, $38, $cc, $65
    
    db $a4, $2c, $a5, $2a, $9e, $2a, $a3, $2a, $a3, $2a, $a8, $2c, $9c, $2c, $65
    
    db $67, $ff, $69, $b9, $64, $6c, $e4, $01, $64
    db $6f, $e4, $01, $66, $01, $24, $00, $61, $64, $6d, $e4, $01, $64, $70, $e4, $01
    db $24, $00, $61, $64, $6e, $f0, $01, $64, $71, $f0, $01, $24, $00, $61, $61, $24
    db $0c, $24, $0c, $24, $0c, $24, $0c, $24, $0b, $44, $c7, $44, $c4, $65
    
    db $38, $ae
    db $3d, $ae, $40, $ae, $38, $ae, $3d, $ae, $3e, $ae, $38, $ae, $3d, $ae, $40, $ae
    db $38, $ae, $3d, $ae, $40, $ae, $38, $ae, $3c, $ae, $40, $ae, $38, $ae, $3d, $ae
    db $40, $ae, $38, $ae, $3d, $ae, $40, $ae, $38, $ae, $3d, $ae, $40, $ae, $3b, $ae
    db $3d, $ae, $3e, $ae, $39, $ae, $3d, $ae, $40, $ae, $39, $ae, $3e, $ae, $42, $ae
    db $39, $ae, $3f, $ae, $42, $ae, $38, $ae, $3c, $ae, $42, $ae, $38, $ae, $3d, $ae
    db $40, $ae, $38, $ae, $3e, $ae, $3f, $ae, $36, $ae, $3d, $ae, $3f, $ae, $34, $ae
    db $38, $ae, $3d, $ae, $38, $ae, $3c, $ae, $40, $ae, $38, $ae, $3d, $ae, $40, $ae
    db $38, $ae, $3d, $ae, $40, $ae, $65
    
    db $a5, $2c, $a3, $2c, $a2, $2a, $9e, $2a, $a0, $2a, $9f, $2a, $a5, $2c, $65
    
    db $44, $cb, $44, $c7, $44, $c4, $43, $ca, $45, $ca, $44, $ca, $41, $c8, $48, $c8
    db $40, $cc, $40, $cc, $65
    
    db $38, $ae, $3f, $ae, $42
    db $ae, $38, $ae, $3f, $ae, $42, $ae, $37, $ae, $3f, $ae, $41, $ae, $38, $ae, $3f
    db $ae, $41, $ae, $38, $ae, $3d, $ae, $40, $ae, $38, $ae, $3d, $ae, $40, $ae, $39
    db $ae, $3d, $ae, $42, $ae, $39, $ae, $3d, $ae, $42, $ae, $38, $ae, $3b, $ae, $40
    db $ae, $38, $ae, $39, $ae, $40, $ae, $3b, $ae, $3b, $ae, $3f, $ae, $39, $ae, $3b
    db $ae, $3f, $ae, $38, $ae, $3b, $ae, $41, $ae, $38, $ae, $3b, $ae, $40, $ae, $38
    db $ae, $3c, $ae, $40, $ae, $38, $ae, $3b, $ae, $40, $ae, $38, $cc, $65
    
    db $a4, $2c, $a5, $2a, $9d, $2a, $a3, $2a, $a2, $2a, $a8, $2c, $9c, $2c, $65

bank006_684e:
    db $67, $ff, $69, $a5
    db $64, $72, $e2, $02
    db $64, $76, $e2, $01
    db $64, $79, $e2, $01
    db $24, $0c
    db $64, $7e, $d6, $01
    db $24, $06
    db $64, $7f, $e2, $01
    db $64, $82, $e2, $01
    db $64, $85, $e2, $02
    db $66, $01
    db $62, $4e, $68
    
bank006_6877:
    db $64, $73, $d6, $02
    db $64, $77, $d6, $02
    db $64, $7b, $e2, $04
    db $64, $7c, $e2, $04
    db $64, $7d, $e2, $01
    db $24, $0c
    db $24, $04
    db $64, $7e, $d6, $01
    db $24, $04
    db $24, $0a
    db $64, $80, $ee, $03
    db $64, $83, $e2, $01
    db $64, $86, $e2, $02
    db $62, $77, $68

bank006_68a6:
    db $64, $74, $e2, $01
    db $64, $78, $ee, $01
    db $64, $7a, $ee, $01
    db $64, $81, $ee, $08
    db $64, $84, $ee, $01
    db $64, $87, $ee, $02
    db $62, $a6, $68

bank006_68c1:
    db $64, $75, $00, $08
    db $62, $c1, $68

bank006_68c8:
    db $33, $f9, $35, $f4, $37, $f4, $3b, $f8, $3a, $f8, $39, $fc, $65
    
    db $50, $c6, $4f, $c6, $49, $c6, $48, $c6, $50, $c6, $4f, $c6, $49, $c6, $48, $c6
    db $4e, $c6, $4d, $c6, $49, $c6, $45, $c6, $4e, $c6, $4d, $c6, $49, $c6, $45, $c6
    db $65
    
    db $a4, $29, $a6, $24, $a7, $24, $ac, $28, $ab, $28, $aa, $2a, $ad, $28, $b1, $28
    db $a4, $29, $a6, $24, $a7, $24, $ac, $28, $ab, $28, $aa, $29, $a5, $26, $aa, $2a
    db $65
    
    db $1e
    db $34, $1e, $36, $1e, $34, $1e, $34, $1e, $36, $1e, $34, $1e, $34, $1e, $36, $1e
    db $34, $1e, $34, $1e, $36, $1e, $34, $1e, $34, $1e, $36, $1e, $34, $1e, $34, $1e
    db $36, $1e, $34, $1e, $34, $1e, $36, $1e, $36, $1e, $34, $1e, $34, $1e, $34, $65

bank006_6948:
    db $44, $f7, $43, $f4, $41, $f6, $3c, $f6, $40, $f8, $41, $f7, $43, $f2, $44, $f2
    db $45, $f8, $48, $f8, $3f, $f8, $40, $f8, $44, $f7, $43, $f4, $41, $f7, $3c, $f4
    db $40, $f8, $41, $f8, $45, $f6, $40, $f6, $48, $f7, $44, $f4, $45, $fa, $65
    
    db $4d
    db $a4, $50, $a4, $51, $a4, $50, $a4, $4d, $a4, $50, $a4, $51, $a4, $50, $a4, $4d
    db $a4, $50, $a4, $51, $a4, $50, $a4, $4d, $a4, $50, $a4, $51, $a4, $50, $a4, $54
    db $a4, $57, $a4, $58, $a4, $57, $a4, $54, $a4, $57, $a4, $58, $a4, $57, $a4, $54
    db $a4, $57, $a4, $58, $a4, $57, $a4, $54, $a4, $57, $a4, $58, $a4, $57, $a4, $65

bank006_69b8:
    db $9d, $17, $9f, $14, $a0, $16, $a2, $16, $a3, $18, $a7, $16, $a9, $16, $a1, $17
    db $a3, $14, $a4, $16, $a1, $16, $a7, $18, $a8, $18, $9d, $17, $9f, $14, $a0, $16
    db $a2, $16, $a3, $18, $a7, $16, $a9, $16, $a1, $17, $a3, $14, $a4, $16, $a7, $16
    db $a8, $18, $a1, $18, $65
    
    db $34, $f8, $39, $f8, $3b, $f8, $3c, $f8, $34, $f8, $39
    db $f8, $3b, $f8, $3c, $f8, $3e, $f8, $40, $f6, $41, $f6, $44, $fa, $3e, $f8, $40
    db $f6, $41, $f6, $44, $f9, $45, $f6, $47, $f9, $45, $f6, $48, $f8, $47, $f8, $45
    db $f8, $43, $f8, $40, $f8, $3c, $f8, $65
    
    db $33, $a4, $34, $a4, $33, $a4, $34, $a4, $33, $a4, $34, $a4, $33, $a4, $34, $a4
    db $65
    
    db $39, $a4, $3a, $a4, $39, $a4, $3a, $a4, $39, $a4, $3a, $a4, $39, $a4, $3a, $a4
    db $65
    
    db $3a, $a4, $3b, $a4, $3a, $a4
    db $3b, $a4, $3a, $a4, $3b, $a4, $3a, $a4, $3b, $a4, $3a, $a4, $3b, $a4, $3a, $a4
    db $3b, $a4, $3a, $a4, $3b, $a4, $3a, $a4, $3b, $a4, $39, $a4, $3a, $a4, $39, $a4
    db $3a, $a4, $39, $a4, $3a, $a4, $39, $a4, $3a, $a4, $39, $a4, $3a, $a4, $39, $a4
    db $3a, $a4, $39, $a4, $3a, $a4, $39, $a6, $65
    
    db $a1, $06, $a0, $06, $a1, $06, $9e
    db $06, $9d, $08, $a4, $08, $a1, $06, $a0, $06, $a1, $06, $9e, $06, $9d, $08, $a4
    db $08, $a6, $08, $a5, $08, $a2, $29, $a5, $06, $a6, $08, $a5, $08, $a2, $29, $9e
    db $06, $9d, $08, $a4, $28, $9c, $2a, $a1, $2c, $65
    
    db $4a, $68, $49, $66, $45, $66, $48, $68, $47, $68, $46, $68, $43, $68, $45, $69
    db $44, $66, $41, $69, $3d, $66, $3e, $68, $3a, $68, $39, $69, $65
    
    db $45, $f8, $44, $f8, $3f, $f8, $43, $f8, $42, $f8, $3d, $f8, $41, $f8, $40, $f8
    db $3b, $f8, $3f, $f8, $3e, $fc, $65
    
    db $32, $a4, $33, $a4, $32, $a4, $33, $a4, $32, $a4, $33, $a4, $32, $a4, $33, $a4
    db $32, $a4, $33, $a4, $32, $a4, $33, $a4, $32, $a4, $33, $a4, $32, $a4, $33, $a4
    db $65
    
    db $9a, $14, $9a, $16, $9a, $14, $a6, $16, $a7, $16, $9a, $14, $9a, $16, $9a, $14
    db $a6, $16, $a7, $16, $65
    
    db $2d, $fa, $33, $f9, $24, $04, $3b, $f9, $24, $04, $38, $f9, $34, $f9, $35, $f8
    db $30, $fa, $36, $fa, $33, $f6, $30, $fa, $65
    
    db $24, $08, $34, $fa, $39, $f8, $3c, $fa, $39, $fa, $37, $f8, $33, $f8, $3c, $fa
    db $37, $fa, $2b, $fa, $65
    
    db $a1, $16, $a1, $16, $a1, $14, $a1, $16, $a1, $16, $a1, $16, $a1, $16
    db $a1, $14, $a1, $16, $a1, $16, $a1, $16, $a1, $14, $a1, $16, $9f, $14, $a1, $16
    db $a1, $16, $a1, $14, $a1, $16, $a3, $14, $a4, $17, $a4, $16, $a4, $14, $a4, $14
    db $9f, $14, $a4, $17, $a4, $16, $a4, $14, $a4, $14, $a3, $14, $a4, $16, $a4, $16
    db $a4, $14, $9f, $16, $a4, $16, $a4, $16, $a4, $16, $a4, $14, $a4, $14, $a3, $14
    db $65
    
    db $33, $f8, $3a, $f8, $33, $f8, $3a, $f8, $3c, $fa, $24, $06, $37, $f6, $3c, $f8
    db $65
    
    db $33, $f6, $36, $f8, $3b, $f8, $36, $f8, $3b, $f8, $37, $fa, $33, $f6, $37, $f8
    db $65
    
    db $9b, $09, $9c, $04, $9d, $04, $9e, $04, $9f, $06, $a0, $04, $a1, $06, $a2, $04
    db $a3, $04, $a4, $09, $24, $04, $9f, $04, $98, $0a, $65

bank006_6bd6:
    db $67, $ff, $69, $a9
    db $64, $88, $e4, $01
    db $64, $89, $e4, $01
    db $64, $88, $e4, $01
    db $64, $8a, $e4, $01
    db $66, $01
    db $62, $d6, $6b

bank006_6bef:
    db $64, $8b, $f0, $01
    db $64, $8c, $e4, $01
    db $64, $8b, $f0, $01
    db $64, $8d, $f0, $01
    db $62, $ef, $6b

bank006_6c02:
    db $64, $8e, $f0, $01
    db $64, $8f, $f0, $01
    db $64, $8e, $f0, $01
    db $64, $90, $f0, $01
    db $62, $02, $6c

bank006_6c15:
    db $1e, $44
    db $1e, $44
    db $1e, $44
    db $1e, $44
    db $1e, $44
    db $1e, $44
    db $1e, $44
    db $1e, $44
    db $1e, $44
    db $1e, $44
    db $1e, $44
    db $1e, $42
    db $1e, $42
    db $62, $15, $6c

bank006_6c32:
    db $24, $06, $3b, $74, $43, $74, $3e, $78, $3c, $74, $43, $77, $24, $06, $3b, $74
    db $43, $74, $3e, $78, $3c, $74, $3b, $74, $3c, $74, $39, $74, $65

bank006_6c4f:
    db $3b, $74, $39, $74, $35, $77, $39, $74, $3b, $74, $39, $74, $34, $77, $39, $74
    db $3b, $74, $39, $74, $35, $76, $34, $74, $32, $74, $34, $76, $37, $76, $32, $76
    db $65

bank006_6c70:
    db $45, $76, $43, $74, $41, $74, $40, $74, $3e, $74, $43, $76, $40, $76, $3c, $76
    db $3e, $74, $3c, $74, $3a, $74, $39, $74, $37, $74, $35, $74, $34, $76, $38, $76
    db $3b, $76, $35, $74, $39, $74, $3c, $74, $40, $74, $3c, $74, $39, $74, $34, $74
    db $37, $74, $3b, $74, $3e, $74, $3b, $74, $37, $74, $39, $7b, $65

bank006_6cad:
    db $21, $c4, $28, $c4, $2d, $c6, $21, $c4, $1f, $c4, $1d, $c4, $24, $c4, $29, $c6
    db $1d, $c4, $1f, $c4, $21, $c4, $28, $c4, $2d, $c6, $21, $c4, $1f, $c4, $1d, $c4
    db $24, $c4, $29, $c6, $24, $c4, $1d, $c4, $65

bank006_6cd6:
    db $26, $c4, $2d, $c4, $32, $c6, $2d, $c4, $26, $c4, $24, $c4, $2d, $c4, $30, $c6
    db $2d, $c4, $24, $c4, $26, $c4, $2d, $c4, $32, $c6, $2d, $c4, $32, $c4, $1c, $c4,
    db $23, $c4, $28, $c8, $65

bank006_6cfb:
    db $26, $c4, $2d, $c4, $32, $c6, $2d
    db $c4, $26, $c4, $24, $c4, $2b, $c4, $30, $c4, $2b, $c4, $34, $c6, $22, $c4, $29
    db $c4, $2e, $c4, $29, $c4, $22, $c6, $1c, $c4, $23, $c4, $28, $c4, $23, $c4, $2c
    db $c6, $1d, $c4, $24, $c4, $29, $c4, $24, $c4, $29, $c6, $1f, $c4, $26, $c4, $2b
    db $c4, $26, $c4, $2f, $c6, $21, $c4, $28, $c4, $2d, $c4, $28, $c4, $30, $c4, $28
    db $c4, $21, $c6, $28, $c6, $2d, $c6, $65

bank006_6d4a:
    db $a1, $98, $a1, $94, $9f, $94, $9d, $96, $a9, $98, $a1, $98, $a1, $94, $9f, $94
    db $9d, $96, $a9, $98, $65

bank006_6d5f:
    db $a6, $99, $a4, $99, $a6, $99, $9c, $99, $65

bank006_6d68:
    db $a6, $99, $a4, $99, $a2, $99, $9c, $99, $9d, $99, $9f, $99, $a1, $99, $a1, $99
    db $65

bank006_6d79:
    db $24, $01, $61
    
bank006_6d7c:
    dw $4f77, $4f8c, $4fa1, $4ffa, $501b, $502c, $504e, $503d
    dw $509f, $50c0, $50e1, $5132, $5161, $5172, $51c1, $5212
    dw $5223, $5272, $5283, $5294, $52e5, $533a, $5351, $53cc
    dw $53fb, $5412, $54f5, $5516, $5571, $55b2, $55d3, $5614
    dw $56c3, $56cc, $56d1, $56e4, $5725, $5770, $57bd, $5808
    dw $5817, $5858, $5899, $5912, $5933, $5954, $5b14, $5a8e
    dw $5aa7, $5ab2, $5ae7, $59b3, $5a1e, $5a49, $5b9f, $5bda
    dw $5c3b, $5c4e, $5c83, $5cc2, $5d23, $5d48, $5d61, $5e0a
    dw $5e67, $5e9c, $5f3b, $5f86, $5fa5, $5fe6, $604c, $6065
    dw $60a0, $60cf, $6110, $6147, $6181, $61c2, $6211, $625a
    dw $6170, $6389, $6367, $6378, $6331, $633e, $641d, $63e8
    dw $63aa, $63bf, $6432, $6484, $64a5, $6451, $6546, $64c4
    dw $6505, $6579, $6582, $658b, $6596, $65a1, $65ea, $65f9
    dw $6672, $6681, $6696, $66f9, $6730, $673f, $67b8, $67c7
    dw $67dc, $683f, $68c8, $68d5, $68f6, $6917, $6948, $6977
    dw $69b8, $69ed, $6a81, $6a20, $6a31, $6a42, $6ab2, $6acf
    dw $6ae6, $6b07, $6b1c, $6b35, $6b4a, $6b99, $6baa, $6bbb
    dw $6c32, $6c4f, $6c70, $6cad, $6cd6, $6cfb, $6d4a, $6d5f
    dw $6d68

; Using the sound component id from the table below as the index for this table, get values stored in address
SoundAddressTable:: ; 0x6e9e
    dw $6fc4, $6feb, $6ff4, $7016, $7059, $70ad, $70bb, $7100
    dw $710c, $712e, $7135, $7152, $7159, $7171, $717a, $718d
    dw $71a0, $71b8, $71d0, $71f7, $720f, $721d, $7249, $728e
    dw $72ce, $730e, $7362, $737f, $73d3, $7427, $7449, $747a
    dw $7523, $7545, $756c, $75a2, $75ba, $75c8, $75de, $75ec
    dw $7640, $7699, $76ed, $7746, $774f, $7756, $779b, $77e0
    dw $7820, $7860, $78d7, $7926, $793e, $7960, $7964, $79ea
    dw $7a02, $7a1a, $7a2d, $7a3b, $7a42, $7a49, $7a50

; A sound is made up of 4 ids
; Go to row number stored in $c17f and read each id
; If id != 0xff, get each id in the data from the address in the table above
bank006_6f1c:
    db $00, $ff, $ff, $ff
    db $01, $ff, $ff, $ff
    db $02, $ff, $ff, $ff
    db $03, $ff, $ff, $ff
    db $04, $05, $ff, $ff
    db $06, $07, $ff, $ff
    db $08, $ff, $ff, $ff
    db $09, $ff, $ff, $ff
    db $0a, $ff, $ff, $ff
    db $0b, $ff, $ff, $ff
    db $0c, $ff, $ff, $ff
    db $0d, $ff, $ff, $ff
    db $0e, $ff, $ff, $ff
    db $0f, $ff, $ff, $ff
    db $10, $11, $ff, $ff
    db $12, $13, $ff, $ff
    db $14, $13, $ff, $ff
    db $15, $ff, $ff, $ff
    db $16, $ff, $ff, $ff
    db $17, $ff, $ff, $ff
    db $17, $18, $ff, $ff
    db $19, $ff, $ff, $ff
    db $1a, $ff, $ff, $ff
    db $1b, $1c, $1d, $1e
    db $1f, $ff, $ff, $ff
    db $20, $ff, $ff, $ff
    db $21, $ff, $ff, $ff
    db $22, $ff, $ff, $ff
    db $23, $24, $ff, $ff
    db $25, $26, $ff, $ff
    db $27, $28, $ff, $ff
    db $29, $2a, $ff, $ff
    db $2b, $ff, $ff, $ff
    db $2c, $ff, $ff, $ff
    db $2d, $2e, $ff, $ff
    db $2f, $30, $ff, $ff
    db $31, $32, $ff, $ff
    db $33, $34, $ff, $ff
    db $33, $35, $ff, $ff
    db $36, $ff, $ff, $ff
    db $37, $38, $39, $ff
    db $3a, $ff, $ff, $ff

Bank006SoundComponentId00Table:: ; 0x6fc4
    db $03
    db $01, $00, $20, $80, $33
    db $01, $00, $80, $80, $24
    db $01, $00, $00, $00, $00
    db $01, $00, $f0, $80, $24
    db $0d, $00, $00, $00, $00
    db $01, $00, $c0, $80, $24
    db $01, $00, $20, $80, $24
    db $fe, $3c, $7a

Bank006SoundComponentId01Table:: ; 0x6feb
    db $01
    db $05, $80, $d0, $87, $c3
    db $fe, $3c, $7a

Bank006SoundComponentId02Table:: ; 0x6ff4
    db $01
    db $04, $80, $90, $86, $c3
    db $03, $80, $a0, $87, $2c
    db $01, $80, $60, $87, $b1
    db $01, $80, $50, $87, $b1
    db $01, $80, $40, $87, $b1
    db $03, $80, $30, $87, $b1
    db $fe, $3c, $7a

Bank006SoundComponentId03Table:: ; 0x7016
    db $01
    db $01, $80, $f0, $86, $cf
    db $01, $80, $a0, $86, $bb
    db $01, $80, $80, $86, $b1
    db $01, $80, $60, $86, $a7
    db $01, $80, $50, $86, $9d
    db $01, $80, $40, $86, $89
    db $01, $80, $30, $86, $75
    db $01, $80, $20, $86, $61
    db $01, $80, $10, $86, $4d
    db $01, $80, $10, $86, $39
    db $02, $80, $10, $86, $25
    db $04, $80, $10, $86, $11
    db $01, $80, $00, $00, $00
    db $ff

Bank006SoundComponentId04Table:: ; 0x7059
    db $03
    db $08, $00, $0b, $80, $61
    db $01, $00, $f0, $80, $44
    db $0a, $00, $52, $80, $61
    db $03, $00, $00, $00, $00
    db $01, $00, $f0, $80, $44
    db $01, $00, $40, $80, $44
    db $01, $00, $20, $80, $44
    db $01, $00, $20, $80, $44
    db $01, $00, $10, $80, $44
    db $03, $00, $10, $80, $44
    db $03, $00, $10, $80, $45
    db $03, $00, $10, $80, $46
    db $03, $00, $10, $80, $47
    db $03, $00, $10, $80, $60
    db $03, $00, $10, $80, $61
    db $06, $00, $10, $80, $62
    db $fe, $3c, $7a

Bank006SoundComponentId05Table:: ; 0x70ad
    db $01
    db $09, $00, $00, $00, $00
    db $0a, $00, $0a, $87, $e3
    db $fe, $3c, $7a

Bank006SoundComponentId06Table:: ; 0x70bb
    db $03
    db $01, $00, $f0, $80, $60
    db $01, $00, $70, $80, $60
    db $01, $00, $30, $80, $60
    db $01, $00, $20, $80, $60
    db $02, $00, $10, $80, $60
    db $03, $00, $00, $00, $00
    db $02, $00, $f0, $80, $61
    db $14, $00, $75, $80, $62
    db $05, $00, $30, $80, $63
    db $02, $00, $00, $00, $00
    db $05, $00, $20, $80, $63
    db $02, $00, $00, $00, $00
    db $05, $00, $10, $80, $63
    db $fe, $3c, $7a

Bank006SoundComponentId07Table:: ; 0x7100
    db $01
    db $09, $00, $00, $00, $00
    db $28, $80, $f1, $80, $50
    db $ff

Bank006SoundComponentId08Table:: ; 0x710c
    db $01
    db $01, $80, $f0, $84, $f9
    db $01, $80, $10, $84, $f9
    db $3c, $00, $00, $00, $00
    db $02, $80, $60, $84, $fa
    db $01, $80, $10, $84, $fa
    db $3c, $00, $00, $00, $00
    db $fe, $0d, $71

Bank006SoundComponentId09Table:: ; 0x712e
    db $01
    db $01, $00, $00, $00, $00
    db $ff

Bank006SoundComponentId0aTable:: ; 0x7135
    db $03
    db $01, $00, $f0, $80, $35
    db $3c, $00, $00, $00, $00
    db $01, $00, $90, $80, $43
    db $01, $00, $10, $80, $43
    db $3c, $00, $00, $00, $00
    db $fe, $36, $71

Bank006SoundComponentId0bTable:: ; 0x7152
    db $03
    db $01, $00, $00, $00, $00
    db $ff

Bank006SoundComponentId0cTable:: ; 0x7159
    db $03
    db $01, $00, $f0, $c0, $44
    db $01, $00, $00, $00, $00
    db $02, $00, $10, $c0, $24
    db $02, $00, $10, $c0, $23
    db $fe, $3c, $7a

Bank006SoundComponentId0dTable:: ; 0x7171
    db $03
    db $01, $00, $f0, $80, $62
    db $fe, $3c, $7a

Bank006SoundComponentId0eTable:: ; 0x717a
    db $03
    db $01, $00, $f0, $80, $61
    db $04, $00, $00, $00, $00
    db $01, $00, $20, $80, $44
    db $fe, $3c, $7a

Bank006SoundComponentId0fTable:: ; 0x718d
    db $03
    db $01, $00, $f0, $80, $62
    db $04, $00, $00, $00, $00
    db $01, $00, $20, $80, $43
    db $fe, $3c, $7a

Bank006SoundComponentId10Table:: ; 0x71a0
    db $01
    db $01, $00, $50, $86, $c5
    db $01, $00, $40, $86, $c5
    db $02, $00, $20, $86, $c5
    db $01, $00, $10, $86, $c5
    db $fe, $3c, $7a

Bank006SoundComponentId11Table:: ; 0x71b8
    db $03
    db $14, $00, $55, $80, $33
    db $04, $00, $10, $80, $34
    db $06, $00, $10, $80, $35
    db $08, $00, $10, $80, $42
    db $fe, $3c, $7a

Bank006SoundComponentId12Table:: ; 0x71d0
    db $03
    db $05, $00, $f1, $80, $42
    db $02, $00, $60, $80, $34
    db $02, $00, $50, $80, $34
    db $02, $00, $40, $80, $34
    db $03, $00, $30, $80, $34
    db $03, $00, $20, $80, $34
    db $04, $00, $10, $80, $35
    db $fe, $3c, $7a

Bank006SoundComponentId13Table:: ; 0x71f7
    db $01
    db $01, $80, $f0, $80, $00
    db $01, $80, $10, $80, $00
    db $01, $80, $f0, $80, $00
    db $01, $80, $10, $80, $00
    db $fe, $3c, $7a

Bank006SoundComponentId14Table:: ; 0x720f
    db $03
    db $02, $00, $f0, $80, $61
    db $50, $00, $37, $80, $62
    db $fe, $3c, $7a

Bank006SoundComponentId15Table:: ; 0x721d
    db $03
    db $02, $00, $10, $80, $23
    db $02, $00, $20, $80, $24
    db $01, $00, $80, $80, $32
    db $01, $00, $c0, $80, $33
    db $01, $00, $40, $80, $34
    db $01, $00, $30, $80, $35
    db $02, $00, $20, $80, $42
    db $03, $00, $10, $80, $43
    db $fe, $3c, $7a

Bank006SoundComponentId16Table:: ; 0x7249
    db $03
    db $01, $00, $1a, $80, $23
    db $01, $00, $1a, $00, $22
    db $01, $00, $1a, $00, $21
    db $01, $00, $1a, $00, $22
    db $01, $00, $1a, $00, $23
    db $01, $00, $1a, $00, $24
    db $01, $00, $1a, $00, $32
    db $01, $00, $1a, $00, $33
    db $01, $00, $81, $80, $34
    db $01, $00, $81, $00, $35
    db $01, $00, $81, $00, $42
    db $01, $00, $81, $00, $43
    db $01, $00, $81, $00, $44
    db $fe, $3c, $7a

Bank006SoundComponentId17Table:: ; 0x728e
    db $01
    db $04, $80, $1c, $81, $64
    db $04, $80, $1c, $01, $62
    db $04, $80, $1c, $01, $5e
    db $04, $80, $1c, $01, $5a
    db $04, $80, $1c, $01, $52
    db $04, $80, $1c, $01, $48
    db $04, $80, $1c, $01, $3e
    db $04, $80, $1c, $01, $34
    db $04, $80, $1c, $01, $2a
    db $04, $80, $1c, $01, $20
    db $04, $80, $1c, $01, $16
    db $14, $80, $a4, $81, $00
    db $fe, $3c, $7a

Bank006SoundComponentId18Table:: ; 0x72ce
    db $00
    db $04, $80, $1c, $81, $96
    db $04, $80, $1c, $01, $94
    db $04, $80, $1c, $01, $90
    db $04, $80, $1c, $01, $8c
    db $04, $80, $1c, $01, $84
    db $04, $80, $1c, $01, $7a
    db $04, $80, $1c, $01, $70
    db $04, $80, $1c, $01, $66
    db $04, $80, $1c, $01, $5c
    db $04, $80, $1c, $01, $52
    db $04, $80, $1c, $01, $48
    db $14, $80, $a4, $81, $32
    db $fe, $3c, $7a

Bank006SoundComponentId19Table:: ; 0x730e
    db $03
    db $01, $00, $2a, $80, $64
    db $01, $00, $2a, $00, $63
    db $01, $00, $2a, $00, $62
    db $01, $00, $2a, $00, $61
    db $01, $00, $2a, $00, $60
    db $01, $00, $2a, $00, $46
    db $01, $00, $2a, $00, $44
    db $04, $00, $f0, $80, $62
    db $01, $00, $80, $80, $43
    db $01, $00, $70, $80, $62
    db $01, $00, $60, $80, $43
    db $01, $00, $50, $80, $62
    db $01, $00, $40, $80, $43
    db $01, $00, $30, $80, $62
    db $01, $00, $20, $80, $43
    db $01, $00, $10, $80, $62
    db $fe, $3c, $7a

Bank006SoundComponentId1aTable:: ; 0x7362
    db $03
    db $01, $00, $b0, $80, $35
    db $01, $00, $20, $80, $33
    db $01, $00, $90, $80, $42
    db $01, $00, $10, $80, $23
    db $01, $00, $90, $80, $23
    db $fe, $3c, $7a

Bank006SoundComponentId1bTable:: ; 0x737f
    db $00
    db $04, $40, $10, $85, $ce
    db $05, $40, $20, $85, $d0
    db $06, $40, $30, $85, $d3
    db $07, $40, $40, $85, $d7
    db $07, $40, $50, $85, $db
    db $07, $40, $60, $85, $df
    db $07, $40, $70, $85, $e3
    db $07, $40, $80, $85, $e6
    db $07, $40, $90, $85, $ea
    db $07, $40, $a0, $85, $ee
    db $07, $40, $b0, $85, $f2
    db $07, $40, $c0, $85, $f6
    db $07, $40, $d0, $85, $fa
    db $07, $40, $e0, $85, $ff
    db $07, $40, $f0, $86, $0c
    db $78, $40, $f7, $86, $0c
    db $fe, $3c, $7a

Bank006SoundComponentId1cTable:: ; 0x73d3
    db $01
    db $04, $40, $10, $85, $ca
    db $05, $40, $20, $85, $cc
    db $06, $40, $30, $85, $cf
    db $07, $40, $40, $85, $d3
    db $07, $40, $50, $85, $d7
    db $07, $40, $60, $85, $db
    db $07, $40, $70, $85, $df
    db $07, $40, $80, $85, $e2
    db $07, $40, $90, $85, $e6
    db $07, $40, $a0, $85, $ea
    db $07, $40, $b0, $85, $ee
    db $07, $40, $c0, $85, $f2
    db $07, $40, $d0, $85, $f6
    db $07, $40, $e0, $85, $fb
    db $07, $40, $f0, $86, $08
    db $78, $40, $f7, $86, $08
    db $fe, $3c, $7a

Bank006SoundComponentId1dTable:: ; 0x7427
    db $02
    db $0c, $00, $60, $85, $12
    db $0c, $00, $40, $85, $12
    db $0c, $00, $20, $85, $12
    db $78, $00, $20, $85, $12
    db $18, $00, $40, $85, $12
    db $18, $00, $60, $85, $12
    db $fe, $3c, $7a

Bank006SoundComponentId1eTable:: ; 0x7449
    db $03
    db $14, $00, $10, $80, $46
    db $14, $00, $20, $80, $44
    db $14, $00, $30, $80, $42
    db $14, $00, $30, $80, $34
    db $14, $00, $20, $80, $32
    db $14, $00, $30, $80, $23
    db $14, $00, $20, $80, $21
    db $14, $00, $10, $80, $23
    db $14, $00, $10, $80, $32
    db $fe, $3c, $7a

Bank006SoundComponentId1fTable:: ; 0x747a
    db $03
    db $01, $00, $10, $80, $05
    db $01, $00, $10, $80, $06
    db $01, $00, $20, $80, $07
    db $01, $00, $20, $80, $14
    db $01, $00, $20, $80, $20
    db $01, $00, $30, $80, $21
    db $01, $00, $40, $80, $22
    db $01, $00, $70, $80, $23
    db $01, $00, $40, $80, $24
    db $01, $00, $40, $80, $32
    db $01, $00, $50, $80, $32
    db $01, $00, $50, $80, $32
    db $01, $00, $50, $80, $21
    db $01, $00, $60, $80, $23
    db $01, $00, $40, $80, $24
    db $01, $00, $30, $80, $24
    db $01, $00, $10, $80, $24
    db $01, $00, $10, $80, $24
    db $01, $00, $10, $80, $24
    db $02, $00, $20, $80, $20
    db $02, $00, $20, $80, $23
    db $02, $00, $60, $80, $20
    db $01, $00, $20, $80, $23
    db $01, $00, $20, $80, $20
    db $01, $00, $20, $80, $23
    db $01, $00, $60, $80, $20
    db $01, $00, $20, $80, $23
    db $01, $00, $50, $80, $20
    db $01, $00, $20, $80, $23
    db $01, $00, $20, $80, $20
    db $01, $00, $20, $80, $23
    db $01, $00, $20, $80, $20
    db $01, $00, $20, $80, $23
    db $fe, $3c, $7a

Bank006SoundComponentId20Table:: ; 0x7523
    db $03
    db $01, $00, $80, $80, $21
    db $01, $00, $20, $80, $14
    db $01, $00, $00, $00, $00
    db $01, $00, $f0, $80, $22
    db $01, $00, $00, $00, $00
    db $01, $00, $c0, $80, $07
    db $fe, $3c, $7a

Bank006SoundComponentId21Table:: ; 0x7545
    db $03
    db $01, $00, $60, $80, $21
    db $01, $00, $00, $00, $00
    db $01, $00, $b0, $80, $21
    db $01, $00, $30, $80, $21
    db $04, $00, $00, $00, $00
    db $01, $00, $f0, $80, $32
    db $01, $00, $60, $80, $32
    db $fe, $3c, $7a

Bank006SoundComponentId22Table:: ; 0x756c
    db $03
    db $01, $00, $30, $80, $05
    db $01, $00, $c0, $80, $21
    db $01, $00, $30, $80, $06
    db $01, $00, $c0, $80, $22
    db $01, $00, $30, $80, $07
    db $01, $00, $c0, $80, $23
    db $01, $00, $30, $80, $14
    db $01, $00, $c0, $80, $24
    db $05, $00, $00, $00, $00
    db $01, $00, $f1, $80, $23
    db $fe, $3c, $7a

Bank006SoundComponentId23Table:: ; 0x75a2
    db $03
    db $01, $00, $f0, $80, $44
    db $01, $00, $20, $80, $44
    db $03, $00, $f1, $80, $47
    db $50, $00, $67, $80, $46
    db $fe, $3c, $7a

Bank006SoundComponentId24Table:: ; 0x75ba
    db $01
    db $02, $80, $f0, $80, $9d
    db $02, $80, $45, $80, $9d
    db $fe, $3c, $7a

Bank006SoundComponentId25Table:: ; 0x75c8
    db $03
    db $01, $00, $f0, $80, $23
    db $01, $00, $20, $80, $23
    db $03, $00, $f1, $80, $61
    db $28, $00, $65, $80, $61
    db $ff

Bank006SoundComponentId26Table:: ; 0x75de
    db $01
    db $02, $80, $f0, $80, $9d
    db $02, $80, $44, $80, $9d
    db $fe, $3c, $7a

Bank006SoundComponentId27Table:: ; 0x75ec
    db $00
    db $01, $00, $10, $85, $14
    db $02, $40, $20, $85, $28
    db $02, $80, $40, $85, $3c
    db $02, $c0, $80, $85, $50
    db $02, $80, $c0, $85, $64
    db $02, $40, $b0, $85, $50
    db $02, $00, $a0, $85, $3c
    db $02, $40, $90, $85, $28
    db $02, $80, $80, $85, $14
    db $02, $c0, $70, $85, $00
    db $02, $80, $60, $84, $dc
    db $02, $40, $50, $84, $c8
    db $02, $00, $40, $84, $b4
    db $02, $40, $30, $84, $a0
    db $02, $80, $20, $84, $8c
    db $02, $c0, $10, $84, $78
    db $fe, $3c, $7a

Bank006SoundComponentId28Table:: ; 0x7640
    db $01
    db $04, $00, $00, $00, $00
    db $01, $00, $10, $85, $18
    db $02, $40, $20, $85, $2c
    db $02, $80, $40, $85, $40
    db $02, $c0, $80, $85, $54
    db $02, $80, $c0, $85, $68
    db $02, $40, $b0, $85, $54
    db $02, $00, $a0, $85, $40
    db $02, $40, $90, $85, $2c
    db $02, $80, $80, $85, $18
    db $02, $c0, $70, $85, $04
    db $02, $80, $60, $84, $e0
    db $02, $40, $50, $84, $cc
    db $02, $00, $40, $84, $b8
    db $02, $40, $30, $84, $a4
    db $02, $80, $20, $84, $90
    db $02, $c0, $10, $84, $7c
    db $fe, $3c, $7a

Bank006SoundComponentId29Table:: ; 0x7699
    db $00
    db $01, $00, $10, $87, $3c
    db $02, $40, $10, $87, $41
    db $02, $80, $20, $87, $46
    db $02, $c0, $30, $87, $4b
    db $02, $80, $40, $87, $50
    db $02, $40, $50, $87, $4b
    db $02, $00, $50, $87, $46
    db $02, $40, $40, $87, $41
    db $02, $80, $40, $87, $3c
    db $02, $c0, $30, $87, $37
    db $02, $80, $30, $87, $32
    db $02, $40, $20, $87, $2d
    db $02, $00, $20, $87, $28
    db $02, $40, $20, $87, $23
    db $02, $80, $20, $87, $1e
    db $02, $c0, $10, $87, $19
    db $fe, $3c, $7a

Bank006SoundComponentId2aTable:: ; 0x76ed
    db $01
    db $02, $00, $00, $00, $00
    db $01, $00, $10, $87, $40
    db $02, $40, $10, $87, $45
    db $02, $80, $20, $87, $4a
    db $02, $c0, $30, $87, $4f
    db $02, $80, $40, $87, $54
    db $02, $40, $50, $87, $4f
    db $02, $00, $50, $87, $4a
    db $02, $40, $50, $87, $45
    db $02, $80, $40, $87, $40
    db $02, $c0, $40, $87, $3b
    db $02, $80, $30, $87, $36
    db $02, $40, $30, $87, $31
    db $02, $00, $20, $87, $2c
    db $02, $40, $20, $87, $27
    db $02, $80, $20, $87, $22
    db $02, $c0, $10, $87, $1d
    db $fe, $3c, $7a

Bank006SoundComponentId2bTable:: ; 0x7746
    db $03
    db $f0, $00, $50, $80, $62
    db $fe, $47, $77

Bank006SoundComponentId2cTable:: ; 0x774f
    db $03
    db $01, $00, $00, $00, $00
    db $ff

Bank006SoundComponentId2dTable:: ; 0x7756
    db $00
    db $02, $00, $10, $85, $5a
    db $02, $c0, $20, $85, $5b
    db $02, $00, $40, $85, $5c
    db $02, $c0, $80, $85, $5e
    db $02, $00, $c0, $85, $60
    db $02, $c0, $f0, $85, $64
    db $03, $00, $f0, $85, $46
    db $03, $c0, $f0, $85, $28
    db $02, $00, $c0, $85, $28
    db $02, $c0, $90, $85, $50
    db $02, $00, $70, $85, $5a
    db $08, $c0, $60, $85, $64
    db $08, $00, $53, $85, $64
    db $fe, $3c, $7a

Bank006SoundComponentId2eTable:: ; 0x779b
    db $01
    db $02, $c0, $10, $85, $32
    db $02, $c0, $10, $85, $33
    db $02, $c0, $20, $85, $34
    db $02, $c0, $40, $85, $36
    db $02, $c0, $80, $85, $38
    db $02, $c0, $90, $85, $3c
    db $03, $c0, $90, $85, $1e
    db $03, $c0, $90, $85, $00
    db $02, $c0, $80, $85, $00
    db $02, $c0, $60, $85, $28
    db $02, $c0, $40, $85, $32
    db $08, $c0, $50, $85, $3c
    db $08, $c0, $43, $85, $3c
    db $fe, $3c, $7a

Bank006SoundComponentId2fTable:: ; 0x77e0
    db $03
    db $0f, $00, $f2, $80, $46
    db $02, $00, $a0, $80, $61
    db $03, $00, $00, $00, $00
    db $03, $00, $a1, $80, $62
    db $04, $00, $00, $00, $00
    db $05, $00, $61, $80, $63
    db $06, $00, $00, $00, $00
    db $05, $00, $47, $80, $63
    db $0a, $00, $00, $00, $00
    db $03, $00, $27, $80, $62
    db $0c, $00, $00, $00, $00
    db $03, $00, $10, $80, $64
    db $fe, $3c, $7a

Bank006SoundComponentId30Table:: ; 0x7820
    db $01
    db $0f, $80, $f2, $84, $4f
    db $02, $80, $a0, $84, $17
    db $03, $00, $00, $00, $00
    db $03, $80, $a1, $84, $17
    db $04, $00, $00, $00, $00
    db $05, $80, $61, $83, $12
    db $06, $00, $00, $00, $00
    db $05, $80, $43, $83, $9c
    db $0a, $00, $00, $00, $00
    db $03, $80, $27, $82, $78
    db $0c, $00, $00, $00, $00
    db $03, $80, $10, $84, $17
    db $fe, $3c, $7a

Bank006SoundComponentId31Table:: ; 0x7860
    db $01
    db $02, $80, $10, $87, $9b
    db $02, $80, $20, $87, $9c
    db $02, $80, $40, $87, $9d
    db $02, $80, $80, $87, $9c
    db $02, $80, $90, $87, $9b
    db $02, $80, $a0, $87, $9b
    db $02, $80, $10, $87, $e9
    db $02, $80, $40, $87, $e8
    db $02, $80, $c0, $87, $e9
    db $02, $80, $40, $87, $e8
    db $02, $80, $20, $87, $e9
    db $02, $80, $10, $87, $e8
    db $01, $00, $10, $87, $9a
    db $01, $40, $20, $87, $9b
    db $01, $80, $10, $87, $9a
    db $01, $c0, $20, $87, $9b
    db $01, $80, $10, $87, $9a
    db $01, $40, $20, $87, $9b
    db $01, $00, $10, $87, $9a
    db $01, $40, $20, $87, $9b
    db $01, $80, $10, $87, $9a
    db $01, $c0, $20, $87, $9b
    db $0a, $c0, $10, $87, $9b
    db $fe, $3c, $7a

Bank006SoundComponentId32Table:: ; 0x78d7
    db $03
    db $22, $00, $00, $00, $00
    db $01, $00, $f0, $80, $32
    db $01, $00, $00, $00, $00
    db $01, $00, $f0, $80, $35
    db $01, $00, $00, $00, $00
    db $02, $00, $f0, $80, $45
    db $01, $00, $00, $00, $00
    db $01, $00, $f0, $80, $44
    db $02, $00, $80, $80, $45
    db $01, $00, $c0, $80, $44
    db $02, $00, $40, $80, $45
    db $01, $00, $80, $80, $44
    db $02, $00, $20, $80, $45
    db $01, $00, $40, $80, $44
    db $05, $00, $10, $80, $45
    db $fe, $3c, $7a

Bank006SoundComponentId33Table:: ; 0x7926
    db $03
    db $03, $00, $a0, $80, $44
    db $02, $00, $00, $00, $00
    db $0a, $00, $a1, $80, $46
    db $05, $00, $61, $80, $44
    db $fe, $3c, $7a

Bank006SoundComponentId34Table:: ; 0x793e
    db $01
    db $05, $80, $70, $81, $00
    db $05, $80, $50, $81, $0a
    db $05, $80, $70, $81, $14
    db $05, $80, $50, $81, $1e
    db $05, $80, $70, $81, $28
    db $05, $80, $50, $81, $32
    db $fe, $3f, $79

Bank006SoundComponentId35Table:: ; 0x7960
    db $01
    db $fe, $3c, $7a

Bank006SoundComponentId36Table:: ; 0x7964
    db $03
    db $01, $00, $10, $80, $24
    db $01, $00, $20, $80, $32
    db $01, $00, $30, $80, $33
    db $01, $00, $40, $80, $34
    db $03, $00, $f0, $80, $35
    db $01, $00, $30, $80, $35
    db $01, $00, $20, $80, $35
    db $02, $00, $10, $80, $35
    db $0a, $00, $00, $00, $00
    db $05, $00, $20, $80, $46
    db $01, $00, $c0, $80, $33
    db $01, $00, $20, $80, $33
    db $01, $00, $60, $80, $33
    db $02, $00, $f0, $80, $46
    db $01, $00, $80, $80, $44
    db $01, $00, $40, $80, $45
    db $01, $00, $20, $80, $46
    db $04, $00, $10, $80, $47
    db $07, $00, $10, $80, $62
    db $02, $00, $40, $80, $46
    db $07, $00, $10, $80, $62
    db $01, $00, $f0, $80, $34
    db $0c, $00, $10, $80, $47
    db $01, $00, $f0, $80, $35
    db $02, $00, $30, $80, $47
    db $02, $00, $10, $80, $47
    db $fe, $3c, $7a

Bank006SoundComponentId37Table:: ; 0x79ea
    db $00
    db $03, $00, $00, $00, $00
    db $06, $80, $f1, $86, $42
    db $64, $80, $f7, $86, $d7
    db $46, $80, $10, $86, $d7
    db $fe, $3c, $7a

Bank006SoundComponentId38Table:: ; 0x7a02
    db $01
    db $06, $00, $00, $00, $00
    db $06, $80, $f1, $86, $9e
    db $64, $80, $f7, $87, $14
    db $46, $80, $10, $87, $14
    db $fe, $3c, $7a

Bank006SoundComponentId39Table:: ; 0x7a1a
    db $02
    db $28, $00, $20, $84, $84
    db $50, $00, $40, $84, $84
    db $28, $00, $60, $84, $84
    db $fe, $3c, $7a

Bank006SoundComponentId3aTable:: ; 0x7a2d
    db $03
    db $01, $00, $f0, $80, $42
    db $01, $00, $10, $80, $23
    db $fe, $3c, $7a
    
Bank006SoundComponentId3bTable:: ; 0x7a3b
    db $00
    db $01, $00, $00, $00, $00
    db $ff

Bank006SoundComponentId3cTable:: ; 0x7a42
    db $01
    db $01, $00, $00, $00, $00
    db $ff

Bank006SoundComponentId3dTable:: ; 0x7a49
    db $02
    db $01, $00, $00, $00, $00
    db $ff

Bank006SoundComponentId3eTable:: ; 0x7a50
    db $03
    db $01, $00, $00, $00, $00
    db $ff

bank006_7a57:
    ds $05a9, $00
