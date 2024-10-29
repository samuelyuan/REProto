SECTION "ROM Bank $05f", ROMX[$4000], BANK[$5f]

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
    adc c
    adc d
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
    adc c
    adc c
    adc c
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
    jr jr_05f_40aa

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05f_40ba

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05f_40ca

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05f_40da

    ld [hl-], a

jr_05f_40aa:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05f_40b5

    inc b
    inc b
    inc b
    inc b

jr_05f_40b5:
    inc b
    inc b
    inc b
    inc b
    inc b

jr_05f_40ba:
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_05f_40ca:
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_05f_40da:
    inc b
    inc b
    ld b, $06
    ld b, $06
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    inc b
    ld b, $04
    inc b
    ld b, $06
    ld b, $06
    ld bc, $0406
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    inc b
    ld b, $06
    ld b, $06
    ld bc, $0406
    inc b
    nop
    inc b
    inc b
    ld b, $04
    inc b
    ld b, $01
    ld bc, $0101
    inc b
    ld bc, $0406
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0601
    inc b
    ld bc, $0404
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    rlca
    ld b, $06
    ld b, $01
    inc b
    inc b
    ld bc, $0404
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld bc, $0404
    inc b
    ld b, $04
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    ld hl, $0406
    inc b
    ld bc, $0404
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    ld b, $04
    inc b
    inc b
    inc b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $04
    inc b
    ld b, $04
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    ld bc, $0101
    ld bc, $0406
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_05f_4197:
    inc b
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $01
    ld bc, $0601
    ld b, $06
    ld b, $06
    ld b, $0e
    add hl, bc
    ld c, $0e
    add hl, bc
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    inc c

jr_05f_41c5:
    inc c
    inc c
    inc c
    ld c, $0c
    inc c
    inc c
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc c
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $08
    ld [$080c], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    adc c
    db $76
    ld [bc], a
    db $dd
    inc bc
    db $fc
    ld b, d
    dec e
    inc bc
    db $ec
    ld [bc], a
    xor l
    jr nz, jr_05f_41c5

    jr nz, jr_05f_4197

    nop
    or a
    nop
    rst $28
    db $10
    ld l, a
    db $10
    and [hl]
    db $10
    ld l, [hl]
    dec d
    ld [$c837], a
    ldh a, [$03]
    ldh a, [$80]

jr_05f_4212:
    ld bc, $0206
    ld e, l
    nop
    rst $08
    nop
    ld e, l
    nop
    ld de, $4d00
    nop
    ld e, [hl]
    nop
    push af
    nop
    sub l
    nop
    inc l
    nop
    ld c, d
    nop
    ld d, c
    nop
    ld a, d
    inc bc
    inc d
    ccf
    add b
    ld a, a
    add b
    db $fc
    ld [bc], a
    or b
    ld c, d
    ret nz

    inc sp
    nop
    dec bc

jr_05f_423a:
    nop
    xor c
    nop
    dec sp
    nop
    ld a, e
    jr nz, jr_05f_4212

    nop
    pop af
    nop
    ld [c], a

jr_05f_4246:
    nop
    ld a, [$b500]
    nop
    sbc $02
    or l
    rlca
    jr jr_05f_4258

    adc b
    ld c, $30
    inc a
    ret nz

    ldh a, [$28]

jr_05f_4258:
    add b
    ld h, c
    nop
    rlca
    ld bc, $0112
    ld b, $01
    sub d
    nop
    ccf
    nop
    xor [hl]
    nop
    ld c, l
    nop
    ld c, d
    nop
    rst $38
    ld [$0a77], sp
    dec [hl]
    dec b
    ld a, d
    rra
    ld h, c
    rra
    ld h, b
    inc e
    ld h, d
    jr c, jr_05f_423a

    ld a, b
    sub c

jr_05f_427c:
    ldh a, [$cb]
    ret nz

    dec a
    nop
    sbc d
    ld [$0825], sp
    ld d, $00
    add [hl]
    inc b
    ld [de], a
    nop
    dec d
    nop
    scf
    ld [bc], a
    dec d
    ld b, $03
    ld b, $5b
    ld b, $e8
    inc c
    ld a, [c]
    jr jr_05f_4246

    jr jr_05f_427c

    ld [hl], b
    add b
    ld b, b
    and c
    ret nz

    dec b
    add b
    ld b, $00
    add hl, sp
    nop
    scf
    nop
    ld [hl], e
    nop
    db $fd
    nop
    ld a, e
    nop
    rst $38
    ld b, b
    cp a
    ld b, e
    cp h
    ld l, e
    sub l
    dec hl
    sub $26
    ret c

    inc e
    db $e4
    jr c, @-$39

    or b
    ld e, d
    ld [hl], b
    rst $20
    ldh [$6d], a
    ret nz

    cp c
    add b
    ld sp, hl
    nop
    pop af
    nop
    ld [hl], l
    nop
    push af
    ld bc, $fcba
    nop
    ld hl, sp+$02

jr_05f_42d4:
    ld sp, hl
    inc bc
    ld hl, sp+$03
    ldh a, [rTMA]
    ldh [$0c], a
    ldh [$09], a
    ld h, h
    dec de
    or a
    ld e, b
    rst $20
    jr c, jr_05f_42d4

    or b
    rst $18
    and b
    sbc a
    pop hl
    cp a
    ld b, c
    ld a, a
    add b
    rst $30
    ld [$ce01], sp
    ld bc, $00da
    cp a
    ld bc, $011a

Jump_05f_42f9:
    jp c, $ab00

    nop
    push de
    nop
    di
    nop
    push af
    nop
    ei
    ld b, b
    cp a
    ld d, c
    xor [hl]
    ld a, a
    add b
    rst $38
    ld b, $f8
    ld b, [hl]
    nop
    jr nz, jr_05f_4351

    ld b, [hl]
    ld hl, sp-$02
    ldh a, [$f7]
    add sp, -$15
    ld hl, sp-$07
    ld hl, sp-$08
    db $ec
    db $ec
    db $f4
    push af
    nop
    add sp, $40
    xor d
    nop
    cp $02
    ld [hl], l
    rlca
    ld a, c
    cp [hl]
    ld b, a
    ld hl, sp+$0c
    ldh [rNR11], a
    ret nz

    sub d
    nop
    ret nz

    nop
    nop
    nop
    and b
    nop
    jr nz, jr_05f_433b

jr_05f_433b:
    ld h, b
    nop
    ld [hl-], a
    nop
    dec [hl]
    nop
    or [hl]
    db $10
    db $ed
    ld de, $abea
    inc d
    xor a
    ld d, c
    ld a, $41
    ld [hl], b
    adc c
    pop bc
    ld [hl+], a
    add c

jr_05f_4351:
    ld b, [hl]
    ld b, $39
    inc c
    ld [hl], e
    rlca
    ld hl, sp+$2b
    call nc, $d02f
    ld bc, $01fe
    cp $80
    ld a, a
    add b
    ld a, a
    add c
    ld a, [hl]
    inc bc
    db $fc
    ld c, a
    or e
    ld a, h
    adc a
    ld hl, sp+$17
    ldh [rNR22], a
    ret nz

    ld c, a
    add b
    cp a
    nop
    ld a, a
    nop
    ei
    nop
    di
    nop
    ld a, a
    nop
    push hl
    ld [bc], a
    dec a
    ld bc, $0596
    jp c, $fc03

    ld [bc], a
    call nc, $e10c
    add hl, de
    db $e4
    ld sp, $618c
    sub [hl]
    pop bc
    adc d
    ld [bc], a
    add l
    nop
    rrca
    nop

jr_05f_4397:
    rra
    nop
    add hl, sp
    nop
    db $fd
    ld bc, $00f4

jr_05f_439f:
    sbc l
    ld bc, $03bc
    push bc
    ld [bc], a
    or a
    inc b
    ld l, [hl]
    ld [$183d], sp
    add e
    jr nc, jr_05f_43c5

    jr nc, jr_05f_439f

    ret nz

    ld l, a
    add b
    rst $10
    nop
    sbc a
    nop
    ld a, a
    inc b
    ld a, e
    inc b
    cp e
    dec b
    ld a, d

Jump_05f_43be:
    inc bc
    xor l
    ld [bc], a
    cp l
    ld b, $f8
    inc c

jr_05f_43c5:
    ld [hl], a
    jr c, jr_05f_4397

    jr jr_05f_443d

    ld [hl], b
    sbc e
    ld h, b
    cp a
    ld h, b
    sbc a
    ccf
    ld b, b
    ld a, a
    add b
    ld a, a
    nop
    ld l, a
    nop
    rst $30
    nop
    ld l, d
    nop
    rra
    ld bc, $422c
    add hl, bc
    add $0c
    and h
    ld bc, $00e8
    ld a, b
    ld [$2070], sp
    ld h, b
    nop
    ld h, b
    nop
    ret nc

    nop
    dec d
    nop
    dec c
    ld b, b
    rlca
    ret nz

    dec b
    ret nz

    rlca
    ldh [$03], a
    add b
    ld [bc], a
    add d
    ld [bc], a
    jp nz, $8c1f

    ld a, [hl]
    sub b
    nop
    ldh a, [rSB]
    jr nz, jr_05f_440c

    ld h, b
    nop

jr_05f_440c:
    ldh [rP1], a
    ldh [rP1], a
    rra
    nop
    rra
    nop
    rra
    ld bc, $1f0f
    rrca
    rra
    rrca
    nop
    rlca
    add hl, bc
    rrca
    nop
    rrca
    nop
    dec b
    ld a, [bc]

jr_05f_4424:
    cpl
    db $10
    ld a, a
    cp b
    rst $08
    or d
    rlca
    dec bc
    ld b, $0f
    inc b
    dec bc
    inc bc
    inc b
    inc bc
    add hl, bc
    inc bc
    ld bc, $0903
    inc bc
    inc e
    inc bc
    inc e
    inc bc

jr_05f_443d:
    inc l
    ld b, $b9
    ld e, $e4
    ld a, b
    sbc h
    ldh [$71], a
    ret nz

    jp Jump_05f_4e80


    nop
    ld h, e
    ret nz

    add hl, bc
    ldh [rTAC], a
    ldh [$0a], a
    ldh [rNR33], a
    ld [hl], b
    adc e
    ldh a, [rTAC]
    ld [hl], c
    adc d
    ei
    ld bc, $c23f
    ld e, [hl]
    cp c
    ld [hl], d
    cp l
    db $e4
    dec sp
    call c, $bca3

jr_05f_4467:
    ld b, e
    cp h
    ld b, e
    sbc l
    ld h, d
    cp a
    ld b, b
    rst $18
    jr nz, jr_05f_44d0

    and b
    ld d, a
    xor c
    ld d, a
    xor d
    ld c, a
    or b
    inc l
    rst $10
    add hl, sp
    xor $23
    ld hl, sp+$67
    and e
    rst $08
    inc sp
    sbc a
    rst $20
    ccf

jr_05f_4485:
    rst $00
    ld a, a
    add e
    rst $38
    inc bc
    rst $38
    inc bc
    rst $18
    inc hl
    sbc a
    ld h, a
    sbc a
    ld h, e
    ld a, a
    add [hl]
    ld a, a
    add h
    ld a, a
    adc b
    ld a, e
    add h
    ld [hl], a
    xor b
    ld c, a
    ldh a, [$c7]
    jr c, jr_05f_4424

    inc a
    ld b, e
    cp l
    rlca
    ld sp, hl
    dec b
    ei
    rlca
    ld sp, hl
    rrca
    pop af
    rra
    ld [c], a
    ld e, $e5
    ld a, [c]
    ld [$08e4], sp
    ld hl, sp+$10
    ret z

    jr nz, @-$66

    ld b, b
    jr c, jr_05f_44fc

    ld a, b
    add b
    ld a, b
    nop
    ld hl, sp+$01
    ld sp, hl
    ld bc, $01fd
    ld hl, sp+$02
    ld hl, sp+$02
    cp $05
    ldh a, [$09]
    db $e4
    add hl, bc

jr_05f_44d0:
    ldh a, [rNR12]
    ret nz

    jr nc, jr_05f_4485

    jr nz, jr_05f_4467

    ld b, b
    db $10
    add b
    ld b, b
    and b
    nop
    ld de, $1281
    add b
    jr @+$04

    inc c
    ld b, $08
    ld c, h
    ld [$1810], sp
    jr jr_05f_44fc

    nop
    ld hl, $6130
    add b
    ld a, c
    add b
    db $fd
    add b
    rst $38
    add b

jr_05f_44f7:
    cp $80
    rst $38
    ret nz

    cp h

jr_05f_44fc:
    ret nz

    cp [hl]
    ret nz

    ld a, a
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    nop
    rra
    ret nz

    rra
    ret nz

    rra
    ldh [$1f], a
    ld b, b
    rra
    ld h, b
    rra
    ld h, b
    rrca
    jr nz, jr_05f_4544

    ldh a, [$df]
    ldh [$3f], a
    add b
    rra
    nop
    rra
    nop
    rra
    nop
    rla
    nop
    rlca
    ret nz

    inc bc
    xor b
    dec hl
    ld a, b
    inc hl
    ldh a, [$33]

jr_05f_452b:
    add h
    jp $011c


    ld a, h
    ld bc, $01fc
    cp $01
    ld e, $01
    ld c, $05
    ld c, [hl]
    jr jr_05f_457a

    jr nz, @-$04

    add b
    adc e
    ret nz

    rrca
    nop
    inc bc

jr_05f_4544:
    nop
    rlca
    add b
    dec b
    add b
    rlca
    add h
    inc b
    add b
    add hl, sp
    ret


    scf
    or c
    rrca
    ret nz

    rra
    ret nz

    rra
    add c
    ld d, a
    ld bc, $4197
    rlca
    ret nz

    rrca
    ret nz

    dec e
    ccf
    jp nc, $c13f

    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    jp Jump_05f_53bf


    rst $30
    ld l, $02
    ld l, h
    inc b
    and b
    add b
    jr nz, jr_05f_44f7

    ld b, b
    nop
    ld b, b

jr_05f_457a:
    nop
    ld b, c
    ld bc, $0021
    dec sp
    rst $38
    rra
    rst $38
    ld e, l
    ei
    call c, $f1ff

jr_05f_4588:
    di
    db $ec
    di
    call z, $8df3
    rst $30
    adc b
    rst $30
    ld c, b
    ei
    dec b
    rst $38
    ld [bc], a
    cp $03
    db $fc
    rrca
    db $fc
    dec bc
    ld hl, sp+$1e
    ldh a, [rNR33]
    add a
    jr nz, jr_05f_45a6

    ld b, b
    inc hl
    ret nz

jr_05f_45a6:
    ld b, e
    jr nz, jr_05f_452b

    jr nc, jr_05f_452b

    ld h, c
    inc bc
    ld [hl+], a
    ld bc, $0314
    inc b
    rlca
    ld [$1007], sp
    rrca
    db $10
    rrca
    jr nz, jr_05f_45ea

    ld h, b
    ld c, h
    ld b, b
    inc l
    pop bc
    add b
    add c
    jr nz, jr_05f_4606

    nop
    rrca
    ld bc, $000d
    add hl, bc
    inc b
    dec de
    add b
    inc sp
    adc b
    rla
    db $10
    cpl
    nop
    ld c, a
    ld h, b

jr_05f_45d5:
    ld e, a
    ld bc, $c099
    or e
    ld [bc], a
    inc hl
    add b
    ld [hl], a
    inc b
    dec h
    call nc, $c62b
    add hl, sp
    rst $38
    db $10
    rst $08
    jr nc, jr_05f_4588

    ld h, b

jr_05f_45ea:
    ld e, $e1
    ld l, $d1
    dec a
    jp nz, Jump_000_00ff

    rst $38
    nop
    rst $38
    nop
    dec [hl]
    nop
    ld [$a77f], sp
    nop
    rst $30
    nop
    rst $30
    nop
    ld c, b
    or a
    inc e
    db $e3
    ld a, a
    nop

jr_05f_4606:
    jr jr_05f_466f

    ld a, e
    add h
    cpl
    ld d, b
    jr c, jr_05f_45d5

    ld a, $c1
    ccf
    ld b, b
    ld a, [de]
    and l
    inc c
    or e
    inc e
    and e
    dec e
    ld [c], a
    rra
    ldh [rNR10], a
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$00
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    db $fc
    nop
    db $fc
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, [hl]
    add b
    cp $80
    cp [hl]
    add c
    cp [hl]
    add b
    cp [hl]
    ret nz

    cp [hl]
    ret nz

    cp [hl]
    ret nz

    sbc a
    ret nz

    dec de
    ret nz

    inc bc
    ld b, b
    inc bc
    ldh [rSC], a
    jr nz, @+$03

    ldh [rNR41], a
    ldh [rP1], a
    ldh [$80], a
    and b
    nop
    or b
    nop
    ld [hl], b
    nop

jr_05f_466f:
    or b
    nop
    or b
    db $10
    stop
    jr nz, jr_05f_4687

    ld h, b
    ld d, b
    ret nz

    add b
    add b
    nop
    nop
    nop
    inc c
    rst $38
    jr @+$01

    inc [hl]
    rst $38
    ld l, [hl]
    rst $38

jr_05f_4687:
    ld c, $ff
    rst $18
    cp a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld c, a
    nop
    rlc b
    db $db
    add b
    ld a, a
    add c
    ld l, a
    add c
    ld b, a
    add b
    rlca
    add c
    rlca
    pop bc
    rrca
    rr a
    adc [hl]
    rra
    ld e, $7f
    ld e, a
    cp a
    ld e, [hl]
    ccf
    call c, $df1f
    rra
    rst $38
    rra
    rst $08
    rra
    adc l
    cpl
    cp l
    cpl
    rla
    rrca
    scf
    ld c, a
    scf

Call_05f_46bb:
    rrca
    ld b, a
    add a
    rst $28
    rlca
    rst $20
    rlca
    ld h, d
    rrca
    ld b, d
    adc a
    ld [bc], a
    sub [hl]
    jr nz, @-$27

    ld [bc], a
    di
    ld b, b
    and $00
    jp $e718


    and b
    rst $18
    dec d
    ld [$e01f], a
    dec c
    ld a, [c]
    rrca
    ldh a, [$0b]
    db $f4
    sbc e
    ld h, h
    nop
    ld h, b
    nop
    jp hl


    nop
    ei
    add b

jr_05f_46e7:
    ei
    nop
    ld hl, sp-$80
    call nz, Call_000_0201
    nop
    ret c

    nop
    rst $28
    nop
    rst $28
    nop
    db $ed
    nop
    rst $28
    rst $38
    call c, $fe00
    nop
    di
    nop
    cp l
    nop
    sbc $00
    db $dd
    ld l, b
    sub a
    jr nz, jr_05f_46e7

    di
    inc c
    xor b
    ld d, a
    and b
    ld e, a
    and b
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    db $10
    rra
    db $fc
    rst $38
    cp $ff
    dec b
    dec b
    ld de, $0011
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    ld b, b
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add sp, $17
    ld a, l
    add d
    ld b, d
    cp l
    nop
    rst $38
    nop
    rst $38
    ret nc

    cpl
    di
    inc c
    ld b, b
    cp a
    dec bc
    nop
    ld [$0000], sp
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    jr nz, jr_05f_474e

jr_05f_474e:
    jr nz, @+$01

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $30
    ld [$7eff], sp
    rst $38
    ld [$d27f], sp
    ld a, a
    adc $7f
    rst $38
    ld a, a
    sub b
    rst $38
    ld a, [hl-]
    rst $38
    ld l, $38
    ccf
    nop
    ccf
    ld b, b
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    dec e
    nop
    dec de
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    sbc a
    ldh a, [rIF]
    jr nc, @-$2f

    db $10
    rst $28
    ld [de], a
    rst $28
    ld de, $11ef
    rst $28
    dec bc
    rst $30
    dec b
    rst $38
    dec c
    rst $30
    inc c
    rst $30
    rrca
    rst $30
    ld [bc], a
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    add l
    ei
    add h
    ei
    add h
    ei
    add b
    rst $38
    ld hl, sp-$01
    xor $fd
    or b
    rst $38
    db $ed
    cp $e1
    cp $90
    rst $38
    db $10
    rst $38
    ld a, [hl+]
    push af
    ld a, [hl]
    add c
    ld a, d
    add l
    rst $38
    add d
    rst $38
    daa
    rst $38
    rlca
    rst $38
    sbc $fe
    reti


    rst $38
    ld a, [$64ff]
    rst $38
    and $a3
    ld a, h
    ld d, e
    db $fc
    ld a, [de]
    db $fd
    db $d3
    ld a, $e3
    ld e, $d1
    ld l, $d0
    cpl
    add c
    ld a, a
    nop
    rst $38
    ld b, $f7
    ld [bc], a
    rst $00
    inc de
    rrca
    dec c
    rrca
    ld bc, $011f
    ld a, a
    ld [bc], a
    rst $38
    nop
    ld [hl], h
    nop
    db $fc
    nop
    call nc, $fd00
    rst $38
    sbc a
    nop
    rst $38
    nop
    ld a, [hl-]
    nop
    adc l
    nop
    adc h
    nop
    ld b, d
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, a
    ccf
    ccf
    ld e, a
    ld e, a
    rst $18
    rst $18
    rst $38
    rst $38
    nop
    rst $38
    and b
    ld e, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $18
    add b
    ld a, a
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    add sp, $17
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    rst $30
    db $fc
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rrca
    db $fc
    inc bc
    cp $01
    cp $01
    cp $81
    cp $01
    cp $01
    cp $8d
    cp $b3
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld bc, $fd0a
    nop
    rst $38
    ld c, $f1
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [$c8f7], sp
    scf
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_05f_4895:
    rst $38
    nop
    rst $38
    add hl, sp
    rst $38
    adc c
    rst $38
    push af
    rst $38
    sub a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    ld bc, $85ff
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    ret nz

    ccf
    inc c
    di
    ld l, h
    sub e
    jr nz, jr_05f_4895

    nop
    rst $38
    jr nz, @+$01

    ld h, c
    cp $87
    ld a, b
    rra
    ldh [rNR41], a
    or b
    nop
    ldh [rP1], a
    add b
    nop
    jr nz, jr_05f_48c9

jr_05f_48c9:
    nop
    nop
    nop
    and b
    nop
    nop
    nop
    cp $01
    xor $11
    push af
    ld a, [bc]
    xor d
    ld d, l
    inc b
    ei
    ldh [$1f], a
    rst $38
    add b
    rst $38
    ld a, [$ff9c]
    cp h
    rst $38
    and e
    cp $ea
    rst $38
    db $e4
    rst $38
    ld a, [c]
    rst $38
    add sp, -$01
    add b
    rst $38
    nop
    ld [bc], a
    nop
    ld [hl], b
    nop
    ld [de], a
    nop
    ld a, [$f2ff]
    nop
    sbc $00
    ret nz

    nop
    ldh a, [rP1]
    or d
    nop
    ld a, h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, hl
    sub $00
    ld d, l
    nop
    or $ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    or l
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
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
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
    ccf
    ld bc, $813e
    cp [hl]
    add c
    cp [hl]
    add c
    sbc [hl]
    add c
    sbc [hl]
    pop bc
    sbc $c0
    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    nop
    rra
    ld [$0407], sp
    dec bc
    nop
    rrca
    nop
    rrca
    ld bc, $020e
    dec c
    inc bc
    inc c
    dec b
    ld a, [bc]
    ld bc, $010e
    ld c, $05
    ld a, [bc]
    inc b
    inc bc
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    rlca
    rlca
    rlca
    dec b
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    add e
    inc bc
    add d
    inc bc
    add e
    inc bc
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ccf
    jp $c13f


    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    ld e, a
    pop hl
    rra
    ldh [$df], a
    ldh [$cf], a
    ldh a, [$9f]
    ldh a, [$8f]
    ldh a, [rIE]
    ldh a, [$1f]
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld h, c
    sbc [hl]

Call_05f_49ba:
    ld a, l
    add d
    rst $38
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
    ld [bc], a
    db $fd
    ld [bc], a
    db $e4
    dec de
    ret nz

    ccf
    and b
    ld e, a
    ld [bc], a
    db $fd
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
    db $ec
    inc de
    rst $38
    nop
    rst $00

jr_05f_49e1:
    cp b
    ld b, h
    cp e
    nop
    rst $38
    nop
    rst $38
    jr z, jr_05f_49e1

    ld l, b
    rst $10
    ld [$22f7], sp
    db $dd
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc b
    rst $38
    xor h
    nop
    jp c, Jump_000_0a00

    nop
    ld c, $00
    ld b, $00
    ld [bc], a

jr_05f_4a04:
    nop
    ei
    nop
    xor a
    jr nz, @-$1f

    ccf
    ret nz

    nop
    xor $00
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    jp $ff00


    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_05f_4a26:
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, [bc]
    push af
    ld [hl], $c9
    nop
    rst $38
    db $10
    rst $28
    add d
    ld a, l
    add $39

jr_05f_4a38:
    add $39
    rst $00
    jr c, jr_05f_4a04

    jr c, jr_05f_4a26

    jr jr_05f_4a38

    ld [$ff00], sp
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$44f7], sp
    cp e
    ld d, b
    xor a
    ld e, b
    and a
    sbc h
    ld h, e
    cp h
    ld b, e
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
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
    rst $38
    ld a, a
    rst $38
    xor [hl]
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    nop
    rst $30
    adc b
    rst $38
    nop
    rst $30
    ld [$28d7], sp
    sbc c
    ld h, [hl]
    jp nz, $903d

    ld l, a
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $f900
    nop
    db $fc
    inc bc
    db $e4
    add b
    xor $30
    rst $38
    ld hl, sp-$01
    jr nc, @+$01

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
    nop
    xor $00
    inc d
    nop
    jr c, jr_05f_4af1

jr_05f_4af1:
    add h
    nop
    ld [bc], a
    nop
    ld [hl], h
    nop
    ld [hl], a
    nop
    rst $38
    ld d, d
    xor l
    nop
    ret c

    nop
    db $10
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
    or a
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld a, a
    add b
    ld a, e
    add h
    inc hl
    call c, $ff00
    nop
    rst $38
    inc hl

jr_05f_4b25:
    call c, $fd02
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
    and d
    ld e, l
    and b
    ld e, a
    nop

jr_05f_4b33:
    rst $38
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
    db $10
    rst $28
    sub b
    ld l, a
    nop
    rst $38
    sub b
    ld l, a
    nop
    rst $38
    jr jr_05f_4b33

    ld c, b
    or a
    ld d, b
    xor a
    ld c, b
    or a
    ld d, b
    xor a
    ld e, b
    and a
    ld e, b
    and a
    ld c, b
    or a
    ld e, b
    and a
    jr c, jr_05f_4b25

    ld c, c
    or [hl]
    add hl, hl
    sub $39
    add $bb
    ld b, h
    ld sp, hl
    ld b, $df
    jr nz, jr_05f_4be8

    add d
    db $fd
    ld [bc], a
    ld a, c
    add [hl]
    ei
    inc b
    ld sp, hl
    ld b, $fb
    inc b
    db $fd
    ld [bc], a
    ei
    inc b
    rst $38

jr_05f_4b7b:
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    rst $38
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
    sub b
    nop
    or h
    nop
    and a
    ld e, b
    sub c
    ld l, [hl]
    ld [hl+], a
    db $dd
    and d
    ld e, l
    nop
    rst $38
    jr nz, jr_05f_4b7b

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, l
    ret nc

    cpl
    rst $38
    nop
    nop
    rst $38
    add b
    ld a, a
    sub e
    ld l, h
    adc d
    ld [hl], l
    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    rst $38
    nop
    nop
    stop
    nop
    nop
    jr nz, jr_05f_4bd1

jr_05f_4bd1:
    nop
    nop
    nop
    nop
    dec hl
    nop
    db $db
    ld b, b
    and b
    ret nz

    dec sp
    nop
    ld b, b
    nop
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    or [hl]

jr_05f_4be8:
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
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    db $fc
    sbc [hl]
    ld h, c
    cp [hl]
    ld b, c
    nop
    rst $38
    nop
    rst $38
    inc a
    jp $e51a


    inc b
    ei
    inc d
    db $eb
    ld d, [hl]
    xor c
    ld [hl+], a
    db $dd
    ld c, $f1
    nop
    rst $38
    nop
    rst $38
    nop

jr_05f_4c17:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    nop
    rst $38
    jr nz, jr_05f_4c17

    add b
    ld a, a
    db $10
    rst $28
    sub b
    ld l, a
    add d
    ld a, l
    xor b
    ld d, a
    or d
    ld c, l
    or e
    ld c, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    ld a, a
    rst $38
    nop
    ld a, a
    nop
    ld e, $00
    inc b
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    dec e
    ld [c], a
    xor a
    ld d, b
    ld c, l
    or d
    jr nc, @-$2f

    ld b, c
    cp [hl]
    ld b, h
    cp e
    add h
    ld a, e
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $ff
    nop
    rst $38
    nop
    sbc b
    ld h, a
    ret nz

    ld e, $84
    ld l, e
    add b
    rst $28
    ret nz

    cp a
    pop bc
    cp [hl]
    nop
    inc b
    nop
    inc b
    nop
    add h
    nop
    db $ec
    db $fc
    inc bc
    nop
    stop
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    cp [hl]
    cp [hl]
    adc l
    adc l
    inc b
    inc b
    ld l, a
    ld l, a
    nop
    nop
    ld [$ff08], sp
    rst $38
    rst $38

Jump_05f_4cb3:
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    halt
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38

jr_05f_4cc5:
    rst $38
    nop
    nop
    nop
    nop
    sbc $20
    and d
    ld e, h
    or $08
    ld b, $f8
    ld [$56f6], sp
    xor b
    ld d, d
    xor h
    ld b, [hl]
    cp b
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $03fd
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld [$40f4], sp
    cp h
    ld b, b
    cp h
    nop
    db $fc
    ld d, b
    xor b
    ld l, b
    sub b
    ld d, b
    xor b
    ld a, b
    add b
    ld [hl], b
    adc b
    ld l, b
    sub b
    ld l, b
    sub b
    ld a, b
    add b
    ret nz

    jr c, jr_05f_4cc5

jr_05f_4d15:
    ld a, b
    or b
    ld a, b
    add b
    ld a, b
    ret nz

    jr c, jr_05f_4d15

    nop
    ldh a, [rP1]
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

jr_05f_4d2d:
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
    rra
    rst $38
    rra
    rst $38
    db $eb
    dec de
    rst $38
    nop
    rst $18
    nop
    adc l
    nop
    ld b, $00
    jr jr_05f_4d4d

jr_05f_4d4d:
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $30
    ld [$0af5], sp
    rst $30
    ld [$d827], sp
    ld b, d
    cp l
    dec b
    ld a, [$ff00]
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    ccf
    nop
    nop
    nop
    nop
    jr nc, jr_05f_4d2d

    ld a, a
    sub b
    ld a, [hl]
    nop
    ld a, h
    inc bc
    ldh a, [$0e]
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld b, $f9
    nop
    inc bc
    nop
    ld [bc], a
    nop
    nop
    ld b, d
    ld b, d
    ld bc, $ff01
    rst $38
    or a
    or a
    inc bc
    inc bc
    ld e, a
    ld e, a
    ld b, b
    ld b, b
    jp nz, $ffc2

    rst $38
    rst $38
    rst $38
    nop
    rst $20
    nop
    rst $38
    nop
    or $00
    rra
    nop
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, h
    db $fc
    ld a, l
    db $fd
    ld a, d
    ld a, [$fb7b]
    ld a, [hl]
    cp $7f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    rst $38
    rst $38
    ld [$08f7], sp
    rst $30
    rrca
    ldh a, [$0a]
    push af
    rrca
    ldh a, [$08]
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$0ff7], sp
    rst $38
    add hl, bc
    or $18
    rst $20
    inc de
    db $ec
    rra
    ldh [rNR14], a
    db $eb
    rla
    add sp, $10
    rst $28
    ld a, [de]
    push hl
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    pop de
    ccf
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ei
    ccf
    ldh [$3f], a
    ret nz

    dec sp
    call nz, $e03f
    ccf
    rst $28
    ret nz

    ccf
    ret nz

    cpl
    ret nz

    ccf
    add b
    ld e, e
    add b
    ld [hl], b
    add b
    ld a, [hl]
    add h
    ld a, [hl]
    add b
    ld b, e
    add b
    ld c, l
    add b
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    add b

jr_05f_4e29:
    ld a, a
    sub b
    ld a, a
    ret nz

    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld a, e
    rst $38
    nop
    rst $38
    daa
    rst $38
    cp e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_05f_4e45:
    rst $38
    add c
    ld a, [hl]
    jr nz, jr_05f_4e29

    ldh [$1f], a
    jp hl


    ld d, $e8
    rla
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld e, [hl]
    and c
    cp $01
    rst $38
    nop
    xor $11
    push de
    ld a, [hl+]
    jr nz, jr_05f_4e45

    ld c, [hl]
    or c
    ld b, e
    cp h
    ld a, [hl+]
    push de
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $00
    ld a, [hl-]
    sub a
    ld l, e
    or d
    ld c, l
    ld [hl], b
    adc a
    ldh a, [$6f]

Jump_05f_4e80:
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    sbc a
    cp a
    ld b, b
    nop
    ld [hl], d
    nop
    pop de
    nop
    ld sp, $ca00
    nop
    or d
    nop
    rst $18
    nop
    rst $38
    nop
    cp d
    ld bc, $00fe
    ld a, [hl+]
    nop
    ccf
    rst $18
    rst $18
    rst $38
    rst $38
    inc bc
    rst $38

jr_05f_4ea6:
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    jr c, jr_05f_4ea6

    inc a
    db $fc
    inc c
    call z, $9898
    ld de, $3011
    jr nc, jr_05f_4f38

    ld a, a
    rst $38
    rst $38
    db $db
    db $db
    rst $38
    rst $38
    nop
    dec hl
    nop
    rst $38
    cpl
    ret nc

    nop
    ld a, a
    nop
    or a
    nop
    ld de, $2600
    ei
    inc b
    nop
    rst $38
    ld bc, $fffe
    nop
    ld a, [$ff05]
    nop
    dec l
    jp nc, $b748

    inc b
    ei
    dec c
    ld a, [c]
    rst $38
    adc $2f
    ret nc

    ld a, [hl]
    add c
    dec hl
    call nc, Call_000_00ff
    cp a
    ld b, b
    rst $38
    nop
    rlca
    ld hl, sp+$5f
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    cp $99
    rst $38
    ld [bc], a
    ld bc, $0100
    ld [bc], a
    ld bc, $01e2
    or $01
    ld c, d
    ld bc, $0108
    inc b
    ld b, c
    db $fc
    cp $fd
    db $fd
    ld a, $fe
    db $fd
    db $fc
    sbc e
    db $fd
    ld a, [de]
    cp $39
    db $fd
    or $ff
    ld hl, sp+$47
    cp b
    rla
    add sp, $47
    ld hl, sp+$07
    ld hl, sp+$06
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    inc c
    di
    ld b, $f9
    db $fc
    di
    inc b
    ei
    db $ec
    di

jr_05f_4f38:
    xor c
    or $48
    rst $30
    ld [$88f7], sp
    rst $30
    nop
    rst $38
    nop
    rst $38
    ld h, c
    sbc a
    ld hl, $25df
    db $db
    ld a, l
    add e
    ld c, l
    or e
    add hl, hl
    rst $18
    rlca
    rst $38
    rst $30
    rrca
    db $fc
    inc bc
    cp $01
    cp [hl]
    ld b, c
    cp $01
    cp $01
    or $09

jr_05f_4f60:
    nop
    ld l, e
    nop
    ld a, h
    jr nz, jr_05f_4fd6

    nop
    ld l, e
    nop
    dec sp
    nop
    dec a
    add b
    rra
    nop
    ld h, h
    ld a, l
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    ld a, a
    ret nz

    ld a, a
    ldh [rP1], a
    and a
    nop
    ret c

jr_05f_4f84:
    nop
    ld a, [hl]
    nop
    cp d
    db $fc
    ld [bc], a
    nop
    halt
    ld a, [hl]
    nop
    ld a, $00
    cp $00
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$00
    db $fc
    jr c, jr_05f_4f60

    nop
    db $fc
    nop
    db $fc
    ld [$f8f0], sp
    nop
    nop
    cp b
    nop
    ret c

    nop
    ld hl, sp+$78
    add b
    nop
    ld hl, sp-$10
    ld [$f800], sp
    nop
    jr jr_05f_4fb5

jr_05f_4fb5:
    stop
    or b
    ldh [rNR10], a
    ldh a, [rP1]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], c
    jr nz, jr_05f_4f84

    ldh [rP1], a
    ld h, b
    add b
    jr nz, @-$3c

    nop
    ld [c], a
    nop
    ld h, d
    ret nz

    ld [hl+], a
    ld b, b
    or d
    ld b, b
    add a
    ret nz

    daa

jr_05f_4fd6:
    ld b, b
    add a
    ret nz

    dec d
    add c
    ld c, [hl]
    ld b, c
    adc [hl]
    add c
    ld a, [hl]
    add c
    ld e, a
    add c
    rst $38
    add c
    ld a, a
    add e
    ld a, l
    add e
    ld a, h
    add e
    ld a, a
    add e
    ld a, a
    inc bc
    rst $38
    inc bc
    sbc $03
    rst $38
    rlca
    ei
    rlca
    ei
    rlca
    rst $38
    rlca
    rst $38
    rlca

Jump_05f_4ffd:
    rst $38
    rlca
    rst $38
    ldh a, [rTMA]
    ldh a, [rDIV]
    ldh a, [rIF]
    ret nc

    rrca
    ret nc

    rrca
    add c
    dec bc
    add c
    rrca
    and c
    rrca
    and c
    rra
    add c
    rrca
    add c
    rra
    inc bc
    rra
    inc bc
    rra
    inc de
    rra
    inc bc
    rra
    inc bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    add d
    ld a, a
    add b
    ld a, a
    cp [hl]
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [$bc7f]
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp e
    rst $38
    ei
    rst $38
    adc $ff
    jp nc, $f6ff

    rst $38
    sub $ff
    call c, $98ff
    rst $38
    ld [hl], h
    rst $38
    cp b
    rst $38
    cp d
    db $fd
    or c
    cp $7f
    db $fc
    cp l
    ld a, [hl]
    dec sp
    db $fc
    add hl, sp
    cp $4d
    cp $1d
    cp $39
    sbc $e8
    rra
    ld a, [$481f]
    cp a
    db $10
    rst $38
    adc c
    rst $38
    xor b
    rst $38
    add hl, de
    rst $38
    ld c, c
    cp a
    adc l
    ld [hl], a
    ld b, a
    cp a
    ld b, a
    cp a
    add a
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    rla
    rst $28
    inc bc
    nop
    inc bc
    ld bc, $0003
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    dec b
    rlca
    inc bc
    rlca
    nop
    rlca
    inc b
    rlca
    ld [bc], a
    rlca
    rlca
    rlca
    rrca
    rlca
    rrca
    rrca
    rlca
    rrca
    nop
    rrca
    ld a, [bc]
    rrca
    rrca
    rrca
    dec e
    rrca
    dec d
    rrca
    ld de, $051f
    rra
    ld bc, $1f1f
    rra
    ld hl, $17e0
    pop hl
    rlca
    pop hl
    rlca
    pop bc
    rlca
    pop bc
    daa
    jp $c30f


    rrca
    jp $831f


    daa
    add e
    ccf
    add e
    ld e, a
    add a
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    rlca
    ld a, a
    rrca
    ld a, a
    rrca
    rst $38
    rst $18
    cpl
    ld c, a
    cp a
    ld c, a
    cp a
    rrca
    rst $38
    rrca
    rst $38
    ld a, a
    sbc a
    rst $28
    rra
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld a, $ff
    ld a, l
    cp a
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    cp [hl]
    ld a, a
    cp $7f
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, e
    cp $7d
    cp $7d
    cp $fd
    cp $7f
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fa
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01

jr_05f_5110:
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $f4
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    db $ec
    rst $30
    db $ec
    rst $30
    ld [$eef7], a
    di
    db $fd
    db $e3
    sbc $e1
    call c, $8ce3
    di
    ld [$20f7], sp
    db $db
    and b
    sbc a
    add sp, -$61
    ld a, b
    adc a
    ld [hl], b
    adc a
    inc [hl]
    adc a
    ld [hl], h
    add a
    add b
    adc a
    jr nz, jr_05f_5110

    jr nz, jr_05f_5192

    jr nz, jr_05f_51a3

    nop
    ccf
    nop
    ld a, $02
    ld e, $10
    ld e, $00
    rra
    ld b, b
    sbc a
    ld [$008f], sp
    adc a
    nop
    adc a
    inc b
    adc l
    inc b
    ld b, l
    ld b, h
    ld b, [hl]
    add b
    ld l, a
    sub a
    ld l, d
    inc b
    ei
    and b
    rst $38
    push bc
    ei
    push af
    db $db
    call nc, $c4fb
    ei
    xor b
    rst $38
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    db $fc
    rst $30
    ret nc

    rst $38
    ld d, b
    rst $38
    ld c, h
    ei
    ld h, h
    ei
    db $fd
    rra
    ccf
    rst $18
    call c, $3f3f
    rst $38
    ccf
    rst $38
    ld a, $ff
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    ld a, $ff

jr_05f_5192:
    ld a, $7f
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, h
    ld a, a
    ld a, h
    rst $38
    ld a, h
    cp $79
    cp $71
    cp $f9

jr_05f_51a3:
    cp $f9
    cp $f9
    db $fc
    ei
    db $fc
    di
    db $fc
    di
    db $fc
    jp Jump_05f_73fc


    ldh a, [$03]
    ld hl, sp-$79
    ld hl, sp+$47
    ld hl, sp-$7f
    db $fc
    ldh [rIE], a
    ret nz

    ld sp, hl
    rst $00
    ldh a, [$c7]
    ldh a, [$c7]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    ldh a, [$87]
    ret nc

    add e
    ret nc

    db $e3
    ret c

    pop af
    call z, $c638
    inc a
    jp $813e


    cp [hl]
    add c
    ld a, a
    add b
    ld a, h
    add b
    ld a, h
    ld bc, $017c

jr_05f_51ea:
    ld hl, sp+$02
    ld a, b
    add d
    and b
    add h
    ld d, b
    ld b, h
    sub b
    ld l, b
    sub b
    jr z, jr_05f_51f7

jr_05f_51f7:
    jr c, jr_05f_5239

    ld [$0c10], sp
    nop
    ld b, $00
    ld a, [bc]
    db $f4
    dec bc
    xor $11
    xor $11
    xor $11
    rst $20
    jr jr_05f_521a

    ldh a, [$9f]
    ldh [$9f], a
    ld h, b
    ld b, b
    ld h, b
    nop
    jr nz, jr_05f_5255

    or h
    nop
    call nc, $dc00

jr_05f_521a:
    db $10
    db $e4
    ld [$08e4], sp
    db $f4
    inc b
    ldh a, [rDIV]
    ei
    jp nz, Jump_05f_42f9

    db $fc

jr_05f_5228:
    add c
    db $fc
    add c
    ld a, [c]
    and b
    ld a, [c]
    ld b, b
    ldh [rVBK], a
    ldh a, [rNR34]
    pop hl
    xor a
    ld [hl], b
    add a
    ld a, b
    and a

jr_05f_5239:
    ld e, b
    cpl
    ret nc

    ld [hl], e
    adc h
    ld [hl], e
    adc h
    dec c
    add h
    ld bc, $0782
    add d
    nop
    add d
    nop
    add c
    ld [bc], a
    add c
    add b
    ret nz

    ld bc, $41c0
    ld h, b
    nop
    ld h, b
    nop

jr_05f_5255:
    and b
    ld b, b
    and b
    nop
    and b
    nop
    sub b

jr_05f_525c:
    inc d
    sub b
    jr nz, jr_05f_5228

    jr jr_05f_51ea

    db $10
    xor b
    nop
    add h
    ld [$0805], sp
    jp $830c


    ld b, $81
    add [hl]
    add c
    ld b, $81
    ld b, $c0
    ld b, c
    ld b, b
    ld bc, $00c0
    and b
    jr nz, jr_05f_525c

    nop
    ldh [rP1], a
    ldh a, [$e0]
    rst $18
    ldh [$df], a
    ldh [$db], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    jp nz, $c0bd

    cp a
    call nz, $81bb
    cp $a7
    ret c

    rst $28
    db $10
    rst $28
    db $10
    rst $38
    ret nz

    rst $38
    ld a, [hl]
    ccf
    push de
    rlca
    ret z

    nop
    adc h
    inc b
    adc e
    rlca
    adc b
    rlca
    ld [$1c03], sp
    inc de
    inc c
    rlca
    jr jr_05f_52b8

    jr c, @+$08

    add hl, sp
    ld [bc], a
    dec a
    ld b, $39

jr_05f_52b8:
    ld h, $59
    ld a, [hl+]
    push de
    add sp, -$29
    ld hl, sp-$19
    inc a
    ld a, e
    rra
    inc a
    rrca
    rlca
    rlca
    db $eb
    inc bc
    daa
    nop
    inc de
    nop
    or a
    nop
    push af
    inc b
    db $eb
    nop
    cp a
    ld [$08c5], sp
    rst $00
    ld [$08e3], sp
    or $96
    ld l, c
    sub $b9
    ld a, [$fec5]
    ld h, c
    ld a, d
    dec d
    inc e
    cp e

jr_05f_52e8:
    adc a
    ld e, h
    rst $00
    ld a, [hl+]
    db $e3
    inc d
    pop af
    ld a, [bc]
    ld hl, sp+$05
    ld hl, sp+$06
    cp $00
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    and a
    ld e, b
    rst $08
    ld [hl-], a
    add hl, hl
    nop
    add hl, bc
    add b
    dec bc
    add b
    dec bc
    ret nz

    jp $4260


    jr nc, jr_05f_534d

    jr jr_05f_532f

    ld [$d42f], sp
    rlca
    cp $17
    ld [$eb13], a
    add hl, de
    rst $20
    nop
    db $fd
    ld [$c0f5], sp
    ld a, $80
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    ld b, b
    cp a
    ld b, b
    rst $38
    ld h, b

jr_05f_532f:
    cp a
    ld sp, $11ee
    cp $99
    ld h, [hl]
    adc l
    ld a, d
    rlca
    db $dd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    ld bc, $fef9
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a

jr_05f_534d:
    add b
    rst $38
    add b
    ccf
    nop
    cp a
    ld b, b
    cp l
    nop
    dec e
    nop
    ld a, a
    jr nz, jr_05f_53a6

    db $10
    ld [hl], a
    db $10
    and b
    ld [$0839], sp
    jr nc, jr_05f_52e8

    ld e, h
    add h
    ld a, b
    ld [bc], a
    inc a
    ld [bc], a
    inc a
    inc bc
    ld e, a
    ld bc, $017a
    dec sp

jr_05f_5371:
    nop
    rra
    add b
    adc a
    add b
    rrca
    ret nz

    adc $60
    rst $08
    ld b, b
    adc a
    jr nz, jr_05f_53c6

    jr nz, jr_05f_5371

jr_05f_5381:
    rrca
    ld [c], a
    dec e
    ld [c], a
    ld e, l
    add sp, $17
    db $e4
    dec de
    db $e4
    ld a, [de]
    call nz, $c43b
    dec sp
    and b
    ld e, h
    adc b
    ld h, [hl]
    adc b
    ld [hl], l
    ld [$08e5], sp
    pop af
    jr jr_05f_5381

    ld e, b
    and a
    ld hl, sp-$79
    rst $18
    ldh [$1f], a
    add b
    rra
    adc e

jr_05f_53a6:
    add b
    ld [hl], l
    ret nz

    inc [hl]
    ret nz

    dec a
    nop
    db $fd
    nop
    db $fc
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ee
    xor $ee
    db $ed
    db $ed
    db $ed

Jump_05f_53bf:
    db $ed
    nop
    db $ed
    nop
    db $ed
    add b
    ld a, a

jr_05f_53c6:
    ldh [$9a], a
    ld hl, sp-$0e
    ld hl, sp+$36
    ld a, $19
    rra
    or b
    adc a
    ld d, d
    rlca
    ld hl, sp+$01
    db $f4
    db $10
    xor $10
    ld [$4639], a
    add hl, bc
    or $0c
    ld sp, $bd00
    ld [$00f7], sp
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    cp a
    ldh [$df], a
    ld [hl], b
    rst $28
    add hl, sp
    db $76
    dec e
    cp d
    rrca
    call nc, $c907
    ld bc, $01f7
    di
    ld bc, $00f8
    cp $00
    cp $40

jr_05f_5407:
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ret nz

    ccf
    ret nc

    cpl
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$9f], a
    ldh [$df], a
    ldh a, [rVBK]
    ld [hl], b
    ld l, a
    ld a, b

jr_05f_5421:
    rst $30
    ld a, [hl]
    cp c
    ld a, a
    sbc b
    ld c, a
    cp h
    ld c, a
    and [hl]
    rst $00
    inc sp
    add e
    ld h, a
    add c
    inc sp
    nop
    cp c
    nop
    db $fc
    inc b
    ld a, [$7f00]
    ld [bc], a
    jp hl


    add b
    ld d, a
    ret nz

    add hl, de
    add b
    ld a, l
    and b
    ld e, l
    ldh [$9c], a
    ldh [$9e], a
    ldh [$5e], a
    ld [hl], b
    call z, $a478
    jr c, @-$39

    jr jr_05f_5407

    jr jr_05f_5421

    inc c
    ei
    ld c, $e5
    ld b, $fd
    daa
    jp c, $ae43

    pop hl
    dec de
    jp hl


    inc d
    ld l, h
    sub d
    sbc $20
    cp $01
    cp a
    ld h, b
    cp a
    ld h, b
    rst $38
    nop
    rst $18
    ld h, b
    rst $38
    add b
    nop
    add b
    nop
    ret nz

    ld b, b

jr_05f_5475:
    ld b, b
    ret nz

    ld h, b
    and b
    ld h, b
    ldh [$30], a
    add b
    ld d, $30
    rla
    push hl
    push hl
    jp z, $baca

    cp d
    or h
    or h
    set 1, e
    ld [hl], l
    ld [hl], l
    sub l
    sub l
    ld [hl], b
    ld [hl], b
    pop de
    pop de
    ld d, b
    ld d, b
    ld b, b
    ld b, b
    jr nc, jr_05f_54c8

    ld h, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld b, b
    ld b, b
    ldh a, [$f0]
    ret nz

    nop
    ret c

    ld [hl+], a
    rst $38
    nop
    ld a, a
    adc b
    rrca
    ld [hl-], a
    nop
    inc bc
    nop
    add b
    nop
    and b
    ldh [$e0], a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

jr_05f_54c8:
    add b
    add b
    nop

jr_05f_54cb:
    nop
    nop
    nop
    nop
    nop
    add b

jr_05f_54d1:
    ldh [$e0], a
    sub b
    ld hl, sp+$66
    ld a, [hl]
    add c
    ccf

jr_05f_54d9:
    ret nz

    rra
    ld b, c
    inc bc
    reti


    nop
    db $fc
    db $10
    add sp, $10
    db $eb
    db $10
    xor $30
    call z, $df20
    and b
    ld e, d
    jr nz, jr_05f_54cb

    ld b, b
    ld [hl], $40
    ccf
    ret nz

    jr c, jr_05f_5475

    ld a, [hl]
    add b
    ld [hl], l
    add b
    ld a, a
    add b
    ld [hl], e
    and b
    ld e, l
    ldh [$df], a
    ldh a, [$cf]
    db $f4
    ld l, e
    ld a, [hl]
    ld sp, $5c3f
    rra
    cp h
    rrca
    rst $18
    rlca
    rst $28
    rlca
    di
    inc bc
    pop af
    ld de, $18ec
    push hl
    inc e
    ld [c], a
    ld c, $f1
    ld c, $f1
    rrca
    ldh a, [$36]
    ret


    ld e, $e1
    ld c, $f1
    ld c, h
    or d
    call c, $fc23
    ld [bc], a
    ld hl, sp+$06
    ld hl, sp+$07
    ld hl, sp-$75
    ld hl, sp-$3d
    ldh a, [$7d]
    ld [hl], b
    sbc a
    jr c, @+$59

    jr nc, jr_05f_54d9

    jr jr_05f_54d1

    ld [$0c55], sp
    add sp, $06
    jp hl


    ld [bc], a
    ld [hl], a
    ld bc, $01fa
    ld a, h
    nop
    ld a, l
    nop
    rst $38
    nop
    ld a, a
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
    nop
    rst $38
    ld b, b
    cp a
    call z, $e033
    rra
    ldh a, [$8f]
    ldh a, [rVBK]
    ld h, b
    rst $18
    ld [hl], c
    xor [hl]
    ld sp, $bbee
    inc d
    sbc a
    ld a, e
    rst $18
    dec hl
    rst $08
    scf
    rst $20
    rla
    rst $20
    inc de
    di
    add hl, bc
    ld sp, hl
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    ld b, h
    db $fc
    inc bc
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
    jr jr_05f_55b3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05f_55c3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05f_55d3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05f_55e3

    ld [hl-], a

jr_05f_55b3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05f_55f3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_05f_55c3:
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

jr_05f_55d3:
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

jr_05f_55e3:
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

jr_05f_55f3:
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
    xor c
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
    jr jr_05f_56b4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05f_56c4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_05f_56b4:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05f_56f4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $01
    ld bc, $0101

jr_05f_56c4:
    ld bc, $0101
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_05f_56f4:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_05f_57f4:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $30
    ldh [$ef], a
    jr jr_05f_5807

    rst $38
    rrca

jr_05f_5807:
    ldh a, [$80]
    ld a, a
    sub b
    ld l, a
    db $fc
    add e
    add a
    db $fd
    cpl
    ld a, [c]
    rst $38
    nop
    rst $20
    dec e
    rst $38
    nop
    rst $38

jr_05f_5819:
    nop
    add hl, hl
    db $10
    cp e
    db $10
    db $d3
    jr nz, jr_05f_57f4

    jr nz, jr_05f_5819

    ld bc, $01f9

jr_05f_5826:
    ldh a, [rNR42]
    ld a, e
    pop hl
    ld bc, $f0ff
    rra
    jp nc, $d21f

    rrca
    push af
    rrca
    or d
    ld c, a
    dec de
    rst $28
    sub [hl]
    ld l, a
    jr nc, @+$11

    ld h, b
    rra
    rrca
    nop
    dec c
    nop
    dec c
    ld [$f84f], sp
    inc c
    ld hl, sp+$2c
    ret c

    jr z, @-$26

    jr nc, jr_05f_5826

    ld sp, $61e8
    sbc b
    ld h, l
    sbc b
    ld l, a
    sbc c
    rlca
    ld hl, sp-$7d
    db $fc
    dec de
    inc b
    dec bc
    inc b
    ld d, $00
    ld [hl], $00
    ld a, $04
    inc l
    rra
    inc l
    rra
    db $fc
    inc bc
    db $10
    inc bc
    ld a, [hl-]
    inc bc
    ld e, [hl]
    inc bc
    ld [$9f83], sp
    ld b, b
    ld h, e
    add h
    inc bc
    nop
    rlca
    rlca
    ccf
    ccf
    ld a, a
    ccf
    ccf
    ccf
    rst $38
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    ccf
    ld a, a
    cp a
    ld a, [hl]
    cp [hl]
    ret nz

    stop
    db $10
    rra
    db $10
    rst $18
    ld [hl], b
    rst $20
    ld hl, sp+$5a
    ldh a, [$fb]
    ldh a, [$09]
    ld hl, sp+$47
    ld hl, sp-$79
    ld sp, hl
    ld l, e
    db $fc
    dec a
    nop
    rlca
    nop
    ld a, a
    add b
    rst $30
    ld [$1fea], sp
    add a
    ld a, b
    adc h
    ld [hl], b
    rra
    ldh [$30], a
    rst $18
    adc e
    ld a, h
    rlca
    ld hl, sp+$34
    rst $38
    or $09
    cp $c1
    add $81
    call c, $ff03
    nop
    rst $38
    nop
    db $76
    adc e
    add a
    ld a, a
    add hl, sp
    rst $38
    sub $fd
    db $ec
    di
    ld hl, sp-$11
    ldh [$bf], a
    call nc, $887f
    ld [hl], a
    add d
    db $fd
    or b
    rst $38
    ei
    db $fc
    set 7, h
    rla
    ld hl, sp+$10
    rst $38
    jr @-$0f

    cp b
    rst $08
    ld [hl], l
    adc a
    ld a, [$881f]
    ld a, a
    ld [bc], a
    db $fd
    ld b, $f9
    inc c
    di
    ld a, [de]
    rst $20
    inc d
    rst $28
    dec c
    rst $38
    jr nz, @+$01

    rlca
    ld hl, sp+$04
    ei
    ld a, l
    adc [hl]
    push hl
    ld a, [de]
    rst $38
    nop
    rst $38
    nop
    cp a
    ld h, b
    dec b
    ld a, [$cc33]
    cp a
    ret nc

    rst $38
    ld bc, $ffad
    inc bc
    rst $38
    cp $01
    sbc $03
    rst $08
    nop
    ld [bc], a
    ld b, c
    and [hl]
    ld b, c
    and [hl]
    ld b, c
    cp a
    ld b, b
    ei
    inc h
    ld sp, hl
    rlca
    ld a, c
    add [hl]
    ld a, l
    add [hl]

jr_05f_592c:
    ld a, a
    add [hl]
    ld a, [$4b07]
    add a
    ld c, e
    add [hl]
    add hl, hl
    add $63
    adc $f2
    rst $08
    ld c, $ff
    db $f4
    rra
    dec sp
    ld bc, $007f
    rst $00
    jr nz, jr_05f_592c

    nop

jr_05f_5946:
    xor e
    call nz, Call_05f_649b
    ld sp, hl
    ld b, $ef
    db $10
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    db $ed
    db $10
    and $19
    rst $38
    nop
    cp l
    ld b, b
    ld a, a
    nop
    ld a, [hl]
    ld hl, $215e
    ld e, a
    ld hl, $c17c
    ld a, [de]
    pop hl
    sub d
    pop hl
    adc d
    pop af
    ld e, b
    db $e3
    ld c, h
    di
    xor h
    ld d, e
    ld [$c014], a
    nop
    add b
    ld b, b
    ret nz

    ret nz

    ret


    ret nz

    pop de
    ret z

    reti


    ret nz

    call $c7c0
    ret nz

    jp nz, $c2c0

    ret nz

    jp nz, Jump_000_00c0

    ld [bc], a
    ld bc, $8000
    jr nc, jr_05f_59a7

    ldh [$3b], a
    ldh [$be], a
    ld b, e
    ld e, $63
    dec bc
    ld [hl], e
    sbc [hl]
    ld h, e
    and h
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, h
    rst $38
    or b
    rst $38
    ld h, c

jr_05f_59a7:
    ld a, $dd
    jr nc, @-$1f

    jr nc, @+$65

    cp $fb
    ccf
    rst $18
    ccf
    ld e, e
    cp h
    rst $20
    jr c, jr_05f_5946

    ldh a, [$f7]
    ld [$04ef], sp
    db $e3
    nop
    ld a, a
    add b
    or l
    rst $08

jr_05f_59c2:
    ld a, [bc]
    rst $38
    ld a, h
    ei
    ld bc, $1bff
    db $fc
    adc [hl]
    ld a, e
    add hl, bc
    rst $38
    ld bc, $02fe
    rst $38
    rlca
    db $fc
    rlca
    ld hl, sp-$6f
    ld a, a
    nop
    rst $38
    rst $20
    dec e
    rst $20
    jr c, jr_05f_59c2

    rst $38
    di
    ld c, a
    inc l
    rst $18
    dec e
    cp $fb
    db $fc
    or $f9
    ld a, [c]
    rst $38
    ccf
    rst $38
    and a
    rst $38
    dec de
    rst $28
    daa
    rst $18
    db $d3
    xor a
    or c
    adc $73
    sbc h
    sbc e
    ld a, h
    ld [hl], e
    db $fc
    ld e, a
    rst $38
    ld h, d
    sbc h
    dec b
    ei
    pop bc
    ld a, a
    xor b
    rra
    di
    ld c, $8f
    ld [hl], b
    ccf
    ret nz

    rst $08
    jr nc, jr_05f_5a6a

    cp $b2
    rst $18
    rst $18
    pop hl
    ld h, e
    db $fc
    cp [hl]
    db $e3
    di
    inc c
    ld [hl], b
    rst $18
    ld sp, hl
    rlca
    db $fd
    ld [bc], a
    rst $38
    nop
    rrca
    nop
    db $fc
    nop
    ld d, h
    jr c, jr_05f_5aa5

    rrca
    ld [hl], c
    rrca
    xor $01
    ccf
    ldh [$ef], a
    jr jr_05f_5a58

    inc e
    rst $38
    nop
    cp a
    nop
    db $fc
    inc bc
    ld d, $c8
    adc a
    nop
    sbc a
    nop
    sub b
    rrca
    pop af
    ld c, $7b
    add [hl]
    jp z, $b236

    inc c
    cp d
    ld b, $af
    ld b, $9e
    nop
    rst $18
    nop
    rst $18
    add b
    ld a, c
    ret nz

jr_05f_5a58:
    ld a, a
    add b
    sbc a
    add a
    ld e, b
    add a
    ld e, c
    add a
    ret c

    add a
    db $d3
    adc l
    scf
    rst $08
    db $fd
    add b
    ret z

    add b

jr_05f_5a6a:
    sbc $80
    rst $38
    add b
    cp a
    ret nz

    sub [hl]
    pop hl
    and h
    jp Jump_000_01e6


    xor $01
    sbc $21
    rst $20
    jr c, @+$01

    nop
    ld a, h
    and b
    ld l, a
    add b
    rst $28
    nop
    rst $38
    nop
    rst $38
    db $10
    ccf
    nop
    cp e
    dec c
    cp $9b
    ld [de], a
    dec c
    inc de
    inc c
    db $d3
    inc c
    db $fc
    rra
    ld [c], a
    rra
    ld c, [hl]
    pop af
    ei
    ld b, $bb
    dec b
    ld a, [c]
    dec e
    dec h
    cp $39
    rst $28
    ld l, c

jr_05f_5aa5:
    sbc a
    ld a, [c]
    dec c
    ei
    inc [hl]
    jp hl


    ld [hl], a
    dec hl
    rst $38
    adc $f9
    or e
    ret nz

    xor a
    ld b, b
    cp [hl]
    ld b, c
    call c, $e623
    rra
    ldh a, [$3f]
    call z, Call_05f_7b7f
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    inc a
    rst $08
    daa
    rst $38
    cp $01
    ld a, [hl]
    add e
    cp $3f
    ldh a, [$8f]
    add e
    db $fc
    bit 6, h
    call nz, Call_05f_7a7f
    rst $08
    di
    inc e
    sub [hl]
    ld a, a
    ld l, d
    push af
    sub e
    db $fd
    ld a, b
    rst $10
    ldh [$1f], a
    jp Jump_000_1e3f


    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    ld sp, hl
    cp $f0
    rst $38
    db $e4
    rst $38
    sbc b
    rst $38
    ld [bc], a
    rst $38
    dec de
    rst $20
    sbc b
    ld h, a
    jp nz, $c53f

    ld a, $12
    db $fd
    ld a, [hl]
    ld bc, $0106
    ld h, e
    ret nz

    ld e, [hl]
    ldh [$87], a
    nop
    ld [c], a
    ld bc, $39ee
    or a
    inc c
    rst $38
    nop
    rst $38
    ld [bc], a

jr_05f_5b14:
    cpl
    ld a, [c]

jr_05f_5b16:
    rst $20
    jr c, jr_05f_5b16

    add d
    inc hl
    db $fc
    ldh [$df], a
    inc a
    rst $20
    rrca
    rst $38
    xor $13
    ld [$ff3d], a
    nop
    ld a, [hl]
    nop
    db $fd
    ld [bc], a
    dec l
    jp nz, $fff0

    call $e5fe
    ld e, $f7
    inc c
    push hl
    ld b, $dd
    ld h, $07
    db $fc
    rst $18
    ld a, $75
    ld a, $ce
    ccf
    adc [hl]
    ld a, a
    db $fc
    inc hl
    db $dd
    inc hl
    ld e, c
    ld h, $3d
    ld [bc], a
    dec d
    ld [bc], a
    db $fc
    inc bc
    ld e, l
    inc hl
    ld a, $00
    ld a, a
    add b
    sub a
    add b
    rst $38
    nop
    ld [hl], e
    sbc h
    ld h, l
    sbc b
    ld [hl], a
    adc b
    dec b
    adc d
    ld a, e
    adc h
    ld a, a
    ret z

    db $ec
    ld e, a
    ld l, l
    rra
    rst $10
    rrca
    cp [hl]
    ld c, a
    inc a
    rst $00
    ld e, e
    and h
    sub $0c

jr_05f_5b74:
    ld hl, sp+$07
    ld a, $c7
    cp $07
    or c
    ld e, [hl]
    ld e, e
    and h
    rst $10
    jr nz, jr_05f_5b14

    ld h, b
    rst $18
    jr nz, jr_05f_5b74

    db $10
    rst $38
    nop
    ld [hl], $09
    push af
    rra
    ccf
    rst $38
    add b
    rst $38
    rst $38
    nop
    ld a, a
    add b
    ld a, b
    rst $00
    ld [hl], c
    adc a
    add $bf
    ccf
    rst $00
    ld l, l
    add a
    rst $38
    adc h
    sub [hl]
    db $ed
    ld e, e
    db $ec
    cp e
    call z, $c17e
    ld [hl], d
    call $e837
    ei
    inc b
    ld sp, hl
    ld b, $f8
    rlca
    call c, $8027
    ld a, a
    ld c, $f3
    inc bc
    db $fc
    dec sp
    rst $38
    ld bc, $7fff
    jp $ffc2


    ld a, c
    sbc [hl]
    add sp, $1f
    rrca
    db $fc
    ld a, a
    db $fc
    add c
    rst $38
    dec a
    rst $38
    rst $38
    cp $f7
    ld a, $5a
    rst $20
    rst $18
    and b
    jp $07bc


    db $fd
    nop
    rst $38
    ld c, d
    cp l
    ld a, d
    rst $20
    ld a, b
    rst $00
    ldh a, [rIF]
    rrca
    ld a, [$fe65]
    ld [hl], e
    db $fc
    ld b, e
    cp h
    inc a
    jp $e41b


    xor a
    ld a, b
    ld [bc], a
    db $fd
    ld a, [hl+]
    push af
    ret nc

    rst $28
    inc a
    jp $8877


    cp a
    ld a, b

jr_05f_5bfe:
    dec a

Call_05f_5bff:
    rst $38
    push af
    ld [$00ce], sp
    pop af
    nop
    rra
    nop
    rst $30
    nop
    sub b
    rst $38
    db $e4
    sbc a
    ret z

    rlca
    rst $38
    ld b, $cf
    add b
    ret nz

    nop
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    sbc a
    ld h, b
    ld h, [hl]
    sbc c
    cp d
    db $ed
    dec h
    cp $2e
    rst $38
    db $eb
    rra
    db $ec
    rla
    ld a, h
    inc de
    sbc $21
    cpl
    ret nz

    cp a
    ret nz

    rst $30
    inc c
    rrca
    ldh a, [$8e]
    ld [hl], b
    rst $08
    jr nc, jr_05f_5bfe

    inc a
    adc [hl]
    pop af
    adc a
    ld [hl], b
    rst $30
    ld [$0af5], sp
    cp [hl]
    jp $3bdc


    rst $00
    jr c, @-$37

    ld a, [hl-]
    ei
    ld a, $d3
    ccf
    and a
    ld a, c
    rst $38
    ld bc, $25db
    ld a, [$df8d]
    add hl, bc
    ld l, e
    sbc h
    inc de
    ld c, $95
    dec bc
    ld d, a
    adc b
    ld l, e
    sbc h
    ld b, h
    rst $38
    ld a, h
    add e
    ld [hl], l
    adc a
    db $f4
    adc e
    dec b
    ld a, [$8d7a]
    ldh a, [rIF]
    ld [hl], l
    dec bc
    rst $38
    ld hl, $ff00
    jp $baff


    ld b, a
    rst $38
    ld bc, $4fb0
    xor a
    ld d, b
    rst $28

jr_05f_5c83:
    ld de, $13ef
    ld l, e
    sbc a
    dec a
    rst $00
    ldh a, [$8f]
    ld b, b
    cp a
    ld sp, hl
    add [hl]
    ret nc

    rst $28
    ld h, b
    cp a
    add sp, -$69
    cp [hl]
    pop bc
    cp $c9
    add h
    rst $38
    ld [hl-], a
    rst $18
    ld [hl], a
    rst $08
    ld a, h
    rst $08
    ld h, $d9
    ld l, a

jr_05f_5ca5:
    sub b
    cp $11
    ld [hl], d
    adc a
    db $fc
    ld c, a
    rst $20
    rra
    reti


    ld a, a
    and a
    rst $18
    ld c, $fb
    jr jr_05f_5ca5

    inc sp
    rst $18
    and e
    ld a, a
    jr c, jr_05f_5c83

    cp c
    cp $b5
    rst $18
    ld de, $02ff
    db $fd
    add c
    cp $e7
    ld e, $fd
    inc bc
    add e
    rst $38
    ldh a, [rIF]
    pop af
    ld e, $45
    cp $1f
    ldh [$7d], a
    ld [c], a
    ld sp, hl
    rlca
    ld [hl], e
    sbc h
    ld d, e
    cp h
    jr nc, @+$01

    ld a, b
    rst $38
    xor $1f
    rlc [hl]
    add a
    ld [$10ef], sp
    adc [hl]
    ld [hl], c
    add b
    rst $38
    ld [hl+], a
    db $fd
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, b
    cp a
    ld a, [$db07]
    inc h
    ccf
    ret nz

    daa
    ld hl, sp+$3a
    nop
    ldh [rP1], a
    sub b
    nop
    sub $18
    add d
    db $fc
    sub c
    ld c, $c3
    add b
    ld [hl], b
    ret nz

    cp a
    nop
    adc a
    inc b
    sbc a
    ld h, b
    rrca
    ld hl, sp-$76
    db $f4
    pop bc
    ld a, a
    xor a
    ret c

    ld a, [hl]
    add c
    ccf
    pop bc
    cpl
    ld a, [c]
    pop af
    ld e, $94
    ld a, a
    jr z, @+$01

    ld d, d
    db $fd
    inc d
    rst $38
    ret z

    ld a, a
    sbc $29
    rst $38
    dec b
    or d
    ld c, l
    or b
    ld e, a
    ldh [$1f], a
    cpl
    rst $18
    ld d, [hl]
    rst $38
    db $f4
    ld a, e
    db $76

jr_05f_5d41:
    cp e
    scf
    ei
    ld [hl-], a
    rst $38
    cp d
    ld a, a
    xor c
    ld [hl], a
    db $fc
    dec bc
    db $f4
    ld c, e
    ld [hl], h
    rst $18
    jr nc, jr_05f_5d41

    or b
    rst $08
    and c
    sbc $21
    rst $18
    cp h
    ld h, e
    or $09
    ld d, c
    rst $28
    ld a, [$18fd]
    rst $38
    ld [$ff1d], a
    rlca
    ret z

    ccf
    ld e, $fd
    rst $38
    dec a
    rst $18

jr_05f_5d6d:
    ld a, $f8
    ccf
    ld e, d
    rst $28
    db $d3
    inc a
    db $db
    dec [hl]
    cp h
    rlca
    db $fd
    ccf
    rst $38
    add hl, sp
    db $dd
    ld [hl], $bd
    adc $a5
    ld e, d
    rst $00
    ld hl, sp-$57
    rst $18
    ld h, e
    rst $18
    or h
    rst $18
    daa
    rst $38
    ld e, $ff
    rst $38
    rra
    db $fc
    sbc a
    ld a, [de]
    rst $38
    ld b, a
    db $fd
    ld l, l
    rst $18
    rrca
    rst $38
    ld a, [bc]
    rst $38
    dec hl
    rst $38
    ld a, [bc]
    rst $30
    and $19
    add $3f
    db $76
    rst $38
    inc c
    rst $38
    ld [$00ff], sp
    rst $38
    add hl, hl
    rst $38
    db $ed
    rst $38
    rst $00
    db $fc
    ld [c], a
    sbc a
    and a
    ld sp, hl
    or a
    ld hl, sp-$35
    cp [hl]
    jr nz, @+$01

    di
    dec c
    daa
    ret c

    db $10
    rst $28
    rst $08
    ccf
    ret


    ld a, $df
    ld a, b
    ld [hl], b
    rst $38
    db $fd
    rst $38
    db $eb
    db $fc
    rst $20
    jr c, jr_05f_5d6d

    ld a, e
    cp [hl]
    ld h, c
    push hl
    inc bc
    adc $07
    db $ed
    ld a, $fd
    ld c, $85
    ld a, [$dc23]
    adc a
    ldh a, [$b9]
    ld b, [hl]
    rla
    ldh [rHDMA3], a
    cp h
    ld h, b
    rst $18
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    ld a, e
    add h
    db $fc
    inc bc
    rlca
    rst $38
    ld c, [hl]
    di
    db $fd
    inc bc
    rst $28
    rla
    add a
    ld a, a
    rst $38
    rst $38
    ld h, b
    nop
    rra
    nop
    rrca
    inc b
    nop
    nop
    nop
    nop
    rlca
    nop
    db $76
    add b
    ret nc

    ld h, b
    db $f4
    ld [$00ef], sp
    di
    ld b, b
    rst $38
    nop
    ld [hl], l
    ld [$00ef], sp
    rst $30
    inc l
    rst $08
    or a
    cp $83
    rst $38
    ret nz

    rst $38
    ld bc, $efd2
    ld e, l
    rst $20
    ld bc, $a3fe
    rst $38
    pop af
    rst $38
    and a
    db $fc
    rlca
    cp $57
    ld hl, sp-$01
    inc b
    and e
    db $fd
    call nc, $ceff
    ld a, a
    db $f4
    ccf
    ld l, $d9
    ld c, $fd
    xor e
    db $fd
    dec l
    rst $18
    add hl, hl
    rst $18
    and c
    cp $2f
    pop de
    cp d
    call $8ff2
    ldh a, [$5f]
    ldh a, [rVBK]
    ld hl, sp-$31
    and h
    ei
    cp b
    ld e, a
    or h
    ld c, e
    ld h, [hl]
    rst $38
    ld l, $ff
    ld a, [$7abf]
    cp l
    ld [de], a
    db $ed
    ld d, [hl]
    db $fd
    ld a, l
    rst $08
    ld a, [hl]
    rst $08
    ld d, c
    rst $38
    or d
    db $ed
    ld [de], a
    rst $28
    ld [hl], c
    rst $08
    ld [hl], b
    rst $28
    sbc b
    rst $28
    ld e, b
    rst $28
    ld e, h
    rst $38
    call nc, $92ff
    rst $38
    ld a, [$167f]
    rst $38
    ld a, [hl]
    cp a
    ld b, a
    cp [hl]
    dec d
    rst $38
    ld [hl], l
    rst $38
    rst $30
    rst $28
    ld l, b
    rst $38
    ld h, b
    rst $38
    ld sp, $90ff
    rst $38
    ld d, b
    rst $28
    ld [c], a
    sbc a
    ld d, d
    db $fd
    sub [hl]
    db $fd
    ld [de], a
    rst $38
    cp h
    rst $38
    ld a, [hl-]
    rst $38
    ld [bc], a
    rst $38
    ld c, e
    rst $38
    ld b, b
    rst $38
    di
    dec a
    call c, $b36f
    adc $e0
    sbc a
    rst $38
    ei
    db $ec
    ccf
    or $39
    sub l

jr_05f_5ebb:
    ei
    ret nz

    cp a
    ld hl, sp+$07
    ld a, e
    add a
    rst $20
    ld hl, sp+$18
    rst $38
    rst $30
    ld [$03fe], sp
    jr c, jr_05f_5ebb

    add $39
    rst $20
    jr jr_05f_5ef0

    pop hl
    db $dd
    ldh a, [rNR34]
    pop hl
    rlca
    ld sp, hl
    sbc c
    ld h, [hl]
    ld sp, hl
    ld b, $e8
    rla
    ret c

    daa
    sub d
    ld a, l
    add b
    ld a, a
    rra
    ldh [$3f], a
    ret nz

    ld e, $e1
    nop
    rst $38
    add sp, $1f
    rra
    rst $38

jr_05f_5ef0:
    rst $18
    ccf
    ld a, e
    rst $38
    ld b, b
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    add a
    ld hl, sp+$40
    rst $38
    ret nz

    rst $38
    ld a, a
    rlca
    or $03

jr_05f_5f04:
    ld de, $0101
    nop
    rlca
    nop
    ret nz

    nop
    nop
    nop
    rrca
    nop
    cpl
    nop
    add hl, bc
    nop
    add b
    nop
    rst $20
    nop
    db $fc
    nop

jr_05f_5f1a:
    ld a, [$7104]
    adc $be
    jp $d06f


    or $0d
    ld e, d
    push af
    ld c, a
    ld hl, sp+$0e
    ld sp, hl
    db $e4
    ccf
    ld [hl], a
    sbc l
    rra
    db $ec
    db $db
    db $76
    rst $08
    jr nc, jr_05f_5f04

    jr nc, jr_05f_5f66

    pop af
    rst $18
    ld h, b
    rst $38
    jr nz, jr_05f_5f1a

    or e
    xor [hl]
    di
    cp a
    pop hl
    rst $38
    ret nz

    adc a
    db $f4
    pop bc
    cp $5b
    or $9d
    ld [c], a
    db $fd
    ld [bc], a
    xor $bf
    ld b, a
    cp [hl]
    ld l, a
    cp [hl]
    ld l, a
    sbc h
    ld h, d
    cp a
    ld b, c
    rst $38
    rla
    cp $4f
    ld a, [c]
    di
    and b
    ld a, e
    add b
    ld a, a
    or b
    rst $30
    ld sp, hl

jr_05f_5f66:
    rst $18
    ldh [$df], a
    add sp, -$15
    cp $e1
    cp $e9
    db $76
    rst $18
    ld [hl+], a
    rst $38
    and d
    ld [hl], h
    cp a
    ld l, l
    sbc [hl]
    ld h, a
    sbc $2d

Call_05f_5f7b:
    sbc $a0
    rst $38
    ld [de], a
    rst $38
    dec d
    cp $6f
    ret nc

    ld a, a
    sub b
    ccf
    ld hl, sp+$66
    rst $38
    rst $38
    ld a, [c]
    ld [hl], a
    ld sp, hl
    and $ff
    ld l, d
    rst $38
    call Call_05f_6cff
    rst $30
    xor $ff
    ld e, [hl]
    cp a
    call c, $fde7
    ld a, [c]
    ld [de], a
    db $fd
    ld b, c
    cp $80
    rst $38
    add c
    rst $38
    sub c
    rst $38
    add hl, sp
    rst $38
    ld b, b
    rst $38
    and $fb
    ld c, h
    di
    ret c

    ld [hl], a
    ld c, l
    or $f6
    rst $38
    sbc e
    rst $20
    dec sp
    rst $00
    ld h, l
    sbc a
    rst $28
    sbc b
    sbc $71
    ret z

    scf
    jp hl


    ld d, $ef
    ld [hl], b
    scf
    ld hl, sp-$02
    ld bc, $e35c
    or $8f
    db $fd
    ld c, $cd
    ld a, $3d
    cp $54
    cp a
    cp e
    ld b, [hl]
    cp e
    ld b, h
    dec sp
    add $33
    adc $01
    cp $83
    db $fc
    rlca
    ld hl, sp-$7e
    ld a, h
    or $09
    ld d, [hl]
    xor c
    db $fc
    inc bc
    ld sp, hl
    ld b, $b1
    adc $71
    cp $7d
    rst $38
    add hl, bc
    rst $38
    ldh a, [rIF]
    db $fd
    ld [bc], a
    ldh a, [rIF]
    ld a, $c1
    ld b, b
    cp a
    jr c, @-$0e

    db $fc
    ldh [$bc], a
    ld [hl], b
    cp $00
    jp Jump_000_2100


    nop
    ld sp, $6900
    sub b
    db $fc
    inc b
    ld c, $f0
    sbc a
    ld a, b
    ldh a, [rP1]
    rra
    nop
    inc c
    nop
    ccf
    nop
    rst $38
    add b
    sbc a
    ldh [$7f], a
    sbc b
    rrca
    ld hl, sp+$53
    db $ed
    and b
    rst $38
    ld a, e
    db $fc
    rst $28
    db $f4
    xor $30
    rst $38
    db $10
    db $fd
    nop
    add a
    ld [$e75e], sp
    reti


    rst $20
    dec c
    di
    or l
    ld b, d
    dec a
    jp nz, $fb0c

    dec c
    di
    ld a, a
    add a
    ei
    rlca
    jp hl


    ccf
    ld c, $f3
    ld e, a
    ld [c], a
    db $fd
    ld a, [c]
    ld e, l
    di
    adc l
    di
    rst $38
    nop
    rst $38
    nop
    ld l, a
    add b
    ld a, a
    ret nz

    dec l
    ret nz

    ld b, a
    ret nz

    sbc a
    ld b, b
    ld a, a
    call z, $fc17
    ld sp, hl
    rlca
    cpl
    rst $00
    sub d
    ld a, a
    ld h, c
    sbc a
    ccf
    ret nz

    dec sp
    ret nc

    db $ec
    inc de
    rra
    rst $38
    or [hl]
    db $ed
    rst $18
    nop
    cp a
    ld c, b
    ld [hl], a
    adc b
    ld l, a
    or b
    rst $38
    nop
    pop bc
    cp [hl]
    db $db
    ld [hl], a
    dec bc
    rst $30
    ld e, $e3
    add hl, de
    and $85
    ei
    sbc a
    di
    ei
    rlca
    ei
    rra
    xor b
    rst $38
    inc c
    rst $30
    db $ed
    di
    ld bc, $d3ff
    inc l
    ccf
    call nz, $40bf
    ccf
    push bc
    inc b
    rst $38
    add hl, de
    rst $38
    rst $20
    cp $33
    rst $28
    rst $28
    ldh a, [$0e]
    di
    add a
    ld hl, sp+$21
    rst $18
    rra
    ld [c], a
    ld e, $e1
    db $fd
    inc de
    sbc a
    ldh a, [$be]
    pop de
    di
    nop
    cp a
    ld h, b
    ld b, [hl]
    rst $38
    add hl, sp
    add $29
    rst $10
    ld a, [c]
    adc l
    ld a, h
    adc e
    ei
    ld b, $e3
    inc e
    ld b, [hl]
    ccf
    sbc l
    ld a, a
    ld [hl], l
    rst $38
    cp l
    ld a, [hl]

jr_05f_60d8:
    sbc h
    ld a, a
    pop hl
    ld e, $f7
    jr @-$0f

    jr nc, jr_05f_60d8

    inc a
    db $e3
    ccf
    add [hl]
    ld a, a
    ld b, a
    rst $38
    ld a, [de]
    rst $38
    ld sp, $70df
    rst $08
    db $fc
    inc bc
    or $01
    ld d, $e9
    call nz, $0cff
    rst $38
    ld l, c
    sbc [hl]
    ld l, a
    sub b
    ld c, $f1
    adc d
    ld [hl], l
    ret nz

    jr c, jr_05f_611a

    inc c
    dec c
    ld [bc], a
    ld c, $03
    ld bc, $9901
    nop
    xor h
    db $10
    sbc a
    nop
    rra
    nop
    ld e, $00
    rlc b
    ld [hl], a
    dec e
    and d
    ld e, a

jr_05f_611a:
    ld [hl], h
    dec bc
    ld a, $10
    adc l
    ld [bc], a
    ldh [$7f], a
    ld [c], a
    rra
    di
    inc l
    ld a, c
    add a
    cp a
    rst $20
    ld c, e
    rst $30
    adc $31
    rst $28
    db $10
    cpl
    db $10
    xor l
    db $10
    ld [$d0ff], sp
    rst $38
    sub a
    ld hl, sp+$7f
    add d
    ld a, $01
    rst $38
    ld bc, $00fc
    db $e3
    nop
    pop hl
    nop
    ldh [rP1], a
    inc [hl]
    inc bc
    jr nz, jr_05f_614f

    ld sp, $0303

jr_05f_614f:
    inc bc
    ld bc, $0303
    inc bc
    ld hl, $0303
    inc bc
    inc bc
    inc bc
    or c
    inc bc
    sbc a
    inc bc
    sbc l
    inc bc
    sbc l
    inc bc
    sub l
    inc bc
    sbc l
    inc bc
    pop bc
    inc bc
    pop bc
    inc bc
    add c
    inc bc
    sbc l
    inc bc
    adc l
    inc bc
    add l
    inc bc
    sbc l
    inc bc
    adc h
    inc bc
    call z, Call_000_0003
    inc bc
    ld de, $1003
    inc bc
    jr nz, jr_05f_6183

    db $fc
    inc bc
    db $fc

jr_05f_6183:
    ld b, e
    ret z

    rrc h
    rlca
    ld hl, sp+$03
    ld hl, sp+$07
    jr jr_05f_61a1

    nop

jr_05f_618f:
    inc bc
    ld hl, sp-$11
    ld hl, sp-$3d
    ldh a, [$e1]
    or h
    scf
    cp [hl]
    daa
    db $fc
    ld b, a
    ld a, h
    rlca
    ld a, [$788b]

jr_05f_61a1:
    ld b, e
    ld l, d
    ld b, e
    ld [bc], a
    ld [bc], a
    nop
    nop
    add l
    add h
    inc l
    jr nz, @+$46

    ld b, b
    xor b
    xor b
    ld d, b
    xor a
    ld hl, sp+$3f
    ld d, e
    cp $7b
    add [hl]
    dec d
    rst $38
    xor a
    ld a, a
    rst $28
    rst $38
    and h
    rst $38
    ld sp, hl
    add [hl]
    ld d, a
    cp d
    sbc e
    rst $38
    ld [hl], c
    xor $1d
    and $e6
    rra
    ld h, a
    add hl, sp
    db $fc
    jr nz, jr_05f_61ef

    ld hl, sp+$57
    cp b
    rst $38
    ld bc, $609b
    or a
    jp z, $3ec5

    rst $08
    inc a
    ei
    inc c
    rst $20
    jr jr_05f_618f

    di
    pop de
    rst $38
    push de
    rst $28
    ld a, e
    add a
    ld [hl], d
    adc a
    rst $00
    jr c, jr_05f_61f4

jr_05f_61ef:
    ld a, [$9b65]
    db $fd
    inc bc

jr_05f_61f4:
    rst $38
    inc bc
    sbc $a7
    rla
    rst $28
    call c, Call_05f_5bff
    cp a
    srl l
    ccf
    nop
    jr jr_05f_6204

jr_05f_6204:
    stop
    add [hl]
    nop
    ld b, e
    add b
    pop bc
    jr nz, jr_05f_621d

    nop
    ld sp, hl
    nop
    cp a
    ld b, b
    halt
    ld sp, hl
    ld b, $67
    sbc [hl]
    ld c, h
    add e
    cp [hl]
    pop bc
    rst $18

jr_05f_621d:
    jr nz, @-$2d

    ld l, $f9
    ld b, $f9
    add [hl]
    sub $3f
    sbc a
    ld l, a
    pop bc
    ld a, $f3
    inc c
    rst $38
    nop
    cp $00
    rst $00
    nop

jr_05f_6232:
    cp $00
    ld h, a
    sbc b
    push af
    jr jr_05f_6232

    inc c
    ei
    inc c
    xor a
    rra
    sbc a
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
    rst $38
    rst $38
    nop
    db $fc
    ccf
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    ld bc, $81ff
    rst $38
    ld b, b
    rst $38
    ld b, b
    cp a
    ret nz

    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    pop bc
    cp a
    ld [hl+], a
    rst $18
    ld e, l
    cp a
    ld h, b
    sbc a
    db $f4
    cp a
    or c
    ld e, a
    jp nc, $f53f

    rra
    sub $2d
    ld h, h
    sbc e
    call nc, $ee2b
    ld de, $14eb
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
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_05f_62d9

    pop hl
    ld hl, $f0f0
    ld d, a
    ld b, a
    scf
    scf
    ld c, l
    dec b
    ld c, $fb
    adc l
    ld [hl], e

jr_05f_62b4:
    ret nz

    ccf
    add b
    ld a, a
    reti


    ld h, $88
    rst $38
    ld a, h
    rst $18
    xor $1d
    rst $28
    inc e
    rst $18
    jr c, jr_05f_62b4

    ld sp, $71be
    db $ed
    ld [hl-], a
    ld a, h
    db $d3
    xor c
    cp $7b
    inc h
    ld l, l
    ld [bc], a
    db $fd
    add [hl]
    ld e, b
    rst $30
    ldh [$3f], a
    ret z

jr_05f_62d9:
    scf
    ret nc

    cpl
    jp z, $ff35

    nop
    ld a, a
    ret nz

    ld d, b
    rst $38
    add e
    rst $38
    rst $38
    cp $a7
    db $fc
    rst $28
    db $fc
    sbc b
    ld a, a
    ld l, b
    sbc a
    sbc h
    ld [hl], e
    add c
    cp $f8
    rst $38
    pop af
    rst $38
    jp nz, $e2ff

    rst $38
    add l
    cp $64
    rst $38
    add b
    nop
    ld bc, $4c00
    inc bc
    ld l, a

jr_05f_6307:
    jr nc, jr_05f_6307

    ld bc, $0f91
    ld [$ee0f], sp
    ld [$04a3], sp
    inc b
    inc bc
    rst $18
    nop
    ccf
    nop
    rst $38
    nop
    ld e, a
    add b
    dec a
    jp nz, $40ff

    dec a
    jp nc, Jump_05f_4cb3

    ld e, e
    db $fc
    ld [hl], l
    adc [hl]
    ld a, c
    sub [hl]
    sbc l
    ld [bc], a
    push bc
    ld [bc], a
    ld h, l
    ld [bc], a
    rst $38
    nop
    ld a, a
    ld [$7ecd], sp
    xor d
    ldh a, [rIF]
    ldh a, [$aa]
    push af
    call $b938
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff00
    rst $38
    dec b
    ld b, b
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    ld h, l
    rst $38
    dec d
    rst $38
    ld b, $ff
    nop
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld de, $01ff
    rst $38
    ld [hl+], a
    rst $38
    or a
    rst $38
    or l
    sbc $f5
    ld l, d
    sbc h
    db $eb
    ld a, a
    add d
    cp a
    ld b, b
    cp a
    ld b, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, b
    ld a, l
    sbc e
    dec de
    cpl
    add hl, hl
    adc $ce
    ld b, b
    ld b, b
    db $e3
    db $fd
    ld a, c
    cp $4d
    ld a, [c]
    cp c
    ld b, a
    ld l, c
    sbc [hl]
    ld c, a
    cp h
    ld a, [c]
    sbc l
    rst $38
    pop bc
    rst $38
    add hl, bc
    pop af
    rrca
    cp d
    push bc
    sub d

jr_05f_63b7:
    ld l, l
    ld a, [c]
    dec c
    db $fc
    inc bc
    ld hl, sp+$0f
    add sp, $1f
    di
    inc c
    inc bc
    db $fc
    inc e
    db $e3
    add c
    cp $ff
    nop
    jr z, @+$01

    ccf
    pop af
    cp $03
    pop af
    rrca
    rrca
    rst $38
    add e
    ld a, a
    ldh [$1f], a
    or $0f
    ld a, [c]
    rrca
    sub c
    ld a, [hl]
    db $10
    rst $38
    db $10
    rst $38
    pop hl
    rra
    ei
    inc b
    jr nc, jr_05f_63b7

    ldh [$1f], a
    ld b, b
    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    ld l, $41
    sbc a
    ld h, b
    ld e, l
    and $97
    ld h, b
    pop de
    jr nz, jr_05f_6468

    or b
    ei
    add h
    inc a
    rlca
    db $eb
    rra
    db $ec
    inc de
    ld a, h
    inc bc
    cp a
    ld [bc], a
    adc h
    inc bc
    pop hl
    rst $38
    ret nz

    ccf
    srl a
    ld e, a
    cp c
    and $1d
    cp $29
    rst $18
    ld l, b
    rst $28
    db $10
    rst $38
    nop
    ld sp, hl
    nop
    inc e
    nop
    di
    inc e
    ld a, [$fa04]
    inc b
    ld [hl], e
    inc c
    pop af
    rrca
    rst $18
    add b
    sbc $00
    cp $08
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    db $fc
    nop
    db $fc
    db $ec
    inc e
    sub h
    db $ec
    add h
    db $fc
    ld e, b
    db $fc
    dec de
    db $fc
    dec de
    db $fc
    ld a, [de]
    db $fc

jr_05f_6448:
    dec de
    db $fc
    jr jr_05f_6448

    dec bc
    db $fc
    dec de
    db $fc
    call nz, $b0fc
    db $fc

jr_05f_6454:
    ld h, b
    db $fc

jr_05f_6456:
    nop
    db $fc
    db $10
    db $ec
    db $10
    db $ec
    db $10
    db $ec
    db $10
    db $ec
    db $10
    db $ec
    db $10
    db $ec
    db $10
    db $ec
    jr c, jr_05f_6454

jr_05f_6468:
    jr nc, jr_05f_6456

    sub b
    add sp, $58
    ldh [$38], a
    ret nz

    cp b
    ret nz

    ret c

    ld h, b
    ld hl, sp+$40
    cp b
    ld b, b
    cp b
    ret nz

    cp b
    ld b, b
    cp b
    ld b, b
    ld hl, sp+$00
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    ld b, $fc
    nop
    ld hl, sp+$05
    ld sp, hl
    ld b, $f8
    rlca
    ei
    ld bc, $01f9
    ld sp, hl
    inc b
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp-$01
    ld hl, sp+$3f

Call_05f_649b:
    inc a
    rlca
    rlca
    ld b, b
    nop
    ld [hl], d
    rst $28
    pop af
    ld c, a
    db $fd
    rst $08
    inc c
    rst $38
    inc d
    rst $28
    ld h, b
    rst $18
    jp c, $f1fd

    rst $08
    cp c
    rst $00
    db $db
    rst $20
    inc hl
    rst $38
    ld a, a
    or e
    ld h, a
    sbc b
    ld h, e
    sbc [hl]
    inc bc
    db $fc
    ld bc, $f9fe
    rrca
    rst $28
    ld [hl-], a
    ld c, a
    ldh a, [$f3]
    db $fc
    ld a, a
    rst $38
    ret nz

    rst $38
    rst $38
    ret nz

    rst $08
    ld hl, sp-$10
    rst $38
    db $fc
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    ld h, $df
    ld a, [hl-]

jr_05f_64db:
    rst $00
    ld a, $cf
    ld hl, $74df
    adc e
    rrca
    ld hl, sp-$1e
    dec e
    dec e
    rst $38
    jr nz, @+$01

    rlca
    db $fc
    nop
    rst $38
    nop
    rst $38
    rst $28
    db $10
    rst $00
    jr c, jr_05f_64db

    add hl, de
    ld [c], a
    dec e
    adc $31
    call $fd30
    ld b, $32
    rst $18
    push hl
    ld hl, sp-$39
    ld hl, sp+$47
    ld hl, sp-$54
    dec de
    ld l, b
    or a
    ret nc

    ccf
    pop af
    ld c, $3e
    rst $10
    or l
    rst $38
    ld a, h
    rst $38
    sbc l
    or $be
    ld h, b
    cp [hl]
    ld b, d
    rst $38
    nop
    adc $21
    db $76
    ld hl, $01f6
    ld l, [hl]
    ld de, $37f8
    sub $21
    call z, $c177
    ccf
    ld d, e
    ccf
    sub $3f
    ld d, c
    rst $38
    db $fd
    rlca
    ld [c], a
    ld bc, $03e4
    ld a, [c]
    rrca
    ld b, a
    rst $38
    db $e4
    rst $38
    xor $01
    ld l, a
    nop
    cp $00
    cp l
    ld b, b
    di
    nop
    rst $20
    inc b
    rst $08
    nop
    rst $30
    ld [$0ffa], sp
    db $fc
    rrca
    pop af
    ld c, $84
    jr @+$01

    ld [$cf38], sp
    db $f4
    rrca
    rst $20
    rra
    and d
    rra
    call nz, $677f
    sbc b
    or e
    adc h
    or a
    ld [$88f7], sp
    rst $20
    sbc h
    rst $20
    cp h
    rst $28
    nop
    rst $38
    ld [bc], a
    call Call_05f_49ba
    cp a
    ld a, d
    adc l
    ld a, a
    adc l
    ld [hl], a
    adc b
    rst $30
    adc b
    ld h, l
    sbc a
    rst $30
    adc a
    or $cf
    cp a
    rst $18
    rst $28
    rst $38
    cp $ff
    sbc $bf
    ld e, [hl]
    or a
    ld l, [hl]
    sub c
    ld l, $d9
    ld h, $dd
    and a
    ld a, b
    scf
    ret z

    ld a, a
    add h
    ccf
    call nz, $917f
    sub d
    rst $38
    add sp, -$01
    push af
    rst $38
    add $79
    ld h, l
    rst $38
    nop
    rst $38
    ld [de], a
    db $fd
    inc c
    rst $38
    ld [c], a
    dec e
    xor a
    ld hl, sp-$17
    ld hl, sp-$05
    ldh [$ea], a
    pop af
    db $d3
    ldh [$93], a
    ld h, b
    adc a
    ld a, b
    db $e3
    ccf
    and a
    ld a, a
    and a
    ld a, a
    sbc b
    ld a, a
    cp a
    push bc
    rst $08
    ldh a, [$be]
    rst $38
    db $e4
    ccf
    rst $30
    ld e, [hl]
    dec d
    rst $38
    ld bc, $38ff
    rst $38
    ld a, [c]
    rrca
    ld hl, sp+$07
    ld bc, $c4fe
    rst $38
    inc hl
    rst $38
    ld a, e
    add a
    ei
    rlca
    ei
    rlca
    ld a, e
    add a
    ld c, a
    cp a
    pop hl
    rra
    jp nc, Jump_000_002d

    rst $38
    xor a
    ld e, b
    ei
    db $10
    ld l, [hl]
    pop de
    inc l
    db $d3
    ld h, a
    sbc b
    and [hl]
    ld e, b
    or [hl]
    ld a, c
    rst $38
    ldh a, [$7f]
    db $f4
    or a
    ld a, b
    rst $10
    jr c, jr_05f_6672

    cp h
    ld d, [hl]
    cp c
    ld d, $fd
    add a
    ld a, h
    add e
    db $fd
    sbc a
    ld a, c
    db $db
    dec a
    ld h, a
    sbc b
    rst $20
    jr jr_05f_663c

    inc e
    ld l, l
    db $10
    rst $28
    inc d
    ld d, e
    cp a
    cp $8f
    ldh [rIF], a
    ld hl, sp+$0f
    ld a, e
    adc a
    ld l, $f0
    ld a, a
    add c
    ld a, a
    add b
    pop af
    sbc [hl]
    pop hl
    ld a, $d8
    daa
    ld hl, sp-$79
    ld sp, hl
    ld b, $e0
    rra
    ei
    rlca

jr_05f_663c:
    rst $20
    add hl, de
    sbc l
    ld h, b
    ld l, a
    db $10
    ld l, a
    db $10
    cp $11
    sbc l
    ld h, d
    rst $38
    nop
    add a
    ld b, b
    xor l
    ld e, a
    or e
    cp $c2
    rst $38
    nop
    ret nz

    rra
    rst $18
    rra
    rst $18
    sbc a
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    sbc a
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rra
    rst $18
    rra
    rst $18
    ld b, b
    ret nz

    add [hl]
    rst $38
    ld [hl], b
    adc a

jr_05f_6672:
    adc d
    rst $38
    add b
    rst $38
    ld e, [hl]
    ei
    ld a, h
    add e
    ld l, [hl]
    add c
    rst $28
    add b
    ld a, [hl]
    push bc
    sbc b
    rst $28
    db $fd
    ld e, a
    rst $38
    ld b, e
    cp a
    db $eb
    ld [hl+], a
    db $dd
    ld c, a
    ld hl, sp-$19
    sbc b
    rst $20
    ld a, [de]
    push af
    sbc e
    ldh [rIE], a
    ld a, c
    rst $38
    inc a
    rst $08
    db $fd
    ld b, d
    xor l
    ld [hl], d
    jr nc, @+$01

    add b
    rst $38
    inc h

jr_05f_66a1:
    rst $38
    call z, $f5ff
    rst $38
    pop bc
    rst $38
    cp e
    rst $38
    or e
    rst $28
    ld de, $e3fe
    rst $38
    ld [hl], a
    adc b
    ld l, l
    add [hl]
    ld h, c
    add [hl]
    ld l, b
    add a
    pop af
    ld c, $ef
    db $10
    rst $38
    nop
    dec e
    ldh [$a3], a
    call c, $ccbb
    cp d
    call $ff01
    db $d3
    cpl
    cpl
    ldh a, [rBCPD]
    cp $9d
    rst $20
    jr nc, jr_05f_66a1

    nop
    rst $38
    dec h
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    rlca
    ld hl, sp-$0b
    cp $27
    rst $38
    nop
    rst $38
    ld c, $ff
    rlca
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    call $b7ff
    ld b, e
    ld a, [$db07]
    ld [hl], a
    ld a, e
    and h
    ldh a, [rIF]
    cp $07
    rst $38
    inc b
    rst $18
    cp h
    ld a, a
    db $ec
    rst $38
    call nz, $ef1c
    rla
    rst $28
    push af
    rrca
    inc de
    db $fc
    add sp, $5f
    or [hl]
    ld c, e
    rra
    ld sp, hl
    or a
    db $ec
    ld bc, $ddff
    inc hl
    rst $38
    nop
    rst $18
    jr nz, @+$4c

    rst $38
    ld a, e
    cp $80
    rst $38
    nop
    rst $38
    add e
    db $fc
    add a
    ld hl, sp-$80
    ld a, a
    add c
    ld a, a
    ld h, e
    sbc [hl]
    cp a
    ret nz

    ld a, a
    add b
    ld hl, sp+$07
    ld l, e
    cp $27
    db $fc
    ld b, a
    db $fc
    rst $38
    db $fc
    db $eb

Jump_05f_673d:
    ld a, l
    ld a, [hl]
    rst $38
    ld a, [$f705]
    inc c
    ld a, [hl]
    adc e
    ld h, e
    sbc h
    cp h
    ld e, a
    ld [hl], a
    adc l
    ld e, e
    adc h
    or $4f
    ld [bc], a
    inc bc
    ld a, [$fafb]
    ei
    ld hl, sp-$05
    ld a, [$fafb]
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ld sp, hl
    ei
    ld hl, sp-$05
    ld hl, sp-$05
    ld a, [$02fb]
    inc bc
    rrca
    ld a, a
    rra
    rst $38
    ld [hl], b
    cp a
    ret c

    scf
    ld [hl], h
    cp e
    pop de
    ccf
    db $fc
    dec sp
    sub $bf
    reti


    cp a
    sbc $bf
    ld d, $fd

jr_05f_6782:
    sub $f9
    rst $38
    jr jr_05f_6782

    inc a
    sbc e
    db $fd
    inc e
    rst $38
    cp a
    ld a, a
    ret nz

    ld a, a
    ld d, c
    rst $38
    rlca
    db $fd
    ld [hl+], a
    db $fd
    ld a, [hl+]
    rst $38
    ldh [$3f], a
    ld [hl], b
    adc a
    dec bc
    db $fc
    ld h, c
    cp $22
    rst $38
    pop bc
    rst $38
    ld bc, $16ff
    rst $38
    db $e3
    rst $38
    db $ec
    rst $30
    or b
    rst $38
    ld sp, $faff
    rst $38
    db $eb
    ld a, a
    cp a
    ld c, a
    ld a, [hl]
    add a
    ld a, b
    add a
    cp [hl]
    ld b, a
    ld sp, hl
    ld b, $4b
    ld [hl], c
    sbc d
    ld h, c
    rst $30
    jp hl


    cp $e5
    cp a
    rst $38
    jp $50bf


    rst $38
    pop hl
    ld a, $91
    cp $00
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    inc bc
    db $fc
    nop
    rst $38
    ld a, [de]
    rst $38
    ld b, d
    rst $38
    ld [c], a
    rra
    inc bc
    db $fc
    nop
    rst $38
    cp b
    rst $38
    inc c
    rst $38
    sbc $fd
    cp $fd
    rst $38
    db $fc
    db $fc
    rst $38
    ld [c], a
    rst $38
    and b
    rst $38
    db $fc
    inc bc
    ld sp, hl
    rra
    rlca
    rst $38
    rst $08
    inc sp
    ld l, d
    cp a
    sub e
    ld a, h
    ld a, [c]
    rra
    db $f4
    rst $38
    ld e, $fb
    sbc [hl]
    ld sp, hl
    ld [hl], $ff
    rst $38
    ld a, a
    rra
    rst $38
    inc sp
    rst $38
    dec e
    ld a, [$fc5b]
    dec a
    jp nc, Jump_05f_43be

    or h
    ld l, e
    add hl, sp
    rst $00
    cpl
    rst $38
    ld e, a
    rst $38
    ld e, $ff
    ld e, e
    cp [hl]
    or a
    ld a, b
    ld e, h
    rst $38
    jp c, $febf

    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    cp $ff
    ld d, d
    rst $38
    adc [hl]
    ld a, c
    di
    dec a
    jp z, $cf3d

    add hl, sp
    rrca
    ld sp, hl
    cp [hl]
    db $fd
    ld c, a
    pop af
    db $fc
    rrca
    ld [hl-], a
    db $dd
    ld [bc], a
    rst $38
    jr nz, @+$01

    add l
    rst $38
    ld e, e
    rst $30
    call z, $8e73
    pop af
    ld c, [hl]
    di
    sbc e
    ld a, a
    sbc [hl]
    ld a, a
    cp a
    ld a, [hl]
    cp a
    ld a, [hl]
    cp h
    ld a, a
    ld a, h
    rst $38
    ld e, [hl]
    rst $38
    xor $9f
    ld sp, $bddf
    add $e9
    ld [hl], a
    ld e, a
    rst $20
    ld e, $e7
    ld c, $f3
    rrca
    ei
    ld b, $fb
    cp a
    rst $38
    inc bc
    rst $38
    dec hl
    rst $38
    add d
    rst $38
    ld a, l
    rst $20
    ld e, e
    rst $20
    ld e, e
    rst $28
    ccf
    rst $38
    ld [hl], a
    rst $38
    ei
    rst $38
    ld a, d
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    cp a
    rst $38
    db $dd
    rst $38
    ld h, d
    rst $38
    dec sp
    rst $38
    call c, $97ff
    rst $28
    jr @+$01

    ld [hl], c
    rst $38
    xor c
    ld a, a
    jp nc, Jump_000_12ff

    rst $38
    add e
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    and [hl]
    rst $38
    add a
    rst $38
    inc e
    rst $30
    add d
    ld a, a
    add c
    ld a, a
    ld h, b
    cp a
    ld [hl], h
    cp a
    adc [hl]
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld b, [hl]
    rst $38
    cp d
    rst $00
    xor $f7
    add d
    rst $38
    ld e, b
    rst $38
    ld hl, sp+$2f
    ld hl, sp+$0f
    ld [bc], a
    rst $38
    ld sp, $1eff
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld l, h
    rst $38
    dec d
    rst $38
    rra
    rst $38
    xor a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    inc de
    rst $38
    or h
    ld a, a
    rlca
    rst $38
    sub e
    rst $28
    ld [hl], a
    adc a
    cp $83
    ld c, $ff
    db $fd
    rst $38
    ld sp, hl
    cp $f1
    cp $31
    rst $38
    jp hl


    ld [hl], a
    nop
    rst $38
    ld b, h
    rst $38
    ld bc, $28ff
    rst $30
    pop bc
    rst $38
    ld e, [hl]
    rst $38
    or [hl]
    rst $18
    rlca
    rst $38
    push bc
    rst $38
    db $e4
    rra
    ldh [$1f], a
    rst $20
    ld a, [de]
    and h
    db $db
    xor a
    rst $38
    rst $38
    rst $38
    or [hl]
    db $fd
    ld d, d
    rst $38
    db $f4
    ld a, a
    sbc b
    ld a, a
    inc d
    rst $38
    jr nc, @+$01

    sbc $ff
    cp b
    rst $00
    cp b
    rst $08
    ld e, l
    rst $28
    add $ff
    di
    rst $38
    cp d
    rst $10
    ld a, $e7
    rst $38
    inc bc
    cp $07
    ld e, [hl]
    rst $38
    ld a, a
    rst $00
    ld [hl], b
    adc a
    ld bc, $85ff
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, l
    add a
    db $fd
    add a
    db $fc
    rlca
    cp d
    rst $20
    db $db
    db $ec
    ld b, [hl]
    rst $38
    db $f4
    res 3, h
    rst $28
    inc hl
    rst $38
    adc [hl]
    rst $38
    cp h
    rst $38
    sub $bf
    and l
    rst $18
    and $3f
    di
    cp a
    push af
    rst $38
    ld a, e
    db $fc
    ld a, d
    rst $38
    ld [hl], h
    rst $38
    ld sp, hl
    cp $05
    rst $38
    ld [hl], b
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    push af
    rra
    rst $38
    rra
    ld a, a
    sbc a
    ld h, b
    sbc a
    sbc d
    rst $38
    ld l, d
    rst $38
    ld h, b
    rst $38
    cp h
    rst $38
    dec a
    rst $38
    db $fc
    rst $38
    ld a, l
    rst $38
    dec e
    rst $38
    dec h
    rst $38
    cp b
    rst $38
    ld sp, hl
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    and e
    rst $38
    add c
    rst $38
    and b
    rst $38
    or d
    rst $38
    sbc [hl]
    rst $38
    ld l, c
    cp $87
    cp $43
    db $fc
    ldh a, [rIE]
    ld [hl], c
    sbc $30
    rst $38
    ld b, $ff
    inc h
    rst $38
    add b
    rst $38
    dec b
    cp $c3
    db $fc
    cp a
    cp $df
    cp [hl]
    ld h, a
    sbc a
    scf
    rst $38
    dec de
    rst $38
    and e
    rst $38
    dec b
    rst $38
    ld [hl], b
    rst $38
    add l
    rst $38
    pop hl
    ld a, a
    sub c
    rst $38
    ld [$feff], sp
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    ld hl, sp+$07
    jr nz, @+$01

    add sp, -$01
    ld a, [$ffff]
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    ld c, [hl]
    rst $38
    adc a
    rst $30
    ld [bc], a
    rst $38
    ld [hl], c
    adc a
    add d
    rst $38
    ld a, a
    cp $9d
    ld a, [hl]
    db $dd
    ccf
    sbc d
    ld a, a
    ld d, d
    rst $38
    ld d, e
    rst $38
    jp Jump_05f_4ffd


    ldh a, [$3f]
    ldh a, [$8d]
    ld a, [c]
    daa
    ret c

    rst $30
    ld [$cd72], sp
    ld a, c
    rst $30
    ld [hl], c
    xor $d1
    cp $ef
    inc e
    rst $20
    ld a, $ad
    ld a, [$ffe6]
    add l
    cp $67
    db $fc
    or e
    ld a, h
    ld c, [hl]
    db $fd
    ld [bc], a
    rst $38
    ld b, l
    rst $38
    adc e
    cp $9a
    rst $38
    sub a
    db $fc
    sbc $fd
    adc a
    ld hl, sp-$6a
    jp hl


    jr @+$01

    inc b
    rst $38
    ld c, d
    cp a
    srl [hl]
    adc e
    db $f4
    ld c, l
    cp [hl]
    ld c, b

jr_05f_6a41:
    cp a
    ld d, c
    rst $38
    cp a
    ld hl, sp+$3f
    pop bc
    ld a, [hl]
    pop bc
    dec d
    xor $8d
    cp $99
    cp $17
    ld hl, sp+$0d
    ld a, [$efb9]
    ld a, b
    rst $20
    inc bc
    db $fc
    dec c
    or $75
    cp $a5
    cp $fc
    ld [hl], a
    add hl, sp
    rst $20
    xor a
    db $f4
    ld hl, $19fe
    rst $38
    ld hl, $bffe
    ld [$c8b7], a
    jr c, jr_05f_6a41

    scf
    rst $28
    ld h, c
    cp a
    or [hl]
    jp hl


    rst $18
    ldh [$67], a
    cp b
    ld d, e
    cp $1d
    ld [c], a
    sbc l
    ld [c], a
    dec bc
    db $f4
    ccf
    ldh a, [$1f]
    ld hl, sp-$05
    db $fc
    ld c, c
    cp $a4
    ei
    ld [c], a
    rst $38
    and c
    rst $38
    or c
    rst $08
    ld h, a
    ei
    ld b, l
    ei
    ret nz

    rst $38
    inc bc
    cp $45
    cp $4c
    or e
    sbc d
    rst $20
    ld e, $e7
    inc bc
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    set 7, a
    ld hl, sp-$09
    db $db
    ccf
    rst $18
    dec a
    jp nz, Jump_000_033f

    db $fd
    and d
    rst $18
    and $19
    rst $18
    ld h, b
    cp a
    ld b, [hl]
    ld sp, hl
    rlca
    or [hl]
    db $db
    rst $38
    add c
    ccf
    pop af
    ccf
    ldh a, [$be]
    pop bc
    dec b
    ld a, [$f887]
    adc a
    ldh a, [rTIMA]
    ld a, [$ff00]
    adc h
    di
    add h
    ei
    add sp, -$01
    ldh a, [rIE]
    add c
    cp $e3
    db $fc
    rrca
    ld hl, sp+$13
    db $fc
    rst $20
    db $fc
    adc l
    cp $8b
    cp $8a
    push af
    and b
    rst $38
    or c
    rst $38
    and e
    ld e, h
    rst $30
    ld [$06b9], sp
    call $fe02
    ld bc, $1bf4
    ld hl, sp+$07
    ld a, c
    add a
    ei
    rlca
    ld a, [$2707]
    ld e, $cd
    ld [hl], $b7
    db $ec
    inc sp
    call z, $f8cd
    sub a
    ld l, b
    sub a
    ld l, c
    or b
    ld c, a
    cp c
    rst $08
    scf
    xor $1e
    xor $9d
    ld l, [hl]
    cp c
    ld a, [hl]
    xor e
    ld e, h
    ld l, l
    sbc a
    jp hl


    ld e, $cf
    ld [hl-], a
    xor $30
    and [hl]
    ld e, [hl]
    ld l, [hl]
    ret nc

    ld l, h
    ret nc

    ld a, h
    ret nz

    db $ec
    ret nc

    cp $d1
    rst $08
    or h
    cp h
    ldh a, [$bd]
    ret nz

    sbc $01
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $00
    cp $00
    ld a, [c]
    rra
    db $ed
    ld e, e
    db $ec
    inc de
    ld l, a
    inc de
    ld a, a
    inc bc
    db $fd
    inc bc
    db $fc
    ld d, e
    sbc [hl]
    ld [hl], l
    ld a, [$7997]
    sub a
    add a
    db $fd
    call $d978
    ldh a, [$b3]
    ldh [rIE], a
    ldh a, [$5f]
    add sp, $37
    add sp, $31
    adc $b3
    ld l, h
    ld e, d
    inc h
    jp c, $9a24

    ld h, [hl]
    ld a, d
    call z, $dce2
    rst $00
    ld hl, sp+$73
    call z, Call_05f_46bb
    adc h
    ld [hl], e
    push af
    ld a, [bc]
    rst $38
    inc b

jr_05f_6b80:
    or a
    nop
    db $eb
    db $10
    rst $38
    db $10
    rst $38
    ld d, b
    rst $38
    ld b, b
    rst $38
    jr nz, jr_05f_6b80

    inc c
    db $fd
    inc bc
    ld e, a
    add b
    cp e
    call nz, $fed2
    ld h, a
    cp $db
    ccf
    ld [$fa54], a
    inc b
    ld a, [$7a04]
    add h
    rlca
    db $fc
    ld h, a
    cp h
    ld h, a
    call c, $fe2d
    sbc c
    or $d1
    ld l, $d6
    add hl, sp
    rst $10
    jr c, jr_05f_6c06

    cp h
    add a
    ld hl, sp-$4d
    ld e, h
    or e
    db $fd
    xor b
    ld a, a
    and [hl]
    ld a, e
    call nz, $d67f
    ld l, l
    sub h
    ld l, e
    ld l, $f5
    adc [hl]
    pop af
    adc a
    ldh a, [$93]
    ld a, [hl]
    db $eb
    inc a
    ld e, l
    ld a, $ef
    rra
    rst $20
    rra
    ld b, e
    rst $38
    ld bc, $31ff
    rst $08
    ldh a, [rIF]
    ldh a, [rIF]
    ret nz

    ccf
    push bc
    ld a, [hl-]
    cp l
    ld b, d
    db $db
    ld h, h
    cp a
    ld b, b
    ld a, [hl-]
    push bc
    ld e, b
    and a
    ld [hl], d
    rst $08
    rrca
    ldh a, [rP1]
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

jr_05f_6c06:
    ld d, $17
    jr jr_05f_6c23

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05f_6c33

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05f_6c43

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05f_6c53

    ld [hl-], a

jr_05f_6c23:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05f_6c63

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_05f_6c33:
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

jr_05f_6c43:
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

jr_05f_6c53:
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

jr_05f_6c63:
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
    ld [$fa09], sp
    ld a, [$0b0a]
    inc c

Call_05f_6cff:
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    ld a, [$18fa]
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld bc, $0101
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0601
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
    ld bc, $0101
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0c0d], sp
    ld a, [bc]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add h
    nop
    call z, $dc00
    nop
    db $fc
    add h
    sbc $b4
    cp $00
    ld a, e
    nop
    ei
    ld bc, $00fb
    ld a, [$e200]
    nop
    ld c, [hl]
    nop
    db $dd
    inc bc
    push bc
    inc bc
    rst $00
    ld [bc], a
    ld b, l
    add e
    add a
    ld b, d
    and $00
    db $e3
    nop
    ccf
    ld [bc], a
    inc sp
    nop
    sub e
    nop
    rst $18
    sub b
    rst $30
    sbc c
    ei
    pop bc
    pop hl
    add c
    sub c
    ld bc, $0091
    add c
    nop
    reti


    nop
    db $fd
    nop
    rst $38
    nop
    cp l
    nop
    rst $18
    inc bc
    dec bc
    nop
    dec c
    nop
    rra
    nop
    db $fc
    nop
    db $ec
    nop
    ld hl, sp+$00
    ld a, b
    add b
    ld hl, sp+$00
    db $fc
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    push de
    ld [$100c], sp
    ld [hl+], a
    nop
    add b
    nop
    sbc h
    nop
    rlca
    db $fc
    inc hl
    db $fc
    ei
    inc b
    and e
    call c, $ff02
    nop
    rst $38
    inc bc
    db $fc
    nop
    cp $4b
    cp $5f
    ldh [$83], a
    nop
    rst $00
    nop
    rst $18
    add b
    cp $01
    db $f4
    jp $f827


    cp a
    ret nz

    cp a
    ret nz

    rst $20
    add b
    rst $20
    ret nz

    xor a
    ret nz

    adc a
    ldh [$87], a
    ldh [$2e], a
    pop bc
    sbc $e1
    ld b, e
    db $fc
    rst $18
    ldh [rIE], a
    ldh [$ef], a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$df], a
    pop hl
    push af
    xor $ea
    db $fc
    db $ec
    ld hl, sp+$25
    ld hl, sp-$21
    or b
    ld [hl], a
    sbc b
    ld l, [hl]
    sbc c
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, [hl]
    sbc c
    db $ed
    sbc e
    ccf
    ret c

    add hl, sp
    ret nz

    pop bc
    nop
    cp c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, b
    adc a
    dec e
    rst $20
    sbc d
    rst $20
    cp a
    rst $28
    ei
    ld a, a
    ld h, a
    db $fd
    sbc $f1
    jp z, $a0f7

    rst $38
    jp $b2fe


    db $fd
    ret nz

    rst $38
    ldh [rIE], a
    add sp, -$01
    db $fc
    rst $38
    ei
    db $fc
    add a
    ld hl, sp+$57
    ld hl, sp+$54
    cp e
    ld d, [hl]
    db $eb
    ld b, l
    ld a, [$7887]
    dec c
    ld [bc], a
    dec c
    ld [bc], a
    dec de
    nop
    ccf
    nop
    rra
    ld [hl+], a
    ccf
    ld [de], a
    ld h, e
    dec e
    ret nc

    ccf
    ccf
    ld bc, $0105
    add hl, sp
    nop
    cp l
    ld b, b
    db $dd
    nop
    cp e
    inc b
    di
    adc h
    ld bc, $3dfe
    add $c3
    nop
    rst $00
    ld bc, $0089
    and b
    nop
    add b
    nop
    ret nz

    nop
    rst $38
    rst $30
    xor $ff
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp b
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$11
    call c, Call_000_00ff
    rst $38

jr_05f_6fb1:
    nop
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $08
    pop bc
    nop
    add b
    nop
    ld bc, $4000
    nop
    ld b, c
    nop
    ld b, a
    nop
    jp $e740


    nop
    cp [hl]
    inc hl
    or h
    nop
    ld [hl+], a
    nop
    daa
    nop
    dec l
    nop
    ld sp, hl
    nop
    sbc e
    ld [hl], b
    db $76
    add hl, hl
    ld b, e
    inc a
    inc [hl]
    ld l, b
    ld l, b
    nop
    ld [hl], b
    nop
    ld a, b
    rrca
    ld a, b
    rrca
    jr c, jr_05f_6ff7

    ld hl, sp+$07
    ld hl, sp+$07
    cp c
    rlca
    sbc c
    rlca
    inc e
    rlca
    inc e
    rlca
    sbc h
    rlca
    rst $18

jr_05f_6ff7:
    rlca
    push af
    ld b, $c7
    nop
    add c
    nop
    sbc a
    nop
    inc a
    rst $38
    nop
    rst $38
    dec h
    rst $38
    cp l
    ld a, a
    and l
    ld a, a
    adc [hl]
    ld a, c
    inc e
    rst $28
    inc e
    rst $38
    rra
    ldh a, [$e6]
    nop

jr_05f_7014:
    ret nz

    nop
    call $df30
    jr nz, jr_05f_6fb1

    ld l, c
    push af
    dec bc
    db $f4
    rrca
    ld d, c
    ld l, $c1
    ld a, $c3
    ld a, $d8
    daa
    ret nz

    ccf
    ret nz

    ccf
    add a
    ld a, h
    ccf
    db $e3
    or a
    db $fc
    jr jr_05f_7014

    ld [hl], b
    ret nz

    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    pop de
    cpl
    ret nz

    ccf
    inc e
    rst $38
    push hl
    rst $38
    sub a
    rst $38
    call c, $3cf3
    db $e3
    ldh a, [$1f]
    add b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld b, $ff
    add b
    ld a, a
    nop
    rst $38
    ld b, $fd
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld b, b
    cp a
    db $d3
    cpl
    ld b, h
    cp a
    dec hl
    db $fc
    ld b, $f9
    add b
    ld a, a
    rrca
    rst $38
    sbc [hl]
    ld a, a
    rra
    nop
    or [hl]
    add hl, bc
    ld [bc], a
    dec c
    inc bc
    inc c
    inc bc
    inc c
    dec bc
    inc b
    ei
    inc b
    dec bc
    db $fc
    ld b, e
    cp h
    rla
    ld hl, sp+$07
    db $fc
    ld bc, $01fe
    cp $42
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rlca
    db $fc
    rlca
    ld hl, sp-$44
    ld c, b
    ret


    nop
    pop bc
    nop
    add $01
    add $01
    adc $81
    add $81
    add $81
    add a
    add b
    add a
    add b
    adc a
    add b
    rst $00
    adc b
    ld c, a
    add b
    rst $08
    add b
    rst $38
    adc h
    rst $38
    ret nz

    cp a

jr_05f_70b7:
    ret nz

    rst $30

jr_05f_70b9:
    ret nz

    xor $41
    ld a, [$e001]
    ld bc, $0160
    ld h, c
    ld bc, $40e1
    ld a, [$a927]
    rst $38
    ld sp, hl
    or a
    and b
    rra
    jr nz, jr_05f_70ef

    add b
    rra
    ret c

    rra
    pop bc
    rra
    jr nz, jr_05f_70b7

    jr nz, jr_05f_70b9

    and b
    ld e, a
    ld h, l
    ld e, $7f
    ld [$1408], sp
    nop
    cp $01
    cp $01
    cp $01
    cp $00
    cp $01
    cp $01

jr_05f_70ef:
    cp $01
    cp $83
    cp $07
    cp $59
    ld hl, sp+$20
    add b
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    pop af
    ld [bc], a
    sub d
    ld bc, $01ba
    adc [hl]
    add e
    db $ed
    add [hl]
    ld a, c
    adc a
    ld e, e
    rst $28
    ld sp, hl
    ld b, a
    adc e
    rlca
    add hl, bc
    rlca
    rst $38
    ld bc, $c17e
    rrca
    pop af

jr_05f_711c:
    ld c, [hl]
    pop af

jr_05f_711e:
    ld a, [$c607]
    ld bc, $00ff
    adc e
    ld [hl], l
    rla
    jp hl


    ld a, [hl]
    add c
    ld hl, sp+$0f
    add e
    ld a, h
    ld h, [hl]
    sbc b
    ld l, [hl]
    sub b
    and $18
    rst $20
    jr jr_05f_711e

    jr jr_05f_711c

    inc e
    add sp, $1f
    db $eb
    dec a
    sbc e
    db $fc
    and b
    ld a, a
    adc $ff
    db $eb
    ld e, $9d
    ld l, [hl]
    ld e, a
    jp hl


    jr c, @+$01

    rlca
    db $fd
    rlca
    ld hl, sp+$07
    ld hl, sp+$18
    rst $38
    ld h, d
    db $dd
    ld e, $e1
    ldh a, [$8f]
    inc c
    rst $30
    nop
    rst $38
    nop
    rst $38
    ld c, [hl]
    pop af
    jr c, @-$37

    jp nz, $89bf

    ld a, [hl]
    inc sp
    db $fc
    add sp, -$09
    ld [bc], a
    db $fd
    ld [hl], h
    db $db
    sbc e
    ld b, $fe
    nop
    ld [hl], l
    adc b
    or $0d
    db $fd
    ld c, $f1
    ld c, $f1
    ld c, $f3
    ld c, $f9
    ld c, $b0
    rrca
    dec [hl]
    rrca
    dec d
    ld c, $14
    ld c, $84
    ld e, $a7
    ld e, $a7
    ld e, $c7
    cp [hl]
    rra
    cp $e6
    ccf
    sbc $21
    db $ed
    ld b, c
    call Call_000_0d00
    add b
    adc a
    nop
    sbc a
    nop
    rst $18
    nop
    ei
    inc c
    di
    inc c
    cp a
    ld b, b
    sbc $20
    cp $00
    rst $38
    nop
    db $fc
    nop
    sbc c
    ld h, b
    sbc d
    ld h, c
    db $fc
    inc hl
    ld hl, sp+$01

jr_05f_71ba:
    cp b

jr_05f_71bb:
    ld bc, $01b6
    xor [hl]
    add c
    cp h
    inc bc
    scf
    add e
    ld a, a
    add c
    ld a, [$6601]
    add c
    ld [c], a
    ld bc, $03e0
    ld h, h
    add e
    ld h, h
    jp $8768


    jr c, @-$17

    ld d, e
    rst $38
    db $e3
    sbc h
    db $fd
    nop
    rla
    ld [$003b], sp
    ld d, e
    jr nz, jr_05f_71ba

    jr nz, jr_05f_71bb

    ld h, c
    inc e
    db $e3
    sbc [hl]
    ld h, c
    rst $28
    db $10
    rst $30
    inc c
    di
    inc c
    di
    inc c
    ld a, e
    add h
    ld a, [$ff04]
    ld [bc], a
    db $ed
    ld [bc], a
    rst $38
    ret nz

    ld c, h
    add b
    ld c, h
    add b
    ld a, [$f905]
    ld b, $5d
    and [hl]
    ld a, $c7
    ld c, l
    add a
    db $ed
    ld a, $a1
    cp $7d
    rst $38
    cp $ff
    db $f4
    rst $38
    ldh a, [rIE]
    add e
    db $fc
    rst $28
    ldh a, [$63]
    ret nz

    ld a, a
    add b
    sub a
    ld hl, sp-$2e
    rst $38
    rst $38
    rst $38
    or $ff
    db $db
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    sbc a
    ld h, b
    rst $18
    jr nz, @+$31

    db $10
    rrca
    nop
    cp $03
    db $fd
    rlca
    ld e, [hl]
    di
    jp $e7ff


    ccf
    cp e
    ld a, a
    ld c, a
    ei
    rst $08
    di
    rst $38
    ld e, a
    rst $00
    ccf
    ld a, a
    add b
    ld a, a
    add b
    cp $c3
    db $fd
    ld a, a
    ret c

    ccf
    ld a, b
    cp a
    daa
    rst $38
    rrca
    di
    scf
    db $eb
    jp c, $c125

    ccf
    rla
    cp $59
    or $98
    rst $20
    ld e, b
    rst $20
    ret nz

    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld bc, $40fe
    cp a
    rst $38
    nop
    inc de
    nop
    rlca
    nop
    sub a
    nop
    cp [hl]
    ld b, h
    ld h, e
    ld e, $7a
    rlca
    ld a, d
    rlca
    ld [hl], l
    ld [bc], a
    add sp, $12
    ld l, a
    sub b
    push af
    ld a, [bc]
    add hl, sp
    ld c, $39
    ld b, $bf
    nop
    cp a

jr_05f_728f:
    nop
    cp [hl]
    inc bc
    db $fd
    ld h, $23
    add $07
    add d
    adc e
    nop
    adc h
    rlca
    adc e
    rlca
    ld hl, sp+$07
    ld a, [hl]
    add c
    add $39
    and b
    rra
    ld a, h
    add e
    sub [hl]
    inc bc
    sub a
    inc bc
    sbc a
    inc bc
    adc a
    nop
    db $dd
    ld [bc], a
    rst $08
    nop

jr_05f_72b4:
    ld a, [hl]
    ret nz

    ld a, h
    add b
    ld c, a
    add d
    ret


    add a
    call z, $dc83
    add e
    ld e, h
    add e
    ld e, h
    add e
    ld c, a
    add b
    jr c, jr_05f_728f

    ld a, a
    add b
    db $ec
    add b
    dec c
    add b
    ld c, [hl]
    add c
    rst $28
    add b

jr_05f_72d2:
    xor a
    ret nz

    ei
    ret z

    sub e

jr_05f_72d7:
    ldh [$82], a
    pop hl
    db $e3
    ld b, b
    db $e3
    nop
    rst $28
    nop
    rst $18
    jr nz, jr_05f_72b4

    ld l, $ef
    nop
    rst $18
    jr nz, jr_05f_72d7

    jr nz, jr_05f_72d2

    nop
    rst $20
    jr nz, jr_05f_7366

    add b
    ld sp, hl
    ld b, $7f
    inc b
    dec de
    inc b
    or l
    ld c, $ff
    ld e, $09

jr_05f_72fb:
    ld c, $09
    ld c, $0b
    inc c
    cp b
    rrca

Call_05f_7302:
    cp $0f
    ld [$871f], a
    ld a, b
    rst $28
    ld [de], a
    cp [hl]
    inc bc
    dec e
    inc bc
    pop af
    ld c, $a6
    ld a, c
    inc e
    db $e3
    ld a, d
    add a
    ldh [$1f], a
    ld sp, hl
    ld b, $ff
    jr nz, jr_05f_72fb

    ld h, e
    ld a, [bc]
    rst $38
    or h
    rst $38
    adc a
    pop af
    ld h, e
    add b
    ld b, c
    add b
    ld a, a
    add b
    ccf
    ret nz

    cp $01
    adc h
    ld [hl], e
    db $d3
    ld a, a
    ld [hl], b
    sbc a
    or d
    rst $38
    push hl
    rst $38
    rst $18
    db $fc
    ld sp, hl
    cp $f8
    rst $38
    ld a, [$a4ff]
    rst $38
    cp a
    pop hl
    ccf
    call nz, Call_05f_7b8c
    sub e
    ld a, a
    ld a, a
    db $fc
    cp a
    cp $03
    rst $38
    inc hl
    rst $38
    ld h, b
    rst $38
    ld sp, hl
    rst $38
    db $fd
    cp $af
    ld hl, sp-$45
    db $f4
    ld d, a
    ld hl, sp-$80
    ld a, a
    add $3f
    db $fc

jr_05f_7363:
    rra
    di
    rrca

jr_05f_7366:
    ld hl, sp+$07
    ld l, l
    sub d
    ret


    ld [hl], $04
    ei
    ld d, c
    rst $28
    db $fd
    ld [bc], a
    cp $03
    cp l
    ld [bc], a
    ccf
    nop
    inc e
    ld [bc], a
    ld c, d
    ld b, $9b
    ld h, h
    and d
    db $fc
    dec e
    rst $38
    ld b, a
    ccf
    ld sp, hl
    rlca
    cp $01
    rst $38
    nop
    cp h
    ld b, b
    ld a, [hl]
    nop
    db $fd
    ld [bc], a
    ld [bc], a
    db $fd
    ld a, [$8b2f]
    rlca
    pop bc
    rlca
    ret z

    rlca
    jr c, jr_05f_7363

    inc [hl]
    rst $08
    ld a, d
    add [hl]
    dec a
    add [hl]
    add hl, de
    add [hl]
    adc l
    add d
    add e
    add b
    add e
    add b
    ld a, a
    ret nz

    adc $04
    dec b
    ld [bc], a
    push hl
    ld [bc], a
    rst $38
    nop
    ld e, h
    jr nc, @+$38

    nop
    push de

jr_05f_73b9:
    ld a, a
    ld e, a
    pop hl
    ld e, $f1
    sub l
    ldh a, [$50]
    ldh a, [$92]
    ld [hl], b
    rst $28
    db $10
    sbc [hl]
    pop af
    db $f4
    rra
    ld a, h
    inc bc
    ld [bc], a
    ld bc, $0116
    rst $38
    nop
    rst $28
    db $10
    jp $9f3c


    ld h, b
    inc sp
    pop bc
    ld a, c
    add b
    rst $38
    jr nz, jr_05f_7366

    ld a, b
    ld e, a
    and b
    rst $38
    nop
    db $d3
    inc l
    cp e
    inc b
    ld e, $00
    rst $30
    ld [$08f7], sp
    db $fc
    inc bc
    ld a, a
    add b
    rst $38
    nop
    ld [c], a
    ld bc, $05fa
    add hl, de
    rst $38
    ret nc

    rst $38

Jump_05f_73fc:
    ld sp, hl
    ld b, [hl]
    ld a, a
    nop
    rst $18
    jr nz, @+$30

    pop af
    rla
    add sp, $3c
    rst $00
    and h
    ld a, a
    adc a
    ld [hl], b
    sbc a
    ld h, b
    cp a
    ldh [$f6], a
    dec de
    jp Jump_05f_7f3d


    db $f4
    rst $18
    pop af
    rrca
    ldh a, [$d7]
    jr nc, jr_05f_73b9

    ld [hl], e
    sbc [hl]
    jp hl


    ld h, [hl]
    add c
    xor $01
    cp $01
    rst $38
    ld bc, $19e6
    adc b
    ld a, a
    jr nz, @+$01

    inc e
    db $e3
    ld l, $d1
    ld h, a
    ld sp, hl
    rst $38
    ld hl, sp-$02

jr_05f_7437:
    rst $38
    adc [hl]
    rst $38
    rst $30
    cpl
    ld a, b
    rst $38
    dec de
    cp $c8
    cp a
    and b
    rst $38
    db $10
    rst $38
    jr nc, jr_05f_7437

    nop
    rst $38
    sub b
    ld l, a
    ld a, h
    inc bc
    cp $03
    ld a, a
    ldh [$d7], a
    ld hl, sp+$00
    rst $38
    push af
    rrca
    srl a
    ldh [$1f], a
    ld sp, hl
    ld a, $01
    cp $71
    adc [hl]
    rlca
    ld hl, sp-$03
    inc bc
    ld hl, sp-$79
    rst $38
    ld [hl], b
    ld e, d
    and b
    ld a, d
    or b
    nop
    ld hl, sp-$48
    ld a, a

jr_05f_7472:
    db $eb
    sbc $ff
    ld bc, $00f7
    ld [hl], e
    db $10
    ld sp, hl
    nop
    and c
    db $10
    rst $28
    db $10
    and [hl]
    ld e, c
    ldh a, [rIE]
    rst $38
    pop af
    ld l, a
    ldh a, [$3c]
    db $e3
    ld l, [hl]
    ld sp, $3847
    rst $08
    jr nc, jr_05f_74b0

    ld a, [c]

jr_05f_7492:
    inc e
    di
    xor d
    pop af
    ld h, $f9
    rst $10
    ld hl, sp+$57
    ld hl, sp-$49
    db $fc
    ld l, d
    dec e
    rst $08
    jr c, jr_05f_7472

    jr nc, jr_05f_7492

    db $10
    db $eb
    db $10
    ld h, a
    jr jr_05f_7472

    jr c, @+$47

    ld a, [hl-]
    cp $03

jr_05f_74b0:
    db $e3
    nop
    rst $38
    nop
    ld a, a
    inc b
    ld a, [hl]
    inc b
    ld l, a
    ret nz

    ccf
    call nz, $c04c
    ld h, h
    add b
    ld a, a
    add b
    dec sp
    add $3b
    add $eb
    add [hl]
    and l
    cp $47
    db $fc
    jp c, Jump_05f_7dfc

    cp $71
    rst $38
    add h
    rst $38
    rst $20
    ld a, b
    rst $38
    ret nz

    ld h, e
    ret nz

    rra
    ldh [$c7], a
    ld a, c
    db $fd
    ld a, a
    rst $30
    rst $38
    dec e
    ld [c], a
    dec a
    jp nz, $42bd

    ld a, l
    inc bc
    ld a, $03
    rst $38
    nop
    ei
    nop
    rst $30
    ld [$05fa], sp
    and $1f
    ld e, e
    db $fc
    ld a, [$7bfd]
    db $fc
    call $fa3e
    rrca
    di
    inc c
    ld d, e
    db $fc
    dec bc
    cp $3d
    cp $ff
    rst $38
    cp $ff
    ld e, c
    rst $38
    xor c
    or $f7
    call z, $fc43
    ld a, e
    xor $36
    reti


    rst $38
    ld de, $f00f
    rst $28
    jr @-$07

    inc c
    rst $20
    ld b, $fe
    ld bc, $877b
    dec b
    rst $38
    dec c
    rst $30
    add hl, de
    cp $03
    cp $0f
    ld sp, hl
    dec de
    rst $20
    ldh a, [$7f]
    add a
    rst $38
    ld a, c
    cp a
    ld a, b
    add a
    inc a
    jp $f8f7


    ld d, a
    ld hl, sp-$23
    ld h, $06
    db $fd
    inc bc
    db $fc
    add c
    cp $30
    rst $08
    cp a
    ret nz

    dec d
    cp $fe
    daa
    ld hl, sp+$07
    ld d, [hl]
    rst $38
    db $fc
    rst $38
    cp $ff
    cp [hl]
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld [hl-], a
    ld a, a
    push af
    ld a, $37
    ld hl, sp-$5b
    cp $04
    ei
    ld a, h
    set 7, h
    inc bc
    ld a, l
    inc bc
    ld c, $07
    ld hl, sp-$01
    or a
    ld sp, hl
    cpl
    ld hl, sp-$05
    rlca
    sbc b
    ld h, a
    cp h
    ld b, e
    ld a, $e1
    ld a, [hl]
    add c

jr_05f_7580:
    rst $08
    nop
    rst $08
    nop
    dec bc
    db $fc
    rst $38
    ld a, [de]
    ld a, [hl-]
    ret nz

    ld c, $f0
    adc a
    ldh a, [$9b]
    ld l, [hl]
    add l
    ld a, [hl]
    rra
    jp hl


    cpl
    ret nc

    ccf
    ret nz

    rst $28
    db $10
    db $ec
    inc de
    db $fc
    inc bc
    call $bc83
    di
    rrca
    ldh a, [rNR51]
    ld a, [$fa17]
    or l
    rst $38
    dec [hl]
    ei
    xor $fb
    cp a
    reti


    rst $08
    ld bc, $817f
    db $fc
    daa
    ld a, [hl]
    ld de, $106f
    rst $38
    ld a, b
    add hl, bc
    ld [hl], $2a
    scf
    ld l, $33
    db $ed
    ld [hl-], a
    rst $10
    jr c, jr_05f_7580

    ld a, [hl]
    ld [$e9f7], sp
    ld d, $6e
    dec de
    db $e4
    dec sp
    dec c
    or $7d
    add [hl]
    and $19
    db $e3
    ccf
    ei
    rlca
    ld hl, sp+$07
    db $fc
    sub e
    ld d, l
    rst $38
    inc [hl]
    rst $38
    db $fd
    dec bc
    dec e
    ld [bc], a
    db $fd
    ld [bc], a
    or e
    ld l, [hl]
    cp e
    ld b, h
    ccf
    ret nz

    ld a, e
    rst $00
    ld a, e
    add a
    rra
    rst $28
    sub $3f
    ret nz

    ccf
    ld bc, $83ff
    ld a, [hl]
    rst $20
    inc e
    pop bc
    ld a, $40
    rst $38
    add b
    rst $38
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    daa
    inc e
    rst $38
    add b
    rst $38
    push de
    ld a, a
    cp $7f
    ei
    ld a, [hl]
    ccf
    db $f4
    ld a, a
    add b
    ld a, l
    add d
    ld hl, sp-$49
    or b
    ld l, a
    pop bc
    rst $38
    ldh a, [rIE]
    ret nc

    rst $28
    or e
    rst $28
    sbc a
    rst $38
    cp [hl]
    rst $38
    cp c
    rst $38
    add d
    ld a, a
    ld a, l
    jp $cfbc


    add sp, -$01
    db $e3
    cp $7b
    call nz, Call_000_18f7
    inc bc
    rst $38
    ld sp, $d8df
    cpl
    jp z, Jump_05f_673d

    cp b
    rrca
    ldh a, [$cf]
    jr nc, @+$62

    sbc a
    xor h
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    db $e3
    rra
    cp $01
    ld l, a
    ret nz

    rra
    ldh [$03], a
    db $fc
    dec b
    ld a, [$fb84]
    ld b, a
    cp h
    pop hl
    ld e, $9e
    rlca
    db $ec
    inc de
    ld a, b
    add a
    inc e
    rst $20
    add h
    rst $38
    push bc
    ld a, [$f8e7]
    cp $db
    ld bc, $80fe
    rst $38
    jr nc, @+$01

    db $fd
    di
    db $ec
    rst $38
    rla
    cp $71
    cp a
    rst $30
    ld a, [hl-]
    rst $30
    add hl, hl
    rst $28
    add hl, de
    rst $28
    ld de, $33de
    call c, $fc37
    rlca
    db $fc
    ld [hl], a
    sbc h
    ld [hl], a
    ld [hl], h
    rst $38
    call nc, $ec7f
    rra
    cp l
    rst $18
    adc a
    ld a, a
    adc a
    rst $38

jr_05f_769e:
    ld c, [hl]
    rst $38
    call c, $fb3f
    dec a
    cp $19
    rst $38
    ld de, $33ef
    xor c
    rst $30
    sbc h
    di
    sbc h
    di
    cp h
    db $e3
    ld e, b
    rst $20
    ld a, [de]
    push af
    rst $18
    ld [hl], b
    rst $38
    ld [de], a
    ld a, a
    nop
    call c, $3533

Call_05f_76bf:
    rst $38
    cp [hl]
    rst $38
    and d
    ld a, a
    ld a, [$fd07]
    inc bc
    db $fc
    jp Jump_000_3fc1


    ld b, $ff
    cp a
    rst $38
    rst $38
    rra
    rst $30
    rra
    ld sp, hl
    cp a
    ld l, h
    di
    add sp, $3f
    add sp, $3f
    cp $03
    inc a
    inc bc
    push af
    rrca
    rst $38
    or b
    db $eb
    inc e
    db $fd
    sbc e
    sbc [hl]
    db $e3
    ld l, e
    sbc $8f
    db $fc
    xor e
    db $fc
    rst $30
    adc $f9
    rst $00
    cp c
    adc $33
    rst $38
    rst $08
    rst $38
    cpl
    rst $38
    rst $38
    rra
    rst $30
    ld c, a
    cp [hl]
    rst $28
    ld c, a
    cp $63
    rst $38
    db $76
    adc a
    rlca
    rst $38
    rst $00
    rst $38
    dec h
    rst $18
    ld bc, $2dff
    rst $30
    xor $31
    rst $00
    jr c, jr_05f_769e

    ld a, l
    db $76
    sbc a
    dec l
    rst $38
    ld e, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $71ff
    sbc a
    sbc a
    db $fc
    rst $20
    ld hl, sp+$3c
    rst $10
    cp $47
    sbc a
    xor $6f
    sub l
    rst $38
    jr nc, @-$23

    ld a, h
    rst $38
    ld [hl+], a
    ret c

    rlca
    cp [hl]
    ld bc, $cbf6
    ld h, e
    db $fc
    rst $00
    db $fc
    ld l, e
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    db $fc
    inc bc
    cp $0b
    ld hl, sp+$07
    ld h, a
    sbc b
    rst $08
    ldh a, [$63]
    db $fc
    xor c
    ld a, [hl]
    add [hl]
    ld a, a
    sbc c
    ld h, a
    cp $11
    ld hl, $02de
    db $fc
    add c
    ld a, [hl]
    db $10
    rst $38
    ld b, d
    cp l
    ld l, a
    sub b
    ld a, a
    add b
    ld l, a
    sub b
    ld e, a
    jr nz, jr_05f_77c8

    ld h, $9c
    di
    ld e, a
    add sp, $01
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    jp Jump_05f_7f7f


    rst $38
    rra
    rst $38
    ld a, [c]
    rra
    ld [c], a
    rra
    db $ed
    rra
    ld h, e
    sbc a
    res 7, h
    dec e
    ld [c], a
    and h
    rst $38
    cp a
    rst $38
    and b
    rst $38
    xor a
    pop af
    rst $28
    ld [hl], c
    cp l
    ld [hl], a
    or d
    ld l, a
    or b
    ld l, a
    ld [c], a
    ld a, a
    ld l, a
    db $fc
    db $eb
    db $fc
    inc de
    db $fc
    ld c, c
    cp a
    adc a
    db $76
    adc e
    ld a, [hl]
    adc e
    ld a, h
    ld l, $f0
    rlca
    ld hl, sp+$3b
    or $1b
    db $fc
    inc sp
    db $fc
    sbc l
    ld a, [hl]
    bit 6, a
    xor e
    ld [hl], h
    sbc e
    db $f4
    ld c, d
    rst $38
    ld c, l
    cp a
    inc d
    rst $38
    ld c, a
    or c
    ld l, a
    sub c

jr_05f_77c8:
    xor e
    call c, $ffa0
    ldh [$3f], a
    rst $18
    xor h
    ld a, e
    adc h
    ld [hl], e
    cp h
    add d
    rst $38
    ld c, a
    cp [hl]
    db $eb
    cp a
    di
    inc a
    ld a, a
    ld hl, sp+$1b
    db $fc
    dec sp
    cp $5f
    db $fc
    adc c
    ld a, [hl]
    ld [hl], c
    rst $18
    ei
    rst $10
    cp e
    call c, $8ffd
    rst $38
    adc a
    ld l, b
    rst $38
    ld [$5cff], a
    di
    add c
    rst $38
    and h
    rst $18
    cp h
    rst $38
    db $ed
    cp $0f
    cp $0c
    rst $38
    sub l
    ld a, a
    db $dd
    rst $38
    dec l
    rst $38
    di
    db $fc
    ld c, d
    db $fd
    cp [hl]
    ld h, a
    sbc c
    rst $38
    ret


    rst $38
    add b
    rst $38
    adc b
    rst $38
    sbc a
    ld a, a
    adc a
    rst $38
    ld e, $ff
    jp Jump_000_02fe


    rst $38
    rla
    rst $38
    or a
    sbc $80

jr_05f_7825:
    rst $38
    ldh [$7f], a
    rst $30
    dec e
    xor $3b
    and e
    rst $18
    rst $08
    ld [hl], l
    ld c, a
    ldh a, [rVBK]
    ei
    ret


    rst $38
    or a
    ld c, a
    rst $28
    rst $18
    rst $08
    rst $38
    ret c

    ld a, a
    ldh a, [$1f]
    add e
    ld a, h
    cpl
    db $f4
    ld l, e
    or l
    xor [hl]
    push de
    inc c
    di
    ld l, d
    sbc a
    ld h, l
    sbc a
    pop af
    ld c, $f7
    sbc b
    ld [hl], l
    adc d
    cp b
    rlca
    ld [hl], $c9
    ld l, $f1
    add c
    cp $33
    call z, Call_000_00fe
    dec [hl]
    ret z

    jr c, jr_05f_7825

    ld a, h
    add e
    adc c
    ld [hl], a
    add a
    ld a, a
    ld l, [hl]
    sbc a
    db $dd
    ld a, $b9
    ld a, [hl]
    push af
    rrca
    call nz, Call_05f_5f7b
    ldh [$1f], a
    ld [c], a
    ld [hl], a
    db $fc
    ld h, [hl]
    rst $38
    and h
    rst $38
    ld c, $ff
    ld a, a
    or b
    rst $18
    ldh a, [$3b]
    call z, $c2bd
    ret c

    daa
    db $dd
    scf
    inc de
    db $fc
    ld l, a
    cp $f3
    db $fc
    ld [hl], d
    rst $18
    ld [hl], e
    rst $28
    db $d3
    rst $28
    db $db
    rst $28
    ld e, a
    rst $28
    ld [hl], a
    rst $28
    rst $28
    rst $38
    ld a, e
    rst $38
    adc l
    ei
    ld c, a
    ld a, [c]
    scf
    ret z

    dec de
    db $ec
    ld d, e
    db $fc
    ld d, e
    db $ec
    inc bc
    db $fc
    pop bc
    cp $01
    cp $81
    cp $65
    sbc e
    and h
    rst $18
    ld b, c
    rst $38
    or e
    sbc $3b
    db $f4
    ld l, a
    db $fc
    ld [hl], e
    db $fc
    ld h, e
    db $fc
    jp nc, $f2ef

    rst $08
    rst $10
    ld l, a
    ld d, a
    rst $28
    rst $30
    rst $28
    ld l, a
    rst $38
    sub e
    rst $38
    rst $08
    di
    ld d, [hl]
    db $eb
    rla
    db $ec
    ld d, e
    db $ec
    inc de
    xor $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    add c
    cp $35
    sbc $c1
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    ld d, [hl]
    db $fd
    rst $30
    db $fc
    db $e3
    db $fc
    ld d, e
    cp $52
    rst $28
    ld d, e
    rst $28
    rst $10
    rst $28
    ld [hl], a
    rst $38
    rst $38
    rst $38
    sub a
    rst $38
    dec bc
    rst $38
    add l
    ei
    inc e
    rst $38
    cp e
    db $fd
    ld a, [bc]
    rst $38
    ld b, [hl]
    ld sp, hl
    ld c, h
    rst $38
    db $ed
    or [hl]
    db $ed
    cp a
    ld l, l
    rst $38
    ret nc

    rst $38
    sbc b
    rst $38
    ldh a, [rIE]
    db $fd
    cp $d5
    ei
    ld b, [hl]
    db $fd
    and $ff
    ld a, h
    rst $38
    call c, Call_05f_76bf
    cp a
    db $f4
    rst $38
    jp $97fc


    ld sp, hl
    cp [hl]
    ld sp, hl
    inc a
    jp $cfbc


    reti


    and $dd
    xor $f1
    cp $76
    adc a
    or a
    rra
    and $1f
    rst $18
    inc a
    ccf
    db $fc
    ld h, e
    db $fc
    sbc [hl]
    pop hl
    call c, $bf83
    ld [$08ff], sp
    add d
    ld a, h
    rrca
    ldh a, [$03]
    rst $38
    rra
    rst $28
    ld [hl], d
    adc a
    add b
    ld a, a
    rst $00
    inc a
    ld c, c
    ld a, $8d
    ld a, [hl]
    ld a, h
    di
    adc $f1
    ld a, [de]
    push hl
    sub [hl]
    jp hl


    ld [hl], $c9
    ld a, [$fd05]
    ld [bc], a
    ld a, [$210f]
    rst $38
    ld e, $e3
    rst $38
    ld h, h
    adc e
    db $fc
    db $76
    ei
    or b
    rst $08
    ld a, $c1
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc e
    ld h, b
    call nc, Call_000_1f2b
    ldh [$37], a
    ret nz

    rst $30
    nop
    rst $30
    and [hl]
    dec e
    rst $20
    rst $08
    db $f4
    ld a, [hl]
    pop af
    rst $38
    add b
    ld c, a
    or b
    ld e, e
    xor h
    inc de
    db $ec
    rlca
    db $fc
    inc sp
    call z, $c43b
    ld a, e
    add h
    ld a, a
    add h
    ld a, [hl]
    adc l
    ld [hl-], a
    db $fd
    dec bc
    db $fc
    sub a
    db $fd
    db $dd
    ld a, b
    add a
    ld a, h
    adc d
    db $fd
    adc d
    rst $30
    ld c, l
    cp $7e
    db $fd
    ccf
    call nz, $8065
    push hl
    nop
    ld a, a
    add b
    sbc $e5
    ret c

    rst $20
    ld a, a
    ld a, [$80ff]
    rst $38
    and c
    ld a, a
    add b
    inc de
    db $ec
    daa
    db $fc
    ld h, [hl]
    db $dd
    cp $89
    ei
    inc c
    ld a, a
    adc b
    or a
    cp $ad
    rst $38
    ccf
    ld sp, hl
    sbc a
    ld hl, sp+$37
    ld hl, sp-$72
    ld sp, hl
    inc b
    rst $38
    ret nz

    rst $38
    db $fd
    cp $35
    adc $7e
    add c
    rst $28
    add b
    cp $e1
    sbc [hl]
    db $ed
    call nc, $fcef
    cp a
    cp [hl]
    jp $ebbc


    ld d, $fb
    ld c, d
    db $fd
    ld a, [hl]
    ld sp, hl
    rst $20
    sbc b
    db $76
    ei
    db $f4
    sbc e
    ld h, h
    ei
    dec de
    rst $38
    db $e3
    ccf
    xor $11
    ld e, a
    and b
    ld [de], a
    db $ed
    inc c
    di
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    dec d
    rst $38
    ld l, d
    rst $18
    sbc c
    rst $28
    rst $38
    ccf
    add sp, $3f
    ld h, c
    cp $0f
    ldh a, [$3d]
    db $e3
    ld [$03ff], sp
    cp $01
    cp $c1
    ld a, $80
    ld a, a
    inc sp
    call z, $b7c8
    cp $e1
    rra
    ldh [$ef], a
    db $10
    rst $38
    nop
    cp [hl]
    ld b, c

jr_05f_7a48:
    cp $a1
    rra
    ldh a, [$ef]
    ld [hl-], a
    rst $38
    jr nc, jr_05f_7a48

    nop
    jp nz, $0281

    add c
    xor $c1
    scf
    ld hl, sp+$18
    rst $38
    add $3f
    sbc h
    ld a, a
    ld c, b
    ccf
    adc h
    ld a, e
    ld [bc], a
    db $fd
    add b
    ld a, a
    add hl, bc
    or $60
    sbc a
    ldh a, [$1f]
    add c
    ld a, [hl]
    xor $ff
    db $fc
    ld a, a
    rlca
    ld hl, sp-$09
    ld e, $f3
    ld e, $33
    call z, Call_000_00fe
    db $fd

Call_05f_7a7f:
    ld [de], a
    push de
    ld [bc], a
    call Call_05f_7302
    call c, $c0ff
    db $fc
    ld h, e
    inc bc
    db $fc
    rlca
    ld hl, sp-$64
    ld h, c
    rra
    ld [c], a
    dec bc
    db $fc
    inc de
    db $fc
    and a
    ld e, b
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    rst $38
    ld bc, $0fb2
    xor $39
    rst $00
    ld hl, sp+$0b
    ldh a, [$0a]
    ldh a, [$ef]
    ld hl, sp+$2e
    ld sp, hl
    ld l, a
    ld sp, hl
    ld d, c
    rst $38
    inc e
    nop
    rst $38
    db $10
    ld a, a
    jp nz, $806f

    ld l, a
    add b
    ld a, a
    db $e4
    ld b, e
    ret nz

    ld [bc], a
    ret nz

    rrca
    ret nz

    dec sp
    add $bf
    add $da
    and $98
    ld h, a
    db $f4
    rlca
    ld h, e
    add a
    ld a, e
    rst $00
    adc c
    rst $38
    ld a, b
    sub a
    ld a, [hl]
    pop bc
    ld a, $c0
    inc a
    ret nz

    rst $38
    nop
    ld l, c
    cp a
    rst $38
    rst $38
    ld b, d
    rst $38
    db $db
    inc b
    rst $38
    nop
    ld a, a
    add b
    rst $30
    inc l
    rst $08
    jr nc, @-$6f

    ld [hl], b
    ld l, d
    ld de, $52ef
    pop bc
    ld a, [hl]
    cp d
    rst $00
    inc bc
    rst $38
    dec b
    ei
    ccf
    jp $cf38


    dec e
    ld a, [c]
    ld l, $f3
    ld e, l
    and e
    ei
    rrca
    rst $38
    rrca
    xor a
    rst $38
    db $e3
    rst $38
    add hl, de
    rst $20
    sbc $ef
    cp $e3
    ld e, l
    or $03
    db $fc
    ld h, a
    sbc h
    rst $28
    jr @+$01

    db $10
    rst $38
    nop
    ld a, [hl]
    pop bc
    rlca
    rst $38
    ld a, [hl]
    rst $38
    call c, $f2f3
    rst $38
    ld a, h
    rst $38
    or a
    ld a, b
    jp z, $f9ff

    daa
    db $fd
    add e
    cp $07
    or $5f
    ldh a, [$9f]
    pop hl
    rra
    cp [hl]
    ld c, c
    ccf
    pop hl
    dec c
    di
    di
    rrca
    xor $3f
    xor a
    ld [hl], b
    daa
    ld hl, sp-$79
    ld hl, sp+$73
    ld c, a
    ldh a, [$2f]
    rst $28
    ld de, $c37f
    ld h, $ff
    adc h
    ld a, a
    ld h, c
    rst $38
    sbc l
    ld h, e
    ld [hl], $c1
    ld a, a
    add c
    db $ed
    inc de
    ld d, h
    xor a

jr_05f_7b62:
    add c
    cp $03
    db $fc
    and b
    ld e, a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    adc b
    ld [hl], a
    ld a, c
    sub a
    ld a, $d1
    rst $38
    add b
    rlc b
    db $e3
    nop
    pop af
    db $10
    rst $28
    db $10
    db $76

Call_05f_7b7f:
    add hl, bc
    ldh a, [rIF]
    xor $3f
    ld a, [$ebff]
    ld a, h
    rst $20
    ld a, b
    db $db
    ld h, b

Call_05f_7b8c:
    ld hl, $ffc0
    ret nz

    rst $20
    ld a, h
    and c
    ld a, a
    pop af
    ld a, a
    ld l, a
    cp $2d
    cp $51
    cp $75
    rst $38
    ld a, l
    add e
    ld h, l
    add d
    dec e
    db $e3
    cp a
    ld b, h
    or $00
    ld h, h
    add b
    ld l, $c4
    or a
    ldh [$7f], a
    add b
    ld a, a
    ld [bc], a
    rst $38
    nop
    xor $01
    push bc
    nop
    ld l, e
    dec d
    sbc $71
    ld c, [hl]
    ld [hl], c
    rst $28
    ld de, $21d4
    ret c

    ld hl, $719a
    xor $11
    ld b, b
    rst $38
    rst $28
    ld hl, sp+$68
    ldh a, [$ef]
    ldh a, [$d7]
    ldh [$5e], a
    db $e3
    ld a, b
    rst $20
    rst $10
    jr z, jr_05f_7b62

    ld [hl], b
    ld e, a
    ldh [$7c], a
    db $e3
    cp $e1
    rst $18
    ldh [$80], a
    ld a, a
    cp e
    ld b, h
    xor e
    ld b, h
    ret


    ld b, $bd
    ld [bc], a
    db $fd
    ld [de], a
    rst $38
    db $10
    rst $38
    nop
    ldh [rNR10], a
    rst $28
    or b
    ld hl, sp-$01
    jp nz, $3bff

    call nz, Call_000_00ff
    cp $05
    ld l, a
    sub c
    rlca
    ld hl, sp-$7d
    db $fc
    db $ec
    rst $38
    cp $e1
    sbc [hl]
    pop af
    cp a
    ldh a, [$c8]
    ccf
    ld l, l
    or a
    ld e, a
    or c
    rst $08
    ld [hl], c
    ei
    ld b, c
    ld l, a
    sub c
    ld a, h
    add e
    push hl
    inc bc
    cp $81
    cp $00
    sbc d
    add b
    ld h, c
    ld h, c
    jp nz, Jump_000_00c3

    inc b
    jr nz, @+$22

    add b
    add b
    db $10
    dec d
    call c, Call_000_1ed2
    nop
    inc b
    nop
    sbc d
    ld [bc], a
    or b
    ld [bc], a
    db $ec
    ld [$d8d8], sp
    ldh a, [$f0]
    ld h, b
    rst $38
    push bc
    cp $c7
    ld a, h
    rst $30
    inc a
    rst $20
    inc e
    rra
    ldh a, [$b7]
    ld hl, sp+$5b
    cp $7f
    cp $fe
    rst $38
    ld a, [$f0ff]
    rst $38
    pop bc
    cp $02
    db $fc
    ld b, $f8
    rlca
    ld hl, sp-$29
    xor b
    sbc [hl]
    ld h, c
    rla
    jp hl


    ld [de], a
    db $ed
    ld b, [hl]
    cp c
    inc e
    db $e3
    ld c, l
    or e
    ld [hl], c
    adc a
    dec sp
    call nz, $c03e
    ld a, $c0
    inc a
    ret nz

    ld [hl], b
    add b
    pop af
    ld b, b
    ld e, h
    sub e
    sub e
    ld a, a
    ld [hl], c
    cp $0e
    ldh a, [$36]
    ret nz

    ei
    inc b
    ld a, [$fc05]
    rlca
    db $fc
    inc bc
    rst $28
    nop
    ld d, a
    ld d, b
    ld b, a
    ld b, d
    db $fc
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ret nz

    rrca
    ldh [rIF], a
    rra
    db $10
    add hl, de
    ld b, $1d
    ld d, $1b
    ld d, $1b
    ld b, $1b
    ld b, $1f
    rlca
    add hl, de
    rlca
    ld a, [de]
    rlca
    dec de
    rlca
    jr jr_05f_7cbd

    add hl, de
    rlca
    add hl, de
    rlca
    jr jr_05f_7ccb

    db $10

jr_05f_7cbd:
    rrca
    jr jr_05f_7ccf

    jr jr_05f_7cc9

    add hl, de
    rlca
    db $10
    rrca
    ld [hl-], a
    rrca
    dec a

jr_05f_7cc9:
    ld b, $19

jr_05f_7ccb:
    ld h, $3b
    inc b
    inc sp

jr_05f_7ccf:
    dec c
    dec sp
    inc c
    add hl, hl
    ld e, $33
    inc c
    inc sp
    dec c
    add hl, sp
    ld b, $33
    ld c, $3b
    inc b
    ld [hl], $0b
    ld a, [hl]
    ld bc, $0877
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
    ld a, l
    ld [bc], a
    ld a, a
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a
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
    nop
    ld a, a
    nop
    ld a, a
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
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
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
    ld e, a
    nop
    ld c, a
    add hl, bc
    dec [hl]
    rlca
    or a
    adc $2e
    cp h
    dec e
    ld a, l
    ld a, h
    dec e
    inc e
    add [hl]
    ld b, $18
    ld [bc], a
    sbc b
    add d
    ld b, $27
    ld b, b
    ld b, b
    ld bc, $c1fe
    ld a, $c0
    ld a, a
    pop hl
    ld a, $c0
    ccf
    add b
    rst $38
    call nc, $ce7b
    ld [hl], c
    adc $31
    add [hl]
    ld a, c
    call nz, Call_000_34fb
    ei
    call c, $df3f
    ccf
    rst $18
    ccf
    rst $18
    ccf
    db $db
    ld a, $7f
    cp $3b
    db $fc
    ld a, d
    rst $38
    ld h, b
    rst $38
    rst $00
    ld hl, sp-$32
    pop af
    sub l
    db $e3
    ld a, a
    add b
    rst $00
    nop
    ldh [rP1], a
    ldh [rP1], a
    sub [hl]
    ld b, c
    cp b
    rst $30
    ld a, [hl-]
    rst $00
    xor [hl]
    ld d, a
    sub $03
    push af
    inc bc
    cp $07
    ei
    rlca
    inc hl
    ld e, $03
    inc c
    adc a
    nop
    db $fd
    nop
    jr jr_05f_7d92

jr_05f_7d92:
    pop bc
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    cpl
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fc
    inc bc
    add b
    ld a, a
    add b
    rst $38
    ret nz

    cp a
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
    ld b, b
    rst $38
    ld b, b
    cp a
    ld b, b
    rst $38
    ld b, b
    cp a
    ld b, b
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    ld b, b
    cp a
    add b
    ld a, a
    db $10
    rst $38
    and c
    ld e, a
    or b
    ld e, a
    jp nc, $927f

    ld l, a
    add d
    ld a, a
    add c
    ld a, a
    and b
    ld a, a
    ret nz

    ld a, a
    and c
    ld a, a
    pop af
    rra
    jp hl


    ld e, $cc
    dec sp
    push af
    ccf
    db $76
    call Call_05f_7fb2
    db $ec
    rra
    or h
    ld e, a
    xor e
    rst $30
    or $1f
    cp l
    ld d, [hl]
    cp e
    ld c, a
    ld l, l
    sub a
    ei
    inc b

Jump_05f_7dfc:
    sub $29
    ld a, d
    add l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
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
    nop
    rst $38
    nop
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
    adc a
    nop
    and l
    ld [bc], a
    ld b, d
    push bc

jr_05f_7e33:
    inc b
    adc h
    dec c

jr_05f_7e36:
    ccf
    ccf
    ld a, [hl]
    cp $bf
    ld a, a
    sbc $1e
    ld [hl], h
    add h
    rst $30
    inc e
    db $eb
    ld e, $f8
    rra
    ldh a, [$3f]
    dec hl
    rst $38
    add a
    rst $38
    ld [bc], a
    rst $38
    rrca
    ld sp, hl
    ld b, [hl]
    ei
    jr nz, jr_05f_7e33

    ld [hl+], a

jr_05f_7e55:
    db $dd
    ld h, c
    sbc a
    ld b, b
    cp a
    rst $20
    ld hl, sp-$71
    ldh a, [rTAC]
    ld hl, sp-$5b
    ld e, h
    dec sp
    call nz, Call_000_0cf3
    ld sp, hl
    ld b, $2d
    jp nc, $f807

    rlca
    ld hl, sp+$0f
    ldh a, [$ae]
    ld b, b
    ld d, e
    jr nz, @+$55

    jr nz, jr_05f_7eea

    jr nz, jr_05f_7e36

    ld b, e
    db $fd
    inc bc
    adc $01
    adc b
    rlca
    ld c, l
    add a
    inc c
    rst $00
    jr c, jr_05f_7e55

    adc [hl]
    pop af
    cp c
    ld h, b
    cp l
    nop
    sub a
    ld [$0cc3], sp
    adc h
    nop
    add b
    nop
    stop
    jr nz, jr_05f_7e98

jr_05f_7e98:
    rrca
    rrca
    rst $38
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    db $f4
    ld e, e
    ld bc, $0dff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $00ff
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
    add b
    rst $38
    ldh [rIE], a
    ld d, b
    rst $38
    inc h
    rst $38
    sub b
    ld a, a
    db $e4
    ccf
    ld d, l
    rst $28

jr_05f_7eea:
    ld e, d
    rst $28
    adc c
    rst $38
    add h
    ld a, a
    add [hl]
    rst $38
    xor e
    ld a, a
    db $ed
    rst $30
    ld l, e
    cp $9e
    ld [hl], l
    cp a
    ld c, b
    sbc a
    ld [hl], b
    jp c, $7f25

    add b
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
    rst $28
    db $10
    rst $38
    nop
    nop
    cp a
    db $10
    push af
    add b
    ld b, b
    ld h, e
    ld a, h
    sub c
    sub d
    ld b, c
    or b
    ld b, d
    ld b, l
    and e

jr_05f_7f1f:
    xor b
    and c
    ld b, c
    di
    inc bc
    ldh [rNR23], a
    reti


    reti


    db $fd
    db $fc
    rst $38
    ld sp, hl
    rst $28
    pop hl
    ld e, a
    ld b, c
    ld a, [c]
    rrca
    ld d, b
    cpl
    sub b
    ld l, a
    jr jr_05f_7f1f

    ld c, b
    rst $38
    nop
    rst $38
    ret z

Jump_05f_7f3d:
    scf
    jp $e13f


    ld a, $80
    ld a, a
    ld e, h
    and e
    scf
    ret z

    dec de
    db $e4
    inc de
    db $ec
    ld b, d
    dec a
    pop bc
    ccf
    sbc a
    ld h, b
    pop bc
    ld a, $fb
    inc c
    db $f4
    rrca
    rlca
    rst $38
    db $d3
    ld hl, sp-$37
    ld hl, sp-$75
    ld hl, sp+$0c
    di
    dec c
    di
    ld a, [bc]
    db $f4
    rrca
    ldh a, [$f8]
    nop
    inc e
    nop
    dec [hl]
    rra
    or [hl]
    add hl, bc
    ld [$0800], sp
    nop
    add hl, bc
    nop
    rrca
    rlca
    rst $38
    rst $38
    ld hl, sp-$01
    inc bc
    rst $38
    rst $38

Jump_05f_7f7f:
    rst $38
    rlca
    rst $38
    dec de
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld a, $ff
    cpl
    rst $38
    add hl, de
    rst $38
    add d
    rst $38

Call_05f_7fb2:
    ld bc, $00ff
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
    rst $38
    ld e, b
    rst $38
    ld b, d
    rst $38
    ld d, b
    rst $38
    ld bc, $92ff
    rst $38
    and [hl]
    db $fd
    dec bc
    db $fc
    ld l, c
    cp $95
    ei
    ld e, c
    cp [hl]
    xor l
    ld e, d
    ld l, l
    or d
    cp a
    ld d, b
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    scf
    ldh [rIF], a
    call z, Call_000_0420
    ld [$b242], sp
