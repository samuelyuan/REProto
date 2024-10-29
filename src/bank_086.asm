SECTION "ROM Bank $086", ROMX[$4000], BANK[$86]

    jr @+$01

    db $18, $f7
    db $10

jr_086_4005:
    rst $38
    db $10

jr_086_4007:
    rst $38
    jr @-$07

    jr @+$01

    jr jr_086_4005

    jr jr_086_4007

    jr @-$07

    jr @-$07

    jr jr_086_4095

    jr @-$07

    jr @+$01

    jr @+$01

    jr @+$01

    jr @-$0f

    ld e, b
    xor a
    ld e, h
    cp d
    jr @-$0f

    inc c
    ei
    inc a
    db $db
    cp h
    ld e, a
    cp h

Jump_086_402d:
    ld c, a
    sbc h
    ld l, a
    inc e
    rst $28
    ld e, $ed
    ld e, $ef
    adc [hl]
    ld a, l
    ld c, a
    cp h
    ld e, h
    xor a
    sbc $2f
    ld a, [hl]
    sbc a
    rst $38
    ld c, h
    cp $1d
    rst $38
    call c, $ffff
    jr nz, @-$23

    nop
    rst $38
    db $10
    rst $28
    ld d, l
    xor d
    nop
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    or d
    ld c, l
    cp $ff
    cp $ff
    cp [hl]
    rst $38
    rst $38
    ld a, $7f
    cp $7f
    cp $ff
    ld d, a
    ld a, a
    add $ef
    ld d, [hl]
    rst $38
    ld c, d
    cp a
    ld d, d
    ld e, a
    or d
    rra
    rst $38
    ccf
    rst $18
    rst $30
    dec bc
    cpl
    pop af
    ld a, e
    and l
    rla
    ld sp, hl
    sub a
    ld l, e
    xor a
    ld d, e
    ccf
    rst $00
    ld e, a
    xor a
    ccf
    rst $08
    ld a, a
    set 1, e
    ld [hl], a
    rst $30
    db $eb
    rst $30
    ei
    rst $30
    adc e
    rst $38
    ld b, e
    rst $38

jr_086_4095:
    ld h, e
    rst $38
    ld a, b
    rst $38
    ld a, h
    ld [bc], a
    db $fd
    db $e4
    dec de
    dec bc
    db $f4
    nop
    rst $38
    db $f4
    dec bc
    rst $38
    nop
    or [hl]
    ld c, c
    rst $38
    ld hl, sp+$0f
    rlca
    ld a, [bc]
    nop
    ldh a, [rP1]
    ld a, a
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    rra
    rst $38
    ld [hl-], a
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_086_40f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_086_4103

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_086_4113

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_086_4123

    ld [hl-], a

jr_086_40f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_086_4133

    ld a, [hl-]
    dec sp
    inc a

Jump_086_40fd:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_086_4103:
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
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_086_4113:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_086_4123:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_086_4133:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a

Jump_086_4180:
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_086_41f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_086_4203

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_086_4213

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_086_4223

    ld [hl-], a

jr_086_41f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_086_4233

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0601

jr_086_4203:
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0101

jr_086_4213:
    ld bc, $0606
    ld bc, $0101
    rlca
    rlca
    rlca
    nop
    dec b
    dec b
    dec b
    ld bc, $0606

jr_086_4223:
    ld b, $01
    ld b, $01
    ld bc, $0701
    ld bc, $0207
    dec b
    dec b
    dec b
    ld bc, $0106

jr_086_4233:
    ld b, $06
    ld b, $01
    ld b, $01
    ld bc, $0701
    inc b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0707
    inc b
    nop
    dec b
    dec b
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    ld bc, $0707
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b

Jump_086_427d:
    dec b
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    rlca
    rlca
    rlca
    ld bc, $0707
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld bc, $0701
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    dec b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld b, $06
    ld b, $01
    rlca
    rlca
    ld bc, $0507
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    rlca
    ld bc, $0101
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rrca
    rrca
    rrca
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    rrca
    dec c
    dec c
    rrca
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    dec c
    rrca
    rrca
    rrca
    dec c
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    rrca

Jump_086_433f:
    rrca
    rra
    ldh [rNR31], a
    ld h, h
    adc e
    ld [hl], h
    adc l
    ld [hl], d
    call Call_086_6d32
    sub d
    ld b, $f9
    ld h, $d9
    or a
    ld c, b
    di
    inc c
    di
    inc c
    ei
    inc b
    ei
    inc b
    cp c
    ld b, [hl]
    cp c
    ld b, [hl]
    db $fd
    ld [bc], a
    nop
    rst $38
    add b
    rst $38
    add c
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ld b, b
    rst $38
    nop
    ld a, a
    nop
    rrca
    ld b, b
    add e
    ld de, $31f0
    ld a, b
    ld de, $103e
    rra
    nop
    ld c, a
    nop
    daa
    sub b
    inc hl
    adc h
    dec de
    ld [$3c1f], sp
    rrca
    dec h
    ld b, $61
    ld [bc], a
    or b
    nop
    db $10
    and b
    db $e4
    sub d
    cp h
    jp $e987


    rst $18
    pop hl
    call z, $4ef1
    pop af
    ld [hl], a
    add sp, $37
    add sp, $2f
    ldh a, [$3f]
    ldh a, [rNR22]
    ldh a, [rNR22]
    ld hl, sp+$1f
    ld hl, sp+$0f
    ld hl, sp+$0b
    db $fc
    rlca
    db $fc
    ld l, $f5
    add h
    rst $38
    jp nz, $86bf

    ei
    ld b, h
    ei
    push hl
    ld e, e
    pop af
    ld l, l
    or d
    ld l, l
    dec hl

Jump_086_43bf:
    db $f4

jr_086_43c0:
    jr nc, jr_086_43c0

    dec d
    ld a, [$fe11]
    jr @+$01

    adc b
    ld a, a
    inc c
    rst $38
    ld b, $ff
    ld b, $ff
    ld a, c
    add [hl]
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    inc a
    ld b, e
    ld a, h
    inc bc
    ld e, [hl]
    ld hl, $21de
    rst $20
    db $10
    rst $28
    db $10
    rst $28
    db $10
    ld [hl], a
    ld [$09f6], sp
    ld [hl], e
    adc h
    ld a, e
    add h
    add hl, de
    add $bd
    ld b, d
    sbc h
    ld h, e
    sbc [hl]
    ld h, c
    ld c, $f1
    ld c, [hl]
    or c
    ld h, a
    sbc b
    add l
    ld a, [$fb84]
    add d

Jump_086_43ff:
    db $fd
    add b
    and a
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_086_440b

jr_086_440b:
    ld hl, sp-$08
    rra
    ld hl, sp+$1f
    dec c
    adc $0e
    ld l, l
    ld h, $47

jr_086_4416:
    daa
    ld [hl], $17
    inc sp
    inc de
    inc sp
    dec de
    ld de, $130d
    dec b
    ld a, a
    ld bc, $033e
    db $fc
    inc bc
    cp l
    rlca
    db $fd
    rlca
    db $db
    inc bc
    rst $28
    ld b, d
    ld a, a
    inc b
    ld a, e
    add hl, bc
    rst $30

jr_086_4434:
    inc sp
    swap e
    rst $28
    and a
    ld a, a
    rst $08
    rst $38
    adc a
    cp $1e
    db $fc
    sub a
    ld l, b
    sbc $21
    rst $18
    jr nz, jr_086_4416

    jr nc, jr_086_4498

    or b
    rst $20
    jr jr_086_4434

    jr @-$17

    jr @-$07

    ld [$0cf3], sp
    ld [hl], e
    adc h
    ld a, e
    add h
    ld a, e
    add h
    ld a, c
    add [hl]
    sbc b
    ld b, a
    cp b
    ld b, a
    db $ec
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    call z, Call_086_4623
    and c
    db $76
    add c
    ldh a, [rSB]
    pop de
    nop
    di
    nop
    ei
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, h
    nop
    sub e
    ld a, h
    sub b
    ld a, a
    ret nz

    ccf
    ld e, c
    cp [hl]
    ld sp, hl
    ld e, $7b
    sbc h
    xor $1d
    inc d
    ld l, a
    inc [hl]
    ld c, a
    ld a, [hl]
    rlca
    ld a, [hl-]
    rlca
    ld a, [hl-]
    rlca

jr_086_4498:
    cp [hl]
    add e
    sbc e
    add a

jr_086_449c:
    sbc l
    jp $c35f


    nop
    ld b, c
    inc bc
    ld b, b
    ld b, e
    jr nz, @+$03

    jr nz, jr_086_44ba

    jr nz, @+$25

    db $10
    rlca
    db $10
    rrca
    db $10
    sub a
    ld [$08f7], sp
    di
    inc c
    ei
    inc b
    ei
    inc b

jr_086_44ba:
    ld sp, hl
    ld b, $7d
    add d
    ld a, l
    add d
    ld a, h
    add e
    cp h
    ld b, e
    ld a, $41
    inc a
    ld b, e
    sbc $21
    rst $18
    jr nz, jr_086_449c

    jr nc, @-$2f

    jr nc, jr_086_44d1

jr_086_44d1:
    jr jr_086_44d3

jr_086_44d3:
    jr jr_086_44dd

    db $10
    ld [$0808], sp
    inc c
    inc b
    ld c, b
    inc b

jr_086_44dd:
    and h
    inc b
    sub d
    nop
    sbc $00
    ld a, [hl]
    nop
    ld e, a
    nop
    ld a, a
    nop
    ccf
    nop
    or a
    nop
    cp e
    db $10
    ld c, a
    ld [$0857], sp
    scf
    inc c
    inc hl
    inc c
    or e
    inc c
    sub a
    inc b
    sub a
    ld b, $d9
    ld b, d
    xor l
    cp b
    rst $38
    rst $38
    ld a, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor b
    rst $38
    rst $38
    rst $38

jr_086_4511:
    nop

jr_086_4512:
    rst $38
    nop

jr_086_4514:
    ld e, [hl]
    and c
    ld b, a
    or b
    ld h, a
    cp b
    db $e3
    inc [hl]
    pop af
    rst $08
    pop af
    sbc $f9
    or $f8
    rst $38
    db $fd
    ei
    db $fd
    rst $38
    rst $38
    db $fc
    di
    db $ec
    ldh [$7f], a
    ld [hl], b
    rst $28
    ldh a, [rIE]
    ld sp, hl
    rst $38
    rst $38
    ret nz

    rst $38
    db $ed
    rst $38
    sub b
    db $db
    nop
    daa
    nop
    ld a, [$cf00]
    jr nc, jr_086_4512

jr_086_4543:
    jr nc, jr_086_4514

jr_086_4545:
    jr nc, @+$71

    sub b
    rst $28
    db $10
    db $ec
    db $10
    rst $20
    jr @-$07

    ld [$ff08], sp
    jr jr_086_4543

    jr jr_086_4545

    inc b
    rst $38
    inc c
    rst $30
    inc c
    rst $30
    inc b
    rst $30
    ld [bc], a
    rst $38
    add [hl]
    ei
    add [hl]
    ei
    jp z, $86b3

    ei
    adc l
    di
    xor a
    pop de
    xor l
    pop de
    adc h
    pop af
    cp h
    ret nz

    sbc $e0
    adc $f0
    adc $f0
    ld e, [hl]
    ldh [$7e], a

Call_086_457b:
    ldh [$7e], a
    ldh [$2f], a
    ldh a, [$d0]
    jr nz, jr_086_45d3

    jr nz, jr_086_45c5

    jr nc, jr_086_45cf

    jr nc, jr_086_4511

jr_086_4589:
    jr nc, @+$2b

    db $10
    ld hl, $0018
    jr jr_086_45fc

    sbc h
    ei
    inc c
    ld a, c
    adc h
    ld h, h

jr_086_4597:
    sbc h
    ld a, a
    adc h
    ld l, l
    sub [hl]
    ld h, e
    sbc [hl]
    ld [hl+], a
    sbc $f4
    ld [bc], a
    ld a, a
    add b
    ld l, [hl]
    add c
    ld l, [hl]
    add c
    ld l, $c1
    or [hl]
    ld b, c

jr_086_45ac:
    or a
    ld b, b
    and a
    ld b, b
    call nz, $c820
    jr nz, jr_086_4589

    jr nz, jr_086_4597

jr_086_45b7:
    db $10

jr_086_45b8:
    pop hl
    db $10
    db $eb
    db $10

jr_086_45bc:
    ld [c], a
    jr @-$1d

    jr jr_086_45b8

    ld [$08f7], sp
    ld d, c

jr_086_45c5:
    xor h
    jr jr_086_45ac

    dec hl
    call nc, $d628
    ld a, c
    add [hl]
    dec a

jr_086_45cf:
    jp nz, $9240

    ld b, b

jr_086_45d3:
    inc bc
    nop
    ld l, c
    nop
    daa
    nop
    and l
    nop
    and c
    nop
    jr nc, jr_086_45df

jr_086_45df:
    ld de, $58a7
    rst $20
    jr jr_086_45bc

    jr z, jr_086_45b7

    cpl
    db $d3
    inc l
    ld l, e
    sub h
    ld l, e
    sub h
    db $eb
    sub h
    add b
    add $c0
    ld e, $c0
    ld l, e
    ret nz

    ld l, a
    pop hl
    ld d, $e1
    add hl, sp

jr_086_45fc:
    ldh a, [$2d]
    ldh a, [$0d]
    db $10
    rst $38
    nop
    ld a, a
    nop
    ld a, [hl]
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

    rst $38
    ld c, b

jr_086_4612:
    rst $38
    ld a, [bc]
    cp a
    jr nz, @+$37

    jp z, Jump_086_7a95

    inc de
    db $fc
    sbc e
    ld h, h
    ld e, d
    and l
    ret


    ld a, $ed

Call_086_4623:
    cp d
    rst $28
    ld d, h
    rst $30
    ld c, [hl]
    rst $30
    rst $08
    rst $30
    ld l, a
    inc bc

jr_086_462d:
    rst $38

jr_086_462e:
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    ret nz

    rst $38
    cp $ca
    cp $38
    inc a
    db $10
    rla
    nop
    rlca
    inc bc
    rst $08
    jr nc, jr_086_4612

jr_086_4643:
    jr nc, jr_086_462e

    db $10
    xor a
    ld d, b
    xor c
    ld d, b
    db $e3
    jr jr_086_462d

    jr jr_086_4643

    ld [$fc0a], sp
    rrca
    db $fc
    dec e
    xor $0c
    rst $38
    ld b, $ff
    ld b, $ff
    add [hl]
    ld a, a
    add [hl]
    ld a, a
    ld sp, hl
    ld b, $b9
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld a, a
    ld c, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ccf
    and b
    ccf
    ldh [$3f], a
    jr nz, @+$41

    sub b
    ccf
    ret nc

    ccf
    ldh a, [$1f]
    ldh a, [$1f]
    ld a, d
    sbc a

jr_086_4694:
    ld a, [hl+]
    rra
    add sp, $1f
    ld hl, sp+$0f
    db $fc
    rrca
    db $f4
    rrca
    db $f4
    rrca
    add e
    inc b

jr_086_46a2:
    ld h, e
    inc b
    pop hl
    ld b, $f5
    ld [bc], a
    db $ed
    ld [bc], a
    ld h, c
    add d
    ld b, c
    add d
    ld b, b
    add e
    cp l
    jp $c13f


    db $ed
    ld d, c

jr_086_46b6:
    add $79
    adc $71
    bit 6, h
    add hl, hl
    or $2b
    db $f4
    rst $18
    jr nz, jr_086_46a2

    jr nz, jr_086_4694

    jr nc, jr_086_46b6

    db $10
    xor $11
    ld l, a
    db $10
    ld [hl], a
    ld [$0857], sp
    ld d, a
    ld [$00df], sp
    rlc h
    ei
    inc b
    ld h, e
    add h
    ld c, l
    and d
    dec d
    ld [c], a
    dec e
    ld [c], a
    dec [hl]
    jp nz, $d22d

    cp [hl]
    ld b, c
    sbc [hl]
    ld h, c
    adc [hl]
    ld h, c
    sbc $21
    sbc $21
    rst $08
    jr nc, jr_086_46f1

jr_086_46f1:
    stop
    sub b
    nop
    sbc b
    nop
    sbc b
    nop
    cp b
    nop
    call c, $dc00
    add h
    ld [c], a
    add b
    rst $38

jr_086_4702:
    nop
    rst $38
    or b
    rst $38
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ret z

    add hl, de
    xor [hl]
    ld a, [de]
    push hl
    add a
    ld a, h
    add a
    db $ec
    rst $00
    ld a, [hl-]
    jp $f3fe


    rst $08
    di
    ld l, a
    db $eb
    ld [hl], l
    db $fd
    db $e3
    push af
    rst $38
    dec [hl]
    rlc b
    rst $38
    nop
    rst $30
    nop
    cp $c0
    ccf
    rst $10
    nop
    xor [hl]
    add b
    call c, $f104
    nop
    ld b, a
    rst $38
    ld b, a
    rst $38
    daa
    rst $18
    rla
    rst $28
    inc hl
    rst $08
    ld b, e
    adc a
    ld h, a
    adc e
    and a
    ld c, e
    rst $20
    dec bc
    and l

jr_086_4753:
    ld b, e
    add c
    ld h, a
    sub c
    ld h, a
    sub c
    ld h, l
    and l
    ld d, c
    and c
    ld d, c
    ld hl, sp+$01
    ld a, [c]

jr_086_4761:
    ld bc, $01f0
    ld [c], a

jr_086_4765:
    db $10
    add sp, $10

jr_086_4768:
    jr nz, jr_086_4702

    ld b, b
    cp b
    ld [hl], h
    adc b
    ld [hl], b
    adc h
    jr nc, @-$32

    ld d, b
    adc h
    call c, $da84
    add h
    add sp, -$7a
    add sp, -$7a
    xor b
    add $80
    add $ec
    jp $c37c


jr_086_4784:
    ld [hl], h
    jp $c374


    ld [hl], h
    db $e3

jr_086_478a:
    ld [hl], b
    db $e3
    ld l, h
    di
    cpl
    ldh a, [$d2]
    jr nz, jr_086_4753

    jr nc, jr_086_4761

    jr nc, jr_086_4765

    jr nc, jr_086_4768

    jr nc, @-$19

    jr jr_086_4784

jr_086_479d:
    jr @-$17

    jr jr_086_4784

    jr jr_086_478a

    jr @-$09

    ld [$08f4], sp
    ldh a, [$0c]
    pop af
    inc c
    ld hl, sp+$04
    ld a, [$fa04]
    inc b
    call $ed32
    ld [de], a
    ld a, l
    add d
    add hl, sp
    add d

jr_086_47ba:
    ld a, c
    add d
    ld a, d
    add c
    ld e, $c1
    jr @-$3d

    xor b
    ld b, c
    cp h
    ld b, c
    cp l
    ld b, b
    sbc [hl]
    ld h, b
    sbc [hl]
    ld h, b
    rst $18
    jr nz, jr_086_479d

    jr nc, @-$37

    jr c, jr_086_47ba

    jr @+$69

    sbc b
    ld h, a
    sbc b
    rst $20
    jr @-$18

    add hl, de
    rst $20
    jr @-$57

    ld e, b
    nop
    dec bc
    nop
    dec c
    nop
    dec l
    nop
    daa
    nop
    daa
    nop
    add a
    nop
    sub a
    ld [bc], a
    sub l
    ld [bc], a
    push de
    ld [bc], a
    reti


    ld [bc], a
    ld l, c
    ld bc, $016e
    ld l, [hl]
    ld bc, $2166
    ld b, $00
    scf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$51
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld d, a
    rst $38
    ld h, e
    rst $38
    pop hl
    ld h, d
    rst $20
    ld hl, $a7e1
    pop af
    and l
    rst $30
    pop af
    ei
    or $fb
    rst $38
    rst $38
    ld hl, sp+$7f
    cp c
    ld bc, $00fe
    rst $18
    nop
    ei
    add b
    ld a, a
    ret nz

jr_086_483b:
    ld bc, $0080
    pop bc
    nop
    or d
    ld e, a
    sbc e
    db $76
    sub [hl]
    ld a, e
    sub a
    ei
    and a
    jp c, $cdb3

    db $e3
    ld e, a
    ld d, c
    xor a
    ret


    scf
    ld a, c
    rst $00
    ld l, c
    sbc a
    ld a, c
    adc $58
    cp a
    jr c, jr_086_483b

    ld a, h
    and e
    ld a, $e5
    or h
    ld l, a
    cp h
    ld l, a
    db $fc
    ccf
    inc a
    rst $28
    ld a, h
    daa
    ld a, [hl]
    sub l
    ld a, [hl]
    inc de
    ld e, [hl]
    scf
    ld d, [hl]
    dec sp
    ld e, $73
    ld e, $63
    ld [hl], $5d
    ld a, [hl-]
    dec b
    inc sp
    inc c
    ld sp, $290e
    rla
    add hl, de
    cpl
    add hl, de
    ld h, $09
    rra
    add hl, de
    rlca
    add hl, de
    rlca
    dec e
    ld b, $0c
    rla
    inc c
    rla
    inc b
    rrca
    ld c, $05

jr_086_4894:
    ld [bc], a
    rrca

jr_086_4896:
    ld a, [bc]
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    inc bc
    ld b, $b8
    rlca
    or b
    rlca
    cp b
    rlca
    cp b
    rlca
    ld e, b
    rlca
    call c, $dc03
    inc bc
    inc e
    inc bc
    ld [bc], a
    ld bc, $0201
    ld bc, $0002
    inc bc
    nop
    ld bc, $0001
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    add b
    nop
    add b
    add b
    add b
    add b
    nop
    nop
    add b
    ld b, b
    add b
    ld b, b
    add b

jr_086_48d2:
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    jr nz, jr_086_48fb

    ld b, b
    jr nz, jr_086_493e

    jr nz, jr_086_48d2

    jr nz, jr_086_4894

    jr nz, jr_086_4896

    jr nz, @-$2e

    db $10
    pop hl
    db $10
    pop af
    db $10
    pop af
    db $10
    ld sp, hl
    db $10
    db $ed
    ld [$08f1], sp
    ld sp, hl
    jr @-$11

    inc a
    ret


    inc a
    srl [hl]

jr_086_48fb:
    ret


    ld a, $c5
    rst $38
    add b
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    inc b
    cp $00
    ld c, $00
    ld a, [bc]
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
    jr nz, @+$01

    ld h, e
    cp a
    rlca
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sbc a
    ld [hl], e
    sbc a
    ld a, c
    ld e, a
    xor d
    srl l

jr_086_4928:
    rst $38
    ret


    rst $18
    db $ed
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $00
    rst $28
    ld d, a
    rlca
    ld sp, hl
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    ld hl, sp+$07

jr_086_493e:
    ret c

    nop
    ld a, [c]
    ld a, l
    ld a, [c]
    ld a, l
    ldh a, [$df]
    ldh a, [$7f]
    ld hl, sp+$76
    ld a, [c]
    ld a, l
    ld [hl], b
    rst $38
    ld [hl], c
    sbc $78
    adc a
    db $fc
    ld l, e
    db $fc
    xor e
    db $ec
    or a
    db $f4
    cp e
    or b
    rst $28
    or b
    rst $28
    or b
    rst $08
    or b
    rst $28
    or b
    ld c, a
    ldh a, [$5f]
    ldh a, [$5f]
    ldh a, [$3f]
    ld hl, sp+$57
    ld hl, sp+$57
    db $fc
    ld c, a
    ld l, [hl]
    push de
    ld c, [hl]
    pop af
    ld c, d
    cp l
    ld c, [hl]
    ei
    ld l, d
    sbc a
    ld l, $f3
    ld l, $f5
    xor h
    ld [hl], e
    rst $20
    jr c, jr_086_4928

    cp $6d
    sub [hl]
    xor h
    ld d, a
    add l
    ld a, [hl]
    and l
    sbc $85
    ld a, [$aed5]
    sub b
    rst $28
    jp nc, $923d

    ld l, l
    ret nc

    cpl
    jp nc, Jump_086_522d

    rst $28
    ld c, d
    push af
    ld h, d
    rst $18
    ld [$ed95], a
    db $d3
    rst $28
    ld a, l

Call_086_49a6:
    rst $38
    ld hl, $e37d
    db $eb
    inc [hl]
    db $fd
    and d
    db $f4
    xor a
    cp $e5
    push af
    sbc $ff
    db $f4
    or $ed
    db $fd
    ld [hl], d
    cp $55
    db $76
    db $eb
    cp $13
    ld [hl], a
    adc d
    ld l, a
    cp d
    srl a
    xor e
    ld e, a
    cp e
    ld c, l
    ld a, e
    xor [hl]
    dec hl
    ld a, l
    dec a
    ld l, e
    ld l, l
    or a
    dec l
    ld d, e
    ld h, a
    add hl, de
    ld d, a
    add hl, hl
    scf
    ld c, l
    dec d
    ld a, d
    dec d
    ld l, d
    inc b
    ld a, e
    nop
    ccf
    inc [hl]
    dec bc
    jr c, jr_086_49fd

    ld a, [de]
    dec l
    ld c, $31
    ld c, $3b
    ld c, $31
    rla
    ld a, [bc]
    rla
    adc [hl]
    rrca
    sub [hl]
    rra
    add [hl]
    rrca
    sub l
    rrca
    sub l
    rrca
    sub $0d

jr_086_49fd:
    jp $c10f


    inc bc
    rst $28
    rlca
    rst $28
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    ld b, $37
    ld bc, $005f
    rrca
    ld [bc], a
    rra
    inc bc
    dec de
    inc bc
    inc de
    inc bc
    di
    inc bc
    db $e3
    add e
    di
    add c
    ei
    add c
    ei
    add e
    ld sp, hl
    add e
    ld sp, hl
    sub c
    db $fd
    ld d, c
    rst $38
    pop bc
    rst $38
    ldh [$fd], a
    ld a, [c]
    db $fd
    ld h, h
    ei
    db $eb
    db $f4
    rst $28
    pop af
    rst $38
    and l
    inc bc
    db $fd
    ld bc, $016f
    rst $38
    ld bc, $41ff
    rra
    ld b, $ef
    ld b, $ff
    ld b, $f3
    ld [bc], a
    cp $06
    ei
    ld [bc], a
    cp $02
    or [hl]
    ld [bc], a
    and $06
    or a
    ld [bc], a
    and [hl]
    add d
    ld c, [hl]
    ld [bc], a
    sub $02
    sub [hl]
    ld [bc], a
    or [hl]
    ld [bc], a
    ld l, d
    ld [bc], a
    xor [hl]
    nop
    xor a
    nop
    add a
    nop
    rst $20
    ld [bc], a
    push af
    ld [bc], a
    or l
    nop
    rst $10
    ld bc, $01e6

jr_086_4a6f:
    and $03
    push hl
    ld bc, $01e7
    di
    nop
    and e
    jr nz, @-$37

    ld bc, $01e5
    ei
    ld bc, $01fa
    ld a, [c]
    ld bc, $01f2
    ld a, [$fb00]
    ld b, b
    ld sp, hl
    nop
    ei
    nop
    ld sp, hl
    jr nz, jr_086_4a6f

    ld b, b
    cp a
    jr nz, @-$1f

    and b
    ld e, a
    ld hl, $a1de
    cp $a0
    rst $38
    or b
    rst $28
    or b
    rst $28
    or b
    ld a, a
    sbc b
    ld [hl], a
    or b
    rst $18
    xor b
    ld d, a
    ret nc

    xor a
    ret nc

    cpl
    ret nz

    ccf
    jp c, $d025

    ld a, $d8
    ld [hl], a
    call c, $da63
    push hl
    call nz, $d4fb
    db $eb
    ld hl, sp-$39
    add sp, -$29
    pop hl
    ld a, [hl]
    pop hl
    cp $e9
    ld [hl], a
    db $ed
    ld a, [$76e9]
    ld l, l
    ld a, [c]
    db $f4
    ld l, a
    or $6d
    rst $30
    ld a, [hl]
    or $ff
    or $7d
    db $76
    rst $38
    ld [hl], a
    sbc [hl]
    rst $30
    ld l, a
    rst $30
    xor c
    xor a
    db $d3
    xor a
    rst $30
    xor a
    rst $30
    rst $28
    cp a
    cp a
    ld a, a
    rst $38
    rrca
    rst $18
    ld a, a
    rst $18
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $20
    ld a, a
    rst $30
    rst $38
    ld b, e
    rst $38
    pop bc
    rst $38
    push hl
    rst $38
    and a
    rst $38
    ld h, l
    rst $38
    dec b
    rst $38
    dec h
    rst $38
    dec b
    db $fd
    rrca
    rst $38
    dec c
    rst $38
    add l
    rst $18
    and l
    rst $00
    cp a
    rst $18
    rst $30
    rst $30
    rst $08
    rst $30
    ld c, a
    rst $30
    set 2, e
    rst $38
    rst $38
    jp nc, $eaff

    rst $38
    call nz, $f8e7
    rst $38
    ret nz

    rst $38
    pop hl
    rst $30
    adc c
    rst $18
    ld h, c
    rst $18
    pop hl
    rst $18
    ld h, e
    xor e
    sub $97
    db $ec
    and a
    sbc $c7
    cp h
    rst $08
    db $f4
    rst $08
    ret c

    rst $08
    ld hl, sp-$31
    ret c

    jp z, $ffd8

    rra
    rra
    ld e, a
    jr jr_086_4b85

    db $10
    dec sp
    db $10
    rla
    ld de, $0027
    inc sp
    ld de, $1113
    rlca
    ld bc, $0117
    dec de
    ld de, $1109
    inc c
    nop
    inc e
    nop
    inc e
    nop
    add hl, de
    nop
    add hl, de
    ld [bc], a
    ld a, [de]
    ld [bc], a
    rra
    inc bc
    rra
    inc bc
    dec e
    ld bc, $011b
    rra
    dec b
    dec bc
    ld bc, $030f
    dec c
    inc bc
    dec c
    rlca
    dec bc
    rlca
    dec bc
    ld [$0007], sp
    rrca
    nop
    rrca
    inc b
    adc e
    ld bc, $018f

jr_086_4b85:
    adc l
    ld [$8885], sp
    rrca
    add c
    adc a
    add c
    adc l
    add c
    adc l
    add b
    rst $08

jr_086_4b92:
    add b
    rst $08
    add b
    rst $08
    add d
    rst $08
    add d
    rst $08
    add d
    rst $08
    add h
    ld c, e
    call nz, $b9cb
    add $ff
    ret nz

jr_086_4ba4:
    ld sp, hl
    add $fb
    call nz, $ffc3
    jp $c3e3


    di
    ld b, e
    db $e3
    rst $38
    ld b, e
    rst $00
    ld a, a
    rst $20
    rst $18
    rst $00
    ld a, e
    rst $20
    db $db
    rst $20
    ld e, a
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    cp a
    ld h, a
    cp a
    rst $20
    ccf
    inc hl
    rst $38
    ccf
    rst $38
    ld a, l
    and b
    db $fc
    ld [hl], b
    ld hl, sp+$60
    jr c, jr_086_4b92

    jr c, jr_086_4ba4

    ld a, b
    sub b
    ld sp, hl
    sub b
    pop af
    ret nc

    ldh a, [$b0]
    ldh a, [$30]
    ldh a, [rNR10]
    di
    db $fc
    sbc a
    db $fc
    sbc h
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a

jr_086_4bed:
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
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

jr_086_4c0b:
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    pop hl
    rst $38
    pop af
    rst $38
    jp $c3ff


    rst $38
    jp $c7ff


    rst $38
    adc l
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add a
    ld a, b
    add a
    ld a, b
    rst $38
    rst $38
    rst $38
    cp [hl]
    jr nz, jr_086_4bed

    jr nz, @+$01

    db $f4
    ccf
    ld [hl], h
    sub [hl]
    jr nc, @-$07

    db $10
    ld [hl], c
    db $10
    pop af
    add b
    or [hl]
    add b
    add $80
    ld c, $00
    sbc [hl]
    inc b
    cp b
    add b
    xor h
    db $10
    xor h
    jr nc, jr_086_4cdb

    ld sp, $3154
    ei
    ld sp, $1157
    rst $30
    jr nz, jr_086_4c0b

    or b
    sbc l
    add c
    ei
    sub c
    rst $38
    pop de
    xor a
    pop de
    ld a, $11
    cp $01
    rst $28
    ld bc, $01df
    rst $10
    add c

Call_086_4c7f:
    db $db
    pop bc
    cp c
    sbc h
    push af
    push de
    ccf
    sub b
    db $ec
    nop
    rst $30
    rlca
    or l
    add l
    ei
    ld b, c
    xor l
    ld h, b
    or $60
    ei
    ld [$8455], sp
    ld a, a
    pop hl
    sbc a
    sub c
    rst $20
    cp b
    call c, $bfde
    rst $18
    cp a
    db $db
    ld a, a
    rst $28
    rra
    db $e3
    rra
    add b
    ret z

    cp $ff
    cp $ff
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
    ld a, a
    rst $38
    rst $38
    nop
    cp $ff
    db $db
    daa
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld b, h
    ld l, e
    inc b
    cp h
    ld bc, $00ee
    cp l
    nop
    ld sp, hl

jr_086_4cdb:
    nop
    xor $00
    ld a, [bc]
    nop
    ld h, b
    nop
    pop hl
    nop
    or c
    ld b, b
    ld a, [hl]
    pop bc
    call c, $c2e3
    rst $38
    sbc $ff
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
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
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add c
    rst $38
    add c
    rst $38
    add l
    rst $38
    add c
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ccf
    push af
    ld sp, $33de
    db $dd
    jr nc, jr_086_4da9

    jr nc, jr_086_4dcb

    ld [hl], b
    db $dd
    ld bc, $011d
    jr nc, @+$13

    ld hl, sp+$11
    push af
    ld bc, $0176
    ld h, d
    ld bc, $00e6
    db $d3
    nop
    halt
    or b
    ld b, b
    jr nc, jr_086_4da5

    nop
    nop
    sub b
    nop
    or b
    nop
    jr nc, jr_086_4d6d

jr_086_4d6d:
    and b
    nop
    jr nz, @+$01

    nop
    rst $28
    db $10
    xor a
    ld d, b
    sbc h
    ld h, e
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc de
    db $ec
    inc de
    cp $12
    call Call_000_1f10
    or e
    ld a, b
    ldh a, [$3f]
    ldh [rNR12], a
    rrca
    rst $18
    scf
    ld a, [hl]
    rst $30
    cp e
    or a
    rst $18
    ld [hl], a
    xor a
    rst $30
    ld a, [hl]
    cp $f3
    rst $38
    ld a, [$bf1f]
    rst $38
    rst $08

jr_086_4da2:
    rst $38
    rst $38
    rst $38

jr_086_4da5:
    rst $38
    cp $ff
    nop

jr_086_4da9:
    or b
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    cp $ff
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

jr_086_4dbd:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    rst $38
    nop
    rst $28

jr_086_4dcb:
    rst $38
    ld [hl], c
    nop
    ld a, a
    nop
    jr nz, jr_086_4da2

    nop
    ret nz

    jr jr_086_4dbd

    ld b, b
    and b
    ld d, b
    and b
    ld e, h
    and b
    cp h
    ld b, b
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld [bc], a
    ld hl, sp+$04
    ld a, [hl]
    add b
    daa
    ret c

    adc e
    db $fc
    ld h, d
    rst $38
    rst $38
    rst $38
    cp $ff
    ei
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, [$faff]
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    db $e3

jr_086_4e1f:
    rst $38
    ld h, a
    rst $38
    jp Jump_086_43ff


    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    and b
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr nz, jr_086_4e1f

    rst $38
    rst $38
    sbc a
    ld a, a
    adc [hl]
    push de
    nop
    cp e

jr_086_4e48:
    jr nc, jr_086_4e48

    inc a
    db $d3
    ld [hl], c
    cp [hl]
    inc d
    ei
    db $10
    xor a
    db $10
    cp a
    ld [$0197], sp
    adc a
    nop
    xor a
    nop
    xor e
    nop
    dec a
    ld bc, $8c17
    ld [hl], e
    sbc b
    ld h, a
    sbc h
    ld h, e
    adc $31
    adc [hl]
    ld de, $011e
    ld e, $01
    rra
    nop
    rra
    nop
    db $fc
    inc bc
    call c, $d823
    daa
    inc e
    db $e3
    inc e
    db $e3
    inc b
    ei
    db $10
    rst $28
    ld [bc], a
    rst $18
    ld [hl+], a
    rst $18
    ld h, d
    cp a
    inc b
    ei
    ld h, d
    cp a
    pop hl
    cp d
    ldh [$be], a
    ld a, [c]
    xor a
    pop af
    ld a, $f4
    dec hl
    push af
    ld l, [hl]
    rst $20
    dec e
    ld h, l
    sbc [hl]
    push hl
    ld e, [hl]
    rst $20
    sbc l
    ld b, l
    ld a, [$f14f]
    rst $28
    rst $30
    ld [hl], a
    db $ed
    ld a, l
    rst $38
    inc b
    ld a, a
    nop
    ld bc, $ff00
    nop
    ld l, a
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
    cp $03
    rst $38
    db $fc
    ld a, a
    rra
    ld a, a
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_086_4ed8

jr_086_4ed8:
    jr nz, jr_086_4eda

jr_086_4eda:
    jr nz, jr_086_4edc

jr_086_4edc:
    nop
    nop
    nop
    ld de, $1300
    nop
    rra
    nop
    rra
    dec sp
    inc b
    ld e, [hl]
    ld hl, $1fe0
    adc b
    ld a, a
    ccf
    rst $38
    ld bc, $1fff
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
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
    rst $30
    rst $38
    call nc, $80ff
    rst $38
    add b

jr_086_4f25:
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_086_4f25

    ld a, $c1
    rst $38
    rst $38
    rst $38
    rst $28
    nop
    db $fd
    nop
    pop af
    add hl, bc
    ld a, a
    ld b, b
    xor d
    add l
    ld a, [$f308]
    adc b
    db $fd
    adc b
    rst $38
    adc d
    push af
    adc b
    rst $30
    ld a, [bc]
    push af
    dec b
    cp [hl]
    inc bc
    cp a
    ld bc, $19bf
    ld h, [hl]
    inc c
    dec de
    dec c
    jp $df05


    inc bc
    db $fd
    inc de
    ccf
    inc de
    ld e, a
    inc de
    db $dd
    inc de
    db $fc
    inc de
    xor $12
    rst $28
    ld c, $f3
    inc d
    db $eb
    ld bc, $21ff

jr_086_4f7d:
    sbc a
    jr nz, jr_086_4f7d

    ld [hl+], a
    rst $38
    ld [hl+], a
    ld a, a
    ld [bc], a
    rst $18
    pop bc
    inc sp
    inc [hl]
    jp hl


    inc h
    cp $ee
    ld a, e
    daa
    ld a, a
    ld [$81bf], sp
    rst $28
    ld b, l
    rst $38
    inc c
    rst $38
    jp hl


    ld e, a
    ld [hl], c
    rst $20
    pop af
    rst $18
    cpl
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ei
    db $fc
    nop
    dec bc
    rst $38
    cp $7f
    cp $fe
    ld a, [hl]
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $77
    cp $ff
    ld [bc], a
    cp $ff
    ld b, $af
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld de, $0107
    ld c, a
    ld bc, $010f
    adc a
    ld bc, $73ff
    ld bc, $0183
    add e
    nop
    sbc a
    nop
    db $fd
    ld [bc], a
    db $db
    ld h, $82
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    push hl
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
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
    rst $28
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    jp $ffff


    rst $38
    rst $30
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    jp $c6ff


    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    add d
    rst $38
    add b
    rst $38
    cp $f9
    db $ec
    cp $0c
    call nc, $9c1c
    ld d, h
    xor b
    nop
    ld a, h
    nop
    adc h
    add b
    db $ec
    db $ec
    rst $38
    jp hl


    cp $ed
    ld a, [$f9ee]
    or $f9
    rst $30
    ld hl, sp-$0b
    ld hl, sp-$05
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$fa]
    db $f4
    di
    db $f4
    db $fd
    ldh a, [rIE]
    ldh a, [$ee]
    pop af
    rst $38
    ldh [$e9], a
    or $ea
    db $f4
    ld a, a
    ldh [$f5], a
    ld [$e877], a
    rst $38
    ldh [$bb], a
    db $e4
    ld [hl+], a
    ret nz

    add hl, sp
    ret nz

    add hl, sp
    ret nz

    dec sp
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    ld a, $c1
    add b
    ret nz

    add b
    jp Jump_086_4180


    nop
    add e
    add b
    ld b, e
    add b
    dec bc
    nop
    res 0, b
    ld c, a
    nop
    sub a
    nop
    sbc a
    nop
    rst $18
    nop
    sbc a
    nop
    rst $18
    nop
    rst $38
    ld [bc], a
    sbc l
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    pop bc
    ccf
    add c
    ld a, a
    pop bc
    ccf
    add c
    ld a, a
    add e
    ld a, a
    inc bc
    ld a, l
    dec bc
    push af
    inc bc
    cp a
    dec bc
    or a
    inc de
    xor $0f
    di
    rla
    rst $28
    rra
    db $e3
    sub a
    inc c
    rrca
    or d
    rlca
    ei
    adc a
    ld [hl], e
    add a
    ld a, l
    adc a
    rst $30
    xor a
    ld e, e
    xor a
    ld e, [hl]
    rst $38
    ld c, $7e
    rst $18
    cp $db
    cp $ff
    rst $38
    ld a, [$f9fe]
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    cp $3f
    cp $bf
    rst $38
    cp a
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    cp [hl]
    rst $38
    call c, $bcff
    rst $38
    ld hl, sp-$01
    cp h
    rst $38
    call c, $dcff
    rst $38
    cp [hl]
    rst $38
    rst $38
    call c, $96fd
    rst $38
    db $f4
    cp $45
    cp $87
    rst $38
    sub [hl]
    cp $cf
    rst $38
    ld c, [hl]
    nop
    rst $38
    nop
    cpl
    nop
    ccf
    nop
    ld a, a
    nop
    rra
    ld bc, $007e
    ccf
    nop
    cpl
    ret nc

    cpl
    ret nz

    ccf
    call nz, $e03b
    rra
    ld hl, sp+$07
    ld d, h
    dec hl
    db $f4
    dec bc
    ld [hl], h
    dec bc
    ld d, h
    dec hl
    inc h
    dec de
    or h
    dec bc
    cp b
    rlca
    ld a, b
    rlca
    jr c, @+$09

    ld e, b
    daa
    ld a, b
    rlca
    add sp, $17
    ld hl, sp+$07
    ld a, b
    rlca
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    and b
    rra
    and b
    ld e, a
    ld [bc], a
    dec e
    inc bc
    inc e
    ld bc, $013e
    ld a, [hl]
    ld bc, $03fe
    db $fd
    ld bc, $05ff
    ei
    inc bc
    db $fd
    rlca
    ld sp, hl
    inc bc
    db $fd
    rlca
    ld sp, hl
    dec bc
    rst $30
    rlca
    ei
    cpl
    db $d3
    rrca
    di
    rlca
    rst $38
    sub a
    ld a, a
    or a
    ld e, a
    ld e, a
    or a
    rra
    rst $28
    ld e, a
    or a
    cp a
    ld c, a
    cp a
    ld l, a
    ld a, a
    adc a
    rst $38
    cp a
    cp a
    ld a, a
    cp a
    ld a, [hl]
    cp a
    xor $7f
    cp [hl]
    rst $38
    ld e, a
    rst $38
    ld a, h
    cp $dd
    cp $7d
    cp $7d
    db $fc
    rst $28
    cp $bd
    ld sp, hl
    xor $f9
    xor [hl]
    ld sp, hl
    cp a
    ld sp, hl
    cp a
    db $fd
    di
    ld sp, hl
    cp $f9
    ld d, [hl]
    ld sp, hl
    sub $f3
    sbc [hl]
    ei
    rlca
    ld [hl], e
    xor h
    cp d
    rst $00
    rst $30
    ld l, $a7
    ld a, a
    and a
    ld e, [hl]
    add $bf
    rst $08
    rst $30
    rst $08
    cp $cf
    db $fd
    rst $08
    ei
    res 7, a
    call $9eb2
    pop hl
    sbc [hl]
    di
    sbc [hl]
    di
    cp [hl]
    di
    cp [hl]
    rst $08
    cp [hl]
    push hl
    or h
    ld l, a
    inc [hl]
    rst $28
    ld [hl], h
    adc e
    ld c, b
    or a
    ld l, b
    rst $10
    ld [$48f7], sp
    or a
    ld [$95f7], sp
    ld a, [$ff91]
    sub c
    rst $38
    sub c
    xor $b3
    call z, $3ee3
    ld [hl], d
    xor a
    ld h, d
    cp a
    ld h, [hl]
    cp e
    ld h, [hl]
    sbc a
    ld b, h
    ld a, a
    ld c, h
    scf
    inc c
    rst $30
    inc c

Jump_086_522d:
    ld a, e
    adc b
    ccf
    ld [$88bf], sp
    scf
    add b
    ccf
    sub b
    ld c, $90
    ld a, $90
    ld e, $90
    ld c, a
    ld bc, $ff9e
    rst $38
    rst $38
    sbc l
    ld a, a
    sbc [hl]
    rst $38
    ld e, l
    ld a, a
    ei
    rst $38
    or l
    rst $38
    dec [hl]
    ld a, a
    and $7f
    db $fd
    rst $38
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    ld a, a
    ld a, a
    db $ed
    ld a, a
    rst $38
    ld a, a
    cp $fe
    ld a, a
    ld a, [hl]
    cp a
    cp [hl]
    ld a, l
    cp $9f
    rst $38
    inc a
    cp $bf
    cp $bd
    db $fd
    cp [hl]
    ld a, h
    cp e
    ld hl, sp-$41
    ld hl, sp-$41
    ld a, [$7a7d]
    xor l
    db $fd
    ld l, d
    ld a, l
    set 7, l
    db $eb
    ei
    add l
    sbc e
    db $ed
    sub e
    rst $38
    sub [hl]
    rst $38
    or [hl]
    db $db
    cp h
    rst $00
    xor d
    ld a, a
    ld [c], a
    ccf
    rst $28
    ld [hl], $ef
    or $ef
    call nc, $dde6
    adc $f1
    call c, $eefb
    pop de
    call z, $fabb
    xor a
    cp l
    sub $99
    or $b1
    rst $18
    or c
    sbc $91
    ld l, a
    or d
    ld e, l
    jp nc, Jump_086_402d

    cp a
    ld h, d
    cp l
    ld h, [hl]
    cp c
    db $e4
    dec de
    ld h, h
    rst $18
    ld b, h
    rst $38
    ld b, h
    ei
    ret nz

    ld a, a
    ret z

    scf
    ret z

    ccf
    ret z

    ld [hl], $80
    rst $38
    sub b
    ld l, [hl]
    or b
    rst $08
    ret nc

    xor a
    or b
    ld c, a
    ldh [$3f], a
    and b
    ld e, e
    and c
    ld a, [hl]
    ld hl, $20de
    rst $18
    ld b, d

jr_086_52db:
    cp l
    ld b, d
    cp l
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    add h
    ld a, a
    add h
    rst $38
    add h

Jump_086_52e9:
    rst $38
    adc b
    ld [hl], a
    ld [$08ff], sp
    rst $30
    ld [$00f7], sp
    rst $38
    db $10
    rst $28
    nop
    rst $38
    db $10
    rst $28
    jr nz, jr_086_52db

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    add c
    ld a, [hl]
    ld b, c
    rst $38
    ld d, c
    db $ed
    ld b, c
    rst $38
    jp $823c


    rst $38
    add d
    rst $38
    add [hl]
    ld sp, hl
    inc b
    rst $38
    add h
    ld a, a
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$18ff], sp
    rst $20
    db $10
    rst $28
    db $10
    rst $38
    db $10
    rst $28
    nop
    ei
    nop
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ccf
    ld b, c
    cp [hl]
    nop
    rst $38
    ld bc, $81fe
    ld a, a
    ld bc, $03ff
    rst $38
    rst $10
    xor $d7
    ld [$f5cf], a
    and $9f
    adc $fd
    adc $fb
    xor [hl]

jr_086_534d:
    db $dd
    db $ed
    sbc $fe
    cp a
    sbc l
    xor $3e
    push de
    dec sp
    or $78
    rst $38
    ld [hl], b
    xor a
    jr nc, jr_086_534d

    ld [hl], d
    xor l
    ld a, [hl+]
    push af
    and [hl]

jr_086_5363:
    ld a, e
    ld h, $db
    ld b, [hl]
    cp a
    ld b, $fd
    inc b
    ei
    add d
    db $fd
    ld [bc], a
    db $fd
    and d
    ld e, l
    ld a, [bc]
    push af
    ld a, [bc]
    rst $38
    ld a, [bc]

jr_086_5377:
    rst $38
    ld [$09ff], sp
    cp $18
    rst $28
    jr jr_086_5377

    db $10
    rst $38
    jr nc, jr_086_5363

    ldh a, [$1f]
    jr nz, @+$01

    jr nz, @-$1f

    ld h, b
    cp a
    jr nz, @+$01

    ldh [$5f], a
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    pop bc
    ld a, [hl]
    jp nz, $82bf

    ld a, a
    add d

jr_086_539d:
    rst $38
    add d
    db $fd
    add h
    rst $38
    add h
    ld a, a
    inc b
    ei
    ld [$08f7], sp
    rst $30
    ld [$88f7], sp
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_086_539d

    nop
    rst $38
    ld b, b
    or a
    ld b, b
    rst $28
    ld b, b
    rst $28
    ld b, b
    cp a
    ld bc, $01fe
    cp $81

jr_086_53cd:
    ld a, [hl]
    ld bc, $00ff
    rst $30
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    inc b
    rst $38
    inc b
    rst $38
    inc c
    di
    ld [$08ff], sp
    rst $38
    jr @-$17

    db $10
    rst $28
    jr @-$07

    jr nc, jr_086_53cd

    jr nz, @-$1f

    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    sbc a
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ret nz

    ccf
    add b
    rst $38
    add b
    rst $38
    add c
    ld a, [hl]
    ld bc, $01ff
    rst $38
    inc bc
    db $fd
    inc de
    rst $28
    inc de
    rst $28
    rla
    db $eb
    rlca
    cp $07
    cp $0f
    rst $30
    rrca
    rst $30
    rrca
    or $0f
    db $fc
    rra
    db $ec
    rra
    add sp, $48
    cp [hl]

jr_086_5422:
    ret c

    inc a
    sub b
    ld a, h
    or b
    ld a, b
    jr nc, jr_086_5422

    jr nz, @-$0a

    ld h, b
    pop af
    ldh [$e8], a
    ret nz

    db $eb
    ret nz

    push hl
    add b
    jp c, $c580

    add b
    ret nz

    nop
    sub b
    nop
    sub a
    nop
    sub b
    ld l, $ff
    inc hl
    db $db
    add c
    ld a, a
    adc c
    ld [hl], l
    sub b
    ld a, a
    db $10
    rst $38
    jp nc, $c23d

    db $fd
    ld b, d
    cp a
    inc bc
    rst $38
    and d
    ld e, l
    jr nz, @-$1f

    ld b, h
    cp e
    ld h, [hl]
    sbc l
    call nz, Call_086_4c7f
    or a
    inc h
    rst $18
    inc l
    rst $18
    xor h
    ld e, a
    jr @+$01

    add hl, bc
    rst $38
    add hl, de
    xor $18
    rst $38
    jr @-$07

    db $10
    rst $38

jr_086_5472:
    jr nc, jr_086_5472

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03fb
    db $fd
    ld [bc], a
    ei
    ld [bc], a
    and a
    ld [bc], a
    rst $28
    ld b, $e3
    ld b, $ed
    ld b, $ed
    inc b
    rst $38
    inc c
    rst $30
    inc c
    ld sp, hl
    ld [$18ff], sp
    db $ed
    jr @-$0b

    db $10
    db $fd
    jr nc, @-$20

    jr nc, @+$01

    jr nz, @+$01

    jr nz, jr_086_5539

    jr nz, @+$01

    ld [hl], b
    cp a
    ld [hl], b
    rst $08
    ld h, b
    db $dd
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_086_54d1:
    rst $38

jr_086_54d2:
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    inc c
    cp $0c
    rst $30
    inc c
    rst $30
    jr @+$01

    jr jr_086_54d1

    jr c, jr_086_54d2

jr_086_54f4:
    jr nc, jr_086_54f4

jr_086_54f6:
    jr nc, jr_086_54f6

    ld [hl], b
    cp h
    ld [hl], b
    xor $60
    db $fd
    ret nz

    ld h, h
    ret nz

    or c
    add b
    db $fd
    ret nz

    cp l
    ret nz

    push af
    ret nz

    xor l
    add b
    ei
    pop af
    jp z, $fbf8

    ld hl, sp+$7f
    db $fc
    ld a, e
    db $fc
    ld a, a
    db $fc
    ccf
    cp $7f
    cp $9f
    rst $38
    rst $18
    ld a, a
    rst $08
    ld c, a
    ld a, a
    inc hl
    ccf
    daa
    ccf
    daa
    ccf
    inc de
    sbc a
    rla
    rra
    rrca
    ld c, a
    add hl, bc
    rrca
    add hl, bc
    rst $08
    dec b
    rst $28
    ld b, $df
    ld b, $77
    ld [bc], a

jr_086_5539:
    ccf
    ld [bc], a
    ccf
    ld bc, $012f
    ld a, a
    ld h, b
    rst $18
    ret nz

    rst $38
    ldh [$df], a
    ldh [$df], a
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    cp $c0
    cp $80
    rst $38
    add b
    rst $38
    add b
    db $fd
    add c
    db $fd
    add c

jr_086_5559:
    ld sp, hl
    ld bc, $02fb
    pop af
    ld [bc], a
    ei
    ld [bc], a
    rst $20
    ld b, $e1
    inc b
    rst $30
    inc b
    rst $28
    inc b
    rst $28
    inc c

jr_086_556b:
    rst $20
    ld [$88ef], sp
    ld a, a
    ld [$18ff], sp
    ld a, a
    jr @-$07

    db $10
    rst $38
    jr nc, jr_086_5559

    jr nc, jr_086_556b

    jr nz, @+$01

    inc hl
    db $fd
    ld h, e
    cp h
    ld h, d
    rst $38
    ld b, b
    rst $38
    ret z

    ld [hl], a
    ret z

    rst $30

jr_086_558a:
    ret nz

    cp l
    add b
    ei
    add b
    rst $30
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    ld bc, $01fa
    ei
    ld bc, $01f7
    ei
    ld bc, $03fb
    di
    inc bc
    rst $20
    ld [bc], a

jr_086_55b1:
    rst $20
    ld [bc], a
    rst $00
    inc b
    adc a
    inc b
    adc a
    inc c
    add a
    inc c
    adc e
    ld [$089f], sp
    ld e, $18
    adc a
    db $10
    dec e
    db $10
    cpl
    jr nz, @+$7d

    jr nc, @+$7d

    ld [hl], b
    dec hl
    ld [hl], b

jr_086_55cd:
    ld [c], a
    ld h, b
    pop af
    ret nz

    ld a, b
    ldh [$f0], a
    ldh [$f4], a
    ldh [$c0], a
    ret nz

    ldh [$80], a
    db $e4
    add b
    and h
    nop
    and d
    ld d, e
    xor h
    ret c

    daa
    jr jr_086_55cd

    ld a, b
    add a
    jr c, jr_086_55b1

    cp b
    ld b, a
    ldh a, [rIF]
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $e1
    ld e, $d5
    ld a, [hl+]
    add $39
    rst $08
    jr nc, jr_086_558a

    ld [hl], d
    adc [hl]
    ld [hl], c
    adc b
    ld [hl], a
    ld d, b
    rst $28
    nop
    rst $38
    ld hl, $75df
    adc e
    jp hl


    rla
    jp nz, $c23f

    ccf
    ld b, $7d
    inc b
    ld a, a
    inc c
    di
    ld [$08fc], sp
    db $fc
    db $10
    ld hl, sp+$30
    ld hl, sp+$30
    add sp, -$60
    ld [hl], b
    ldh [$d0], a
    ret nz

    or $c0
    rst $38
    ret nz

    db $fd
    ldh [$fd], a
    ldh [$f5], a
    ldh a, [$e9]
    ldh a, [$fc]
    ld hl, sp-$10
    ld hl, sp-$04
    ld hl, sp+$7c
    db $fc
    ld e, h
    db $fc
    ld [hl], d
    cp $0e
    cp $01
    jr nc, @-$0f

    jr nz, @+$01

    jr nz, jr_086_56c5

    jr nz, jr_086_56a7

    ld b, b
    rst $38
    ld b, b

jr_086_564b:
    rst $38
    ret nz

    ld a, a
    add b
    rst $38
    add c
    cp $81
    cp $80
    ld a, a
    add b
    ld a, a
    nop
    cp $04
    ei
    nop
    rst $38
    nop
    rst $38
    ld [$00f3], sp
    rst $38
    nop
    rst $30
    jr nz, @-$27

    jr nz, @+$01

    jr nz, jr_086_564b

    ld b, b
    cp a
    nop
    rst $38
    ld bc, $01fe
    cp a
    ld bc, $03ff
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $fb
    and l
    ld e, a
    ld a, $fb
    ld hl, sp-$39
    ld [hl], b
    db $ec
    jr jr_086_56c0

    nop
    rlc b
    rst $00
    nop
    rst $20
    nop
    rst $38
    jr @-$1f

    jr c, @-$67

    jr nc, @+$01

    ld h, b
    ld a, a
    ld h, b
    rst $30
    ldh [rPCM12], a
    ldh [$c4], a
    ret nz

    db $e4
    ret nz

    db $e4
    call nz, $80a6
    add $80

jr_086_56a7:
    rst $00
    add b
    ld c, l
    ld bc, $01e7
    db $e3
    ld bc, $04eb
    ei
    inc c
    di
    dec l
    jp nc, $37c8

    ld hl, sp+$07
    or $09
    inc [hl]
    bit 0, b
    cp a

jr_086_56c0:
    sbc d
    ld l, l
    db $e3
    inc e
    di

jr_086_56c5:
    inc c
    ei
    inc b
    ld sp, hl
    ld b, $f1
    ld e, $60
    sbc a
    and b
    ld e, a
    ld b, h
    cp e
    ret z

    scf
    ldh [$1f], a

jr_086_56d6:
    ld b, b
    cp a
    jp nz, $c03d

    ccf
    ld b, b
    cp a
    ret nz

    ccf
    nop
    ld l, [hl]
    ld [bc], a
    ld l, h
    ld [bc], a
    ld a, a
    inc bc
    ld e, a
    rlca
    ld a, a
    ld c, $77
    inc c
    ld a, a
    inc c
    cp $1c
    cp $18
    rst $38
    jr jr_086_5775

    jr nc, jr_086_56d6

jr_086_56f8:
    jr nc, jr_086_56f8

    jr nz, @-$08

    ld h, b
    or $40
    pop hl
    ret nz

    ld h, b
    add b
    pop bc
    add b
    pop bc
    add b
    ret nz

    nop
    call nc, $bd00
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    sub a
    nop
    or [hl]
    nop
    or $00
    db $ec
    nop
    ld a, h
    nop
    jr c, jr_086_572f

    jr z, jr_086_5721

jr_086_5721:
    jr nc, jr_086_5723

jr_086_5723:
    or c
    nop
    and c
    ld bc, $0120
    ld [bc], a
    ld bc, $0202
    add l
    nop

jr_086_572f:
    rrca
    nop
    rrca
    nop
    rrca
    ld [bc], a
    dec e
    nop
    rrca
    nop
    rrca
    nop
    rrca
    ld bc, $000e
    dec bc
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_086_5763

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_086_5784

jr_086_5763:
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_086_5794

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_086_57a4

    ld [hl-], a
    inc sp

jr_086_5775:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_086_57b4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_086_5784:
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
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_086_5794:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d

jr_086_57a4:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_086_57b4:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_086_5874

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_086_5884

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_086_5894

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_086_58a4

    ld [hl-], a

jr_086_5874:
    inc sp
    inc [hl]
    dec [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl], $37
    jr c, jr_086_58b9

    rlca
    dec b
    dec b
    dec b

jr_086_5884:
    dec b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    rlca
    dec b
    dec b

jr_086_5894:
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0507
    dec b

jr_086_58a4:
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    rlca
    rlca
    ld bc, $0701
    dec b

jr_086_58b9:
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld b, $06
    ld b, $01
    ld bc, $0707
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $01
    rlca
    ld bc, $0007
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0107
    nop
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    rlca
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    dec b
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0101
    rlca
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld b, $06
    ld b, $07
    rlca
    rlca
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0606
    ld bc, $0707
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0101
    ld bc, $0505
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    rlca
    rlca
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0507
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    nop
    inc b
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld [$0f08], sp
    add hl, bc
    rrca
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    rlca
    rlca
    rlca
    rlca
    rlca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec c
    ret c

    xor $dc
    ld [c], a
    adc $f1
    jp z, $ce75

    di
    adc $f7
    rst $00
    ld a, [$ffc2]
    jp z, $c8f5

    rst $30
    call z, $c8f3
    or a
    call nz, $c4bb
    cp e
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nc

    rst $28
    ret nz

    cp a
    ret nz

    rst $38
    db $e4
    sbc e
    or [hl]
    ld c, c
    cp [hl]
    ld b, c
    db $ed
    sbc d
    cp l
    ld l, e
    db $fd
    sub d
    rst $30
    ld a, c
    rst $38
    ld [hl], l
    db $ed
    or a
    cp c
    ld d, a
    rst $38
    sub l
    ld a, a
    sbc a
    rst $38
    cp a
    rst $38
    rla
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld l, a
    rst $38
    ei
    rst $38
    cp c
    rst $38
    dec sp
    inc de
    rst $38
    sbc e
    rst $38
    ld c, e
    rst $38
    ld l, a
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
    rst $30
    rst $38
    scf
    rst $30
    cp a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    sbc $ff
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
    db $fd
    cp $fc
    rst $38
    db $fd
    cp $ff
    db $fc
    rst $38
    cp $ff
    db $fc
    db $fc
    rst $38
    rst $38
    db $fc
    cp $fd
    ld a, [$fadd]
    ld a, l
    ld a, [$f8fd]
    ld a, a
    ld hl, sp-$01
    ld a, [$fafd]
    db $fd
    ld a, [$f8fd]
    rst $38
    ld hl, sp+$57
    ret c

    ccf
    db $fc
    sub a
    ld hl, sp+$1f
    ld hl, sp+$77
    db $fd
    ld a, [hl-]
    ld sp, hl
    ld a, $ff
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ld a, [c]
    db $f4
    ei
    ld sp, hl
    db $76
    db $fd
    ld a, d
    ld sp, hl
    rst $30
    ld sp, hl
    ld [hl], a
    ld sp, hl
    rst $30
    pop af
    rst $38
    pop af
    ld a, a
    pop af
    rst $28
    pop af
    rst $28
    db $e3
    dec a
    or a
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    cp $60
    cp h
    ld h, b
    cp l
    ld h, b
    db $fd
    ld h, b
    ld sp, hl
    ld h, b
    cp e
    ld h, b
    cp e
    ld h, b
    or e
    ld h, b
    or a
    ld h, b
    cp a
    ld h, b
    sbc a
    ld h, b
    rst $18
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, h
    ei
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    ret nz

    rst $38
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$df], a
    ldh [rIE], a
    ldh [$df], a
    ld [c], a
    db $dd
    ldh [$df], a
    ret nz

    cp a
    ret nz

    rst $38
    jp nz, $c6bd

    cp l
    rst $00
    cp b
    call nz, $84bf
    ei
    add h
    ei
    add h
    rst $38
    call nz, $c4bf
    cp a
    add l
    cp $85
    cp $85
    ld a, [$39c6]
    xor h
    rst $10
    adc l
    or $cd
    ld [hl], $4d
    cp d
    adc e
    ld a, l
    srl l
    adc e
    ld [hl], a
    xor e
    ld e, [hl]
    rst $28
    cp e
    db $ed
    cp e
    dec hl
    db $dd
    xor e
    db $dd
    xor a
    ld sp, hl
    xor a
    ld d, c
    ld h, a
    cp c
    ld h, a
    sbc e
    inc hl
    rst $38
    ld [hl], a
    adc e
    ld h, a
    db $db
    rst $20
    ld e, e
    bit 6, a
    ld h, a
    db $db
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $00
    dec sp
    rst $00
    ld a, e
    ld d, a
    rst $28
    rst $08
    scf
    rst $00
    cp a
    rst $08
    db $76
    rst $10
    xor a
    rst $20
    sbc l
    rst $28
    inc d
    add a
    ld a, h
    rst $08
    or [hl]
    rst $08
    scf
    adc a
    ld [hl], a
    adc a
    ld a, a
    rst $08
    cp a
    adc a
    ld [hl], a
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $30
    adc a
    rst $30
    add a
    rst $38
    adc a
    rst $30
    adc a
    rst $38
    adc a
    ld [hl], a
    adc a
    ld a, a
    rra
    rst $28
    rra
    rst $28
    rrca
    rst $38
    adc a
    ld a, a
    sbc a
    ld l, a
    sbc a
    ld l, a
    sbc a
    ld l, a
    adc a
    ld a, a
    cpl
    rst $18
    xor a
    ld e, a
    cpl
    rst $38
    ccf
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
    db $fd
    ld c, $f1
    ld c, h
    or e
    ld l, b
    or a
    ld a, [hl+]
    push af
    add hl, hl
    or $30
    rst $28
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $28
    nop

jr_086_5bc3:
    rst $38
    nop

jr_086_5bc5:
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld h, b
    sbc a
    ret nz

    ccf
    nop
    rst $38
    jr nz, @-$1f

    nop
    rst $38
    jr nz, jr_086_5bc3

    jr nz, jr_086_5bc5

    inc h
    db $db
    ld b, h
    ei
    ret nz

    ld a, a
    pop bc
    ld a, [hl]
    ret nz

    ld a, a
    ld b, b
    rst $38
    pop bc
    ld a, [hl]
    ld b, c
    cp [hl]
    call nz, $c17b
    sbc [hl]
    push bc
    cp e
    pop bc
    cp a
    add c
    ld a, [hl]
    add c
    rst $38
    and c
    sbc $80
    rst $38
    add c
    cp $81
    rst $38
    sub c
    rst $28
    sub c
    rst $28
    sub c
    rst $28
    sub c
    rst $28
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    pop hl
    sbc a
    pop hl
    rra
    db $e3
    inc e
    db $e3
    ld e, l
    jp $c37f


    ld a, $eb
    sub [hl]
    xor $91
    ld [$aa15], a
    ld [hl], a
    ld [c], a
    rra
    ld b, a
    cp d
    add $3f
    adc d
    ld [hl], a
    res 6, [hl]
    rst $18
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    db $fc
    ld c, e
    ld [hl], h
    rst $28
    db $f4
    rst $08
    db $f4
    rst $08
    db $f4
    rst $08
    db $ec
    rst $10
    call nc, $cc6f
    ld [hl], a
    db $e4
    ld e, a
    db $e4
    rst $38
    db $ec
    or a
    db $fc
    xor a
    db $fc
    rst $00
    db $fc
    rst $08
    db $fc
    adc a
    db $fc
    sbc a
    db $fc
    ei
    db $fc
    ei
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp-$31
    db $fc
    db $db
    ld a, [$fced]
    db $eb
    ld hl, sp-$11
    ld hl, sp-$01
    db $fc
    ei
    db $fc
    ei
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    ld a, [$eff8]
    db $fc
    xor e
    db $fd
    ei
    rst $38
    db $eb
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

jr_086_5ca9:
    rst $38
    cp $ff
    ld hl, sp-$01
    push af
    rst $38
    ld b, e
    sbc h
    ld [hl+], a
    call c, $8827
    ld [hl], $c9
    ld h, $d9
    ld b, $d9
    ld [hl], h
    adc c
    or h
    add hl, bc
    jr jr_086_5d23

    ld a, $41
    ld [hl], $c1
    sbc d
    ld h, c
    inc d
    pop hl
    ld [de], a
    pop hl
    ld c, $e1
    ld d, $e9
    inc [hl]
    ret


    ld d, $c8
    ld l, d
    sub l
    ld h, d
    sbc l
    ld a, d
    add l
    jr nc, jr_086_5ca9

    ld [hl+], a
    db $dd
    ld l, $d1
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    ld [bc], a
    call $9502
    nop

jr_086_5ced:
    rst $28
    ld [bc], a
    call $d780
    add d
    sub c
    add b
    ld [bc], a
    add b
    db $e3
    add b
    db $e3
    add b
    ld h, e
    add b
    ld [hl], e
    add b
    ld h, d
    sbc h
    db $e3
    inc e
    db $e3
    jr jr_086_5ced

    add hl, de
    and $19
    and $11
    xor $19
    and $09
    or $51
    xor [hl]
    ld c, c
    or [hl]
    push de
    ld l, $15
    xor $85
    ld a, [hl]
    sub l
    ld l, [hl]
    sub h
    ld l, a
    add h
    ld a, a
    inc b
    ld l, a
    inc b

jr_086_5d23:
    ld a, e
    inc b
    rst $38
    inc b
    ei
    inc b
    ei
    inc b
    rst $38
    add h
    ld a, e
    inc b
    rst $38
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    inc c
    di
    inc b
    ei
    ld l, h
    sub d
    inc a
    rst $00
    rst $38
    cp $f8
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $09
    ld a, [bc]
    db $fd
    ld e, d
    xor l
    ld a, d
    adc a
    ld a, [hl]
    sub e
    ld e, h
    xor e
    inc e
    db $eb
    ld e, d
    xor l
    jp z, $da3f

    cpl
    ld a, [hl-]
    rst $08
    ld a, [de]
    rst $20
    or [hl]
    ld e, c
    sbc d
    ld h, l
    ld a, [de]
    push hl
    sbc d
    ld a, l
    cp d
    ld c, l
    sbc h
    ld [hl], e
    inc [hl]
    db $db
    inc d
    ei
    ld a, [hl-]
    push de
    ld a, h
    sub e
    inc e
    rst $38
    inc e
    di
    sub h
    ei
    call nc, $fcbb
    inc de
    call c, $f8b3
    sub a
    ldh a, [$3f]
    or h
    ld a, e
    push af
    cp d
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    rlca
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld [$fffb], a
    rst $38
    rst $38
    db $fd
    rst $38
    call nc, Call_000_00ff
    rst $38
    add e
    rst $38
    sub [hl]
    rst $38
    ld a, h
    rst $38
    rst $00
    rst $38
    add [hl]
    rst $38
    rst $18
    or $2e
    or $9e
    ld [hl], l
    ccf
    push af
    rst $30
    cp l
    add e
    ret c

    cp h
    db $e3
    and e
    db $f4
    ld [de], a
    db $fd
    ld c, e
    push af
    ld c, e
    pop af
    ld c, e
    push af
    di
    rst $28
    pop de
    db $ed
    and l
    rst $10
    db $fd
    rst $00
    sbc a
    db $ed
    rra
    db $ed
    cpl
    db $dd
    cpl
    db $dd
    xor l
    ld e, a
    jp hl


    sbc a
    ldh a, [$0b]
    ld [hl], d
    adc l
    ld [hl], d
    adc l
    ld [hl], d
    adc l
    db $f4
    dec bc
    and a
    ld e, b
    add h
    ld a, c
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add d
    ld a, h
    and d
    ld e, h
    or e
    ld c, h
    or c
    ld c, [hl]
    or e
    ld c, h
    or c
    ld c, [hl]
    and c
    ld e, [hl]
    nop
    ld e, l
    ld [$0057], sp
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $08
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    db $10
    rst $38
    inc d
    ei
    inc d
    ei
    db $10
    rst $38
    db $10
    rst $28
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    add hl, de
    or $39
    add $a1
    ld e, [hl]
    ld sp, $a9cf
    db $76
    rst $38
    pop hl
    ld a, [c]
    rst $38
    ld c, e
    rst $38
    add a
    rst $38
    rst $20
    rst $38
    or [hl]
    rst $38
    adc c
    rst $38
    ret nz

    rst $38
    pop af
    rst $38
    ei
    nop
    ld a, a
    rst $28
    ccf
    rst $28
    rst $38
    daa
    rst $38
    and a
    cpl
    db $fd
    ld l, a
    or l
    ld l, l
    sub e
    dec hl
    db $f4
    ld a, e
    and l
    ld h, a
    cp h
    ld l, a
    sub [hl]
    ld h, a
    cp h
    ld l, [hl]
    pop de
    ld l, c
    or [hl]
    ld l, a
    ret c

    ld b, e
    db $fc
    ld l, e
    sub $43
    cp $4f
    di
    rst $08
    db $76
    ld c, a
    or $db
    ld h, a
    ld l, e
    sub $d7
    ld a, d
    ld a, [$f6f7]
    db $eb
    jp c, $fae7

    rst $10
    rst $38
    ld a, [$d0ff]
    rst $38
    add b
    ld bc, $06ff
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    ld bc, $0fff
    rst $38
    ld a, $ff
    db $fc
    rst $38
    ldh a, [rIE]
    add e
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [hl], c
    cp $61
    cp $64
    rst $38
    inc h
    rst $38
    inc b
    ccf
    inc h
    rst $38
    and h
    rst $38
    db $e4
    rst $38
    rst $20
    db $fd
    ld h, [hl]
    db $fd
    ld h, h
    db $fd
    ld [c], a

jr_086_5ec7:
    db $fd
    ldh [$fd], a
    ldh [$f9], a
    pop bc

jr_086_5ecd:
    add d
    and $b3
    ld h, d

jr_086_5ed1:
    xor a
    ld [c], a
    adc a
    or d
    rst $08
    db $d3
    xor $f3

jr_086_5ed9:
    xor $d2
    rst $28
    jp nz, $e2ff

    rst $18
    adc d
    rst $10
    ld [de], a
    rst $00
    ld b, d
    xor a
    ld h, d
    cp a
    add $3f
    ld d, [hl]
    ccf
    ld d, [hl]
    ccf
    db $76
    sbc a
    ld h, a
    sbc [hl]
    ld h, $fe
    rlca
    cp $04
    rst $38
    ld b, a
    db $fd
    ld b, a
    cp l
    rst $00
    cp l
    xor c
    rst $38
    jr nc, jr_086_5ecd

    jr c, jr_086_5ec7

    jr nc, jr_086_5ed1

    inc d
    db $eb
    jr nc, jr_086_5ed9

    ld [hl-], a
    call $cd32
    ld [hl+], a
    db $dd
    nop

jr_086_5f11:
    db $ed
    nop
    rst $00
    add b
    ld b, a
    add b
    ld e, a
    add h
    ld e, e
    add b
    rst $18
    add b
    rst $18
    add b
    db $fd
    and e
    call c, $d4ab
    and c
    sbc $a2
    db $dd
    add b
    rst $38
    add c
    cp $81
    cp $81
    cp $80
    ld a, a
    add b
    rst $38
    add h
    ld a, e
    add b
    rst $38
    adc b
    or $88
    ld [hl], a
    add b
    ld a, a
    add b
    ld a, a
    add [hl]
    rst $38
    rst $38
    cp $ff
    cp $bd
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    or $ff
    ld a, h
    inc bc
    inc c
    rst $30
    ld c, $f9
    inc c
    ei
    ld [$08ff], sp
    rst $38
    ld a, [bc]
    push af
    ld [$08ff], sp
    rst $38
    inc c
    di
    inc c
    ei
    ld c, $79
    ld a, [bc]
    push af
    dec c
    ld a, [$fd0a]
    ld c, d
    dec a
    ld c, [hl]
    or a
    ld c, $fd
    rrca
    db $fc
    ld c, a
    cp a
    rrca
    rst $38
    rrca
    rst $38
    rrca
    db $fd
    rrca
    db $fc
    ld e, l
    xor [hl]
    ld c, a
    cp h
    ld e, a
    xor h
    ld e, a
    and b
    ld a, a
    add b
    rst $38
    ld bc, $04ff
    rst $38
    jr nc, jr_086_5f11

    rst $38
    ld [bc], a
    rst $38
    ld [$20ff], sp
    rst $38
    add c
    rst $38
    add l
    rst $38
    ld c, $ff
    cp h
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_086_5fa9:
    rst $38
    ld bc, $07ff
    rst $38
    ld e, $ff
    sbc d
    db $fd
    sbc h
    rst $38
    sbc l
    cp $fc
    rst $18
    sbc c

jr_086_5fb9:
    cp $bb
    sbc $7c
    sbc a
    pop af
    add [hl]
    ld [c], a
    rst $08
    ld a, [c]
    rst $08
    sub b
    rst $28
    sbc b
    rst $20
    sbc $e5
    ld e, [hl]
    push hl
    ret nc

    rst $28
    ld c, [hl]
    ei
    ld b, h
    ei
    ld d, h
    jp hl


    ld [de], a
    jp hl


    jr nc, jr_086_5fb9

    inc l
    db $e3
    dec h
    ld [$cc22], a
    inc bc
    call z, $8b54
    ld a, b
    adc a
    inc h
    cp e
    db $76
    xor e
    xor d
    ld h, a
    ld [hl-], a
    ld h, a
    jp z, Jump_000_1867

    ld h, a
    db $76
    ld l, c
    ld [hl], b
    call $d9e0
    ld b, d
    db $fd
    ld b, h
    db $fd
    ldh [$fd], a
    ret nz

    db $fd
    call $c7fa
    db $fc
    ld c, l
    db $f4
    ld b, [hl]
    cp $cc
    or $c4
    or $c6
    db $fd
    and $fd
    db $e3
    db $fd
    sbc c
    ld h, h
    dec e
    ldh [$5a], a
    and c
    sbc [hl]
    ld h, c
    dec sp
    call nz, $c43b
    cp d
    ld b, l
    cp e
    ld b, h
    nop
    ld b, h
    ld b, b
    inc b
    nop
    ld c, h
    nop
    ld c, l
    nop
    ld b, [hl]
    nop
    ld b, a
    nop
    ld b, a
    nop
    push bc
    ld a, [hl-]
    push bc
    ld [hl-], a
    call $c53a
    ld [hl+], a
    db $dd
    ld [hl-], a
    call $ff00
    nop
    rst $38
    nop
    rst $38
    db $76
    rst $38
    rst $38
    inc d
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld a, l
    rst $38
    rst $38
    rst $38
    db $fd
    sub a
    rst $38
    ld [$08f7], sp
    rst $38
    adc b
    ld [hl], a
    ld [$80f7], sp
    ld a, a
    nop
    rst $38
    adc b
    ld [hl], a
    adc b
    rst $30
    adc c
    or $81
    cp $81
    cp $89
    cp $8c
    di
    adc c
    or $0d
    di
    adc c
    rst $30
    adc l
    dec sp
    adc c
    ld a, a
    xor c
    ld d, a
    sbc c
    ld h, a
    xor c
    ld d, a
    adc c
    ld [hl], a
    adc c
    ld [hl], a
    sbc e
    ld h, h
    cp a
    ld b, b
    ld [hl], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld bc, $0eff
    rst $38
    jr c, @+$01

    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38

Call_086_609e:
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ld b, b
    ccf
    nop
    rra
    add b
    rra
    add b
    rrca
    add b
    inc bc
    add b
    ld bc, $0088
    db $10
    ld [hl-], a
    call Call_086_5fa9
    ret z

    ccf
    and c
    ld e, [hl]
    adc h
    ld d, e
    and b
    ld e, a
    ldh a, [rIF]
    pop hl
    rra
    ld a, b
    ld b, a
    ld l, b
    rst $08
    inc hl
    call z, $8966
    ld d, a
    adc c
    ld b, c
    cp a
    add hl, bc
    rst $30
    jp hl


    ld d, a
    inc sp
    call Call_086_79ce
    ld a, a
    ld a, c
    ld h, l
    ld a, e
    ld [hl], b
    ld a, e
    ld a, b
    ld [hl], e
    db $10
    ld a, a
    ld hl, sp+$37
    ldh a, [$3f]
    add b
    ld a, a
    ld e, b
    ld a, a
    ld l, b
    ld e, a
    ld [hl], b
    ld c, a
    adc d
    ld [hl], a
    inc hl
    ld a, a
    dec sp
    ld l, a
    sbc e
    ld l, a
    dec bc
    ld a, a
    adc e
    ld a, a
    adc e
    ld a, a
    adc e
    ld a, a
    adc e
    ld a, a
    ld c, e
    ccf
    sbc e
    ld a, a
    nop
    ld e, e
    nop
    rra
    nop
    cp e
    nop
    dec sp
    nop
    ccf
    nop
    rst $38
    nop
    cp e
    db $10
    db $eb
    db $10
    rst $28
    db $10
    rst $20
    nop
    rst $38
    db $10
    rst $28
    db $10
    xor $10
    or $10
    cp $90
    ld [hl], a
    db $10
    rst $38
    db $10
    rst $38
    sub b
    ld l, a
    sub b
    ld l, a
    ld [de], a
    db $ed
    sub d
    ld a, l
    sub d
    ld a, l
    sub d
    ld l, l
    dec l
    rst $38
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    ld a, a
    rst $38
    cp a
    ld e, $ff
    ld [c], a
    rst $38
    or d
    ld l, l
    ld a, [c]
    dec l
    and d
    ld e, l
    db $d3
    inc l
    add d
    db $fd
    and e
    ld e, h
    and d
    ld e, a
    ld [hl+], a
    db $dd
    and e
    ld e, h
    ld [hl+], a
    rst $18
    inc sp
    call $ef13
    inc sp
    adc $73
    xor a
    ld [hl], e
    xor a
    inc sp
    rst $08
    and e
    ld a, a
    and e
    cp $63
    cp a
    inc hl
    db $fc
    rst $38
    ld b, b
    rst $30
    add b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    jr @+$01

    ld h, b
    rst $38
    add [hl]
    ld sp, hl
    inc c
    di
    ld bc, $02ff
    rst $38
    ld [$01ff], sp
    cp $41
    cp $82
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$29
    sub $19
    and $4a
    or l
    sbc e
    ld h, h
    ld bc, $00fe
    rst $38
    ld c, $f1
    add d

jr_086_61bf:
    db $fd
    ld a, a
    ld b, b
    ccf
    jr nz, jr_086_61e4

    jr nc, jr_086_61d6

    or b
    rlca
    inc [hl]
    ld bc, $012e
    add a
    nop
    adc l
    or [hl]

jr_086_61d1:
    ld c, c
    or [hl]

jr_086_61d3:
    ld c, c
    or [hl]
    ld c, c

jr_086_61d6:
    ld [hl], $c9
    ld [hl], d
    adc l
    ld h, $c9
    ld e, $c1
    add hl, de
    add $44
    sbc e
    or $09

jr_086_61e4:
    db $f4

jr_086_61e5:
    dec bc
    db $f4

jr_086_61e7:
    dec bc
    ret nc

    dec bc
    sub b

jr_086_61eb:
    ld c, e
    dec a
    ld b, d
    dec a
    ld b, d
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    sub b
    ld h, e
    or h
    ld b, e
    xor h

jr_086_61f9:
    ld d, e
    jr c, jr_086_61bf

    jr z, jr_086_61d1

    jr z, jr_086_61d3

    inc a
    jp $cb34


    inc [hl]
    sla h
    db $db
    inc h
    db $db
    jr nz, jr_086_61eb

    ld hl, $21de

jr_086_620f:
    sbc $21
    sbc $21
    sbc $20
    rst $18
    inc [hl]
    rr b
    rst $20
    db $10
    rst $28
    jr c, jr_086_61e5

    jr c, jr_086_61e7

    jr z, jr_086_61f9

    jr z, @-$27

    jr z, @-$27

    xor b
    ld d, a
    and b
    ld e, a
    jr nz, @-$1f

    jr nz, @-$1f

    jr nz, jr_086_620f

    ld bc, $025e
    db $dd
    ld [bc], a
    db $fd
    ld [bc], a
    db $dd
    ld [bc], a
    db $dd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    dec b
    ld a, [$3a85]
    pop bc
    nop
    ld sp, hl
    nop
    rst $38
    nop
    ld sp, hl
    nop
    ldh a, [rP1]
    db $db
    nop
    inc de
    rst $28
    inc de
    db $ed
    rla
    jp hl


    rla
    db $eb
    dec d
    ld [$eb15], a
    dec d
    db $eb
    sub e
    ld l, l
    sub a
    ld l, b
    sub l
    ld l, d
    sub l

jr_086_6263:
    ld l, e
    sub l
    ld l, d
    sbc l
    ld h, e
    sub l
    ld l, e
    sub a
    ld a, c
    or a
    call z, $fd97
    sub a
    ei
    sub a
    db $ec
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld c, d
    rst $38
    jr @+$01

    ldh [rIE], a
    add b
    rst $38
    ld bc, $04ff
    rst $38
    ld [$20ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    jr c, jr_086_6263

    cp $03
    sub c
    ld l, [hl]
    adc e
    ld a, h
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld l, h
    rst $38
    or b
    rst $38
    sub d
    rst $38
    ld e, e
    rst $38
    ld l, l
    rst $38
    ld [hl], a
    rst $38
    rst $20
    rst $38
    sub h
    ld l, e
    ld h, h
    sbc e
    ld b, $f9
    xor e
    ld d, h
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    call nz, $cbfb
    ld [hl], h
    ld l, h
    or e
    ld l, l
    or d
    ld l, [hl]
    or c
    ld c, a
    or b
    ld b, $f9
    sub b
    ld l, a
    inc sp
    call z, $f629
    rrca
    ldh a, [$2c]
    ld a, [c]
    ld [hl], $f0
    ld a, [hl+]
    ldh a, [rNR41]
    ldh a, [rSC]
    ldh a, [rSB]
    db $f4
    ld [de], a
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$80]
    di
    ld [de], a
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    cp e
    rst $30
    or h
    ei
    cp h
    di
    ld hl, sp-$09
    add sp, -$09
    ldh [$f7], a
    ldh [$f7], a
    ld [c], a
    push af
    or $f1
    ei
    ldh a, [$f5]
    ldh a, [$e5]
    ldh a, [$e5]
    ldh a, [$e3]
    ldh a, [$e6]
    pop af
    push hl
    ld a, [c]
    db $ed
    ld a, [c]
    rst $28
    ldh a, [$ec]
    di
    db $e4
    di
    db $ec
    di
    db $ec
    di
    add sp, -$09
    ld hl, sp-$09
    nop
    ldh a, [$80]
    ld [hl], b
    add b
    ld [hl], b
    nop
    ldh a, [$a0]
    ld d, b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    and b

jr_086_6341:
    ld [hl], b

jr_086_6342:
    ld l, a
    sub b
    rra

jr_086_6345:
    ldh [$3f], a

jr_086_6347:
    ret nz

    ccf

jr_086_6349:
    ret nz

    ld h, b
    sub e
    ldh [$33], a
    jr nz, jr_086_6342

    and b
    ld [hl], e
    jr nz, jr_086_6347

    jr nz, jr_086_6349

    and b

jr_086_6357:
    ld [hl], e
    jr nc, jr_086_6345

    jr nc, jr_086_6357

    jr nc, jr_086_6341

    and b

jr_086_635f:
    ld [hl], e
    jr nz, @+$01

    jr nz, @+$01

    cp a

jr_086_6365:
    rst $38
    jr z, jr_086_635f

    ccf
    ldh [$3c], a
    db $e3
    jr z, jr_086_6365

    jr nz, @+$01

    db $f4
    jr nz, @+$3c

jr_086_6373:
    ldh [rPCM34], a
    and b
    di
    jr nz, jr_086_6373

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, @+$01

    add b
    rst $38
    nop
    rst $38
    ld bc, $0bfe
    db $f4
    ld e, a
    ldh [$3f], a
    ret nz

    rst $30
    ld [$c33c], sp
    ld [$02f7], sp
    db $fd
    dec hl
    db $f4
    rra
    ldh [$bf], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    ld bc, $11ff
    rst $38
    sub b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ret z

    rst $38
    add $ff
    ld b, [hl]
    rst $38
    or d
    rst $38
    di
    rst $38
    xor c
    rst $38
    ld e, $ff
    adc l
    rst $38
    ld c, $ff
    rst $30
    rst $38
    db $fc
    rst $38
    sbc e
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    add h
    ld a, a
    ld [bc], a
    rst $38
    add l
    ld a, a
    db $10
    rst $38
    add hl, hl
    rst $18
    ld a, [de]
    ld h, a
    ld hl, sp+$07
    ld hl, $384f
    rlca
    ld a, $c1
    jr nz, jr_086_6411

    jr c, @+$09

    and b
    rra
    adc a
    ccf
    rst $38
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld l, $ff
    push de
    ld a, [hl+]
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    sbc l
    ld [hl+], a
    reti


    ld h, $c9
    ld h, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld d, e

jr_086_6411:
    xor a
    ld d, d
    xor a
    ld d, d
    xor a
    ld b, d
    cp a
    ld d, d
    xor a
    ret nc

    cpl
    sub b
    cpl
    ret nc

    cpl
    ret nc

    cpl
    ld d, h
    xor e
    ret nz

    ccf
    ldh a, [rIF]
    sub c
    cpl
    inc sp
    adc a
    ld [hl+], a
    sbc a
    ld [hl+], a
    sbc a
    cp l
    ld [bc], a
    xor l
    ld [bc], a
    dec a
    ld [bc], a
    or h
    dec bc
    dec [hl]
    ld a, [bc]
    or h
    dec bc
    ldh a, [rIF]
    ldh a, [rIF]
    nop
    rrca
    db $f4
    dec bc
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    nop
    cpl
    ld [bc], a
    ld a, l
    nop
    cpl
    nop
    cpl
    nop
    ccf
    ld bc, $013e
    ld l, $03
    cp h
    inc de
    db $ec
    dec e
    ld [c], a
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    xor b
    ld d, a
    dec bc
    inc [hl]
    ld [hl], b
    adc a
    ld a, [hl]
    add c
    ldh [$1f], a
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp $ff
    ld hl, sp-$01
    pop hl
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld h, e
    rst $38
    rst $00
    db $fd
    ld b, h
    ei
    add b

jr_086_6493:
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    db $fc
    ld c, a
    db $fc
    rra
    db $fc
    ccf
    ld hl, sp+$7f
    db $fc
    cp a
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    ldh a, [$0c]
    di
    jr nz, jr_086_6493

    add [hl]
    ld sp, hl
    jp nz, Jump_086_40fd

    rst $38
    nop
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    jr @+$01

    ld [$28ff], sp
    rst $38
    and c
    rst $38
    db $ec
    rst $38
    ld a, [hl]
    rst $38
    ld a, [c]
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    sbc [hl]
    rst $38
    ld a, a
    rst $38
    inc hl
    rst $38
    add e
    rst $38
    dec [hl]
    rst $38
    ld c, $00
    dec hl
    nop
    ld a, a
    rrca
    db $f4
    ei
    nop
    rst $38
    ld d, b
    xor a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    or $8c
    ld [hl], e
    and e
    ld e, h
    pop hl
    ld e, $e1
    ld e, $e8
    rla
    xor b
    ld d, a
    xor c
    ld d, [hl]
    adc l
    ld [hl], d
    adc l
    ld [hl], d
    adc l
    ld [hl], d
    xor b
    ld d, a
    adc b
    ld [hl], a
    adc h
    ld [hl], e
    xor h
    ld d, e
    adc h
    ld [hl], e
    add h
    ld a, e
    inc b
    ei
    add h
    ld a, e
    and h
    ld e, e
    xor h
    ld d, e
    xor h
    ld d, e
    xor h
    ld d, e
    xor h
    ld d, e
    inc h
    db $db
    add h
    ld a, e
    add h
    ld a, e
    nop
    rst $38
    rlca
    ld a, d
    dec c
    ld [de], a
    rlca
    jr jr_086_654c

    inc e
    ld [bc], a
    db $fd

jr_086_654c:
    ld b, d
    cp l
    ld [bc], a
    db $fd
    ld [bc], a
    cp l
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [de], a
    jp hl


    ld [hl+], a
    db $dd
    ld [hl-], a
    db $ed
    ld [hl-], a
    db $fd
    ld [hl-], a
    db $ed
    or [hl]
    ld c, e
    rst $18
    ld [hl+], a
    rst $38
    ld hl, sp-$01
    rla
    rst $38
    rla
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld bc, $ff00
    dec bc
    rst $38
    ld bc, $5bff
    rst $38
    ld [hl], $ff
    nop
    rst $38
    ret nc

    cpl
    ld h, e
    sbc h
    inc h
    rst $38
    rst $00
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_086_658e:
    ld c, a
    db $fd
    ld e, a
    ld hl, sp+$7f
    ldh a, [$7f]
    ldh [rIE], a

jr_086_6597:
    add b
    db $fd
    nop
    db $eb
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fd
    rst $38
    ld b, $ff
    ld c, $fb
    inc c
    rst $38
    jr c, jr_086_658e

    jr c, jr_086_65e1

    adc $11
    xor $02
    db $fd
    jr nz, jr_086_6597

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld a, [bc]
    rst $38
    sbc b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $e3
    rst $38
    sbc l
    rst $38
    or c
    rst $38
    ld h, e
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38

jr_086_65e1:
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    ld bc, $3fff
    rst $20
    ld a, l
    daa
    db $dd
    rlca
    ld a, [$f807]
    inc bc
    db $fc
    ld [hl+], a
    db $dd
    ld b, $f9
    ld hl, $00de
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    or b
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fd
    nop
    rst $38
    db $10
    xor $10
    xor $10
    rst $28
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    db $10
    rst $38
    ld [de], a
    db $ed
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld d, d
    cp l
    ld d, d
    cp a
    rst $38
    jp nc, $897f

    rst $38
    ld bc, $05ff
    ei
    db $76
    ld a, e
    or a
    ld [hl], e
    cp [hl]
    dec sp
    call nc, $9f73
    ld [hl], e
    sbc a
    ld [hl], e
    sbc a
    ld d, e
    cp a
    ld a, e
    sub l
    ei
    rla
    db $d3

jr_086_665f:
    ld a, l
    di
    ld e, a
    ld [hl], a
    db $eb
    ccf
    rst $20
    rst $38
    rst $38
    rst $38

jr_086_6669:
    rst $38
    rst $38
    ld c, l
    rst $38
    ccf
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld e, e
    rst $38
    ld c, a

jr_086_6675:
    rst $38
    rst $38
    rst $38
    add h
    rst $38
    sbc e
    rst $38
    ld d, b
    xor a
    jr nz, jr_086_665f

    and b
    rst $38
    rst $00
    rst $38
    or a
    add sp, -$01
    ldh a, [rIE]
    ldh a, [rIE]
    add b
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    inc bc
    rst $38
    ld b, $fb
    inc c
    ei
    inc c
    rst $28
    jr jr_086_6669

    jr nc, jr_086_6675

    ld h, b
    ld hl, sp+$40
    ei
    ret nz

    ld a, b
    add b
    db $f4
    nop
    ld hl, sp+$00
    ret z

    nop
    pop af
    nop
    pop hl
    nop
    add sp, $00
    ld d, a
    ld [$04bb], sp
    add hl, bc
    ld [hl], $e1
    ld e, $63
    sbc [hl]
    ld [hl+], a
    rst $18
    ld bc, $81ff
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    db $dd
    rst $38
    ld hl, sp-$01
    rst $08
    rst $38
    rst $38
    rst $38
    call c, $ffff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    ld bc, $01ff
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    rra
    rst $38
    rst $38
    rst $30
    add l
    rst $38
    add l
    ld a, a
    add b
    rst $38
    add b
    rst $38
    jr z, @-$27

    or b
    rst $18
    or e
    ld l, l
    inc sp
    rst $28
    pop af
    xor a
    or e
    rst $08
    ld bc, $01ff
    rst $38
    ld de, $30fe
    rst $08
    db $10
    rst $28
    and d
    rst $18
    sub d
    rst $38
    sub d
    rst $38
    add c
    ld a, a
    add e
    db $fd
    inc bc
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    inc d
    db $eb
    ld [bc], a
    db $fd
    add c
    cp $02
    db $fd
    sub [hl]
    db $eb
    inc d
    rst $28
    jp nz, $923f

    ld l, a
    sub d
    rst $38
    inc de
    rst $38
    rla
    ei
    add a
    ld a, a
    rlca
    rst $38
    add a
    ld a, a
    ld d, a
    xor a
    rla
    ei
    cp a
    ld d, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $18
    cp a
    rst $18
    dec sp
    cp a

jr_086_674f:
    ld e, a
    cp a
    ld c, a
    rst $38
    dec bc
    rst $18
    dec hl
    db $db
    xor l
    rst $18
    cp d
    rst $18
    db $eb
    rst $38
    adc e
    rst $38
    rst $18
    sbc e
    rst $38
    reti


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
    cp a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    jr nc, jr_086_674f

    nop
    rst $38
    ld l, [hl]
    rst $38
    pop af
    ld e, a
    rst $30
    add hl, bc
    rst $18
    ld [hl], b
    db $fd
    ld d, b
    cp a
    ret nc

    ld a, a
    ret nz

    sub l
    ld h, b
    db $e3

jr_086_6793:
    ld b, b
    pop hl
    nop
    adc [hl]
    ld bc, $0107
    add a
    inc bc
    rlca
    ld [bc], a
    adc e
    ld b, $ee
    inc b
    ld a, a
    inc b
    ld [hl], $08
    ld a, l
    ld [$08d5], sp
    xor l
    db $10
    rst $38
    db $10
    cp [hl]
    jr nz, jr_086_6793

    dec e
    call z, $c31b
    inc e
    ldh a, [rIF]
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    db $f4
    rst $38
    add b
    rst $38
    ld a, [$f8ff]
    rst $38
    ld [$fbff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    daa
    rst $38
    ld b, $ff
    ld c, h
    rst $38
    rra
    rst $38
    rst $38
    rst $18
    cp $8f
    cp $91
    ld a, [hl]
    sub e
    rst $38
    nop
    rst $38
    sbc a
    ld [hl], d
    sub h
    rst $38
    ld sp, $80de
    ld a, a
    sub [hl]
    ld a, a
    add d
    db $fd
    add a
    ld a, [$ff87]
    and a
    db $db
    rst $00
    ei
    db $e3
    rra
    ld b, e
    cp a
    add e
    db $fd
    and h
    ld e, a
    ld d, $ef
    daa
    sbc $27
    sbc $17
    rst $28
    inc de
    xor $53
    xor $43
    cp a
    add hl, hl
    sbc $3b
    db $dd
    ld e, a
    rst $28
    call $efff
    db $dd
    ld h, a
    rst $18
    add hl, bc

jr_086_682f:
    or $8b
    db $fc
    adc l
    ei
    ld c, a
    ld sp, hl
    rst $00
    ld a, l
    db $dd
    rst $30
    rst $38
    db $dd
    rst $38
    xor l
    db $fd
    rst $28
    rst $28
    ld sp, hl
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
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ef
    rst $18
    rst $38
    rst $00
    rst $28
    rst $10
    rst $30
    rst $18
    rst $30
    rst $28
    rst $30

jr_086_685d:
    rst $38
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $10
    rst $30
    rst $28
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    rst $38
    jp c, $feff

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, l
    rst $38
    daa
    db $db
    ld l, a
    sbc [hl]
    ld c, a
    rst $30
    rst $10
    jr nc, jr_086_685d

    jr nz, jr_086_682f

    ld b, b
    ret nz

    ld b, b
    ret nz

    nop
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    ld h, e
    nop
    push af
    nop
    ldh [rP1], a
    ldh [rP1], a
    adc c
    nop
    inc bc
    nop
    add d
    nop
    and d
    ld d, c
    db $fc
    inc de
    ret c

    scf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$0e]
    ldh a, [rNR34]
    ldh [rNR34], a
    ldh [$1f], a
    ldh [$f0], a
    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $10
    rst $38
    ld d, $ff
    ld e, d
    rst $38
    ld [$19ff], sp
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $18
    reti


    rst $38
    ld [$455d], a
    ei
    ld bc, $03ff
    rst $38
    ld h, a
    sbc a
    rlca
    ei
    rrca
    di
    ld b, a
    cp a
    dec b
    ld a, [$f75f]
    rst $38
    ld c, a
    rst $18
    ld h, a
    rst $18
    ld h, a
    rst $38
    ld b, a
    rst $38
    ld h, a
    rst $28
    ld [hl], a
    rst $20
    rst $38
    ld h, a
    sbc [hl]
    ld h, $fd
    daa
    cp $7c
    rst $28
    ld a, l
    xor $7f
    db $ec
    ld a, a
    or [hl]
    scf
    xor $bf
    ld h, a
    cpl
    rst $30
    xor a
    ld a, a
    xor a
    ld a, a
    xor a
    ld a, a
    and a
    ld a, a
    cpl
    rst $30
    cpl
    rst $30
    ccf
    rst $28
    ccf
    rst $38
    ccf
    rst $08
    cpl
    rst $10
    cp a
    ld l, a
    ld a, a
    and a
    rst $28
    ld a, a
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
    cp a
    ld a, a
    cp e
    rst $18
    dec sp
    ld a, a
    cp e
    rst $38
    dec de
    cp e
    rst $10
    rst $38
    sbc d
    cp a

jr_086_695b:
    ld a, [$bbff]
    rst $38
    sbc e
    cp a
    ei
    rst $38
    sbc e
    rst $38
    or e
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    db $10
    rst $38
    cp a
    rst $38
    ld c, c

jr_086_697d:
    rst $38
    cp h
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rst $38
    xor a
    rst $38
    daa
    ld e, a
    nop
    rrca
    nop
    cpl

jr_086_698f:
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop

jr_086_6998:
    rra
    db $10
    jr jr_086_69ac

    ld [de], a
    db $10
    inc a
    nop
    ld a, [hl-]
    nop
    rra
    jr nz, @+$68

    jr nz, jr_086_698f

    jr nz, jr_086_697d

    jr nz, jr_086_695b

    ld h, b

jr_086_69ac:
    add sp, $40
    and h
    ld b, b
    nop
    ld a, a
    xor b
    ld a, a
    jr z, @+$01

    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    rst $00
    jr c, jr_086_6998

    ld a, [hl-]
    rst $10
    jr c, jr_086_69ce

    jr c, jr_086_69f8

    db $10
    cpl
    db $10
    dec l
    ld [de], a

jr_086_69ce:
    ld l, $31
    jr nz, jr_086_6a04

    jr nz, jr_086_6a0f

    jr nz, @+$35

    ldh [$37], a
    ld [c], a
    ld sp, $33e0
    ldh [$7b], a
    ldh [rIE], a
    ldh [$3f], a
    ldh [$3b], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    db $fd
    pop hl
    ld a, $20
    rst $38
    ld h, b
    cp a

jr_086_69f8:
    ld h, b
    cp a
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

jr_086_6a04:
    and b
    rst $38
    db $f4
    xor e
    ldh a, [$af]
    ldh a, [$bf]
    ld hl, sp-$49
    xor b

jr_086_6a0f:
    sub $b0
    rst $28
    ldh a, [$bf]
    pop af
    xor $f0
    ld a, a
    ld hl, sp-$0a
    ldh a, [$fe]
    ldh a, [$7f]
    ldh a, [$9f]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ld hl, sp-$29
    ret nc

    rst $38
    call c, $d8f3
    rst $30
    ld hl, sp-$21
    reti


    cp $f8
    rst $18
    db $fc
    di
    ld a, [$f9d7]
    cp $fe
    ei
    rst $38
    cp $fc
    rst $38
    db $fc
    cp $fc
    db $fd
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    ld hl, sp-$04
    db $fc
    ld sp, hl
    db $fc
    ei
    cp $d9
    cp $dd
    xor $d9
    db $fd
    ld [$effc], a
    db $fc
    rst $38
    db $fc
    rst $28
    cp $ef
    rst $38
    db $ed
    cp $ed
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp $fc
    rst $38
    db $fc
    dec de
    ld hl, sp-$51
    db $fd
    or d
    db $fc
    adc a
    db $fc
    db $db
    db $fc
    ei
    cp $0d
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    nop
    ld h, c
    nop
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    ld a, a
    nop
    cp a
    nop
    sbc a
    nop
    inc bc
    ld bc, $000d
    ld bc, $0500
    nop
    rlca
    ld bc, $0003
    inc bc
    nop
    dec bc
    nop
    ld de, $0c00
    nop
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01be
    ld a, $01
    ccf
    ld bc, $c22d
    dec a
    db $d3
    dec l
    db $d3
    dec l
    db $d3
    dec l
    db $d3
    dec l
    jp nz, $c03d

    ccf
    ld b, b
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    ld a, e
    add d
    ld a, l
    dec b
    ld a, [$7d82]
    inc b
    ei
    inc b
    rst $38
    inc b
    ei
    inc b
    ei
    inc b
    ei
    add h
    ld a, e
    dec d
    ld [$fd02], a
    ld b, $f9
    add a
    db $fc
    rlca
    ld hl, sp+$04
    ei
    ld [bc], a
    db $fd
    add h
    ld a, e
    add e
    ld a, h
    add [hl]

Jump_086_6aff:
    ld a, e
    ld b, d
    cp a
    ld a, [bc]
    rst $30
    add e
    ld a, [hl]
    add d
    ld a, a
    ld [bc], a
    db $fd
    ld c, d
    or l
    ld c, d
    or l
    jp nz, Jump_086_427d

    cp l
    ld h, [hl]
    sbc e
    ld c, d
    or l
    ld b, d
    cp l
    ld b, d
    cp l
    jp Jump_000_216c


    rst $18
    ld [hl+], a
    db $dd
    ld b, e
    cp h
    ld b, c
    cp a
    ld bc, $25fe
    jp c, $df25

    ld hl, $03df
    rst $38
    daa
    db $db
    ld l, a
    cp a
    ccf
    rst $08
    ccf
    rst $38
    ld a, a
    cp a
    ld a, a
    db $ed
    rst $38
    jp Jump_086_43bf


    sbc a
    ld h, e
    sbc a
    ld h, e
    ld e, a
    and e
    ccf
    jp $c03f


    ccf
    ld b, b
    rla
    ld l, b
    rlca
    sbc b
    rlca
    cp b
    rrca
    or b
    rlca
    ret c

    inc d
    ld c, e
    ld e, $81
    rrca
    ldh a, [$8f]
    ld [hl], b
    rrca
    ld a, [c]
    rrca
    ldh a, [rTIMA]
    ld a, [$e817]
    inc de
    db $ec
    inc de
    db $ec
    ld de, $15ef
    db $eb
    dec b
    rst $38
    ld d, c
    xor [hl]
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    nop
    rst $38
    sub b
    ld l, a
    adc b
    ld [hl], a
    ld [$0cf7], sp
    ei
    add d
    ld a, l
    jr nz, @-$1f

    ld [$08f7], sp
    rst $30
    jp nz, $883d

    ld [hl], a
    adc b
    ld [hl], a
    and h
    ld e, e
    xor d
    ld d, l
    add $39
    ret c

    daa
    jp nc, $cc3d

    inc de
    jp c, $f627

    add hl, bc
    db $fc
    inc bc
    adc b
    ld a, a
    add b
    ld a, a
    add h
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    inc b
    ld a, a
    ld b, b

jr_086_6baf:
    ccf
    ld [de], a
    db $fd
    sub d
    ld a, l
    sub d
    ld a, l
    jr jr_086_6baf

    db $10
    rst $38
    add hl, de
    or $19
    and $18
    rst $28
    add hl, bc
    or $08
    rst $38
    add hl, bc
    cp $09
    cp $29
    cp $29
    sbc $29
    rst $38
    xor c
    ld e, [hl]
    xor b
    rst $18
    xor c
    sbc $e9
    sbc [hl]
    db $fc
    adc e
    db $fc
    rst $08
    db $fd
    cp [hl]
    db $fc
    cp a
    db $fd
    cp $fc
    rst $38
    cp $fd
    cp $fd
    cp $dd
    rst $38
    call z, $8dfe
    db $fd
    sbc [hl]
    rst $38
    xor l
    cp $cd
    rst $38
    ld e, h
    rst $38
    ld c, h
    rst $38
    ld e, h
    rst $38
    ld e, h
    cp $5f
    ld e, [hl]
    rst $38
    ld a, [hl]
    rst $18
    ld a, [hl]
    rst $18
    ld a, a
    sbc $7f
    sbc $7e
    rst $08
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld a, a
    ld a, a
    cp $7f
    cp a
    ld a, a
    rst $38
    rst $38
    ld l, $ff
    ld a, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    cpl
    cp a
    ld [hl], a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
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
    cp a
    rst $38
    cp a
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
    ccf
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $18
    ccf
    ccf
    rst $18
    sbc a
    ld h, a
    and a
    ld e, a
    or e
    ld c, a
    di
    rrca
    rst $30
    adc e
    rst $30
    set 6, a
    ld l, e
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    cp e
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    ld e, a
    rst $38
    rst $08
    ld a, l
    ld d, [hl]
    rst $28
    ld d, a
    rst $28
    ld e, a
    rst $20
    rst $28
    rla
    rst $28
    ld d, a
    ld [hl], a
    adc a
    rst $10
    cpl
    ld [hl], a
    adc a
    ld d, a
    xor a
    rst $10
    cpl
    rst $28
    sub e
    rst $30
    adc a
    rst $28
    rla
    rst $28
    inc sp
    rst $20
    ccf
    and a
    ei
    rst $20
    dec sp
    and e
    ld a, [hl]
    rst $20
    ld a, e
    ld h, a
    cp e
    rst $20
    ld a, [hl-]
    db $e3
    ccf
    db $e3
    ld a, l
    ld [hl], e
    xor $6b
    rst $30
    ld [$08ff], sp
    rst $38
    inc c
    ei
    inc c
    rst $38
    inc c
    ei
    inc c
    rst $38
    inc c
    rst $30
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $30
    inc c
    rst $30
    inc b
    rst $38
    ld b, $fd
    ld b, $ff
    ld b, $fd
    add [hl]
    ld a, a
    ld b, $ff
    ld b, $ff
    add [hl]
    ld a, a
    add [hl]
    ld a, e
    add [hl]
    ld a, e
    add [hl]
    ei
    add [hl]
    ld a, e
    add e
    rst $38
    add e
    rst $38
    add a
    ld a, [$fb87]
    add e
    rst $38
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    ld b, e
    cp a
    add e
    ld a, a
    adc e
    ld a, a
    adc e
    ld a, a
    sbc e
    ld h, a
    jp Jump_086_433f


    rst $38
    ld b, e
    db $fd
    ld b, e
    rst $38
    ld b, e
    rst $38
    jp $c37d


    ld a, l
    jp $c7fd


    ei
    rst $08
    rst $30
    rst $18
    rst $28
    rst $38
    rst $18
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
    rst $18
    rst $38
    rst $28
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

Call_086_6d32:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    sub a
    rst $38
    sub a
    rst $38
    cp $f5
    cp $bf
    cp $9b
    ld a, [$fad5]
    db $dd
    ld hl, sp-$09
    ld a, [$fadd]
    ld e, a
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $0a
    ld a, [bc]
    rla
    jr jr_086_6d97

    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_086_6da8

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [hl+], a
    inc hl
    ld a, [de]
    ld a, [de]
    ld a, [de]
    inc h
    dec h
    ld h, $27
    jr z, jr_086_6dbf

    ld a, [bc]

jr_086_6d97:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [hl+]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_086_6db1

    ld a, [bc]

jr_086_6da8:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld sp, $1a32
    ld a, [de]
    ld a, [de]
    inc sp

jr_086_6db1:
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_086_6dc1

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, sp
    ld a, [de]
    ld a, [de]

jr_086_6dbf:
    ld a, [de]
    ld a, [hl-]

jr_086_6dc1:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld a, [bc]
    ld a, [bc]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld a, [de]
    ld a, [de]
    ld a, [de]
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
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld a, [de]
    ld a, [de]
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld a, [bc]
    ld a, [bc]
    ld e, [hl]
    ld a, [de]
    ld a, [de]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld a, [de]
    ld a, [de]
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, [de]
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    ld a, [bc]
    adc b
    adc c
    ld a, [de]
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    inc hl
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ld a, [bc]
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $0a
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
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
    nop
    nop
    inc b
    inc b
    inc b
    ld [bc], a
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
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
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
    inc b
    inc b
    nop
    inc b
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
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
    inc b
    inc b
    nop
    nop
    inc b
    ld [bc], a
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
    inc b
    inc b
    nop
    nop
    inc b
    ld [bc], a
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
    inc b
    inc b
    inc b
    nop
    inc b
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$dfef], sp
    or c
    xor $68
    rst $30
    sbc b
    rst $30
    db $10
    rst $38
    inc l
    ei
    ld b, b
    rst $38
    ld h, h
    rst $38
    add hl, hl
    cp $2f
    cp $9e
    rst $38
    adc $ff
    ret


    rst $38
    ld h, c
    rst $38
    and a
    ld a, a
    dec sp
    rst $38
    add hl, de
    rst $38
    dec c
    rst $38
    sbc h
    ld l, a
    sub $2f
    and [hl]
    ld e, a
    ld b, e
    cp a

Jump_086_700c:
    or l
    ld c, e
    ld [c], a
    sbc l
    or h
    set 1, [hl]
    pop af
    ld h, b
    rst $38
    ld [hl], l
    ld a, [$fd72]
    cp b
    rst $38
    ld e, h
    rst $38
    inc h
    rst $38
    jp c, $d9ff

    rst $38
    pop hl
    rst $38
    ret nc

    rst $38
    ld a, [$7dff]
    rst $38
    inc a
    rst $38
    rla
    rst $38
    rra
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    rra
    rst $38
    adc a
    rst $38
    add $ff
    ldh [rIE], a
    ld a, h
    rst $38
    db $f4
    rst $38
    ld c, b
    rst $38
    xor h
    rst $38
    ld [hl], h
    rst $38
    ld a, [hl]
    rst $38
    ld de, $cfff
    rst $38
    rst $28
    rst $38
    ld [hl], e
    rst $38
    dec [hl]
    rst $38
    ld a, [de]
    rst $38
    inc c
    rst $38
    rlca
    rst $38
    add e
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    and l
    rst $38
    jp z, $fafe

    cp $f4
    db $fc
    xor b
    ld hl, sp+$70
    ldh a, [$b0]
    ret nc

    and b
    ldh [$c0], a
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    ld b, $f8
    ld c, $f0
    dec c
    ldh a, [rNR33]
    ldh [rNR31], a
    ldh [$37], a
    ret nz

    scf
    ret nz

    ld l, a
    add b
    ld l, a
    add b
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    add h
    ei
    add c
    cp $ca
    ld [hl], l
    adc d
    ld [hl], l
    ld h, b
    cp a
    ld d, b
    cp a
    ld [hl], b
    sbc a
    ld a, [bc]
    db $fd
    ld a, [hl-]
    call $cf30
    sbc h
    ld h, a
    ld e, d
    and a
    adc [hl]
    di
    adc l
    di
    add $f9
    ld l, d
    push af
    ld [c], a
    db $fd
    jp nc, $8afd

    db $fd
    ld e, b
    rst $38
    ld [hl], h
    rst $38
    or h
    rst $38
    cp d
    rst $38
    sbc l
    rst $38
    xor [hl]
    rst $38
    ld h, a
    rst $38
    ld h, l
    rst $38
    inc hl
    rst $38
    inc de
    rst $38
    dec de
    rst $38
    add hl, bc
    rst $38
    ld b, $ff
    ld b, [hl]
    cp a
    inc bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    jr nc, @+$01

    jr @+$01

    ret


    rst $38
    db $e4
    rst $38
    cp d
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    ld [hl], a
    rst $38
    rra
    rst $38
    dec de
    rst $38
    adc l
    rst $38
    ld [hl], a
    rst $38
    ld a, l
    rst $38
    dec a
    rst $38
    ld c, a
    rst $38
    sbc d
    cp $7c
    db $fc
    ld l, h
    db $fc
    xor b
    ld hl, sp-$10
    ldh a, [$a0]
    ldh [$a0], a
    ldh [rLCDC], a
    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$06
    ld hl, sp+$0e
    ldh a, [$0d]
    ldh a, [rNR31]
    ldh [rNR31], a
    ldh [$37], a
    ret nz

    scf
    ret nz

    ld l, a
    add b
    rst $28
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, h
    add c
    xor $91
    cp d
    call nz, $c05f
    db $fc
    ld b, e
    cpl
    ldh [$3f], a
    ldh [$2f], a
    ldh a, [$3f]
    ret nc

    add [hl]
    ld a, c
    rst $18
    jr z, jr_086_71be

    db $ec
    daa
    call c, $ce35
    ld b, e
    cp [hl]
    call nz, $01bb
    rst $38
    ld b, c
    rst $38
    jr nz, @+$01

    and b
    ld a, a
    sub b
    ld a, a
    ld d, b
    cp a
    ld c, b
    cp a

jr_086_71be:
    jr @-$0f

    ld [hl], h
    adc a
    inc l
    rst $10
    add d
    rst $38
    ld b, d
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    and b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, l
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld c, $fe
    ld e, $fe
    cp h
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    jr nc, @-$2f

    ld a, [hl]
    add c
    ld h, a
    add b
    ret c

    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl+], a
    db $dd
    db $d3
    xor h
    sub c
    xor $b0
    ld c, a
    ldh a, [rVBK]
    dec h
    jp c, $2ff0

    jp z, $ce35

    ld sp, $17ec
    ld b, c
    cp [hl]
    ld hl, sp+$0f
    ret z

    ccf
    or h
    ld c, a
    ld e, h
    and a
    cp [hl]
    ld b, e
    ld a, [hl]
    add e
    ld d, $eb
    sbc d
    push hl
    rlca

jr_086_7247:
    ld sp, hl
    ld h, h

jr_086_7249:
    db $db
    ld e, b
    rst $20
    or b
    rst $28
    jr z, jr_086_7247

    jr jr_086_7249

    inc d
    ei
    inc c
    ei
    ld [$01ff], sp
    cp $06
    db $fd
    add c
    cp $02
    rst $38
    ld b, d
    rst $38
    add hl, hl
    rst $38
    dec h
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    rst $38
    ld h, $ff
    ld e, [hl]
    rst $18
    add c
    add c
    nop
    nop
    nop
    nop
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
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    ld e, $01
    rst $20
    nop
    ld hl, sp+$00
    rst $38
    nop
    and c
    sbc $a3
    call c, $e4db
    ld d, c

jr_086_7297:
    xor $54
    db $eb
    inc h

jr_086_729b:
    ei
    jr nz, @+$01

    jr z, jr_086_7297

    sub b
    ld a, a
    jr jr_086_729b

    jr @+$01

    rrca
    rst $38
    inc c
    ei
    ld [$47fc], sp
    cp h
    ld b, a
    cp h
    dec b
    cp $21
    sbc $26
    jp c, $fe01

    ld de, $b1ef
    rst $28
    add c
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    db $10
    rst $38
    ld de, $58fe
    rst $38
    ld [$08ff], sp
    rst $38
    inc h
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    ret


    rst $38
    nop
    rst $38
    inc h
    rst $38
    ld [c], a
    rst $38
    inc e
    rra
    inc bc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rra
    nop
    db $e3
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, d
    push bc
    ld b, b
    rst $30
    ld b, d
    push af
    bit 6, h
    xor l
    ld [hl], d
    scf
    add sp, $6d
    or d
    add hl, de
    ld a, [c]
    ld a, $d1
    ld e, $f1
    inc b
    ld sp, hl
    adc e
    db $fc
    ld a, a
    ld hl, sp-$35
    inc a
    ld [hl], a
    inc c
    db $fd
    ld b, $fc
    rlca
    ld hl, sp+$07
    ld a, [$ae07]
    inc de
    ld a, d
    inc bc
    xor a
    ld bc, $8b25
    sbc a
    add c
    cp $81
    or [hl]
    pop bc
    ld a, e
    ret nz

    ld e, [hl]
    pop hl
    ld a, $e1
    ld a, $e1
    dec a
    ld [c], a
    rra
    ldh a, [rNR34]
    pop af
    ld d, $f9
    adc [hl]
    ld sp, hl
    rrca
    ld hl, sp-$75
    db $fc
    daa
    db $fc
    daa
    db $fc
    ld sp, $b3fe
    cp $db
    cp $40
    rst $38
    push af
    rst $08
    ld a, $3d
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ldh [$1f], a
    ld a, h
    inc bc
    adc a
    nop
    pop af
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [hl+], a
    ld l, l
    or d
    dec h
    ld a, [$ba45]
    ld b, [hl]
    cp c
    ret c

    dec [hl]
    jp c, $9535

    ld a, b
    add h
    ld a, d
    adc c

jr_086_7393:
    ld a, [hl]
    adc a
    ld a, a
    adc h
    ld a, e
    add e
    ld a, h
    inc de
    db $ec
    dec l
    sub $17
    db $ec
    adc a
    ld [hl], h
    add hl, hl
    ld d, [hl]
    ld bc, $837e
    ld a, [hl]
    ld b, e
    cp [hl]
    ld b, c
    cp [hl]
    nop
    rst $38
    ld b, c

jr_086_73af:
    cp a
    add c

jr_086_73b1:
    rst $38
    jr nz, jr_086_7393

    sub b
    rst $28
    ld d, c
    xor $19
    xor $c0
    ld a, a
    ret z

    ld [hl], a
    adc b
    ld [hl], a
    add sp, $37
    push hl
    dec sp
    db $ec
    inc sp
    call nc, $b03b
    ld e, a
    or c
    ld e, a
    or l
    ld e, e
    jr z, jr_086_73af

    jr z, jr_086_73b1

    jr z, @+$01

    inc b
    rst $38
    call nz, $8c3f
    ld [hl], a
    ld a, [c]
    rst $08
    dec a
    ld a, [hl-]
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0102
    nop
    ld [bc], a
    inc b
    nop
    ld b, $fc
    ld b, $fc
    inc c
    ld hl, sp+$0d
    ld hl, sp+$09
    ld hl, sp+$1b
    pop af
    dec de
    pop af
    dec de
    pop af
    dec de
    pop af
    inc de
    pop af
    rla
    pop af
    rra

Jump_086_7407:
    di
    rra
    di
    rra
    di
    rra
    rst $38
    rra
    rst $38
    dec b
    dec bc
    nop
    inc bc
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld a, h
    inc bc
    adc a
    nop
    pop af
    nop
    cp $00
    scf
    ret c

    inc de
    db $fc
    ld bc, $04fe
    ei
    ld c, e
    cp h
    ld l, a
    sbc b
    ld c, e
    cp h
    ld c, a
    cp b
    adc d
    ld a, l
    adc e
    ld a, h
    pop bc
    cp $fc
    rst $38
    ld b, $fd
    inc a
    rst $00
    db $fc
    rlca
    adc [hl]
    ld [hl], a
    cp d
    ld b, a
    ld a, d
    add a
    or d
    ld c, a
    sbc d
    ld h, a
    sbc d
    ld h, a
    sbc e
    ld h, [hl]
    ld e, [hl]
    and e
    ld d, l
    and e
    inc a
    jp $e11f


    inc a
    jp $e917


    adc e
    push af
    ld a, [de]
    push hl
    ld d, $e9
    ld d, [hl]
    jp hl


    push hl
    ld e, d
    ld d, $e9
    dec bc
    db $f4
    rrca
    ldh a, [rNR11]
    xor $30
    rst $28
    inc e
    db $e3
    inc l
    di
    nop
    rst $38
    inc d
    ei
    ld [de], a
    db $fd
    sub b
    rst $38
    db $10
    rst $38
    ld d, b
    rst $38
    add b
    rst $38
    ret z

    cp a
    ld a, h
    ld a, e
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    rlca
    inc bc
    rrca
    rlca
    rla
    rrca
    ccf
    ld a, a
    rst $18
    ld a, a
    rrca
    rst $38
    ld e, a
    cp a
    rst $18
    ccf
    db $dd
    ccf
    ld sp, hl
    ccf
    cp l
    ld a, a
    ld a, l
    ld a, a
    db $fd
    ld a, a
    ld a, l
    cp $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $08
    ret nz

    pop bc
    nop
    add b
    add b
    add b
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ld a, $01
    rst $00
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    ld b, $aa
    ld d, $db
    ld h, $ba
    ld b, [hl]
    rst $20
    ld a, [bc]
    rst $28
    ld [bc], a
    ld e, e
    ld h, $ff
    ld [bc], a
    rst $10
    ld a, [hl+]
    or $0b
    inc a
    jp $03ef


    ld e, l
    and e
    ld e, b
    and a
    ld e, c
    and a
    push de
    dec hl
    dec [hl]
    swap l
    res 2, c
    ld l, a
    ld [hl], c
    adc a
    ld d, e
    xor l
    ld l, a
    sub c
    db $eb
    dec d
    ccf
    pop bc
    ld a, c
    add a
    ld e, c
    and a
    ld e, e
    and l
    ld c, b
    or a
    db $10
    rst $28
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [$9f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld b, b
    rst $38
    ret nz

    ld a, a
    and b
    ld a, a
    inc h
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ldh [$3f], a
    ld b, b
    cp a
    ld d, b
    cp a
    db $fc
    di
    rrca
    rrca
    nop
    nop
    nop
    ld a, h
    ld h, b
    ld a, a
    ld [hl], b
    ld a, a
    ld hl, sp-$01
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
    rrca
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld [$01ff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    add e
    ld bc, $c0f0
    cp $fc
    rst $38
    rst $38
    ei
    add a
    sbc a
    ldh [$f9], a
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ld a, $01
    rst $00
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp h
    nop
    db $ec
    nop
    ld a, [hl]
    add b
    ld a, h
    add b
    cp $00
    ld a, [hl]
    add b
    db $ec
    db $10
    ld a, [$ee00]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld e, $00
    ld d, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    sbc e
    inc b
    adc a
    nop
    cp a
    nop
    ccf
    add b
    ccf
    add b
    dec [hl]
    adc d
    rst $28
    nop
    ld a, a
    add b
    ld l, l
    add d
    ld [hl], a
    adc b
    ld e, a
    and b
    rst $00
    and b
    xor a
    ret nc

    cp l
    jp nz, $90ef

    or l
    jp z, $93ec

    sbc b
    rst $00
    cp b
    rst $00
    adc d
    push de
    adc c
    sub $b3
    call z, $d728
    ld [hl+], a
    db $dd
    and b
    rst $18
    ld d, b
    rst $08
    add b

jr_086_7625:
    rst $38
    ld h, b
    rst $18
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr jr_086_7625

    add b
    ld a, a
    ld hl, sp-$09
    rrca
    ld c, $01
    add c
    nop
    ld hl, sp+$00
    rst $38
    add b
    rst $38
    ldh [rIE], a
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
    ld a, a
    rst $38
    dec e
    rst $38
    ld [bc], a
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
    ld a, a
    ccf
    rrca
    ld bc, $80c0
    ld hl, sp-$08
    rst $38
    rst $38
    rst $28
    rra
    dec a
    jp $f8e7


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rrca
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rra
    nop
    db $e3
    nop
    db $fc
    nop
    ld sp, hl
    ld b, [hl]
    jp c, $f964

    ld b, [hl]
    ld a, [$5344]
    db $e4
    pop hl
    ld d, [hl]
    ld h, b
    rst $10
    db $ed
    ld d, d
    ld l, l
    jp nc, $d368

    ld l, c
    jp nc, Jump_086_52e9

    ld l, c
    jp nc, $d368

    ld l, l
    jp nc, $d328

    db $ec
    ld d, e
    jp hl


    ld d, [hl]
    ld c, h
    db $d3
    inc [hl]
    srl h
    jp $d728


    inc h
    db $db
    call nz, Call_086_457b
    ld a, [$fa45]
    inc b
    ei
    inc h
    ei
    dec b
    ld a, [$fb04]
    inc b
    ei
    inc b
    ei
    ld b, h
    ei
    inc b
    ei
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add h
    ei
    add h
    ei
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    and e
    db $fd
    add d
    db $fd
    inc l
    rst $18
    nop
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    inc d
    rst $38
    ldh a, [$ef]
    rra
    ld e, $01
    add c
    nop
    ld hl, sp+$00
    rst $38
    ld [$eeff], sp
    rst $38
    cp $ff
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
    ld sp, hl
    rst $38
    pop af
    ei
    ld [hl], c
    ccf
    inc de
    ccf
    sub e
    or a
    db $e3
    rst $10
    db $e3
    ld h, a
    jp $c367


    xor a
    jp $c78b


    rst $08
    add a
    rst $08
    add a
    rst $18
    add a
    rst $18
    adc a
    rst $38
    adc a
    cp $8f
    db $fc
    sbc a
    db $fc
    cp a
    ret z

    jr c, jr_086_77c3

    cp b
    sub b
    ld h, b
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld a, b
    rlca
    sbc a
    nop
    db $e3
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push hl
    ld e, $e5
    ld e, $d5
    ld l, $85
    ld a, [hl]
    call $9d3e
    ld l, [hl]
    sbc $2d
    xor [hl]
    ld e, l
    db $ec
    rra
    ret z

    ccf
    ld c, h
    cp a
    jp z, $4a3d

    cp l
    ld [$7a1d], a
    sbc l
    ld e, a
    cp b
    ld e, d
    cp l
    ld e, d

jr_086_77c3:
    cp l
    sbc b
    ld a, a
    sub [hl]
    ld a, c
    or [hl]
    ld e, c
    sbc [hl]
    ld [hl], c
    ld [hl], c
    cp [hl]
    cp b
    ld a, a
    inc hl
    rst $38
    inc bc
    ldh a, [$2a]
    ldh a, [$2a]
    ldh a, [$2b]
    ldh a, [rPCM34]
    and b
    ld l, c
    and b
    ld l, d
    and b
    dec hl
    ldh [$5a], a
    ldh [rHDMA1], a
    ldh [rSCX], a
    ldh [$7e], a
    pop bc
    ld c, c
    ldh [$7d], a
    ret nz

    db $db
    ld h, h
    ld a, a
    ret nz

    ld a, [hl]
    pop bc
    sbc a
    ld h, b
    ld [hl], a
    ret nz

    cp e
    call nz, $c2bd
    or l
    jp z, $90ef

    cp a
    ret nz

    di
    add h
    ld [$e295], a
    sbc l
    jp nz, $e1bd

    sbc a
    jp hl


    sub a
    ld c, e
    or l
    reti


    rst $20
    ld a, $3d
    inc bc
    inc bc
    nop
    ldh [rP1], a
    cp $10
    rst $38
    pop hl
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $fe
    cp $fe
    db $fc
    cp $fc
    cp $fc
    db $fc
    db $fc
    db $fc

jr_086_7830:
    db $fc
    db $fc

jr_086_7832:
    ld a, h
    db $fc

jr_086_7834:
    ld a, b
    db $fc

jr_086_7836:
    jr c, jr_086_7830

    jr c, jr_086_7832

    jr c, jr_086_7834

    jr nc, jr_086_7836

    jr nc, jr_086_7830

    ldh a, [$f0]
    ldh [$f0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
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
    ldh [$1f], a
    ld a, h
    inc bc
    adc a
    nop
    pop af
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    db $e3
    ld [$0259], sp
    ei
    nop
    adc c
    ld [hl], d
    db $dd
    ld [hl+], a
    dec sp
    call nz, Call_086_609e
    rlca
    ldh a, [$d7]
    jr nz, jr_086_78b1

    pop hl

jr_086_7894:
    ld [$47f7], sp
    cp b
    ld b, $f9
    dec d
    db $eb
    sbc l
    ld h, e
    sbc l
    ld h, e
    sub e
    ld h, a
    jp c, $8a27

    ld [hl], a
    ld a, [bc]
    rst $30
    ld a, [bc]
    rst $30
    dec bc
    or $09
    or $4d
    or [hl]
    push hl

jr_086_78b1:
    cp $3d
    cp $7f
    inc c
    db $fd
    ld c, $f9
    ld c, $d9
    ld c, $e8
    ld e, $ce
    jr jr_086_7894

    inc e
    or c
    ld e, $b2
    ld e, l
    sub d
    ld a, l
    ld d, h
    dec sp
    ld h, d
    dec a
    and $39
    and $39
    ldh [$3b], a
    and h
    ld a, e
    and b
    ld a, a
    ret z

    ld [hl], a
    jp nz, $4877

    rst $30
    ld e, b
    rst $20
    ld d, b
    rst $28
    sub b
    rst $28
    ret nc

    rst $28
    add b
    rst $38
    and b
    rst $18
    and b
    rst $18
    add b
    rst $38
    add c
    rst $38
    ld hl, $01ff
    rst $38
    add l
    ld a, a
    ld [c], a
    rst $18
    inc a
    ccf
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0100
    nop
    inc bc
    ld bc, $0702
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0206
    dec b
    ld b, $05
    ld bc, $0105
    dec b
    add hl, bc
    dec b
    inc bc
    add hl, bc
    ld bc, $030b
    dec bc
    inc de
    dec bc
    dec bc
    inc de
    rla
    inc de
    inc de
    rla
    ld b, $17
    ld [hl], $07
    ld b, $27
    dec l
    daa
    ld h, $2f
    dec bc
    cpl
    ld l, b
    rrca
    ld a, [bc]
    ld c, a
    dec de
    ld c, [hl]
    inc b
    ld e, a
    ld e, b
    rra
    sbc c
    rra
    sub h
    sbc a
    sbc b
    sbc a
    ld [bc], a
    adc a
    nop
    add c
    db $10
    ldh [rP1], a
    db $fc
    nop
    rra
    nop
    rlca
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
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ld a, $01
    rst $00
    nop
    ld sp, hl
    nop
    and e
    ld [hl], b
    inc [hl]
    ld h, d
    or [hl]
    ld h, b
    db $dd
    ld h, b
    ret z

    ld h, c
    ld hl, sp+$41
    ld [hl], c
    ret z

    dec sp
    ret nz

    or b
    jp $c3b0


    push af

jr_086_7985:
    add d
    ld [hl], c
    add [hl]
    pop hl
    add [hl]
    ld l, d
    add l
    ld [hl+], a
    call Call_086_49a6
    or [hl]
    ld c, c
    adc h
    ld d, e
    xor a
    ld d, b
    db $fd
    ld [bc], a
    ld a, h
    inc bc
    sbc h
    inc hl
    sbc b
    daa
    sub h
    dec hl
    ld hl, sp+$07
    pop de
    ld l, $a6
    ld e, c
    sub a
    ld l, c
    adc c
    ld [hl], a
    and l
    ld e, e
    jr z, jr_086_7985

    dec bc
    or $07
    ld a, [$de21]
    rrca
    db $f4
    dec b
    cp $05
    cp $00
    rst $38
    jr @-$0f

    ld b, e
    cp h
    add b
    ld a, a
    nop
    rst $38
    inc de
    db $fc
    ld d, d
    cp l
    ld [bc], a
    db $fd
    ld l, e
    or h
    ld h, h
    cp e

Call_086_79ce:
    ld b, $f9
    ld b, l
    ei
    ld l, e
    rst $10
    dec de
    rst $20
    or d
    rst $08
    adc [hl]
    rst $30
    sub a
    rst $28
    dec d
    rst $28
    cpl
    rst $18
    rrca
    rst $38
    dec bc
    rst $38
    rra
    rst $38
    ld e, $ff
    ld e, $7f
    ld a, $7f
    ld c, [hl]
    ld a, a
    dec a
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, c
    rst $38
    ld l, l
    rst $38
    ld a, d
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    push af

jr_086_7a07:
    rst $38
    rst $38
    rst $38
    ld a, [$f7ff]
    rst $38
    pop af
    rst $38
    jp hl


    rst $38
    ld [$d9ff], a
    cp $d4

jr_086_7a17:
    rst $38
    pop bc
    cp $bd
    ld [$ff90], a
    jr jr_086_7a17

    xor b
    rst $30
    ret nz

    rst $38
    ret nc

    rst $28
    jr nz, jr_086_7a07

    adc b
    rst $30
    nop
    rst $38
    add b
    ld a, a
    ld c, c
    cp $12
    db $fd
    inc b
    ei
    ld d, d
    db $fd
    add hl, hl
    rst $30
    add e
    rst $38
    add a
    rst $38
    ld c, [hl]
    rst $38
    sbc h
    rst $38
    jr c, @+$21

    inc b
    inc bc
    ld b, b
    add b
    ld [$00f0], sp
    rst $38
    nop
    rra
    inc b
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh a, [rIF]
    ld a, $01
    rst $00
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ld a, [$fa01]
    ld bc, $c52b
    ccf
    pop bc
    inc a
    jp $0bf4


    ldh a, [$0b]
    xor $13
    ret c

    daa
    call c, $cd27
    ld [hl], $c5
    ld a, $f9
    ld c, $db
    inc l
    ld l, c
    sbc [hl]
    ld [hl], e
    sbc h
    pop af
    inc e
    sub b
    ld a, l
    ld b, e
    cp h
    or $29
    or b

Jump_086_7a95:
    ld l, l
    ld d, [hl]
    jp hl


    ld d, [hl]
    jp hl


    ld c, d
    pop af
    ld b, e
    ld hl, sp+$78
    rst $38
    adc a
    rst $38
    di
    adc a
    ld h, c
    sbc a
    ld a, e
    add a
    ld h, a
    sbc e
    db $d3
    cpl
    rst $18
    daa
    rst $00
    ccf
    add a
    ld a, a
    cp a
    ld c, a
    adc a
    ld a, a
    xor a
    ld e, a
    ld a, $df
    cp a
    ld e, a
    sub a
    ld a, a
    cp h
    ld a, a
    xor [hl]
    ld a, a
    xor [hl]
    ld a, a
    ld a, l
    rst $38
    ld e, h
    rst $38
    ld e, b
    rst $38
    ld sp, hl
    rst $38
    cp c
    rst $38
    or d
    rst $38
    or d
    rst $38
    ld [hl], h
    rst $38
    ld h, l
    rst $38
    db $e4
    rst $38
    pop hl
    rst $38
    set 7, a
    push de
    rst $38
    sub e
    rst $38
    and a
    rst $38
    and [hl]
    rst $38
    dec c
    rst $38
    ld c, h
    rst $38
    ld l, a
    rst $38
    cp h
    rst $38
    sbc h
    rst $38
    reti


    cp $bc
    rst $38
    ld h, c
    rst $38
    jp $c2ff


    rst $38
    push bc
    cp $87
    db $fc
    adc $fd
    adc [hl]
    ld sp, hl
    sub d
    ld hl, sp+$3b
    db $f4
    xor e
    db $f4
    ld a, b
    rst $20
    ld l, h
    di
    adc l
    ld a, [c]
    adc e
    db $f4
    inc bc
    db $fc
    rlca
    ld hl, sp+$13
    db $ec
    add $39
    and h
    ld e, e
    ld sp, hl
    ld b, $02
    db $fd
    inc h
    reti


    ld [bc], a
    ld sp, hl
    xor h
    ld d, e
    inc a
    db $e3
    inc de
    db $ed
    inc bc
    rst $38
    ld b, [hl]
    cp a
    daa
    ld e, [hl]
    adc a
    ld a, h
    dec de
    db $fc
    dec a
    ld a, [c]
    ld a, c
    and $5a
    push hl
    and l
    jp c, $be41

    reti


    ld h, $8f
    ld [hl], b
    ld a, [bc]
    push af
    adc [hl]
    pop af
    add hl, bc
    rst $30
    sub [hl]
    ld l, a
    inc e
    rrca
    inc bc
    ld bc, $c020
    inc b
    ld hl, sp+$00
    rst $38
    nop
    rrca
    nop
    ld bc, $0000
    nop
    nop
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
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ld h, e
    sbc l
    ld h, e
    sbc l
    push bc
    dec sp
    ld b, [hl]
    cp e
    dec bc
    or a
    db $db
    daa
    dec c
    ld [hl], a
    add [hl]
    ld a, a
    and [hl]
    ld e, a
    add d
    ld a, a
    dec e
    rst $28
    adc l
    ld a, a
    sub a
    ld a, a
    cp a
    ld e, a
    ld e, [hl]
    cp a
    ld l, [hl]
    cp a
    dec a
    rst $38
    dec a
    rst $38
    ld a, b
    rst $38
    ld a, d
    rst $38
    ld a, h
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ld sp, hl
    rst $38
    pop hl
    rst $38
    di
    rst $38
    ldh [rIE], a
    jp z, $e4ff

    rst $38
    add h
    rst $38
    ret z

    rst $38
    ld [$90ff], sp
    rst $38
    or b
    rst $38
    ld de, $29ff
    rst $38
    inc hl
    rst $38
    ld b, d
    rst $38
    ld b, [hl]
    rst $38

jr_086_7bc4:
    add h
    rst $38

jr_086_7bc6:
    xor [hl]
    rst $38

jr_086_7bc8:
    xor h
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    inc hl
    cp $40
    rst $38
    ld b, c
    rst $38
    pop hl
    rst $38
    or e
    rst $38
    ld [c], a
    rst $38
    rst $20
    cp $8f
    db $fc
    ld c, c
    db $fc
    ld a, a
    ret c

    or a
    ret c

    ld a, c
    or d
    inc l
    ld a, [c]
    ret z

    ld h, [hl]
    ld a, d
    call nz, $c0bd
    inc sp
    adc b
    adc [hl]
    jr nc, jr_086_7bc4

    jr nc, jr_086_7bc6

    jr nc, jr_086_7bc8

    jr nc, @+$21

    ldh [$9c], a
    ld h, e
    ld sp, hl
    ld b, $50
    xor [hl]
    ld [hl+], a
    call c, $9c60
    ld b, h
    cp b
    pop bc
    jr c, jr_086_7c4e

    or b
    ld d, b
    and a
    pop de
    ld h, $b1
    ld c, [hl]
    rra
    pop bc
    inc sp
    add a
    ld a, d
    rlca
    push hl
    ld e, $6e
    sbc l
    ld e, d
    dec a
    scf
    rst $38
    ld l, h
    di
    rst $10
    add sp, -$41
    ret nz

    ld a, a
    add b
    db $d3
    inc c
    ld a, a
    add b
    ret c

    ld [hl+], a
    ld [hl], $40
    cp h
    nop
    rst $28
    db $10
    db $fc
    inc bc
    push af
    dec bc
    sub $2f
    ld c, h
    cp a
    ret nc

    ccf
    ldh a, [$7f]
    ret nz

    rst $38
    add b
    rst $38
    jr @+$01

    db $fc
    rst $38
    ld sp, hl
    cp $23
    ld a, a
    rrca
    rlca

jr_086_7c4e:
    inc bc
    add b
    ld [$81f0], sp
    cp $00
    rra
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp hl


    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    push hl
    rst $38
    pop hl
    rst $38
    ld b, c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    db $d3
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    call nz, Call_000_14ff
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    jr @+$01

    dec d
    rst $38
    ld d, e
    rst $38
    ld hl, $21ff
    rst $38
    ld b, e
    rst $38
    ld b, d
    rst $38
    add l
    rst $38
    add l
    rst $38
    ld d, $ff
    dec c
    rst $38
    dec e
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    ld l, b
    rst $38
    and b
    rst $38
    ld b, c
    cp $41
    cp $82
    db $fd
    add [hl]
    ld sp, hl
    ld bc, $07fb
    ei
    rla
    cp $04
    cp $2e
    db $fc
    ld [$b8fc], sp
    ld e, b
    ld d, b
    cp b
    ld [hl], h
    cp b
    and b
    ld a, h
    ld h, d
    db $fc
    ld a, [c]
    call z, $ee90
    and d
    call c, $9a04
    db $10
    adc [hl]
    ld [hl+], a
    inc e
    jr c, jr_086_7cd2

    ld a, [hl-]
    inc b
    ld h, d
    inc c

jr_086_7cd2:
    jp nc, Jump_086_700c

    ld c, $30
    ld c, $32
    inc c
    nop
    inc a
    ld b, l
    jr c, jr_086_7d50

    ld [$708b], sp
    ld bc, $caf4
    inc h
    adc b
    ld b, h
    ld [$0d84], sp
    add b
    inc d
    ld [$102f], sp
    rra
    ld hl, $037f
    jp c, Jump_086_7407

    adc a
    xor d
    dec e
    sbc $39
    dec [hl]
    ld a, [$fc63]
    jp nz, $dbfd

    db $e4
    sbc h
    db $e3
    ld h, c
    sbc [hl]
    add b
    ld a, a
    ld bc, $00fe
    rst $38
    and b
    rst $18
    pop af
    cp $ae
    ld e, a
    cp a
    ld bc, $00f5
    rst $38
    ld bc, $07fb

jr_086_7d1c:
    ld l, [hl]
    rlca
    ld [$701d], a
    cp a
    ld [hl], b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc bc
    rst $38
    sub a
    rst $38
    ld l, [hl]
    rst $38
    jr c, @+$01

    ld h, h
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld e, h
    rst $38
    nop
    ccf
    nop
    rlca
    ld hl, $04c0
    ld hl, sp+$00
    rst $38
    nop
    rra
    ld bc, $0003
    nop

jr_086_7d50:
    ldh a, [rIE]
    pop af
    rst $38
    db $e3
    rst $38
    push bc
    rst $38
    push bc
    rst $38
    pop bc
    rst $38
    adc d
    rst $38
    adc d
    rst $38
    sub $ff
    ld c, h
    rst $38
    ld [$0aff], sp
    rst $38
    jr @+$01

    db $10
    rst $38
    ld [hl-], a
    rst $38
    ld l, b
    rst $38
    call nc, $d0ff
    rst $38
    jp hl


    cp $aa
    db $fc
    add b
    db $fc
    ld b, h
    ld sp, hl
    add c
    ld sp, hl
    adc c
    di
    ld [bc], a
    di
    ld [de], a
    rst $20
    inc l
    rst $20
    ld [bc], a
    call z, $c810
    ld [$0880], sp
    sub b
    add b
    db $10
    jr nc, jr_086_7d92

jr_086_7d92:
    inc bc
    jr nz, @+$28

    ld b, b
    ld c, b
    add b
    ld e, b
    add b
    jr nz, jr_086_7d1c

    nop
    nop
    ld b, b
    nop
    ld bc, $2f00
    nop
    ld a, [hl+]
    inc b
    ld h, $00
    inc c
    nop
    dec c
    nop
    dec bc
    nop
    inc de
    nop
    scf
    nop
    ld l, $00
    ld e, $00
    dec a
    nop
    add hl, sp
    nop
    jr c, jr_086_7dbd

    ld [hl], d

jr_086_7dbd:
    ld bc, $02b0
    dec h
    nop
    dec l
    nop
    rla
    nop
    ld l, $00
    ld c, l
    nop
    dec c
    nop
    inc d

jr_086_7dcd:
    ld bc, $019f
    ccf
    inc bc
    ccf
    ld b, a
    or [hl]
    rrca
    ld l, e
    inc e
    call c, $bf3b
    ld [hl], b
    ld l, [hl]
    pop af
    call z, $b9e3
    add $72
    adc h
    rlc h
    ld d, h
    adc c
    ld a, [$8c01]
    ld h, e
    jr nz, jr_086_7dcd

    nop
    rst $38
    call nz, Call_000_003b
    rst $38
    nop
    rst $38
    dec sp
    call nz, $33cc
    ld [$13f7], sp
    rst $28
    ld b, a
    cp a
    adc [hl]
    ld a, a
    ld e, h
    cp a
    ldh a, [rIE]
    ld h, c
    cp $c0
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    inc d
    ei
    db $10
    rst $28
    dec h
    rst $18
    ld d, d
    cp a
    ld hl, $47ff
    rst $38
    ld l, $ff
    jr nc, @+$01

    ldh [rIE], a
    add b
    rst $38
    ld bc, $30fe
    rst $38
    ldh [rIE], a
    ld b, d
    db $fd
    inc bc
    rst $38
    ld e, $ff
    jr nz, @+$01

    rst $20
    rst $38
    cp [hl]
    ld a, a
    inc h
    rra
    add h
    inc bc
    ld [$03f0], sp

jr_086_7e3d:
    db $fc
    jr nc, jr_086_7ebf

    ld b, $07
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    rst $38
    ld b, l
    rst $38
    adc c
    rst $38
    add c
    cp $02
    cp $08
    db $fc
    add hl, de
    db $fc
    nop
    ld sp, hl
    inc bc
    ld sp, hl
    ld bc, $36f3
    jp $e702


    dec l
    add $00
    adc $40
    sbc h
    nop
    sbc b
    nop
    jr c, jr_086_7e73

jr_086_7e73:
    jr nc, jr_086_7e85

    ld h, b
    nop
    ldh [rNR41], a
    ret nz

    jr nz, jr_086_7e3d

    ld bc, $4bc2
    add b
    ld c, c
    sub b
    ld d, c
    and b
    rst $30

jr_086_7e85:
    nop
    ld l, c
    ld b, $1f
    nop
    ld a, $01
    jr z, jr_086_7e95

    adc e
    ld b, h
    rrca
    ret nz

    inc e
    ret nz

    ld a, h

jr_086_7e95:
    add b
    ret nz

    ld [$0059], sp
    ld e, b
    ld hl, $027d
    ld a, h
    ld [bc], a
    jr nc, jr_086_7eae

    jr nc, jr_086_7eac

    jr c, jr_086_7ea6

jr_086_7ea6:
    ld [hl], b
    nop
    ld [c], a
    nop
    ret nz

    nop

jr_086_7eac:
    adc e
    nop

jr_086_7eae:
    adc e
    nop
    sbc [hl]
    nop
    ld a, $00
    rst $38
    nop
    rst $18
    nop
    ld a, h
    add e
    ld [hl], d
    adc l
    db $d3
    dec l
    inc sp

jr_086_7ebf:
    ld c, a
    rst $00
    rra
    cp a
    ld c, $dd
    ld e, $1d
    ld a, $37
    ld a, b
    ld h, b
    di
    rst $28
    ldh [$e5], a
    ret c

    jp hl


    sub b
    ld h, d
    sub c
    push de
    ld [hl+], a
    sub [hl]
    ld h, c
    xor e
    ld b, h
    db $ed
    nop
    ld d, a
    adc b
    sub a
    ld [$205b], sp
    cp d
    ld b, c
    adc [hl]
    ld [hl], c
    pop bc
    ld a, $5d
    and d
    ld b, $f9
    add hl, bc
    or $45
    cp e
    inc bc
    rst $38
    rrca
    rst $38
    sbc [hl]
    ld a, a
    cp [hl]
    ld a, l
    ld [hl], b
    rst $38
    rst $28
    ldh a, [$ce]
    pop af
    ld d, c
    xor [hl]
    jr nz, @-$1f

    ld b, b
    cp a
    add b
    ld a, a
    inc b
    ei
    db $10
    rst $28
    ld b, b
    cp a
    ld de, $00ee
    rst $38
    ld bc, $6eff
    rst $38
    sbc d
    db $fd
    ld l, [hl]
    pop af
    or e
    call z, $dc23
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld [$02f7], sp
    db $fd
    dec c
    di
    scf
    rst $08
    sbc $3f
    ld h, c

jr_086_7f2b:
    rst $38
    jp nz, Jump_086_6aff

    rst $38
    xor h
    rst $38
    or b
    rst $38
    dec bc
    rst $38
    ccf
    rst $38
    ldh a, [rIE]
    and b
    ld e, a
    jr nz, jr_086_7f5d

    ld e, $e1
    daa
    ld hl, sp+$29
    rst $18
    dec e
    rst $18
    ld a, b
    sbc a
    ld e, b
    sbc a
    jr c, jr_086_7f2b

    ld e, b
    cp a
    ld a, b
    sbc a
    adc d
    sbc h
    cp h
    jr @+$36

    jr c, @+$22

    ld a, b
    ld h, b
    ld [hl], b
    ld b, b
    ldh [$e0], a

jr_086_7f5d:
    ret nz

    add c
    ret nz

    add $80
    inc c
    add b
    adc h
    nop
    inc bc
    nop
    rlca
    nop
    ld b, $01
    ld c, $01
    sbc [hl]
    ld bc, $00df
    ld a, [hl]
    nop
    db $fc
    nop
    ld hl, sp+$00
    adc b
    ld [hl], b
    add hl, sp
    ret nz

    ld [hl], c
    add b
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    db $fc
    ld bc, $6798
    ld de, $f3ee
    inc c
    ld d, a
    jr z, @+$01

    nop
    rst $38
    nop
    ld e, h
    inc bc
    sbc $01
    ld b, h
    sbc e
    ld [$1c96], sp
    jr nz, @+$3a

    nop
    jr c, jr_086_7fa0

jr_086_7fa0:
    stop
    ld hl, $6210
    ld bc, $03c4
    ld bc, $8d03
    inc bc
    ld e, $03
    ld d, $0f
    db $fd
    ld c, $7a
    dec e
    ld a, a
    jr c, @-$0b

    ld a, b
    db $eb
    ldh a, [$fd]
    ld [c], a
    rst $28
    ret nz

    sbc $80
    ret nc

    jr nz, jr_086_7fe4

    ld b, b
    add c
    ld b, d
    ld h, e
    add h
    call Call_000_1e02

jr_086_7fcb:
    nop
    or c
    inc c
    jr c, @+$45

    ld a, c
    add [hl]
    rst $30
    ld [$30ce], sp
    sub [hl]
    ld h, c
    sbc a
    ld b, b
    ld e, a
    add b
    and a
    ld e, b
    ld a, a
    add b
    or $09
    ld l, l
    sub e

jr_086_7fe4:
    dec sp
    rlca
    rst $08
    ccf
    ld e, $ff
    cp [hl]
    ld a, l
    ld [hl], h
    ei
    ldh [rIE], a
    sub b
    rst $28
    ld bc, $03fe
    db $fc
    ld b, h
    cp e
    adc h
    ld [hl], e
    jr nc, jr_086_7fcb

    ld b, c
    cp [hl]
    add l
    ld a, b
