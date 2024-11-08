SECTION "ROM Bank $0fb", ROMX[$4000], BANK[$fb]

RoomCameraHandler_fb_4000:
    ld a, [ROOM_NUMBER]
    or a
    jp z, Room00Handler_0fb_40df

    cp $01
    jp z, Room01Handler_0fb_4153

    cp $02
    jp z, Jump_0fb_41c0

    cp $04
    jp z, Room04Handler_0fb_41eb

    cp $05
    jp z, Room05Handler_0fb_420d

    cp $06
    jp z, Jump_0fb_422c

    cp $07
    jp z, Jump_0fb_425b

    cp $08
    jp z, Jump_0fb_4273

    cp $09
    jp z, Jump_0fb_4274

    cp $0a
    jp z, Jump_0fb_42a0

    cp $0c
    jp z, Jump_0fb_42b3

    cp $0d
    jp z, Jump_0fb_42c6

    cp $0e
    jp z, Jump_0fb_42e8

    cp $10
    jp z, Jump_0fb_433b

    cp $11
    jp z, Jump_0fb_434e

    cp $12
    jp z, Jump_0fb_4361

    cp $14
    jp z, Jump_0fb_4387

    cp $16
    jp z, Jump_0fb_43a4

    cp $17
    jp z, Jump_0fb_43c5

    cp $18
    jp z, Jump_0fb_43ed

    cp $1a
    jp z, Jump_0fb_4407

    cp $1e
    jp z, Jump_0fb_4416

    cp $1f
    jp z, Jump_0fb_4425

    cp $20
    jp z, Jump_0fb_449f

    cp $21
    jp z, Jump_0fb_44ae

    cp $22
    jp z, Jump_0fb_44c0

    cp $23
    jp z, Jump_0fb_44eb

    cp $25
    jp z, Jump_0fb_4542

    cp $26
    jp z, Jump_0fb_4568

    cp $28
    jp z, Jump_0fb_4594

    cp $2c
    jp z, Jump_0fb_45a3

    cp $2f
    jp z, Jump_0fb_45c5

    cp $30
    jp z, Jump_0fb_45d8

    cp $31
    jp z, Jump_0fb_45fa

    cp $33
    jp z, Jump_0fb_460d

    cp $34
    jp z, Jump_0fb_4634

    cp $3c
    jp z, Jump_0fb_4647

    cp $48
    jp z, Jump_0fb_465a

    cp $50
    jp z, Jump_0fb_467c

    cp $57
    jp z, Jump_0fb_469e

    cp $59
    jp z, Jump_0fb_46d7

    cp $60
    jp z, Jump_0fb_46ea

    cp $6f
    jp z, Jump_0fb_470a

    cp $70
    jp z, Jump_0fb_472c

    ret


Room00Handler_0fb_40df:
    ld a, [CAMERA_NUMBER]
    cp $01
    jr z, jr_0fb_40f3

    cp $02
    jr z, jr_0fb_410a

    cp $05
    jr z, jr_0fb_412d

    cp $06
    jr z, jr_0fb_4146

    ret


jr_0fb_40f3:
    ld de, $4762
    call Call_000_1309
    ld de, $476c
    call Call_000_1309
    ld de, $47da
    ld a, [$c501]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_410a:
    ld de, $4776
    call Call_000_1309
    ld de, $4780
    call Call_000_1309
    ld de, $478a
    call Call_000_1309
    ld de, $4794
    call Call_000_1309
    ld de, $47e4
    ld a, [$c501]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_412d:
    ld de, $47b2
    call Call_000_1309
    ld de, $47bc
    call Call_000_1309
    ld de, $47c6
    call Call_000_1309
    ld de, $47d0
    call Call_000_1309
    ret


jr_0fb_4146:
    ld de, $479e
    call Call_000_1309
    ld de, $47a8
    call Call_000_1309
    ret


Room01Handler_0fb_4153:
    ld a, [CAMERA_NUMBER]
    cp $02
    jr z, jr_0fb_416b

    cp $03
    jr z, jr_0fb_4185

    cp $04
    jr z, jr_0fb_4195

    cp $05
    jr z, jr_0fb_41a0

    cp $06
    jr z, jr_0fb_41b0

    ret


jr_0fb_416b:
    ld de, $47ee
    ld a, [PICKED_WOOD_EMBLEM]
    ld c, a
    ld a, [$c52f]
    add c
    or a
    call nz, Call_000_1309
    ld de, $4816
    ld a, [$c504]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_4185:
    ld de, $47f8
    ld a, [PICKED_WOOD_EMBLEM]
    ld c, a
    ld a, [$c52f]
    add c
    or a
    call nz, Call_000_1309
    ret


jr_0fb_4195:
    ld de, $4820
    ld a, [$c504]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_41a0:
    ld de, $480c
    ld a, [$c503]
    ld c, a
    ld a, [$c52f]
    add c
    or a
    call nz, Call_000_1309
    ret


jr_0fb_41b0:
    ld de, $4802
    ld a, [PICKED_WOOD_EMBLEM]
    ld c, a
    ld a, [$c52f]
    add c
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_41c0:
    ld a, [CAMERA_NUMBER]
    or a
    jr z, jr_0fb_41d3

    cp $01
    jr z, jr_0fb_41de

    cp $03
    jr z, jr_0fb_41df

    cp $04
    jr z, jr_0fb_41ea

    ret


jr_0fb_41d3:
    ld de, $483e
    ld a, [$c505]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_41de:
    ret


jr_0fb_41df:
    ld de, $4848
    ld a, [$c505]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_41ea:
    ret


Room04Handler_0fb_41eb:
    ld a, [CAMERA_NUMBER]
    cp $02
    jr z, jr_0fb_41f7

    cp $05
    jr z, jr_0fb_4202

    ret


jr_0fb_41f7:
    ld de, $4852
    ld a, [PICKED_MAP]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_4202:
    ld de, $485c
    ld a, [PICKED_ROOM04_INK_RIBBON]
    or a
    call nz, Call_000_1309
    ret


Room05Handler_0fb_420d:
    ld a, [CAMERA_NUMBER]
    cp $03
    jr z, Room05Camera03Handler_0fb_4219

    cp $04
    jr z, Room05Camera04Handler_0fb_4220

    ret


Room05Camera03Handler_0fb_4219:
    ld de, $4866
    call Call_000_1309
    ret


Room05Camera04Handler_0fb_4220:
    ld a, [$c509]
    or a
    jr nz, jr_0fb_422b

    ld a, [$c50a]
    or a
    ret z

jr_0fb_422b:
    ret


Jump_0fb_422c:
    ld a, [CAMERA_NUMBER]
    cp $02
    jr z, jr_0fb_423c

    cp $03
    jr z, jr_0fb_4243

    cp $05
    jr z, jr_0fb_4250

    ret


jr_0fb_423c:
    ld de, $4870
    call Call_000_1309
    ret


jr_0fb_4243:
    ld de, $487a
    call Call_000_1309
    ld de, $4884
    call Call_000_1309
    ret


jr_0fb_4250:
    ld de, $488e
    ld a, [$c511]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_425b:
    ld a, [CAMERA_NUMBER]
    cp $04
    jr z, jr_0fb_4263

    ret


jr_0fb_4263:
    ld de, $4898
    ld a, [$c513]
    ld c, a
    ld a, [$c530]
    add c
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_4273:
    ret


Jump_0fb_4274:
    ld a, [CAMERA_NUMBER]
    cp $02
    jr z, jr_0fb_4280

    cp $03
    jr z, jr_0fb_4295

    ret


jr_0fb_4280:
    ld de, $48a2
    ld a, [$c511]
    or a
    call nz, Call_000_1309
    ld de, $48ac
    ld a, [$c512]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_4295:
    ld de, $48b6
    ld a, [$c510]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_42a0:
    ld a, [CAMERA_NUMBER]
    cp $01
    jr z, jr_0fb_42a8

    ret


jr_0fb_42a8:
    ld de, $48c0
    ld a, [$c517]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_42b3:
    ld a, [CAMERA_NUMBER]
    cp $02
    jr z, jr_0fb_42bb

    ret


jr_0fb_42bb:
    ld de, $48ca
    ld a, [$c518]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_42c6:
    ld a, [CAMERA_NUMBER]
    cp $02
    jr z, jr_0fb_42d2

    cp $03
    jr z, jr_0fb_42dd

    ret


jr_0fb_42d2:
    ld de, $48d4
    ld a, [$c51a]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_42dd:
    ld de, $48de
    ld a, [$c51a]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_42e8:
    ld a, [CAMERA_NUMBER]
    or a
    jr z, jr_0fb_42fb

    cp $01
    jr z, jr_0fb_4306

    cp $02
    jr z, jr_0fb_4311

    cp $03
    jr z, jr_0fb_4326

    ret


jr_0fb_42fb:
    ld de, $4906
    ld a, [$c51b]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_4306:
    ld de, $48fc
    ld a, [$c51b]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_4311:
    ld de, $48e8
    ld a, [$c51d]
    or a
    call nz, Call_000_1309
    ld de, $4910
    ld a, [$c51c]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_4326:
    ld de, $48f2
    ld a, [$c51d]
    or a
    call nz, Call_000_1309
    ld de, $491a
    ld a, [$c51c]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_433b:
    ld a, [CAMERA_NUMBER]
    cp $03
    jr z, jr_0fb_4343

    ret


jr_0fb_4343:
    ld de, $4924
    ld a, [$c51b]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_434e:
    ld a, [CAMERA_NUMBER]
    cp $03
    jr z, jr_0fb_4356

    ret


jr_0fb_4356:
    ld de, $492e
    ld a, [$c51c]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_4361:
    ld a, [CAMERA_NUMBER]
    cp $02
    jr z, jr_0fb_436d

    cp $03
    jr z, jr_0fb_437a

    ret


jr_0fb_436d:
    ld de, $4942
    call Call_000_1309
    ld de, $4956
    call Call_000_1309
    ret


jr_0fb_437a:
    ld de, $4938
    call Call_000_1309
    ld de, $494c
    call Call_000_1309
    ret


Jump_0fb_4387:
    ld a, [CAMERA_NUMBER]
    cp $00
    jr z, jr_0fb_438f

    ret


jr_0fb_438f:
    ld de, $4960
    ld a, [$c527]
    or a
    call nz, Call_000_1309
    ld de, $496a
    ld a, [$c528]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_43a4:
    ld a, [CAMERA_NUMBER]
    or a
    jr z, jr_0fb_43af

    cp $02
    jr z, jr_0fb_43ba

    ret


jr_0fb_43af:
    ld de, $497e
    ld a, [$c52a]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_43ba:
    ld de, $4974
    ld a, [$c529]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_43c5:
    ld a, [CAMERA_NUMBER]
    or a
    jr z, jr_0fb_43d0

    cp $01
    jr z, jr_0fb_43e2

    ret


jr_0fb_43d0:
    ld a, [$c52b]
    or a
    jr nz, jr_0fb_43db

    ld a, [$c52c]
    or a
    ret z

jr_0fb_43db:
    ld de, $4988
    call Call_000_1309
    ret


jr_0fb_43e2:
    ld de, $4992
    ld a, [$c52c]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_43ed:
    ld a, [CAMERA_NUMBER]
    cp $01
    jr z, jr_0fb_43f5

    ret


jr_0fb_43f5:
    ld de, $499c
    ld a, [$c52e]
    or a
    jr nz, jr_0fb_4403

    ld a, [$c531]
    or a
    ret z

jr_0fb_4403:
    call nz, Call_000_1309
    ret


Jump_0fb_4407:
    ld a, [CAMERA_NUMBER]
    cp $03
    jr z, jr_0fb_440f

    ret


jr_0fb_440f:
    ld de, $49a6
    call Call_000_1309
    ret


Jump_0fb_4416:
    ld a, [CAMERA_NUMBER]
    cp $02
    jr z, jr_0fb_441e

    ret


jr_0fb_441e:
    ld de, $49b0
    call Call_000_1309
    ret


Jump_0fb_4425:
    ld a, [CAMERA_NUMBER]
    cp $01
    jr z, jr_0fb_4431

    cp $02
    jr z, jr_0fb_446d

    ret


jr_0fb_4431:
    ld de, $49ba
    ld a, [$c541]
    or a
    call nz, Call_000_1309
    ld de, $49ce
    ld a, [$c542]
    or a
    call nz, Call_000_1309
    ld a, [$c4cb]
    or a
    ret z

    ld de, $49d8
    ld a, [$c1b0]
    and $1f
    cp $08
    jp c, Jump_000_1309

    ld de, $49e2
    cp $10
    jp c, Jump_000_1309

    ld de, $49ec
    cp $18
    jp c, Jump_000_1309

    ld de, $49f6
    jp Jump_000_1309


jr_0fb_446d:
    ld de, $49c4
    ld a, [$c541]
    or a
    call nz, Call_000_1309
    ld a, [$c4cb]
    or a
    ret z

    ld de, $4a00
    ld a, [$c1b0]
    and $1f
    cp $08
    jp c, Jump_000_1309

    ld de, $4a0a
    cp $10
    jp c, Jump_000_1309

    ld de, $4a14
    cp $18
    jp c, Jump_000_1309

    ld de, $4a1e
    jp Jump_000_1309


Jump_0fb_449f:
    ld a, [CAMERA_NUMBER]
    cp $20
    jr z, jr_0fb_44a7

    ret


jr_0fb_44a7:
    ld de, $4a28
    call Call_000_1309
    ret


Jump_0fb_44ae:
    ld a, [CAMERA_NUMBER]
    or a
    jr z, jr_0fb_44b5

    ret


jr_0fb_44b5:
    ld de, $4a32
    ld a, [$c544]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_44c0:
    ld a, [CAMERA_NUMBER]
    or a
    jr z, jr_0fb_44cb

    cp $01
    jr z, jr_0fb_44db

    ret


jr_0fb_44cb:
    ld de, $4b90
    ld a, [$c4bf]
    or a
    jr z, jr_0fb_44d7

    ld de, $4b9a

jr_0fb_44d7:
    call Call_000_1309
    ret


jr_0fb_44db:
    ld de, $4ba4
    ld a, [$c4bf]
    or a
    jr z, jr_0fb_44e7

    ld de, $4bae

jr_0fb_44e7:
    call Call_000_1309
    ret


Jump_0fb_44eb:
    ld a, [CAMERA_NUMBER]
    or a
    jr z, jr_0fb_44fa

    cp $01
    jr z, jr_0fb_4512

    cp $02
    jr z, jr_0fb_452a

    ret


jr_0fb_44fa:
    ld a, [$c1b1]
    or a
    ret z

    ld de, $4a3c
    ld a, [$c1b0]
    and $0f
    cp $08
    jp c, Jump_000_1309

    ld de, $4a46
    jp Jump_000_1309


jr_0fb_4512:
    ld a, [$c1b1]
    or a
    ret z

    ld de, $4a50
    ld a, [$c1b0]
    and $0f
    cp $08
    jp c, Jump_000_1309

    ld de, $4a5a
    jp Jump_000_1309


jr_0fb_452a:
    ld a, [$c1b1]
    or a
    ret z

    ld de, $4a64
    ld a, [$c1b0]
    and $0f
    cp $08
    jp c, Jump_000_1309

    ld de, $4a6e
    jp Jump_000_1309


Jump_0fb_4542:
    ld a, [CAMERA_NUMBER]
    or a
    jr z, jr_0fb_4549

    ret


jr_0fb_4549:
    ld de, $4a8c
    ld a, [$c54a]
    or a
    call nz, Call_000_1309
    ld de, $4a96
    ld a, [$c549]
    or a
    call nz, Call_000_1309
    ld de, $4aa0
    ld a, [$c548]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_4568:
    ld a, [CAMERA_NUMBER]
    cp $01
    jr z, jr_0fb_4574

    cp $02
    jr z, jr_0fb_457f

    ret


jr_0fb_4574:
    ld de, $4abe
    ld a, [$c54d]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_457f:
    ld de, $4aaa
    ld a, [$c54b]
    or a
    call nz, Call_000_1309
    ld de, $4ab4
    ld a, [$c54c]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_4594:
    ld a, [CAMERA_NUMBER]
    cp $03
    jr z, jr_0fb_459c

    ret


jr_0fb_459c:
    ld de, $4ac8
    call Call_000_1309
    ret


Jump_0fb_45a3:
    ld a, [CAMERA_NUMBER]
    cp $04
    jr z, jr_0fb_45af

    cp $05
    jr z, jr_0fb_45ba

    ret


jr_0fb_45af:
    ld de, $4ad2
    ld a, [$c552]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_45ba:
    ld de, $4adc
    ld a, [$c552]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_45c5:
    ld a, [CAMERA_NUMBER]
    cp $02
    jr z, jr_0fb_45cd

    ret


jr_0fb_45cd:
    ld de, $4ae6
    ld a, [$c554]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_45d8:
    ld a, [CAMERA_NUMBER]
    cp $01
    jr z, jr_0fb_45e4

    cp $03
    jr z, jr_0fb_45ef

    ret


jr_0fb_45e4:
    ld de, $4afa
    ld a, [$c556]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_45ef:
    ld de, $4af0
    ld a, [$c555]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_45fa:
    ld a, [CAMERA_NUMBER]
    cp $04
    jr z, jr_0fb_4602

    ret


jr_0fb_4602:
    ld de, $4b04
    ld a, [$c55a]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_460d:
    ld a, [CAMERA_NUMBER]
    cp $01
    jr z, jr_0fb_4615

    ret


jr_0fb_4615:
    ld de, $4b0e
    ld a, [$c55e]
    or a
    call nz, Call_000_1309
    ld de, $4b18
    ld a, [$c55c]
    or a
    call nz, Call_000_1309
    ld de, $4b22
    ld a, [$c55d]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_4634:
    ld a, [CAMERA_NUMBER]
    cp $00
    jr z, jr_0fb_463c

    ret


jr_0fb_463c:
    ld de, $4b2c
    ld a, [$c55f]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_4647:
    ld a, [CAMERA_NUMBER]
    cp $01
    jr z, jr_0fb_464f

    ret


jr_0fb_464f:
    ld de, $4b36
    ld a, [$c572]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_465a:
    ld a, [CAMERA_NUMBER]
    cp $01
    jr z, jr_0fb_4666

    cp $02
    jr z, jr_0fb_4671

    ret


jr_0fb_4666:
    ld de, $4b40
    ld a, [$c591]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_4671:
    ld de, $4b4a
    ld a, [$c591]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_467c:
    ld a, [CAMERA_NUMBER]
    cp $03
    jr z, jr_0fb_4688

    cp $04
    jr z, jr_0fb_4693

    ret


jr_0fb_4688:
    ld de, $4b54
    ld a, [$c59d]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_4693:
    ld de, $4b5e
    ld a, [$c59d]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_469e:
    ld a, [CAMERA_NUMBER]
    or a
    jr z, jr_0fb_46a9

    cp $01
    jr z, jr_0fb_46bb

    ret


jr_0fb_46a9:
    ld de, $4b68
    ld a, [$c5a8]
    or a
    jp nz, Jump_000_1309

    ld a, [$c5a9]
    or a
    jp nz, Jump_000_1309

    ret


jr_0fb_46bb:
    ld de, $4b7c
    ld a, [$c5ac]
    or a
    call nz, Call_000_1309
    ld de, $4b72
    ld a, [$c5aa]
    or a
    jp nz, Jump_000_1309

    ld a, [$c5ab]
    or a
    jp nz, Jump_000_1309

    ret


Jump_0fb_46d7:
    ld a, [CAMERA_NUMBER]
    cp $05
    jr z, jr_0fb_46df

    ret


jr_0fb_46df:
    ld de, $4b86
    ld a, [$c5b4]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_46ea:
    ld a, [CAMERA_NUMBER]
    cp $05
    jr z, jr_0fb_46f2

    ret


jr_0fb_46f2:
    ld a, [$c1b1]
    or a
    ret z

    ld de, $4a78
    ld a, [$c1b0]
    and $0f
    cp $08
    jp c, Jump_000_1309

    ld de, $4a82
    jp Jump_000_1309


Jump_0fb_470a:
    ld a, [CAMERA_NUMBER]
    cp $04
    jr z, jr_0fb_4716

    cp $05
    jr z, jr_0fb_4721

    ret


jr_0fb_4716:
    ld de, $4bb8
    ld a, [$c5cf]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_4721:
    ld de, $4bc2
    ld a, [$c5cf]
    or a
    call nz, Call_000_1309
    ret


Jump_0fb_472c:
    ld a, [CAMERA_NUMBER]
    cp $00
    jr z, jr_0fb_4757

    cp $01
    jr z, jr_0fb_4738

    ret


jr_0fb_4738:
    ld de, $4bcc
    ld a, [$c5c8]
    or a
    call nz, Call_000_1309
    ld de, $4bd6
    ld a, [$c5c9]
    or a
    call nz, Call_000_1309
    ld de, $4be0
    ld a, [$c5ca]
    or a
    call nz, Call_000_1309
    ret


jr_0fb_4757:
    ld de, $4bea
    ld a, [$c5cb]
    or a
    call nz, Call_000_1309
    ret


    ld h, l
    inc b
    nop
    ld a, l
    dec sp
    ld [$0820], sp
    ei
    ld [hl], e
    ld l, h
    inc b
    nop
    ld l, b
    add hl, sp
    ld [$0820], sp
    cp e
    ld [hl], e
    inc [hl]
    inc b
    nop
    ld a, a
    ccf
    db $10
    jr nc, jr_0fb_4786

    ld a, e
    ld [hl], l
    ld b, c
    inc b
    nop
    ld h, a
    ld b, [hl]
    db $10

jr_0fb_4786:
    jr nz, @+$0a

    dec de
    ld a, b
    ld d, b
    inc b
    nop
    ld e, b
    ld b, b
    ld [$0820], sp
    dec sp
    ld [hl], h
    ld b, d
    inc b
    nop
    ld b, e
    ld c, d
    db $10
    jr nz, @+$0a

    sbc e
    ld a, b
    ld l, b
    inc b
    nop
    jr c, @+$3f

    ld [$0820], sp
    cp e
    ld [hl], h
    ld l, h
    inc b
    nop
    ld c, l
    inc a
    ld [$0820], sp
    ei
    ld [hl], h
    dec h
    inc b
    nop
    ld [$1849], sp
    jr nc, jr_0fb_47c2

    ei
    db $76
    jr nc, jr_0fb_47c2

    nop
    ld e, l
    ccf
    db $10

jr_0fb_47c2:
    jr nc, @+$0a

    dec sp
    db $76
    ld c, d
    inc b
    nop
    ld c, b
    ld b, l
    ld [$0820], sp
    ld a, e
    ld [hl], h
    ld [hl], $04
    nop
    ld sp, $104b
    jr nz, @+$0a

    dec de
    ld a, c
    cp $03
    nop
    ld d, d
    ld e, h
    ld [$0410], sp
    and b
    ld b, c
    cp $03
    nop
    ld b, b
    ld [hl], b
    ld [$0410], sp
    add b
    ld b, b
    cp $03
    nop
    ld c, [hl]
    ld e, c
    ld [$0410], sp
    add b
    ld b, c
    cp $03
    nop
    ld d, h
    inc [hl]
    db $10
    db $10
    inc b
    nop
    ld b, b
    cp $03
    nop
    ld c, a
    ld c, a
    db $10
    db $10
    inc b
    ld b, b
    ld b, c
    cp $03
    nop
    ld d, c
    ld c, c
    ld [$0410], sp
    ret nz

    ld b, c
    cp $01
    nop
    jr z, @-$7e

    ld [$0410], sp
    ret nz

    ld b, b
    cp $01
    nop
    ld d, b
    db $76
    ld [$0410], sp
    ret nz

    ld b, b
    cp $00
    nop
    ld [hl], b
    ld h, b
    ld [$0410], sp
    ret nz

    ld b, b
    cp $00
    nop
    ld c, h
    ld h, [hl]
    ld [$0410], sp
    ret nz

    ld b, b
    cp $03
    nop
    ld a, [hl+]
    ld c, h
    ld [$0410], sp
    ldh [rSTAT], a
    cp $03
    nop
    ld [de], a
    ccf
    ld [$0410], sp
    nop
    ld b, d
    cp $03
    nop
    ld [hl], b
    ld [hl], b
    db $10
    db $10
    inc b
    ld b, b
    ld b, b
    cp $06
    nop
    ld [hl], b
    jr c, jr_0fb_486a

    db $10
    inc b
    ret nz

    ld b, b
    cp $04
    nop
    ld [hl], a

jr_0fb_486a:
    ld [hl+], a
    db $10
    ld b, b
    ld [$799b], sp
    cp $00
    nop
    ld a, [hl+]
    ld h, b
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld [hl-], a
    ld [hl], b
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    sub d
    ld h, h
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld e, l
    inc a
    ld [$0410], sp
    ret nz

    ld b, c
    cp $00
    nop
    ld h, c
    ld e, [hl]
    db $10
    db $10
    inc b
    ld b, b
    ld b, c
    cp $00
    nop
    ld d, b
    ld b, b
    ld [$0410], sp
    ret nz

    ld b, e
    cp $00
    nop
    ld a, d
    ld e, h
    ld [$0410], sp
    jr nz, jr_0fb_48f7

    cp $00
    nop
    ld c, h
    ld b, d
    db $10
    db $10
    inc b
    ld h, b
    ld b, d
    cp $00
    nop
    add b
    inc h
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld l, h
    ld a, b
    ld [$0410], sp
    jr nz, jr_0fb_4915

    cp $00
    nop
    ld e, [hl]
    ld b, h
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld a, [hl+]
    ld h, h
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld a, e
    ld d, e
    db $10
    db $10
    inc b
    ld h, b
    ld b, d
    cp $00
    nop
    ld d, h
    ld h, d

jr_0fb_48f7:
    db $10
    db $10
    inc b
    ld h, b
    ld b, d
    cp $00
    nop
    ld [hl], a
    ld a, h
    ld [$0410], sp
    jr nz, jr_0fb_4947

    cp $00
    nop
    dec sp
    ld a, d
    ld [$0410], sp
    jr nz, jr_0fb_4951

    cp $00
    nop
    inc l
    ld l, e

jr_0fb_4915:
    ld [$0410], sp
    nop
    ld b, c
    cp $00
    nop
    ld a, $7c
    ld [$0410], sp
    nop
    ld b, c
    cp $00
    nop
    ld c, c
    ld d, b
    db $10
    db $10
    inc b
    ld h, b
    ld b, d
    cp $00
    nop
    ld d, a
    ld h, e
    ld [$0410], sp
    ret nz

    ld b, c
    cp $00
    nop
    add c
    ld d, h
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld e, [hl]
    ld e, h

jr_0fb_4947:
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    dec sp
    ld a, h

jr_0fb_4951:
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld c, h
    ld l, a
    ld [$0410], sp
    and b
    ld b, b
    cp $06
    nop
    ld h, d
    inc [hl]
    ld [$0410], sp
    ret nz

    ld b, b
    cp $06
    nop
    ld c, [hl]
    inc [hl]
    ld [$0410], sp
    add b
    ld b, b
    cp $00
    nop
    ld d, h
    inc sp
    db $10
    db $10
    inc b
    ret nz

    ld b, d
    cp $00
    nop
    add l
    add a
    ld [$0410], sp
    ret nz

    ld b, c
    cp $00
    nop
    add l
    ld d, b
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld c, e
    ld c, b
    ld [$0410], sp
    ret nz

    ld b, b
    cp $00
    nop
    ld d, [hl]
    ld l, $10
    db $10
    inc b
    jr nz, jr_0fb_49e8

    cp $00
    nop
    ld e, l
    ld l, b
    db $10
    db $10
    inc b
    ld h, b
    ld b, d
    cp $00
    nop
    ld b, l
    ld e, [hl]
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld e, c
    ld b, a
    db $10
    db $10
    inc b
    ld b, b
    ld b, b
    cp $00
    nop
    ld e, l
    inc l
    db $10
    db $10
    inc b
    ld b, b
    ld b, b
    cp $00
    nop
    jr z, jr_0fb_4a45

    ld [$0410], sp
    and b
    ld b, b
    cp $04
    nop
    ld d, h
    ld h, d
    db $10
    db $10
    inc b
    nop
    ld b, l
    cp $04
    nop
    ld d, h
    ld h, d
    db $10

jr_0fb_49e8:
    db $10
    inc b
    ld b, b
    ld b, l
    cp $04
    nop
    ld d, h
    ld h, d
    db $10
    db $10
    inc b
    add b
    ld b, l
    cp $04
    nop
    ld d, h
    ld h, d
    db $10
    db $10
    inc b
    ret nz

    ld b, l
    cp $04
    nop
    ld d, [hl]
    ld l, h
    db $10
    db $10
    inc b
    nop
    ld b, [hl]
    cp $04
    nop
    ld d, [hl]
    ld l, h
    db $10
    db $10
    inc b
    ld b, b
    ld b, [hl]
    cp $04
    nop
    ld d, [hl]
    ld l, h
    db $10
    db $10
    inc b
    add b
    ld b, [hl]
    cp $04
    nop
    ld d, [hl]
    ld l, h
    db $10
    db $10
    inc b
    ret nz

    ld b, [hl]
    cp $00
    nop
    ld d, b
    ld h, l
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld h, [hl]
    ld l, $08
    db $10
    inc b
    ret nz

    ld b, c
    cp $03
    nop
    ld e, c
    ld e, e
    ld [$0410], sp
    nop

jr_0fb_4a45:
    ld b, a
    cp $03
    nop
    ld e, c
    ld e, e
    ld [$0410], sp
    jr nz, @+$49

    cp $03
    nop
    ld d, a
    ld b, [hl]
    ld [$0410], sp
    ld b, b
    ld b, a
    cp $03
    nop
    ld d, a
    ld b, [hl]
    ld [$0410], sp
    ld h, b
    ld b, a
    cp $03
    nop
    ld c, [hl]
    ld e, h
    ld [$0410], sp
    nop
    ld b, a
    cp $03
    nop
    ld c, [hl]
    ld e, h
    ld [$0410], sp
    jr nz, @+$49

    cp $03
    nop
    ld d, h
    ld [hl+], a
    ld [$0410], sp
    nop
    ld b, a
    cp $03
    nop
    ld d, h
    ld [hl+], a
    ld [$0410], sp
    jr nz, @+$49

    cp $00
    nop
    ld a, b
    ld d, b
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld l, [hl]
    ld b, [hl]
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld h, c
    add hl, sp
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld e, b
    ld b, l
    ld [$0410], sp
    and b
    ld b, e
    cp $00
    nop
    jr c, jr_0fb_4aee

    ld [$0410], sp
    jr nz, jr_0fb_4aff

    cp $00
    nop
    add hl, de
    ld h, b
    ld [$0410], sp
    and b
    ld b, b
    cp $00
    nop
    ld d, b
    ld h, b
    ld [$0410], sp
    jr nz, jr_0fb_4b13

    cp $00
    nop
    ld [hl+], a
    inc sp
    db $10
    db $10
    inc b
    ldh [rSCX], a
    cp $00
    nop
    ld b, [hl]
    ld b, d
    ld [$0410], sp
    jr nz, jr_0fb_4b2a

    cp $00
    nop
    ld e, b
    ld e, [hl]
    ld [$0410], sp

jr_0fb_4aee:
    jr nz, jr_0fb_4b31

    cp $00
    nop
    ld d, d
    ld c, b
    ld [$0410], sp
    ret nz

    ld b, b
    cp $00
    nop
    adc h
    ld l, a

jr_0fb_4aff:
    ld [$0410], sp
    ldh [rLCDC], a
    cp $00
    nop
    ld b, l
    ld b, l
    ld [$0410], sp
    jr nz, jr_0fb_4b4f

    cp $00
    nop
    inc a
    ld h, l

jr_0fb_4b13:
    ld [$0410], sp
    and b
    ld b, d
    cp $00
    nop
    ld c, h
    ld b, c
    db $10
    db $10
    inc b
    ld h, b
    ld b, d
    cp $00
    nop
    inc [hl]
    ld c, e
    db $10
    db $10
    inc b

jr_0fb_4b2a:
    ld h, b
    ld b, d
    cp $00
    nop
    ld b, e
    ld d, h

jr_0fb_4b31:
    ld [$0410], sp
    ret nz

    ld b, b
    cp $00
    nop
    ld d, h
    ld l, l
    db $10
    db $10
    inc b
    ret nz

    ld b, d
    cp $00
    nop
    ld [hl], b
    ld a, d
    ld [$0410], sp
    jr nz, jr_0fb_4b8b

    cp $00
    nop
    add b
    ld l, d

jr_0fb_4b4f:
    ld [$0410], sp
    nop
    ld b, c
    cp $00
    nop
    add b
    ld l, b
    ld [$0410], sp
    nop
    ld b, c
    cp $00
    nop
    jr nc, @+$6a

    ld [$0410], sp
    jr nz, jr_0fb_4ba9

    cp $00
    nop
    inc e
    ld e, b
    ld [$0410], sp
    jr nz, jr_0fb_4bb3

    cp $00
    nop
    ld e, b
    ld c, e
    ld [$0410], sp
    and b
    ld b, d
    cp $00
    nop
    adc b
    ld h, b
    ld [$0410], sp
    ret nz

    ld b, c
    cp $00
    nop
    jr c, jr_0fb_4be3

jr_0fb_4b8b:
    ld [$0410], sp
    and b
    ld b, d
    cp $00
    nop
    ld h, d
    ld l, h
    ld [$0410], sp
    ld h, b
    ld b, h
    cp $00
    nop
    ld h, d
    ld l, h
    ld [$0410], sp
    ld b, b
    ld b, h
    cp $00
    nop
    ld b, [hl]
    ld h, h

jr_0fb_4ba9:
    ld [$0410], sp
    ld h, b
    ld b, h
    cp $00
    nop
    ld b, [hl]
    ld h, h

jr_0fb_4bb3:
    ld [$0410], sp
    ld b, b
    ld b, h
    cp $06
    nop
    inc a
    jr nc, jr_0fb_4bc6

    db $10
    inc b
    jr nz, jr_0fb_4c06

    cp $06
    nop
    ld b, c

jr_0fb_4bc6:
    ld l, $10
    db $10
    inc b
    ldh [rSCX], a
    cp $00
    nop
    ld h, e
    ld a, b
    ld [$0410], sp
    jr nz, jr_0fb_4c17

    cp $00
    nop
    ld b, a
    ld a, e
    ld [$0410], sp
    ldh [rSTAT], a
    cp $00
    nop

jr_0fb_4be3:
    ld a, b
    add e
    ld [$0410], sp
    and b
    ld b, d
    cp $00
    nop
    ld sp, $0886
    db $10
    inc b
    jr nz, jr_0fb_4c35

    db $f4
    rst $38
    inc c
    nop
    ld a, [$14ff]
    nop
    ld a, [$06ff]
    nop
    ld a, [$06ff]
    nop
    di
    rst $38

jr_0fb_4c06:
    dec c
    nop
    ld a, [$06ff]
    nop
    di
    rst $38
    dec c
    nop
    ld a, [$06ff]
    nop
    ld a, [$06ff]

jr_0fb_4c17:
    nop
    ld a, [$06ff]
    nop
    ld a, [$06ff]
    nop
    ld a, [$06ff]
    nop
    or $ff
    ld a, [bc]
    nop
    ldh a, [rIE]
    stop
    db $fc
    rst $38
    inc b
    nop
    ld hl, sp-$01
    ld [$fc00], sp

jr_0fb_4c35:
    rst $38
    inc b
    nop
    ld hl, sp-$01
    ld [$f400], sp
    rst $38
    inc c
    nop
    db $f4
    rst $38
    inc c
    nop
    ld [$0cff], a
    nop
    ld a, [$06ff]
    nop
    ld [$0cff], a
    nop
    ld a, [$06ff]
    nop
    or $ff
    ld a, [bc]
    nop
    ld a, [$10ff]
    nop
    ld a, [$06ff]
    nop
    ld a, [$06ff]
    nop
    ld hl, sp-$01
    ld [$f400], sp
    rst $38
    inc c
    nop
    ld hl, sp-$01
    ld [$f400], sp
    rst $38
    inc c
    nop
    ld a, [$06ff]
    nop
    ld a, [$06ff]
    nop
    ld hl, sp-$01
    ld [$f800], sp
    rst $38
    ld [$f400], sp
    rst $38
    inc c
    nop
    ld hl, sp-$01
    ld [$f400], sp
    rst $38
    inc c
    nop
    ld hl, sp-$01
    ld [$1100], sp
    jr nz, @-$3b

    ld b, $07

Jump_0fb_4c99:
    push bc
    push de
    ld hl, $0000
    add hl, de
    ld a, [hl]
    and $40
    jp z, Jump_0fb_4fab

    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $98
    jp z, Jump_0fb_4f48

    cp $e0
    jp nc, Jump_0fb_4cb7

    jp Jump_0fb_4fab


Jump_0fb_4cb7:
    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $f1
    jr nz, jr_0fb_4ccf

    ld hl, $001a
    add hl, de
    ld a, [hl-]
    cp $ff
    jr nz, jr_0fb_4ccf

    ld a, [hl]
    cp $ed
    jp c, Jump_0fb_4fab

jr_0fb_4ccf:
    ld hl, $000b
    add hl, de
    ld a, [hl]
    ld [$c1c2], a
    sub $e0
    ld l, a
    ld h, $00
    add hl, hl
    add hl, hl
    add hl, hl
    ld bc, $4bf4
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $0011
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_0fb_5481
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    add hl, de
    ld a, l
    ld [$c170], a
    ld a, h
    ld [$c171], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    add hl, de
    ld a, l
    ld [$c172], a
    ld a, h
    ld [$c173], a
    pop de
    push de
    ld hl, $0013
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_0fb_5481
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    add hl, de
    ld a, l
    ld [$c174], a
    ld a, h
    ld [$c175], a
    ld a, [bc]
    ld l, a
    inc bc
    ld a, [bc]
    ld h, a
    inc bc
    add hl, de
    ld a, l
    ld [$c176], a
    ld a, h
    ld [$c177], a
    ld a, [PLAYER_POS_Y_VAR]
    ld e, a
    ld a, [PLAYER_POS_Y_VAR + 1]
    ld d, a
    call Call_0fb_5481
    push de
    ld a, [PLAYER_POS_X_VAR]
    ld e, a
    ld a, [PLAYER_POS_X_VAR + 1]
    ld d, a
    call Call_0fb_5481
    ld l, e
    ld h, d
    pop de
    call Call_0fb_50d6
    or a
    jp z, Jump_0fb_4fab

    pop de
    push de
    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $e0
    jr z, jr_0fb_4d96

    cp $e1
    jr z, jr_0fb_4d96

    cp $e4
    jr z, jr_0fb_4d96

    cp $e7
    jr z, jr_0fb_4d96

    cp $e8
    jr z, jr_0fb_4d96

    cp $ec
    jr z, jr_0fb_4d96

    cp $ed
    jr z, jr_0fb_4d96

    cp $ee
    jr z, jr_0fb_4d96

    cp $ef
    jr z, jr_0fb_4d96

    cp $f0
    jr z, jr_0fb_4d96

    cp $f1
    jr z, jr_0fb_4d96

    cp $f2
    jr z, jr_0fb_4d96

    cp $f3
    jr z, jr_0fb_4d96

    jp Jump_0fb_4fab


jr_0fb_4d96:
    ld hl, $0009
    add hl, de
    ld a, [PLAYER_POS_ROTATE]
    add $10
    and $1f
    cp [hl]
    jp nz, Jump_0fb_4fab

    ld bc, $4fda
    ld a, [hl]
    and $1c
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
    push bc
    ld hl, $0011
    add hl, de
    ld a, [bc]
    add [hl]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    add [hl]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl], a
    inc hl
    inc bc
    pop bc
    ld hl, $000f
    add hl, de
    ld a, [hl]
    cp $f0
    jr z, jr_0fb_4e0b

    cp $f1
    jr z, jr_0fb_4e24

    cp $f4
    jp z, Jump_0fb_4f2e

    cp $f7
    jr z, jr_0fb_4e3c

    cp $f8
    jr z, jr_0fb_4e51

    cp $fc
    jp z, Jump_0fb_4e5f

    cp $fd
    jp z, Jump_0fb_4e6d

    cp $fe
    jp z, Jump_0fb_4e90

    cp $ef
    jp z, Jump_0fb_4eaa

    cp $ee
    jp z, Jump_0fb_4ec4

    cp $ed
    jp z, Jump_0fb_4ed9

    cp $ec
    jp z, Jump_0fb_4f19

    jp Jump_0fb_4fab


jr_0fb_4e0b:
    ld hl, $0014
    add hl, de
    ld a, [hl-]
    or a
    jp nz, Jump_0fb_4fab

    ld a, [hl]
    cp $02
    jp nc, Jump_0fb_4fab

    ld [hl], $02
    ld a, $ff
    ld [$c4e0], a
    jp Jump_0fb_4fab


jr_0fb_4e24:
    ld hl, $0014
    add hl, de
    ld a, [hl-]
    cp $ff
    jp nz, Jump_0fb_4fab

    ld a, [hl]
    cp $0a
    jp c, Jump_0fb_4fab

    ld a, $8b
    ld [CUTSCENE_NUMBER], a
    jp Jump_0fb_4fab


jr_0fb_4e3c:
    ld hl, $0012
    add hl, de
    ld a, [hl-]
    cp $fe
    jp nz, Jump_0fb_4fab

    ld a, [hl]
    cp $f0
    jp nc, Jump_0fb_4fab

    ld [hl], $f0
    jp Jump_0fb_4fab


jr_0fb_4e51:
    ld hl, $0014
    add hl, de
    ld a, [hl-]
    or a
    jp nz, Jump_0fb_4fab

    ld [hl], $00
    jp Jump_0fb_4fab


Jump_0fb_4e5f:
    ld hl, $0014
    add hl, de
    ld a, [hl-]
    or a
    jp nz, Jump_0fb_4fab

    ld [hl], $00
    jp Jump_0fb_4fab


Jump_0fb_4e6d:
    ld hl, $0012
    add hl, de
    ld a, [hl-]
    or a
    jp nz, Jump_0fb_4fab

    ld a, [hl]
    cp $c0
    jp c, Jump_0fb_4fab

    ld [hl], $c0
    ld a, [$c4c3]
    or a
    jp nz, Jump_0fb_4fab

    ld a, $ff
    ld [$c4c3], a
    ld [$c571], a
    jp Jump_0fb_4fab


Jump_0fb_4e90:
    ld hl, $0014
    add hl, de
    ld a, [hl-]
    cp $ff
    jp nz, Jump_0fb_4fab

    ld a, [hl]
    cp $c0
    jp c, Jump_0fb_4fab

    ld [hl], $c0
    ld a, $ff
    ld [$c4d5], a
    jp Jump_0fb_4fab


Jump_0fb_4eaa:
    ld hl, $0014
    add hl, de
    ld a, [hl-]
    cp $fd
    jp nz, Jump_0fb_4fab

    ld a, [hl]
    cp $d0
    jp nc, Jump_0fb_4fab

    ld [hl], $d0
    ld a, $ff
    ld [$c4d8], a
    jp Jump_0fb_4fab


Jump_0fb_4ec4:
    ld hl, $0014
    add hl, de
    ld a, [hl-]
    cp $ff
    jp nz, Jump_0fb_4fab

    ld a, [hl]
    cp $88
    jp c, Jump_0fb_4fab

    ld [hl], $88
    jp Jump_0fb_4fab


Jump_0fb_4ed9:
    ld hl, $0012
    add hl, de
    ld a, [hl-]
    or a
    jp nz, Jump_0fb_4fab

    ld a, [hl]
    cp $80
    jp nc, Jump_0fb_4fab

    ld [hl], $80
    ld a, $ff
    ld [$c4e1], a
    push bc
    push de
    push hl
    ld c, $f3
    call Call_0fb_4fbd
    or a
    jr z, jr_0fb_4f08

    ld hl, $0012
    add hl, de
    ld a, [hl-]
    cp $01
    jr nz, jr_0fb_4f0e

    ld a, [hl]
    cp $90
    jr nc, jr_0fb_4f0e

jr_0fb_4f08:
    pop hl
    pop de
    pop bc
    jp Jump_0fb_4fab


jr_0fb_4f0e:
    pop hl
    pop de
    pop bc
    ld a, $ff
    ld [$c1b1], a
    jp Jump_0fb_4fab


Jump_0fb_4f19:
    ld hl, $0012
    add hl, de
    ld a, [hl-]
    cp $01
    jp nz, Jump_0fb_4fab

    ld a, [hl]
    cp $60
    jp nc, Jump_0fb_4fab

    ld [hl], $60
    jp Jump_0fb_4fab


Jump_0fb_4f2e:
    ld hl, $0014
    add hl, de
    ld a, [hl-]
    cp $ff
    jp nz, Jump_0fb_4fab

    ld a, [hl]
    cp $18
    jp c, Jump_0fb_4fab

    ld [hl], $17
    ld a, $ff
    ld [$c451], a
    jp Jump_0fb_4fab


Jump_0fb_4f48:
    ld hl, $0011
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_0fb_5481
    ld hl, $fffa
    add hl, de
    ld a, l
    ld [$c170], a
    ld a, h
    ld [$c171], a
    ld de, $000c
    add hl, de
    ld a, l
    ld [$c172], a
    ld a, h
    ld [$c173], a
    pop de
    push de
    ld hl, $0013
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_0fb_5481
    ld hl, $fffa
    add hl, de
    ld a, l
    ld [$c174], a
    ld a, h
    ld [$c175], a
    ld de, $000c
    add hl, de
    ld a, l
    ld [$c176], a
    ld a, h
    ld [$c177], a
    ld a, [PLAYER_POS_Y_VAR]
    ld e, a
    ld a, [PLAYER_POS_Y_VAR + 1]
    ld d, a
    call Call_0fb_5481
    push de
    ld a, [PLAYER_POS_X_VAR]
    ld e, a
    ld a, [PLAYER_POS_X_VAR + 1]
    ld d, a
    call Call_0fb_5481
    ld l, e
    ld h, d
    pop de
    call Call_0fb_4ffa

Jump_0fb_4fab:
    pop de
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop bc
    dec b
    jp nz, Jump_0fb_4c99

    call Call_0fb_535f
    jp Jump_0fb_5211


Call_0fb_4fbd:
    ld de, $c320
    ld b, $07

jr_0fb_4fc2:
    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp c
    jr z, jr_0fb_4fd7

    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_0fb_4fc2

    xor a
    ret


jr_0fb_4fd7:
    ld a, $ff
    ret


    nop
    nop
    cp $ff
    nop
    nop
    nop
    nop
    cp $ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
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

Call_0fb_4ffa:
    ld a, [$c170]
    sub e
    ld a, [$c171]
    sbc d
    cp $ff
    jp nz, Jump_0fb_50d4

    ld a, [$c172]
    sub e
    ld a, [$c173]
    sbc d
    or a
    jp nz, Jump_0fb_50d4

    ld a, [$c174]
    sub l
    ld a, [$c175]
    sbc h
    cp $ff
    jp nz, Jump_0fb_50d4

    ld a, [$c176]
    sub l
    ld a, [$c177]
    sbc h
    or a
    jp nz, Jump_0fb_50d4

    push de
    push hl
    ld a, [$c315]
    ld e, a
    ld a, [$c316]
    ld d, a
    push de
    ld a, [$c317]
    ld e, a
    ld a, [$c318]
    ld d, a
    ld l, e
    ld h, d
    pop de
    ld a, [$c174]
    sub l
    ld a, [$c175]
    sbc h
    or a
    jr nz, jr_0fb_5069

    ld a, [$c174]
    ld e, a
    ld a, [$c175]
    ld d, a
    call Call_0fb_54a6
    ld a, e
    sub $01
    ld [PLAYER_POS_X_VAR], a
    ld a, d
    sbc $00
    ld [PLAYER_POS_X_VAR + 1], a
    pop hl
    pop de
    ld a, $ff
    ret


jr_0fb_5069:
    ld a, [$c176]
    sub l
    ld a, [$c177]
    sbc h
    cp $ff
    jr nz, jr_0fb_5091

    ld a, [$c176]
    ld e, a
    ld a, [$c177]
    ld d, a
    call Call_0fb_54a6
    ld a, e
    add $08
    ld [PLAYER_POS_X_VAR], a
    ld a, d
    adc $00
    ld [PLAYER_POS_X_VAR + 1], a
    pop hl
    pop de
    ld a, $ff
    ret


jr_0fb_5091:
    ld a, [$c170]
    sub e
    ld a, [$c171]
    sbc d
    or a
    jr nz, jr_0fb_50b8

    ld a, [$c170]
    ld e, a
    ld a, [$c171]
    ld d, a
    call Call_0fb_54a6
    ld a, e
    sub $01
    ld [PLAYER_POS_Y_VAR], a
    ld a, d
    sbc $00
    ld [PLAYER_POS_Y_VAR + 1], a
    pop hl
    pop de
    ld a, $ff
    ret


jr_0fb_50b8:
    ld a, [$c172]
    ld e, a
    ld a, [$c173]
    ld d, a
    call Call_0fb_54a6
    ld a, e
    add $08
    ld [PLAYER_POS_Y_VAR], a
    ld a, d
    adc $00
    ld [PLAYER_POS_Y_VAR + 1], a
    pop hl
    pop de
    ld a, $ff
    ret


Jump_0fb_50d4:
    xor a
    ret


Call_0fb_50d6:
    ld a, [$c170]
    sub e
    ld a, [$c171]
    sbc d
    cp $ff
    jp nz, Jump_0fb_51f6

    ld a, [$c172]
    sub e
    ld a, [$c173]
    sbc d
    or a
    jp nz, Jump_0fb_51f6

    ld a, [$c174]
    sub l
    ld a, [$c175]
    sbc h
    cp $ff
    jp nz, Jump_0fb_51f6

    ld a, [$c176]
    sub l
    ld a, [$c177]
    sbc h
    or a
    jp nz, Jump_0fb_51f6

    ld a, [$c31f]
    or a
    jp nz, Jump_0fb_5205

    push de
    push hl
    ld a, [$c315]
    ld e, a
    ld a, [$c316]
    ld d, a
    push de
    ld a, [$c317]
    ld e, a
    ld a, [$c318]
    ld d, a
    ld l, e
    ld h, d
    pop de
    ld a, [$c174]
    sub l
    ld a, [$c175]
    sbc h
    or a
    jr nz, jr_0fb_514c

    ld a, [$c174]
    ld e, a
    ld a, [$c175]
    ld d, a
    call Call_0fb_54a6
    ld a, e
    sub $01
    ld [PLAYER_POS_X_VAR], a
    ld a, d
    sbc $00
    ld [PLAYER_POS_X_VAR + 1], a
    pop hl
    pop de
    ld a, $ff
    ret


jr_0fb_514c:
    ld a, [$c176]
    sub l
    ld a, [$c177]
    sbc h
    cp $ff
    jr nz, jr_0fb_518b

    ld a, [$c1c2]
    cp $e0
    jr z, jr_0fb_5161

    jr jr_0fb_516f

jr_0fb_5161:
    ld a, [$c4e0]
    or a
    jr z, jr_0fb_516f

    ld a, $ff
    ld [$c31f], a
    jp Jump_0fb_5207


jr_0fb_516f:
    ld a, [$c176]
    ld e, a
    ld a, [$c177]
    ld d, a
    call Call_0fb_54a6
    ld a, e
    add $08
    ld [PLAYER_POS_X_VAR], a
    ld a, d
    adc $00
    ld [PLAYER_POS_X_VAR + 1], a
    pop hl
    pop de
    ld a, $ff
    ret


jr_0fb_518b:
    ld a, [$c170]
    sub e
    ld a, [$c171]
    sbc d
    or a
    jr nz, jr_0fb_51c3

    ld a, [$c1c2]
    cp $e9
    jr z, jr_0fb_519f

    jr jr_0fb_51a7

jr_0fb_519f:
    ld a, $ff
    ld [$c31f], a
    jp Jump_0fb_5207


jr_0fb_51a7:
    ld a, [$c170]
    ld e, a
    ld a, [$c171]
    ld d, a
    call Call_0fb_54a6
    ld a, e
    sub $01
    ld [PLAYER_POS_Y_VAR], a
    ld a, d
    sbc $00
    ld [PLAYER_POS_Y_VAR + 1], a
    pop hl
    pop de
    ld a, $ff
    ret


jr_0fb_51c3:
    ld a, [$c1c2]
    cp $f2
    jr z, jr_0fb_51cc

    jr jr_0fb_51da

jr_0fb_51cc:
    ld a, [$c4e1]
    or a
    jr z, jr_0fb_51da

    ld a, $ff
    ld [$c31f], a
    jp Jump_0fb_5207


jr_0fb_51da:
    ld a, [$c172]
    ld e, a
    ld a, [$c173]
    ld d, a
    call Call_0fb_54a6
    ld a, e
    add $08
    ld [PLAYER_POS_Y_VAR], a
    ld a, d
    adc $00
    ld [PLAYER_POS_Y_VAR + 1], a
    pop hl
    pop de
    ld a, $ff
    ret


Jump_0fb_51f6:
    ld a, [$c1c2]
    cp $e0
    jr z, jr_0fb_520b

    cp $e9
    jr z, jr_0fb_520b

    cp $f2
    jr z, jr_0fb_520b

Jump_0fb_5205:
jr_0fb_5205:
    xor a
    ret


Jump_0fb_5207:
    pop hl
    pop de
    jr jr_0fb_5205

jr_0fb_520b:
    xor a
    ld [$c31f], a
    jr jr_0fb_5205

Jump_0fb_5211:
    ld de, $c320
    ld b, $07

Jump_0fb_5216:
    push bc
    push de
    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $98
    jp z, Jump_0fb_5225

    jp Jump_0fb_531f


Jump_0fb_5225:
    ld hl, $0006
    add hl, de
    ld a, [hl]
    cp $03
    jp z, Jump_0fb_531f

    cp $02
    jp z, Jump_0fb_531f

    ld hl, $000e
    add hl, de
    ld a, [hl]
    or a
    jp z, Jump_0fb_531f

    ld hl, $0000
    add hl, de
    ld a, [hl]
    and $40
    jp z, Jump_0fb_5313

    ld hl, $0011
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_0fb_5481
    ld hl, $fff7
    add hl, de
    ld a, l
    ld [$c170], a
    ld a, h
    ld [$c171], a
    ld de, $0012
    add hl, de
    ld a, l
    ld [$c172], a
    ld a, h
    ld [$c173], a
    pop de
    push de
    ld hl, $0013
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_0fb_5481
    ld hl, $fff7
    add hl, de
    ld a, l
    ld [$c174], a
    ld a, h
    ld [$c175], a
    ld de, $0012
    add hl, de
    ld a, l
    ld [$c176], a
    ld a, h
    ld [$c177], a
    ld a, [PLAYER_POS_Y_VAR]
    ld e, a
    ld a, [PLAYER_POS_Y_VAR + 1]
    ld d, a
    call Call_0fb_5481
    push de
    ld a, [PLAYER_POS_X_VAR]
    ld e, a
    ld a, [PLAYER_POS_X_VAR + 1]
    ld d, a
    call Call_0fb_5481
    ld l, e
    ld h, d
    pop de
    call Call_0fb_532c
    or a
    jr z, jr_0fb_52c7

    pop de
    push de
    ld a, [$c31b]
    or a
    jr z, jr_0fb_52dc

    and $07
    jr nz, jr_0fb_531f

    ld a, [$c306]
    cp $06
    jr nz, jr_0fb_531f

    ld a, $15
    call Call_000_026b
    jr jr_0fb_531f

jr_0fb_52c7:
    pop de
    push de
    ld hl, $0006
    add hl, de
    ld a, [hl]
    cp $03
    jr nz, jr_0fb_531f

    ld [hl], $00
    ld hl, $0007
    add hl, de
    ld [hl], $00
    jr jr_0fb_531f

jr_0fb_52dc:
    ld hl, $0006
    add hl, de
    ld [hl], $03
    ld hl, $0007
    add hl, de
    ld [hl], $00
    ld a, $28
    ld [$c31b], a
    ld a, $06
    ld [$c306], a
    ld a, [PLAYER_HEALTH]
    or a
    jr z, jr_0fb_531f

    cp $09
    jr c, jr_0fb_5308

    sub $08
    ld [PLAYER_HEALTH], a
    ld a, $15
    call Call_000_026b
    jr jr_0fb_531f

jr_0fb_5308:
    xor a
    ld [PLAYER_HEALTH], a
    ld a, $40
    ld [$c105], a
    jr jr_0fb_531f

Jump_0fb_5313:
    ld hl, $0006
    add hl, de
    ld [hl], $00
    ld hl, $0007
    add hl, de
    ld [hl], $00

Jump_0fb_531f:
jr_0fb_531f:
    pop de
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop bc
    dec b
    jp nz, Jump_0fb_5216

    ret


Call_0fb_532c:
    ld a, [$c170]
    sub e
    ld a, [$c171]
    sbc d
    cp $ff
    jr nz, jr_0fb_535d

    ld a, [$c172]
    sub e
    ld a, [$c173]
    sbc d
    or a
    jr nz, jr_0fb_535d

    ld a, [$c174]
    sub l
    ld a, [$c175]
    sbc h
    cp $ff
    jr nz, jr_0fb_535d

    ld a, [$c176]
    sub l
    ld a, [$c177]
    sbc h
    or a
    jr nz, jr_0fb_535d

    ld a, $ff
    ret


jr_0fb_535d:
    xor a
    ret


Call_0fb_535f:
    ld de, $c320
    ld b, $07

Jump_0fb_5364:
    push bc
    push de
    ld hl, $0000
    add hl, de
    ld a, [hl]
    and $40
    jp z, Jump_0fb_5474

    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $98
    jp nz, Jump_0fb_5474

    ld hl, $0006
    add hl, de
    ld a, [hl]
    cp $02
    jp z, Jump_0fb_5474

    ld hl, $0011
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_0fb_5481
    ld hl, $ffd0
    add hl, de
    ld a, l
    ld [$c170], a
    ld a, h
    ld [$c171], a
    ld de, $0060
    add hl, de
    ld a, l
    ld [$c172], a
    ld a, h
    ld [$c173], a
    pop de
    push de
    ld hl, $0013
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    call Call_0fb_5481
    ld hl, $ffd0
    add hl, de
    ld a, l
    ld [$c174], a
    ld a, h
    ld [$c175], a
    ld de, $0060
    add hl, de
    ld a, l
    ld [$c176], a
    ld a, h
    ld [$c177], a
    ld a, [PLAYER_POS_Y_VAR]
    ld e, a
    ld a, [PLAYER_POS_Y_VAR + 1]
    ld d, a
    call Call_0fb_5481
    push de
    ld a, [PLAYER_POS_X_VAR]
    ld e, a
    ld a, [PLAYER_POS_X_VAR + 1]
    ld d, a
    call Call_0fb_5481
    ld l, e
    ld h, d
    pop de
    call Call_0fb_532c
    or a
    jp z, Jump_0fb_5474

    pop de
    push de
    ld b, $80
    ld hl, $0011
    add hl, de
    ld a, [PLAYER_POS_Y_VAR]
    sub [hl]
    ld c, a
    inc hl
    ld a, [PLAYER_POS_Y_VAR + 1]
    sbc [hl]
    or a
    jr z, jr_0fb_5413

    cp $ff
    jr z, jr_0fb_540a

    cp $80
    jr c, jr_0fb_5418

    jr jr_0fb_540f

jr_0fb_540a:
    ld a, c
    cp $c0
    jr nc, jr_0fb_541a

jr_0fb_540f:
    ld b, $18
    jr jr_0fb_541a

jr_0fb_5413:
    ld a, c
    cp $40
    jr c, jr_0fb_541a

jr_0fb_5418:
    ld b, $08

jr_0fb_541a:
    ld hl, $0013
    add hl, de
    ld a, [PLAYER_POS_X_VAR]
    sub [hl]
    ld c, a
    inc hl
    ld a, [PLAYER_POS_X_VAR + 1]
    sbc [hl]
    or a
    jr z, jr_0fb_544f

    cp $ff
    jr z, jr_0fb_5435

    cp $80
    jr c, jr_0fb_5454

    jr jr_0fb_543a

jr_0fb_5435:
    ld a, c
    cp $c0
    jr nc, jr_0fb_5467

jr_0fb_543a:
    ld a, b
    and $7f
    jr z, jr_0fb_5447

    cp $08
    jr z, jr_0fb_544b

    ld b, $14
    jr jr_0fb_5467

jr_0fb_5447:
    ld b, $10
    jr jr_0fb_5467

jr_0fb_544b:
    ld b, $0c
    jr jr_0fb_5467

jr_0fb_544f:
    ld a, c
    cp $40
    jr c, jr_0fb_5467

jr_0fb_5454:
    ld a, b
    and $7f
    jr z, jr_0fb_5461

    cp $08
    jr z, jr_0fb_5465

    ld b, $1c
    jr jr_0fb_5467

jr_0fb_5461:
    ld b, $00
    jr jr_0fb_5467

jr_0fb_5465:
    ld b, $04

jr_0fb_5467:
    ld hl, $0009
    add hl, de
    ld a, b
    and $80
    jr nz, jr_0fb_5474

    ld a, b
    and $1f
    ld [hl], a

Jump_0fb_5474:
jr_0fb_5474:
    pop de
    ld hl, $0020
    add hl, de
    ld e, l
    ld d, h
    pop bc
    dec b
    jp nz, Jump_0fb_5364

    ret


Call_0fb_5481:
    ld a, d
    cp $80
    jr c, jr_0fb_5499

    call Call_0fb_54c5
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_0fb_54c5
    ret


jr_0fb_5499:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


Call_0fb_54a6:
    ld a, d
    cp $80
    jr c, jr_0fb_54bb

    call Call_0fb_54c5
    push hl
    push de
    pop hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop hl
    call Call_0fb_54c5
    ret


jr_0fb_54bb:
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


Call_0fb_54c5:
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
