SECTION "ROM Bank $030", ROMX[$4000], BANK[$30]

    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    ei
    add b
    ei
    add b
    ei
    add b
    ei
    add b
    db $fd
    add b
    db $fd
    add b
    db $fd
    add b
    db $fd
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, @+$41

    jr nz, @+$41

    jr nz, jr_030_409d

    jr nz, jr_030_409f

    ld hl, sp-$01
    rlca
    rlca
    ld hl, sp-$08
    ldh [$e0], a
    rra
    rra
    pop hl
    pop hl
    ret nz

    ret nz

    jr c, jr_030_40a8

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    rst $38
    ld hl, sp-$01
    ld b, $ff
    ld bc, $f7ff
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38

jr_030_409d:
    nop
    rst $38

jr_030_409f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_030_40a8:
    nop
    nop
    inc bc
    inc bc
    dec b
    rlca
    add hl, bc
    rrca
    ld de, $601f
    ld a, a
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
    ld [bc], a
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    adc a
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $00
    nop
    rst $20
    nop
    rst $20
    nop
    rst $28
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc c
    di
    inc bc
    rst $38
    inc l
    rst $38
    ret nz

    di
    nop
    pop af
    nop
    pop af
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
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
    ret nz

    rst $38
    ccf
    ccf
    nop
    nop
    rst $38
    rst $38
    ldh a, [$f0]
    rrca
    rrca
    nop
    nop
    rst $38
    rst $38
    ld [hl], b
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop

jr_030_4174:
    ei
    nop

jr_030_4176:
    ei
    nop

jr_030_4178:
    db $fd
    nop

jr_030_417a:
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp $80
    cp $80
    cp $80
    cp $80
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld b, b
    ret nz

    jr nz, jr_030_4174

    jr nz, jr_030_4176

    jr nz, jr_030_4178

    jr nz, jr_030_417a

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $18
    nop
    adc a
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    jr c, @+$01

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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    sbc a
    nop
    rst $18
    nop
    rst $18
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
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    jr nz, @+$03

    jr nz, @+$03

    stop
    stop
    stop
    ld [$0800], sp
    nop
    ld [$f700], sp
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    cp $00
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    nop

jr_030_429c:
    rrca
    nop

jr_030_429e:
    ccf
    nop

jr_030_42a0:
    rst $38
    nop

jr_030_42a2:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    ld a, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    jr nz, jr_030_429c

    jr nz, jr_030_429e

    jr nz, jr_030_42a0

    jr nz, jr_030_42a2

    db $10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $03
    cp $03
    cp $03
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    cp $02
    cp $02
    cp $01
    rst $38
    ld bc, $c1ff
    rst $38
    ccf
    ccf
    nop
    nop
    rst $38
    rst $38
    add b
    rst $38
    ld a, b
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    inc a
    rst $38
    inc bc
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    jr c, jr_030_4323

jr_030_4323:
    jr c, jr_030_4325

jr_030_4325:
    jr c, jr_030_4327

jr_030_4327:
    jr jr_030_4329

jr_030_4329:
    inc e
    nop
    inc e
    nop
    inc c
    nop
    ld c, $00
    ld c, $00
    rrca
    nop
    rlca
    add b
    rlca
    add b
    rlca
    add b
    inc bc
    ld b, b
    inc bc
    ld b, b
    inc bc
    ld b, b
    ld bc, $0120
    jr nz, @+$03

    jr nz, jr_030_4348

jr_030_4348:
    jr nz, jr_030_434a

jr_030_434a:
    stop
    stop
    stop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ccf
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
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    add b
    nop
    nop
    nop
    nop
    inc bc
    nop
    ccf
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    ldh [rSB], a
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
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
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
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    add hl, bc
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_030_4439

    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_030_444a

    ld a, [hl+]
    dec hl
    inc l
    nop
    dec l
    ld l, $2f
    jr nc, jr_030_445b

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_030_446b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_030_4439:
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    ld b, a
    ld c, b
    ld c, c
    nop
    ld c, d
    ld c, e
    nop
    nop

jr_030_444a:
    nop
    ld [hl-], a
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    nop
    nop
    nop

jr_030_445b:
    nop
    ld d, a
    ld e, b
    ld e, c
    nop
    ld e, d
    ld e, e
    ld c, d
    ld e, h
    ld d, l
    ld d, l
    ld d, l
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

jr_030_446b:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld d, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld [hl], b
    nop
    ld l, $71
    nop
    nop
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld [hl], l
    halt
    ld [hl], a
    nop
    nop
    nop
    ld a, b
    ld a, c
    ld a, d
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
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
    ld d, l
    ld d, l
    ld d, l
    add [hl]
    add a
    nop
    nop
    adc b
    adc c
    add d
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld d, l
    ld d, l
    sub b
    sub c
    nop
    nop
    nop
    sub d
    sub e
    sub h
    nop
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    nop
    nop
    nop
    nop
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    nop
    and e
    and h
    and l
    nop
    nop
    and [hl]
    and a
    nop
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    nop
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp c
    add d
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    nop
    add d
    jp nz, $5bc3

    cp c
    cp c
    cp c
    call nz, $c500
    add $c7
    ret z

    ret


    jp z, RST_00

    set 1, h
    call $b95b
    adc $cf
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $00
    and a
    rst $10
    ld e, e
    ret c

    reti


    jp c, $dcdb

    ld bc, $0101
    ld bc, $0103
    dec b
    dec b
    dec b
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0505
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0501
    dec b
    nop
    dec b
    inc b
    inc bc
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    dec b
    nop
    inc bc
    inc b
    nop
    inc b
    inc bc
    inc bc
    inc b
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    ld [bc], a
    inc b
    inc bc
    inc b
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    inc bc
    nop
    inc bc
    inc b
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc bc
    inc bc
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
    ld b, e
    inc bc
    nop
    nop
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
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc bc
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
    inc bc
    inc bc
    inc hl
    inc bc
    inc b
    inc bc
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
    inc bc
    ld b, $06
    nop
    inc bc
    dec b
    ld [bc], a
    inc b
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
    ld b, $06
    ld b, $05
    nop
    inc b
    inc bc
    ld [bc], a
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    dec b
    dec b
    inc b
    nop
    inc b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld b, $02
    ld bc, $0101
    ld [hl+], a
    ld [bc], a
    inc bc
    dec b
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    nop
    inc hl
    ld b, $02
    ld [hl+], a
    ld bc, $0101
    ld [bc], a
    ld bc, $0504
    inc bc
    inc bc
    inc b
    inc bc
    nop
    nop
    inc bc

jr_030_465a:
    ld b, $02
    ld [hl+], a
    ld bc, $0002
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    inc b
    inc b
    nop
    ld b, e
    inc bc
    inc bc
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $0300
    db $fc
    ei
    db $fc
    ei
    ld sp, hl
    or $f9
    or $f9
    or $f3
    db $ec
    di
    db $ec
    inc de
    inc c
    daa
    jr jr_030_46da

    jr jr_030_46bc

    jr c, @+$51

    jr nc, jr_030_4708

    jr nc, jr_030_465a

    ld h, b

jr_030_46bc:
    sbc a
    ld h, b
    sbc a
    ld h, b
    ccf
    ret nz

    ld a, $c0
    ld a, $c0
    ld a, h
    add b
    ld a, h

jr_030_46c9:
    add b
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a

jr_030_46da:
    ldh [rP1], a
    ret nz

    nop
    ret nz

    ld bc, $0180
    add b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    ld b, $00
    rrca
    nop
    rrca
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
    ld bc, $0200
    nop
    inc b
    nop
    rst $30
    ld bc, $03ee
    call c, $b807
    rrca

jr_030_4708:
    ld [hl], b
    rra
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr jr_030_46c9

    inc e
    ccf
    rrca
    ld a, a
    inc bc
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld b, $ff

jr_030_473c:
    ld c, $ff
    inc e
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0200
    ld bc, $0102
    ld b, $01
    inc b
    inc bc
    inc b
    inc bc
    add hl, bc
    ld b, $09
    ld b, $09
    ld b, $13
    inc c
    inc de
    inc c
    inc de
    inc c
    daa
    jr jr_030_478c

    jr jr_030_478e

    jr jr_030_47b8

    jr nc, jr_030_47ba

    jr nc, jr_030_473c

    or b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, h
    add b
    db $fc
    nop
    db $fc
    ld bc, $06f8
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]

jr_030_478c:
    ldh [rP1], a

jr_030_478e:
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    ld bc, $0180
    add b
    ld bc, $0380
    nop
    inc bc
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    inc c
    nop
    inc c
    nop
    jr jr_030_47ab

jr_030_47ab:
    jr jr_030_47ad

jr_030_47ad:
    jr jr_030_47af

jr_030_47af:
    jr nc, jr_030_47b1

jr_030_47b1:
    jr nc, jr_030_47b3

jr_030_47b3:
    jr nc, jr_030_47b5

jr_030_47b5:
    ld h, b
    nop
    ld h, b

jr_030_47b8:
    nop
    ret nz

jr_030_47ba:
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add e
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    jr nz, jr_030_47cc

    ret nz

jr_030_47cc:
    ld [bc], a
    add b
    inc b
    nop

jr_030_47d0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld sp, hl
    nop
    pop af
    nop
    db $e3
    nop
    rst $20
    nop
    rst $08
    nop
    adc a
    nop
    rra
    nop
    ccf
    ldh a, [rIE]
    dec a
    rst $38
    rrca
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
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

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
    cp $02
    ld bc, $0102
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    add hl, bc
    ld b, $09
    ld b, $09
    ld b, $13
    inc c
    inc de
    inc c
    daa
    jr jr_030_484e

    jr jr_030_4850

    jr @+$51

    jr nc, jr_030_487c

    jr nc, jr_030_487e

    jr nc, jr_030_47d0

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00

jr_030_484e:
    ldh a, [rIF]

jr_030_4850:
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
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
    ld bc, $0600
    nop
    jr jr_030_486f

jr_030_486f:
    ld h, b
    add b
    nop
    nop
    inc bc
    nop
    rlca
    nop
    inc c
    nop
    ld [$1800], sp

jr_030_487c:
    nop
    ld [hl], b

jr_030_487e:
    nop
    ld h, b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
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

jr_030_4892:
    nop
    inc bc
    nop
    inc b
    nop
    ld [$1000], sp
    ld bc, $0220
    ld b, b
    inc b
    add b
    rst $30
    nop
    rst $28
    nop
    rst $18
    nop
    cp a
    nop
    ld a, a
    jr jr_030_4892

    ld a, $c1
    ld a, a
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
    db $fc
    nop
    ld a, [$f700]
    nop
    rst $20
    nop
    rst $08
    nop
    rst $18
    nop
    cp a
    nop
    ccf
    nop
    ld a, a
    ld bc, $03ff
    rst $38
    ld b, $ff
    ld b, $ff
    inc c
    rst $38
    jr @+$01

    jr nc, @+$01

    ld h, b

jr_030_48d9:
    rst $38
    ret nz

    rst $38
    ret nz

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
    cp $01
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
    jr jr_030_48d9

    ld e, $9f
    rlca
    ccf
    ld bc, $7f7f
    add b
    ld a, a
    add b
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc c
    nop
    jr nc, jr_030_4948

jr_030_4948:
    ret nz

    nop
    nop
    inc bc
    nop
    rrca
    nop
    inc a
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [$0800], sp
    ld bc, $0210
    jr nz, jr_030_4983

    ld b, b
    ld [$1080], sp

jr_030_4983:
    nop
    jr nz, jr_030_4986

jr_030_4986:
    ld b, b
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
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    adc a
    nop
    rst $20
    jr @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fd
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    inc a
    rst $38
    rrca
    rst $38
    ld a, a
    add b
    rra
    ldh [rP1], a
    cp $00
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $00
    ld b, $00
    inc c
    nop
    inc c
    nop
    ld [$1800], sp
    nop
    jr jr_030_4a07

jr_030_4a07:
    jr nc, jr_030_4a09

jr_030_4a09:
    jr nc, jr_030_4a0b

jr_030_4a0b:
    ld h, b
    nop
    ld h, b
    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    rlca
    nop
    ld hl, sp+$00
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
    cp $00
    ld sp, hl
    nop
    rst $00
    nop
    ret nz

    nop
    nop
    nop
    nop
    ld b, $00
    rra
    nop
    ld [hl], c
    nop
    pop bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    stop
    stop
    stop
    jr nz, jr_030_4a61

jr_030_4a61:
    jr nz, jr_030_4a63

jr_030_4a63:
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    ld bc, $0280
    nop
    inc b
    nop
    rst $30
    nop
    rst $28
    nop
    rst $18
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR23], a
    ld hl, sp+$06
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    jp $b000


    nop
    cp h
    nop
    ld a, a
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    ld b, $ff
    inc c
    rst $38
    inc c
    rst $38
    jr @+$01

    jr @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld [hl], b
    rrca
    ld hl, $010f
    sbc a
    inc bc
    cp $03
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    add b
    nop
    nop
    rra
    nop
    ldh [rP1], a
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
    ld hl, sp+$00
    rst $20
    nop
    sbc a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rst $30
    rlca
    rst $28
    ld bc, $00df
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ld b, b
    ld a, a
    ret nz

    rst $38
    add c
    rst $38
    add c
    rst $38
    nop
    cp $02
    cp $02
    cp $04
    db $fc
    inc b
    db $fc
    nop
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$3e], a
    ldh [$7e], a
    ret nz

    ld a, [hl]
    ret nz

    db $fd
    add b
    db $fd
    add b
    ei
    add b
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    stop
    stop
    jr nz, jr_030_4b8b

jr_030_4b8b:
    ld h, b
    nop
    ret nz

    nop
    ret nz

    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    di
    nop
    rst $08
    nop
    ccf
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0001
    nop
    cp $00
    cp $00
    db $fd
    add b
    ld a, l
    ret nz

    ld a, l
    ret nz

    ld a, e
    ret nz

    ei
    add b
    ei
    add b
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    stop
    stop
    jr nz, jr_030_4c17

jr_030_4c17:
    jr nz, jr_030_4c19

jr_030_4c19:
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
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
    rst $38
    rrca
    rrca
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
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
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    cp $00
    cp $00
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
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
    cp a
    rra
    or a
    rlca
    ld [hl], a
    ld bc, $0077
    ld l, a
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    inc de
    add b
    rra
    add b
    jr jr_030_4d21

jr_030_4d21:
    jr jr_030_4d23

jr_030_4d23:
    jr jr_030_4d25

jr_030_4d25:
    jr jr_030_4d27

jr_030_4d27:
    stop
    jr nc, jr_030_4d2b

jr_030_4d2b:
    jr nc, jr_030_4d2d

jr_030_4d2d:
    jr nc, jr_030_4d2f

jr_030_4d2f:
    jr nc, jr_030_4d31

jr_030_4d31:
    jr nc, jr_030_4d33

jr_030_4d33:
    jr nc, jr_030_4d35

jr_030_4d35:
    jr nc, jr_030_4d37

jr_030_4d37:
    jr nz, jr_030_4d39

jr_030_4d39:
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    jr nz, jr_030_4d55

jr_030_4d55:
    jr nc, jr_030_4d57

jr_030_4d57:
    jr nc, jr_030_4d59

jr_030_4d59:
    jr c, jr_030_4d5b

jr_030_4d5b:
    ld e, $00
    rlca
    nop
    ld bc, $0000
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    rra
    nop
    rlca
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
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    inc b
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
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rra
    rra
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ld a, b
    nop
    ld e, $00
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    nop
    ld h, b
    nop
    stop
    ld [$0600], sp
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
    add b
    add b
    ldh [$e0], a
    cp $f0
    db $fd
    ld hl, sp-$01
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
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    stop
    stop
    stop
    ld [$0800], sp
    nop
    ld [$0800], sp
    add c
    ld [$08c3], sp
    ld b, c
    inc b
    ld h, e
    inc b
    ld [hl-], a
    inc b
    inc de
    inc b
    ld de, $1104
    inc b
    add hl, bc
    ld [bc], a
    add hl, bc
    ld [bc], a
    add hl, bc
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    ld [$0802], sp
    ld [bc], a
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, HeaderLogo
    inc b
    ld bc, HeaderLogo
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $c700
    nop
    ld l, $00
    inc e
    nop
    nop
    ld bc, $0600
    nop
    jr jr_030_4eae

jr_030_4eae:
    ld h, b

jr_030_4eaf:
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    jp $ff80


    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$02
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
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

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
    ld bc, $0200
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [$1800], sp
    nop
    jr nc, jr_030_4f07

jr_030_4f07:
    jr nz, jr_030_4f09

jr_030_4f09:
    ld h, b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    jr nz, jr_030_4eaf

    jr nz, jr_030_4f31

jr_030_4f31:
    jr c, jr_030_4f33

jr_030_4f33:
    inc e
    nop
    ld c, $00
    rrca
    nop
    ld e, $00
    ld a, h
    nop
    ldh [rP1], a
    ret nz

    ld bc, $0680
    nop
    jr jr_030_4f46

jr_030_4f46:
    ld h, b
    nop
    add b
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
    db $fc
    nop
    inc bc
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
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

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
    and b
    nop
    ldh [rP1], a
    stop
    stop
    db $10
    ld [$08f7], sp
    rst $30
    inc b
    ei
    inc b
    ei
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    nop
    cp $01
    cp $01
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    ld c, $03
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0600
    nop
    jr jr_030_4fdf

jr_030_4fdf:
    ld h, b
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
    nop
    nop
    rlca
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rra
    nop
    inc c
    nop
    ld b, $00
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
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
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

jr_030_5036:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    ld bc, $033f
    ccf

jr_030_5058:
    rlca
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    add a
    rlca
    add e
    inc bc
    add e
    inc bc
    ld b, c
    add c
    ld b, c
    add c
    ld hl, $20c1
    ret nz

    jr nz, jr_030_5036

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR41], a
    ret nc

    jr nz, jr_030_5058

    jr nc, @-$36

    ld [hl], b
    adc h
    ldh [rNR32], a
    ret nz

    inc a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$06
    db $fc
    inc bc
    ld a, a
    nop
    ccf
    ld b, b
    rra
    add b
    rrca
    nop
    inc bc
    nop
    ld bc, $0700
    nop
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    nop
    jr nc, jr_030_50bb

jr_030_50bb:
    ld [$0600], sp
    nop
    inc bc
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
    ccf
    nop
    rst $00
    nop
    ld hl, sp+$00
    nop
    nop
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
    nop
    ld bc, $0300
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
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    pop hl
    rra
    pop bc
    ccf
    add e
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, $fe
    ld a, h
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld h, b
    ldh [rSVBK], a
    ldh a, [$30]
    db $fc
    jr c, @+$01

    jr @+$01

    inc e
    rst $38
    inc e
    rst $38
    ld c, $ff
    ld c, $fe
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    nop
    inc bc
    inc bc
    rrca

jr_030_5155:
    adc a
    add a
    ld h, a
    jp $e033


    jr jr_030_5155

    ld b, $fc
    inc bc
    cp $01
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    rlca
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    rst $38
    nop
    ld bc, $8000
    nop
    ld b, b
    nop
    jr nc, jr_030_5187

jr_030_5187:
    ld [$0400], sp
    nop
    inc bc
    nop
    nop
    add b
    nop
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
    ld bc, $0300
    nop
    rlca
    nop
    ld b, $00
    inc c
    nop
    jr jr_030_51b3

jr_030_51b3:
    jr c, jr_030_51b5

jr_030_51b5:
    jr nc, jr_030_51b7

jr_030_51b7:
    ld h, b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ld [hl], b
    nop
    jr c, jr_030_51cb

jr_030_51cb:
    ld e, $00
    rrca
    nop
    rlca
    inc bc
    db $fc
    ld bc, $00fe
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    add d
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, $fe
    ld a, [hl]
    cp $fc
    db $fc
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

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
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $81
    rst $38
    add b
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
    ld a, a
    nop
    ccf
    rra
    sbc a
    rlca
    rst $00
    jp $e133


    add hl, de
    ldh a, [$0c]
    ld hl, sp+$06
    cp $01
    ld a, a
    add b
    ccf
    nop
    rrca
    nop
    rlca
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
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, $00
    rra
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    jr nc, jr_030_5273

jr_030_5273:
    ld c, $c0
    ld bc, $003c
    inc bc
    nop
    nop
    ld b, $00
    rra
    nop
    ld sp, $6000
    nop
    ld h, b
    nop
    ret nz

    nop
    add b
    nop

jr_030_5289:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp-$39
    ld a, h
    ld h, e
    ccf
    jr nc, @+$21

    jr jr_030_52ae

    inc c
    rlca
    rst $38
    ld bc, $80ff
    rst $38
    add b
    cp a
    nop
    rra
    nop
    rrca
    nop
    rlca

jr_030_52ae:
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rst $08
    ld bc, $03ff
    rst $38
    add a
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
    ccf
    add b
    rra
    ret nz

    nop
    add e
    ld h, e
    pop bc
    add hl, sp
    ldh a, [$0c]
    ld hl, sp+$06
    db $fc
    inc bc
    ld a, [hl]
    ld bc, $003f
    rra
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld a, b
    nop
    inc a
    nop
    ld e, $00
    rlca
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
    nop
    nop
    ldh [rP1], a
    jr c, jr_030_5289

    rlca
    ld [hl], b
    nop
    ld c, $c0
    ld bc, $00f8
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    nop
    rst $18
    ei
    inc b
    pop af
    adc [hl]
    ldh [$df], a
    ld h, b
    ld a, a
    jr nc, jr_030_5379

    jr jr_030_535b

    inc c
    rrca
    ld b, $07
    inc bc
    rst $38
    ld bc, $00ff
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop

jr_030_535b:
    rra
    inc bc
    ccf
    rlca
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, h
    cp $f8
    db $fc
    ldh a, [$f8]
    ldh [$f0], a
    ret nz

    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop

jr_030_5379:
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
    rst $38
    nop
    add b
    nop
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rra
    rra
    rrca
    rst $08
    add e
    ld h, e
    pop bc
    ld sp, $1ce0
    ldh a, [$0e]
    db $fc
    inc bc
    cp $01
    ccf
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0000
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld [hl], b
    nop
    inc e
    nop
    ld c, $00
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld hl, sp+$00
    rra
    ldh [rSB], a
    inc e
    nop
    inc bc
    ldh [rP1], a
    db $fc
    nop
    ccf
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    ld e, $00
    inc a
    nop
    ld a, b
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    nop
    add b
    add b
    ldh [$e0], a
    ld [hl], b
    ldh a, [rNR23]
    ld hl, sp+$0c
    db $fc
    ld b, $fe
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    ld bc, $031f
    ccf
    rlca
    ld a, a
    rrca
    rst $38
    ld e, $ff
    dec a
    cp $7b
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$df]
    ldh [$80], a
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    nop
    nop
    nop
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    nop
    inc c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0f
    db $10
    ld de, $1200
    inc de
    inc d
    dec d
    ld d, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    rla
    jr jr_030_5497

    ld a, [de]
    nop
    dec de
    inc e
    dec e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld e, $1f
    nop
    jr nz, jr_030_54b3

    ld [hl+], a
    inc hl
    ld c, $24
    dec h

jr_030_5497:
    ld h, $27
    jr z, @+$10

    ld c, $29
    ld a, [hl+]
    ld c, $00
    dec hl
    inc l
    dec l
    ld c, $2e
    cpl
    jr nc, jr_030_54d8

    jr nc, jr_030_54db

    ld c, $0e
    ld [hl-], a
    inc sp
    ld c, $34
    dec [hl]
    ld [hl], $37

jr_030_54b3:
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec hl
    rla
    ld a, $3f
    ld b, b
    ld c, $41
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, $0e
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_030_54d8:
    ld d, a
    ld e, b
    ld e, c

jr_030_54db:
    ld e, d
    ld e, e
    ld c, $0e
    nop
    ld e, h
    ld e, l
    ld e, [hl]
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
    ld c, $69
    nop
    nop
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld h, a
    ld [hl], h
    ld c, $75
    nop
    nop
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
    ld a, a
    add b
    ld c, $81
    nop
    ld e, h
    add d
    add e
    add h
    add l
    add [hl]
    add a
    nop
    nop
    nop
    nop
    nop
    adc b
    ld c, $89
    nop
    adc d
    add a
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
    ld de, $9700
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and b
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    and a
    and a
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
    nop
    nop
    or d
    or e
    or h
    or l
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or [hl]
    or a
    cp b
    nop
    nop
    cp c
    cp d
    cp e
    cp h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp l
    cp [hl]
    cp a
    ret nz

    ld c, $0e
    ld c, $0e
    pop bc
    jp nz, $c2c2

    jp nz, $c2c2

    dec c
    ld c, $0e
    ld c, $0e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0401
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
    ld [bc], a
    ld [bc], a
    ld bc, $0401
    inc b
    inc b
    nop
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0601
    ld b, $00
    ld b, $06
    ld bc, $0101
    ld b, $00
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $02
    inc bc
    ld b, $06
    ld b, $46
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0222
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    nop
    ld [bc], a
    ld bc, $0103
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld [hl+], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    inc bc
    db $fc
    ccf
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
    inc bc
    rst $38
    rrca
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
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
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
    cp $ff
    ldh [rIE], a
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rra
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

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
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
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
    cp $ff
    ldh [rIE], a
    inc bc
    db $fc
    ccf
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
    inc bc
    rst $38
    rra
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
    db $ec
    inc de
    cp $01
    cp $01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    rlca
    ld hl, sp+$7f
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
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh [$1f], a
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [$18f7], sp
    rst $20
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    sbc h
    ld h, e
    cp h
    ld b, e
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    ret nz

    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld hl, sp+$7f
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
    rst $38
    nop
    ld hl, sp+$07
    ldh [$1f], a
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
    rrca
    ldh [rTAC], a
    ldh a, [rTAC]
    ldh a, [$03]
    ld hl, sp+$01
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    ld bc, $00de
    sbc $00
    call c, $cc00
    nop
    call z, $cc00
    nop
    ret z

    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
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
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
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
    rrca
    ldh a, [$7f]
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
    cp $01
    ld hl, sp+$07
    ret nz

    ccf
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
    ld a, a
    nop
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    add c
    ld l, [hl]
    pop bc
    ld [hl], $e1
    ld d, $e1
    ld a, [de]
    ldh a, [$0d]
    ld hl, sp+$06
    db $fc
    ld [bc], a
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $c700
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $03ff
    rst $38
    inc c
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

jr_030_5a01:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld a, h
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    add b
    ld [hl], b
    add b
    jr nc, @+$42

    sbc b
    jr nz, jr_030_5a01

    db $10
    ret z

    db $10
    db $e4
    ld [$04f2], sp
    ld a, [c]
    inc b
    pop af
    ld a, [bc]
    ld hl, sp+$05
    ld hl, sp+$06
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    ld bc, $00ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    db $f4
    ld a, a
    ld a, [bc]
    ld a, a
    rrca
    ld a, a
    ld [$003f], sp
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    ret nz

    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
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
    ld bc, $0600
    ld bc, $0307
    rrca
    inc bc
    rrca
    ld bc, $010f
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    add c
    nop
    inc bc
    add b
    ld c, a
    add b
    ccf
    ld b, b
    rra
    and b
    inc c
    db $d3
    nop
    rst $18
    ld c, $e0
    nop
    pop af
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, [hl]
    jp Jump_000_3c3c


    rst $38
    jr c, @+$01

    jr c, @+$01

    jr @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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
    add b
    ld a, a
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    ld a, h
    inc bc
    ld a, b
    rlca
    rst $38
    nop
    ld hl, sp+$07
    jr nz, @+$01

    ret nc

    rst $38
    scf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    dec bc
    inc b
    rrca
    add b
    rrca
    add b
    rlca
    ret nz

    rlca
    ret nz

    inc bc
    db $e3
    ld [bc], a
    ld [c], a
    ld b, $f2
    ld l, [hl]
    sub d
    ld a, $c2
    cp [hl]
    ld b, d
    ld a, [$c306]
    ccf
    ld [bc], a
    cp $f3
    ld c, $c2
    ccf
    add d
    ld a, a
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    cp $02
    cp $02
    cp $02
    cp $02
    cp $02
    cp $07
    rst $38
    inc b
    db $fc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    rlca
    rst $38
    inc b
    db $fc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    rlca
    rst $38
    inc b
    db $fc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    rlca
    rst $38
    inc b
    db $fc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    rrca
    rst $38
    ld [$0af8], sp
    ld sp, hl
    ld a, [bc]
    ld sp, hl
    ld a, [bc]
    ld sp, hl
    ld a, [bc]
    ld sp, hl
    dec bc
    ld hl, sp+$0f
    rst $38
    ld [$0bf8], sp
    ld hl, sp+$0b
    ld hl, sp+$0b
    ld hl, sp+$0b
    ld hl, sp+$0b
    ld hl, sp+$0b
    ld hl, sp+$0f
    rst $38
    ld [$0bf8], sp
    ld hl, sp+$0b
    ld hl, sp+$0b
    ld hl, sp+$0b
    ld hl, sp-$35
    jr c, jr_030_5c79

    ei
    ei
    ld [$0fff], sp
    ld hl, sp+$08
    ei

jr_030_5c79:
    ld [$08fb], sp
    dec bc
    ld hl, sp+$00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    rra
    ldh [rIE], a
    nop
    cp a
    nop
    cp $01
    rst $30
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    sub [hl]
    rst $38
    add [hl]
    rst $38
    add $ff
    rst $08
    rst $38
    rst $38
    rrca
    ldh a, [$f0]
    rrca

jr_030_5cb5:
    nop
    ldh a, [rP1]
    add a
    nop
    jr c, jr_030_5cc3

    ret nz

    ccf
    nop
    rst $38
    rst $38

jr_030_5cc1:
    rst $38
    nop

jr_030_5cc3:
    nop
    rst $38

jr_030_5cc5:
    nop
    ld a, a
    add b
    ccf

jr_030_5cc9:
    ret nz

    ccf

jr_030_5ccb:
    ret nz

    rst $38

jr_030_5ccd:
    rst $38
    nop

jr_030_5ccf:
    nop
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf

jr_030_5cd9:
    rst $00
    ld hl, sp-$08
    rlca

jr_030_5cdd:
    nop
    ld sp, $30ce

jr_030_5ce1:
    rst $08
    jr nc, @-$2f

    jr nc, jr_030_5cb5

    jr nc, @-$2f

    rst $38
    rst $38
    nop
    nop
    ccf

jr_030_5ced:
    ret nz

    ccf

jr_030_5cef:
    ret nz

    jr nc, jr_030_5cc1

    jr nc, jr_030_5cc3

    jr nc, jr_030_5cc5

    rst $38
    rst $38
    nop
    nop
    jr nc, jr_030_5ccb

    jr nc, jr_030_5ccd

    jr nc, jr_030_5ccf

    jr c, jr_030_5cc9

    ccf
    ret nz

    rst $38
    rst $38
    nop
    nop
    jr nc, jr_030_5cd9

    jr nc, @-$2f

    jr nc, jr_030_5cdd

    jr nc, @-$2f

    jr nc, jr_030_5ce1

    jr nc, @-$2f

    rst $38
    rst $38
    nop
    nop
    ccf
    ret nz

    ccf
    ret nz

    jr nc, jr_030_5ced

    jr nc, jr_030_5cef

    jr nc, @-$2f

    rst $38
    rst $38
    nop
    nop
    cp b
    ld b, a
    cp b
    ld b, a
    ld a, l
    add d
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
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
    ld bc, $fffe
    nop
    rst $38
    rst $38
    nop
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
    rrca
    rst $38
    rst $38
    nop
    cp $01
    add b
    ld a, [hl]
    ld a, b
    add b
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $28
    db $10
    rst $38
    nop
    ld [hl], l
    adc d
    or b
    ld c, a
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    db $f4
    rst $38
    rra
    ldh [$e0], a
    rra
    nop
    ldh [rP1], a
    rra
    nop
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    rst $38
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
    ld e, a
    and b
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    scf
    ret z

    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    rst $38
    nop
    nop
    dec b
    ld a, [$fe01]
    ld bc, $7ffe
    add b
    rst $38
    nop
    rst $38
    rst $38
    nop
    nop
    inc bc
    db $fc
    dec bc
    db $f4
    dec bc
    db $f4
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    dec bc
    db $f4
    rlca
    ld hl, sp+$07
    ld hl, sp-$01
    rst $38
    nop
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    rst $38
    nop
    rst $38
    rst $38
    nop
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
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ccf
    ret nz

    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    rra
    nop
    rst $18
    ret nz

    ld e, a
    ld b, b
    rst $18
    ld b, b
    ld e, a
    ld b, b
    rst $18
    ld b, b
    ld b, c
    sbc $40
    rst $18
    ld b, b
    rst $18
    rst $00
    ret c

    ld e, d
    ld b, b
    ret nz

    ld b, b

jr_030_5e54:
    rst $18
    ld b, b

jr_030_5e56:
    rst $18
    ld b, b

jr_030_5e58:
    rst $18
    ld b, b
    rst $18
    ret nz

jr_030_5e5c:
    ld e, a
    ld b, b

jr_030_5e5e:
    rst $18
    ld b, b

jr_030_5e60:
    rst $18
    ld b, b

jr_030_5e62:
    rst $28
    jr nz, jr_030_5e54

    jr nz, jr_030_5e56

    jr nz, jr_030_5e58

    ldh [$2f], a
    jr nz, jr_030_5e5c

    jr nz, jr_030_5e5e

    jr nz, jr_030_5e60

    jr nz, jr_030_5e62

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    ldh [$2f], a
    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    ldh [$2f], a
    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    ldh [$2f], a
    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$0f

    jr nz, @-$07

    db $10
    rst $30
    ldh a, [rNR22]
    db $10
    rst $30
    db $10
    rst $30
    db $10
    rst $30
    db $10
    rst $30
    db $10
    rst $30
    db $10
    rst $30
    ldh a, [rNR22]
    db $10
    rst $30
    db $10
    rst $30
    db $10
    rst $30
    db $10
    rst $30
    db $10
    rst $30
    db $10
    rla
    ldh a, [$f7]
    db $10
    rst $30
    ldh a, [rNR22]
    db $10
    rst $30
    db $10
    rst $30
    db $10
    rst $30
    db $10
    rla
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    nop
    daa
    ret c

    ld a, c
    add b
    ld bc, $ff00
    cp $ff
    cp $ff
    ld l, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld b, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    jr c, @+$01

    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    inc e
    rst $38
    inc e
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    rlca
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
    ld h, b
    add b
    ld [hl], b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    cp $00
    rst $18
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nc

    rrca
    ret nz

    rrca
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    ldh [rIF], a
    pop af
    ld e, $01
    ld b, $01
    ld [bc], a
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$0f
    db $fc
    rrca
    cp $1f
    cp $3f
    rst $38
    add sp, -$01
    ld hl, sp-$01
    add sp, -$01
    add sp, -$01
    ld hl, sp-$01
    add sp, -$01
    add sp, -$01
    db $ec
    rst $38
    db $e4
    rst $38
    add sp, -$01
    xor $ff
    ldh [rIE], a
    db $f4
    rst $38
    db $e4
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $e4
    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ldh a, [$7f]
    ldh a, [$7f]
    ldh [$7f], a
    add sp, $7f
    ld hl, sp+$3f
    ldh a, [$3f]
    ld hl, sp+$3f
    add sp, $3f
    ldh a, [$3f]
    ld hl, sp+$3f
    ldh [$3f], a
    db $f4
    ccf
    db $f4
    ccf
    db $fc
    rra
    db $fc
    rra
    cp $1f
    cp $1f
    rst $38
    rra
    rst $38
    rra
    ld sp, hl
    rra
    cp $1f
    rst $38
    rra
    cp $1f
    cp $1f
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    rst $38
    rrca
    cp $0f
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    ld a, a
    rlca
    ccf
    rlca
    rra
    rlca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $00
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
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
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
    ret nz

    rst $38
    ret z

    rst $30
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret z

    rst $30
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    jp nz, $c0fd

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    pop bc
    cp $81
    cp $a3
    db $fc
    add e
    db $fc
    add a
    ld hl, sp-$39
    ld hl, sp-$31
    ld [hl], b
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

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
    add b
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
    ld bc, $0302
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $02
    rlca
    ld [$0905], sp
    ld a, [bc]
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0512
    inc de
    dec b
    inc d
    dec d
    ld d, $17
    jr jr_030_633e

    jr jr_030_6340

    jr jr_030_6343

    ld a, [de]
    ld [bc], a
    dec de
    dec b
    inc de
    dec b
    nop
    nop
    inc e
    dec e
    jr jr_030_634e

    jr jr_030_6350

    jr jr_030_6358

    rra
    jr nz, jr_030_635e

    dec b

jr_030_633e:
    ld [hl+], a
    dec b

jr_030_6340:
    inc hl
    inc h
    dec h

jr_030_6343:
    ld h, $26
    daa
    jr z, jr_030_6371

    ld a, [hl+]
    dec b
    dec hl
    inc l
    dec b
    dec b

jr_030_634e:
    dec l
    dec b

jr_030_6350:
    ld l, $2f
    jr nc, jr_030_6385

    ld [hl-], a
    inc sp
    inc sp
    inc [hl]

jr_030_6358:
    dec [hl]
    ld [hl], $37
    jr c, jr_030_6362

    dec b

jr_030_635e:
    add hl, sp
    ld a, [hl-]
    nop
    nop

jr_030_6362:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    jr @+$43

    ld b, d
    ld b, e
    dec b
    dec b
    ld b, h
    ld b, l
    nop

jr_030_6371:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    jr jr_030_6390

    jr jr_030_63c5

    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    ld d, d
    ld d, e
    ld d, h

jr_030_6385:
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    dec b
    dec b
    ld e, l

jr_030_6390:
    ld e, [hl]
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
    dec b
    dec b
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    halt
    ld [hl], a
    dec b
    dec b
    ld a, b
    ld [bc], a
    ld a, c
    nop
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    nop
    add d
    dec b
    dec b
    add e
    ld [bc], a
    add h
    add l
    add [hl]
    add a

jr_030_63c5:
    adc b
    adc c
    adc d
    adc b
    adc e
    adc h
    nop
    add d
    dec b
    dec b
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub e
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    ld [hl], a
    dec b
    dec b
    sbc b
    jr jr_030_63fa

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
    dec b
    and l
    jr jr_030_640a

    and [hl]
    and a
    xor b
    jr jr_030_640f

    xor c
    xor d
    xor e

jr_030_63fa:
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

jr_030_640a:
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

jr_030_640f:
    pop bc
    nop
    nop
    jp nz, $c4c3

    nop
    nop
    nop
    nop
    push bc
    add $00
    nop
    rst $00
    ret z

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
    ret


    jp z, Jump_000_0101

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0007
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0207
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0002
    ld [bc], a
    ld bc, $0141
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld bc, $0101
    ld bc, $0404
    inc b
    ld bc, $0404
    inc b
    inc b
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    inc bc
    ld bc, $0404
    inc b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0200
    inc b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0606
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld b, $06
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0006
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0606
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0401
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $1f00
    nop
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
    ld bc, $0f01
    rrca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rlca
    ld hl, sp-$08
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $1f00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    inc bc
    rrca
    rrca
    ld a, a
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
    nop
    rst $38
    nop
    inc bc
    db $fc
    db $fc
    inc bc
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$07
    nop
    nop
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    rst $38
    rra
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
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

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
    di
    ldh a, [rSB]
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld bc, $0707
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    cp $c1
    cp $c1
    cp $c1
    cp $83
    db $fc
    add e
    db $fc
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    rst $38
    ld bc, $0fff
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ret nz

    ret nz

    ccf
    rst $38
    nop
    ld a, [hl]
    cp $1e
    cp $1e
    cp $0e
    cp $0e
    cp $06
    cp $06
    cp $06
    cp $02
    cp $02
    cp $62
    sbc [hl]
    ld [c], a
    ld e, $f2
    ld c, $f2
    ld c, $f2
    ld c, $f2
    ld c, $fa
    ld b, $f8
    ld b, $f8
    ld b, $f9
    ld b, $f9
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    ld hl, sp-$01
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
    inc bc
    rst $38
    rrca
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
    rrca
    ldh a, [$f0]
    rrca
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rrca
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    nop
    cp $0f
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $00
    ccf
    db $e3
    rra
    db $e3
    rra
    jp $e13f


    rra
    pop af
    rrca
    ldh a, [rIF]
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, b
    rlca
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    jr c, jr_030_695f

    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a

jr_030_695f:
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    ld a, b
    rlca
    ld a, b
    rlca
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
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
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
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
    nop
    cp $01
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rlca
    ld hl, sp-$48
    ld b, a
    ld a, a
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
    db $fc
    rst $38
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
    nop
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    and b
    rst $38
    jr nz, @+$01

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_030_6a2c:
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
    cp $ff
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
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $01
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, jr_030_6a2c

    ld b, b
    ld a, a
    add b
    ld a, a
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
    rst $38
    nop
    inc bc
    db $fc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_030_6a8c:
    rst $38
    nop

jr_030_6a8e:
    rst $38
    nop

jr_030_6a90:
    ldh [rIE], a

jr_030_6a92:
    ld hl, sp-$01

jr_030_6a94:
    db $fc
    rst $38

jr_030_6a96:
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38

jr_030_6a9e:
    ld a, a
    rst $38

jr_030_6aa0:
    ld a, a
    nop

jr_030_6aa2:
    ccf
    add b

jr_030_6aa4:
    ld e, a
    ret nz

jr_030_6aa6:
    ld e, a
    ret nz

jr_030_6aa8:
    ld l, h
    ldh [$64], a
    ldh a, [$74]
    ldh a, [$78]
    ld hl, sp+$78
    ld hl, sp+$6c
    db $fc
    ld a, [hl]
    ldh a, [$7f]
    ldh [$7f], a
    and b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld a, $c0
    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    jr c, jr_030_6a8c

    jr c, jr_030_6a8e

    jr c, jr_030_6a90

    jr c, jr_030_6a92

    jr c, jr_030_6a94

    jr c, jr_030_6a96

    add hl, sp
    pop bc
    add hl, sp
    pop bc
    add hl, sp
    pop bc
    jr c, jr_030_6a9e

    jr c, jr_030_6aa0

    jr c, jr_030_6aa2

    jr c, jr_030_6aa4

    jr c, jr_030_6aa6

    jr c, jr_030_6aa8

    jr c, @-$3e

    jr c, @-$3e

    jr c, @-$3e

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

jr_030_6afa:
    inc a
    ret nz

    inc a
    ret nz

    ld a, $c0
    cp $ff
    cp $ff
    db $fd
    db $fc
    ld sp, hl
    ld hl, sp-$1f
    nop
    pop hl
    nop
    ld [c], a
    inc bc
    db $e3
    inc bc
    rst $20
    rlca
    rst $28
    rrca
    cp $ff
    nop
    rst $38

jr_030_6b18:
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
    rst $38
    pop hl
    rst $38
    ld a, [$fbff]
    inc b
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, jr_030_6b18

    jr nz, jr_030_6afa

    ld b, b
    ld a, a

jr_030_6b3d:
    add b
    rst $38
    nop
    rst $38
    nop
    ld bc, $fefe
    ld bc, $00ff
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
    rst $38
    nop
    cp $00
    cp $00
    cp $00
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
    rst $38

jr_030_6b7c:
    ret nz

jr_030_6b7d:
    rst $38
    rst $38

jr_030_6b7f:
    rst $38
    rst $38

jr_030_6b81:
    rst $38
    rst $38

jr_030_6b83:
    rst $38
    ldh [rIE], a
    nop

jr_030_6b87:
    rst $38
    nop

jr_030_6b89:
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

jr_030_6b93:
    rst $38
    nop

jr_030_6b95:
    rst $38
    nop

jr_030_6b97:
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b

jr_030_6b9d:
    rst $38
    ret nz

    rst $38
    ccf

jr_030_6ba1:
    ret nz

    nop
    rst $38

jr_030_6ba4:
    rrca
    ldh a, [$8f]
    ld [hl], b

jr_030_6ba8:
    adc a
    ld [hl], b

jr_030_6baa:
    rst $08
    jr nc, jr_030_6b7c

    jr nc, jr_030_6b7d

    jr nc, jr_030_6b3d

    db $10
    adc b
    db $10
    ldh [rSVBK], a
    ret nz

    ld [hl], b
    ldh [$f0], a
    ret nz

    ld [hl], b
    ret nz

    jr nc, jr_030_6b7f

    jr nc, jr_030_6b81

    jr nc, jr_030_6b83

    jr nc, @-$3e

    jr nc, jr_030_6b87

    jr nc, jr_030_6b89

    jr nc, jr_030_6b93

    jr nc, jr_030_6b95

    jr nc, jr_030_6b97

    jr nc, jr_030_6b9d

    jr nc, jr_030_6ba1

    jr nc, jr_030_6ba4

    jr nc, @-$2f

    jr nc, jr_030_6ba8

    jr nc, jr_030_6baa

    jr nc, @-$2f

    jr nc, @-$2f

    jr nc, jr_030_6c11

    rst $38
    jr nc, @+$01

    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
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
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_030_6c11:
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    rst $38
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
    nop
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc bc
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
    rra
    nop
    ccf
    nop
    ld b, b
    ret nz

    ld b, b
    rst $38
    ld b, c
    rst $38
    ld a, a
    cp $ff
    ld b, b
    ld e, b
    rst $20
    ld a, a
    rst $38
    ld e, b
    rst $20
    ld e, b
    rst $20
    ld e, c
    and $7f
    rst $38
    ld e, e
    db $e4
    ld e, a
    ldh [$59], a
    and $7f
    rst $38
    ld e, c
    and $5f
    ldh [$59], a
    and $7f
    rst $38
    ld e, a
    ldh [$59], a
    and $59
    and $7f
    rst $38
    ld e, a
    ldh [$59], a
    and $59
    and $7f
    rst $38
    ld e, a
    ldh [$59], a
    and $59
    and $7f
    rst $38
    ld e, c
    and $59
    and $5f
    ldh [$7f], a
    rst $38
    ld e, e
    db $e4
    ld e, e
    db $e4
    rst $38
    ld b, b
    rst $38
    ld a, a
    rst $38
    ld b, b
    ld a, b
    rst $00
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
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
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
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
    nop
    ld a, a
    add b
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
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
    add e
    nop
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    rlca
    ret nz

    rlca
    ld [$080f], sp
    rst $38
    ld hl, sp-$01
    rst $38
    ld [$08ff], sp
    rra
    add sp, -$01
    ld hl, sp+$0b
    db $fc
    add hl, bc
    cp $ff
    ld [$fcfb], sp
    add hl, bc
    cp $ff
    ld [$fb0c], sp
    db $fd
    ld a, [$f80f]
    rst $38
    ld [$fb0c], sp
    db $fc
    ei
    rst $38
    ld [$ff08], sp
    ld a, [bc]
    db $fd
    ld sp, hl
    cp $ff
    ld [$ff08], sp
    ld [$f9ff], sp
    cp $ff
    ld [$ff08], sp
    add hl, bc
    cp $f8
    rst $38
    add hl, bc
    cp $3f
    ret z

    rst $38
    ld [$fef9], sp
    add hl, bc
    cp $09
    cp $ff
    ld [$f8ff], sp
    rst $38
    ld [$f80f], sp
    nop
    rst $38
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    ccf
    ret nz

    ret nz

    ccf
    rst $38
    nop
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
    ld [bc], a
    nop
    ld c, $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    pop hl
    ld e, $f1
    ld c, $fa
    dec b
    ld a, [$fb05]
    rlca
    ei
    rlca
    ld hl, sp+$04
    ld a, [$1804]
    db $e4
    ld a, [de]
    push hl
    ld d, $e9
    ld d, $e9
    ld d, $e9
    ld d, $e9
    ld b, $f9
    ld [hl], $c9
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or [hl]
    rst $38
    or $ff
    or [hl]
    rst $38
    or [hl]
    rst $38
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    cp $f7
    cp $f3
    cp $f1
    adc a
    ldh a, [rTAC]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$e0], a
    rra
    rst $38
    nop
    rst $38
    nop
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    inc b
    ld a, e
    nop
    ld a, a
    ld [$4877], sp
    scf
    nop
    ld a, a
    inc b
    ld a, e
    inc c
    di
    ld b, h
    cp e
    ld e, b
    and a
    ld c, h
    or e
    ld a, h
    add e
    jr @-$77

    inc e
    add e
    dec e
    ld [bc], a
    rrca
    nop
    dec bc
    inc b
    rrca
    nop
    rlca
    nop
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    cp h
    inc bc
    cp h
    inc bc
    inc a
    inc bc
    cp h
    inc bc
    cp h
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    db $e3
    rra
    rst $30
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    ld a, a
    add c
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rlca
    ld hl, sp-$08
    rlca
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ret nc

    cpl
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    di
    inc c
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ret nc

    cpl
    ret nz

    ccf
    ret nc

    cpl
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc

jr_030_6f62:
    db $fc
    inc bc

jr_030_6f64:
    ld hl, sp+$07
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld a, [$ff05]
    nop
    ei
    inc b
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    ei
    inc b
    db $fc
    inc bc
    rst $38
    rst $38
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
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00fd
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld a, b
    add b
    jr c, jr_030_6f62

    jr nc, jr_030_6f64

    ldh a, [$e0]
    ld hl, sp-$10
    ld hl, sp-$10
    db $fc
    ld hl, sp-$02
    db $fc
    rst $38
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
    inc bc
    db $fc
    db $fc
    inc bc
    ld b, b
    cp a
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
    add b

jr_030_6ff1:
    ld a, a
    ld b, b
    cp a
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

jr_030_6fff:
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_030_700b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_030_6ff1

    nop
    rst $38
    and b
    ld e, a
    ldh [$1f], a
    ld b, b
    cp a
    ldh [$1f], a
    ld h, b
    sbc a
    jr nz, jr_030_6fff

    ld b, b
    cp a
    ld h, b
    sbc a
    and b
    ld e, a
    ld b, b
    cp a
    nop
    rst $38
    jr nz, jr_030_700b

    nop
    rst $38
    ld b, b
    cp a
    ld h, b
    sbc a
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld hl, sp+$07
    ld [hl], h
    adc e
    cp $01
    ld a, [$e605]
    add hl, de
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
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp-$10
    db $fc
    ld hl, sp-$04
    ld hl, sp-$02
    db $fc
    rst $38
    cp $ff
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$31], a
    rst $38
    nop
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    ld [de], a
    rst $38
    inc de
    rst $38
    ld [de], a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc b
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
    dec b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc de
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    ld b, a
    rst $38
    cpl
    rst $38
    ld d, a
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $0bff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_030_713c:
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
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_030_713c

    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$e0]
    ld hl, sp-$10
    ld hl, sp-$10
    db $fc
    ld hl, sp-$02
    db $fc
    cp $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ccf
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
    cp a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
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
    ld a, a
    rst $38
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

jr_030_71ca:
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_030_71ca

    db $10
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $01
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
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ldh [rNR10], a
    ldh a, [$08]
    ld hl, sp+$04
    db $fc
    ld [bc], a
    cp $00
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
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
    ld bc, $0401
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
    dec b
    ld b, $07
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
    ld [$0903], sp
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
    nop
    nop
    nop
    ld [$0b03], sp
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc de
    inc de
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_030_72a9

    inc bc
    inc bc
    ld [hl+], a
    inc hl
    inc h
    inc bc
    dec h
    add hl, de
    ld h, $27
    jr z, jr_030_72bd

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_030_72b5

    ld sp, $1932
    add hl, de
    ld h, $33
    inc [hl]
    dec [hl]
    ld [hl], $37
    inc bc
    inc bc
    inc bc

jr_030_72a9:
    jr c, jr_030_72e4

    add hl, de
    ld a, [hl-]
    dec sp
    add hl, de
    add hl, de
    inc a
    add hl, de
    dec a
    ld a, $3f

jr_030_72b5:
    inc bc
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_030_72bd:
    ld b, a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    add hl, de
    add hl, de
    add hl, de
    ld c, h
    ld c, l
    ld c, [hl]
    inc bc
    ld c, a
    add hl, de
    add hl, de
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    add hl, de
    add hl, de
    ld c, h
    ld d, a
    inc bc
    ld e, b
    ld e, c
    add hl, de
    add hl, de
    inc bc
    ld e, d
    ld e, e
    ld e, h

jr_030_72e4:
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    add hl, de
    add hl, de
    ld h, [hl]
    ld h, a
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld l, b
    ld l, c
    inc bc
    ld l, d
    ld l, e
    ld l, h
    inc bc
    ld l, l
    ld l, [hl]
    add hl, de
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
    inc bc
    ld a, e
    ld a, h
    ld l, [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    ld [de], a
    add c
    add d
    add e
    add h
    add l
    add [hl]
    ld bc, $5987
    add hl, de
    ld a, h
    add hl, de
    add hl, de
    adc b
    adc b
    adc b
    adc b
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    adc c
    adc d
    adc e
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    adc h
    adc l
    adc [hl]
    add hl, de
    add hl, de
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    adc a
    sub b
    sub c
    sub d
    add hl, de
    add hl, de
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    sub e
    inc bc
    sub h
    sub l
    add hl, de
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0401
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $02
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    ld b, $06
    ld [bc], a
    inc bc
    inc b
    ld bc, $0101
    ld bc, $0202
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld h, $06
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0202
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld b, $00
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0002
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    nop
    nop
    ld bc, $0302
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    rlca
    ld [bc], a
    ld bc, $0003
    nop
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0701
    ld [bc], a
    ld bc, $0202
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    rlca
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    ld bc, $0007
    ld [bc], a
    ld [hl+], a
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fc
    nop
    di
    nop
    rst $08
    nop
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
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
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    nop
    rrca
    rrca
    rst $38
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
    cp $ff
    db $fc

jr_030_754d:
    rst $38
    ld hl, sp-$01
    add b
    nop
    ld a, a
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
    cp $ff
    ld hl, sp+$03
    ldh a, [rTAC]
    ret z

    scf
    sub b
    ld l, a
    db $10
    rst $28
    jr nz, @-$1f

    jr nz, jr_030_754d

    ld b, b
    cp a
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ldh a, [rSB]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$03]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    ldh a, [rNR10]
    nop
    ret nc

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    pop hl
    ld bc, $01f1
    pop af
    ld bc, $03f3
    di
    inc bc
    di
    inc bc
    rst $30
    rlca
    rst $20
    rlca
    rlca
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ret nz

    rst $38
    add b
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
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$02
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, [$faff]
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    dec sp
    call nz, $e41b
    dec bc
    db $f4
    inc bc
    db $fc
    ld bc, $01ff
    rst $38
    nop
    ld a, [$fa00]
    nop
    ld hl, sp+$00
    ld a, [$ce31]
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
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
    cp $fe
    db $fc
    cp $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    pop hl
    ldh a, [$e1]
    ldh [$c3], a
    ret nz

    add e
    add b
    inc bc
    add b
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
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
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    add b
    add b
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    ld a, h
    ld a, a
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    rlca
    nop
    rra
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
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
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
    ldh a, [rIE]
    rst $38
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
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
    inc bc
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
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
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
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    jr nz, @+$01

    db $10
    rst $38
    ret z

    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    inc bc
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
    ld bc, $0fff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
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
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, b
    rst $38
    nop
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
    rst $38
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
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

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
    nop
    rst $38
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
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    ld c, a
    or b
    daa
    ret c

    rrca
    ldh [$37], a
    ret nz

    ei
    nop
    db $fd
    nop
    cp $00
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
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
    rst $38
    ldh a, [rIE]
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ccf
    ret nz

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
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    cp $fe
    rst $38
    add b

jr_030_7a22:
    rst $38

jr_030_7a23:
    ld b, b
    rst $38

jr_030_7a25:
    jr nc, @+$01

jr_030_7a27:
    ld [$04ff], sp
    rst $38

jr_030_7a2b:
    ld [bc], a
    rst $38

jr_030_7a2d:
    ld bc, $00ff
    rst $38

jr_030_7a31:
    rst $38
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    di
    rst $38
    rst $20
    jr jr_030_7a22

    jr nc, @-$20

    ld hl, $619e
    cp [hl]
    ld b, c
    inc a
    add e
    inc a
    add e
    cp h
    inc bc
    rst $00
    ld a, b
    rst $00
    ld a, b
    rst $00
    ld a, b
    ld b, a
    ld a, b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    rst $08
    ld [hl], b
    ld e, a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$5f], a
    ldh [$a0], a
    rra
    and b
    rra
    and b
    rra
    and b
    rra
    and b
    rra
    jr nz, jr_030_7a2b

    jr nz, jr_030_7a2d

    jr nz, @-$5f

    jr nz, jr_030_7a31

    jr nc, jr_030_7a23

    jr nc, jr_030_7a25

    jr nc, jr_030_7a27

    jr nc, @-$6f

    jr c, jr_030_7a23

    inc a
    add e
    inc a
    add e
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    add b
    add b
    nop
    ldh [rP1], a
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
    ret nz

    ret nz

    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    nop
    jr nz, @-$1f

    db $10
    rst $28
    ld [$04f7], sp
    ei
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    db $fc
    nop
    ld hl, sp+$01
    ld hl, sp+$01
    ldh a, [$03]
    rst $20
    nop
    rst $20
    nop
    rst $08
    nop
    sbc a
    nop
    cp a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    add c
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
    ld bc, $03ff
    rst $38
    rrca
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $fc
    db $fc
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
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
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
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
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
    ret nz

    nop
    db $fc
    nop
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
    add b
    add b
    ldh a, [$f0]
    cp $fe
    rst $38
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
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    ret nz

    ret nz

    ldh a, [$f0]
    cp $fe
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$1f], a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    nop
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    adc a
    add b
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    inc bc
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
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    nop
    dec b
    ld b, $00
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [$0900], sp
    ld a, [bc]
    nop
    dec bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc c
    dec c
    ld c, $0f
    stop
    ld de, $1312
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc d
    nop
    dec d
    inc bc
    ld d, $00
    rla
    jr @+$1b

    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld a, [de]
    dec de
    inc e
    inc bc
    dec e
    nop
    ld e, $1f
    jr nz, jr_030_7e58

    inc bc
    inc bc
    inc bc

jr_030_7e58:
    inc bc
    inc bc
    inc bc
    ld hl, $0322
    inc bc
    dec e
    inc hl
    inc h
    dec h
    ld h, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    daa
    jr z, jr_030_7e96

    inc bc
    inc bc
    ld a, [hl+]
    dec hl
    inc l
    nop
    dec l
    ld l, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    cpl
    inc bc
    inc bc
    inc bc
    jr nc, jr_030_7eb2

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_030_7ec2

    ld a, [hl-]
    dec sp
    inc a
    inc bc
    inc bc
    inc bc
    dec a
    ld sp, $3f3e
    ld b, b
    ld b, c
    ld b, d

jr_030_7e96:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc bc
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    inc bc
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    inc bc
    inc bc
    inc bc
    ld d, h

jr_030_7eb2:
    ld d, l
    ld d, [hl]
    ld b, c
    ld d, a
    nop
    nop
    nop
    nop
    ld e, b
    ld e, c
    ld e, d
    inc bc
    inc bc
    inc bc
    ld e, e
    ld e, h

jr_030_7ec2:
    ld e, l
    ld e, [hl]
    inc bc
    ld e, a
    ld h, b
    nop
    nop
    nop
    ld h, c
    ld h, d
    ld h, e
    ld e, e
    inc bc
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    inc bc
    inc bc
    inc bc
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    nop
    nop
    nop
    ld a, d
    ld a, e
    ld a, h
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    nop
    nop
    add h
    add l
    nop
    add [hl]
    add a
    adc b
    adc c
    inc bc
    inc bc
    inc bc
    inc bc
    adc d
    ld sp, $008b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    adc l
    adc [hl]
    inc bc
    inc bc
    adc d
    ld sp, $008f
    nop
    sub b
    sub c
    sub d
    ld [hl], b
    nop
    nop
    nop
    nop
    sub e
    inc bc
    inc bc
    adc d
    ld sp, $0058
    nop
    inc bc
    inc bc
    inc bc
    sub h
    sub l
    nop
    nop
    nop
    nop
    sub [hl]
    inc bc
    adc d
    ld sp, $0058
    jr z, jr_030_7f42

    ld [bc], a

jr_030_7f42:
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0602
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0602
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0602
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld b, d
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld b, $06
    ld bc, $0202
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0406
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    rlca
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0206
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld hl, $0101
    ld bc, $0101
    ld [bc], a
    rlca
    inc bc
    nop
    nop
    nop
