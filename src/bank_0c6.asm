SECTION "ROM Bank $0c6", ROMX[$4000], BANK[$c6]

    ld a, [$c311]
    ld e, a
    ld a, [$c312]
    ld d, a
    call Call_0c6_64e1
    ld l, e
    ld h, d
    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call Call_0c6_64e1
    ld c, $00
    ld a, [$c17c]
    or a
    jp z, Jump_0c6_63d5

    cp $01
    jp z, Jump_0c6_62e9

    cp $02
    jp z, Jump_0c6_60b8

    cp $03
    jp z, Jump_0c6_6254

    cp $04
    jp z, Jump_0c6_61f3

    cp $05
    jp z, Jump_0c6_617e

    cp $06
    jp z, Jump_0c6_6080

    cp $07
    jp z, Jump_0c6_6108

    cp $08
    jp z, Jump_0c6_5ffb

    cp $09
    jp z, Jump_0c6_5fd8

    cp $0a
    jp z, Jump_0c6_5f6d

    cp $0b
    jp z, Jump_0c6_5f17

    cp $0c
    jp z, Jump_0c6_5edb

    cp $0d
    jp z, Jump_0c6_5eab

    cp $0e
    jp z, Jump_0c6_5e8d

    cp $0f
    jp z, Jump_0c6_5e4d

    cp $10
    jp z, Jump_0c6_5e16

    cp $11
    jp z, Jump_0c6_5def

    cp $12
    jp z, Jump_0c6_5dad

    cp $13
    jp z, Jump_0c6_5d55

    cp $15
    jp z, Jump_0c6_5d34

    cp $16
    jp z, Jump_0c6_5d1c

    cp $17
    jp z, Jump_0c6_5d04

    cp $18
    jp z, Jump_0c6_5cd1

    cp $19
    jp z, Jump_0c6_5c94

    cp $1a
    jp z, Jump_0c6_5c07

    cp $1b
    jp z, Jump_0c6_5c4a

    cp $1c
    jp z, Jump_0c6_5bd8

    cp $1d
    jp z, Jump_0c6_5ba1

    cp $1e
    jp z, Jump_0c6_5b1d

    cp $1f
    jp z, Jump_0c6_5af5

    cp $20
    jp z, Jump_0c6_5aa1

    cp $21
    jp z, Jump_0c6_5a7b

    cp $22
    jp z, Jump_0c6_5a53

    cp $23
    jp z, Jump_0c6_5a2d

    cp $24
    jp z, Jump_0c6_59d7

    cp $25
    jp z, Jump_0c6_5997

    cp $26
    jp z, Jump_0c6_596c

    cp $27
    jp z, Jump_0c6_592d

    cp $28
    jp z, Jump_0c6_5900

    cp $29
    jp z, Jump_0c6_58ce

    cp $2a
    jp z, Jump_0c6_587a

    cp $2b
    jp z, Jump_0c6_5828

    cp $2c
    jp z, Jump_0c6_57d4

    cp $2d
    jp z, Jump_0c6_57a0

    cp $2e
    jp z, Jump_0c6_5783

    cp $2f
    jp z, Jump_0c6_5745

    cp $30
    jp z, Jump_0c6_5715

    cp $31
    jp z, Jump_0c6_56c2

    cp $32
    jp z, Jump_0c6_5656

    cp $33
    jp z, Jump_0c6_563e

    cp $34
    jp z, Jump_0c6_5626

    cp $35
    jp z, Jump_0c6_55cb

    cp $36
    jp z, Jump_0c6_4fe4

    cp $37
    jp z, Jump_0c6_5052

    cp $38
    jp z, Jump_0c6_50cc

    cp $39
    jp z, Jump_0c6_5151

    cp $3a
    jp z, Jump_0c6_51d5

    cp $3b
    jp z, Jump_0c6_5243

    cp $3c
    jp z, Jump_0c6_5289

    cp $3d
    jp z, Jump_0c6_52fa

    cp $3e
    jp z, Jump_0c6_5346

    cp $3f
    jp z, Jump_0c6_53bb

    cp $40
    jp z, Jump_0c6_5411

    cp $41
    jp z, Jump_0c6_5428

    cp $42
    jp z, Jump_0c6_5483

    cp $43
    jp z, Jump_0c6_5492

    cp $44
    jp z, Jump_0c6_54e4

    cp $45
    jp z, Jump_0c6_555a

    cp $46
    jp z, Jump_0c6_559d

    cp $47
    jp z, Jump_0c6_4b10

    cp $48
    jp z, Jump_0c6_4b61

    cp $49
    jp z, Jump_0c6_4b88

    cp $4a
    jp z, Jump_0c6_4ba8

    cp $4b
    jp z, Jump_0c6_4bdd

    cp $4c
    jp z, Jump_0c6_4c28

    cp $4d
    jp z, Jump_0c6_4c8f

    cp $4e
    jp z, Jump_0c6_4cd6

    cp $4f
    jp z, Jump_0c6_4d35

    cp $50
    jp z, Jump_0c6_4dcb

    cp $51
    jp z, Jump_0c6_4e1b

    cp $52
    jp z, Jump_0c6_4e38

    cp $53
    jp z, Jump_0c6_4e82

    cp $54
    jp z, Jump_0c6_4e9f

    cp $55
    jp z, Jump_0c6_4ee7

    cp $56
    jp z, Jump_0c6_4f02

    cp $57
    jp z, Jump_0c6_4f90

    cp $58
    jp z, Jump_0c6_4fa7

    cp $59
    jp z, Jump_0c6_425d

    cp $5a
    jp z, Jump_0c6_430f

    cp $5b
    jp z, Jump_0c6_4350

    cp $5c
    jp z, Jump_0c6_43be

    cp $5d
    jp z, Jump_0c6_43fd

    cp $5e
    jp z, Jump_0c6_4446

    cp $5f
    jp z, Jump_0c6_44ed

    cp $60
    jp z, Jump_0c6_4542

    cp $61
    jp z, Jump_0c6_458e

    cp $62
    jp z, Jump_0c6_4605

    cp $63
    jp z, Jump_0c6_4668

    cp $64
    jp z, Jump_0c6_468a

    cp $65
    jp z, Jump_0c6_46f0

    cp $67
    jp z, Jump_0c6_4794

    cp $68
    jp z, Jump_0c6_47b1

    cp $69
    jp z, Jump_0c6_484b

    cp $6a
    jp z, Jump_0c6_48b6

    cp $6c
    jp z, Jump_0c6_4927

    cp $6d
    jp z, Jump_0c6_4995

    cp $6e
    jp z, Jump_0c6_4a06

    cp $6f
    jp z, Jump_0c6_4a44

    cp $70
    jp z, Jump_0c6_4a8f

    cp $71
    jp z, Jump_0c6_4aa7

    cp $73
    jp z, Jump_0c6_4ac3

    ld c, $00
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_425b

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_425b:
    xor a
    ret


Jump_0c6_425d:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_4268

    ld a, l
    cp $50
    jr nc, jr_0c6_426a

jr_0c6_4268:
    ld c, $01

jr_0c6_426a:
    ld a, d
    or a
    jr nz, jr_0c6_4273

    ld a, e
    cp $5f
    jr nc, jr_0c6_4275

jr_0c6_4273:
    ld c, $02

jr_0c6_4275:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4281

    ld a, e
    cp $f2
    jr nc, jr_0c6_4281

    ld c, $03

jr_0c6_4281:
    ld a, h
    cp $ff
    jr nz, jr_0c6_428d

    ld a, l
    cp $ca
    jr nc, jr_0c6_428d

    ld c, $04

jr_0c6_428d:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4299

    ld a, e
    cp $a2
    jr nc, jr_0c6_4299

    ld c, $05

jr_0c6_4299:
    ld a, h
    cp $ff
    jr nz, jr_0c6_42a5

    ld a, l
    cp $9a
    jr nc, jr_0c6_42a5

    ld c, $06

jr_0c6_42a5:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_430d

    ld a, c
    ld [$c11f], a
    ld a, [$c11b]
    or a
    jr nz, jr_0c6_42ed

    ld a, [$c4c5]
    or a
    jr z, jr_0c6_430a

    ld a, [$c4c6]
    or a
    jr nz, jr_0c6_42d4

    ld a, [$c11f]
    cp $02
    jr nz, jr_0c6_430a

    ld a, $1a
    ld [$c1bf], a
    ld a, $ff
    ld [$c4c6], a
    jr jr_0c6_430a

jr_0c6_42d4:
    ld a, [$c4c7]
    or a
    jr nz, jr_0c6_430a

    ld a, [$c11f]
    cp $05
    jr nz, jr_0c6_430a

    ld a, $1b
    ld [$c1bf], a
    ld a, $ff
    ld [$c4c7], a
    jr jr_0c6_430a

jr_0c6_42ed:
    ld a, [$c4c5]
    or a
    jr z, jr_0c6_430a

    ld a, [$c4c6]
    or a
    jr nz, jr_0c6_430a

    ld a, [$c11f]
    cp $02
    jr nz, jr_0c6_430a

    ld a, $22
    ld [$c1bf], a
    ld a, $ff
    ld [$c4c6], a

jr_0c6_430a:
    ld a, $ff
    ret


jr_0c6_430d:
    xor a
    ret


Jump_0c6_430f:
    ld c, $02
    ld a, h
    cp $ff
    jr nz, jr_0c6_431b

    ld a, l
    cp $ef
    jr c, jr_0c6_431d

jr_0c6_431b:
    ld c, $01

jr_0c6_431d:
    ld a, d
    or a
    jr nz, jr_0c6_4328

    ld a, e
    cp $36
    jr c, jr_0c6_4328

    ld c, $00

jr_0c6_4328:
    ld a, h
    cp $ff
    jr nz, jr_0c6_433d

    ld a, l
    cp $e4
    jr nc, jr_0c6_433d

    ld a, d
    or a
    jr nz, jr_0c6_433d

    ld a, e
    cp $15
    jr c, jr_0c6_433d

    ld c, $03

jr_0c6_433d:
    xor a
    ld [$c44d], a
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_434e

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_434e:
    xor a
    ret


Jump_0c6_4350:
    ld c, $00
    ld a, d
    or a
    jr z, jr_0c6_4358

    ld c, $01

jr_0c6_4358:
    ld a, d
    or a
    jr nz, jr_0c6_436d

    ld a, e
    cp $19
    jr c, jr_0c6_436d

    ld a, h
    cp $ff
    jr nz, jr_0c6_436b

    ld a, l
    cp $f5
    jr c, jr_0c6_436d

jr_0c6_436b:
    ld c, $02

jr_0c6_436d:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_43bc

    ld a, c
    ld [$c11f], a
    ld a, [$c11b]
    or a
    jr nz, jr_0c6_439c

    ld a, [$c11f]
    cp $01
    jr nz, jr_0c6_43b9

    ld a, [$c4c4]
    or a
    jr z, jr_0c6_43b9

    ld a, [$c4c5]
    or a
    jr nz, jr_0c6_43b9

    ld a, $19
    ld [$c1bf], a
    ld a, $ff
    ld [$c4c5], a
    jr jr_0c6_43b9

jr_0c6_439c:
    ld a, [$c11f]
    cp $01
    jr nz, jr_0c6_43b9

    ld a, [$c4c4]
    or a
    jr z, jr_0c6_43b9

    ld a, [$c4c5]
    or a
    jr nz, jr_0c6_43b9

    ld a, $20
    ld [$c1bf], a
    ld a, $ff
    ld [$c4c5], a

jr_0c6_43b9:
    ld a, $ff
    ret


jr_0c6_43bc:
    xor a
    ret


Jump_0c6_43be:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_43c9

    ld a, l
    cp $22
    jr nc, jr_0c6_43cb

jr_0c6_43c9:
    ld c, $01

jr_0c6_43cb:
    ld a, d
    or a
    jr nz, jr_0c6_43d4

    ld a, e
    cp $12
    jr nc, jr_0c6_43d6

jr_0c6_43d4:
    ld c, $02

jr_0c6_43d6:
    ld a, h
    cp $ff
    jr nz, jr_0c6_43e2

    ld a, l
    cp $d9
    jr nc, jr_0c6_43e2

    ld c, $03

jr_0c6_43e2:
    ld a, h
    cp $ff
    jr nz, jr_0c6_43ee

    ld a, l
    cp $90
    jr nc, jr_0c6_43ee

    ld c, $05

jr_0c6_43ee:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_43fb

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_43fb:
    xor a
    ret


Jump_0c6_43fd:
    ld c, $00
    ld a, d
    or a
    jr z, jr_0c6_4405

    ld c, $01

jr_0c6_4405:
    ld a, h
    or a
    jr nz, jr_0c6_4421

    ld a, l
    cp $15
    jr c, jr_0c6_4421

    ld a, d
    cp $ff
    jr nz, jr_0c6_441a

    ld a, e
    cp $d9
    jr c, jr_0c6_4421

    jr jr_0c6_441f

jr_0c6_441a:
    ld a, e
    cp $28
    jr nc, jr_0c6_4421

jr_0c6_441f:
    ld c, $02

jr_0c6_4421:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4437

    ld a, l
    cp $ec
    jr nc, jr_0c6_4437

    ld a, d
    cp $ff
    jr nz, jr_0c6_4437

    ld a, e
    cp $dc
    jr nc, jr_0c6_4437

    ld c, $03

jr_0c6_4437:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4444

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4444:
    xor a
    ret


Jump_0c6_4446:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_4452

    ld a, e
    or a
    jr z, jr_0c6_4452

    ld c, $01

jr_0c6_4452:
    ld a, h
    cp $ff
    jr nz, jr_0c6_445c

    ld a, l
    cp $b2
    jr c, jr_0c6_445e

jr_0c6_445c:
    ld c, $02

jr_0c6_445e:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4468

    ld a, l
    cp $de
    jr c, jr_0c6_446a

jr_0c6_4468:
    ld c, $03

jr_0c6_446a:
    ld a, h
    or a
    jr nz, jr_0c6_4475

    ld a, l
    cp $16
    jr c, jr_0c6_4475

    ld c, $04

jr_0c6_4475:
    ld a, h
    or a
    jr nz, jr_0c6_4489

    ld a, l
    cp $5f
    jr c, jr_0c6_4489

    ld a, d
    or a
    jr nz, jr_0c6_4487

    ld a, e
    cp $5a
    jr nc, jr_0c6_4489

jr_0c6_4487:
    ld c, $05

jr_0c6_4489:
    ld a, h
    or a
    jr nz, jr_0c6_449e

    ld a, l
    cp $5f
    jr c, jr_0c6_449e

    ld a, d
    cp $ff
    jr nz, jr_0c6_449e

    ld a, e
    cp $d5
    jr nc, jr_0c6_449e

    ld c, $06

jr_0c6_449e:
    ld a, d
    cp $ff
    jr nz, jr_0c6_44bb

    ld a, e
    cp $ba
    jr nc, jr_0c6_44bb

    ld a, h
    cp $ff
    jr nz, jr_0c6_44b4

    ld a, l
    cp $b2
    jr c, jr_0c6_44bb

    jr jr_0c6_44b9

jr_0c6_44b4:
    ld a, l
    cp $5f
    jr nc, jr_0c6_44bb

jr_0c6_44b9:
    ld c, $07

jr_0c6_44bb:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_44eb

    ld a, c
    ld [$c11f], a
    ld a, [$c11b]
    or a
    jr nz, jr_0c6_44e8

    ld a, [$c4b4]
    or a
    jr z, jr_0c6_44e8

    ld a, [$c4bd]
    or a
    jr nz, jr_0c6_44e8

    ld a, [$c11f]
    cp $04
    jr nz, jr_0c6_44e8

    ld a, $16
    ld [$c1bf], a
    ld a, $ff
    ld [$c4bd], a

jr_0c6_44e8:
    ld a, $ff
    ret


jr_0c6_44eb:
    xor a
    ret


Jump_0c6_44ed:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_44f6

    ld c, $01

jr_0c6_44f6:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4502

    ld a, l
    cp $dc
    jr nc, jr_0c6_4502

    ld c, $02

jr_0c6_4502:
    ld a, h
    or a
    jr nz, jr_0c6_4516

    ld a, l
    cp $31
    jr c, jr_0c6_4516

    ld a, d
    or a
    jr nz, jr_0c6_4514

    ld a, e
    cp $08
    jr nc, jr_0c6_4516

jr_0c6_4514:
    ld c, $03

jr_0c6_4516:
    xor a
    ld [$c46d], a
    ld a, [$c11f]
    cp $05
    jr nz, jr_0c6_4533

    ld a, [$c319]
    cp $20
    jr c, jr_0c6_4533

    ld a, [$c1b1]
    or a
    jr nz, jr_0c6_4533

    ld a, $ff
    ld [$c46d], a

jr_0c6_4533:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4540

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4540:
    xor a
    ret


Jump_0c6_4542:
    ld c, $03
    ld a, h
    cp $ff
    jr nz, jr_0c6_454e

    ld a, l
    cp $9d
    jr c, jr_0c6_4550

jr_0c6_454e:
    ld c, $01

jr_0c6_4550:
    ld a, h
    cp $ff
    jr nz, jr_0c6_455a

    ld a, l
    cp $bc
    jr c, jr_0c6_455c

jr_0c6_455a:
    ld c, $00

jr_0c6_455c:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4566

    ld a, e
    cp $fd
    jr c, jr_0c6_4568

jr_0c6_4566:
    ld c, $02

jr_0c6_4568:
    ld a, h
    or a
    jr nz, jr_0c6_457f

    ld a, l
    cp $05
    jr c, jr_0c6_457f

    ld c, $04
    ld a, d
    cp $ff
    jr nz, jr_0c6_457f

    ld a, e
    cp $fe
    jr nc, jr_0c6_457f

    ld c, $05

jr_0c6_457f:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_458c

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_458c:
    xor a
    ret


Jump_0c6_458e:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_459a

    ld a, l
    cp $c9
    jr c, jr_0c6_459c

jr_0c6_459a:
    ld c, $01

jr_0c6_459c:
    ld a, h
    cp $ff
    jr nz, jr_0c6_45a6

    ld a, l
    cp $fb
    jr c, jr_0c6_45a8

jr_0c6_45a6:
    ld c, $02

jr_0c6_45a8:
    ld a, h
    or a
    jr nz, jr_0c6_45b3

    ld a, l
    cp $3f
    jr c, jr_0c6_45b3

    ld c, $03

jr_0c6_45b3:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4603

    ld a, c
    ld [$c11f], a
    ld a, [$c11b]
    or a
    jp nz, Jump_0c6_45e3

    ld a, [$c4be]
    or a
    jr z, jr_0c6_4600

    ld a, [$c4c4]
    or a
    jr nz, jr_0c6_4600

    ld a, [$c11f]
    cp $03
    jr nz, jr_0c6_4600

    ld a, $18
    ld [$c1bf], a
    ld a, $ff
    ld [$c4c4], a
    jr jr_0c6_4600

Jump_0c6_45e3:
    ld a, [$c4be]
    or a
    jr z, jr_0c6_4600

    ld a, [$c4c4]
    or a
    jr nz, jr_0c6_4600

    ld a, [$c11f]
    cp $03
    jr nz, jr_0c6_4600

    ld a, $1f
    ld [$c1bf], a
    ld a, $ff
    ld [$c4c4], a

jr_0c6_4600:
    ld a, $ff
    ret


jr_0c6_4603:
    xor a
    ret


Jump_0c6_4605:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_4613

    ld a, e
    cp $f6
    jr nc, jr_0c6_4613

    ld c, $01

jr_0c6_4613:
    ld a, h
    cp $ff
    jr nz, jr_0c6_461d

    ld a, l
    cp $f7
    jr c, jr_0c6_462b

jr_0c6_461d:
    ld c, $02
    ld a, d
    cp $ff
    jr nz, jr_0c6_462b

    ld a, e
    cp $f6
    jr nc, jr_0c6_462b

    ld c, $03

jr_0c6_462b:
    ld a, d
    or a
    jr nz, jr_0c6_463f

    ld a, e
    cp $0d
    jr c, jr_0c6_463f

    ld a, h
    or a
    jr nz, jr_0c6_463f

    ld a, l
    cp $1b
    jr c, jr_0c6_463f

    ld c, $04

jr_0c6_463f:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4659

    ld a, e
    cp $f4
    jr nc, jr_0c6_4659

    cp $d9
    jr c, jr_0c6_4659

    ld a, h
    cp $ff
    jr nz, jr_0c6_4659

    ld a, l
    cp $d3
    jr nc, jr_0c6_4659

    ld c, $05

jr_0c6_4659:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4666

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4666:
    xor a
    ret


Jump_0c6_4668:
    ld c, $02
    ld a, d
    or a
    jr nz, jr_0c6_467b

    ld a, e
    or a
    jr z, jr_0c6_467b

    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_467b

    ld c, $01

jr_0c6_467b:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4688

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4688:
    xor a
    ret


Jump_0c6_468a:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_4695

    ld a, e
    cp $34
    jr nc, jr_0c6_4697

jr_0c6_4695:
    ld c, $01

jr_0c6_4697:
    ld a, h
    cp $ff
    jr nz, jr_0c6_46a1

    ld a, l
    cp $e6
    jr c, jr_0c6_46a3

jr_0c6_46a1:
    ld c, $02

jr_0c6_46a3:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_46ee

    ld a, c
    ld [$c11f], a
    ld a, [$c4a0]
    or a
    jr z, jr_0c6_46eb

    ld a, [$c11b]
    or a
    jr nz, jr_0c6_46d2

    ld a, [$c4b8]
    or a
    jr nz, jr_0c6_46eb

    ld a, [$c11f]
    cp $02
    jr nz, jr_0c6_46eb

    ld a, $11
    ld [$c1bf], a
    ld a, $ff
    ld [$c4b8], a
    jr jr_0c6_46eb

jr_0c6_46d2:
    ld a, [$c4b8]
    or a
    jr nz, jr_0c6_46eb

    ld a, [$c11f]
    cp $02
    jr nz, jr_0c6_46eb

    ld a, $18
    ld [$c1bf], a
    ld a, $ff
    ld [$c4b8], a
    jr jr_0c6_46eb

jr_0c6_46eb:
    ld a, $ff
    ret


jr_0c6_46ee:
    xor a
    ret


Jump_0c6_46f0:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_46fc

    ld a, e
    cp $a9
    jr c, jr_0c6_46fe

jr_0c6_46fc:
    ld c, $01

jr_0c6_46fe:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4708

    ld a, e
    cp $e5
    jr c, jr_0c6_472d

jr_0c6_4708:
    ld c, $05
    ld a, h
    cp $ff
    jr nz, jr_0c6_4714

    ld a, l
    cp $91
    jr c, jr_0c6_4716

jr_0c6_4714:
    ld c, $04

jr_0c6_4716:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4720

    ld a, l
    cp $df
    jr c, jr_0c6_4722

jr_0c6_4720:
    ld c, $02

jr_0c6_4722:
    ld a, d
    or a
    jr nz, jr_0c6_472d

    ld a, e
    cp $07
    jr c, jr_0c6_472d

    ld c, $03

jr_0c6_472d:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4792

    ld a, c
    ld [$c11f], a
    ld a, [$c4a0]
    or a
    jr z, jr_0c6_478f

    ld a, [$c11b]
    or a
    jr nz, jr_0c6_476a

    ld a, [$c4b4]
    or a
    jr nz, jr_0c6_4768

    ld a, [$c472]
    or a
    jr z, jr_0c6_478f

    ld a, [$c4b9]
    or a
    jr nz, jr_0c6_478f

    ld a, [$c11f]
    cp $03
    jr nz, jr_0c6_478f

    ld a, $12
    ld [$c1bf], a
    ld a, $ff
    ld [$c4b9], a
    jr jr_0c6_478f

jr_0c6_4768:
    jr jr_0c6_478f

jr_0c6_476a:
    ld a, [$c4b4]
    or a
    jr nz, jr_0c6_478f

    ld a, [$c472]
    or a
    jr z, jr_0c6_478f

    ld a, [$c4b9]
    or a
    jr nz, jr_0c6_478f

    ld a, [$c11f]
    cp $03
    jr nz, jr_0c6_478f

    ld a, $19
    ld [$c1bf], a
    ld a, $ff
    ld [$c4b9], a
    jr jr_0c6_478f

jr_0c6_478f:
    ld a, $ff
    ret


jr_0c6_4792:
    xor a
    ret


Jump_0c6_4794:
    ld c, $01
    ld a, d
    cp $ff
    jr nz, jr_0c6_47a2

    ld a, e
    cp $fa
    jr nc, jr_0c6_47a2

    ld c, $00

jr_0c6_47a2:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_47af

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_47af:
    xor a
    ret


Jump_0c6_47b1:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_47be

    ld a, l
    cp $17
    jr c, jr_0c6_47be

    ld c, $03

jr_0c6_47be:
    ld a, h
    cp $ff
    jr nz, jr_0c6_47d4

    ld a, l
    cp $ce
    jr nc, jr_0c6_47d4

    ld a, d
    cp $ff
    jr nz, jr_0c6_47d2

    ld a, e
    cp $be
    jr c, jr_0c6_47d4

jr_0c6_47d2:
    ld c, $01

jr_0c6_47d4:
    ld a, h
    cp $ff
    jr nz, jr_0c6_47ea

    ld a, l
    cp $b3
    jr nc, jr_0c6_47ea

    ld a, d
    cp $ff
    jr nz, jr_0c6_47e8

    ld a, e
    cp $aa
    jr c, jr_0c6_47ea

jr_0c6_47e8:
    ld c, $02

jr_0c6_47ea:
    ld a, h
    or a
    jr nz, jr_0c6_47ff

    ld a, l
    cp $17
    jr c, jr_0c6_47ff

    ld a, d
    cp $ff
    jr nz, jr_0c6_47fd

    ld a, e
    cp $be
    jr c, jr_0c6_47ff

jr_0c6_47fd:
    ld c, $04

jr_0c6_47ff:
    ld a, h
    or a
    jr nz, jr_0c6_4813

    ld a, l
    cp $17
    jr c, jr_0c6_4813

    ld a, d
    or a
    jr nz, jr_0c6_4813

    ld a, e
    cp $1d
    jr c, jr_0c6_4813

    ld c, $05

jr_0c6_4813:
    ld a, h
    or a
    jr nz, jr_0c6_4828

    ld a, l
    cp $56
    jr c, jr_0c6_4828

    ld a, d
    cp $ff
    jr nz, jr_0c6_4826

    ld a, e
    cp $be
    jr c, jr_0c6_4828

jr_0c6_4826:
    ld c, $06

jr_0c6_4828:
    ld a, h
    or a
    jr nz, jr_0c6_483c

    ld a, l
    cp $32
    jr c, jr_0c6_483c

    ld a, d
    or a
    jr nz, jr_0c6_483c

    ld a, e
    cp $27
    jr c, jr_0c6_483c

    ld c, $07

jr_0c6_483c:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4849

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4849:
    xor a
    ret


Jump_0c6_484b:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_4858

    ld a, e
    cp $29
    jr c, jr_0c6_4858

    ld c, $01

jr_0c6_4858:
    ld a, d
    or a
    jr nz, jr_0c6_4863

    ld a, e
    cp $49
    jr c, jr_0c6_4863

    ld c, $02

jr_0c6_4863:
    ld a, h
    or a
    jr nz, jr_0c6_486c

    ld a, l
    cp $67
    jr nc, jr_0c6_4877

jr_0c6_486c:
    ld a, d
    or a
    jr nz, jr_0c6_4875

    ld a, e
    cp $1e
    jr nc, jr_0c6_4877

jr_0c6_4875:
    ld c, $03

jr_0c6_4877:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4883

    ld a, l
    cp $da
    jr nc, jr_0c6_4883

    ld c, $04

jr_0c6_4883:
    ld a, d
    or a
    jr nz, jr_0c6_4897

    ld a, e
    cp $2e
    jr c, jr_0c6_4897

    ld a, h
    or a
    jr nz, jr_0c6_4895

    ld a, l
    cp $3c
    jr nc, jr_0c6_4897

jr_0c6_4895:
    ld c, $06

jr_0c6_4897:
    ld a, d
    or a
    jr nz, jr_0c6_48a7

    ld a, e
    cp $2e
    jr c, jr_0c6_48a7

    ld a, h
    cp $ff
    jr nz, jr_0c6_48a7

    ld c, $05

jr_0c6_48a7:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_48b4

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_48b4:
    xor a
    ret


Jump_0c6_48b6:
    ld c, $05
    ld a, h
    or a
    jr nz, jr_0c6_48c1

    ld a, l
    cp $4c
    jr nc, jr_0c6_48c3

jr_0c6_48c1:
    ld c, $00

jr_0c6_48c3:
    ld a, h
    cp $ff
    jr nz, jr_0c6_48d9

    ld a, l
    cp $bd
    jr nc, jr_0c6_48d9

    ld a, d
    cp $ff
    jr nz, jr_0c6_48d7

    ld a, e
    cp $ea
    jr c, jr_0c6_48d9

jr_0c6_48d7:
    ld c, $01

jr_0c6_48d9:
    ld a, d
    or a
    jr nz, jr_0c6_48ee

    ld a, e
    cp $21
    jr c, jr_0c6_48ee

    ld a, h
    cp $ff
    jr nz, jr_0c6_48ec

    ld a, l
    cp $a8
    jr c, jr_0c6_48ee

jr_0c6_48ec:
    ld c, $02

jr_0c6_48ee:
    ld a, d
    or a
    jr nz, jr_0c6_4903

    ld a, e
    cp $21
    jr c, jr_0c6_4903

    ld a, h
    cp $ff
    jr nz, jr_0c6_4901

    ld a, l
    cp $d9
    jr c, jr_0c6_4903

jr_0c6_4901:
    ld c, $03

jr_0c6_4903:
    ld a, d
    cp $ff
    jr nz, jr_0c6_490d

    ld a, e
    cp $f8
    jr c, jr_0c6_4918

jr_0c6_490d:
    ld a, h
    or a
    jr nz, jr_0c6_4918

    ld a, l
    cp $55
    jr c, jr_0c6_4918

    ld c, $04

jr_0c6_4918:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4925

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4925:
    xor a
    ret


Jump_0c6_4927:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_4932

    ld a, l
    cp $03
    jr nc, jr_0c6_4934

jr_0c6_4932:
    ld c, $01

jr_0c6_4934:
    ld a, d
    cp $ff
    jr nz, jr_0c6_493e

    ld a, e
    cp $fb
    jr c, jr_0c6_4940

jr_0c6_493e:
    ld c, $02

jr_0c6_4940:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4993

    ld a, c
    ld [$c11f], a
    ld a, [$c11b]
    or a
    jr nz, jr_0c6_4971

    ld a, [$c4b4]
    or a
    jr nz, jr_0c6_4958

    jr jr_0c6_4990

jr_0c6_4958:
    ld a, [$c4bb]
    or a
    jr nz, jr_0c6_4990

    ld a, [$c11f]
    cp $02
    jr nz, jr_0c6_4990

    ld a, $14
    ld [$c1bf], a
    ld a, $ff
    ld [$c4bb], a
    jr jr_0c6_4990

jr_0c6_4971:
    ld a, [$c4b4]
    or a
    jr nz, jr_0c6_4979

    jr jr_0c6_4990

jr_0c6_4979:
    ld a, [$c4bb]
    or a
    jr nz, jr_0c6_4990

    ld a, [$c11f]
    cp $02
    jr nz, jr_0c6_4990

    ld a, $1d
    ld [$c1bf], a
    ld a, $ff
    ld [$c4bb], a

jr_0c6_4990:
    ld a, $ff
    ret


jr_0c6_4993:
    xor a
    ret


Jump_0c6_4995:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_49a0

    ld a, e
    cp $08
    jr nc, jr_0c6_49a2

jr_0c6_49a0:
    ld c, $01

jr_0c6_49a2:
    ld a, d
    or a
    jr nz, jr_0c6_49b7

    ld a, e
    cp $17
    jr c, jr_0c6_49b7

    ld a, h
    cp $ff
    jr nz, jr_0c6_49b5

    ld a, l
    cp $f3
    jr c, jr_0c6_49b7

jr_0c6_49b5:
    ld c, $02

jr_0c6_49b7:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4a04

    ld a, c
    ld [$c11f], a
    ld a, [$c11b]
    or a
    jr nz, jr_0c6_49e5

    ld a, [$c4b4]
    or a
    jr z, jr_0c6_4a01

    ld a, [$c4be]
    or a
    jr nz, jr_0c6_4a01

    ld a, [$c11f]
    or a
    jr nz, jr_0c6_4a01

    ld a, $17
    ld [$c1bf], a
    ld a, $ff
    ld [$c4be], a
    jr jr_0c6_4a01

jr_0c6_49e5:
    ld a, [$c4b4]
    or a
    jr z, jr_0c6_4a01

    ld a, [$c4be]
    or a
    jr nz, jr_0c6_4a01

    ld a, [$c11f]
    or a
    jr nz, jr_0c6_4a01

    ld a, $1e
    ld [$c1bf], a
    ld a, $ff
    ld [$c4be], a

jr_0c6_4a01:
    ld a, $ff
    ret


jr_0c6_4a04:
    xor a
    ret


Jump_0c6_4a06:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_4a14

    ld a, l
    cp $ca
    jr nc, jr_0c6_4a14

    ld c, $01

jr_0c6_4a14:
    ld a, d
    or a
    jr nz, jr_0c6_4a1f

    ld a, e
    cp $3f
    jr c, jr_0c6_4a1f

    ld c, $02

jr_0c6_4a1f:
    ld a, h
    or a
    jr nz, jr_0c6_4a35

    ld a, l
    cp $1a
    jr c, jr_0c6_4a35

    ld c, $04
    ld a, d
    or a
    jr nz, jr_0c6_4a35

    ld a, e
    cp $09
    jr c, jr_0c6_4a35

    ld c, $03

jr_0c6_4a35:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4a42

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4a42:
    xor a
    ret


Jump_0c6_4a44:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_4a50

    ld a, l
    cp $e1
    jr c, jr_0c6_4a52

jr_0c6_4a50:
    ld c, $01

jr_0c6_4a52:
    ld a, h
    or a
    jr nz, jr_0c6_4a5d

    ld a, l
    cp $09
    jr c, jr_0c6_4a5d

    ld c, $02

jr_0c6_4a5d:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4a67

    ld a, e
    cp $fe
    jr c, jr_0c6_4a80

jr_0c6_4a67:
    ld c, $03
    ld a, h
    or a
    jr nz, jr_0c6_4a72

    ld a, l
    cp $10
    jr nc, jr_0c6_4a74

jr_0c6_4a72:
    ld c, $04

jr_0c6_4a74:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4a80

    ld a, l
    cp $c7
    jr nc, jr_0c6_4a80

    ld c, $05

jr_0c6_4a80:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4a8d

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4a8d:
    xor a
    ret


Jump_0c6_4a8f:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_4a98

    ld c, $01

jr_0c6_4a98:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4aa5

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4aa5:
    xor a
    ret


Jump_0c6_4aa7:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_4ab2

    ld a, e
    cp $04
    jr nc, jr_0c6_4ab4

jr_0c6_4ab2:
    ld c, $01

jr_0c6_4ab4:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4ac1

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4ac1:
    xor a
    ret


Jump_0c6_4ac3:
    ld c, $01
    ld a, d
    cp $ff
    jr nz, jr_0c6_4ad1

    ld a, e
    cp $e9
    jr nc, jr_0c6_4ad1

    ld c, $00

jr_0c6_4ad1:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4adb

    ld a, l
    cp $fd
    jr c, jr_0c6_4add

jr_0c6_4adb:
    ld c, $02

jr_0c6_4add:
    ld a, h
    or a
    jr nz, jr_0c6_4ae8

    ld a, l
    cp $53
    jr c, jr_0c6_4ae8

    ld c, $03

jr_0c6_4ae8:
    ld a, d
    or a
    jr nz, jr_0c6_4af1

    ld a, e
    cp $0f
    jr nc, jr_0c6_4afc

jr_0c6_4af1:
    ld a, h
    or a
    jr nz, jr_0c6_4afc

    ld a, l
    cp $53
    jr c, jr_0c6_4afc

    ld c, $04

jr_0c6_4afc:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4b0e

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ld [$c41b], a
    ld a, $ff
    ret


jr_0c6_4b0e:
    xor a
    ret


Jump_0c6_4b10:
    ld c, $01
    ld a, d
    cp $ff
    jr nz, jr_0c6_4b1c

    ld a, e
    cp $ae
    jr c, jr_0c6_4b1e

jr_0c6_4b1c:
    ld c, $00

jr_0c6_4b1e:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4b28

    ld a, l
    cp $a0
    jr c, jr_0c6_4b2a

jr_0c6_4b28:
    ld c, $02

jr_0c6_4b2a:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4b34

    ld a, l
    cp $dc
    jr c, jr_0c6_4b36

jr_0c6_4b34:
    ld c, $03

jr_0c6_4b36:
    ld a, h
    or a
    jr nz, jr_0c6_4b52

    ld a, d
    cp $ff
    jr nz, jr_0c6_4b44

    ld a, e
    cp $c8
    jr c, jr_0c6_4b46

jr_0c6_4b44:
    ld c, $05

jr_0c6_4b46:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4b50

    ld a, e
    cp $ed
    jr c, jr_0c6_4b52

jr_0c6_4b50:
    ld c, $04

jr_0c6_4b52:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4b5f

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4b5f:
    xor a
    ret


Jump_0c6_4b61:
    ld c, $01
    ld a, d
    or a
    jr nz, jr_0c6_4b6e

    ld a, e
    cp $25
    jr c, jr_0c6_4b6e

    ld c, $00

jr_0c6_4b6e:
    ld a, h
    or a
    jr nz, jr_0c6_4b77

    ld a, l
    cp $14
    jr nc, jr_0c6_4b79

jr_0c6_4b77:
    ld c, $02

jr_0c6_4b79:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4b86

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4b86:
    xor a
    ret


Jump_0c6_4b88:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_4b99

    ld a, l
    or a
    jr z, jr_0c6_4b99

    ld a, d
    cp $ff
    jr nz, jr_0c6_4b99

    ld c, $01

jr_0c6_4b99:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4ba6

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4ba6:
    xor a
    ret


Jump_0c6_4ba8:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_4bb4

    ld a, e
    or a
    jr z, jr_0c6_4bb4

    ld c, $01

jr_0c6_4bb4:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4bbe

    ld a, e
    cp $fd
    jr c, jr_0c6_4bce

jr_0c6_4bbe:
    ld a, e
    cp $23
    jr nc, jr_0c6_4bce

    ld a, h
    or a
    jr nz, jr_0c6_4bce

    ld a, l
    cp $15
    jr c, jr_0c6_4bce

    ld c, $02

jr_0c6_4bce:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4bdb

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4bdb:
    xor a
    ret


Jump_0c6_4bdd:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_4beb

    ld a, e
    cp $ed
    jr nc, jr_0c6_4beb

    ld c, $01

jr_0c6_4beb:
    ld a, h
    or a
    jr nz, jr_0c6_4bf4

    ld a, l
    cp $24
    jr nc, jr_0c6_4c19

jr_0c6_4bf4:
    ld c, $03
    ld a, h
    cp $ff
    jr nz, jr_0c6_4c02

    ld a, l
    cp $e2
    jr nc, jr_0c6_4c02

    ld c, $02

jr_0c6_4c02:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4c0e

    ld a, l
    cp $a2
    jr nc, jr_0c6_4c0e

    ld c, $04

jr_0c6_4c0e:
    ld a, d
    or a
    jr nz, jr_0c6_4c19

    ld a, e
    cp $47
    jr c, jr_0c6_4c19

    ld c, $05

jr_0c6_4c19:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4c26

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4c26:
    xor a
    ret


Jump_0c6_4c28:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_4c34

    ld a, e
    cp $b2
    jr c, jr_0c6_4c36

jr_0c6_4c34:
    ld c, $01

jr_0c6_4c36:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4c40

    ld a, l
    cp $a0
    jr c, jr_0c6_4c42

jr_0c6_4c40:
    ld c, $02

jr_0c6_4c42:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4c4c

    ld a, l
    cp $ea
    jr c, jr_0c6_4c4e

jr_0c6_4c4c:
    ld c, $03

jr_0c6_4c4e:
    ld a, h
    or a
    jr nz, jr_0c6_4c59

    ld a, l
    cp $4d
    jr c, jr_0c6_4c59

    ld c, $04

jr_0c6_4c59:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4c63

    ld a, e
    cp $e4
    jr c, jr_0c6_4c65

jr_0c6_4c63:
    ld c, $05

jr_0c6_4c65:
    ld a, d
    or a
    jr nz, jr_0c6_4c7b

    ld a, e
    cp $83
    jr c, jr_0c6_4c7b

    ld c, $06
    ld a, h
    or a
    jr nz, jr_0c6_4c79

    ld a, l
    cp $27
    jr nc, jr_0c6_4c7b

jr_0c6_4c79:
    ld c, $07

jr_0c6_4c7b:
    ld a, $ff
    ld [$c4d5], a
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4c8d

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4c8d:
    xor a
    ret


Jump_0c6_4c8f:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_4c9a

    ld a, e
    cp $04
    jr nc, jr_0c6_4c9c

jr_0c6_4c9a:
    ld c, $01

jr_0c6_4c9c:
    ld a, h
    or a
    jr nz, jr_0c6_4cb1

    ld a, l
    cp $06
    jr c, jr_0c6_4cb1

    ld a, d
    cp $ff
    jr nz, jr_0c6_4cb1

    ld a, e
    cp $ed
    jr nc, jr_0c6_4cb1

    ld c, $02

jr_0c6_4cb1:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4cc7

    ld a, l
    cp $f3
    jr nc, jr_0c6_4cc7

    ld a, d
    cp $ff
    jr nz, jr_0c6_4cc7

    ld a, e
    cp $f6
    jr nc, jr_0c6_4cc7

    ld c, $03

jr_0c6_4cc7:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4cd4

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4cd4:
    xor a
    ret


Jump_0c6_4cd6:
    ld c, $05
    ld a, d
    cp $ff
    jr nz, jr_0c6_4ce4

    ld a, e
    cp $cc
    jr nc, jr_0c6_4ce4

    ld c, $04

jr_0c6_4ce4:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4cee

    ld a, l
    cp $c2
    jr c, jr_0c6_4cf0

jr_0c6_4cee:
    ld c, $03

jr_0c6_4cf0:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4cfa

    ld a, l
    cp $c2
    jr c, jr_0c6_4d06

jr_0c6_4cfa:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4d04

    ld a, e
    cp $cf
    jr c, jr_0c6_4d06

jr_0c6_4d04:
    ld c, $02

jr_0c6_4d06:
    ld a, d
    or a
    jr nz, jr_0c6_4d11

    ld a, e
    cp $13
    jr c, jr_0c6_4d11

    ld c, $00

jr_0c6_4d11:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4d26

    ld a, l
    cp $cf
    jr nc, jr_0c6_4d26

    ld a, d
    or a
    jr nz, jr_0c6_4d26

    ld a, e
    cp $37
    jr c, jr_0c6_4d26

    ld c, $01

jr_0c6_4d26:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4d33

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4d33:
    xor a
    ret


Jump_0c6_4d35:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_4d41

    ld a, l
    cp $cf
    jr c, jr_0c6_4d43

jr_0c6_4d41:
    ld c, $01

jr_0c6_4d43:
    ld a, h
    or a
    jr nz, jr_0c6_4d4e

    ld a, l
    cp $04
    jr c, jr_0c6_4d4e

    ld c, $02

jr_0c6_4d4e:
    ld a, h
    or a
    jr nz, jr_0c6_4d59

    ld a, l
    cp $29
    jr c, jr_0c6_4d59

    ld c, $07

jr_0c6_4d59:
    ld a, h
    or a
    jr nz, jr_0c6_4d64

    ld a, l
    cp $46
    jr c, jr_0c6_4d64

    ld c, $03

jr_0c6_4d64:
    ld a, d
    or a
    jr nz, jr_0c6_4d6d

    ld a, e
    cp $25
    jr nc, jr_0c6_4d6f

jr_0c6_4d6d:
    ld c, $04

jr_0c6_4d6f:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4d84

    ld a, e
    cp $bb
    jr nc, jr_0c6_4d84

    ld a, h
    or a
    jr nz, jr_0c6_4d84

    ld a, l
    cp $5a
    jr c, jr_0c6_4d84

    ld c, $05

jr_0c6_4d84:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4d90

    ld a, e
    cp $a5
    jr nc, jr_0c6_4d90

    ld c, $06

jr_0c6_4d90:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4dc9

    ld a, c
    ld [$c11f], a
    cp $03
    jr nz, jr_0c6_4dc6

    ld a, [$c4a0]
    or a
    jr z, jr_0c6_4dc6

    ld a, [$c49f]
    or a
    jr nz, jr_0c6_4dc6

    ld a, [$c11b]
    or a
    jr z, jr_0c6_4dbc

    ld a, $12
    ld [$c1bf], a
    ld a, $ff
    ld [$c49f], a
    jr jr_0c6_4dc6

jr_0c6_4dbc:
    ld a, $0c
    ld [$c1bf], a
    ld a, $ff
    ld [$c49f], a

jr_0c6_4dc6:
    ld a, $ff
    ret


jr_0c6_4dc9:
    xor a
    ret


Jump_0c6_4dcb:
    ld c, $04
    ld a, d
    cp $ff
    jr nz, jr_0c6_4dd7

    ld a, e
    cp $fa
    jr c, jr_0c6_4dd9

jr_0c6_4dd7:
    ld c, $02

jr_0c6_4dd9:
    ld a, d
    or a
    jr nz, jr_0c6_4de4

    ld a, e
    cp $3e
    jr c, jr_0c6_4de4

    ld c, $01

jr_0c6_4de4:
    ld a, h
    or a
    jr nz, jr_0c6_4ded

    ld a, l
    cp $08
    jr nc, jr_0c6_4def

jr_0c6_4ded:
    ld c, $03

jr_0c6_4def:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4e19

    ld a, c
    ld [$c11f], a
    ld a, [$c11b]
    or a
    jr z, jr_0c6_4e16

    ld a, [$c11f]
    cp $02
    jr nz, jr_0c6_4e16

    ld a, [$c4c9]
    or a
    jr nz, jr_0c6_4e16

    ld a, $11
    ld [$c1bf], a
    ld a, $ff
    ld [$c4c9], a

jr_0c6_4e16:
    ld a, $ff
    ret


jr_0c6_4e19:
    xor a
    ret


Jump_0c6_4e1b:
    ld c, $01
    ld a, d
    cp $ff
    jr nz, jr_0c6_4e29

    ld a, e
    cp $fb
    jr nc, jr_0c6_4e29

    ld c, $00

jr_0c6_4e29:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4e36

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4e36:
    xor a
    ret


Jump_0c6_4e38:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_4e44

    ld a, l
    cp $da
    jr c, jr_0c6_4e46

jr_0c6_4e44:
    ld c, $01

jr_0c6_4e46:
    ld a, h
    or a
    jr nz, jr_0c6_4e51

    ld a, l
    cp $18
    jr c, jr_0c6_4e51

    ld c, $07

jr_0c6_4e51:
    ld a, h
    or a
    jr nz, jr_0c6_4e5c

    ld a, l
    cp $47
    jr c, jr_0c6_4e5c

    ld c, $02

jr_0c6_4e5c:
    ld a, d
    or a
    jr nz, jr_0c6_4e65

    ld a, e
    cp $1a
    jr nc, jr_0c6_4e67

jr_0c6_4e65:
    ld c, $04

jr_0c6_4e67:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4e73

    ld a, e
    cp $e5
    jr nc, jr_0c6_4e73

    ld c, $03

jr_0c6_4e73:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4e80

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4e80:
    xor a
    ret


Jump_0c6_4e82:
    ld c, $01
    ld a, h
    cp $ff
    jr nz, jr_0c6_4e8e

    ld a, l
    cp $fb
    jr c, jr_0c6_4e90

jr_0c6_4e8e:
    ld c, $02

jr_0c6_4e90:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4e9d

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4e9d:
    xor a
    ret


Jump_0c6_4e9f:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_4eaa

    ld a, e
    cp $19
    jr nc, jr_0c6_4eac

jr_0c6_4eaa:
    ld c, $01

jr_0c6_4eac:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4eb8

    ld a, e
    cp $f0
    jr nc, jr_0c6_4eb8

    ld c, $02

jr_0c6_4eb8:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4ecd

    ld a, e
    cp $d1
    jr nc, jr_0c6_4ecd

    ld a, h
    or a
    jr nz, jr_0c6_4ecb

    ld a, l
    cp $28
    jr nc, jr_0c6_4ecd

jr_0c6_4ecb:
    ld c, $05

jr_0c6_4ecd:
    ld a, h
    or a
    jr nz, jr_0c6_4ed6

    ld a, l
    cp $07
    jr nc, jr_0c6_4ed8

jr_0c6_4ed6:
    ld c, $03

jr_0c6_4ed8:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4ee5

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4ee5:
    xor a
    ret


Jump_0c6_4ee7:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_4ef3

    ld a, l
    or a
    jr z, jr_0c6_4ef3

    ld c, $01

jr_0c6_4ef3:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4f00

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4f00:
    xor a
    ret


Jump_0c6_4f02:
    ld c, $02
    ld a, d
    or a
    jr nz, jr_0c6_4f0f

    ld a, e
    cp $39
    jr c, jr_0c6_4f0f

    ld c, $00

jr_0c6_4f0f:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4f19

    ld a, l
    cp $c9
    jr c, jr_0c6_4f25

jr_0c6_4f19:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4f25

    ld a, e
    cp $dd
    jr nc, jr_0c6_4f25

    ld c, $01

jr_0c6_4f25:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4f2f

    ld a, e
    cp $dd
    jr c, jr_0c6_4f39

jr_0c6_4f2f:
    ld a, h
    or a
    jr nz, jr_0c6_4f39

    ld a, l
    or a
    jr z, jr_0c6_4f39

    ld c, $00

jr_0c6_4f39:
    ld a, d
    or a
    jr nz, jr_0c6_4f4c

    ld a, e
    cp $24
    jr c, jr_0c6_4f4c

    ld a, h
    or a
    jr nz, jr_0c6_4f4c

    ld a, l
    or a
    jr z, jr_0c6_4f4c

    ld c, $06

jr_0c6_4f4c:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4f62

    ld a, l
    cp $e2
    jr nc, jr_0c6_4f62

    ld a, d
    cp $ff
    jr nz, jr_0c6_4f62

    ld a, e
    cp $e2
    jr nc, jr_0c6_4f62

    ld c, $05

jr_0c6_4f62:
    ld a, d
    or a
    jr nz, jr_0c6_4f6b

    ld a, e
    cp $02
    jr nc, jr_0c6_4f75

jr_0c6_4f6b:
    ld a, h
    or a
    jr nz, jr_0c6_4f75

    ld a, l
    or a
    jr z, jr_0c6_4f75

    ld c, $04

jr_0c6_4f75:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4f8e

    ld a, c
    ld [$c11f], a
    xor a
    ld [$c462], a
    ld a, $ff
    ld [$c45f], a
    ld [$c4a0], a
    ld a, $ff
    ret


jr_0c6_4f8e:
    xor a
    ret


Jump_0c6_4f90:
    ld c, $00
    ld a, h
    or a
    jr z, jr_0c6_4f98

    ld c, $01

jr_0c6_4f98:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4fa5

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4fa5:
    xor a
    ret


Jump_0c6_4fa7:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_4fb3

    ld a, l
    cp $fa
    jr c, jr_0c6_4fb5

jr_0c6_4fb3:
    ld c, $01

jr_0c6_4fb5:
    ld a, h
    or a
    jr nz, jr_0c6_4fc0

    ld a, l
    cp $24
    jr c, jr_0c6_4fc0

    ld c, $02

jr_0c6_4fc0:
    ld a, h
    cp $ff
    jr nz, jr_0c6_4fd5

    ld a, l
    cp $e4
    jr nc, jr_0c6_4fd5

    ld a, d
    or a
    jr nz, jr_0c6_4fd5

    ld a, e
    cp $10
    jr c, jr_0c6_4fd5

    ld c, $03

jr_0c6_4fd5:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_4fe2

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_4fe2:
    xor a
    ret


Jump_0c6_4fe4:
    ld c, $04
    ld a, h
    or a
    jr nz, jr_0c6_4fef

    ld a, l
    cp $46
    jr nc, jr_0c6_4ff1

jr_0c6_4fef:
    ld c, $05

jr_0c6_4ff1:
    ld a, d
    cp $ff
    jr nz, jr_0c6_4ffb

    ld a, e
    cp $c1
    jr c, jr_0c6_4ffd

jr_0c6_4ffb:
    ld c, $03

jr_0c6_4ffd:
    ld a, d
    or a
    jr nz, jr_0c6_5008

    ld a, e
    cp $29
    jr c, jr_0c6_5008

    ld c, $00

jr_0c6_5008:
    ld a, h
    or a
    jr nz, jr_0c6_5011

    ld a, l
    cp $46
    jr nc, jr_0c6_501c

jr_0c6_5011:
    ld a, d
    or a
    jr nz, jr_0c6_501c

    ld a, e
    cp $29
    jr c, jr_0c6_501c

    ld c, $01

jr_0c6_501c:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5028

    ld a, l
    cp $c4
    jr nc, jr_0c6_5028

    ld c, $02

jr_0c6_5028:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5050

    ld a, c
    ld [$c11f], a
    cp $01
    jr nz, jr_0c6_504d

    ld a, [$c30b]
    cp $92
    jr z, jr_0c6_504d

    ld a, [$c497]
    or a
    jr nz, jr_0c6_504d

    ld a, $0f
    ld [$c1bf], a
    ld a, $ff
    ld [$c497], a

jr_0c6_504d:
    ld a, $ff
    ret


jr_0c6_5050:
    xor a
    ret


Jump_0c6_5052:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_505d

    ld a, e
    cp $55
    jr nc, jr_0c6_5068

jr_0c6_505d:
    ld a, h
    or a
    jr nz, jr_0c6_5068

    ld a, l
    cp $65
    jr c, jr_0c6_5068

    ld c, $01

jr_0c6_5068:
    ld a, d
    or a
    jr nz, jr_0c6_507a

    ld a, e
    cp $20
    jr c, jr_0c6_507a

    ld a, h
    or a
    jr nz, jr_0c6_507a

    ld a, l
    cp $65
    jr nc, jr_0c6_507c

jr_0c6_507a:
    ld c, $02

jr_0c6_507c:
    ld a, d
    or a
    jr nz, jr_0c6_5085

    ld a, e
    cp $0a
    jr nc, jr_0c6_5090

jr_0c6_5085:
    ld a, h
    or a
    jr nz, jr_0c6_5090

    ld a, l
    cp $33
    jr c, jr_0c6_5090

    ld c, $04

jr_0c6_5090:
    ld a, d
    cp $ff
    jr nz, jr_0c6_509c

    ld a, e
    cp $9e
    jr nc, jr_0c6_509c

    ld c, $05

jr_0c6_509c:
    ld a, d
    cp $ff
    jr nz, jr_0c6_50b1

    ld a, e
    cp $ce
    jr nc, jr_0c6_50b1

    ld a, h
    or a
    jr nz, jr_0c6_50af

    ld a, l
    cp $27
    jr nc, jr_0c6_50b1

jr_0c6_50af:
    ld c, $06

jr_0c6_50b1:
    ld a, h
    cp $ff
    jr nz, jr_0c6_50bd

    ld a, l
    cp $bb
    jr nc, jr_0c6_50bd

    ld c, $07

jr_0c6_50bd:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_50ca

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_50ca:
    xor a
    ret


Jump_0c6_50cc:
    ld c, $01
    ld a, d
    cp $ff
    jr nz, jr_0c6_50e3

    ld a, e
    cp $b2
    jr nc, jr_0c6_50e3

    ld a, h
    or a
    jr nz, jr_0c6_50e3

    ld a, l
    cp $3b
    jr c, jr_0c6_50e3

    ld c, $00

jr_0c6_50e3:
    ld a, h
    or a
    jr nz, jr_0c6_50ec

    ld a, l
    cp $20
    jr nc, jr_0c6_50ee

jr_0c6_50ec:
    ld c, $02

jr_0c6_50ee:
    ld a, h
    cp $ff
    jr nz, jr_0c6_50fa

    ld a, l
    cp $f8
    jr nc, jr_0c6_50fa

    ld c, $05

jr_0c6_50fa:
    ld a, d
    or a
    jr nz, jr_0c6_5104

    ld a, e
    or a
    jr z, jr_0c6_5104

    ld c, $04

jr_0c6_5104:
    ld a, d
    or a
    jr nz, jr_0c6_510f

    ld a, e
    cp $45
    jr c, jr_0c6_510f

    ld c, $06

jr_0c6_510f:
    ld a, d
    or a
    jr nz, jr_0c6_5123

    ld a, e
    cp $3d
    jr c, jr_0c6_5123

    ld a, h
    or a
    jr nz, jr_0c6_5123

    ld a, l
    cp $17
    jr c, jr_0c6_5123

    ld c, $07

jr_0c6_5123:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5142

    ld a, e
    cp $b7
    jr nc, jr_0c6_5142

    ld a, h
    cp $ff
    jr nz, jr_0c6_5137

    ld a, l
    cp $f1
    jr nc, jr_0c6_5140

jr_0c6_5137:
    ld a, h
    or a
    jr nz, jr_0c6_5142

    ld a, l
    cp $10
    jr nc, jr_0c6_5142

jr_0c6_5140:
    ld c, $03

jr_0c6_5142:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_514f

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_514f:
    xor a
    ret


Jump_0c6_5151:
    ld c, $01
    ld a, h
    or a
    jr nz, jr_0c6_515e

    ld a, l
    cp $38
    jr c, jr_0c6_515e

    ld c, $04

jr_0c6_515e:
    ld a, d
    or a
    jr z, jr_0c6_5164

    ld c, $03

jr_0c6_5164:
    ld a, h
    or a
    jr z, jr_0c6_517b

    ld a, d
    cp $ff
    jr nz, jr_0c6_5174

    ld a, e
    cp $c1
    jr c, jr_0c6_517b

    jr jr_0c6_5179

jr_0c6_5174:
    ld a, e
    cp $40
    jr nc, jr_0c6_517b

jr_0c6_5179:
    ld c, $02

jr_0c6_517b:
    ld a, d
    or a
    jr nz, jr_0c6_5186

    ld a, e
    cp $58
    jr c, jr_0c6_5186

    ld c, $01

jr_0c6_5186:
    ld a, h
    cp $ff
    jr nz, jr_0c6_519c

    ld a, l
    cp $c1
    jr nc, jr_0c6_519c

    ld a, d
    cp $ff
    jr nz, jr_0c6_519c

    ld a, e
    cp $c4
    jr nc, jr_0c6_519c

    ld c, $06

jr_0c6_519c:
    ld a, h
    cp $ff
    jr nz, jr_0c6_51b1

    ld a, l
    cp $da
    jr nc, jr_0c6_51b1

    ld a, d
    or a
    jr nz, jr_0c6_51b1

    ld a, e
    cp $3f
    jr c, jr_0c6_51b1

    ld c, $00

jr_0c6_51b1:
    ld a, h
    cp $ff
    jr nz, jr_0c6_51c6

    ld a, l
    cp $bd
    jr nc, jr_0c6_51c6

    ld a, d
    or a
    jr nz, jr_0c6_51c6

    ld a, e
    cp $5a
    jr c, jr_0c6_51c6

    ld c, $07

jr_0c6_51c6:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_51d3

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_51d3:
    xor a
    ret


Jump_0c6_51d5:
    ld c, $01
    ld a, d
    or a
    jr nz, jr_0c6_51e2

    ld a, e
    cp $65
    jr c, jr_0c6_51e2

    ld c, $00

jr_0c6_51e2:
    ld a, h
    or a
    jr nz, jr_0c6_51eb

    ld a, l
    cp $56
    jr nc, jr_0c6_51ed

jr_0c6_51eb:
    ld c, $02

jr_0c6_51ed:
    ld a, h
    cp $ff
    jr nz, jr_0c6_51f9

    ld a, l
    cp $ba
    jr nc, jr_0c6_51f9

    ld c, $03

jr_0c6_51f9:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5205

    ld a, e
    cp $f6
    jr nc, jr_0c6_5205

    ld c, $04

jr_0c6_5205:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5211

    ld a, e
    cp $9c
    jr nc, jr_0c6_5211

    ld c, $05

jr_0c6_5211:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5241

    ld a, c
    ld [$c11f], a
    ld a, [$c11b]
    or a
    jr z, jr_0c6_523e

    ld a, [$c4a0]
    or a
    jr z, jr_0c6_523e

    ld a, [$c4ca]
    or a
    jr nz, jr_0c6_523e

    ld a, [$c11f]
    cp $04
    jr nz, jr_0c6_523e

    ld a, $13
    ld [$c1bf], a
    ld a, $ff
    ld [$c4ca], a

jr_0c6_523e:
    ld a, $ff
    ret


jr_0c6_5241:
    xor a
    ret


Jump_0c6_5243:
    ld c, $03
    ld a, d
    or a
    jr nz, jr_0c6_524e

    ld a, e
    cp $08
    jr nc, jr_0c6_5250

jr_0c6_524e:
    ld c, $00

jr_0c6_5250:
    ld a, d
    or a
    jr nz, jr_0c6_5259

    ld a, e
    cp $08
    jr nc, jr_0c6_5265

jr_0c6_5259:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5265

    ld a, l
    cp $ef
    jr nc, jr_0c6_5265

    ld c, $01

jr_0c6_5265:
    ld a, d
    cp $ff
    jr nz, jr_0c6_527a

    ld a, e
    cp $f0
    jr nc, jr_0c6_527a

    ld a, h
    or a
    jr nz, jr_0c6_527a

    ld a, l
    cp $0b
    jr c, jr_0c6_527a

    ld c, $02

jr_0c6_527a:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5287

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5287:
    xor a
    ret


Jump_0c6_5289:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_5295

    ld a, e
    cp $fc
    jr c, jr_0c6_5297

jr_0c6_5295:
    ld c, $01

jr_0c6_5297:
    ld a, h
    cp $ff
    jr nz, jr_0c6_52a1

    ld a, l
    cp $ea
    jr c, jr_0c6_52b9

jr_0c6_52a1:
    ld c, $02
    ld a, d
    or a
    jr nz, jr_0c6_52ac

    ld a, e
    cp $35
    jr nc, jr_0c6_52ae

jr_0c6_52ac:
    ld c, $03

jr_0c6_52ae:
    ld a, d
    or a
    jr nz, jr_0c6_52b7

    ld a, e
    cp $10
    jr nc, jr_0c6_52b9

jr_0c6_52b7:
    ld c, $04

jr_0c6_52b9:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_52f8

    ld a, c
    ld [$c11f], a
    cp $03
    jr nz, jr_0c6_52f5

    ld a, [$c11b]
    or a
    jr z, jr_0c6_52e2

    ld a, [$c4a2]
    or a
    jr nz, jr_0c6_52f5

    ld a, $17
    ld [$c1bf], a
    ld a, $ff
    ld [$c4a2], a
    ld [$c572], a
    jr jr_0c6_52f5

jr_0c6_52e2:
    ld a, [$c4a2]
    or a
    jr nz, jr_0c6_52f5

    ld a, $10
    ld [$c1bf], a
    ld a, $ff
    ld [$c4a2], a
    ld [$c572], a

jr_0c6_52f5:
    ld a, $ff
    ret


jr_0c6_52f8:
    xor a
    ret


Jump_0c6_52fa:
    ld c, $06
    ld a, d
    cp $ff
    jr nz, jr_0c6_5308

    ld a, e
    cp $fc
    jr nc, jr_0c6_5308

    ld c, $07

jr_0c6_5308:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5314

    ld a, e
    cp $d7
    jr nc, jr_0c6_5314

    ld c, $00

jr_0c6_5314:
    ld a, h
    or a
    jr nz, jr_0c6_531d

    ld a, l
    cp $14
    jr nc, jr_0c6_531f

jr_0c6_531d:
    ld c, $02

jr_0c6_531f:
    ld a, h
    cp $ff
    jr nz, jr_0c6_532b

    ld a, l
    cp $c4
    jr nc, jr_0c6_532b

    ld c, $03

jr_0c6_532b:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5337

    ld a, l
    cp $9c
    jr nc, jr_0c6_5337

    ld c, $04

jr_0c6_5337:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5344

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5344:
    xor a
    ret


Jump_0c6_5346:
    ld c, $01
    ld a, d
    or a
    jr nz, jr_0c6_5351

    ld a, e
    cp $20
    jr nc, jr_0c6_5353

jr_0c6_5351:
    ld c, $00

jr_0c6_5353:
    ld a, d
    cp $ff
    jr nz, jr_0c6_535f

    ld a, e
    cp $f6
    jr nc, jr_0c6_535f

    ld c, $02

jr_0c6_535f:
    ld a, d
    cp $ff
    jr nz, jr_0c6_536b

    ld a, e
    cp $c6
    jr nc, jr_0c6_536b

    ld c, $04

jr_0c6_536b:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5380

    ld a, e
    cp $c6
    jr nc, jr_0c6_5380

    ld a, h
    or a
    jr nz, jr_0c6_537e

    ld a, l
    cp $42
    jr nc, jr_0c6_5380

jr_0c6_537e:
    ld c, $03

jr_0c6_5380:
    ld a, h
    or a
    jr nz, jr_0c6_5389

    ld a, l
    cp $12
    jr nc, jr_0c6_538b

jr_0c6_5389:
    ld c, $05

jr_0c6_538b:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5395

    ld a, e
    cp $c5
    jr c, jr_0c6_53a0

jr_0c6_5395:
    ld a, h
    or a
    jr nz, jr_0c6_539e

    ld a, l
    cp $0f
    jr nc, jr_0c6_53a0

jr_0c6_539e:
    ld c, $06

jr_0c6_53a0:
    ld a, h
    cp $ff
    jr nz, jr_0c6_53ac

    ld a, l
    cp $ab
    jr nc, jr_0c6_53ac

    ld c, $07

jr_0c6_53ac:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_53b9

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_53b9:
    xor a
    ret


Jump_0c6_53bb:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_53c6

    ld a, e
    cp $3e
    jr nc, jr_0c6_53c8

jr_0c6_53c6:
    ld c, $01

jr_0c6_53c8:
    ld a, d
    cp $ff
    jr nz, jr_0c6_53d4

    ld a, e
    cp $fb
    jr nc, jr_0c6_53d4

    ld c, $02

jr_0c6_53d4:
    ld a, h
    or a
    jr nz, jr_0c6_53dd

    ld a, l
    cp $22
    jr nc, jr_0c6_5402

jr_0c6_53dd:
    ld c, $03
    ld a, d
    cp $ff
    jr nz, jr_0c6_53e9

    ld a, e
    cp $c5
    jr c, jr_0c6_53eb

jr_0c6_53e9:
    ld c, $04

jr_0c6_53eb:
    ld a, d
    cp $ff
    jr nz, jr_0c6_53f5

    ld a, e
    cp $ef
    jr c, jr_0c6_53f7

jr_0c6_53f5:
    ld c, $05

jr_0c6_53f7:
    ld a, d
    or a
    jr nz, jr_0c6_5402

    ld a, e
    cp $3d
    jr c, jr_0c6_5402

    ld c, $06

jr_0c6_5402:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_540f

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_540f:
    xor a
    ret


Jump_0c6_5411:
    ld c, $00
    ld a, d
    or a
    jr z, jr_0c6_5419

    ld c, $01

jr_0c6_5419:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5426

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5426:
    xor a
    ret


Jump_0c6_5428:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_5434

    ld a, l
    cp $db
    jr c, jr_0c6_5436

jr_0c6_5434:
    ld c, $01

jr_0c6_5436:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5440

    ld a, l
    cp $e9
    jr c, jr_0c6_544c

jr_0c6_5440:
    ld a, d
    cp $ff
    jr nz, jr_0c6_544a

    ld a, e
    cp $c1
    jr c, jr_0c6_544c

jr_0c6_544a:
    ld c, $02

jr_0c6_544c:
    ld a, h
    or a
    jr nz, jr_0c6_5460

    ld a, l
    cp $2b
    jr c, jr_0c6_5460

    ld a, d
    or a
    jr nz, jr_0c6_5460

    ld a, e
    cp $21
    jr c, jr_0c6_5460

    ld c, $03

jr_0c6_5460:
    ld a, h
    or a
    jr nz, jr_0c6_5474

    ld a, l
    cp $33
    jr c, jr_0c6_5474

    ld a, d
    or a
    jr nz, jr_0c6_5472

    ld a, e
    cp $4e
    jr nc, jr_0c6_5474

jr_0c6_5472:
    ld c, $04

jr_0c6_5474:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5481

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5481:
    xor a
    ret


Jump_0c6_5483:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5490

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5490:
    xor a
    ret


Jump_0c6_5492:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_54d5

    ld a, l
    cp $06
    jr c, jr_0c6_54d5

    ld c, $01
    ld a, d
    cp $ff
    jr nz, jr_0c6_54ab

    ld a, e
    cp $be
    jr nc, jr_0c6_54ab

    ld c, $02

jr_0c6_54ab:
    ld a, d
    cp $ff
    jr nz, jr_0c6_54c0

    ld a, e
    cp $a2
    jr nc, jr_0c6_54c0

    ld a, h
    or a
    jr nz, jr_0c6_54c0

    ld a, l
    cp $1f
    jr c, jr_0c6_54c0

    ld c, $03

jr_0c6_54c0:
    ld a, d
    or a
    jr nz, jr_0c6_54ca

    ld a, e
    or a
    jr z, jr_0c6_54ca

    ld c, $04

jr_0c6_54ca:
    ld a, d
    or a
    jr nz, jr_0c6_54d5

    ld a, e
    cp $3b
    jr c, jr_0c6_54d5

    ld c, $05

jr_0c6_54d5:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_54e2

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_54e2:
    xor a
    ret


Jump_0c6_54e4:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_54f0

    ld a, l
    cp $ca
    jr c, jr_0c6_54f2

jr_0c6_54f0:
    ld c, $01

jr_0c6_54f2:
    ld a, d
    or a
    jr nz, jr_0c6_54fb

    ld a, e
    cp $37
    jr nc, jr_0c6_54fd

jr_0c6_54fb:
    ld c, $02

jr_0c6_54fd:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5513

    ld a, e
    cp $ed
    jr nc, jr_0c6_5513

    ld a, h
    cp $ff
    jr nz, jr_0c6_5511

    ld a, l
    cp $d4
    jr c, jr_0c6_5513

jr_0c6_5511:
    ld c, $03

jr_0c6_5513:
    ld a, d
    cp $ff
    jr nz, jr_0c6_551f

    ld a, e
    cp $a7
    jr nc, jr_0c6_551f

    ld c, $04

jr_0c6_551f:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5535

    ld a, l
    cp $d4
    jr nc, jr_0c6_5535

    ld a, d
    cp $ff
    jr nz, jr_0c6_5535

    ld a, e
    cp $ed
    jr nc, jr_0c6_5535

    ld c, $05

jr_0c6_5535:
    ld a, h
    or a
    jr nz, jr_0c6_5540

    ld a, l
    cp $12
    jr c, jr_0c6_5540

    ld c, $06

jr_0c6_5540:
    ld a, h
    or a
    jr nz, jr_0c6_554b

    ld a, l
    cp $4d
    jr c, jr_0c6_554b

    ld c, $07

jr_0c6_554b:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5558

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5558:
    xor a
    ret


Jump_0c6_555a:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_5568

    ld a, e
    cp $d6
    jr nc, jr_0c6_5568

    ld c, $01

jr_0c6_5568:
    ld a, d
    or a
    jr nz, jr_0c6_5572

    ld a, e
    or a
    jr z, jr_0c6_5572

    ld c, $02

jr_0c6_5572:
    ld a, d
    cp $ff
    jr nz, jr_0c6_557e

    ld a, e
    cp $f1
    jr c, jr_0c6_558e

    jr jr_0c6_5583

jr_0c6_557e:
    ld a, e
    cp $14
    jr nc, jr_0c6_558e

jr_0c6_5583:
    ld a, h
    or a
    jr nz, jr_0c6_558e

    ld a, l
    cp $1a
    jr c, jr_0c6_558e

    ld c, $03

jr_0c6_558e:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_559b

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_559b:
    xor a
    ret


Jump_0c6_559d:
    ld c, $00
    ld a, h
    or a
    jr z, jr_0c6_55a5

    ld c, $02

jr_0c6_55a5:
    ld a, h
    or a
    jr nz, jr_0c6_55b0

    ld a, l
    cp $4c
    jr c, jr_0c6_55b0

    ld c, $01

jr_0c6_55b0:
    ld a, h
    cp $ff
    jr nz, jr_0c6_55bc

    ld a, l
    cp $c8
    jr nc, jr_0c6_55bc

    ld c, $03

jr_0c6_55bc:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_55c9

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_55c9:
    xor a
    ret


Jump_0c6_55cb:
    ld c, $01
    ld a, d
    cp $ff
    jr nz, jr_0c6_55e5

    ld a, e
    cp $b4
    jr nc, jr_0c6_55e5

    ld c, $03
    ld a, h
    cp $ff
    jr nz, jr_0c6_55e5

    ld a, l
    cp $ea
    jr nc, jr_0c6_55e5

    ld c, $04

jr_0c6_55e5:
    ld a, h
    or a
    jr nz, jr_0c6_55f0

    ld a, l
    cp $40
    jr c, jr_0c6_55f0

    ld c, $02

jr_0c6_55f0:
    ld a, d
    cp $ff
    jr nz, jr_0c6_55fa

    ld a, e
    cp $cc
    jr c, jr_0c6_5601

jr_0c6_55fa:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5601

    ld c, $00

jr_0c6_5601:
    ld a, d
    or a
    jr z, jr_0c6_560a

    ld a, e
    cp $f7
    jr c, jr_0c6_560c

jr_0c6_560a:
    ld c, $05

jr_0c6_560c:
    ld a, d
    or a
    jr nz, jr_0c6_5617

    ld a, e
    cp $42
    jr c, jr_0c6_5617

    ld c, $06

jr_0c6_5617:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5624

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5624:
    xor a
    ret


Jump_0c6_5626:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_562f

    ld c, $01

jr_0c6_562f:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_563c

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_563c:
    xor a
    ret


Jump_0c6_563e:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_5647

    ld c, $01

jr_0c6_5647:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5654

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5654:
    xor a
    ret


Jump_0c6_5656:
    ld a, h
    or a
    jr nz, jr_0c6_566f

    ld a, l
    cp $18
    jr c, jr_0c6_566f

    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_5685

    ld a, e
    cp $f5
    jr nc, jr_0c6_5685

    ld c, $03
    jr jr_0c6_5685

jr_0c6_566f:
    ld c, $01
    ld a, d
    cp $ff
    jr nz, jr_0c6_5685

    ld a, e
    cp $f5
    jr nc, jr_0c6_5685

    ld c, $02
    ld a, [$c4cd]
    or a
    jr z, jr_0c6_5685

    ld c, $06

jr_0c6_5685:
    ld a, d
    cp $ff
    jr nz, jr_0c6_56b3

    ld a, e
    cp $dc
    jr nc, jr_0c6_56b3

    ld a, h
    cp $ff
    jr z, jr_0c6_5699

    ld a, l
    cp $21
    jr nc, jr_0c6_56a3

jr_0c6_5699:
    ld c, $04
    ld a, [$c4cd]
    or a
    jr z, jr_0c6_56a3

    ld c, $07

jr_0c6_56a3:
    ld a, e
    cp $ce
    jr nc, jr_0c6_56b3

    ld a, h
    or a
    jr nz, jr_0c6_56b3

    ld a, l
    cp $1e
    jr c, jr_0c6_56b3

    ld c, $05

jr_0c6_56b3:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_56c0

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_56c0:
    xor a
    ret


Jump_0c6_56c2:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_56ca

    ld c, $01

jr_0c6_56ca:
    ld a, h
    or a
    jr nz, jr_0c6_56d5

    ld a, l
    cp $1c
    jr c, jr_0c6_56d5

    ld c, $04

jr_0c6_56d5:
    ld a, d
    or a
    jr nz, jr_0c6_56f1

    ld a, e
    cp $1f
    jr c, jr_0c6_56f1

    ld a, h
    or a
    jr nz, jr_0c6_56f1

    ld a, l
    cp $34
    jr nc, jr_0c6_56ef

    cp $1c
    jr c, jr_0c6_56f1

    ld c, $02
    jr jr_0c6_56f1

jr_0c6_56ef:
    ld c, $03

jr_0c6_56f1:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5706

    ld a, e
    cp $c3
    jr nc, jr_0c6_5706

    ld a, h
    or a
    jr nz, jr_0c6_5706

    ld a, l
    cp $1c
    jr c, jr_0c6_5706

    ld c, $05

jr_0c6_5706:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5713

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5713:
    xor a
    ret


Jump_0c6_5715:
    ld c, $01
    ld a, d
    or a
    jr nz, jr_0c6_5720

    ld a, e
    cp $06
    jr nc, jr_0c6_5722

jr_0c6_5720:
    ld c, $02

jr_0c6_5722:
    ld a, h
    or a
    jr nz, jr_0c6_5736

    ld a, l
    cp $0d
    jr c, jr_0c6_5736

    ld a, d
    or a
    jr nz, jr_0c6_5736

    ld a, e
    cp $0d
    jr c, jr_0c6_5736

    ld c, $00

jr_0c6_5736:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5743

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5743:
    xor a
    ret


Jump_0c6_5745:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_5759

    ld c, $01
    ld a, h
    or a
    jr z, jr_0c6_5757

    ld a, l
    cp $ff
    jr c, jr_0c6_5759

jr_0c6_5757:
    ld c, $02

jr_0c6_5759:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5781

    ld a, c
    ld [$c11f], a
    cp $00
    jr nz, jr_0c6_577e

    ld a, [$c30b]
    cp $92
    jr z, jr_0c6_577e

    ld a, [$c486]
    or a
    jr nz, jr_0c6_577e

    ld a, $08
    ld [$c1bf], a
    ld a, $ff
    ld [$c486], a

jr_0c6_577e:
    ld a, $ff
    ret


jr_0c6_5781:
    xor a
    ret


Jump_0c6_5783:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_5791

    ld a, e
    cp $ee
    jr nc, jr_0c6_5791

    ld c, $01

jr_0c6_5791:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_579e

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_579e:
    xor a
    ret


Jump_0c6_57a0:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_57ae

    ld a, e
    cp $f2
    jr nc, jr_0c6_57ae

    ld c, $01

jr_0c6_57ae:
    ld a, h
    or a
    jr nz, jr_0c6_57b7

    ld a, l
    cp $04
    jr nc, jr_0c6_57b9

jr_0c6_57b7:
    ld c, $02

jr_0c6_57b9:
    ld a, h
    cp $ff
    jr nz, jr_0c6_57c5

    ld a, l
    cp $cf
    jr nc, jr_0c6_57c5

    ld c, $03

jr_0c6_57c5:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_57d2

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_57d2:
    xor a
    ret


Jump_0c6_57d4:
    ld c, $01
    ld a, d
    or a
    jr z, jr_0c6_57ea

    ld c, $02
    ld a, e
    cp $d6
    jr nc, jr_0c6_57ea

    ld c, $06
    ld a, e
    cp $b8
    jr nc, jr_0c6_57ea

    ld c, $04

jr_0c6_57ea:
    ld a, h
    cp $ff
    jr nz, jr_0c6_57ff

    ld a, l
    cp $fa
    jr nc, jr_0c6_57ff

    ld a, d
    or a
    jr nz, jr_0c6_57ff

    ld a, e
    cp $25
    jr c, jr_0c6_57ff

    ld c, $00

jr_0c6_57ff:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5819

    ld a, l
    cp $ee
    jr nc, jr_0c6_5819

    ld a, d
    cp $ff
    jr nz, jr_0c6_5819

    ld a, e
    cp $c8
    jr c, jr_0c6_5819

    cp $f6
    jr nc, jr_0c6_5819

    ld c, $03

jr_0c6_5819:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5826

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5826:
    xor a
    ret


Jump_0c6_5828:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_5833

    ld a, e
    cp $24
    jr nc, jr_0c6_5835

jr_0c6_5833:
    ld c, $01

jr_0c6_5835:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5851

    ld a, e
    cp $e8
    jr nc, jr_0c6_5841

    ld c, $02

jr_0c6_5841:
    ld a, e
    cp $d8
    jr nc, jr_0c6_5851

    ld a, h
    or a
    jr nz, jr_0c6_5851

    ld a, l
    cp $17
    jr c, jr_0c6_5851

    ld c, $03

jr_0c6_5851:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5878

    ld a, c
    ld [$c11f], a
    cp $02
    jr nz, jr_0c6_5875

    ld a, [$c11b]
    or a
    jr z, jr_0c6_5875

    ld a, [$c4a1]
    or a
    jr nz, jr_0c6_5875

    ld a, $14
    ld [$c1bf], a
    ld a, $ff
    ld [$c4a1], a

jr_0c6_5875:
    ld a, $ff
    ret


jr_0c6_5878:
    xor a
    ret


Jump_0c6_587a:
    ld c, $01
    ld a, d
    or a
    jr z, jr_0c6_5889

    ld a, e
    cp $f9
    jr c, jr_0c6_5892

    ld c, $02
    jr jr_0c6_5892

jr_0c6_5889:
    ld c, $02
    ld a, e
    cp $15
    jr c, jr_0c6_5892

    ld c, $00

jr_0c6_5892:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_58cc

    ld a, c
    ld [$c11f], a
    ld a, [$c11b]
    or a
    jr z, jr_0c6_58c9

    ld a, [$c11f]
    or a
    jr z, jr_0c6_58b3

    cp $02
    jr z, jr_0c6_58ac

jr_0c6_58ac:
    ld a, $ff
    ld [$c4dc], a
    jr jr_0c6_58c9

jr_0c6_58b3:
    ld a, [$c4dc]
    or a
    jr z, jr_0c6_58c9

    ld a, [$c4dd]
    or a
    jr nz, jr_0c6_58c9

    ld a, $15
    ld [$c1bf], a
    ld a, $ff
    ld [$c4dd], a

jr_0c6_58c9:
    ld a, $ff
    ret


jr_0c6_58cc:
    xor a
    ret


Jump_0c6_58ce:
    ld c, $00
    ld a, d
    or a
    jr z, jr_0c6_58d6

    ld c, $01

jr_0c6_58d6:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_58fe

    ld a, c
    ld [$c11f], a
    cp $01
    jr nz, jr_0c6_58fb

    ld a, [$c30b]
    cp $92
    jr z, jr_0c6_58fb

    ld a, [$c488]
    or a
    jr nz, jr_0c6_58fb

    ld a, $0b
    ld [$c1bf], a
    ld a, $ff
    ld [$c488], a

jr_0c6_58fb:
    ld a, $ff
    ret


jr_0c6_58fe:
    xor a
    ret


Jump_0c6_5900:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_590d

    ld a, l
    cp $09
    jr c, jr_0c6_590d

    ld c, $01

jr_0c6_590d:
    ld a, d
    or a
    jr nz, jr_0c6_5916

    ld a, e
    cp $08
    jr nc, jr_0c6_591e

jr_0c6_5916:
    ld c, $02
    ld a, h
    or a
    jr nz, jr_0c6_591e

    ld c, $03

jr_0c6_591e:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_592b

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_592b:
    xor a
    ret


Jump_0c6_592d:
    ld c, $00
    ld a, h
    or a
    jr z, jr_0c6_5938

    ld a, l
    cp $f9
    jr c, jr_0c6_593a

jr_0c6_5938:
    ld c, $01

jr_0c6_593a:
    ld a, h
    or a
    jr nz, jr_0c6_5945

    ld a, l
    cp $47
    jr c, jr_0c6_5945

    ld c, $02

jr_0c6_5945:
    ld a, d
    cp $ff
    jr nz, jr_0c6_595d

    ld a, e
    cp $bc
    jr nc, jr_0c6_595d

    ld c, $03
    ld a, h
    cp $ff
    jr nz, jr_0c6_595d

    ld a, l
    cp $ec
    jr nc, jr_0c6_595d

    ld c, $04

jr_0c6_595d:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_596a

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_596a:
    xor a
    ret


Jump_0c6_596c:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_5977

    ld a, e
    cp $14
    jr nc, jr_0c6_5979

jr_0c6_5977:
    ld c, $01

jr_0c6_5979:
    ld a, h
    or a
    jr nz, jr_0c6_5988

    ld a, d
    or a
    jr nz, jr_0c6_5988

    ld a, e
    cp $13
    jr c, jr_0c6_5988

    ld c, $02

jr_0c6_5988:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5995

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5995:
    xor a
    ret


Jump_0c6_5997:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_59bc

    ld a, l
    cp $fc
    jr nc, jr_0c6_59bc

    ld c, $01
    ld a, d
    cp $ff
    jr z, jr_0c6_59b1

    ld a, e
    cp $31
    jr nc, jr_0c6_59bc

    jr jr_0c6_59b6

jr_0c6_59b1:
    ld a, e
    cp $e7
    jr c, jr_0c6_59ba

jr_0c6_59b6:
    ld c, $02
    jr jr_0c6_59bc

jr_0c6_59ba:
    ld c, $03

jr_0c6_59bc:
    ld a, h
    cp $ff
    jr nz, jr_0c6_59c8

    ld a, l
    cp $ee
    jr nc, jr_0c6_59c8

    ld c, $04

jr_0c6_59c8:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_59d5

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_59d5:
    xor a
    ret


Jump_0c6_59d7:
    ld c, $04
    ld a, h
    or a
    jr z, jr_0c6_59e2

    ld a, l
    cp $df
    jr c, jr_0c6_59e4

jr_0c6_59e2:
    ld c, $05

jr_0c6_59e4:
    ld a, d
    or a
    jr nz, jr_0c6_59f8

    ld a, e
    cp $40
    jr nc, jr_0c6_59ef

    ld c, $01

jr_0c6_59ef:
    ld a, d
    or a
    jr nz, jr_0c6_59f8

    ld a, e
    cp $13
    jr nc, jr_0c6_59fa

jr_0c6_59f8:
    ld c, $02

jr_0c6_59fa:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5a12

    ld a, e
    cp $b9
    jr nc, jr_0c6_5a12

    ld c, $06
    ld a, h
    cp $ff
    jr nz, jr_0c6_5a10

    ld a, l
    cp $d7
    jr c, jr_0c6_5a12

jr_0c6_5a10:
    ld c, $03

jr_0c6_5a12:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5a1e

    ld a, l
    cp $c2
    jr nc, jr_0c6_5a1e

    ld c, $00

jr_0c6_5a1e:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5a2b

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5a2b:
    xor a
    ret


Jump_0c6_5a2d:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_5a3d

    ld a, l
    cp $ec
    jr nc, jr_0c6_5a42

    ld c, $02
    jr jr_0c6_5a44

jr_0c6_5a3d:
    ld a, l
    cp $10
    jr nc, jr_0c6_5a44

jr_0c6_5a42:
    ld c, $01

jr_0c6_5a44:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5a51

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5a51:
    xor a
    ret


Jump_0c6_5a53:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_5a5f

    ld a, l
    cp $f7
    jr c, jr_0c6_5a61

jr_0c6_5a5f:
    ld c, $01

jr_0c6_5a61:
    ld a, d
    or a
    jr nz, jr_0c6_5a6c

    ld a, e
    cp $2b
    jr c, jr_0c6_5a6c

    ld c, $02

jr_0c6_5a6c:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5a79

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5a79:
    xor a
    ret


Jump_0c6_5a7b:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_5a8b

    ld a, l
    cp $f6
    jr c, jr_0c6_5a92

jr_0c6_5a87:
    ld c, $01
    jr jr_0c6_5a92

jr_0c6_5a8b:
    ld a, l
    cp $21
    jr c, jr_0c6_5a87

    ld c, $02

jr_0c6_5a92:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5a9f

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5a9f:
    xor a
    ret


Jump_0c6_5aa1:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_5aac

    ld a, l
    cp $37
    jr nc, jr_0c6_5ad3

jr_0c6_5aac:
    ld c, $04
    ld a, d
    or a
    jr nz, jr_0c6_5ab7

    ld a, e
    cp $11
    jr nc, jr_0c6_5ab9

jr_0c6_5ab7:
    ld c, $05

jr_0c6_5ab9:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5ac5

    ld a, e
    cp $ce
    jr nc, jr_0c6_5ac5

    ld c, $02

jr_0c6_5ac5:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5ae6

    ld a, l
    cp $ef
    jr nc, jr_0c6_5ae6

    ld c, $06
    jr jr_0c6_5ae6

jr_0c6_5ad3:
    ld a, d
    or a
    jr z, jr_0c6_5ae4

    ld a, e
    cp $d9
    jr nc, jr_0c6_5ae4

    cp $a7
    jr c, jr_0c6_5ae6

    ld c, $01
    jr jr_0c6_5ae6

jr_0c6_5ae4:
    ld c, $03

jr_0c6_5ae6:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5af3

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5af3:
    xor a
    ret


Jump_0c6_5af5:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_5b0e

    ld c, $01
    ld a, h
    or a
    jr z, jr_0c6_5b07

    ld a, l
    cp $f7
    jr c, jr_0c6_5b0e

jr_0c6_5b07:
    ld a, e
    cp $f0
    jr nc, jr_0c6_5b0e

    ld c, $02

jr_0c6_5b0e:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5b1b

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5b1b:
    xor a
    ret


Jump_0c6_5b1d:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_5b50

    ld c, $01
    ld a, d
    or a
    jr nz, jr_0c6_5b2e

    ld a, e
    cp $28
    jr nc, jr_0c6_5b30

jr_0c6_5b2e:
    ld c, $02

jr_0c6_5b30:
    ld a, h
    or a
    jr nz, jr_0c6_5b44

    ld a, l
    cp $2f
    jr c, jr_0c6_5b44

    ld a, d
    or a
    jr nz, jr_0c6_5b42

    ld a, e
    cp $14
    jr nc, jr_0c6_5b44

jr_0c6_5b42:
    ld c, $03

jr_0c6_5b44:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5b50

    ld a, e
    cp $e4
    jr nc, jr_0c6_5b50

    ld c, $04

jr_0c6_5b50:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5b7b

    ld a, c
    ld [$c11f], a
    cp $01
    jr nz, jr_0c6_5b78

    ld a, [$c30b]
    cp $92
    jr z, jr_0c6_5b78

    ld a, [$c489]
    or a
    jr nz, jr_0c6_5b7d

    ld a, $0c
    ld [$c1bf], a
    ld a, $ff
    ld [$c489], a
    ld [$c505], a

jr_0c6_5b78:
    ld a, $ff
    ret


jr_0c6_5b7b:
    xor a
    ret


jr_0c6_5b7d:
    ld a, [$c48a]
    or a
    jr nz, jr_0c6_5b78

    ld hl, $c1e7
    ld b, $08

jr_0c6_5b88:
    ld a, [hl]
    cp $34
    jr z, jr_0c6_5b93

    inc hl
    dec b
    jr nz, jr_0c6_5b88

    jr jr_0c6_5b78

jr_0c6_5b93:
    ld [hl], $00
    ld a, $0d
    ld [$c1bf], a
    ld a, $ff
    ld [$c48a], a
    jr jr_0c6_5b78

Jump_0c6_5ba1:
    ld c, $03
    ld a, h
    or a
    jr nz, jr_0c6_5bb0

    ld a, l
    cp $47
    jr c, jr_0c6_5bb5

    ld c, $01
    jr jr_0c6_5bb7

jr_0c6_5bb0:
    ld a, l
    cp $bb
    jr c, jr_0c6_5bb7

jr_0c6_5bb5:
    ld c, $00

jr_0c6_5bb7:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5bc9

    ld a, e
    cp $f0
    jr nc, jr_0c6_5bc9

    ld c, $02
    ld a, h
    or a
    jr z, jr_0c6_5bc9

    ld c, $04

jr_0c6_5bc9:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5bd6

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5bd6:
    xor a
    ret


Jump_0c6_5bd8:
    ld c, $02
    ld a, h
    or a
    jr nz, jr_0c6_5be5

    ld a, l
    cp $58
    jr nc, jr_0c6_5bf8

    jr jr_0c6_5bee

jr_0c6_5be5:
    ld a, l
    cp $ba
    jr c, jr_0c6_5bf2

    cp $e2
    jr c, jr_0c6_5bf6

jr_0c6_5bee:
    ld c, $01
    jr jr_0c6_5bf8

jr_0c6_5bf2:
    ld c, $00
    jr jr_0c6_5bf8

jr_0c6_5bf6:
    ld c, $05

jr_0c6_5bf8:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5c05

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5c05:
    xor a
    ret


Jump_0c6_5c07:
    ld c, $05
    ld a, h
    or a
    jr z, jr_0c6_5c1a

    ld a, l
    cp $e5
    jr nc, jr_0c6_5c1f

    cp $b1
    jr c, jr_0c6_5c25

    ld c, $04
    jr jr_0c6_5c25

jr_0c6_5c1a:
    ld a, l
    cp $0f
    jr nc, jr_0c6_5c23

jr_0c6_5c1f:
    ld c, $01
    jr jr_0c6_5c25

jr_0c6_5c23:
    ld c, $00

jr_0c6_5c25:
    ld a, d
    or a
    jr nz, jr_0c6_5c2e

    ld a, e
    cp $19
    jr nc, jr_0c6_5c3b

jr_0c6_5c2e:
    ld c, $02
    ld a, h
    or a
    jr nz, jr_0c6_5c3b

    ld a, l
    cp $09
    jr c, jr_0c6_5c3b

    ld c, $03

jr_0c6_5c3b:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5c48

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5c48:
    xor a
    ret


Jump_0c6_5c4a:
    ld c, $05
    ld a, h
    or a
    jr nz, jr_0c6_5c55

    ld a, l
    cp $4a
    jr nc, jr_0c6_5c57

jr_0c6_5c55:
    ld c, $02

jr_0c6_5c57:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5c63

    ld a, l
    cp $fa
    jr nc, jr_0c6_5c63

    ld c, $03

jr_0c6_5c63:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5c6f

    ld a, l
    cp $a0
    jr nc, jr_0c6_5c6f

    ld c, $04

jr_0c6_5c6f:
    ld a, d
    or a
    jr nz, jr_0c6_5c78

    ld a, e
    cp $16
    jr nc, jr_0c6_5c85

jr_0c6_5c78:
    ld c, $01
    ld a, h
    or a
    jr nz, jr_0c6_5c85

    ld a, l
    cp $37
    jr c, jr_0c6_5c85

    ld c, $00

jr_0c6_5c85:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5c92

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5c92:
    xor a
    ret


Jump_0c6_5c94:
    ld c, $02
    ld a, d
    or a
    jr nz, jr_0c6_5c9c

    ld c, $00

jr_0c6_5c9c:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5ccf

    ld a, c
    ld [$c11f], a
    ld a, [$c11b]
    or a
    jr z, jr_0c6_5ccc

    ld a, [$c413]
    or a
    jr nz, jr_0c6_5ccc

    ld a, [$c4c8]
    or a
    jr nz, jr_0c6_5ccc

    ld a, [$c11f]
    cp $02
    jr nz, jr_0c6_5ccc

    ld a, $07
    ld [$c1bf], a
    ld a, $ff
    ld [$c4c8], a
    ld [$c413], a

jr_0c6_5ccc:
    ld a, $ff
    ret


jr_0c6_5ccf:
    xor a
    ret


Jump_0c6_5cd1:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_5cd9

    ld c, $01

jr_0c6_5cd9:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5d02

    ld a, c
    ld [$c11f], a
    ld a, [$c531]
    or a
    jr nz, jr_0c6_5cff

    ld a, [$c52e]
    or a
    jr nz, jr_0c6_5cff

    ld a, [$c11b]
    or a
    jr z, jr_0c6_5cfb

    xor a
    ld [$c413], a
    jr jr_0c6_5cff

jr_0c6_5cfb:
    xor a
    ld [$c41f], a

jr_0c6_5cff:
    ld a, $ff
    ret


jr_0c6_5d02:
    xor a
    ret


Jump_0c6_5d04:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_5d0d

    ld c, $01

jr_0c6_5d0d:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5d1a

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5d1a:
    xor a
    ret


Jump_0c6_5d1c:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_5d25

    ld c, $01

jr_0c6_5d25:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5d32

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5d32:
    xor a
    ret


Jump_0c6_5d34:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_5d46

    ld a, l
    cp $ec
    jr c, jr_0c6_5d44

    ld c, $01
    jr jr_0c6_5d46

jr_0c6_5d44:
    ld c, $02

jr_0c6_5d46:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5d53

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5d53:
    xor a
    ret


Jump_0c6_5d55:
    ld c, $00
    ld a, d
    cp $ff
    jr z, jr_0c6_5d61

    ld a, e
    cp $40
    jr nc, jr_0c6_5d63

jr_0c6_5d61:
    ld c, $01

jr_0c6_5d63:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5d6f

    ld a, e
    cp $f8
    jr nc, jr_0c6_5d6f

    ld c, $02

jr_0c6_5d6f:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5d79

    ld a, l
    cp $f3
    jr c, jr_0c6_5d7b

jr_0c6_5d79:
    ld c, $03

jr_0c6_5d7b:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5dab

    ld a, c
    ld [$c11f], a
    ld a, [$c4a0]
    or a
    jr z, jr_0c6_5da8

    ld a, [$c4b5]
    or a
    jr nz, jr_0c6_5da8

    ld a, [$c11b]
    or a
    jr nz, jr_0c6_5da8

    ld a, [$c11f]
    cp $01
    jr nz, jr_0c6_5da8

    ld a, $0d
    ld [$c1bf], a
    ld a, $ff
    ld [$c4b5], a

jr_0c6_5da8:
    ld a, $ff
    ret


jr_0c6_5dab:
    xor a
    ret


Jump_0c6_5dad:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_5dba

    ld a, e
    cp $29
    jr c, jr_0c6_5dba

    ld c, $01

jr_0c6_5dba:
    ld a, h
    or a
    jr nz, jr_0c6_5dc7

    ld a, l
    cp $38
    jr c, jr_0c6_5dc7

    ld c, $02
    jr jr_0c6_5de0

jr_0c6_5dc7:
    ld a, h
    or a
    jr nz, jr_0c6_5dd4

    ld a, l
    cp $1d
    jr c, jr_0c6_5dde

    ld c, $03
    jr jr_0c6_5de0

jr_0c6_5dd4:
    ld a, h
    cp $ff
    jr nz, jr_0c6_5de0

    ld a, l
    cp $f9
    jr c, jr_0c6_5de0

jr_0c6_5dde:
    ld c, $02

jr_0c6_5de0:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5ded

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5ded:
    xor a
    ret


Jump_0c6_5def:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_5dfa

    ld a, e
    cp $10
    jr nc, jr_0c6_5dfc

jr_0c6_5dfa:
    ld c, $01

jr_0c6_5dfc:
    ld a, h
    or a
    jr nz, jr_0c6_5e07

    ld a, l
    cp $13
    jr c, jr_0c6_5e07

    ld c, $02

jr_0c6_5e07:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5e14

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5e14:
    xor a
    ret


Jump_0c6_5e16:
    ld c, $02
    ld a, h
    cp $ff
    jr nz, jr_0c6_5e2f

    ld a, l
    cp $d8
    jr nc, jr_0c6_5e2f

    ld a, d
    or a
    jr nz, jr_0c6_5e3e

    ld a, e
    cp $3a
    jr c, jr_0c6_5e3e

    ld c, $04
    jr jr_0c6_5e3e

jr_0c6_5e2f:
    ld a, d
    or a
    jr nz, jr_0c6_5e3c

    ld a, e
    cp $40
    jr c, jr_0c6_5e3c

    ld c, $00
    jr jr_0c6_5e3e

jr_0c6_5e3c:
    ld c, $01

jr_0c6_5e3e:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5e4b

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5e4b:
    xor a
    ret


Jump_0c6_5e4d:
    ld c, $00
    ld a, h
    or a
    jr z, jr_0c6_5e6e

    ld c, $02
    ld a, d
    cp $ff
    jr nz, jr_0c6_5e5f

    ld a, e
    cp $f8
    jr c, jr_0c6_5e7e

jr_0c6_5e5f:
    ld c, $01
    ld a, d
    or a
    jr nz, jr_0c6_5e7e

    ld a, e
    cp $20
    jr c, jr_0c6_5e7e

    ld c, $00
    jr jr_0c6_5e7e

jr_0c6_5e6e:
    ld c, $03
    ld a, d
    cp $ff
    jr nz, jr_0c6_5e7a

    ld a, e
    cp $f8
    jr c, jr_0c6_5e7e

jr_0c6_5e7a:
    ld c, $04
    jr jr_0c6_5e7e

jr_0c6_5e7e:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5e8b

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5e8b:
    xor a
    ret


Jump_0c6_5e8d:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_5e9c

    ld c, $01
    ld a, l
    cp $28
    jr c, jr_0c6_5e9c

    ld c, $02

jr_0c6_5e9c:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5ea9

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5ea9:
    xor a
    ret


Jump_0c6_5eab:
    ld c, $02
    ld a, d
    cp $ff
    jr nz, jr_0c6_5eb9

    ld a, e
    cp $f6
    jr nc, jr_0c6_5eb9

    ld c, $03

jr_0c6_5eb9:
    ld a, h
    or a
    jr nz, jr_0c6_5ecc

    ld a, l
    cp $46
    jr nc, jr_0c6_5eca

    cp $1b
    jr c, jr_0c6_5ecc

    ld c, $01
    jr jr_0c6_5ecc

jr_0c6_5eca:
    ld c, $00

jr_0c6_5ecc:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5ed9

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5ed9:
    xor a
    ret


Jump_0c6_5edb:
    ld c, $01
    ld a, h
    cp $ff
    jr nz, jr_0c6_5ee9

    ld a, l
    cp $f7
    jr nc, jr_0c6_5ee9

    ld c, $00

jr_0c6_5ee9:
    ld a, d
    or a
    jr nz, jr_0c6_5ef1

    cp $39
    jr nc, jr_0c6_5efc

jr_0c6_5ef1:
    ld a, h
    or a
    jr nz, jr_0c6_5efc

    ld a, l
    cp $2f
    jr c, jr_0c6_5efc

    ld c, $02

jr_0c6_5efc:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5f08

    ld a, e
    cp $e4
    jr nc, jr_0c6_5f08

    ld c, $03

jr_0c6_5f08:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5f15

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5f15:
    xor a
    ret


Jump_0c6_5f17:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_5f28

    ld a, l
    cp $26
    jr c, jr_0c6_5f26

    ld c, $02
    jr jr_0c6_5f28

jr_0c6_5f26:
    ld c, $01

jr_0c6_5f28:
    ld a, d
    or a
    jr nz, jr_0c6_5f3b

    ld a, e
    cp $20
    jr nc, jr_0c6_5f39

    cp $0d
    jr c, jr_0c6_5f3b

    ld c, $03
    jr jr_0c6_5f3b

jr_0c6_5f39:
    ld c, $04

jr_0c6_5f3b:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5f6b

    ld a, c
    ld [$c11f], a
    ld a, [$c4a0]
    or a
    jr z, jr_0c6_5f68

    ld a, [$c4b6]
    or a
    jr nz, jr_0c6_5f68

    ld a, [$c11b]
    or a
    jr nz, jr_0c6_5f68

    ld a, [$c11f]
    cp $02
    jr nz, jr_0c6_5f68

    ld a, $0e
    ld [$c1bf], a
    ld a, $ff
    ld [$c4b6], a

jr_0c6_5f68:
    ld a, $ff
    ret


jr_0c6_5f6b:
    xor a
    ret


Jump_0c6_5f6d:
    ld c, $01
    ld a, h
    cp $ff
    jr nz, jr_0c6_5f84

    ld a, l
    cp $b4
    jr nc, jr_0c6_5f84

    ld a, d
    or a
    jr nz, jr_0c6_5f84

    ld a, e
    cp $8d
    jr c, jr_0c6_5f84

    ld c, $00

jr_0c6_5f84:
    ld a, d
    cp $ff
    jr z, jr_0c6_5f8e

    ld a, e
    cp $74
    jr nc, jr_0c6_5f90

jr_0c6_5f8e:
    ld c, $02

jr_0c6_5f90:
    ld a, d
    cp $ff
    jr z, jr_0c6_5f9a

    ld a, e
    cp $60
    jr nc, jr_0c6_5f9c

jr_0c6_5f9a:
    ld c, $03

jr_0c6_5f9c:
    ld a, h
    or a
    jr nz, jr_0c6_5fa7

    ld a, l
    cp $33
    jr c, jr_0c6_5fa7

    ld c, $04

jr_0c6_5fa7:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5fb3

    ld a, e
    cp $f0
    jr nc, jr_0c6_5fb3

    ld c, $05

jr_0c6_5fb3:
    ld a, h
    cp $ff
    jr z, jr_0c6_5fbd

    ld a, l
    cp $14
    jr nc, jr_0c6_5fc9

jr_0c6_5fbd:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5fc9

    ld a, e
    cp $e4
    jr nc, jr_0c6_5fc9

    ld c, $06

jr_0c6_5fc9:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5fd6

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5fd6:
    xor a
    ret


Jump_0c6_5fd8:
    ld c, $00
    ld a, d
    or a
    jr nz, jr_0c6_5fe5

    ld a, e
    cp $11
    jr c, jr_0c6_5fe5

    ld c, $02

jr_0c6_5fe5:
    ld a, d
    cp $ff
    jr nz, jr_0c6_5fec

    ld c, $01

jr_0c6_5fec:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_5ff9

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_5ff9:
    xor a
    ret


Jump_0c6_5ffb:
    ld c, $00
    ld a, h
    or a
    jr nz, jr_0c6_6006

    ld a, l
    cp $4e
    jr nc, jr_0c6_600d

jr_0c6_6006:
    ld a, d
    cp $ff
    jr nz, jr_0c6_600d

    ld c, $01

jr_0c6_600d:
    ld a, h
    cp $ff
    jr nz, jr_0c6_6025

    ld a, d
    cp $ff
    jr nz, jr_0c6_601e

    ld a, e
    cp $c3
    jr nc, jr_0c6_6023

    jr jr_0c6_6025

jr_0c6_601e:
    ld a, e
    cp $40
    jr nc, jr_0c6_6025

jr_0c6_6023:
    ld c, $02

jr_0c6_6025:
    ld a, d
    or a
    jr nz, jr_0c6_6030

    ld a, e
    cp $3f
    jr c, jr_0c6_6030

    ld c, $03

jr_0c6_6030:
    ld a, h
    or a
    jr nz, jr_0c6_603a

    ld a, d
    or a
    jr nz, jr_0c6_603a

    ld c, $04

jr_0c6_603a:
    ld a, h
    or a
    jr nz, jr_0c6_604e

    ld a, l
    cp $39
    jr c, jr_0c6_604e

    ld a, d
    or a
    jr nz, jr_0c6_604e

    ld a, e
    cp $59
    jr c, jr_0c6_604e

    ld c, $05

jr_0c6_604e:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_607e

    ld a, c
    ld [$c11f], a
    ld a, [$c4a0]
    or a
    jr z, jr_0c6_607b

    ld a, [$c4b7]
    or a
    jr nz, jr_0c6_607b

    ld a, [$c11b]
    or a
    jr nz, jr_0c6_607b

    ld a, [$c11f]
    cp $05
    jr nz, jr_0c6_607b

    ld a, $0f
    ld [$c1bf], a
    ld a, $ff
    ld [$c4b7], a

jr_0c6_607b:
    ld a, $ff
    ret


jr_0c6_607e:
    xor a
    ret


Jump_0c6_6080:
    ld c, $01
    ld a, h
    cp $ff
    jr nz, jr_0c6_6092

    ld a, l
    cp $d0
    jr nc, jr_0c6_6092

    ld a, d
    or a
    jr nz, jr_0c6_6092

    ld c, $00

jr_0c6_6092:
    ld a, h
    cp $ff
    jr nz, jr_0c6_609c

    ld a, l
    cp $f4
    jr c, jr_0c6_609e

jr_0c6_609c:
    ld c, $02

jr_0c6_609e:
    ld a, h
    or a
    jr nz, jr_0c6_60a9

    ld a, l
    cp $15
    jr c, jr_0c6_60a9

    ld c, $03

jr_0c6_60a9:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_60b6

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


jr_0c6_60b6:
    xor a
    ret


Jump_0c6_60b8:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_60c6

    ld a, e
    cp $f8
    jr nc, jr_0c6_60c6

    ld c, $01

jr_0c6_60c6:
    ld a, d
    cp $ff
    jr nz, jr_0c6_60dc

    ld a, e
    cp $f8
    jr nc, jr_0c6_60dc

    ld a, h
    cp $ff
    jr nz, jr_0c6_60dc

    ld a, l
    cp $f0
    jr nc, jr_0c6_60dc

    ld c, $05

jr_0c6_60dc:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_6106

    ld a, c
    ld [$c11f], a
    or a
    jr nz, jr_0c6_6103

    ld a, [$c11b]
    or a
    jr z, jr_0c6_60f1

    jr jr_0c6_6103

jr_0c6_60f1:
    ld a, [$c482]
    or a
    jr nz, jr_0c6_6103

    ld a, $04
    ld [$c1bf], a
    ld a, $ff
    ld [$c482], a
    jr jr_0c6_6103

jr_0c6_6103:
    ld a, $ff
    ret


jr_0c6_6106:
    xor a
    ret


Jump_0c6_6108:
    ld c, $01
    ld a, h
    or a
    jr nz, jr_0c6_6121

    ld a, l
    cp $19
    jr c, jr_0c6_6121

    ld a, d
    cp $ff
    jr nz, jr_0c6_6121

    ld a, e
    cp $e0
    jr nc, jr_0c6_6121

    ld c, $00
    jr jr_0c6_614f

jr_0c6_6121:
    ld a, h
    cp $ff
    jr nz, jr_0c6_6137

    ld a, l
    cp $e0
    jr nc, jr_0c6_6137

    ld a, d
    cp $ff
    jr nz, jr_0c6_6137

    ld a, e
    cp $c0
    jr nc, jr_0c6_6137

    ld c, $02

jr_0c6_6137:
    ld a, h
    cp $ff
    jr nz, jr_0c6_6143

    ld a, l
    cp $c0
    jr nc, jr_0c6_6143

    ld c, $03

jr_0c6_6143:
    ld a, h
    cp $ff
    jr nz, jr_0c6_614f

    ld a, l
    cp $a0
    jr nc, jr_0c6_614f

    ld c, $04

jr_0c6_614f:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_617c

    ld a, c
    ld [$c11f], a
    or a
    jr nz, jr_0c6_6179

    ld a, [$c30b]
    cp $92
    jr nz, jr_0c6_6179

    ld a, [$c486]
    or a
    jr z, jr_0c6_6179

    ld a, [$c485]
    or a
    jr nz, jr_0c6_6179

    ld a, $09
    ld [$c1bf], a
    ld a, $ff
    ld [$c485], a

jr_0c6_6179:
    ld a, $ff
    ret


jr_0c6_617c:
    xor a
    ret


Jump_0c6_617e:
    ld c, $04
    ld a, d
    cp $ff
    jr z, jr_0c6_618a

    ld a, e
    cp $0c
    jr nc, jr_0c6_61ad

jr_0c6_618a:
    ld c, $01
    ld a, h
    cp $ff
    jr nz, jr_0c6_6198

    ld a, l
    cp $9c
    jr c, jr_0c6_61a9

    jr jr_0c6_61a5

jr_0c6_6198:
    ld a, l
    cp $10
    jr c, jr_0c6_61a5

    cp $48
    jr nc, jr_0c6_61ad

    ld c, $00
    jr jr_0c6_61ad

jr_0c6_61a5:
    ld c, $02
    jr jr_0c6_61ad

jr_0c6_61a9:
    ld c, $03
    jr jr_0c6_61ad

jr_0c6_61ad:
    ld a, [$c11f]
    cp c
    jr z, jr_0c6_61f1

    ld a, c
    ld [$c11f], a
    cp $04
    jr nz, jr_0c6_61ee

    ld a, [$c30b]
    cp $92
    jr z, jr_0c6_61d4

    ld a, [$c480]
    or a
    jr nz, jr_0c6_61ee

    ld a, $88
    ld [$c1bf], a
    ld a, $ff
    ld [$c480], a
    jr jr_0c6_61ee

jr_0c6_61d4:
    ld a, [$c480]
    or a
    jr nz, jr_0c6_61ee

    ld a, $88
    ld [$c1bf], a
    ld a, $ff
    ld [$c480], a
    ld a, $ff
    ld [$c400], a
    ld a, $ff
    ld [$c501], a

jr_0c6_61ee:
    ld a, $ff
    ret


jr_0c6_61f1:
    xor a
    ret


Jump_0c6_61f3:
    ld c, $00
    ld a, d
    cp $ff
    jr nz, jr_0c6_6201

    ld a, e
    cp $f0
    jr c, jr_0c6_6244

    jr jr_0c6_6227

jr_0c6_6201:
    ld a, d
    or a
    jr nz, jr_0c6_6244

    ld a, e
    cp $07
    jr c, jr_0c6_6227

    cp $48
    jr c, jr_0c6_622b

    cp $65
    jr nc, jr_0c6_622f

    ld a, h
    cp $ff
    jr z, jr_0c6_6223

    or a
    jr nz, jr_0c6_621f

    ld a, l
    cp $31
    jr c, jr_0c6_6223

jr_0c6_621f:
    ld c, $05
    jr jr_0c6_6244

jr_0c6_6223:
    ld c, $07
    jr jr_0c6_6244

jr_0c6_6227:
    ld c, $01
    jr jr_0c6_6244

jr_0c6_622b:
    ld c, $02
    jr jr_0c6_6244

jr_0c6_622f:
    ld a, h
    cp $ff
    jr z, jr_0c6_6240

    or a
    jr nz, jr_0c6_623c

    ld a, l
    cp $31
    jr c, jr_0c6_6240

jr_0c6_623c:
    ld c, $04
    jr jr_0c6_6244

jr_0c6_6240:
    ld c, $03
    jr jr_0c6_6244

jr_0c6_6244:
    ld a, [$c11f]
    cp c
    jp z, Jump_0c6_6252

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


Jump_0c6_6252:
    xor a
    ret


Jump_0c6_6254:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_6277

    ld a, l
    cp $a4
    jr nc, jr_0c6_6277

    ld a, d
    cp $ff
    jr nz, jr_0c6_626c

    ld a, e
    cp $a0
    jr c, jr_0c6_6277

    jr jr_0c6_6275

jr_0c6_626c:
    ld a, d
    or a
    jr nz, jr_0c6_6277

    ld a, e
    cp $18
    jr nc, jr_0c6_6277

jr_0c6_6275:
    ld c, $01

jr_0c6_6277:
    ld a, h
    cp $ff
    jr nz, jr_0c6_6281

    ld a, l
    cp $a4
    jr c, jr_0c6_628c

jr_0c6_6281:
    ld a, d
    or a
    jr nz, jr_0c6_628c

    ld a, e
    cp $18
    jr nc, jr_0c6_628c

    ld c, $02

jr_0c6_628c:
    ld a, h
    cp $ff
    jr nz, jr_0c6_62a2

    ld a, l
    cp $f5
    jr nc, jr_0c6_62a2

    ld a, d
    cp $ff
    jr nz, jr_0c6_62a2

    ld a, e
    cp $af
    jr nc, jr_0c6_62a2

    ld c, $04

jr_0c6_62a2:
    ld a, h
    cp $ff
    jr nz, jr_0c6_62b8

    ld a, l
    cp $bd
    jr nc, jr_0c6_62b8

    ld a, d
    cp $ff
    jr nz, jr_0c6_62b8

    ld a, e
    cp $af
    jr nc, jr_0c6_62b8

    ld c, $03

jr_0c6_62b8:
    ld a, h
    cp $ff
    jr nz, jr_0c6_62c2

    ld a, l
    cp $f4
    jr c, jr_0c6_62c4

jr_0c6_62c2:
    ld c, $05

jr_0c6_62c4:
    ld a, h
    or a
    jr nz, jr_0c6_62d9

    ld a, l
    cp $60
    jr c, jr_0c6_62d9

    ld a, d
    cp $ff
    jr nz, jr_0c6_62d7

    ld a, e
    cp $b0
    jr c, jr_0c6_62d9

jr_0c6_62d7:
    ld c, $06

jr_0c6_62d9:
    ld a, [$c11f]
    cp c
    jp z, Jump_0c6_62e7

    ld a, c
    ld [$c11f], a
    ld a, $ff
    ret


Jump_0c6_62e7:
    xor a
    ret


Jump_0c6_62e9:
    ld c, $00
    ld a, h
    cp $ff
    jr nz, jr_0c6_62f5

    ld a, l
    cp $c9
    jr c, jr_0c6_62f7

jr_0c6_62f5:
    ld c, $01

jr_0c6_62f7:
    ld a, h
    or a
    jr nz, jr_0c6_6302

    ld a, l
    cp $20
    jr c, jr_0c6_6302

    ld c, $02

jr_0c6_6302:
    ld a, d
    or a
    jr nz, jr_0c6_6322

    ld a, e
    cp $19
    jr c, jr_0c6_6322

    ld a, h
    cp $ff
    jr nz, jr_0c6_6317

    ld a, l
    cp $ec
    jr c, jr_0c6_6322

    jr jr_0c6_6320

jr_0c6_6317:
    ld a, h
    or a
    jr nz, jr_0c6_6322

    ld a, l
    cp $1c
    jr nc, jr_0c6_6322

jr_0c6_6320:
    ld c, $05

jr_0c6_6322:
    ld a, d
    cp $ff
    jr nz, jr_0c6_6343

    ld a, e
    cp $e8
    jr nc, jr_0c6_6343

    ld a, h
    cp $ff
    jr nz, jr_0c6_6338

    ld a, l
    cp $ec
    jr c, jr_0c6_6343

    jr jr_0c6_6341

jr_0c6_6338:
    ld a, h
    or a
    jr nz, jr_0c6_6343

    ld a, l
    cp $40
    jr nc, jr_0c6_6343

jr_0c6_6341:
    ld c, $04

jr_0c6_6343:
    ld a, h
    or a
    jr nz, jr_0c6_6363

    ld a, l
    cp $69
    jr c, jr_0c6_6363

    ld a, d
    cp $ff
    jr nz, jr_0c6_6358

    ld a, e
    cp $f0
    jr c, jr_0c6_6363

    jr jr_0c6_6361

jr_0c6_6358:
    ld a, d
    or a
    jr nz, jr_0c6_6363

    ld a, e
    cp $10
    jr nc, jr_0c6_6363

jr_0c6_6361:
    ld c, $03

jr_0c6_6363:
    ld a, [$c11f]
    cp c
    jp z, Jump_0c6_63d3

    ld a, c
    ld [$c11f], a
    ld a, [$c30b]
    cp $93
    jr z, jr_0c6_6378

    jp Jump_0c6_63d0


jr_0c6_6378:
    ld a, [$c11f]
    or a
    jr z, jr_0c6_6384

    cp $02
    jr z, jr_0c6_639a

    jr jr_0c6_63d0

jr_0c6_6384:
    ld a, [$c481]
    or a
    jr nz, jr_0c6_63d0

    ld a, $02
    ld [$c1bf], a
    ld a, $ff
    ld [$c481], a
    xor a
    ld [$c400], a
    jr jr_0c6_63d0

jr_0c6_639a:
    ld a, [$c482]
    or a
    jr nz, jr_0c6_63ac

    ld a, $03
    ld [$c1bf], a
    ld a, $ff
    ld [$c482], a
    jr jr_0c6_63d0

jr_0c6_63ac:
    ld a, [$c480]
    or a
    jr z, jr_0c6_63d0

    ld a, [$c483]
    or a
    jr nz, jr_0c6_63d0

    ld a, $04
    ld [$c1bf], a
    ld a, $ff
    ld [$c483], a
    xor a
    ld [$c404], a
    ld [$c604], a
    ld a, $ff
    ld [$c400], a
    jr jr_0c6_63d0

Jump_0c6_63d0:
jr_0c6_63d0:
    ld a, $ff
    ret


Jump_0c6_63d3:
    xor a
    ret


Jump_0c6_63d5:
    ld a, h
    cp $80
    jr c, jr_0c6_63de

    ld c, $01
    jr jr_0c6_63e0

jr_0c6_63de:
    ld c, $06

jr_0c6_63e0:
    ld a, d
    cp $ff
    jr c, jr_0c6_6402

    ld a, e
    cp $a0
    jr nc, jr_0c6_6402

    ld a, h
    cp $ff
    jr z, jr_0c6_63f9

    or a
    jr nz, jr_0c6_6402

    ld a, l
    cp $20
    jr nc, jr_0c6_6402

    jr jr_0c6_63fe

jr_0c6_63f9:
    ld a, l
    cp $e0
    jr c, jr_0c6_6402

jr_0c6_63fe:
    ld c, $00
    jr jr_0c6_6474

jr_0c6_6402:
    ld a, d
    or a
    jr nz, jr_0c6_6418

    ld a, e
    cp $58
    jr c, jr_0c6_6418

    ld a, h
    cp $80
    jr nc, jr_0c6_6414

    ld c, $04
    jr jr_0c6_6474

jr_0c6_6414:
    ld c, $03
    jr jr_0c6_6474

jr_0c6_6418:
    ld a, d
    cp $ff
    jr nz, jr_0c6_6422

    ld a, e
    cp $d0
    jr c, jr_0c6_6430

jr_0c6_6422:
    ld a, h
    cp $ff
    jr nz, jr_0c6_6430

    ld a, l
    cp $e0
    jr nc, jr_0c6_6430

    ld c, $02
    jr jr_0c6_6474

jr_0c6_6430:
    ld a, d
    cp $ff
    jr nz, jr_0c6_643a

    ld a, e
    cp $d4
    jr c, jr_0c6_6447

jr_0c6_643a:
    ld a, h
    or a
    jr nz, jr_0c6_6447

    ld a, l
    cp $20
    jr c, jr_0c6_6447

    ld c, $05
    jr jr_0c6_6474

jr_0c6_6447:
    ld a, c
    cp $01
    jr nz, jr_0c6_645e

    ld a, h
    cp $ff
    jr nz, jr_0c6_645e

    ld a, l
    cp $e0
    jr c, jr_0c6_645e

    ld a, [$c11f]
    cp $04
    jp z, Jump_0c6_64df

jr_0c6_645e:
    ld a, c
    cp $06
    jr nz, jr_0c6_6474

    ld a, h
    or a
    jr nz, jr_0c6_6474

    ld a, l
    cp $20
    jr nc, jr_0c6_6474

    ld a, [$c11f]
    cp $01
    jp z, Jump_0c6_64df

jr_0c6_6474:
    ld a, [$c30b]
    cp $92
    jr nz, jr_0c6_6487

    xor a
    ld a, [$c484]
    or a
    jr z, jr_0c6_6487

    ld a, $ff
    ld [$c486], a

jr_0c6_6487:
    ld a, [$c11f]
    cp c
    jp z, Jump_0c6_64df

    ld a, c
    ld [$c11f], a
    cp $05
    jr nz, jr_0c6_64dc

    ld a, [$c30b]
    cp $92
    jr z, jr_0c6_64bb

    ld a, [$c480]
    or a
    jr z, jr_0c6_64dc

    ld a, [$c484]
    or a
    jr nz, jr_0c6_64dc

    ld a, $05
    ld [$c1bf], a
    ld a, $ff
    ld [$c484], a
    ld [$c400], a
    ld [$c404], a
    jr jr_0c6_64dc

jr_0c6_64bb:
    ld a, [$c480]
    or a
    jr nz, jr_0c6_64cc

    ld a, $02
    ld [$c1bf], a
    xor a
    ld [$c400], a
    jr jr_0c6_64dc

jr_0c6_64cc:
    ld a, [$c481]
    or a
    jr nz, jr_0c6_64dc

    ld a, $03
    ld [$c1bf], a
    ld a, $ff
    ld [$c481], a

jr_0c6_64dc:
    ld a, $ff
    ret


Jump_0c6_64df:
    xor a
    ret


Call_0c6_64e1:
    ld a, d
    cp $80
    jr c, jr_0c6_64f9

    call Call_0c6_6525
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_0c6_6525
    ret


jr_0c6_64f9:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


    ld a, d
    cp $80
    jr c, jr_0c6_651b

    call Call_0c6_6525
    push hl
    push de
    pop hl
    add hl, hl
    add hl, hl
    add hl, hl
    push hl
    pop de
    pop hl
    call Call_0c6_6525
    ret


jr_0c6_651b:
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


Call_0c6_6525:
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
