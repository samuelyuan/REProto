SECTION "ROM Bank $08a", ROMX[$4000], BANK[$8a]

    ld a, [bc]
    adc b
    ld a, d
    adc b
    ld c, d
    adc b
    ld c, a
    adc b
    add hl, bc
    ret z

    ld l, $c8
    ld c, c
    adc b
    inc e
    call z, $c82b
    cp a
    ld b, h
    xor a
    ld b, h
    rst $38
    inc b
    sub $24
    rla
    db $e4
    rlca
    and $bb
    ld b, d
    ld e, $e2
    ld d, a
    and d
    sbc e
    ld h, d
    jp c, $9f22

    ld h, d
    add d
    ld [hl], d
    rst $08
    ld sp, $afc1
    rst $18
    rst $38
    ld a, [c]
    db $fd
    ld [hl], d
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
    sbc a
    rst $38
    ld a, a
    rst $38
    ei
    cp a
    dec sp
    cp a
    rra
    cp a
    or a
    rra
    dec de
    cp a
    dec de
    ccf
    rra
    ld a, e
    ld c, a
    dec de
    cpl
    rra
    ld a, [de]
    ld e, a
    ld a, [hl]
    ld e, a
    rra
    ld l, a
    cp l
    cpl
    ld l, h
    cp a
    ld a, l
    cp a
    sub $bf
    rst $38
    sub a
    sub a
    ccf
    sbc a
    ccf
    dec a
    ccf
    sbc a
    ld l, a
    scf
    db $eb
    cp a
    ret


    rst $28
    jp $d7ed


    call c, $bfef
    xor $d6
    db $ed
    cp [hl]
    call $cd2f
    ld a, l
    db $dd
    ld c, a
    rst $20
    sbc a

Call_08a_4085:
    ld h, a
    ei
    ld h, a
    ld h, d
    rst $28
    ld a, d
    ld h, a
    ld l, e
    ld h, a
    ld l, a
    db $e3
    ld c, c
    ld h, a
    xor a
    rst $30
    ld a, a
    or a
    di
    xor e
    sub [hl]
    db $eb
    sbc l
    ld [$8dfc], a
    rst $18
    adc e
    rst $18
    adc d
    or a
    ret z

    sbc a
    ldh [rIE], a
    and b
    xor e
    ldh [$ed], a
    di
    ld e, c
    rst $30
    rst $18
    ld [hl], l
    db $ed
    ld d, [hl]
    sbc $d7
    sbc l
    ld a, [c]
    ld [bc], a
    db $fc
    sub [hl]
    ret


    rst $10
    ret z

    db $dd
    jp z, $c8dd

    ld e, l
    add sp, -$3e
    ld d, h
    sbc b
    ld l, l
    sbc d
    ld c, b
    xor d
    ld c, c
    or a
    dec c
    call nc, $c76c
    inc l
    rst $18
    inc l
    rst $00
    inc a
    xor a
    ld h, h
    xor a
    ld [hl], h
    and c
    db $76
    ld l, d
    ld [hl-], a
    ld l, c
    and d
    ld b, c
    ld [hl], $43
    ld h, $01
    ld [hl], h
    ldh [$b2], a
    pop hl
    add [hl]
    ldh [$92], a
    ld h, e
    ld a, [bc]
    ld h, $96
    db $76
    ld b, $78
    ld c, $f2
    ld [bc], a
    ld [hl], c
    inc bc
    pop af
    dec bc
    or c
    dec b
    cp l
    rlca
    db $fd
    dec b
    cp l
    dec b
    sbc l
    dec b
    cp l
    dec b
    sub e
    inc bc
    rlc e
    db $db
    rlca
    and e
    rlca
    jp c, Jump_08a_5a02

    ld [bc], a
    sub e
    inc bc
    and d
    ld [bc], a
    adc $02
    ld c, e
    inc bc
    ld c, c
    ld bc, $0129
    dec h
    add c
    ld hl, $4281
    ld bc, $0110
    db $10
    ld bc, HeaderLogo
    nop
    ld bc, $0100
    inc b
    ld bc, $0100
    db $eb
    db $f4
    rrca
    rst $38
    sub b
    rst $28
    push de
    dec hl
    rra
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
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    rra
    ld e, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    dec a
    rst $38
    sbc a
    xor a
    ld c, a
    cp a
    cp a
    ccf
    rst $38
    ccf
    ld c, [hl]
    cp a
    sub $0f
    adc a
    ld a, a
    ld c, a
    cp a
    ld l, a
    cp a
    ld l, a
    cp a
    ld h, a
    cp a
    ei
    cp a
    ld a, a
    cp a
    sbc a
    rst $38
    rst $38
    add a
    ld sp, hl
    adc e
    or $87
    db $76
    adc a
    ld [hl], l
    rst $00
    ld [hl], e

jr_08a_41ab:
    rst $00
    push af
    rst $08
    di
    set 6, c
    add c
    ld [hl], c
    adc c
    pop de
    ld l, l
    and l
    ld a, c
    pop af
    add hl, de
    jr nc, jr_08a_41ab

    dec a
    push hl
    ld [hl], l
    cp c
    ld [hl], c
    db $fd
    ret c

    ld a, h
    ret


    dec l
    ret


    dec [hl]
    add sp, $30
    ld a, l
    dec l
    ld a, [hl]
    or [hl]
    ld e, b
    inc [hl]
    ld d, [hl]
    cp h
    adc [hl]
    ld e, h
    ld c, $3c
    sub $7c
    db $e4
    ld e, h
    call c, Call_000_1848
    ld l, [hl]
    jr nc, jr_08a_41ea

    inc [hl]
    ld h, h
    nop
    ld [hl], d
    inc c
    ld b, b
    inc b

jr_08a_41e7:
    jr nz, jr_08a_420d

    ld h, b

jr_08a_41ea:
    jr nz, jr_08a_424c

    db $10
    stop
    jr nz, jr_08a_41f1

jr_08a_41f1:
    jr nz, @+$3a

    nop
    jr nc, jr_08a_41f6

jr_08a_41f6:
    ld b, b
    jr nz, jr_08a_4229

    nop
    nop
    ld [$0c00], sp
    add b
    ld c, h

Call_08a_4200:
Jump_08a_4200:
    inc d
    ld [$8800], sp
    nop
    inc c
    jr nz, @+$0e

    nop
    add h
    nop
    add [hl]
    ld [bc], a

jr_08a_420d:
    and h
    add b
    and [hl]
    inc b
    xor [hl]
    add b
    and $00
    add $44
    db $e4
    add h
    sub $04
    and $40
    ld a, [hl]
    jr nz, jr_08a_41e7

    ld e, a
    ld e, a
    jp c, Jump_08a_54da

    ld d, h
    ld e, c
    ld e, c
    ei

jr_08a_4229:
    ld a, [$bcbf]
    rst $28
    add sp, -$21
    ret nc

    ld hl, sp-$10
    db $fc
    ldh [$f4], a
    ret nz

    add sp, -$80
    add sp, $00
    call z, $d600
    nop
    add c
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
    rst $38
    db $fc
    rst $38

jr_08a_424c:
    db $fd
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
    rst $30
    rst $38
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $00
    add $c7
    rst $00
    rst $20
    and $ae
    xor [hl]
    db $fc
    cp $fb
    cp $fe
    cp $fb
    cp $f9
    cp $fc
    ei
    push af
    ld sp, hl
    reti


    rst $30
    jp c, $fff3

    pop af
    di
    ei
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    ei
    db $ed
    ei
    cp $f9
    cp $f9
    ld a, d
    db $fd
    ld l, d
    ld a, l
    jp c, Jump_000_1add

    reti


    cp h
    ld sp, hl
    dec l
    ld a, [$7c57]
    ld a, l
    cp $f8
    rst $38
    ei
    cp $97
    cp $9a
    db $fd
    sbc d
    db $fd
    sbc a
    db $fd
    dec e
    rst $38
    ld d, h
    rst $18
    rst $10
    sbc $f4
    rst $38
    ld [hl-], a
    db $fd
    ld a, h
    rst $38
    dec a
    ld a, a
    dec a
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld l, $7f
    ld a, [hl+]
    ld a, a
    dec sp
    ld a, a
    dec a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    dec a
    ld a, a
    add hl, sp
    ld a, a
    ld [hl], $3f
    dec [hl]
    ccf
    dec a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    dec sp
    ccf
    ccf
    ccf
    dec sp
    ccf
    sbc e
    ccf
    ld [de], a
    scf
    rla
    cp a
    dec e
    cp a
    dec de
    cp a
    inc de
    or a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp [hl]
    ld a, l
    ld a, h
    or a
    or h
    scf
    jr nc, jr_08a_436c

    ld d, b
    rst $38
    ldh [$e3], a
    ldh [$d4], a
    ret nz

    ret c

    add b
    or b
    nop
    ldh [rP1], a
    ld b, b
    nop
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
    inc b
    nop
    ret nz

    db $10
    dec [hl]
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
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    ld a, e
    cp a
    rst $38
    rst $38
    rst $28
    rst $38
    ccf
    rst $38
    cp $ff
    db $db
    rst $38

jr_08a_436c:
    jp $a3ff


    rst $38
    or d
    cp a
    set 3, a
    set 3, a
    rst $20
    rst $18
    rst $08
    rst $38
    and c
    rst $38
    xor c
    ld [hl], a
    dec hl
    ld a, a
    and c
    rst $38
    sbc e
    rst $38
    dec l
    db $db
    ld c, c
    ei
    ld l, l
    db $db
    rrca
    ld sp, hl
    ret nc

    ld l, e
    ld c, h
    ld a, e
    ld e, b
    xor e
    cp d
    ld c, l
    ld l, b
    reti


    db $db
    ld l, c
    ret


    ld a, c
    reti


    ld a, c
    adc l
    ld sp, hl
    pop de
    ld c, l
    ldh [rKEY1], a
    ldh a, [rKEY1]
    ld a, h
    ret


    db $10
    db $eb
    ld b, h
    ld l, c
    xor h
    ld b, e
    ld c, b
    ld b, c
    ret nc

    ld h, d
    ret nz

    ld h, e
    ld [hl], b
    add c
    nop
    xor c
    and b
    inc de
    ld hl, sp+$32
    sbc b
    dec [hl]
    or b
    dec d
    ret nz

    dec [hl]
    sbc b
    ld h, l
    ld b, b
    dec a
    add c

Jump_08a_43c5:
    dec [hl]
    add h
    ld e, a
    add hl, bc
    ld a, a
    nop
    ld a, l
    add b
    ld d, l
    inc b
    ld a, a
    inc b
    ld a, a
    ld b, $b7
    ld [de], a
    ld [hl], $22
    ccf
    dec d
    scf
    ld bc, $02bf
    cp e
    ld [bc], a
    ld a, a
    ld h, $f7
    ld [hl+], a
    cp a
    ld [bc], a
    cp e
    add b
    or a
    nop
    rst $38
    nop
    or a
    ld bc, $10ff
    rst $38
    ei
    ei
    xor $ef
    db $fd
    cp $db
    call c, Call_000_383f
    cp a
    or b
    rst $38
    ldh [rIE], a
    ret nz

    dec bc
    ret nz

    pop de
    nop
    dec [hl]
    nop
    inc h
    nop
    jp $8500


    nop
    daa
    nop
    ld d, $00
    inc b
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
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
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

Jump_08a_443d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    xor a
    rst $28
    xor a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    push de
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    sub a
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    ld a, e

Call_08a_448f:
    rst $38
    rst $08
    rst $38
    ld d, a
    rst $38
    rst $18
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    ld [de], a
    ldh [rNR23], a
    ldh [$31], a
    ret nz

    nop
    add b
    nop
    nop
    inc b
    nop
    nop
    nop
    and h
    ld d, b
    call nc, Call_08a_4200
    inc h
    jr z, jr_08a_450a

    dec b
    add b
    inc b
    add d
    ld c, $00
    inc c
    nop
    nop
    ld [$0008], sp
    stop
    nop
    db $10
    jr nc, jr_08a_44d8

jr_08a_44d8:
    jr c, jr_08a_44da

jr_08a_44da:
    ld [hl], b
    nop
    nop
    nop
    add b
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    ld [$0008], sp
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
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
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38

jr_08a_450a:
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
    ccf
    cp a
    cp a
    cp a
    ccf
    cp a
    ccf
    rst $38
    cp a
    cp a
    cp a
    rst $38
    cp a
    cp a
    cp a
    cp a
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
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
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp h
    db $fd
    ld hl, sp-$05
    ld hl, sp-$0d
    add sp, -$09
    ldh [rIE], a
    jp z, $99f0

    ldh [$2a], a
    nop
    ld a, $40
    rra
    and b
    add d
    ld e, l
    db $e4
    add hl, de
    xor [hl]
    ld d, c
    sbc $21
    cp a
    ld b, b
    rst $38
    nop
    ld a, [$bb04]
    inc b
    ld e, $20
    nop
    ld [$0800], sp
    stop
    jr nz, jr_08a_456e

jr_08a_456e:
    ld [$0000], sp
    nop
    add b
    ld bc, $0002
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1000], sp
    nop
    nop
    nop
    jr nz, jr_08a_4586

jr_08a_4586:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    cp $ff
    rst $30
    rst $38
    or $ff
    or $ff
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    cp $ff
    or $ff
    di
    rst $38
    rst $30
    rst $38
    or $ff
    di
    rst $38
    or $ff
    rst $30
    rst $30
    ld a, [c]
    rst $30
    di
    di
    di
    rst $30
    di
    di
    di
    rst $30
    di
    rst $38
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    push hl
    rst $38
    rst $08
    rst $38
    cp [hl]
    rst $38
    and d
    rst $38
    ret nz

    rst $20
    db $10
    adc l
    adc h
    db $dd
    db $fd
    rst $38
    or $ff
    rst $20
    rst $20
    call nz, Call_000_00f4
    sbc c
    nop
    cp [hl]
    inc b
    ld sp, $9966
    ld h, [hl]
    sbc c
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ret c

    nop
    sub b
    nop
    stop
    jr nc, jr_08a_4636

jr_08a_4636:
    ld h, d
    nop
    ld b, c
    nop
    ld b, b
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0108
    inc b
    ld bc, $0003
    ld [bc], a
    nop
    inc bc
    nop
    ld b, $01
    ld bc, $0404
    ld [$1008], sp
    jr z, jr_08a_466e

jr_08a_466e:
    jr nz, jr_08a_4670

jr_08a_4670:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38

Jump_08a_4679:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    db $dd
    rst $38
    call z, $b6ff
    db $fd
    rst $18
    or $db
    db $f4
    rst $08
    ldh a, [$d4]
    ld [$dae1], a
    call nc, $86d9

jr_08a_469f:
    ld sp, hl
    call nc, $d3df
    db $db
    call $d4eb
    ei
    call nz, $dcf2
    pop af
    ld a, [c]
    call $df90
    add e
    ret c

    sub b
    cp $90
    push de
    add b
    sub h
    add b
    add $c0
    rst $18
    call nz, Call_08a_448f
    sub l
    ret nz

    add l
    call z, Call_08a_4085
    adc l
    add b
    push bc
    add b
    push bc
    ld b, b
    add e
    nop
    jp $9700


    ld bc, $4057
    add a
    pop de
    rla
    add b
    ld d, a
    ret nz

    rla
    and c
    rlca
    add a
    rla
    ld b, a
    rlca
    and a
    rlca
    rst $00
    rlca
    rst $00
    rlca
    rst $00
    rla
    rst $20
    rla
    add a
    rla
    ld b, a
    rla
    rst $28
    rla
    xor a
    rlca
    or a
    rla
    rst $10
    rla
    rst $10
    rla
    rst $38
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
    ld a, l
    rst $38
    ld d, c
    rst $38
    ld [hl], d
    rst $38
    ld [hl+], a
    or $66
    db $ec
    db $10
    db $ed
    ret


    jp hl


    sub c
    push de
    sub c
    sub e
    jr nz, jr_08a_4740

    nop
    sbc d
    jr c, jr_08a_475c

    jr c, jr_08a_469f

    ld h, c
    dec e
    ld [hl], b
    add c
    or b
    add hl, bc
    cp $00
    db $fd
    nop
    ld a, a
    nop
    cp $01
    sbc $21
    cp c
    ld b, [hl]
    add c
    add d
    sub h
    add b
    dec bc
    nop
    add e
    add b
    add a
    add b
    rst $30
    ldh a, [rPCM12]
    ld h, [hl]
    add $c6

jr_08a_4740:
    ld de, $0000
    db $10
    stop
    jr z, jr_08a_4748

jr_08a_4748:
    nop
    jr nc, jr_08a_475b

    jr nz, jr_08a_476d

    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    ld b, c
    add b
    ld bc, $0180
    add b
    add c
    nop
    sub c

jr_08a_475b:
    nop

jr_08a_475c:
    ld d, b
    ld bc, $208b
    db $76
    add b
    ld [$14f2], sp
    ld [c], a
    ld [hl-], a
    call nz, SerialTransferCompleteInterrupt
    ld d, b
    nop
    inc d

jr_08a_476d:
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
    rst $28
    rst $38
    jp $d7ff


    rst $38
    cp [hl]

Jump_08a_477f:
    rst $38
    cp h
    rst $18
    add a
    cp a
    ld c, h
    add a
    call z, Call_000_1335
    call c, Call_08a_4d74
    push af
    rrca
    ld b, $fc
    inc c
    or $90
    ccf
    ld l, [hl]
    xor b
    adc l
    jr nc, jr_08a_47e8

    sub b
    ld sp, hl
    ld d, $ff

jr_08a_479d:
    db $10
    db $dd
    ld [hl+], a
    db $fd
    ld c, d
    cp b
    rst $00
    and b
    ld e, a
    inc b
    ei
    ld h, b
    rst $38
    db $f4
    rst $28
    rst $38
    rst $28
    xor h
    rst $38
    and [hl]
    db $fd
    and h
    rst $38
    or h
    rst $38
    and h
    rst $38
    xor b
    rst $38
    xor h
    rst $38
    or l
    rst $38
    push af
    rst $38
    or l
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    rst $38
    jp hl


    rst $38
    db $fd
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_08a_47e8:
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
    rst $38
    ld e, a
    rst $38
    ld b, [hl]
    rst $30
    ld b, $ff
    inc l
    rst $38
    jr @+$01

    rrca
    rst $38
    inc bc
    rst $38
    nop
    dec d
    add b
    ld de, $3581
    add hl, bc
    inc sp
    dec b
    ld [hl], e
    nop
    rst $38
    ld bc, $7c7e
    ld a, [hl]
    add b
    add $49
    sub h
    jr c, jr_08a_479d

    ld a, h
    add c
    ld a, e
    add h
    di
    inc b
    rst $30
    ld [$0881], sp
    or [hl]
    nop
    ld c, b
    nop
    or $06
    ld hl, sp+$00
    rst $30
    rlca
    rrca
    rrca
    sbc a
    sbc a
    ld b, b
    jr nz, jr_08a_4853

    nop
    cpl
    db $10
    rrca
    nop
    ld c, b
    nop
    ld [hl+], a
    ld b, b
    inc c
    ld b, b
    push bc
    nop
    ld b, h
    add c
    dec b
    add b
    ld a, [de]
    add c
    add hl, bc
    add b
    ret nz

    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_08a_4853:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38

jr_08a_4863:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    inc d
    rst $38
    adc $ff
    push af

jr_08a_486f:
    rst $38
    sbc a
    rst $38
    rst $20
    rst $28
    and c
    pop de
    sub a
    pop bc
    rrca

jr_08a_4879:
    or l
    inc hl
    db $ed
    rla
    pop bc
    ld a, [de]
    push hl
    cp e
    ld b, l
    ld a, [hl+]
    dec b
    cp e
    inc b
    cp c

jr_08a_4887:
    ld b, [hl]
    add hl, sp
    add [hl]
    db $fd
    add d
    rst $38
    nop
    rst $38
    nop
    rst $08
    or d
    jp nz, Jump_08a_443d

    cp e
    jr jr_08a_4887

    jr nz, jr_08a_4879

    jr c, jr_08a_4863

    sub c
    rst $28
    jr nc, jr_08a_486f

    sub e
    ld l, a
    ld a, [de]
    rst $20
    or e
    rst $08
    sbc c
    rst $20
    ld a, [de]
    rst $20
    or d
    rst $08
    dec e
    ld [c], a
    sbc d
    push hl
    cp b
    rst $00
    sub d
    db $ed
    rst $18
    ld [hl+], a
    inc sp
    ld hl, $0330
    inc de
    inc hl
    sbc e
    rst $28
    jp c, $ebff

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
    rst $38
    rst $38
    cp $ff
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
    rst $30
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    push de
    rst $38
    add e
    rst $18
    inc bc
    reti


    adc b
    inc de
    nop
    rst $38
    nop
    rst $38
    inc d
    ei
    nop
    ld sp, hl
    ld b, c
    sbc b
    db $10
    ld [bc], a
    nop
    dec d
    add b
    dec d
    ldh [$15], a
    xor d
    nop
    inc bc
    ld [hl], h
    dec e
    and h
    ld de, $fee6
    ld hl, $2140
    ret nz

    ld bc, $8080
    ld b, b
    ld b, b
    call $a8c8
    xor b
    jp c, $ffda

    cp $40
    ld bc, $0049
    ret


    nop
    ret nc

    nop
    add hl, de
    add b
    ld de, $1488
    adc b
    adc b
    dec b
    inc b
    add d
    inc b
    add d
    nop
    add d
    add b
    ld [bc], a
    ld b, b
    ld [bc], a
    ld bc, $0202
    nop
    ld de, $0102
    nop
    ld [de], a
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
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
    rst $38
    db $76
    rst $30
    ld hl, $7dff
    rst $10
    rst $30
    rst $38
    ld a, c
    ld sp, hl
    dec hl
    db $fd
    xor e
    dec a
    rra
    ld e, l
    cp [hl]
    ld d, l
    rst $38
    ld [hl], l
    add h
    rst $38
    call c, $cf7f
    inc a
    pop de
    ld l, $f1
    ld c, $71
    adc [hl]
    ld a, e
    call nz, Call_000_14fb
    di
    inc c
    rst $28
    ld a, a
    ld [$8b15], a
    ld [hl], h
    ld a, [hl]
    or a
    nop
    rst $38
    ld c, a
    cp a
    rst $28
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    ld l, c
    rst $38
    ld c, c
    rst $38
    ld l, c
    cp a
    ld l, c
    cp a
    ld e, c
    cp a
    dec de
    rst $38
    dec c
    rst $38
    ld a, [de]
    rst $38
    ld c, e
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    rst $38
    ld d, a
    rst $38
    ld e, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $db
    rst $38
    jp c, $faff

    rst $38

Jump_08a_49da:
    adc d
    rst $38
    add b
    cp $89
    add sp, -$37
    set 1, c
    ret


    cp c
    ld sp, hl
    adc l
    db $dd
    add l
    add l
    add b
    adc b
    add b
    db $e3
    add e
    and b
    ld [bc], a
    add sp, $03
    adc h
    inc sp
    ret z

jr_08a_49f6:
    inc sp
    add h
    db $db
    jr nz, jr_08a_49f6

    nop
    ld sp, hl
    inc b
    cp $00
    rst $38
    nop
    ei
    inc b
    cp h
    nop
    ldh [rDIV], a
    or $00
    jp nz, $8404

    nop
    add h
    nop
    ld b, $00
    add d
    nop
    ld d, $00
    ld [bc], a
    nop
    ld [hl+], a
    nop
    nop
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
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
    add d
    nop
    add c
    nop
    nop
    add b
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0000
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec hl
    rst $38
    ld l, e
    rst $38
    dec sp
    rst $28
    rra
    rst $38
    rst $18
    ld a, a
    adc a
    ld a, a
    sbc e
    ld a, a
    rst $00
    ld a, a
    or a
    ld a, a
    ld e, e
    cp a
    dec [hl]
    rst $38
    sub a
    ld a, a
    ld b, [hl]
    cp a
    add a
    ld a, a
    or l
    rst $18
    ld sp, $97df
    ld a, a
    rst $38
    ld e, a
    rst $00
    ld a, a
    sub a
    ld a, a
    cp a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $30
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $28
    ccf
    rst $38
    ccf
    rst $38
    ld [hl], a
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
    dec hl
    rst $38
    dec hl
    rst $38
    dec hl
    rst $38
    rla
    rst $38
    rrca
    rst $38
    ld c, e
    rst $38
    ld c, e
    rst $38
    ret


    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    jp z, $c3ff

    rst $38
    db $d3
    rst $38
    ld a, [c]
    rst $38
    db $d3
    rst $38
    sub $ff
    call nc, $ddfd
    rst $30
    db $f4
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    db $ed
    db $fd
    cp $ff
    rst $30
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld sp, $31ff
    rst $38
    ld e, c
    rst $38
    ret nc

    ld a, a
    cp a
    ld a, a
    dec bc
    xor a
    add b
    dec sp
    add b
    ld c, $48
    ld b, $40
    add a
    ld d, b
    rlca
    pop bc
    ld [hl], $8f
    ld c, a
    inc bc
    sla c
    rlca
    jp nz, $e817

    inc bc
    db $fc
    ld bc, $00fe
    cp $01
    rst $38
    nop
    ei
    inc b
    rrca
    db $10
    rra
    nop
    ld e, $01
    inc e
    inc bc
    rlca
    db $10
    rlca
    nop
    ld bc, $0500
    nop
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
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $ff
    rst $38
    rst $38
    cp $ff
    cp $fe
    cp $fe
    cp $ff
    cp $ff
    cp $ff
    ld a, b
    cp $3c
    cp $fc
    rst $38
    cp $ff
    cp $ff
    ld a, h
    rst $38
    ld a, l
    rst $38
    db $fc
    rst $38
    cp $fe
    ld a, l
    cp $7e
    db $fd
    ld a, b
    rst $38
    ld sp, hl
    rst $38
    db $fd

Jump_08a_4b77:
    rst $38
    push af
    rst $38
    ld a, l
    ld sp, hl
    db $fc
    ei
    ld hl, sp-$01
    ld a, c
    ei
    ld a, b
    ei
    ld a, c
    rst $38
    ld a, c
    rst $38
    jp hl


    rst $38
    ld a, e
    rst $38
    ld l, c
    db $eb
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, b
    rst $38
    ei
    db $fd
    pop de
    rst $38
    dec d
    rst $38
    ld c, b
    rst $38
    ld b, e
    rst $38
    ld [hl], l
    rst $38
    pop de
    rst $38
    pop de
    db $fd
    ld h, b
    rst $30
    ld b, b
    db $d3
    ret nz

    rst $18
    ret nz

    rst $38
    ret z

    rst $38
    ret nc

    rst $38
    add sp, -$07
    ret nz

    db $ed
    ldh [$e7], a
    ld h, b
    db $e3
    ld h, b
    rst $38
    ld [hl], b
    ld a, l
    jr nc, jr_08a_4c3b

    ld hl, $fd7c
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    rra
    rra
    rrca
    ld c, a
    xor [hl]
    ld c, $bc
    inc c
    ld [hl], a
    adc a
    ld a, a
    add a
    ld a, a
    add a
    ld a, e
    add a
    ld a, a
    add e
    cp a
    ld b, e
    cp $03
    db $fd
    inc bc
    ei
    dec b
    ld [hl], $09
    inc h
    nop
    jr nc, @+$12

    sub c
    sub c
    set 1, e
    rst $38
    rst $28
    rst $38
    rst $28
    db $e3
    db $e3
    db $10
    inc c
    nop
    inc c
    ld [$0000], sp
    ld [$0806], sp
    ld a, [bc]
    inc b
    add hl, bc
    inc b
    ld bc, $4a04
    inc b
    inc b
    ld [bc], a
    ld e, l
    ld [bc], a
    rra
    nop
    ld a, [bc]
    ld bc, $0001
    ld bc, $0100
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    ld a, a
    ld d, l
    ld a, a
    dec h
    rst $38
    rst $18
    ld a, a
    ccf
    rst $38
    ld a, a

jr_08a_4c3b:
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ei
    xor e
    ld a, a
    ld a, e
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld h, e
    rst $38
    rst $38
    rst $28
    ld [hl], a
    rst $38
    ld e, d
    rst $38
    ld a, a
    cp $77
    db $fc
    db $76
    db $fd
    ld e, [hl]
    rst $28
    rst $08
    ld a, [hl]
    ld c, l
    ld e, [hl]
    ld b, [hl]
    rst $28
    ld [hl], a
    ld l, [hl]
    ld c, h
    rst $28
    ld e, a
    rst $28
    ld l, l
    rst $18
    ld c, h
    rst $38
    ld a, l
    rst $18
    ld c, l
    cp l
    ld a, h
    rst $38
    cp d
    rst $38
    ld a, [hl]
    cp a
    db $fd
    cp [hl]
    adc [hl]
    db $fd
    ld b, $dd
    ld b, e
    sbc l
    add hl, bc
    cp $bd
    ld a, [hl]
    rra
    ld hl, sp-$53
    ld a, [$f884]
    push hl
    ld a, [$fac6]
    sbc b
    xor $bf
    call $de2c
    inc e
    rst $08
    add l
    rst $38
    ret nc

    rst $38
    inc b
    ld a, [$ff21]
    ld c, h
    di
    adc h
    db $d3
    ret c

    rst $38
    add hl, hl

jr_08a_4ca5:
    ei
    dec l
    cp c
    add hl, sp
    push af
    sbc c
    ld [hl], l
    ld sp, $c4d5
    cp c
    inc [hl]
    ld hl, sp+$3a
    rst $30
    ld [hl], c
    cp a
    add hl, de
    cp e
    ldh a, [$3b]
    or b
    dec a
    inc l
    sub e
    and b
    inc e
    ld b, b
    inc a
    jr c, jr_08a_4ca5

    ld sp, $39f9
    ld sp, hl
    add hl, hl
    jp hl


    add hl, bc
    xor c
    sbc b
    add hl, hl
    ld [$0038], sp
    ld a, b
    ld b, b
    cp b
    cp b
    ld hl, sp+$20
    ld hl, sp-$40
    ldh a, [$c0]
    ldh a, [$50]
    ldh a, [$30]
    ldh a, [$79]
    ld sp, hl
    ld [hl], c
    pop af
    ld a, c
    ld sp, hl
    jr c, @-$06

    cp c
    ld a, c
    or c
    ld [hl], c
    pop af
    ld sp, $7999
    cp c
    ld a, c
    pop de
    ld sp, $33d3
    pop af
    add hl, de
    ld a, [c]
    ld a, [de]
    ldh a, [$08]
    ld hl, sp+$00
    ld hl, sp+$04
    ld d, a
    inc bc
    rst $28
    ld bc, $01bf
    db $db
    ld hl, $43bc
    add a
    ld a, b
    add c
    ld a, [hl]
    add d
    ld a, l
    cp $bf
    xor a
    rst $38
    cp a
    rst $18
    or a
    rst $38
    rst $38
    cp a
    sub [hl]
    rst $38
    or $ff
    or [hl]
    rst $38
    or $ee
    xor $ee
    or d
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    cp c
    db $fd
    ld sp, hl
    rst $38
    db $eb
    rst $38
    ei
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    ei
    cp a
    db $dd
    rst $38
    ld c, h
    rst $38
    jr nz, @+$01

    sbc l
    ld a, a
    db $fd
    ld c, $f9
    ld c, $f9
    ld e, $e9
    cp [hl]
    cp l
    ld a, h
    db $dd
    call c, $dedf
    ld e, a
    sbc $d7
    ld d, [hl]
    push af
    or $f5
    db $76
    push af
    db $76
    rst $00
    ld e, h
    daa
    ld l, h

Call_08a_4d74:
    adc a
    ld l, h
    ld h, e
    ld a, h
    db $e3
    ld a, b
    db $eb
    ld hl, sp-$1b
    xor $e7
    add sp, -$21
    ld hl, sp-$04
    ei
    di
    ld a, [$f8f7]
    ld h, a
    ld hl, sp+$07
    jp c, $9297

    sub e
    jp nc, $f6f3

    ld a, e
    ld [hl], d
    ld e, l
    ld d, d
    db $db
    ret nc

    db $db
    ret nc

    rst $38
    db $f4
    rst $30
    db $fc
    rst $38
    ldh a, [$bf]
    or b
    cp l
    or d
    or e
    cp c
    and e
    or l
    or e
    xor l
    or e
    and l
    cp [hl]
    and b
    or $e0
    push af
    ld [c], a
    db $fd
    db $e3
    ld a, l
    ld h, e
    ld e, a
    ld b, e
    rst $18
    jp $c1dc


    call c, $dfc2
    pop bc
    rst $18
    pop hl
    rst $18
    pop hl
    ld a, l
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, d
    rst $38
    jp nz, Jump_08a_4679

    pop af
    add $bd
    jp nz, $80bd

    or c
    adc h
    inc a
    ld c, $3e
    inc c
    ld l, [hl]
    dec c
    ld a, b
    dec b
    xor e
    add c
    ld [hl], c
    inc bc
    cp l
    adc a
    rst $30
    adc l
    rst $38
    add l
    dec [hl]
    dec b
    ld a, a
    dec c
    dec h
    rrca
    ld a, l
    dec c
    inc l
    rrca
    cp e
    dec bc
    ld sp, hl
    dec c
    ld sp, hl
    rrca
    di
    rlca
    ld sp, hl
    dec bc
    jp hl


    rrca
    ld a, e
    rra
    ld d, b

Call_08a_4e01:
    dec de
    ld d, d
    ld a, [de]
    ld [de], a
    rra
    jr jr_08a_4e22

    dec de
    dec de
    dec de
    dec de
    ld e, $1f
    ld e, $9e
    rst $08
    ei
    call $fdd9
    db $db
    set 7, a
    rst $38
    ei
    rst $38
    rst $38
    rst $20
    rst $28
    rst $38
    rst $28
    cpl
    rst $38

jr_08a_4e22:
    rst $38
    rst $38
    cp e
    ei
    push af
    ei
    rst $30
    ei
    rst $30
    ei
    and $db
    db $dd
    jp z, $ebf9

    db $db
    rst $28
    rst $08
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $08
    rst $30
    cp a
    rst $00
    adc a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $08
    ld a, a
    adc $de
    rst $18
    db $fd
    xor a
    ld a, l
    rst $08
    ld e, a
    ld [hl], a
    ld a, [de]
    ld a, a
    or d
    ld a, a
    or a
    ld l, a
    sub a
    db $f4
    adc a
    ld e, [hl]
    xor a
    ld a, a
    cp a
    rst $18
    cp a
    ld a, a
    ccf
    dec l
    rra
    rst $38
    sbc a
    cp e
    db $dd
    ld a, e
    sbc l
    di
    rst $10
    sbc [hl]
    rst $18
    ld a, d
    rst $18
    jp $e717


    cpl
    rst $20
    ccf
    rst $28
    ccf
    rst $28
    ccf
    or $bf
    or $7f
    ld a, [hl]
    ld c, [hl]
    ld a, [hl]
    bit 3, [hl]
    rst $08
    rst $20
    rst $28
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld e, l
    rst $28
    rst $08
    db $fd
    ld c, a
    xor a
    ld e, a
    db $dd
    ld e, a
    cp a
    ld e, e
    ccf
    ld e, e
    ld a, a
    rst $18
    rst $28
    ld c, a
    rst $28
    ld e, a
    ld a, a
    ld c, a
    adc a
    ld a, a
    ld a, a
    ld e, a
    sbc l
    cp a
    ld a, a
    cp a
    db $fd
    cp a
    rst $30
    or a
    rst $10
    cp a
    ld c, a
    cp a
    ld e, a
    ccf
    rst $18
    ccf
    or a
    ld e, e
    ld sp, hl
    ld sp, $51bf
    sbc a
    ld [hl], c
    add sp, $13
    cp [hl]
    ld e, a
    cp l
    ld d, [hl]
    db $fd
    rla
    ld e, a
    dec a
    ld sp, hl
    ccf
    db $fd
    scf
    swap e
    ld [hl], a
    ld [hl], a
    ld d, a
    rst $28
    xor $ff
    cp [hl]
    cp $fc
    ccf
    and h
    add hl, sp
    db $e3
    ld a, b
    ei
    ld l, [hl]
    and [hl]
    ld a, d
    xor $73
    scf
    ld h, [hl]
    ld l, l
    ld e, $ee
    dec e
    ld e, b
    db $dd
    ld a, a
    db $fc
    or c
    rst $38
    sub e
    ld a, [$3ef1]
    inc [hl]
    cp c
    or l
    ei
    cp e
    rst $30
    dec sp
    rst $30
    sbc a
    inc sp
    ld a, b
    ld [bc], a
    inc c
    dec b
    dec bc
    ld bc, $b18d
    add hl, sp
    and l
    add hl, sp
    pop hl
    rst $20
    pop hl
    sub $c0
    jp c, $ffcc

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
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
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    db $dd
    rst $18
    rst $18
    rst $38
    rst $30
    rst $38
    ld a, e
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    cp $7f
    cp $7f
    cp $7f
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    db $fd
    ei
    db $fd
    rst $30
    ld sp, hl
    db $fd
    ld h, e
    rst $38
    ld a, c
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    ld [hl], e
    xor $73
    xor a
    and $f7
    and $64
    rst $38
    rst $38
    ld e, a
    ld a, a
    db $dd
    cp $dd
    db $fd
    sbc $ff
    call c, $ec9e
    cp [hl]
    db $ec
    ld hl, sp-$16
    db $ec
    ld a, [$fefd]
    adc $fe
    cp $de
    cp e
    sbc $f6
    sbc h
    xor c
    call c, $d9fd
    cp a
    reti


    rst $38
    sbc a
    rst $18
    cp a
    ld a, [hl]
    cp a
    ld [hl], a
    ld [hl], $ef
    ld [hl], $fe
    cp [hl]
    ei
    cp a
    cp c
    rst $38
    ld d, h
    ei
    rst $20
    ld d, [hl]
    rst $08
    db $76
    rst $28
    db $76
    ld d, l
    and $ed
    db $fc
    rst $28
    db $ed
    ld a, [$6ef9]
    ld a, b
    cp $49
    ld [$eecb], a
    adc $be
    reti


    call c, $d599
    cp c
    db $d3
    sub a
    rst $38
    sbc a
    rst $38
    sbc a
    ld a, l
    sbc a
    ld a, l
    adc a
    ld a, c
    adc c
    jp hl


    dec bc
    dec l
    sbc d
    ccf
    sbc d
    dec sp
    sbc e
    ld a, a
    sbc a
    or d
    sub d
    rst $38
    jp c, $7edf

    sub $7f
    rst $08
    ld [hl], l
    rst $30
    ld c, l
    jp hl


    ld c, a
    ei
    ld c, [hl]
    ld l, [hl]
    sbc $5d
    sbc $16
    push de
    ld a, a
    cp [hl]
    ld a, a
    cp h
    ccf
    jr c, jr_08a_5065

    ld a, b
    rst $38
    ld a, b
    ld e, [hl]
    ld e, h
    ld d, [hl]
    call c, $d29f
    cp e
    or d
    db $f4
    or [hl]
    db $fd
    cp h
    ld a, a
    inc a
    ld a, a
    inc a
    db $fc
    dec a
    ld a, l
    inc a
    ei
    ld a, $36
    ld a, d
    ld a, e
    ei
    ei
    ei
    rst $38
    ei
    ld hl, sp-$0f
    jp c, Jump_000_2af0

    pop af
    ld l, $e4
    cp [hl]
    cp h
    sbc l
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $ec
    db $fc
    call z, $8bf9
    rst $28
    adc e
    rst $30
    rst $28
    rst $38
    rst $18
    sbc [hl]

Jump_08a_5025:
    cp $f4
    cp $fd
    cp $ce
    db $fc
    inc a
    sbc a
    ld e, c
    xor a
    cp a
    ei
    rst $38
    ld a, [$f8fc]
    or l
    ei
    cp a
    di
    cp a
    or e
    rst $28
    inc hl
    cp a
    inc hl
    ld a, a
    ld [hl], e
    ccf
    or e
    rst $28
    inc sp
    db $db
    inc bc
    cp e
    rst $00
    ei
    pop bc
    rst $30
    ret nz

    ld a, l
    adc b
    cpl
    ld c, b
    scf
    jr c, jr_08a_507c

    ld h, b
    ld a, e
    db $ec
    ld a, e
    db $ec
    ld [hl], a
    call z, $4cff
    xor a
    inc e
    cp a
    inc e
    ld a, a
    sbc b
    rst $38

jr_08a_5065:
    sbc b
    or a
    ret nc

    rst $18
    ldh a, [$7f]
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $10
    sbc c
    or a
    sbc b
    ccf
    db $10
    cp a
    ld d, b
    rst $20
    ld c, b

jr_08a_507c:
    rst $20
    ld d, b
    rst $30
    ret c

    sbc $f9
    ei
    ld sp, hl
    ei
    ld sp, hl
    rst $28
    db $e3
    adc c
    db $e3
    ei
    or b
    ei
    cp h
    ld a, a
    cp b
    cp a
    ld hl, sp-$01
    ld hl, sp-$06
    ld hl, sp-$06
    db $fd
    ld a, h
    pop hl
    ld e, h
    ldh [$fc], a
    ld b, d
    ld a, a
    ld b, b
    db $db
    ld h, b
    rst $38
    db $e4
    ei
    ldh [$fb], a
    ldh [rIE], a
    ret nz

    or $80
    rst $28
    adc b
    rst $38
    adc b
    rst $38
    adc h
    rst $38
    add l
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $28
    ld [bc], a
    db $db
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    inc b
    jp c, $fb00

    nop
    cp a
    nop
    cp $00
    or [hl]
    ld bc, $81f3
    cp a
    adc c
    ld a, a
    add hl, bc
    ld l, c
    add hl, bc
    xor a
    sbc a
    db $eb
    adc c
    ld l, a
    add hl, de
    ld [hl], d
    ld bc, $01aa
    xor b
    rlca
    db $e4
    ld d, a
    rst $38
    ld e, h
    rst $30
    ld d, h
    cp $56
    xor a
    sub [hl]
    ld l, a
    add [hl]
    ld l, a
    add h
    ld [hl], a
    inc c
    ld h, d
    inc c
    ld l, a
    sbc b
    ld d, [hl]
    jr jr_08a_517e

    jr jr_08a_5158

    jr c, jr_08a_517a

    jr c, jr_08a_517a

    ld a, [hl-]
    ld a, a
    or b
    ld [hl], a
    cp b
    ccf
    ret nc

    ld e, l
    or d
    rst $38
    jr nc, jr_08a_5111

jr_08a_5111:
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
    jr jr_08a_5143

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08a_5153

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08a_5163

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08a_5173

    ld [hl-], a

jr_08a_5143:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08a_5183

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_08a_5153:
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a

jr_08a_5158:
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

jr_08a_5163:
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

jr_08a_5173:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c

jr_08a_517a:
    ld l, d
    ld l, e
    ld l, h
    ld l, l

jr_08a_517e:
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_08a_5183:
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
    and d
    and d
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
    and d
    and d
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    and d
    and d
    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dba2

    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    and d
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

Jump_08a_5225:
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_08a_524b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08a_525b

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08a_526b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08a_527b

    ld [hl-], a

jr_08a_524b:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
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
    inc b

jr_08a_525b:
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_08a_526b:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_08a_527b:
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    inc b
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    dec b
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    ld bc, $0102
    ld bc, $0401
    inc b
    dec b
    ld [bc], a
    inc b
    inc b
    nop
    inc b
    inc b
    ld bc, $0101
    ld [bc], a
    ld bc, $0404
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    inc b
    nop
    inc b
    ld bc, $0102
    ld bc, $0401
    inc b
    nop
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    inc b
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0404
    inc b
    nop
    inc b
    inc b
    ld [bc], a
    dec b
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    dec b
    dec b
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
    nop
    nop
    nop
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
    nop
    inc b
    nop
    inc b
    inc b
    dec b
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc c
    inc c
    ld [$0808], sp
    ld [$0c08], sp
    ld [$080c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
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
    inc c
    inc c
    inc c
    inc c
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    rst $30
    rst $30
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $30
    di
    ei
    rst $38
    rst $38
    rst $38
    ei
    ld hl, sp-$02
    db $fd
    ei
    ld a, [$fcfd]
    sbc a
    cp $cd
    cp [hl]
    ld e, $7f
    ret nz

    rra
    ld h, b
    sbc a
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
    add b
    ld a, a
    rst $18
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $00
    add $fe
    rst $38
    rst $38
    rst $30
    rst $30
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $10
    rst $28
    rst $38
    rst $00
    ld [hl], a
    rst $00
    cp $ce
    rst $18
    xor $f2
    xor $bf
    rst $18
    xor a
    rst $18
    xor [hl]
    rst $18
    sbc a
    rst $28
    rst $10
    xor $ff
    adc $ef
    adc $bf
    cp $9e
    cp [hl]
    rst $38
    rst $38
    ld e, a
    ld a, a
    di
    ei
    rst $38
    db $e3
    rst $38
    db $e3
    ld [hl], l
    add sp, -$07
    ld l, [hl]
    and $3f
    rst $38
    scf
    or e
    rst $38
    ld [hl], d
    rst $38
    cp $77
    cp [hl]
    rst $38
    ld a, a
    cp a
    rst $18
    sbc a
    sbc a
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
    cp $f7
    cp $f3
    ld c, a
    or a
    ld c, a
    rst $00
    ld a, a
    ld [hl], a
    ei
    rst $30
    ei
    ld a, a
    db $e3
    or e
    ld l, e
    rst $08
    dec sp
    rst $38
    ccf
    cp c
    ld a, d
    ld a, a
    ld a, d
    ei
    cp $e3
    ei
    rst $38
    db $e3
    rst $18
    rst $20
    push af
    rst $08
    rst $38
    adc a
    cp $8f
    xor $1f
    ld l, a
    sbc h
    ld l, l
    adc [hl]
    xor [hl]
    rst $10
    ld h, $fe
    ld sp, hl
    dec h
    dec e
    db $e3
    ld a, l
    jp $c1bf


    cp a
    pop bc
    ld a, [hl]
    pop bc

jr_08a_545a:
    ld a, a
    ret nz

    sbc a
    ldh [rIE], a
    ret nz

    rst $28
    ldh a, [rIE]
    ldh a, [rIE]
    sub b
    ccf
    ret nc

    cpl
    ret nc

    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, jr_08a_545a

    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    sbc a
    rst $20
    reti


    and a
    rst $10
    sbc a
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $18
    rst $38
    cp e
    rst $18
    db $db
    ei
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $18
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc [hl]
    rst $38
    ld a, a
    inc e
    ld a, a
    sbc h
    sbc l
    ld a, [$debe]
    or a
    sbc a
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc [hl]
    rst $38
    ld a, l
    cp $7f
    cp $f6
    rst $30
    rst $38
    rst $38
    rst $38
    cp $7e
    rst $38
    cp a
    rst $38
    rst $38
    rst $38

Jump_08a_54da:
    rst $18
    rst $38
    cp a
    rst $18
    rst $20
    rst $18
    rst $20
    rst $10
    adc $fe
    ld a, [hl]
    cp l
    ld l, d
    ld sp, hl
    ld a, e
    db $fd
    cp $fd
    ld a, e
    ld hl, sp+$7f
    db $fc
    ld a, [hl]
    rst $38
    rst $28
    rst $20
    rst $28
    rst $30
    rst $08
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    or $fb
    rst $38
    ei
    rst $20
    rst $38
    cp $ff
    call c, $dffb
    ld hl, sp-$0e
    push hl
    rst $30
    call $cfff
    ei
    adc $f9
    adc $cf
    db $fc
    rst $30
    db $e4
    cp $e5
    cp h
    add a
    or $8f
    daa
    ld e, a
    rst $08
    ld l, a
    ld [hl], b
    rst $38
    di
    cp h
    and a
    ret c

    add a
    add sp, -$19
    ld hl, sp-$11
    ld hl, sp-$11
    db $fc
    db $fd
    xor $cf
    cp $cd
    cp $ef
    call z, $dccf
    rst $38
    db $ec
    rla
    db $ec
    ld d, e
    add sp, $2b
    db $f4
    and a
    ld a, h
    or a
    ld l, h
    dec d
    db $ec
    rst $10
    xor $f5
    xor $f5
    xor $d1
    xor $df
    ld [$e89f], a
    rst $18
    add sp, -$2a
    jp hl


    xor $f9
    jp z, $affd

    call $8f7d
    sbc $3f
    rst $38
    ld a, $d8
    ccf
    ei
    rra
    rst $38
    rra
    cp $1e
    rst $18
    ccf
    cp $1f
    rst $18
    ld a, $d5
    ld a, [hl-]
    rst $28
    jr @-$1c

    dec d
    or $0f
    rst $20
    rra
    ret nc

    ccf
    adc $29
    and $19
    db $eb
    ld de, $17ef
    rst $10
    daa
    db $e3
    ccf
    rst $10
    dec de
    rst $28
    dec de
    db $f4
    rrca
    db $fd
    ld c, $f7
    rst $38
    ei
    rst $38
    di
    ei
    rst $30
    db $fd
    rst $30
    push af
    db $fd
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    db $e3
    cp $fd
    cp $fd
    cp $ef
    cp $ce
    cp $cf
    cp $fa
    cp $fd
    cp $fa
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $38
    cp $fd
    cp $7d
    sbc $7d
    sbc $dd
    cp $fd
    cp $fe
    rst $38
    rst $30
    rst $38
    db $ed
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $08
    rst $38
    rst $28
    rst $38
    push af
    rst $20
    rst $28
    ld sp, hl
    rst $30
    pop de
    db $dd
    ei
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ccf
    db $fd
    rst $38
    dec a
    db $fd
    rst $38
    ei
    rst $38
    cp $fb
    db $fc
    ei
    ld a, l
    ld a, e
    rst $30
    ld h, e
    db $fd
    ld c, e
    xor a
    ld e, c
    xor a
    ld e, c
    sub c
    ld b, a
    ld a, e
    push hl
    di
    push hl
    ld e, l
    rst $28
    add d
    ld [hl], a
    add a
    ld a, d
    sub e
    ld l, [hl]
    rst $20
    ld a, [hl]
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld a, a
    xor $d9
    rst $28
    rst $28
    ld sp, hl
    rst $18
    ld sp, hl
    ld e, a
    ld sp, hl
    ld a, e
    db $fd
    push de
    ld e, a
    ld a, l
    di
    db $fd
    di
    db $fd
    di
    ld h, $f9
    add hl, de
    and $df
    ld h, [hl]
    rst $18
    ld h, [hl]
    ld a, a
    and $bd
    db $76
    ld a, [bc]
    rst $30
    ld a, a
    jp $e35f


    ld a, e
    rst $20
    xor $70
    sbc $51
    sub [hl]
    ld a, c
    rst $38
    ld a, h
    xor d
    ld a, l

jr_08a_5640:
    call $ff34
    ld [hl+], a
    xor a
    ld [hl], d
    xor a
    ld [hl], d
    ld [$cb36], a
    ld [hl], $e9
    ld [de], a
    rst $18
    jr nc, jr_08a_5640

    db $10
    sub a
    ld l, b
    sub a
    ld l, b
    sbc l
    ld h, b
    ld a, $e0
    inc e
    db $e3
    ld e, l
    and d
    ld a, [$fe01]
    dec c
    db $fd
    dec bc
    ld [hl], l
    dec bc
    rst $30
    adc a
    or e
    rst $08
    cp $81
    rst $38
    add b
    rst $38
    add b
    db $76
    add hl, bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    add b
    ld a, [hl]
    add b
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
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
    ld a, a
    nop
    db $fd
    cp $75
    db $fc
    ld a, a
    cp $f9
    ld a, [$fafd]
    ld sp, hl
    cp $f9
    cp $ff
    ld hl, sp-$06
    db $fc
    cp a
    sbc a
    db $dd
    sbc $ff
    db $fc
    db $fd
    cp $7d
    ld a, [hl]
    push af
    ld a, [hl]
    ld a, h
    push af
    ld l, a
    push af
    ld [hl], a
    ld h, h
    rst $00
    db $fc
    rst $28
    call c, $ddee
    ccf
    db $fc
    xor $bf
    or $8f
    cp [hl]
    rst $08
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    xor a
    sbc a
    xor a
    rst $18
    cp a
    sbc a
    rst $38
    ld a, a
    rst $38
    ld e, a
    ccf
    rst $18
    cp a
    ld a, [$bebc]
    ld sp, hl
    or $b1
    rst $30
    or c
    add a
    ld sp, hl
    ld a, [$fbc1]
    jp $e79b


    rra
    db $e3
    dec sp
    rst $30
    cp e
    rst $30
    sbc a
    rst $38
    xor a
    rst $30
    rst $10
    rst $08
    rst $38
    rst $28
    pop af
    push hl
    ld [c], a
    db $ed
    rst $28
    add sp, -$03
    xor $cf

Jump_08a_56ff:
    rst $38
    add sp, -$25
    db $eb
    call c, $d8af
    jp hl


    sbc d
    push hl
    sub [hl]
    rst $28
    add h
    rst $10
    cp h
    rst $30
    db $f4
    db $fd
    cp $fd
    cp $bf
    db $fc
    ld sp, hl
    ld a, $f1
    ld a, [hl-]
    sub l
    jr c, @+$63

    sub a
    jp hl


    sbc a
    rst $38
    sbc e
    ld l, l
    add c
    ld [$7991], a
    add [hl]
    db $eb
    db $10
    xor [hl]
    ld e, l
    jp hl


    dec de
    adc e
    ld a, a
    call c, $bb69
    ld c, h
    xor l
    ld e, $ad
    ld e, [hl]
    cp l
    ld l, [hl]
    cp e
    ld l, b
    and a
    inc a
    ld [hl], a
    inc a
    call nc, $f62f
    rrca
    or $07
    rst $38
    rrca
    cp h
    ld c, [hl]
    adc a
    ccf
    rst $20
    ld l, a
    rst $20
    ld a, a
    ld e, a
    ld l, a
    rst $08
    ld e, a
    ld e, a
    ld a, a
    cp a
    ld a, a
    rst $28
    rra
    rst $28
    rrca
    rst $38
    rrca
    cp $0d
    xor $09
    db $fd
    ld bc, $03fd
    cp b
    ld b, a
    or a
    ld b, a
    rst $18
    ld a, a
    cp d
    inc a
    push de
    db $eb
    dec a
    jp nz, $c679

    rst $38
    ld b, h
    sub [hl]
    dec l
    call z, $9cfd
    rst $38
    ld e, h
    cp $7b
    db $fd
    ld a, l
    ld sp, hl
    ld [hl], h
    ei
    ld a, b
    push af
    dec sp
    and e
    ld a, e
    rlca
    ccf
    rst $00
    ld e, a
    ld h, $6a
    scf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, $80
    ld a, [hl-]
    ld b, $b8
    add [hl]
    ld a, c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $20
    rst $30
    db $fd
    rst $38
    rst $38
    ld a, a
    di
    ld [hl], a
    cp a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld l, a
    rst $28
    add b
    ld a, a
    nop
    rra
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    inc b
    ei
    nop
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    rra
    rst $18
    sbc a
    ld a, a
    sub a
    ccf
    add a
    rra
    xor a
    ld a, a
    cp a
    rst $38
    ld a, e
    ei
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $28
    ld l, a
    adc a
    rra
    rst $08
    rra
    rrc e
    db $eb
    cpl
    rst $28
    ccf
    rst $28
    ccf
    db $ed
    dec l
    cp $3e
    cp $3e
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rra
    rst $18
    rra
    ld e, a
    rst $38
    cp a
    ld e, a
    rra
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
    dec sp
    rst $38
    ld a, e
    cp e
    ld e, a
    cp a
    ld l, a
    adc a
    dec c
    db $dd
    xor e
    db $eb
    ld l, e
    db $eb
    rst $28
    rst $28
    ld c, a
    cp a
    rst $38
    rra
    ei
    sbc e
    or a
    sub a
    rst $18
    cp a
    rst $38
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    call $fded
    db $dd
    cp a
    rst $18
    ei
    sbc e
    rst $38
    sbc a
    db $db
    sbc e
    ld sp, hl
    sbc c
    db $dd
    sbc l
    sbc e
    ei
    di
    di
    ld l, e
    xor e
    ld [hl], a
    sub a
    ld [hl], a
    sub a
    ld [hl], a
    sub a
    and a
    rlca
    sub $16
    or l
    ld [hl], l
    ld b, l
    push hl
    and [hl]
    sbc [hl]
    db $e4
    sub h
    and $06
    db $e3
    inc de
    add sp, $08
    ldh [rDIV], a
    ldh [rNR10], a
    ldh a, [rP1]
    ldh [rP1], a
    or $f0
    db $db
    ret c

    rst $18
    ret c

    ei
    ld hl, sp-$26
    ret c

    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    cp h
    ld b, b
    cp h
    add b
    ld a, h
    add b
    dec a
    ret nz

    inc a
    nop
    inc a
    ld [$08b4], sp
    or h
    nop
    db $fc
    nop
    db $fd
    nop
    ld a, [hl]
    add b
    ld a, $00
    ccf
    rra
    rra
    rra
    rra
    cpl
    cpl
    ld e, $1e
    ld c, h
    ld e, l
    ld l, h
    ld a, l
    ld c, a
    ld e, [hl]
    ld [bc], a
    rlca
    ld b, $06
    ld b, $0e
    inc b
    rrca
    ld hl, $842e
    add e
    dec b
    rrca
    rlca
    daa
    dec b
    dec b
    ld bc, $012a
    add [hl]
    add e
    add l
    add d
    add l
    add h
    adc a
    ret nz

    jp $8780


    add e
    add c
    ld bc, $0006
    add l
    dec h
    ld h, $25
    ld l, [hl]
    inc hl
    inc h
    push de
    sub $c5
    add $83
    call nz, Call_08a_4e01
    add c
    add $85
    ld [c], a
    rst $00
    ret nz

    push bc
    ret nz

    add l
    jp nz, Jump_000_0005

    ld b, a
    nop
    ld b, a
    nop
    ld b, l
    ld [bc], a
    push bc
    add d
    add l
    add d
    add a
    ret nz

    rst $20
    ret nz

    add l
    add d
    ld d, a
    db $10
    scf
    db $10
    sub a
    ret nc

    reti


    sub $c1
    and $e5
    ld [c], a
    push af
    ld a, [c]
    push af
    ld a, [c]
    push hl
    jp nz, $82c5

    sub l
    sub b
    pop hl
    jp nz, $c2e5

    db $e3
    ret z

    or e
    sub h
    and a
    add b
    and a
    add b
    or a
    add b
    or d
    add b
    cp h
    sbc h
    ld [$a78a], a
    add a
    or [hl]
    add [hl]
    or h
    add h
    rst $30
    add [hl]
    and h
    add l
    db $ec
    adc h
    xor $8e
    db $ec
    adc h
    xor h
    call z, $cdec
    call z, $a9cc
    call z, $8b88
    rst $10
    call nz, $c7d4
    db $fc
    call z, $cede
    ret z

    ret z

    call nz, $e0c5
    ret nz

    call z, $c5cc
    push bc
    sub h
    add a
    jp c, $98c8

    adc e
    add e
    adc b
    adc e
    add h
    call z, $cdc3
    jp nz, $d0cf

    sbc $c1
    jp c, Jump_08a_43c5

    ld e, h
    ld b, e
    ld e, h
    ld l, d
    ld [hl], l
    ld b, b
    ld e, a
    rst $20
    nop
    cpl
    nop
    ld a, a
    nop
    dec l
    nop
    jr c, jr_08a_599a

jr_08a_599a:
    inc l
    ld bc, $0040
    nop
    nop
    nop
    jr nz, jr_08a_59a3

jr_08a_59a3:
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    add e
    nop
    add e
    nop
    ld hl, $0300
    nop
    rlca
    nop
    rlca
    ld [bc], a
    add c
    nop
    rst $00
    nop
    ld l, a
    nop
    cp $00
    rst $30
    rst $38
    rst $38
    rst $28
    rst $38
    dec h
    or l
    add b
    and b
    nop
    xor b
    nop
    rst $38
    add b
    cp a
    sub c
    xor $11
    xor [hl]
    add b
    ldh [$78], a
    rlca
    ld c, d
    or l
    adc e
    pop de
    inc [hl]
    ld l, e
    inc b
    ei
    sub h
    db $e3
    ld c, $71
    inc c
    ld [hl], e
    and [hl]
    pop de
    cp [hl]
    pop bc
    ld [hl], $c9
    inc e
    ld h, e
    inc [hl]
    jp z, $f30c

    dec e
    ld h, d
    dec e
    ld [c], a
    ld a, a
    add d
    ld a, l
    add d
    dec a
    ld b, d
    ld a, a
    add d
    ld a, l
    add d
    db $fd
    ld [bc], a
    ld a, a
    add b

Jump_08a_5a02:
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
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
    nop
    rst $38
    ld bc, $03ff
    cp $02
    db $fc
    ld [bc], a
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
    dec bc
    nop
    ld d, c
    ld [$2203], sp
    dec c
    cpl
    add b
    dec c
    ld b, d
    ld bc, $0068
    ld hl, $0000
    nop
    ret


    nop
    ld hl, $824d
    ld a, l
    add b
    ld bc, $57b2
    ld [$1e41], sp
    nop
    cp d
    nop
    ld c, e
    nop
    ld a, [hl]
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    ld d, e
    jr nz, @+$5e

    ld b, c
    sbc [hl]
    rlca
    ld hl, sp-$01
    nop
    cp $01
    and b
    ld e, a
    ret nz

    nop
    ld b, b
    nop
    add b
    nop
    stop
    add b
    nop
    nop
    nop
    ld sp, hl
    ld [bc], a
    ld b, b
    nop
    ld [hl], b
    ld [hl], b
    ld a, a
    ld h, b
    ld a, l
    ld h, b
    ld h, b
    ld h, b
    ld [hl], d
    ld [hl], d
    ld a, a
    ld a, a
    push af
    push af
    ldh [$e0], a
    nop
    ret nz

    nop
    ret nz

    nop
    pop bc
    ld b, b
    add c
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld [$ff00], a
    nop
    cp l
    nop
    rra
    nop
    ld [bc], a
    inc b
    ei
    nop
    reti


    nop
    ret nz

    nop
    cp e

jr_08a_5abe:
    ld bc, $ffbe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    ld b, $00
    ld c, a
    ld c, e
    or a
    nop
    rst $38
    ld b, b
    cp a
    call nc, $803b
    add b
    add sp, -$1a
    and $f9
    ldh [rIE], a
    ldh a, [$f7]
    ldh [rIE], a
    db $fd
    ld a, [$efe8]
    db $ed
    ld a, [$faf5]
    db $f4
    ei
    and $e9
    push af
    ld [$7bf4], a
    ld [hl], h
    ld a, c
    xor b
    scf
    and a
    jr c, @+$57

    jr z, jr_08a_5abe

    jr jr_08a_5b6e

    ld [$0877], sp
    push af
    ld a, [bc]
    rst $38
    nop
    sbc a
    nop
    sbc a
    nop
    sub a
    ld [$0897], sp
    sub a
    ld [$009f], sp
    sub a
    ld [$0897], sp
    sbc a
    nop
    sbc a
    nop
    sbc a
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
    rrca
    nop
    dec d
    rst $38
    db $f4
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    nop

jr_08a_5b2e:
    db $fd
    rst $38
    rst $38
    rrca
    cp $05
    rst $38
    inc b
    rst $38
    ld b, $ff
    rlca
    db $fc
    ld [bc], a
    cp $02
    cp $03
    cp $07
    db $fc
    rrca
    ld [hl], b
    cp a
    ld a, [hl-]
    push af
    dec e
    ld a, [$ad56]
    sbc a
    ld h, e
    ld l, c
    sub a
    ld hl, $01d7
    push hl
    ld c, c
    or a
    ld [hl], e
    adc a
    rst $20
    rla
    rst $08
    ccf
    cp e
    inc bc
    xor e
    inc d
    add hl, hl
    call nc, Call_08a_6780
    jr nz, jr_08a_5b2e

    jr nz, @-$29

    nop
    db $f4
    nop
    db $fd
    inc c
    or e

jr_08a_5b6e:
    rra
    jr nz, jr_08a_5b78

    add sp, -$52
    ld d, b
    ld l, d
    add c
    adc h
    nop

jr_08a_5b78:
    sub b
    ld [$0009], sp
    ldh a, [rP1]
    nop
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    ld bc, $02ff
    ld a, [$5f05]
    and b
    ld a, [hl]
    add c
    rst $30
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ldh a, [rP1]
    ld [$0000], sp
    nop
    add b
    add b
    ei
    ei
    scf
    scf
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    rst $38
    cp $7e
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    ld [hl], a
    inc b
    ei
    ld b, b
    xor a
    ld b, b
    adc e
    nop
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $10
    cp l
    add hl, hl
    cp [hl]
    push hl
    ld e, h
    ld a, a
    add [hl]
    db $fc
    inc bc
    ld a, [hl]
    ret nz

    ld [hl-], a
    call $09f6
    db $e4
    dec bc
    pop af
    ld a, [bc]
    ld h, c
    sbc [hl]
    and c
    ld e, [hl]
    add e
    inc c
    add c
    ld e, [hl]
    and e
    ld e, h
    ld [c], a
    inc e
    and $18
    db $e3
    inc e
    db $e4
    ld a, [de]
    push hl
    ld a, [de]
    push af
    ld [$08f7], sp
    ei
    inc b
    ld sp, hl
    ld b, $f8
    inc bc
    ld hl, sp+$03
    ret c

    ld bc, $00f8
    sbc b
    nop
    ret c

    nop
    ret c

    nop
    reti


    nop
    jp hl


    nop
    reti


    nop
    ld hl, sp+$00
    ret c

    ld bc, $00f9
    ret z

    nop
    add sp, $00
    add sp, $00
    ld hl, sp+$00
    ret c

    nop
    ld hl, sp+$00
    ret c

    nop
    pop bc
    nop
    add c
    nop
    ld [de], a
    rst $38
    ld b, c
    rst $38
    ld bc, $0101
    ld bc, $01ff
    rst $38
    cp $fb
    call nz, $c8f7
    rst $30
    ld c, b
    rst $30
    ret z

    di
    adc h
    ei
    add h
    db $f4
    adc e
    rst $30
    adc c
    ret nz

    ret nz

    and b
    ldh [$5f], a
    rst $38
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    xor h
    rst $38
    nop
    sub $ad
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld a, [bc]
    push af
    jp Jump_000_28bd


    rst $18
    ld d, a
    cp a
    ld c, a
    rst $30
    rst $38
    ld bc, $2bd4
    ld e, a
    and h
    ld a, a
    add b
    rst $38
    jr nz, jr_08a_5ca1

    ld [bc], a
    adc b
    nop
    ld h, $00
    sbc a
    ld b, b
    ld d, l
    ld a, [bc]
    rra
    nop
    ld e, a
    nop
    dec l
    ld [bc], a
    ccf
    jr c, jr_08a_5ccf

    jr nc, jr_08a_5d04

    ld [hl], b
    db $eb
    ldh [rOBP1], a
    ld b, b
    add b
    add b
    ret nz

    pop bc
    adc c
    adc c
    dec h

jr_08a_5ca1:
    dec h
    rst $08
    ld c, a
    and b
    ld b, d
    add h
    inc c
    ld d, e
    ld d, e
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop

Jump_08a_5cb3:
    rst $38
    nop

jr_08a_5cb5:
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    dec e
    db $fd
    or c
    ld e, b
    ld a, b
    add a
    and e

jr_08a_5ccf:
    ld e, h
    ld h, [hl]

jr_08a_5cd1:
    cp b
    ld a, [bc]
    ld [hl], h
    add hl, de
    db $e4
    sbc $20
    db $dd
    jr nz, jr_08a_5cb5

    jr nz, jr_08a_5cd1

    nop
    ld c, c
    nop
    and b
    nop
    ret nc

    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    add b
    nop
    ld d, b
    nop
    xor b
    nop
    db $f4
    nop
    ld a, [$f400]
    nop
    ld a, [c]
    nop
    db $fc
    nop
    ld a, d
    add b
    ld [hl], l
    add b
    ld a, $c0
    ccf
    ld b, b

jr_08a_5d04:
    inc d
    ld h, b
    nop
    ccf
    nop
    jr jr_08a_5d43

    ld b, $30
    rrca
    inc sp
    inc c
    ld [hl], $09
    dec e
    ld [hl+], a
    sub l
    ld a, [hl+]
    sub d
    dec l
    rla
    xor b
    or b
    rrca
    ld d, [hl]
    xor c
    ldh a, [rIF]
    or a
    ld c, b
    ld d, l
    xor b
    ld d, e
    adc h
    inc hl
    call c, Call_000_0df2
    ld [hl], e
    adc h
    ld h, e
    sbc h
    ld d, d
    xor l
    ld [hl], e
    adc h
    and e
    ld e, h
    ld l, e
    sub h
    ld d, [hl]
    xor c
    ld [hl], a
    adc b
    or [hl]
    ld c, c
    rst $20
    jr jr_08a_5d3f

jr_08a_5d3f:
    add b
    nop
    nop
    nop

jr_08a_5d43:
    ld d, a
    nop
    rst $38
    nop
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
    rst $30
    rst $30
    ld b, c
    add $07
    ld d, b
    rst $18
    and b
    rst $30
    ld [$ff04], sp
    cp $ff
    add l
    ei
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld [hl], l
    bit 1, a
    cp a
    cp l
    jp z, $926f

    db $f4
    dec bc
    cp [hl]
    ld b, c
    cp $21
    db $fc
    inc bc
    call $88b2
    ld hl, $00fa
    ld [hl+], a
    ld e, l
    cp e
    ld b, b
    rst $30
    nop
    rst $38
    nop
    xor $11
    di
    nop
    ld c, h
    inc l
    call nc, $ed06
    ld b, $dc
    inc b
    add [hl]
    ld b, $83
    inc bc
    daa
    rlca
    and a
    and a
    and a
    and a
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    rst $38
    ld a, a
    rst $38
    rst $38
    ld l, a
    ld l, a
    ld a, [c]
    ld a, [c]
    db $d3
    db $d3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld e, a
    ld e, a
    ld d, c
    ld bc, $ff01
    or [hl]
    ld c, c
    ld sp, hl
    nop
    ld c, c
    nop
    ld d, l
    nop
    xor d
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    add d
    nop
    ld bc, $0200
    nop
    ld bc, $0600
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0200
    nop
    ld bc, $0000
    nop
    ld bc, $8200
    nop
    ld d, l
    nop
    xor d
    ld bc, $af00
    inc c
    di
    jr nc, jr_08a_5e1b

    ld bc, $2bff
    push de
    add hl, de
    rst $00
    ld l, c
    sub a
    ld [hl], l
    adc c
    ld h, l
    sbc c
    db $76
    adc d
    ld l, c

jr_08a_5e1b:
    sub l
    ld l, l
    sub e
    or c
    ld c, a
    sub c
    ld l, a
    push hl
    dec de
    ld d, c
    xor a
    ld h, d
    sbc l
    ld h, e
    sbc l
    ld [hl], l
    adc e
    ld d, e
    xor c
    ld c, l
    sub e
    ld [hl], e
    adc l
    ld d, h
    xor d
    ld [hl], e

jr_08a_5e35:
    adc l
    ld [hl], e
    adc l
    ld l, a
    sub c
    dec l
    jp $2b95


    ld bc, $0001
    ld bc, $ff00
    nop
    rst $38
    nop
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
    pop af
    rst $38
    ld hl, sp-$09
    add d
    db $fd
    nop
    rst $38
    db $fd
    ld [bc], a
    jr z, jr_08a_5e35

    add b
    ld a, a
    nop
    ld a, a
    nop
    cp $a8
    rlca
    rrca
    add b
    inc b
    dec bc
    ld [bc], a
    dec [hl]
    ld bc, $0eae
    ld sp, $a5de
    rst $38
    ld b, b
    db $f4
    cpl
    sub a
    ld l, b
    ld a, a
    add h
    xor a
    ld d, b
    sbc a
    ld l, b
    rst $38
    ld [$2002], sp
    add l
    ld l, d
    ld [$2440], sp
    db $10
    adc c
    nop
    sub $28
    rst $18
    nop
    rst $38
    nop
    nop
    cp $00
    db $fd
    nop
    ld a, a
    nop
    ld a, e
    nop
    ld sp, hl
    nop
    ld a, [$9a00]
    nop
    call $ffff
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    di
    rst $38
    di
    ei
    rst $20
    rst $30
    rst $08
    cp a
    rst $08
    ld a, [hl]
    sbc [hl]
    cp a
    ld a, a
    ld e, $fe
    ld c, [hl]
    cp [hl]
    rst $28
    rra
    and $1e
    and $1e
    or $0e
    or $0e
    rst $30
    rrca
    rst $38
    rlca
    ei
    inc bc
    rst $38
    rlca
    rst $30
    rrca
    or $0e
    or $0e
    or $0e
    and $1e
    xor $1e
    xor $1e
    xor $1e
    adc $3e

Call_08a_5edc:
    rst $18
    ccf
    rst $10
    scf
    xor [hl]
    ld l, [hl]
    ld [hl], $f6
    ld a, [hl]
    cp $fe
    cp $f6
    or $ff
    rst $38
    rst $38
    rst $38
    ld a, [$00fa]
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    ld bc, $00fa
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, [$fa00]
    nop
    ld a, [$fa00]
    ld bc, $01fe
    cp $00
    cp $00
    db $fc
    nop
    cp $00
    cp $00
    ld a, [$fd00]
    nop
    cp $00
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    inc b
    pop af
    ret nc

    cp $50
    xor [hl]
    sbc a
    ld h, b
    ld a, d
    add l
    cp $01
    ld a, [$0805]
    rst $30
    nop
    rst $38
    nop
    adc b
    nop
    ld [de], a
    ld b, c
    cp [hl]
    ei
    inc b
    ld [$5414], a
    xor e
    nop
    rst $38
    rla
    add sp, -$7f
    inc b
    db $10
    ld h, l
    add b
    inc b
    jr nz, jr_08a_5f58

jr_08a_5f58:
    ld b, $40
    rlca
    add b
    inc bc
    jr nz, jr_08a_5f7c

    nop
    ld h, b
    add b
    jp RST_08


    db $10
    ld c, d
    ld bc, $41ae
    xor a
    nop
    adc d
    ld hl, $00e2
    adc e
    adc b
    ld l, h
    ld l, h
    call nz, $ebc4
    db $e3
    db $e3
    db $eb
    rst $38
    rst $38

jr_08a_5f7c:
    db $e3
    db $e3
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
    ld a, l
    nop
    db $fd
    nop
    ld a, a
    nop
    ld a, l
    nop
    ld a, a
    nop
    ld a, l
    nop
    db $fd
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    ld [hl], l
    nop
    call nc, $f500
    nop
    push af
    nop
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    db $dd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, l
    nop
    db $fc
    nop
    db $fc
    nop
    db $fd
    nop
    push af
    nop
    db $fd
    nop
    rst $30
    nop
    push af
    nop
    db $fd
    nop
    db $fd
    nop
    call $f900
    nop
    db $fd
    nop
    call $8d00
    nop
    db $ed
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    db $fd
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
    rst $30
    nop
    rst $38
    nop
    ei
    nop
    db $eb
    nop
    db $eb
    nop
    rst $38
    nop
    rst $38

Call_08a_5ffc:
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    push af
    nop
    rst $30
    nop
    rst $38
    nop
    ei
    nop
    ld a, a
    nop

jr_08a_600d:
    rst $38
    nop
    rst $38
    cp $fe
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    cp a
    and a
    ld e, a
    inc bc
    cp a
    ld bc, $04ad
    ld a, [$ec00]
    nop
    ld c, b
    nop
    inc c
    ld [bc], a
    or l
    ld d, b
    adc [hl]
    nop
    rst $38
    inc c
    or e
    ld e, h
    and e
    ld a, b
    nop
    nop
    inc b
    nop
    nop
    ld b, [hl]
    nop
    dec e
    and d
    ld [de], a
    ld b, l
    jr nc, jr_08a_600d

    ld b, b
    cp a
    ld b, b
    rra
    or b
    rrca
    jp z, Jump_08a_5025

    nop
    nop
    nop
    add b
    ld [bc], a
    add b
    nop
    sub b
    nop
    nop
    ld c, a
    nop
    ld e, a
    nop
    ld a, a
    nop
    rst $30
    nop
    rst $20
    nop
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
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
    sub $00
    or $00
    or d
    nop
    ld a, [$f700]
    nop
    or $00
    or $00
    rst $38
    nop
    rst $10
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $28
    nop
    cp a
    nop
    ei
    nop
    rst $30
    nop
    xor a
    nop
    ei
    nop
    or a
    nop
    or a
    nop
    sbc a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    rst $38
    nop
    cp a
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    db $ed
    nop
    rst $28
    nop
    xor $00
    xor $00
    cp $00
    cp $00
    rst $38
    nop
    or $00
    or $00
    rst $30
    nop
    rst $38
    nop
    cp $00
    or $00
    cp $00
    cp $00
    db $ed
    ld [bc], a
    db $ed
    nop
    ld a, [hl]
    nop
    db $fd
    nop
    db $fd
    nop
    adc a
    nop
    ld e, h
    nop
    halt
    ld l, [hl]
    nop
    rst $30
    nop
    rst $38
    nop
    rst $18
    nop
    ccf
    nop
    xor $00
    ld a, [hl]
    nop
    cp $00
    rst $30
    nop
    xor $00
    rst $28
    nop
    rst $38
    nop
    ld a, a
    ld a, [hl]
    ld a, [hl]
    rra
    rra
    rrca
    adc a
    rlca
    adc a
    inc bc
    ccf
    or l
    ld c, e
    ld [$0115], a
    db $fc
    ld b, b
    nop
    dec d
    ld [bc], a
    ld d, h
    add hl, bc
    rst $38
    nop
    ld a, [hl+]
    add l
    add c
    ld a, [hl]
    cpl
    ret nz

    inc a
    jp nz, $827d

    nop
    rst $38
    inc hl
    ld b, b
    ld d, b
    inc b
    nop
    ld c, b
    nop
    ld bc, $0490
    ld [$0080], sp
    ld a, h
    nop
    ld a, d
    nop
    cp $00
    ld e, [hl]
    nop
    ld a, e
    nop
    rst $30
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
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    or $00
    or $00
    or $00
    or $00
    rst $30
    nop
    rst $30
    nop
    rst $38
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    cp $00
    ld a, [hl]
    nop
    db $fd
    nop
    rst $30
    nop
    ld a, [hl]
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    db $ec
    nop
    db $fc
    nop
    rst $38
    nop
    cp $00
    db $ec
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $01
    db $fc
    ld bc, $01fc
    db $fc
    nop
    xor $00
    db $fc
    nop
    ld a, h
    nop
    db $ec
    nop
    db $ec
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
    db $fd
    nop
    db $ed
    nop
    db $ed
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    ld a, l
    db $dd
    db $dd
    ld sp, hl
    ld sp, hl
    ld a, [$fbfa]
    ei
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, [$00f8]
    sbc b
    nop
    sbc c
    nop
    cp b
    nop
    sbc c
    nop
    sbc c
    nop
    sbc c
    nop
    cp d
    nop
    ei
    cp d
    cp d
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld a, c
    ld sp, hl
    cp a
    ccf
    rst $18
    ccf
    cpl
    rst $18
    rst $28
    rlca
    xor c
    ld d, c
    nop
    add h
    rlca
    or b
    ld l, a
    sub b
    add sp, $14
    inc b
    ld hl, sp-$24
    ld hl, $42bd
    ld d, h
    dec hl
    pop bc
    ld a, $58
    jr nz, jr_08a_621d

jr_08a_621d:
    ld [$0040], sp
    nop
    daa

jr_08a_6222:
    nop
    ld a, [hl]
    nop
    halt
    di
    nop
    db $e3
    nop
    di
    nop
    ld c, a
    nop
    rst $28
    nop
    cp $00
    rst $38
    nop
    push af
    nop
    rst $30
    db $10
    ld l, e
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, h
    inc a
    inc a
    inc a
    inc a
    ld a, $3c
    ld [hl], e
    ld [hl], c
    ld a, l
    ld a, l
    ld a, h
    ld a, h
    jp c, Jump_08a_49da

    ld c, c
    ret c

    ret c

    sbc c
    sbc c
    xor d
    xor b
    ld a, h
    ld a, b
    ld [hl], h
    ld [hl], b
    ld d, b
    ld [hl], b
    ldh a, [$f0]
    ret nc

    ret nc

    db $f4
    ldh a, [$74]
    ld [hl], b
    ld h, h
    ld h, b
    and b
    and d
    db $f4
    ldh a, [$74]
    ld [hl], b
    db $fc
    ld a, b
    or h
    jr nc, jr_08a_6222

    ld sp, $6969
    ld [hl], b
    ld [hl], b
    ld l, h
    ld l, b
    jr z, @+$2a

    ldh [$60], a
    db $e4
    ld h, b
    ldh [$60], a
    ldh [$60], a
    jr nc, jr_08a_62b4

    ld [hl], b
    ld [hl], b
    ldh a, [$f0]
    ldh a, [$f0]
    ld sp, hl
    ld sp, hl
    rst $38
    ei
    cp $fa
    nop
    ldh a, [rP1]
    or b
    nop
    ld a, b
    nop
    ld l, h
    nop
    ldh [rP1], a
    db $e4
    nop
    cp h
    nop
    db $f4
    nop
    add sp, $00
    add sp, $00
    ld a, b
    nop
    xor b
    nop
    or h
    nop
    ld [hl], h
    nop
    ld [hl], h
    nop
    db $f4
    db $fd
    db $fd
    db $ec
    db $ec

jr_08a_62b4:
    db $e4
    db $e4
    add sp, -$18
    ld [$f4ea], a
    db $f4
    and $e6
    rst $20
    and $fa
    ld a, [$fefe]
    rst $10
    sub $de
    sbc $de
    sbc $b4
    or l
    ld [$aaea], a
    xor d
    nop
    sbc d
    nop
    ld c, $00
    xor [hl]
    nop
    and $00
    and $00
    ld [$eb00], a
    nop
    sub [hl]
    nop
    sub c
    nop
    adc l
    nop
    call nz, Call_000_2600
    nop
    xor d
    nop
    ld [$eb00], a
    nop
    add e
    add e
    add e
    xor l
    xor l
    rst $28
    rst $28
    cp h
    cp h
    ld a, e
    ld a, e
    cp a
    ccf
    rst $18
    rra
    db $dd
    dec e
    rst $08
    cpl
    rst $20
    rla
    inc bc
    ei
    ld [bc], a
    db $fc
    add $39
    jp nc, $a32f

    ld e, h
    add c
    ld a, [hl]
    nop
    ld e, e
    nop
    rst $08
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $db
    db $db
    db $db
    and $f6
    sub $d6
    set 1, e
    push bc
    push bc
    ld a, [$deda]
    cp $fa
    ld a, [$f6f6]
    cp [hl]
    cp [hl]
    sub [hl]
    sub [hl]
    or a
    or a
    add [hl]
    add [hl]
    ld b, $06
    daa
    ld h, $15
    inc b
    ld d, d
    ld b, d
    ret nc

    ret nz

    or h
    and h
    ld [hl], $26
    and a
    or a
    scf
    daa
    or h
    and h
    inc [hl]
    inc h
    jr nz, jr_08a_6382

    ld [hl-], a
    ld [hl+], a
    ld [bc], a
    ld [hl+], a
    dec d
    ld b, l
    ld [hl], h
    ld d, h
    call $e1dd
    pop hl
    ret nc

    ret nc

    nop
    sub c
    nop
    or c
    inc b
    pop af
    nop
    jp nz, Jump_08a_4200

    nop
    ld b, b
    nop
    ld a, [c]
    nop
    or d
    jr nz, jr_08a_63a2

jr_08a_6382:
    ld d, d
    ld b, d
    jp nc, $92c2

    add d
    jp nc, $92c2

    add d
    add $c6
    ld b, c
    ld h, b
    ld c, c
    ld b, b
    ld b, c
    ld h, b
    ld c, c
    ld h, b
    jp nz, $edd2

    db $ec
    ld [hl], h
    ld [hl], h
    ld [hl], d
    ld [hl], d
    ld [hl], b
    ld [hl], b
    ld [hl], e
    ld [hl], d

jr_08a_63a2:
    db $e4
    db $e4
    ld [c], a
    jp nz, $a2a6

    sub $d2
    ld b, [hl]
    ld b, d
    ld b, c
    ld b, b
    and $e2
    nop
    ldh a, [rP1]
    xor $04
    jp nz, $c620

    nop
    call nz, $e600
    nop
    ld h, $00
    and c
    nop
    add b
    nop
    add b
    nop
    add h
    nop
    call nz, $4c00
    nop
    inc b
    nop
    add l
    inc b
    ld b, c
    nop
    ld b, h
    nop
    ld [$8900], sp
    nop
    add c
    nop
    ld bc, $8100
    nop
    ld d, l
    nop
    dec d
    nop
    push hl
    nop
    push de
    nop
    ld l, a
    nop
    ld e, h
    nop
    ld e, $00
    and d
    nop
    jr nz, jr_08a_63ef

jr_08a_63ef:
    ld [bc], a
    nop
    ld h, h
    nop

Call_08a_63f3:
    ld [hl], l
    nop
    ld [hl], l
    nop
    and [hl]
    nop
    ld l, a
    nop
    or e
    nop
    adc d
    nop
    ld d, b
    push af
    push af
    ldh a, [$f0]
    sub $d6
    sbc $de
    call c, Call_08a_5edc
    cp [hl]
    cp l
    ld e, l
    rst $28
    rra
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
    nop
    rst $38
    nop
    rst $28
    rst $28
    rst $28
    db $eb
    db $eb
    rst $30
    rst $20
    and a
    and a
    ld h, a
    ld h, a
    db $e3
    db $e3
    db $db
    db $db
    rst $18
    rst $18
    nop
    sbc a
    nop
    adc e
    nop
    jp $8000


    nop
    jr nz, jr_08a_643b

jr_08a_643b:
    ld h, c
    nop
    ld d, c
    nop
    reti


    inc hl
    inc sp
    ld [hl], e
    inc sp
    ld d, e
    inc de
    ld [hl], c
    ld [hl], c
    inc sp
    inc sp
    sub e
    inc de
    inc sp
    inc de
    and e
    ld bc, $4cee
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    rra
    dec e
    ld e, l
    dec e
    sbc a
    sbc a
    or a
    sub a
    scf
    ld d, a
    ei
    sbc e
    ld a, l
    dec e
    rla
    rla
    pop af
    inc sp
    ld a, c
    ld d, c
    jr jr_08a_64bd

    and l
    dec b
    db $e3
    jp $a686


    inc l
    ld l, h
    ld h, $26
    and a
    or a
    ld l, l
    dec l
    ld h, c
    ld h, c
    ld [hl], a
    ld [hl], e
    rst $30
    ld [hl], e
    rst $28
    ld l, a
    ld h, e
    ld h, e
    ld b, c
    ld b, l
    ld a, [hl+]
    ld l, d
    ld [hl], $32
    ld c, [hl]
    ld c, [hl]
    ld a, $2e
    ld [$5bea], a
    ld e, a
    cp $7f
    ld a, [c]
    ld [hl], d
    cp [hl]
    dec sp
    cp e
    ld a, d
    or a
    scf
    rst $30
    or a
    ld [hl], $36
    ld l, $2e
    or d
    ld [hl-], a
    xor l
    ld h, h
    ld [hl], h
    inc [hl]
    rra
    ld e, a
    rra
    ld e, a
    cp a
    ccf
    sub e
    inc de
    ld e, e
    ld e, e
    cp a
    ccf
    adc a
    rrca
    ld h, l
    ld h, l
    ld h, l
    ld l, l
    ld h, l
    ld l, l
    ld c, a

jr_08a_64bd:
    ld b, a
    dec hl
    inc hl
    dec hl
    inc hl
    sub a
    sbc a
    ld e, a
    ld e, a
    ld d, a
    rst $10
    ld d, a
    rst $10
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $18
    rst $18
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $18
    ld e, a
    inc de
    inc de
    and [hl]
    and [hl]
    ld a, [hl]
    ld l, [hl]
    and $ee
    or [hl]

jr_08a_64e1:
    and [hl]
    ld [hl], a
    ld h, a
    db $76
    ld h, [hl]
    db $76
    ld h, [hl]
    ld [hl], h
    ld h, h
    ld [hl], h
    ld h, h
    ld c, $1e
    cpl
    daa
    inc c
    inc c
    inc l
    xor h
    cp [hl]
    cp [hl]
    rst $28
    rst $28
    ld h, a
    ld h, a
    rst $18
    rst $08
    adc a
    adc a
    ld e, a
    ld c, a
    add a
    and a
    add a
    add a
    cp c
    xor c
    sub e
    add e
    jp z, $eaca

    jp z, $c2c2

    push bc
    push de
    nop
    ld a, l
    nop
    ld a, a
    nop
    ld a, a
    jr nz, @+$61

    jr nz, jr_08a_64e1

    nop
    xor $00
    rst $18
    nop
    rrca
    ld l, [hl]
    ld l, [hl]
    ei
    ei
    cp [hl]
    cp [hl]
    xor $ee
    xor $ee
    ei
    ei
    db $76
    db $76
    ld a, a
    ld l, a
    rst $20
    rst $20
    rst $00
    rst $00
    xor a
    adc a
    inc a
    inc c
    ld [hl], h
    ld b, h
    and a
    add a
    db $e4
    add h
    inc c
    inc c
    ld l, [hl]
    ld c, [hl]
    xor a
    rst $08
    rst $28
    rst $08
    rst $20
    rst $00
    pop bc
    pop hl
    ld [c], a
    ld [$e6e6], a
    ld [c], a
    ld [c], a
    ld a, [$74f2]
    ld [hl], h
    ld [hl], a
    scf
    ld c, a
    rrca
    ld a, [hl]
    cp [hl]
    sbc [hl]
    cp $e1
    pop hl
    db $fd
    db $fd
    db $fd
    db $fd
    ld hl, sp-$08
    ld a, a
    ld a, l
    rla
    ld d, a
    sbc a
    rst $38
    ld a, $5e
    inc e
    ld a, h
    ld l, [hl]
    ld l, [hl]
    db $e3
    db $e3
    ld l, b
    ld a, d
    ld l, a
    ld l, h
    jp c, $dadc

    sbc h
    ld sp, hl
    cp l
    cp e
    cp a
    sbc $9a
    ld a, h
    jr c, jr_08a_65e1

    ld e, [hl]
    ld e, l
    ld e, l
    db $dd
    ld e, h
    cp d
    ld a, $ae
    ld l, d
    or a
    ld [hl], d
    inc l
    inc l
    ld l, a
    ld l, h
    cp l
    ld a, c
    ld a, a
    rst $38
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    dec sp
    dec sp
    ei
    ld a, e
    scf
    or e
    inc sp
    dec sp
    ld l, h
    ld l, l
    db $ed
    db $ed
    ld a, l
    db $fc
    ldh [$e0], a
    ld b, [hl]
    ld b, [hl]
    call z, $99cc
    sbc c
    rst $18
    rst $18
    set 1, e
    ld l, [hl]
    ld c, d
    ld b, b
    ld b, c
    add a
    adc a
    sbc [hl]
    sub [hl]
    add h
    adc h
    rst $10
    rst $08
    ld d, h
    ld d, h
    sbc l
    sbc h
    jp nc, $d8f0

    call c, $d9d9
    jr c, jr_08a_6606

    adc l
    adc l
    rst $00
    rst $08
    set 1, e
    ld a, b
    ld l, b
    ld [hl], a
    ld [hl], a
    rst $38
    rst $30
    ld d, e
    ld d, a
    ld a, a
    ld [hl], a
    ld a, c
    ld [hl], c
    pop af

jr_08a_65e1:
    pop af
    db $eb
    db $eb
    rst $00
    rst $00
    sbc a
    sbc a
    rrca
    rrca
    rst $08
    rst $08
    rla
    rlca
    sub c
    add c
    call nz, $c3c4
    pop bc
    ret


    ret


    cp c
    cp c
    ret


    ret


    cp d
    xor b
    and d
    and b
    xor d
    xor b
    sub c
    sub c
    add c
    sub c
    sub e
    add e

jr_08a_6606:
    add c
    add c
    and b
    xor b
    sub l
    add l
    jp z, $c6c8

    call nc, $bf00
    nop
    rst $38
    nop
    rst $30
    nop
    or e
    nop
    ld [hl], a
    nop
    ld h, $00
    and [hl]
    nop
    xor [hl]
    nop
    inc a
    nop
    ld [hl], $02
    ld a, h
    nop
    ld a, $00
    ld a, [hl]
    nop
    inc e
    nop
    cp [hl]
    nop
    cp $dd
    call c, $367e
    ld [hl], d
    ld [hl-], a
    ld [hl], c
    ld sp, $1bda
    dec sp
    dec sp
    ld a, $3e
    ei
    dec sp
    cp e
    dec sp
    rlca
    ld b, a
    db $ed
    call $f5c7
    or $e4
    db $fd
    push hl
    ld [hl], a
    ld h, a
    rst $20
    rst $30
    rst $30
    rst $20
    cpl
    dec a
    cp $94
    ld e, $34
    or l
    sub l
    di
    sbc c
    cp b
    cp h
    ld [hl], d
    ld [hl], b
    rst $38
    add sp, -$20
    pop de
    rst $20
    pop de
    cp $f8
    adc b
    xor h
    inc e
    dec a
    db $fd
    inc a
    db $db
    ld a, [de]
    ld e, h
    inc e
    call c, $691c
    inc c
    push af
    ld b, b
    or d
    add b
    sub h
    and d
    ld a, c
    add hl, hl
    push hl
    ld [hl], c
    or $79
    ld [hl], c
    ld h, b
    ld l, l
    ld h, b
    rst $20
    ldh [$f5], a
    pop af
    and b
    xor d
    xor d
    and c
    sbc b
    pop de
    db $dd
    sub e
    rst $38
    db $db
    di
    ei
    ld sp, hl
    jp nc, $d4d5

    ld a, e
    ld hl, sp-$04
    db $fc
    xor d
    and b
    jp c, Jump_000_2ed1

    and d
    ld a, h
    ld [hl], d
    ld a, c
    ld [hl], d
    ld hl, sp-$10
    xor e
    and d
    or b
    or d
    rst $08
    ret nz

    call $e7e0
    ldh [$cd], a
    pop de
    rst $00
    pop bc
    push bc
    pop bc
    db $d3
    ret nz

    rst $08
    ret nz

    call $f2c0
    ldh [$e7], a
    pop hl
    ld sp, hl
    di
    push af
    pop af
    push af
    di
    ld l, a
    ld h, c
    set 0, l
    call $65c7
    db $ed
    ld [hl], d
    ld [hl], b
    ld l, d
    ld l, b
    rst $18
    ret


    ld l, d
    ld l, b
    db $ed
    jp hl


    rst $20
    pop hl
    or d
    or b
    cp $f8
    adc $cc
    call nz, Call_000_28e4
    add hl, hl
    inc de
    db $10
    ld [bc], a
    ld [$8082], sp
    adc [hl]
    adc b
    jp c, $ded8

    ret c

    cp [hl]
    cp b
    ld c, d
    ld c, b
    ld e, d
    ld e, b
    db $dd
    reti


    pop de
    db $d3
    ld b, e
    ld b, a
    ld d, a
    ld e, a
    ld a, c
    ld d, c
    ld c, [hl]
    ld b, [hl]
    ld c, a
    ld b, a
    ld b, l
    ld b, l
    ret z

    call nz, $c2c2
    ret c

    ld hl, sp+$00
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
    jr jr_08a_6743

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08a_6753

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08a_6763

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08a_6773

    ld [hl-], a

jr_08a_6743:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08a_6783

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_08a_6753:
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

jr_08a_6763:
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
    ld d, e
    ld h, c

jr_08a_6773:
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

Call_08a_6780:
    ld l, [hl]
    ld l, a
    ld h, c

jr_08a_6783:
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
    ld h, c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_08a_6847

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08a_6857

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08a_6867

    ld a, [hl+]
    dec hl
    ld h, c
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08a_6878

jr_08a_6847:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08a_6888

    ld a, [hl-]
    ld bc, $0100
    ld bc, $0101
    nop

jr_08a_6857:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0100
    ld bc, $0101
    nop

jr_08a_6867:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0004
    ld bc, $0401
    ld bc, HeaderLogo
    nop
    nop

jr_08a_6878:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0004
    ld bc, $0101
    ld bc, $0101
    nop
    nop

jr_08a_6888:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0004
    ld bc, $0202
    ld bc, $0001
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
    inc b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc b
    dec b
    inc b
    nop
    ld bc, $0404
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0400
    dec b
    dec b
    dec b
    ld bc, $0400
    ld bc, $0401
    inc b
    nop
    nop
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    ld bc, $0000
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0404
    ld bc, $0501
    dec b
    dec b
    dec b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0504
    nop
    inc b
    ld bc, $0404
    inc b
    inc b
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    inc c
    inc c
    inc c
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0408], sp
    ei
    db $10
    rst $28
    dec b
    ld a, [$eb14]
    nop
    rst $30
    ld bc, $01fe
    cp $00
    rst $38
    ld sp, hl
    cp $ff
    rst $38
    rst $18
    rst $38
    rst $30
    rst $18
    pop af
    xor $ef
    ldh a, [$7e]
    pop af
    ld l, e
    or h
    cp [hl]
    rst $10
    ld a, [hl]
    add a
    ld a, [$fb07]
    rlca
    db $f4
    dec bc
    add [hl]
    ld a, a
    add d
    cp $86
    ld a, [$fe81]
    ret z

    rst $30
    inc l
    db $d3
    push hl
    ld a, [de]
    inc de
    db $fc
    ld e, $f9
    inc [hl]
    db $db
    inc e
    rst $20
    xor [hl]
    ld h, a
    ld a, [hl-]
    rst $30
    ld e, a
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld a, d
    pop af
    inc h
    rst $20
    inc a
    rst $20
    inc e
    rst $20
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
    cp c
    cp $ff
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    db $fd
    rst $30
    cp a
    rst $10
    ld h, a
    sbc a
    rst $28
    sbc a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    db $ed
    ldh [rIE], a
    adc $f1
    call $c9fb
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    and e
    rst $38
    adc a
    rst $38
    db $ed
    rst $38
    rst $38
    ccf
    dec a
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    rst $10
    rst $38
    ld d, d
    rst $38
    ld a, e
    rst $18
    or l
    rst $38
    xor c
    rst $38
    rst $30
    db $fd
    rst $38
    push af
    push af
    rst $38
    ld [hl], c
    rst $38
    ld e, a
    ei
    ld a, e
    ei
    rst $38
    ei
    ei
    ei
    db $db
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    or a
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    ld l, a
    rst $38
    xor a
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, c
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
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ld a, a
    nop
    rst $38
    nop
    pop bc

jr_08a_6a7d:
    nop
    ld a, c
    rlca
    nop
    rst $38
    ld b, c
    rst $38
    inc h
    rst $38
    db $10
    rst $38
    ld b, d
    rst $38
    dec c
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    add a
    ld a, b
    ld a, [c]
    dec c
    ld a, b
    add a
    add b
    ld a, a
    add b
    ld a, a
    ldh [rNR34], a
    ld a, [bc]
    call nc, $ff00
    rst $28
    ld a, $7b
    rst $38
    sbc a
    rst $38
    rst $08
    ccf
    rst $30
    rrca
    rst $38
    inc bc
    db $dd
    inc sp
    add sp, $17
    cpl
    call c, $f30c
    jr c, jr_08a_6a7d

    ld h, b
    rst $08
    add sp, -$19
    adc b
    rst $20
    ccf
    daa
    inc hl
    ccf
    ld [hl-], a
    ld a, a
    ld a, [de]
    pop af
    ld de, $02fb
    ld d, c
    rla
    jr jr_08a_6ae2

    db $fc
    dec de
    cp $1e
    rst $38
    inc l
    rst $18
    ld [$00ff], sp
    rst $38
    and b
    rst $18
    ret nz

    ccf
    ld b, b
    cp a
    jr nz, @+$01

    inc d
    rst $38
    nop
    rst $38

jr_08a_6ae2:
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    rst $38
    nop
    rst $38
    cp l
    ld a, a
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    xor a
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp h
    rst $30
    xor l
    rst $38
    sbc $ff
    push hl
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    ld a, e
    rst $38
    ld sp, hl
    rst $38
    ld l, c
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30
    rst $30
    rst $30
    ld h, a
    rst $38
    reti


    rst $38
    or a
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld a, d
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $ed
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    ei
    rst $38
    ld a, [$f2ff]
    rst $38
    ld a, [$f7ff]
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    ei
    rst $38
    db $eb
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    cp a
    ei
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
    rst $38
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
    ccf
    ret nz

    db $fd
    ld [bc], a
    ld e, a
    cp a
    rst $38
    rst $38
    ld bc, $10ff
    rst $38
    ld b, d
    rst $38
    ld a, [hl+]
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    add d
    ld a, l
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    inc b
    ei
    jr nz, @-$1f

    sub b
    ld l, a
    ld [$80f7], sp
    rst $38
    add c
    cp $c9
    db $f4
    ret nc

    rst $20
    call z, $06f3
    ld sp, hl
    and e

jr_08a_6bb3:
    db $fc
    rst $10
    ld hl, sp-$0f
    cp $79
    cp $fd
    cp $d0

jr_08a_6bbd:
    rst $38
    db $10
    rst $28
    ldh [$7f], a
    ld hl, sp-$09
    ld hl, sp-$09
    inc c
    di
    call z, Call_000_2a3b
    db $fd
    inc d
    rst $38
    jr @+$01

    ld [bc], a
    db $fd
    ld bc, $30fe
    rst $08
    nop
    rst $38
    inc b
    ei
    jr z, jr_08a_6bb3

    jr nz, jr_08a_6bbd

    inc b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $0d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop de
    rst $28
    pop hl
    rst $38
    push hl
    ld sp, hl
    push af
    ld sp, hl
    pop af
    ld sp, hl
    db $fd
    ei
    rst $30
    rst $38
    ld hl, $b3ff
    rst $38
    set 7, a
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ei
    rst $30
    db $e3
    rst $38
    or $ff
    or $ff
    rst $38
    rst $38
    db $fd
    rst $38
    push de
    rst $38
    rst $30
    rst $38
    cp l
    rst $38
    xor b
    rst $38
    xor [hl]
    db $fd
    ret z

    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ei
    rst $18
    sbc e
    rst $38
    cp e
    rst $18
    ld d, h
    ccf
    sub b
    db $fd
    di
    cp h
    or h
    cp a
    or [hl]
    rst $38
    rst $20
    rst $38
    ld [$afff], a
    rst $38
    ld h, a
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], c
    rst $38
    ld a, [c]
    rst $38
    and $ff
    jp nz, Jump_08a_56ff

    rst $28
    call z, $deff
    rst $38
    adc $ff
    xor $ff
    sbc [hl]
    rst $28
    call nz, $d8ff
    rst $20
    db $f4
    rst $28
    db $e4
    rst $18
    cp $ff
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    rst $38
    db $10
    rst $38
    nop
    rst $38
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, $0aff
    rst $38
    ld e, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr @+$01

    sub c
    ld l, h
    ld l, a
    sub b
    adc h
    ld [hl], e
    dec d
    ld [$54ab], a
    daa
    ret c

    inc bc
    db $fc
    ld b, e
    cp h
    add d
    ld e, l
    ld d, l
    xor b
    ld [bc], a
    db $fc
    inc hl
    call c, $dc23
    add e
    ld a, h
    rla
    add sp, $13
    db $ec
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    scf
    ret nz

    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    ld hl, sp+$19
    ld [c], a
    ld b, b
    or b
    nop
    ld hl, sp+$04
    ld hl, sp+$2d
    ret nc

    ld b, l
    cp b
    rrca
    ldh a, [rNR31]
    ldh [rNR24], a
    ldh [$03], a
    ldh [$03], a
    ldh [rDMA], a
    add c
    ld c, e
    add a
    ld e, a
    add a
    sbc a
    rrca
    dec a
    rra
    db $fd
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    ld hl, sp-$01
    db $ec
    cp $fe
    db $ec
    rst $28
    db $fc
    db $ec
    db $fd
    ei
    db $fc
    ret nc

    db $fd
    ld c, c
    db $fc
    ret nc

    db $fd
    reti


    db $fc
    ld a, [c]
    db $fd
    pop af
    db $fd
    push af
    ld sp, hl
    inc sp
    db $fd
    inc sp
    db $fd
    add hl, bc
    rst $30
    and h
    ei
    sub l
    db $eb
    db $76
    db $eb
    nop
    ei
    or e
    ld a, a
    cp a
    ld a, e
    inc sp
    rst $38
    adc e
    ld [hl], a
    ld b, e
    rst $30
    jp Jump_08a_4b77


    rst $30
    ld h, a
    rst $18
    add l
    rst $18
    rst $20
    rst $18
    ld c, a
    rst $38
    ld e, a
    rst $08
    sub a
    rst $08
    sbc a
    rst $08
    and a
    rst $18
    sbc a
    rst $28
    rrca
    rst $18
    ld e, a
    rst $38
    sbc d
    rst $18
    sbc a
    rst $38
    sbc a
    cp $1e
    rst $38
    sbc l
    ld a, a
    inc e
    rst $38
    ld a, [hl]
    cp a
    inc l
    rst $38
    dec b
    rst $38
    ld c, $bd
    ld l, a
    cp l
    add hl, hl
    db $fd
    add hl, sp
    rst $38
    add hl, hl
    ei
    and c
    ld a, a
    ld l, a
    ld [hl], e
    ld c, [hl]
    di
    sbc $73
    ld [hl], e
    ld [hl], a
    di
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_08a_6d6a:
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
    inc bc
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

jr_08a_6d84:
    nop
    db $fd
    nop
    cp a
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
    nop
    rst $38
    nop
    sbc e
    ld h, h
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_08a_6d6a

    jr nc, jr_08a_6d84

    jr @-$03

    inc b
    rst $38
    nop
    rst $30
    nop
    db $fd
    nop
    db $fc
    nop
    cp h
    nop
    xor $00
    rst $28
    nop
    cp $00
    and $00
    rst $30
    nop
    ld [hl-], a
    nop
    ld a, [c]
    nop
    ld [hl], e
    nop
    cp $00
    adc [hl]
    nop
    call z, $e800
    nop
    add sp, $00
    ldh [rP1], a
    ldh a, [rSB]
    pop hl
    inc bc
    db $e3
    inc bc
    db $e3
    rlca
    rst $00
    rlca
    add [hl]
    rrca
    rst $18
    rrca
    sub l
    rra
    rst $10
    ccf
    or a
    ld a, a
    cp a
    rst $38
    rst $18
    rst $38
    cp $ff
    db $ed
    cp a
    ld l, l
    db $fc
    or $fc
    db $76
    db $fc
    inc d
    cp $7e
    ld a, h
    cp l
    ld a, h
    ld e, h
    ld a, [hl]
    ld a, l
    ld a, [$f87e]
    ld a, e
    db $fc
    add hl, sp
    db $fc
    ld hl, sp-$03
    ld hl, sp-$03
    ld [c], a
    ld sp, hl
    db $fc
    ei
    or l
    ld sp, hl
    db $e4
    ei
    ld [hl], d
    ld sp, hl
    ld [hl], d
    ld sp, hl
    ld l, b
    ei
    ldh a, [$fb]
    ld a, h
    ei
    ld a, [$fcff]
    ei
    set 6, a
    db $d3
    db $eb
    jp z, $92e7

    rst $00
    db $d3
    rst $08
    xor e
    rst $10
    adc a
    rst $20
    sub e
    and a
    sbc a
    push hl
    or [hl]
    rst $00
    sub l
    adc $45
    sbc $94
    rst $28
    xor [hl]
    rst $18
    sbc a
    xor $0c
    rst $08
    rrca
    rst $18
    adc e
    rst $18
    dec hl
    rst $18
    dec de
    rst $38
    ld a, [$babf]
    rst $38
    sbc e
    rst $38
    sub [hl]
    rst $38
    reti


    cp a
    sub c
    rst $38
    ld e, l
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    or a
    rst $38
    rst $30
    ld a, a
    ld a, $ff
    cp $ff
    cp e
    rst $38
    or a
    rst $38
    di
    rst $38
    ld [hl], d
    rst $38
    ld h, a
    cp $2f
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
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
    db $fc
    nop
    inc bc
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
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    ld hl, sp+$00
    add b
    nop
    nop
    nop
    nop
    nop
    rrca
    inc a
    add b
    sbc h
    ld b, b
    sbc b
    ld h, b
    ld a, b
    nop
    db $fc
    nop
    ld a, b
    add b
    ld hl, sp+$00
    ld hl, sp+$00
    add sp, $00
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rSB], a
    ld hl, $2101
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rra
    rrca
    rra
    rra
    ccf
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
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
    ld e, e
    cp a
    ccf
    rst $38
    ld a, a
    cp a
    rrca
    rst $38
    ld b, a
    rst $38
    sub l
    ld a, a
    db $dd
    ld a, a
    rra
    ld a, l
    reti


    ld a, a
    dec c
    rst $38
    dec h
    ei
    ld e, a
    ld sp, hl
    sbc l
    ei
    add hl, sp

jr_08a_6eeb:
    rst $38
    cp b
    rst $38
    add hl, de
    rst $38
    reti


    rst $38
    jr jr_08a_6eeb

    or e
    rst $38
    rra
    ei
    scf
    rst $18
    add hl, hl
    rst $38
    ccf
    db $fd
    dec [hl]
    rst $38
    or c
    rst $28
    ld a, c
    rst $30
    ld sp, $7eff
    rst $38
    db $76
    rst $38
    ld [hl], d
    cp $f2
    cp $b7
    rst $38
    ld c, d
    rst $38
    jp c, $edef

    rst $38
    db $f4
    rst $38
    ld c, a
    db $fd
    inc a
    rst $38
    cp d
    ld a, a
    ld a, $ff
    xor $ff
    push af

Call_08a_6f23:
    rst $38
    ld sp, hl
    rst $30
    cp $f5
    db $f4
    rst $38
    ld [hl], l
    rst $38
    cp b
    rst $38
    pop af
    rst $38
    rst $30
    ei
    ld sp, hl
    rst $38
    cp b
    ei
    ldh [rIE], a
    push bc
    cp $ee
    rst $38
    db $fc
    rst $38
    set 7, a
    rst $28
    rst $38
    ld sp, hl
    rst $38
    or d
    db $fd
    ld a, [c]
    rst $38
    ld [hl], b
    rst $38
    db $f4
    rst $38
    and l
    rst $38
    ldh [rIE], a
    pop af
    rst $38
    sbc $ff
    db $dd
    rst $38
    ld l, l
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $28
    db $e4
    rst $28
    reti


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
    rst $38
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    cpl
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    jp Jump_000_00c3


    db $fc
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rlca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    rst $18
    rst $38
    cp a
    rst $18
    rst $10
    rst $38
    or a
    rst $38
    or a
    rst $38
    rst $10
    rst $38
    add a
    rst $38
    or e
    rst $18
    cp e
    rst $18
    adc e
    rst $18
    and [hl]
    rst $38
    and [hl]
    rst $38
    rst $18
    rst $38
    rst $38
    rst $18
    rst $18
    rst $38
    ld a, a
    rst $18
    cp a
    rst $18
    sbc a
    sbc a
    rla
    rst $38
    rra
    rst $38
    cpl
    rst $18
    rst $08
    rst $38
    ld d, e
    rst $28
    adc a
    ld a, a
    xor a
    ld a, a
    ld a, a
    cp a
    rst $28
    ld a, a
    daa
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rlca
    rst $38
    sbc a
    rst $28
    ld l, a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    rst $30
    rst $28
    rst $00
    rst $28
    rst $28
    rst $38
    rst $08
    rst $38
    cp a
    rst $18
    xor a
    rst $18
    ccf
    rst $18
    rst $38
    ld e, a
    rra
    rst $38
    scf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    ccf
    rst $38
    ccf
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
    ld a, a
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    ld l, a
    cp a
    ccf
    rst $38
    ccf
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
    rrca
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ldh [rP1], a
    adc a
    nop
    ldh a, [rP1]
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
    nop
    rst $38
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    ret nz

    adc a
    di
    db $eb
    rst $30
    db $d3
    rst $28
    ld a, c
    and $f9
    or $fe
    ld sp, hl
    cp $fd
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
    rst $38
    rst $38
    ld a, a
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
    ld a, [$fbfb]
    rst $38
    ld a, [$f2ff]
    rst $38
    rst $38
    ei
    ld a, [$feff]
    rst $38
    di
    ei
    pop af
    rst $38
    db $fd
    rst $38
    ei
    cp $f7
    rst $38
    and $ff
    db $f4
    rst $38
    db $e3
    db $fd
    rst $20
    push af
    ldh [$f7], a
    ldh a, [rIE]
    push af
    cp $f4
    cp $c0
    db $fd
    rst $38
    add sp, -$34
    rst $38
    rst $38
    db $ed
    ld [$fced], a
    jp hl


    and $f9
    ldh [rIE], a
    db $fc
    ei
    db $fd
    ei
    db $fd
    ld a, [$ffea]
    pop af
    rst $38
    db $f4
    ei
    ld sp, hl
    cp $d2
    db $fd
    jp c, $e1e5

    rst $20
    xor $f7
    db $e4
    rst $38
    db $e3
    rst $28
    push bc
    ld a, [$ddfb]
    call nz, $c3fb
    rst $38
    reti


    rst $08
    add l
    rst $38
    add $df
    set 7, a
    rst $38
    rst $38
    pop af
    rst $18
    jp c, $e8f5

    rst $38
    db $e3
    cp $d4
    rst $38
    rst $30
    db $dd
    cp [hl]
    push de
    add l
    cp $a5
    rst $38
    and c
    rst $38
    xor c
    rst $38
    ld a, [$a5ad]
    ld [$ad82], a
    xor c
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    ld sp, hl
    nop
    sbc a
    nop
    ld hl, sp+$00
    add b
    nop
    inc bc
    nop
    ld e, a
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
    ld [$23cf], sp
    rst $38
    sbc c
    ld h, a
    and d
    ld e, l
    ld [hl], a
    rst $08
    inc e
    rst $28
    ld d, d
    xor a
    ld h, d
    sbc a
    adc a
    ld a, [c]
    rst $08
    ldh a, [$2f]
    ldh a, [$d1]
    rst $28
    ld e, a
    rst $28
    db $dd
    rst $38
    ld l, a
    rst $38
    xor a
    cp $ee
    rst $38
    cp $fb
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    rst $38
    xor $ff
    ld [hl-], a
    rst $28
    and e
    rst $38
    add d
    rst $38
    ld d, a
    xor [hl]
    nop
    and a
    db $d3
    xor h
    ld [hl], $a0
    db $76
    and d
    ld h, d
    adc e
    and c
    ld c, d
    ld c, a
    pop hl
    ld a, l
    ret nz

    dec a
    jp nz, $857b

    ld l, b
    push bc
    adc d
    push af
    push de
    xor d
    pop af
    adc h
    db $fd
    nop
    rla
    call z, $8d53
    ld [hl], h
    adc c
    cpl
    sub b
    and l
    ld b, h
    ld a, a
    adc b
    ld a, a
    ld d, b
    rst $28
    ret nc

    sub [hl]
    reti


    ld b, d
    sbc l
    and $89
    sbc a
    adc b
    jp nz, $de99

    sbc c
    rst $38
    adc c
    ld c, e
    adc b
    cp [hl]
    adc c
    db $d3
    xor h
    adc a
    xor c
    dec hl
    add l
    ld a, [c]
    adc c
    ld b, $b9
    rst $18
    xor c
    sub l
    ld [$ac1a], a
    ld c, e
    cp h
    add a
    ld l, c
    ld [hl], a
    add b
    ld l, [hl]
    add c
    inc d
    xor e
    ret nc

    xor a
    ld [$e0c7], sp
    adc a
    ld d, c
    xor [hl]
    scf
    xor b
    sbc b
    daa
    ret nc

    and a
    ld [hl], h
    add a
    ret


    or [hl]
    db $e4
    adc d
    sub d
    jp z, $fb0c

    ld hl, sp-$01
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    nop
    rlc b
    rra
    ld bc, $107f
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld hl, $1eff
    rst $38
    xor d
    rst $38
    ldh [rIE], a
    and b
    rst $38
    xor d
    rst $10
    or b
    rst $08
    rst $18
    jp hl


    ld l, $fd
    ld sp, hl
    cp $f4
    rst $38
    rst $38
    ld [hl], a
    rst $38
    add hl, sp
    rst $08
    inc a
    cp l
    adc $7f
    db $fd
    rst $38
    rst $38
    rst $38
    rst $28
    ld l, a
    rst $38
    push af
    ld e, e
    push bc
    ld a, e
    and $ff
    push af
    cp $d8
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
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
    rst $28
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    db $fd
    cp $bc
    ei
    ld hl, sp-$01
    rst $30
    ld hl, sp-$11
    ld hl, sp-$0d
    db $fc
    ld a, d
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    rst $18
    ccf
    rra
    rst $38
    ld a, a
    rst $18
    rrca
    rst $38
    rra
    rst $28
    rst $28
    ld a, a
    sbc $ff
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld e, [hl]
    rst $38
    cp [hl]
    rst $38
    cp $2f
    ld l, [hl]
    ld a, a
    rst $18
    ld l, a
    sbc a
    ld l, a
    ld a, $ef
    cp $ef
    ld a, a
    rst $28
    cp a
    rst $28
    cp a
    xor $1e
    rst $28
    ld c, $ff
    cp a
    xor $fe
    xor a
    ld h, $ff
    ld a, [hl]
    rst $38
    cpl
    rst $38
    ld e, $ff
    cp a
    ld c, a
    rst $08
    ld a, a
    ld e, a
    rst $28
    ld a, [de]
    rst $18
    jp c, $bbdf

    rst $18
    ld c, d
    sbc a
    dec de
    rst $28
    sbc [hl]
    ld a, a
    adc $df
    cp d
    adc $ea
    rst $18
    adc d
    rst $38
    cp [hl]
    sbc $4e
    rst $18
    ld c, [hl]
    rst $38
    jp c, $9eff

    rst $38
    xor a
    cp $1a
    rst $38
    ld e, [hl]
    rst $38
    ld l, [hl]
    rst $18
    cp $5f
    ld a, $df
    ld a, [hl]
    rst $08
    xor a
    sbc $ee
    rst $18
    ld c, d
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    inc l
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    add b
    rst $38
    ld bc, $1eff
    rst $38
    inc sp
    rst $38
    ld [hl], $db
    add [hl]
    ld a, a
    add $bf
    ld [hl], b
    sbc a
    call c, Call_08a_6f23
    ldh a, [$3f]
    ldh [$7f], a
    add [hl]
    ld c, d
    cp a
    and [hl]
    rst $18
    cp [hl]
    rst $18
    adc d
    ld a, a
    scf
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $00
    cp d
    ld a, l
    jp nz, $e17e

    db $eb
    rst $30
    rst $28
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld e, d
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, [$feff]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    ei
    db $fc
    cp l
    cp $bf
    rst $38
    rst $28
    rst $38
    sbc $fd
    set 7, h
    or $f9
    ret z

    or a
    dec [hl]
    ld a, [$ea5d]
    dec bc
    db $fc
    di
    inc c
    rst $38
    ld [bc], a
    cp $01
    cp [hl]
    ld b, c
    cp a
    ld b, b
    rst $38
    add b
    rst $18
    ldh [$9f], a
    ldh [$9f], a

jr_08a_73cb:
    ldh [$d7], a
    ld hl, sp-$19
    ld hl, sp-$0f
    cp $f9
    cp $fc
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    rst $08
    ccf
    xor a
    ld d, a
    sbc a
    ld [hl], a
    ld l, e
    or a
    db $e3
    ccf
    or c
    ld c, a

jr_08a_73ea:
    ld sp, hl
    rrca
    rst $28
    rla
    or a
    ld c, a
    rst $30
    rrca
    cp e
    ld c, a
    inc de
    ld l, a
    db $fc
    rlca
    rst $20
    jr jr_08a_73ea

    nop
    and a
    ld c, b
    or a
    ld [$3f02], sp
    jr nc, jr_08a_73cb

    ld sp, $f8ca
    rrca
    or c
    ld c, a
    ld e, a
    ld l, $82
    ld l, a
    nop
    ld a, a
    sub c
    ld [hl+], a
    db $dd
    ld l, $31
    ld l, [hl]
    sub c
    inc l
    sbc a
    ld [hl+], a
    pop bc
    ld e, $c1
    ld a, [de]
    pop bc
    ld l, $ed
    ld a, [de]
    pop hl
    inc e
    pop bc
    ld h, $c2
    add hl, hl
    jp nc, $c125

    inc e
    pop de
    ld l, $a6
    ld d, h
    jr nc, jr_08a_7475

    ld b, b
    adc l
    nop
    cpl
    ld bc, $81ac
    ld h, d
    ld b, c
    or d
    ld sp, $130a
    inc b
    nop
    ret nz

    nop
    db $fd
    nop
    rst $38
    nop
    rst $38

jr_08a_7448:
    ld bc, $4eff
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    cp e
    ld l, d
    cp a
    add hl, sp
    rst $38
    ld hl, sp-$01
    ccf
    ld a, [$7b9c]
    db $db
    inc a
    ei
    inc e
    ld a, a
    sbc l
    adc a
    rst $38
    cp a

jr_08a_7475:
    rst $38
    cp $ff
    ccf
    rst $38
    inc sp
    rst $38
    db $e3
    rst $38
    sbc e
    rst $38
    ld a, [hl]
    add c
    or e
    ld l, h
    jr c, @+$01

    ret


    ld [hl], a
    db $dd
    ei
    inc l
    di
    rst $38
    and b
    xor e
    db $fc
    ei
    db $ec
    cp l
    ld l, a
    rst $38
    ld e, a
    ei
    rst $38
    call Call_08a_63f3
    db $fc
    push af
    cp $f9
    and $7d
    jp nc, $ffda

    ld a, l
    db $e3
    ld l, [hl]
    pop af
    rst $38
    db $fc
    rst $30
    ld hl, sp+$37
    ld hl, sp-$4b
    ld l, d
    ld e, $fd
    ld b, a
    cp a
    ld b, $ff
    ccf
    ld [c], a
    ld d, $e9
    jp c, Jump_08a_5225

    xor l
    inc e
    db $e3
    ld l, l
    add b
    jr c, jr_08a_7448

    ld b, $d1
    ld e, $e0
    rlca
    ldh a, [rSB]
    ld hl, sp-$60
    ld e, h
    push bc
    jr c, jr_08a_74e1

    rst $28
    inc bc
    cp $00
    rst $38
    add c
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    pop de
    cp $ff

jr_08a_74e1:
    ldh [$ef], a
    ldh a, [$fb]
    db $fc
    db $fd
    ld a, [$febb]
    cp $ff
    sbc a
    rst $38
    rst $28
    db $db
    db $dd
    rst $38
    rst $08
    rst $38
    call $fdff
    rst $08
    rst $18
    jp hl


    adc $f9
    call z, $ddf9
    add sp, -$09
    ret z

    db $db
    db $ec
    db $dd
    xor $f1
    ret z

    ld hl, sp-$40
    add sp, -$2c
    call nc, $d8ee
    db $ec
    ld d, b
    ret z

    ret c

    db $e4
    ldh a, [$e9]
    ret nc

    rst $28
    ret c

    ld [c], a
    call c, $dec4
    and $d4
    rst $28
    db $fc
    add $5c
    ld b, [hl]
    ld a, l
    and $5c
    ld b, a
    ld e, h
    ld b, a
    ld a, l
    rst $20
    rst $38
    rst $20
    ld a, a
    rst $20
    rst $38
    rst $20
    ld a, a
    rst $20
    ld a, a
    rst $20
    ld a, a
    rst $20
    rst $38
    ld h, a
    ld a, e
    db $e3
    ld a, a
    rst $20
    pop hl
    ld a, l
    nop
    ld b, e
    nop
    ld sp, hl
    nop
    ld sp, hl
    ld b, c
    ei
    nop
    db $e3
    ld bc, $05cf
    rst $38
    rra
    rst $38
    ld a, b
    rst $38
    rst $38
    cp $fd
    cp $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    ei
    db $fc
    rst $38
    ldh a, [$de]
    and a
    ld b, [hl]
    db $fd
    dec sp
    db $fc
    set 7, h
    ld d, l
    ld [$30df], a
    rst $38
    nop
    rst $38
    nop
    xor a
    db $d3
    ld b, b
    rst $38
    rra
    db $fc
    ld b, b
    rst $38
    push hl
    ld a, d
    and d
    ld e, l
    ei
    inc b
    db $fd
    ld [bc], a
    add d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call nz, $e8ff

jr_08a_7589:
    rst $10
    call nz, $77fb
    add sp, -$05
    ld h, l
    or d
    ld a, a
    db $f4
    rst $38
    push de
    cp [hl]
    dec a
    sub $e3
    inc e
    rst $38
    nop
    rst $38
    nop
    ld e, e
    and h
    or $ff
    ld l, $df
    or l
    adc $dd
    and $3e
    jp $ab54


    sub h
    ld l, e
    jp c, Jump_000_0325

    db $fc
    inc b
    pop af
    ld de, $40e8
    jr c, @+$19

    ld [$5a00], sp
    ld b, b
    and h
    ld c, d
    add c
    jr nc, @-$32

    xor b
    ld b, d
    ld b, b
    add hl, hl
    ld b, d
    or h
    add l
    ld [hl-], a
    ld h, $19
    and d
    inc e
    call nc, $ba08
    inc b
    call $d502
    ld [bc], a
    ld d, e
    nop
    ld [de], a
    add c
    dec d
    ret nz

    add b
    ld b, b
    ld h, h
    nop
    cpl
    ret nc

    ret nz

    jr c, jr_08a_7589

    jr @-$5e

    inc e
    ld [$a4b4], sp
    rst $18
    cp a
    rst $38
    rst $38
    rst $38
    push bc
    ei
    rst $38
    rst $38
    xor $ff
    ld [$ffff], a
    rst $38
    push hl
    ei
    pop hl
    rst $38
    call c, $fb63
    db $ed
    pop af
    rst $28
    db $fd
    db $e3
    ld a, a
    pop hl
    dec [hl]
    db $eb
    adc a
    ld [hl], c
    ld [hl], $69
    ld a, [de]
    push hl
    ld hl, $24c0
    ret nz

    inc d
    ret nz

    and [hl]
    ld b, b
    ld h, $c0
    inc h
    ret nz

    inc h
    ret nz

    or [hl]
    ld b, b
    or e
    ld b, b
    ld h, e
    add b
    ld bc, $c140
    ld b, b
    ld bc, $80c2
    ld b, b
    inc bc
    ldh [rNR43], a
    pop bc
    ld e, a
    ld h, b
    ld e, [hl]
    ld h, c
    rla
    jr nz, jr_08a_7654

    jr nz, jr_08a_7659

    ld hl, $007d
    cp a
    add b
    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    scf
    ret z

    nop
    rst $38
    nop
    ld a, [bc]
    nop
    ld a, [$c500]
    inc d
    add sp, $20
    nop

jr_08a_7654:
    ld c, b
    nop
    cp e
    nop
    ld e, [hl]

jr_08a_7659:
    ld hl, $00b7
    ld b, e
    db $10
    ld e, $00

jr_08a_7660:
    rst $18
    jr c, @+$01

    jr jr_08a_7660

    inc e
    db $eb
    inc e
    rst $28
    inc e
    db $db
    inc l
    adc e
    ld a, h
    srl h
    dec b
    cp $2d
    cp $ff
    cp $ae
    rst $38
    rra
    rst $38
    ld h, $ff
    rrca
    rst $30
    ld e, e
    and a
    ld a, e
    add a
    sbc a
    rst $20

jr_08a_7684:
    ld h, a
    rst $38
    dec de
    rst $20
    cpl
    db $d3
    cp l
    ld b, e
    di
    rrca
    xor a
    ld e, a
    rst $38
    rst $38
    db $fc
    rst $38
    pop bc
    rst $38
    ld a, a
    add c
    nop
    rst $38
    rlca
    ld hl, sp-$5b
    ld e, e
    ld a, d
    rst $38
    nop
    db $fd
    ld [$0124], sp
    ld d, d
    jp hl


    nop
    cpl
    ret nc

    adc h
    ld h, b
    ret c

    ld bc, $0880
    ld [bc], a
    adc b
    ld b, h
    sub c
    nop
    ret z

    ld l, d
    add b
    adc l
    ld d, d
    sbc [hl]
    ld b, b
    and b
    ld d, l
    db $10
    inc h
    inc d
    and d
    inc d
    jr z, jr_08a_76f4

    ld d, b
    rrca
    jr nc, @+$69

    sbc b
    push bc
    jr jr_08a_7684

    ld c, b
    inc de
    adc h
    jp nz, $b11d

jr_08a_76d3:
    ld b, $53
    inc b
    dec b
    ld a, [bc]
    ld hl, $8302
    nop
    ld hl, $f7a4
    ld [hl], $f5
    nop

jr_08a_76e2:
    ld h, b
    nop
    jr nz, jr_08a_76e6

jr_08a_76e6:
    or b
    nop
    or e
    ld b, b
    adc [hl]
    ld [hl], e
    jp $effc


    rst $38
    rst $00
    cp a
    rst $38
    rst $38

jr_08a_76f4:
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    pop af
    cp a
    add $bb
    ccf
    call Call_08a_5ffc
    ldh a, [$8f]
    sbc $e1
    ld a, [hl]
    pop bc
    cp $41
    ld b, l
    ei
    ld b, a
    ld hl, sp+$0d
    ld a, [c]
    rst $10
    ld hl, sp+$55
    ld [$38c7], a
    and a
    ld a, b
    or a
    ld l, b
    rst $28
    or h
    xor a
    ld [hl], h
    rst $28
    ld [hl], h
    cpl
    db $f4
    ei
    inc [hl]
    ld l, a
    or b
    db $ed
    ld [hl-], a
    rst $08
    ld sp, $30cf
    ld a, a
    sub b
    xor $11
    rst $28
    db $10
    or $ff
    ld [hl], c
    cp a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $18
    nop
    add c
    ld l, [hl]
    jr nz, jr_08a_76d3

    add b
    ld [$fdf8], sp
    dec bc
    cp a
    ld bc, $47df
    jr z, @+$05

    jr nz, jr_08a_76e2

    call nc, $fe01
    ld bc, $10be
    rst $18
    dec d
    ei
    ld bc, $03ff
    rst $38
    ld [$02f7], sp
    rst $38
    ld b, e
    cp [hl]
    db $e3
    ld e, $b4
    ld c, a
    ld sp, hl
    add [hl]
    cp e
    call nz, Call_000_00ff
    rst $30
    ld [$7887], sp
    rst $38
    nop
    db $fc
    inc bc
    rst $18
    jr nz, @-$4f

    ld d, b
    or a
    ld c, b
    cp c
    ld c, [hl]
    cp d

jr_08a_7787:
    ld b, l
    rst $38
    nop
    ld l, [hl]
    sub c
    ld a, d
    add l
    ld e, c
    and [hl]
    adc $b1
    sbc l
    ld [c], a
    jp c, $f584

    adc d
    cp [hl]
    pop bc
    push hl
    jp c, $e4da

    pop hl
    or $17
    add sp, -$17
    ld d, d
    ld de, $30e0
    ret


    ld b, b
    ldh [rRP], a
    ldh [$90], a
    ld h, b
    inc a
    ld h, d
    rlca
    and l
    rlca
    daa
    rrca
    xor a
    xor e
    rrca
    rst $18
    cpl
    dec h
    dec d
    inc b
    inc d
    ld hl, $0812
    or b
    ld c, b
    db $10
    ldh [rNR24], a
    ldh [rNR30], a
    sub l
    ld c, b
    di
    ld [$39c2], sp
    call nz, $f13a
    inc c
    di
    inc c
    ld sp, hl
    ld b, $e8
    inc d
    ret nc

    inc b
    sbc c
    inc b
    ld e, $00
    ld b, l
    inc bc
    jp nz, $a240

    jr z, jr_08a_7787

    jr nz, jr_08a_7817

    ld a, [hl-]
    call nc, $8102
    ld [hl], h
    inc b
    db $e3
    nop
    xor $b7
    add sp, -$44
    jp $d768


    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    sbc $f7
    or [hl]
    rst $38
    or $ff
    push af
    rst $38
    db $fd
    ld a, l
    ld h, e
    rst $38
    ei
    rst $38
    ld a, d
    rst $38
    ld e, e
    cp $9e
    reti


    ld a, [bc]
    call z, $be9d
    dec de
    cp h
    cp l
    ld a, [hl]
    xor a

jr_08a_7817:
    ld a, $a9
    ld a, [hl]
    xor c
    ld l, [hl]
    db $ed
    ld a, [hl+]
    db $fd
    ld a, d
    and e
    ld h, l
    db $fd
    ld a, $f2
    ccf
    db $dd
    ccf
    rst $18
    rra
    ret


    dec bc
    xor d
    ld c, b
    and e
    inc b
    rst $00
    inc b
    rst $10
    inc [hl]
    ld [hl], e
    sub b
    rst $38
    inc e
    sbc h
    sbc h
    db $fd
    db $fd
    rst $38
    nop
    ld a, [$fd00]
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, $a0
    ld [$50ff], sp
    ld b, $20
    ld a, e
    add b
    pop bc
    ld d, $ff
    ret nc

    ld a, [bc]
    ld a, l
    nop
    ccf
    ret nz

    cp a
    nop
    rst $30
    nop
    scf
    ld hl, sp+$1f
    rst $38
    ld e, a
    cp a
    rra
    rst $38
    sbc a
    ld a, a
    rst $08
    ccf
    rra
    rst $38
    adc a
    ld a, a
    ld l, a
    sbc a
    rst $28
    rra
    rst $28
    rra

jr_08a_7874:
    rst $28
    rra
    adc a
    ld a, a
    rst $18
    cpl
    xor a
    ld e, a
    xor a
    ld e, a
    rst $18
    ccf
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    ld a, a
    adc a
    cpl
    rst $18
    xor a
    ld e, a
    xor a
    ld e, a
    cp a
    ld c, a
    rst $38
    rrca
    sbc a
    cpl
    rst $28
    rra
    ld a, a
    adc a
    rst $18
    cpl
    rst $38
    rrca
    ld a, a
    adc a
    ld a, a
    adc a
    rst $18
    cpl
    sbc a
    rrca
    adc a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec de
    adc a
    rrca
    rrca
    ld c, a
    rrca
    rst $18
    rrca
    rla
    adc a
    add a
    rrca
    rlca
    rrca
    and a
    rrca
    rla
    xor a
    ld [hl], a
    rrca
    rst $30
    rrca
    cp a
    ld b, a
    rst $38
    rlca
    ld h, a
    sbc a
    rst $30
    rrca
    ld a, [$ff07]
    rlca
    rst $20
    rra
    cp a
    ld c, a
    di
    rrca
    ei
    rlca
    push af
    rrca
    db $db
    dec l
    push af
    dec bc
    ei
    dec b
    or $09
    ld a, [bc]
    dec b
    xor [hl]
    and c
    rlca
    jr jr_08a_7874

    ret nz

    ld l, [hl]
    ld [hl], b
    ld a, [bc]
    nop
    add sp, -$20
    nop
    jr nz, @+$01

    nop
    rst $38
    nop
    dec hl
    db $fd
    db $e3
    db $fd
    or $f9
    sub $f9
    ld e, a
    add sp, -$41
    db $ec
    jr c, @+$01

    xor b
    rst $38
    sbc [hl]
    ld sp, hl
    sbc b
    rst $38
    inc a
    db $db
    ccf
    jp c, Jump_08a_5cb3

    xor a
    ld b, b
    and h
    ld d, d
    add [hl]
    ld [hl], c
    rst $08
    ld sp, $eb15
    ld b, a
    xor b
    xor $01
    xor l
    ld b, e
    adc h
    inc hl
    db $dd
    inc hl
    rst $18
    inc bc
    ld a, [$f027]
    rrca
    rst $38
    nop
    ld l, e
    add h
    di
    adc h
    scf
    ret z

    ld a, [hl]
    add b
    ld a, [c]
    push bc
    scf
    ret z

    ld e, a
    and b
    ld b, $b9
    rst $38
    rst $38
    db $dd
    nop
    rst $18
    nop
    ld a, [$bd00]
    nop
    rst $28
    nop
    ld a, [$fe01]
    nop
    ld bc, $015d
    ld h, e
    nop
    ld d, b
    nop
    rra
    nop
    ld d, l
    dec d
    and b
    rst $38
    nop
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
    rst $28
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
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
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    ld e, [hl]
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rra
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    cp a
    rst $18
    add a
    rst $38
    rst $00
    rst $38
    rst $20
    rst $18
    xor a
    rst $38
    or a
    rst $38
    rst $10
    rst $38
    db $eb
    rst $38
    rst $08
    rst $38
    di
    rst $28
    set 7, a
    jp hl


    rst $38
    db $fd
    db $eb
    rst $20
    rst $38
    rst $28
    rst $38
    jp hl


    rst $38
    rst $30
    ei
    pop af
    rst $38
    ld hl, sp-$01
    ld a, h
    rst $38
    ld [hl], l
    cp $f0

jr_08a_79f1:
    ld a, [hl]
    db $fd
    ld a, d
    ld a, [c]
    db $fd
    ld a, a
    db $f4
    db $f4
    rst $38
    ld [hl], e
    cp $7a
    rst $38
    ld sp, hl
    cp $fd
    rst $38
    cp b
    ld a, a
    ld e, d
    cp a
    cp b
    ld e, a
    cp d
    ld a, a
    or [hl]
    ld a, a
    cp [hl]
    ld a, a
    db $f4
    rra
    adc a
    ld a, a
    adc a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    call $ff3f
    rrca
    di
    dec c
    ld l, [hl]
    sub l
    and l
    rra
    ld [hl], h
    adc a
    ld d, a
    xor a
    rra
    rst $20
    jr c, jr_08a_79f1

    inc l
    db $d3
    rst $08
    inc sp
    scf
    bit 7, h
    add e
    xor $03
    ld [hl], l
    dec bc
    ld a, l
    add e
    ld l, h
    add e
    rst $38
    rst $38
    ld hl, sp+$06
    cp $01
    db $eb
    ld de, $8578
    ld c, e
    add c
    add c
    ld e, e
    db $e4
    ld de, $bf85
    dec d
    cp a
    nop
    ld de, $2200
    nop
    cp d
    dec a
    jp nz, Jump_000_00ef

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
    cp $ff
    ld a, [hl]
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
    cp e
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    xor $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    ei
    rst $20
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    dec e
    rst $38
    ld a, a
    rst $38
    ld d, l
    rst $38
    ld e, a
    rst $38
    rst $18
    ld a, a
    ld e, a
    rst $38
    ld e, a
    rst $38
    dec a
    rst $38
    xor $bf
    sub $bf
    sub [hl]
    rst $38
    add [hl]
    rst $38
    sub [hl]
    rst $38
    sbc e
    rst $38
    ei
    rst $18
    ei
    rst $18
    rst $08
    rst $38
    set 7, a
    db $eb
    rst $38
    set 7, a
    jp hl


    rst $38
    db $fd
    rst $28
    db $e4
    rst $38
    db $e4
    rst $38
    db $fd
    rst $30
    push af
    rst $38
    db $f4
    rst $38
    ld a, [c]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [$ffff]
    ei
    ld a, [$f8ff]
    rst $38
    ld a, [$fdff]
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    cp $7f
    ld a, [hl]
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    cp a
    rst $38
    cp a
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
    rst $18
    rst $38
    rst $18
    ld a, a
    rst $18
    rst $18
    rst $38
    cp a
    rst $28
    adc a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    scf
    rst $28
    rst $20
    rst $38
    ld [hl], a
    ld a, a
    rst $00
    ld a, a
    and a
    ld a, a
    rst $20
    ld a, a
    rst $18
    ld [hl], a
    sbc e
    ld a, a
    or e
    rst $38
    db $e3
    rst $38
    jp Jump_08a_477f


    ld a, a
    db $db
    ld a, a
    sbc c
    rst $38
    sub c
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    db $db
    rst $30
    dec bc
    cp a
    ld [hl+], a
    rst $18
    sbc c
    ld a, a
    ld h, h
    db $db
    ld a, [c]
    ld e, a
    db $e3
    ld e, $e1
    rra
    and b
    ld e, a
    or l
    ld e, a
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    di
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rst $38
    cp $7f
    cp $fe
    rst $38
    cp $ff
    cp $ff
    rst $18
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp e
    ld a, a
    rst $38
    ld a, a
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
    cp $ff
    cp $ff
    ld a, [$fefe]
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
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
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    or h
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, e
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp e
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    xor l
    rst $38
    ld l, [hl]
    rst $38
    cp h
    rst $38
    ld a, [hl]
    rst $38
    ld l, [hl]
    rst $38
    cpl
    rst $38
    ld a, d
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp $ff
    sbc $ff
    db $dd
    rst $38
    ld e, l
    rst $38
    rrca
    rst $38
    xor a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    or a
    rst $38
    ccf
    rst $38
    or a
    rst $38
    or l
    rst $38
    and a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    and $ff
    cp $ff
    or $ff
    cp $f7
    pop de
    rst $38
    push de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    push af
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    db $fc
    rst $38
    or $ff
    ld a, [$fbff]
    rst $38
    ei
    rst $38
    ld a, [$fbff]
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    rst $38
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
    rst $38
    ld a, a
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $30
    cp a
    rst $30
    or e
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    ld a, c
    rst $38
    db $fd
    rst $38
    reti


    rst $38
    db $fd
    rst $38
    ld a, $ff
    ld e, $ff
    ld a, [hl]
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    rst $28
    rst $38
    push af
    rst $38
    push af
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    cp c
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    cp a
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
    cp [hl]
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
    rst $18
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
    ccf
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fbff]
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    add hl, sp
    rst $38
    db $dd
    rst $38
    ld e, l
    rst $38
    ld e, l
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    or a
    rst $38
    or a
    rst $38
    rst $30
    rst $38
    rst $30
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
    jr jr_08a_7d73

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08a_7d83

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08a_7d93

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_08a_7da3

    ld [hl-], a

jr_08a_7d73:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_08a_7db3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_08a_7d83:
    ld b, e
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, h
    ld b, d
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_08a_7d93:
    ld c, l
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

jr_08a_7da3:
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

jr_08a_7db3:
    ld l, l
    ld l, [hl]
    ld l, a
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
    ld l, l
    ld a, e
    ld a, h
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
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    ld l, c
    sub d
    sub e
    sub h
    sub h
    sub l
    sub [hl]
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
    xor a
    or b
    or c
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

    ld l, c
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
    jr jr_08a_7e8a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_08a_7e9a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_08a_7e88

    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_08a_7e88:
    rlca
    rlca

jr_08a_7e8a:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_08a_7e9a:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0401
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld bc, $2707
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld bc, $4707
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld bc, $4707
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld [bc], a
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    rlca
    ld b, $06
    ld b, $07
    rlca
    rlca
    rlca
    ld b, $07
    ld b, $0f
    rrca
    ld c, $0e
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
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
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
    add hl, de
    rst $38
    add hl, de
    rst $38
    ld de, $0bff
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld de, $11ff
    rst $38
    ld de, $1bff
    rst $38
    add hl, hl
    rst $38
    dec hl
    rst $38
    dec hl
    rst $38
    inc sp
    rst $38
    add hl, hl
    rst $38
    inc sp
    rst $38
    ld hl, $33ff
    rst $38
    inc hl
    rst $38
    ld sp, $33ff
    rst $38
    inc hl
    rst $38
    inc sp
    rst $38
    ld hl, $31ff
    rst $38
    inc hl
    rst $38
    ld hl, $23ff
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
