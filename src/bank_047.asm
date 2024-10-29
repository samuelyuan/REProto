SECTION "ROM Bank $047", ROMX[$4000], BANK[$47]

    sbc a
    rst $38
    cp b
    ld a, a
    scf
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
    rra
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cpl
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01

jr_047_4032:
    cp l
    rst $38
    rra
    rst $38
    ld e, $fc
    jr nc, jr_047_4032

    ld a, h
    ldh [$f8], a
    ret nz

    rst $28
    ldh a, [$f7]
    ei
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    pop af

jr_047_404d:
    rst $38
    rst $38
    cp $f8
    ld hl, sp-$1f
    ldh a, [$e1]
    ret nz

    jp nz, Jump_000_1e80

    nop
    sub l
    ld h, b
    sbc [hl]
    pop hl
    call c, $f2e0
    ld sp, hl
    ld [c], a
    push af
    push de
    jp z, $90aa

    dec de
    ld h, b
    ld e, h
    and e
    jr nz, jr_047_404d

    inc b
    rst $38
    ld e, e
    ld a, $f5
    db $f4
    ld c, l
    ret z

    and d
    sub b
    rst $20
    ld b, b
    res 2, h
    or a
    ld c, c
    sbc c
    daa
    inc l
    ld b, [hl]
    and d
    ld e, b
    or $18
    and l
    ld e, b
    db $e3
    inc de
    rst $10
    daa
    ld c, $cf
    sbc l
    sbc h
    ld [hl-], a
    ld a, h
    ld l, d
    db $f4
    and $d9
    sub l
    ld a, [$f04f]
    pop hl
    sbc b
    add hl, bc
    ld [hl-], a
    dec l
    scf
    ld l, b
    rst $18
    cp $9f
    cp a
    ld e, $bf
    ld a, l
    xor a
    ld a, e
    rla
    rst $38
    sbc a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $fd
    rst $30
    rst $30
    rst $38
    ld a, a
    cp $fc
    cp $66
    ld hl, sp+$6a
    pop af
    ld a, h
    db $e3
    ld a, [hl]
    pop hl
    ld l, [hl]
    pop af
    ld l, d
    push af
    ld h, d
    db $fd
    rst $28
    ld [hl], b
    xor $71
    db $ed
    ld [hl], b
    ld l, [hl]
    pop af
    xor a
    ld [hl], b
    xor l
    ld [hl], b
    inc h
    di
    and [hl]
    ld a, b
    inc h
    ldh a, [$fd]
    ld h, $3f
    ccf
    inc e
    ccf
    and a
    ld b, a
    ld l, a
    rra
    rra

jr_047_40eb:
    rst $08
    and c
    jp $f0e8


    jp z, Jump_047_7cfc

    cp c
    ld [$c0ff], sp
    di
    ldh a, [$f8]
    ld a, [$fcfc]
    ld sp, hl
    db $fd
    cp $7e
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
    db $fc
    rst $38
    ld hl, sp-$09
    cp $ff
    db $fc
    rst $38
    db $fc
    ei
    ldh a, [rIE]
    rst $38
    rst $38
    push bc
    db $fc
    sbc d

jr_047_411d:
    db $fd
    push af
    ld a, [$fdf9]
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    rst $38
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
    ld c, c
    sbc a
    xor [hl]
    rlca
    ld [hl], e
    inc c
    sbc $30
    cp a
    ld h, b
    ld [c], a
    db $fd
    ld [hl], e
    rst $38
    xor [hl]
    rst $38
    call z, $92fe
    ld sp, hl
    add sp, -$09
    ret nz

    rst $20
    db $10
    db $fd
    inc d
    ld sp, hl
    push de
    add hl, hl
    sbc [hl]
    ld h, [hl]
    db $ec
    jr jr_047_40eb

    jr c, jr_047_411d

    ld a, [hl-]
    ld [c], a
    call c, $304f
    or b
    dec e
    sbc h
    rrca
    adc l
    rlca
    ld h, d
    rrca
    call z, $8a2c
    ld d, b
    ld b, c
    or b
    ld [hl], d
    pop bc
    xor l
    jp nz, Jump_000_009f

    cp a
    nop
    ld e, $21
    call nc, $cb22
    inc b
    adc a
    inc bc
    ld b, [hl]
    add a
    xor h
    ld c, $9c
    jr @+$7a

    jr nc, jr_047_4201

    ldh [$fc], a
    jp nz, $f48b

    reti


    inc h
    sbc d
    ld l, l
    push de
    ld a, $ab
    ld [hl], h
    db $eb
    call nc, $8e71
    sbc l
    ld h, e
    ld [hl], e
    or a
    ld a, a
    rst $20
    adc a
    rst $08
    ld e, [hl]
    sbc a
    db $fc
    ccf
    ei
    ld a, a
    rst $38
    rst $38
    db $fd
    cp $ea
    rst $38
    cp $f7
    jp c, $ecff

    rst $18
    sbc [hl]

jr_047_41b1:
    ld a, [$c5b8]
    di
    ld l, c
    ld d, e
    db $e3
    ld h, c
    rst $08
    sbc a
    rrca
    scf
    ccf
    ld b, a
    ld a, a
    sub c
    ld a, [hl]
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    ld c, c
    rst $38
    and c
    sbc $80
    rst $38

jr_047_41ce:
    ld a, [bc]
    push af
    ret c

    nop
    ld e, h
    and b
    push de
    jr z, jr_047_41b1

    inc h
    db $fc
    nop
    add [hl]
    ld bc, $0f17
    xor e
    ld e, h
    pop hl
    ld [bc], a
    ld hl, sp-$80
    inc l
    ret nc

    jr jr_047_41ce

    db $ec
    di
    sbc b
    rst $30
    add d
    rst $38
    jr nz, @+$01

    ld [$421f], sp
    add l
    jr nz, jr_047_4206

    ld c, b
    sub h
    ld [hl], b
    add c
    ld [$4210], sp
    add h
    ld b, b
    jr nz, jr_047_4249

jr_047_4201:
    sub b
    or b
    jp nz, $e0d8

jr_047_4206:
    db $f4
    ld hl, sp-$1f
    cp $7f
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    sbc a
    ld a, a
    inc c
    rst $38
    inc de
    ldh a, [$2a]
    push hl
    add c
    rst $38
    dec b
    cp $09
    db $fc
    scf
    ld hl, sp-$39
    ld hl, sp-$6d
    db $fc
    rst $00
    rst $38
    adc a
    rst $38
    jr c, @+$01

    pop af
    xor $fd
    adc e
    rrca
    rlca
    inc b
    ld c, $0c
    add hl, de
    ld e, [hl]
    scf
    ld l, a
    rst $00
    xor a
    add a
    add e
    ld h, e
    ld bc, $06e9
    rst $38
    inc c

jr_047_4249:
    adc $31
    or b
    ld [hl], c
    ld a, b
    ld sp, hl
    call c, $fe05
    nop
    or d
    add hl, hl
    add a
    ld b, a
    cpl
    ld c, $bf
    inc e
    rst $38
    jr c, @+$01

    di
    rst $38
    db $ec
    di
    push de
    xor $f4
    ld hl, sp-$0c
    ld a, c
    ld a, d
    dec a
    cp $0f
    rst $18
    rlca
    xor a
    ld b, $1c
    rst $28
    ld a, c
    sbc [hl]
    di
    inc a
    ld l, [hl]
    pop af
    sbc h
    db $e3
    ccf
    ret nz

    scf
    ret z

    ld l, [hl]
    sub c
    sbc b
    ld h, a
    and c
    ld e, [hl]
    ld c, d
    or l
    ld bc, $8bff
    ld [hl], a
    ld b, $ff
    ld c, [hl]
    cp l
    cp b
    ld e, a
    or c
    ld a, [hl-]
    or $69
    adc $f3
    call c, $deef
    rst $38
    rst $38
    cp e
    ld a, [$f6f7]
    ld l, a
    ld c, h
    db $fc
    adc c
    db $fc
    inc [hl]
    ret


    or c
    rst $20
    rst $00
    ld h, a
    ld l, a
    adc e
    rra
    cp a
    rra
    ld a, a
    ld a, $ff
    ld a, [hl]
    db $fd
    db $fc
    ld sp, hl
    cp $f3
    ld [c], a
    rst $30
    push af
    adc $b4
    db $db
    ld hl, $04ff
    ei
    ld [hl+], a
    db $fd
    call nz, Call_047_507f
    rst $38
    jr nc, @+$01

    ld [hl], $ff
    ld l, e
    db $f4
    jr c, @-$37

    ld a, $05
    jr nc, jr_047_42d4

jr_047_42d4:
    pop bc
    nop
    dec bc
    rlca
    ld c, a
    ccf
    ld a, a
    rst $38

jr_047_42dc:
    ldh a, [rIE]
    nop
    rst $38
    xor $21
    cp l
    ld h, d
    add d
    inc c
    jp nz, Jump_047_5001

    add b
    jr z, jr_047_42dc

    ld h, e
    db $fc
    ld h, b
    rst $38
    adc d
    dec [hl]
    dec b
    ld [c], a
    ret z

    ldh a, [$79]
    ld a, [hl]
    ld h, a
    ld c, a
    jr nz, jr_047_42fc

jr_047_42fc:
    nop
    nop
    nop
    nop
    ld hl, $a040
    ld d, b
    cp $40
    rra
    nop
    adc [hl]
    nop
    inc bc
    ret nz

    ldh a, [$e0]
    db $f4
    ld hl, sp-$02
    db $fc
    ld hl, sp-$01
    add sp, -$09
    ret nz

    rst $38
    ld hl, $0fff
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rra
    cp a
    rlca
    rra
    rlca
    rrca
    db $10
    ccf
    jr nz, jr_047_43a7

    ld sp, hl
    rst $18
    ld [hl], a
    rst $38
    add h
    db $fc
    ld [hl], h
    ei
    ld a, b
    rst $20
    cp a
    call Call_000_3fff
    db $e3
    rst $38
    xor $f4
    db $fc
    add sp, -$08
    ld hl, sp-$1f
    db $f4
    push hl
    ldh a, [$67]
    ldh a, [rTAC]
    jr nz, @+$7f

    inc bc
    ei
    rlca
    cp $0f
    db $fc
    rra
    rla
    jr c, jr_047_43d2

    ld h, b
    xor d
    ret nz

    ld l, h
    add b
    add sp, $10
    ld d, b
    and b
    ld bc, $c3c1
    inc bc
    rst $10
    ld c, $af
    inc e
    sbc a
    ld a, b
    ld a, $f0
    ld a, a
    ldh [$b3], a
    call nz, $a05f
    cp [hl]
    ld b, c
    db $ed
    ld [de], a

jr_047_4372:
    rst $18
    jr nz, @-$21

    ld [hl+], a
    pop hl
    rra
    rst $38
    inc bc
    daa
    ld e, [hl]
    sbc h
    ld l, a
    db $db
    inc a
    rst $38
    jr nc, jr_047_4372

    ld [hl], b
    rst $08
    ldh a, [$9f]
    ldh [$8d], a
    ld a, [c]
    rlca
    ld hl, sp+$0f
    ldh a, [$08]
    rst $30
    xor $10
    sbc h
    ld b, b
    inc e
    ret nz

    ld l, e
    sub c
    inc hl
    adc a
    rra
    rst $00
    ld c, a
    adc [hl]
    ld e, $0c
    inc a
    ld a, h
    dec sp
    ld hl, sp+$70
    ldh a, [$e6]

jr_047_43a7:
    pop af
    call $ace0
    ret nc

    ld c, c
    or c
    dec c
    ld h, e
    dec bc
    rst $20
    jr jr_047_4403

    add hl, de
    ld e, $bd
    ld a, $7c
    ld a, a
    ld hl, sp+$7f
    db $fd
    di
    di
    rst $30
    adc a
    ld a, b
    ld a, [de]
    rst $38
    ld hl, $47fe
    cp b
    push bc
    ld a, d
    ld b, b
    rst $38
    ld de, $e0fe
    ld a, b
    ld b, l
    inc bc

jr_047_43d2:
    cpl
    rra
    ld a, a
    rst $38
    ld a, [$edfc]
    ldh a, [$cd]
    and b
    db $10
    rst $28
    ld a, h
    add e
    dec e
    ret nz

    ld c, $f0
    dec b
    xor a
    nop
    rst $28
    ld b, b
    pop af
    nop
    inc e
    ld [bc], a
    inc bc
    add c
    pop bc
    add hl, hl
    ret nc

    ld [de], a
    rst $28
    ld d, c
    xor [hl]
    call Call_047_7b32
    add h
    adc h
    pop af
    ld c, [hl]
    ld sp, $0e11
    ld bc, $c09b

jr_047_4403:
    inc sp
    ld [hl], d
    inc b
    ldh a, [$86]
    ld [de], a
    ld h, a
    ld c, $7f
    ld [bc], a
    rlc b
    ld sp, $0000
    nop
    add b
    ld h, b
    call nz, $c4fc
    db $ed
    ld a, [c]

jr_047_441a:
    db $fc
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    cp $fe
    ld hl, sp-$08

jr_047_4426:
    ldh a, [$f0]
    ldh a, [$e0]
    sub h
    ld hl, sp+$05
    ld a, $34
    adc $0b
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$80], a
    ret nz

    or c
    nop
    sbc c
    nop
    inc hl
    nop
    add l
    ld [bc], a
    di
    inc c
    sbc a
    ld [hl], b
    rst $38
    jr nz, jr_047_4426

    ldh [$df], a
    ldh [$cf], a
    ldh a, [$9f]
    ldh [$8e], a
    pop af
    inc d
    db $e3
    inc a
    add $eb
    sbc h
    rst $10
    cp b
    or a
    ld a, b
    db $dd
    cp $96
    rst $28
    dec hl
    rst $00
    ld a, a
    add c
    ld a, [hl]
    add c
    jp nz, Jump_000_053d

    ei
    ld bc, $06ff
    rst $38
    ld c, h
    cp a
    inc e
    ei
    swap b
    sbc a
    ld h, b
    ccf
    ret nz

    xor a
    ret nc

    rst $18
    jr nz, jr_047_441a

    ld h, b
    ld a, e
    add b
    ld e, $e0
    ld a, h
    add b
    rst $30

jr_047_4483:
    ld [$11eb], sp
    ld e, l
    and e
    sbc d
    ld h, a
    rst $30
    ld c, $6e
    sbc l
    db $db
    inc a
    ld sp, $7170
    ldh [$e1], a
    ret nz

    call z, $d480
    add b
    cp e
    nop
    inc d
    ld b, c
    jp $e52c


    ld a, [de]
    adc d
    ld [hl], c
    ld e, [hl]
    ld sp, $3778
    ld a, e
    daa
    db $76

jr_047_44ab:
    rst $08
    sub l
    rst $28
    dec hl
    rst $18
    rra
    rst $18
    ld a, a
    ccf
    cp a
    ld a, a
    ld e, a
    rst $38
    sbc a
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $20
    rst $38
    db $db
    ld [hl], h
    jr jr_047_44ab

    ld [hl], h
    ld [$20db], sp
    daa
    ret nz

    ld hl, sp+$07
    ld h, a
    rra
    ld a, a
    rst $38
    rst $38
    db $fc
    db $e4
    ld hl, sp+$1d
    ldh [$67], a
    jr @-$3f

    ld b, b
    ld e, l
    and d
    ld [$00f2], sp
    db $fd
    stop
    ld [hl], d
    add b
    add h
    sbc d
    add d
    ld d, $37
    ld c, $05
    ld [bc], a
    dec bc
    inc b
    ld a, [bc]
    inc d
    add $0f
    inc de
    adc a
    ld [hl-], a
    call $f818
    ldh [rNR23], a
    ld c, d
    sub b
    ret nc

    jr nc, jr_047_4483

    ldh a, [$b6]
    ret nc

    add c
    ld [hl], b
    inc h
    db $10
    ret nz

    nop
    ret c

    nop
    ld h, [hl]
    add b
    ld h, c
    add b
    jr nz, jr_047_4550

    ccf
    nop
    add l
    ld [bc], a
    ldh [$03], a
    adc d
    inc sp
    ld h, d
    add a
    ld h, d
    jp $f029


    ld [hl], d
    call z, $a110
    ld c, c
    inc sp
    ld b, h
    ccf
    dec c
    ld e, $3f
    rra
    dec bc
    rra
    dec bc
    rlca
    inc bc
    inc bc
    ld l, a
    rst $38
    dec e
    rst $38
    cp d
    rst $38
    ld hl, sp-$09
    ldh [rIE], a
    xor b
    rst $10
    ld [hl], h
    adc e
    cp [hl]
    nop
    ld e, b
    ld bc, $0320
    ret nz

    ld b, $84
    ld [$100f], sp
    ld b, c
    jr nz, jr_047_4554

    ret nz

    inc de
    add b

jr_047_4550:
    dec c
    ld [bc], a
    cpl
    nop

jr_047_4554:
    rst $18
    nop
    cp [hl]
    ld b, c
    ld a, l
    inc bc
    ld a, [$fc07]
    rrca
    ld hl, sp-$61
    adc e
    ldh a, [$d6]
    ld h, b
    xor a
    ld b, b
    ld c, a
    add b
    dec sp
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00

jr_047_4570:
    db $fc
    nop
    reti


    nop
    pop de
    inc bc
    and $03
    ld c, a
    add [hl]
    sbc e
    inc c
    dec a
    jr jr_047_45f3

    jr c, jr_047_4570

    ld [hl], b
    db $76
    ret nz

    xor l
    jp nz, $805f

    cp [hl]
    ld bc, $02fd
    sbc b
    ld h, a
    and b
    ld e, a
    jp c, $da04

    jr nz, jr_047_4606

    nop
    xor b
    ld b, c
    ld a, e
    add c
    ld h, e
    adc a
    ld h, a
    sbc a
    add $1f
    xor [hl]
    ld e, a
    ld e, h
    cp a
    ld a, [hl-]
    db $fd
    db $fc
    ld sp, hl
    ld a, l
    ld a, [c]
    ld [$e9f5], a
    rst $30
    ret


    rst $30
    ret nc

    rst $28
    xor [hl]
    rst $10
    sbc $ff
    ld [c], a
    rst $38
    ret nc

    rst $28
    ret c

    rst $38
    ret c

    rst $38
    or b
    rst $38
    db $f4
    ld [bc], a
    ld [$5f04], sp
    nop
    cp a
    inc bc
    ld e, a
    ccf
    ld a, h
    rst $38
    or a
    ret z

    ld b, e
    add b
    dec bc
    rst $30
    sub e
    ld a, a
    db $10
    rst $28
    rst $20
    jr jr_047_45f2

    and $e2
    dec e
    sbc [hl]
    pop hl
    ldh [$1f], a
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
    and b
    ld b, b

jr_047_45f2:
    ret c

jr_047_45f3:
    ldh [$7b], a
    db $fc
    ld c, a
    ccf
    dec c

jr_047_45f9:
    inc bc
    ld bc, $c000
    nop
    stop
    rrca
    nop
    ld h, b
    nop
    jr jr_047_4606

jr_047_4606:
    nop
    nop
    add c
    nop
    nop
    ld bc, $018a
    ld sp, $0703
    ld [bc], a
    inc bc
    nop
    ld b, c
    add d
    and c
    cp $85
    ld a, [$feb0]
    pop bc
    cp $a1
    ld a, [hl]
    inc b
    nop
    inc b
    ret z

    ld [bc], a
    db $e3
    call z, $5847
    jp z, $f0a4

    jp nz, $c1c9

    and d
    jp hl


    ld d, $f8
    dec b
    adc l
    ld [hl], e
    sbc c
    ld h, [hl]
    rst $38
    ld [$13bc], sp
    or $29
    rst $28
    ld b, b
    ld e, $81
    ld a, c
    ld b, $17
    ld [$0518], sp
    ld a, l
    inc bc
    ld l, a
    inc bc
    add a
    ld b, $3b
    inc c
    rla
    jr c, jr_047_467e

    ld [hl], b
    and a
    ld d, b
    ld c, l
    add b
    sbc b
    nop
    ld l, h
    nop
    ld e, a
    nop
    ld b, $00
    rst $18
    nop
    or e
    ld bc, $03f7
    ld a, [c]
    rlca
    ld d, a
    inc c
    adc c
    inc e
    rra
    jr nc, @+$7e

    inc hl
    ld c, a
    ldh [$dc], a
    add e
    jr jr_047_45f9

    db $e4
    dec bc
    ret c

    rlca
    or $09
    db $eb
    inc d

jr_047_467e:
    and $19
    rst $28
    ld de, $11ef
    ld sp, hl
    rlca
    db $eb
    rla
    db $e3
    rra
    db $76
    adc a
    ld a, l
    adc [hl]
    add sp, $1f
    dec sp
    dec a
    or b
    ld a, a
    ld [hl], c
    ld a, [hl]
    ldh [$fd], a
    ld [c], a
    db $fd
    adc c
    di
    dec b
    cp $27
    db $fc
    and d
    db $dd
    add b
    dec sp
    db $ec
    inc sp
    call nz, $703b
    dec c
    ld h, d
    dec e
    ret nz

    dec l
    dec b
    and e
    dec hl
    add e
    add hl, bc
    push af
    sub e
    ld e, a
    db $e3
    sbc a
    rst $30
    rrca
    ld c, a
    cp a
    xor a
    ld e, a
    ld a, l
    ld e, [hl]
    dec c
    inc bc
    call Call_047_7d3f
    cp $ed
    ld a, [c]
    sbc l
    ld [c], a
    db $ec
    inc de
    db $fd
    ld [bc], a
    ld l, [hl]
    sub c
    ld e, h
    and e
    or b
    ld c, a
    and l
    ld e, d
    ld a, [hl]
    ld bc, $817e
    or h
    dec bc
    ld l, b
    rla
    db $f4
    rrca
    ld a, h
    rst $38
    ld e, $ff
    adc a
    ld a, a
    cp $0f
    push hl
    rra
    and $1f
    and $1f
    inc b
    rst $38
    dec de
    inc b
    add hl, de
    ld b, $11
    ld c, $60
    sbc e
    pop af
    xor $b1
    ld c, [hl]
    ld h, c
    ld e, $e0
    rra
    ccf
    cp $1f
    db $ed
    rst $38
    ret c

    rst $38
    ret c

    dec [hl]
    ret z

    rst $38
    add c
    rst $30
    add e
    res 0, a
    ld b, l
    add d
    push bc
    ld [bc], a
    add h
    ld [bc], a
    adc [hl]
    nop
    adc $00
    ret


    inc b
    ld e, b
    add l
    ld [hl], d
    adc l
    ld bc, $0200
    ld bc, $020d
    dec bc
    and a
    ld h, $b7
    inc c
    rst $08
    dec de
    rra
    add hl, hl
    ccf
    ld c, d
    rst $30
    pop bc
    cp a
    and d
    ld a, a
    ld bc, $87fe
    ld a, c
    rst $08
    inc sp
    rst $28
    ld b, $fe
    dec c
    dec sp
    call c, Call_047_76b9
    ld l, b
    push af
    add b
    ei
    ld b, c
    cp [hl]
    and d
    ld e, l
    ret nc

    cpl
    or d
    ld c, h
    jp $f329


    inc bc
    daa
    sub a
    call $da2f
    dec e
    or [hl]
    add hl, sp
    ld l, [hl]
    ld [hl], c
    ld c, [hl]
    ld h, c
    sbc $e1
    db $f4
    adc e
    add hl, sp
    rst $00
    add b
    ld a, a
    add h
    ld a, a
    ld bc, $44fe
    cp a
    db $db
    ccf
    ld a, a
    ld a, a
    rst $38
    ccf
    xor a
    ld a, a
    xor a
    cp $ac
    ld a, a
    cp d
    inc a
    jr c, jr_047_47fb

    db $fd
    ld [hl], l
    ld l, [hl]
    di
    jp hl


    rst $10
    add b
    rst $38
    sub d
    rst $28
    add l
    ld a, a
    inc a
    ld a, a
    or b
    ld a, a
    sub b
    ld l, a
    db $e3
    sbc [hl]
    call nc, $872f
    ld a, a
    ld a, a
    add a
    rrca
    rst $38
    ld a, a
    cp a
    rst $38
    rra

jr_047_479e:
    adc a
    rst $38
    ccf
    rst $08
    ccf
    rst $38

jr_047_47a4:
    jr c, jr_047_4824

    jr c, jr_047_47a4

    inc a
    ldh a, [$39]
    ld a, [$f072]
    pop af
    ldh [$f0], a
    ldh [$cc], a
    ret nz

    ret


    jp nz, $c2c4

    rst $00
    ret nz

    ld b, l
    ret nz

    call $c5c0
    jp z, $e0df

    sbc a
    ldh [$5f], a
    jr nz, jr_047_4846

    nop
    ld [hl], a
    add b
    ld l, b
    add h
    db $fc
    nop
    ld a, b
    add b
    nop
    ld sp, hl
    ld [bc], a
    ret c

    ld [de], a
    ret z

    ld bc, $004a
    add h
    nop
    ld de, $0100

jr_047_47de:
    ld bc, $5015
    ld bc, $01a2
    jp nz, $8001

    inc bc
    push bc
    ld [bc], a
    push bc
    ld [bc], a
    pop hl
    ld b, $eb
    dec b
    db $db
    cpl
    jp nc, Jump_000_322f

    rst $08
    daa
    rst $18
    ld [hl], $df
    inc b

jr_047_47fb:
    cp $0c
    cp $8c
    ld a, h
    ld [$08fc], sp
    db $fc
    jr nc, jr_047_47de

    ldh a, [$98]
    ld e, b
    or b
    sub b
    jr nc, @-$66

    ld [hl], b
    rlca
    jr nz, jr_047_4852

    jr nz, @+$22

    ld b, b
    nop
    ret nz

    add b
    ld b, b
    ld b, b
    add b
    ld b, h
    add b
    jr nz, jr_047_479e

    ld [hl], $80
    add b
    nop
    ret nz

    nop

jr_047_4824:
    and d
    ret nz

    inc d
    ld hl, sp+$3d
    cp $d3
    rst $38
    and [hl]
    rst $38
    ld c, h
    rst $38
    sbc [hl]
    ld sp, hl
    ld sp, $e9fa
    db $76
    db $e4
    rst $38
    adc a
    pop af
    adc $32
    ret z

    inc [hl]
    sub d

Jump_047_483f:
    add hl, hl
    ld a, l
    jp $d723


    ld d, a
    xor a

jr_047_4846:
    dec e
    rst $08
    ld e, d
    sbc a
    jr c, jr_047_4883

    ld h, d
    ld a, a
    jp $afff


    rst $00

jr_047_4852:
    or d
    rst $08
    jp z, Jump_047_483f

    rra
    ld l, e
    inc e
    ld [$4f33], sp
    inc sp
    rrca

jr_047_485f:
    ld [hl], e
    or $5f
    ld e, a
    xor a
    ld c, [hl]
    sbc a
    ld e, [hl]
    cp a
    ld a, h
    rst $38
    ld a, d
    db $fd
    ld a, h
    rst $38
    ret z

    di
    push de
    adc d
    ld b, e
    cp a
    add h
    dec [hl]
    add hl, hl
    rst $38
    adc a
    ld a, a
    add hl, bc
    rst $38
    ld [hl], e
    cp a
    dec sp
    rst $38
    ld [hl], a
    rst $38
    rst $30

jr_047_4883:
    rst $38
    ld a, e
    rst $38
    rst $38
    ld a, a
    rst $18
    rst $38
    ld a, [hl]
    cp $3c
    cp $7c
    db $fc
    call c, $b8f8
    ld sp, hl
    ld a, [c]
    or c
    ld [hl], c
    pop hl
    db $ed
    ld [c], a
    add b
    add $cd
    sub l
    add [hl]
    sbc a
    sub c
    dec sp
    or d
    ret


    dec c
    ld [hl], b
    cp d
    ld [hl], b
    ld a, b
    cp [hl]
    rst $20
    cp h
    and d
    ld e, l
    jp z, Jump_047_4905

    sub [hl]
    dec l
    add $a7

jr_047_48b5:
    ld c, b
    add l
    ld b, b
    ld c, b
    add b
    adc c
    nop
    ld a, $01
    ld b, c

jr_047_48bf:
    inc bc
    ldh a, [rIF]
    sub d
    ld c, a
    rl [hl]
    ld sp, hl
    ld b, $ff
    inc b
    cp a
    inc b
    ld d, e
    inc l
    ei
    inc c
    db $ec
    jr jr_047_48bf

    jr jr_047_48b5

    jr jr_047_485f

    ld [hl], b
    add b
    ld [hl], b
    nop
    ldh a, [$36]
    ld hl, sp+$08
    rst $30
    sub $e1
    db $ec
    ret nz

    ldh [$c0], a
    and b
    ret nz

    add b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    jr nc, jr_047_48f2

jr_047_48f2:
    nop
    nop
    nop
    nop
    ret nz

    nop
    sbc h
    ld h, b
    ld d, $09
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_047_4905:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_047_48f2

    ld l, e
    inc d
    inc c
    inc bc
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
    ld b, b
    nop
    ldh a, [rP1]
    xor l
    nop
    ldh a, [rP1]
    rst $38
    add b
    xor $f0
    db $fd
    cp $c3
    ld b, a
    rst $08
    ld b, [hl]
    adc a
    rst $08
    rra
    sbc a
    ld e, $3d
    inc a
    ld a, a
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $30
    ld l, a
    rst $38
    rst $30
    ld a, a
    db $d3
    ld [hl], a
    add a
    ld a, a
    ld l, a
    sbc a
    ld l, $de
    rra
    call c, Call_047_7fb8
    or $ff
    ld [hl], e
    cp $e0
    rst $38
    jp z, $95f3

    cp $e9
    ld a, a
    ld a, b
    rst $30
    add sp, $56
    db $10
    db $ec
    inc sp
    ld e, h
    ld [hl+], a
    rst $38
    and d
    rst $30
    add a

jr_047_496d:
    rst $00
    sub a
    ld c, a
    rra
    rst $28
    ld c, a
    cp a
    ld e, h
    cp [hl]
    ld a, a
    ld a, h
    ld sp, hl
    cp $fc
    rst $38
    rst $30
    rst $38
    push hl
    ld a, [$e4eb]
    jp z, $82d5

    db $dd
    xor [hl]
    sub c
    ld b, $13
    inc de
    daa
    rlca
    ld a, c
    ld e, a
    cp c
    sbc [hl]
    db $fd
    push af
    xor d
    sbc $ad
    reti


    ccf
    dec a
    rst $38
    ld c, [hl]
    cp c
    dec e
    ld [$659f], a
    scf
    push bc
    sbc a
    ld h, c
    cp a
    ld b, e
    adc e
    rla
    rra
    and a
    ld a, $cf
    ld e, a
    xor [hl]
    db $fd
    inc e
    cp $18
    ld a, c
    jr jr_047_496d

    ld [hl], e
    db $fd
    ld h, e
    ld a, b
    pop hl
    rst $30
    ldh [$c8], a
    rst $20

jr_047_49be:
    ret z

    add a
    rst $38
    pop de
    ld [hl], d
    add c
    ld a, [c]
    nop
    ei
    nop
    rst $38
    nop
    sbc a
    nop
    rst $18
    nop
    rla
    nop
    rra
    nop
    ld b, a
    nop
    rst $08
    nop
    rst $18
    nop
    ld bc, $0800
    nop
    adc b
    nop
    adc b
    ldh a, [$7f]
    cp $37
    rrca
    ld bc, $0002
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop

jr_047_49f0:
    ld [$0000], sp
    nop
    nop
    nop
    stop
    nop
    nop
    add b
    nop
    jr nc, jr_047_49be

    pop bc
    ld a, $08
    rlca
    ld bc, $0000
    nop
    add b
    nop
    add b
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld h, $00
    nop
    nop
    ret nz

    nop
    inc [hl]
    ret nz

    ld b, [hl]
    jr c, jr_047_4a23

    rlca
    ld [hl+], a
    ld bc, $0009
    ld bc, $0000

jr_047_4a23:
    nop
    inc bc
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    or b
    nop
    jr c, jr_047_49f0

    jr jr_047_4a32

jr_047_4a32:
    add $e0
    ldh a, [$f8]
    db $fc
    cp $ff
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    add hl, de
    rst $38
    rst $38
    di
    rst $20
    rst $28
    rst $20
    rst $08
    add d
    db $db
    adc e
    cp a
    rra
    rst $38
    rrca
    ld a, a
    sub a
    ld a, a
    db $db
    ccf
    dec l
    ld a, a
    ld a, l
    rst $28
    daa
    rst $38
    daa
    rst $38
    ld a, $ff
    ld c, [hl]
    rst $18
    cp $7f
    ld a, l
    ld a, l
    jr c, jr_047_4aa0

    ld a, l
    ld hl, sp+$7c
    ldh a, [$e2]
    db $fc
    ldh a, [$c0]
    ret nc

    and $c4
    adc d
    ld a, [bc]
    sbc b
    ld b, $14
    jr nz, @+$25

    push af
    jr nz, jr_047_4a89

    pop bc
    inc hl
    add l
    inc hl
    add h
    dec l
    add d
    add e
    ld h, [hl]
    add hl, sp
    rst $08
    or a
    rst $08
    ld h, a
    sbc a
    rla

jr_047_4a89:
    cp e
    ld d, $df
    rst $30
    rst $28
    ld a, [hl]
    rst $28
    ld a, a
    ld a, h
    ld e, a
    db $fc
    rst $38
    db $fc
    cp e
    db $fc
    ldh a, [rIE]
    ld [$ecfd], a
    ei
    and $f3

jr_047_4aa0:
    ldh a, [$cb]
    db $ed
    sbc c
    ld e, l
    cp c
    cp b
    cp [hl]
    ld h, h
    cp c
    reti


    ld h, b
    ld [hl], c
    pop hl
    pop hl
    ld h, e
    ld c, c
    ld b, l
    db $db
    rst $18
    db $eb
    rst $00
    adc a
    ld h, [hl]
    cpl
    ld b, [hl]
    cp $06
    ld a, [hl]
    adc h
    add l
    cp l
    db $d3
    db $ec
    ccf
    rst $38
    db $fc
    inc bc
    ld b, h
    nop
    cp a
    nop
    rst $38
    nop
    sbc a
    nop
    xor a
    nop
    sub b
    nop
    cp h
    nop
    ld de, $4f00
    nop
    adc a
    nop
    ld a, a
    nop
    ld d, l
    nop
    rla
    nop
    ret


    nop
    call z, $3cf0
    rst $38
    db $e3
    rra
    ld b, $01
    ld [hl], b
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld [bc], a
    nop
    jr nz, jr_047_4af4

jr_047_4af4:
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    ld b, b
    add b
    ld b, $f8
    ld hl, $061e
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [$8000], sp
    nop
    and c
    nop
    dec d
    nop
    inc bc
    nop
    add a
    nop
    call $cc00
    or b
    ei
    ld e, h
    rst $38
    ld b, $f3
    nop
    ld b, b
    nop
    add b
    nop
    add [hl]
    nop
    inc b
    nop
    rrca
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld d, b
    jr nz, jr_047_4b6c

    call z, $f3e4
    ei
    db $fc
    rst $38
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
    cp $fb
    rst $38
    rst $30
    ld sp, hl
    rst $38
    rst $28
    rst $08
    rst $18
    res 7, l
    ret


    rst $38
    cp e
    ei
    scf
    cp a
    ld h, a
    or $6a
    ld e, e
    ld h, a
    dec de
    ld [hl], a
    jr c, jr_047_4b68

    ld l, h
    add hl, bc
    ld d, a
    add hl, bc

jr_047_4b68:
    rst $30
    dec bc
    ld h, e
    dec de

jr_047_4b6c:
    inc de
    rla
    cpl
    add [hl]
    ld a, [hl]
    inc c
    ld e, h
    cpl
    sbc l
    ld e, h
    reti


    ld e, h
    cp h
    jr c, @+$78

    jr c, jr_047_4bed

    ld h, a
    ld h, b
    cp $c5
    or $e4
    xor $9d
    and $c0
    ret nz

    ld b, b
    db $10
    ld de, $0080
    jr nc, @+$52

    ld hl, $0123
    sub l
    inc hl
    ld h, [hl]
    push hl
    sbc b
    rst $00
    ld h, b
    sbc a
    sbc e
    ld h, [hl]
    cp b
    ld a, [hl+]
    ld l, h
    ld hl, sp-$06
    ret nc

    cp b
    rst $10
    ld [hl], c
    xor h
    ld l, l
    db $fd
    ld l, a
    pop de
    db $eb
    ei
    rst $38
    di
    sub a
    rst $30
    or a
    sub a
    rst $28
    xor a
    rst $38
    ld l, a
    rst $28
    ld e, a
    ld a, a
    rst $18
    cp a
    rst $18
    cp a
    cp a
    ei
    ccf
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
    jr jr_047_4bf3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_047_4c03

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_047_4c13

    ld a, [hl+]
    dec hl
    inc l

jr_047_4bed:
    dec l
    ld l, $2f
    jr nc, jr_047_4c23

    ld [hl-], a

jr_047_4bf3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_047_4c33

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_047_4c03:
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

jr_047_4c13:
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
    ld d, b
    ld h, b
    ld h, c

jr_047_4c23:
    ld d, b
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
    ld l, l
    ld d, b
    ld d, b
    ld d, b

jr_047_4c33:
    ld d, b
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
    ld d, b
    ld d, b
    ld d, b
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
    ld d, b
    ld d, b
    ld d, b
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
    ld d, b
    ld d, b
    ld d, b
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    ld d, b
    cp h
    cp l
    cp [hl]
    cp a
    ld d, b
    ld d, b
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ld d, b
    ret


    jp z, $cccb

    ld d, b
    ld d, b
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_047_5050

    db $db
    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, $50
    ld d, b
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $50
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    ld d, b
    rst $30
    ld hl, sp+$50
    ld sp, hl
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    ld b, $03
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    ld b, $03
    inc bc
    ld b, $00
    ld [bc], a
    inc bc
    nop
    nop
    ld b, $03
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    ld b, $06
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld b, $06
    inc bc
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
    ld b, $00
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
    ld [bc], a
    nop
    nop
    ld b, $00
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
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
    ld b, $06
    ld b, $06
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    ld [bc], a
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    dec b
    dec b
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
    dec b
    ld bc, $0105
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    dec b
    dec b
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
    dec b
    inc b
    inc b
    inc b
    inc b
    dec b
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
    dec b
    inc b
    inc b
    inc b
    dec b
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
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
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
    ld b, $06
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    rrca
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rst $38
    inc de
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    ld [hl], a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    ld b, d
    rst $38
    jp nz, $e3ff

    ld a, a
    ccf
    rra
    rrca
    ld h, a
    inc bc
    ld bc, $c000
    ld b, b
    jr @+$12

jr_047_4e60:
    jp hl


    ld b, $fe
    inc bc
    rst $38
    ld [bc], a
    cp $02
    ei
    ld [bc], a
    ld a, e
    add d
    call Call_000_1b32
    ld b, $35
    dec bc
    ld [hl], e
    inc c
    cp [hl]
    ld bc, $03f8
    ld l, l
    add b
    scf
    add sp, -$0e
    rrca
    ld e, a
    jr nz, jr_047_4e60

    jr nz, jr_047_4eb2

    ret nc

    ld d, c
    cp [hl]
    db $eb
    cp h
    ld sp, hl
    cp $0f
    cp a
    sub b
    ld c, a
    nop
    scf
    add b
    ld a, a
    ld h, d
    xor a
    and d
    rst $38
    cp $ff
    cp a
    rst $38
    dec de
    db $eb
    ld l, a
    add b
    cp $01
    jr nz, jr_047_4ea2

jr_047_4ea2:
    nop
    nop
    adc b
    nop
    ld a, h
    add d
    ccf
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    cp $01

jr_047_4eb2:
    cp $01
    inc bc
    cp $5f
    rst $38
    call nz, $ee1b
    ld bc, $00df
    ret


    inc b
    cp $00
    db $e4
    ld a, [de]
    ccf
    rst $38
    ld bc, $2aff
    rst $38
    inc bc
    rst $38
    ld l, $fd
    adc b
    inc sp

jr_047_4ed0:
    jp Jump_000_103f


    rst $28
    push de
    ld [bc], a
    db $dd
    ld [bc], a
    db $fc
    inc bc
    ld a, l
    add d
    db $fd
    ld [bc], a
    di
    rrca
    ld hl, sp-$01
    nop
    cp a
    ret nz

    rra
    and c
    ld c, $0d
    jp nc, $11a6

    and a
    rra
    ld a, [$89fc]
    or [hl]
    add b
    ld a, e
    ld d, h
    or a
    ld e, [hl]
    rst $38
    dec e
    rst $38
    rra
    cp a
    ld hl, sp-$01
    ldh [$c7], a
    rst $10
    nop
    pop de
    ld c, $3c

jr_047_4f05:
    inc bc
    ld d, c
    cpl
    ld [c], a
    rra
    sbc c

jr_047_4f0b:
    ld a, [hl]
    ld b, e
    cp h
    and c
    ld e, [hl]
    ccf
    nop
    rst $38
    nop
    ld a, l
    ld [$00f6], sp
    call c, $e880
    nop
    nop
    nop
    jr jr_047_4f20

jr_047_4f20:
    ld sp, hl
    ld b, $fd
    nop
    jr jr_047_4f0b

    push af
    ld [bc], a
    db $dd
    nop
    ret nc

    jr nz, jr_047_4ed0

    nop
    ld a, [bc]
    inc b
    sub c
    ld a, d
    xor b
    ld d, a
    jr nc, jr_047_4f05

    add b
    ld [hl], a
    ld b, l
    ld a, [$e9d6]
    inc sp
    rr b
    rst $28
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
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
    sbc a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rrca
    rlca
    rst $10
    dec bc
    cp l
    jp nz, Jump_047_72ac

    ld h, b
    ld e, $1c
    inc bc
    rst $20
    nop
    call c, $f320
    nop
    jp z, $b0f4

    ld a, l
    cp a
    ld c, a
    sub e

jr_047_4f77:
    cpl
    ld hl, $f8de
    ld [bc], a
    ld a, [hl]
    nop
    ld l, e
    ldh a, [$6c]
    rra
    db $fd
    inc bc
    rst $28
    nop
    cp b
    ld b, $60
    adc a
    sbc b
    pop hl
    ld sp, hl
    rst $38
    rrca
    ld a, a
    add b
    rst $30
    nop
    or $80
    db $fd
    nop
    rst $38
    cp b
    rst $38
    cp $ff
    db $d3
    rlca
    rst $38
    nop
    ld c, b
    nop
    ld [$0800], sp
    nop
    add b
    nop
    ld sp, hl
    inc b
    ld b, h
    ld bc, $0000
    nop
    nop
    ld b, b
    nop
    ld bc, $ef00
    ld b, h
    cp a
    cp a
    db $fd
    inc b
    inc sp
    nop
    jr nz, jr_047_4fbe

jr_047_4fbe:
    adc l
    nop
    rst $30
    ld [$ff0e], sp
    rst $38
    cp $42
    rst $38
    xor [hl]
    rst $38
    ld a, [hl+]
    rst $38
    ld [hl+], a
    ld c, a
    add d
    ld a, a
    ld hl, sp-$01
    cp $00
    ld b, $00
    ld [bc], a
    nop
    ld a, h
    nop
    rst $38
    nop
    rst $38
    rlca
    cp $e2
    adc [hl]
    ld a, e
    call nz, Call_047_547b
    db $ed
    ld l, [hl]
    ret nz

    ld a, e
    add a
    cp h
    ld a, a
    xor b
    pop bc
    jr nc, jr_047_4f77

    cp b
    rlca
    nop
    db $ed
    dec c
    db $d3
    rra
    cp a
    ld hl, sp-$01
    inc b
    rst $30
    nop
    rst $38
    ret nz

    db $fd
    nop

Jump_047_5001:
    nop
    ccf
    rlca
    ld a, l
    jr @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    db $fd
    nop
    ld d, b
    rst $28
    inc bc
    db $fc
    ccf
    ret nz

    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    ld a, [$d801]
    rlca
    ld e, c
    ld a, $2a
    rst $00
    and e
    inc c
    ld [hl], e
    ld [$423d], sp
    adc $10
    call c, $c520
    ld a, [$f30f]
    inc h
    rst $18
    rst $10
    ccf
    dec [hl]
    rst $38
    pop bc
    rst $38
    ld [bc], a
    rst $28
    ld [$f8fc], sp
    db $fc
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38

Jump_047_5050:
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
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
    ld a, a
    and e
    rra
    ld h, e
    rra
    add c
    rra
    inc bc
    rst $38
    ld b, e
    rra
    add c
    rra
    inc hl
    rra
    pop hl
    rra
    pop hl
    rra
    inc hl
    rst $18
    db $e3
    rra
    ld h, e
    rra
    ld b, e
    rra
    ld h, d

Call_047_507f:
    rra
    inc bc
    rra
    dec hl
    rst $10
    ld h, c
    rra
    ld h, c
    rra
    ld l, c
    rla
    jp hl


    rla
    jp hl


    rla
    ld hl, $a1df
    ld a, a
    db $e4
    dec de
    pop hl
    rra
    ld h, h
    dec de
    and l
    dec de
    pop hl
    rra
    ld [hl+], a
    rst $38
    ld h, c
    sbc a
    rst $30
    rra
    push de
    ccf
    push af
    rra
    rst $30
    rra
    db $fd
    sbc a
    ld a, l

jr_047_50ab:
    rst $38
    rst $30
    rra
    ld a, l
    rra
    dec e
    rst $38
    or l
    ld e, a
    dec a
    rst $18
    rst $38
    rst $38
    scf
    rst $38
    sub a
    ld a, a
    rst $10
    rra
    sub a
    rst $38
    rst $18
    rra
    rra

Jump_047_50c3:
    cp a
    cp a
    rra
    db $fd
    rra
    dec e
    rst $38
    ld e, l
    rst $38
    dec e
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    db $fd
    rra

jr_047_50d4:
    ld a, [$dd1f]
    ccf
    ccf
    rst $18
    add hl, de
    rst $38
    ld sp, hl
    rst $38
    add hl, de
    ld a, e
    sbc b
    ccf
    add hl, de
    rst $38
    ld e, c
    cp l
    ld a, h
    ld a, a
    db $fc
    rst $38
    jr jr_047_50ab

    jr @+$01

jr_047_50ee:
    jr nc, jr_047_50ee

    ld d, c
    ld a, [$fe31]
    pop af
    cp $d9
    ld a, [c]
    ld de, $11fa
    ld a, [$7e10]
    cp d
    ld a, a
    ldh [$fa], a
    or b
    rrca
    db $fd
    inc bc
    ld hl, sp+$07
    push hl
    ld a, [de]
    ld a, [$af04]
    nop
    rst $00
    nop
    rst $00
    jr c, jr_047_50d4

    ld a, $fe
    nop
    ei
    nop
    rst $20
    ld [$0b74], sp
    ld l, $df
    cpl
    ret c

    sbc a
    ld h, b
    ld a, $c9
    ld a, a
    add b
    sbc [hl]
    ld h, b
    dec [hl]
    ret nz

    ld [c], a
    rlca
    ld d, a
    ld [$305b], sp
    xor a
    ld d, e
    dec e
    and $0d
    db $fc
    dec hl
    ldh a, [$bd]
    jp $871b


    ld a, c
    ld c, $cf
    ld a, $3f
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    db $fc
    ld a, a
    db $fc
    ei
    cp $ff
    db $fc
    ei
    db $fc
    rst $38
    db $fc
    cp a
    db $fc
    cp a
    db $fc
    xor b
    db $fc
    xor [hl]
    db $fc
    db $dd
    ld hl, sp-$48
    db $fc
    xor b
    db $fc
    sbc d
    db $fc
    cp a
    db $fc
    cp a
    cp $ff
    cp $bf
    cp $bf
    rst $38
    sbc e
    db $fd
    adc b
    ld hl, sp-$6e
    db $fc
    add $bc
    add e
    db $fd
    and l
    ld hl, sp-$5f
    ld hl, sp-$0e
    ld hl, sp-$05
    ld hl, sp-$09
    ld sp, hl
    db $fc
    ld hl, sp-$06
    db $fc
    jp hl


    db $fc
    add sp, -$04
    rst $38
    cp $fb
    db $fc
    rst $38
    db $fc
    rst $28
    db $fc
    db $fd
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    db $eb
    rst $38
    rst $28
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $28
    db $fc
    rst $38
    db $fc
    rst $28
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    ld hl, sp-$04
    db $fd
    db $fc
    ld a, b
    db $fc
    ldh a, [$fc]
    or $fc
    rst $38
    cp $ff
    db $fc
    cp $fc
    ccf
    db $fc
    rra
    rst $38
    ccf
    db $fc
    ld a, h
    db $fc
    ld a, l
    db $fc
    ld a, h
    db $fc
    inc a
    db $fc
    ld a, a
    ld a, l
    cp a
    ld a, a
    inc a
    db $fc
    cp h
    ld a, h
    cp a
    ld a, h
    ccf
    db $fc
    ld a, $fd
    ld c, $fd
    ld a, [hl+]
    db $fc
    dec sp
    db $fc
    ld a, [hl+]
    db $fc
    ld c, h
    db $fc
    ld a, [bc]
    db $fc
    add d
    ld a, h
    ret nc

    ld l, h
    add e
    ld a, h
    ld b, a
    inc a
    inc c
    ld a, a
    cp h
    ld a, h

jr_047_51f2:
    cp l
    ld a, $d8
    ld a, $ce
    inc e
    call z, $9c1e
    ld e, $9c
    rra
    ccf
    ccf
    ld l, a
    rra
    dec sp
    rst $38
    xor a
    rst $38
    db $eb
    scf
    cpl
    sbc a
    swap [hl]
    ldh [rNR33], a
    jr z, @+$03

    jp nz, Jump_000_1105

    inc bc
    ld [hl], e
    rlca
    adc l
    ld e, $2a
    dec [hl]
    jr z, jr_047_51f2

    jr c, jr_047_521e

jr_047_521e:
    ld h, b
    daa
    ld b, c
    add d
    ld [$1907], sp
    ld d, $03
    dec h
    adc [hl]
    or a
    ld [$343d], sp
    ld [de], a
    ld c, d
    push hl
    dec bc
    add d
    ld b, $05
    inc e
    dec sp
    ld [hl], b
    and h
    ret z

    push bc
    rla
    xor e
    ld c, [hl]
    or [hl]
    ld [$ff3d], sp
    rst $38
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
    rra
    rst $38
    rlca
    rst $38
    dec hl
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    jr nz, @+$01

    inc c
    rst $38
    inc bc
    rst $38
    adc a
    rst $38
    rla
    rst $38
    add a
    rst $28
    jp Jump_047_73ff


    rst $38
    rra
    rrca
    rlca
    rst $00
    add c
    pop af

jr_047_5279:
    jr nz, jr_047_5279

    nop

jr_047_527c:
    rst $38
    ld [bc], a
    rst $38
    nop
    add c
    rst $38
    jr nz, @+$01

    ld b, h
    sbc a
    pop hl
    ld bc, $c034
    inc b
    ld a, [c]
    ld [c], a
    db $fd
    ld c, h
    cp a
    rst $30
    ld bc, $00ff
    rst $30
    nop
    rst $38
    ldh [rIE], a
    rrca
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $28
    rlca
    db $fd
    ld bc, $00ff
    ld bc, $f600
    ret nz

    cp a
    ld bc, $10e7
    dec sp
    inc b
    ld [hl], a
    nop
    add l
    ld h, b
    rst $20
    rst $38
    nop
    db $f4
    ld bc, $80a3
    rst $38
    rst $38
    nop
    rst $38
    ld l, [hl]
    ld c, e
    nop
    dec [hl]
    nop
    ld [bc], a
    nop
    add e
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    pop de
    ld [$2007], sp
    cp e
    nop
    pop hl
    ld c, $00
    ret c

    rst $38
    rst $38
    db $10
    ld b, [hl]
    jp nz, Jump_047_5e40

    add b
    ld a, a
    nop
    ld b, e
    xor b
    add l
    db $10
    ld bc, $a718
    ld [$9821], sp
    cp $ff
    add d
    ld l, a
    jr nz, jr_047_5334

    dec l
    ld d, d
    ld a, $00
    dec bc
    jr nz, jr_047_527c

    ld a, $02
    sbc h
    ldh [$fe], a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    sbc $ef
    dec e
    ei
    dec sp
    rst $00
    xor $1d
    di
    ld a, c

jr_047_5312:
    set 6, l
    add sp, -$69
    ld a, [hl+]
    jp Jump_000_2681


    inc c
    dec hl
    ld [hl], d
    xor l
    jp Jump_000_1e8f


    ld a, a
    dec d
    ld a, [$65fb]
    rst $20
    and $ff
    db $fd
    ld e, $b3
    ld h, h
    rst $00
    and a
    reti


    ld l, a
    sub a
    jr z, jr_047_5312

jr_047_5334:
    or d
    ld a, l
    ld [hl], b
    rst $28
    rst $00
    rst $38
    ld [hl+], a
    rst $38
    rrca
    db $ed
    ld l, c
    sbc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld c, a
    rst $38
    rlca
    di
    ld bc, $00f8
    ld hl, sp-$40
    ld hl, sp+$60
    rst $38
    ld b, b
    rst $38
    rst $00
    rst $38
    jp $f3ff


    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    ccf
    rla
    rst $38
    add c
    ld a, [bc]
    db $fd
    ld [$00ff], sp
    rst $38
    sub b
    rst $28
    jr nz, jr_047_53c9

    jr nz, @-$5f

    jr z, @-$67

    rla
    ret z

jr_047_5390:
    pop bc
    ret nz

    ld hl, sp+$30
    rst $38
    ld d, $ff
    db $10
    rst $38
    jr nc, @+$01

    ldh a, [rIE]
    inc bc
    ei
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld hl, sp-$01
    rst $00
    db $fd
    nop
    db $fd
    nop
    adc $00
    rst $38
    call nz, Call_000_037c
    scf
    nop
    or b
    ld bc, $00be
    ldh a, [rIE]
    jr jr_047_5390

    sbc b
    rst $30
    ld b, d
    db $dd
    ei
    inc de
    rst $38
    nop
    ld a, e
    nop
    rst $38
    nop
    ld a, e

jr_047_53c9:
    nop
    ld a, a
    rra
    rst $18
    ld bc, $ffff
    inc de
    rst $18
    and [hl]
    add hl, de
    ld a, e
    nop
    ld d, c
    nop
    and d
    nop
    ld hl, sp-$0b
    db $eb
    rlca
    sbc a
    nop
    ccf
    ld bc, $00ff
    ld a, a
    nop
    add c
    inc [hl]
    and h
    dec bc
    ld d, e
    nop
    ld d, d
    nop
    rrca
    ld b, b
    db $f4
    rst $38
    pop af
    dec b
    sbc $01
    ld a, $01
    cp $00
    rra
    ld b, b
    ld [hl], b
    add a
    db $d3
    ld [$a0c0], sp
    xor a
    call c, $f34f
    rst $38
    adc h
    ld sp, hl
    rst $30
    rst $38
    rst $20
    ld a, a
    sbc a
    scf
    rst $38
    db $fc
    rst $38
    db $fd
    ei
    ld l, e
    rst $10
    inc e
    sub a
    ld a, [hl-]
    db $dd
    ld l, a
    ei
    xor $f7
    ld e, h
    ei
    ld a, e
    or [hl]
    ld h, l
    rst $18
    and a
    ld a, a
    cp l
    ld e, [hl]
    cp e
    db $fd
    ld [hl], c
    xor $eb
    rst $10
    and [hl]
    set 7, l
    cp $17
    ld hl, sp-$55
    ld [hl], h
    rst $08
    ldh a, [$31]
    bit 2, e
    and [hl]
    ld [hl], $cc
    ld [hl], c
    sbc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rra
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
    ld a, a
    rst $38
    rra
    rst $38
    ld b, e
    rst $38
    db $10
    rst $38
    ld b, $ff
    nop
    cp $c0
    rst $38
    jr nc, @+$11

    nop
    rrca
    nop
    add d
    nop
    ldh a, [rP1]
    rst $38
    nop
    ret z

Call_047_547b:
    nop
    db $fc
    nop
    db $fd
    ld hl, sp-$01
    ld d, $ff
    nop
    rst $38
    nop
    rst $38
    cp $ff
    rrca
    stop
    ld a, [bc]
    nop
    inc b
    nop
    ld [$ddff], sp
    ld [bc], a
    cp l
    ld [bc], a
    db $eb
    inc b
    jr nz, @+$01

    ret nz

    ccf
    rla
    xor b
    and $10
    rst $38
    nop
    rst $38
    ld b, $ff
    ld [bc], a
    db $fd
    nop
    rst $38
    adc [hl]

jr_047_54aa:
    rst $38
    pop de
    rst $38
    jr nc, @+$01

    ei
    ld a, a
    rst $38
    dec b
    ldh a, [$3f]
    nop
    inc de
    nop
    ld e, d
    nop
    push hl
    inc b
    rst $38
    rst $38
    dec l
    jp nz, $d00b

    ld e, a
    jr nz, @-$1f

    nop
    dec b
    add b
    jr nc, jr_047_54aa

    ld c, $00
    or e
    nop
    sbc a
    nop
    ld hl, $ff04
    rst $38
    ld de, $91ea
    xor $8e
    ld hl, $00df
    ld b, a
    ld [$db00], sp
    nop
    nop
    adc b
    ldh [$7f], a
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp $f3
    xor $c4
    or $a4
    db $db
    daa
    ld a, d
    db $db
    ld h, [hl]
    sbc [hl]
    ld l, a
    cp d
    ld a, l
    jr z, @+$01

    rst $10

jr_047_5501:
    rst $38
    sbc [hl]
    rst $38
    db $fd
    cp $e6
    ld hl, sp-$03
    db $ec
    ei
    di
    rst $38
    add a
    rst $38
    add l
    rst $10
    rra
    rst $38
    cpl
    db $ed
    ld a, a
    sbc a
    rst $38
    db $eb
    inc bc
    ld [hl], a
    add a
    adc [hl]
    rrca
    dec a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    rra
    rst $00
    rlca
    pop af
    nop
    rra
    nop
    cpl
    ld bc, $00fb
    ld a, a
    ld [$007f], sp
    xor l
    nop
    db $fc
    nop
    ccf
    nop
    ld a, e
    nop
    rst $38
    add b
    rst $38
    ld e, b
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    ld c, a
    rst $38
    rra
    rra
    ld bc, $030f
    ld [de], a
    db $eb
    ret z

    ccf
    ld [hl], d
    dec c
    jp nz, $823d

    db $fc
    nop
    rst $38
    ld [hl], b
    ld b, $d0
    daa
    jr nz, jr_047_5501

    ld e, $a1
    cp a
    ret nz

    ld d, d
    adc c
    ld [bc], a
    cp l
    inc b
    add sp, $04
    ld hl, sp-$40
    db $fc
    rst $38
    rst $38
    and c
    ld a, [bc]
    add sp, $00
    push af
    nop
    xor a
    ld b, b
    xor a
    db $10
    ret nc

    ei
    inc bc
    ld a, a
    rra
    ld h, b
    inc c
    di
    ld b, h
    sbc e
    ld a, $81
    ld bc, $ec07
    ld bc, $00fe
    ld a, [hl+]
    ld b, c
    cpl
    ret nc

    add a
    ldh a, [$3f]
    rst $38
    ld [$8f73], sp
    ld [hl], b
    ld l, $b3
    ld [hl], l
    dec bc
    dec d
    rst $08
    nop
    nop
    nop
    nop
    ret nc

    ldh [$f4], a
    ei
    ld hl, sp-$11
    ccf
    rst $38
    ld h, c
    rst $38
    ld e, h
    cp a
    ld e, a
    cp a
    ccf
    rst $38
    db $76
    rst $28
    sbc h
    db $eb
    ld d, c
    cp b
    ld h, c
    or b
    pop de
    ld b, e
    and d
    add d
    dec c
    inc b
    add hl, de
    ld [bc], a
    jr nz, jr_047_55c6

jr_047_55c6:
    add hl, bc
    ld b, c
    inc bc
    rst $08
    xor a
    ld d, [hl]
    cp [hl]
    ld c, l
    sbc l
    jr @-$48

    ld a, [$7ce5]
    db $ed
    jp nc, $b1c9

    ld b, d
    cp d
    jp z, Jump_047_6834

    cp b
    inc a
    ld [hl], b
    rst $18
    ldh [$fc], a
    ret nz

    call c, $fce0
    ldh [$fc], a
    ldh [$d8], a
    ldh [$dc], a
    ldh [$dc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$dc], a
    ldh [$dc], a
    ldh [$dc], a
    ldh [$d4], a
    ldh [$c0], a

jr_047_55fd:
    db $e4
    call nc, $d3e0
    db $e4
    reti


    db $e4
    rst $10
    ldh [$cd], a
    ldh [$d7], a
    ldh [$d0], a
    db $e4
    add $e0
    db $e4
    ret nz

    adc $e0
    sub $e0
    jp z, $dce0

    ldh [$d4], a
    ldh [$d8], a
    ldh [$d4], a
    add sp, -$26
    db $e4
    call c, $d0e0
    db $ec
    cp b
    call nz, $c0bd
    db $ed
    ret nz

    db $dd
    ldh [$ed], a
    ret nz

    ld l, l
    ret nz

    cpl
    ret nz

    add [hl]
    pop bc
    ld [hl+], a
    pop bc
    nop
    pop bc
    ld h, b
    ld b, c
    jr nz, jr_047_55fd

    jr nz, @-$3d

    ld b, c
    ret nz

    dec h
    ret nz

    ld hl, $e1c0
    ret nz

    ld bc, $60c0
    ret nz

    jp $e3c0


    ret nz

    and $c1
    jp nz, $c4e7

    rst $20
    ret nz

    and a
    db $e4
    rlca
    call nz, $c6a7
    rst $20
    and $07
    and $47
    rst $38
    rst $00
    rst $18
    ld h, a
    db $fd
    rlca
    reti


    add e
    ld sp, hl
    add e
    ld e, l
    add e
    ld e, l
    db $e3
    sbc a
    ld h, c
    ldh [$c1], a
    pop bc
    nop
    ld [hl], c
    nop
    ld [hl], c
    nop
    cp b
    nop
    cp b

jr_047_567b:
    nop
    jr z, jr_047_568e

    add sp, -$10
    jr z, jr_047_569a

    ld l, b
    jr jr_047_56b9

    jr jr_047_567b

    jr @-$06

    inc e
    rst $28
    inc e
    ld h, [hl]
    dec a

jr_047_568e:
    push af
    ld c, $a5
    ld e, $35
    ld c, $fd
    ld h, $ff

jr_047_5697:
    jr nz, jr_047_5697

    nop

jr_047_569a:
    ld a, d
    nop
    cp [hl]
    nop
    cp h
    nop
    jp $8bec


    call nz, $a403
    pop hl
    db $ec
    pop bc
    db $f4
    ret


    or $c2
    rst $38
    ldh [$f6], a
    sbc h
    xor $1d
    xor $b9
    ld e, [hl]
    ld hl, $47db

jr_047_56b9:
    jp hl


    rst $00
    rra
    rlca
    ld a, [hl]
    sbc h
    ld a, a
    cp l
    dec a
    ld a, d
    ld hl, sp-$1b
    call nc, $a0ca
    ld h, b
    sub [hl]
    ret c

    jr z, jr_047_56fd

    jp nc, $5324

    ld e, a
    push hl
    rst $38
    ret nz

    cp c
    add c
    ei
    inc bc
    or $07
    adc $07
    db $dd
    rrca
    sbc [hl]
    rra
    add [hl]
    rrca
    ld d, a
    rrca
    scf
    rrca
    scf
    rrca
    daa
    rrca
    ld b, a
    rrca
    ld l, a
    rlca
    ld d, a
    rrca
    ld l, a
    rlca
    rst $38
    rlca
    rst $18
    rlca
    rst $08
    rlca
    rst $28
    rlca
    rst $20
    rlca
    rst $28

jr_047_56fd:
    rlca
    rst $20
    rlca
    rst $28
    rlca
    rst $28
    rlca
    adc a
    rlca
    rst $18
    rlca
    ccf
    add a
    sub e
    rlca
    rst $18
    rlca
    rra
    rlca
    ccf
    rlca
    cpl
    rlca
    dec de
    rlca
    rst $08
    rlca
    scf
    rlca
    rra
    rlca
    daa
    rra
    ld [hl], a
    rrca
    sub a
    rrca
    or a
    rrca
    or a
    rrca
    rst $20
    rra
    rst $30
    rrca
    and a
    rra
    add a
    ccf
    add a
    ccf
    rra
    rst $20
    ccf
    rst $00
    scf
    rst $08
    daa
    adc a
    rla
    adc a
    ccf
    add l
    rra
    add l
    sbc a
    dec b
    sbc a
    dec b
    cp a
    dec b
    scf
    rrca
    or a
    rrca
    and a
    rrca
    scf
    rrca
    and a
    rrca
    daa
    rrca
    daa
    rrca
    cp a
    rlca
    or a
    rrca
    rla
    cpl
    or a
    rrca
    ld [hl], a
    rrca
    ld [hl], a
    rrca
    rst $20
    rra
    rlca
    rra
    ld d, a
    rrca
    rst $30
    rrca
    cp a
    rlca
    xor a
    rla
    rst $30
    rrca
    cpl
    sub a
    cp a
    rlca
    cp a
    rlca
    xor a
    rlca
    rst $08
    rlca
    adc a
    rlca
    adc a
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rrca
    rlca
    rrca
    rlca
    rra
    rlca
    ccf
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    ccf
    rlca
    cpl
    rlca
    cpl
    rlca
    cpl
    rlca
    rrca
    rlca
    rrca
    rlca
    rra
    rlca
    ld e, $07
    ld b, a
    rrca
    ld [hl], a
    rrca
    ld d, a
    cpl
    ld d, a
    cpl
    rst $10
    cpl
    sub a
    ld l, a
    sbc a
    ld h, a
    sub a
    ld l, [hl]
    ld b, $ff
    dec [hl]
    jp hl


    db $e3
    rst $38
    rst $10
    rst $20
    add a
    rst $28
    ld e, e
    xor [hl]
    ld [hl], h
    rra
    cp a
    ccf
    ld d, a
    ld c, c
    ld b, [hl]
    adc e
    inc d
    ld c, $a0
    inc c
    sbc c
    ld c, d
    db $10
    ld e, a
    cp c
    ld h, $a3
    ld h, d
    ld c, d
    push af
    adc a
    sub a
    and a
    inc de
    inc bc
    cp a
    ld a, [hl]
    cpl
    cpl
    ld e, a
    dec hl
    rst $38
    ld sp, $fffb
    rst $38
    rst $38
    db $fc
    cp a
    adc b
    ld a, a
    adc b
    rst $38
    xor b
    rst $38
    add b
    rst $38
    adc b
    sbc $88
    add b
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    ld hl, sp-$80
    nop
    add b
    rst $10
    cp $fa
    add a
    ret nz

    cp a
    adc a
    rst $38
    add h
    rst $38
    adc b
    rst $30
    add b
    rst $38
    add c
    rst $38
    ld e, a
    add b
    ld a, l
    add d
    nop
    rst $38
    ld a, l
    add d
    ld e, c
    and [hl]
    ld [bc], a
    rst $38
    and d
    db $dd
    ld a, [de]
    add l
    rrca
    add b
    ld [hl], b
    adc a
    ld e, $80
    ld e, $80
    add hl, hl
    sub $88
    rst $30
    ld e, h
    add d
    inc e
    add c
    inc [hl]
    add c
    nop
    add b
    nop
    add b
    ld a, d
    add b
    cp e
    nop
    add a
    nop
    daa
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    cp $80
    rst $38
    ld [$0fff], sp
    db $fd
    ld l, [hl]
    rst $38
    inc a
    cp $30
    cp $0c
    ld a, [$7438]
    ld bc, $0df7
    or $00
    rst $38
    ret z

    rst $38
    adc a
    db $fd
    add [hl]
    rst $38
    dec a
    or $dc
    cp $b0
    cp $20
    db $fc
    db $10
    or a
    ld l, $f3
    dec c
    rst $30
    cpl
    rst $10
    ccf
    ld a, a
    adc a
    ld a, a
    ld l, a
    cp a
    ld e, a
    rst $38
    rst $38
    ld a, a
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld [hl], a
    rst $38
    ld l, a
    rst $28
    jp nz, $87ff

    rst $38
    ld c, $bf
    sbc c
    ld a, [hl]
    ld c, b
    cp c
    inc a
    sbc e
    ld a, [hl-]
    ld [hl], l
    push hl
    ld a, $75
    rst $38
    pop de
    rst $38
    rst $20
    ei
    cp a
    sub $4e
    and a
    rla
    db $ec
    ld c, $dd
    xor h
    dec de
    rst $38
    ei
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rlca
    ld a, e
    rlca
    ld a, [$fc07]
    rlca
    db $fd
    rlca
    rst $38
    rlca
    cp $07
    ld b, $ff
    ld b, $ff
    ld e, $ff
    ld c, $ff
    ld a, $ff
    ld b, $ff
    ld a, $07
    or [hl]
    ld b, a
    ld b, $d7
    sub [hl]
    ld b, a
    and $0f
    sub a
    ld h, a
    rrca
    rlca
    rst $28
    rlca
    add a
    ld a, a
    cp a
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rlca
    rst $38
    ld [hl], a
    adc a
    rla
    rst $28
    rra
    rst $38
    ld [hl], a
    add a
    rst $20
    rra
    add a
    rlca
    daa
    rst $18
    rlca
    rlca
    rlca
    rlca
    ld [hl], a
    rlca
    rlca
    rst $00
    rrca
    add a
    ld h, $cf
    add a
    ld a, a
    ccf
    ld b, a
    ld d, a
    rlca
    xor a
    ld b, a
    rst $30
    rrca
    and l
    ld e, a
    rst $38
    rst $38
    rst $08
    rst $38
    rst $00
    cp a
    res 6, a
    sbc e
    rst $38
    ei
    ld a, a
    pop bc
    rst $38
    ld sp, hl
    rst $38
    ld a, [hl+]
    rst $18
    ld a, [de]
    rst $38
    ld h, e
    ld e, a
    add b
    rst $38
    add b
    rst $38
    cp a
    ei
    ei
    cp a
    set 7, a
    rst $28
    rst $38
    rrca
    ei
    rla
    rst $38
    rra

jr_047_5933:
    rst $38
    sbc [hl]
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    db $fd
    cp $ff
    push af
    cp $ed
    db $fd
    ei
    db $ed
    set 6, a
    db $e3
    rst $38
    push de
    rst $20
    ld l, l
    rst $30
    adc b
    ld l, a
    jr jr_047_5933

    inc d
    pop de
    ld h, d
    cp a
    jr nz, @-$0f

    ld b, a
    ld a, l
    ld a, c
    rst $00
    res 7, a
    add e
    ei
    db $d3
    sub a
    cp a
    ccf
    xor a
    rst $38
    ld a, h
    rst $38
    rst $18
    rst $38
    rst $38
    rst $18
    sbc h
    rst $38
    cp [hl]
    rst $18
    sub $bf
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cp a
    and $1f
    db $e3
    rra
    rst $20
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    dec bc
    db $e4
    rrca
    ldh [rIF], a
    ldh a, [$1f]
    ldh [rNR33], a
    ld [c], a
    inc e
    db $e3
    inc de
    ldh [rTIMA], a
    ldh [rP1], a
    ldh [rIF], a
    ldh a, [$1f]
    ldh [rNR34], a
    ldh [rNR10], a
    rst $28
    rra
    ldh [$1f], a
    ldh [rNR22], a
    ldh [rNR41], a
    rst $38
    sbc l
    ldh [rNR23], a
    ldh [$98], a
    ldh [$9f], a
    ldh [rP1], a
    ldh [$80], a
    ldh [rNR23], a
    ld [c], a
    jp c, $dfe1

    ldh [$ce], a
    ldh [$e2], a
    db $fd
    rst $10
    add sp, -$21
    ldh [$dd], a
    ld [c], a
    ldh [rIE], a
    sbc $e1
    cp d
    push hl
    ldh [rIE], a
    xor a
    ldh a, [$ac]
    pop hl
    cp h
    pop hl
    add b
    rst $38
    or [hl]
    jp hl


    dec e
    ld [c], a
    ret nz

    rst $38
    inc e
    pop hl
    dec e
    ldh [rIF], a
    ldh a, [rNR32]
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
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    ld a, a
    cp $ff
    di
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld e, a
    ei
    ld d, a
    rst $28
    ld c, a
    rst $30
    sub [hl]
    ld a, [$de82]
    and [hl]
    add [hl]
    ld l, $d6
    dec b
    rst $38
    add [hl]
    db $fc
    and $7c
    cpl
    db $fc
    xor d
    db $fd
    ld c, b
    rst $38
    dec e
    cp $b9
    ld e, a
    pop af
    cp a
    push af
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
    cp $cf
    add h
    rst $08
    add b
    db $db
    ret nz

jr_047_5a54:
    and $c2

jr_047_5a56:
    sbc a
    add [hl]
    cp a
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
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    push af
    db $fc
    ld bc, $5ea1
    ldh a, [$08]
    nop
    rst $38
    inc c
    ei
    ld b, c
    rst $38
    inc hl
    call c, Call_000_00ff
    ret z

    scf
    sbc a
    ldh [$c6], a
    add hl, sp
    rlca
    ld hl, sp-$01
    rst $38
    ld d, d
    xor a
    dec a
    jp c, $bf7f

    ld sp, hl
    cp $df
    jr nz, jr_047_5a56

    jr c, jr_047_5a54

    inc a
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    ret nz

    ld a, a
    rst $38
    nop
    cp $01
    ldh [rIF], a
    ld [hl], e
    adc h
    and [hl]
    ld c, c
    adc $30
    nop
    ld a, a
    ld [de], a
    add sp, -$42
    ld b, b
    daa
    ld hl, sp-$31
    db $10
    rst $10
    nop
    db $dd
    nop
    ld [bc], a
    xor l
    sla b
    jp z, Jump_000_1630

    ld hl, sp-$80
    ld e, a
    adc d
    ld d, h
    ld h, $18
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    ld h, e
    rst $30
    jp nz, $c3f7

    sbc $e7
    cp $b6
    rst $18
    add a
    cp $57
    xor a
    ld b, $7d
    ld b, l
    ld a, $5e
    dec b
    and l
    ld e, [hl]
    cp d
    dec c
    add hl, de
    ld c, $0d
    ld c, d
    ld c, l
    ld a, [hl-]
    add hl, sp
    dec c
    dec c
    sbc d
    dec hl
    sbc h
    dec de
    sbc h
    dec d
    jr jr_047_5b25

    inc de
    rla
    add hl, sp
    dec de
    dec [hl]
    rla
    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rNR13]
    nop
    cpl
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    ld a, a

jr_047_5b25:
    dec b
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fd
    rst $38
    cp $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    sbc a
    ldh [$80], a
    nop
    xor a
    nop
    ld a, l
    add b
    nop
    nop
    ld [$1315], a
    rst $38
    nop
    rst $38
    add $39
    cp $01
    nop
    rst $38
    cp $01
    sub c
    ld l, a
    nop
    rst $38
    and $ff
    add d
    ld a, l
    ld b, $f9
    rla
    rst $38
    sub e
    rst $38
    ldh a, [rIF]
    db $fc
    inc bc
    cp d
    ld b, l
    add b
    ld a, a
    ld hl, sp+$07
    ld hl, sp+$07
    xor a
    rst $38
    ld [hl+], a
    db $fd
    reti


    ld h, $a3
    ld e, h
    xor a
    call c, $807f
    and e
    call c, $ec17
    xor l
    rst $18
    rst $28
    db $10
    add sp, $17
    ld b, b
    cp a
    cp $01
    cp $01
    ld a, c
    nop
    nop
    ld a, a
    adc h
    ld bc, $0760
    add b
    inc d
    ld h, $ff
    ld c, b
    ld [hl+], a
    adc e
    db $10
    rrca
    or b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $18
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $18
    cp a
    ld e, a
    rst $38
    rst $38
    or a
    ld a, a
    ld a, e
    rst $18
    rra
    rst $38
    ld a, e
    sbc a
    cp d
    rst $18
    ld e, l
    cp a
    push de
    ccf
    db $dd
    ld a, d
    ld e, l
    cp [hl]
    cp $9d
    ld a, [hl]
    db $fd
    ld a, l
    sbc a
    ld a, h
    rst $18
    sbc a
    ld a, a
    ccf
    db $fd
    cp l
    ld a, a
    ld a, l
    cp $fe
    db $fd
    db $fd
    cp a
    ld a, $fd
    ld a, h
    rst $38
    cp a
    ld a, h
    cp [hl]
    ld a, h
    dec sp
    db $fc
    cp c
    cp $f9
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
    ld hl, sp-$0a
    nop
    db $fd
    ret nz

    rst $38
    ld l, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    ei
    add b
    db $fd
    nop
    cp $00
    cp $00
    rst $38
    add b
    ld b, b
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    inc b
    nop
    nop
    nop
    add b
    ld e, a
    cp $00
    sbc h
    ld [bc], a
    add hl, bc
    cp $11
    cp $7f
    add b
    dec hl
    call nc, Call_047_7f80
    ld [bc], a
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld e, a
    rst $38
    sub b
    rst $38
    and d
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld bc, $01fe
    cp $0e
    pop af
    ld a, h
    or a
    adc d
    push af
    rst $38
    add b
    ld a, a
    add b
    adc b
    rst $38
    sub e
    ld l, h
    dec l
    jp nc, $9d72

    nop
    ld [hl], a
    ld c, $01
    rrca
    nop
    stop
    nop
    cp [hl]
    call c, $9702
    ld [$0ffe], sp
    rst $38
    rrca
    rst $18
    rrca
    rst $38
    rra
    cp $1f
    rst $18
    ccf
    rra
    ccf
    db $f4
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    db $dd
    sbc $f7
    sbc a
    rst $30
    sbc a
    ei
    rst $18
    rst $18
    rst $18
    db $db
    push de
    ret nc

    sub b
    sub b
    ret nz

    ret nz

    sub b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    sub b
    ret nz

    add b
    ret nc

    ret nc

    ret nz

    ld h, b
    ret nc

jr_047_5ca6:
    ldh [rSVBK], a
    ld h, b
    ldh a, [$50]
    ldh a, [$f0]
    ld [hl], b

jr_047_5cae:
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ldh a, [rSVBK]
    jr nc, jr_047_5ca6

    jr nc, jr_047_5d28

    or b
    ld [hl], b
    ldh a, [$f0]
    jr nc, jr_047_5cae

    ld [hl], b
    or b
    or b
    or b
    ldh a, [$b0]
    sub b
    or b
    or b
    or b
    ret c

    or b
    or b
    sub b
    sbc b
    or b
    xor a
    or b
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
    ld a, a
    ld a, a
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ccf
    cp a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    or a
    ld a, a
    scf
    rst $38
    scf
    rst $38
    or a
    ld a, a
    scf
    ld a, a
    ld a, a
    rst $38
    cp a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf

jr_047_5d28:
    ccf
    ld a, a
    ld a, a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld l, a
    rst $38
    rst $28
    ld a, a
    rst $18
    ccf
    rst $38
    add a
    rst $00
    inc bc
    add e
    inc bc
    push bc
    inc bc
    ld b, a
    add c
    ld b, a
    add c
    dec a
    jp $ffde


    ei
    ldh [$03], a
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    rra
    ldh [$af], a
    rst $38
    cp [hl]
    rst $38
    cp $ff
    db $fc
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$8800], sp
    nop
    adc b
    nop
    add b
    ld [$0088], sp
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
    sub b
    nop
    add b
    nop
    db $10
    add b
    sbc b
    nop
    ld [de], a
    add b
    ld d, b
    add b
    ld d, b
    add b
    ld d, h
    add b
    ld d, l
    add b
    ld [hl], h
    add b
    ld c, $f0
    pop bc
    ld a, $2b
    ret nc

    ei
    inc b
    ld a, [hl]
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $08
    rst $08
    rst $38
    rst $08
    rst $18
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rra
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    jp hl


    ld [de], a
    rst $38

jr_047_5ded:
    rst $38
    cp $fe
    ret nz

    pop bc
    ld d, $0f
    inc bc

jr_047_5df5:
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
    ld b, b
    cp a
    jr nz, jr_047_5ded

    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    jr nz, jr_047_5df5

    ld [$0fff], sp
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    add a
    nop
    add l
    ld [bc], a
    add l
    ld [bc], a
    add l
    ld [bc], a
    and l
    ld [bc], a
    rst $20
    nop
    rst $00
    nop
    rst $30
    nop
    rst $30
    nop
    db $d3
    inc l
    add d
    ld bc, $0038

Jump_047_5e40:
    ldh a, [$f0]
    pop af
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f8], a
    ldh [$fc], a
    ldh a, [$f4]
    ld a, [$f4fa]
    cp $f0
    cp $f0
    cp $f0
    or $f8
    rst $38
    ldh a, [$f7]
    ldh a, [$e7]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f3]
    ldh a, [$f1]
    ld a, [c]
    ld a, [c]
    pop af
    ld hl, sp-$0f
    db $fc
    pop af
    db $fc
    pop af
    db $fc
    pop af
    ld hl, sp-$09
    ld a, [$faf5]
    push af
    ld a, [$e2f5]
    db $fd
    ld a, [$faf5]
    push af
    ld a, [c]
    db $fd
    di
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    ld a, [c]
    db $fd
    ldh [rIE], a
    ld a, [c]
    db $fd
    di
    db $fc
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    rst $30
    ld hl, sp-$05
    db $f4
    db $eb
    db $f4
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    ld [c], a
    db $fd
    ldh [rIE], a
    ld [c], a
    db $fd
    pop hl
    cp $e1
    cp $e0
    rst $38
    pop hl
    cp $e3
    db $fc
    pop hl
    cp $e0
    rst $38
    pop hl
    cp $e0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    call nc, $eb2b
    pop af
    rst $00
    rra
    rst $28
    rst $38
    ld l, [hl]
    rst $38
    ld a, a
    rst $38
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
    add b
    nop
    nop
    add b
    nop
    add b
    add b
    ld h, b
    db $10
    ld h, b
    ld c, b
    and b
    jr z, jr_047_5f36

    xor $10
    ld [hl], d
    ld [$1429], sp
    add hl, de
    ld b, $00
    nop
    ld h, b
    inc b
    cp h
    inc bc
    db $ec
    db $10

jr_047_5f36:
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rrca
    ldh a, [$38]
    rlca
    ld c, a
    cp a
    rst $28
    sbc a
    ld l, a
    sbc a
    rra
    rst $28
    cpl
    sbc a
    ld e, a
    adc a
    rra
    rrca
    rrca
    rra
    rrca
    sbc a
    cp a
    rrca
    rrca
    ccf
    rrca
    rra
    rrca
    cpl
    rrca
    cpl
    cpl
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    adc a
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld e, a
    adc a
    adc a
    rrca
    rst $28
    rrca
    cpl
    sbc a
    sbc a
    rrca
    rst $28
    rra
    rra
    rst $38
    cpl
    rst $18
    ld l, a
    sbc a
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $28
    rra
    rst $28
    ld c, a
    sbc a
    rra
    rst $08
    ld l, a
    adc a
    ld c, a
    adc a
    rrca
    adc a
    adc a
    rrca
    adc a
    rrca
    rrca
    adc a
    rrca
    adc a
    adc a
    rrca
    rrca
    adc a
    rra
    adc a
    sbc a
    rrca
    rra
    adc a
    rrca
    adc a
    rra
    adc a
    rra
    adc a
    adc a
    rra
    ld c, a
    sbc a
    ld c, a
    sbc a
    rra
    rst $18
    rrca
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ld l, a
    sbc a
    ld c, a
    sbc a
    rra
    rst $18
    rst $08
    sbc a
    ld c, a
    sbc a
    rra
    rst $18
    rra
    rst $18
    ld c, a
    sbc a
    ld e, a
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    ld c, a

jr_047_5fe5:
    sbc a
    ld c, a
    sbc a
    rrca
    rst $18
    sbc a
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
    ld e, a
    rst $38
    nop
    rra
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
    jr nz, jr_047_5fe5

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
    nop
    nop
    nop
    jr nz, jr_047_6056

    nop
    ld b, b
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld b, b
    ld [hl-], a
    ld b, b
    ld d, $00
    ld c, $80
    sbc [hl]
    ld h, b
    and e
    ld e, h
    swap h
    ld h, l
    sbc d
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    dec bc
    ld c, $0f
    db $10
    ld de, $1312
    inc d

jr_047_6056:
    dec d
    ld d, $17
    jr jr_047_6074

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    rra
    rra
    jr nz, jr_047_6086

    ld [hl+], a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_047_6097

    ld a, [hl+]
    dec bc
    dec hl
    rra
    rra
    rra

jr_047_6074:
    inc l
    dec l
    ld [hl+], a
    ld l, $2f
    jr nc, jr_047_60ac

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_047_60bc

    ld a, [hl-]
    dec sp
    inc a

jr_047_6086:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    dec bc
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_047_6097:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    dec bc
    dec bc
    dec bc
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    dec bc
    dec bc
    ld e, d
    ld e, e
    ld e, h

jr_047_60ac:
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    dec bc
    dec bc
    dec bc
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c

jr_047_60bc:
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
    dec bc
    dec bc
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld l, [hl]
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    dec bc
    dec bc
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
    adc e
    adc h
    adc l
    adc [hl]
    dec bc
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
    ld [hl-], a
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
    dec bc
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
    jp nz, Jump_000_0bc3

    call nz, $c6c5
    rst $00
    ld [hl+], a
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    dec bc
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
    ld [hl+], a
    dec b
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    ld [hl+], a
    ld [hl+], a
    di
    db $f4
    push af
    or $f7
    ld hl, sp+$0b
    ld sp, hl
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
    rra
    db $10
    ld de, $1222
    inc de
    inc d
    dec d
    ld d, $17
    dec bc
    jr jr_047_6199

    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    inc b
    inc b
    ld [bc], a
    ld bc, $0202
    ld bc, $0302
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $04

jr_047_6199:
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc bc
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc bc
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $03
    inc bc
    inc bc
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0404
    inc b
    inc b
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
    ld bc, $0401
    inc b
    inc b
    inc b
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

Jump_047_61ff:
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc b
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0505
    dec b
    dec b
    dec b
    ld [bc], a
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
    nop
    dec b
    inc b
    ld [bc], a
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
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $04
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc

Call_047_6262:
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $02
    ld [bc], a
    ld [bc], a
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
    inc bc
    ld b, e
    ld b, $02
    ld [bc], a

Jump_047_628b:
    ld [bc], a
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
    inc bc
    inc bc
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    rrca
    dec bc
    inc bc
    dec bc
    dec bc
    inc bc
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $7f
    cp $7f
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    rst $38

Call_047_62dd:
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    rra
    db $fc
    ld a, a
    ld hl, sp-$01
    ldh a, [rIE]
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
    nop
    nop
    nop
    nop
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
    rlca
    rrca
    rrca
    rra
    rra
    rra
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    and b
    and b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
    inc b
    inc b
    inc b
    ld b, $06
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    cp $80
    cp $80
    cp $80
    cp $80
    cp $c0
    cp $c0
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    cp a
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
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rlca
    rrca
    rrca
    rra
    dec d
    ccf
    ld a, $7f
    rra
    ld a, a
    ld a, [hl]
    rst $38
    sbc b
    rst $38
    db $10
    rst $38
    add a
    add a
    rlca
    rlca
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec e
    dec e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    jr jr_047_647c

    db $10
    db $10
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_047_648c

    ld h, b
    ld h, b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    nop
    nop

jr_047_647c:
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld de, $1111
    ld de, $0302
    ld [bc], a
    inc bc

jr_047_648c:
    ld [bc], a
    inc bc
    inc b
    rlca
    nop
    rlca
    dec c
    rrca
    dec c
    rrca
    dec c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $1e
    ld a, $3e
    ld a, [$70fa]
    ld [hl], b
    ld hl, sp-$08
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

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
    nop
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
    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0302
    ld [bc], a
    inc bc
    nop
    inc bc
    inc b
    rlca
    nop
    rlca
    ld [$000f], sp
    rrca
    nop
    rrca
    db $10
    rra
    nop
    rra
    jr nz, jr_047_6587

    nop
    ccf
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    jr @+$01

    ld d, d
    rst $38
    reti


    rst $38
    ld [hl], l
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $0300
    nop
    ld bc, $0100
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

jr_047_6587:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_047_659a:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ldh a, [rIE]
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    db $10
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_047_660e

    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_047_65f8:
    nop
    rst $38
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    add hl, bc
    rst $38
    inc e
    db $fc
    jr @-$06

    jr nc, jr_047_65f8

    jp $ffc3


    rst $38
    rst $38
    rst $38

jr_047_660e:
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fc
    cp $fa
    cp $fe
    cp $fa
    cp $e7
    ccf
    rst $30
    ccf
    rst $30
    rra
    di
    rra
    di
    rra
    di
    rra
    ei
    rra
    ld a, e
    rrca
    ei
    rrca
    ld a, c
    rrca
    ld a, c
    rrca
    ld a, c
    rrca
    ld a, l
    rrca
    dec a
    rlca
    dec a
    rlca
    dec a
    rlca
    inc a
    rlca
    inc a
    rlca
    inc a
    rlca
    ld a, $03
    ld a, $03
    ld a, $03
    ld a, $03
    ld e, $03
    ld e, $03
    ld e, $03
    rra
    ld bc, $011f
    rra
    ld bc, $011f
    rra
    ld bc, $011f
    rra
    ld bc, $011e
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, [hl]
    ld bc, $017e
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
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$9f], a
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    db $10
    db $10
    db $10
    db $10
    ld [hl+], a
    ld [hl+], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [de], a
    ld [hl-], a
    ld [hl-], a
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$a8fa]
    xor b
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
    ld bc, $00ff
    rst $38
    nop
    rst $38

jr_047_66ec:
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld [de], a
    cp $0c
    db $fc
    jr nc, jr_047_66ec

    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    jr nz, jr_047_6726

    nop
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a

jr_047_6726:
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ld [hl], b
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    db $fc
    ld l, b
    db $fc
    ld l, b
    db $fc
    ld a, b
    db $fc
    ld l, h
    db $fc
    ld a, b
    db $fc
    inc [hl]
    db $fc
    inc [hl]
    db $fc
    inc [hl]
    db $fc
    inc [hl]
    db $fc
    inc a
    db $fc
    inc [hl]
    cp $3c
    cp $38
    cp $1c
    ld a, [hl]
    ld a, [de]
    ld a, [hl]
    inc e
    ld a, [hl]
    ld a, [de]
    ld a, [hl]
    ld e, $7e
    ld a, [de]
    ld a, [hl]
    inc e
    ld a, [hl]
    ld e, $3e
    inc e
    ld a, $0e
    sbc a
    dec c
    sbc a
    dec c
    sbc a
    rrca
    sbc a
    dec c
    sbc a
    rrca
    sbc a
    rrca
    sbc a
    rrca
    ld e, a
    rrca
    ld e, a
    rrca
    ld e, a
    rrca
    ld e, a
    rlca
    ld e, a
    rlca
    ld e, a
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    inc bc
    ccf
    rlca
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    rra
    rlca
    rra
    rlca
    rra
    rlca
    rra
    inc bc
    rra
    rlca
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    rlca
    rra
    rlca
    rra
    dec b
    rra
    rlca
    sbc a
    add a
    rst $18
    rst $10
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    db $dd
    rst $38
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$e8]
    add sp, -$18
    add sp, $00
    nop
    nop
    nop
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
    nop
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
    ccf
    rst $38
    ccf
    ccf
    ccf
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    ld e, $3f
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rrca
    ccf
    rrca
    ccf
    rra
    ccf
    rrca
    ccf

Jump_047_6834:
    rra
    ccf
    rrca
    ccf
    rra
    ccf
    rra
    ccf
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    sbc a
    cp a
    sbc a
    cp a
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    jr nz, @+$22

    nop
    nop
    jr nz, jr_047_6876

    nop
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
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    nop

jr_047_6876:
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_047_68f0

    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rP1], a
    rst $38
    rst $38
    rst $38
    ld bc, $0001
    nop
    inc bc
    inc bc
    rla
    rla
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38

jr_047_68f0:
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld h, a
    ld h, a
    ld l, a
    ld l, a
    ccf
    ccf
    ld a, a
    ld a, a
    dec bc
    dec bc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp e
    cp e
    rrca
    rrca
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    cpl
    cpl
    inc de
    inc de
    ld e, $1e
    ld bc, $1901
    add hl, de
    ld sp, hl
    ld sp, hl
    dec sp
    dec sp
    ld a, c
    ld a, c
    ld a, b
    ld a, b
    db $dd
    db $dd
    push bc
    push bc
    ld h, b
    ld h, b
    call $bdcd
    cp l
    add b
    add b
    ld a, $3e
    db $fc
    db $fc
    cp h
    cp h
    sbc a
    sbc a
    ld a, $3e
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    or e
    or e
    cp h
    cp h
    rst $30
    rst $30
    rst $38
    rst $38
    sbc $de
    add b
    add b
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rst $18
    rst $18
    rst $38
    rst $38
    ld a, [c]
    ld a, [c]
    nop
    nop
    nop
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
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    add a
    cp a
    add h
    cp a
    add [hl]
    cp a
    and [hl]
    cp a
    and h
    cp a
    and d
    cp a
    and h
    cp a
    and [hl]
    cp a
    or [hl]
    cp a
    and [hl]
    cp a
    and [hl]
    cp a
    or [hl]
    cp a
    and d
    cp a
    or [hl]
    cp a
    cp [hl]
    cp a
    sbc [hl]
    sbc a
    sbc [hl]
    sbc a
    sbc [hl]
    sbc a
    sbc a
    sbc a
    sbc [hl]
    sbc a
    sbc [hl]
    sbc a
    sbc $df
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld c, $0e
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    dec h
    rla
    rla
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    dec bc
    ld a, a
    ld a, a
    ei
    ei
    ei
    ei
    pop bc
    pop bc
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld c, b
    ld c, b
    nop
    nop
    ld l, [hl]
    ld l, [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ld h, b
    ld h, b
    ld h, h
    ld h, h
    push bc
    push bc
    jp Jump_047_50c3


    ld d, b
    pop de
    pop de
    ldh a, [$f0]
    ld bc, $3f01
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld hl, sp-$08
    ld b, b
    ld b, b
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
    add b
    add b
    ld e, $1e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $f0ff
    rst $38
    ld de, $11ff
    rst $38
    ld de, $10ff
    rst $38
    ld de, $10ff
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    rst $38
    ld de, $11ff
    rst $38
    inc de
    rst $38
    ld de, $ceff
    ld sp, $1fe0
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    jp nz, $e53d

    add hl, de
    inc b
    ld sp, hl
    ld sp, hl
    rst $38
    db $fc
    cp $0e
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rla
    rla
    ld [c], a
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [$eaff]
    rst $38
    rst $10
    rst $38
    db $eb
    rst $38
    ld l, c
    rst $38
    xor d
    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    ld b, b
    rst $38
    sub b
    rst $38
    dec h
    rst $38
    jp nc, $a4ff

    rst $38
    ret


    rst $38
    ld [$f6ff], a
    rst $38
    push af
    rst $38
    push af
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    sbc a
    sbc a
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ldh [$e0], a
    inc bc
    inc bc
    ccf
    ccf
    ld h, e
    ld h, e
    ld h, a
    ld h, a
    rlca
    rlca
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    dec h
    dec h
    or e
    or e
    ld sp, $3d31
    dec a
    sbc l
    sbc l
    sbc [hl]
    sbc [hl]
    sbc h
    sbc h
    add b
    add b
    rlca
    rlca
    rst $28
    rst $28
    adc $ce
    xor $ee
    xor $ee
    ld [$c7ea], a
    rst $00
    ld b, b
    ld b, b
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
    ld bc, $dd01
    db $dd
    rra
    rra
    rst $38
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ld c, $f1
    xor $f1
    ld bc, $01e0
    ldh [rSB], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [rSC], a
    ldh [$62], a
    ldh [$a4], a
    ldh [rTMA], a
    ldh [$a6], a
    ldh [rNR52], a
    ldh [$a6], a
    ldh [$66], a
    ldh [$a6], a
    ldh [$e7], a
    ldh [$e7], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [rIE], a
    ld hl, sp-$01
    cp $fe
    rst $38
    db $fc
    rst $38
    dec de
    dec de
    rra
    rra
    rrca
    rrca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld hl, sp-$08
    db $fd
    db $fd
    cp h
    db $fc
    ld d, [hl]
    cp $d7
    rst $38
    xor c
    rst $38
    ld b, h
    rst $38
    ld bc, $55ff
    rst $38
    ld c, d
    rst $38
    adc b
    rst $38
    add b
    rst $38
    ld b, d
    db $fd
    inc b
    ei
    ld [bc], a
    db $fd
    dec h
    ld a, [$fb04]
    ld [de], a
    db $fd
    nop
    rst $38
    jr z, @+$01

    adc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    xor d
    rst $38
    sub $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rst $10
    rst $10
    ret nz

    ret nz

    rrca
    rrca
    sbc a
    sbc a
    sbc a
    sbc a
    cp a
    cp a
    cp [hl]
    cp [hl]
    rst $18
    rst $18
    sbc l
    sbc l
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    or [hl]
    or [hl]
    cp $fe
    rst $38
    rst $38
    add sp, -$18
    nop
    nop
    ld e, [hl]
    ld e, [hl]
    cp $fe
    db $fc
    db $fc
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a

jr_047_6c17:
    ld a, a
    rst $38

jr_047_6c19:
    rst $38
    or $f6
    rst $30

jr_047_6c1d:
    rst $30
    rst $18
    rst $18
    daa
    daa
    rlca
    rlca
    dec bc
    dec bc
    ld l, e
    ld l, e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, e
    rst $38
    add hl, bc
    rst $30
    jr jr_047_6c1d

    jr nz, jr_047_6c17

    jr nz, jr_047_6c19

    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    add b
    ld a, a
    adc [hl]
    ld [hl], c
    sbc a
    ld h, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop hl
    ld e, $f3
    inc c
    dec bc
    inc b
    dec bc
    inc b
    rrca
    nop
    rst $28
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$0e], a
    pop af
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
    ldh [rP1], a
    ld sp, $00c0
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    and b
    and b
    and b
    and b
    ld d, b
    ret nc

    ld [$a4c8], sp
    db $e4
    or h
    db $f4
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld a, [$7d85]
    ld b, b
    cp h
    ld d, b
    xor [hl]
    ld bc, $40ff
    cp a
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    inc h
    rst $38
    ld c, c
    rst $38
    add hl, hl
    rst $38
    push de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    cp a
    cp a
    cp a
    rst $18
    rst $18
    rst $18
    rst $18
    rst $08
    rst $08
    ld l, a
    ld l, a
    rst $28
    rst $28
    or a
    or a
    or a
    or a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld e, [hl]
    ld e, [hl]
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $18
    rst $18
    rst $18
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
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    and e
    ld a, a
    xor e
    ld [hl], a
    rst $28
    inc sp
    rst $28
    inc sp
    rst $28
    inc sp
    rst $28
    inc sp
    rst $28
    inc sp
    rst $28
    inc sp
    rst $28
    inc sp
    rst $28
    scf
    rst $28
    scf
    cp a
    ld h, a
    cp a
    ld h, a
    cp a
    ld h, a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    cpl
    rst $38
    daa
    rst $38
    scf
    rst $38
    scf
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    rst $18
    rst $38
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
    ccf
    ret nz

    nop
    rst $38
    add b
    rst $38
    nop
    nop
    add b
    add b
    add b
    add b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld l, a
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    rrca
    rrca
    ld [hl], d
    rst $38
    add hl, hl
    rst $38
    ld [$a0ff], sp
    rst $38
    ld b, b
    rst $38
    ld a, [hl+]
    rst $38
    ld b, l
    rst $38
    ld [de], a
    rst $38
    ld c, d
    rst $38
    ld a, [$e5ff]
    rst $38
    cp b
    rst $38
    ld [$b1ff], a
    rst $38
    ld [$fcff], a
    rst $38
    or $ff
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $f6
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
    ld a, a
    ld a, a
    cp a
    cp a

jr_047_6e04:
    rst $38
    rst $38
    rst $38
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
    inc bc
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld b, $fb
    inc b
    ei
    inc b
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c

jr_047_6e42:
    rst $38
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
    ldh [$af], a
    ld [hl], b
    rst $28
    jr nc, jr_047_6e42

    jr nc, jr_047_6e04

    ld [hl], b
    xor a
    ld [hl], b
    cpl
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$2a]
    push af
    ld h, l
    ld a, [$ff40]
    ld b, c
    cp $40
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    ret nz

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
    ld a, a
    ld a, a
    ret c

    ret c

    nop
    nop
    nop
    nop
    ld bc, $0101
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
    add h
    add h
    nop
    nop

jr_047_6eac:
    ccf
    ccf
    nop
    nop
    nop
    nop
    inc c
    rrca
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $05fe
    ld a, [$f40b]
    dec b
    ld a, [$fe01]
    set 6, h
    ld b, a
    ld hl, sp+$2a
    push af
    ld bc, $92fe
    db $fd
    ld [bc], a
    db $fd
    ld e, c
    cp $8a
    db $fd
    ld b, h
    rst $38
    sub d
    rst $38

jr_047_6eda:
    pop de
    rst $38
    ld c, d
    cp $aa
    cp $fe
    cp $b3
    cp a
    push af
    rst $38
    ld hl, sp-$01
    or $ff
    ld a, [$b5ff]
    rst $38
    cp a
    rst $38
    ldh a, [$f0]
    push af
    push af
    ret c

    ret c

    reti


    reti


    push af
    push af
    ld a, [$effa]
    rst $28
    rst $38
    rst $38
    ld a, h
    add e
    ld hl, sp+$07
    pop af
    ld c, $e3
    inc e
    rst $20
    jr jr_047_6eda

    jr nc, jr_047_6eac

    ld h, b
    sbc a
    ld h, b
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
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
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
    cp $00

jr_047_6f3a:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    add hl, hl
    sub $44
    cp e
    nop
    rst $38
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
    cp $00
    cp $60
    cp $fc
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ret nz

    db $fc
    db $fc
    nop
    ld hl, sp-$04
    ld hl, sp-$04
    ldh a, [$fc]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ei
    ei
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    add e
    add e
    rlca
    rlca
    rra
    rra
    rlca
    rlca
    rlca
    rlca
    ld a, a
    ld a, a
    rlca
    rst $38
    ld h, h
    db $e4
    ld b, b
    ret nz

    jr nz, jr_047_6f3a

    db $10
    sub b
    ld b, b
    ret nz

    add h
    ld b, h
    add h
    ld b, h
    add b
    ld b, b
    ld c, b
    ret z

    pop bc
    ld b, c
    add c
    ld bc, $0080
    add b
    nop
    ld bc, $8181
    add c
    add b
    add b
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    inc c
    inc c
    ld b, $06
    ld [bc], a
    ld [bc], a
    dec hl
    dec hl
    ld de, $0011
    nop
    add b
    add b
    ld b, b
    ret nz

    add b
    ret nz

    ld h, b
    ldh [$a0], a
    ldh [$80], a
    add b
    and b
    and b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    or l
    or l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop

jr_047_6fe8:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    pop bc
    nop
    ld bc, $0100
    nop
    ld bc, $7300
    nop
    ldh [$7f], a
    cp h
    ld a, a
    ret nz

    inc sp

jr_047_7006:
    ldh a, [$03]
    ldh [$03], a
    ldh [rTAC], a
    ldh [rTAC], a
    ld hl, sp+$07
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    jp $dc20


    jr nz, jr_047_7006

    jr nz, jr_047_6fe8

    ld b, b
    cp a
    ld b, b
    and c
    ld e, [hl]
    adc [hl]
    ld h, c
    rrca
    ldh [rIF], a
    ldh [$1f], a
    ret nz

    rra
    ret nz

    rra
    ret nz

    ld e, $c1
    ld a, $c1
    ld a, $c1
    ld a, [hl]
    add c
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add d
    ei
    inc b
    ei
    inc b
    ld h, e
    sbc h
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    dec de
    dec de
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh [rIE], a
    cp $ff
    rst $18
    rst $18
    ld e, a
    ld e, a
    ccf
    ccf
    rla
    rla
    nop
    nop
    ld a, [de]
    ld a, [de]
    sub l
    sub l
    add d
    add d
    call z, $eacc
    ld [$f1f1], a
    db $ed
    db $ed
    ld [hl], e
    ld [hl], e
    ld d, e
    ld d, e
    dec d
    dec d
    inc de
    inc de
    ld [hl+], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0401
    inc b
    dec b
    dec b
    push af
    push af
    ld b, l
    ld b, l
    inc hl
    inc hl
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
    dec b
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
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
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b

jr_047_70f6:
    ei
    inc b

jr_047_70f8:
    ei
    inc b

jr_047_70fa:
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    xor $10
    xor $10
    xor $10
    sbc $20
    sbc $20
    db $dd
    jr nz, jr_047_70f6

    jr nz, jr_047_70f8

    jr nz, jr_047_70fa

    jr nz, @-$01

    nop
    ei
    nop
    ei
    nop
    dec sp
    nop
    rst $08
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    ld l, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    add b
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
    ret nc

    ret nc

    rst $38
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
    rst $38
    nop
    rst $38
    nop

jr_047_7161:
    rst $38
    ld a, c
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
    cp a
    and [hl]
    and [hl]
    ld a, a
    ld a, a
    rst $38
    rst $38
    ei
    ei
    and a
    and a
    or a
    or a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld e, a
    ld e, a
    ld a, a
    ld a, a
    cp a
    cp a
    cp a
    cp a
    db $fd
    db $fd
    sbc a
    sbc a
    db $fd
    db $fd
    ld a, a
    ld a, a
    dec sp
    dec sp
    sbc d
    sbc d
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    di
    di
    ld sp, $0031
    nop
    nop
    nop
    jr nz, jr_047_71c6

    ld hl, sp-$08
    db $fc
    db $fc
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
    cp $ff
    pop bc
    rst $38
    rst $18
    rst $38
    rst $08
    jr nc, jr_047_7161

    ld h, b
    cp l
    ld b, b

jr_047_71c6:
    ld a, e
    add b
    ld [hl], a
    add b
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
    rst $18
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rlca
    rst $38
    rrca
    rst $38
    ld l, $ff
    ld h, $ff
    ld e, $ff
    rra
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    rlca
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
    rst $38
    cp $ff
    nop
    rst $38
    ld a, h
    add e
    nop
    rst $38
    push af
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
    ld e, h
    ld e, h
    rst $18
    rst $38
    ld a, a
    rst $18
    ld l, [hl]
    cp $fe
    cp $be
    cp [hl]
    or a
    or a
    dec [hl]
    dec [hl]
    dec l
    dec l
    add hl, hl
    add hl, hl
    dec hl
    dec hl
    ld b, e
    ld b, e
    ld d, e
    ld d, e
    inc de
    inc de
    or a
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    and b
    and b
    ldh [$e0], a
    db $e4
    db $e4
    push hl
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38

jr_047_728e:
    rst $38
    rst $38
    ldh [$1f], a
    dec b
    ld a, [$fe01]
    ld a, [bc]
    push af
    rlca
    ld hl, sp+$16
    add sp, $04
    ld hl, sp+$18
    ldh [rP1], a
    ldh a, [$30]
    ret nz

    nop
    ldh [rLCDC], a
    add b
    add b
    nop
    ld h, b
    add b

Jump_047_72ac:
    jr jr_047_728e

    sbc a
    ld h, b
    ret nc

    nop
    ldh [rP1], a
    ret nz

    nop
    ld d, b
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    ld c, b
    nop
    and b
    nop
    and h
    nop
    ld d, b
    nop
    add sp, $00
    and b
    nop
    call nc, $e800
    nop
    or b
    nop
    push af
    nop
    jp c, $f400

    nop
    ld a, [$f500]
    nop
    cp $00
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret c

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
    rlca
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    nop
    nop
    ld b, b
    ld b, b
    inc [hl]
    ld a, l
    ld h, b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    jp z, $f6ff

    rst $38
    cp $ff
    ldh [rIE], a
    sub a
    ld l, b
    and b
    ld e, a
    nop
    rst $38
    ld a, b
    rst $38
    cp b
    rst $38
    db $e4
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    ld a, e
    ld a, e
    ld [hl], e
    ld [hl], e
    ld [hl], a
    ld [hl], a
    ld [hl], a
    ld [hl], a
    rst $20
    rst $20
    rst $20
    rst $20
    rst $28
    rst $28
    rst $08
    rst $08
    rst $08
    rst $08
    rst $18
    rst $18
    sbc a
    sbc a
    sbc a
    sbc a
    rst $18
    rst $38
    rst $38
    rst $28
    rst $20
    rst $38
    rst $20
    ei
    ei
    db $fd
    push af
    or $fe
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
    ld bc, $1001
    db $10
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    cp a
    ld b, a
    cp a
    adc a
    ld a, a
    adc [hl]
    ld a, a
    ld hl, sp+$3f
    jr jr_047_73bb

    ld [$0007], sp
    rlca
    ld [$0907], sp
    ld b, $13
    inc c
    rlca
    jr @+$09

    jr c, jr_047_73ba

    jr nc, jr_047_73fc

    jr nc, jr_047_73fe

    jr nc, jr_047_73c1

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_047_73ba:
    nop

jr_047_73bb:
    nop
    nop
    nop
    nop
    nop
    nop

jr_047_73c1:
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    sub b
    nop
    ld d, b
    nop
    jp z, $6400

    nop
    or [hl]
    nop
    rst $30
    nop
    ld a, [$f700]
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
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
    add b
    sub h

jr_047_73fc:
    nop
    rst $38

jr_047_73fe:
    nop

Jump_047_73ff:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    daa
    ret c

    ld a, a
    add b
    cpl
    ret nc

    nop
    rst $38
    rlca
    ld hl, sp+$3f
    ret nz

    rla
    add sp, $03
    db $fc
    add b
    rst $38
    ldh [rIE], a
    ld a, a
    ld a, a
    di
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $08
    ret


    xor a
    xor [hl]
    rst $38
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7e
    ld l, [hl]
    xor [hl]
    cp [hl]
    sbc $bc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ld e, a
    rlca
    rlca
    nop
    nop
    add b
    add b
    add b
    add b
    ret nc

    ret nc

    ld hl, sp-$08
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
    jr jr_047_7493

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc hl
    inc h
    ld hl, $2521
    ld h, $27
    jr z, jr_047_74b6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_047_7493:
    inc hl
    inc hl
    jr nc, jr_047_74b8

    ld hl, $3231
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_047_74da

    ld hl, $3b3a
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, c
    ld c, d
    ld c, d
    ld c, e

jr_047_74b6:
    ld c, h
    ld c, l

jr_047_74b8:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
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

jr_047_74da:
    ld [hl], b
    ld [hl], c
    ld h, d
    ld [hl], d
    ld [hl], e
    ld h, l
    ld hl, $7421
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld [hl], c
    ld h, d
    ld a, l
    ld a, [hl]
    ld a, a
    ld hl, $8180
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
    ld h, d
    sbc e
    sbc h
    sbc l
    ld h, d
    ld h, d
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    ld h, d
    ld h, d
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
    ld h, d
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    ld h, d
    ld h, d
    cp l
    ld h, d
    ld h, d
    ld h, d
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c3c3

    call nz, Call_047_6262
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    push bc
    add $c7
    ret z

    ret


    jp z, $cb62

    call z, $cecd
    ld h, d
    ld h, d
    rst $08
    ld h, d
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_047_628b

    ld h, d
    db $db
    db $db
    ld h, d
    call c, Call_047_62dd
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    sbc $62
    ld h, d
    ld h, d
    ld h, d
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    and $e7
    add sp, -$17
    ld [$eceb], a
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    nop
    nop
    nop
    nop
    nop
    dec b
    inc b
    dec b
    dec b
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
    dec b
    dec b
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc b
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
    nop
    dec b
    inc b
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
    nop
    dec b
    inc b
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
    dec b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0306
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $04
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    dec b
    dec b
    ld b, $06
    rlca
    inc bc
    ld b, $04
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [hl+], a
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    nop
    nop
    dec b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0204
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    nop
    nop
    ld bc, $0404
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld bc, $0201
    ld b, d
    ld bc, $0202
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a

Call_047_76b9:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, @-$1f

    jr nz, @-$1f

    inc h
    rst $18
    ld b, a
    cp a
    ld c, l
    cp a
    ld c, b
    cp a
    ld c, b
    cp a
    ld c, b
    cp a
    adc b
    ld a, a
    sbc b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
    sub b
    ld a, a
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

    ld h, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    call nz, $caff
    rst $38
    db $eb
    rst $38
    jp c, $ebff

    rst $38
    db $dd
    rst $38
    rst $30
    rst $38
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    nop
    ldh [rP1], a
    db $fc
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld a, [hl]
    rst $38
    ld c, a
    cp a
    pop af
    rrca
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    inc l
    db $d3
    ld bc, $46ff
    rst $38
    ld a, [$effa]
    rst $28
    ld a, a
    ld a, a
    ld d, d
    ld d, d
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    rlca
    rlca
    add b
    add b
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_047_77b2

    jr nz, jr_047_77b4

    nop
    nop
    ret z

    ret z

    ld b, b
    ld b, b
    ld [$0008], sp
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, e
    ld b, e
    db $10
    db $10
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    db $10
    stop
    nop

jr_047_77b2:
    ccf
    ccf

jr_047_77b4:
    add b
    cp a
    add l
    cp d
    sub [hl]
    xor c
    ld l, e
    ld d, h
    ld l, c
    ld a, [hl]
    ei
    ld a, [$0201]
    ld bc, $3d02
    ld a, $31
    ld [hl-], a
    ld b, h
    ld b, a
    dec b
    ld b, $00
    rlca
    jr nz, jr_047_780f

    jp nz, Jump_000_00ff

    rst $38
    nop
    rst $38
    nop
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
    jr nc, @+$01

    jr @+$01

    inc c
    rst $38
    add [hl]
    rst $38
    jp Jump_047_61ff


    rst $38
    jr nc, @+$01

    db $10
    rst $38
    ld [$04ff], sp
    ei
    dec c
    di
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld a, [bc]
    rst $30
    ld a, [bc]
    rst $30
    ld [bc], a
    rst $38
    inc de
    xor $13
    xor $17
    xor $17
    db $ec
    rra

jr_047_780f:
    db $ec
    rrca
    db $fc
    rlca
    db $fc
    cpl
    call c, $dc2f
    ld l, a
    call c, $f89f
    sbc a
    ld hl, sp+$1f
    ld hl, sp-$61
    ld hl, sp-$61
    ld hl, sp-$49
    ld hl, sp-$49
    ld hl, sp-$41
    ldh a, [$bf]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$7f]
    ldh a, [$6f]
    ldh a, [$6f]
    ldh a, [$6f]
    ldh a, [$6f]
    ldh a, [$e3]
    db $fc
    ldh [rIE], a
    ldh [rIE], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ldh [$c0], a
    ld hl, sp-$10
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    inc d
    ld hl, sp-$3c
    ld hl, sp-$04
    ld hl, sp+$38
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
    rst $38
    nop
    add b
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    rst $38
    rst $38
    rrca
    ldh a, [rNR41]
    ldh a, [$80]
    ldh a, [rP1]
    ldh [rNR41], a
    ldh [$e0], a
    ldh [$c0], a
    rst $38
    db $e4
    rst $38
    ld l, d
    rst $38
    db $dd
    db $dd
    nop
    nop
    nop
    nop
    jr nc, jr_047_78b8

    ld [$0008], sp
    nop
    ld [hl+], a
    ld [hl+], a
    jr nc, jr_047_78c0

    ld [bc], a
    ld [bc], a
    add hl, bc
    add hl, bc
    nop
    nop
    ld [$0108], sp
    ld bc, $0505
    inc b
    inc b
    nop
    nop
    add b
    add b
    ld [c], a
    ld [c], a
    nop
    nop
    ld a, [hl-]
    ld a, [hl-]
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    inc b
    ei
    ld a, [c]
    dec c

jr_047_78b8:
    xor e
    ld d, h
    rst $38
    nop
    rst $38
    nop
    ld c, l
    or d

jr_047_78c0:
    rst $38
    nop
    cp [hl]
    ld b, c
    ld [hl], b
    adc a
    jp z, Jump_000_2035

    rst $18
    ld d, [hl]
    xor c
    xor b
    ld d, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    jr z, @+$01

    jr nc, @+$01

    ld bc, $fcfe
    nop
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [$3f]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    nop
    ld bc, $fe00
    ld bc, $ff00
    nop
    rst $38
    ld d, l
    rst $38
    dec a
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
    rst $38
    ld b, b
    rst $38
    ld b, $ff
    add sp, -$18
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    add b
    add b
    nop
    nop
    inc b
    inc b
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
    ld [bc], a
    nop
    nop
    ld bc, $5a01
    ld e, d
    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [c], a
    ld [c], a
    nop
    nop
    nop
    nop
    ld b, b
    rst $38
    ld b, b
    cp a
    ld hl, sp+$07
    cp h
    ld b, e
    ldh [$1f], a
    ld d, h
    xor e
    ld b, b
    cp a
    db $10
    rst $28
    add b
    ld a, a
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
    ld e, $ff
    jr nz, @+$01

    nop
    rst $38
    ld hl, $07ff
    rst $38
    rra
    rst $38
    ld [hl], a
    rst $38
    ei
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, @+$01

    ld b, $ff
    ld bc, $80ff
    ld a, a
    ldh a, [rIF]
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
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    ldh [$1f], a
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    sub $ff
    add b
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
    rst $38
    ld a, l
    rst $38
    jp Jump_000_04ff


    inc b
    nop
    nop
    nop
    nop
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
    add b
    add b
    ld b, h
    ld b, h
    db $10
    db $10
    db $10
    db $10
    ld d, b
    ld d, b
    db $10
    stop
    nop
    nop
    nop
    inc hl
    inc hl
    jr nz, @+$22

    sub b
    sub b
    and b
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    ld bc, $fdff
    db $fd
    ccf
    rst $38
    ld a, e
    rst $38
    db $e3
    rst $38
    sbc a
    rst $38
    jp $efff


    rst $38
    ld a, a
    rst $38
    xor a
    rst $38
    dec de
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
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    adc b
    ld a, a
    ret z

    ccf
    db $e4
    rra
    db $e4
    rra
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    rrca
    db $f4
    rrca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret z

    ccf
    adc b
    ld a, a
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$10ff], sp
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    nop
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    add l
    rst $38
    sbc a
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
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$01
    ldh [$e0], a
    nop
    nop
    jr nz, jr_047_7b26

    inc [hl]
    inc [hl]
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    db $10
    db $10
    ld [$0008], sp
    nop
    ld [$0008], sp
    nop
    nop
    nop
    ld bc, $0801
    ld [$0a0a], sp
    ld a, [bc]
    ld a, [bc]
    jp z, Jump_000_22ca

    ld [hl+], a

jr_047_7b26:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    nop
    nop
    nop
    xor [hl]
    xor [hl]
    nop
    nop

Call_047_7b32:
    nop
    nop
    pop de
    pop de
    ld de, $02ff
    rst $38
    ld d, b
    rst $38
    ld bc, $08ff
    rst $38
    xor a
    rst $38
    rlca
    rst $38
    add hl, de
    rst $38
    inc d
    rst $38
    add hl, de
    rst $38
    sub a
    rst $38
    cp a
    rst $38
    ld [hl], a
    rst $38
    rst $10
    rst $38
    cp a
    rst $38
    db $fd
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    rla
    rst $38
    dec bc
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
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld c, $ff
    dec c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
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
    ccf
    ld bc, $037f
    ld a, a
    rlca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    nop
    ld bc, $0300
    inc b
    rlca
    nop
    rrca
    db $10
    rra
    nop
    ccf
    nop
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    inc d
    inc d
    ld e, $1e
    ccf
    ccf
    ccf
    ccf
    cpl
    cpl
    scf
    scf
    scf
    scf
    ccf
    ccf
    daa
    daa
    ld [hl], a
    ld [hl], a
    ld a, e
    ld a, e
    ld l, l
    ld l, l
    ld l, a
    ld l, a
    ld c, e
    ld c, e
    ld h, a
    ld h, a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld e, [hl]
    ld e, [hl]
    ld a, [hl-]
    ld a, [hl-]
    ld h, d
    ld h, d
    ld h, [hl]
    ld h, [hl]
    ld b, h
    ld b, h
    ld c, b
    ld c, b
    cpl
    cpl
    ld a, l
    ld a, a
    jp nz, $f3ff

    rst $38
    sbc a
    rst $38
    add a
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    cp a
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

jr_047_7c34:
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
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38

jr_047_7c52:
    add hl, bc
    rst $30
    dec e
    db $e3
    ld a, $c1
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
    rst $38
    nop
    rst $38
    nop
    pop af
    ld c, $cf
    jr nc, jr_047_7c52

    jr nz, jr_047_7c34

    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    dec [hl]
    ret nz

    ld l, e
    add b
    ld d, [hl]
    add b
    ld b, [hl]
    add b
    ld b, [hl]
    add b
    ld b, h
    add b
    ld b, b
    add b
    ld b, c
    add b
    pop bc
    nop
    pop bc
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fd
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [$0cff], sp
    rst $38
    inc e
    rst $38
    inc e
    cp a
    ld e, b
    cp a
    ld e, b
    cp a
    ld e, c
    cp a
    ld d, e
    cp a
    ld b, a
    sbc a
    ld l, a
    sbc a
    ld a, a
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    rst $38
    ret nz

    jp $8483


    inc b
    dec bc
    ld [$1017], sp
    cpl
    jr nz, jr_047_7d2b

    ld b, b
    cp a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    cp $ff
    cp $ff
    push de
    rst $10
    ld a, b
    ld a, [hl]
    ld l, d
    ld l, [hl]
    rst $30
    rst $38
    ld [hl], e
    ld a, e
    ld l, a
    ld a, a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ret nc

    ret nc

    sub b
    sub b
    jr nc, jr_047_7d2c

Jump_047_7cfc:
    ld [hl], b
    ld [hl], b
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
    cp $fe
    inc sp
    rst $38
    daa
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    ld hl, sp-$08
    di
    di
    rst $38
    rst $38
    rst $38

jr_047_7d2b:
    rst $38

jr_047_7d2c:
    rst $38
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
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_047_7d3f:
    rst $38
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, $ff
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $28
    rra
    rst $28
    rra
    rst $30
    rrca
    rst $30
    rrca
    di
    rrca
    di
    rrca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    add e
    ld a, a
    inc bc
    ccf
    ld hl, $031f
    ccf
    ld bc, $090f
    rst $00
    add c
    ld l, a
    or c
    ld c, a
    ld a, $01
    ld a, $01
    ld a, [hl]
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $0f
    rst $38
    rra
    rst $38
    ccf
    ei
    ld a, a
    pop af
    rst $38
    ldh [rIE], a
    nop
    ret nz

    nop
    add h
    nop
    ld c, $00
    rra
    inc b
    ccf
    nop
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    cp a
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc $ce
    db $fd
    db $fd
    ei
    ei
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ldh a, [rP1]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $20
    ei
    rst $20
    ei
    ld h, a
    ei
    ld [hl], a
    adc e
    rlca
    adc e
    rlca
    adc e
    rlca
    adc e
    rlca
    adc e
    rlca
    adc e
    rlca
    adc d
    rlca
    adc e
    rlca
    adc d
    rlca
    adc e
    rlca
    adc c
    rlca
    adc c
    rlca
    adc d
    rlca
    adc e
    rlca
    adc c
    rlca
    adc c
    rlca
    adc b
    rlca
    adc b
    rlca
    adc b
    rlca
    adc b
    rlca
    adc b
    rlca
    adc b
    rlca
    ld [$00c7], sp
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ret nz

    rlca
    ret nz

    rlca
    ld b, b
    add a
    ld b, b
    add a
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, h
    add a
    ld b, [hl]
    add a
    ld b, [hl]
    add a
    ld b, [hl]
    add a
    ld b, a
    add a
    ld b, a
    add a
    ld b, a
    add a
    daa
    rst $08
    add a
    adc a
    rlca
    rst $08
    ld [de], a
    rst $28
    ld bc, $06fe
    ld sp, hl
    ld e, a
    and b
    dec c
    ld a, [c]
    nop
    rst $38
    rst $38
    rst $38
    db $10
    db $10
    rla
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    nop
    nop
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld e, l
    ld e, l
    add b
    add b
    xor a
    xor a
    rst $18
    rst $18
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    di
    di
    rst $30
    rst $30
    ld c, a
    ld c, a
    jp z, $9fca

    sbc a
    ccf
    ccf
    ld a, a
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
    ld bc, $07ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    cp $ff
    add b
    rst $38
    nop
    rst $38
    inc b
    ei
    rst $38
    rst $38
    cp $ff
    ld [$d7ff], a
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    adc [hl]
    ld [hl], e
    xor b
    ld d, a
    sbc c
    ld h, a
    cp b
    ld b, a
    cp c
    ld c, [hl]
    sbc a
    ld l, [hl]
    ld h, c
    ld e, $1e
    ld h, c
    ld [hl], c
    ld c, $40
    ccf
    or l
    ld l, d
    sub c
    ld l, [hl]
    or c
    ld c, [hl]
    inc a
    jp Jump_047_659a


    adc l
    ld [hl], d
    ld [$08f7], sp
    rst $30
    jr nz, @+$01

    ld h, b
    rst $38
    pop hl
    rst $38
    push hl
    rst $38
    ld [$ffff], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    cp e
    ccf
    ccf
    scf
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    ld [de], a
    rst $38
    ld a, [hl+]
    rst $38
    ld d, e
    rst $38
    or a
    rst $38
    ld a, a
    rst $38
    nop
    nop
    ld b, b
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, [hl]
    ld c, [hl]

Call_047_7f80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
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
    nop
    push hl
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    adc [hl]
    adc [hl]
    db $fc
    db $fc
    db $fd
    db $fd
    ld hl, sp-$08
    di
    di
    ld h, a
    ld h, a
    ld b, c
    ld b, c
    sbc a
    sbc a

Call_047_7fb8:
    adc [hl]
    adc [hl]
    ld bc, $5001
    ld d, b
    ld h, c
    ld h, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    ld [hl+], a
    rst $30
    rst $30
    rst $28
    rst $28
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
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
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
    inc bc
    rst $38
    inc bc
    rst $38
