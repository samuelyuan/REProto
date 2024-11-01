SECTION "ROM Bank $0fc", ROMX[$4000], BANK[$fc]

    sbc h
    ld b, b
    and h
    ld b, b
    xor h
    ld b, b
    or h
    ld b, b
    cp h
    ld b, b
    call nz, $cc40
    ld b, b
    call nc, $dc40
    ld b, b
    db $e4
    ld b, b
    db $ec
    ld b, b
    db $f4
    ld b, b
    db $fc
    ld b, b
    inc b
    ld b, c
    inc c
    ld b, c
    inc d
    ld b, c
    inc e
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    ld b, c
    inc l
    ld b, c
    inc [hl]
    ld b, c
    inc a
    ld b, c
    ld b, h
    ld b, c
    ld c, h
    ld b, c
    ld d, h
    ld b, c
    ld e, h
    ld b, c
    ld h, h
    ld b, c
    ld l, h
    ld b, c
    ld [hl], h
    ld b, c
    ld a, h
    ld b, c
    add h
    ld b, c
    adc h
    ld b, c
    sub h
    ld b, c
    sbc h
    ld b, c
    and h
    ld b, c
    xor h
    ld b, c
    or h
    ld b, c
    cp h
    ld b, c
    call nz, $cc41
    ld b, c
    call nc, $dc41
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld [hl], b
    inc bc
    ld hl, sp-$04
    ld c, b
    db $fd
    sub b
    db $fc
    ld b, b
    db $fd
    ld b, b
    db $fc
    ld c, b
    db $fd
    xor b
    db $fd
    ld l, b
    cp $38
    nop
    adc b
    nop
    xor b
    ld bc, $02d0
    cp b
    inc bc
    adc b
    inc b
    adc b
    inc bc
    ld d, b
    inc b
    ret nc

    rst $38
    ld e, b
    ld bc, $0050
    ret nz

    ld bc, $fd30
    ld [$c0fe], sp
    cp $c8
    rst $38
    cp b
    cp $c8
    rst $38
    ld c, b
    ld bc, $0248
    ld hl, sp+$01
    ld e, b
    inc bc
    ldh a, [$fd]
    ld [hl], b
    rst $38
    or b
    rst $38
    ld e, b
    nop
    ld [hl], b
    nop
    ret nz

    nop
    or b
    rst $38
    ld e, b
    nop
    ld [$c800], sp
    nop
    ret nz

    rst $38
    ld d, b
    ld bc, $00b0
    ret nc

    ld bc, $ffd8
    ret nc

    nop
    ld c, b
    cp $30
    cp $30
    db $fd
    nop
    nop
    or b
    cp $88
    rst $38

jr_0fc_4108:
    jr nc, jr_0fc_4108

    add b
    nop
    adc b
    inc bc
    ld d, b
    inc b
    ret nc

    rst $38
    ld e, b
    ld bc, $0000
    sbc b
    nop
    ld a, b
    ld bc, $0250
    jr z, @+$01

    db $10
    ld bc, $0110
    db $10
    ld bc, $ff28
    db $10
    ld bc, $0110
    db $10
    ld bc, $ff28
    db $10
    ld bc, $0110
    db $10
    ld bc, $ff28
    db $10
    ld bc, $0110
    db $10
    ld bc, $ff28
    db $10
    ld bc, $0110
    db $10
    ld bc, $ff28
    db $10
    ld bc, $0110
    db $10
    ld bc, $ff28
    db $10
    ld bc, $0110
    db $10
    ld bc, $fd30
    db $10
    rst $38
    sbc b
    rst $38
    add sp, -$01
    cp b
    ld bc, $0210
    ldh a, [$fa]
    ret nc

    db $fc
    ret z

    ld bc, $0210
    ld h, b
    rst $38
    nop
    nop
    ld d, b
    rst $38
    sub b
    nop
    ld hl, sp+$02
    ld d, b
    inc bc

jr_0fc_4174:
    jr c, jr_0fc_4174

    adc b
    cp $18
    rst $38
    ld a, b
    nop
    ld c, b
    rst $38

jr_0fc_417e:
    sub b
    nop
    jr nc, jr_0fc_417e

    adc b
    db $fc
    ld a, b
    rst $38
    ret z

    rst $38
    sub b
    rst $38
    ldh a, [rP1]
    ld a, b
    nop
    db $10
    ld [bc], a
    ld c, b
    ld [bc], a
    ret nc

    inc bc
    jr z, jr_0fc_4196

jr_0fc_4196:
    jr nz, jr_0fc_419a

    jr c, jr_0fc_419c

jr_0fc_419a:
    ret nc

jr_0fc_419b:
    ld [bc], a

jr_0fc_419c:
    jr nc, jr_0fc_419b

    or b
    ld bc, $fdc8
    jr nc, @-$01

    jr z, @+$01

    db $10
    ld bc, $0110
    db $10
    ld bc, $ff28
    db $10
    ld bc, $0110
    db $10
    ld bc, $0258
    ldh a, [rSC]
    xor b
    db $fd
    ld [$30fe], sp
    rst $38
    ret z

    nop
    cp b
    cp $f8
    nop
    ld a, b
    rst $38
    ret z

    rst $38
    add sp, -$01
    jr c, jr_0fc_41cd

    ld a, b

jr_0fc_41cd:
    ld [bc], a
    db $10
    inc bc
    cp b
    db $fd
    adc b
    rst $38
    ld a, b
    rst $38
    ret z

jr_0fc_41d7:
    rst $38
    jr nc, jr_0fc_41d7

jr_0fc_41da:
    ld b, b
    db $fd
    jr nc, jr_0fc_41da

jr_0fc_41de:
    ret nc

    inc bc
    jr nc, jr_0fc_41de

    ret nz

    ld [bc], a
    ld de, $c320
    ld b, $07

Jump_0fc_41e9:
    push bc
    push de
    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $98
    jp c, Jump_0fc_429b

    cp $a8
    jp nc, Jump_0fc_429b

    ld hl, $0000
    add hl, de
    ld a, [hl]
    and $40
    jp z, Jump_0fc_429b

    ld hl, $0006
    add hl, de
    ld a, [hl]
    cp $02
    jp z, Jump_0fc_429b

    ld hl, $000f
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    add hl, hl
    ld bc, $4000
    add hl, bc
    ld a, [hl+]
    ld h, [hl]
    ld l, a
    ld c, e
    ld b, d
    ld a, c
    add $11
    ld c, a
    ld a, b
    adc $00
    ld b, a
    ld a, [bc]
    sub [hl]
    inc hl
    inc bc
    ld a, [bc]
    sbc [hl]
    cp $c0
    jr c, jr_0fc_4238

    dec hl
    dec bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a

jr_0fc_4238:
    dec bc
    inc hl
    ld a, [bc]
    sub [hl]
    inc hl
    inc bc
    ld a, [bc]
    sbc [hl]
    cp $40
    jr nc, jr_0fc_4259

    dec hl
    dec bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    push hl
    ld hl, $0006
    add hl, de
    ld [hl], $00
    ld hl, $0007
    add hl, de
    ld [hl], $00
    pop hl

jr_0fc_4259:
    inc hl
    inc bc
    ld a, [bc]
    sub [hl]
    inc hl
    inc bc
    ld a, [bc]
    sbc [hl]
    cp $c0
    jr c, jr_0fc_427a

    dec hl
    dec bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    push hl
    ld hl, $0006
    add hl, de
    ld [hl], $00
    ld hl, $0007
    add hl, de
    ld [hl], $00
    pop hl

jr_0fc_427a:
    dec bc
    inc hl
    ld a, [bc]
    sub [hl]
    inc hl
    inc bc
    ld a, [bc]
    sbc [hl]
    cp $40
    jr nc, jr_0fc_429b

    dec hl
    dec bc
    ld a, [hl+]
    ld [bc], a
    inc bc
    ld a, [hl]
    ld [bc], a
    push hl
    ld hl, $0006
    add hl, de
    ld [hl], $00
    ld hl, $0007
    add hl, de
    ld [hl], $00
    pop hl

Jump_0fc_429b:
jr_0fc_429b:
    pop de
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec b
    jp nz, Jump_0fc_41e9

    ret


    ld de, $c320
    ld b, $07

jr_0fc_42af:
    push bc
    push de
    ld hl, $0000
    add hl, de
    ld a, [hl]
    and $40
    jr z, jr_0fc_42c8

    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $98
    jp z, Jump_0fc_43c5

    cp $e0
    jr nc, jr_0fc_42ea

Jump_0fc_42c8:
jr_0fc_42c8:
    pop de
    pop bc
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_0fc_42af

    ret


    nop
    jr nz, @+$12

    db $10
    jr nc, jr_0fc_42dc

jr_0fc_42dc:
    ld b, b
    ld d, b
    ld d, b
    ld h, b
    ld [hl], b
    ld [hl], b
    add b
    sub b
    and b
    or b
    ret nz

    ret nc

    ldh [$f0], a

jr_0fc_42ea:
    ld hl, $000b
    add hl, de
    ld a, [hl]
    sub $e0
    ld c, a
    ld b, $00
    ld hl, $42d6
    add hl, bc
    ld a, [hl+]
    ld hl, $0007
    add hl, de
    ld [hl], a
    ld hl, $0006
    add hl, de
    ld [hl], $00
    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $e2
    jr z, jr_0fc_4325

    cp $e4
    jr z, jr_0fc_4338

    cp $e6
    jr z, jr_0fc_434b

    cp $e9
    jr z, jr_0fc_435d

    cp $f1
    jr z, jr_0fc_4370

    cp $f2
    jp z, Jump_0fc_43b2

    jp Jump_0fc_42c8


jr_0fc_4325:
    ld a, [$c11f]
    cp $05
    jp z, Jump_0fc_42c8

    ld hl, $0007
    add hl, de
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_0fc_42c8


jr_0fc_4338:
    ld a, [$c451]
    or a
    jp z, Jump_0fc_42c8

    ld hl, $0013
    add hl, de
    ld [hl], $17
    inc hl
    ld [hl], $ff
    jp Jump_0fc_42c8


jr_0fc_434b:
    ld a, [$c11f]
    or a
    jp z, Jump_0fc_42c8

    ld hl, $0007
    add hl, de
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_0fc_42c8


jr_0fc_435d:
    ld a, [$c11f]
    cp $01
    jp z, Jump_0fc_42c8

    ld hl, $0007
    add hl, de
    ld a, [hl]
    add $08
    ld [hl], a
    jp Jump_0fc_42c8


jr_0fc_4370:
    ld a, [$c4de]
    or a
    jr nz, jr_0fc_439d

    ld hl, $0014
    add hl, de
    ld a, [hl-]
    or a
    jp nz, Jump_0fc_42c8

    ld a, [hl]
    cp $88
    jp c, Jump_0fc_42c8

    ld hl, $001a
    add hl, de
    ld [hl], $ff
    dec hl
    dec [hl]
    ld a, [hl]
    cp $ec
    jp nc, Jump_0fc_42c8

    ld [hl], $ec
    ld a, $ff
    ld [$c4de], a
    jp Jump_0fc_42c8


jr_0fc_439d:
    ld hl, $0013
    add hl, de
    ld [hl], $88
    inc hl
    ld [hl], $00
    ld hl, $0019
    add hl, de
    ld [hl], $ec
    inc hl
    ld [hl], $ff
    jp Jump_0fc_42c8


Jump_0fc_43b2:
    ld a, [$c451]
    or a
    jp z, Jump_0fc_42c8

    ld hl, $0013
    add hl, de
    ld [hl], $17
    inc hl
    ld [hl], $ff
    jp Jump_0fc_42c8


Jump_0fc_43c5:
    ld a, [$c105]
    or a
    jp nz, Jump_0fc_42c8

    ld hl, $000f
    add hl, de
    ld a, [hl]
    call Call_0fc_44c9
    or a
    jp z, Jump_0fc_42c8

    ld hl, $0006
    add hl, de
    ld a, [hl]
    cp $02
    jp z, Jump_0fc_42c8

    ld hl, $001c
    add hl, de
    ld a, [hl]
    or a
    jp nz, Jump_0fc_444f

    ld hl, $0006
    add hl, de
    ld a, [hl]
    cp $03
    jp z, Jump_0fc_442c

    ld hl, $0006
    add hl, de
    ld [hl], $01
    ld hl, $0007
    add hl, de
    ld a, [hl]
    add $02
    and $3f
    ld [hl], a
    ld hl, $0009
    add hl, de
    ld a, [hl]
    and $1c
    ld c, a
    ld b, $00
    ld hl, $4489
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $0011
    add hl, de
    ld a, [bc]
    add [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    add [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl+], a
    inc bc
    jp Jump_0fc_42c8


Jump_0fc_442c:
    ld a, [$c31b]
    cp $08
    jp nc, Jump_0fc_42c8

    ld a, [$c100]
    and $03
    jp z, Jump_0fc_42c8

    ld hl, $001c
    add hl, de
    ld a, [hl]
    or a
    jp nz, Jump_0fc_42c8

    ld [hl], $0c
    ld a, $12
    call Call_000_026b
    jp Jump_0fc_42c8


Jump_0fc_444f:
    ld hl, $001c
    add hl, de
    dec [hl]
    ld hl, $0006
    add hl, de
    ld [hl], $01
    ld hl, $0007
    add hl, de
    ld [hl], $00
    ld hl, $0009
    add hl, de
    ld a, [hl]
    add $10
    and $1c
    ld c, a
    ld b, $00
    ld hl, $44a9
    add hl, bc
    ld c, l
    ld b, h
    ld hl, $0011
    add hl, de
    ld a, [bc]
    add [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    add [hl]
    ld [hl+], a
    inc bc
    ld a, [bc]
    adc [hl]
    ld [hl+], a
    inc bc
    jp Jump_0fc_42c8


    nop
    nop
    inc b
    nop
    inc bc
    nop
    inc bc
    nop
    inc b
    nop
    nop
    nop
    inc bc
    nop
    db $fd
    rst $38
    nop
    nop
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    nop
    nop
    db $fd
    rst $38
    inc bc
    nop
    nop
    nop
    ld [$0600], sp
    nop
    ld b, $00
    ld [$0000], sp
    nop
    ld b, $00
    ld a, [$00ff]
    nop
    ld hl, sp-$01
    ld a, [$faff]
    rst $38
    ld hl, sp-$01
    nop
    nop
    ld a, [$06ff]
    nop

Call_0fc_44c9:
    cp $04
    jr z, jr_0fc_44d0

    ld a, $ff
    ret


jr_0fc_44d0:
    ld a, [$c480]
    or a
    jr z, jr_0fc_44d9

    ld a, $ff
    ret


jr_0fc_44d9:
    xor a
    ret


    xor a
    ld [$c17e], a
    ld a, [$c311]
    ld e, a
    ld a, [$c312]
    ld d, a
    call Call_0fc_4982
    ld a, e
    ld [$c315], a
    ld a, d
    ld [$c316], a
    ld a, [$c313]
    ld e, a
    ld a, [$c314]
    ld d, a
    call Call_0fc_4982
    ld a, e
    ld [$c317], a
    ld a, d
    ld [$c318], a
    ld a, [$c31b]
    or a
    jr z, jr_0fc_4512

    dec a
    ld [$c31b], a
    cp $08
    ret nc

jr_0fc_4512:
    ld a, [$c30a]
    or a
    jr z, jr_0fc_451c

    dec a
    ld [$c30a], a

jr_0fc_451c:
    ld a, [$c30c]
    or a
    jr z, jr_0fc_452f

    and $7f
    add $02
    cp $0c
    jr c, jr_0fc_452d

    xor a
    jr jr_0fc_452f

jr_0fc_452d:
    or $80

jr_0fc_452f:
    ld [$c30c], a
    ld a, [$c30d]
    or a
    jr z, jr_0fc_4544

    and $7f
    inc a
    cp $0c
    jr c, jr_0fc_4542

    xor a
    jr jr_0fc_4544

jr_0fc_4542:
    or $80

jr_0fc_4544:
    ld [$c30d], a
    ld a, [$c306]
    cp $00
    jp z, Jump_0fc_459d

    cp $01
    jp z, Jump_0fc_4794

    cp $02
    jp z, Jump_0fc_47cf

    cp $03
    jp z, Jump_0fc_46a9

    cp $04
    jp z, Jump_0fc_4657

    cp $05
    jp z, Jump_0fc_46fb

    cp $07
    jp z, Jump_0fc_4577

    ld a, $00
    ld [$c306], a
    xor a
    ld [$c307], a
    ret


Jump_0fc_4577:
    ld a, [$c307]
    inc a
    cp $10
    jr nc, jr_0fc_4583

    ld [$c307], a
    ret


jr_0fc_4583:
    ld [$c307], a
    cp $10
    jr nz, jr_0fc_4590

    ld a, $01
    ld [$c17e], a
    ret


jr_0fc_4590:
    cp $20
    ret c

    ld a, $00
    ld [$c306], a
    xor a
    ld [$c307], a
    ret


Jump_0fc_459d:
    ld a, [$c100]
    and $02
    jr nz, jr_0fc_45fa

    xor a
    ld [$c1fb], a

Jump_0fc_45a8:
    ld a, [$c100]
    and $20
    call nz, Call_0fc_45df
    ld a, [$c100]
    and $10
    call nz, Call_0fc_45e0
    ld a, [$c100]
    and $40
    call nz, Call_0fc_45e1
    ld a, [$c100]
    and $80
    call nz, Call_0fc_45ed
    call Call_0fc_4808
    call Call_0fc_483e
    ld a, [$c100]
    and $f2
    ret nz

    ld a, [$c307]
    cp $1f
    ret z

    inc a
    ld [$c307], a
    ret


Call_0fc_45df:
    ret


Call_0fc_45e0:
    ret


Call_0fc_45e1:
    ld a, $01
    ld [$c306], a
    xor a
    ld [$c307], a
    jp Jump_0fc_4874


Call_0fc_45ed:
    ld a, $01
    ld [$c306], a
    ld a, $3f
    ld [$c307], a
    jp Jump_0fc_48fb


jr_0fc_45fa:
    ld a, [$c1fb]
    or a
    jp nz, Jump_0fc_45a8

    ld a, [$c1ef]
    cp $1f
    jr z, jr_0fc_462f

    cp $37
    jr z, jr_0fc_4611

    cp $19
    jr z, jr_0fc_464d

    ret


jr_0fc_4611:
    ld a, $04
    ld [$c306], a
    ld c, $00
    ld a, [$c100]
    and $40
    jr nz, jr_0fc_462a

    ld c, $10
    ld a, [$c100]
    and $80
    jr nz, jr_0fc_462a

    ld c, $08

jr_0fc_462a:
    ld a, c
    ld [$c307], a
    ret


jr_0fc_462f:
    ld a, $03
    ld [$c306], a
    ld c, $00
    ld a, [$c100]
    and $40
    jr nz, jr_0fc_4648

    ld c, $10
    ld a, [$c100]
    and $80
    jr nz, jr_0fc_4648

    ld c, $08

jr_0fc_4648:
    ld a, c
    ld [$c307], a
    ret


jr_0fc_464d:
    ld a, $05
    ld [$c306], a
    xor a
    ld [$c307], a
    ret


Jump_0fc_4657:
    ld a, [$c100]
    and $02
    jr z, jr_0fc_469f

    ld c, $00
    ld a, [$c100]
    and $40
    jr nz, jr_0fc_4672

    ld c, $10
    ld a, [$c100]
    and $80
    jr nz, jr_0fc_4672

    ld c, $08

jr_0fc_4672:
    ld a, c
    ld [$c307], a
    call Call_0fc_4808
    call Call_0fc_483e
    ld a, [$c100]
    and $01
    ret z

    ld a, [$c30a]
    or a
    ret nz

    ld a, $08
    ld [$c30a], a
    ld a, $82
    ld [$c30c], a
    ld a, $10
    call Call_000_026b
    ld a, [$c307]
    or a
    ret z

    call Call_0fc_49b0
    ret


jr_0fc_469f:
    ld a, $00
    ld [$c306], a
    xor a
    ld [$c307], a
    ret


Jump_0fc_46a9:
    ld a, [$c100]
    and $02
    jr z, jr_0fc_46f1

    ld c, $00
    ld a, [$c100]
    and $40
    jr nz, jr_0fc_46c4

    ld c, $10
    ld a, [$c100]
    and $80
    jr nz, jr_0fc_46c4

    ld c, $08

jr_0fc_46c4:
    ld a, c
    ld [$c307], a
    call Call_0fc_4808
    call Call_0fc_483e
    ld a, [$c100]
    and $01
    ret z

    ld a, [$c30a]
    or a
    ret nz

    ld a, $08
    ld [$c30a], a
    ld a, $82
    ld [$c30c], a
    ld a, $0f
    call Call_000_026b
    ld a, [$c307]
    or a
    ret z

    call Call_0fc_49b0
    ret


jr_0fc_46f1:
    ld a, $00
    ld [$c306], a
    xor a
    ld [$c307], a
    ret


Jump_0fc_46fb:
    ld a, [$c100]
    and $02
    jp z, Jump_0fc_4785

    ld a, [$c307]
    cp $10
    jr c, jr_0fc_4716

    cp $18
    jr c, jr_0fc_471e

    cp $20
    jr c, jr_0fc_472c

    cp $28
    jr c, jr_0fc_473a

jr_0fc_4716:
    inc a
    and $0f
    ld [$c307], a
    jr jr_0fc_4748

jr_0fc_471e:
    inc a
    ld [$c307], a
    cp $18
    jr c, jr_0fc_4748

    xor a
    ld [$c307], a
    jr jr_0fc_4748

jr_0fc_472c:
    inc a
    ld [$c307], a
    cp $20
    jr c, jr_0fc_4748

    xor a
    ld [$c307], a
    jr jr_0fc_4748

jr_0fc_473a:
    inc a
    ld [$c307], a
    cp $28
    jr c, jr_0fc_4748

    xor a
    ld [$c307], a
    jr jr_0fc_4748

jr_0fc_4748:
    call Call_0fc_4808
    call Call_0fc_483e
    ld a, [$c307]
    cp $10
    ret nc

    ld a, [$c100]
    and $01
    jr z, jr_0fc_478f

    ld a, [$c1af]
    or a
    ret nz

    ld a, $ff
    ld [$c1af], a
    ld a, [$c100]
    and $40
    jr nz, jr_0fc_4779

    ld a, [$c100]
    and $80
    jr nz, jr_0fc_477f

    ld a, $20
    ld [$c307], a
    ret


jr_0fc_4779:
    ld a, $10
    ld [$c307], a
    ret


jr_0fc_477f:
    ld a, $18
    ld [$c307], a
    ret


Jump_0fc_4785:
    ld a, $00
    ld [$c306], a
    xor a
    ld [$c307], a
    ret


jr_0fc_478f:
    xor a
    ld [$c1af], a
    ret


Jump_0fc_4794:
    ld a, [$c100]
    and $02
    jr nz, jr_0fc_47ac

    ld a, [$c100]
    and $f0
    jr nz, jr_0fc_47b8

    ld a, $00
    ld [$c306], a
    xor a
    ld [$c307], a
    ret


jr_0fc_47ac:
    ld a, [$c100]
    and $80
    jr nz, jr_0fc_47b8

    ld a, $02
    ld [$c306], a

jr_0fc_47b8:
    ld a, [$c100]
    and $40
    call nz, Call_0fc_4874
    ld a, [$c100]
    and $80
    call nz, Call_0fc_48fb
    call Call_0fc_4808
    call Call_0fc_483e
    ret


Jump_0fc_47cf:
    ld a, [$c100]
    and $02
    jr z, jr_0fc_47ec

    ld a, [$c100]
    and $f0
    jr nz, jr_0fc_47f1

    ld a, $00
    ld [$c306], a
    xor a
    ld [$c307], a
    ld a, $ff
    ld [$c1fb], a
    ret


jr_0fc_47ec:
    ld a, $01
    ld [$c306], a

jr_0fc_47f1:
    ld a, [$c100]
    and $40
    call nz, Call_0fc_4874
    ld a, [$c100]
    and $80
    call nz, Call_0fc_48fb
    call Call_0fc_4808
    call Call_0fc_483e
    ret


Call_0fc_4808:
    ld hl, $c16b
    ld a, [$c100]
    and $20
    jp z, Jump_0fc_483a

    ld a, [hl]
    or a
    jr z, jr_0fc_481f

    dec [hl]
    ld a, [hl]
    or a
    ret nz

    ld [hl], $06
    jr jr_0fc_4821

jr_0fc_481f:
    ld [hl], $0a

jr_0fc_4821:
    ld a, [$c309]
    add $04
    and $1f
    ld [$c309], a
    ld a, [$c306]
    cp $01
    jr z, jr_0fc_483d

    cp $00
    ret nz

    xor a
    ld [$c307], a
    ret


Jump_0fc_483a:
    ld [hl], $00
    ret


jr_0fc_483d:
    ret


Call_0fc_483e:
    ld hl, $c16c
    ld a, [$c100]
    and $10
    jp z, Jump_0fc_4870

    ld a, [hl]
    or a
    jr z, jr_0fc_4855

    dec [hl]
    ld a, [hl]
    or a
    ret nz

    ld [hl], $06
    jr jr_0fc_4857

jr_0fc_4855:
    ld [hl], $0a

jr_0fc_4857:
    ld a, [$c309]
    sub $04
    and $1f
    ld [$c309], a
    ld a, [$c306]
    cp $01
    jr z, jr_0fc_4873

    cp $00
    ret nz

    xor a
    ld [$c307], a
    ret


Jump_0fc_4870:
    ld [hl], $00
    ret


jr_0fc_4873:
    ret


Call_0fc_4874:
Jump_0fc_4874:
    ld a, [$c307]
    add $04
    and $3f
    ld [$c307], a
    ld bc, $0000
    ld de, $000e
    ld a, [$c309]
    cp $04
    jr c, jr_0fc_48cd

    ld bc, $000c
    ld de, $000c
    cp $08
    jr c, jr_0fc_48cd

    ld bc, $000e
    ld de, $0000
    cp $0c
    jr c, jr_0fc_48cd

    ld bc, $000c
    ld de, $fff4
    cp $10
    jr c, jr_0fc_48cd

    ld bc, $0000
    ld de, $fff2
    cp $14
    jr c, jr_0fc_48cd

    ld bc, $fff4
    ld de, $fff4
    cp $18
    jr c, jr_0fc_48cd

    ld bc, $fff2
    ld de, $0000
    cp $1c
    jr c, jr_0fc_48cd

    ld bc, $fff4
    ld de, $000c

jr_0fc_48cd:
    call Call_0fc_4971
    ld a, [$c311]
    add c
    ld [$c311], a
    ld a, [$c312]
    adc b
    ld [$c312], a
    ld a, [$c313]
    add e
    ld [$c313], a
    ld a, [$c314]
    adc d
    ld [$c314], a
    ld a, [$c307]
    and $1f
    cp $03
    jr c, jr_0fc_48f6

    ret


jr_0fc_48f6:
    ld a, $0c
    jp Jump_000_026b


Call_0fc_48fb:
Jump_0fc_48fb:
    ld a, [$c307]
    sub $03
    and $3f
    ld [$c307], a
    ld bc, $0000
    ld de, $fff9
    ld a, [$c309]
    cp $04
    jr c, jr_0fc_4954

    ld bc, $fffa
    ld de, $fffa
    cp $08
    jr c, jr_0fc_4954

    ld bc, $fff9
    ld de, $0000
    cp $0c
    jr c, jr_0fc_4954

    ld bc, $fffa
    ld de, $0006
    cp $10
    jr c, jr_0fc_4954

    ld bc, $0000
    ld de, $0007
    cp $14
    jr c, jr_0fc_4954

    ld bc, $0006
    ld de, $0006
    cp $18
    jr c, jr_0fc_4954

    ld bc, $0007
    ld de, $0000
    cp $1c
    jr c, jr_0fc_4954

    ld bc, $0006
    ld de, $fffa

jr_0fc_4954:
    ld a, [$c311]
    add c
    ld [$c311], a
    ld a, [$c312]
    adc b
    ld [$c312], a
    ld a, [$c313]
    add e
    ld [$c313], a
    ld a, [$c314]
    adc d
    ld [$c314], a
    ret


Call_0fc_4971:
    ld a, [$c306]
    cp $02
    ret nz

    push bc
    pop hl
    add hl, bc
    ld c, l
    ld b, h
    push de
    pop hl
    add hl, de
    ld e, l
    ld d, h
    ret


Call_0fc_4982:
    ld a, d
    cp $80
    jr c, jr_0fc_499a

    call Call_0fc_49a7
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    call Call_0fc_49a7
    ret


jr_0fc_499a:
    srl d
    rr e
    srl d
    rr e
    srl d
    rr e
    ret


Call_0fc_49a7:
    ld a, $00
    sub e
    ld e, a
    ld a, $00
    sbc d
    ld d, a
    ret


Call_0fc_49b0:
    ld de, $c320
    ld b, $07

jr_0fc_49b5:
    push bc
    push de
    ld hl, $0000
    add hl, de
    ld a, [hl]
    and $40
    jr z, jr_0fc_49d6

    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $98
    jr z, jr_0fc_49cb

    jr jr_0fc_49d6

jr_0fc_49cb:
    ld hl, $000e
    add hl, de
    ld a, [hl]
    or a
    jr z, jr_0fc_49d6

    call Call_0fc_49e4

jr_0fc_49d6:
    pop de
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    pop bc
    dec b
    jr nz, jr_0fc_49b5

    ret


Call_0fc_49e4:
    ld a, [$c309]
    cp $0c
    jp z, Jump_0fc_4ab2

    cp $10
    jp z, Jump_0fc_4b64

    cp $14
    jp z, Jump_0fc_4a10

    cp $18
    jp z, Jump_0fc_4ba4

    cp $1c
    jp z, Jump_0fc_4a5d

    or a
    jp z, Jump_0fc_4be3

    cp $04
    jp z, Jump_0fc_4b07

    cp $08
    jp z, Jump_0fc_4c22

    xor a
    ret


Jump_0fc_4a10:
    ld hl, $0011
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c311]
    sub c
    ld c, a
    ld a, [$c312]
    sbc b
    ld b, a
    cp $02
    jp nc, Jump_0fc_4ca8

    ld hl, $0013
    add hl, de
    ld a, [hl]
    inc hl
    ld h, [hl]
    ld l, a
    ld a, [$c313]
    sub l
    ld l, a
    ld a, [$c314]
    sbc h
    ld h, a
    cp $02
    jp nc, Jump_0fc_4ca8

    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    or a
    jr z, jr_0fc_4a54

    cp $ff
    jp nz, Jump_0fc_4ca8

    ld a, c
    cp $c0
    jp c, Jump_0fc_4ca8

    jp Jump_0fc_4c61


jr_0fc_4a54:
    ld a, c
    cp $40
    jp nc, Jump_0fc_4ca8

    jp Jump_0fc_4c61


Jump_0fc_4a5d:
    ld hl, $0011
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c311]
    sub c
    ld c, a
    ld a, [$c312]
    sbc b
    ld b, a
    cp $02
    jp nc, Jump_0fc_4ca8

    ld hl, $0013
    add hl, de
    ld a, [hl]
    inc hl
    ld h, [hl]
    ld l, a
    ld a, [$c313]
    sub l
    ld l, a
    ld a, [$c314]
    sbc h
    ld h, a
    cp $fe
    jp c, Jump_0fc_4ca8

    ld a, $00
    sub l
    ld l, a
    ld a, $00
    sbc h
    ld h, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    or a
    jr z, jr_0fc_4aa9

    cp $ff
    jp nz, Jump_0fc_4ca8

    ld a, c
    cp $c0
    jp c, Jump_0fc_4ca8

    jp Jump_0fc_4c61


jr_0fc_4aa9:
    ld a, c
    cp $40
    jp nc, Jump_0fc_4ca8

    jp Jump_0fc_4c61


Jump_0fc_4ab2:
    ld hl, $0011
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c311]
    sub c
    ld c, a
    ld a, [$c312]
    sbc b
    ld b, a
    cp $fe
    jp c, Jump_0fc_4ca8

    ld a, $00
    sub c
    ld c, a
    ld a, $00
    sbc b
    ld b, a
    ld hl, $0013
    add hl, de
    ld a, [hl]
    inc hl
    ld h, [hl]
    ld l, a
    ld a, [$c313]
    sub l
    ld l, a
    ld a, [$c314]
    sbc h
    ld h, a
    cp $02
    jp nc, Jump_0fc_4ca8

    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    or a
    jr z, jr_0fc_4afe

    cp $ff
    jp nz, Jump_0fc_4ca8

    ld a, c
    cp $c0
    jp c, Jump_0fc_4ca8

    jp Jump_0fc_4c61


jr_0fc_4afe:
    ld a, c
    cp $40
    jp nc, Jump_0fc_4ca8

    jp Jump_0fc_4c61


Jump_0fc_4b07:
    ld hl, $0011
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c311]
    sub c
    ld c, a
    ld a, [$c312]
    sbc b
    ld b, a
    cp $fe
    jp c, Jump_0fc_4ca8

    ld a, $00
    sub c
    ld c, a
    ld a, $00
    sbc b
    ld b, a
    ld hl, $0013
    add hl, de
    ld a, [hl]
    inc hl
    ld h, [hl]
    ld l, a
    ld a, [$c313]
    sub l
    ld l, a
    ld a, [$c314]
    sbc h
    ld h, a
    cp $fe
    jp c, Jump_0fc_4ca8

    ld a, $00
    sub l
    ld l, a
    ld a, $00
    sbc h
    ld h, a
    ld a, l
    sub c
    ld c, a
    ld a, h
    sbc b
    ld b, a
    or a
    jr z, jr_0fc_4b5b

    cp $ff
    jp nz, Jump_0fc_4ca8

    ld a, c
    cp $c0
    jp c, Jump_0fc_4ca8

    jp Jump_0fc_4c61


jr_0fc_4b5b:
    ld a, c
    cp $40
    jp nc, Jump_0fc_4ca8

    jp Jump_0fc_4c61


Jump_0fc_4b64:
    ld hl, $0011
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c311]
    sub c
    ld c, a
    ld a, [$c312]
    sbc b
    ld b, a
    or a
    jr z, jr_0fc_4b85

    cp $ff
    jp nz, Jump_0fc_4ca8

    ld a, c
    cp $a0
    jp c, Jump_0fc_4ca8

    jr jr_0fc_4b8b

jr_0fc_4b85:
    ld a, c
    cp $60
    jp nc, Jump_0fc_4ca8

jr_0fc_4b8b:
    ld hl, $0013
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c313]
    sub c
    ld c, a
    ld a, [$c314]
    sbc b
    ld b, a
    cp $02
    jp nc, Jump_0fc_4ca8

    jp Jump_0fc_4c61


Jump_0fc_4ba4:
    ld hl, $0013
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c313]
    sub c
    ld c, a
    ld a, [$c314]
    sbc b
    ld b, a
    or a
    jr z, jr_0fc_4bc5

    cp $ff
    jp nz, Jump_0fc_4ca8

    ld a, c
    cp $a0
    jp c, Jump_0fc_4ca8

    jr jr_0fc_4bcb

jr_0fc_4bc5:
    ld a, c
    cp $60
    jp nc, Jump_0fc_4ca8

jr_0fc_4bcb:
    ld hl, $0011
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c311]
    sub c
    ld c, a
    ld a, [$c312]
    sbc b
    ld b, a
    cp $02
    jp nc, Jump_0fc_4ca8

    jr jr_0fc_4c61

Jump_0fc_4be3:
    ld hl, $0011
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c311]
    sub c
    ld c, a
    ld a, [$c312]
    sbc b
    ld b, a
    or a
    jr z, jr_0fc_4c04

    cp $ff
    jp nz, Jump_0fc_4ca8

    ld a, c
    cp $a0
    jp c, Jump_0fc_4ca8

    jr jr_0fc_4c0a

jr_0fc_4c04:
    ld a, c
    cp $60
    jp nc, Jump_0fc_4ca8

jr_0fc_4c0a:
    ld hl, $0013
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c313]
    sub c
    ld c, a
    ld a, [$c314]
    sbc b
    ld b, a
    cp $fe
    jp c, Jump_0fc_4ca8

    jr jr_0fc_4c61

Jump_0fc_4c22:
    ld hl, $0013
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c313]
    sub c
    ld c, a
    ld a, [$c314]
    sbc b
    ld b, a
    or a
    jr z, jr_0fc_4c43

    cp $ff
    jp nz, Jump_0fc_4ca8

    ld a, c
    cp $a0
    jp c, Jump_0fc_4ca8

    jr jr_0fc_4c49

jr_0fc_4c43:
    ld a, c
    cp $60
    jp nc, Jump_0fc_4ca8

jr_0fc_4c49:
    ld hl, $0011
    add hl, de
    ld c, [hl]
    inc hl
    ld b, [hl]
    ld a, [$c311]
    sub c
    ld c, a
    ld a, [$c312]
    sbc b
    ld b, a
    cp $fe
    jp c, Jump_0fc_4ca8

    jr jr_0fc_4c61

Jump_0fc_4c61:
jr_0fc_4c61:
    ld c, $0c
    ld a, [$c1ef]
    cp $1f
    jr z, jr_0fc_4c6c

    ld c, $18

jr_0fc_4c6c:
    ld hl, $000e
    add hl, de
    ld a, [hl]
    or a
    jp z, Jump_0fc_4ca8

    ld hl, $000d
    add hl, de
    ld [hl], $80
    ld hl, $000e
    add hl, de
    ld a, [hl]
    sub c
    ld [hl], a
    jp nc, Jump_0fc_4ca8

    ld [hl], $00
    ld hl, $0006
    add hl, de
    ld [hl], $02
    ld hl, $0007
    add hl, de
    ld [hl], $00
    ld hl, $000f
    add hl, de
    ld c, [hl]
    ld b, $00
    ld hl, $c600
    add hl, bc
    ld [hl], $00
    ld a, $13
    call Call_000_026b
    ld a, $ff
    ret


Jump_0fc_4ca8:
    xor a
    ret


    ld hl, $c800
    ld de, $000a
    ld b, $00

jr_0fc_4cb2:
    ld a, [hl]
    or a
    jr z, jr_0fc_4cba

    add hl, de
    inc b
    jr jr_0fc_4cb2

jr_0fc_4cba:
    ld a, b
    cp $02
    ret c

    dec a
    ld b, a
    ld c, a

jr_0fc_4cc1:
    push bc
    ld hl, $c800
    ld de, $c80a

jr_0fc_4cc8:
    ld a, [hl]
    ld a, [de]
    cp [hl]
    jr nc, jr_0fc_4cdc

    push bc
    ld b, $0a

jr_0fc_4cd0:
    ld c, [hl]
    ld a, [de]
    ld [hl+], a
    ld a, c
    ld [de], a
    inc de
    dec b
    jr nz, jr_0fc_4cd0

    pop bc
    jr jr_0fc_4cec

jr_0fc_4cdc:
    ld a, l
    add $0a
    ld l, a
    ld a, h
    adc $00
    ld h, a
    ld a, e
    add $0a
    ld e, a
    ld a, d
    adc $00
    ld d, a

jr_0fc_4cec:
    dec c
    jr nz, jr_0fc_4cc8

    pop bc
    dec b
    jr nz, jr_0fc_4cc1

    ret


    ld c, l
    sbc b
    inc a
    sbc c
    sbc h
    sbc b
    inc bc
    ld bc, $5000
    sbc b
    inc a
    sbc c
    sbc h
    sbc b
    inc bc
    ld bc, $6d01
    sbc b
    inc a
    sbc c
    sbc h
    sbc b
    inc bc
    ld bc, $7002
    sbc b
    inc a
    sbc c
    sbc h
    sbc b
    inc bc
    ld bc, $cd03
    sbc b
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    inc b
    ret nc

    sbc b
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    dec b
    dec c
    sbc c
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    ld b, $10
    sbc c
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    rlca
    ld c, l
    sbc c
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    ld [$9950], sp
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    add hl, bc
    adc l
    sbc c
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    ld a, [bc]
    sub b
    sbc c
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    dec bc
    ld c, l
    sbc b
    inc a
    sbc c
    sbc h
    sbc b
    inc bc
    ld bc, $5000
    sbc b
    inc a
    sbc c
    sbc h
    sbc b
    inc bc
    ld bc, $6d01
    sbc b
    inc a
    sbc c
    sbc h
    sbc b
    inc bc
    ld bc, $7002
    sbc b
    inc a
    sbc c
    sbc h
    sbc b
    inc bc
    ld bc, $0d03
    sbc c
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    inc b
    db $10
    sbc c
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    dec b
    ld c, l
    sbc c
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    ld b, $50
    sbc c
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    rlca
    adc l
    sbc c
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    ld [$9990], sp
    call c, Call_000_1c99
    sbc d
    inc bc
    ld [bc], a
    add hl, bc
    ld e, $00
    ld a, c
    or a
    jr z, jr_0fc_4ddc

    ld e, $04
    ld hl, $4d8c
    ld a, [$c11b]
    or a
    jr z, jr_0fc_4dce

    ld hl, $4d20

jr_0fc_4dce:
    ld bc, $0c0c
    ld a, [$c11b]
    or a
    jr nz, jr_0fc_4dda

    ld bc, $0a0a

jr_0fc_4dda:
    jr jr_0fc_4df4

jr_0fc_4ddc:
    ld hl, $4d68
    ld a, [$c11b]
    or a
    jr z, jr_0fc_4de8

    ld hl, $4cfc

jr_0fc_4de8:
    ld bc, $0c08
    ld a, [$c11b]
    or a
    jr nz, jr_0fc_4df4

    ld bc, $0a06

Jump_0fc_4df4:
jr_0fc_4df4:
    push de
    push bc
    push hl
    ld a, [$c123]
    cp $e0
    jr c, jr_0fc_4e00

    sub $e0

jr_0fc_4e00:
    cp [hl]
    jr nz, jr_0fc_4e40

    dec hl
    ld a, [hl-]
    ld [$c122], a
    ld a, [hl-]
    ld [$c121], a
    ld a, [hl-]
    ld e, [hl]
    ld d, a
    ld a, b
    sub c
    cp $05
    jr nc, jr_0fc_4e38

    or a
    jr z, jr_0fc_4e38

    ld c, a
    ld a, $05
    sub c
    ld c, a
    push hl
    ld hl, $c123
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    jr z, jr_0fc_4e38

    ld a, c
    add a
    add a
    add a
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a

jr_0fc_4e38:
    dec hl
    dec hl
    dec hl
    ld a, [hl-]
    ld l, [hl]
    ld h, a
    jr jr_0fc_4e7b

jr_0fc_4e40:
    dec hl
    ld a, [hl-]
    ld [$c122], a
    ld a, [hl-]
    ld [$c121], a
    dec hl
    dec hl
    ld a, [hl-]
    ld e, [hl]
    ld d, a
    ld a, b
    sub c
    cp $05
    jr nc, jr_0fc_4e77

    or a
    jr z, jr_0fc_4e77

    ld c, a
    ld a, $05
    sub c
    ld c, a
    push hl
    ld hl, $c123
    add l
    ld l, a
    ld a, $00
    adc h
    ld h, a
    ld a, [hl]
    pop hl
    or a
    jr z, jr_0fc_4e77

    ld a, c
    add a
    add a
    add a
    add a
    add a
    add e
    ld e, a
    ld a, $00
    adc d
    ld d, a

jr_0fc_4e77:
    dec hl
    ld a, [hl-]
    ld l, [hl]
    ld h, a

jr_0fc_4e7b:
    ld a, [$c123]
    cp $e0
    jr c, jr_0fc_4e86

    ld a, e
    sub $03
    ld e, a

jr_0fc_4e86:
    call Call_0fc_4e97
    pop hl
    ld de, $0009
    add hl, de
    pop bc
    dec b
    pop de
    ld a, b
    cp e
    jp nz, Jump_0fc_4df4

    ret


Call_0fc_4e97:
    ld a, [$c122]
    ld b, a

jr_0fc_4e9b:
    push de
    push hl
    ld a, [$c121]
    ld c, a

jr_0fc_4ea1:
    call Call_000_328a
    ld a, [de]
    ld [hl+], a
    inc de
    dec c
    jr nz, jr_0fc_4ea1

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
    dec b
    jr nz, jr_0fc_4e9b

    ret

ItemBoxTileset:: ; 0x4ebc:
    INCBIN "gfx/bank0fc_itembox_4ebc.2bpp"

ItemBoxTilemap:: ; 0x56bc
    db $00, $00, $00, $00, $01, $02, $03, $03, $03, $03, $04, $05, $06, $07, $08, $00, $00, $00
    db $00, $00, $00, $00, $09, $0a, $0b, $0c, $0b, $0d, $0e, $0f, $10, $11, $08, $00, $00, $00
    db $00, $00, $00, $00, $09, $12, $13, $14, $15, $16, $17, $0f, $10, $11, $08, $00, $00, $00
    db $00, $00, $00, $00, $09, $12, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $08, $00, $00, $00
    db $00, $00, $00, $00, $09, $20, $21, $22, $23, $24, $25, $26, $27, $28, $08, $00, $00, $00
    db $00, $00, $00, $00, $09, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $11, $08, $00, $00, $00
    db $00, $00, $00, $00, $09, $29, $2b, $31, $32, $2d, $33, $34, $35, $11, $08, $00, $00, $00
    db $00, $00, $00, $00, $09, $29, $31, $36, $2c, $2d, $37, $38, $39, $3a, $08, $00, $00, $00
    db $00, $00, $00, $00, $09, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $08, $00, $00, $00
    db $00, $00, $00, $00, $09, $12, $44, $45, $46, $47, $48, $2a, $2b, $49, $08, $00, $00, $00
    db $00, $00, $00, $00, $09, $12, $4a, $4b, $4c, $16, $48, $2b, $31, $49, $08, $00, $00, $00
    db $00, $00, $00, $00, $09, $4d, $4e, $4f, $4e, $50, $51, $31, $36, $49, $08, $00, $00, $00
    db $00, $00, $00, $00, $52, $53, $54, $55, $56, $56, $57, $58, $59, $5a, $5b, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $5c, $2a, $2b, $2a, $2b, $2a, $2b, $5d, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $5e, $2b, $31, $2b, $31, $2b, $31, $5f, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $5e, $31, $36, $31, $36, $31, $36, $5f, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $5e, $2a, $2b, $2a, $2b, $2a, $2b, $5f, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $5e, $2b, $31, $2b, $31, $2b, $31, $5f, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $60, $31, $36, $31, $36, $31, $36, $61, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $62, $63, $63, $63, $63, $63, $63, $64, $00, $00, $00
    db $2f, $65, $66, $67, $2f, $68, $66, $69, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $66, $6a, $34, $6b, $66, $6c, $34, $6d, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $2f, $65, $66, $67, $2f, $68, $66, $69, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $34, $6b, $66, $6a, $34, $6d, $66, $6c, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $2f, $6e, $66, $6f, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $66, $70, $34, $71, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2a, $2b, $72, $73
    db $2f, $6e, $66, $6f, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2b, $31, $2b, $31
    db $34, $71, $66, $70, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $31, $36, $74, $75
    db $2f, $76, $66, $77, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2a, $2b, $78, $79
    db $66, $7a, $34, $7b, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $2b, $31, $7c, $7d
    db $2f, $76, $66, $77, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $31, $36, $7e, $7f
    db $34, $7b, $66, $7a, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00

ItemBoxPaletteIndex:: ; 0x590e
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $02, $02, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $02, $02, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03, $03, $03, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $03, $03, $03, $03
    db $02, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    
ItemBoxPaletteBGP:: ; 0x5b60
    db $ff, $7f, $ef, $7f, $44, $4a, $1f, $00
    db $ff, $7f, $94, $52, $4a, $29, $00, $00
    db $00, $00, $e0, $03, $00, $02, $e0, $00
    db $00, $74, $00, $50, $00, $30, $1f, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00

ItemBoxPaletteOBP:: ; 0x5ba0
    db $00, $00, $de, $7b, $94, $52, $4a, $29
    db $00, $00, $1e, $00, $14, $00, $0a, $00
    db $00, $00, $c0, $03, $80, $02, $40, $01
    db $00, $00, $c0, $7b, $80, $52, $40, $29
    db $00, $00, $de, $03, $94, $02, $4a, $01
    db $00, $00, $fe, $01, $54, $01, $aa, $00
    db $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $da, $4a, $6f, $1d, $63, $0c

    ds $2420, $00