SECTION "ROM Bank $00e", ROMX[$4000], BANK[$e]

    dec de
    ld b, d
    call Call_000_1c42
    ld b, e
    ld l, l
    ld b, e
    db $ed
    ld b, e
    ld e, $44
    ld d, c
    ld b, h
    adc b
    ld b, h
    ld [de], a
    ld b, l
    ld [hl], h
    ld b, l
    or c
    ld b, l
    ld [de], a
    ld b, [hl]
    and e
    ld b, [hl]
    bit 0, [hl]
    ld l, e
    ld b, a
    db $dd
    ld b, a
    ld l, c
    ld c, b
    and e
    ld c, b
    sbc c
    ld c, c
    db $e3
    ld c, d
    ld h, l
    ld c, e
    cp l
    ld c, e
    call c, Call_000_1b4b
    ld c, h
    ld d, b
    ld c, h
    ld a, b
    ld c, h
    sbc [hl]
    ld c, h
    rra
    ld c, l
    ld h, l
    ld c, l
    ld h, l
    ld c, l
    ld a, c
    ld c, [hl]
    xor a
    ld c, [hl]
    pop af
    ld c, [hl]
    sub d
    ld c, a
    nop
    nop
    jr @+$53

    xor l
    ld d, c
    ld [hl-], a
    ld d, d
    sub l
    ld d, d
    inc [hl]
    ld d, e
    or a
    ld d, e
    ld [hl], $54
    ld [hl], b
    ld d, h
    xor l
    ld d, h
    reti


    ld d, h
    ld [hl+], a
    ld d, l
    or h
    ld d, l
    ld a, $56
    ld h, e
    ld d, [hl]
    inc e
    ld d, a
    xor e
    ld d, a
    pop af
    ld d, a
    adc h
    ld e, b
    adc $58
    cp [hl]
    ld e, c
    cpl
    ld e, e
    db $ec
    ld e, e
    inc [hl]
    ld e, h
    or h
    ld e, h
    ld b, h
    ld e, l
    adc h
    ld e, l
    cp a
    ld e, l
    jp hl


    ld e, l
    inc e
    ld e, [hl]
    ld d, h
    ld e, [hl]
    ld h, c
    ld e, [hl]
    add [hl]
    ld e, [hl]
    xor e
    ld e, [hl]
    ret nc

    ld e, [hl]
    push af
    ld e, [hl]
    ld a, [de]
    ld e, a
    ccf
    ld e, a
    ld h, h
    ld e, a
    adc c
    ld e, a
    sub b
    ld e, a
    xor e
    ld e, a
    add $5f
    xor a
    ld [$c1c6], a
    ld hl, $4000
    ld a, [$c11b]
    or a
    jr z, jr_00e_40aa

    ld hl, $403a

jr_00e_40aa:
    ld a, [$c1bf]
    cp $80
    jr c, jr_00e_40b6

    ld hl, $4082
    sub $7f

jr_00e_40b6:
    dec a
    add a
    ld e, a
    ld d, $00
    add hl, de
    ld a, [hl+]
    ld h, [hl]
    ld l, a

Jump_00e_40bf:
    ld a, [hl+]
    cp $1d
    jp z, Jump_00e_420f

    cp $3c
    jp z, Jump_00e_4212

    ld de, $420c
    push de
    cp $00
    jp z, Jump_00e_60a4

    cp $01
    jp z, Jump_00e_60d1

    cp $02
    jp z, Jump_00e_60d8

    cp $03
    jp z, Jump_00e_60df

    cp $04
    jp z, Jump_00e_60e6

    cp $32
    jp z, Jump_00e_60bc

    cp $34
    jp z, Jump_00e_60c3

    cp $33
    jp z, Jump_00e_60ca

    cp $05
    jp z, Jump_00e_615b

    cp $06
    jp z, Jump_00e_616b

    cp $07
    jp z, Jump_00e_6176

    cp $08
    jp z, Jump_00e_6195

    cp $09
    jp z, Jump_00e_619a

    cp $0a
    jp z, Jump_00e_619f

    cp $0b
    jp z, Jump_00e_61a4

    cp $35
    jp z, Jump_00e_6186

    cp $38
    jp z, Jump_00e_6190

    cp $0c
    jp z, Jump_00e_61e8

    cp $0d
    jp z, Jump_00e_61ef

    cp $0e
    jp z, Jump_00e_61f6

    cp $0f
    jp z, Jump_00e_61fd

    cp $2e
    jp z, Jump_00e_61e1

    cp $2d
    jp z, Jump_00e_61da

    cp $2f
    jp z, Jump_00e_61be

    cp $3d
    jp z, Jump_00e_61d3

    cp $40
    jp z, Jump_00e_61cc

    cp $41
    jp z, Jump_00e_61c5

    cp $10
    jp z, Jump_00e_6240

    cp $11
    jp z, Jump_00e_6245

    cp $12
    jp z, Jump_00e_624a

    cp $13
    jp z, Jump_00e_624f

    cp $30
    jp z, Jump_00e_6231

    cp $37
    jp z, Jump_00e_623b

    cp $1c
    jp z, Jump_00e_629a

    cp $14
    jp z, Jump_00e_6319

    cp $15
    jp z, Jump_00e_631e

    cp $16
    jp z, Jump_00e_6323

    cp $17
    jp z, Jump_00e_6328

    cp $23
    jp z, Jump_00e_630a

    cp $24
    jp z, Jump_00e_630f

    cp $25
    jp z, Jump_00e_6314

    cp $18
    jp z, Jump_00e_6375

    cp $19
    jp z, Jump_00e_637a

    cp $1a
    jp z, Jump_00e_637f

    cp $1b
    jp z, Jump_00e_6384

    cp $2c
    jp z, Jump_00e_6370

    cp $26
    jp z, Jump_00e_62b1

    cp $27
    jp z, Jump_00e_62b6

    cp $28
    jp z, Jump_00e_62c0

    cp $29
    jp z, Jump_00e_62bb

    cp $2a
    jp z, Jump_00e_62a2

    cp $2b
    jp z, Jump_00e_62a7

    cp $1f
    jp z, Jump_00e_6074

    cp $1e
    jp z, Jump_00e_608c

    cp $20
    jp z, Jump_00e_6163

    cp $21
    jp z, Jump_00e_6142

    cp $36
    jp z, Jump_00e_603b

    cp $22
    jp z, Jump_00e_63cc

    cp $39
    jp z, Jump_00e_6412

    cp $3a
    jp z, Jump_00e_6429

    cp $3b
    jp z, Jump_00e_5fd1

    cp $3e
    jp z, Jump_00e_5fe2

    cp $3f
    jp z, Jump_00e_60b6

    jp Jump_000_016b


    jp Jump_00e_40bf


Jump_00e_420f:
    ld a, $ff
    ret


Jump_00e_4212:
    ld a, [hl+]
    ld [$c1f4], a
    ld a, [hl+]
    ld [$c1c7], a
    ret


    nop
    nop
    nop
    ld bc, $0100
    nop
    db $fd
    jr jr_00e_4225

jr_00e_4225:
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, b
    rst $38
    ret nz

    db $fd
    inc c
    nop
    inc bc
    ld [$0000], sp
    inc bc
    add b
    rst $38
    and b
    db $fc
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    rlca
    ld b, $06
    inc a
    add hl, bc
    inc bc
    db $10
    add hl, bc
    nop
    nop
    ld b, $0f

IntroSceneChrisDialogueTable:: ; 0x4252
    db $0d
    dw $418f
    db $06, $64, $07, $01, $10, $04
    db $0c
    dw $4192
    db $06, $19, $10, $84, $06, $32
    db $0e
    dw $4195
    db $06, $14, $07, $02, $06, $32
    db $0d
    dw $4198
    db $06, $32, $07, $01, $1c, $0f
    db $0d
    dw $419b
    db $10, $04, $06, $1e, $18, $10, $06, $32, $08, $00, $00, $10, $84
    db $0c
    dw $419e
    db $06, $32, $16, $18, $0a, $00, $00
    db $0e
    dw $41a1
    db $06, $1e, $10, $04, $14, $10, $10, $02, $14, $28, $08, $00, $00, $07, $05, $11, $84
    db $0d
    dw $41a4
    db $10, $88, $06, $96, $07, $06
    db $0d
    dw $41a7
    db $06, $64, $07, $05, $10, $08, $14, $1c, $10, $02, $14, $20, $21, $40, $01, $70
    db $fc, $00, $00, $08, $00, $00, $00, $00

bank00e_42c8:
    nop
    nop
    ld bc, $1d00
    nop
    nop
    dec b
    ld bc, $03d0
    ld e, b
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, b
    rst $38

jr_00e_42de:
    ret nz

    db $fd
    inc c
    nop
    nop
    jr jr_00e_42e5

jr_00e_42e5:
    nop
    inc bc
    add b
    rst $38
    and b
    db $fc
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc d
    ld b, [hl]
    rlca
    ld b, $06
    ld [hl-], a
    ld d, $1e
    ld b, $32
    ld c, $aa
    ld b, c
    ld b, $96
    db $10
    ld [$4614], sp
    ld hl, $0140
    ld [hl], b
    db $fc
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld bc, $1d00
    nop
    nop
    dec b
    ld bc, $03d0
    ld e, b
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc d
    jr z, @+$12

    ld [bc], a
    rlca
    ld b, $14
    ld d, b
    ld [$0000], sp
    ld b, $64
    jr jr_00e_4350

    jr jr_00e_434c

    db $10
    ld b, $08
    nop
    nop
    ld b, $1e
    inc c
    xor l
    ld b, c

jr_00e_434c:
    ld b, $78
    db $10
    add [hl]

jr_00e_4350:
    db $10
    add d
    jr jr_00e_4364

    rlca
    ld [bc], a
    jr @+$05

    db $10
    inc b
    ld [$0000], sp
    ld b, $64
    db $10
    adc b
    ld [$1800], sp

jr_00e_4364:
    ld b, $3c
    inc c
    or b
    ld b, c
    ld b, $64
    ld e, $1d
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $ffa0
    add b
    ld bc, $000c
    nop
    nop
    nop
    nop
    inc b
    sbc b
    nop
    ld hl, sp-$01
    jr jr_00e_4382

jr_00e_4382:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc c
    or e
    ld b, c
    ld b, $64
    rlca
    nop
    rla
    jr @+$0d

    nop
    nop
    ld b, $28
    dec bc
    nop
    jr @+$11

    or [hl]
    ld b, c
    ld b, $96
    inc c
    cp c
    ld b, c
    ld b, $96
    rlca
    ld bc, $bc0f
    ld b, c
    ld b, $96
    rrca
    cp a
    ld b, c
    ld b, $96
    rlca
    ld [bc], a
    ld [$1800], sp
    inc c
    jp nz, Jump_000_0641

    sub [hl]
    inc c
    push bc
    ld b, c
    ld b, $96
    rlca
    ld bc, $c80f
    ld b, c
    ld b, $96
    rlca
    ld [bc], a
    inc c
    bit 0, c
    ld b, $96
    rlca
    ld bc, $ce0f
    ld b, c
    dec bc
    nop
    nop
    ld b, $96
    dec bc
    nop
    jr jr_00e_43ee

    pop de
    ld b, c
    ld b, $96
    rrca
    call nc, Call_000_0641
    sub [hl]
    rlca
    nop
    ld b, $96
    dec e
    nop

jr_00e_43ee:
    ld [bc], a
    nop
    ld bc, $0050
    add sp, $00
    ld [$0000], sp
    nop
    nop
    nop
    inc b
    and b
    nop
    add sp, $00
    jr jr_00e_4402

jr_00e_4402:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld [$0000], sp
    dec bc
    nop
    nop
    ld b, $1e
    dec bc
    nop
    jr jr_00e_4428

    rst $10
    ld b, c
    ld b, $96
    dec e
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $ff90
    ld d, b
    ld bc, $0000

jr_00e_4428:
    nop
    nop
    nop
    nop
    inc b
    ld d, b
    nop
    or b
    rst $38
    jr jr_00e_4433

jr_00e_4433:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $64
    rra
    ld b, $64
    db $10
    ld b, $06
    ld e, $07
    ld bc, $da0f
    ld b, c
    dec bc
    nop
    jr jr_00e_4451

    sub [hl]
    rrca
    db $dd
    ld b, c
    ld b, $82

jr_00e_4451:
    nop
    ld [bc], a
    nop
    ld bc, $0050
    add sp, $00
    ld [$0000], sp
    nop
    nop
    nop
    inc b
    and b
    nop
    add sp, $00
    jr jr_00e_4466

jr_00e_4466:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $96
    inc c
    ldh [rSTAT], a
    ld b, $96
    rrca
    db $e3
    ld b, c
    ld b, $96
    dec bc
    nop
    jr jr_00e_448e

    and $41
    db $10
    add h
    ld b, $96
    jr nz, jr_00e_44a5

    dec e
    nop
    rlca
    ld bc, $8801
    rst $38

jr_00e_448e:
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    inc b
    and b
    ld bc, $fdb8
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32

jr_00e_44a5:
    rra
    ld b, $32
    inc e
    inc b
    ld b, $0f
    inc e
    dec b
    rlca
    dec b
    ld b, $96
    rrca
    jp hl


    ld b, c
    ld b, $96
    rla
    jr z, @+$0d

    nop
    nop
    ld b, $96
    inc c
    db $ec
    ld b, c
    ld b, $96
    rlca
    ld bc, $3c17
    inc de
    add h
    rla
    inc a
    dec bc
    nop
    nop
    db $10
    inc b
    ld [$0000], sp
    ld b, $1e
    rrca
    rst $28
    ld b, c
    ld b, $96
    inc c
    ld a, [c]
    ld b, c
    ld b, $96
    rlca
    ld b, $10
    ld [bc], a
    ld [$1800], sp
    ld h, $28
    rla
    jr z, jr_00e_44fe

    add h
    rla
    ld a, [bc]
    dec bc
    nop
    nop
    ld b, $64
    inc c
    push af
    ld b, c
    ld b, $96
    rrca
    ld hl, sp+$41
    ld b, $96
    dec bc

jr_00e_44fe:
    nop
    jr @+$11

    ei
    ld b, c
    ld b, $96
    inc c
    cp $41
    ld b, $96
    rrca
    ld bc, $0742
    ld bc, $9606
    dec e
    nop
    rlca
    nop
    ld bc, $01d0
    cp b
    db $fd
    jr jr_00e_451c

jr_00e_451c:
    nop
    nop
    nop
    nop
    inc b
    ld e, b
    rst $38
    ld [$1800], sp
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc e
    dec b
    rrca
    inc b
    ld b, d
    ld b, $3c
    db $10
    ld [bc], a
    inc d
    jr z, @+$09

    ld bc, $1414
    db $10
    ld [bc], a
    inc d
    jr z, jr_00e_4556

    add h
    ld [$0000], sp
    ld b, $1e
    ld [$1800], sp
    ld b, $96
    rrca
    rlca
    ld b, d
    ld b, $96

jr_00e_4556:
    rlca
    ld b, $06
    inc a
    ld b, $3c
    inc c
    ld a, [bc]
    ld b, d
    ld b, $96
    rlca
    ld bc, $1e06
    jr jr_00e_458f

    ld [$0000], sp
    ld b, $64
    ld b, $96
    rrca
    dec c
    ld b, d
    ld b, $96
    dec e
    nop
    dec l
    ld bc, $5801
    nop
    or b
    cp $00
    nop
    nop
    nop
    nop
    nop
    inc b
    sub b
    nop
    ld d, b
    ld bc, $0010
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b

jr_00e_458f:
    ld b, $32
    rra
    ld b, $32
    inc d
    inc d
    inc d
    ld a, [bc]
    ld [$0000], sp
    ld b, $05
    ld [$1800], sp
    ld b, $05
    ld [$0007], sp
    inc c
    add hl, sp
    ld b, e
    ld b, $96
    inc e
    dec b
    rla
    rla
    ld b, $50
    dec e
    nop
    ld [bc], a
    inc b
    ld bc, $0068
    xor b
    rst $38
    nop
    nop
    rlca
    nop
    nop
    nop
    inc b
    ld [hl], b
    rst $38
    ld d, b
    ld bc, $0010
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $64
    rra
    ld b, $64
    rrca
    inc b
    ld b, d
    ld b, $96
    ld [$0000], sp
    inc c
    db $10
    ld b, d
    ld b, $96
    rlca
    ld [bc], a
    rrca
    inc de
    ld b, d
    ld b, $96
    rlca
    inc b
    ld [$0000], sp
    inc c
    ld d, $42
    ld b, $96
    rlca
    ld [bc], a
    dec bc
    nop
    jr jr_00e_4604

    add hl, de
    ld b, d
    ld b, $96
    rlca
    inc b
    inc c
    inc e
    ld b, d
    ld b, $96
    rlca
    ld [bc], a
    rrca
    rra

jr_00e_4604:
    ld b, d
    ld b, $96
    rlca
    inc b
    inc c
    ld [hl+], a
    ld b, d
    ld [$0000], sp
    ld b, $96
    dec e
    nop
    ld c, a
    inc bc
    ld bc, $02c8
    db $10
    ld [bc], a
    jr jr_00e_461c

jr_00e_461c:
    nop
    nop
    nop
    nop
    inc bc
    sbc b
    nop
    jr z, jr_00e_4628

    jr jr_00e_4627

jr_00e_4627:
    nop

jr_00e_4628:
    nop
    nop
    nop
    ld [hl+], a
    dec b
    rra
    ld b, $64
    ld [$0000], sp
    inc e
    rrca
    ld b, $14
    db $10
    inc b
    jr jr_00e_4659

    rlca
    ld [bc], a
    ld [$0000], sp
    db $10
    add h
    inc e
    rrca
    ld a, [bc]
    inc bc
    nop
    ld b, $32
    inc e
    rrca
    inc c
    jp nc, Jump_000_0a43

    inc bc
    db $10
    ld a, [bc]
    nop
    nop
    ld b, $78
    rlca
    rlca
    ld [de], a

jr_00e_4659:
    ld [$d50e], sp
    ld b, e
    ld b, $64
    ld [$1800], sp
    inc c
    ret c

    ld b, e
    inc d
    jr z, @+$0a

    nop
    nop
    ld b, $64
    inc c
    db $db
    ld b, e
    ld b, $64
    ld c, $de
    ld b, e
    ld b, $64
    ld a, [bc]
    nop
    jr jr_00e_4686

    pop hl
    ld b, e
    ld b, $64
    rlca
    ld bc, $0a16
    rlca
    ld [bc], a
    ld d, $3f

jr_00e_4686:
    ld [de], a
    ld [$0a06], sp
    ld c, $e4
    ld b, e
    ld b, $50
    ld [$1800], sp
    ld [de], a
    add h
    ld d, $06

jr_00e_4696:
    inc bc
    jr nc, jr_00e_4696

    ret nc

    inc bc
    stop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec e
    nop
    inc de
    ld bc, $8801
    rst $38
    or b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc d
    inc d
    inc c
    ld b, h
    ld b, h
    ld [$0007], sp
    inc c
    scf
    ld b, l
    ld b, $64
    ld [$0000], sp
    ld b, $64
    dec e
    nop
    dec bc
    ld [bc], a
    ld bc, $0210
    jr nc, jr_00e_46d3

jr_00e_46d3:
    jr jr_00e_46d5

jr_00e_46d5:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld [$0000], sp
    inc c
    ld e, [hl]
    ld b, l
    ld b, $64
    db $10
    ld [bc], a
    ld b, $05
    db $10
    add h
    ld b, $05
    db $10
    ld [bc], a
    inc c
    ld a, [hl-]
    ld b, l
    ld b, $64
    dec e
    nop
    ld [HeaderLogo], sp
    ret nz

    cp $00
    inc bc
    ld [$0000], sp
    nop
    nop
    nop
    inc sp
    ld hl, sp+$01
    ld hl, sp+$01
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld hl, sp+$01
    or b
    ld [bc], a
    stop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    jr z, jr_00e_472a

    dec h
    dec b
    jr z, jr_00e_472e

    dec h

jr_00e_472a:
    dec b
    jr z, jr_00e_4732

    dec h

jr_00e_472e:
    dec b
    jr z, jr_00e_4736

    dec h

jr_00e_4732:
    dec b
    jr z, jr_00e_473a

    dec h

jr_00e_4736:
    dec b
    jr z, jr_00e_473e

    dec h

jr_00e_473a:
    dec b
    ld b, $64
    rlca

jr_00e_473e:
    dec b
    jr z, jr_00e_4743

    dec h
    dec b

jr_00e_4743:
    jr z, jr_00e_4747

    dec h
    dec b

jr_00e_4747:
    jr z, jr_00e_474b

    dec h
    dec b

jr_00e_474b:
    jr z, jr_00e_474f

    dec h
    dec b

jr_00e_474f:
    jr c, jr_00e_4754

    nop
    ld b, $28

jr_00e_4754:
    ld [$1003], sp
    ld [$0803], sp
    inc c
    jr nz, jr_00e_47a1

    scf
    add [hl]
    ld b, $14
    dec h
    inc d
    rlca
    inc bc
    scf
    ld [bc], a
    dec h
    ld [hl-], a
    ld b, $64
    nop
    ld [$0105], sp
    ret c

    ld bc, $02c0
    nop
    nop
    inc bc
    ld [$0000], sp
    inc b
    ld c, b
    ld [bc], a
    sub b
    inc bc
    inc d
    nop
    inc bc
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld [$1003], sp
    ld [$0000], sp
    inc c
    dec a
    ld b, l
    ld b, $96
    rrca
    ld b, b
    ld b, l
    ld b, $96
    inc c
    ld b, e
    ld b, l
    ld b, $96
    dec bc

jr_00e_47a1:
    nop
    nop
    dec bc
    nop
    jr jr_00e_47b6

    ld b, [hl]
    ld b, l
    ld b, $96
    ld [$1800], sp
    inc c
    ld c, c
    ld b, l
    ld b, $96
    inc c
    ld c, h
    ld b, l

jr_00e_47b6:
    ld b, $96
    inc c
    ld d, d
    ld b, l
    ld b, $96
    dec bc
    nop
    nop
    rrca
    ld c, a
    ld b, l
    ld b, $96
    inc c
    ld d, l
    ld b, l
    ld b, $96
    rrca
    ld e, b
    ld b, l
    ld b, $96
    inc c
    ld e, e
    ld b, l
    ld b, $96
    db $10
    add h
    rlca
    ld [bc], a
    ld b, $14
    jr nz, jr_00e_47fa

    dec e
    nop
    inc a
    inc bc
    ld bc, $0220
    ret nc

    ld [bc], a
    ld [$0000], sp
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc d
    dec b
    db $10
    inc b
    inc d
    ld a, [bc]
    inc c
    adc d

jr_00e_47fa:
    ld b, e
    inc d
    ld [hl-], a
    db $10
    ld [bc], a
    ld b, $96
    rlca
    dec b
    inc d
    jr z, jr_00e_480e

    nop
    nop
    dec l
    ld b, l
    ld b, e
    ld b, $96
    inc c

jr_00e_480e:
    ld c, b
    ld b, e
    ld b, $96
    dec l
    ld c, e
    ld b, e
    ld b, $96
    inc c
    ld c, [hl]
    ld b, e
    ld b, $96
    rlca
    rlca
    inc e
    rrca
    dec l
    ld d, h
    ld b, e
    ld b, $96
    rlca
    inc b
    db $10
    inc b
    inc c
    ld d, c
    ld b, e
    inc e
    inc c
    ld b, $14
    inc e
    inc c
    ld b, $14
    inc e
    inc c
    ld b, $14
    inc e
    inc c
    ld b, $14
    inc e
    inc c
    ld b, $14
    ld b, $32
    rlca
    inc bc
    inc e
    inc c
    ld b, $14
    inc e
    inc c
    ld b, $14
    inc e
    inc c
    ld b, $14
    inc e
    inc c
    ld b, $14
    inc e
    inc c
    ld b, $14
    inc e
    inc c
    ld b, $14
    ld b, $0a
    rlca
    dec b
    ld [$1800], sp
    inc c
    ld d, a
    ld b, e
    ld b, $96
    dec e
    nop
    ld h, h
    ld [bc], a
    ld bc, $00c0
    ld [$10ff], sp
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec c
    ldh a, [rSCX]
    ld b, $32
    db $10
    ld [$6406], sp
    rlca
    inc bc
    inc c
    di
    ld b, e
    ld b, $96
    dec c
    or $43
    ld b, $96
    inc c
    ld sp, hl
    ld b, e
    ld b, $96
    dec c
    db $fc
    ld b, e
    ld b, $96
    rlca
    ld [bc], a
    ld b, $96
    jr nz, jr_00e_48c0

    nop
    ld h, l
    inc bc
    ld bc, $0390
    ret nc

    nop
    jr jr_00e_48ad

jr_00e_48ad:
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    ld c, b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32

jr_00e_48c0:
    rra
    ld b, $32
    ld b, $64
    rlca
    ld [bc], a
    rrca
    sbc c
    ld b, e
    dec de
    rrca
    inc de
    inc b
    dec de
    ld b, [hl]
    inc de
    add h
    dec de
    ld e, $13
    add h
    ld b, $3c
    rlca
    inc bc
    dec bc
    nop
    nop
    inc c
    ld [$0643], a
    ld h, h
    dec bc
    nop
    jr jr_00e_48f5

    db $ed
    ld b, e
    ld b, $64
    ld [$1800], sp
    inc c
    rst $38
    ld b, e
    ld b, $64
    rrca
    dec a
    ld b, l

jr_00e_48f5:
    dec bc
    nop
    nop
    rrca
    ld c, a
    ld b, l
    db $10
    add h
    inc de
    inc b
    rla
    ld a, [bc]
    ld b, $64
    jr nz, @+$20

    nop
    ld l, e
    nop
    ld bc, $0000
    ret nz

    rst $38
    jr jr_00e_490f

jr_00e_490f:
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    ld b, b
    nop
    jr jr_00e_491a

jr_00e_491a:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    ld b, $96
    nop
    ld l, h
    nop
    ld bc, $02d0
    ld a, b
    rst $38
    jr jr_00e_492e

jr_00e_492e:
    nop
    nop
    nop
    nop
    inc b
    ret nc

    ld [bc], a
    ret z

    cp $18
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    ld b, $32
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    inc d
    dec b
    rla
    dec b
    ld b, $5a
    rlca
    ld bc, $6406
    nop
    ld l, h
    inc bc
    ld bc, $fec8
    nop
    nop
    jr jr_00e_49a3

jr_00e_49a3:
    nop
    nop
    nop
    nop
    inc b
    ret z

    cp $50
    cp $18
    nop
    nop
    nop
    nop
    nop
    inc bc
    and b
    db $fd
    ret nc

    ld bc, $0010
    nop
    jr jr_00e_49bc

jr_00e_49bc:
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc d
    jr z, @+$15

    ld [bc], a
    rla
    inc d
    inc de
    ld [bc], a
    db $10
    inc b
    ld c, $02
    ld b, h
    ld a, [bc]
    inc bc
    db $10
    ld a, [bc]
    inc bc
    ld [$0008], sp
    jr jr_00e_49e1

    sub [hl]
    rlca
    dec b
    inc c
    dec b
    ld b, h

jr_00e_49e1:
    ld b, $96
    rlca
    ld [bc], a
    ld c, $08
    ld b, h
    ld b, $96
    rlca
    dec b
    inc c
    dec bc
    ld b, h
    ld b, $96
    rlca
    inc bc
    ld c, $0e
    ld b, h
    ld b, $96
    rlca
    dec b
    inc c
    ld de, $0644
    sub [hl]
    rlca
    ld [bc], a
    ld c, $14
    ld b, h
    ld b, $96
    rlca
    dec b
    inc c
    rla
    ld b, h
    ld b, $96
    rrca
    ld a, [de]
    ld b, h
    ld b, $96
    rlca
    inc bc
    ld c, $1d
    ld b, h
    inc e
    rrca
    ld b, $96
    rlca
    dec b
    dec bc
    nop
    jr jr_00e_4a34

    ld [bc], a
    rla
    dec bc
    inc de
    ld [bc], a
    dec bc
    inc bc
    nop
    ld [$0000], sp
    inc c
    jr nz, @+$46

    ld b, $96
    inc b
    ret nc

    ld [bc], a

jr_00e_4a34:
    jr nc, jr_00e_4a34

    jr jr_00e_4a38

jr_00e_4a38:
    nop
    nop
    nop
    nop
    rlca
    inc bc
    ld c, $23
    ld b, h
    ld b, $96
    ld c, $26
    ld b, h
    ld b, $96
    ld c, $29
    ld b, h
    jr nz, jr_00e_4a6b

    nop
    ld l, [hl]
    ld [bc], a
    ld bc, $ff28
    sbc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld c, b
    cp $08
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra

jr_00e_4a6b:
    ld b, $32
    rlca
    dec b
    ld b, $96
    rlca
    ld b, $06
    sub [hl]
    rlca
    inc bc
    ld b, $96
    rlca
    dec b
    ld [$1800], sp
    inc c
    inc l
    ld b, h
    ld d, $0a
    ld [de], a
    add d
    ld d, $14
    ld [de], a
    ld [bc], a
    ld d, $14
    ld [de], a
    inc b
    ld b, $96
    ld c, $2f
    ld b, h
    ld a, [bc]
    inc bc
    ld [$9606], sp
    ld c, $32
    ld b, h
    ld b, $96
    ld c, $35
    ld b, h
    ld b, $96
    inc c
    jr c, @+$46

    ld b, $96
    inc c
    dec sp
    ld b, h
    ld b, $96
    ld c, $3e
    ld b, h
    ld a, [bc]
    nop
    nop
    ld [de], a
    ld [$0f16], sp
    ld [de], a
    ld [$9606], sp
    rlca
    ld b, $06
    sub [hl]
    rlca
    ld [bc], a
    ld h, $1e
    ld c, $41
    ld b, h
    add hl, hl
    ld a, [bc]
    ld b, $96
    ld c, $44
    ld b, h
    ld b, $96
    ld c, $47
    ld b, h
    ld [de], a
    inc b
    ld b, $96
    rlca
    rlca
    ld b, $32
    rlca
    dec b
    rlca
    ld [bc], a
    inc c
    ld c, d
    ld b, h
    ld b, $96
    ld e, $1d
    nop
    ld l, h
    ld [bc], a
    ld bc, $fdb0
    ret nc

    ld bc, $0010
    nop
    nop
    nop
    nop
    inc b
    ld h, b
    nop
    ldh a, [$fe]
    jr jr_00e_4af8

jr_00e_4af8:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc d
    ld [hl-], a
    db $10
    add d
    inc d
    jr z, jr_00e_4b1a

    add d
    rlca
    ld bc, $0008
    nop
    dec bc
    nop
    nop
    inc c
    ld c, l
    ld b, h
    ld b, $96
    dec bc
    nop

jr_00e_4b1a:
    jr jr_00e_4b2b

    ld d, b
    ld b, h
    ld b, $96
    ld [$1800], sp
    inc c
    ld d, e
    ld b, h
    ld b, $96
    rrca
    ld d, [hl]
    ld b, h

jr_00e_4b2b:
    ld b, $96
    inc c
    ld e, c
    ld b, h
    jr @+$32

    rlca
    nop
    inc de
    ld [$0618], sp
    dec de
    ld b, $18
    ld b, $1b
    ld b, $18
    ld b, $1b
    ld b, $18
    ld b, $1b
    ld b, $00
    ld l, e
    nop
    ld bc, $0000
    ret nz

    rst $38
    jr jr_00e_4b50

jr_00e_4b50:
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    ld b, b
    nop
    jr jr_00e_4b5b

jr_00e_4b5b:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    ld b, $96
    nop
    ld h, l
    inc bc
    ld bc, $0338
    ret nc

    nop
    stop
    nop
    nop
    nop
    nop
    inc b
    ret nz

    inc bc
    ret nc

    nop
    stop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    ld b, $32
    jr jr_00e_4b9a

    dec bc
    nop
    jr jr_00e_4b99

    ld e, h
    ld b, h
    ld [$0000], sp
    db $10
    ld [$6406], sp
    inc c
    ld e, a
    ld b, h
    ld b, $64
    rrca

jr_00e_4b99:
    ld h, d

jr_00e_4b9a:
    ld b, h
    ld b, $64
    inc c
    ld h, l
    ld b, h
    ld b, $64
    dec bc
    nop
    nop
    rrca
    ld l, b
    ld b, h
    ld b, $64
    inc c
    ld l, e
    ld b, h
    inc de
    ld [bc], a
    dec de
    inc d
    db $10
    add h
    rlca
    ld [bc], a
    inc de
    ld [bc], a
    dec de
    ld h, b
    inc e
    dec b
    ld e, $1d
    nop
    ld e, [hl]
    inc b
    ld bc, $0320
    ld b, b
    inc bc
    inc d
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld [$0000], sp
    cpl
    ld l, [hl]
    ld b, h
    ld b, $c8
    ld e, $1d
    nop
    ld l, l
    nop
    ld bc, $0000
    nop
    ld bc, $0010
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop

jr_00e_4bed:
    jr nz, jr_00e_4bed

    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc c
    ld [hl], c
    ld b, h
    ld b, $64
    dec c
    ld [hl], h
    ld b, h
    add hl, de
    inc h
    ld b, $64
    rlca
    ld [bc], a
    add hl, de
    inc c
    dec c
    ld [hl], a
    ld b, h
    ld b, $64
    rlca
    nop
    inc c
    ld a, d
    ld b, h
    db $10
    ld [$6406], sp
    dec e
    nop
    ld h, c
    inc bc
    ld bc, $02d0
    ret nz

    rst $38
    jr jr_00e_4c25

jr_00e_4c25:
    nop
    nop
    nop
    nop
    ld [bc], a
    ret nc

    ld [bc], a
    ld h, b
    nop
    jr jr_00e_4c30

jr_00e_4c30:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld b, $32
    rlca
    ld [bc], a
    add hl, de
    inc a
    add hl, bc
    nop
    jr jr_00e_4c56

    add [hl]
    dec c
    rst $20
    ld b, e
    ld de, $1906
    ld h, b
    rlca
    inc bc
    dec e
    nop
    ld e, e
    ld bc, $f001
    rst $38

jr_00e_4c56:
    or b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    jr nc, @+$01

    jr nz, jr_00e_4c63

jr_00e_4c63:
    ld [$0000], sp
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld de, $0d02
    and c
    ld b, h
    add hl, de
    ld c, $1d
    nop
    ld e, c
    ld [bc], a
    ld bc, $00c8
    ld d, b
    ld [bc], a
    stop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld a, b
    nop
    db $10
    inc bc
    stop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld b, b
    ld a, l
    ld b, h
    ld b, $64
    dec e
    nop
    ld e, c
    dec b
    ld bc, $fcb8
    jr nc, @-$02

    jr jr_00e_4ca8

jr_00e_4ca8:
    nop
    nop
    nop
    nop
    inc b
    ld a, b
    db $fd
    ret c

    rst $38
    stop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_00e_4cb8:
    sbc b
    db $fd
    jr nc, jr_00e_4cb8

    jr jr_00e_4cbe

jr_00e_4cbe:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc d
    inc d
    rlca
    inc b
    dec de
    scf
    rlca
    dec b
    dec bc
    nop
    nop
    rrca
    add b
    ld b, h
    db $10
    inc b
    inc d
    inc d
    db $10
    inc b
    ld b, $64
    rlca
    ld b, $09
    nop
    jr jr_00e_4cf1

    add e
    ld b, h
    ld b, $64
    rlca
    dec b
    inc de
    ld b, $11
    inc b
    ld b, $0a

jr_00e_4cf1:
    inc de
    add h
    ld b, $64
    rrca
    add [hl]
    ld b, h
    inc de
    add h
    ld b, $64
    dec c
    adc c
    ld b, h
    add hl, bc
    inc bc
    db $10
    add hl, bc
    inc bc
    ld [$6406], sp
    rlca
    ld b, $0c
    sub d
    ld b, h
    ld b, $64
    rlca
    dec b
    dec c
    adc h
    ld b, h
    ld b, $64
    rlca
    ld b, $0c
    adc a
    ld b, h
    db $10
    add [hl]
    ld b, $64
    dec e
    nop
    add hl, sp
    ld bc, $f001
    nop
    jr nz, jr_00e_4d27

jr_00e_4d27:
    jr jr_00e_4d29

jr_00e_4d29:
    rlca
    nop
    nop
    nop
    inc [hl]
    ld hl, sp+$07
    ld hl, sp+$07
    jr jr_00e_4d34

jr_00e_4d34:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld b, $1e
    ld [$0000], sp
    db $10
    ld [$0a06], sp
    db $10
    ld [bc], a
    ld b, $05
    db $10
    add d
    ld b, $14
    rlca
    ld bc, $0207
    ld b, $64
    rlca
    inc bc

jr_00e_4d58:
    ld b, $64
    rlca
    ld bc, $6406
    rlca
    inc b
    ld b, $64
    rlca
    nop
    dec e
    add hl, sp
    nop
    nop
    nop
    ld [hl-], a
    add b
    nop
    ret z

    ei
    nop
    nop
    inc bc
    ld [$0000], sp
    ld [bc], a
    add b
    rst $38
    ret z

    ei
    nop
    nop
    inc bc
    ld [$0000], sp
    inc bc
    nop
    nop
    ret z

    ei
    nop
    nop
    inc bc
    ld [$0000], sp
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld a, [bc]
    inc bc
    db $10
    ld a, [bc]
    nop
    nop
    dec [hl]
    inc bc
    db $10
    dec [hl]
    nop
    nop
    add hl, bc
    inc bc
    db $10
    add hl, bc
    nop
    jr jr_00e_4db5

    add d
    jr nc, jr_00e_4da9

    dec d
    inc d

jr_00e_4da9:
    inc hl
    inc d
    ld b, $0a
    rlca
    ld bc, $0f16
    ld a, [bc]
    nop
    nop
    dec d

jr_00e_4db5:
    db $37, $09, $00, $00, $23, $0f, $35, $00, $00

IntroSceneJillDialogueTable:: ; 0x4dbe
    db $2e
    dw $4225
    db $06, $96, $23, $04, $11, $82, $15, $04
    db $0e
    dw $4228
    db $06, $96, $15, $03, $30, $86, $35, $00, $00, $07, $02, $11, $88, $19, $03, $07, $06, $09, $00, $00
    db $0d
    dw $422b
    db $06, $96, $11, $04, $19, $02
    db $0e
    dw $422e
    db $06, $96
    db $0d
    dw $4231
    db $06, $96, $1c, $0f, $11, $84
    db $2e
    dw $4234
    db $06, $96
    db $0e
    dw $4237
    db $06, $96
    db $0e
    dw $423a
    db $06, $96
    db $2e
    dw $423d
    db $06, $96
    db $0e
    dw $4240
    db $06, $96, $15, $32, $11, $82, $07, $01, $30, $04
    db $0e
    dw $4243
    db $06, $96
    
    db $2c, $05, $2c, $05, $2c, $05, $2c, $05

jr_00e_4e25:
    inc l
    dec b
    inc l
    dec b
    jr nc, jr_00e_4e2d

    inc l
    dec b

jr_00e_4e2d:
    inc l
    dec b
    inc l
    dec b
    inc l
    dec b
    inc l
    dec b
    inc l
    dec b
    inc l
    dec b
    inc l
    dec b
    inc l
    dec b
    inc l
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    ld de, $1902
    dec b
    add hl, de
    dec b
    rlca
    dec b
    add hl, de
    dec b
    ld de, $1982
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    add hl, de
    dec b
    ld b, $96
    ld hl, $0240
    ld [hl], b
    db $fc
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    ld bc, $3bff
    dec e
    add hl, sp
    nop
    ld bc, $0200
    ld [hl], b
    db $fc
    sbc b
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    ld [hl-], a
    ld [hl], b
    db $fc
    ld h, b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc hl
    inc d
    ld l, $46
    ld b, d
    ld b, $96
    jr nc, jr_00e_4e25

    inc hl
    ld e, $30
    ld [bc], a
    inc hl
    inc a
    rlca
    ld bc, $3c23
    dec sp
    dec e
    add hl, sp
    nop
    ld bc, $0202
    ld hl, sp+$01
    nop
    ld bc, $000c
    nop
    jr jr_00e_4ebd

jr_00e_4ebd:
    nop
    ld [hl-], a
    sub b
    inc bc
    add sp, -$01
    inc c

jr_00e_4ec4:
    nop
    dec b
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec d
    ld a, [bc]
    ld l, $49
    ld b, d
    ld b, $96
    dec d
    inc d
    rlca
    inc bc
    dec d
    inc c
    add hl, bc
    nop
    jr @+$0f

    ld c, h
    ld b, d
    ld b, $96
    ld l, $4f
    ld b, d
    ld b, $96

jr_00e_4eea:
    ld l, $52
    ld b, d
    ld b, $96
    dec sp
    dec e
    add hl, sp
    nop
    ld bc, $0202
    ret nz

    ld [bc], a
    ld d, b
    ld bc, $0010
    nop
    jr jr_00e_4eff

jr_00e_4eff:
    nop
    ld [hl-], a
    sub b
    inc bc
    ld h, b
    rst $38
    inc c
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    add hl, de
    ld d, $11
    add d
    add hl, de
    inc b
    rlca
    inc bc
    inc sp
    db $10
    inc bc
    ld d, b
    ld bc, $000c
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld de, $1502
    inc d
    ld de, $0986
    nop
    jr @+$0f

    ld d, l
    ld b, d
    inc e
    inc b
    ld b, $32
    inc e
    dec b
    dec h
    ld a, [bc]
    scf
    ld [bc], a
    jr nc, jr_00e_4ec4

    rlca
    ld [bc], a
    ld l, $58
    ld b, d
    dec h
    rrca
    dec c
    ld e, e
    ld b, d
    dec h
    inc d
    daa
    inc d
    ld b, $46
    ld l, $5e
    ld b, d
    jr nc, jr_00e_4f53

    dec [hl]
    inc bc

jr_00e_4f53:
    db $10
    dec [hl]
    inc bc
    ld [$0f1c], sp
    ld b, $1e
    inc e
    rrca
    ld b, $1e
    inc e
    rrca
    ld b, $1e
    jr c, @+$04

    nop

jr_00e_4f66:
    jr nc, jr_00e_4eea

    dec [hl]
    inc bc
    db $10
    dec [hl]
    nop
    nop
    inc hl
    ld a, [bc]
    dec d
    ld a, [bc]
    jr nc, @-$78

    ld l, $61
    ld b, d
    ld b, $96
    dec c
    ld h, h
    ld b, d
    ld b, $96
    dec c
    ld h, a
    ld b, d
    jr nc, @+$06

    inc l
    jr z, @+$09

    ld bc, $322c
    jr nz, jr_00e_4fa7

    inc b
    ld b, $1e
    inc e
    dec b
    dec sp
    dec e
    add hl, sp
    nop
    nop
    ld b, $02
    ret nc

    inc bc
    sub b
    nop
    inc d
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    ret nc

    inc bc
    ld b, b
    nop
    inc d

jr_00e_4fa7:
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec d
    inc d
    inc hl
    inc d
    jr nc, @-$7c

    dec d
    ld a, [bc]
    inc hl
    ld a, [bc]
    jr nc, jr_00e_4fc1

    dec d
    rrca

jr_00e_4fc1:
    inc hl
    rrca
    rlca
    dec b
    ld de, $3002
    ld [bc], a
    dec d
    jr z, @+$25

    jr z, @+$0f

    ld l, d
    ld b, d
    ld b, $96
    dec d
    inc d
    ld de, $3086
    inc b
    add hl, bc
    nop
    jr @+$30

    ld l, l
    ld b, d
    ld b, $64
    jr nc, jr_00e_4f66

    inc l
    ld a, [bc]
    add hl, bc

jr_00e_4fe5:
    nop
    nop
    inc l
    ld [hl-], a
    ld de, $1582
    ld a, [bc]
    ld de, $1584
    ld a, b
    rlca
    inc b
    ld de, $1584
    ld [hl-], a
    ld [hl-], a
    xor b
    db $fd
    db $10
    cp $04
    nop
    nop
    jr jr_00e_5001

jr_00e_5001:
    nop
    ld [hl+], a
    rlca
    inc bc
    dec d
    ld [hl-], a
    dec [hl]
    nop
    jr jr_00e_5020

    ld a, [bc]
    ld de, $0784
    ld [bc], a
    dec d
    sub [hl]
    ld de, $1502
    ld a, [bc]
    add hl, bc
    nop
    jr jr_00e_5020

    ld [hl-], a
    ld l, $70
    ld b, d
    ld b, $96

jr_00e_5020:
    add hl, bc
    nop
    nop
    dec c
    ld [hl], e
    ld b, d
    ld b, $96
    rlca
    ld bc, $760d
    ld b, d
    ld b, $96
    ld l, $79
    ld b, d
    ld b, $96
    dec c
    ld a, h
    ld b, d
    ld b, $96
    ld l, $7f
    ld b, d
    ld b, $96
    dec c
    add d
    ld b, d
    ld b, $96
    ld l, $85
    ld b, d
    ld b, $96
    rlca
    ld [bc], a
    ld l, $88
    ld b, d
    ld b, $96
    dec d
    add hl, bc
    dec c
    adc e
    ld b, d
    daa
    ld a, [bc]
    add hl, bc
    nop
    nop
    ld b, $46
    jr nc, @+$04

    rlca
    ld b, $2c
    inc a
    jr nc, jr_00e_4fe5

    inc l
    ld a, [bc]
    rlca
    dec b
    jr nc, @-$78

    dec [hl]
    nop
    nop
    ld l, $91
    ld b, d
    ld b, $96
    rlca
    ld b, $35
    nop
    jr jr_00e_50a5

    sub h
    ld b, d
    ld b, $96
    rlca
    dec b
    jr nc, @+$08

    inc hl
    jr z, @+$22

    inc e
    inc b
    ld b, $32
    inc e
    dec b
    dec sp
    dec e
    add hl, sp
    nop
    nop
    ld [bc], a
    ld [hl-], a
    xor b
    db $fd
    db $10
    cp $04
    nop
    nop
    jr jr_00e_5098

jr_00e_5098:
    nop
    ld [bc], a
    sbc b
    cp $00
    rst $38
    stop
    nop
    jr jr_00e_50a3

jr_00e_50a3:
    nop
    ld [hl+], a

jr_00e_50a5:
    dec b
    ld b, $32
    rra
    ld b, $32
    ld l, $70
    ld b, d
    ld b, $96
    add hl, bc
    nop
    nop
    dec c
    ld [hl], e
    ld b, d
    ld b, $96
    rlca
    ld bc, $760d
    ld b, d
    ld b, $96
    ld l, $79
    ld b, d
    ld b, $96
    dec c
    ld a, h
    ld b, d
    ld b, $96
    ld l, $7f
    ld b, d
    ld b, $96
    dec c
    add d
    ld b, d
    ld b, $96
    ld l, $85
    ld b, d
    ld b, $96
    ld l, $88
    ld b, d
    ld b, $96
    dec d
    ld e, $0d
    adc e
    ld b, d
    daa
    ld e, $06
    ld b, [hl]
    jr nc, @+$04

    rlca
    ld b, $2c
    inc a
    jr nc, @-$7c

    inc l
    ld a, [bc]
    rlca
    dec b
    jr nc, @-$78

    dec [hl]
    nop
    nop
    ld l, $91
    ld b, d
    ld b, $96
    rlca
    ld b, $35
    nop
    jr jr_00e_5130

    sub h
    ld b, d
    ld b, $96
    rlca
    dec b
    jr nc, jr_00e_5110

    inc hl
    jr z, jr_00e_5114

    ld [bc], a
    ld b, $50

jr_00e_5110:
    inc e
    inc b
    ld b, $32

jr_00e_5114:
    inc e
    dec b
    dec sp
    dec e
    add hl, sp
    nop
    add hl, de
    ld bc, $7002
    rst $38
    jr nc, @+$01

    stop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    add hl, bc
    nop

jr_00e_5130:
    nop
    dec c
    sub a
    ld b, d
    ld b, $96
    add hl, sp
    nop
    ld a, [bc]
    ld b, $32
    jr jr_00e_513d

jr_00e_513d:
    add sp, -$02
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld l, $9a
    ld b, d
    ld b, $96
    add hl, sp
    nop
    add hl, de
    ld bc, $7002
    rst $38
    jr nc, @+$01

    stop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld de, $0d88
    sbc l
    ld b, d
    ld b, $96
    ld l, $a0
    ld b, d
    ld b, $96
    inc e
    inc b
    ld hl, $0040
    add hl, de
    ld bc, $7002
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_00e_517a:
    nop
    ld [hl-], a
    nop
    nop
    ret nc

    nop
    inc b
    nop

jr_00e_5182:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    ld l, $a3
    ld b, d
    jr nc, jr_00e_5195

    ld de, $2c02
    ld [bc], a
    add hl, de
    ld [bc], a

jr_00e_5195:
    inc l
    ld [bc], a
    add hl, de
    inc b
    ld b, $50
    ld hl, $0040
    ld a, [bc]
    ld b, $02
    jr nc, jr_00e_51a3

jr_00e_51a3:
    add sp, -$02
    stop
    nop
    jr jr_00e_51aa

jr_00e_51aa:
    nop
    dec sp
    dec e
    add hl, sp
    nop
    cpl
    nop
    ld [hl-], a
    xor b
    rst $38
    jr z, jr_00e_51b6

jr_00e_51b6:
    inc c
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ret c

    cp $d0
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    jr nc, jr_00e_51d8

    dec [hl]
    inc bc
    db $10
    dec [hl]
    inc bc
    ld [$e22e], sp

jr_00e_51d8:
    ld b, d
    ld b, $0a
    dec [hl]
    inc bc
    db $10
    dec [hl]
    nop
    jr jr_00e_51e8

    sub [hl]
    ld l, $e5
    ld b, d
    ld b, $96

jr_00e_51e8:
    dec d
    ld bc, $e80d
    ld b, d
    ld b, $96
    ld l, $eb
    ld b, d
    jr nc, jr_00e_517a

    ld de, $2302
    inc d
    rlca
    ld bc, $0a23
    jr nc, jr_00e_5182

    inc hl
    ld e, $15
    inc hl
    ld de, $1584
    add hl, de
    rlca
    inc bc
    ld l, $ee
    ld b, d
    ld b, $96
    rlca
    ld [bc], a
    dec c
    pop af
    ld b, d

jr_00e_5212:
    ld b, $96
    dec [hl]
    dec b
    nop
    ld l, $f4
    ld b, d
    ld b, $96
    dec c
    rst $30
    ld b, d
    ld de, $1588
    ld bc, $fa2e
    ld b, d
    ld b, $96
    dec [hl]
    nop
    nop
    ld de, $1e08
    dec sp
    inc a
    dec hl
    ld d, h
    add hl, sp
    nop
    ld a, [bc]
    ld b, $32
    ld hl, sp-$01

jr_00e_5239:
    jr z, jr_00e_5239

    inc b
    nop
    nop
    jr jr_00e_5240

jr_00e_5240:
    nop
    ld [bc], a
    ld hl, sp-$01
    add sp, -$02
    inc c
    nop
    nop

jr_00e_5249:
    jr jr_00e_524b

jr_00e_524b:
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec c
    and [hl]
    ld b, d
    ld b, $96
    ld l, $a9
    ld b, d
    ld b, $96
    dec c
    xor h
    ld b, d
    ld b, $96
    dec c
    xor a
    ld b, d
    ld b, $96
    ld l, $b2
    ld b, d
    ld b, $96
    ld l, $b5
    ld b, d
    ld b, $96
    inc hl
    inc d
    jr nc, jr_00e_5277

    inc hl
    add hl, de

jr_00e_5277:
    dec [hl]
    nop
    jr jr_00e_52ab

    add h
    rlca
    ld b, $0d
    cp b
    ld b, d
    ld b, $96
    rlca
    dec b
    ld l, $bb
    ld b, d
    jr nc, jr_00e_528e

    inc hl
    inc d
    jr nc, jr_00e_5212

jr_00e_528e:
    inc hl
    jr z, jr_00e_5291

jr_00e_5291:
    ld bc, $3b00
    dec e
    add hl, sp
    nop
    nop
    ld bc, $1032
    nop

jr_00e_529c:
    cp b
    rst $38
    ld [$0000], sp
    jr jr_00e_52a3

jr_00e_52a3:
    nop
    ld [bc], a
    jr nc, jr_00e_52a3

    ret nc

    cp $08
    nop

jr_00e_52ab:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec d
    ld e, $0d
    cp [hl]
    ld b, d
    ld b, $96
    jr nc, jr_00e_52c7

    dec d
    jr z, jr_00e_52e5

    ld [hl-], a
    rlca
    ld [bc], a
    jr nc, jr_00e_5249

jr_00e_52c7:
    dec [hl]
    nop
    jr jr_00e_52f9

    pop bc
    ld b, d
    ld b, $96
    ld de, $0d82
    call nz, $0642
    sub [hl]
    ld l, $c7
    ld b, d
    ld b, $96
    ld l, $ca
    ld b, d
    ld b, $96
    dec c
    call $0642
    sub [hl]

jr_00e_52e5:
    ld de, $2e86
    ret nc

    ld b, d
    ld b, $96
    add hl, bc
    nop
    nop
    dec c
    db $d3
    ld b, d
    ld de, $0606
    sub [hl]
    ld l, $d6
    ld b, d

jr_00e_52f9:
    ld b, $96
    dec c
    reti


    ld b, d
    ld b, $96
    ld l, $dc
    ld b, d
    ld b, $96
    dec [hl]
    inc bc
    db $10
    dec [hl]
    inc bc
    ld [$2806], sp
    dec [hl]
    inc bc
    db $10
    dec [hl]
    nop
    jr @+$0f

    rst $18
    ld b, d
    ld b, $96
    jr nc, jr_00e_529c

    inc hl
    dec b
    dec d
    rrca
    daa

jr_00e_531f:
    inc d
    jr nc, @-$7a

    inc l
    jr z, jr_00e_532c

    ld bc, $142c
    ld b, $3c
    rlca
    ld [bc], a

jr_00e_532c:
    ld b, $50
    inc e
    inc b
    inc e
    dec b
    dec sp
    dec e
    add hl, sp
    nop
    add hl, hl

jr_00e_5337:
    nop
    ld [hl-], a
    sub b
    nop
    ret z

    rst $38
    inc c
    nop
    nop
    jr jr_00e_5342

jr_00e_5342:
    nop
    ld [bc], a
    ldh [rIE], a
    ldh a, [rP1]
    stop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $64
    rlca
    ld bc, $0830
    ld l, $fd
    ld b, d
    ld b, $96
    rlca
    nop
    dec d
    ld a, [bc]
    rlca
    ld bc, $0515
    ld de, $0982
    nop
    nop
    dec c
    nop
    ld b, e
    ld b, $96
    ld l, $03
    ld b, e
    dec d
    inc d
    add hl, bc
    inc bc
    db $10
    ld b, $0a
    add hl, bc
    nop
    nop
    daa
    ld a, [bc]
    add hl, bc
    nop
    jr jr_00e_5389

    sub [hl]
    ld l, $06
    ld b, e
    ld b, $96

jr_00e_5389:
    dec c
    add hl, bc
    ld b, e
    ld b, $96
    ld l, $0c
    ld b, e
    ld b, $96
    dec c
    rrca
    ld b, e
    ld b, $96
    ld l, $12
    ld b, e
    jr nc, jr_00e_531f

    inc hl
    jr z, @+$32

    inc b
    inc hl
    jr z, jr_00e_53ab

    nop
    ld de, $2708
    ld a, [bc]
    inc hl
    inc d

jr_00e_53ab:
    jr nc, jr_00e_53b3

    ld b, $14
    jr nc, jr_00e_5337

    ld b, $46

jr_00e_53b3:
    ld hl, $3b40
    dec e
    add hl, sp
    nop
    ld e, $01
    ld [bc], a
    stop
    or b
    ld bc, $0008
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec d
    ld b, b
    ld de, $0704
    ld [bc], a
    add hl, de
    inc d
    rlca
    inc bc
    add hl, bc
    nop
    nop
    dec c
    dec d
    ld b, e
    add hl, de
    inc d
    ld de, $0904
    rlca
    nop
    ld b, $96
    rlca
    inc b
    dec a
    jr jr_00e_542e

    ld b, $96
    dec c
    dec de
    ld b, e
    ld b, $96
    dec a
    ld e, $43
    ld b, $96
    dec c
    ld hl, $0643
    sub [hl]
    dec a
    inc h
    ld b, e
    ld b, $96
    dec c
    daa
    ld b, e
    ld b, $96
    dec a
    ld a, [hl+]
    ld b, e
    ld b, $96
    add hl, bc
    nop
    nop
    ld de, $0704
    inc bc
    add hl, de
    inc d
    rlca
    ld [bc], a
    add hl, de
    ld a, [bc]
    rlca
    ld bc, $0a19
    ld de, $1984
    jr z, jr_00e_5428

    nop
    add hl, de
    ld a, [bc]
    ld hl, $0040
    daa

jr_00e_5428:
    nop
    ld [bc], a
    ret z

    nop
    ret nc

    ld [bc], a

jr_00e_542e:
    stop
    nop
    nop
    nop
    nop
    dec sp
    dec e
    add hl, sp
    nop
    ld e, $04
    ld [bc], a
    ret nc

    ld bc, $0040
    stop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    add hl, de
    inc d
    ld de, $0904
    rlca
    nop
    dec c
    dec l
    ld b, e
    ld b, $96
    dec a
    jr nc, jr_00e_549e

    ld b, $96
    dec c
    inc sp
    ld b, e
    ld b, $96
    dec a
    ld [hl], $43
    ld b, $96
    rlca
    inc bc
    add hl, bc
    nop
    nop
    ld b, $96
    dec sp
    dec e
    nop
    dec l
    ld bc, $5802
    nop
    or b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    sub b
    nop
    ld d, b
    ld bc, $0010
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec d
    inc d
    add hl, bc
    nop
    nop
    ld b, $05
    add hl, bc
    nop
    jr jr_00e_54a1

    dec b
    add hl, bc
    rlca

jr_00e_549e:
    nop
    dec c
    add hl, sp

jr_00e_54a1:
    ld b, e
    ld b, $96
    inc e
    dec b
    inc hl
    rla
    ld b, $50
    jr nz, jr_00e_54e7

    dec e
    add hl, sp
    nop
    ld [hl], $01
    ld [bc], a
    jr nz, @+$04

    add b
    ld bc, $0004
    nop
    jr jr_00e_54bb

jr_00e_54bb:
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld b, b
    inc a
    ld b, e
    ld b, $96
    dec c
    sub b
    ld b, e
    ld b, $96
    ld b, b
    ccf
    ld b, e
    ld b, $96
    dec c
    sub e
    ld b, e
    ld b, $96
    dec sp
    dec e
    add hl, sp
    nop
    ld c, a
    dec b
    ld [bc], a
    ld [hl], b
    inc bc
    ld a, b
    db $fd
    inc c
    nop
    nop
    nop
    nop

jr_00e_54e7:
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld de, $2784
    ld a, [bc]
    ld de, $0684
    ld d, b
    ld l, $9c
    ld b, e
    ld b, $96
    ld b, c
    sbc a
    ld b, e
    ld b, $96
    ld l, $a2

jr_00e_5503:
    ld b, e
    add hl, bc
    nop
    jr jr_00e_550e

    sub [hl]
    ld b, c
    and l
    ld b, e
    ld b, $96

jr_00e_550e:
    ld l, $a8
    ld b, e
    ld b, $96
    ld b, c
    xor e
    ld b, e
    ld b, $96
    ld l, $ae
    ld b, e
    add hl, bc
    nop
    nop
    ld b, $96
    dec sp
    dec e
    add hl, sp
    nop
    ld d, b
    ld bc, $8032
    nop
    jr z, @+$01

    inc b
    nop
    inc bc
    ld [$0000], sp
    ld [bc], a
    ld l, b
    ld bc, $0250
    stop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec d
    jr z, jr_00e_554d

    ld [bc], a
    dec d
    ld e, $09
    nop
    jr jr_00e_5570

jr_00e_554d:
    inc d
    dec [hl]
    nop
    nop
    ld l, $b1
    ld b, e
    ld b, $96
    rlca
    inc b
    dec c
    or h
    ld b, e
    ld b, $96
    ld l, $b7
    ld b, e
    ld b, $96
    dec c
    cp d
    ld b, e
    ld b, $96
    ld l, $bd
    ld b, e
    ld b, $96
    add hl, bc
    nop
    nop
    inc hl

jr_00e_5570:
    dec b
    jr nc, @-$7c

    inc hl
    ld a, [bc]
    rlca
    ld [bc], a
    inc hl
    inc d
    ld de, $3004
    ld [bc], a
    inc hl
    ld a, [bc]
    jr nc, jr_00e_5503

    inc hl
    ld a, [bc]
    ld de, $0604
    inc d
    rlca
    ld bc, $1423
    dec [hl]
    nop
    nop
    jr nc, jr_00e_5598

    ld l, $c0
    ld b, e
    ld b, $96
    jr nc, @-$76

    ld [hl-], a

jr_00e_5598:
    ld l, b
    rst $38
    jr z, @+$01

    inc b
    nop
    inc bc
    ld [$0000], sp
    rlca
    inc b
    ld [hl+], a
    inc e
    inc b
    ld b, $64
    inc e
    dec b
    ld de, $0988
    nop
    jr jr_00e_55b7

    ld [hl-], a
    dec sp
    dec e
    add hl, sp
    nop
    ld c, a

jr_00e_55b7:
    inc bc
    ld [bc], a
    ret z

    ld [bc], a
    db $10
    ld [bc], a
    jr jr_00e_55bf

jr_00e_55bf:
    nop
    nop
    nop
    nop
    inc bc
    sbc b
    nop
    ld [hl], b
    inc bc
    jr jr_00e_55ca

jr_00e_55ca:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    rra
    ld b, $64
    add hl, bc
    nop
    nop
    inc e
    rrca
    ld b, $14
    ld de, $1904
    ld e, $07
    ld [bc], a
    add hl, bc
    nop
    nop
    ld de, $1c84
    rrca
    ld a, [bc]
    inc bc
    nop
    ld b, $32
    inc e
    rrca
    dec c
    jp nc, Jump_000_0a43

    inc bc
    db $10
    ld a, [bc]
    nop
    nop
    ld b, $78
    rlca
    rlca
    ld [de], a
    ld [$c30e], sp
    ld b, e
    ld b, $96
    add hl, bc
    nop
    jr jr_00e_5613

    add $43
    dec d
    jr z, jr_00e_5614

    nop
    nop
    ld a, [bc]
    nop
    jr @+$10

    ret


    ld b, e

jr_00e_5613:
    dec c

jr_00e_5614:
    call z, $0643
    ld h, h
    rlca

jr_00e_5619:
    ld bc, $0316
    rlca
    ld [bc], a
    ld d, $3f
    ld [de], a
    ld [$6406], sp
    dec c
    rst $08
    ld b, e
    add hl, bc
    nop
    jr jr_00e_563d

    add h
    ld d, $06

jr_00e_562e:
    inc bc
    jr nc, jr_00e_562e

    ret nc

    inc bc
    stop
    nop
    nop
    nop
    nop
    ld [hl+], a
    ld b, $96
    dec sp

jr_00e_563d:
    dec e
    add hl, sp
    nop
    ld a, [hl-]
    inc b
    ld [bc], a
    ret c

    db $fc
    ld hl, sp-$02
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld b, b
    ld b, d
    ld b, e
    ld b, $96
    add hl, bc
    nop
    jr jr_00e_566a

    sub [hl]
    ld b, e
    ld b, $96
    dec sp
    dec e
    add hl, sp
    nop
    dec hl
    ld [bc], a
    ld [bc], a
    ld a, b
    nop

jr_00e_566a:
    ld [$0cfe], sp
    nop
    rlca
    nop
    nop
    nop
    ld [hl-], a
    ldh a, [$fe]
    sub b
    ld [bc], a
    stop
    nop
    jr jr_00e_567c

jr_00e_567c:
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc e
    inc b
    ld b, $32
    inc e
    dec b
    ld b, $33
    rlca
    nop
    inc hl
    ld d, b
    add hl, bc
    nop
    nop
    rlca
    ld [bc], a
    jr nc, jr_00e_5619

    inc hl
    ld e, $09
    nop
    nop
    add hl, bc
    nop
    jr jr_00e_56c3

    jr z, jr_00e_56d7

    dec b
    nop
    ld l, $61
    ld b, l
    ld b, $96
    dec c
    ld h, h
    ld b, l
    ld b, $96
    ld l, $67
    ld b, l
    ld b, $96
    dec c
    ld l, d
    ld b, l
    ld b, $96
    ld l, $6d
    ld b, l
    ld b, $64
    ld hl, $3985
    nop
    ld a, [hl+]
    nop

jr_00e_56c3:
    ld [bc], a
    ld d, b
    nop
    nop
    ld bc, $000c
    rlca
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    dec c
    ld [hl], b
    ld b, l
    add hl, bc
    nop

jr_00e_56d7:
    nop
    ld de, $0608
    sub [hl]
    add hl, sp
    nop
    dec hl
    ld [bc], a
    ld [hl-], a
    ld a, b
    nop
    ld [$0cfe], sp
    nop
    dec b
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    ld l, $73
    ld b, l
    ld b, $96
    dec [hl]
    nop
    nop
    jr nc, jr_00e_5701

    inc hl
    ld e, $06
    ld [hl-], a
    add hl, sp
    nop
    ld a, [hl+]
    nop

jr_00e_5701:
    ld [bc], a
    ld d, b
    nop
    nop
    ld bc, $001c
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    dec c
    db $76
    ld b, l
    ld de, $0988
    nop
    jr jr_00e_571f

    and b
    dec sp
    dec e
    add hl, sp
    nop
    dec hl

jr_00e_571f:
    ld [bc], a
    ld [hl-], a
    and b
    rst $38
    ret nc

    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc e
    inc b
    inc l
    add hl, de
    jr nc, jr_00e_573a

    inc l
    ld a, [bc]

jr_00e_573a:
    dec [hl]
    dec b
    nop
    ld l, $79
    ld b, l
    ld b, $96
    add hl, sp
    nop
    ld a, [hl+]
    nop
    ld [bc], a
    ld d, b
    nop
    nop
    ld bc, $001c
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $96
    jr nz, jr_00e_5790

    nop
    dec hl
    ld [bc], a
    ld [bc], a
    ld a, b
    nop
    ld [$00fe], sp
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    xor b
    nop
    ret c

    cp $0c
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    ld l, $7c
    ld b, l
    add hl, bc
    nop
    jr jr_00e_5781

    sub [hl]
    dec c
    ld a, a
    ld b, l
    ld b, $96

jr_00e_5781:
    dec [hl]
    nop
    jr @+$30

    add d
    ld b, l
    ld b, $96
    dec c
    add l
    ld b, l
    ld b, $96
    ld l, $88

jr_00e_5790:
    ld b, l
    ld b, $96
    ld l, $d0
    ld b, d
    ld b, $64
    dec c
    rst $18
    ld b, d
    jr nc, jr_00e_57a5

    inc hl
    ld b, [hl]
    ld de, $1c82
    inc b
    ld b, $1e

jr_00e_57a5:
    inc e
    dec b
    ld b, $64
    dec sp
    dec e
    add hl, sp
    nop
    ld b, e
    nop
    ld [bc], a
    ldh a, [$fe]
    jr jr_00e_57b4

jr_00e_57b4:
    ld [$0300], sp
    ld [$0000], sp
    ld [hl-], a
    ret nz

    rst $38
    ld [$0800], sp
    nop
    inc bc
    ld [$0000], sp
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    add hl, bc
    inc bc
    db $10
    add hl, bc
    nop
    jr @+$32

    adc b
    dec [hl]
    inc bc
    db $10
    dec [hl]
    nop
    jr jr_00e_5809

    ld e, d
    ld b, e
    dec c
    ld e, l
    ld b, e
    ld b, $96
    ld l, $60
    ld b, e
    ld b, $96
    ld l, $63
    ld b, e
    ld b, $96
    ld b, $96
    ld e, $3b
    dec e
    add hl, sp
    nop
    inc a
    inc bc
    ld [bc], a
    jr nz, jr_00e_57fa

    ret nc

    ld [bc], a

jr_00e_57fa:
    ld [$0000], sp
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec d
    dec b

jr_00e_5809:
    ld de, $1504
    ld a, [bc]
    dec l
    ld h, [hl]
    ld b, e
    dec d
    ld [hl-], a
    ld de, $0602
    sub [hl]
    rlca
    dec b
    dec d
    jr z, jr_00e_5824

    nop
    nop
    dec c
    ld l, c
    ld b, e
    ld b, $96
    dec l
    ld l, h

jr_00e_5824:
    ld b, e
    ld b, $96
    dec d
    ld e, $09
    nop
    nop
    dec c
    ld l, a
    ld b, e
    ld b, $96
    dec l
    ld [hl], d
    ld b, e
    ld b, $96
    rlca
    inc b
    dec c
    ld [hl], l
    ld b, e
    ld b, $96
    ld [hl-], a
    ld d, b
    ld [bc], a
    ld l, b
    ld [bc], a
    stop
    nop
    nop
    nop
    nop
    ld [hl+], a
    rlca
    inc bc
    ld l, $78
    ld b, e
    ld b, $96
    inc l
    ld e, $30
    ld [bc], a
    inc l
    inc d
    dec [hl]
    nop
    jr jr_00e_5861

    dec b
    dec l
    ld a, e
    ld b, e
    ld b, $96
    rlca

jr_00e_5861:
    inc b
    ld l, $7e
    ld b, e
    ld b, $96
    rlca
    dec b
    dec l
    add c
    ld b, e
    ld b, $96
    rlca
    inc bc
    dec l
    add h
    ld b, e
    inc e
    rrca
    dec l
    add a
    ld b, e
    ld b, $96
    rlca
    dec b
    inc l
    ld a, [bc]
    dec [hl]
    dec b
    nop

jr_00e_5881:
    dec c
    adc d
    ld b, e
    ld b, $96
    rlca
    inc bc
    ld b, $96
    dec sp
    dec e
    add hl, sp

jr_00e_588d:
    nop
    ld h, h
    ld [bc], a
    ld [bc], a
    jr nz, @+$03

    ld [$0cff], sp
    nop
    nop
    jr jr_00e_589a

jr_00e_589a:
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld b, $64
    rlca
    inc bc
    inc c
    db $fd
    ld b, d
    ld b, $96
    rlca
    ld [bc], a
    dec c
    push de
    ld b, e
    ld b, $96
    inc c
    and h
    ld b, h
    ld b, $96
    dec c
    and a
    ld b, h
    ld b, $96
    dec c
    xor d
    ld b, h
    ld b, $96
    rlca
    inc bc
    inc c
    xor l
    ld b, h
    ld b, $96
    rlca
    ld [bc], a
    ld b, $96
    dec sp
    dec e
    add hl, sp
    nop
    ld h, l
    inc bc
    ld [bc], a
    sub b
    inc bc
    jr c, jr_00e_58d7

jr_00e_58d7:
    jr jr_00e_58d9

jr_00e_58d9:
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    ld c, b
    cp $00
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    inc l
    ld a, [bc]
    ld b, $64
    rlca
    ld [bc], a
    inc l
    dec b
    jr nc, jr_00e_58fd

    inc l
    ld b, [hl]
    jr nc, jr_00e_5881

jr_00e_58fd:
    inc l
    dec b
    rlca
    inc bc
    inc l
    add hl, de
    ld de, $1504
    ld a, [bc]
    jr nc, jr_00e_588d

    ld b, $3c
    dec [hl]
    nop
    nop
    ld l, $98
    ld b, h
    ld b, $96
    dec c
    sbc e
    ld b, h
    ld b, $96
    ld l, $9e
    ld b, h
    ld b, $96
    dec c
    and c
    ld b, h
    ld de, $3084
    inc b
    inc hl
    ld a, [bc]
    ld b, $64
    jr nz, @+$20

    nop
    ld l, e
    nop
    ld [bc], a
    nop
    nop
    ret nz

    rst $38
    jr jr_00e_5934

jr_00e_5934:
    nop
    nop
    nop
    nop
    ld [hl-], a
    nop
    nop
    ld b, b
    nop
    jr jr_00e_593f

jr_00e_593f:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    ld b, $96
    nop
    ld l, h
    nop
    ld [bc], a
    ret nc

    ld [bc], a
    ld a, b
    rst $38
    jr jr_00e_5953

jr_00e_5953:
    nop
    nop
    nop
    nop
    ld [hl-], a
    ret nc

    ld [bc], a
    ret z

    cp $18
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    ld b, $32
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl

jr_00e_597f:
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    ld b, $5a
    rlca
    ld bc, $6406
    nop
    ld l, h
    inc bc
    ld [bc], a
    ret z

    cp $00
    nop
    jr jr_00e_59c8

jr_00e_59c8:
    nop
    nop
    nop
    nop
    ld [hl-], a
    ret z

    cp $50
    cp $18
    nop
    nop
    nop
    nop
    nop
    inc bc
    and b
    db $fd
    ret nc

    ld bc, $0010
    nop
    jr jr_00e_59e1

jr_00e_59e1:
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec d
    jr z, @+$32

    ld [bc], a
    inc hl
    inc d
    jr nc, @+$04

    ld de, $0d04
    ld l, d
    ld b, d
    ld b, $96
    ld c, $b0
    ld b, h
    jr nc, jr_00e_597f

    dec [hl]
    inc bc
    db $10
    dec [hl]
    inc bc
    ld [$0009], sp
    jr jr_00e_5a0d

    sub [hl]
    rlca
    dec b
    dec c
    or e
    ld b, h

jr_00e_5a0d:
    ld b, $96
    rlca
    ld [bc], a
    ld c, $b6
    ld b, h
    ld b, $96
    rlca
    dec b
    dec c
    cp c

jr_00e_5a1a:
    ld b, h
    ld b, $96
    rlca
    inc bc
    ld c, $bc
    ld b, h
    ld b, $96
    rlca
    dec b
    dec c
    cp a
    ld b, h
    ld b, $96
    rlca
    ld [bc], a
    ld c, $c2
    ld b, h
    ld b, $96
    rlca
    dec b
    dec c
    push bc
    ld b, h
    ld b, $96
    ld c, $c8
    ld b, h
    ld b, $96
    rlca
    inc bc
    ld c, $cb
    ld b, h
    ld b, $96
    rlca
    dec b
    dec [hl]
    nop
    jr jr_00e_5a7b

    ld b, $23
    dec b
    ld b, $32
    rlca
    inc bc
    add hl, bc
    nop
    nop
    ld c, $ce
    ld b, h
    inc l
    ld [hl-], a
    ld b, $64
    dec c
    pop de
    ld b, h
    ld b, $96
    rlca
    inc bc
    ld c, $d1
    ld b, h
    ld b, $96
    dec c
    call nc, Call_000_0644
    sub [hl]
    ld c, $d7
    ld b, h
    ld b, $96
    rlca
    inc bc
    dec c
    jp c, Jump_000_0644

    sub [hl]
    rlca
    ld [bc], a

jr_00e_5a7b:
    ld d, $28
    ld [de], a
    ld [bc], a
    ld d, $14
    ld [de], a
    add d
    ld d, $0a
    ld [de], a
    add d
    ld d, $14
    ld de, $1288
    add [hl]
    ld c, $34
    ld b, l
    jr nc, jr_00e_5a1a

    inc l
    ld [hl-], a
    ld b, $78
    dec c
    db $dd
    ld b, h
    ld b, $96
    rlca
    dec b
    ld c, $e0
    ld b, h
    inc l
    inc d
    jr nc, jr_00e_5aa8

    inc l
    ld a, [bc]
    ld b, $96

jr_00e_5aa8:
    rlca
    ld [bc], a
    dec [hl]
    nop
    nop
    ld a, [bc]
    nop
    jr jr_00e_5ac3

    inc b
    ld d, $0f
    ld a, [bc]
    dec b
    nop
    dec c
    ld l, $45
    ld b, $96
    ld l, $e3
    ld b, h
    ld b, $96
    ld l, $e6

jr_00e_5ac3:
    ld b, h
    ld b, $96
    ld l, $e9
    ld b, h
    ld b, $96
    dec c
    db $ec
    ld b, h
    ld b, $96
    ld l, $f3
    ld b, e
    ld b, $96
    ld l, $ef
    ld b, h
    ld b, $96
    dec c
    ld a, [c]
    ld b, h
    ld b, $96
    ld l, $f5
    ld b, h
    ld b, $96
    dec c
    ld hl, sp+$44
    ld b, $96
    ld l, $fb
    ld b, h
    ld b, $96
    dec c
    cp $44
    ld de, $1508
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    ld b, $96
    ld hl, $0240
    sub b

jr_00e_5b21:
    db $fd
    jr c, jr_00e_5b21

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld bc, $1d3b
    add hl, sp
    nop
    ld l, [hl]
    ld bc, $0002
    cp $d0
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld [hl], b
    db $fd
    ret nc

    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    rlca
    ld [bc], a
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    ld de, $3002
    ld [bc], a
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    dec d
    dec b
    inc hl
    dec b
    rlca
    dec b
    ld b, $64
    rlca
    ld b, $06
    ld a, b
    rlca
    dec b
    dec c
    inc b
    ld b, l
    ld b, $96
    ld l, $07
    ld b, l
    ld b, $96
    dec c
    ld a, [bc]
    ld b, l
    ld b, $96
    ld l, $0d
    ld b, l
    ld b, $96
    ld l, $10
    ld b, l
    inc hl
    jr z, jr_00e_5bf6

    add d
    inc hl
    ld a, [bc]
    ld b, $96
    rlca
    dec b
    ld a, [hl+]
    inc d
    ld b, $96
    rlca
    dec b
    daa
    inc d
    ld b, $96
    rlca
    ld [bc], a
    dec c
    inc de
    ld b, l
    dec [hl]
    dec b
    nop
    ld b, $96
    rlca
    dec b
    dec c
    ld bc, $2745
    inc d
    ld b, $64
    dec sp
    dec e
    add hl, sp
    nop
    ld l, [hl]
    dec b
    ld [bc], a
    ret nz

    db $fd
    add b
    ld [bc], a
    inc e

jr_00e_5bf6:
    nop
    rlca
    nop
    nop
    nop
    ld [hl-], a
    sub b
    db $fd

jr_00e_5bfe:
    ldh a, [rSC]
    nop
    nop
    dec b
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    add hl, bc
    rlca
    nop
    dec c
    db $76
    ld b, l
    ld b, $96
    add hl, bc
    nop
    nop
    dec c
    ld l, a
    ld b, e
    ld b, $96
    ld l, $8d
    ld b, e
    dec [hl]
    nop
    nop
    ld b, $96
    dec c
    rst $20
    ld b, e
    ld b, $96
    rlca
    ld [bc], a
    jr nc, jr_00e_5c34

    ld de, $0688
    sub [hl]
    dec sp
    dec e

jr_00e_5c34:
    add hl, sp
    nop
    ld l, h
    ld [bc], a
    ld [bc], a
    nop
    cp $00
    ld bc, $0010
    nop
    jr jr_00e_5c42

jr_00e_5c42:
    nop

jr_00e_5c43:
    ld [hl-], a
    jr c, jr_00e_5c43

    nop
    ld bc, $0010
    nop
    jr jr_00e_5c4d

jr_00e_5c4d:
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec d
    dec b
    inc hl
    dec b
    dec c
    ld d, $45
    ld b, $96
    inc c
    ld l, [hl]
    ld b, h
    ld b, $96
    ld l, $19
    ld b, l
    inc l
    dec b
    add hl, de
    add hl, de
    ld de, $2c84
    dec b
    add hl, de
    dec b
    inc l
    dec b
    add hl, de
    dec b
    inc l
    dec b
    add hl, de
    dec b
    jr nc, jr_00e_5bfe

    inc l
    dec b
    add hl, de
    dec b
    inc l
    dec b
    add hl, de
    dec b
    ld b, $0f
    rlca
    ld bc, $052c
    add hl, de
    dec b
    inc l
    dec b
    add hl, de
    dec b
    inc l
    dec b
    add hl, de
    dec b
    inc l
    dec b
    add hl, de
    dec b
    inc l
    dec b
    add hl, de
    dec b
    rlca
    nop
    inc l
    dec b
    add hl, de
    dec b
    inc l
    dec b
    add hl, de
    dec b
    inc l
    dec b
    add hl, de
    dec b
    inc l
    dec b
    add hl, de
    dec b
    inc l
    dec b
    add hl, de
    dec b
    ld hl, $3b40
    dec e
    add hl, sp
    nop
    ld l, l
    ld [bc], a
    ld bc, $fff0
    nop
    rst $38
    nop
    nop
    nop
    jr jr_00e_5cc2

jr_00e_5cc2:
    nop
    ld [bc], a
    ldh a, [rIE]
    nop
    ld bc, $0010
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld b, $32
    rlca
    ld bc, $1c0c
    ld b, l
    inc d
    ld [hl-], a
    ld [$0000], sp
    ld b, $64
    rlca
    ld [bc], a
    dec c
    jr z, jr_00e_5d2d

    ld b, $96
    inc c
    ld d, $45
    ld b, $96
    dec c
    dec hl
    ld b, l
    ld de, $1588
    dec b
    inc d
    ld a, [bc]
    ld hl, $3b40
    dec e
    add hl, sp
    nop
    ld l, l
    ld [bc], a
    ld bc, $fff0
    nop
    rst $38
    nop
    nop
    nop
    jr jr_00e_5d0a

jr_00e_5d0a:
    nop
    ld [bc], a
    ldh a, [rIE]
    nop
    ld bc, $0010
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld b, $32
    rlca
    ld bc, $1c0c
    ld b, l
    inc d
    ld [hl-], a
    ld [$0000], sp
    ld b, $64
    rlca
    ld [bc], a

jr_00e_5d2d:
    dec c
    rra
    ld b, l
    ld b, $96
    inc c
    ld [hl+], a
    ld b, l
    ld b, $32
    dec c
    dec h
    ld b, l
    ld de, $1588
    dec b
    inc d
    ld a, [bc]
    ld hl, $3b40
    dec e
    add hl, sp
    nop
    ld h, c
    inc bc
    ld bc, $02d0
    ld b, b
    nop
    jr jr_00e_5d4f

jr_00e_5d4f:
    nop
    nop
    nop
    nop
    ld [bc], a
    ret nc

    ld [bc], a
    and b
    rst $38
    jr jr_00e_5d5a

jr_00e_5d5a:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld b, $96
    jr jr_00e_5d7d

    rlca
    ld [bc], a
    jr jr_00e_5d8b

    rlca
    ld bc, $1418
    rlca
    nop
    jr @+$16

    ld [$0000], sp
    db $10
    add [hl]
    inc c
    rst $20
    ld b, e

jr_00e_5d7d:
    ld b, $50
    db $10
    ld b, $08
    nop
    jr jr_00e_5d8b

    sub [hl]
    rlca
    inc bc
    ld b, $64
    dec sp

jr_00e_5d8b:
    dec e
    add hl, sp
    nop
    ld e, e
    ld bc, $6801
    nop
    jr nz, @+$03

    stop
    nop
    nop
    nop
    nop
    ld [bc], a
    add sp, -$01
    or b
    cp $00
    nop
    nop
    jr jr_00e_5da5

jr_00e_5da5:
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    jr jr_00e_5dc3

    ld [$0000], sp
    inc c
    and c
    ld b, h
    ld b, $50
    db $10
    adc b
    jr jr_00e_5ded

    ld b, $64
    dec sp
    dec e
    add hl, sp
    nop
    ld e, d
    ld [bc], a

jr_00e_5dc3:
    ld [hl-], a
    sub b
    nop
    ld [hl], b
    rst $38
    inc c
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    ld l, $a3
    ld b, d
    dec [hl]
    nop
    jr jr_00e_5de2

    inc d
    dec [hl]
    nop
    nop
    ld b, $0a

jr_00e_5de2:
    dec [hl]
    nop
    jr jr_00e_5dec

    sub [hl]
    dec sp
    dec e
    add hl, sp
    nop
    ld e, c

jr_00e_5dec:
    ld [bc], a

jr_00e_5ded:
    ld [bc], a
    xor b
    nop
    nop
    ld [bc], a
    inc c
    nop
    nop
    nop
    nop
    nop
    ld [hl-], a
    ld c, b
    nop
    or b
    ld [bc], a
    inc c
    nop
    nop
    jr jr_00e_5e02

jr_00e_5e02:
    nop
    ld bc, $00c8
    ret nc

    inc bc
    inc c
    nop
    inc bc
    ld [$0000], sp
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    cpl
    ld sp, $0645
    sub [hl]
    dec sp
    dec e
    add hl, sp
    nop
    add hl, sp
    ld bc, $f002
    nop
    jr nz, jr_00e_5e25

jr_00e_5e25:
    jr jr_00e_5e27

jr_00e_5e27:
    rlca
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    add hl, bc
    nop
    nop
    ld b, $32
    add hl, bc
    nop
    jr jr_00e_5e4c

    ld [$6406], sp
    rlca
    inc b
    ld b, $64
    rlca
    ld [bc], a
    ld b, $64
    rlca
    dec b
    ld b, $64
    rlca
    ld [bc], a

jr_00e_5e4c:
    ld b, $64
    rlca
    nop
    ld b, $96
    dec sp
    dec e
    add hl, sp
    nop
    add hl, sp
    dec b
    ld [hl+], a
    dec b
    ld b, $32
    rra
    ld b, $32
    dec sp
    dec e
    nop
    ld [hl], d
    nop
    ld bc, $0000
    nop
    nop
    jr jr_00e_5e6b

jr_00e_5e6b:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $64
    ld [hl], $06
    ld a, [bc]
    jr nz, jr_00e_5e78

jr_00e_5e78:
    ld l, h
    nop
    ld bc, $02d0
    nop
    rst $38
    jr jr_00e_5e81

jr_00e_5e81:
    nop
    nop
    nop
    nop
    dec e
    nop
    ld [hl], d
    nop
    ld bc, $0000
    nop
    nop
    jr jr_00e_5e90

jr_00e_5e90:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $64
    ld [hl], $06
    ld a, [bc]
    jr nz, jr_00e_5e9d

jr_00e_5e9d:
    ld h, l
    nop
    ld bc, $0378
    ret nc

    nop
    stop
    nop
    nop
    nop
    nop
    dec e
    nop
    ld [hl], d
    nop
    ld bc, $0000
    nop
    nop
    jr jr_00e_5eb5

jr_00e_5eb5:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $64
    ld [hl], $06
    ld a, [bc]
    jr nz, jr_00e_5ec2

jr_00e_5ec2:
    ld [hl], e
    nop
    ld bc, $0398
    xor b
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    dec e
    nop
    ld [hl], d
    nop
    ld bc, $0000
    nop
    nop
    jr jr_00e_5eda

jr_00e_5eda:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $64
    ld [hl], $06
    ld a, [bc]
    jr nz, jr_00e_5ee7

jr_00e_5ee7:
    jr nz, jr_00e_5ee9

jr_00e_5ee9:
    ld bc, $01c8
    nop
    rst $38
    ld [$0000], sp
    nop
    nop
    nop
    dec e
    nop
    ld h, [hl]
    nop
    ld bc, $0000
    nop
    nop
    jr jr_00e_5eff

jr_00e_5eff:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $64
    ld [hl], $06
    ld a, [bc]
    jr nz, jr_00e_5f0c

jr_00e_5f0c:
    add hl, sp
    nop
    ld bc, $fdc8
    nop
    inc bc
    ld [$0000], sp
    nop
    nop
    nop
    dec e
    nop
    ld h, [hl]
    nop
    ld bc, $0000
    nop
    nop
    jr jr_00e_5f24

jr_00e_5f24:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $64
    ld [hl], $06
    ld a, [bc]
    jr nz, jr_00e_5f31

jr_00e_5f31:
    ld e, c
    nop
    ld bc, $fc30
    or b
    db $fc
    ld [$0000], sp
    nop
    nop
    nop
    dec e
    nop
    ld l, e
    nop
    ld bc, $0000
    nop
    nop
    jr jr_00e_5f49

jr_00e_5f49:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $64
    ld [hl], $06
    ld a, [bc]
    jr nz, jr_00e_5f56

jr_00e_5f56:
    ld h, l
    nop
    ld bc, $0378
    ret nc

    nop
    stop
    nop
    nop
    nop
    nop
    dec e
    nop
    ld l, e
    nop
    ld bc, $0000
    nop
    nop
    jr jr_00e_5f6e

jr_00e_5f6e:
    nop
    nop
    nop
    nop
    ld [hl+], a
    dec b
    ld b, $64
    ld [hl], $06
    ld a, [bc]
    jr nz, jr_00e_5f7b

jr_00e_5f7b:
    ld h, l
    nop
    ld bc, $0378
    ret nc

    nop
    stop
    nop
    nop
    nop
    nop
    dec e
    ld a, [hl-]
    ld bc, $0605
    call c, Call_000_1d20
    nop
    inc d
    ld bc, $0522
    ld b, $64
    ld a, $00
    ccf
    ld b, $32
    ld a, $00
    ccf
    ld b, $32
    ld a, $00
    ccf
    ld b, $32
    jr nz, jr_00e_5fa8

jr_00e_5fa8:
    inc d
    nop
    dec e
    nop
    inc d
    ld bc, $0522
    ld b, $64
    ld a, $01
    ccf
    ld b, $32
    ld a, $01
    ccf
    ld b, $32
    ld a, $01
    ccf
    ld b, $32
    jr nz, jr_00e_5fc3

jr_00e_5fc3:
    inc d
    nop
    dec e
    ld a, [hl-]
    ld [bc], a
    dec b
    ld b, $dc
    jr nz, jr_00e_5fe9

    inc hl
    ld a, $02
    dec e

Jump_00e_5fd1:
    push hl
    ld hl, $c320
    ld de, $c300
    ld b, $20

jr_00e_5fda:
    ld a, [hl+]
    ld [de], a
    inc de
    dec b
    jr nz, jr_00e_5fda

    pop hl
    ret


Jump_00e_5fe2:
    ld a, [hl+]
    or a
    jp z, Jump_00e_5ff2

    cp $01

jr_00e_5fe9:
    jp z, Jump_00e_5ffa

    cp $02
    jp z, Jump_00e_6002

    ret


Jump_00e_5ff2:
    ld a, [$c184]
    dec a
    ld [$c184], a
    ret


Jump_00e_5ffa:
    ld a, [$c184]
    inc a
    ld [$c184], a
    ret


Jump_00e_6002:
    xor a
    ld [$c6f1], a
    ld a, $ff
    ld [$c504], a
    ld [$c48b], a
    push hl
    ld de, $c320
    ld b, $07

jr_00e_6014:
    ld hl, $0000
    add hl, de
    ld a, [hl]
    and $80
    jr z, jr_00e_6026

    ld hl, $000b
    add hl, de
    ld a, [hl]
    cp $e1
    jr z, jr_00e_6033

jr_00e_6026:
    ld a, e
    add $20
    ld e, a
    ld a, d
    adc $00
    ld d, a
    dec b
    jr nz, jr_00e_6014

    pop hl
    ret


jr_00e_6033:
    ld hl, $0000
    add hl, de
    ld [hl], $00
    pop hl
    ret


Jump_00e_603b:
    call Call_000_3ed2
    ld a, [$c1c0]
    sub $01
    ld [$c1c0], a
    call Call_00e_63cc
    call Call_000_3ed2
    ld a, [$c1c0]
    add $02
    ld [$c1c0], a
    call Call_00e_63cc
    call Call_000_3ed2
    ld a, [$c1c0]
    sub $02
    ld [$c1c0], a
    call Call_00e_63cc
    call Call_000_3ed2
    ld a, [$c1c0]
    add $01
    ld [$c1c0], a
    call Call_00e_63cc
    ret


Jump_00e_6074:
    ld b, $10

jr_00e_6076:
    push bc
    ld a, [$c1c0]
    inc a
    ld [$c1c0], a
    call Call_00e_63cc
    call Call_000_3ed2
    call Call_000_3ed2
    pop bc
    dec b
    jr nz, jr_00e_6076

    ret


Jump_00e_608c:
    ld b, $10

jr_00e_608e:
    push bc
    ld a, [$c1c0]
    dec a
    ld [$c1c0], a
    call Call_00e_63cc
    call Call_000_3ed2
    call Call_000_3ed2
    pop bc
    dec b
    jr nz, jr_00e_608e

    ret


Jump_00e_60a4:
    ld a, [hl+]
    ld [$c17c], a
    xor a
    ld [$c17d], a
    ld a, [hl+]
    ld [$c11f], a
    push hl
    call Call_000_0664
    pop hl
    ret


Jump_00e_60b6:
    push hl
    call Call_000_06fb
    pop hl
    ret


Jump_00e_60bc:
    ld de, $c380
    ld a, $96
    jr jr_00e_60eb

Jump_00e_60c3:
    ld de, $c3a0
    ld a, $9e
    jr jr_00e_60eb

Jump_00e_60ca:
    ld de, $c3c0
    ld a, $98
    jr jr_00e_60eb

Jump_00e_60d1:
    ld de, $c300
    ld a, $92
    jr jr_00e_60eb

Jump_00e_60d8:
    ld de, $c320
    ld a, $93
    jr jr_00e_60eb

Jump_00e_60df:
    ld de, $c340
    ld a, $94
    jr jr_00e_60eb

Jump_00e_60e6:
    ld de, $c360
    ld a, $95

jr_00e_60eb:
    push hl
    ld c, l
    ld b, h
    push af
    pop af
    ld hl, $000b
    add hl, de
    ld [hl], a
    ld a, [$c30e]
    ld hl, $000e
    add hl, de
    ld [hl], a
    ld hl, $0000
    add hl, de
    ld [hl], $c0
    ld hl, $0011
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $0013
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $0009
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    inc bc
    ld hl, $0006
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $0007
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $000f
    add hl, de
    ld [hl], $ff
    ld hl, $001d
    add hl, de
    ld a, [bc]
    ld [hl+], a
    inc bc
    ld a, [bc]
    ld [hl], a
    pop hl
    ld de, $000a
    add hl, de
    ret


Jump_00e_6142:
    ld a, [hl]
    ld [$c1c3], a
    srl a
    srl a
    srl a
    ld [$c1b6], a
    ld a, [hl+]
    and $07
    ld [$c1b7], a
    push hl
    call Call_000_06b5
    pop hl
    ret


Jump_00e_615b:
    push hl
    ld c, $1f
    call Call_000_067a
    pop hl
    ret


Jump_00e_6163:
    push hl
    ld c, $40
    call Call_000_067a
    pop hl
    ret


Jump_00e_616b:
    ld a, [hl+]
    ld b, a

jr_00e_616d:
    push bc
    call Call_000_3ed2
    pop bc
    dec b
    jr nz, jr_00e_616d

    ret


Jump_00e_6176:
    ld a, [hl+]
    ld [$c11f], a
    push hl
    call Call_000_0641
    pop hl
    call Call_00e_63cc
    call Call_00e_63cc
    ret


Jump_00e_6186:
    ld de, $c380
    jr jr_00e_61a7

    ld de, $c3a0
    jr jr_00e_61a7

Jump_00e_6190:
    ld de, $c3c0
    jr jr_00e_61a7

Jump_00e_6195:
    ld de, $c300
    jr jr_00e_61a7

Jump_00e_619a:
    ld de, $c320
    jr jr_00e_61a7

Jump_00e_619f:
    ld de, $c340
    jr jr_00e_61a7

Jump_00e_61a4:
    ld de, $c360

jr_00e_61a7:
    push hl
    ld c, l
    ld b, h
    ld hl, $0006
    add hl, de
    ld a, [bc]
    ld [hl], a
    inc bc
    ld hl, $0007
    add hl, de
    ld a, [bc]
    ld [hl], a
    pop hl
    inc hl
    inc hl
    call Call_00e_63cc
    ret


Jump_00e_61be:
    ld de, $6485
    ld c, $f8
    jr jr_00e_6202

Jump_00e_61c5:
    ld de, $404d
    ld c, $f8
    jr jr_00e_6202

Jump_00e_61cc:
    ld de, $4046
    ld c, $f8
    jr jr_00e_6202

Jump_00e_61d3:
    ld de, $403c
    ld c, $f8
    jr jr_00e_6202

Jump_00e_61da:
    ld de, $4033
    ld c, $f8
    jr jr_00e_6202

Jump_00e_61e1:
    ld de, $4022
    ld c, $f8
    jr jr_00e_6202

Jump_00e_61e8:
    ld de, $4000
    ld c, $f8
    jr jr_00e_6202

Jump_00e_61ef:
    ld de, $4008
    ld c, $f8
    jr jr_00e_6202

Jump_00e_61f6:
    ld de, $400f
    ld c, $f8
    jr jr_00e_6202

Jump_00e_61fd:
    ld de, $4018
    ld c, $f8

jr_00e_6202:
    call Call_00e_621f
    push hl
    ld hl, $1000
    call Call_000_0610
    pop hl
    ld a, [hl+]
    ld e, a
    ld a, [hl+]
    ld d, a
    push hl
    ld a, [$c1f8]
    ld l, a
    ld a, [$c1f9]
    ld h, a
    call Call_000_0623
    pop hl
    ret


Call_00e_621f:
    push bc
    push de
    push hl
    ld hl, $1000
    ld de, $6431
    ld c, $fa
    call Call_000_0610
    pop hl
    pop de
    pop bc
    ret


Jump_00e_6231:
    ld de, $c380
    jr jr_00e_6252

    ld de, $c3a0
    jr jr_00e_6252

Jump_00e_623b:
    ld de, $c3c0
    jr jr_00e_6252

Jump_00e_6240:
    ld de, $c300
    jr jr_00e_6252

Jump_00e_6245:
    ld de, $c320
    jr jr_00e_6252

Jump_00e_624a:
    ld de, $c340
    jr jr_00e_6252

Jump_00e_624f:
    ld de, $c360

jr_00e_6252:
    ld a, [hl+]
    push hl
    cp $80
    jr c, jr_00e_627a

    and $7f
    ld b, a

jr_00e_625b:
    push bc
    push de
    ld hl, $0009
    add hl, de
    ld a, [hl]
    sub $02
    and $1f
    ld [hl], a
    call Call_000_3ed2
    call Call_000_3ed2
    call Call_000_3ed2
    call Call_00e_63cc
    pop de
    pop bc
    dec b
    jr nz, jr_00e_625b

    pop hl
    ret


jr_00e_627a:
    ld b, a

jr_00e_627b:
    push bc
    push de
    ld hl, $0009
    add hl, de
    ld a, [hl]
    add $02
    and $1f
    ld [hl], a
    call Call_000_3ed2
    call Call_000_3ed2
    call Call_000_3ed2
    call Call_00e_63cc
    pop de
    pop bc
    dec b
    jr nz, jr_00e_627b

    pop hl
    ret


Jump_00e_629a:
    ld a, [hl+]
    ld c, a
    push hl
    call Call_000_026b
    pop hl
    ret


Jump_00e_62a2:
    ld de, $c380
    jr jr_00e_62c3

Jump_00e_62a7:
    ld de, $c3a0
    jr jr_00e_62c3

    ld de, $c3c0
    jr jr_00e_62c3

Jump_00e_62b1:
    ld de, $c300
    jr jr_00e_62c3

Jump_00e_62b6:
    ld de, $c320
    jr jr_00e_62c3

Jump_00e_62bb:
    ld de, $c340
    jr jr_00e_62c3

Jump_00e_62c0:
    ld de, $c360

jr_00e_62c3:
    ld a, [hl+]
    push hl
    ld b, a

jr_00e_62c6:
    push bc
    push de
    ld hl, $0009
    add hl, de
    ld a, [hl]
    add $10
    and $1c
    ld bc, $63d2
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
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
    ld hl, $0006
    add hl, de
    ld [hl], $01
    ld hl, $0007
    add hl, de
    ld a, [hl]
    sub $02
    and $3f
    ld [hl], a
    call Call_000_3ed2
    call Call_00e_63cc
    pop de
    pop bc
    dec b
    jr nz, jr_00e_62c6

    pop hl
    ret


Jump_00e_630a:
    ld de, $c380
    jr jr_00e_632b

Jump_00e_630f:
    ld de, $c3a0
    jr jr_00e_632b

Jump_00e_6314:
    ld de, $c3c0
    jr jr_00e_632b

Jump_00e_6319:
    ld de, $c300
    jr jr_00e_632b

Jump_00e_631e:
    ld de, $c320
    jr jr_00e_632b

Jump_00e_6323:
    ld de, $c340
    jr jr_00e_632b

Jump_00e_6328:
    ld de, $c360

jr_00e_632b:
    ld a, [hl+]
    push hl
    ld b, a

jr_00e_632e:
    push bc
    push de
    ld hl, $0009
    add hl, de
    ld a, [hl]
    and $1c
    ld bc, $63d2
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
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
    ld hl, $0006
    add hl, de
    ld [hl], $01
    ld hl, $0007
    add hl, de
    ld a, [hl]
    add $02
    and $3f
    ld [hl], a
    call Call_000_3ed2
    call Call_00e_63cc
    pop de
    pop bc
    dec b
    jr nz, jr_00e_632e

    pop hl
    ret


Jump_00e_6370:
    ld de, $c380
    jr jr_00e_6387

Jump_00e_6375:
    ld de, $c300
    jr jr_00e_6387

Jump_00e_637a:
    ld de, $c320
    jr jr_00e_6387

Jump_00e_637f:
    ld de, $c340
    jr jr_00e_6387

Jump_00e_6384:
    ld de, $c360

jr_00e_6387:
    ld a, [hl+]
    push hl
    ld b, a

jr_00e_638a:
    push bc
    push de
    ld hl, $0009
    add hl, de
    ld a, [hl]
    and $1c
    ld bc, $63f2
    add c
    ld c, a
    ld a, $00
    adc b
    ld b, a
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
    ld hl, $0006
    add hl, de
    ld [hl], $02
    ld hl, $0007
    add hl, de
    ld a, [hl]
    add $02
    and $3f
    ld [hl], a
    call Call_000_3ed2
    call Call_00e_63cc
    pop de
    pop bc
    dec b
    jr nz, jr_00e_638a

    pop hl
    ret


Call_00e_63cc:
Jump_00e_63cc:
    push hl
    call Call_000_06d6
    pop hl
    ret


    nop
    nop
    rlca
    nop
    ld b, $00
    ld b, $00
    rlca
    nop
    nop
    nop
    ld b, $00
    ld a, [$00ff]
    nop
    ld sp, hl
    rst $38
    ld a, [$faff]
    rst $38
    ld sp, hl
    rst $38
    nop
    nop
    ld a, [$06ff]
    nop
    nop
    nop
    ld c, $00
    inc c
    nop
    inc c
    nop
    ld c, $00
    nop
    nop
    inc c
    nop
    db $f4
    rst $38
    nop
    nop
    ld a, [c]
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    ld a, [c]
    rst $38
    nop
    nop
    db $f4
    rst $38
    inc c
    nop

Jump_00e_6412:
    ld a, [$c30e]
    push af
    ld de, $c300
    ld bc, $0100

jr_00e_641c:
    xor a
    ld [de], a
    inc de
    dec bc
    ld a, b
    or c
    jr nz, jr_00e_641c

    pop af
    ld [$c30e], a
    ret


Jump_00e_6429:
    ld a, [hl+]
    ld [$c1c6], a
    push hl
    call Call_000_0713
    pop hl
    ret


    ld b, d
    ld b, c
    ld c, [hl]
    ld c, e
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
