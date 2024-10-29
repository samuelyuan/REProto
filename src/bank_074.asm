SECTION "ROM Bank $074", ROMX[$4000], BANK[$74]

    db $dd
    ld h, e
    ccf
    ld e, a
    ld l, d
    ld [hl], b
    jr nc, jr_074_4010

    ld e, $3c
    cp $7d
    rst $38
    db $fd
    rst $38
    db $fc

jr_074_4010:
    cp $fc
    db $fc
    cp $ef
    cp $ef
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    db $fd
    rst $28
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    ccf
    ld a, a
    rst $38
    rst $08
    ld sp, $0112
    inc h
    inc bc
    db $fc
    daa
    cpl
    inc b
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    cp a
    rst $38
    cp a
    ld a, a
    rra
    ld a, a
    cp $ff
    jp $efff


    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    call c, $dfff
    rst $38
    db $d3
    ei
    ld d, l
    ei
    ld [hl], c
    ld sp, hl

jr_074_4051:
    rst $38
    rst $38
    push af
    rst $38
    push hl
    rst $38
    jp $e1df


    rst $30
    db $ec
    cp $fd
    ld sp, hl
    db $ec
    rst $28
    db $dd
    rst $28
    rst $10
    rst $08
    rst $30
    rst $08
    rst $20
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    and e
    ld a, e
    and c
    ld a, e
    cpl
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    dec h
    ld c, a
    or l
    rst $30
    ldh [$f7], a
    and l

jr_074_4080:
    rst $30
    ld l, a
    rst $38
    cpl

jr_074_4084:
    rst $38
    di
    rst $38
    jr nc, jr_074_4080

    jr nc, jr_074_4051

    adc e
    ld e, [hl]
    sub a
    rst $38
    ld a, [c]
    ld a, [hl]
    rst $38
    db $e4
    rst $38
    rst $08
    rst $38
    ld d, h
    rst $38
    rst $00
    rst $38
    inc sp
    call Call_000_0dbf
    call $fe3c
    ld [de], a
    rra
    dec c
    rst $28
    inc bc
    db $e3
    ld bc, $213d
    rra
    add b
    ld de, $e160

Call_074_40af:
    ld e, $45
    ld bc, $007f
    rst $38
    nop
    ld a, [c]
    nop
    ld a, [hl-]
    nop
    ld b, $00
    ld b, a
    nop
    ld a, $00
    adc d
    rst $38
    cp $ff
    sub $ff
    ld a, [c]
    rst $08
    ld a, [c]
    rst $08
    adc $ff
    rst $28
    rst $38
    rst $30
    rst $38
    cp $f7
    cp a
    and $7f
    add [hl]
    ld a, a
    add a
    rst $18
    cp $79
    and $81
    cp $71
    cp $79
    rst $38
    ld b, l
    add e
    ldh [rP1], a
    ld hl, sp+$00
    push bc
    jr c, jr_074_4084

    ld a, b
    rst $28
    inc b
    add b
    ld b, e
    ld h, e
    nop
    jr nc, jr_074_40f7

    jr z, jr_074_4106

    ld [hl], b

jr_074_40f7:
    ld [$c8e0], sp
    ld l, b
    ret nz

    rst $28
    push bc
    ld b, a
    call nz, $844b
    pop bc
    add b
    ld b, b

Jump_074_4105:
    nop

jr_074_4106:
    nop
    nop
    add c
    nop
    add e
    ld bc, $c1b3
    ld a, [$f5fc]
    ld hl, sp-$4c
    ld l, e
    ld e, [hl]
    jr nz, jr_074_4123

    nop
    nop
    nop
    add b
    nop
    rst $10
    adc h
    rst $18
    rst $38
    db $10
    rst $38
    ld d, a

jr_074_4123:
    rst $28
    adc d
    rst $38
    cp $ff
    sbc [hl]
    db $fd
    db $10
    ldh [$59], a
    ldh [$8c], a
    rst $38
    rst $18
    inc b
    cp a
    rlca
    rst $38
    cp [hl]
    rst $38
    db $fc
    rst $38
    ldh a, [$fd]
    ldh a, [rIE]
    rrca
    cp a
    jp $7fff


    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    di
    rst $20
    rst $08

jr_074_4150:
    rst $08
    cpl
    rst $38
    rst $10
    rst $38
    di
    and $fb
    cp $27
    call c, $9c2f
    ld l, a
    db $fc
    rst $38
    cp $dd
    rst $08
    cp h
    cp l
    add $af
    sbc h
    ld a, a
    adc l
    rst $38
    rra
    rst $38
    rst $18
    rst $30
    rst $28
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    ld l, h
    ld l, [hl]
    reti


    rst $08
    ld a, d
    ld e, a
    or a
    cp a
    sbc $fe
    cp a
    db $fd
    cp $fd
    ld a, [hl]
    db $fd
    cp $ff
    push af
    rst $38
    rst $00
    db $fd
    ld a, [c]
    cp $dd
    rst $38
    dec e
    ld [hl], e
    rst $18
    sub $ff
    ccf
    ldh [$ef], a
    ld hl, sp+$7f
    and b
    ld a, [c]
    adc h
    rst $08
    cp $fb
    jr nz, jr_074_4150

    ld b, a
    ld [hl], a
    cp a
    dec de
    add a
    rst $18
    add d
    db $d3
    adc a
    ld e, l
    cp $ff
    ld a, [hl]
    cp a
    ld a, [hl]
    rst $20
    add b
    rst $38
    ld a, a
    xor $00
    ld l, d
    nop
    ld c, d
    nop
    ld b, a
    nop
    rrca
    nop
    rst $28
    nop
    rst $38
    rst $38
    rst $08
    rst $38
    xor e
    rst $38
    rst $28
    ccf
    rst $30
    rst $18
    rst $18

jr_074_41cb:
    rst $38
    db $fc
    rst $18
    rst $30
    sbc h
    ld a, e
    adc [hl]
    ld [hl], h
    adc a
    ld a, h
    adc a
    ld a, [$60bd]
    rst $38
    sbc l
    ld a, a
    ld l, c
    rra
    ld a, a
    rra
    ret c

    rrca
    sbc e
    ldh [$39], a
    ld b, b
    ld a, [de]
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $08
    xor a
    ld b, a
    rst $00

jr_074_41ef:
    inc bc
    rst $38
    rlca
    ld e, a
    ld a, a
    ld [hl], $61
    ld h, b
    nop
    ld b, b
    nop
    ld [bc], a
    nop

jr_074_41fc:
    db $d3
    add b
    rst $38
    ld e, a
    xor h
    ld a, a
    rst $20
    jr jr_074_41cb

    jr jr_074_41ef

    db $10
    ld l, b
    cp b
    ld a, b
    db $fc
    ld c, [hl]
    db $fc
    cp [hl]
    ld b, h
    ld b, h
    add h
    inc b
    add h
    xor d
    inc e
    rra
    inc a
    inc a
    ld e, $1f
    nop
    add e
    ret nz

    add b
    pop bc
    rst $38
    ld hl, sp-$19
    db $fd
    ld l, c
    or $2f
    ret nc

    sbc b
    rst $28
    pop de
    ccf
    ld a, a
    rst $38
    xor c
    rst $38
    inc bc
    inc bc
    rst $00
    add a
    rst $38

jr_074_4235:
    db $fc
    ld a, h
    jr c, jr_074_4235

    cp c
    sbc h
    jr nc, jr_074_41fc

    ld [hl], b
    rst $38
    db $fd
    db $fc
    ld l, e
    cp $ed
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    rst $00
    rst $08
    cp e
    sub b
    ld l, a
    nop
    rst $38
    dec b
    ld a, [$ff00]
    nop
    rst $38
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    ld l, [hl]
    rra
    ld l, a
    rra
    ld l, a

jr_074_4265:
    rra
    xor $1f
    ld l, [hl]
    rra
    db $ec
    rra
    ld h, b
    rra
    ld h, b
    rra
    sbc a
    ld a, a
    rra
    rst $38
    sbc a
    ld a, a
    rra
    rst $38
    rra
    rst $38
    add hl, de
    rst $38
    db $10
    rst $38
    add b
    ld a, a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    cp $01
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
    jr nz, jr_074_4265

    pop af
    ld hl, sp+$0f
    xor $03
    pop bc
    ld [bc], a
    adc l
    inc bc
    adc $00
    rst $30
    ld [bc], a
    db $fc
    add b
    ccf
    ld [bc], a
    rst $38
    ld h, $ff
    sub d
    rst $38
    ld a, a
    cp $7d
    ldh [$7e], a
    rra
    pop hl
    rst $38
    or l
    rst $38
    ld [hl], b
    rst $38
    and c
    rst $38
    or c
    rst $38
    set 7, a
    rst $18
    rst $28
    rst $38
    sbc $ef
    db $dd
    rst $28
    push af
    rst $28
    rst $10
    rst $28
    add $ff
    db $ed
    cp $9f
    cp $a7
    cp $a5
    cp $3c
    rst $30
    dec b
    rst $38
    add d
    rst $38
    sub l
    ei
    db $ec
    ld a, e
    adc $33
    ret nc

    ld [hl], b
    ld e, a
    jr nc, jr_074_435e

    ccf
    ld a, a
    rst $38
    rst $38
    cp $fd
    cp $7d
    cp $3c
    rst $38
    db $fd
    rst $38
    sbc l
    ld [bc], a
    nop
    add b
    ldh a, [rP1]
    jr nz, jr_074_4312

    cpl
    jr @+$01

    rra
    cp a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld hl, sp-$43
    ld b, b
    ld d, c
    nop
    ld b, e
    nop
    ld [hl], a
    nop
    dec de
    rlca
    dec de
    ccf
    ld a, l
    ld a, [hl]

jr_074_4312:
    ld e, [hl]
    inc c
    ld a, $40
    ld c, a
    ld bc, $0fb4
    add d
    ld a, a
    ei
    ld a, h
    db $f4
    ld hl, sp-$50
    ld a, a
    add hl, sp
    rst $38
    rst $18
    rst $38
    cp a
    ld h, a
    rst $38
    rst $38
    ld l, $ff
    xor a
    ei
    rst $38
    rst $38
    rst $38

jr_074_4331:
    rst $38
    rst $38

jr_074_4333:
    rst $18
    rst $38
    ld e, h
    cp e
    ld d, h
    ld sp, hl
    ld a, [$3fff]
    rst $08
    cp a
    sbc $a7
    rst $30
    ld l, e
    xor a
    ld [hl], e
    rst $38
    rst $30
    rst $38
    rst $28
    db $fc
    db $eb
    rst $38
    ld l, $ff
    ld e, e
    db $fd
    rst $18
    jr nz, jr_074_4331

    jr nz, jr_074_4333

    ld h, h
    sbc e
    ld d, l
    and d
    nop
    rst $38
    nop
    rst $38
    rst $08
    rst $38

jr_074_435e:
    db $f4
    rst $38
    adc e
    db $f4
    rlca
    ld hl, sp+$20
    rst $38
    ld bc, $80fe
    rst $38
    inc bc
    db $fc
    ld [de], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    db $76
    adc c
    db $e3
    inc e
    rst $28
    db $10
    rst $38
    nop
    ei
    inc b
    ld a, a
    add b
    db $d3
    inc l
    add c
    ld a, [hl]
    ld a, l
    add d
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
    ld e, b
    cp a
    ld [hl+], a
    rst $18
    ld h, l
    rst $38
    or a
    ld sp, hl
    di
    adc l
    ei
    cp $fb
    nop
    rst $38
    add hl, hl
    ld e, a
    ld c, c
    ei
    ld h, e
    pop hl
    inc bc
    jp $cb0d


    ld sp, $c93f
    and a
    rst $38
    ld [hl], e
    rst $38
    cp a
    rst $38
    inc sp
    rst $38
    ld l, e
    or a
    rst $10
    ccf
    ld [hl], h
    cp a
    or c
    rst $38
    ld a, $e7
    rst $08
    ld a, a
    ld e, a
    xor a
    cp a
    ld a, a
    ld e, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    ld c, a
    db $fd
    ld h, b
    sbc a
    inc l
    rst $38
    dec a
    rst $38
    inc a
    rst $38
    cp b
    rst $38
    cp e
    rst $38
    dec de
    db $ec
    rst $30
    ld [bc], a
    rst $38
    rlca
    ld a, a
    sbc a
    rst $18
    rst $38
    rst $38
    rrca
    inc bc
    rrca
    add a
    nop
    jp nz, $fc00

    nop
    ld hl, sp+$00
    ld c, [hl]
    inc b
    inc a
    inc bc
    ld [$df07], sp
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    sbc $e3
    call c, RST_00
    nop
    ld bc, $0200
    ld bc, $03e4
    add hl, bc
    rst $30
    rst $38
    ld a, a
    cp a
    rra
    ld e, $0f
    ld c, $07
    ei
    add a
    ld a, a
    add a
    adc a
    nop
    adc c
    nop
    ld c, e
    nop
    set 7, a
    rst $18
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld b, a
    rst $38
    ld l, c
    rst $38
    ld a, [c]
    rst $38
    rst $20
    add $7f
    ld d, $e7
    jp Jump_000_06ff


    rst $38
    rla
    push af
    and $fd
    ei
    rrca
    rra
    rst $38
    ei
    rst $38
    xor $ff
    and $ff
    and $ef
    ld a, [hl]
    xor $73
    ei
    ld a, a
    ei
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld [bc], a

jr_074_4455:
    db $fd
    add d
    ld a, l
    nop
    ei
    ld b, b
    ei
    add $f9
    add $f9
    adc h
    di
    sub h
    db $eb
    sub b
    rst $28
    and h
    db $db
    and h
    db $db
    add b
    rst $38
    xor b
    rst $10
    xor l
    jp nc, $d5aa

    nop
    rst $38
    jr nz, jr_074_4455

    ld bc, $0cfe
    di
    inc b
    ei
    ld [$22f7], sp
    db $dd
    rst $18
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $eb
    ei
    db $eb
    di
    jp $f0ff


    rst $38
    and [hl]
    rst $38
    and d
    rst $38
    ld b, h
    rst $18
    ld h, d
    rst $18
    pop hl
    db $ec
    db $10
    di
    adc h
    db $fc
    ei
    ld a, a
    ld [$008f], sp
    rrca
    add b
    add l
    ldh a, [$f0]
    ld e, $ee
    add c
    rst $20
    ld h, b
    ld d, b
    add b
    db $f4
    add b
    jp nz, $d3c3

    pop hl
    ei
    db $fd
    db $fd
    rst $38
    cp a
    rst $38
    add h
    rst $38
    adc a
    rst $30
    adc l
    rst $38

jr_074_44c4:
    reti


    rst $38
    reti


    rst $38
    call z, $f2ff
    rst $38
    sbc $ff
    ld d, [hl]
    rst $28
    sbc $ef
    ld d, e
    db $ed
    ld d, d
    rst $28
    call nz, $c7ff
    rst $38
    ld l, a
    rst $30
    sbc [hl]
    ld l, a
    and a
    ld a, a
    cp a
    ld h, b
    jr nc, jr_074_44c4

    ldh [rNR41], a
    ld bc, $c580
    add e
    ld [$e7e5], a
    rst $38
    ld e, a
    inc bc
    rrca
    ld bc, $0106
    inc b
    inc bc
    ccf
    ret


    pop de
    ldh [$8c], a
    di
    db $e3
    ldh a, [$f9]
    ldh a, [$1f]
    db $fc
    dec e
    ld c, $2f
    ld e, $df
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
    ccf
    rst $38
    ld l, b
    ldh a, [$f0]
    ldh [$e1], a
    ret nz

    ld sp, hl
    ldh [$b8], a
    ldh a, [$0c]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    push de
    rst $38
    db $db
    rst $38
    ld [bc], a
    rst $38
    cp $4f
    inc a
    nop
    rst $38
    pop hl
    rst $38
    rst $28
    rst $38
    add [hl]
    rst $38
    sbc [hl]
    sbc e
    rst $08
    jp nz, $ff84

    add e

jr_074_4540:
    db $ed
    jr jr_074_4540

    ld a, $ff
    ld l, h
    xor $4f
    db $ed
    ld d, d
    rst $38
    ld d, d
    rst $38
    ld d, e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    db $db
    rst $18
    rst $28
    rst $30
    sbc a
    rst $30
    xor $f3
    xor $d6
    xor e
    or a
    db $db
    rst $38
    ccf
    ld a, a
    cp a
    rst $38
    ccf
    rst $38
    ld h, [hl]
    rst $30
    ld [$fcff], a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    ei
    ei
    push hl
    ld sp, hl
    rst $38
    rst $38
    db $dd
    rst $38
    rst $38
    rst $18
    xor a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $30
    sbc e
    sbc [hl]
    or a
    cp a
    sub h
    adc l
    ld a, [c]
    ld a, a
    ld a, $ff
    rst $38
    ccf
    push hl
    db $f4
    dec bc
    ld e, d
    rst $38
    rst $08
    rst $38
    dec bc
    db $fc
    rra
    rst $28
    xor e
    dec e
    ld l, a
    ld bc, $e11f
    pop hl
    ld e, $ff
    ld bc, $01ff
    ld a, a
    ld d, c
    rla
    db $e3
    ldh [$3f], a
    xor $97
    sbc [hl]
    inc b
    cp $04
    ld l, a
    rst $38
    or h
    rst $38
    rst $18
    jr jr_074_463c

    adc e
    sub a
    db $ed
    xor a
    di
    rst $30
    sbc a
    ld d, c
    rst $38
    or $b9
    ld d, h
    cp e
    ld d, l
    cp a
    ld a, e
    sub a
    or a
    ld a, [hl]
    ld [hl], d
    db $fd
    ld e, h
    rst $38
    sbc a
    ld h, a
    cp a
    db $76
    ld e, h
    cp $be
    xor $a0
    jp $c365


    push bc
    inc bc
    rlca
    ld bc, $1b35
    dec l
    ld hl, sp-$04
    ret nz

    ld h, $84
    cp a
    adc a
    rst $08
    sbc a
    rst $18
    xor $b1
    adc $8c
    ret nz

    call nz, $fc00
    nop
    reti


    ccf
    db $d3
    ld l, $84
    nop
    ldh [rP1], a
    jr jr_074_460b

    add $00
    jr nc, @-$1e

    db $fc
    ld hl, sp-$02

jr_074_460b:
    cp $ff
    cp $fb
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    db $d3
    ccf
    xor a
    ld a, a
    dec sp
    rst $00
    add [hl]
    ld h, c
    ld e, e
    dec a
    ld bc, $fd00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    db $fc
    ld [hl], b
    xor a
    db $e3
    db $fc
    ld [hl], h
    ld hl, sp-$26
    rst $38
    ccf
    dec hl
    sbc h
    nop
    ld a, h
    ld d, b
    ld [hl+], a
    ld b, l
    ld sp, hl
    inc b
    jp hl


    add d

jr_074_463c:
    ccf
    rra
    ccf
    push hl
    rst $38
    db $10
    rst $38
    jp hl


    rst $38
    add e

jr_074_4646:
    cp [hl]
    rst $08
    rst $18
    add b
    ld a, e
    pop de
    ld a, c
    adc e
    ld sp, hl
    xor a
    rst $38
    db $fd
    rst $38
    cp l
    rst $18
    cp c
    db $db
    cp c
    reti


    sbc e
    rst $38
    set 7, a
    rst $18
    ld sp, hl
    db $db
    ei
    sbc c
    ei
    reti


    di
    jp hl


    ei
    jp hl


    rst $38
    ld sp, hl
    cp a
    ret z

    db $fd
    db $10
    ld hl, sp-$6e
    ld hl, sp-$0a
    sbc $a1
    rst $38
    adc b
    rst $38
    cp a
    cp a
    jp c, $98ff

    ei
    ld d, b
    ld [hl], e
    ld h, d
    rst $30
    ld l, a
    ld a, a
    inc bc
    rla

jr_074_4685:
    set 1, a
    and e
    db $e3
    ld d, [hl]
    cp $f6
    cp $ef
    rst $38
    db $fc
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    sbc c
    ld a, a
    xor h
    rst $38
    db $f4
    ei
    and $f9
    rst $30
    cp $fd
    cp $ff
    ret nz

    db $fd
    ret nz

    cp a
    push bc
    rst $00
    cp b
    ld hl, sp+$47
    db $fc
    inc d
    ld hl, sp+$21
    ld bc, $f4ff
    inc bc
    add [hl]
    ld b, c
    ld a, e
    ld b, $df
    db $fc
    inc a
    db $d3
    adc a
    rlca
    xor a
    rra
    xor $1f
    dec c
    jp nz, $847f

    jr jr_074_4646

    ld hl, sp-$80
    ld [$2c40], a
    rst $00
    and c
    rst $00
    ld e, [hl]
    add c
    ld b, l
    jp $f3dd


    ld d, a
    ldh [rSB], a
    nop
    inc bc
    nop
    ld a, d
    dec b
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld d, e
    db $fc
    ld a, [hl]
    cpl
    nop
    rlca
    ld [bc], a
    dec b
    jr jr_074_46f5

    ld hl, sp-$79
    and a
    ld b, b
    ld l, e
    jr nc, jr_074_4685

jr_074_46f5:
    inc c
    add hl, bc
    ld b, $07
    inc bc
    rlca
    inc bc
    adc l
    ld [bc], a
    ld d, $08
    call nz, $d818

jr_074_4703:
    ldh [$df], a
    jr nc, jr_074_4703

    nop
    sub b
    nop
    nop
    nop
    sbc [hl]
    nop
    ld b, [hl]
    cp e
    ld sp, $00c0
    add b
    add b
    nop
    sbc b
    nop
    add d
    nop
    nop
    add b
    ret nz

    add b
    ld c, a
    ld hl, sp-$75
    db $fc
    ld b, [hl]
    ld sp, hl
    db $db
    rst $38
    xor a
    ld a, a
    ld a, [bc]
    rst $38
    xor l
    ld e, a
    sub l
    ld l, a
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    dec sp
    ld hl, $e073
    add b
    rst $38
    sbc a
    rst $38
    ld l, h
    rst $38
    ld d, $ff
    dec sp
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    or a
    ei
    add l
    pop hl
    cp b
    ld hl, sp-$40
    rst $38
    add e
    cp a
    rst $08
    rst $38
    rst $38
    sbc a
    rst $08
    adc a
    ld e, a
    rst $18
    rrca
    rst $38
    rst $08
    ld sp, hl
    sbc $e9
    sbc l
    adc e
    reti


    sbc e
    call nz, $c681
    pop bc
    add l
    db $dd
    xor e
    sbc c
    inc c
    rst $18
    inc c
    rst $38

jr_074_476f:
    jr c, jr_074_476f

    dec a
    cp $f4
    db $fd
    ret c

    db $fd
    ld c, b
    db $dd
    ld e, c
    sbc e
    ld sp, $82b3
    xor $40
    rst $28
    call c, $fefe
    rst $38
    cp a
    ccf
    rst $38
    ld a, a
    ld a, d
    ld a, e
    ld a, d
    ei
    ld a, b
    cp $fa
    ld e, [hl]
    rst $38
    ld a, l
    adc $6f
    call c, $dc6f
    ld d, a
    ld hl, sp-$4a
    ld sp, hl
    sbc a
    db $fd
    cp a
    rst $38
    rst $38
    rra

jr_074_47a2:
    cp a
    dec bc
    rst $18
    ld [$0ce3], sp
    rlca
    ei
    ld c, a
    inc sp
    ccf
    db $d3
    rst $38
    rra
    sub $03

jr_074_47b2:
    db $db
    ld h, $fa
    ld b, $c6
    inc a
    rst $38
    dec b
    rst $10
    rst $38
    rst $38
    db $fc
    rst $18
    ld a, $2f
    jr jr_074_47a2

    add hl, de
    ld a, b
    db $10
    rst $38
    db $10
    sub $7c
    ld a, [c]
    cp $a2
    rst $38

jr_074_47ce:
    cp a
    pop af
    jr c, jr_074_47b2

    sub h
    ld h, b
    rst $38
    nop
    ei
    nop
    ldh [rP1], a
    scf
    add sp, -$21
    ldh [$e0], a
    ldh a, [$f1]
    ld hl, sp-$66
    rst $38
    xor a
    ld e, $fb
    nop
    ret c

    db $10
    ld l, d
    ret nc

    sbc b
    db $fc
    call nc, $81e0
    ld [bc], a
    pop hl
    ld [bc], a
    or a
    ld b, d
    push af
    ld b, $7a
    rst $30
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
    rra
    ld b, a
    rrca
    rlca
    inc bc
    dec bc
    ld bc, $0f11
    adc [hl]
    ld de, $00f0
    jr c, jr_074_47ce

    db $76
    ret nz

    rst $28
    ret nz

    ld a, a
    ldh [$71], a
    ld a, [hl]
    ld [hl], d
    ccf
    ccf
    ccf
    ld a, $1f
    sbc l
    rra
    sbc $2d
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
    jr jr_074_4853

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_074_4863

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_074_4873

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_074_4883

    ld [hl-], a

jr_074_4853:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_074_4893

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_074_4863:
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

jr_074_4873:
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

jr_074_4883:
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

jr_074_4893:
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
    jr jr_074_4953

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_074_4963

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_074_4973

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_074_4953:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0101

jr_074_4963:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_074_4973:
    ld bc, $0202
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
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rst $38
    rst $38
    sub $ff
    ld a, c
    and b
    rlca
    db $fc
    rlca
    cp $a5
    ld e, [hl]
    dec sp
    call nz, $e917
    add b
    rst $38
    add e
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    ccf
    di
    ccf
    pop af
    rra
    ei
    rra
    ld a, h
    adc a
    db $fc
    ccf
    cp $3d
    pop af
    ld e, $4c
    cp a
    rst $28
    ld sp, hl
    db $fd
    ld l, c
    ei
    ld [hl], c
    ld [hl], e
    ld [hl], c
    ld [hl], e
    db $fc
    dec sp
    or $37
    inc sp
    add hl, hl
    dec [hl]
    ld [$4444], sp
    add b
    add [hl]
    sbc h
    xor h
    inc b
    cp h
    ld [de], a
    cp a
    ld [hl], b
    rst $38
    ldh a, [$7f]
    sub d
    rra
    ret nc

    rrca
    ld a, [de]
    rrca
    rlca
    rra
    inc b
    ccf
    inc b
    ld a, a
    inc h
    cp a
    ld c, d
    adc a
    ld a, a
    rst $08
    jp $c0b7


    sbc a
    add b
    add a
    adc h
    ld b, l
    add d
    jr nz, jr_074_4b0c

    ld e, h
    nop

jr_074_4b0c:
    add a
    ld [$0183], sp
    rst $28
    sbc a
    ld [$fe17], a
    scf
    or d
    ld a, a
    ld a, [c]
    cp a
    db $d3
    ccf
    inc sp
    rst $38
    db $ed
    ei
    ld e, [hl]
    db $e3
    ld [hl-], a
    rst $08
    or c
    rst $18
    and e
    call c, $dc63
    rst $20
    ld hl, sp-$19
    ld sp, hl
    ld a, [c]
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $fb
    db $fc
    rst $30
    db $fc
    rst $20
    ld hl, sp-$12
    pop af
    rst $28
    pop af
    cp $e1
    sbc $f1
    db $fc
    jp $ef98


    ld hl, sp-$09
    ld hl, sp-$31
    ld d, e
    db $fc
    call $f377
    ld l, l
    xor e
    ld e, h
    inc bc
    db $fc
    ld h, b
    rst $38
    ld hl, sp-$01
    ld sp, $b8ff
    ld a, a
    or d
    ld a, l
    ld a, [hl]
    rst $38
    cp $ff
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$fefd]
    db $fc
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    push hl
    ei
    db $ed
    di
    db $dd
    db $e3
    rst $18
    db $e3
    db $db
    rst $20
    rst $08
    di
    db $e3
    rst $38
    rst $38
    ld a, [c]
    rst $18
    ld a, [c]
    db $ed
    jp nc, $f3dd

    rst $18
    db $eb
    di
    cp $d7
    db $fc
    rst $38
    ret c

    cp a
    ret c

    cp e
    ret z

    ei
    adc b
    rst $38
    sbc b
    ld a, a
    sbc b
    rst $38
    rra
    ei
    rst $38
    rst $08
    ld a, a
    rst $38
    rrca
    ld a, a
    rlca
    dec sp
    rlca
    xor a
    inc bc
    db $fd
    inc bc
    rst $30
    ld bc, $80ff
    sbc l
    ld a, [c]
    di
    rst $38
    adc a
    ldh a, [$8f]
    ld hl, sp-$59
    call c, $c5ba
    rst $38
    ret nz

    rst $18
    ldh [rIE], a
    ldh [$7f], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp+$7f
    db $fc
    ld a, [hl]
    rst $38
    rst $38
    cp $ff
    cp b
    xor a
    ld hl, sp-$33
    ei
    xor [hl]
    pop af
    ld a, a
    ld hl, sp+$3f
    db $fc
    sbc [hl]
    db $fd
    ld c, [hl]
    ld sp, hl
    ld a, b
    ld a, b
    cp h
    inc a
    ld a, $5e
    inc a
    inc l
    ld c, $0c
    add a
    inc b
    pop bc
    nop
    pop af
    ld b, b
    ld sp, hl
    ldh a, [$f9]
    ld l, c
    ld sp, hl
    add hl, sp
    add hl, sp
    ld a, b
    dec c
    adc l
    adc h
    ld b, h
    db $e4
    inc b
    rst $20
    add c
    ld c, e
    rst $30
    add l
    ld a, e
    jp Jump_074_713f


    sbc a
    ld e, c
    rst $20
    rrca
    rst $38
    sbc a
    rst $38
    or a
    rst $08
    inc a
    rst $00
    ld a, d
    add a
    ld a, a
    add e
    sbc a
    ld [c], a
    xor h
    di
    sub b
    rst $38
    ld d, b
    rst $38
    add c
    rst $38
    ld l, b
    sbc a
    ld l, l
    cp [hl]
    rst $38
    inc e
    db $db
    ld a, $bf
    ld a, [hl]
    ld e, a
    db $f4
    rst $18
    or b
    rst $38
    nop
    ld a, b
    add a
    ld a, a
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
    ld a, e
    rst $38
    ld [hl], a
    cp $7e
    rst $38
    ld b, e
    rst $38
    db $fd
    db $e3
    db $fd
    db $e3
    ei
    db $e4
    ei
    push bc
    db $fc
    rst $08
    push hl
    cp $cd
    cp $df
    rst $20
    dec bc
    rst $30
    db $eb
    rst $38
    cp [hl]
    rst $08
    db $fd
    sbc a
    ld a, a
    rst $18
    call c, $be7f
    ld c, c
    ld [$7e7f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld a, a
    ret nz

    ld l, e
    db $f4
    dec sp
    call nz, Call_074_619e
    xor $f1
    rst $38
    rst $38
    ld c, a
    rst $38
    rst $28
    rst $18
    ld a, [c]
    rst $08
    push bc
    ld a, a
    di
    ld c, $f9
    ld b, $bf
    rst $38
    sbc a
    ld a, a
    or $3f
    cp e
    ld a, a
    rst $38
    add hl, hl
    db $fd
    nop
    rst $30
    inc c
    ld hl, sp+$07
    cp $0b
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    ld hl, sp-$01
    db $fc
    rst $18
    dec a
    rst $38
    ld a, $cf
    cp [hl]
    ld sp, hl
    ld a, a
    add [hl]
    ld a, e
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp a
    ld [bc], a
    rst $30
    cp a
    cp $05
    rst $38
    ld bc, $80ff
    ld a, [$feff]
    rst $38
    cp $ff
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    or a
    rst $38
    db $eb
    ld e, $dc
    cpl
    db $dd
    ld [hl], d
    xor $31
    or $79
    rst $30
    ld hl, sp-$2d
    cp $e0
    rst $38
    rst $28
    di
    rst $30
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
    cp $8f
    cp $e1
    sbc [hl]
    cp c
    rst $00
    db $ec
    db $e3
    db $fc
    db $e3
    rst $30
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp+$5c
    rst $38
    rst $38
    rra
    rst $30
    rrca
    pop af
    rrca
    db $76
    adc c
    ld a, a
    sbc b
    ld [hl], a
    sbc h
    db $f4
    rra
    jp nc, $d73f

    ccf
    rst $28
    ccf
    xor a
    ld a, a
    rst $38
    rst $38
    ld l, a
    rst $38
    ld a, a
    add a
    ld a, [hl]
    add c
    rst $28
    sub e
    ld l, h
    db $db
    ld a, $c3
    dec de
    xor $7f
    cp $6f
    cp $1b
    and $bb
    ld c, [hl]
    xor a
    ld [hl], b
    rst $30
    nop
    rst $38
    nop
    rst $10
    ld sp, hl
    rst $10
    ei

jr_074_4d4c:
    pop de
    rst $28
    ld sp, hl
    xor $3f
    ldh [$7f], a
    ldh [$be], a
    pop hl
    rst $18
    di
    rst $38
    ld sp, $f07d
    sbc h
    ldh [$bf], a
    ldh a, [rNR34]
    ld sp, hl
    call $97b7
    rst $38
    dec e
    di
    ld [hl-], a
    di
    jr nc, jr_074_4d4c

    ld [hl], b
    ldh [$78], a
    ldh [$f8], a
    ldh a, [rBCPS]
    ldh a, [$e8]
    ldh a, [$e8]
    or b
    ld hl, sp+$20
    rst $30
    rst $38
    adc $ff
    cp $ff
    cp a
    rst $38
    rst $30
    ccf
    cp a
    ld l, a
    xor a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $18
    cp [hl]
    rst $38
    rst $08
    rst $38
    sbc [hl]
    rst $38
    add c
    ld [bc], a
    add e
    ld bc, $0383
    add e
    inc bc
    ld d, l
    add e
    ld d, [hl]
    add e
    push de
    ld b, $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $bf
    db $fd
    db $fd
    rst $38
    cp $ff
    db $e3
    rst $38
    ld a, $03
    ld [hl], c
    rrca
    rst $28
    rra
    jp $8b3f


    ld a, a
    jp $eebf


    sbc c
    db $76
    adc c
    rst $38
    ld b, [hl]
    ld a, [hl]
    jp $f96f


    cp a
    jp $e0bf


    or a
    rst $28
    ld e, d
    push hl
    ld l, h
    rst $30
    dec l
    di
    ld a, [hl]
    pop af
    rst $18
    ld hl, sp-$37
    cp $be
    rst $38
    ei
    rst $18
    rst $38
    ld bc, $10ef
    ccf
    jp $ffee


    db $d3
    rst $38
    ld e, [hl]
    ei
    cp $23
    rst $38
    ld d, b
    ld a, a
    adc h
    or a
    call z, $867f
    rst $38
    push bc
    rst $38
    and [hl]
    ld d, l
    rst $28
    xor c
    ld a, a
    db $fc
    ccf
    ld l, a
    inc e
    ld [hl], a
    inc c
    reti


    xor [hl]
    ld b, [hl]
    rst $38
    sbc a
    ld a, a
    ld b, a
    ld hl, sp-$03
    ld c, b
    ld e, b
    cp h
    ld e, d
    cp h
    res 7, h
    or $af
    sub a
    rst $28
    scf
    rst $38
    rst $28
    ccf
    ld a, a
    ccf
    ld [hl], $0c
    or $0c
    ld a, $c4
    and $80
    and h
    nop
    cp a
    inc b
    ld hl, sp+$10
    rst $38
    db $10
    rst $30
    cp $ba
    ld [hl], c
    or e
    ld h, b
    or b
    ld h, b
    cp b
    ld h, b
    cp b
    ld h, b
    cp b
    ldh [$e8], a
    db $10
    cp b
    nop
    cp h
    nop
    jp c, $de3f

jr_074_4e47:
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    rst $28
    ccf
    ld a, e
    ccf

jr_074_4e50:
    rrca

jr_074_4e51:
    ld a, a
    rst $18

jr_074_4e53:
    ld a, a
    ld l, a
    rst $38
    ld c, [hl]
    rst $38
    rlca
    add d
    ld [bc], a
    add c
    nop
    add e
    ld b, e
    add e
    db $db
    add e
    ld a, l
    add e
    ld hl, sp+$07
    jr nz, jr_074_4e47

    rst $20
    jr jr_074_4e51

    add hl, de
    ld l, c
    ld d, $2f
    jr jr_074_4eb5

    jr c, jr_074_4e53

    jr jr_074_4ed5

    jr jr_074_4e83

    db $10
    ld a, [de]
    inc b
    dec b
    ld [bc], a
    adc d
    ld bc, $8fdb
    ld sp, hl
    rst $38
    di

jr_074_4e83:
    jp hl


    db $eb
    ldh a, [$91]
    ldh [$c1], a
    ldh a, [rNR10]
    ldh [rSVBK], a
    add b
    jr nc, jr_074_4e50

    ld [hl], b
    add b
    ld a, b
    add b
    add sp, -$80
    dec h
    add b
    ld [hl], $80
    or d
    nop
    ld a, [hl+]
    db $10
    ld a, h
    nop
    cp a
    pop de
    cp h
    jp $c7b8


    xor h
    rst $00
    xor $67
    db $ec
    ld h, a
    call z, $fee3
    pop hl
    db $fd

jr_074_4eb1:
    db $eb
    rst $18
    pop af
    xor c

jr_074_4eb5:
    ld [hl], a
    cp b
    ld [hl], a
    jr c, jr_074_4eb1

    ld hl, sp-$19
    db $dd
    rst $20
    call $dfff
    ei
    ld h, d
    db $fd
    jr nc, @+$01

    or [hl]
    ld a, e
    push af
    ei
    and [hl]
    ld sp, hl
    ld [hl], e
    db $fc
    ld sp, hl
    cp $d9
    ld h, $ce
    or c
    adc a

jr_074_4ed5:
    pop af
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ei
    rrca
    rst $30
    sbc a
    rst $38

jr_074_4ee1:
    adc a
    dec sp
    call nz, $e23f
    push hl
    cp $be
    rst $38
    rst $18
    rst $38
    ld c, a
    rst $38
    ccf
    rst $08
    ld a, [$7e27]
    rst $38
    ld sp, hl
    ccf
    cp $37
    db $fc
    inc bc
    ei
    sbc a
    ld a, a
    rst $38
    inc l
    rst $38
    or e
    db $fd
    ld b, $02
    nop
    inc bc
    adc [hl]
    ld bc, $ffd9
    rst $38
    rst $38
    ld a, $ff
    ld h, a
    rra
    ld b, $03
    ccf
    ld b, $6f
    sbc [hl]
    ld a, l
    cp $fe
    rst $38
    rst $38
    rst $38
    ld l, [hl]
    rst $38
    ld hl, sp+$3f
    dec sp
    rrca
    xor $1c
    sub $0c
    ld a, d
    inc b
    inc sp
    ld a, $f5
    ld a, $7f
    nop
    and b
    nop
    rst $38
    nop
    ld a, [$7c85]
    inc bc
    inc a
    ld b, e
    ld a, [$6f05]
    db $10
    sbc c
    ld [hl], b
    reti


    jr nc, jr_074_4ee1

    jr jr_074_4f7f

    nop
    dec bc
    inc b
    db $dd
    ld [bc], a
    call $ffff
    ei
    ld b, e
    pop af
    and d
    pop de
    ld sp, $71c0
    add b
    ld [hl], b
    add b
    ld [hl], d
    add b
    ld a, d
    add b
    ld l, c
    add b
    dec a
    add c
    ld d, $a0
    cp d
    nop
    ccf
    nop
    reti


    and [hl]
    add a
    ld a, h
    ld c, [hl]
    ldh a, [$8c]
    ldh a, [$6d]
    sub b
    ld [$fa31], a
    ld hl, $20d7
    ld d, a
    jr nz, jr_074_4fea

    nop
    ld [hl], b
    inc bc
    inc sp
    nop
    dec d
    ld [bc], a
    ld a, a

jr_074_4f7f:
    adc b
    rst $30
    ld hl, sp-$09
    ld hl, sp-$0a
    db $fc
    cp d
    db $f4
    or b
    ld [hl], b
    ldh a, [rSVBK]
    ccf
    ld a, h
    ld a, l
    ld a, a
    ld l, a
    ld [hl], b
    sub a
    ld a, b
    db $fd
    ld a, [hl]
    xor e
    rst $38
    xor a
    ld a, a
    db $76
    ccf
    ld a, a
    ccf
    ld e, a
    ld hl, $33dd
    rst $18
    inc sp
    db $ed
    inc de
    ld a, [hl]
    sbc e
    db $76
    sbc e
    ld [hl], c
    adc a
    ccf
    rst $20
    ld e, e
    rst $20
    ld a, [hl]
    rst $20
    sbc $e7
    ld e, $ef
    ld a, [hl]
    xor a
    rst $18
    or a
    ld l, a
    sub a
    ld l, a
    sub a
    xor a
    rst $10
    cp a
    rst $10
    ld [hl], a
    rst $08
    ld d, a
    rst $28
    rrca
    rst $38
    adc e
    rst $38
    ld c, b
    cp a
    ld l, d
    db $dd
    rst $28
    call c, $ec5f
    rst $38
    cp $1d
    cp $7d
    cp [hl]
    ld a, a
    sbc [hl]
    db $76
    sbc a
    ld [hl], d
    sbc a
    rst $38
    sub e
    xor a
    pop de
    sbc a
    pop af
    sbc [hl]
    ld l, c
    or $19
    db $e3
    cp [hl]

jr_074_4fea:
    db $fd
    cp $fd
    cp $fd
    rst $38
    db $fd
    rst $38
    push af
    cp $4c
    rst $38
    ld a, l
    add [hl]
    ld a, a
    add a
    pop hl
    rst $38
    jp nz, $dbfc

    db $fc
    db $fd
    jp nz, Jump_000_030c

    dec b
    ld [bc], a
    ld sp, hl
    add [hl]
    ld a, e
    call nz, Call_000_00f9
    db $fc
    ld [bc], a
    cp [hl]
    nop
    and b
    ld b, b
    cp b
    nop
    ld [hl-], a
    inc e
    dec c
    ld [bc], a
    ld c, a
    add b
    ret nz

    add b
    call nz, Call_074_6280
    sbc l
    adc a
    ld b, $87
    inc b
    ld b, $04
    rlca
    inc b
    halt
    rst $38
    nop
    cp c
    ld c, [hl]
    ld c, [hl]
    nop
    db $fc
    ld [$20d9], sp
    ld hl, sp+$00
    xor h
    ld d, b
    add [hl]
    ld [hl], d
    db $d3
    ld h, h
    dec sp
    call nz, Call_074_40af
    rst $28
    nop
    ldh [rTAC], a
    ld l, a
    nop
    ld a, a
    nop
    cpl
    ldh a, [$ef]
    ldh a, [$f0]
    add sp, -$04
    ldh [$a0], a
    ldh [$79], a
    ldh [$f7], a
    ld a, a
    cp $61
    rst $20
    ld a, c
    dec a
    rst $38
    rst $08
    rst $38
    add l
    ld a, a
    cp a
    ld a, a
    cp a
    ld b, c
    ret z

    nop
    di
    adc l
    rst $28
    ld de, $102f
    dec d
    inc bc
    inc de
    nop
    db $fc
    nop
    pop bc
    ld a, $c4
    dec sp
    ld a, a
    add b
    ld [hl], b
    add b
    db $10
    ldh [$df], a
    inc hl
    db $f4
    rra
    di
    inc c
    rst $38
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    rra
    inc bc
    rst $38
    inc e
    ldh [$bc], a
    ret z

    inc e
    add sp, $58
    ret z

    ld hl, sp-$08
    ld hl, sp-$68
    ld hl, sp-$08
    ld hl, sp-$05
    ldh a, [$3e]
    pop af
    ld a, [hl]
    cp a
    xor l
    rst $38
    rst $08
    rst $38
    rst $18
    cp a
    rst $38
    ccf
    rst $08
    ccf
    cp d
    ld c, a
    rst $38
    cpl
    ld e, e
    rst $28
    ld a, a
    sub a
    ld a, [$eb07]
    ld b, a
    db $db
    ld h, a
    db $fd
    rst $28
    ld a, [$fccd]
    rst $08
    ld a, [$fdcd]
    rst $08
    adc a
    rst $38
    db $eb
    cp a
    cp a
    sbc a
    ld a, e
    sbc a
    ld h, [hl]
    sbc a
    rst $18
    xor b
    ccf
    add sp, $0d
    cp $8f
    ld a, b
    sbc e
    ld a, h

jr_074_50d8:
    rst $10
    ccf
    rst $30
    rra
    cp $3f
    rst $18
    rst $38
    rra
    db $fc
    rst $08
    ld hl, sp-$31
    ldh a, [rPCM34]
    add sp, $3b
    db $fd
    ld a, $69
    and h
    daa
    and c
    nop
    or a
    jr nz, jr_074_50d8

    inc bc
    add e
    ld b, b
    pop bc
    ld b, b
    adc a
    ld b, e
    rst $38
    ld h, c
    rst $28
    ld a, a
    ei
    push bc
    call nz, Call_000_0701
    nop
    ld c, l
    inc b
    rst $00
    add h
    ld e, d
    db $e4
    sbc l
    inc b
    dec e
    nop
    dec b
    inc c
    rra
    ld c, $1f
    ld h, a
    rst $18
    rlca
    rlca
    rlca
    rrca
    rlca
    rrca
    rrca
    ld a, [hl]
    rrca
    ld l, [hl]
    rra
    dec e
    ld c, $84
    rra
    adc d
    inc e
    ld a, [hl-]
    inc c
    inc a
    inc a
    cpl
    inc e
    ld [$1a3c], a
    inc b
    dec b
    ld c, $f3
    inc c
    inc bc
    inc b
    ld b, c
    ld b, $49
    ld b, $ec
    nop
    adc a
    ld [hl], b
    add e
    ld a, h
    db $fc
    nop
    ld b, b
    nop
    ld d, a
    add b
    add c
    ld a, [hl]
    adc a
    ld a, b
    db $ec
    db $10
    ld [$0000], sp
    nop
    rra
    nop
    di
    inc e
    ret z

    ldh a, [$d8]
    jr nc, jr_074_5189

    ldh [$b0], a
    ldh [$30], a
    ldh [$72], a
    ldh [$bf], a
    ldh [$99], a
    and $3e
    nop
    cp b
    ld b, b
    rst $30
    ld bc, $17e8
    inc bc
    cp $7f
    rlca
    inc de
    ld bc, $01ff
    pop af
    inc bc
    rlca
    inc bc
    rla
    dec bc
    ld a, l
    inc sp
    db $e3
    add e
    pop bc
    inc bc
    dec b
    inc bc
    inc de

jr_074_5183:
    rrca
    daa
    rra
    cpl
    rra
    cpl

jr_074_5189:
    rra
    db $ed
    ccf
    swap a
    dec bc
    inc d
    ld c, $07
    ld [bc], a
    rlca
    nop
    rlca
    rrca
    inc b
    jr jr_074_51a8

    add hl, sp
    ld c, $cf
    dec e
    rst $38
    sbc a
    rst $38
    dec b
    ldh a, [$1f]
    xor $ff
    rst $38
    rst $38

jr_074_51a8:
    ei
    db $fd
    rst $38
    db $fc
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    cp $fe
    rst $38
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld a, a
    add b
    rrca
    ld sp, hl
    ei
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld e, [hl]
    rst $38
    rst $38
    inc a
    sbc $79
    rst $08
    ld a, c
    rst $30

jr_074_51d1:
    ld [$38ef], sp
    cp a
    ldh a, [$b5]
    rst $38
    cp a
    di
    scf
    ldh [$3b], a
    ldh [$9f], a
    ldh a, [$af]
    ld sp, hl
    rst $28
    jr @-$07

    jr jr_074_5183

    ld a, a
    rst $18
    rst $38
    cp a
    rst $18
    ld a, a
    sbc a
    cp a
    rra
    ld [hl], a
    rst $38
    or a
    rst $38
    ld h, c
    ld hl, $00e1
    db $fc
    pop bc
    cp a
    pop bc
    ld d, [hl]
    pop hl
    cp a
    ret nz

    ld a, a
    adc b
    ld h, e
    sbc h
    add hl, sp
    sub $39
    jp $c323


    dec b
    jp Jump_000_00cf


    adc b
    db $10
    call c, $e820
    rst $38
    db $db
    rst $20
    dec h
    jp $8344


    add a
    ld bc, $008f
    ld l, [hl]
    ld bc, $0196
    xor c
    inc bc
    ld hl, sp+$03
    xor e
    ld de, $0178
    cp $01
    ld [hl], a
    jr jr_074_528e

    dec a
    inc de
    nop
    rlca
    nop
    ld a, [bc]
    inc b
    rst $20
    jr jr_074_51d1

    ld a, a
    ld a, a
    rrca
    rst $38
    rrca
    rst $18
    rrca
    dec l
    ld e, $b8
    ld c, h
    ld a, [$9f0c]
    rrca
    rra
    rrca
    ld l, a
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    ccf
    rst $38
    ld [$bcff], sp
    ld b, b
    ld [hl], c
    ld e, $93
    inc e
    dec c

jr_074_525b:
    db $10
    add hl, bc
    jr nc, @-$17

    jr c, jr_074_525b

    inc [hl]
    or a
    ld a, [hl]
    ld [hl], h
    nop
    push af
    ld b, b
    ld a, a
    add c
    ld h, e
    cp a
    ld e, a
    db $10

jr_074_526e:
    pop af
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    di
    db $fc
    sbc b
    ldh [$c0], a
    nop
    add b
    nop
    rst $38
    ret nz

    jp hl


    or $b3
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop de
    cp $bf
    rst $38
    rst $38
    ld b, a

jr_074_528e:
    ld bc, $0300
    pop bc
    di
    ld bc, $0133
    ld sp, $6222
    nop
    add d
    nop
    adc l
    ld b, $61
    add b
    ld [hl], a
    sbc b
    ld e, l
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sub l
    ei
    sub $f9
    cp h
    rst $38
    ei
    rst $38
    sbc $ff
    rst $38

jr_074_52b3:
    dec [hl]
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, [$f8ff]

jr_074_52bd:
    rst $38
    sbc l
    ld a, a
    ccf
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    db $fd
    cp $3f
    rst $38
    or a
    ld a, h
    rst $38
    jr nc, jr_074_526e

    di
    di
    db $fd
    adc b
    rst $38
    xor a
    ld b, b
    ld [hl], $dd
    inc b
    rst $38

jr_074_52da:
    nop
    rst $38
    jr nz, jr_074_52bd

    db $dd
    inc sp
    inc [hl]
    db $e3
    xor $31
    rst $38
    jr jr_074_52da

    adc h
    push af
    rst $38
    ei
    rst $38
    call nc, $90e3
    db $e3
    jr nz, jr_074_52b3

    or c
    ret nz

    ld a, d
    add b
    reti


    add b
    rst $10
    add b
    ld a, $80
    ld e, h
    add b
    jp hl


    rla
    xor c
    ld de, $01d0
    pop bc
    nop
    ld b, h
    add c
    and $81
    ld b, c
    ld b, $4a
    inc b
    ld h, a
    inc e
    cp [hl]
    ld a, l
    cp $fd
    rst $38
    db $fc
    ld hl, sp-$04
    rst $10
    db $fc
    db $e4
    rst $38
    rst $20
    db $fd
    ld h, [hl]
    rst $38
    push bc
    inc bc
    add a
    rlca
    add [hl]
    add c
    xor a
    add b
    xor d
    add a
    ld a, e
    add a
    sbc e
    rst $30
    ld a, a
    db $e3
    xor $fb
    sub $00
    nop
    nop
    ld b, $00
    rst $38
    add e
    rst $38
    rst $38
    ld a, [$19ff]
    ldh [$c0], a
    nop
    nop
    nop
    ld b, b
    nop
    or c
    ld b, b
    db $10
    pop hl
    db $ed
    ld a, [c]
    db $fc
    cp $7e
    db $fc
    jp z, Jump_074_7af0

    ldh a, [rNR34]
    nop
    rrca

jr_074_5357:
    ld [$0cdb], sp
    inc e
    adc b
    sbc b
    db $10
    stop
    ld a, b
    db $10
    rrca
    nop
    rra
    ld bc, $05ff
    sub c
    rst $38
    ld c, a
    ldh a, [rHDMA1]
    jr nz, jr_074_5357

    pop af
    reti


    pop af
    cpl
    ld sp, hl
    ld d, e
    nop
    inc bc
    nop
    inc b
    nop
    ld b, b
    nop
    jp $e000


    nop
    ld [bc], a
    db $e3
    inc hl
    pop bc
    jp nz, $c0c1

    pop bc
    ld b, c
    ret nz

    add c
    ret nz

    ld l, l
    ret nz

    ldh a, [$c0]
    sbc a
    ret nz

    ld l, a
    add c
    ld [hl+], a
    pop bc
    ld b, c
    ld bc, $0001
    ld bc, $0100
    nop
    or e
    pop bc
    cp $79
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    xor a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    or e
    rst $38
    and [hl]
    db $fd
    dec hl
    rst $38
    db $fc
    rst $38
    ld [hl], e
    rst $38
    ld c, $f1
    sbc [hl]

jr_074_53bd:
    pop hl
    sbc l
    ld h, a
    cp a
    rst $28
    and $ff
    rst $28
    ldh a, [$fd]
    inc bc
    ld a, l
    ei
    cp $71
    rst $38
    jr nz, jr_074_53bd

    ld sp, $fdcf
    ld h, e
    rst $38
    xor [hl]
    ld [hl], c
    sbc a
    ld h, b
    rst $38
    and $7b
    ldh [$6c], a
    db $d3
    ld l, h
    sub e
    dec a
    add e
    pop hl
    rra
    ld hl, $689e
    or a
    db $10
    rst $28
    set 6, b
    ldh a, [$c0]
    pop bc
    ret nz

    db $fd
    rst $20
    call $f2f6
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    reti


    ld a, a
    jr nz, jr_074_543e

    db $d3
    ld h, b
    ld a, l
    cp a
    di
    sbc a
    db $db
    ccf
    rst $38
    daa
    rst $38
    push bc
    ccf
    nop
    ld [bc], a
    ld bc, $0007
    adc d
    rlca
    ld a, a
    rst $00
    and a
    pop bc
    ld sp, hl
    ld bc, $0071
    add d
    nop
    sub d
    nop
    xor $10
    ld b, l
    ldh [$61], a
    ret nz

    ld b, c
    add b
    ld bc, $e200
    ret nz

    ld a, a
    cp $6b
    rst $30
    ld d, $09
    ret nz

    nop
    ld sp, hl
    nop
    ldh a, [$e0]
    ret c

    ld [hl], b
    ld a, a
    db $fc
    db $ed
    cp $ec
    rst $38

jr_074_543e:
    cp $01
    ld bc, $2300
    nop
    ld a, $01
    and c
    nop
    ei
    ret nc

    ld e, b
    or a
    ld b, d
    pop hl
    sub e
    add b
    adc a
    nop
    inc e
    nop
    ld [hl], l
    ld c, b
    call z, $0703
    add b
    add [hl]
    add b
    add e
    nop
    add c
    nop
    add c
    nop
    add b
    add b
    db $fc
    rst $18
    push hl
    rst $38
    ld a, [c]
    adc l
    sbc d
    dec b
    sbc d
    dec b
    xor a
    db $fc
    db $eb
    db $fc
    add sp, -$01
    db $db
    nop
    nop
    nop
    jr nz, jr_074_547a

jr_074_547a:
    ld e, h
    add b
    or [hl]
    ld c, $2c
    nop
    sub $a1
    ld a, a
    pop bc
    ld c, [hl]
    pop bc
    ld [hl+], a
    ld bc, $001f
    ld [$8c00], sp
    nop
    rst $28
    sbc [hl]
    sub e
    rrca
    ld a, [bc]
    rlca
    ld c, $00
    inc c
    nop
    inc c
    nop
    dec a
    inc d
    inc a
    jr nc, @+$32

    db $10
    ld e, b
    rst $20
    ld a, [hl]
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    db $ed
    rst $38
    or a
    ei
    ld [de], a
    rst $38
    dec a
    rst $38
    cp b
    rst $38
    rst $10
    db $fd
    ld e, [hl]
    or c
    db $eb
    or a
    rst $28
    rst $38
    db $fd
    rst $38
    ei
    db $fd
    db $76
    ld sp, hl
    xor $f1
    xor $f1
    db $ec
    rst $30
    ld e, d
    db $ed
    sbc $eb
    ldh a, [$ef]
    ret nc

    rst $38
    reti


    rst $20
    db $db
    ld h, c
    ld [$cef0], sp
    dec [hl]
    and e
    ld a, a
    ld l, d
    push de
    sub d
    db $ed
    rst $20
    ld bc, $07fd
    ld d, a
    ld sp, hl
    ld e, d
    pop hl
    push af
    inc bc
    rlca
    inc bc
    db $fd
    daa
    ld a, h
    jp $c177


    ld c, h
    ret nz

    reti


    ret nz

jr_074_54f8:
    cp a
    pop bc
    rst $30
    ret


    db $fc
    dec bc
    ld a, b
    ret nz

    cpl
    rra
    ccf
    ld [$0061], sp
    ldh [rP1], a
    ld sp, $ffc0
    cp a
    db $db
    cp a
    or d
    rrca
    add e
    add b
    add b
    nop
    add a
    nop
    ld hl, sp+$07
    rst $00
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    rrca
    rla
    ld l, a
    ld sp, hl
    and b
    pop af
    jr nz, jr_074_54f8

    jr nc, @-$1b

    db $10
    ld de, $1000
    nop
    ei
    nop
    ldh a, [rP1]
    cp $40
    rst $28
    rra
    ldh [rTAC], a
    rst $20
    ld b, b
    ldh [rSTAT], a
    pop af
    ld b, b
    or c
    ld b, b
    sub c
    nop
    add c
    db $10
    pop af
    nop
    ld l, c
    or b
    call $ee7f
    rra
    rst $38
    rra
    ld e, e
    cp a
    sub a

jr_074_554f:
    ccf
    ccf
    rra
    scf
    ccf
    or a
    ccf
    ld b, a
    rst $38
    xor d
    rst $38
    ret nz

    ld h, b
    ld b, b
    jr nz, jr_074_557f

    ld b, b
    or b
    ld b, b
    sub $60
    or a
    ret nz

    db $db
    ret nz

    ld hl, sp-$19
    ldh [$c7], a
    rst $28
    ret nz

    ld [hl], c
    ret nz

    ld [hl], b
    ret nz

    ldh a, [$c0]
    ldh a, [$d0]
    jr nz, jr_074_5588

    ld [hl], b
    nop
    add hl, sp
    nop
    ld l, l
    ld a, $cd

jr_074_557f:
    cp a
    rst $18
    cp a
    rra
    cp a
    sbc a
    ccf
    sbc [hl]
    ccf

jr_074_5588:
    rla
    ccf
    inc de
    ccf
    rra
    scf
    or e
    ccf
    ei
    rst $30
    rst $38
    cp a
    ldh a, [$60]
    ld h, b
    ld h, b
    ld h, b
    nop
    ret nz

    jr nz, jr_074_554f

    ld b, b
    jp nc, $c060

    ccf
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [c], a
    rst $38
    cp h
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    dec l
    rst $38
    reti


    rst $30
    rst $18
    rst $38
    ld a, a
    rst $10
    rst $28
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rra
    rst $38
    ccf
    rst $38
    ld e, [hl]
    ei
    rst $18
    ld h, c
    rst $38
    ld h, a
    or c
    ld l, a
    sub h
    ld l, a

jr_074_55d4:
    ld l, a
    ret c

    cp $ff
    rst $38
    nop
    sbc c
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    db $fd
    cp $df
    ldh [rIE], a
    ret nz

    jp nz, Jump_074_78ff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
    ld a, [hl]
    rst $00
    sub e
    ldh [$bf], a
    jp hl


    xor h
    ret


    add hl, sp
    ret nz

    sbc a
    ldh [$db], a
    ld h, b
    inc hl
    nop
    cp d
    rst $08
    ld sp, hl
    nop
    pop bc
    ld b, b
    ld bc, $cf60

jr_074_5609:
    inc [hl]
    ei
    ldh a, [$f7]
    ldh [$f7], a
    ldh [$6c], a
    ldh a, [$7e]
    jr nc, jr_074_55d4

    ldh [$f1], a
    ldh [$e8], a
    ldh a, [$e4]
    db $fc
    cp $fc
    di
    db $fc
    jp Jump_000_0c7c


    ldh a, [$86]
    ld [hl], b
    ld d, b
    jr nz, jr_074_5609

    db $10
    sub l
    ld a, b
    sbc [hl]
    ld sp, hl
    rst $38
    nop
    ret nz

    nop
    rst $38
    nop
    ei
    inc b
    di
    inc c
    di
    inc c
    rst $28
    db $10
    or e
    ld h, b
    ld [hl+], a
    pop af
    pop bc
    jr nc, jr_074_568b

    jr nc, @+$3e

    nop
    ld c, $00
    ld l, a
    add b
    rst $18
    rst $38
    db $ed
    di
    jp nc, $f9f1

    ldh [$99], a
    ldh [$b0], a
    ret nz

    ld hl, sp-$80
    add hl, sp
    ret nz

    cp h
    ld b, b
    call c, $0f60
    ldh [$0d], a
    ldh [$ae], a
    ret nz

    cpl
    ret nz

    rst $28
    db $10
    and e
    ld e, h
    ld [c], a
    inc e
    or d
    db $ec
    rla
    add sp, $2f
    ldh a, [$39]
    ldh a, [$d9]
    jr nc, @-$26

    jr nc, jr_074_56a9

    jr c, jr_074_56b3

    inc b
    inc b
    ld [bc], a
    add d
    ld bc, $c76e
    db $db
    rst $38
    sbc $f9
    ret


    ldh a, [$d8]
    ldh [$d8], a

jr_074_568b:
    ldh [$88], a
    ldh a, [$38]
    ret nz

    ret c

    and b
    call c, $dca0
    and b
    cp $60
    call z, Call_074_7960
    db $e4
    xor b
    db $e4
    rst $20
    ldh [$5f], a
    xor a
    ld e, a
    rst $38
    db $ed
    rst $38
    cp [hl]
    rst $18
    xor a

jr_074_56a9:
    rst $38
    sbc l
    rst $38
    sbc $ff
    dec a
    rst $38
    rst $18
    rst $38
    cp e

jr_074_56b3:
    rst $38
    ld a, [hl]
    rst $38
    ccf
    cp $fd
    cp $1f
    db $fc
    rst $18
    db $fc
    rst $08
    db $fd
    rst $30
    ei
    ld h, e
    db $fd
    rst $10
    ld a, c
    db $fd
    ld b, e
    ld a, l
    rst $30
    rst $30
    ei
    cp $eb
    ld a, [$ffff]
    rst $38
    rst $30
    db $fd
    ld a, [c]
    db $ed
    db $d3

jr_074_56d7:
    db $ed
    or l
    db $eb
    ld [hl], e
    adc h
    cp a
    call $fdf6
    rst $18
    inc a
    db $fd
    ld [$18ec], sp
    ld l, h
    sub b
    dec l
    db $fc
    ld l, a
    db $dd
    sbc a
    push bc
    ld c, a
    call nz, $c4af
    rst $38
    push hl
    and a
    call nz, $80f6
    inc b
    nop
    pop bc

jr_074_56fb:
    ld bc, $c37c
    add e
    ret nz

    ldh a, [$c0]
    and b
    ld b, b
    adc b
    ld h, b
    adc l
    ld b, b
    and h
    ld e, h
    rst $38
    nop
    pop af
    nop
    add c
    ld h, b
    ldh [rP1], a
    ld bc, $e500
    add d
    adc l
    ldh [$71], a
    jr nz, jr_074_56fb

    nop
    nop
    nop
    rst $28
    nop
    ret nc

    jr z, jr_074_572b

    jr nc, jr_074_5763

    jr nc, jr_074_5753

    jr nc, jr_074_5755

    jr nc, jr_074_56d7

jr_074_572b:
    jr nc, @+$01

    db $10
    db $ec
    or b
    jr nz, jr_074_5742

    ld a, b
    or b
    ld [hl], a
    add b
    ldh a, [rP1]

jr_074_5738:
    cp h
    ld b, b
    ld a, [hl+]
    call nz, $c4f3
    jp c, $ef45

    nop

jr_074_5742:
    rst $28
    nop
    add sp, $07
    ld l, e
    inc b
    ld [hl], a
    ld [$f857], sp
    rst $30
    ld hl, sp-$10
    cp $7a
    ldh a, [$38]

jr_074_5753:
    ldh a, [$3f]

jr_074_5755:
    ld [hl], b
    ld a, e
    ccf
    rrca
    jr c, jr_074_5738

    ld a, $df
    ccf
    sbc e
    ld a, a
    cp e
    rra
    cp a

jr_074_5763:
    rra
    dec bc
    inc e
    rst $18
    jr @+$51

    jr c, jr_074_577a

    jr c, jr_074_57ab

    nop
    push af
    ld [bc], a
    sbc e
    ld h, d
    cp a
    ld h, d
    sub e
    ld h, b
    sub e
    ld h, b
    ld [hl], e
    nop

jr_074_577a:
    ld [hl], h
    inc bc
    ld [hl], l
    ld [bc], a
    dec d
    ld [bc], a
    ld a, e
    add h
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, e
    db $fc
    cp d
    ld a, l
    call c, Call_074_5c78
    jr c, @+$41

    ld e, $3f
    rra
    dec c
    ld e, $03
    ld e, $2f
    rra
    dec a
    ccf
    db $e4
    rra
    ld b, a
    rrca
    ld d, a
    rrca
    nop
    rst $38
    ld de, $31ff
    rst $08
    cp b
    rst $08
    ldh a, [$9f]
    rst $38

jr_074_57ab:
    cp h
    rst $30
    ld hl, sp-$19
    ld sp, hl
    cp a
    pop bc
    cp [hl]
    jp $c29f


    ld a, [$3d47]
    ld c, a
    rst $38
    ld a, a
    ld e, c
    rst $38
    rst $18
    rst $38
    rst $18
    rst $28
    rst $38
    rst $38
    rst $38
    rst $00
    cp a
    rst $00
    cp a
    rst $20
    cp a
    add $bf
    add $f7
    ld l, h
    sbc e
    ld a, h
    xor e

jr_074_57d3:
    ld a, h
    cp $bf
    db $fc
    scf
    ld [$2eb7], a
    rst $30
    add hl, hl
    rst $30
    db $db
    rst $20
    ei
    ld c, a
    ld [hl], a
    adc a
    pop hl
    sbc [hl]
    rst $08
    or b
    ld a, a
    add e
    rst $10
    xor a
    rst $38
    ccf
    rst $18
    ccf
    rst $38
    ccf
    cp a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ld l, $f9
    xor a
    ld [hl], b
    rst $38
    ld [hl], e
    reti


    scf
    cp [hl]
    ld bc, $01bf
    rst $20
    jr @+$31

    sbc b
    ld [hl], d
    adc h
    ld d, [hl]
    adc b
    ld e, h
    add b
    ld c, l
    sub b
    ld a, [de]
    pop bc
    ld a, l
    di
    cp [hl]
    ld a, a
    cp l
    ld a, [hl]
    ld a, b
    ld a, $7a
    inc a
    ld [hl], h
    jr c, jr_074_57d3

    ld a, b

Call_074_5820:
    pop af
    ld a, b
    ld e, $78
    ei
    inc a
    ld a, e
    jr nc, jr_074_58a4

    jr nc, jr_074_589b

jr_074_582b:
    ld [hl], c
    cp h
    ld a, e
    jp hl


    ldh a, [$75]
    jr jr_074_5869

    jr jr_074_582b

    ld [$008e], sp
    ld c, e
    inc b
    db $d3
    inc c
    reti


    nop
    ld e, a
    ldh a, [$a7]
    ld e, b
    db $fc
    nop
    ldh [rP1], a
    ccf
    pop bc
    jp nz, $ef3f

    inc e
    or $08
    inc c
    nop
    nop
    nop
    rrca
    nop
    ei
    inc b
    or b
    db $fc
    cp h
    ld c, h
    or h
    ld l, h
    ld l, h
    db $fc
    db $ec
    db $fc
    inc a
    db $fc
    rst $38
    db $fc
    rst $30
    ld c, h
    call nz, $ae00

jr_074_5869:
    inc d
    ccf
    rlca
    inc a
    inc bc
    and $03
    inc h
    nop
    ldh a, [rP1]
    push bc
    ld a, [hl-]
    add $3d
    ld a, a
    add b
    or b
    add b
    ld d, b
    and b
    rst $08

jr_074_587f:
    jr nc, jr_074_587f

    rrca
    ei
    ld b, $ff
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    rlca
    nop
    rst $38
    ld bc, $effb
    di
    rlca
    ld a, [$df17]
    cp e
    rst $38
    rst $38
    di

jr_074_589b:
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    xor a
    ld e, a

jr_074_58a4:
    rst $28
    ld e, a
    cpl
    rst $18
    ld a, a
    rst $18
    rst $38
    ld e, a
    ld l, a
    rst $18
    rst $28
    rst $38
    rst $18
    rst $38
    ld l, h
    rst $20
    db $eb
    add $ef
    ld c, [hl]
    sbc e
    ld l, l
    ld d, e
    db $fd
    ld c, e
    rst $38
    ld [hl], e
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    cp a
    db $db
    ld a, $d4
    ld a, a
    ei
    ld a, h
    ei
    db $fd
    rlca
    db $fc
    rst $08
    jr nc, jr_074_5921

    or e
    dec l
    ld a, [c]
    ld e, a
    ldh a, [rNR22]
    ld sp, hl
    sbc [hl]
    pop hl
    sbc [hl]
    pop af
    ld a, a
    db $e3
    cp [hl]
    ld b, a
    ld hl, sp+$4f
    cp l
    cp $fa
    rst $38
    ei
    rst $38
    di
    rst $38
    ld a, [$e9f7]
    rst $30
    rst $38
    ld [c], a
    ld a, [$7def]
    cp $fb
    db $fc
    ld a, a
    ret nz

    rst $18
    ldh a, [$be]
    pop bc
    or a
    rst $08
    db $fc
    ld [bc], a
    ld a, b
    add b
    sbc b
    ld h, b
    jr z, jr_074_597a

    inc a
    ld h, b
    db $10
    ld h, b
    ld h, c
    add b
    add c
    rlca
    ei
    rlca
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld c, a
    ccf
    ld h, a
    rra
    dec sp
    rlca
    ld a, e
    rrca
    db $76

jr_074_5921:
    rrca
    cp $08
    db $f4
    inc c
    ld a, h
    inc c
    xor c
    ld c, h
    db $e3
    inc c
    cp c
    ld b, [hl]
    adc $73
    cp [hl]
    ld a, l
    dec b
    ld [bc], a
    ld a, [bc]
    inc b
    inc b
    ld [$38c7], sp
    reti


    ld a, a
    cpl
    rra
    rst $38
    rrca
    rst $18
    rrca
    ld l, l
    ld e, $bc
    ld c, h
    rst $38
    inc c
    adc [hl]
    rrca
    ld e, $0f
    ld h, a
    rra
    ld c, a
    ccf
    ld e, a
    ccf
    rst $08
    ccf
    push hl
    ccf
    cpl
    db $10
    ld [hl], $0f
    ld c, $07
    ld bc, $0a06
    inc b
    pop hl
    ld e, $f6
    rrca
    ld a, h
    adc a
    ld hl, sp+$00
    ret


    ld bc, $837d
    ld l, d
    sub a
    di
    ld c, $7f
    rlca
    rlca
    inc bc
    db $fd
    inc bc
    di
    inc bc
    dec d
    inc bc

jr_074_597a:
    dec d
    dec bc
    dec l
    inc de
    inc sp
    pop bc
    ld sp, $01c1
    ld bc, $0187
    ld [$0b0f], sp
    rrca
    rrca
    rrca
    pop af
    adc a
    ldh a, [rIF]
    dec b
    rlca
    rlca
    ld bc, $0101
    ld bc, $0100
    nop
    ld bc, $0701
    ld bc, $01ff
    db $fd
    rst $28
    rst $38
    rst $38
    rst $30
    ei
    rst $28
    di
    rst $28
    di
    rst $18
    rst $20
    adc a
    rst $28
    rra
    rst $38
    rra
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
    rst $30
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    cp a
    ret nz

    adc $f1
    adc a
    pop af
    rst $18
    db $e3
    ld sp, hl
    add a
    rst $38
    inc b
    db $eb
    inc a
    or $1f
    ld l, e

jr_074_59d3:
    sbc h
    db $fd
    ld e, $fc
    ccf
    rst $38
    ccf
    or a
    ld a, a
    rst $20
    rst $38
    rst $38
    rst $38
    ld e, a
    ld a, [c]
    rst $38
    nop
    rst $38
    ld bc, $03fc
    ld a, [c]
    rrca
    ld e, a
    rst $38
    adc [hl]
    rst $38
    db $eb
    cp [hl]
    ld a, a
    adc d
    db $fc
    inc de
    cp $bb
    adc $3f
    rst $38
    scf
    ei
    ld b, [hl]
    rst $38
    ld c, [hl]
    rst $38
    sbc [hl]
    rst $08
    cp a
    ld a, a
    daa
    ld a, e
    daa
    ei
    daa
    ld [c], a
    ccf
    cp l
    ld [hl], a
    ldh [rP1], a
    ldh [$60], a
    sub b
    ldh a, [$dc]
    add sp, -$04
    rst $28
    jp nz, $cfec

    ldh [$a2], a
    ldh [$a0], a
    ldh [$7b], a
    cp a
    ld a, d
    rst $38
    ccf

jr_074_5a23:
    db $10
    ld [bc], a
    db $10
    ld h, $10
    and h
    jr jr_074_59d3

    rra
    rst $38
    rrca
    rst $38
    adc $fd
    xor $fd
    xor $2f
    nop
    inc c
    nop
    ld a, [bc]
    inc b
    db $fd
    adc $ff
    rst $38
    ld hl, sp-$01
    sbc l
    ldh [$80], a
    nop
    nop
    nop
    rst $08
    nop
    sbc a
    ldh [$80], a
    rst $38
    ld a, [c]
    rst $38
    cp $ff
    ld a, [$c7ff]
    rst $38
    ld e, [hl]
    rst $38
    adc a
    rlca
    rst $00
    add a
    or $03
    sub l
    ld [hl+], a
    ld h, [hl]
    jr nz, jr_074_5a23

    add b
    ld l, l
    add [hl]
    db $e3
    ret nz

    add a
    nop
    ld h, a
    add b
    ld a, [hl]
    add c
    ld d, $fb
    ldh [rP1], a
    ld e, [hl]
    rst $30
    rst $30
    rst $38
    db $fc
    rst $38
    db $eb
    db $f4
    call c, $e0e0
    add b
    add b
    nop
    db $fd
    ret nz

    reti


    and $b7
    db $fc
    db $fd
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    ld d, [hl]
    rst $38
    ret nz

    nop
    ld c, b
    ldh a, [$9c]
    ldh [$bc], a
    ret nz

    ld h, b
    add h
    ld c, h
    add b
    ld l, b
    ret nc

    ld [hl], b
    sub b
    cp $ff
    cp $ff
    and $ff
    rst $00
    ld a, [$e09f]
    ldh [rP1], a
    rst $38
    ld bc, $df26
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp $ff
    db $fc
    db $fc
    rst $38
    rst $38
    ld a, a
    ei
    cp $ef
    ldh a, [$9f]
    ldh a, [rIE]
    nop
    rst $30
    nop
    rst $38
    add hl, de
    db $fd
    add a
    rst $38
    nop
    push af
    ld a, $fd
    cp $ff
    db $fc
    rst $38
    db $fd
    cp $f9
    di
    rst $38
    rst $38
    rst $30
    cp l
    db $e3
    push de
    rst $28
    dec [hl]
    rst $08
    cp c
    sbc $7f
    cp [hl]
    rst $10
    ld a, $af
    ld a, h
    ei
    db $ed
    ld a, a
    rst $00
    rst $38
    rst $00
    cp $1f
    rst $28
    rra
    rst $28
    dec de
    db $ed
    ld d, e
    rst $38
    ei
    pop af
    xor a
    ld sp, hl
    add a
    ld a, l
    add a
    or $bf
    rst $28
    cp a
    cp a
    ld a, d
    rst $28
    ld [hl], b
    ld c, a
    jr nc, jr_074_5b8b

    ld bc, $b34d
    rst $18
    ccf
    ld e, a
    ccf
    cp $5f
    db $fd
    rra
    inc a
    rra
    cp $1f
    rra
    rrca
    and a
    inc e
    ld a, $00
    inc bc
    nop
    add hl, sp
    rlca
    rst $30
    rra
    ld a, a
    rst $38
    sbc e
    ld a, a
    sbc a
    ld a, b
    push af
    dec bc
    di
    dec c
    sub a
    ld c, $09
    ld e, $3b
    db $fc
    ldh a, [rIE]
    ld [hl], e
    rst $38
    or c
    ld c, a
    add hl, sp
    ld c, $3b
    inc c
    di
    inc c
    sbc b
    rlca
    ld d, e
    rst $38
    cp [hl]
    ld a, a
    rrca
    ld b, $0b
    ld b, $07
    ld [bc], a
    ei
    ld b, $7b
    add l
    adc c
    rlca
    rst $08
    inc bc
    ld h, a
    jp Jump_000_0201


    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld a, a
    ldh [$bf], a
    ldh [rIE], a
    add b
    rst $38
    adc b
    cp [hl]
    pop bc
    xor a
    ret nc

    sbc $f3
    ei
    rst $38
    sbc a
    db $fc
    cp h
    nop
    ld b, d
    nop
    ld b, $00
    ld [hl-], a
    nop
    call c, $f801
    nop
    add a
    ld a, a
    sbc l
    db $e3
    ldh a, [$e0]
    ld [hl], b
    ldh [$a0], a

jr_074_5b8b:
    ld h, b
    or b
    ld h, b
    rst $38
    add sp, -$07
    ld d, b
    ld sp, hl
    ld h, b
    ld e, b
    ld h, b
    ld c, h
    ld [hl], b
    inc l
    ld b, b
    ld b, b
    nop
    ld b, b
    nop
    ldh [rLCDC], a
    add sp, -$01
    dec e
    ld a, [c]
    ld a, l
    add e
    rst $38
    nop
    rst $38
    nop
    ld a, c
    ld b, $91
    ld a, a
    ld [$c1f7], sp
    cp $e6
    rst $38
    rst $10
    rst $38
    ei
    rst $30
    rst $38
    ret nz

    jp $ff80


    nop
    db $fc
    rlca
    rra
    rst $38
    rst $18
    rst $38
    xor a
    ld e, a
    rst $38
    rra
    cp $1f
    db $fc
    ccf
    ld hl, sp+$7f
    ei
    db $fd
    rst $30
    ei
    rst $38
    ld [hl], e
    jp hl


    ld [hl], a
    ld a, [c]
    dec a
    ld a, [$f27d]
    ld a, l
    xor e
    rst $38
    add hl, bc
    rst $38
    sub l
    ei
    db $fd
    sbc e
    xor a
    pop de
    db $ed
    db $db
    adc $f9
    ld b, a
    ld sp, hl
    rst $00
    ld sp, hl
    rst $28
    di
    rst $10
    ld sp, hl
    push af
    ei
    push af
    ei
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    xor $f1
    db $fd
    rst $30
    ld sp, hl
    and $dd
    xor $bf
    adc $77
    sbc h
    ld h, h
    sbc a
    xor $9f
    ei
    adc a
    ld [hl], b
    rst $18
    and a
    call c, $ccb3
    db $e3
    sbc h
    ei
    sbc h
    ld a, [$ffcf]
    jp $83fd


    ld [hl], c
    rst $08
    rst $38
    rst $08
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld a, a
    add c
    cp a
    ret nz

    cp $07
    rst $10
    ccf
    ld e, a
    cp a
    sbc a
    ld a, a
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $18
    cp a
    rra
    cp a
    rra
    rst $38
    rra
    cp e
    ld e, [hl]
    cp a
    ld hl, sp+$7e
    db $dd
    ld a, h
    adc a

jr_074_5c4e:
    xor $3d
    cp $1f
    ld a, c
    ld b, $1f
    inc c
    ld c, a
    dec e
    cp b
    rra
    ld a, l
    cp $fc
    cp a
    ld hl, sp-$71
    rst $38
    add a
    ld a, d
    add a
    sbc $87
    sbc $01
    sbc $0b
    push de
    ld c, e
    or $cf
    ld d, a
    rst $28
    rst $28
    ccf
    rst $18
    jr nz, @+$81

    nop
    ld [hl], l
    ld a, [bc]

Call_074_5c78:
    dec a
    ld a, [hl+]
    ld l, h
    inc sp
    ld a, l
    scf
    dec hl
    ccf
    ccf
    ccf
    cp c
    ccf
    and a
    jr jr_074_5c9e

    jr jr_074_5cc0

    jr jr_074_5ca2

    jr jr_074_5cdc

    jr jr_074_5c4e

    ld e, b
    sbc e
    ld a, [hl]
    cp a
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

jr_074_5c9e:
    dec de
    rlca
    and a
    ld e, a

jr_074_5ca2:
    or $09
    cp $21
    cp $07
    rst $38
    inc c
    rst $10
    ccf
    cp [hl]
    ld e, a
    xor $19
    ld a, a
    ldh [rIE], a
    ld hl, sp-$03
    rst $38
    sbc $ff
    call c, $fb7f
    rrca
    add e
    db $fc
    rrca
    ld sp, hl

jr_074_5cc0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    or e
    rst $08
    di
    adc a
    di
    adc a
    rst $38
    adc a
    db $fd
    rst $08
    cp d
    rst $08
    cp d
    rst $20
    di
    call $fccb

jr_074_5cdc:
    rst $38
    ld sp, hl
    rst $28
    ldh a, [$fe]
    db $e3
    cp $c1
    cp $cb
    sub $e9
    push af
    rst $38
    di
    cp $f7
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $af
    cp $16
    rst $28
    call $8bb7
    ld [hl], a
    add hl, de
    or $97
    ld l, h
    sub h
    ld l, a
    ld c, e
    rst $30
    ld h, c
    cp $37
    ei
    ld [hl], $f9
    cpl
    ld hl, sp-$5d
    db $fc
    adc b
    rst $38
    ret


    cp [hl]
    xor a
    ld e, b
    xor $39
    rst $28
    dec de
    ld [$891f], a
    ld a, a
    call c, $bef3
    pop bc
    ld b, a
    cp a
    inc h
    rst $38
    ld [bc], a
    rst $38
    ld e, l
    and d
    rst $38
    ret nz

    rst $18
    ldh a, [$f2]
    rst $38
    rst $30
    rst $38
    cp a
    rst $28
    cp [hl]
    rst $00
    cp [hl]
    jp $e6fb


    rst $38
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    rst $38
    db $fd
    rst $38
    push af
    cp $17
    ld hl, sp-$41
    ld a, b
    ld l, a
    ld hl, sp-$15
    db $f4
    ld a, e
    db $f4
    cp a
    ld a, b
    sbc l
    ld a, d
    db $db
    cp h
    ld hl, sp+$7f
    xor c
    rst $38
    dec h
    rst $38
    ld [hl+], a
    rst $38
    cp h
    di
    ld a, l
    di
    ld [hl], l
    cp e
    db $fd
    dec sp
    rst $38
    dec a
    ld a, [c]
    dec e
    add sp, $1f
    ld hl, sp+$1f
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    sbc $ff
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
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $fd
    ld a, [hl]
    db $d3
    ld a, $cf
    ld [hl-], a
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    pop af
    xor $f9
    xor [hl]
    ld sp, hl
    xor [hl]
    pop af
    add a
    ld hl, sp+$7f
    ldh a, [$df]
    ldh a, [$7f]
    add b
    cp a
    ld hl, sp+$76
    db $fd
    ldh a, [$1f]
    ld b, b
    rst $38
    db $dd
    rst $20
    cpl
    rst $38
    ld e, $ff
    ld [bc], a
    db $fd
    rra
    db $e4
    dec de
    db $e4
    sbc a
    db $e4
    xor a
    add $dd
    adc a
    sbc a
    sbc a
    or a
    rrca
    rst $38
    rrca
    rst $38
    rra
    ei
    rrca
    rst $30
    dec sp
    rst $28
    inc sp
    dec c
    di
    sbc a
    db $e3
    rst $18
    db $e3
    db $fd
    rst $20
    sbc $e7
    ld e, $ef
    inc a
    rst $28
    inc a
    ei
    cp h
    ei
    xor $f7
    or a
    db $ed
    ld a, [$fe0a]
    add h
    ld a, a
    dec c
    rst $38
    ret


    rst $38
    bit 6, e
    inc hl
    ld h, a
    inc de
    ld [hl], a
    ld d, [hl]
    ld d, a
    ld e, c
    ld a, [hl]
    ld e, b
    ld a, b
    ld a, b
    ldh a, [$78]
    ret nc

    ld hl, sp-$10
    nop
    ld d, c
    nop
    ld d, a
    nop
    ld c, a
    ld bc, $224f
    cpl
    ld [bc], a
    dec de
    inc bc
    inc de
    rrca
    rra
    ld l, a
    db $dd
    ld a, [bc]
    inc c
    ld [$0c1e], sp
    inc [hl]
    inc e
    db $e4
    sub b
    adc h
    ret c

    sbc h
    ld c, b
    db $fc
    db $10
    db $fc
    ret nz

jr_074_5e1e:
    ld hl, sp-$30
    sub b
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    sub c
    ld a, a
    and c
    ld a, a
    jr nz, @+$01

    xor $ff
    ldh [rIE], a
    rst $38
    push af
    db $ed
    sub c
    rlc c
    nop
    add c
    nop
    nop
    nop
    nop
    jr jr_074_5e1e

    rst $20
    sbc c
    rst $38
    rst $38
    ld a, a
    db $fc
    ld a, a
    ld a, [c]
    ld a, a
    dec l
    ccf
    inc e
    rra
    rra
    rra
    rra
    rra
    rla
    sbc a
    rlca
    ccf
    ccf
    ld a, $bf
    cp [hl]
    ccf
    db $fc
    cp b
    add b
    ld [$000f], sp
    cpl
    ld b, $6f
    inc bc
    ld l, a
    rst $08
    sbc a
    ld e, a
    rrca
    sbc a
    sbc a
    rlca
    adc a
    scf
    adc a
    ld b, a
    adc a
    daa
    rrca
    rlca
    adc a
    rlca
    rlca
    add a
    adc a
    rlca
    adc a
    add a
    adc a
    ld b, a
    rst $08
    adc a
    rst $08
    adc a
    rst $18
    rst $28
    rst $38
    rst $38
    rst $38
    ld e, a
    rra
    ld c, a
    rrca
    ld d, $0c
    ld h, $0c
    ld c, h
    ld a, l
    ld [$5079], sp
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ldh [$73], a
    ldh [$f3], a
    ldh [$eb], a
    ld [hl], b
    ei
    ld h, b
    ei
    and b
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
    jr jr_074_5ed3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    jr nz, jr_074_5eec

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $13
    inc de
    inc de

jr_074_5ed3:
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    daa
    jr z, jr_074_5f06

    ld a, [hl+]
    dec hl
    inc l
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    dec l
    ld l, $2f
    cpl
    jr nc, jr_074_5f1d

jr_074_5eec:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld [hl], $37
    jr c, jr_074_5f33

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de

jr_074_5f06:
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
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_074_5f1d:
    ld d, b
    ld d, c
    ld d, d
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    inc de
    inc de
    inc de

jr_074_5f33:
    inc de
    inc de
    inc de
    inc de
    ld e, h
    ld e, l
    inc de
    inc de
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    ld h, e
    ld h, h
    ld h, l
    inc de
    inc de
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    inc de
    inc de
    inc de
    inc de
    inc de
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    inc de
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    inc de
    inc de
    inc de
    inc de
    inc de
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
    inc de
    inc de
    inc de
    inc de
    inc de
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
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    adc e
    adc h
    adc l
    inc de
    inc de
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    sub e
    sub h
    inc de
    inc de
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    sbc d
    inc de
    inc de
    inc de
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $01
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $f3ff
    rst $38
    di
    rst $18
    db $e3
    rst $38
    db $eb
    ei
    rst $38
    ld [hl], e
    rst $38
    or a
    rst $38
    rst $10
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    db $eb
    rst $38
    rst $18
    rst $38
    cp $ff
    cp $ff
    cp [hl]
    ld a, a
    call c, $bd3f
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ld a, a
    scf
    rst $38
    rst $08
    ccf
    rst $38
    rra
    rst $18
    ccf
    ld h, a
    sbc a
    rst $38
    add a
    ld h, e
    sbc a
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    rst $20
    cp $ed
    cp $dd
    cp $bd
    sbc $cc
    cp a
    rst $38
    rst $38
    rst $38
    rst $38

Jump_074_617c:
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    di
    rst $38
    db $db
    rst $38
    ld hl, sp+$1f
    rst $28
    rra
    ei
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
    rst $38
    ld a, a
    rst $38

Call_074_619e:
    rst $38
    rst $38
    rst $18
    db $fd
    ld a, a
    ld hl, sp-$41
    ld hl, sp-$46
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    sbc a
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    cp a
    call $c5ba
    rst $18
    and c
    db $fd
    add e
    db $fd
    add e
    db $db
    and a
    rst $28
    cp a
    or a
    rst $38
    set 6, a
    cp $81
    cp a
    pop bc
    rst $28
    di
    pop de
    xor $cf
    ret nz

    adc l
    jp nz, Jump_000_03dc

    ld a, a
    ld bc, $1f2f
    cp a
    ld a, a
    rrca
    di
    ld h, a
    add e
    di
    rrca
    ld [hl], d
    adc a
    sbc $07
    rst $38
    ld b, $ee
    rra
    rst $20
    rra
    rst $38
    rlca
    ld a, a
    rra
    rst $38
    ccf
    ld a, a
    sbc a
    rst $20
    rra
    add b
    rst $08
    db $d3
    adc h
    rst $38
    nop
    ld e, [hl]
    and c
    rst $30
    add hl, bc
    ld a, e
    add l
    inc bc
    rst $38
    ld c, a
    ccf
    cp a
    ld a, a
    rst $18
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
    rst $38
    rst $38
    rst $38
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
    cp a
    ld a, a
    rst $18
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $20
    rst $38

Call_074_6280:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ccf
    rst $08
    ld a, a
    adc a
    rst $38
    adc a
    xor a
    rst $18
    cp $dd
    cp $fb
    rst $38
    rst $38
    rst $28
    rst $38
    rst $30
    db $eb
    jp hl


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    rst $20
    ld l, c
    rst $30
    push af
    ld a, e
    db $fd
    rst $38
    rst $08
    rst $38
    rst $18
    rst $28
    rst $30
    rst $28
    ei
    rst $30
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld a, [$fffd]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld e, c
    cp a
    cp b
    ld a, a
    ld a, l
    cp $fc
    rst $38
    ret nc

    rst $38
    ld [hl], a
    jp c, $fd4a

    cp a
    ld a, a
    ld e, a
    ccf
    cp a
    rra
    dec a
    cp $d3
    cp h
    ld c, a
    or c
    ldh [rIE], a
    add c
    cp $af
    db $f4
    dec d
    db $eb
    ld a, a
    rst $18
    rst $38
    rst $38
    rst $38
    inc b
    sbc h
    nop
    ld a, e
    sub b
    ld a, [c]
    pop hl
    rst $18
    db $e3
    cp a
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$01
    ld [bc], a
    db $fd
    inc bc
    nop
    ld bc, $9e00
    ld h, c
    pop de
    xor $c5
    ld a, [$c0fd]
    cp a
    pop bc
    cpl
    rst $10
    cpl
    rst $18
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [$fdfd]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh [$e0], a
    add $ff
    rst $38
    rst $38
    rst $38
    rst $30
    ld a, a
    ld b, a
    cp a
    rst $28
    cp a
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
    rst $30
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    db $fd
    di
    ei
    rst $30
    rst $38
    rst $38
    xor [hl]
    rst $18
    ld a, a
    adc [hl]
    cp e
    add $ff
    add d
    di
    adc a
    rst $30
    rrca
    db $fc
    rrca
    sbc a
    ld h, b
    rst $38
    ldh a, [$9e]
    pop hl
    db $eb
    rla
    inc bc
    rrca
    cp l
    ld b, e
    cpl
    sbc $bf
    ld a, a
    ld [$d7f7], a
    ldh [$b8], a
    rst $00
    db $fc
    add b
    db $f4
    add hl, bc
    cp c
    ld b, [hl]
    db $fd
    inc bc
    push de
    ld a, [hl+]
    ld l, [hl]
    sbc h
    dec l
    sbc $b9
    ld e, [hl]
    jp z, Jump_074_7c34

    ldh [$c0], a
    ld hl, sp-$08
    call nc, $f098
    add c
    ldh a, [$f1]
    and b
    xor [hl]
    pop de
    ld l, [hl]
    db $dd
    ld e, e
    or h
    add a
    nop
    ld bc, $0202
    inc b
    add hl, sp
    ld b, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    ld [hl], c
    adc [hl]
    or d
    ld e, l
    ccf
    ldh a, [$ec]
    inc sp
    rst $18
    rst $20
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    ldh [rIE], a
    ret nz

    cp $81
    rst $00
    ld hl, sp-$24
    nop
    halt
    ld [hl], a
    add b
    and a
    nop
    or $0f
    rst $28
    rra
    db $ec
    inc de
    nop
    rst $38
    db $fd
    cp $de
    pop hl
    cp h
    nop
    db $fc
    ld [$9069], sp
    rst $38
    nop
    dec hl
    ld b, h
    ld c, $01
    ld a, [de]
    dec b
    dec e
    ld [bc], a
    dec sp
    dec b
    rst $38
    ld bc, $03f3
    rst $18
    daa
    rst $28
    rla
    ld c, a
    rst $38
    di
    ld a, a
    or c
    ld c, [hl]
    sbc $20
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
    sub [hl]
    nop
    nop
    nop
    ld bc, $0a00
    nop
    rla
    nop
    ld a, [bc]
    nop
    rla
    nop
    ld a, [hl+]
    nop
    rra
    nop
    xor d
    nop
    rla
    nop
    ld a, [hl+]
    nop
    rra
    nop
    xor d
    nop
    rla
    nop
    ld a, [hl+]
    nop
    rra
    nop
    xor d
    nop
    rla
    nop
    ld a, [hl+]
    nop
    rra
    nop
    xor d
    nop
    rla
    nop
    ld a, [hl+]
    nop
    rra
    nop
    xor d
    nop
    dec d
    nop
    nop
    nop
    rst $38
    and e
    inc d
    and e
    ld e, h
    ld a, $f1
    or a
    ld hl, sp-$04
    sbc e
    inc c
    di
    rst $20
    rst $38
    ld a, h
    rst $38
    ld a, l
    adc d
    dec e
    rst $38
    rst $38
    ccf
    ccf
    ld a, a
    ld [hl], h
    db $eb
    ld b, c
    add b
    sbc h
    inc bc
    ld a, d

jr_074_6451:
    add l
    cp $d3
    add hl, sp
    rst $10
    push de
    ld a, [hl-]
    or $19
    sbc h
    inc sp
    dec d

jr_074_645d:
    ld a, [hl-]
    ld a, a
    db $10
    ld a, [hl]
    add c
    cpl
    rst $38
    rst $38
    ld a, a
    cp a
    ld [hl], d
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$ec]
    di
    ld a, [c]
    push hl
    pop de
    and b
    rst $38
    nop
    ld d, e
    db $fc
    rst $10
    jp hl


    adc l
    inc bc
    sbc a
    inc bc
    xor e
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
    rst $38
    nop
    nop
    nop
    ld d, l
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
    ld h, [hl]
    add b
    ld c, h
    add b
    nop
    sbc a
    jr nz, jr_074_6451

    ld h, b

jr_074_64b3:
    sbc a
    ld h, b
    sbc a
    ld b, b
    sbc a
    nop
    sbc a
    nop
    sbc a
    jr nz, jr_074_645d

    ld h, b
    sbc a
    ld c, [hl]
    add b
    ld c, h
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    ld d, l
    nop
    nop
    ld bc, $6fff
    sbc a
    ccf
    rst $18
    ld a, [c]
    dec e
    sbc a
    ld h, b
    ld e, b
    rst $20
    call c, $f7ff
    xor $73
    call z, $e11e
    ei
    or $ff
    rst $38
    cp a
    rst $30
    rst $38
    rst $38
    rst $28
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    db $fc
    add e
    and a
    jr jr_074_64b3

    ld a, h
    ei
    ld a, h
    ld a, e
    db $fc
    cp $fd
    sub c
    rst $38
    ld [$d397], a
    rst $28
    ld a, c
    rst $00
    cp l
    ld b, e
    ld sp, hl
    rlca
    rst $30
    dec bc
    ld [hl], a
    add c
    ld a, e
    add a
    rst $20
    rra
    call nc, $fb3f
    ld h, h
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld e, a
    cp a
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
    ld d, h
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
    ld [hl], d
    ld bc, $0166
    ld b, $f9
    inc b
    ld sp, hl
    nop
    ld sp, hl
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld b, $f9
    inc b
    ld sp, hl
    nop
    ld sp, hl
    ld [bc], a
    ld sp, hl
    ld h, [hl]
    ld bc, $01c6
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld d, h
    nop
    nop
    jp nc, $7fff

    add c
    cp d
    rst $38
    db $fc
    rst $38
    dec e
    cp $be
    ld a, a
    ld e, a
    rst $38
    rst $20
    jr jr_074_65c0

    db $fc
    ld a, a
    rst $38
    ld a, e
    adc l
    ld [hl-], a
    adc l
    rst $30
    nop
    or $01
    ld h, b
    add e
    pop hl
    nop
    pop hl
    jp nz, $e0ff

    ccf
    ldh a, [$35]
    ld a, [de]
    inc l
    rla
    adc a
    scf
    ld l, a
    sub a
    rst $18
    rst $28
    rst $28
    rst $38
    rst $08
    cp $f1
    sbc $f7
    ldh a, [rIE]
    ldh [$87], a
    ld hl, sp-$20
    rst $18
    ld a, [$eafd]
    db $f4
    db $fc
    ldh [$fd], a
    inc bc
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    db $fd
    rst $38
    rst $38

jr_074_65c0:
    rst $38
    nop
    rst $38
    nop
    rst $30
    rrca
    rst $30
    rrca
    ld a, [$f807]
    rlca
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld a, [$f907]
    rlca
    ld a, [$fb07]
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
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
    rra
    rst $38
    ld bc, $f81c

jr_074_6602:
    ld e, a
    cp b
    ld a, a
    ld hl, sp+$5b
    rst $38
    rst $28
    rra
    or a
    dec bc
    cp a
    pop bc
    ld sp, hl
    ld b, b
    rst $18
    jr c, jr_074_6602

    pop af
    or a
    bit 5, a
    sbc b
    ld e, l
    cp b
    rst $38
    ccf
    xor a
    ld a, a
    cp a
    rst $38
    rst $38
    ccf
    rrca
    ccf
    cpl
    rra
    sbc l
    ld c, $9d
    nop
    ld a, l
    add b
    call c, $f6b0
    add sp, $6e
    rst $38
    ccf
    ld a, a
    sbc b
    rlca
    ld b, a
    add b
    db $e3
    ld b, b
    add hl, sp
    ret nz

    sub a
    ld l, c
    add c
    ld a, b
    rrca
    ld bc, $007f
    ld sp, hl
    cp $ff
    cp $fe
    rst $38
    rst $38
    cp $fe
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
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ret nz

    push hl
    rst $38
    ld c, a
    ldh a, [$df]
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$cd], a
    ld a, [c]
    ldh [rIE], a
    rst $38
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld sp, hl
    rra
    push hl
    dec de
    cp a
    rrca
    ld a, h
    cp a
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    cp a
    call z, $07df
    ccf
    rst $00
    rst $30
    rst $08
    ld a, b
    adc a
    ei
    ccf
    di
    ld hl, sp-$07
    ldh a, [$b7]
    ld hl, sp-$09
    ldh a, [$fb]
    db $f4
    ld [hl], e
    rst $38
    sbc a
    ld h, c
    ld h, e
    ld b, c
    cp l
    ld b, d
    inc a
    ld e, $2e
    inc d
    rst $28
    db $10
    push af
    ld a, [$09f3]
    srl a
    dec hl
    rst $10
    ld b, c
    cp [hl]
    ld a, [$fafd]
    db $fc
    rst $38
    rst $38
    cp $e7
    ld l, l
    ld a, [$08f3]
    ld hl, sp+$00
    ldh [rNR23], a
    cp h
    ld a, b
    ld hl, sp-$02
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld e, [hl]
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
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
    ld d, l
    xor d
    nop
    rst $38
    rst $38
    rst $38
    rst $10
    ccf

jr_074_6704:
    rst $38
    pop hl
    cp $e1
    ld l, c
    rst $30
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $76
    rst $38
    rst $38
    cp a
    ld a, b
    add b
    ld [hl], b
    add b
    ldh [$f0], a
    sbc e
    ld h, b
    ld l, b
    sub e
    ld [hl], e
    jp hl


    ld e, a
    ld [c], a
    ld d, c
    xor h
    ld c, l
    or e
    dec de
    cp a
    ccf
    rst $38
    ld a, a
    cp a
    rst $38
    rrca
    adc h
    inc bc
    jp c, Jump_000_0025

    rrca
    ld a, c
    add [hl]
    db $fd
    rst $38
    db $fc
    ldh a, [$a0]
    ret nz

    nop
    add b
    ret nz

    add b
    ldh [$80], a
    jr nz, jr_074_6704

    ret nz

    nop
    add b
    nop
    dec d
    nop
    ld d, e
    jr nz, @+$7c

    ld b, h
    sbc [hl]
    ld a, b
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    add a
    rst $38
    rst $00
    rst $38
    db $fc
    inc bc
    cp $01
    db $fd
    inc bc
    db $ed
    inc de
    add a
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
    inc bc
    db $fc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    adc a
    di
    rst $08
    ld a, a
    ld [hl], a
    adc a
    sbc a
    rst $20
    or [hl]
    rst $28
    rst $08
    rst $38
    rst $30
    rst $08
    db $db
    db $fc
    sub c
    ld b, [hl]
    and d
    ld b, a
    ld c, e
    or [hl]
    cp l
    adc d
    ld l, e
    add h
    add b
    rst $28
    and b
    ld a, b
    daa
    sbc b
    or [hl]
    add hl, bc
    ld b, e
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $30
    di
    ld sp, hl
    ld h, c
    sbc a
    db $dd
    inc hl
    ld a, a
    rst $38
    ei
    add a
    inc bc
    nop
    dec bc
    nop
    rlca
    ld [$1f7f], sp
    ccf
    ld a, a
    ld h, h
    ccf
    dec hl
    call nc, Call_074_6897
    ccf
    ret nz

    db $dd
    ld [bc], a
    ld b, h
    inc bc
    ld a, b
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
    cp $01
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
    rst $38
    rst $38
    ld l, b
    rst $38
    ld bc, $ffff
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
    ld a, [$fc05]
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    db $10
    rst $28
    ld hl, sp+$07
    db $fc
    inc bc
    db $fd
    ld [bc], a
    rst $38
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
    rst $38
    rst $38
    adc b
    rst $38
    inc bc
    ld a, a
    adc a
    ccf
    rst $38
    rst $08
    rst $38
    ld a, [hl]
    adc a
    rst $20
    ld hl, sp-$41
    ret nz

    ld a, [$0a07]
    dec b
    ld l, a
    db $10
    ld [hl], a
    add hl, bc
    sbc c
    rlca
    rst $38
    ccf
    rst $38
    ld a, a
    add l
    ld a, e
    dec b
    inc bc
    sub a
    rrca
    sbc e
    db $fc
    db $eb
    ldh a, [$f6]
    nop
    or e
    ld b, b
    cpl
    ret nz

    cp e
    call nz, $e3ff
    cp $e1
    ld sp, hl
    or $ff
    ld hl, sp-$19
    ld e, b
    ld b, l
    cp b
    push af
    ld a, [$f8ff]
    rst $30
    ld hl, sp-$01
    ld a, a
    rst $28
    ld a, a
    xor e
    ld a, a
    rst $18
    ld h, e
    xor a

jr_074_686d:
    ld [hl], c
    scf
    pop bc
    push af
    ld a, [bc]
    rst $38
    ld [$04ff], sp
    rst $30
    ld c, $ed
    ld e, $e5
    ld e, $ff
    nop
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld b, a
    cp a
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
    ld [de], a
    db $ed
    rst $38
    rst $28
    nop

Call_074_6897:
    rst $38
    ld [de], a
    db $ed
    ld d, d
    xor l
    jr nc, jr_074_686d

    pop af
    rrca
    xor e
    rst $38
    ld l, e
    sbc a
    ei
    rrca
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
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
    sbc a
    ld l, a
    rst $28
    rra
    rst $38
    rrca
    sbc e
    ld l, a
    adc e
    ld a, a
    adc e
    ld a, a
    sbc e
    ld l, a
    adc c
    ld a, a
    adc c
    ld a, a
    adc c
    ld a, a
    sbc h
    ld l, a
    sbc b
    ld l, a
    ret nc

    cpl
    cp c
    rst $38
    ld d, l
    cp e
    ld c, a
    or c
    add $f9
    rst $38
    ret nz

    rst $18
    db $e4
    ld a, [$bf75]
    ld [hl], b
    ld [hl], c
    and $de
    db $e3
    rst $10
    ldh [$c7], a
    ldh [$fe], a
    ldh [$fc], a
    rst $38
    db $fd
    ld hl, sp-$0b
    ld hl, sp-$01
    ldh a, [rIE]
    db $fc
    ld h, [hl]
    sbc l
    rst $00
    rrca
    add a
    rrca
    or a
    ld c, $e6
    rra
    cp l
    ld b, d
    ld sp, $dfc0
    ldh [$62], a
    db $fd
    or c
    ld e, [hl]
    push af
    ld e, $cf
    inc [hl]
    or l
    ld c, a
    rlca
    rrca
    rlca
    rlca
    ld d, a
    add d
    rst $38
    db $e3
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld hl, sp-$20
    rst $38
    jp $c3fc


    db $fc
    push bc
    rst $38
    rst $00
    ld a, [$fac7]
    rst $00
    ld hl, sp-$3f
    cp $0b
    db $f4
    ld b, $f9
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    add b
    rst $38
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
    add b
    rst $38
    add b
    rst $38
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

jr_074_696d:
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    xor l
    rst $38
    rst $38
    rst $38
    di
    rst $38
    rst $38
    pop bc
    rst $20
    rst $38
    rst $30
    ld a, a
    ld a, a
    rst $38
    cp d
    ld a, l
    rst $20
    ld a, a
    rst $38
    ccf
    rra
    rra
    rrca
    rra
    ld c, l
    ld e, $dc
    nop
    dec e
    ld [bc], a
    jp hl


    rla
    or c
    ld h, d
    di
    nop
    jr c, jr_074_696d

    ld a, l
    add d
    add c
    nop
    ld sp, $ab00
    ld [hl], h
    cp $3d
    ld a, [hl]
    db $fd
    ld a, e
    db $fc
    cp a
    ld a, h
    db $dd
    ld a, $67
    sbc [hl]
    ld c, l
    and d
    ld l, d
    or l
    xor $f1
    xor $f1
    ld l, b
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
    ld hl, sp-$01
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
    rst $38
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
    dec b
    ld a, [$ffff]
    cp h
    rst $18
    and [hl]
    rst $38
    db $fc

jr_074_6a07:
    db $e3
    and l
    sbc $b7
    rst $18
    sub a
    ei
    rst $08
    cp a
    ld d, c
    adc a
    push af
    ld hl, sp-$07
    cp $7e
    adc a
    call Call_000_3103
    ld c, $df
    jr nz, jr_074_6a07

    rst $30
    db $fd
    rrca
    db $d3
    inc l
    ldh a, [rIE]
    cp [hl]
    pop bc
    sub d
    ld l, b
    cp [hl]
    ld e, c
    cp b
    ld c, a
    rst $28
    ld de, $07cf
    rrca
    add a
    db $fd
    ld b, $55
    cp b
    ld [hl], l
    dec bc
    adc $31
    rst $30
    nop
    dec a
    jp nz, Jump_000_00e7

    jr nz, jr_074_6a07

    ret nz

    nop
    ld h, b
    add b
    nop
    ldh [rNR41], a
    ret nz

    ld h, b
    ldh [$b0], a
    pop bc
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec d
    ld [$40bf], a
    rst $38
    rst $38
    ld c, c
    rst $30
    ld h, a
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ld [hl], c
    rst $38
    ld e, h
    cp a
    rst $30
    rst $38
    ei
    rst $38
    ld a, [hl-]
    call Call_000_0cf3
    sbc $21
    ld sp, hl
    ret nz

    ld sp, hl
    jr nz, @-$04

    ccf
    rst $18
    xor a
    ld d, c
    xor [hl]
    ld [hl], a
    call c, Call_000_0cf7
    push hl
    ld b, $c4
    inc bc
    add e
    ld b, b
    ld [hl+], a
    pop bc
    push af
    nop
    db $fc
    ld hl, sp-$04
    ld a, [$fd3e]
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    cp a
    ld e, a
    rra
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ld bc, $08fe
    rst $30
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor l
    rst $38
    rst $18
    cp h
    cp $ff
    ei
    rst $20
    rst $30
    rst $38
    rst $38
    rst $38
    cp $e7
    or [hl]
    ret


    push af
    ei
    ld d, a
    ld hl, sp+$73
    ldh [$7f], a
    or b
    rst $38
    rra
    rlca
    ld a, a
    rra
    ccf
    ld c, c

jr_074_6aef:
    sub [hl]
    ei
    call z, $e21f
    ei
    jr nz, jr_074_6aef

    ccf
    dec sp
    db $fc
    db $fd
    ld a, $e5
    ld e, $92
    ld l, l
    adc h
    inc de
    rla
    ld [$0708], sp
    adc c
    ld b, $3f
    add b
    rrca
    add b
    ret z

    or a
    cp $e1
    ld a, [c]
    push hl
    pop af
    ldh [$e1], a
    ldh a, [$f9]
    ldh a, [$fc]
    ld hl, sp-$05
    db $fc
    rst $38
    cp $ff
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
    cp $00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $00
    ld a, a
    cp $ff
    ld a, [hl]
    cp a
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    rst $38
    jr @+$01

    ld [hl], a
    cp b
    dec [hl]
    cp $ed
    ld a, [c]
    xor l
    ld [hl], d
    ld a, l
    cp $ff
    cp $ff
    rst $38
    ccf
    rst $38
    cp a
    rra
    rst $10
    rrca
    add e
    ld b, a
    cp a
    ld b, b
    dec c
    ld a, d
    call c, $af2f
    rst $18
    sub a
    ld a, b
    cp [hl]
    ld b, c
    cp h
    ld a, d
    ei
    inc b
    ld a, [hl]
    add c
    cp $01
    cp e
    inc b
    rst $10
    ld [$38f7], sp
    sbc c
    ld a, [hl]
    cp $01
    rla
    nop
    add e
    nop
    ld [bc], a
    pop bc
    jp $c300


    jr nz, @-$0f

    db $10
    rst $28
    inc de
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp a
    ei
    cp h
    cp $7d
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    dec sp
    call $fcfb
    rst $38
    ld [hl], h
    cp l
    ld [hl], e
    xor $31
    ei
    ld h, h
    ld [hl], a
    cp $79
    ld c, $24
    rra
    rst $18
    cp a
    sub $ef
    rst $38
    db $fc
    sub e
    ld c, h
    ld c, a
    ld [bc], a
    ld e, a
    nop
    ldh a, [rP1]
    and d
    pop de
    ei
    rst $38
    db $fd
    ei
    ei
    ccf
    rst $18
    ccf
    xor l
    ld e, a
    cpl
    rst $18
    ret nc

    cpl
    ld l, a
    sub b
    rst $38
    nop
    xor l
    ld d, e
    rst $28
    db $fc
    db $dd
    ldh [$e1], a
    nop
    rst $30
    nop
    cp a
    ld d, b
    ld e, [hl]
    and c
    ld [hl], d
    add c
    ld h, d
    ret nz

    db $fd
    rst $38
    rst $38
    db $fc
    db $fd
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
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    cp $fe
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    or $ff
    ld a, [$73f7]
    rst $38
    rst $38
    di
    cp l
    di
    db $fc
    ei
    db $fc
    ei
    ld sp, hl
    rst $38
    db $fc
    rst $38
    rst $30
    rst $38
    ld a, e
    rst $38
    cp a
    ld a, a
    ld l, a
    sbc a
    rst $38
    add e
    xor a
    pop de
    swap h
    cp c
    ld b, $fa
    rrca
    sbc a
    ld l, a
    rrca
    add a
    rst $00
    add e
    db $d3
    rst $38
    ld hl, sp-$19
    db $fd
    add b
    rst $28
    sub b
    ld [hl], $c9
    rst $18
    dec h
    db $fd
    rst $38
    rst $38
    ld a, a
    ld a, l
    cp $bb
    call nz, $df3f
    rst $38
    rra
    adc a
    ld a, a
    or e
    inc c
    db $fd
    nop
    adc e
    ld [hl], h
    cp a
    ld a, b
    rst $38
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
    jr jr_074_6d03

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_074_6d13

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_074_6d23

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_074_6d33

    ld [hl-], a

jr_074_6d03:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_074_6d43

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_074_6d13:
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

jr_074_6d23:
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

jr_074_6d33:
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

jr_074_6d43:
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
    jr jr_074_6e03

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_074_6e13

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_074_6e23

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_074_6e33

    ld [hl-], a

jr_074_6e03:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_074_6e43

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0000

jr_074_6e13:
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0401
    ld bc, $0404
    inc b
    ld bc, $0003

jr_074_6e23:
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0003

jr_074_6e33:
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0404
    inc bc
    nop

jr_074_6e43:
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    inc b
    ld bc, $0401
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc b
    inc bc
    inc b
    nop
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop

Jump_074_6e91:
    inc b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    nop
    inc b
    ld bc, $0403
    ld bc, $0301
    inc bc
    nop
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    ld bc, $0003
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    nop
    inc b
    inc b
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    nop
    nop
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
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
    inc bc
    inc b
    inc bc
    inc bc
    inc b
    nop
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    inc bc
    inc bc
    inc b
    nop
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
    inc b
    inc b
    dec bc
    inc c
    dec bc
    dec bc
    inc c
    ld c, $0d
    dec c
    dec c
    add hl, bc
    inc c
    add hl, bc
    dec bc
    dec bc
    inc c
    inc c
    ld [$0b0b], sp
    dec bc
    inc c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    inc c
    inc c
    ld [$0c0c], sp
    ld [$0b08], sp
    ld [$0d0b], sp
    ld c, $0d
    inc c
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0b08], sp
    inc c
    dec bc
    dec bc
    dec bc
    inc c
    add hl, bc
    inc c
    dec bc
    add hl, bc
    inc c
    ld b, e
    cp a
    db $eb
    rst $30
    rst $38
    or $c7
    cp $f5
    xor $d7
    db $ec
    sub [hl]
    ld l, c
    ld e, c
    and $f3
    rst $38
    rst $30
    rst $38
    rst $08
    rst $38
    ret c

    rst $38
    ld a, b
    rst $38
    ld e, a
    inc a
    ld l, $1f
    ld l, $1f
    dec hl
    rlca
    dec bc
    rlca
    ld b, a
    nop
    nop
    nop
    nop
    nop
    ld bc, $5300
    nop
    rlca
    nop
    add e
    nop
    adc a
    nop
    rst $30
    ld [$0817], sp
    ld [de], a
    dec c
    rst $30
    ld [$cd32], sp
    ld sp, hl
    rlca
    and b
    ld e, a
    ld [hl], d
    adc l
    ld [hl], e
    adc h
    ld [hl], h
    adc a
    ldh a, [rIF]
    ld h, c
    sbc [hl]
    rst $38
    nop
    and d
    ld e, a
    ld e, $e1
    inc c
    di
    ld b, b
    rst $38
    ld b, d
    db $fd
    ld h, d
    db $fd
    ld [hl], b
    rst $38
    ld hl, sp-$01
    ld a, [$21ff]
    cp $a1
    ld a, [hl]
    nop
    rst $38
    ld de, $00fe
    rst $38
    nop
    rst $38
    db $10
    rst $28
    rst $00
    cp d
    inc a
    di
    db $10
    rst $38
    ld b, b
    cp a
    sbc b
    ld h, a
    inc c
    di
    ld a, [bc]
    push af
    dec bc
    rst $30
    ld [bc], a
    rst $38
    dec a
    rst $30
    jp z, Jump_000_033f

    rst $38
    add a
    rst $38
    db $10
    rst $38
    ld a, $df
    rst $38
    rst $38
    rst $18
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$c5f7], sp
    cp $ef
    cp $e3
    call c, $acd3
    ld [$4695], a
    cp c
    db $f4
    dec de
    rst $08
    jr nc, jr_074_706b

    add h
    rst $30
    nop
    ld h, $c1
    ld hl, $fc86
    inc bc
    cp h
    ld b, e
    sub c
    rrca
    dec a
    ld a, [$057a]
    push af
    ld a, [bc]

jr_074_7014:
    rra
    rst $38
    ld b, e
    cp a
    ld a, h
    and e
    scf
    jp hl


    ld e, $fd
    jp $f3fc


    inc c
    xor [hl]
    ld e, a
    db $dd
    cp [hl]
    ld a, [hl]
    pop af
    rra
    ldh [$30], a
    ld c, a
    ld e, [hl]
    cp a
    and e
    ld a, h
    dec b
    ei
    db $f4
    rrca
    ld c, l
    ld a, [hl-]
    ld l, a
    rla
    ld e, a
    ccf
    dec de
    db $ec
    add l
    ld e, $9f
    nop
    db $fc
    inc bc
    rst $38
    nop
    ld a, h
    inc bc
    db $fc
    inc bc
    sub h
    ld a, e
    ld h, h
    ei
    sub [hl]
    ld sp, hl
    dec h
    ld hl, sp-$41
    ret nz

    ld a, a
    add b
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    rst $38
    nop
    pop bc
    rst $38
    ld bc, $23ff
    rst $38
    sub a
    ld l, a
    ld h, l
    sbc e
    ld h, a

jr_074_706b:
    jr jr_074_7014

    nop
    rst $20
    nop
    dec de
    ldh [rBGP], a

jr_074_7073:
    or b
    or d
    inc b
    dec de
    inc b
    inc l
    rla
    dec e
    rst $30
    ld h, l
    sbc a
    ei
    dec c
    sbc [hl]
    ld h, c
    ld hl, sp+$04
    db $fc
    inc bc
    add l
    ld b, d
    inc hl
    ret nz

    dec hl
    ldh [$db], a
    ldh [$f0], a
    rst $38
    push de
    jr nz, jr_074_7073

    add hl, de
    sbc c
    ld h, h
    sub h
    ld h, c
    ldh a, [rIF]
    and b
    ld e, a
    ccf
    rst $38
    add hl, de
    rst $38
    rra
    rra
    ld a, [hl-]
    dec [hl]
    ccf
    jr nc, jr_074_70e6

    jr c, jr_074_70c8

    jr jr_074_70c8

    ld a, [de]
    dec e

jr_074_70ad:
    ld a, [de]
    rra
    ld a, [de]
    inc e
    rra
    rrca
    inc c
    inc c
    rrca
    adc h
    adc a
    rrca
    rrca
    rlca
    rlca
    daa
    daa
    ld b, $07
    cpl
    rst $10
    rrca
    di
    rrca
    di
    rra
    db $eb

jr_074_70c8:
    rra
    db $e3
    ld a, a
    xor e
    rst $38
    pop de
    ei
    db $ed
    ei
    db $fd
    rst $38
    ld sp, hl
    sbc l
    di
    ld b, $f9
    dec a
    ld a, [c]
    cp a
    ld [hl], b
    ld a, a
    and b
    cp a
    ret nz

    ret nc

    rst $28
    xor h
    db $d3

jr_074_70e4:
    ret c

    rst $20

jr_074_70e6:
    add $f9
    push de
    ld [$e7b8], a
    rst $10
    rst $28
    ld b, $ff
    ld a, e
    scf
    ld h, d
    rst $38
    ld hl, sp-$09
    add l
    ei
    ld sp, hl
    cp $f7
    ld l, [hl]
    rst $10
    db $ec
    rlca
    ld sp, hl
    dec l
    nop
    dec hl
    ret nz

    ld sp, hl
    ld b, $ff
    ld b, $87
    ld a, [hl]
    ld d, l
    ld [$ed12], a
    call Call_000_1f3e
    ldh [$c7], a
    jr c, jr_074_70e4

    ldh a, [$d9]
    and [hl]
    daa
    ret c

    jp $f2ec


    dec l
    call z, $da00
    ld l, h
    rst $30
    jr c, jr_074_70ad

    ld [hl], a
    or l
    ld c, [hl]
    ld b, $f9
    rrca
    ldh a, [$b1]
    ld e, $79
    rst $38
    jp hl


    ldh a, [$b3]
    ld c, h
    ld [bc], a
    db $fd
    or b
    rst $08
    adc c
    rlca
    ld h, b
    rra
    jp Jump_074_7d3c


Jump_074_713f:
    add e
    pop af
    ld b, $68
    ldh a, [$fb]
    ld hl, sp-$01
    rst $38
    ld bc, $00ff
    rst $38
    dec bc
    db $f4
    inc a
    jp $09f6


    sbc h
    ld l, a
    push de
    ld l, [hl]
    reti


    ld h, $7c
    add e
    db $fc
    inc bc
    or b
    ld c, a
    cp $01
    cp a
    rst $38
    sbc $ff
    rst $38
    rst $38
    ldh a, [rIE]
    scf
    ret nz

    ld e, $01
    ld [hl], a
    ld [$3fc0], sp
    ld a, $ff
    ld l, a
    sub b
    dec de
    inc b
    ld d, e
    inc c
    ld h, d
    sbc a
    pop af
    rst $38
    db $f4
    rst $38
    ei
    cp $c6
    nop
    dec b
    ld [bc], a
    inc bc
    ld c, $c4
    ld a, a
    nop
    ld e, a
    daa
    ld e, b
    ld h, l
    ld a, [bc]
    dec b
    ld [bc], a
    ld bc, $0300
    nop
    ld a, [c]
    inc c
    jp Jump_000_0b3c


    db $f4
    adc l
    ld [hl], d
    ld c, $f1
    rst $38
    rst $38
    jp c, $fff5

    nop
    ld a, a
    add b
    db $e4
    dec de
    call z, $9c33
    ld h, e
    ld [$3cf7], sp
    jp Jump_000_23dc


    reti


    ld h, $f4
    dec bc
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nc

    cpl
    sub b
    ld l, a
    nop
    rst $38
    sub b
    ld l, a
    ret nz

    cp a
    add b
    rst $38
    ret nz

    cp a
    add b
    rst $38
    ret nz

    cp a
    ret nz

    cp a
    add b
    rst $38
    add b
    rst $38
    and c
    rst $18
    rst $20
    rst $18
    rst $18
    rst $28
    rst $08
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld a, e
    ld l, a
    ld h, a
    ld a, a
    ld l, e
    ld [hl], a
    ld a, l
    ld h, e
    ccf
    inc sp
    ld a, $36

jr_074_71ec:
    jr c, jr_074_7226

    nop
    nop
    ld e, b
    add c
    cp h
    di
    xor $f3
    sbc e
    ld a, h
    ldh a, [$7f]
    sbc l
    ld h, e
    xor a
    rra
    ld l, d
    or a
    ld a, e
    add h
    xor c
    ld e, a
    rst $00
    add hl, sp
    db $fc
    nop
    inc a
    inc bc
    rst $18
    ccf
    add hl, sp
    adc $bf
    ld b, b
    rst $10
    jr c, jr_074_71ec

    ld [hl], $5d
    ld [bc], a
    ld a, [c]
    dec b
    ld e, b
    and a
    ld sp, hl
    ld [bc], a
    add hl, sp
    ld b, $7f
    jr nz, jr_074_725c

    ld b, b
    db $ec
    inc de
    ld a, b
    adc a

jr_074_7226:
    cp c
    ld b, [hl]
    ld e, l
    ldh [$8b], a
    ld a, h
    adc $01
    add l
    ld h, e
    ld l, a
    add a
    ld sp, hl
    ld b, $6d
    cp $02
    db $fd
    inc sp
    call z, $3ccf
    db $ec
    ld [hl], a
    ld c, b
    rst $38
    ld [hl], b
    ccf
    ld d, b
    ccf
    ld c, e
    add h
    adc c
    add $d6
    add sp, -$29
    ldh [$bf], a
    ld b, b
    rra
    ldh [$ce], a
    rst $38
    db $fd
    rst $28
    ld l, b
    rst $38
    ld c, [hl]
    rst $38
    xor a
    ld e, [hl]
    ld e, $ec

jr_074_725c:
    ld [hl], $c8
    ld [hl], c
    add b
    cp [hl]
    pop bc
    ld a, [hl]
    add c
    sbc [hl]
    pop hl
    ld c, $f1
    pop bc
    ld a, $e4
    dec de
    and a
    ld a, e
    adc b
    ld [hl], a
    add b
    ld a, a
    sub h
    ld l, [hl]
    adc l
    ld [hl], d
    db $ed
    ld [hl], d
    db $eb
    db $f4
    rst $28
    ldh a, [$67]
    ld hl, sp+$6a
    db $fd
    pop hl
    inc a
    ld c, b
    or b
    ld c, b
    ldh a, [$ef]
    ldh a, [$0e]
    pop af
    and l
    ld [de], a
    inc h
    inc bc
    add h
    ld a, e
    rst $38
    nop
    ld a, a
    add b
    ccf
    nop
    ld a, e
    inc b
    ret nc

    rrca
    ret nz

    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$80f7], sp
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    ld bc, $11ff
    rst $38
    ld de, $10ff
    rst $38
    dec d
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
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
    cp $f9
    cp $e7
    ld hl, sp-$61
    ldh [$fb], a
    inc b
    dec sp
    call nz, Call_000_28d7
    inc sp
    ld b, l

jr_074_72f2:
    add $39
    ld bc, $887e
    ld [hl], a
    db $f4
    rrca
    ld l, b
    sbc a
    ld l, a
    add b
    xor a
    ld b, b
    rra
    ldh [rIE], a
    ret c

    pop af

jr_074_7305:
    adc $a7
    jr jr_074_72f2

    ld e, $4b
    db $f4
    db $dd
    nop
    call c, $df03
    rrca
    ld hl, sp+$07
    ld h, c
    cp $f8
    ld [hl], a
    ld e, $e0
    ld b, e
    add b
    sbc b
    rlca
    ld e, e
    inc l
    ld a, [de]
    ccf
    adc h
    ccf
    jr z, jr_074_7305

    daa
    rst $18
    add hl, bc
    cp $e2
    rra
    ld c, c
    or $fb
    db $fc
    rst $28
    ldh a, [$bf]
    ld b, b
    ld sp, hl
    inc bc
    ret z

    inc sp
    ld [hl], $f8
    adc h
    db $76
    ret z

    scf
    ld l, b
    add a
    ld c, b
    add a
    ld c, b
    add a
    rst $20
    rra
    sbc a
    ld a, a
    rst $10
    inc hl
    ld [c], a
    ld bc, $20d3

jr_074_734e:
    ret z

    scf
    ld l, a
    or b
    add a
    ld [hl], b
    ld e, e
    ldh [$7f], a
    add b
    adc [hl]
    nop
    call z, $cc30
    jr nc, jr_074_734e

    nop
    db $fd
    ld [bc], a
    db $db
    inc b
    db $dd
    nop
    call nc, $1200
    nop
    ld e, d
    dec b
    ld e, d
    add a
    db $10
    ret nz

    ld b, l
    ei
    ld [hl], h
    ei
    jp c, Jump_074_4105

    nop
    or e
    nop
    rst $38
    nop
    rst $30
    ld b, b
    cp h
    jp $80ff


    or e
    ld b, b
    ld h, c
    jp nz, $01f6

    ld e, c
    and a
    dec de
    rst $20
    and $ff
    ld a, a
    rst $38
    ldh [$1f], a
    sub b
    ld l, a
    ret nc

    cpl
    cp l
    ld d, d
    ld hl, $fcde
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    sbc h
    ld a, h
    dec l
    db $dd
    dec c
    db $fd
    inc e
    db $e4
    dec c
    push af
    inc c
    db $f4
    ld b, $fa
    ld c, $fa
    ld b, $fa
    ld e, $fa
    ld b, $fa
    ld b, $fa
    ld d, $fa
    ld b, $fa
    ld b, $fe
    inc b
    cp $04
    cp $07
    rst $38
    dec l
    rst $38
    ccf
    rst $38
    dec a
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
    db $fd
    rst $38

jr_074_73d8:
    rst $38
    rst $38
    cp $fe
    ld a, b
    ld hl, sp-$20
    ldh [$d4], a
    xor e
    ld [hl], h
    adc e
    ld e, c
    and [hl]
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    ld a, [c]
    dec c
    rla
    rst $28
    ld e, a
    adc a
    push bc
    ld a, [hl-]
    ld l, h
    inc de
    dec d
    db $eb
    ld sp, $4bc8
    or h
    ld [$a110], a
    ld b, b
    add hl, hl
    ret nz

    ld h, h
    sbc e
    cpl
    sbc a
    dec e
    nop
    db $fd
    nop
    db $d3
    inc l
    pop hl
    ld a, a
    dec bc
    db $e4
    ld b, $c0
    and [hl]
    jr jr_074_7453

    ret nz

    and c
    ld e, $80
    ld a, a
    ld c, $ff
    rst $28
    rst $38
    ld c, a
    rst $38
    pop af
    ld c, $9f
    ld l, b
    ld a, $ff
    ld a, [hl-]
    db $fd
    rla
    add sp, $49
    and a
    rst $20
    rrca
    cp $01
    ld a, e
    db $fd
    rlca
    ccf
    ld c, $f1
    ei
    db $fc
    rst $38
    scf
    ld a, a
    ccf
    rst $38
    ccf
    rst $08
    ccf
    ld a, [c]
    rrca
    rst $10
    jr c, jr_074_73d8

    cp b
    or b
    nop
    inc b
    add b
    pop bc
    nop
    jp $9700


    nop
    db $f4
    dec bc
    ccf

jr_074_7453:
    ret nz

    ld a, $c1
    ld d, b
    xor a
    add h
    ld a, a
    jr @+$01

    rlca
    ld hl, sp-$75
    db $fc
    inc l
    ret nc

    ld [hl], c
    add b
    ld a, c
    add a
    db $fd
    rra
    jr nc, @+$01

    and [hl]
    ld a, c
    ret z

    ld [hl], $2c
    nop
    ld a, a
    add b
    pop bc
    ld a, $fb
    rlca
    adc b
    ld [hl], a
    inc b
    ld a, a
    nop
    ccf
    jr c, jr_074_7485

    inc e
    inc bc
    nop
    rrca
    dec d
    dec bc
    dec l

jr_074_7485:
    rra
    sbc a
    ccf
    cp a
    ld a, a
    ld a, $7f
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    add b
    cp $78
    cp $69
    cp $ab
    ld a, h
    adc b
    ld a, a
    ld a, b
    rst $18
    add hl, sp
    rst $28
    ld d, b
    xor a
    ldh [$5f], a
    ld h, b

jr_074_74a3:
    cp a
    ldh a, [$7f]
    ld hl, $f0fe
    cp a
    add b
    ld a, a
    add c
    ld a, [hl]
    sub b
    ld a, a
    jr nz, @+$01

    ld de, $21fe
    sbc $20
    rst $18
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, jr_074_74a3

    ld a, b
    add a
    ld a, [hl]
    add a
    ret c

    ld h, $b4
    ld a, [bc]
    xor l
    ld [bc], a
    xor e
    inc b
    xor [hl]
    ld bc, $00b5
    dec a
    add b
    db $eb
    sub h
    adc e
    db $f4
    db $76
    add b
    cp $01
    xor e
    nop
    rst $30
    ld e, b
    ld hl, $d1de
    ld l, $ef
    db $10
    rst $30
    ld [$00ab], sp
    rst $20
    nop
    ld e, c
    add d
    and a
    ld a, b
    ld a, [$3c31]
    jp $d8b7


    call c, Call_074_5820
    nop
    reti


    jr nc, jr_074_751c

    ld h, b
    call $a373
    call nz, $8275
    ld a, [bc]
    rst $30
    ld h, c
    or $d6
    rst $28
    adc e
    ldh a, [rSB]
    db $fd
    ld hl, sp+$01
    add h
    nop
    db $e4
    ld e, $cf
    db $fc
    pop af
    cp $02
    db $fd

jr_074_751c:
    ld b, a
    cp b
    ld [hl], d
    add c
    rst $38
    nop
    ld a, l
    add b
    rst $10
    ld [$1dfa], sp
    ld a, c
    db $fc
    call nz, $f5fb
    adc [hl]
    ld a, a
    add sp, -$03
    cp $f2
    db $fc
    rst $28
    ld [hl], b
    cp a
    ld b, b
    adc a
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ld h, a
    add b
    ld hl, $b7de
    ld hl, sp-$7c
    ld a, e
    or c
    ld a, [hl]
    sbc c
    ld a, [hl]
    ld [hl], c
    cp $01
    cp $99
    ld a, [hl]
    jp hl


    ld e, $fe
    ld bc, $00e0
    ld [bc], a
    nop
    nop
    nop
    rrca
    nop
    rra
    nop
    ld l, e
    db $10
    ld l, $7f
    ld a, a
    rst $38
    ld a, [$e6fd]
    ld sp, hl
    ld h, b
    rst $38
    nop
    rst $38
    ret nc

    ccf
    inc b
    ei
    add d
    ld a, a
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    inc l
    jp $e31c


    add $3f
    sbc c
    ld h, b
    jp hl


    ld b, $f7
    ld [$00f9], sp
    adc h
    inc bc
    ld l, [hl]
    add a
    ld [hl], l
    ld c, $28
    rra
    inc sp
    inc e
    ld l, a
    db $10
    swap h
    nop
    rst $38
    ld b, b
    rst $38
    dec sp
    db $fc
    ld hl, sp-$01
    ld sp, hl
    cp $fa
    db $fd
    xor c
    db $f4
    jp Jump_074_617c


    sbc $13
    db $ec
    dec sp
    call nz, $807f
    rst $38
    nop
    sbc l
    ld b, d
    ld a, a
    nop
    ld a, l
    add d
    ld l, a
    sub b
    add hl, hl
    call nc, $906f
    or $88
    and e

jr_074_75bd:
    call c, $f8c6
    ld a, $c0
    ld l, $d0
    ld l, $d0
    dec c
    ldh a, [$31]
    db $fc
    ld a, [$d23c]
    inc l
    ld h, $d9
    ld b, e
    db $fc
    cp [hl]
    ld sp, hl
    ld c, $ff
    rst $00
    cp a
    ld [hl], d
    rst $38
    ld a, l
    rst $38
    ld a, d
    rst $38
    ld b, e
    cp l
    ld d, h
    db $eb
    ld b, e
    cp $c6
    ld sp, hl
    db $db
    db $e4
    sub l
    ld l, e
    jr nc, @-$2f

    jr nc, jr_074_75bd

    db $fd
    ld [c], a
    ld e, $80
    push bc
    nop
    ld h, e
    add b
    ld a, b
    rlca
    jp hl


    rlca
    db $eb
    inc b
    rrca
    ldh a, [$dc]
    ldh [$f8], a
    rst $38
    pop af
    cp $51
    xor [hl]
    add hl, hl
    add $9c
    ld h, a
    add [hl]
    ld a, c
    sbc e
    ldh [$f4], a
    ei
    ccf
    ret nz

    rst $20
    inc e
    ld b, d
    inc a
    ld b, b
    db $fc
    inc b

jr_074_7619:
    ld hl, sp+$78
    add b
    ld l, h
    add b
    inc h
    sbc b
    ld b, b
    cp a

jr_074_7622:
    push af
    ld a, [$faf5]
    add d
    rst $38
    adc [hl]
    rst $38
    ld e, [hl]
    cp a
    ld a, [bc]
    ccf
    dec l
    cp $01
    cp $83
    db $fc
    ld hl, $61de
    sbc [hl]
    xor a
    inc e
    rst $00
    jr c, jr_074_7619

    inc sp
    db $76

jr_074_763f:
    cp b
    adc a
    jr nc, jr_074_7622

    nop
    jp nz, $a00d

    ld e, a
    pop bc
    ld a, [hl]
    add [hl]
    ld a, c
    rrca
    ldh a, [rIE]
    nop

jr_074_7650:
    ld a, $fd
    jr nz, jr_074_7650

    ld bc, $a67e
    ld e, a
    ld sp, hl
    rlca
    and l
    ld e, d
    nop
    rst $38
    sbc b
    rst $38
    add [hl]
    ld a, a
    ccf
    rst $08
    or c
    ld l, a
    rst $08
    jr c, jr_074_763f

    cpl
    ret nz

    ccf
    rst $20
    jr jr_074_76ee

    nop
    ld e, h
    rlca
    inc bc
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    rst $28
    rra
    ld a, b
    inc bc
    adc h
    ld [hl], d
    dec e
    ld [c], a
    add [hl]
    ld a, e
    rst $30
    ld [$c23f], sp
    add hl, sp
    add $98
    ld b, a
    cp l
    ld b, d
    ldh a, [$03]
    ld d, h
    db $eb
    ld e, a
    ldh [rLY], a
    ei
    inc e
    db $e3
    ld d, b
    rst $20
    ld b, $e1
    ld h, [hl]
    ret nz

    db $fc
    db $e3
    db $ec
    di
    xor $f1
    add hl, sp
    rst $20
    and a
    ld sp, hl
    rst $08
    pop af
    pop bc
    rst $38
    push af
    jp hl


    ld a, [hl+]
    pop hl
    rst $38
    ld bc, $e114
    ld l, $d1
    dec h
    ret nc

    ld sp, hl
    nop
    dec d
    rst $28
    dec de
    db $ed
    db $d3
    dec l
    and $0d
    di
    inc c
    ld b, $89
    add $09
    ret z

    rlca
    sub h
    rrca
    ld c, e
    cp a
    xor h
    ld d, e
    ld a, [bc]
    db $fd
    ld h, b
    sbc a
    or $08
    ld a, $c0
    adc $31
    ld d, [hl]
    xor l
    ld b, a
    cp b
    ldh a, [rDIV]
    dec hl
    nop
    sbc a
    ld h, b
    ld l, a
    nop
    ld e, b
    rlca
    rra
    jr nz, jr_074_7734

    and b

jr_074_76ee:
    xor l
    jr jr_074_7739

    nop
    sub b
    ld l, b
    ld a, e
    ldh [$a6], a
    ld [hl], c
    db $eb
    inc d
    ld d, l
    sbc [hl]
    ld [hl+], a
    call z, Call_000_0007
    ld l, e
    sbc [hl]
    rst $28
    ld e, $b9
    ld b, [hl]
    ld e, e
    db $e4
    db $fd
    ldh a, [$f4]
    ei
    ld b, c
    cp $c1
    ld c, $7b
    add h
    dec e
    ld [c], a
    xor a
    ld b, b
    db $fc
    nop
    pop hl
    ld e, $f6
    rrca
    db $fc
    rlca
    ld [hl], $d9
    sub h
    ld a, e
    ld c, e
    db $f4
    cp h
    inc bc
    ld l, l
    add d
    sbc b
    ld h, a
    sub c
    ld l, a
    ld h, $5f
    sub e
    ld l, a
    inc b
    ld hl, sp-$69
    ld l, b

jr_074_7734:
    add $39
    ld l, h
    add c
    db $e3

jr_074_7739:
    inc e
    ld [c], a
    inc e
    rst $38
    nop
    rst $28
    inc de
    adc d
    ld [hl], a
    ld [$c4f7], sp
    ld a, [$fe0c]
    ld c, [hl]
    db $fd
    jp z, Jump_000_19fd

    and $be
    ld b, c
    ld [hl], h
    rst $38
    add c
    ld a, [hl]
    ld [$5df7], sp
    ldh [$cf], a
    ldh a, [rNR31]
    db $e4
    cp $ff
    cp $ff
    and e
    ld e, h
    xor a
    ret nc

    sbc a
    ld h, b
    ld a, a
    ldh [rPCM34], a
    adc b
    and $18
    cp e
    nop
    cp [hl]
    ld bc, $ff04
    add c
    rst $38
    rst $30
    rst $38
    db $fc
    rst $38
    jp c, $feff

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $fd
    ld a, [hl]
    push hl
    ld a, $26
    rst $38
    cp $03
    ld sp, $78c6
    add h
    inc de
    add h
    sub b
    nop
    ld d, b
    nop
    ld b, $80
    rst $00
    db $10
    ld l, e
    sub h
    ld d, [hl]
    cp c
    inc d
    ei
    ld [bc], a
    rst $38
    inc bc
    cp $49
    cp [hl]
    ld bc, $80fe
    rst $38
    ld b, [hl]
    ld sp, hl
    nop
    rst $38
    adc b
    ld a, a
    ld [hl+], a
    db $dd
    jr nz, @+$01

    sub h
    ei
    ld d, b
    rst $38

jr_074_77b4:
    add hl, de
    cp $55
    cp d
    and c
    ld a, [hl]
    and e
    ld a, h
    add c
    ld a, [hl]
    dec a
    and $cf
    or h
    ld b, l
    cp $67
    db $fc
    ld c, e
    db $f4
    ld hl, $40fe
    cp h
    cp e
    call nz, $fb95
    ld a, [hl+]
    ldh [$93], a
    ld l, h
    ld a, [c]
    dec c
    rst $10
    jr nz, jr_074_77b4

    inc h
    ld h, b
    rra
    ld sp, hl
    rlca
    xor e
    inc d
    ld hl, $e81c
    nop
    ld h, l
    nop
    sbc d
    ld h, c
    rst $30
    jr c, jr_074_7832

    cp b
    cpl
    ret nz

    ld [hl], b
    nop
    or c
    ld c, $cb
    ld [hl], $22
    db $fd
    ld b, [hl]
    cp c
    add a
    rst $38
    adc d
    ld [hl], a
    db $d3
    inc a
    inc hl
    or $97
    ld l, b
    jr nz, jr_074_7822

    ld b, d
    db $fc
    db $10
    db $ec
    ld a, [$6301]
    add b
    pop de
    jr nz, jr_074_786d

    or c
    rst $38
    rst $38
    ld [hl], a
    sbc a
    ccf
    rst $18
    ld d, l
    adc a
    ld c, e
    add a
    db $f4
    rst $38
    ld hl, $c7fe
    sbc a
    ld e, a
    rst $38

jr_074_7822:
    ld a, a
    rst $38
    dec de
    rst $38
    ld e, a
    cp a
    ccf
    adc a
    and a
    rst $18
    ld a, [c]
    rst $38
    ld a, [c]
    db $fd
    ld e, a
    db $fc

jr_074_7832:
    ld d, h
    adc a
    xor d
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    cp a
    jp nz, $be8c

    nop
    ei
    inc b
    ld a, a
    nop
    ld c, a
    ldh a, [rBGP]
    ld hl, sp-$7a
    ld hl, sp+$26
    ret nz

    dec d
    ldh [$8c], a
    nop
    xor $00
    add hl, de
    and $9f
    ld h, b
    db $eb
    nop
    db $fc
    inc bc
    sbc c
    db $76
    ld l, d
    or l
    ld a, d
    add l
    dec de
    db $e4
    ld [bc], a
    db $fd
    add hl, sp
    add $01
    rst $38
    ld [bc], a
    rst $38
    cp a

jr_074_786d:
    rst $38
    adc d
    rst $38
    adc c
    ld [hl], a
    ld h, b
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    ldh a, [rHDMA3]
    xor b
    dec a
    jp nz, Jump_000_26d9

    ld b, b
    ccf
    ld c, [hl]
    ccf
    ld b, h
    ccf
    jr z, jr_074_78af

    db $10
    ld l, a
    ld e, $f1
    sbc a
    ld hl, sp+$18
    rst $38
    adc b
    rst $38
    add hl, de
    rst $38
    ld [bc], a
    rst $38
    inc hl
    rst $38
    ld hl, sp+$07
    ld [hl], e
    adc a
    db $e4
    rra
    inc l
    rst $18
    cp h
    rst $38
    sbc c
    rst $38
    ld sp, hl
    rst $38
    ccf

jr_074_78af:
    rst $38
    and e
    ld a, a
    ld e, $ff
    inc bc
    rst $38
    inc bc

jr_074_78b7:
    ei
    ld bc, $c4fb
    dec sp
    ld a, h

jr_074_78bd:
    inc de
    ld e, h
    inc hl
    cp h
    inc bc
    ld [c], a
    add hl, bc
    jp c, $c701

    jr nc, jr_074_7923

    dec h
    ld l, e
    inc d
    adc $00
    push bc
    cp $5f
    jr nz, @+$01

    nop
    cp $01
    adc $11
    ld a, a
    add b
    dec bc
    db $e4
    ld a, [hl]
    add b
    and d
    ld [hl], b
    add hl, bc
    cp $13
    ld hl, sp-$65
    ld h, b
    cp e
    ld b, b
    ld e, e
    and b
    ld e, e
    add h
    sbc d
    rlca
    jr jr_074_78b7

    ld h, c
    inc e
    db $e3
    inc a
    jr jr_074_78b7

    nop
    nop
    jr nc, jr_074_78bd

    ld e, $e0
    or [hl]
    ld b, b
    ld [hl], a

Jump_074_78ff:
    adc b
    ld l, l
    sbc a
    ld [hl], c
    ccf
    ld a, l
    ccf
    rst $38
    db $fc
    db $fd
    rst $38
    xor $ff
    db $10
    rst $28
    sbc a
    ld h, b
    cp l
    ld b, d
    ld l, a
    di
    xor $fd
    jp $93fc


    db $ec
    rra
    ldh [rOCPS], a
    push af
    reti


    and $e2
    nop
    nop

jr_074_7923:
    or $ac
    ld a, [c]
    jp nz, $c9f0

    or b
    dec de
    ldh [$0c], a
    ldh a, [$9e]
    ld h, b
    ld a, e
    add h
    ld sp, $0cce
    ei
    sub d
    rst $28
    ldh [rIE], a
    jp $c93f


    scf
    add l
    ld a, e
    dec b
    ei
    add a
    ld sp, hl
    adc $f9
    nop
    rst $38
    ld b, b
    cp a
    sub b
    ld l, a
    ld c, $ff
    rst $30
    rrca
    rst $38
    nop
    ld c, h
    nop
    cp $00
    cp $01
    ldh a, [rIF]
    rst $20
    rst $38
    rra
    rst $38
    ccf
    rst $38

Call_074_7960:
    ret nc

    cpl
    ld l, b
    rla
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    add d
    ld a, l
    jr nz, @-$1f

    ld c, a
    or a
    add b
    ld a, a
    nop
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_074_797d:
    rst $38
    dec l
    rst $38
    ld [hl], c
    rrca
    db $eb
    rra
    ld [$06ff], sp
    ei
    ld d, e
    rst $38
    or e
    rst $38
    inc sp
    rst $38
    ld [bc], a
    rst $38
    cp l
    ld b, d
    db $fd
    ld [bc], a
    cp $03
    ld hl, sp+$07
    db $f4
    dec bc
    db $ec
    inc bc
    ld a, a
    add b
    sbc l
    ld h, d
    dec a
    jp nz, $936c

    and h
    ld e, e
    add l
    ld a, d
    db $f4
    dec bc
    ld a, l
    add d
    ld h, h
    sbc e
    ld [hl-], a
    rst $08
    ld a, b
    add a
    ld [hl], b
    adc a
    jr c, jr_074_797d

    add hl, de
    and $41
    cp [hl]
    rlca
    ld hl, sp-$5a
    ld e, c
    db $e4
    dec de
    ld a, [de]
    rst $38
    add [hl]
    ld a, e
    ld [hl], c
    ld [$fb4c], a
    ld b, e
    db $fc
    xor d
    ld d, l
    adc e
    nop
    ld de, $ecee
    rst $30
    inc e
    rst $20
    ld [$04d5], a
    ei
    ld hl, $30ff
    rst $38
    inc d
    db $e3
    ldh a, [rTAC]
    db $10
    rst $38
    sub d
    rst $28
    ld [hl], b
    adc a
    daa
    sbc $31
    adc $06
    rst $38
    ld e, a
    xor a
    cp $0f
    ld [hl], $09
    adc [hl]
    ld h, c
    ld a, [hl]
    nop
    ei
    inc b
    inc hl
    ld c, h
    rst $08
    ld hl, $611e
    add h
    ld e, e
    sbc a
    ldh [$84], a
    ld b, e
    add e
    call nz, $01f2
    ld d, b
    add b
    or $00
    inc [hl]
    ld b, d
    add e
    nop
    ld hl, sp+$0f
    xor $11
    cp h
    jp $cd32


    cp $01
    ld bc, $90ff
    rst $38
    jp hl


    or $07
    ld hl, sp-$51
    ret nc

    ccf
    ret nz

    inc bc
    nop
    reti


    ld h, $c5
    ld a, $d9
    ld l, $44
    adc e
    nop
    rrca
    ld [hl-], a
    rrca
    ld [hl+], a
    rra
    sbc b
    rlca
    sub l
    ld h, d
    xor $30
    ld a, d
    add c
    pop bc
    nop
    rst $00
    ldh [rNR41], a
    rst $08
    dec c
    rst $38
    ccf
    rst $38
    cp [hl]
    ld a, a
    ld a, $ff
    ld a, [de]
    db $fd
    ld h, h
    sub e
    add c
    nop
    inc b
    nop
    rra
    nop
    rst $38
    nop
    dec bc
    ldh a, [$e3]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    db $10
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    jp nc, Jump_000_093f

    rst $38
    ld bc, $e3fe
    cp h
    ld e, e
    db $e4
    rra
    ldh [$e0], a
    rst $18
    nop
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    adc h
    rst $38
    sbc $21
    nop
    rst $38
    ld c, d
    cp a
    rlca
    rst $38
    db $76
    rst $38
    add h
    rst $38
    ld h, d
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld a, [bc]
    rst $38
    ld [de], a
    rst $28
    adc b
    rst $38
    ldh [rIE], a
    cp b
    rst $38
    db $10
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld l, c
    cp $e0
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld bc, $00fe
    rst $38
    dec c
    cp $23
    call c, $fa05
    ccf
    ret nz

    swap h
    db $e4

jr_074_7ab9:
    dec de
    ld [de], a
    db $ed
    sbc b
    ld h, a
    jp c, $0225

    rst $38
    cp e
    ld b, a
    ld c, b
    or a
    ld [hl], l
    adc [hl]
    jr jr_074_7ab9

    ld [hl], c
    xor $f7
    ld [$b649], sp
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    pop de
    rst $38
    ld [c], a
    db $fd
    add b
    rst $38
    ldh a, [rIE]
    ld l, b
    rst $30
    add a
    rst $38
    inc hl
    rst $38
    jp $433f


    rst $38
    ld sp, $a9cf
    ld d, a
    add hl, de
    rst $38
    add sp, -$01

Jump_074_7af0:
    add a
    ld a, b
    xor $00
    rst $30
    nop
    cp a
    nop
    pop de
    ld c, $a4
    ret c

    push af
    ld c, $87
    ld hl, sp-$14
    inc de
    add b
    ld a, a
    ld b, e
    db $fc
    ld d, $e1
    db $fd
    ld [bc], a
    sbc h
    ld h, e
    ld l, h
    ld [de], a
    ld l, $00
    ld a, b
    add a
    xor e
    call c, $fc83
    cp a
    ld b, a
    dec b
    ei
    add a
    ld hl, sp+$62
    db $fd
    pop bc
    ld a, $94
    jr c, jr_074_7ba2

    add b
    dec bc
    ld [hl], a
    ld h, l
    ei
    ld b, b
    rst $38
    db $e4
    ld a, e
    cpl
    ld a, a
    ccf
    rst $38
    db $d3
    ccf
    ld a, l
    add e
    ld a, a
    add b
    ld a, l
    add b
    ei
    nop
    call z, Call_000_1103
    xor $3f
    ret nz

    rst $18
    jr nz, jr_074_7ba2

    ldh [$ef], a

jr_074_7b45:
    ld [hl], b
    pop bc
    nop
    sub c
    nop
    db $eb
    db $10
    ei
    nop
    cp e
    nop
    add h
    nop
    rlca
    nop
    cp [hl]
    ld b, b
    dec a
    jp nz, $e11e

    and b
    rst $38
    and d
    rst $38
    rst $38
    rst $38
    ld h, l
    add b
    cpl
    ldh a, [$f3]
    db $fc
    ld a, [$fff5]
    ld hl, sp+$02
    db $fc
    ccf
    ret nz

    ldh a, [rIF]
    cp $00
    cp $01
    jr nc, jr_074_7b45

    ld c, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    sub h
    ei
    pop hl
    ld e, $10
    rst $38
    ld l, a
    rst $38
    ld h, b
    rst $38
    ld b, [hl]
    rst $38
    call $daff
    rst $38
    rst $28
    rst $38
    dec c
    cp $01
    cp $6b
    db $fc
    ld d, c
    cp $20
    rst $38
    ld a, e
    rst $38
    nop
    rst $38
    ld bc, $40fe
    rst $38
    cp l
    ld b, d

jr_074_7ba2:
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, l
    add d

jr_074_7ba8:
    pop af
    ld c, $fb
    inc b
    ei
    inc b
    rst $30
    ld [$5fa4], sp
    call z, $a433
    ld e, e
    ld a, [c]
    dec c
    dec de
    db $e4
    ld a, [de]
    push hl
    db $fc
    inc bc
    add e
    db $fc
    db $fc
    rst $38
    ld b, d
    db $fd
    or e
    call z, $04fb
    ld h, [hl]
    sbc b
    ld b, $f9
    rrca
    ldh a, [$d6]
    inc l
    jr nz, @+$01

    db $10
    rst $28
    jp nz, $a03f

    ld e, a
    ld b, $f9
    xor a
    ld d, b
    db $e4
    dec de
    ld c, c
    or $c3
    rst $38
    ld l, c
    cp $b1
    cp $30
    rst $38
    ld [hl-], a
    rst $38
    sbc h
    db $e3
    push de
    xor $8c
    ld a, a
    ld h, e
    sbc a
    add d
    db $fd
    or c
    ld c, [hl]
    dec e
    xor $cd
    cp $d8
    rst $30
    inc sp
    call z, $ddba
    rst $10
    jr c, jr_074_7ba8

    ld b, d
    db $ed
    nop
    xor $11
    call $bc72
    ld [hl], b
    ld a, [$5101]
    jr nc, @-$02

    ld a, e
    rlca
    ld hl, sp-$53
    ld a, e
    add l
    ei
    rst $30
    adc e
    ld [c], a
    dec e
    ld a, [hl]
    add c
    add sp, $17
    ret nz

    ld a, e
    and [hl]
    ld a, c
    jp nz, $dab9

    push hl
    jp nz, $d9fd

    or $8f
    rst $30
    rst $20
    rst $08
    adc d
    db $dd
    ld b, d
    sbc l

Jump_074_7c34:
    dec bc
    cp $8c
    ld l, [hl]
    adc $00
    ld a, [hl-]
    call nz, $877a
    inc a
    inc bc
    nop
    rst $38
    ld b, a
    sbc a
    dec c
    rst $18
    ld l, a
    sbc a
    adc a
    ld c, a
    ld c, c
    add a
    add hl, de
    ret nz

    ld [c], a
    inc e
    nop
    nop
    rrca
    nop
    daa
    nop
    ldh a, [rP1]
    call c, $a800
    rla
    sbc c
    ld a, a
    ld e, c
    cp a
    db $ec
    rra
    ldh a, [rIF]
    ld a, c
    rst $00
    ld [bc], a
    db $fd
    ccf
    ret nz

    ld [$fc10], a
    nop
    ld a, a
    add b
    db $ed
    nop
    ld c, c
    or b
    rlca
    ld hl, sp-$04
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld a, a
    add b
    ld e, e
    db $e4
    ld c, a
    ldh a, [$dc]
    ldh [rSC], a
    ldh [$a3], a
    ret nz

    or a
    ret nz

    db $fc
    inc bc
    ld [hl], h
    adc e
    or $09
    ld l, d
    sub l
    ld e, $e1
    rra
    ldh [$9d], a
    ld [c], a
    ld c, $f1
    nop
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    ld b, $fb
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, $ff
    nop
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld a, [c]
    rst $38
    call nz, $e4ff
    rst $38
    di
    rst $38
    db $fd
    rst $38
    db $dd
    rst $38
    or a
    rst $38
    sub h
    ld a, a
    inc l
    rst $38
    sub a
    rst $38
    ld c, [hl]
    rst $38
    ld [de], a
    rst $28
    ret nz

    rra
    ld a, [hl]
    add c
    ld a, [$1c00]
    inc bc
    rst $38
    nop
    ret


    ld [hl], a
    inc de
    rst $38
    ldh [$3f], a
    ret nz

    ccf
    ldh [$1f], a
    db $e4
    dec de
    call c, $397f
    and $a8
    ld e, a
    ld a, [hl-]
    rst $00
    di
    inc e
    sbc d
    ld [hl], h
    adc $33
    and b
    ld b, a
    ld b, d
    db $ec
    cpl
    call c, $6cd3
    jp z, $e224

    dec d
    adc [hl]
    ld [hl], c
    ld c, h
    di
    cp b
    ld b, a
    ld d, b
    cp [hl]
    or c
    ld b, [hl]
    add sp, $07
    rlca
    ld hl, sp-$1f
    ld a, $06
    ld sp, hl
    ld e, d
    and l
    sbc e
    ld h, a
    jp nc, $312f

    ld l, [hl]
    rla
    ei
    add l
    ld [hl], d
    db $10
    and $6e
    sub b
    ld [$a0df], sp
    ld e, a
    scf
    adc $4d
    add d
    ld [hl], l
    adc d
    sub h
    db $eb
    ld l, $f1
    add hl, hl
    ld a, [hl]
    rst $00
    ccf
    rst $18
    ccf
    ld [hl], a
    adc a
    daa
    rst $00
    ld l, h
    di
    cpl
    ld hl, sp-$80
    ld a, h
    ld a, [hl]
    ld bc, $3f0d

Jump_074_7d3c:
    xor a
    ld a, a
    jp hl


    rst $18
    adc h
    nop
    rlc h
    ld h, d
    sub a
    ld c, [hl]
    or e
    ld b, c
    cp b
    add sp, $11
    or d
    ld bc, $3841
    rrca
    nop
    rra
    ldh [rIF], a
    ldh a, [$e0]
    rra
    ld l, a
    rra
    ld b, h
    cp a
    add b
    rst $38
    and b
    rst $38
    ld b, e
    rst $38
    ld e, $e1
    reti


    and $6a
    rst $30

jr_074_7d68:
    dec c
    di
    ld c, h
    inc sp
    inc a
    inc bc
    ret z

    scf
    sub b
    nop
    ret nz

    nop
    sub c
    ld h, b
    jr z, jr_074_7d68

    db $76
    ld hl, sp-$06
    db $fd
    ld [$00f0], sp
    nop
    ld a, a
    add b
    adc $31
    rlca
    ld hl, sp+$21
    cp $38
    rst $38
    jr z, @+$01

    add c
    rst $38
    dec sp
    rst $08
    ld d, a
    adc b
    ld b, d
    cp c
    inc b
    ei
    inc [hl]
    db $db
    ld b, $f9
    ld a, [de]
    db $fd
    ld [$00ff], sp

jr_074_7d9f:
    rst $38
    ld [$0cff], sp
    rst $38
    jr nc, @+$01

    jr c, @+$01

    ld c, b
    rst $38
    add b
    ld a, a
    ld bc, $20ff
    rst $38
    sbc a
    ld h, b
    xor e
    ld d, h

jr_074_7db4:
    dec l
    jp nc, Jump_074_6e91

    add hl, bc
    or $58
    and a
    and b
    ld e, a
    jr z, jr_074_7d9f

    db $fd
    rst $38
    or b
    rst $38
    inc b
    cp $b1
    ld c, [hl]
    inc sp
    call z, Call_000_0f10
    ret nc

    rrca
    ld hl, sp+$07
    sub d
    ld l, h
    inc c
    di
    jr c, @+$01

    sub c
    ld a, a
    call nz, Call_000_0b39
    db $f4
    sub h
    ei
    inc e
    db $e3
    xor h
    inc de
    ldh [$1f], a
    ld l, c
    sbc a
    ld b, l
    rst $38
    db $ec

jr_074_7de9:
    rla
    ld a, l
    rlca
    db $d3
    inc l
    push af
    ld c, $b8
    ld b, a
    add a
    ld a, b
    ld d, [hl]
    ld a, b
    ld hl, sp+$07
    db $10
    rst $28
    ld b, [hl]
    cp a
    or [hl]
    ld bc, $02d5
    sbc h
    pop hl
    ld l, a
    pop af
    db $db
    db $e4
    ld a, [c]
    rrca
    jr nc, jr_074_7de9

    ld a, $c1
    ld [hl-], a
    add c
    push hl
    ld [de], a
    rst $30
    ld [$dc23], sp
    rst $00
    jr c, jr_074_7e2c

    jr z, jr_074_7db4

    inc b
    ld b, h
    rst $28
    ld h, h
    rst $38
    adc [hl]
    db $fd
    sbc e
    ld a, l
    jp hl


    ld b, $80
    ld a, [hl]
    sub a
    ld a, a
    cp l
    ld a, a
    rst $38
    rra

jr_074_7e2c:
    ld a, a
    add a
    and l
    sbc $66
    add b
    ld [hl], $00
    add sp, $10
    jp hl


    db $10
    ld [hl], b
    adc b
    ld h, $c0
    ld [hl], $c1
    ld l, a
    or b
    di
    inc c
    db $fc
    rra
    rst $18
    daa
    or c
    ld c, [hl]
    dec de
    db $f4
    rst $18
    ld h, b
    db $dd
    ld [c], a
    add e
    ret nz

    rst $08
    nop
    add a
    nop
    ld hl, sp+$00
    dec bc
    db $f4
    add d
    db $fd
    inc l
    db $d3
    ld de, $68fe
    sbc a
    sbc [hl]
    pop hl
    dec l
    ret nc

    sbc b
    ld h, h
    ld sp, hl
    ld b, $3a
    rst $00
    adc a
    di
    and b
    rst $18
    ld h, $ff
    add hl, hl
    ld e, $15
    ld [$08b7], sp
    ld [c], a
    dec e
    ld [hl], b
    rrca
    and l
    ld a, [hl]
    ld h, $00
    nop
    nop
    dec h
    jp nz, $8364

    pop af
    nop
    jp nz, $db01

    daa
    inc de
    rst $38
    ld c, e
    cp a
    sub a
    rst $38
    ld e, a
    and e
    ld c, b
    or a
    ld bc, $25ff
    db $db
    adc l
    ld [hl], e
    rrca
    di
    rrca
    di
    inc bc
    rst $30
    ld d, c
    rst $20
    ld a, [bc]
    rst $20
    ld e, $e7
    rlca
    rst $38
    ld b, h
    cp a
    ld l, d
    sbc l
    ld [hl], d
    adc l
    ld a, [hl+]
    db $dd
    dec hl
    call $cfb8
    ld a, c
    adc a
    cp c
    rst $08
    add hl, hl
    rst $08
    sub c
    rst $28
    add c
    rst $38
    add c
    rst $38
    sub c
    rst $28
    pop de
    rst $28
    pop bc
    rst $38
    cp c
    rst $18
    rra
    ei
    rst $30
    cp e
    ld c, e
    or a
    sub e
    ld l, a
    dec bc
    rst $20
    cp a
    rst $08
    dec c
    rst $18
    sub b
    rrca
    ld l, e
    sbc l
    add c
    ld l, a
    sub b
    rst $28
    inc e
    rst $20
    ccf
    rst $20
    ld de, $49ef
    or a
    ld [hl], c
    xor a
    and e
    ld e, a
    dec d
    ei
    ld b, $ff
    ld d, [hl]
    ld l, c
    ld a, [de]
    push hl
    sub e
    ld l, h
    ld [hl], b
    rrca
    add b
    ld a, [hl]
    ld b, b
    cp a
    cp l
    inc bc
    jp c, $973d

    ld a, a
    ld l, c
    rst $00
    ldh a, [$cf]
    ld d, a

jr_074_7f05:
    xor a
    ld sp, $04ff
    ei
    ld a, b
    cp a
    ld h, d
    sbc a
    ld a, c
    rst $20
    ld hl, sp+$17
    dec sp
    ld bc, $f10b
    sbc e
    ldh [rBCPD], a
    or $97
    db $eb
    jr jr_074_7f05

    sub e
    db $fc
    call nz, $9080
    ld l, a
    db $fd
    ld a, [hl]
    inc e
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $20
    rst $38
    add b
    dec c
    ld a, [c]
    sub b
    ld h, b
    jr @+$72

    add d
    jr c, jr_074_7f4f

    nop
    sub b
    nop
    rst $18
    ld [bc], a
    ld a, $c1
    sbc c
    ld b, [hl]
    or b
    rrca
    sbc l
    ld [bc], a

jr_074_7f44:
    ld a, [c]
    pop bc
    adc e
    ld [hl], b
    xor h
    inc de
    push af
    ld a, [bc]
    xor [hl]
    ld d, l
    db $eb

jr_074_7f4f:
    ld [hl], h
    di
    nop
    pop de
    nop
    ret nz

    nop
    nop
    nop
    jr nz, @-$3e

    cp $e0
    ld bc, $06fe
    rst $38
    add sp, $17
    db $db
    ccf
    rra
    ccf
    scf
    rrca
    cp h
    inc bc
    db $fc
    nop
    sub $20
    add hl, sp
    nop
    push hl
    jr jr_074_7f44

    inc c
    rra
    ldh [$ef], a
    ret nz

    rst $00
    add b
    ld b, l
    add d
    inc c
    inc bc
    ld l, d
    dec b
    ld [$2607], sp
    inc bc
    sbc $23
    reti


    daa
    ld [hl], e
    rst $28
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld [hl+], a
    db $fd
    sbc h
    ld h, e
    inc d
    db $e3
    ld bc, $7ef2
    add c
    ld h, l
    sbc d
    ld b, l
    cp d
    inc c
    di
    ld c, e
    or a
    add h
    add a
    dec c
    ld c, $0a
    dec c
    dec bc
    inc c
    rrca
    inc c
    dec bc
    inc c
    dec bc
    inc c
    add hl, bc
    rrca
    add hl, de
    rrca
    ld a, d
    rrca
    cp d
    rrca
    ld a, [hl-]
    rrca
    inc l
    rrca
    xor h
    rrca
    sbc h
    rrca
    adc h
    rrca
    inc a
    rrca
    cp d
    rrca
    inc c
    rrca
    inc a
    rrca
    jr c, jr_074_7fd9

    ld l, b
    rrca
    ld a, h
    rrca
    ld a, c
    rrca
    ld a, [hl-]
    rrca
    inc [hl]
    rrca
    sbc [hl]
    rrca
    cp $0f
    cp l

jr_074_7fd9:
    rrca
    rst $38
    rrca
    ld a, a
    rrca
    cp a
    rrca
    ld c, a
    cp a
    rst $08
    ccf
    xor a
    ld e, a
    ld c, a
    rst $38
    ld c, a
    cp a
    ld l, a
    rst $38
    daa
    rst $38
    rst $30
    ccf
    sbc e
    ld a, a
    db $ed
    rra
    inc b
    rst $38
    adc b
    ld a, a
    ld [hl], b
    rrca
    xor $13
    jr nc, @+$05

    or $09
