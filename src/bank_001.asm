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
    call Sound_000_026b
    ld a, [INVENTORY_CURSOR_OPTION]
    sub $e0
    ld [INVENTORY_CURSOR_OPTION], a
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
    call Sound_000_026b
    ld a, [INVENTORY_CURSOR_OPTION]
    sub $e0
    ld [INVENTORY_CURSOR_OPTION], a
    call Call_000_36d2
    ld b, $20
    jp Jump_000_02b2


    xor a
    call Call_000_3728
    xor a
    ld [MENU_CURSOR_OPTION], a
    ; point to first item in inventory
    ld a, $04
    ld [INVENTORY_CURSOR_OPTION], a
    ld a, $28
    ld [$c10c], a
    ld a, $38
    ld [$c10d], a
    ld a, $01
    ld [FADE_TIMER], a
    call Call_000_36d2

jr_001_40c4:
    call GameboyHalt
    call Call_001_4870
    call Call_001_4918
    ld c, $00
    call Call_000_3c2f
    call Call_000_08b9
    call Call_000_08c0
    call Call_001_42d3
    ld a, [FADE_TIMER]
    or a
    call z, Call_000_37e3
    call Call_000_11ad
    call Call_001_4457
    ld a, [FADE_TIMER]
    cp $5e
    ret z

    ld hl, $2f26
    call Call_001_44a7
    jr jr_001_40c4

    ld a, $ff
    call Call_000_3728
    xor a
    ld [MENU_CURSOR_OPTION], a
    ; point to first item in inventory
    ld a, $04
    ld [INVENTORY_CURSOR_OPTION], a
    ld a, $28
    ld [$c10c], a
    ld a, $38
    ld [$c10d], a
    ld a, $01
    ld [FADE_TIMER], a
    call Call_000_36d2
    call Call_000_3f43

jr_001_4119:
    call GameboyHalt
    call Call_001_4870
    call Call_001_4918
    ld c, $ff
    call Call_000_3c2f
    call Call_000_08b9
    call Call_000_08c0
    call Call_000_08c7
    call Call_000_086e
    ld a, [FADE_TIMER]
    or a
    call z, Call_001_414e
    call Call_000_11ad
    call Call_001_4457

Jump_001_4140:
    ld a, [FADE_TIMER]
    cp $5e
    ret z

    ld hl, $2fb2
    call Call_001_44a7
    jr jr_001_4119

Call_001_414e:
    ld a, [INVENTORY_CURSOR_OPTION]
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
    ld a, [PRESSED_BUTTON]
    and $01
    ret z

    ld a, [INVENTORY_CURSOR_OPTION]
    ld [INVENTORY_CURSOR_OPTION_ITEM_INDEX], a
    ld a, $80
    ld [INVENTORY_CURSOR_OPTION], a
    ld a, $02
    call Sound_000_026b
    call Call_000_3f43
    ld b, $10
    jp Jump_000_02b2


Call_001_4193:
    ld a, [PRESSED_BUTTON]
    and $01
    ret z

    ld a, [INVENTORY_CURSOR_OPTION_ITEM_INDEX]
    sub $04
    ld e, a
    ld d, $00
    ld hl, INVENTORY_ITEM_ID_BASE
    add hl, de
    ld e, l
    ld d, h
    ld a, [ITEM_BOX_CURSOR_OPTION]
    ld c, a
    ld b, $00
    ld hl, ITEM_BOX_BASE

Call_001_41b0:
    add hl, bc
    ld a, [de]
    push af
    ld a, [hl]
    ld [de], a
    pop af
    ld [hl], a
    ld a, [INVENTORY_CURSOR_OPTION_ITEM_INDEX]
    ld [INVENTORY_CURSOR_OPTION], a
    call Call_000_3f43
    call Call_000_36d2
    ld a, $02
    call Sound_000_026b
    ld b, $10
    jp Jump_000_02b2


Call_001_41cd:
    ld a, [PRESSED_BUTTON]
    and $02
    ret z

    ld a, $5c
    ld [FADE_TIMER], a
    ret


Call_001_41d9:
    ld a, [PRESSED_BUTTON]
    and $02
    ret z

    ld a, [INVENTORY_CURSOR_OPTION_ITEM_INDEX]
    ld [INVENTORY_CURSOR_OPTION], a
    ld a, $03
    call Sound_000_026b
    call Call_000_3f43
    ld b, $10
    jp Jump_000_02b2


Call_001_41f2:
    ld a, [PRESSED_BUTTON]
    and $20
    ret z

    ld a, [INVENTORY_CURSOR_OPTION]
    and $01
    ret z

    ld a, [INVENTORY_CURSOR_OPTION]
    and $fe
    ld [INVENTORY_CURSOR_OPTION], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


Call_001_420e:
    ld a, [PRESSED_BUTTON]
    and $10
    ret z

    ld a, [INVENTORY_CURSOR_OPTION]
    and $01
    ret nz

    ld a, [INVENTORY_CURSOR_OPTION]
    or $01
    ld [INVENTORY_CURSOR_OPTION], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


Call_001_422a:
    ld a, [PRESSED_BUTTON]
    and $40
    jr z, jr_001_424e

    ld a, [$c110]
    or a
    ret nz

    ld a, $ff
    ld [$c110], a
    ld a, [INVENTORY_CURSOR_OPTION]
    cp $06
    ret c

    sub $02
    ld [INVENTORY_CURSOR_OPTION], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


jr_001_424e:
    xor a
    ld [$c110], a
    ret


Call_001_4253:
    ld a, [PRESSED_BUTTON]
    and $80
    jr z, jr_001_4280

    ld a, [$c111]
    or a
    ret nz

    ld a, $ff
    ld [$c111], a
    ld c, $08
    ld a, [SELECTED_CHARACTER_INDEX]
    or a
    jr z, jr_001_426e

    ld c, $0a

jr_001_426e:
    ld a, [INVENTORY_CURSOR_OPTION]
    cp c
    ret nc

    add $02
    ld [INVENTORY_CURSOR_OPTION], a
    call Call_000_36d2
    ld a, $01
    jp Jump_000_026b


jr_001_4280:
    xor a
    ld [$c111], a
    ret


Call_001_4285:
    ld a, [PRESSED_BUTTON]
    and $40
    jr z, jr_001_42a7

    ld a, [$c110]
    or a
    ret nz

    ld a, $ff
    ld [$c110], a
    ld a, [ITEM_BOX_CURSOR_OPTION]
    dec a
    and $1f
    ld [ITEM_BOX_CURSOR_OPTION], a
    call Call_000_3f43
    ld a, $0e
    jp Jump_000_026b


jr_001_42a7:
    xor a
    ld [$c110], a
    ret


Call_001_42ac:
    ld a, [PRESSED_BUTTON]
    and $80
    jr z, jr_001_42ce

    ld a, [$c111]
    or a
    ret nz

    ld a, $ff
    ld [$c111], a
    ld a, [ITEM_BOX_CURSOR_OPTION]
    inc a
    and $1f
    ld [ITEM_BOX_CURSOR_OPTION], a
    call Call_000_3f43
    ld a, $0e
    jp Jump_000_026b


jr_001_42ce:
    xor a
    ld [$c111], a
    ret


Call_001_42d3:
    ld c, $c0
    ld a, [INVENTORY_CURSOR_OPTION]
    cp $0c
    jr nz, jr_001_42de

    ld c, $49

jr_001_42de:
    ld hl, $c950
    call Call_000_3d85
    call Call_001_4368
    ld a, [SELECTED_FILE_BOOK_INDEX]
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
    ld a, [SELECTED_FILE_DOCUMENT_INDEX]
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

bank01_439a:
    call Call_001_4515
    call Call_001_4488
    call Call_000_37b8
    ld a, $01
    ld [FADE_TIMER], a
    ; Loads intro dialogue at bank 0xfa at the beginning of the game
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

    call GameboyHalt
    ld a, $0c
    ld hl, $4e44
    call Call_000_353c
    pop hl
    push hl
    call Call_000_3da1
    ld b, $80

jr_001_43f4:
    push bc
    call GameboyHalt
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
    call func_rstat
    ld [hl], c
    ld a, $01
    ldh [rVBK], a
    call func_rstat
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


    ld hl, SPRITE_RAM_BASE
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
    ld hl, SPRITE_RAM_BASE
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
    ld a, [FADE_TIMER]
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
    ld [FADE_TIMER], a
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
    ld a, [FADE_TIMER]
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
    ld [FADE_TIMER], a
    cp $5e
    jp nc, Jump_001_4515

    ld a, [ROOM_NUMBER]
    ld l, a
    ld a, [ROOM_NUMBER + 1]
    ld h, a
    add hl, hl
    add hl, hl
    ld de, $71b7
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld a, [ROOM_NUMBER]
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
    call func_rstat
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
    call func_rstat
    ld a, c
    ldh [rOCPS], a
    xor a
    ldh [rOCPD], a
    inc c
    dec b
    jr nz, jr_001_452a

    ret

bank001_4538:
    call Call_001_4515
    call Call_001_4488
    ld a, $20
    ld [FADE_TIMER], a
    ld hl, DeathScreenImageTable
    ld a, $20
    call LoadImageFromTable
    ld a, [PLAYER_CHARACTER_MODEL]
    cp CHARACTER_ID_CHRIS
    jr z, ChrisDeathScreen

    ld hl, $98b4
    ld de, $9906
    ld bc, $0507

jr_001_455b:
    push bc
    push de
    push hl

jr_001_455e:
    call func_rstat
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

ChrisDeathScreen:
    call GameboyHalt
    ld a, [FADE_TIMER]
    cp $5e
    ret z

    ld a, [PRESSED_BUTTON]
    and $09
    jr z, jr_001_45a1

    ld a, [FADE_TIMER]
    or a
    jr z, jr_001_459c

    cp $40
    jr nc, jr_001_45a1

jr_001_459c:
    ld a, $40
    ld [FADE_TIMER], a

jr_001_45a1:
    ld hl, $2f42
    call Call_001_44a7
    jr ChrisDeathScreen

    call Call_001_4389
    ld a, $53
    ld [$c1b9], a
    ld a, $50
    ld [$c1ba], a
    ld a, $41
    ld [$c1bc], a
    ld hl, GAME_VARIABLE_BASE
    ld de, SRAM_VARIABLE_BASE1
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
    ld [FADE_TIMER], a
    ld hl, PauseScreenImageTable
    ld a, $14
    call LoadImageFromTable
    ld hl, $2f50
    call Call_001_44a7

jr_001_45ec:
    call GameboyHalt
    ld a, [PRESSED_BUTTON]
    and $08
    jr nz, jr_001_45ec

jr_001_45f6:
    call GameboyHalt
    ld a, [PRESSED_BUTTON]
    and $08
    jr z, jr_001_45f6

jr_001_4600:
    call GameboyHalt
    ld a, [PRESSED_BUTTON]
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
    ld [FADE_TIMER], a
    call Call_001_4515
    jp Jump_000_0405


    call Call_001_4488
    ld hl, CompanyLogoImageTable
    ld a, $14
    call LoadImageFromTable
    ld a, $20
    ld [FADE_TIMER], a
    ld a, $80
    ld [$c1f2], a

jr_001_4640:
    call GameboyHalt
    ld a, [FADE_TIMER]
    cp $5e
    ret z

    ld a, [$c1f2]
    dec a
    ld [$c1f2], a
    jr nz, jr_001_4657

    ld a, $40
    ld [FADE_TIMER], a

jr_001_4657:
    ld hl, $2f34
    call Call_001_44a7
    jr jr_001_4640

    call Call_001_4515
    call Call_001_4488
    ld a, [DOOR_TRANSITION_TYPE]
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
    ld [CUTSCENE_NUMBER], a
    pop de
    jp Jump_000_0405


jr_001_4694:
    ld a, [DOOR_TRANSITION_TYPE]
    ld hl, Stairs1ImageTable
    cp $7e
    jr c, jr_001_46bd

    ld hl, Stairs2ImageTable
    cp $80
    jr c, jr_001_46bd

    ld hl, Stairs3ImageTable
    cp $82
    jr c, jr_001_46bd

    ld hl, LadderScreenImageTable
    cp $84
    jr c, jr_001_46bd

    ld hl, RopeScreenImageTable
    cp $86
    jr c, jr_001_46bd

    ld hl, LadderScreen2ImageTable

jr_001_46bd:
    ld a, $14
    call LoadImageFromTable
    xor a
    ldh [rVBK], a
    ld hl, $9a40
    ld de, $9800
    ld bc, $01c0
    call LoadTilesetIntoVRAM
    ld a, $01
    ldh [rVBK], a
    ld hl, $9a40
    ld de, $9800
    ld bc, $01c0
    call LoadTilesetIntoVRAM
    xor a
    ldh [rVBK], a
    xor a
    ld [CUTSCENE_MODE], a
    ld a, $20
    ld [FADE_TIMER], a
    ld a, $80
    ld [$c1f2], a

jr_001_46f2:
    call GameboyHalt
    call GameboyHalt
    ld a, [FADE_TIMER]
    cp $5e
    jr z, jr_001_476a

    ld a, [$c1f2]
    dec a
    ld [$c1f2], a
    jr nz, jr_001_470d

    ld a, $40
    ld [FADE_TIMER], a

jr_001_470d:
    ld a, [DOOR_TRANSITION_TYPE]
    and $01
    jr z, jr_001_4729

    ld a, [$c1f2]
    and $0f
    ld e, a
    ld d, $00
    ld hl, $477f
    add hl, de
    ld a, [CUTSCENE_MODE]
    add [hl]
    ld [CUTSCENE_MODE], a
    jr jr_001_473c

jr_001_4729:
    ld a, [$c1f2]
    and $0f
    ld e, a
    ld d, $00
    ld hl, $476f
    add hl, de
    ld a, [CUTSCENE_MODE]
    add [hl]
    ld [CUTSCENE_MODE], a

jr_001_473c:
    ld a, [DOOR_TRANSITION_TYPE]
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
    ld [CUTSCENE_MODE], a
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
    ; begin loading preview scenes
    ld hl, $07ff
    ld a, l
    ld [PREVIEW_SCENE_TIMER], a
    ld a, h
    ld [PREVIEW_SCENE_INDEX], a
    ld a, $20
    ld [FADE_TIMER], a

Jump_001_47a5:
    call GameboyHalt
    ld a, [PREVIEW_SCENE_INDEX]
    add a
    ld l, a
    ld h, $00
    ld de, IntroScreenScenePreview
    add hl, de
    ld a, [hl+]
    ld [ROOM_NUMBER], a
    ld a, [hl+]
    ld [CAMERA_NUMBER], a
    xor a
    ld [ROOM_NUMBER + 1], a
    ld a, [PREVIEW_SCENE_INDEX]
    push af
    ld a, [PREVIEW_SCENE_TIMER]
    push af
    ld a, [PREVIEW_SCENE_TIMER]
    cp $ff
    call z, Call_000_0741
    pop af
    ld [PREVIEW_SCENE_TIMER], a
    pop af
    ld [PREVIEW_SCENE_INDEX], a
    ld a, [PRESSED_BUTTON]
    and $08
    jr z, jr_001_47fa

    ld a, [PREVIEW_SCENE_INDEX]
    or a
    jr nz, jr_001_47f1

    ld a, [PREVIEW_SCENE_TIMER]
    cp $20
    jr nc, jr_001_47f1

    call Call_001_4515
    jp Jump_000_016b


jr_001_47f1:
    xor a

jr_001_47f2:
    ld [PREVIEW_SCENE_INDEX], a
    ld a, $1f
    ld [PREVIEW_SCENE_TIMER], a

jr_001_47fa:
    ld a, [PREVIEW_SCENE_TIMER]
    dec a
    ld [PREVIEW_SCENE_TIMER], a
    cp $ff
    jr nz, jr_001_4813

    ld a, [PREVIEW_SCENE_INDEX]
    dec a
    ld [PREVIEW_SCENE_INDEX], a
    cp $ff
    jr nz, jr_001_4813

    jp Jump_000_016b


jr_001_4813:
    ld a, [PREVIEW_SCENE_TIMER]
    cp $e0
    jr nc, jr_001_4820

    cp $20
    jr c, jr_001_4827

    jr jr_001_4830

jr_001_4820:
    sub $e0
    ld [FADE_TIMER], a
    jr jr_001_4830

jr_001_4827:
    ld c, a
    ld a, $1f
    sub c
    add $40
    ld [FADE_TIMER], a

jr_001_4830:
    call Call_001_44cd
    jp Jump_001_47a5

; when player is idle on intro screen, the game will show some room backgrounds from the game
; first number is room number, second is camera number
IntroScreenScenePreview:: ; 0x4836
    db $1b, $04
    db $21, $02
    db $24, $01
    db $2a, $02
    db $37, $03
    db $57, $00
    db $5d, $01
    db $70, $00

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
    ld a, [PLAYER_HEALTH]
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
    call func_rstat
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
    ld hl, SPRITE_RAM_BASE
    call Call_000_3d85
    ld c, $30
    ld a, [MENU_CURSOR_OPTION]
    or a
    jr z, jr_001_490a

    ld c, $18

jr_001_490a:
    ld a, c
    ld [CURRENT_TILE_INDEX], a
    xor a
    ld [CURRENT_PALETTE_INDEX], a
    ld bc, $0403
    jp Jump_000_3d04


Call_001_4918:
    ld de, $6810
    ld hl, SPRITE_RAM_BASE
    call Call_000_3d85
    ld c, $00
    ld a, [SELECTED_CHARACTER_INDEX]
    or a
    jr z, jr_001_492b

    ld c, $04

jr_001_492b:
    ld a, c
    ld [CURRENT_TILE_INDEX], a
    ld a, $07
    ld [CURRENT_PALETTE_INDEX], a
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
    ld [CURRENT_TILE_INDEX], a
    ld a, $01
    ld [CURRENT_PALETTE_INDEX], a
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
    ld a, [PRESSED_BUTTON]
    and $20
    jr nz, jr_001_4988

    ld a, [PRESSED_BUTTON]
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
    ld hl, INVENTORY_ITEM_ID_BASE
    ; Set Chris max inventory slots to 6
    ld b, $06
    ld a, [PLAYER_CHARACTER_MODEL]
    cp $92
    jr z, jr_001_4a0d

    ; Set Jill's max inventory slots to 8
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
    ld [CUTSCENE_NUMBER], a
    jr jr_001_4a79

jr_001_4a79:
    ld a, [PICKED_ITEM_INDEX]
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
    ld a, [PICKED_ITEM_INDEX]
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
    ld [INVENTORY_FLAG_FILE], a
    ld b, $80
    call Call_000_02b2
    call Call_001_4515
    ret


Jump_001_4ad0:
    ld a, [PICKED_ITEM_INDEX]
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
    ld [INVENTORY_FLAG_MAP], a
    ld b, $80
    call Call_000_02b2
    call Call_001_4515
    ret


Jump_001_4afe:
    ld a, [ROOM_NUMBER]
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

    ld a, [CAMERA_NUMBER]
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
    ld a, [PREVIEW_SCENE_TIMER]
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
    ld a, [PREVIEW_SCENE_TIMER]
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

    ld a, [CAMERA_NUMBER]
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
    ld a, [PREVIEW_SCENE_TIMER]
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
    ld a, [PLAYER_POS_ROTATE]
    cp $0d
    ret nc

    cp $04
    ret c

    ld a, [PLAYER_POS_Y_VAR + 1]
    cp $01
    ret nz

    ld a, [PLAYER_POS_Y_VAR]
    cp $40
    ret c

    ld a, [PLAYER_POS_X_VAR + 1]
    cp $ff
    jr z, jr_001_4bea

    ld a, [PLAYER_POS_X_VAR]
    cp $70
    ret nc

    jr jr_001_4bf0

jr_001_4bea:
    ld a, [PLAYER_POS_X_VAR]
    cp $b0
    ret c

jr_001_4bf0:
    ld a, [PLAYER_STATE]
    cp $05
    ret nz

    ld a, [PLAYER_ANIM_FRAME]
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
    ld a, [ROOM_NUMBER]
    ld l, a
    ld a, [ROOM_NUMBER + 1]
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
    ld [PREVIEW_SCENE_TIMER], a
    call Call_000_0942
    jp Jump_001_4afe


    ld a, [PLAYER_POS_Y_VAR]
    ld e, a
    ld a, [PLAYER_POS_Y_VAR + 1]
    ld d, a
    call Call_001_7135
    ld c, e
    ld b, d
    ld a, [PLAYER_POS_X_VAR]
    ld e, a
    ld a, [PLAYER_POS_X_VAR + 1]
    ld d, a
    call Call_001_7135
    ld a, [$c1f4]
    cp ITEM_ID_SHEET_MUSIC
    jp z, Jump_001_5554

    cp ITEM_ID_FIRST_AID_SPRAY ; first aid spray
    jp z, InventoryUseFirstAidSpray

    cp ITEM_ID_CHEMICAL
    jp z, Jump_001_55d3

    cp ITEM_ID_GOLD_EMBLEM
    jp z, Jump_001_5459

    cp ITEM_ID_WOOD_EMBLEM
    jp z, Jump_001_54f1

    cp ITEM_ID_BLUE_JEWEL
    jp z, Jump_001_53eb

    cp ITEM_ID_RED_JEWEL
    jp z, Jump_001_5422

    cp ITEM_ID_GREEN_HERB
    jp z, InventoryUseGreenHerb

    cp ITEM_ID_RED_HERB
    jp z, InventoryUseRedHerb

    cp ITEM_ID_BLUE_HERB
    jp z, InventoryUseBlueHerb

    cp ITEM_ID_STAR_CREST
    jp z, Jump_001_52d9

    cp ITEM_ID_MOON_CREST
    jp z, Jump_001_52d9

    cp ITEM_ID_SUN_CREST
    jp z, Jump_001_52d9

    cp ITEM_ID_WIND_CREST
    jp z, Jump_001_52d9

    cp ITEM_ID_CRANK
    jp z, Jump_001_5277

    cp ITEM_ID_RED_BOOK
    jp z, Jump_001_537d

    cp ITEM_ID_BATTERY
    jp z, Jump_001_523a

    cp ITEM_ID_FLAMETHROWER
    jp z, Jump_001_51d5

    cp $56
    jp z, Jump_001_50c2

    cp ITEM_ID_MO_DISK
    jp z, Jump_001_4fed

    cp $15
    jp z, Jump_001_4fed

    cp $1b
    jp z, Jump_001_4fed

    cp $20
    jp z, Jump_001_4fa9

    cp ITEM_ID_BROKEN_SHOTGUN
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
    ld a, [ROOM_NUMBER]
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
    ld a, [PLAYER_POS_ROTATE]
    cp $10
    ret nc

    ld [hl], $00
    ld a, $ff
    ld [$c49c], a
    jp Jump_001_5623


Jump_001_4e56:
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
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
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
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
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
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
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
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

    ld a, [PLAYER_POS_ROTATE]
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
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
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
    ld a, [SELECTED_CHARACTER_INDEX]
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
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
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
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
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

    ld a, [PLAYER_POS_ROTATE]
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

    ld a, [PLAYER_POS_ROTATE]
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
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
    cp $10
    ret nc

    ld a, [$c2e2]
    or a
    ret nz

    ld a, $05
    ld [CAMERA_NUMBER], a
    push hl
    call GameboyHalt
    call Call_001_4515
    call Call_000_0741
    call Call_000_06d6
    ld a, $01
    ld [FADE_TIMER], a
    call Call_001_44cd
    pop hl
    ld b, $30
    call Call_000_02b2
    ld b, $04

jr_001_5117:
    push bc
    push hl
    call GameboyHalt
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

    ld a, [PLAYER_POS_ROTATE]
    cp $08
    jp c, Jump_001_5150

    cp $18
    ret c

Jump_001_5150:
    ld a, [$c2e1]
    or a
    ret nz

    ld a, $05
    ld [CAMERA_NUMBER], a
    push hl
    call GameboyHalt
    call Call_001_4515
    call Call_000_0741
    call Call_000_06d6
    ld a, $01
    ld [FADE_TIMER], a
    call Call_001_44cd
    pop hl
    ld b, $30
    call Call_000_02b2
    ld b, $02

jr_001_5177:
    push bc
    push hl
    call GameboyHalt
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
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
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

    ld a, [PLAYER_POS_ROTATE]
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
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
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
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
    cp $08
    ret c

    cp $15
    ret nc

    ld a, $03
    ld [CAMERA_NUMBER], a
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
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
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
    ld [CAMERA_NUMBER], a
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
    ld [CAMERA_NUMBER], a
    call Call_000_0641
    call Call_000_0c2e
    jp Jump_001_5623


Jump_001_537d:
    ld a, [$c49d]
    or a
    ret


    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
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
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
    cp $08
    jp c, Jump_001_5412

    cp $18
    ret c

Jump_001_5412:
    ld a, $00
    ld [hl], a
    ld a, $89
    ld [CUTSCENE_NUMBER], a
    ld a, $ff
    ld [$c527], a
    jp Jump_001_5623


Jump_001_5422:
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
    cp $08
    jp c, Jump_001_5449

    cp $18
    ret c

Jump_001_5449:
    ld a, $00
    ld [hl], a
    ld a, $8a
    ld [CUTSCENE_NUMBER], a
    ld a, $ff
    ld [$c528], a
    jp Jump_001_5623


Jump_001_5459:
    ld a, [ROOM_NUMBER]
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
    ld a, [PLAYER_POS_ROTATE]
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
    ld a, [PLAYER_POS_ROTATE]
    cp $10
    ret nc

    ld a, [PICKED_WOOD_EMBLEM]
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
    ld a, [ROOM_NUMBER]
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
    ld a, [PLAYER_POS_ROTATE]
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
    ld a, [PLAYER_POS_ROTATE]
    cp $10
    ret nc

    ld a, [$c52f]
    or a
    ret nz

    ld a, $ff
    ld [PICKED_WOOD_EMBLEM], a
    ld a, $00
    ld [hl], a
    jp Jump_001_5623


Jump_001_5554:
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
    cp $15
    ret nc

    cp $0c
    ret c

    ld a, [PLAYER_CHARACTER_MODEL]
    cp $92
    jr z, jr_001_5587

    ld a, $00
    ld [hl], a
    ld a, $ff
    ld [$c485], a
    jp Jump_001_5623


jr_001_5587:
    ld a, $08
    ld [CUTSCENE_NUMBER], a
    ld a, $00
    ld [hl], a
    ld a, $ff
    ld [FLAG_PLAYER_CUTSCENE_c484], a
    jp Jump_001_5623


InventoryUseFirstAidSpray:
    ; remove item from inventory
    ld a, $00
    ld [hl], a

    ; restore player health
    ld a, $20
    ld [PLAYER_HEALTH], a
    jp Jump_001_5634


InventoryUseGreenHerb:
    ld a, $00
    ld [hl], a
    ld c, $0c
    call AddHealthToPlayer
    jp Jump_001_5634


InventoryUseRedHerb:
    ld a, $00
    ld [hl], a
    ld c, $0c
    call AddHealthToPlayer
    jp Jump_001_5634


InventoryUseBlueHerb:
    ld a, $00
    ld [hl], a
    ld c, $0c
    call AddHealthToPlayer
    jp Jump_001_5634


AddHealthToPlayer:
    ld a, [PLAYER_HEALTH]
    add c
    ld [PLAYER_HEALTH], a
    cp $21
    ret c

    ld a, $20
    ld [PLAYER_HEALTH], a
    ret


Jump_001_55d3:
    ld a, [ROOM_NUMBER]
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

    ld a, [PLAYER_POS_ROTATE]
    cp $18
    jp nc, Jump_001_55f3

    cp $09
    ret nc

Jump_001_55f3:
    push hl
    ld a, $04
    ld [CAMERA_NUMBER], a
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
    ld [FADE_TIMER], a
    jp Jump_000_0405


Jump_001_5634:
    ld a, $04
    ld [INVENTORY_CURSOR_OPTION], a
    call Call_000_34a9
    call Call_000_3667
    call Call_000_34f7
    call Call_000_08c0
    ld b, $10
    jp Jump_000_02b2


    ld hl, $0038
    ld de, $002e
    ld bc, $0041
    ld a, [ROOM_NUMBER]
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
    ld a, [CAMERA_NUMBER]
    cp $01
    jr nz, jr_001_56ce

    jr jr_001_56cb

Jump_001_568a:
    ld a, [CAMERA_NUMBER]
    cp $06
    jr nz, jr_001_56ce

    jr jr_001_56cb

Jump_001_5693:
    ld a, [CAMERA_NUMBER]
    or a
    jr z, jr_001_569d

    cp $02
    jr nz, jr_001_56ce

jr_001_569d:
    jr jr_001_56cb

Jump_001_569f:
    ld a, [CAMERA_NUMBER]
    or a
    jr nz, jr_001_56ce

    jr jr_001_56cb

Jump_001_56a7:
    ld a, [CAMERA_NUMBER]
    cp $04
    jr nz, jr_001_56ce

    jr jr_001_56cb

Jump_001_56b0:
    ld a, [CAMERA_NUMBER]
    cp $05
    jr nz, jr_001_56ce

    jr jr_001_56cb

Jump_001_56b9:
    ld a, [CAMERA_NUMBER]
    cp $04
    jr nz, jr_001_56ce

    jr jr_001_56cb

Jump_001_56c2:
    ld a, [CAMERA_NUMBER]
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

    ld hl, SPRITE_RAM_BASE
    call Call_000_3d85
    ld a, [MENU_CURSOR_OPTION]
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

bank001_5701:
    db $01, $06
    db "LOAD  GAME", $00
    db $01, $06
    db "SAVE  GAME", $00
save_name_chris: ; 0x571b
    db "CHRIS "
save_name_jill: ; 0x5721
    db "JILL  "
    db "EMPTY ", $00
save_name_location_entrance: ; 0x572e
    db "MHALL 1F "
save_name_location_floor: ; 0x5737
    db "STOR1 1F "
    db "STOR2 1F "
    db "STOR3 1F "
    db "STOR4 1F "
bank001_575b:
    db "01 02 03 04 05 06 07 08 09 10 11 12 13 14 15 16 17 18 19 20 "
save_count_str:
    dw $575b
    dw $575e
    dw $5761
    dw $5764
    dw $5767
    dw $576a
    dw $576d
    dw $5770
    dw $5773
    dw $5776
    dw $5779
    dw $577c
    dw $577f
    dw $5782
    dw $5785
    dw $5788
    dw $578b
    dw $578e
    dw $5791
    dw $5794
    
    db $0c, $04
    db "DO NOT LOAD", $00
    db $0c, $04
    db "DO NOT SAVE", $00

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
    call func_rstat
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
    call Sound_000_026b
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
    ld de, SRAM_SAVE_LOCATION_BASE
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
    ld hl, SRAM_VARIABLE_BASE1
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
    ld a, [MENU_CURSOR_OPTION]
    add a
    add a
    ld e, a
    ld d, $00
    ld hl, $bf00
    add hl, de
    call Call_001_4389
    ld [hl], $ff
    ld a, [MENU_CURSOR_OPTION]
    add a
    add a
    ld c, a
    add a
    add a
    add c
    ld c, a
    ld b, $00
    ld hl, SRAM_SAVE_LOCATION_BASE
    add hl, bc
    push hl
    ld de, save_name_chris
    ld a, [PLAYER_CHARACTER_MODEL]
    cp CHARACTER_ID_CHRIS
    jr z, jr_001_593a

    ld de, save_name_jill

jr_001_593a:
    ld bc, $0006
    call memcpy_bank00
    ld de, save_name_location_entrance
    ld a, [ROOM_NUMBER]
    or a
    jr z, jr_001_594c

    ld de, save_name_location_floor

jr_001_594c:
    ld bc, $0009
    call memcpy_bank00
    push hl
    ld a, [PLAYER_SAVE_COUNT]
    add a
    ld e, a
    ld d, $00
    ld hl, save_count_str
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    ; increment save count by 1
    ld a, [PLAYER_SAVE_COUNT]
    inc a
    ld [PLAYER_SAVE_COUNT], a
    pop hl
    ld bc, $0003
    call memcpy_bank00
    ld [hl], $00
    ld a, [MENU_CURSOR_OPTION]
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
    ld de, SRAM_VARIABLE_BASE2 
    ld a, [MENU_CURSOR_OPTION]
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
    ld hl, GAME_VARIABLE_BASE
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


    ld a, [MENU_CURSOR_OPTION]
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

    ld de, SRAM_VARIABLE_BASE2 
    ld a, [MENU_CURSOR_OPTION]
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
    ld hl, GAME_VARIABLE_BASE
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
    ld [CAMERA_NUMBER], a
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
    ld a, [PRESSED_BUTTON]
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
    ld a, [PRESSED_BUTTON]
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
    ld a, [PRESSED_BUTTON]
    and $03
    jr z, jr_001_5af3

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    ld hl, INVENTORY_ITEM_ID_BASE
    ld b, $06
    ld a, [SELECTED_CHARACTER_INDEX]
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
    ld a, [SELECTED_CHARACTER_INDEX]
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
    ld [CAMERA_NUMBER], a
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
    ld [CAMERA_NUMBER], a
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
    ld [CAMERA_NUMBER], a
    call Call_000_0641
    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $4027
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    jp Jump_000_0c50


Jump_001_5bbb:
    ld a, [ROOM_NUMBER]
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
    ld a, [PRESSED_BUTTON]
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
    ld [CAMERA_NUMBER], a
    call Call_000_0641
    ld hl, $4000
    call Call_000_0c0a

jr_001_5d86:
    push hl
    call Call_001_4975
    pop hl
    ld a, [PRESSED_BUTTON]
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
    ld [CAMERA_NUMBER], a
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
    ld [CAMERA_NUMBER], a
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
    ld [PLAYER_STATE], a
    xor a
    ld [PLAYER_ANIM_FRAME], a
    call Call_000_06d6
    ld b, $80
    call Call_000_02b2
    ld hl, $409c
    call Call_001_6e21
    ld a, $00
    ld [PLAYER_STATE], a
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
    ld [CAMERA_NUMBER], a
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
    ld [FADE_TIMER], a
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
    ld [CAMERA_NUMBER], a
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
    ld [FADE_TIMER], a
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
    ld a, [CAMERA_NUMBER]
    cp $01
    jr z, jr_001_604e

    ld a, $03
    ld [CAMERA_NUMBER], a
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
    ld a, [PRESSED_BUTTON]
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
    ld a, [PRESSED_BUTTON]
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
    ld a, [PRESSED_BUTTON]
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
    ld a, [PRESSED_BUTTON]
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
    ld a, [PRESSED_BUTTON]
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
    ld hl, INVENTORY_ITEM_ID_BASE
    ld b, $06
    ld a, [SELECTED_CHARACTER_INDEX]
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
    ld a, [PRESSED_BUTTON]
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
    ld a, [PRESSED_BUTTON]
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
    ld a, [PRESSED_BUTTON]
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
    ld [CAMERA_NUMBER], a
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
    ld [CAMERA_NUMBER], a
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
    ld [CAMERA_NUMBER], a
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
    ld a, [PRESSED_BUTTON]
    and $03
    jr z, jr_001_637f

    call Call_000_0c20
    ld a, [$c1fa]
    or a
    jp nz, Jump_000_0c50

    call Call_000_0c50
    ld a, $28
    call Sound_000_026b
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
    ld [FADE_TIMER], a
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
    ld [FADE_TIMER], a
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
    ld [CAMERA_NUMBER], a
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
    ld a, [PRESSED_BUTTON]
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
    ld a, [PRESSED_BUTTON]
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
    ld a, [PRESSED_BUTTON]
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
    call GameboyHalt
    call Call_001_4975
    ld a, [PRESSED_BUTTON]
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
    ld a, [ROOM_NUMBER]
    ld l, a
    ld a, [ROOM_NUMBER + 1]
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
    ld [FADE_TIMER], a
    jp Jump_000_0c50


Call_001_682b:
    ld hl, INVENTORY_ITEM_ID_BASE
    ld b, $06
    ld a, [SELECTED_CHARACTER_INDEX]
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
    jp z, MessageShowTypewriter

    ret


Jump_001_6886:
    ld hl, $402a
    jp Jump_001_6e21


Jump_001_688c:
    ld a, [SELECTED_CHARACTER_INDEX]
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
    ld [CAMERA_NUMBER], a
    call Call_000_0641
    call Call_000_0c50
    call Call_000_0c20
    ld hl, $4108
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, [SELECTED_CHARACTER_INDEX]
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
    ld a, [ROOM_NUMBER]
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

    ld a, [SELECTED_CHARACTER_INDEX]
    or a
    jp z, Jump_001_69db

    call Call_000_0c20
    call Call_000_0c4c
    ld hl, $40ba
    call Call_000_0c0a
    call Call_000_0c2e
    call Call_000_0c20
    ld a, $10
    ld [CUTSCENE_NUMBER], a
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
    ld a, [SELECTED_CHARACTER_INDEX]
    or a
    jr z, jr_001_6948

    xor a
    ld [$c2e0], a
    ld a, $05
    ld [CAMERA_NUMBER], a
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
    ld a, [PRESSED_BUTTON]
    and $01
    jr z, jr_001_69a4

jr_001_69ae:
    ld a, [PRESSED_BUTTON]
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


MessageShowTypewriter:
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
    call GameboyHalt
    call Call_001_4975
    ld a, [PRESSED_BUTTON]
    and $03
    jr z, jr_001_6a26

    ld a, [$c1fa]
    or a
    jp nz, Jump_001_6a3f

    ld a, $02
    ld [GAME_STATE], a

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
    call GameboyHalt
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
    ld a, [PRESSED_BUTTON]
    and $02
    jr z, jr_001_6a8d

    call Call_001_4515
    call Call_000_37b8
    ret


Call_001_6ac6:
    call Call_000_085e
    ld a, [PRESSED_BUTTON]
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
    call Sound_000_026b
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
    call GameboyHalt
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
    ld a, [PRESSED_BUTTON]
    and $01
    jr nz, jr_001_6cb6

    ld a, [PRESSED_BUTTON]
    and $02
    jr z, jr_001_6c70

jr_001_6cab:
    call GameboyHalt
    ld a, [PRESSED_BUTTON]
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
    call GameboyHalt
    ld a, [PRESSED_BUTTON]
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
    call GameboyHalt
    ld a, [PRESSED_BUTTON]
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
    call GameboyHalt
    ld a, [PRESSED_BUTTON]
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
    call GameboyHalt
    call Call_000_0925
    call Call_000_092c
    call Call_000_11ad
    call Call_001_4457
    ld a, [PRESSED_BUTTON]
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
    call Sound_000_026b
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
    ld [FADE_TIMER], a
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

    call GameboyHalt
    ld a, $0c
    ld hl, $4e44
    call Call_000_353c
    ld hl, $4877
    ld a, [SELECTED_FILE_BOOK_INDEX] ; file book index 
    ld c, a
    add a
    add a
    ld b, a
    add a
    add b
    add c
    ld c, a
    ; offset is 3 * index
    ld a, [SELECTED_FILE_DOCUMENT_INDEX] ; selected file index in file book
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
    ld a, [PRESSED_BUTTON]
    and $03
    jr z, jr_001_6e9b

jr_001_6ea5:
    ld a, [PRESSED_BUTTON]
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

; First value is address in bank 1, which contains a list of tilemap addresses
; Second value is palette address in bank 3
TilemapPaletteTable:: ; 0x71b5
    dw $7385, $4000
    dw $739a, $4080
    dw $73af, $4100
    dw $73c1, $4180
    dw $73d6, $4200
    dw $73ee, $4280
    dw $7400, $4300
    dw $7412, $4380
    dw $742a, $4400
    dw $743c, $4480
    dw $7448, $4500
    dw $745d, $4580
    dw $746c, $4600
    dw $7478, $4680
    dw $7484, $4700
    dw $7490, $4780
    dw $749f, $4800
    dw $74ae, $4880
    dw $74ba, $4900
    dw $74c6, $4980
    dw $74d5, $4a00
    dw $74db, $4a80
    dw $74e4, $4b00
    dw $74ed, $4b80
    dw $74f3, $4c00
    dw $74f9, $4c80
    dw $7505, $4d00
    dw $7517, $4d80
    dw $7529, $4e00
    dw $753b, $4e80
    dw $754a, $4f00
    dw $755c, $4f80
    dw $7565, $5000
    dw $757a, $5080
    dw $7583, $5100
    dw $758c, $5180
    dw $7598, $5280
    dw $75ad, $5300
    dw $75bc, $5380
    dw $75c5, $5400
    dw $75d4, $5480
    dw $75e3, $5500
    dw $75ec, $5580
    dw $75f8, $5600
    dw $7604, $5680
    dw $7619, $5700
    dw $7625, $5780
    dw $762b, $5800
    dw $763a, $5880
    dw $7646, $5900
    dw $7658, $5980
    dw $7670, $5a00
    dw $7676, $5a80
    dw $767f, $5b00
    dw $7697, $5b80
    dw $76ac, $5c00
    dw $76c4, $5c80
    dw $76dc, $5d00
    dw $76f4, $5d80
    dw $7706, $5e00
    dw $7712, $5e80
    dw $772a, $5f00
    dw $7742, $5f80
    dw $775a, $6000
    dw $776f, $6080
    dw $777e, $6100
    dw $7796, $6180
    dw $7799, $6200
    dw $77ab, $6280
    dw $77c3, $6300
    dw $77cf, $6380
    dw $77de, $6400
    dw $77f0, $6480
    dw $77ff, $6500
    dw $7805, $6580
    dw $780e, $6600
    dw $7820, $6680
    dw $7838, $6700
    dw $7847, $6780
    dw $7859, $6800
    dw $7871, $6880
    dw $7886, $6900
    dw $788c, $6980
    dw $78a4, $6a00
    dw $78b0, $6a80
    dw $78c5, $6b00
    dw $78cb, $6b80
    dw $78e0, $6c00
    dw $78e6, $6c80
    dw $78f5, $6d00
    dw $790d, $6d80
    dw $791c, $6e00
    dw $7928, $6e80
    dw $793a, $6f00
    dw $7949, $6f80
    dw $7961, $7000
    dw $7970, $7080
    dw $7988, $7100
    dw $7997, $7180
    dw $79a9, $7200
    dw $79b8, $7280
    dw $79c4, $7300
    dw $79d6, $7380
    dw $79d9, $7400
    dw $79df, $7480
    dw $79f7, $7500
    dw $7a0f, $7580
    dw $7a21, $7600
    dw $7a24, $7680
    dw $7a33, $7700
    dw $7a48, $7780
    dw $7a60, $7800
    dw $7a78, $7880
    dw $7a7e, $7900
    dw $7a84, $7980
    dw $7a87, $7a00

TilemapTable:: ; 0x7385
    db $10
    dw $4000
    db $10
    dw $4b60
    db $10
    dw $6020
    db $10
    dw $7540
    db $11
    dw $4560
    db $11
    dw $5460
    db $11
    dw $6990
    db $11
    dw $7d40
    db $12
    dw $52f0
    db $12
    dw $6790
    db $12
    dw $7bb0
    db $13
    dw $5050
    db $13
    dw $61e0
    db $13
    dw $7210
    db $14
    dw $4060
    db $14
    dw $5150
    db $14
    dw $6230
    db $14
    dw $70f0
    db $15
    dw $4170
    db $15
    dw $5080
    db $15
    dw $5f40
    db $15
    dw $6d00
    db $15
    dw $7940
    db $16
    dw $4690
    db $16
    dw $5800
    db $16
    dw $6870
    db $16
    dw $74c0
    db $17
    dw $40a0
    db $17
    dw $55f0
    db $17
    dw $6960
    db $17
    dw $7ec0
    db $18
    dw $4c10
    db $18
    dw $5e80
    db $18
    dw $6f40
    db $19
    dw $4210
    db $19
    dw $5210
    db $19
    dw $6020
    db $19
    dw $6c90
    db $19
    dw $7a40
    db $1a
    dw $48d0
    db $1a
    dw $5b30
    db $1a
    dw $6b80
    db $1a
    dw $7ee0
    db $1b
    dw $5500
    db $1b
    dw $6a50
    db $1b
    dw $7f20
    db $1c
    dw $4d30
    db $1c
    dw $5ac0
    db $1c
    dw $6450
    db $1c
    dw $71a0
    db $1c
    dw $7cd0
    db $1d
    dw $43b0
    db $1d
    dw $4f20
    db $1d
    dw $59a0
    db $1d
    dw $6ab0
    db $1d
    dw $74d0
    db $1e
    dw $4380
    db $1e
    dw $5270
    db $1e
    dw $61e0
    db $1e
    dw $7300
    db $1f
    dw $4210
    db $1f
    dw $4d50
    db $1f
    dw $5b60
    db $1f
    dw $6790
    db $1f
    dw $7850
    db $20
    dw $4d50
    db $20
    dw $5a40
    db $20
    dw $6b90
    db $20
    dw $7a10
    db $21
    dw $4c10
    db $21
    dw $58f0
    db $21
    dw $6910
    db $21
    dw $7aa0
    db $22
    dw $4d40
    db $22
    dw $62c0
    db $22
    dw $7800
    db $23
    dw $49e0
    db $23
    dw $5cd0
    db $23
    dw $6980
    db $23
    dw $7740
    db $24
    dw $42a0
    db $24
    dw $5040
    db $24
    dw $5bf0
    db $24
    dw $6970
    db $24
    dw $7c40
    db $25
    dw $4b30
    db $25
    dw $5c20
    db $25
    dw $6cb0
    db $25
    dw $7af0
    db $26
    dw $48e0
    db $26
    dw $5600
    db $26
    dw $6700
    db $26
    dw $7a40
    db $27
    dw $4b50
    db $27
    dw $5b40
    db $27
    dw $6b20
    db $27
    dw $7ba0
    db $28
    dw $4530
    db $28
    dw $5970
    db $28
    dw $61a0
    db $28
    dw $71c0
    db $29
    dw $41c0
    db $29
    dw $5050
    db $29
    dw $6320
    db $29
    dw $7800
    db $2a
    dw $4e50
    db $2a
    dw $6400
    db $2a
    dw $7820
    db $2b
    dw $4820
    db $2b
    dw $5c40
    db $2b
    dw $6e10
    db $2c
    dw $4290
    db $2c
    dw $5270
    db $2c
    dw $6560
    db $2c
    dw $7630
    db $2d
    dw $4450
    db $2d
    dw $5190
    db $2d
    dw $5e80
    db $2d
    dw $6f90
    db $2d
    dw $7fd0
    db $2e
    dw $4d10
    db $2e
    dw $5c90
    db $2e
    dw $6d60
    db $2f
    dw $4220
    db $2f
    dw $56a0
    db $2f
    dw $66f0
    db $2f
    dw $74f0
    db $30
    dw $43f0
    db $30
    dw $5440
    db $30
    dw $62f0
    db $30
    dw $7220
    db $30
    dw $7e00
    db $31
    dw $49f0
    db $31
    dw $5640
    db $31
    dw $62d0
    db $31
    dw $7550
    db $32
    dw $4900
    db $32
    dw $5970
    db $32
    dw $68d0
    db $32
    dw $7b40
    db $33
    dw $4c70
    db $33
    dw $5da0
    db $33
    dw $7010
    db $34
    dw $4340
    db $34
    dw $5280
    db $34
    dw $6410
    db $34
    dw $6ff0
    db $35
    dw $4390
    db $35
    dw $5330
    db $35
    dw $5f50
    db $35
    dw $6fe0
    db $35
    dw $7f50
    db $36
    dw $4e90
    db $36
    dw $5d80
    db $36
    dw $6c10
    db $36
    dw $7ab0
    db $37
    dw $4c20
    db $37
    dw $60d0
    db $37
    dw $71e0
    db $38
    dw $41a0
    db $38
    dw $4fd0
    db $38
    dw $5d70
    db $38
    dw $6b60
    db $38
    dw $7650
    db $39
    dw $42b0
    db $39
    dw $5090
    db $39
    dw $5b60
    db $39
    dw $6790
    db $39
    dw $7500
    db $3a
    dw $4160
    db $3a
    dw $4ea0
    db $3a
    dw $6320
    db $3a
    dw $7670
    db $3b
    dw $49c0
    db $3b
    dw $5f00
    db $3b
    dw $74a0
    db $3c
    dw $49e0
    db $3c
    dw $5490
    db $3c
    dw $6410
    db $3c
    dw $75b0
    db $3d
    dw $4160
    db $3d
    dw $4b60
    db $3d
    dw $5b60
    db $3d
    dw $63f0
    db $3d
    dw $6e20
    db $3d
    dw $7990
    db $3e
    dw $4200
    db $3e
    dw $4ee0
    db $3e
    dw $59e0
    db $3e
    dw $64e0
    db $3e
    dw $76c0
    db $3f
    dw $46e0
    db $3f
    dw $55b0
    db $3f
    dw $6310
    db $3f
    dw $7180
    db $3f
    dw $7ea0
    db $40
    dw $4aa0
    db $40
    dw $5610
    db $40
    dw $6bc0
    db $40
    dw $7db0
    db $41
    dw $5190
    db $41
    dw $65a0
    db $41
    dw $7870
    db $42
    dw $4990
    db $42
    dw $59d0
    db $42
    dw $62e0
    db $42
    dw $7820
    db $43
    dw $4c60
    db $43
    dw $6240
    db $43
    dw $7780
    db $44
    dw $4d40
    db $44
    dw $62b0
    db $44
    dw $76a0
    db $45
    dw $48c0
    db $45
    dw $5f40
    db $45
    dw $7420
    db $46
    dw $49c0
    db $46
    dw $6040
    db $46
    dw $7550
    db $47
    dw $4bc0
    db $47
    dw $6040
    db $47
    dw $7460
    db $48
    dw $4620
    db $48
    dw $5aa0
    db $48
    dw $6af0
    db $48
    dw $7f10
    db $49
    dw $4b60
    db $49
    dw $5c50
    db $49
    dw $6ad0
    db $49
    dw $7960
    db $4a
    dw $4c20
    db $4a
    dw $5c60
    db $4a
    dw $6900
    db $4a
    dw $7910
    db $4b
    dw $4aa0
    db $4b
    dw $5930
    db $4b
    dw $6cd0
    db $4b
    dw $7f40
    db $4c
    dw $4f50
    db $4c
    dw $6020
    db $4c
    dw $73b0
    db $4d
    dw $44e0
    db $4d
    dw $5ab0
    db $4d
    dw $6d60
    db $4e
    dw $4170
    db $4e
    dw $5350
    db $4e
    dw $66f0
    db $4e
    dw $7970
    db $4f
    dw $4db0
    db $4f
    dw $6180
    db $4f
    dw $7800
    db $50
    dw $4e60
    db $50
    dw $6450
    db $50
    dw $7950
    db $51
    dw $4cc0
    db $51
    dw $6090
    db $51
    dw $72d0
    db $52
    dw $4210
    db $52
    dw $4ce0
    db $52
    dw $5980
    db $52
    dw $67c0
    db $52
    dw $7810
    db $53
    dw $4870
    db $53
    dw $5d20
    db $53
    dw $7170
    db $54
    dw $4760
    db $54
    dw $5d60
    db $54
    dw $73b0
    db $55
    dw $4930
    db $55
    dw $5e60
    db $55
    dw $74c0
    db $56
    dw $4b30
    db $56
    dw $61b0
    db $56
    dw $76c0
    db $57
    dw $4d30
    db $57
    dw $62d0
    db $57
    dw $77f0
    db $58
    dw $4c70
    db $58
    dw $61b0
    db $58
    dw $7770
    db $59
    dw $4d80
    db $59
    dw $6120
    db $59
    dw $7750
    db $5a
    dw $4d00
    db $5a
    dw $6380
    db $5a
    dw $7800
    db $5b
    dw $4820
    db $5b
    dw $5c70
    db $5b
    dw $7040
    db $5c
    dw $4390
    db $5c
    dw $55b0
    db $5c
    dw $67a0
    db $5c
    dw $7c20
    db $5d
    dw $4f00
    db $5d
    dw $6580
    db $5d
    dw $7bf0
    db $5e
    dw $5270
    db $5e
    dw $68f0
    db $5e
    dw $7f70
    db $5f
    dw $5580
    db $5f
    dw $6bf0
    db $60
    dw $4230
    db $60
    dw $57d0
    db $60
    dw $6e50
    db $61
    dw $44c0
    db $61
    dw $5ae0
    db $61
    dw $7150
    db $62
    dw $4710
    db $62
    dw $5d70
    db $62
    dw $73b0
    db $63
    dw $49b0
    db $63
    dw $5f90
    db $63
    dw $75c0
    db $64
    dw $4c40
    db $64
    dw $62c0
    db $64
    dw $7940
    db $65
    dw $4fc0
    db $65
    dw $6640
    db $65
    dw $7cc0
    db $66
    dw $5340
    db $66
    dw $69a0
    db $67
    dw $4020
    db $67
    dw $56a0
    db $67
    dw $6d10
    db $68
    dw $4330
    db $68
    dw $59b0
    db $68
    dw $6d00
    db $69
    dw $4380
    db $69
    dw $58d0
    db $69
    dw $6f40
    db $6a
    dw $4570
    db $6a
    dw $5ba0
    db $6a
    dw $7220
    db $6b
    dw $4730
    db $6b
    dw $5d10
    db $6b
    dw $71b0
    db $6c
    dw $4610
    db $6c
    dw $5a70
    db $6c
    dw $6e10
    db $6c
    dw $7fc0
    db $6d
    dw $51d0
    db $6d
    dw $6740
    db $6d
    dw $7cc0
    db $6e
    dw $52c0
    db $6e
    dw $6910
    db $6e
    dw $7da0
    db $6f
    dw $52f0
    db $6f
    dw $68d0
    db $6f
    dw $7ca0
    db $70
    dw $52a0
    db $70
    dw $6920
    db $70
    dw $7f70
    db $71
    dw $55b0
    db $71
    dw $6bf0
    db $72
    dw $4260
    db $72
    dw $58a0
    db $72
    dw $6f20
    db $73
    dw $4570
    db $73
    dw $5b60
    db $73
    dw $71a0
    db $74
    dw $4820
    db $74
    dw $5ea0
    db $74
    dw $6cd0
    db $75
    dw $4350
    db $75
    dw $59d0
    db $75
    dw $7050
    db $76
    dw $46a0
    db $76
    dw $5c20
    db $76
    dw $72a0
    db $77
    dw $48c0
    db $77
    dw $5f30
    db $77
    dw $74c0
    db $78
    dw $4b40
    db $78
    dw $6190
    db $78
    dw $7800
    db $79
    dw $4e70
    db $79
    dw $64b0
    db $79
    dw $7b20
    db $7a
    dw $4fc0
    db $7a
    dw $6510
    db $7a
    dw $7670
    db $7b
    dw $48b0
    db $7b
    dw $5810
    db $7b
    dw $6500
    db $7b
    dw $7150
    db $7c
    dw $46f0
    db $7c
    dw $5d00
    db $7c
    dw $71d0
    db $7d
    dw $4290
    db $7d
    dw $51e0
    db $7d
    dw $6270
    db $7d
    dw $72d0
    db $7e
    dw $4030
    db $7e
    dw $50d0
    db $7e
    dw $6640
    db $7e
    dw $7bd0
    db $7f
    dw $5140
    db $7f
    dw $65a0
    db $7f
    dw $7990

    db $80
    dw $4fe0
    db $80
    dw $65e0
    db $80
    dw $7be0
    db $81
    dw $47e0
    db $81
    dw $5340
    db $81
    dw $5f00
    db $81
    dw $6d10
    db $81
    dw $7b20
    db $82
    dw $4fc0
    db $82
    dw $65d0
    db $82
    dw $7ba0
    db $83
    dw $51a0
    db $83
    dw $6700
    db $83
    dw $7a30
    db $84
    dw $5090
    db $84
    dw $6710
    db $84
    dw $7d80
    db $85
    dw $5400
    db $85
    dw $6a40
    db $86
    dw $40c0
    db $86
    dw $5740
    db $86
    dw $6d60
    db $87
    dw $4050
    db $87
    dw $5540
    db $87
    dw $69a0
    db $87
    dw $7b80
    db $88
    dw $4fa0
    db $88
    dw $6570
    db $88
    dw $7900
    db $89
    dw $43f0
    db $89
    dw $50c0
    db $89
    dw $6710
    db $89
    dw $7bc0
    db $8a
    dw $5110
    db $8a
    dw $6710
    db $8a
    dw $7d40
    db $8b
    dw $5250
    db $8b
    dw $6600
    db $8b
    dw $7820
    db $8b
    dw $7e80
    db $8c
    dw $5460
    db $8c
    dw $6990
    db $8c
    dw $7c70
    db $8d
    dw $5060
    db $8d
    dw $6170
    db $8d
    dw $71b0
    db $8e
    dw $46c0
    db $8e
    dw $5c60
    db $8e
    dw $7190
    db $8e
    dw $7fd0
    db $8f
    dw $4a50
    db $8f
    dw $5670
    db $8f
    dw $6c70
    db $90
    dw $4220
    db $90
    dw $5700
    db $90
    dw $69b0
    db $90
    dw $7f20
    db $91
    dw $5430
    db $91
    dw $6620
    db $91
    dw $7780
    db $92
    dw $47a0
    db $92
    dw $5cb0
    db $92
    dw $7210
    db $93
    dw $4600
    db $93
    dw $5800
    db $93
    dw $6b40
    db $94
    dw $4070
    db $94
    dw $55f0
    db $94
    dw $69a0
    db $94
    dw $7ca0
    db $95
    dw $5040
    db $95
    dw $6350
    db $95
    dw $72b0
    db $96
    dw $4170
    db $96
    dw $5220
    db $96
    dw $6250
    db $96
    dw $6f90
    db $97
    dw $40f0
    db $97
    dw $56e0
    db $97
    dw $6c10
    db $97
    dw $7f70
    db $98
    dw $51d0
    db $98
    dw $6170
    db $98
    dw $7670
    db $99
    dw $4c50
    db $99
    dw $6290
    db $99
    dw $7730
    db $9a
    dw $4c00
    db $9a
    dw $61a0
    db $9a
    dw $7030
    db $9a
    dw $7e00
    db $9b
    dw $4800
    db $9b
    dw $4ea0
    db $9b
    dw $5550
    db $9b
    dw $68f0
    db $9b
    dw $7df0
    db $9c
    dw $5320
    db $9c
    dw $6600
    db $9c
    dw $7960
    db $9d
    dw $4ba0
    db $9d
    dw $5fe0
    db $9d
    dw $72d0
    db $9e
    dw $4250
    db $9e
    dw $5250
    db $9e
    dw $62f0
    db $9e
    dw $6d40
    db $9e
    dw $7740
    db $9f
    dw $48f0
    db $9f
    dw $5b10
    db $9f
    dw $6a80
    db $9f
    dw $7990
    db $a0
    dw $47a0
    db $a0
    dw $52d0
    db $a0
    dw $5f50
    db $a0
    dw $6a30
    db $a0
    dw $7810
    db $a1
    dw $42e0
    db $a1
    dw $4d50
    db $a1
    dw $5a60
    db $a1
    dw $6730
    db $a1
    dw $7220
    db $a1
    dw $7be0
    db $a2
    dw $4820
    db $a2
    dw $5300
    db $a2
    dw $5e60
    db $a2
    dw $6690
    db $a2
    dw $7170
    db $a2
    dw $7a20
    db $a3
    dw $43f0
    db $a3
    dw $4e30
    db $a3
    dw $58d0
    db $a3
    dw $6880
    db $a3
    dw $7920
    db $a4
    dw $4850
    db $a4
    dw $5980
    db $a4
    dw $6930
    db $a4
    dw $74f0
    db $a5
    dw $4490
    db $a5
    dw $5550
    db $a5
    dw $6580
    db $a5
    dw $7520
    db $a6
    dw $4900
    db $a6
    dw $5cc0
    db $a6
    dw $6fb0
    db $a7
    dw $43a0
    db $a7
    dw $54f0
    db $a7
    dw $6780
    db $a7
    dw $7910
    db $a8
    dw $4e10
    db $a8
    dw $6260
    db $a8
    dw $7810
    db $a9
    dw $4a50
    db $a9
    dw $5de0
    db $a9
    dw $6fc0
    db $aa
    dw $45a0
    db $aa
    dw $55c0
    db $aa
    dw $6960
    db $aa
    dw $7bd0
    db $ab
    dw $4fe0
    db $ab
    dw $6250
    db $ab
    dw $77e0
    db $ac
    dw $49f0
    db $ac
    dw $5e60
    db $ac
    dw $7410
    db $ad
    dw $47b0
    db $ad
    dw $57f0
    db $ad
    dw $6bc0
    db $ad
    dw $7ef0
    db $ae
    dw $5070
    db $ae
    dw $6140
    db $ae
    dw $71c0
    db $af
    dw $4220
    db $af
    dw $4fd0
    db $af
    dw $5c10
    db $af
    dw $6670
    db $af
    dw $79d0
    db $b0
    dw $4d30
    db $b0
    dw $6260
    db $b0
    dw $6e00
    db $b0
    dw $7d00
    db $b1
    dw $4f30
    db $b1
    dw $60c0
    db $b1
    dw $7420
    db $b2
    dw $4780
    db $b2
    dw $5ca0
    db $b2
    dw $6850
    db $b2
    dw $7830
    db $b3
    dw $45e0
    db $b3
    dw $5520
    db $b3
    dw $62d0
    db $b3
    dw $72d0
    db $b4
    dw $42d0
    db $b4
    dw $5360
    db $b4
    dw $59a0
    db $b4
    dw $6700
    db $b4
    dw $7a70
    db $b5
    dw $4e50
    db $b5
    dw $63c0
    db $b5
    dw $7960
    db $b6
    dw $4860
    db $b6
    dw $5d50
    db $b6
    dw $7330
    db $b7
    dw $4940
    db $b7
    dw $5f50
    db $b7
    dw $7240
    db $b7
    dw $7b90
    db $b8
    dw $44d0
    db $b8
    dw $4e20
    db $b8
    dw $5760
    db $b8
    dw $5c60
    db $b8
    dw $6160
    db $b8
    dw $6660
    db $b8
    dw $6b60
    db $b8
    dw $7250
    db $b8
    dw $76a0
    db $b8
    dw $7d40
    db $b9
    dw $4430
    db $b9
    dw $4ad0
    db $b9
    dw $5230
    db $b9
    dw $5520
    db $b9
    dw $5880
    db $b9
    dw $5dc0
    db $b9
    dw $60d0
    db $b9
    dw $6580
    db $b9
    dw $6a20
    db $b9
    dw $6f70
    db $b9
    dw $73e0
    db $b9
    dw $7900
    db $b9
    dw $7f10
    db $ba
    dw $4320
    db $ba
    dw $47f0
    db $ba
    dw $4da0
    db $ba
    dw $5a40
    db $ba
    dw $6830
    db $ba
    dw $74c0
    db $bb
    dw $4150
    db $bb
    dw $4f70
    db $bb
    dw $5c80
    db $bb
    dw $6850
    db $bb
    dw $6cf0
    db $bb
    dw $7190
    db $bb
    dw $75e0
    db $bb
    dw $7a70
    db $bc
    dw $41a0
    db $bc
    dw $47e0
    db $bc
    dw $4d60
    db $bc
    dw $5330
    db $bc
    dw $5830
    db $bc
    dw $5c40
    db $bc
    dw $6110
    db $bc
    dw $6460
    db $bc
    dw $6a50
    db $bc
    dw $7040
    db $bc
    dw $7630
    db $bc
    dw $7c20
    db $bd
    dw $48f0
    db $bd
    dw $5450
    db $bd
    dw $6270
    db $bd
    dw $6f90
    db $bd
    dw $7b20
    db $be
    dw $4740
    db $be
    dw $4ed0
    db $be
    dw $5ec0
    db $be
    dw $6e70
    db $be
    dw $75b0
    db $bf
    dw $4410
    db $bf
    dw $5280
    db $bf
    dw $5dd0
    db $bf
    dw $6ba0
    db $bf
    dw $7830
    db $c0
    dw $4730
    db $c0
    dw $5500
    db $c0
    dw $6190
    db $c0
    dw $70e0
    db $c0
    dw $7e60
    db $c1
    dw $4860
    db $c1
    dw $4b90
    db $c1
    dw $4f90
    db $c1
    dw $5370
    db $c1
    dw $5910
    db $c1
    dw $6530
    db $c1
    dw $6b50
    db $c1
    dw $7020
    db $c1
    dw $78c0
    db $c2
    dw $4140
    db $c2
    dw $45d0
    db $c2
    dw $52d0
    db $c2
    dw $5fd0
    db $c2
    dw $6cd0
    db $c2
    dw $7410
    db $c2
    dw $7bb0
    db $c3
    dw $4300
    db $c3
    dw $4aa0
    db $c3
    dw $51b0
    db $c3
    dw $5a80
    db $c3
    dw $6350
    db $c3
    dw $6c20
    db $c3
    dw $7000
    db $c3
    dw $73e0
    db $c3
    dw $77c0
    db $c3
    dw $7b10
    db $c3
    dw $7e60
    db $c4
    dw $41b0
    db $c4
    dw $4500
    db $c4
    dw $4d40
    db $c4
    dw $5310
    db $c4
    dw $5670
    db $c4
    dw $5b20
    db $c4
    dw $5f70
    db $c4
    dw $6280
    db $c4
    dw $65b0
    db $c4
    dw $6b50
    db $c4
    dw $7350
    db $c4
    dw $7bc0
    db $c5
    dw $4510
    db $c5
    dw $50e0

TilemapTableEnd:: ; 0x7be6
    ds $41a, $00
