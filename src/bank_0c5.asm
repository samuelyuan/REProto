SECTION "ROM Bank $0c5", ROMX[$4000], BANK[$c5]

bank0c5_4000:
    dw $40e8
    dw $4136
    dw $41bb
    dw $41fe
    dw $4257
    dw $42e7
    dw $4340
    dw $4399
    dw $43bb
    dw $4409
    dw $4436
    dw $4479
    dw $44c7
    dw $4520
    dw $4563
    dw $45b1
    dw $45c8
    dw $4600
    dw $4622
    dw $4691
    dw $46b3
    dw $46e0
    dw $46ec
    dw $4745
    dw $477d
    dw $47aa
    dw $47c1
    dw $47f9
    dw $483c
    dw $4874
    dw $48a1
    dw $48ce
    dw $48fb
    dw $4954
    dw $4981
    dw $49ae
    dw $4a80
    dw $4ad9
    dw $4b27
    dw $4b54
    dw $4ba2
    dw $4bf0
    dw $4c49
    dw $4c60
    dw $4c77
    dw $4ca4
    dw $4cd1
    dw $4cfe
    dw $4d15
    dw $4d58
    dw $4da6
    dw $4dd3
    dw $4e00
    dw $4e22
    dw $4e70
    dw $4ef5
    dw $4f22
    dw $4f65
    dw $4f7c
    dw $4fbf
    dw $4fec
    dw $500e
    dw $503b
    dw $5073
    dw $50a0
    dw $50e3
    dw $513c
    dw $513d
    dw $516a
    dw $51a2
    dw $51c4
    dw $51e6
    dw $524a
    dw $5298
    dw $52ba
    dw $52f2
    dw $531f
    dw $5357
    dw $5384
    dw $53a6
    dw $53de
    dw $5437
    dw $546f
    dw $54a7
    dw $550b
    dw $5559
    dw $5570
    dw $5592
    dw $55eb
    dw $5602
    dw $562f
    dw $5651
    dw $5673
    dw $56cc
    dw $5704
    dw $5768
    dw $578a
    dw $57e3
    dw $581b
    dw $5853
    dw $58ac
    dw $58c3
    dw $591c
    dw $591d
    dw $596b
    dw $598d
    dw $59a4
    dw $59c6
    dw $59c7
    dw $59de
    dw $59ea
    dw $5a17
    dw $5a86
    dw $5aea
    dw $5b17
    dw $5b39

bank0c5_40e8:
    ld b, b
    nop
    nop
    ld [hl], $41
    ret nc

    inc bc
    ld b, b
    nop
    jr jr_0c5_40f3

jr_0c5_40f3:
    ld c, c
    nop
    nop

jr_0c5_40f6:
    ld d, a
    ld b, d
    jr nc, jr_0c5_40f6

    ret nz

    cp $08
    nop
    ld [de], a
    nop
    nop

jr_0c5_4101:
    db $d3
    ld b, l
    jr nc, jr_0c5_4101

    ret nz

    nop
    ld [$7c00], sp
    nop
    nop
    sub l
    ld c, b
    nop
    nop
    ret nz

    rst $38
    stop
    xor c
    nop
    nop
    jr c, jr_0c5_4119

jr_0c5_4119:
    ld [$c001], sp
    rst $38
    stop
    xor b
    ld bc, $1f00
    nop
    ld d, b
    cp $80
    cp $10
    nop
    sub b
    nop
    nop
    nop
    nop
    ld [$c001], sp
    rst $38
    stop
    rst $38
    ld b, b
    ld bc, $e800
    ld b, b
    ld [hl], b
    db $fc
    nop
    nop
    ld [$0200], sp
    ld bc, $e700
    ld b, d
    ret nz

    ld [bc], a
    ld d, b
    ld bc, $0010
    ld [c], a
    ld a, [c]
    nop
    ld d, b
    nop
    ld d, b
    ld bc, $0080
    nop
    nop
    ld [c], a
    di
    nop
    ret c

    nop
    ld d, b
    ld bc, $0080
    nop
    nop
    xor c
    ld [bc], a
    nop
    dec e
    nop
    sub b
    inc bc
    nop
    nop
    jr jr_0c5_416d

jr_0c5_416d:
    xor c
    inc bc
    nop
    ld b, h
    nop
    ld d, b
    nop
    ld l, b
    ld bc, $0010
    xor b
    inc b
    nop
    dec sp
    nop
    jr z, @+$03

    jr c, @+$01

    nop
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    ld c, b
    nop
    jr @+$03

    stop
    xor c
    pop af
    nop
    nop
    nop
    jr @+$03

    add sp, -$02
    nop
    nop
    xor c
    ld a, [c]
    nop
    nop
    nop
    ld d, b
    ld [bc], a
    or b
    cp $00
    nop
    xor c
    di
    nop
    nop
    nop
    ld h, b
    rst $38
    or b
    cp $00
    nop
    xor c
    db $f4
    nop
    nop
    nop
    or b
    rst $38
    ld d, b
    ld bc, $0010
    rst $38
    nop
    ld [bc], a
    nop
    add $43
    ld h, b
    rst $38
    ld d, b
    ld bc, $0010
    xor c
    dec b
    nop
    inc [hl]
    nop
    sbc b
    nop
    jr c, jr_0c5_41cf

jr_0c5_41cf:
    jr jr_0c5_41d1

jr_0c5_41d1:
    xor c
    ld b, $00
    ld b, d
    nop
    jr nz, jr_0c5_41d8

jr_0c5_41d8:
    xor b
    rst $38
    nop
    nop
    sub b
    nop
    nop
    nop
    nop
    ld c, b
    rst $38
    adc b
    rst $38
    nop
    nop
    sub c
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld hl, sp+$00
    stop
    xor c
    ldh a, [rP1]
    nop
    nop
    sbc b
    nop
    ret nz

    rst $38
    jr jr_0c5_41fd

jr_0c5_41fd:
    rst $38
    nop
    inc bc
    nop
    ld a, [c]
    ld b, d
    ret nz

    db $fc
    ret nz

    inc bc
    stop
    nop
    inc bc
    nop
    ld h, e
    ld b, l
    sub b
    db $fc
    jr nc, @+$03

    ld [$0000], sp
    inc bc
    nop
    or e
    ld b, [hl]
    ld c, b
    cp $38
    nop
    nop
    nop
    nop
    inc bc
    nop
    cp e
    ld b, e
    sub b
    db $fc
    ld l, b
    db $fc
    ld [$0000], sp
    inc bc
    nop
    ld b, b
    ld b, e
    jr jr_0c5_4234

    ld a, b
    cp $08

jr_0c5_4234:
    nop
    sbc b
    nop
    nop
    ret c

    nop
    ld hl, sp-$04
    nop
    nop
    nop
    nop
    sbc b
    ld bc, $f800
    db $fd
    ld b, b
    db $fc
    nop
    nop
    nop
    nop
    sbc b
    ld [bc], a
    nop
    sbc b
    db $fd
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld c, c
    inc b
    nop
    di
    ld b, b
    nop
    nop
    ldh a, [$fd]
    nop
    nop
    nop
    inc b
    nop
    rst $00
    ld b, h
    jr nz, @+$01

    jr z, jr_0c5_426d

    stop

jr_0c5_426d:
    xor c
    rlca
    nop
    ld b, [hl]
    nop
    add sp, -$01
    ld a, b
    nop
    nop
    nop
    xor c
    ld [$3800], sp
    nop
    ld a, b
    ld [bc], a
    ld c, b
    ld [bc], a
    nop
    nop
    ldh [$f0], a
    nop
    stop
    nop
    ld bc, $0000
    nop
    nop
    sbc b
    inc bc
    nop
    ld b, b
    ld [bc], a
    ld a, b
    inc bc
    nop
    nop
    nop
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    ld [$2800], sp
    ld [bc], a
    stop
    xor c
    pop af
    nop
    nop
    nop
    or b
    cp $08
    ld bc, $0008
    xor c
    ld a, [c]
    nop
    nop
    nop
    or b
    cp $b8
    rst $38
    ld [$a900], sp
    di
    nop
    nop
    nop
    or b
    cp $e8
    cp $08
    nop
    xor c
    db $f4
    nop
    nop
    nop
    ld c, b
    ld bc, $ff18
    ld [$a900], sp
    push af
    nop
    nop
    nop
    ld c, b
    ld bc, $00d0
    jr jr_0c5_42db

jr_0c5_42db:
    xor c
    or $00
    nop
    nop
    ld [$2002], sp
    inc bc
    ld [$ff00], sp
    nop
    dec b
    nop
    ld b, c
    ld b, c
    nop
    ld [bc], a
    ret nc

    rst $38
    nop
    nop
    nop
    dec b
    nop
    cp $41
    jr nz, jr_0c5_42f9

jr_0c5_42f9:
    jr c, jr_0c5_42fb

jr_0c5_42fb:
    stop
    nop
    dec b
    nop
    sbc c
    ld b, e
    ld l, b
    db $fc
    jr c, jr_0c5_4306

jr_0c5_4306:
    stop
    nop
    dec b
    nop

jr_0c5_430b:
    or c
    ld b, l
    jr nc, jr_0c5_430b

    add sp, -$01
    ld [$a800], sp
    add hl, bc
    nop
    ld b, e
    nop
    nop
    inc b
    add sp, $00
    stop
    xor b
    ld a, [bc]
    nop
    ld b, e
    nop
    nop
    inc b
    add sp, $00
    stop
    sbc b
    inc b
    nop
    ret c

    inc bc
    ld e, b
    ld bc, $0000
    nop
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    ld d, b
    inc b
    ld e, b
    ld bc, $0018
    rst $38
    nop
    ld b, $00
    ld a, [hl+]
    ld b, d
    ld hl, sp-$03
    db $10
    ld bc, $0008
    xor b
    dec bc
    nop
    inc e
    nop
    xor b
    nop
    ld l, b
    rst $38
    jr jr_0c5_4356

jr_0c5_4356:
    xor b
    inc c
    nop
    inc e
    nop
    xor b
    nop
    ld l, b
    rst $38
    jr jr_0c5_4361

jr_0c5_4361:
    xor b
    dec c
    nop
    jr z, jr_0c5_4366

jr_0c5_4366:
    ret c

    rst $38
    ld l, b
    rst $38
    jr jr_0c5_436c

jr_0c5_436c:
    xor b
    ld c, $00
    jr z, jr_0c5_4371

jr_0c5_4371:
    ret c

    rst $38
    ld l, b
    rst $38
    jr jr_0c5_4377

jr_0c5_4377:
    xor b
    rrca
    nop
    jr z, jr_0c5_437c

jr_0c5_437c:
    ret c

    rst $38
    ld l, b
    rst $38
    jr jr_0c5_4382

jr_0c5_4382:
    xor b
    stop
    jr z, jr_0c5_4387

jr_0c5_4387:
    ret c

    rst $38
    ld l, b
    rst $38
    jr jr_0c5_438d

jr_0c5_438d:
    xor c
    ld de, $0200
    nop
    ret z

    nop
    jr nc, jr_0c5_4396

jr_0c5_4396:
    jr jr_0c5_4398

jr_0c5_4398:
    rst $38
    nop
    rlca
    nop
    db $fd
    ld b, d
    ret nc

    ld bc, $fdf8
    jr jr_0c5_43a4

jr_0c5_43a4:
    xor c
    ld [de], a
    nop
    dec [hl]
    nop
    ld l, b
    cp $10
    db $fd
    ld [$a900], sp
    inc de
    nop
    inc hl
    nop
    nop
    db $fc
    ld [$0800], sp
    nop
    rst $38
    nop
    ld [$1f00], sp
    ld b, d
    ret nc

    inc bc
    ld h, b
    db $fd
    jr jr_0c5_43c6

jr_0c5_43c6:
    nop
    ld [$bb00], sp
    ld b, c
    ld d, b
    nop
    ld hl, sp+$01
    nop
    nop
    nop
    ld [$0900], sp
    ld b, h
    jr jr_0c5_43db

    ld [$10fe], sp

jr_0c5_43db:
    nop
    add b
    ld [$3800], sp
    ld c, [hl]
    ld hl, sp-$02
    ld [hl], b
    inc bc
    jr jr_0c5_43e7

jr_0c5_43e7:
    sbc b
    dec b
    nop
    jr z, jr_0c5_43ee

    or b
    db $fd

jr_0c5_43ee:
    nop
    nop
    nop
    nop
    sbc b
    ld b, $00
    ldh a, [rIE]
    jr nz, @+$01

    nop
    nop
    nop
    nop
    sbc b
    rlca
    nop
    jr jr_0c5_4404

    jr jr_0c5_4406

jr_0c5_4404:
    nop
    nop

jr_0c5_4406:
    nop
    nop
    rst $38
    nop
    add hl, bc
    nop
    pop de
    ld b, e
    jr c, jr_0c5_4410

jr_0c5_4410:
    ret nc

    nop
    stop
    xor c
    dec d
    nop
    ld sp, $9800
    rst $38
    sbc b
    nop
    stop
    xor c
    ld d, $00
    ld b, e
    nop
    jr nc, @+$01

    sbc b
    nop
    stop
    xor c
    ld hl, sp+$00
    nop
    nop
    sub b
    nop
    ld c, b
    rst $38
    nop
    nop
    rst $38
    ld [de], a
    ld a, [bc]
    nop
    jp nc, $9044

    db $fd
    ret nz

    inc b
    ld [$0000], sp
    ld a, [bc]
    nop
    ld [hl+], a
    ld b, [hl]
    ret z

    rst $38
    ldh a, [rDIV]
    stop
    nop
    ld a, [bc]
    nop
    nop
    ld b, [hl]
    add sp, -$01
    ldh [rSC], a
    jr jr_0c5_4457

jr_0c5_4457:
    nop
    ld a, [bc]
    nop
    xor d
    ld b, a
    jr nc, jr_0c5_445e

jr_0c5_445e:
    add sp, -$02
    stop
    ld b, b
    ld a, [bc]
    nop
    sbc d
    ld b, h
    ldh [rIE], a
    ld d, b
    db $fd
    nop
    nop
    xor b
    rla
    nop
    jr z, jr_0c5_4472

jr_0c5_4472:
    ret c

    db $fd
    ret c

    inc bc
    jr jr_0c5_4478

jr_0c5_4478:
    rst $38
    nop
    dec bc
    nop
    rla
    ld e, d
    cp b
    ld bc, $ffb0
    nop
    nop
    nop
    dec bc
    nop
    ld [$505a], a
    nop
    ld e, b
    nop
    stop
    nop
    dec bc
    nop
    jr nz, jr_0c5_44d9

    add b
    rst $38
    ld e, b
    nop
    stop
    ld b, b
    dec bc
    nop
    ld h, d
    ld b, h
    ldh a, [$fd]
    jr jr_0c5_44a3

jr_0c5_44a3:
    ld [$0000], sp
    dec bc
    nop
    sub c
    ld b, [hl]
    db $10
    ld [bc], a
    add b
    ld bc, $0018
    sbc b
    ld [$f000], sp
    rst $38
    ldh [rIE], a
    nop
    nop
    nop
    nop
    sbc b
    add hl, bc
    nop
    db $10
    ld bc, $0008
    nop
    nop
    nop
    nop
    rst $38
    nop
    inc c
    nop
    ld h, d
    ld b, d
    or b
    db $fd
    add sp, $01
    ld [$0000], sp
    inc c
    nop
    ld [hl], $44
    ld d, b
    ld [bc], a

jr_0c5_44d9:
    db $10
    db $fd
    nop
    nop
    xor b
    jr jr_0c5_44e0

jr_0c5_44e0:
    ld b, e
    nop
    ld a, b
    ld bc, $ffd0
    stop
    xor b
    add hl, de
    nop
    ld b, e
    nop
    ld c, b
    nop
    ld a, b
    ld bc, $0010
    db $ec
    db $fc
    nop
    add b
    ld bc, $ffa0
    stop
    nop
    nop
    xor b
    ldh a, [rP1]
    nop
    nop
    adc b
    cp $c8
    ld bc, $0000
    xor b
    pop af
    nop
    nop
    nop
    sub b
    rst $38
    ret z

    ld bc, $0000
    xor b
    ld a, [c]
    nop
    nop
    nop
    db $10
    ld bc, $01c8
    nop
    nop
    rst $38
    nop
    dec c
    nop
    adc a
    ld b, h
    ret nc

    inc bc
    ld hl, sp+$00
    jr jr_0c5_452b

jr_0c5_452b:
    nop
    dec c
    nop
    add [hl]
    ld e, d
    ret z

    nop
    ldh [$fe], a
    jr jr_0c5_4536

jr_0c5_4536:
    add b
    dec c
    nop
    xor h
    ld c, d
    ld d, b
    rst $38
    jr z, jr_0c5_4540

    nop

jr_0c5_4540:
    nop
    xor b
    ld a, [de]
    nop
    jr z, jr_0c5_4546

jr_0c5_4546:
    stop
    ld a, b
    rst $38
    jr jr_0c5_454c

jr_0c5_454c:
    sbc b
    ld a, [bc]
    nop
    ldh [rSB], a
    jr jr_0c5_4554

    nop

jr_0c5_4554:
    nop
    nop
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    ld e, b
    ld [bc], a
    cp b
    nop
    nop
    nop
    rst $38
    nop
    ld c, $00
    add hl, bc
    ld b, d
    db $10
    rst $38
    jr nc, @+$01

    nop
    nop
    xor c
    dec de
    nop
    ld b, e
    nop
    or b
    rst $38
    sbc b
    nop
    inc e
    nop
    xor c
    inc e
    nop
    ld b, $00
    ld [hl], b
    ld bc, $ff78
    nop
    nop
    xor b
    dec e
    nop
    ld a, $00
    ld b, b
    ld bc, $00d0
    stop
    sbc b
    dec bc
    nop
    ld c, b
    ld bc, $00d0
    nop
    nop
    nop
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    jr z, @+$01

    sbc b
    nop
    stop
    xor c
    pop af
    nop
    nop
    nop
    adc b
    cp $e8
    rst $38
    ld [$ff00], sp
    nop
    rrca
    nop
    ld [$9043], sp
    ld bc, $00d0
    stop
    nop
    rrca
    nop
    add hl, sp
    ld e, e
    ld a, b
    cp $00
    ld [bc], a
    stop
    rst $38
    nop
    stop
    ld b, l
    ld b, a

jr_0c5_45cd:
    jr nc, jr_0c5_45cd

    jr nc, @-$01

    nop
    nop
    nop
    stop
    cp $40
    jr c, jr_0c5_45da

jr_0c5_45da:
    db $10
    inc bc
    stop
    xor c
    ld e, $00
    ld b, e
    nop
    nop
    nop
    ld [$0001], sp
    nop
    xor b
    rra
    nop
    ld a, $00

jr_0c5_45ee:
    jr nc, jr_0c5_45ee

    ld c, b
    nop
    stop
    sbc b
    inc c
    nop

jr_0c5_45f7:
    jr nc, jr_0c5_45f7

    ld c, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld de, $4c00
    ld b, h
    ldh [$fe], a
    ld d, b
    ld bc, $0010
    xor c
    jr nz, jr_0c5_460e

jr_0c5_460e:
    inc de
    nop
    adc b
    rst $38
    ld [$0000], sp
    nop
    xor b
    ldh a, [rP1]
    nop
    nop
    ld b, b
    ld bc, $00b8
    jr jr_0c5_4621

jr_0c5_4621:
    rst $38
    nop
    ld [de], a
    nop
    ld b, c
    ld b, h
    adc b
    rst $38
    ld [hl], b
    cp $18
    nop
    xor b
    ld hl, $2800
    nop
    jr z, @+$04

    or b
    ld bc, $0018
    xor b
    ld [hl+], a
    nop
    jr z, jr_0c5_463d

jr_0c5_463d:
    jr z, @+$04

    or b
    ld bc, $0018
    xor b
    inc hl
    nop
    jr z, jr_0c5_4648

jr_0c5_4648:
    jr z, @+$04

    or b
    ld bc, $0018
    xor b
    inc h
    nop
    inc e
    nop
    ld d, b
    nop
    or b
    ld bc, $0018
    xor b
    dec h
    nop
    inc e
    nop
    ld d, b
    nop
    or b
    ld bc, $0018
    xor b
    ld h, $00
    inc e
    nop
    ld d, b
    nop
    or b
    ld bc, $0018
    sbc b
    dec c
    nop
    nop
    rst $38
    jr z, jr_0c5_4676

jr_0c5_4676:
    nop
    nop
    nop
    nop
    sbc b
    ld c, $00
    ld d, b
    nop
    ldh a, [rSB]
    nop
    nop
    nop
    nop
    sbc b
    rrca
    nop
    jr nc, @+$03

    jr nc, jr_0c5_468e

    nop
    nop

jr_0c5_468e:
    nop
    nop
    rst $38
    nop
    inc de
    nop
    and l
    ld b, h
    adc b
    rst $38
    ld h, b
    ld [bc], a
    jr jr_0c5_469c

jr_0c5_469c:
    nop
    inc de
    nop
    db $ec
    ld b, [hl]
    sub b
    nop
    add b
    db $fc
    jr jr_0c5_46a7

jr_0c5_46a7:
    xor c
    ld hl, sp+$00
    nop
    nop

jr_0c5_46ac:
    jr c, jr_0c5_46ae

jr_0c5_46ae:
    jr nc, jr_0c5_46ac

    nop
    nop
    rst $38
    nop
    inc d
    nop
    inc d
    ld b, d
    ld [hl], b
    nop
    ret nc

    rst $38
    jr jr_0c5_46be

jr_0c5_46be:
    xor c
    daa
    nop
    ld b, a
    nop
    or b
    rst $38
    ld d, b
    nop
    stop
    xor c
    jr z, jr_0c5_46cc

jr_0c5_46cc:
    dec h
    nop
    ld d, b
    nop
    ld d, b
    nop
    stop
    xor c
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    ld d, b
    nop
    stop
    rst $38
    nop
    dec d
    nop
    ld d, b
    ld b, a
    ret nz

    nop
    ld d, b
    nop
    stop
    rst $38
    nop
    ld d, $00
    sbc h
    ld b, [hl]
    nop
    nop
    ret nc

    nop
    stop
    ld b, b
    ld d, $00
    ld a, e
    ld c, [hl]
    nop
    nop
    jr nc, @+$01

    nop
    nop
    jp hl


    ld sp, hl
    nop
    sub b
    nop
    nop
    nop
    jr jr_0c5_470b

jr_0c5_470b:
    nop
    nop
    xor c
    add hl, hl
    nop
    ld h, $00
    ret nc

    nop
    ld b, b
    nop
    jr jr_0c5_4718

jr_0c5_4718:
    xor c
    ld a, [hl+]
    nop
    inc h
    nop
    jr c, @+$01

    ld e, b
    rst $38
    jr jr_0c5_4723

jr_0c5_4723:
    xor c
    ldh a, [rP1]
    nop
    nop
    ld e, b
    rst $38
    ld e, b
    rst $38
    inc b
    nop
    xor c
    pop af
    nop
    nop
    nop
    adc b
    nop
    ld e, b
    rst $38
    inc e
    nop
    xor c
    ld a, [c]
    nop
    nop
    nop
    ld e, b
    rst $38
    ret nc

    nop
    ld [$ff00], sp
    nop
    rla
    nop
    ret z

    ld b, l
    ld d, b
    ld bc, $0110
    jr jr_0c5_4750

jr_0c5_4750:
    nop
    rla
    nop
    ldh [rDMA], a
    jr nc, jr_0c5_4758

    or b

jr_0c5_4758:
    cp $00
    nop
    xor b
    dec hl
    nop
    jr z, jr_0c5_4760

jr_0c5_4760:
    ret nc

    cp $b0
    cp $00
    nop
    xor b
    inc l
    nop
    jr z, jr_0c5_476b

jr_0c5_476b:
    ret nc

    cp $b0
    cp $00
    nop
    xor c
    dec l
    nop
    jr c, jr_0c5_4776

jr_0c5_4776:
    ret z

    nop
    ld d, b
    rst $38
    jr jr_0c5_477c

jr_0c5_477c:
    rst $38
    nop
    jr jr_0c5_4780

jr_0c5_4780:
    or l
    ld b, a
    db $10
    ld bc, $ff88
    jr jr_0c5_4788

jr_0c5_4788:
    xor c
    ld l, $00
    scf
    nop
    ld hl, sp-$01
    db $10
    ld bc, $0010
    xor c
    ldh a, [rP1]
    nop
    nop
    ldh [rIE], a
    jr z, @+$01

    nop
    nop
    xor c
    pop af
    nop
    nop
    nop
    ldh a, [$fe]
    xor b
    nop
    inc c
    nop
    rst $38
    nop
    add hl, de
    nop
    ld d, a
    ld b, h
    nop
    nop
    ret nc

    nop
    stop
    nop
    add hl, de
    nop
    ld a, l
    ld b, a
    ret nc

    nop
    and b
    rst $38
    jr jr_0c5_47c0

jr_0c5_47c0:
    rst $38
    add d
    ld a, [de]
    nop
    ld c, c
    ld c, h
    ret nc

    ld bc, $0118
    jr jr_0c5_47cc

jr_0c5_47cc:
    nop
    ld a, [de]
    nop
    ld sp, hl
    ld b, a
    ld [hl], b
    db $fc
    jr z, @+$03

    ld [$a800], sp
    inc a
    nop
    ld a, $00
    ret nc

    ld bc, $feb0
    stop
    sbc b
    jr z, jr_0c5_47e5

jr_0c5_47e5:
    jr @+$01

    jr c, jr_0c5_47ea

    nop

jr_0c5_47ea:
    nop
    nop
    nop
    sbc b
    add hl, hl
    nop
    sub b
    nop
    or b
    cp $00
    nop
    nop
    nop
    rst $38
    nop
    dec de
    nop
    call z, Call_000_2847
    inc bc
    or b
    cp $18
    nop
    nop
    dec de
    nop

jr_0c5_4807:
    ld b, h
    ld e, e
    jr c, jr_0c5_4807

    ret c

    nop
    nop
    nop
    sbc b
    ld a, [hl+]
    nop
    jr @+$01

    jr c, jr_0c5_4817

    nop

jr_0c5_4817:
    nop
    nop
    nop
    sbc b
    dec hl
    nop
    sub b
    nop
    or b
    cp $00
    nop
    nop
    nop
    xor b
    dec a
    nop
    jr z, jr_0c5_482a

jr_0c5_482a:
    ret nz

    inc bc
    ldh a, [rP1]
    stop
    xor b
    ld a, $00
    jr z, jr_0c5_4835

jr_0c5_4835:
    ret nz

    inc bc
    ld c, b
    ld bc, $0010
    rst $38
    nop
    inc e
    nop

jr_0c5_483f:
    ld [hl], h
    ld c, b
    jr nc, jr_0c5_483f

    add sp, -$01
    ld [$0000], sp
    inc e
    nop
    ld b, e
    ld c, [hl]
    ld h, b
    inc bc
    ld d, b
    ld bc, $0010
    sbc b
    inc l
    nop
    ldh a, [rP1]
    or b
    cp $00
    nop
    nop
    nop
    sbc b
    dec l

jr_0c5_485f:
    nop
    jr nz, jr_0c5_485f

    ld d, b
    ld bc, $0000
    nop
    nop
    pop hl
    pop af
    nop
    nop
    nop
    ld hl, sp-$02
    stop
    nop
    nop
    rst $38
    nop
    dec e
    nop
    inc a
    ld c, b
    ret nc

    inc bc
    ret nz

    nop
    jr jr_0c5_487f

jr_0c5_487f:
    nop
    dec e
    nop

jr_0c5_4882:
    ld d, h
    ld c, c
    jr nc, jr_0c5_4882

    ldh a, [$fd]
    ld [$0000], sp
    dec e
    nop

jr_0c5_488d:
    add b
    ld c, e
    jr nc, jr_0c5_488d

    sub b
    ld bc, $0008
    ld a, l
    dec e
    nop
    add hl, bc
    ld b, c
    nop
    nop
    add sp, $02
    nop
    nop
    rst $38
    nop
    ld e, $00
    ld [hl], l
    ld c, e

jr_0c5_48a6:
    jr nc, jr_0c5_48a6

    and b
    ld bc, $0008
    nop
    ld e, $00
    and h
    ld c, h
    or b
    ld bc, $fe30
    nop
    nop
    xor b
    ccf
    nop
    jr z, jr_0c5_48bc

jr_0c5_48bc:
    ld a, b
    nop
    ld l, b
    nop
    stop
    xor b
    ld b, b
    nop
    jr z, jr_0c5_48c7

jr_0c5_48c7:
    ld a, b
    ld bc, $ff98
    stop
    rst $38
    nop
    rra
    nop
    sub [hl]
    ld c, d
    ld h, b
    rst $38
    ret nc

    nop
    stop
    nop
    rra
    nop
    ld h, b
    ld c, h
    ret nc

    nop
    add b
    nop
    jr jr_0c5_48e4

jr_0c5_48e4:
    xor c
    ld b, c
    nop
    ld c, b
    nop
    stop
    adc b
    rst $38
    nop
    nop
    xor b
    ld b, d
    nop
    jr z, jr_0c5_48f4

jr_0c5_48f4:
    ld c, b
    rst $38
    ld [hl], b
    rst $38
    stop
    rst $38
    nop
    jr nz, jr_0c5_48fe

jr_0c5_48fe:
    ld e, b
    ld c, l
    cp b
    ld bc, $fc80
    ld [$0000], sp
    jr nz, jr_0c5_4909

jr_0c5_4909:
    db $d3
    ld c, l
    ld a, b
    rst $38
    ldh [rP1], a
    ld [$0000], sp
    jr nz, jr_0c5_4914

jr_0c5_4914:
    reti


jr_0c5_4915:
    ld c, d
    jr nc, jr_0c5_4915

    cp b
    rst $38
    ld [$8a00], sp
    jr nz, jr_0c5_491f

jr_0c5_491f:
    ld c, a
    ld e, e
    ret z

    ld bc, $ff00
    ld [$9800], sp
    ld l, $00
    nop
    rst $38
    sbc b
    rst $38
    nop
    nop
    nop
    nop
    sbc b
    cpl
    nop
    db $10
    ld [bc], a
    ld e, b
    nop
    nop
    nop
    nop
    nop
    sbc b
    jr nc, jr_0c5_4940

jr_0c5_4940:
    db $10
    ld [bc], a
    xor b
    ei
    nop
    nop
    nop
    nop
    xor b
    ld b, e
    nop
    jr z, jr_0c5_494d

jr_0c5_494d:
    jr nc, jr_0c5_4950

    ld l, b

jr_0c5_4950:
    rst $38

Jump_0c5_4951:
    ld [$ff00], sp
    nop
    ld hl, $7f00
    ld c, b
    ret nz

    cp $d0
    rst $38
    nop
    nop
    nop
    ld hl, $fe00
    ld c, h
    ret nc

    ld bc, $0030
    stop
    xor c
    ld b, h
    nop
    dec a
    nop
    or b
    cp $00
    nop
    ld [$a800], sp
    ldh a, [rP1]
    nop
    nop
    ld [$0001], sp
    nop
    stop
    rst $38
    nop
    ld [hl+], a
    nop
    cp d
    ld c, h
    ldh [$fe], a
    ldh a, [$fe]
    nop
    nop
    xor c
    ld b, l
    nop
    ld a, $00
    ld [$a8ff], sp
    ld bc, $0008
    xor c
    ld b, [hl]
    nop
    ld b, e
    nop
    ld d, b
    ld bc, $ff38
    nop
    nop
    xor c
    ld hl, sp+$00
    nop
    nop
    ret z

    rst $38
    ld h, b
    rst $38
    stop
    rst $38
    nop
    inc hl
    nop
    ld l, d
    ld c, e
    ret nc

    ld bc, $fff0
    jr jr_0c5_49b9

jr_0c5_49b9:
    xor c
    ld b, a
    nop
    ccf
    nop
    ld a, b
    cp $f0
    rst $38
    ld [$a800], sp
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$e700], sp
    rst $30
    nop
    add b
    rst $38
    nop
    nop
    ld [$0000], sp
    nop
    add sp, -$08
    nop
    jr jr_0c5_49e0

    ret nz

jr_0c5_49e0:
    rst $38
    stop
    nop
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    ret nz

    ld bc, $0090
    stop
    xor c
    pop af
    nop
    nop
    nop
    jr nz, jr_0c5_49f8

    sub b

jr_0c5_49f8:
    nop
    stop
    xor c
    ld a, [c]
    nop
    nop
    nop
    and b
    nop
    sub b
    nop
    stop
    xor c
    di
    nop
    nop
    nop
    ld e, b
    nop
    sub b
    nop
    stop
    xor c
    db $f4
    nop
    nop
    nop
    ret nz

    rst $38
    sub b
    nop
    stop
    xor c
    push af
    nop
    nop
    nop
    nop
    rst $38
    sub b
    nop
    stop
    xor c
    or $00
    nop
    nop
    add b
    cp $90
    nop
    stop
    xor c
    rst $30
    nop
    nop
    nop
    ret nz

    ld bc, $fe78
    nop
    nop
    xor c
    ld hl, sp+$00
    nop
    nop
    jr nz, jr_0c5_4a45

    ld a, b

jr_0c5_4a45:
    cp $00
    nop
    xor c
    ld sp, hl
    nop
    nop
    nop
    and b
    nop
    ld a, b
    cp $00
    nop
    xor c
    ld a, [$0000]
    nop
    ld e, b
    nop
    ld a, b
    cp $00
    nop
    xor c
    ei
    nop
    nop
    nop
    ret nz

    rst $38
    ld a, b
    cp $00
    nop
    xor c
    db $fc
    nop
    nop
    nop
    nop
    rst $38
    ld a, b
    cp $00
    nop
    xor c
    db $fd
    nop
    nop
    nop
    add b
    cp $78
    cp $00
    nop
    rst $38
    nop
    inc h
    nop
    ld e, a
    ld c, e
    sub b
    nop
    db $10
    inc bc
    jr jr_0c5_4a8b

jr_0c5_4a8b:
    nop
    inc h
    nop
    call c, $884c
    cp $40
    nop
    jr jr_0c5_4a96

jr_0c5_4a96:
    nop
    inc h
    nop
    adc $48
    sub b
    nop
    ld b, b
    db $fc
    jr jr_0c5_4aa1

jr_0c5_4aa1:
    nop
    inc h
    nop
    xor l
    ld c, e

jr_0c5_4aa6:
    jr c, jr_0c5_4aa6

    ld d, b
    inc bc
    stop
    add c
    inc h
    nop
    ld [hl], $45
    and b
    ei
    ld [$1001], sp
    nop
    sbc b
    ld sp, $d800
    cp $38
    inc bc
    nop
    nop
    nop
    nop
    sbc b
    ld [hl-], a
    nop
    ld b, b
    cp $08
    nop
    nop
    nop
    nop
    nop
    sbc b
    inc sp
    nop
    ld d, b
    rst $38
    ld e, b
    db $fc
    nop
    nop
    nop
    nop
    rst $38
    nop
    dec h
    nop
    ld de, $1049
    ld [bc], a
    add b
    ld [bc], a
    jr jr_0c5_4ae4

jr_0c5_4ae4:
    nop
    dec h
    nop
    ld [hl+], a
    ld c, [hl]
    ret z

    cp $88
    cp $10
    nop
    xor b
    ld c, b
    nop
    ld [hl+], a
    nop
    ld [hl], b
    ld bc, $03c0
    ld [$a800], sp
    ld c, c
    nop
    jr z, jr_0c5_4aff

jr_0c5_4aff:
    nop
    ld bc, $03c0
    ld [$a800], sp
    ld c, d
    nop
    jr z, jr_0c5_4b0a

jr_0c5_4b0a:
    add b
    nop
    ret nz

    inc bc
    ld [$9800], sp
    inc [hl]
    nop
    cp b
    rst $38
    ld h, b
    cp $00
    nop
    nop
    nop
    sbc b
    dec [hl]
    nop
    ld d, b
    ld bc, $02c8
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld h, $00
    rst $20
    ld c, h
    ldh a, [$fe]
    or b
    nop
    ld [$a900], sp
    ld c, e
    nop
    add hl, bc
    nop
    and b
    nop
    ret z

    nop
    stop
    xor c
    ld c, h
    nop
    ld a, $00
    db $10
    ld bc, $00c8
    stop
    xor b
    ld c, l
    nop
    inc e
    nop
    ldh a, [$fe]
    jr nc, @+$01

    ld [$ff00], sp
    nop
    daa
    nop
    and d
    ld c, e
    ld h, b

jr_0c5_4b5a:
    db $fd
    jr nc, jr_0c5_4b5a

    nop
    nop
    nop
    daa
    nop
    add b
    ld c, d
    ld [hl], b

jr_0c5_4b65:
    nop
    jr nc, jr_0c5_4b65

    nop
    nop
    nop
    daa
    nop
    xor [hl]
    ld c, c
    jr c, jr_0c5_4b73

    ldh [rIE], a

jr_0c5_4b73:
    ld [$0000], sp
    daa
    nop
    and c
    ld c, b
    ret z

    nop
    ret nc

    ld [bc], a
    stop
    nop
    daa
    nop
    adc d

jr_0c5_4b84:
    ld c, b
    jr nc, jr_0c5_4b84

    add b
    ld [bc], a
    ld [$9800], sp
    ld [hl], $00
    jr nz, jr_0c5_4b91

    add b

jr_0c5_4b91:
    ld [bc], a
    nop
    nop
    nop
    nop
    sbc b
    scf
    nop
    ldh [$fe], a
    ld h, b
    db $fd
    nop
    nop
    nop
    nop
    rst $38
    nop
    jr z, jr_0c5_4ba5

jr_0c5_4ba5:
    ld d, h
    ld c, e
    nop
    rst $38
    ret nc

    ld bc, $0010
    nop
    jr z, jr_0c5_4bb0

jr_0c5_4bb0:
    and c
    ld c, d
    sub b
    ld bc, $fe88
    jr jr_0c5_4bb8

jr_0c5_4bb8:
    xor c
    ld c, [hl]
    nop
    ld c, d
    nop
    ld [$d000], sp
    cp $00
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    ld [$f0ff], sp
    cp $08
    nop
    xor c
    pop af
    nop
    nop
    nop
    cp b
    nop
    ld l, b
    ld bc, $0010
    xor c
    ld a, [c]
    nop
    nop
    nop
    cp b
    nop
    ret c

    nop
    nop
    nop
    xor c
    di
    nop
    nop
    nop
    ret c

    nop
    ld [$1000], sp
    nop
    rst $38
    nop
    add hl, hl
    nop
    pop de
    ld c, h
    ret nz

    rst $38
    ldh a, [rP1]
    stop
    xor c
    ld c, a
    nop
    ld a, $00
    db $10
    rst $38
    ld hl, sp-$01
    ld [$a900], sp
    ld d, b
    nop
    ld c, c
    nop
    ret z

    nop
    ret z

    rst $38
    inc b
    nop
    xor c
    ld d, c
    nop
    jr c, jr_0c5_4c16

jr_0c5_4c16:
    db $10
    rst $38
    ldh a, [rP1]
    inc b
    nop
    xor c
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    ld a, b
    nop
    jr jr_0c5_4c27

jr_0c5_4c27:
    and $f5
    nop
    jr nz, @+$01

    nop
    nop
    stop
    nop
    nop
    and $f6
    nop
    jr nz, @+$01

    ld h, b
    rst $38
    stop
    nop
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    adc b
    nop
    ld c, b
    rst $38
    jr jr_0c5_4c48

jr_0c5_4c48:
    rst $38
    add e
    ld a, [hl+]
    nop
    pop bc
    ld b, a
    ldh a, [rIE]
    ld [$0000], sp
    nop
    add h
    ld a, [hl+]
    nop
    ld l, e
    ld c, h
    ldh a, [rIE]
    ld d, b
    ld bc, $0010
    rst $38
    nop
    dec hl
    nop
    reti


    ld c, b
    ldh a, [$fe]
    ld b, b
    ld [bc], a
    ld [$8500], sp
    dec hl
    nop
    ld d, h
    ld c, h
    ret nc

    nop
    sbc b
    cp $00
    nop
    rst $38
    nop
    inc l
    nop
    xor a
    ld c, h
    jr c, @+$01

    sub b
    ld bc, $0008
    and b
    ccf
    nop
    jr jr_0c5_4c87

jr_0c5_4c87:
    sbc b
    rst $38
    nop
    nop
    nop
    nop
    xor b
    ld d, d
    nop
    add hl, sp
    nop
    jr c, @+$01

    or b
    db $fc
    ld [$a800], sp
    ld d, e
    nop
    ld a, $00
    and b
    cp $78
    rst $38
    nop
    nop
    rst $38
    nop
    dec l
    nop
    xor h
    ld c, b
    ld e, b
    nop
    ld d, b
    ld bc, $0010
    nop
    dec l
    nop
    ld [hl], a
    ld c, h
    ld e, b
    nop
    or b
    cp $00
    nop
    nop
    dec l
    nop
    add c
    ld c, c
    nop
    cp $d0
    rst $38
    stop
    sbc b
    jr c, jr_0c5_4cc8

jr_0c5_4cc8:
    adc b
    rst $38
    or b
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld l, $00
    ldh a, [rWX]
    stop
    db $10
    ld bc, $0010
    nop
    ld l, $00
    adc e
    ld c, d
    sub b
    nop
    nop
    nop
    jr jr_0c5_4ce7

jr_0c5_4ce7:
    nop
    ld l, $00
    daa
    ld c, e
    ldh a, [rIE]
    ld [hl], b
    cp $00
    nop
    sbc b
    add hl, sp
    nop
    and b
    rst $38
    ld a, b
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    cpl
    nop
    ld e, a
    ld c, c
    ret z

    cp $d0
    nop
    stop
    xor b
    ld d, h
    nop
    ld b, e
    nop
    ld e, b
    ld bc, $ff68
    inc b
    nop
    rst $38
    nop
    jr nc, jr_0c5_4d18

jr_0c5_4d18:
    dec l
    ld c, [hl]
    ldh a, [rP1]
    ldh [rP1], a
    jr jr_0c5_4d20

jr_0c5_4d20:
    xor c
    ld d, l
    nop
    add hl, hl
    nop
    add sp, -$01
    ld [$00ff], sp
    nop
    xor c
    ld d, [hl]
    nop
    ld c, e
    nop
    jr nc, jr_0c5_4d32

jr_0c5_4d32:
    add b
    rst $38
    ld [$a900], sp
    ld d, a
    nop
    inc l
    nop
    ld c, b
    rst $38
    ldh [rIE], a
    ld [$a900], sp
    ld e, b
    nop
    ld a, $00
    ld c, b
    rst $38
    xor b
    rst $38
    ld [$a900], sp
    ld hl, sp+$00
    nop
    nop
    ldh a, [rP1]
    jr c, jr_0c5_4d55

jr_0c5_4d55:
    jr jr_0c5_4d57

jr_0c5_4d57:
    rst $38
    nop
    ld sp, $fb00
    ld c, b
    jr nc, @+$01

    nop
    nop
    ld [$0000], sp
    ld sp, $a600
    ld c, l
    ldh a, [rSC]
    ret nc

    db $fd
    jr jr_0c5_4d6e

jr_0c5_4d6e:
    nop
    ld sp, $0000
    ld c, [hl]
    nop
    ld [bc], a
    ld d, b
    ld bc, $0010
    xor c
    ld e, c
    nop
    inc l
    nop
    jr nc, @+$01

    ld hl, sp+$00
    stop
    xor b
    ld e, d
    nop
    ld c, h
    nop
    ld c, b
    ld [bc], a
    xor b
    rst $38
    jr jr_0c5_4d8f

jr_0c5_4d8f:
    sbc b
    ld a, [hl-]
    nop
    sbc b
    ld [bc], a
    ld hl, sp-$02
    nop
    nop
    nop
    nop
    sbc b
    dec sp
    nop
    sbc b
    nop
    adc b
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld [hl-], a
    nop
    ld h, e
    ld c, l
    ret nc

    ld bc, $0080
    jr jr_0c5_4db1

jr_0c5_4db1:
    xor c
    ld e, e
    nop
    rrca
    nop
    ld l, b
    ld bc, $fe00
    jr jr_0c5_4dbc

jr_0c5_4dbc:
    xor c
    ld hl, sp+$00
    nop
    nop
    or b
    rst $38
    ld a, b
    rst $38
    ld [$f000], sp
    rst $28
    nop
    or b
    rst $38
    add b
    cp $00
    nop
    nop
    nop
    rst $38
    nop
    inc sp
    nop
    ld b, $49
    ret nc

    rst $38
    ret nc

    nop
    stop
    xor c
    ld e, h
    nop
    ld a, $00
    ld d, b
    nop
    adc b
    rst $38
    nop
    nop
    xor c
    ld e, l
    nop
    ld a, $00
    ld d, b
    nop
    adc b
    rst $38
    nop
    nop
    xor c
    ld e, [hl]
    nop
    inc d
    nop
    or b
    rst $38
    adc b
    rst $38
    nop
    nop
    rst $38
    nop
    inc [hl]
    nop
    ld l, [hl]
    ld c, l
    ret nc

    rst $38
    db $10
    ld bc, $0010
    xor b
    ld e, a
    nop
    jr c, jr_0c5_4e10

jr_0c5_4e10:
    ld b, b
    nop
    ld l, b
    nop
    nop
    nop
    xor c
    ld h, b
    nop
    ld b, e
    nop
    ret c

    nop
    cp b
    nop
    stop
    rst $38
    nop
    dec [hl]
    nop
    db $e4
    ld c, d
    sbc b
    rst $38
    ret nc

    ld [bc], a
    stop
    nop
    dec [hl]
    nop
    dec d
    ld c, l
    ret z

    rst $38
    ld b, b
    nop
    jr jr_0c5_4e38

jr_0c5_4e38:
    add c
    dec [hl]
    nop
    call c, $c843
    rst $38
    cp b
    cp $18
    nop
    nop
    dec [hl]
    nop
    ld b, a
    ld c, b
    ret c

    cp $30
    db $fc
    nop
    nop
    sbc b
    inc a
    nop
    xor b
    rst $38
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    sbc b
    dec a
    nop
    ret nc

    ld [bc], a
    nop
    rst $38
    nop
    nop
    nop
    nop
    sbc b
    ld a, $00
    sbc b

jr_0c5_4e68:
    rst $38
    jr nc, jr_0c5_4e68

    nop
    nop
    nop
    nop
    rst $38
    nop
    ld [hl], $00
    nop
    ld c, a
    xor b
    ld bc, $fbb0
    nop
    nop
    ld b, b
    ld [hl], $00
    rst $30
    ld b, [hl]
    cp b
    ld [bc], a
    add b
    inc b
    ld [$0000], sp
    ld [hl], $00

jr_0c5_4e89:
    ld [hl+], a
    ld c, a
    jr nc, jr_0c5_4e89

    ldh a, [rSB]
    ld [$a800], sp
    ld h, h
    nop
    ld [hl+], a
    nop
    jr c, jr_0c5_4e9a

    ld c, b
    ld [bc], a

jr_0c5_4e9a:
    inc c
    nop
    xor b
    ld h, l
    nop
    ld [hl+], a
    nop
    jr c, jr_0c5_4ea5

    ld c, b
    ld [bc], a

jr_0c5_4ea5:
    inc c
    nop
    xor b
    ld h, [hl]
    nop
    jr z, jr_0c5_4eac

jr_0c5_4eac:
    ret nc

    inc bc
    ret nc

    inc b
    inc c
    nop
    xor b
    ld h, a
    nop
    jr z, jr_0c5_4eb7

jr_0c5_4eb7:
    ret nc

    inc bc
    ret nc

    inc b
    inc c
    nop
    xor b
    ld l, b
    nop
    jr z, jr_0c5_4ec2

jr_0c5_4ec2:
    ret nc

    inc bc
    ret nc

    inc b
    inc c
    nop
    xor b
    ld l, c
    nop
    inc e
    nop
    ld d, b
    inc bc
    ret nc

    inc b
    inc c
    nop
    xor b
    ld l, d
    nop
    inc e
    nop
    ld d, b
    inc bc
    ret nc

    inc b
    inc c
    nop
    xor b
    ld l, e
    nop
    ld c, b
    nop
    xor b
    db $fc
    ld a, b
    ld bc, $000c
    xor c
    ld hl, sp+$00

jr_0c5_4eec:
    nop
    nop
    jr nc, jr_0c5_4eec

    nop
    ld [bc], a
    jr jr_0c5_4ef4

jr_0c5_4ef4:
    rst $38
    nop
    scf
    nop
    dec l
    ld c, a
    ld h, b
    db $fd
    adc b
    nop
    stop
    nop
    scf
    nop
    ld [hl], b
    ld c, [hl]
    xor b
    inc bc
    ret nc

    inc bc
    stop
    xor c
    ld hl, sp+$00
    nop
    nop
    ret z

    nop
    jr c, @+$01

    nop
    nop
    xor c
    ld sp, hl
    nop
    nop
    nop
    xor b
    inc bc
    jr c, jr_0c5_4f20

    nop

jr_0c5_4f20:
    nop
    rst $38
    nop
    jr c, jr_0c5_4f25

jr_0c5_4f25:
    add [hl]
    ld c, [hl]
    ld c, b
    ld bc, $0270
    jr jr_0c5_4f2d

jr_0c5_4f2d:
    nop
    jr c, jr_0c5_4f30

jr_0c5_4f30:
    push af
    ld c, [hl]
    ld e, b

jr_0c5_4f33:
    ld [bc], a
    jr nc, jr_0c5_4f33

    nop
    nop
    nop
    jr c, jr_0c5_4f3b

jr_0c5_4f3b:
    ld a, h

jr_0c5_4f3c:
    ld c, a
    jr nc, jr_0c5_4f3c

    ld b, b
    cp $08
    nop
    add e
    jr c, jr_0c5_4f46

jr_0c5_4f46:
    ld [hl], e
    ld d, b
    nop

jr_0c5_4f49:
    nop
    jr nc, jr_0c5_4f49

    nop
    nop
    xor c
    ld hl, sp+$00
    nop
    nop
    jr nz, jr_0c5_4f55

jr_0c5_4f55:
    ret c

    db $fd
    nop
    nop
    xor c
    ld sp, hl
    nop
    nop
    nop
    ret nz

    nop
    ret nc

    ld [bc], a
    stop
    rst $38
    adc l
    add hl, sp
    nop
    dec c
    ld d, [hl]
    ret z

    db $fd
    nop
    inc bc
    ld [$a800], sp
    ld l, h
    nop
    ld a, [de]
    nop
    ldh a, [$fd]
    ret nc

    inc bc
    inc c
    nop
    rst $38
    nop
    ld a, [hl-]
    nop
    jr c, jr_0c5_4fd0

    nop
    inc b
    ld b, b
    inc b
    jr jr_0c5_4f87

jr_0c5_4f87:
    ld b, b
    ld a, [hl-]
    nop
    db $fc
    ld d, c

jr_0c5_4f8c:
    ldh [$fc], a
    jr nc, jr_0c5_4f8c

    nop
    nop
    xor b
    ld l, l
    nop
    inc e
    nop
    nop
    inc b
    cp b
    inc bc
    inc c
    nop
    xor b
    ld l, [hl]
    nop
    inc e
    nop
    nop
    inc b
    cp b
    inc bc
    inc c
    nop
    xor b
    ld l, a
    nop
    jr z, jr_0c5_4fad

jr_0c5_4fad:
    nop
    inc b
    sub b
    inc b
    inc c
    nop
    xor b
    ld [hl], b
    nop
    jr z, jr_0c5_4fb8

jr_0c5_4fb8:
    nop
    inc b
    sub b
    inc b
    inc c
    nop
    rst $38
    nop
    dec sp
    nop
    ld b, [hl]
    ld d, b
    stop
    jr nc, @+$01

    nop
    nop
    xor c
    ld [hl], c
    nop
    ld [de], a
    nop
    cp b

jr_0c5_4fd0:
    nop
    jr nc, @+$01

    nop
    nop
    xor c
    ld hl, sp+$00
    nop
    nop
    jr nc, @+$01

    jr c, jr_0c5_4fde

jr_0c5_4fde:
    ld [$ed00], sp
    db $fd
    nop
    jr nc, @+$01

    nop
    nop
    jr jr_0c5_4fe9

jr_0c5_4fe9:
    nop
    nop
    rst $38
    nop
    inc a
    nop
    ld [hl], l
    ld d, c
    or b
    cp $30
    db $fd
    nop
    nop
    xor b
    ld [hl], d
    nop
    ld d, [hl]
    nop
    sbc b
    cp $28
    nop
    inc c
    nop
    xor b
    ld [hl], e
    nop
    ld b, e
    nop
    ld b, b
    ld bc, $ff38
    inc c
    nop
    rst $38
    nop
    dec a
    nop
    adc c
    ld d, b
    ld hl, sp+$00

jr_0c5_5015:
    jr nc, jr_0c5_5015

    nop
    nop
    nop
    dec a
    nop
    and d
    ld d, c
    ld d, b
    ld [bc], a
    ret nc

    ld bc, $0010
    xor c
    ld [hl], h
    nop
    ld b, c
    nop
    ld a, b
    nop

jr_0c5_502b:
    jr nc, jr_0c5_502b

    ld [$a900], sp
    ld [hl], l
    nop

jr_0c5_5032:
    inc l
    nop
    jr nc, jr_0c5_5032

    ld [$1000], sp
    nop
    rst $38
    nop
    ld a, $00
    xor $50
    ld [$d002], sp
    inc bc
    stop
    nop
    ld a, $00
    cp a
    ld c, a
    jr c, @+$01

    add sp, -$01
    ld [$0000], sp
    ld a, $00
    jp c, Jump_000_2851

    inc bc
    ld l, b
    nop
    jr jr_0c5_505c

jr_0c5_505c:
    xor c
    halt

jr_0c5_505f:
    dec d
    nop
    jr nc, jr_0c5_505f

jr_0c5_5063:
    jr nz, jr_0c5_5063

    stop
    xor c
    ld [hl], a
    nop

jr_0c5_506a:
    ld c, a
    nop
    jr nc, jr_0c5_506a

    ld b, b
    db $fd
    ld [$ff00], sp
    add d
    ccf
    nop
    ld b, e
    ld c, a
    jr c, jr_0c5_507b

    ld d, b

jr_0c5_507b:
    inc bc
    stop
    nop
    ccf
    nop
    dec a
    ld d, c
    db $10
    ld [bc], a
    or b
    ld [bc], a
    jr jr_0c5_5089

jr_0c5_5089:
    nop
    ccf
    nop
    ld c, $50
    ld d, b
    cp $50
    inc bc
    stop
    sub b
    nop
    nop
    nop
    nop
    jr z, jr_0c5_509b

jr_0c5_509b:
    db $10
    cp $10
    nop
    rst $38
    nop
    ld b, b
    nop
    call nz, $c051
    rst $38
    ret nc

    nop
    stop
    xor c
    ld a, b
    nop
    jr c, jr_0c5_50b0

jr_0c5_50b0:
    sub b
    rst $38
    ld hl, sp-$01
    jr jr_0c5_50b6

jr_0c5_50b6:
    xor c
    ld a, c
    nop
    ld c, $00
    ld a, b
    nop
    cp b
    rst $38
    ld [$a800], sp
    ld a, d
    nop
    ld [hl+], a
    nop
    ret nc

    nop
    jr nc, @+$01

    ld [$9000], sp
    nop
    nop
    nop
    nop
    sub b
    rst $38
    ld c, b
    nop
    jr jr_0c5_50d7

jr_0c5_50d7:
    sub c
    nop
    nop
    nop
    nop
    ld d, b
    rst $38
    ld e, b
    rst $38
    nop
    nop
    rst $38
    nop
    ld b, c
    nop
    ld b, l
    ld d, [hl]
    ldh a, [rSB]
    ld hl, sp+$02
    nop
    nop
    nop
    ld b, c
    nop
    dec sp
    ld d, b

jr_0c5_50f3:
    jr nc, jr_0c5_50f3

    ld [$10ff], sp
    nop
    xor b
    ld a, e
    nop
    jr z, jr_0c5_50fe

jr_0c5_50fe:
    ldh [$fd], a
    cp b
    db $fd
    jr jr_0c5_5104

jr_0c5_5104:
    xor b
    ld a, h
    nop
    jr z, jr_0c5_5109

jr_0c5_5109:
    ldh [$fd], a
    cp b
    db $fd
    jr jr_0c5_510f

jr_0c5_510f:
    xor b
    ld a, l
    nop
    ld [hl+], a
    nop
    xor b
    rst $38
    ld [hl], b
    db $fd
    jr jr_0c5_511a

jr_0c5_511a:
    xor b
    ld a, [hl]
    nop
    ld [hl+], a
    nop
    xor b
    rst $38
    ld [hl], b
    db $fd
    jr jr_0c5_5125

jr_0c5_5125:
    xor c
    ld hl, sp+$00
    nop
    nop
    ld [$6800], sp
    ld bc, $0018
    xor c
    ld sp, hl
    nop
    nop
    nop
    ld hl, sp+$03
    ld hl, sp+$00
    ld [$ff00], sp
    rst $38
    nop
    ld b, e
    nop
    ld a, [hl]
    ld d, b
    ldh a, [$fe]
    jr jr_0c5_5146

jr_0c5_5146:
    ld [$0000], sp
    ld b, e
    nop
    add b
    ld d, c
    ld [$8001], sp
    inc bc
    jr jr_0c5_5153

jr_0c5_5153:
    nop
    ld b, e
    nop
    ld l, d
    ld d, c
    ld d, b
    ld bc, $fc90
    jr jr_0c5_515e

jr_0c5_515e:
    xor b
    ld a, a
    nop
    ld b, c
    nop
    adc b
    rst $38
    sbc b
    rst $38
    nop
    nop
    rst $38
    nop
    ld b, h
    nop
    ld d, e

jr_0c5_516e:
    ld d, c
    jr c, jr_0c5_516e

    xor b
    db $fc
    ld [$0000], sp
    ld b, h
    nop
    db $ec
    ld c, a
    ld c, b
    nop
    sub b
    ld [bc], a
    stop
    nop
    ld b, h
    nop
    ld c, b
    ld d, c
    ld [hl], b
    db $fc
    nop
    ld [bc], a
    ld [$a900], sp
    add b
    nop
    ld c, $00
    ret z

    ld [bc], a

jr_0c5_5192:
    jr jr_0c5_5192

    jr jr_0c5_5196

jr_0c5_5196:
    xor c
    add h
    nop
    ld a, $00
    ret z

    ld [bc], a
    ret nz

    cp $18
    nop
    rst $38
    nop
    ld b, l
    nop
    add hl, de
    ld d, b
    or b
    cp $20
    nop
    ld [$0000], sp
    ld b, l
    nop
    rst $08
    ld d, c
    ld d, b
    ld bc, $0000
    jr jr_0c5_51b8

jr_0c5_51b8:
    xor b
    add c
    nop
    add hl, de
    nop
    ld hl, sp-$02
    ret nc

    ld bc, $0018
    rst $38
    nop
    ld b, [hl]
    nop
    and b
    ld d, b
    ld h, b
    db $fc
    ld [hl], b
    nop
    stop
    nop
    ld b, [hl]
    nop
    xor l
    ld d, c
    nop
    nop
    ld [hl], b
    nop
    stop
    nop
    ld b, [hl]
    nop
    ld d, c
    ld d, b
    ret nc

    inc bc
    nop
    nop
    jr jr_0c5_51e5

jr_0c5_51e5:
    rst $38
    nop
    ld b, a
    nop
    and [hl]
    ld d, e
    ld l, b
    nop
    sub b
    nop
    stop
    ld b, b
    ld b, a
    nop
    add h
    ld d, e
    ld d, b
    ld [bc], a
    ret z

    db $fd
    jr jr_0c5_51fc

jr_0c5_51fc:
    ld b, b
    ld b, a
    nop
    add a
    ld c, a
    sub b
    db $fc
    adc b
    cp $10
    nop
    ld b, b
    ld b, a
    nop
    ld c, d
    ld d, d
    adc b
    rst $38
    ld a, b
    db $fd
    nop
    nop
    nop
    ld b, a
    nop
    cp d
    ld d, d
    jr @+$01

    ld [$10fe], sp
    nop
    xor b
    adc h
    nop
    ld [hl+], a
    nop
    ld a, b
    db $fc
    ld b, b
    db $fc
    inc c
    nop
    xor b
    adc l
    nop
    ld [hl+], a
    nop
    ld a, b
    db $fc
    ld b, b
    db $fc
    inc c
    nop
    xor b
    adc [hl]
    nop
    ld [hl+], a
    nop
    ld a, b
    db $fc
    ld b, b
    db $fc
    inc c
    nop
    db $e4
    db $f4
    nop
    add b
    nop
    cp b
    db $fd
    stop
    nop
    nop
    rst $38
    ld b, b
    ld c, b
    nop
    rlca
    ld d, d
    add b
    ld bc, $0250
    stop
    nop
    ld c, b
    nop
    sbc b
    ld d, d
    jr c, @+$03

    jr nc, @+$04

    ld [$9800], sp
    ld a, b
    nop
    ld b, b
    rst $38
    jr z, @+$01

    nop
    nop
    nop
    nop
    sbc b
    ld a, c
    nop
    ldh a, [rP1]
    sub b
    rst $38
    nop
    nop
    nop
    nop
    xor c
    adc a
    nop
    ld c, l
    nop
    jr c, @+$01

    ld [hl], b
    cp $08
    nop
    xor c
    sub b
    nop
    ld a, $00
    jr c, jr_0c5_5289

    adc b

jr_0c5_5289:
    rst $38
    jr jr_0c5_528c

jr_0c5_528c:
    xor c
    sub c
    nop
    jr jr_0c5_5291

jr_0c5_5291:
    ld [$2801], sp
    rst $38
    nop
    nop
    rst $38
    nop
    ld c, c
    nop
    ld d, l
    ld d, d
    ld d, b
    rst $38
    ret nc

    nop
    stop
    xor c
    sub d
    nop
    ld bc, $7800
    rst $38
    ret z

    rst $38
    nop
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    ld l, b
    nop
    ret nc

    nop
    jr jr_0c5_52b9

jr_0c5_52b9:
    rst $38
    nop
    ld c, d
    nop
    ld [de], a
    ld d, d
    or b
    cp $d8
    cp $08
    nop
    xor c
    sub e
    nop
    ld b, e
    nop
    xor b
    rst $38
    ld hl, sp+$00
    stop
    xor c
    sub h
    nop
    ld c, $00
    ld h, b
    rst $38
    ld hl, sp+$00
    stop
    sub b
    nop
    nop
    nop
    nop
    ret c

    nop
    cp b
    nop
    jr jr_0c5_52e6

jr_0c5_52e6:
    sub c
    nop
    nop
    nop
    nop
    ret z

    rst $38
    jr c, @+$01

    nop
    nop
    rst $38
    ld b, b
    ld c, e
    nop
    ld a, [hl+]
    ld d, e
    ret nc

    inc bc
    ld b, b
    nop
    jr jr_0c5_52fd

jr_0c5_52fd:
    nop
    ld c, e
    nop

Call_0c5_5300:
    db $eb
    ld d, l
    ret nc

    inc bc
    ld h, b
    db $fc
    jr jr_0c5_5308

jr_0c5_5308:
    nop
    ld c, e
    nop

jr_0c5_530b:
    sub d
    ld d, l
    jr nc, jr_0c5_530b

    jr nc, @-$01

    ld [$0000], sp
    ld c, e
    nop

jr_0c5_5316:
    ld d, a
    ld d, e
    jr nc, jr_0c5_5316

jr_0c5_531a:
    jr nc, jr_0c5_531a

    ld [$ff00], sp
    add d
    ld c, h
    nop
    db $f4
    ld d, e
    sub b
    db $fc
    ldh a, [$fb]
    nop
    nop
    ld b, b
    ld c, h
    nop
    ld a, [c]
    ld d, d
    ld c, b
    nop
    ld [hl], b
    inc b
    ld [$a800], sp
    sub l
    nop
    jr z, jr_0c5_533a

jr_0c5_533a:
    db $10
    inc bc
    ret nc

    inc b
    stop
    xor b
    sub [hl]
    nop
    jr z, jr_0c5_5345

jr_0c5_5345:
    db $10
    inc bc
    ret nc

    inc b
    stop
    pop af
    xor $00
    ret nz

    inc bc
    nop
    nop
    stop
    nop
    nop
    rst $38
    nop
    ld c, l
    nop
    inc de
    ld d, e
    jr nc, @+$01

    jr nz, @+$03

    ld [$a900], sp
    ld hl, sp+$00
    nop
    nop
    ld c, b
    rst $38
    adc b
    rst $38
    ld [$a900], sp
    ld sp, hl
    nop
    nop
    nop
    xor b
    rst $38
    ld d, b
    ld bc, $0010
    xor c
    ldh a, [rP1]
    nop
    nop
    sbc b
    nop
    ld [$1801], sp
    nop
    rst $38
    ld b, b
    ld c, [hl]
    nop
    pop af
    ld d, c
    ld a, b
    cp $e8
    nop
    ld [$a900], sp
    sub a
    nop
    ld b, e
    nop
    ld hl, sp-$04
    cp b
    ld bc, $0000
    xor b
    sbc b
    nop
    jr c, jr_0c5_539f

jr_0c5_539f:
    add b
    db $fd
    ld b, b
    inc bc
    stop
    rst $38
    nop
    ld c, a
    nop
    and $51
    sub b
    db $fd
    jr z, jr_0c5_53b2

    nop
    nop
    nop

jr_0c5_53b2:
    ld c, a
    nop
    sub b
    ld d, h
    ret z

    ld [bc], a
    ldh [rSB], a
    jr jr_0c5_53bc

jr_0c5_53bc:
    nop
    ld c, a
    nop
    sbc $53
    ld [hl], b
    inc bc
    sbc b
    db $fd
    jr jr_0c5_53c7

jr_0c5_53c7:
    xor b
    sbc c
    nop
    jr z, jr_0c5_53cc

jr_0c5_53cc:
    jr z, @+$05

    jr nc, @-$03

    stop
    xor b
    sbc d
    nop
    jr z, jr_0c5_53d7

jr_0c5_53d7:
    jr z, @+$05

    jr nc, @-$03

    stop
    rst $38
    nop
    ld d, b
    nop
    cp h
    ld d, e
    ld [hl], b
    ld bc, $0250
    stop
    nop
    ld d, b
    nop
    scf
    ld d, h
    jr c, jr_0c5_53f1

    ret nz

jr_0c5_53f1:
    ld bc, $0008
    add e
    ld d, b
    nop
    rra
    ld d, e
    ld l, b
    rst $38
    jr c, @+$01

    ld [$a900], sp
    sbc e
    nop
    ld d, b
    nop
    sbc b
    nop
    ret nc

    rst $38
    stop
    xor c
    sbc h
    nop
    ld a, $00
    jr c, jr_0c5_5412

    xor b

jr_0c5_5412:
    rst $38
    jr jr_0c5_5415

jr_0c5_5415:
    xor c
    sbc l
    nop
    ld d, c
    nop
    ret nz

    nop
    jr z, @+$01

    nop
    nop
    xor $fe
    nop
    add b
    rst $38
    ld h, b
    rst $38
    stop
    nop
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    jr nc, jr_0c5_5432

jr_0c5_5432:
    ld [hl], b
    cp $00
    nop
    rst $38
    nop
    ld d, c
    nop
    jp hl


    ld d, e
    ld e, b
    rst $38
    ret nc

    nop
    stop
    xor c
    sbc [hl]
    nop
    ld b, e
    nop
    ret nc

    nop
    ld e, b
    nop
    jr jr_0c5_544d

jr_0c5_544d:
    sbc b
    ld a, d
    nop
    jr nc, jr_0c5_5452

jr_0c5_5452:
    ld hl, sp-$01
    nop
    nop
    nop
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    ld a, b
    nop
    ret nc

    nop
    jr jr_0c5_5463

jr_0c5_5463:
    xor c
    pop af
    nop
    nop
    nop
    ld a, b
    rst $38
    ret z

    rst $38
    nop
    nop
    rst $38
    nop
    ld d, d
    nop
    dec bc
    ld d, l
    adc b
    nop
    sub b
    ld [bc], a
    jr jr_0c5_547a

jr_0c5_547a:
    nop
    ld d, d
    nop
    ld a, e
    ld d, l
    and b
    inc bc
    ld h, b
    inc bc
    jr jr_0c5_5485

jr_0c5_5485:
    nop
    ld d, d
    nop
    and a
    ld d, h
    cp b
    db $fd
    ldh a, [rSB]
    ld [$0000], sp
    ld d, d
    nop

jr_0c5_5493:
    or c
    ld d, e
    jr nc, jr_0c5_5493

    and b
    inc bc
    ld [$a900], sp
    sbc a
    nop
    inc a
    nop
    ld hl, sp-$01
    nop
    cp $00
    nop
    rst $38
    nop
    ld d, e
    nop
    add l
    ld d, h
    ldh a, [$fe]
    and b
    rst $38
    ld [$a900], sp
    and b
    nop
    ld l, $00
    jr c, @+$01

    ld e, b
    nop
    stop
    xor c
    and c
    nop
    ld l, $00
    sbc b
    nop
    sub b
    nop
    jr jr_0c5_54c8

jr_0c5_54c8:
    xor c
    and d
    nop
    ld l, $00
    sbc b
    nop
    adc b
    rst $38
    jr jr_0c5_54d3

jr_0c5_54d3:
    xor c
    and e
    nop
    ld l, $00
    nop
    nop
    ret z

    rst $38
    nop
    nop
    xor c
    ld hl, sp+$00
    nop
    nop
    jr c, @+$01

    ld e, b
    nop
    stop
    xor c
    ld sp, hl
    nop
    nop
    nop
    sbc b
    nop
    sub b
    nop
    jr jr_0c5_54f4

jr_0c5_54f4:
    xor c
    ld a, [$0000]
    nop
    or b
    rst $38
    ret z

    rst $38
    nop
    nop
    xor c
    ei
    nop
    nop
    nop
    ldh a, [$fe]
    jr nz, jr_0c5_5508

jr_0c5_5508:
    ld [$ff00], sp
    nop
    ld d, h
    nop
    ld l, a
    ld d, h
    ld a, b
    ld bc, $0250
    stop
    nop
    ld d, h
    nop
    ld e, c
    ld d, l
    jr c, jr_0c5_551e

    nop

jr_0c5_551e:
    ld [bc], a
    ld [$0000], sp
    ld d, h
    nop
    ld [hl], b
    ld d, l
    xor b
    nop
    ld [hl], b
    cp $00
    nop
    xor c
    and h
    nop
    jr c, jr_0c5_5531

jr_0c5_5531:
    add b
    ld bc, $ff38
    stop
    xor c
    ld hl, sp+$00
    nop
    nop
    ld c, b
    rst $38
    jr nz, @+$01

    ld [$ea00], sp
    ld a, [$c000]
    nop
    sub b
    cp $18
    nop
    nop
    nop
    db $eb
    ei
    nop
    ld d, b
    ld bc, $fe90
    jr jr_0c5_5556

jr_0c5_5556:
    nop
    nop
    rst $38
    nop
    ld d, l
    nop
    ld d, $55
    ld h, b
    rst $38
    ret nc

    nop
    stop
    xor b
    and [hl]
    nop
    ld b, e
    nop
    ld a, b
    nop
    nop
    nop
    stop
    rst $38
    nop
    ld d, [hl]
    nop
    ld hl, $d055
    ld [bc], a
    jr nc, @+$03

    jr jr_0c5_557b

jr_0c5_557b:
    nop
    ld d, [hl]
    nop
    ld a, d
    ld d, h
    ret nc

    ld [bc], a
    nop
    nop
    jr jr_0c5_5586

jr_0c5_5586:
    xor c
    and a
    nop
    cpl
    nop
    sub b
    nop
    ld c, b
    ld [bc], a
    stop
    rst $38
    nop
    ld d, a
    nop
    ld [$1053], sp
    ld bc, $0060
    jr jr_0c5_559d

jr_0c5_559d:
    xor c
    xor b
    nop
    ld b, e
    nop
    ld [hl], b
    nop
    ret z

    rst $38
    nop
    nop
    xor c
    xor c
    nop
    ld b, e
    nop
    ld [hl], b
    nop
    ret z

    rst $38
    nop
    nop
    xor c
    xor d
    nop
    ld a, $00
    jr nz, @+$01

    ret z

    rst $38
    ld [$a900], sp
    xor e
    nop
    ld a, $00
    jr nz, @+$01

    ret z

    rst $38
    ld [$a900], sp
    xor h
    nop
    ld e, e
    nop
    sub b
    rst $38
    ret z

    rst $38
    nop
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    ret nz

    rst $38
    jr z, jr_0c5_55dd

jr_0c5_55dd:
    stop
    xor c
    pop af
    nop
    nop
    nop
    ld c, b
    nop
    sub b
    nop
    ld [$ff00], sp
    nop
    ld e, b
    nop
    db $fd
    ld d, d
    ld a, b
    cp $10
    ld bc, $0010
    xor c
    xor l
    nop
    ld c, [hl]
    nop
    adc b
    ld bc, $fef0
    inc e
    nop
    rst $38
    nop
    ld e, c
    nop
    cpl
    ld d, [hl]
    ret nc

    inc bc
    ld [hl], b
    inc bc
    jr jr_0c5_560d

jr_0c5_560d:
    adc h
    ld e, c
    nop

jr_0c5_5610:
    ld h, l
    ld c, a
    jr nc, jr_0c5_5610

    or b
    db $fc
    ld [$a800], sp
    or h
    nop
    jr nz, jr_0c5_561d

jr_0c5_561d:
    ret c

    db $fd
    ld l, b
    db $fc
    inc c
    nop
    xor c
    ld hl, sp+$00
    nop
    nop

jr_0c5_5628:
    ld l, b
    db $fc
    jr nc, jr_0c5_5628

    nop
    nop
    rst $38
    nop
    ld e, d
    nop
    ld [bc], a
    ld d, [hl]

jr_0c5_5634:
    jr nc, jr_0c5_5634

    jr nz, jr_0c5_5638

jr_0c5_5638:
    ld [$8300], sp
    ld e, d
    nop
    ld e, h
    ld d, [hl]
    or b
    cp $08
    ld bc, $0010
    nop
    ld e, d
    nop
    db $e3
    ld d, b
    ld hl, sp+$00
    ld d, b
    ld [bc], a
    ld [$ff00], sp
    nop
    ld e, e
    nop
    ld [hl], e
    ld d, [hl]
    nop
    nop
    or b
    cp $00
    nop
    add d
    ld e, e
    nop
    ld a, [hl-]
    ld d, [hl]
    nop
    nop
    ld d, b
    ld bc, $0010
    sub c
    nop
    nop
    nop
    nop
    ld l, b
    nop
    nop
    nop
    jr jr_0c5_5672

jr_0c5_5672:
    rst $38
    nop
    ld e, h
    nop
    ld d, c
    ld d, [hl]
    and b
    ld [bc], a
    ret z

    nop
    nop
    nop
    nop
    ld e, h
    nop
    rrca
    ld d, a
    ld a, b
    nop
    ld l, b
    cp $10
    nop
    nop
    ld e, h
    nop
    call z, $8056
    db $fd
    ld c, b
    cp $10
    nop
    xor b
    or l
    nop
    jr z, jr_0c5_5699

jr_0c5_5699:
    ret nz

    rst $38
    add b
    rst $38
    inc c
    nop
    xor b
    or [hl]
    nop
    jr z, jr_0c5_56a4

jr_0c5_56a4:
    ret nz

    rst $38
    add b
    rst $38
    inc c
    nop
    xor c
    or a
    nop
    dec de
    nop
    ld b, b
    db $fc
    ldh a, [$fd]
    ld [$9800], sp
    and b
    nop
    ld e, b
    nop
    add b
    ld bc, $0000
    nop
    nop
    sbc b
    and c
    nop
    adc b
    rst $38
    ldh [$fe], a
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld e, l
    nop
    adc c
    ld d, [hl]
    ld hl, sp-$01
    ret nc

    ld bc, $0010
    xor c
    cp c
    nop
    ld [hl], $00
    ld d, b
    ld bc, $ffc0
    jr jr_0c5_56e2

jr_0c5_56e2:
    xor c
    ld hl, sp+$00
    nop
    nop
    or b
    cp $98
    cp $08
    nop
    xor c
    ld sp, hl
    nop
    nop
    nop
    ld [$b000], sp
    cp $10
    nop
    xor c
    ld a, [$0000]
    nop
    ld hl, sp-$01

jr_0c5_56ff:
    jr nc, jr_0c5_56ff

    nop
    nop
    rst $38
    nop
    ld e, [hl]
    nop
    ld l, b
    ld d, a

jr_0c5_5709:
    ld l, b
    inc bc
    jr nc, jr_0c5_5709

    nop
    nop
    nop
    ld e, [hl]
    nop
    ld a, [hl]
    ld d, [hl]

jr_0c5_5714:
    ret c

    db $fc
    jr nc, jr_0c5_5714

    nop
    nop
    ld b, b
    ld e, [hl]
    nop

jr_0c5_571d:
    db $e3
    ld d, a
    jr nc, jr_0c5_571d

    ld [hl], b
    db $fd
    ld [$0000], sp
    ld e, [hl]
    nop
    and b
    ld d, a
    jr nz, @+$03

    ld hl, sp+$02
    nop
    nop
    nop
    ld e, [hl]
    nop
    reti


    ld e, b
    ret nc

    inc bc
    jr c, jr_0c5_573c

    jr jr_0c5_573b

jr_0c5_573b:
    sbc b

jr_0c5_573c:
    and d
    nop
    ret c

    db $fc
    ld [hl], b
    cp $00
    nop
    nop
    nop
    sbc b
    and e
    nop
    sbc b
    rst $38
    ld [hl], b
    inc bc
    nop
    nop
    nop
    nop
    sbc b
    and h
    nop
    add sp, -$02
    jr nc, jr_0c5_575a

    nop
    nop

jr_0c5_575a:
    nop
    nop
    sbc b
    and l
    nop
    nop
    nop
    adc b
    db $fd
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld e, a
    nop
    inc b
    ld d, a
    ret nc

    ld bc, $00d0
    stop
    xor c
    cp d
    nop
    ld d, h
    nop
    ld hl, sp-$01
    ld e, b
    rst $38
    nop
    nop
    xor c
    ld hl, sp+$00
    nop
    nop
    ret nc

    ld bc, $ff60
    jr jr_0c5_5789

jr_0c5_5789:
    rst $38
    nop
    ld h, b
    nop
    rst $28
    ld e, b
    add b
    ld bc, $00d0
    stop
    nop
    ld h, b
    nop
    xor e
    ld d, a
    ld a, b
    nop
    jr nz, @+$01

    ld [$0000], sp
    ld h, b
    nop
    dec h
    ld d, a
    jr c, @+$01

    ret nc

    nop
    stop
    nop
    ld h, b
    nop
    sub l
    ld d, a
    ret z

    rst $38
    and b
    rst $38
    jr jr_0c5_57b6

jr_0c5_57b6:
    xor c
    cp e
    nop
    inc e
    nop
    sub b
    ld [bc], a
    ret nc

    nop
    stop
    xor c
    cp l
    nop
    inc l
    nop
    ret nc

    rst $38

jr_0c5_57c8:
    jr c, jr_0c5_57c8

    jr jr_0c5_57cc

jr_0c5_57cc:
    ld a, [c]
    db $ed
    nop
    jr nz, jr_0c5_57d2

    ld d, b

jr_0c5_57d2:
    rst $38
    ld [$0000], sp
    nop
    di
    db $ec
    nop
    jr nc, jr_0c5_57de

    ldh [$fd], a

jr_0c5_57de:
    ld [$0000], sp
    nop
    rst $38
    ld b, b
    ld h, c
    nop
    ld a, [de]

jr_0c5_57e7:
    ld d, a
    jr nc, jr_0c5_57e7

    ldh a, [rIE]
    ld [$0000], sp
    ld h, c
    nop
    ld d, e
    ld e, b
    ret nz

    db $fd
    and b
    rst $38
    nop
    nop
    nop
    ld h, c
    nop
    dec de
    ld e, b
    add b
    nop
    ld h, b
    nop
    stop
    ld b, b
    ld h, c
    nop
    or a
    ld e, b
    ret nc

    ld [bc], a
    nop
    nop
    jr jr_0c5_580f

jr_0c5_580f:
    xor c
    ld hl, sp+$00
    nop
    nop
    and b
    ld [bc], a
    ld h, b
    nop
    stop
    rst $38
    nop
    ld h, d
    nop
    ld sp, hl
    ld d, a
    ldh [$fe], a
    ret nc

    nop
    stop
    sbc b
    and [hl]
    nop
    ld d, b
    rst $38
    ldh [rIE], a
    nop
    nop
    nop
    nop
    sbc b
    and a
    nop
    or b
    rst $38
    add sp, -$02
    nop
    nop
    nop
    nop
    sbc b
    xor b
    nop
    jr c, jr_0c5_5841

jr_0c5_5841:
    add b
    nop
    nop
    nop
    nop
    nop
    xor c
    cp [hl]
    nop
    ld de, $7000
    cp $30
    rst $38
    ld [$ff00], sp
    nop
    ld h, e
    nop
    xor $57
    jr nc, @+$03

    jr nz, @+$03

    jr jr_0c5_585e

jr_0c5_585e:
    xor b
    cp a
    nop
    jr z, jr_0c5_5863

jr_0c5_5863:
    ldh a, [$fe]
    and b
    cp $08
    nop
    xor c
    ret nz

    nop
    ld b, e
    nop
    ldh [rP1], a
    ld a, b
    rst $38
    jr jr_0c5_5874

jr_0c5_5874:
    xor c
    pop bc
    nop
    ld a, [hl-]
    nop
    sub b
    rst $38
    jr z, @+$03

    stop
    rst $28
    rst $38
    nop
    add sp, -$02
    add b
    nop
    stop
    nop
    nop
    xor c
    ld hl, sp+$00
    nop
    nop
    ret nc

    cp $80
    nop
    ld [$a900], sp
    ld sp, hl
    nop
    nop
    nop
    jr nc, jr_0c5_589d

    ld l, b

jr_0c5_589d:
    nop
    jr jr_0c5_58a0

jr_0c5_58a0:
    xor c
    ld a, [$0000]
    nop
    nop
    nop
    ld [hl], b
    cp $00
    nop
    rst $38
    nop
    ld h, h
    nop
    sbc $59
    sub b
    nop
    ld [$10ff], sp
    nop
    ld b, b
    ld h, h
    nop
    inc b
    ld e, b
    ld [$30ff], sp
    inc bc
    jr jr_0c5_58c2

jr_0c5_58c2:
    rst $38
    adc b
    ld h, l
    nop
    rst $00
    ld e, c
    ld a, b
    inc bc
    ret nc

    nop
    stop
    nop
    ld h, l

jr_0c5_58d0:
    nop
    ld l, e
    ld e, c
    jr nc, jr_0c5_58d0

    and b
    rst $38
    ld [$0000], sp
    ld h, l
    nop
    jr nc, @+$59

jr_0c5_58de:
    nop
    nop
    jr nc, jr_0c5_58de

    nop
    nop
    nop
    ld h, l
    nop
    dec e
    ld e, c
    nop
    nop
    ld [$1000], sp
    nop
    nop
    ld h, l
    nop
    adc d
    ld d, a
    ld c, b
    nop
    ld [hl], b
    db $fd
    jr jr_0c5_58fa

jr_0c5_58fa:
    sbc b
    xor c
    nop
    nop
    ld [bc], a
    ret z

    rst $38
    nop
    nop
    nop
    nop
    sbc b
    xor d
    nop
    ld [$c8fe], sp
    rst $38
    nop
    nop
    nop
    nop
    xor c
    ld hl, sp+$00
    nop
    nop
    ld [$7803], sp
    nop
    ld [$ff00], sp
    rst $38
    nop
    ld h, a
    nop
    db $e4
    ld e, b
    nop
    ld bc, $ff30
    jr jr_0c5_5928

jr_0c5_5928:
    xor b
    jp nz, Jump_000_2800

    nop
    ld c, b
    rst $38
    ret nz

    nop
    ld [$a800], sp
    jp Jump_000_2200


    nop
    ld d, b
    nop
    ret nz

    nop
    jr jr_0c5_593e

jr_0c5_593e:
    xor c
    call nz, Call_0c5_5300
    nop
    xor b
    nop
    ld [$1001], sp
    nop
    xor c
    push bc
    nop
    inc l
    nop
    ld l, b
    rst $38
    add sp, -$01
    ld [$9000], sp
    nop
    nop
    nop
    nop
    nop
    ld bc, $0108
    stop
    sub c
    nop
    nop
    nop
    nop
    sbc b
    rst $38
    ret nz

    cp $08
    nop
    rst $38
    nop
    ld l, b
    nop
    adc $58
    jr c, jr_0c5_5972

jr_0c5_5972:
    jr nc, @-$01

    nop
    nop
    nop
    ld l, b
    nop
    adc l
    ld e, c
    jr @+$05

    add sp, $01
    stop
    xor c
    ld hl, sp+$00
    nop
    nop
    ld [$f8fd], sp
    ld [bc], a
    ld [$ff00], sp
    nop
    ld l, c
    nop
    db $76
    ld e, c
    ld [hl], b
    inc bc
    or b
    db $fd
    nop
    nop
    nop
    ld l, c
    nop
    and h
    ld e, c
    ret z

    nop
    ld c, b
    ld [bc], a
    stop
    rst $38
    nop
    ld l, d
    nop
    sbc b
    ld e, c
    jr nc, jr_0c5_59ab

jr_0c5_59ab:
    jr nc, jr_0c5_59ab

    nop
    nop
    xor c
    ld hl, sp+$00
    nop
    nop
    ldh [$fd], a
    ld c, b
    ld bc, $0000
    xor c
    ld sp, hl
    nop
    nop
    nop
    xor b
    ld [bc], a
    sbc b
    nop
    ld [$ff00], sp
    rst $38
    adc c
    ld l, h
    nop
    jp $d058


    ld [bc], a
    nop
    rst $38
    jr jr_0c5_59d2

jr_0c5_59d2:
    nop
    ld l, h
    nop
    ld [$a059], a
    db $fd
    ret nc

    ld bc, $0010
    rst $38
    nop
    ld l, l
    nop
    xor h
    ld e, b
    ret c

    rst $38
    nop
    ld bc, $0010
    rst $38
    nop
    ld l, [hl]
    nop
    jp nc, $9059

jr_0c5_59f0:
    db $fd
    jr c, jr_0c5_59f0

    nop
    nop
    xor c
    ld hl, sp+$00
    nop
    nop
    and b
    cp $50
    inc bc
    stop
    xor c
    ld hl, sp+$00
    nop
    nop
    ret nz

    cp $50
    inc bc
    stop
    xor c
    ld hl, sp+$00
    nop
    nop
    ldh [$fe], a
    ld d, b
    inc bc
    stop
    rst $38
    nop
    ld l, a
    nop
    ld a, c
    ld b, h
    and b
    db $fc
    or b
    cp $00
    nop
    xor c
    rst $08
    nop

jr_0c5_5a25:
    ld b, l
    nop
    jr nc, jr_0c5_5a25

    ret nc

    nop
    ld [$a900], sp
    ld hl, sp+$00
    nop
    nop
    ret z

    cp $d0
    rst $38
    stop
    xor c
    ld sp, hl
    nop
    nop
    nop
    adc b
    rst $38
    ret nc

    rst $38
    stop
    xor c
    ld a, [$0000]
    nop
    ld d, b
    nop
    ret nc

    rst $38
    stop
    xor c
    ei
    nop
    nop
    nop
    add sp, $00
    jr c, jr_0c5_5a57

jr_0c5_5a57:
    nop
    nop
    xor c
    db $fc
    nop
    nop
    nop
    ld [hl], b
    nop
    jr c, jr_0c5_5a62

jr_0c5_5a62:
    nop
    nop
    xor c
    db $fd
    nop
    nop
    nop
    ld [hl], b
    rst $38
    jr c, jr_0c5_5a6d

jr_0c5_5a6d:
    nop
    nop
    xor c
    cp $00
    nop
    nop

jr_0c5_5a74:
    jr nc, jr_0c5_5a74

    jr c, jr_0c5_5a78

jr_0c5_5a78:
    nop
    nop
    xor c
    rst $30
    nop

jr_0c5_5a7d:
    nop
    nop
    jr nc, jr_0c5_5a7d

    ret nc

    nop
    ld [$ff00], sp
    nop
    ld [hl], b
    nop
    dec hl
    ld b, l
    adc b
    rst $38
    ldh a, [rP1]
    stop
    xor b
    ret z

    nop
    ld e, $00
    sub b
    nop
    jr c, @+$01

    nop
    nop
    xor b
    ret


    nop
    ld c, $00
    ld hl, sp-$01
    add b
    rst $38
    nop
    nop
    xor b
    jp z, $3e00

    nop
    ldh a, [rP1]
    or b
    rst $38
    nop
    nop
    xor b
    rlc b
    ld b, e
    nop
    ret nc

    nop
    jr z, jr_0c5_5abb

jr_0c5_5abb:
    nop
    nop
    sub b
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    stop
    sub c
    nop
    nop
    nop
    nop
    ld a, b
    rst $38
    db $10
    rst $38
    nop
    nop
    xor c
    ldh a, [rP1]
    nop
    nop
    ld l, b
    nop
    db $10
    rst $38
    nop
    nop
    xor c
    pop af
    nop
    nop
    nop
    ret nc

    nop
    db $10
    rst $38
    nop
    nop
    rst $38
    nop
    ld [hl], c
    nop
    add h
    ld b, h
    ld d, b
    nop
    ret nc

    nop
    stop
    xor c
    call z, $2c00
    nop
    ld hl, sp-$01
    ld [hl], b
    rst $38
    nop
    nop
    xor c
    call $0c00
    nop
    add b
    rst $38
    ld hl, sp-$01
    ld [$a900], sp
    ld hl, sp+$00
    nop
    nop
    ret c

    rst $38
    ld [hl], b
    rst $38
    nop
    nop
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor c
    adc $00
    ld d, l
    nop
    or b
    rst $38
    ld c, b
    rst $38
    nop
    nop
    sbc b
    ret z

    nop
    sbc b
    inc bc
    ld a, b
    nop
    nop
    nop
    nop
    nop
    rst $38

bank0c5_5b39:
    db $00, $73, $00, $bc, $45, $c8, $fd, $80, $fe, $18, $00, $00, $73, $00, $04, $48
    db $e8, $fe, $10, $01, $10, $00, $8b, $73, $00, $1c, $49, $98, $03, $a8, $ff, $08
    db $00, $ff
    
bank0c5_5b5d:
    dw $40e8, $0000
    dw $4136, $0000
    dw $40f3, $0001
    dw $4257, $0001
    dw $40fe, $0002
    dw $45d3, $0002
    dw $4109, $0003
    dw $4895, $0003
    dw $4141, $0004
    dw $42e7, $0004
    dw $41bb, $0005
    dw $43c6, $0005
    dw $41fe, $0006
    dw $4209, $0007
    dw $4563, $0007
    dw $4214, $0008
    dw $46b3, $0008
    dw $421f, $0009
    dw $43bb, $0009
    dw $422a, $000a
    dw $4340, $000a
    dw $4262, $000b
    dw $44c7, $000b
    dw $42fd, $000c
    dw $4399, $000c
    dw $4308, $000d
    dw $45b1, $000d
    dw $43d1, $000e
    dw $4409, $000e
    dw $43dc, $000f
    dw $4e38, $000f
    dw $4436, $0010
    dw $44d2, $0010
    dw $4441, $0011
    dw $4622, $0011
    dw $444c, $0012
    dw $4600, $0012
    dw $4457, $0013
    dw $47aa, $0013
    dw $4462, $0014
    dw $449a, $0014
    dw $4479, $0015
    dw $5a17, $0015
    dw $4484, $0016
    dw $5aea, $0016
    dw $448f, $0017
    dw $4520, $0017
    dw $44a5, $0018
    dw $4691, $0018
    dw $452b, $0019
    dw $5a86, $0019
    dw $4536, $001a
    dw $4aac, $001a
    dw $45bc, $001b
    dw $5b39, $001b
    dw $45c8, $001c
    dw $4745, $001c
    dw $469c, $001d
    dw $46ec, $001d
    dw $46e0, $001e
    dw $4750, $001e
    dw $477d, $001f
    dw $47b5, $001f
    dw $47c1, $0020
    dw $4c49, $0020
    dw $47cc, $0021
    dw $47f9, $0021
    dw $4804, $0022
    dw $5b44, $0022
    dw $483c, $0023
    dw $4874, $0023
    dw $4847, $0024
    dw $4e43, $0024
    dw $487f, $0025
    dw $4954, $0025
    dw $488a, $0026
    dw $4b80, $0026
    dw $48a1, $0027
    dw $48ac, $0028
    dw $48ce, $0029
    dw $4a96, $0029
    dw $48d9, $002a
    dw $4c60, $002a
    dw $48fb, $002b
    dw $4d58, $002b
    dw $4906, $002c
    dw $4dd3, $002c
    dw $4911, $002d
    dw $4ad9, $002d
    dw $491c, $002e
    dw $5b4f, $002e
    dw $495f, $002f
    dw $4cfe, $002f
    dw $4981, $0030
    dw $4cba, $0030
    dw $49ae, $0031
    dw $4b6a, $0031
    dw $4a80, $0032
    dw $4a8b, $0033
    dw $4cdc, $0033
    dw $4aa1, $0034
    dw $4ae4, $0035
    dw $4e22, $0035
    dw $4b27, $0036
    dw $4ce7, $0036
    dw $4b54, $0037
    dw $4ba2, $0037
    dw $4bf0, $0038
    dw $4cd1, $0038
    dw $4c54, $0039
    dw $4c6b, $0039
    dw $4c77, $003a
    dw $4caf, $003a
    dw $4d15, $003b
    dw $4e2d, $003b
    dw $4d63, $003c
    dw $4da6, $003c
    dw $4d6e, $003d
    dw $4e00, $003d
    dw $4e70, $003e
    dw $4f00, $003e
    dw $4e86, $003f
    dw $4f22, $003f
    dw $4ef5, $0040
    dw $4f2d, $0040
    dw $4f38, $0041
    dw $4f7c, $0041
    dw $4f43, $0042
    dw $5073, $0042
    dw $560d, $0043
    dw $4f87, $0044
    dw $51fc, $0044
    dw $4fbf, $0045
    dw $5046, $0045
    dw $4fec, $0046
    dw $5175, $0046
    dw $500e, $0047
    dw $5089, $0047
    dw $5019, $0048
    dw $51a2, $0048
    dw $5051, $0049
    dw $51da, $0049
    dw $503b, $004a
    dw $50ee, $004a
    dw $507e, $004b
    dw $513d, $004b
    dw $50a0, $004c
    dw $51c4, $004c
    dw $50e3, $004d
    dw $5645, $004d
    dw $5148, $004e
    dw $5180, $004e
    dw $5153, $004f
    dw $516a, $004f
    dw $51ad, $0050
    dw $51cf, $0050
    dw $51e6, $0051
    dw $53a6, $0051
    dw $51f1, $0052
    dw $5384, $0052
    dw $5207, $0053
    dw $524a, $0053
    dw $5212, $0054
    dw $52ba, $0054
    dw $5255, $0055
    dw $5298, $0055
    dw $52f2, $0056
    dw $532a, $0056
    dw $52fd, $0057
    dw $55eb, $0057
    dw $5308, $0058
    dw $5592, $0058
    dw $5313, $0059
    dw $5357, $0059
    dw $531f, $005a
    dw $53f4, $005a
    dw $53b1, $005b
    dw $5490, $005b
    dw $53bc, $005c
    dw $53de, $005c
    dw $53e9, $005d
    dw $5437, $005d
    dw $546f, $005e
    dw $550b, $005e
    dw $547a, $005f
    dw $557b, $005f
    dw $5485, $0060
    dw $54a7, $0060
    dw $5516, $0061
    dw $5559, $0061
    dw $5521, $0062
    dw $5570, $0062
    dw $5602, $0063
    dw $562f, $0063
    dw $563a, $0064
    dw $565c, $0064
    dw $5651, $0065
    dw $5673, $0065
    dw $567e, $0066
    dw $570f, $0066
    dw $5689, $0067
    dw $56cc, $0067
    dw $5704, $0068
    dw $5768, $0068
    dw $571a, $0069
    dw $57e3, $0069
    dw $5725, $006a
    dw $57a0, $006a
    dw $5730, $006b
    dw $58d9, $006b
    dw $578a, $006c
    dw $58ef, $006c
    dw $5795, $006d
    dw $57ab, $006d
    dw $57ee, $006e
    dw $5853, $006e
    dw $57f9, $006f
    dw $581b, $006f
    dw $5804, $0070
    dw $58b7, $0070
    dw $58ac, $0071
    dw $59de, $0071
    dw $58c3, $0072
    dw $59c7, $0072
    dw $58ce, $0073
    dw $596b, $0073
    dw $58e4, $0074
    dw $591d, $0074
    dw $5976, $0075
    dw $598d, $0075

    sbc b

jr_0c5_5ef4:
    ld e, c
    halt
    and h
    ld e, c
    halt
    jp nc, Jump_0c5_7759

    nop
    ld a, e
    ld c, [hl]
    ld a, b
    nop
    rst $30
    ld b, [hl]
    ld a, b
    nop
    ld [hl], l
    ld c, e
    ld a, c
    nop
    xor l
    ld c, e
    ld a, d
    nop
    and h
    ld c, h
    ld a, e
    nop
    ld a, [c]
    ld b, d
    ld a, h
    nop
    ld e, a
    ld c, e
    ld a, l
    nop
    ld [$7e59], a
    nop
    ld h, l
    ld c, a
    ld a, a
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $5f25
    ld hl, $c400
    ld bc, $0080
    call Call_000_321c
    ld de, $5fa5
    ld hl, $c480
    ld bc, $0080
    call Call_000_321c
    ld de, $6073
    ld hl, $c500
    ld bc, $0100
    call Call_000_321c
    ld de, $6173
    ld hl, $c600
    ld bc, $0100
    call Call_000_321c
    ld hl, $c186
    ld b, $04

jr_0c5_62a8:
    ld [hl], $ff
    inc hl
    dec b
    jr nz, jr_0c5_62a8

    ld a, [$c11b]
    or a
    jr z, jr_0c5_62c4

    ld a, $ff
    ld [$c449], a
    ld [$c4a7], a
    xor a
    ld [$c574], a
    ld [$c57f], a
    ret


jr_0c5_62c4:
    ret


    xor a
    ld [$c17e], a
    ld a, [$c105]
    or a
    ret nz

    ld a, [$c17c]
    ld l, a
    ld a, [$c17d]
    ld h, a
    add hl, hl
    ld de, $4000
    add hl, de
    ld a, [hl]
    inc hl
    ld h, [hl]
    ld l, a

Jump_0c5_62df:
jr_0c5_62df:
    ld a, [hl]
    cp $ff
    jr z, jr_0c5_6313

    cp $90
    jp c, Jump_0c5_6360

    cp $91
    jp z, Jump_0c5_6390

    cp $90
    jp z, Jump_0c5_6378

    cp $98
    jp z, Jump_0c5_6359

    cp $a0
    jp z, Jump_0c5_6359

    cp $95
    jp z, Jump_0c5_6359

    cp $a8
    jp z, Jump_0c5_631b

    cp $a9
    jp z, Jump_0c5_6341

    cp $e0
    jp nc, Jump_0c5_6314

    jr jr_0c5_62df

jr_0c5_6313:
    ret


Jump_0c5_6314:
    ld de, $000b
    add hl, de
    jp Jump_0c5_62df


Jump_0c5_631b:
    ld a, [$c306]
    cp $07
    jr z, jr_0c5_633a

    ld de, $0005
    add hl, de
    call Call_0c5_6467
    or a
    jr z, jr_0c5_6333

    ld de, $0006
    add hl, de
    jp Jump_0c5_62df


jr_0c5_6333:
    ld de, $0006
    add hl, de
    jp Jump_0c5_62df


jr_0c5_633a:
    ld de, $000b
    add hl, de
    jp Jump_0c5_62df


Jump_0c5_6341:
    ld de, $0005
    add hl, de
    call Call_0c5_63a8
    or a
    jr z, jr_0c5_6352

    ld de, $0006
    add hl, de
    jp Jump_0c5_62df


jr_0c5_6352:
    ld de, $0006
    add hl, de
    jp Jump_0c5_62df


Jump_0c5_6359:
    ld de, $000b
    add hl, de
    jp Jump_0c5_62df


Jump_0c5_6360:
    ld de, $0005
    add hl, de
    call Call_0c5_6519
    or a
    jr z, jr_0c5_6371

    ld de, $0006
    add hl, de
    jp Jump_0c5_62df


jr_0c5_6371:
    ld de, $0006
    add hl, de
    jp Jump_0c5_62df


Jump_0c5_6378:
    ld de, $0005
    add hl, de
    call Call_0c5_6638
    or a
    jr z, jr_0c5_6389

    ld de, $0006
    add hl, de
    jp Jump_0c5_62df


jr_0c5_6389:
    ld de, $0006
    add hl, de
    jp Jump_0c5_62df


Jump_0c5_6390:
    ld de, $0005
    add hl, de
    call Call_0c5_66c8
    or a
    jr z, jr_0c5_63a1

    ld de, $0006
    add hl, de
    jp Jump_0c5_62df


jr_0c5_63a1:
    ld de, $0006
    add hl, de
    jp Jump_0c5_62df


Call_0c5_63a8:
    ld a, [$c17e]
    cp $05
    jr z, jr_0c5_63b3

    or a
    jp nz, Jump_0c5_6453

jr_0c5_63b3:
    ld de, $0004
    add hl, de
    ld a, [hl]
    ld [$c1f5], a
    ld de, $fffc
    add hl, de
    ld a, [$c311]
    sub [hl]
    ld c, a
    inc hl
    ld a, [$c312]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_63d8

    cp $ff
    jr z, jr_0c5_63df

jr_0c5_63d1:
    ld de, $fffe
    add hl, de
    jp Jump_0c5_6453


jr_0c5_63d8:
    ld a, c
    cp $40
    jr nc, jr_0c5_63d1

    jr jr_0c5_63e4

jr_0c5_63df:
    ld a, c
    cp $c0
    jr c, jr_0c5_63d1

jr_0c5_63e4:
    ld a, [$c313]
    sub [hl]
    ld c, a
    inc hl
    ld a, [$c314]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_63fd

    cp $ff
    jr z, jr_0c5_6404

jr_0c5_63f6:
    ld de, $fffc
    add hl, de
    jp Jump_0c5_6453


jr_0c5_63fd:
    ld a, c
    cp $40
    jr nc, jr_0c5_63f6

    jr jr_0c5_6409

jr_0c5_6404:
    ld a, c
    cp $c0
    jr c, jr_0c5_63f6

jr_0c5_6409:
    ld a, [$c309]
    ld c, a
    ld a, [hl]
    ld de, $fffc
    add hl, de
    add $10
    sub c
    and $1f
    cp $08
    jr c, jr_0c5_6422

    cp $18
    jr nc, jr_0c5_6422

    jp Jump_0c5_6453


jr_0c5_6422:
    ld a, [$c100]
    and $01
    jr z, jr_0c5_6450

    ld a, [$c306]
    cp $00
    jr nz, jr_0c5_6450

    ld de, $fffe
    add hl, de
    ld a, [hl]
    ld [$c1f4], a
    ld de, $fffe
    add hl, de
    ld a, [hl]
    ld [$c1c7], a
    call Call_0c5_6a80
    ld de, $0004
    add hl, de
    or a
    jp z, Jump_0c5_6455

    ld a, $03
    ld [$c17e], a

jr_0c5_6450:
    ld a, $ff
    ret


Jump_0c5_6453:
    xor a
    ret


Jump_0c5_6455:
    ld a, [$c1c7]
    ld [$c182], a
    ld a, $ff
    ld [$c183], a
    ld a, $05
    ld [$c17e], a
    xor a
    ret


Call_0c5_6467:
    ld a, [$c17e]
    cp $05
    jr z, jr_0c5_6472

    or a
    jp nz, Jump_0c5_6505

jr_0c5_6472:
    ld de, $0004
    add hl, de
    ld a, [hl]
    ld [$c1f5], a
    ld de, $fffc
    add hl, de
    ld a, [$c311]
    sub [hl]
    ld c, a
    inc hl
    ld a, [$c312]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_6497

    cp $ff
    jr z, jr_0c5_649e

jr_0c5_6490:
    ld de, $fffe
    add hl, de
    jp Jump_0c5_6505


jr_0c5_6497:
    ld a, c
    cp $20
    jr nc, jr_0c5_6490

    jr jr_0c5_64a3

jr_0c5_649e:
    ld a, c
    cp $e0
    jr c, jr_0c5_6490

jr_0c5_64a3:
    ld a, [$c313]
    sub [hl]
    ld c, a
    inc hl
    ld a, [$c314]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_64bc

    cp $ff
    jr z, jr_0c5_64c3

jr_0c5_64b5:
    ld de, $fffc
    add hl, de
    jp Jump_0c5_6505


jr_0c5_64bc:
    ld a, c
    cp $20
    jr nc, jr_0c5_64b5

    jr jr_0c5_64c8

jr_0c5_64c3:
    ld a, c
    cp $e0
    jr c, jr_0c5_64b5

jr_0c5_64c8:
    ld de, $fffc
    add hl, de
    ld a, [$c100]
    and $01
    jr z, jr_0c5_6502

    ld a, [$c306]
    cp $00
    jr nz, jr_0c5_6502

    ld de, $fffe
    add hl, de
    ld a, [hl]
    ld [$c1b8], a
    ld de, $fffe
    add hl, de
    ld a, [hl]
    ld [$c1c7], a
    call Call_0c5_6a80
    ld de, $0004
    add hl, de
    or a
    jp z, Jump_0c5_6507

    ld a, $07
    ld [$c306], a
    xor a
    ld [$c307], a
    ld [$c17e], a
    ret


jr_0c5_6502:
    ld a, $ff
    ret


Jump_0c5_6505:
    xor a
    ret


Jump_0c5_6507:
    ld a, [$c1c7]
    ld [$c182], a
    ld a, $ff
    ld [$c183], a
    ld a, $05
    ld [$c17e], a
    xor a
    ret


Call_0c5_6519:
    ld a, [$c17e]
    or a
    jp nz, Jump_0c5_6620

    ld de, $0004
    add hl, de
    ld a, [hl]
    ld [$c1e4], a
    ld de, $fffc
    add hl, de
    ld a, [$c311]
    sub [hl]
    ld c, a
    inc hl
    ld a, [$c312]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_6545

    cp $ff
    jr z, jr_0c5_6556

jr_0c5_653e:
    ld de, $fffe
    add hl, de
    jp Jump_0c5_6620


jr_0c5_6545:
    ld b, $08
    ld a, [$c1e4]
    and $0f
    jr nz, jr_0c5_6550

    ld b, $80

jr_0c5_6550:
    ld a, c
    cp b
    jr nc, jr_0c5_653e

    jr jr_0c5_6565

jr_0c5_6556:
    ld b, $f8
    ld a, [$c1e4]
    and $0f
    jr nz, jr_0c5_6561

    ld b, $80

jr_0c5_6561:
    ld a, c
    cp b
    jr c, jr_0c5_653e

jr_0c5_6565:
    ld a, [$c313]
    sub [hl]
    ld c, a
    inc hl
    ld a, [$c314]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_657e

    cp $ff
    jr z, jr_0c5_658f

jr_0c5_6577:
    ld de, $fffc
    add hl, de
    jp Jump_0c5_6620


jr_0c5_657e:
    ld b, $80
    ld a, [$c1e4]
    and $0f
    jr nz, jr_0c5_6589

    ld b, $08

jr_0c5_6589:
    ld a, c
    cp b
    jr nc, jr_0c5_6577

    jr jr_0c5_659e

jr_0c5_658f:
    ld b, $80
    ld a, [$c1e4]
    and $0f
    jr nz, jr_0c5_659a

    ld b, $f8

jr_0c5_659a:
    ld a, c
    cp b
    jr c, jr_0c5_6577

jr_0c5_659e:
    ld a, [$c309]
    ld c, a
    ld a, [hl]
    ld de, $fffc
    add hl, de
    add $10
    sub c
    and $1f
    cp $08
    jr c, jr_0c5_65b7

    cp $18
    jr nc, jr_0c5_65b7

    jp Jump_0c5_6620


jr_0c5_65b7:
    ld a, [$c100]
    and $01
    jr z, jr_0c5_661d

    ld a, [$c306]
    cp $03
    jr z, jr_0c5_661d

    cp $05
    jr z, jr_0c5_661d

    cp $04
    jr z, jr_0c5_661d

    ld de, $fffb
    add hl, de
    call Call_0c5_674a
    or a
    jp z, Jump_0c5_6622

    ld a, [hl]
    ld [DOOR_TRANSITION_TYPE], a
    srl a
    srl a
    srl a
    ld [$c1b6], a
    ld a, [hl]
    and $07
    ld [$c1b7], a
    ld de, $0003
    add hl, de
    ld e, [hl]
    inc hl
    ld d, [hl]
    inc hl
    inc de
    ld a, [de]
    ld [$c17c], a
    inc de
    ld a, [de]
    ld [$c17d], a
    inc de
    inc de
    inc de
    ld a, [de]
    ld [$c311], a
    inc de
    ld a, [de]
    ld [$c312], a
    inc de
    ld a, [de]
    ld [$c313], a
    inc de
    ld a, [de]
    ld [$c314], a
    inc de
    ld a, [de]
    ld [$c309], a
    ld a, $01
    ld [$c17e], a

jr_0c5_661d:
    ld a, $ff
    ret


Jump_0c5_6620:
    xor a
    ret


Jump_0c5_6622:
    ld de, $0005
    add hl, de
    ld a, $ff
    ld [$c182], a
    ld a, [$c1ff]
    ld [$c183], a
    ld a, $05
    ld [$c17e], a
    xor a
    ret


Call_0c5_6638:
    ld a, [$c17e]
    cp $05
    jr z, jr_0c5_6643

    or a
    jp nz, Jump_0c5_66c6

jr_0c5_6643:
    ld a, [$c311]
    sub [hl]
    ld c, a
    inc hl
    ld a, [$c312]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_665c

    cp $ff
    jr z, jr_0c5_6663

jr_0c5_6655:
    ld de, $fffe
    add hl, de
    jp Jump_0c5_66c6


jr_0c5_665c:
    ld a, c
    cp $40
    jr nc, jr_0c5_6655

    jr jr_0c5_6668

jr_0c5_6663:
    ld a, c
    cp $c0
    jr c, jr_0c5_6655

jr_0c5_6668:
    ld a, [$c313]
    sub [hl]
    ld c, a
    inc hl
    ld a, [$c314]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_6681

    cp $ff
    jr z, jr_0c5_6688

jr_0c5_667a:
    ld de, $fffc
    add hl, de
    jp Jump_0c5_66c6


jr_0c5_6681:
    ld a, c
    cp $40
    jr nc, jr_0c5_667a

    jr jr_0c5_668d

jr_0c5_6688:
    ld a, c
    cp $c0
    jr c, jr_0c5_667a

jr_0c5_668d:
    ld a, [$c309]
    ld c, a
    ld a, [hl]
    ld de, $fffc
    add hl, de
    add $10
    sub c
    and $1f
    cp $04
    jr c, jr_0c5_66a6

    cp $1c
    jr nc, jr_0c5_66a6

    jp Jump_0c5_66c6


jr_0c5_66a6:
    ld a, [$c100]
    and $01
    jr z, jr_0c5_66c3

    ld a, [$c306]
    cp $03
    jr z, jr_0c5_66c3

    ld a, $ff
    ld [$c182], a
    ld a, $80
    ld [$c183], a
    ld a, $05
    ld [$c17e], a

jr_0c5_66c3:
    ld a, $ff
    ret


Jump_0c5_66c6:
    xor a
    ret


Call_0c5_66c8:
    ld a, [$c17e]
    or a
    jp nz, Jump_0c5_6748

    ld a, [$c311]
    sub [hl]
    ld c, a
    inc hl
    ld a, [$c312]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_66e8

    cp $ff
    jr z, jr_0c5_66ef

jr_0c5_66e1:
    ld de, $fffe
    add hl, de
    jp Jump_0c5_6748


jr_0c5_66e8:
    ld a, c
    cp $40
    jr nc, jr_0c5_66e1

    jr jr_0c5_66f4

jr_0c5_66ef:
    ld a, c
    cp $c0
    jr c, jr_0c5_66e1

jr_0c5_66f4:
    ld a, [$c313]
    sub [hl]
    ld c, a
    inc hl
    ld a, [$c314]
    sbc [hl]
    inc hl
    or a
    jr z, jr_0c5_670d

    cp $ff
    jr z, jr_0c5_6714

jr_0c5_6706:
    ld de, $fffc
    add hl, de
    jp Jump_0c5_6748


jr_0c5_670d:
    ld a, c
    cp $40
    jr nc, jr_0c5_6706

    jr jr_0c5_6719

jr_0c5_6714:
    ld a, c
    cp $c0
    jr c, jr_0c5_6706

jr_0c5_6719:
    ld a, [$c309]
    ld c, a
    ld a, [hl]
    ld de, $fffc
    add hl, de
    add $10
    sub c
    and $1f
    cp $04
    jr c, jr_0c5_6732

    cp $1c
    jr nc, jr_0c5_6732

    jp Jump_0c5_6748


jr_0c5_6732:
    ld a, [$c100]
    and $01
    jr z, jr_0c5_6745

    ld a, [$c306]
    cp $03
    jr z, jr_0c5_6745

    ld a, $04
    ld [$c17e], a

jr_0c5_6745:
    ld a, $ff
    ret


Jump_0c5_6748:
    xor a
    ret


Call_0c5_674a:
    push bc
    push de
    push hl
    ld e, l
    ld d, h
    ld hl, $5b5b

jr_0c5_6752:
    ld c, [hl]
    inc hl
    ld b, [hl]
    inc hl

Call_0c5_6756:
    ld a, c
    or b
    jp z, Jump_0c5_67f5

    ld a, e
    cp c
    jr nz, jr_0c5_6776

    ld a, d
    cp b
    jr nz, jr_0c5_6776

    ld a, [hl]
    ld [$c1ff], a
    ld e, a
    ld d, $00
    ld hl, $c400
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_0c5_677a

    pop hl
    pop de
    pop bc
    ret


jr_0c5_6776:
    inc hl
    inc hl
    jr jr_0c5_6752

jr_0c5_677a:
    ld a, [$c17c]
    or a
    jp z, Jump_0c5_67f7

    cp $03
    jp z, Jump_0c5_680d

    cp $04
    jp z, Jump_0c5_6844

    cp $05
    jp z, Jump_0c5_686d

    cp $08
    jp z, Jump_0c5_6896

    cp $0a
    jp z, Jump_0c5_68ac

    cp $0b
    jp z, Jump_0c5_68c2

    cp $0f
    jp z, Jump_0c5_68d8

    cp $12
    jp z, Jump_0c5_68e5

    cp $1e
    jp z, Jump_0c5_68fb

    cp $1f
    jp z, Jump_0c5_690d

    cp $24
    jp z, Jump_0c5_6928

    cp $27
    jp z, Jump_0c5_694c

    cp $2a
    jp z, Jump_0c5_6974

    cp $2d
    jp z, Jump_0c5_698a

    cp $34
    jp z, Jump_0c5_69a3

    cp $35
    jp z, Jump_0c5_69b4

    cp $4b
    jp z, Jump_0c5_69ca

    cp $4f
    jp z, Jump_0c5_69e5

    cp $52
    jp z, Jump_0c5_6a0d

    cp $5e
    jp z, Jump_0c5_6a28

    cp $60
    jp z, Jump_0c5_6a43

Jump_0c5_67ea:
    xor a
    pop hl
    pop de
    pop bc
    ret


Jump_0c5_67ef:
    ld a, $ff
    pop hl
    pop de
    pop bc
    ret


Jump_0c5_67f5:
jr_0c5_67f5:
    jr jr_0c5_67f5

Jump_0c5_67f7:
    ld a, e
    cp $02
    jr z, jr_0c5_67ff

    jp Jump_0c5_67ea


jr_0c5_67ff:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_680d:
    ld a, e
    cp $06
    jr z, jr_0c5_6819

    cp $07
    jr z, jr_0c5_6823

    jp Jump_0c5_67ea


jr_0c5_6819:
    ld [hl], $ff
    ld a, $ff
    ld [$c47c], a
    jp Jump_0c5_67ef


jr_0c5_6823:
    ld a, [$c30b]
    cp $93
    jr z, jr_0c5_6838

    ld c, $42
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


jr_0c5_6838:
    ld a, [$c484]
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_6844:
    ld a, e
    cp $0b
    jr z, jr_0c5_684c

    jp Jump_0c5_67ea


jr_0c5_684c:
    ld a, [$c30b]
    cp $93
    jr z, jr_0c5_6861

    ld c, $42
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


jr_0c5_6861:
    ld a, [$c484]
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_686d:
    ld a, e
    cp $0c
    jr z, jr_0c5_6875

    jp Jump_0c5_67ea


jr_0c5_6875:
    ld a, [$c30b]
    cp $93
    jr z, jr_0c5_688a

    ld c, $42
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


jr_0c5_688a:
    ld a, [$c484]
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_6896:
    ld a, e
    cp $0e
    jr z, jr_0c5_689e

    jp Jump_0c5_67ea


jr_0c5_689e:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_68ac:
    ld a, e
    cp $11
    jr z, jr_0c5_68b4

    jp Jump_0c5_67ea


jr_0c5_68b4:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_68c2:
    ld a, e
    cp $16
    jr z, jr_0c5_68ca

    jp Jump_0c5_67ea


jr_0c5_68ca:
    ld c, $2f
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_68d8:
    ld a, e
    cp $0d
    jr z, jr_0c5_68e0

    jp Jump_0c5_67ea


jr_0c5_68e0:
    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_68e5:
    ld a, e
    cp $11
    jr z, jr_0c5_68ed

    jp Jump_0c5_67ea


jr_0c5_68ed:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_68fb:
    ld a, e
    cp $28
    jr z, jr_0c5_6903

    jp Jump_0c5_67ea


jr_0c5_6903:
    ld [hl], $ff
    ld a, $ff
    ld [$c47b], a
    jp Jump_0c5_67ef


Jump_0c5_690d:
    ld a, e
    cp $2a
    jr z, jr_0c5_6915

    jp Jump_0c5_67ea


jr_0c5_6915:
    ld c, $2f
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    ld a, $ff
    ld [$c47b], a
    jp Jump_0c5_67ef


Jump_0c5_6928:
    ld a, e
    cp $33
    jr z, jr_0c5_6934

    cp $32
    jr z, jr_0c5_6942

    jp Jump_0c5_67ea


jr_0c5_6934:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


jr_0c5_6942:
    ld [hl], $ff
    ld a, $ff
    ld [$c47d], a
    jp Jump_0c5_67ef


Jump_0c5_694c:
    ld a, e
    cp $79
    jr z, jr_0c5_6958

    cp $31
    jr z, jr_0c5_6966

    jp Jump_0c5_67ea


jr_0c5_6958:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


jr_0c5_6966:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_6974:
    ld a, e
    cp $33
    jr z, jr_0c5_697c

    jp Jump_0c5_67ea


jr_0c5_697c:
    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_698a:
    ld a, e
    cp $3a
    jr z, jr_0c5_6992

    jp Jump_0c5_67ea


jr_0c5_6992:
    ld c, $44
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld a, $00
    ld [de], a
    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_69a3:
    jp Jump_0c5_67ea


    ld c, $02
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_69b4:
    ld a, e
    cp $3b
    jr z, jr_0c5_69bc

    jp Jump_0c5_67ea


jr_0c5_69bc:
    ld c, $2f
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_69ca:
    ld a, e
    cp $59
    jr z, jr_0c5_69d2

    jp Jump_0c5_67ea


jr_0c5_69d2:
    ld c, $01
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld c, $01
    call Call_0c5_6a50
    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_69e5:
    ld a, e
    cp $5c
    jr z, jr_0c5_69ed

    jp Jump_0c5_67ea


jr_0c5_69ed:
    ld a, [$c11b]
    or a
    jr z, jr_0c5_69fa

    ld a, [$c49a]
    or a
    jp z, Jump_0c5_67ea

jr_0c5_69fa:
    ld c, $3c
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld c, $3c
    call Call_0c5_6a50
    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_6a0d:
    ld a, e
    cp $5e
    jr z, jr_0c5_6a15

    jp Jump_0c5_67ea


jr_0c5_6a15:
    ld c, $5b
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld c, $5b
    call Call_0c5_6a50
    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_6a28:
    ld a, e
    cp $6b
    jr z, jr_0c5_6a30

    jp Jump_0c5_67ea


jr_0c5_6a30:
    ld c, $36
    call Call_0c5_6a6e
    or a
    jp z, Jump_0c5_67ea

    ld c, $36
    call Call_0c5_6a50
    ld [hl], $ff
    jp Jump_0c5_67ef


Jump_0c5_6a43:
    ld a, e
    cp $6a
    jr z, jr_0c5_6a4b

    jp Jump_0c5_67ea


jr_0c5_6a4b:
    ld [hl], $ff
    jp Jump_0c5_67ef


Call_0c5_6a50:
    push bc
    push hl
    ld hl, $c1e7
    ld b, $06
    ld a, [$c11b]
    or a
    jr z, jr_0c5_6a5f

    ld b, $08

jr_0c5_6a5f:
    ld a, [hl]
    cp c
    jr z, jr_0c5_6a6a

    inc hl
    dec b
    jr nz, jr_0c5_6a5f

jr_0c5_6a67:
    pop hl
    pop bc
    ret


jr_0c5_6a6a:
    ld [hl], $00
    jr jr_0c5_6a67

Call_0c5_6a6e:
    ld de, $c1e7
    ld b, $08

jr_0c5_6a73:
    ld a, [de]
    cp c
    jr z, jr_0c5_6a7d

    inc de
    dec b
    jr nz, jr_0c5_6a73

    xor a
    ret


jr_0c5_6a7d:
    ld a, $ff
    ret


Call_0c5_6a80:
    push bc
    push de
    push hl
    ld a, [$c1c7]
    cp $07
    jr z, jr_0c5_6ab1

    cp $29
    jr z, jr_0c5_6aa2

    cp $55
    jr z, jr_0c5_6ac0

    cp $ad
    jr z, jr_0c5_6ace

jr_0c5_6a96:
    ld e, a
    ld d, $00
    ld hl, $c500
    add hl, de
    ld a, [hl]

jr_0c5_6a9e:
    pop hl
    pop de
    pop bc
    ret


jr_0c5_6aa2:
    ld a, [$c319]
    cp $10
    jr nc, jr_0c5_6aac

    xor a
    jr jr_0c5_6a9e

jr_0c5_6aac:
    ld a, [$c1c7]
    jr jr_0c5_6a96

jr_0c5_6ab1:
    ld a, [$c319]
    cp $10
    jr nc, jr_0c5_6abb

    xor a
    jr jr_0c5_6a9e

jr_0c5_6abb:
    ld a, [$c1c7]
    jr jr_0c5_6a96

jr_0c5_6ac0:
    ld a, [$c4c0]
    or a
    jr nz, jr_0c5_6ac9

    xor a
    jr jr_0c5_6a9e

jr_0c5_6ac9:
    ld a, [$c1c7]
    jr jr_0c5_6a96

jr_0c5_6ace:
    ld a, [$c49b]
    or a
    jr nz, jr_0c5_6ad7

    xor a
    jr jr_0c5_6a9e

jr_0c5_6ad7:
    ld a, [$c1c7]
    jr jr_0c5_6a96

    ld hl, $c320
    ld b, $07

jr_0c5_6ae1:
    ld c, $20

jr_0c5_6ae3:
    ld [hl], $00
    inc hl
    dec c
    jr nz, jr_0c5_6ae3

    dec b
    jr nz, jr_0c5_6ae1

    xor a
    ld [$c1b1], a
    ld hl, $c320
    ld b, $07

jr_0c5_6af5:
    ld c, $20

jr_0c5_6af7:
    ld [hl], $00
    inc hl
    dec c
    jr nz, jr_0c5_6af7

    dec b
    jr nz, jr_0c5_6af5

    ld a, [$c17c]
    ld l, a
    ld a, [$c17d]
    ld h, a
    add hl, hl
    ld de, $4000
    add hl, de
    ld a, [hl]
    inc hl
    ld h, [hl]
    ld l, a

Jump_0c5_6b11:
jr_0c5_6b11:
    ld a, [hl]
    cp $ff
    jr z, jr_0c5_6b30

    cp $98
    jp z, Jump_0c5_6b31

    cp $a0
    jp z, Jump_0c5_6b31

    cp $95
    jp z, Jump_0c5_6b31

    cp $e0
    jp nc, Jump_0c5_6bb4

    ld de, $000b
    add hl, de
    jr jr_0c5_6b11

jr_0c5_6b30:
    ret


Jump_0c5_6b31:
    push hl
    ld c, l
    ld b, h
    call Call_000_3eb8
    inc bc
    ld hl, $c600
    ld a, [bc]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_0c5_6b4d

    pop hl
    ld de, $000b
    add hl, de
    jr jr_0c5_6b11

jr_0c5_6b4d:
    dec bc
    ld hl, $0000
    add hl, de
    ld [hl], $80
    ld hl, $000b
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $000f
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld hl, $0011
    add hl, de
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
    ld hl, $000c
    add hl, de
    ld [hl], $00
    ld hl, $000d
    add hl, de
    ld [hl], $00
    ld hl, $0006
    add hl, de
    ld [hl], $00
    ld hl, $0007
    add hl, de
    ld [hl], $00
    ld hl, $0008
    add hl, de
    ld [hl], $00
    ld hl, $0009
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $000a
    add hl, de
    ld [hl], $00
    ld hl, $000e
    add hl, de
    ld [hl], $40
    pop hl
    ld de, $000b
    add hl, de
    jp Jump_0c5_6b11


Jump_0c5_6bb4:
    push hl
    ld c, l
    ld b, h
    call Call_000_3eb8
    inc bc
    ld hl, $c600
    ld a, [bc]
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    or a
    jr nz, jr_0c5_6bd1

    pop hl
    ld de, $000b
    add hl, de
    jp Jump_0c5_6b11


jr_0c5_6bd1:
    dec bc
    ld hl, $0000
    add hl, de
    ld [hl], $80
    ld hl, $000b
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $000f
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld a, [bc]
    ld [hl], a
    inc hl
    inc bc
    ld hl, $0011
    add hl, de
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
    ld hl, $000c
    add hl, de
    ld [hl], $00
    ld hl, $000d
    add hl, de
    ld [hl], $00
    ld hl, $0006
    add hl, de
    ld [hl], $00
    ld hl, $0007
    add hl, de
    ld [hl], $00
    ld hl, $0008
    add hl, de
    ld [hl], $00
    ld hl, $0009
    add hl, de
    ld a, [bc]
    ld [hl], a
    ld hl, $000a
    add hl, de
    ld [hl], $00
    ld hl, $000e
    add hl, de
    ld [hl], $40
    ld hl, $000f
    add hl, de
    ld a, [hl]
    cp $fe
    jp z, Jump_0c5_6c41

Jump_0c5_6c39:
    pop hl
    ld de, $000b
    add hl, de
    jp Jump_0c5_6b11


Jump_0c5_6c41:
    ld a, [$c4d5]
    or a
    jp z, Jump_0c5_6c39

    ld hl, $0013
    add hl, de
    push bc
    ld bc, $ffc0
    ld [hl], c
    inc hl
    ld [hl], b
    pop bc
    jp Jump_0c5_6c39


    ld a, d
    cp $80
    jr c, jr_0c5_6c6f

    call Call_0c5_6c7c
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_0c5_6c7c
    ret


jr_0c5_6c6f:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


Call_0c5_6c7c:
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

Jump_0c5_7258:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0c5_7759:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
