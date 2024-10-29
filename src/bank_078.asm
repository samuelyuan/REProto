SECTION "ROM Bank $078", ROMX[$4000], BANK[$78]

    or h
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    or $ff
    ld d, [hl]
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add e
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    ld bc, $03fe
    db $fc
    ld [bc], a
    db $fd
    ld bc, $eafe
    db $10
    ld [$cf10], a
    db $10
    rst $00
    db $10
    rst $08
    db $10
    rst $08
    db $10

jr_078_404c:
    rst $08
    db $10
    rst $08
    stop
    rst $38
    nop
    rst $38

jr_078_4054:
    rst $38
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld d, b
    rst $38
    ld d, d
    db $ed
    ld bc, $40fe
    rst $38
    ld b, c
    cp $40
    rst $38
    ld b, c
    cp $40
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    cp a
    ld b, b
    xor e
    ld d, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rst $28
    db $10
    rst $08
    jr nc, jr_078_404c

    inc [hl]
    rst $28
    db $10
    ld c, a
    or b
    rst $08
    jr nc, jr_078_4054

    inc [hl]
    adc a
    ld [hl], b
    rrca
    ldh a, [rSCX]
    cp h
    ld c, e
    or h
    ld a, [bc]
    push af
    ld b, b
    cp a
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
    ld [bc], a
    db $fd
    inc bc
    db $fc
    nop
    rst $38
    adc b
    rst $38
    sub h
    rst $38
    sub d
    rst $38
    or h
    rst $38
    or h
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38

jr_078_40c4:
    db $fc
    rst $38

jr_078_40c6:
    inc bc
    db $fc

jr_078_40c8:
    inc bc
    db $fc

jr_078_40ca:
    inc bc
    db $fc
    dec sp
    call nz, $807f
    jp $a0fe


    rst $38
    adc b
    rst $38
    ld hl, $40ff
    rst $38
    ld b, b
    rst $38

jr_078_40dc:
    ld c, b
    rst $30
    inc b
    ei
    ld bc, $dffe
    jr nz, jr_078_40c4

    jr nz, jr_078_40c6

    jr nz, jr_078_40c8

    jr nz, jr_078_40ca

    jr nz, jr_078_40dc

    db $10
    rst $38
    db $10
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [$08ff], sp
    rst $38
    add hl, bc
    cp $08

Jump_078_40ff:
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    ld b, $fd

Jump_078_4108:
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld [$00ff], sp
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
    ld [$86f7], sp
    ld sp, hl
    add b
    rst $38
    add h
    ei
    add l
    ld a, [$f986]
    rrca
    ldh a, [rTMA]
    ld sp, hl
    rlca
    ld hl, sp+$46
    ld sp, hl
    ld a, [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp a
    ld b, b
    cp [hl]
    ld b, c
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld h, d
    sbc l
    add c
    ld a, [hl]
    ld [bc], a
    db $fd
    or c
    ld c, [hl]
    ld d, c
    xor [hl]
    and c
    ld e, [hl]
    ld de, $00ee
    rst $38
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$38ff], sp
    rst $08
    nop
    rst $38
    nop
    rst $38
    ld bc, $08ff
    rst $38
    ld [$09ff], sp
    rst $38
    add hl, bc
    rst $38
    or $09
    or $09
    or $09
    or $09
    or $09
    sub [hl]
    ld l, c
    or $09
    or [hl]
    ld c, c
    and a
    ld e, c
    rlca
    ld sp, hl
    add l
    ld a, e
    inc de
    db $ed
    ld bc, $05ff
    ei
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
    ld bc, $43ff
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld e, a
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
    db $ec
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld b, $ff
    add d
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
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
    ld [bc], a
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
    add b

Jump_078_41ff:
    ld a, a
    sub b
    ld l, a
    ret nc

    cpl
    ld b, d
    cp a
    and d
    ld e, a
    sub b
    ld l, a
    ld b, b
    cp a
    and b
    ld e, a
    db $10
    rst $28
    ld b, b
    cp a
    nop
    rst $38
    inc h
    db $db
    ld h, b
    sbc a
    ld [hl-], a
    call $817c
    ld d, [hl]
    add c
    dec sp
    ret nz

    ld [hl], h
    add e
    dec b
    ld a, [$8071]
    xor a
    nop
    cp $00
    ld [hl], a
    add b
    ld a, [hl]
    add b
    ld a, d
    add b
    cpl
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    sbc a
    ld h, b
    rst $28
    db $10
    cp a
    ld b, b
    ld a, e
    inc b
    ld a, d
    inc b
    ld e, c
    inc b
    ld l, a
    nop
    ld c, a
    nop
    ld l, a
    nop
    ld h, a
    ld [$0847], sp
    rst $30
    ld [$c837], sp
    or a
    ret z

    or a
    ret z

    and a
    ret z

    pop hl
    adc b
    or e
    ret z

    or e
    ret z

    ret z

    add b
    ret z

    add b
    adc b
    add b
    adc b
    add b
    adc b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    sub c
    add b
    sub b
    add b
    sub b
    add b
    sub b
    add b
    sub b
    add b
    sub b
    add b
    sub b
    add b
    ret nc

    add b
    ret nc

    add b
    sub c
    add b
    pop de
    add b
    cp a
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    xor a
    add b
    rst $38
    add b
    rst $08
    and b
    rst $08
    and b
    sbc $a1
    rst $18
    and b
    rst $38
    add b
    ei
    add b
    rst $18
    and b
    rst $10
    xor b
    db $dd
    and d
    rst $38
    add d
    db $dd
    and d
    db $dd
    and d
    sbc h
    db $e3
    adc [hl]
    di
    adc d
    rst $30
    adc b
    rst $30
    sub e
    rst $38
    add [hl]
    ld sp, hl
    cp $81
    pop de
    xor [hl]
    sbc c
    and $7d
    add d
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    rst $38
    ld a, e
    rst $38
    ld e, d
    rst $38
    jr @+$01

    ld [$08ff], sp
    rst $38
    nop
    rst $38
    inc b
    rst $38
    sbc h
    rst $38
    inc b

jr_078_42e3:
    rst $38
    jp nz, Jump_000_02ff

    rst $38
    nop
    rst $38
    ld bc, $40ff
    rst $38
    nop
    rst $38
    inc b
    ei
    inc h
    ei
    ld [bc], a
    db $fd
    ld [de], a

jr_078_42f7:
    db $fd
    db $10
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop

jr_078_4301:
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld d, c
    xor [hl]
    ld h, c
    sbc [hl]
    ld [hl], l
    adc d
    cp b
    ld b, a
    jr z, jr_078_42e3

    ld b, b
    add c
    add b

jr_078_4313:
    ld bc, $c004
    inc h
    ld b, b
    add b
    ld b, b
    add c
    jr nz, jr_078_4367

    and b
    ld bc, $0aa0
    ldh [$c0], a
    nop
    jp nc, $9500

    nop
    db $e4

jr_078_4329:
    nop
    ret nz

    nop
    and b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ret nc

    jr nz, jr_078_42f7

    jr nc, jr_078_4301

    jr nc, jr_078_4313

    jr nz, @-$16

    db $10
    call nz, $ef38
    db $10
    rst $18
    jr nz, @-$21

    jr nz, @-$20

    jr nz, @-$21

    jr nz, @-$29

    jr nz, jr_078_4329

    ld hl, $21d4
    call nc, $dd21
    ld hl, $01fe
    rst $38
    ld bc, $01ff
    ld a, h
    inc bc
    dec a
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    dec a
    ld b, e
    cp l
    ld b, e
    cp [hl]

jr_078_4367:
    ld b, e
    xor [hl]
    ld d, e
    cp d
    ld b, a
    cp [hl]
    ld b, e
    cp d
    ld b, a
    inc b
    inc bc
    add [hl]
    ld bc, $0394
    add l
    inc bc
    add l
    inc bc
    add e
    dec b
    add d
    dec b
    add d
    dec b
    adc e
    dec b
    adc d
    dec b
    adc b
    rlca
    adc h
    inc bc
    adc b
    rlca
    sbc d
    rlca
    ld [de], a
    rrca
    or $0b
    ld a, [bc]
    rlca
    ld [$1c07], sp
    inc bc
    and $19
    rst $30
    ld [$0cf3], sp
    db $fd
    ld d, $ff
    ld d, $e4
    rra
    db $fc
    rla
    push hl
    rra
    and $1f
    call nz, $943f
    ld l, a
    sub b
    ld l, a
    ld d, b
    xor a
    inc bc
    cp $50
    rst $28
    ret z

    rst $38
    ld a, b
    rst $28
    ld c, b
    rst $38
    ld [$e2ff], sp
    dec a
    or [hl]
    ld e, l
    inc h
    rst $18
    rst $38
    dec c
    or $0d
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld [hl], e
    rst $38
    ld [hl-], a
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [hl+], a
    rst $18
    ld [hl+], a
    rst $18
    db $10
    rst $28
    ld bc, $1aff
    push hl
    dec a
    jp nz, $e05f

    ld e, $e1
    ccf
    ldh [rSB], a
    cp $1f
    ldh a, [rTAC]
    ld hl, sp+$0f
    ld hl, sp-$05
    inc c
    ld d, c
    xor [hl]
    ld sp, hl
    ld b, $f8
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    cp [hl]
    ld b, c
    xor $01
    or $01
    rst $30
    nop
    cp b
    nop
    or c
    nop
    ld a, h
    nop
    ld a, e
    nop
    jr c, jr_078_4420

jr_078_4420:
    ld a, $00
    ccf
    nop
    sbc a
    jr nz, jr_078_4445

    nop
    inc de
    nop
    dec b
    db $10
    dec b
    nop
    ld [$0600], sp
    ld [$0004], sp
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld b, a
    cp b
    ld d, a
    xor b
    ld [hl], a

jr_078_4445:
    xor b
    and $39
    ld h, a
    cp c
    add [hl]
    ld a, c
    adc [hl]
    ld a, c
    add [hl]
    ld a, c
    rst $08
    jr nc, @-$6f

    ld [hl], b
    xor a
    ld d, b
    adc l
    ld [hl], d
    adc l
    ld [hl], d
    adc l
    ld [hl], d
    dec c
    ld a, [c]
    cpl
    ret nc

    ld a, a
    add b
    ld e, a
    and b
    ld a, e
    add h
    ld a, e
    add h
    ld e, e
    and h
    ld e, a
    and b
    rst $18
    jr nz, jr_078_44ea

    and h
    cp $21
    or [hl]
    ld c, c
    ld a, $c1
    or [hl]
    ld c, c
    or [hl]
    ld c, c
    ld a, $c1
    cp a
    ld b, b
    ccf

Jump_078_447f:
    ret nz

    dec a
    jp nz, $c23d

    ld a, h
    add e
    ld l, b
    sub a
    ld l, e
    sub h
    ld l, l
    sub d

jr_078_448c:
    ld a, a
    add b
    ei
    add h
    dec sp
    call nz, $a45b
    ld e, e
    and h
    ld a, d
    add l
    ld a, a
    add b
    rst $38
    nop
    or $09
    or $09
    rst $30
    ld [$807f], sp
    ld l, l
    add d
    scf
    ret nz

    sbc e
    ld h, b
    ld e, a
    and b
    inc c
    ldh a, [rNR52]
    ret c

    ld h, e

jr_078_44b1:
    sbc h
    inc hl
    call c, $9c63
    ld h, [hl]
    sbc l
    ld d, d
    xor l
    ld b, d
    cp l
    ld e, [hl]
    xor c
    sbc $29
    ld b, [hl]
    cp c
    sub $29
    add [hl]
    ld a, c
    adc a
    ld [hl], c
    ld c, $f1
    adc h
    ld [hl], e
    call Call_000_1d72
    ld a, [c]
    di
    rst $38
    ld [hl], e
    rst $38
    ld l, [hl]
    rst $38
    daa
    rst $38
    ld c, $ff
    ld b, $ff
    add h
    ld a, a
    push bc
    ccf
    rst $00
    ccf
    db $e3
    rra
    db $e3
    rra
    pop af
    rrca
    pop af
    rrca

jr_078_44ea:
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    scf
    set 7, c
    add a
    ccf
    pop bc
    cp $41
    rst $18
    ld h, b
    rra
    ldh [rIE], a
    jr nz, jr_078_448c

    ld [hl], b
    sbc a
    ld [hl], b
    add a
    ld a, b
    add a
    ld a, b
    jp $c33c


    inc a
    jp $c03c


    ld a, $a1
    ld e, [hl]
    ld de, $94ee
    ld l, e
    ld e, l
    and d
    ld a, a
    add b
    ld e, [hl]
    and c
    cp a
    ld b, b
    ccf
    ld b, b
    sbc a
    ld h, b
    rra
    jr nz, jr_078_44b1

    jr nc, @-$6f

    db $10
    rrca
    db $10
    rra
    nop

jr_078_452a:
    rlca
    ld [$0807], sp
    inc bc
    inc b
    ld bc, $0504
    ld [bc], a
    pop bc
    ld [bc], a
    ld bc, $0002
    ld bc, $0100
    ld bc, $0000
    nop
    ld l, l
    sub d
    ld l, l
    sub d
    db $ed
    ld [de], a
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_078_452a

    jr nz, @-$1f

    jr nz, jr_078_452a

    inc h
    db $db
    inc h
    cp e
    ld b, h

jr_078_4554:
    or a
    ld b, b

jr_078_4556:
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    or a
    ld c, b
    or a
    ld c, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, h
    sub c
    ld l, h
    sub c
    ld l, [hl]
    sub c
    ld l, a
    sub b
    db $ed
    ld [de], a
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_078_4554

    jr nz, jr_078_4556

    jr nz, jr_078_45d8

    and b
    sbc c
    ld h, h
    sbc c
    ld h, h
    cp a
    ld b, b
    cp a
    ld b, b

jr_078_4582:
    cp a
    ld b, b

jr_078_4584:
    or a
    ld c, b
    rst $38
    ld [$08ff], sp
    ld [hl], a
    adc b
    ld [hl], a
    adc c
    ld a, [hl]
    add c
    ld l, [hl]
    sub c
    xor $11
    xor $11
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    db $dd
    ld [hl+], a
    db $fd
    ld [hl+], a
    rst $38
    jr nz, @+$01

    jr nz, jr_078_4584

    jr nz, jr_078_4582

    inc h
    sbc c
    ld h, h
    rst $28
    ld d, b
    rst $38
    ld b, b
    ld [hl], a
    ld [$0837], sp
    ld d, a
    ld [$008f], sp
    rst $00
    nop
    daa
    add b

Call_078_45ba:
    jp $a080


    pop bc
    ret z

    ldh [$84], a
    ldh a, [$08]
    ldh a, [rDIV]
    ld hl, sp+$3c
    ldh [rNR30], a
    db $e4
    add hl, de
    and $3e
    push bc
    ccf
    call nz, $c53a
    db $eb
    ld d, h
    scf
    ret z

    scf
    ret z

jr_078_45d8:
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    db $eb
    sub h
    ld c, e
    or h
    ld l, [hl]
    sub c
    ld l, [hl]
    sub c
    adc a
    ld [hl], b
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    rst $18
    ld [hl+], a
    adc l
    ld [hl], d
    ld d, a
    rst $38
    dec h
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    add a
    ld a, a
    rst $00
    ccf
    ld a, a
    cp a
    rst $18
    ccf
    rst $38
    rrca
    adc a
    cpl
    rst $18
    daa
    rst $18
    daa
    or a
    inc bc
    sub a
    inc bc
    ld b, e
    ld bc, $010b
    push bc
    nop
    ld d, e
    add b
    cp c
    ld b, b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    db $e4
    nop
    ld h, b
    nop
    pop hl
    nop
    ld [hl], b
    nop
    ld a, d
    nop
    or l
    nop
    sbc [hl]
    nop
    ld d, c
    nop
    push de
    nop
    adc d
    nop
    and e
    nop
    push bc
    nop
    push hl
    nop
    ld hl, sp+$00
    ld a, [$7f00]
    add b
    rst $38
    nop
    cp a
    nop
    sbc [hl]
    jr nz, @+$20

    jr nz, @+$5e

    ld [hl+], a
    ld e, [hl]
    jr nz, jr_078_46cb

    nop
    ld a, l
    ld b, b
    ld sp, hl
    ld b, h
    cp c
    ld b, h
    add sp, $54
    inc a
    ret nz

jr_078_4658:
    ld a, l
    add b
    ld [hl], h
    adc b
    ld a, [c]
    adc b
    ld a, b
    add b
    ld a, d
    add b
    ld hl, sp+$00
    add sp, $10
    xor $10
    and $10
    rst $20
    db $10
    di
    nop
    di
    nop
    jp nz, $8321

    jr nz, jr_078_4658

    nop
    ld [c], a
    nop
    ld [c], a
    nop
    ld b, [hl]
    nop
    ld d, $40
    ld d, $40
    push de
    nop
    ld sp, hl
    inc b
    ld l, h
    add b
    ld l, [hl]
    add b
    xor $80
    xor $00
    cp h
    nop
    ld hl, sp+$00
    call c, $d800
    nop
    ld e, b
    nop
    ldh a, [rP1]
    ret nc

    nop
    or c
    nop
    pop hl
    nop
    and d
    ld bc, $01a6
    and [hl]
    ld bc, $0265
    ld l, l
    ld [bc], a
    dec l
    ld b, d
    adc a
    ld b, b
    sbc a
    ld b, b
    db $d3
    inc b
    ld d, e
    add h
    ld h, e
    add h
    cpl
    add b
    and a
    ld [$08ad], sp
    ld b, a
    ld [$005f], sp
    rst $08
    db $10
    sub b
    ld a, a
    pop de
    ld a, $c0
    ccf
    ldh [$1f], a
    pop af
    rrca
    jp hl


jr_078_46cb:
    rlca
    pop af
    rlca
    ld a, h
    add e
    pop bc
    nop
    add b
    ld b, b
    add b
    ld h, b
    db $10
    ldh [rNR23], a

jr_078_46d9:
    ldh [rDIV], a
    ld hl, sp+$20
    call c, $5aa4
    rst $20
    jr jr_078_46d9

    add hl, de
    cp $11
    sbc [hl]
    ld [hl], c
    rst $08
    jr nc, jr_078_4738

    or d
    sbc $21
    ld e, a
    and b
    ld e, $e1
    ccf
    pop bc
    cp [hl]
    ld b, c
    inc a
    jp $c33c


    ld a, l
    add d
    db $fd
    add d
    ld l, e
    sub h
    ld a, d
    add l
    ret c

    daa
    ld a, [c]
    dec c
    or $09
    xor d
    ld e, l
    xor h
    ld e, e
    ld l, c
    ld e, $ff
    jr @-$4b

    inc e
    cp e
    inc d
    sub c
    ld c, $d0
    rrca
    ldh [rIF], a

jr_078_471a:
    ld h, c
    rlca
    ld [hl], c
    rlca
    add hl, sp
    inc bc
    rra
    ccf
    ccf
    rra
    rra
    rrca
    cp a
    rrca
    ld [hl], a
    rrca
    rst $38
    rlca
    cp e
    rlca
    ld a, a
    inc bc
    db $dd
    inc bc
    rst $08
    ld bc, $01fe
    ld b, a
    nop

jr_078_4738:
    rst $10
    nop
    db $fd
    nop
    dec hl
    ld b, b
    ld a, a
    nop
    ld d, h
    ld [$085d], sp
    ld e, c
    ld [$001d], sp
    adc l
    db $10
    adc c
    db $10
    adc b
    db $10
    jr z, jr_078_4760

    and e
    db $10
    db $10
    jr nz, jr_078_4765

    jr nz, @+$03

    jr nz, jr_078_471a

    jr nz, jr_078_47bc

    nop
    ld b, c
    nop
    inc bc
    ld b, b

jr_078_4760:
    ld b, a
    rst $38
    jp $83ff


jr_078_4765:
    cp $87
    cp $82
    rst $38
    add [hl]
    cp $86
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    ld c, b
    db $fc
    ld c, b
    db $fc
    ld [$08ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    stop
    jr nz, jr_078_4784

jr_078_4784:
    jr nc, jr_078_4786

jr_078_4786:
    nop
    jr nz, jr_078_4792

    jr nz, @+$63

    nop
    ld l, b
    ld bc, $4003

jr_078_4790:
    ld b, e
    nop

jr_078_4792:
    ld hl, sp+$02
    ld hl, sp+$02
    ld a, a
    add b
    dec sp
    add h
    ld a, [hl-]
    add h
    jp c, $fe04

    nop
    db $fc
    nop
    rst $30
    ld [$08fa], sp
    ldh a, [$08]
    db $fc
    nop
    adc $10
    add $10
    cp $00
    call c, $dd20
    jr nz, jr_078_4790

    jr nz, @-$03

    nop
    cp a
    ld b, b
    or [hl]
    ld b, c

jr_078_47bc:
    rst $30
    ld bc, $01f3
    ld a, a
    add c
    ld [hl], h
    add e
    xor a
    ld [bc], a
    rst $28
    ld [bc], a
    ld sp, hl
    ld b, $ff
    inc b
    cp a
    ld b, h
    di
    inc c

jr_078_47d0:
    rst $38
    ld [$08ff], sp
    ld l, a
    jr jr_078_4846

    jr jr_078_4807

    ld de, $111e
    rrca
    nop
    rlca
    nop
    ldh a, [rTAC]
    ld a, b
    add e
    ld a, a
    add c
    rst $38
    ret nz

    rst $18
    ldh [rIE], a
    ldh [$fe], a
    pop af
    rst $30
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    nop
    cp $0f
    db $f4
    rrca
    db $f4
    ld b, $fd
    ld a, [de]
    db $ed
    ld d, $e9
    and [hl]
    ld e, c

Call_078_4802:
    ld a, l
    sub d
    ld a, a
    sub b
    adc a

jr_078_4807:
    ld [hl], b
    ei
    inc h
    db $fd
    ld [hl+], a
    db $dd
    ld h, d
    rst $38
    ld b, b
    ei
    ld b, h
    dec sp
    call nz, $89f6
    rst $30
    adc c
    inc [hl]
    set 5, l
    ld [de], a
    ld l, c
    sub [hl]
    db $eb
    inc d
    rst $10
    inc l
    pop bc
    ld a, $e3
    inc e
    rst $38
    ld [$38c7], sp
    ccf
    ld d, b
    daa
    jr c, jr_078_47d0

    ld a, $04
    rst $38
    inc d
    rst $38
    ld [$00ff], sp
    rst $38
    add h
    ld a, a
    add d
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    rst $20
    nop
    db $ed
    nop
    db $ec
    nop

jr_078_4846:
    add sp, $00
    ld h, b
    nop
    ld h, h
    nop
    ld b, c
    nop
    pop bc
    nop
    ld a, $c1
    ld a, $c1
    ld a, $c1
    inc a
    jp $827d


    ld a, l
    add d
    ld hl, sp+$06
    ldh a, [rTMA]
    rla
    ld [c], a
    rla
    ld [c], a
    ld hl, $85c6
    and $37
    ld b, h
    dec hl
    inc b
    rrca
    ld [$1837], sp
    ccf
    db $10
    ccf
    db $10
    ld c, a
    jr nc, @+$01

    jr nz, jr_078_48f8

    and b
    rra
    ldh [$9f], a
    ld h, b
    rst $18
    ld h, b
    add b
    ld b, b
    ld b, b
    add b
    ld l, c
    add b
    ld a, c
    add b
    db $76
    add c
    cp $01
    cp $01
    db $fd
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop

jr_078_4894:
    inc b
    nop
    inc b

jr_078_4897:
    nop
    inc b
    nop
    inc c
    nop
    nop
    ld [$0800], sp
    jr jr_078_48a2

jr_078_48a2:
    db $10
    db $10
    jr nz, jr_078_48b6

    db $10
    jr nz, @+$74

    jr nz, jr_078_48eb

    jr nz, jr_078_48ed

    jr nz, jr_078_4897

    ld b, b
    pop hl
    ld b, b
    db $dd
    ld b, b
    ld [hl], h
    add c

jr_078_48b6:
    rst $38
    add c
    ld a, [$7f81]
    add b
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd

jr_078_48c3:
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    or $08
    db $fd
    nop
    db $ed
    db $10
    db $ec
    ld de, $20db
    ei
    jr nz, jr_078_48b6

    jr nz, jr_078_4894

    ld b, b
    cp h
    ld b, b
    ld b, a
    db $fc
    ld b, c
    cp $80
    rst $38
    sub d
    db $fd
    ld [$c0f7], sp

jr_078_48eb:
    ccf
    and c

jr_078_48ed:
    ccf
    ld b, c
    sbc a
    ld c, a
    nop
    dec h
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    nop

jr_078_48f8:
    adc b
    nop
    nop
    add b
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ret nc

    jr nc, jr_078_48ed

    jr nc, jr_078_48c3

    ld h, b
    sbc d
    ld h, h
    call c, $fa62
    ld b, l

jr_078_490e:
    sbc e
    ld h, h
    ld [hl], e
    adc h
    ld a, a
    adc b
    ld a, [hl]
    add c
    rst $38
    nop
    db $fd

jr_078_4919:
    ld [bc], a
    sbc $21
    ei

jr_078_491d:
    dec b
    cp [hl]
    ld b, c
    cp l
    ld b, d
    ld sp, hl
    ld b, $7f
    add h
    ld [hl], e
    adc h
    rst $38
    ld [$19e6], sp
    rst $10
    jr c, jr_078_490e

    jr nc, jr_078_491d

    inc sp
    and h
    ld a, e
    push bc
    ld a, d
    ld d, b
    rst $28
    jr nz, jr_078_4919

    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $10
    ld l, b
    rst $28
    ld d, b
    dec l
    ret nc

    cpl
    ret nc

    sbc l
    ldh [$bf], a
    ret nz

    ld a, d
    add b
    ld e, e
    and b
    db $e3
    nop
    db $f4
    ld bc, $01f5
    ld [c], a
    ld bc, $03c0
    ld c, c
    ld [bc], a
    ld b, l
    ld [bc], a
    dec b
    ld [bc], a
    inc bc
    inc b
    dec bc
    inc b
    add hl, bc
    inc b
    dec b
    ld [$0806], sp
    ld d, $08
    rra
    nop
    ld e, d
    nop
    add hl, sp
    nop
    dec h
    db $10
    dec [hl]
    nop
    ld [de], a
    jr nz, jr_078_49ca

    jr nz, jr_078_49e6

    nop
    cpl
    ld b, b
    cp a
    ld b, b
    sbc a
    ld b, b
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
    cp $01
    cp $01
    ld hl, $0300
    nop
    ld b, $00
    ld b, $00
    nop
    inc b

jr_078_499a:
    ld c, h
    nop
    ld b, h
    ld [$0890], sp
    jr jr_078_49a2

jr_078_49a2:
    jr jr_078_49b4

    ld [$2810], sp
    db $10
    db $10
    jr nz, jr_078_49e3

    jr nz, @+$6a

    jr nz, @-$33

    ld h, b
    cp $40
    cp $40

jr_078_49b4:
    call c, Call_078_5c00
    add b
    adc h
    nop
    xor l
    nop
    sbc c
    nop
    sbc c
    nop
    or d
    nop
    or e
    nop
    and a
    nop
    or [hl]
    ld bc, $00e7

jr_078_49ca:
    ret z

    ld [bc], a
    call z, $de02
    nop
    sub b
    inc b
    xor h
    nop
    xor h
    ld [$0810], sp
    ld [$2810], sp
    db $10
    ld a, h
    nop
    ret nc

    jr nz, jr_078_499a

    ld b, b
    or e

jr_078_49e3:
    ld b, b
    and a
    ld b, b

jr_078_49e6:
    rst $28
    ld b, b
    inc hl
    ret nz

    and $80
    add sp, $00
    adc b
    nop
    ld e, $00
    ld e, l
    nop
    ld a, c
    nop
    pop af
    ld bc, $01b3
    ld h, b
    inc bc
    ld [hl], a
    ld [bc], a
    ld a, e
    ld b, $bb
    inc b
    ld e, a
    inc b
    inc bc
    inc c
    rrca
    nop
    rlca
    nop
    dec bc
    nop
    ld bc, $8100
    nop
    ld b, b
    add b
    add b
    ld b, b
    ldh a, [rLCDC]
    db $10
    ldh [$8c], a
    ldh a, [rDIV]
    ld hl, sp+$0a
    db $f4
    rlca
    ld hl, sp+$25
    jp c, $fb04

    ld [$f6f7], sp
    add hl, bc
    ld [hl], c
    adc a
    and a
    ld e, a
    xor [hl]
    ld e, a
    ld c, l
    cp [hl]
    ld e, a
    cp h
    reti


    ld a, $5f
    cp b
    rla
    ld hl, sp+$6f
    or b
    ccf
    ldh [$1f], a
    ldh [rNR31], a

jr_078_4a3f:
    db $e4
    jr nc, jr_078_4a42

jr_078_4a42:
    jr nz, jr_078_4a64

    ld h, b
    nop
    nop
    ld b, b
    nop
    ld b, b
    ld b, b
    nop
    ret nz

    nop
    nop
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
    ei
    nop
    rst $38
    nop
    ld a, d
    ld bc, $01fe
    rst $28
    nop

jr_078_4a64:
    cp l
    ld [bc], a
    sbc h
    ld [bc], a
    ld l, $00
    xor d
    inc b
    ret z

    inc b
    call c, $d400
    ld [$0870], sp
    ld c, b
    db $10

jr_078_4a76:
    add sp, $10
    ldh [rNR10], a
    ldh a, [rP1]
    ret nc

    jr nz, jr_078_4a3f

    jr nz, @-$5d

    ld b, b
    and c
    ld b, b
    add h
    ld b, b
    ld e, a
    add b
    ld [hl], l
    add b
    ld a, a
    add b
    ccf
    add b
    cp a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    cp $01
    db $fd
    inc bc
    db $fc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld d, $00
    add d
    inc b
    jr z, @+$06

    jr z, jr_078_4ab0

    inc h
    ld [$0850], sp

jr_078_4ab0:
    ld c, b
    db $10
    ld h, b
    db $10
    and h
    db $10
    call nc, $dc20
    jr nz, jr_078_4a76

    ld b, b
    ld [hl], $40
    or l
    ld b, b
    ld a, h
    add b
    inc [hl]
    add b
    add b
    nop
    adc b
    nop
    add hl, bc
    nop
    ld [$8000], sp
    nop
    ld bc, $0900
    nop
    ld e, c
    nop
    dec sp
    ld bc, HeaderManufacturerCode
    ld a, [hl]
    inc bc
    ld a, a
    ld [bc], a
    ld a, l
    ld [bc], a
    reti


    ld h, $bb
    ld c, h
    rst $38
    ld [$18ef], sp
    rst $38
    db $10
    sbc a
    jr nc, jr_078_4b5a

    jr nc, jr_078_4b4c

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    ccf
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, [hl]
    ld bc, $01ff
    db $fc
    inc bc
    rst $38
    ld [bc], a
    ld sp, hl
    ld b, $7d
    ld b, $3f
    inc c
    dec bc
    inc e
    rra
    ld [$000f], sp
    rlca

jr_078_4b1d:
    nop
    ld [bc], a
    ld bc, $0083
    push bc
    nop
    ld [bc], a
    add b
    ret


    add b
    db $10
    ret nz

    ret nz

    jr nz, jr_078_4b1d

    nop
    add sp, $10
    ld d, b
    xor b
    ldh a, [$0c]
    jp c, $e92c

    ld e, $f0
    rra
    ret z

    scf
    sbc b
    ld h, a
    xor l
    ld d, e
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc

jr_078_4b4c:
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_078_4b73

jr_078_4b5a:
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_078_4b83

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_078_4b93

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_078_4ba3

    ld [hl-], a

jr_078_4b73:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_078_4bb3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_078_4b83:
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

jr_078_4b93:
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

jr_078_4ba3:
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

jr_078_4bb3:
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
    ld l, [hl]
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
    rst $30
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $f7
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_078_4c76

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

jr_078_4c76:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_078_4cb6

    ld a, [hl-]
    dec sp
    inc a
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
    ld bc, $0000
    nop
    ld bc, $0707
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0701
    rlca
    ld bc, $0000
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

jr_078_4cb6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    ld bc, $0004
    nop
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
    ld bc, $0004
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    inc b
    inc b
    inc b

Call_078_4cff:
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc b
    inc b
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
    dec b
    nop
    dec b
    inc b
    inc b
    inc b
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
    dec b
    inc b
    inc b
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
    inc b
    inc b
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
    dec b
    inc b
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
    dec b
    inc b
    nop
    ld [$0808], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c0d], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0d08], sp
    inc c
    db $fc
    inc bc
    cp [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $0116
    rla
    nop
    inc de
    nop
    inc e
    nop
    inc d
    nop
    ld d, d
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
    nop
    add b
    nop
    ccf
    ret nz

    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    and a
    ld d, b
    rst $28
    db $10
    xor d
    ld d, b
    ld [c], a
    jr jr_078_4e66

jr_078_4df1:
    ld [$007c], sp
    inc h
    db $10
    xor h
    db $10
    jr c, jr_078_4dfa

jr_078_4dfa:
    ld a, b
    nop
    ld [hl], b
    ld [$004c], sp
    inc e
    nop
    inc c
    nop
    ld e, $00
    ld [de], a
    inc b
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc c
    ld [bc], a
    dec b
    ld [bc], a
    sub l
    ld [bc], a
    sub d
    ld bc, $01c2
    ld c, [hl]
    ld bc, $01c4
    ld h, h
    ld bc, $00c9
    ld sp, hl
    nop
    push af
    nop
    db $fc
    nop
    ld a, [$de00]
    nop
    ld a, a
    nop
    ld e, a
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
    ld e, a
    add b
    cp a
    ret nz

    ccf
    ret nz

    scf
    ret z

    rla
    add sp, $68
    nop
    ld a, b
    nop
    cp b
    nop
    sbc h
    jr nz, jr_078_4df1

    db $10
    ld l, h
    db $10
    ld c, b
    db $10
    ld e, b
    nop
    ld [hl], b
    ld [$0824], sp
    inc l
    nop
    inc e
    nop
    db $10
    inc b
    sub [hl]
    nop
    sbc [hl]
    nop
    adc b
    ld [bc], a
    adc d
    nop
    rst $08
    nop
    adc $01

jr_078_4e66:
    call z, $c501
    ld bc, $0045
    ld [hl], l
    nop
    push af
    nop
    ld a, [c]
    nop
    ld a, [c]
    nop
    db $fc
    nop
    xor b
    db $10
    sbc b

jr_078_4e79:
    nop

jr_078_4e7a:
    sbc d
    nop

jr_078_4e7c:
    sbc $00
    rst $00
    ld [$00ee], sp
    ld [$e604], a
    nop
    rst $20
    nop
    ld h, a
    add b
    ld a, e
    add b
    rst $38
    add b
    ccf
    ret nz

    ccf
    ret nz

    cp $41
    sbc [hl]
    ld h, c

jr_078_4e96:
    cp a
    ld h, b
    rst $28
    jr nc, jr_078_4e7a

    jr nc, jr_078_4e7c

    jr nc, jr_078_4e96

    jr jr_078_4ea9

    cp $09
    db $fc
    rrca
    ld hl, sp+$4b
    ldh a, [rNR22]

jr_078_4ea9:
    ldh [$2e], a
    pop bc
    ld e, l
    add d
    cp e
    inc b
    ld [$5100], sp
    nop

jr_078_4eb4:
    ld [de], a
    ld bc, $0127
    ld b, a
    nop
    adc a
    nop
    ld de, $720e
    dec c
    ld bc, $1000
    nop
    sub c
    nop
    and c
    nop
    sub b
    nop
    sub b
    nop
    db $10

jr_078_4ecd:
    add b
    ret nc

    add b
    ld d, b
    add b
    ret nc

    nop
    ldh a, [rP1]
    jr c, jr_078_4f18

    inc h
    ld b, b
    ld [hl], h
    nop
    ld [hl], h
    nop

jr_078_4ede:
    jr nz, jr_078_4ee0

jr_078_4ee0:
    rst $28
    jr nc, @-$2f

    jr nc, jr_078_4eb4

    jr nc, @+$01

    db $10
    push af
    jr jr_078_4ede

    jr jr_078_4e79

    jr jr_078_4ecd

    ld [$18e9], sp
    ld sp, hl

jr_078_4ef3:
    jr jr_078_4ede

    jr @-$16

    jr jr_078_4ef3

    ld [$08f9], sp
    pop af
    inc c
    db $fd
    inc b
    cp $02
    cp $03
    cp $03
    db $fc
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    cp [hl]
    ld b, c
    ld b, c
    nop
    ld c, c
    nop
    ld c, b
    nop
    add sp, $00

jr_078_4f18:
    xor [hl]
    nop
    rst $28
    nop
    ld a, a
    add b
    ld a, a
    add b
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, b
    nop
    jr nz, jr_078_4f2e

jr_078_4f2e:
    db $10
    jr nz, jr_078_4f41

    jr nz, @+$32

    nop
    add hl, sp
    nop
    add hl, bc
    db $10
    add hl, bc
    db $10
    dec e
    nop
    dec d
    ld [$0805], sp
    dec c

jr_078_4f41:
    ld [$0806], sp
    ld a, [bc]

jr_078_4f45:
    inc b
    rrca
    inc b
    rlca
    inc b
    inc bc
    inc b
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec d
    ld [bc], a
    inc d

jr_078_4f53:
    inc bc
    rra
    nop
    ld e, $01
    dec hl
    ld bc, $010e
    rrca
    nop
    rrca
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    add a
    nop
    ld [c], a
    nop
    ld h, d
    add b
    ld h, [hl]
    add b
    ld h, b
    add b
    and b
    ld b, b
    or d
    ld b, b
    or d
    ld b, b
    db $d3
    jr nz, jr_078_4f53

    jr nz, jr_078_4f45

    jr nc, @+$5b

    jr nc, jr_078_4fe9

    db $10
    ld a, b
    db $10
    jp hl


    db $10
    or d
    ld [$08f5], sp
    push af
    ld [$08f6], sp
    ld a, [$0704]
    db $fc
    rlca
    ld hl, sp+$4b
    or b
    rla
    ldh [$2f], a
    ret nz

    rst $38
    add b
    ccf
    add b
    ld a, l
    ld [bc], a
    ld c, c
    nop
    ld [bc], a
    ld bc, $0027
    rrca
    nop
    rra
    nop
    rra
    nop
    cpl
    db $10
    ld l, a
    db $10
    xor a
    ld d, b
    rst $20
    jr jr_078_502c

    adc b
    rst $38
    add b
    cp [hl]
    pop bc
    rst $18
    ldh [$5f], a
    ldh [$df], a
    ld h, b
    ld a, [c]
    add c
    ld a, a
    add b
    db $fd
    nop
    db $dd
    nop
    ccf
    ld b, b
    ld e, l
    ld b, b
    ld [hl], a
    ld b, b
    ld a, a
    nop
    sub d
    ld l, l
    or b
    ld l, a
    di
    inc l
    ld sp, hl
    ld h, $f8
    daa
    call z, $ec33
    inc de
    ld a, h
    inc de
    db $fc
    inc de
    db $f4
    dec de
    ld b, l
    ld a, [de]
    db $ec
    dec de
    cp e

jr_078_4fe9:
    inc c
    cp h
    dec bc
    cp l
    ld a, [bc]
    pop af
    ld c, $4e
    cp a
    ld c, [hl]
    rst $38
    and a
    ld a, a
    sub [hl]
    ld l, a
    ld [hl], $ef
    add $1f
    ld d, $0f
    ld a, [bc]
    rlca
    inc bc
    rlca
    rlca
    inc bc
    add a
    inc bc
    add l
    inc bc
    ret


    rlca
    pop bc
    ccf
    ld [hl], e
    adc l
    ld l, e
    sub l
    rra
    add b

jr_078_5012:
    dec bc

jr_078_5013:
    add b
    ld e, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    ld b, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld [$2020], sp
    nop

jr_078_502c:
    jr c, jr_078_502e

jr_078_502e:
    jr c, jr_078_5030

jr_078_5030:
    jr z, jr_078_5042

    inc l
    db $10
    db $ec
    db $10
    cp $00
    rst $38
    nop
    push af
    ld [$08e4], sp
    ei
    inc b
    cp e
    inc b

jr_078_5042:
    xor a
    inc b
    ld l, d
    inc b
    ei
    inc b
    rst $38
    nop
    push af
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ei
    nop
    cp $01
    cp [hl]
    ld bc, $01de
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld l, a
    add b
    cp a
    ld b, b
    rst $30
    ld b, b
    scf
    ld b, b
    ccf
    ld b, b
    ld e, l
    jr nz, jr_078_50ee

    jr nz, jr_078_50b0

    jr nz, jr_078_5012

    jr nz, jr_078_50a2

    db $10
    sub a
    db $10
    rra
    db $10
    add a
    jr jr_078_5013

    ld [$0894], sp
    ld c, l
    cp b
    add e
    ld a, b
    adc a
    ld [hl], b
    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld [bc], a
    ld bc, $0106
    ld c, $01
    ld e, $01
    ld l, $11
    cpl
    db $10
    rst $38
    nop
    rst $30
    ld [$8877], sp

jr_078_50a2:
    rst $30
    adc b
    rst $30

jr_078_50a5:
    adc b
    rst $38
    add b
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $18
    ld h, b

jr_078_50b0:
    rst $38
    jr nz, @-$11

    ld [hl-], a
    rst $18
    jr nz, jr_078_50a5

    ld de, $10ff
    rst $28
    db $10
    ld b, a
    cp b
    ld a, a
    adc b
    ld a, c
    ld b, $7c
    ld b, $b9
    ld b, $bf
    ld [bc], a
    sub a

jr_078_50c9:
    ld [bc], a
    dec d
    add d
    dec d
    add d
    sub l
    ld [bc], a
    adc $01
    ld d, a
    ld bc, $01c7
    ret


    ld bc, $01c8
    ldh [rSB], a
    pop hl
    nop
    ld h, c
    nop
    ld h, h
    nop
    pop bc
    jr nz, jr_078_50c9

    nop
    ld h, [hl]
    nop
    ld [hl], b
    nop
    ld h, e
    db $10
    ld [hl+], a
    db $10

jr_078_50ee:
    jp nz, $f010

    nop
    ld hl, sp+$00
    ld a, b
    nop
    ld a, b
    nop
    jr nc, jr_078_5102

    or b
    ld [$0830], sp
    inc e
    nop
    inc a
    nop

jr_078_5102:
    jr c, jr_078_5108

    ld d, b
    inc b
    inc e
    nop

jr_078_5108:
    ld d, [hl]
    nop
    ld a, $00
    xor [hl]
    nop
    or [hl]
    nop
    cp b
    ld [bc], a
    or b
    ld [bc], a
    db $10
    add d
    ld a, [bc]
    add b
    adc e
    nop
    rlc b
    ld c, b
    ld bc, $4109
    ld c, b
    ld bc, $0041
    ld h, c
    nop
    ld hl, $0000
    jr nz, @+$03

    jr nz, @+$03

    jr nz, @+$15

    jr nz, @+$34

    nop
    ld [hl+], a
    db $10
    inc hl

jr_078_5135:
    db $10
    ccf

jr_078_5137:
    db $10
    cpl
    db $10
    cpl
    db $10
    ccf
    ld [$085b], sp
    rst $18
    ld [$08ff], sp
    sub e
    inc c
    db $dd
    inc b
    rst $18
    inc b
    rst $38
    inc b
    rst $10
    inc b
    call $cf02
    ld [bc], a
    rst $28
    ld [bc], a
    ld l, a
    ld [bc], a
    rst $00
    ld [hl+], a
    db $fc
    inc bc
    cp $01
    rst $38
    ld bc, $916b
    ld a, a
    add c
    cp $01
    cp a
    ld b, b
    cp a
    ld b, b
    scf
    ld c, b
    ld a, a
    nop
    sbc $20
    call c, $f820
    jr nz, @-$2e

    jr nz, jr_078_5135

    jr nz, jr_078_5137

    nop
    add b
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    inc b
    rrca
    ld [$0817], sp
    dec hl
    inc d
    ld a, a
    inc b
    ld a, a
    inc b
    or a
    ld c, h
    sub a
    ld l, h
    ld e, a
    and h
    dec a
    add $1f
    and $df
    ld [hl+], a
    ld [hl], l
    adc d
    db $fc
    add e
    ld a, a
    add c
    ld a, [hl]
    add c
    cp $01
    cp [hl]
    ld b, c
    or [hl]
    ld c, c
    cp e
    ld b, h
    db $fd
    ld [bc], a
    rst $18
    jr nz, @+$01

jr_078_51ad:
    jr nz, jr_078_51ad

    ld hl, $37e8
    call c, $fc33
    inc de
    db $ec
    inc de
    ldh [$1f], a
    ldh a, [rIF]
    ld [hl], h
    adc e
    ld [hl], c
    adc [hl]
    ld a, [hl]
    ld bc, $00ff
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    cp a
    nop
    or a
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, e
    add h
    ei
    add h
    ei
    add h
    ld e, c
    add [hl]
    ld a, c
    add [hl]
    xor l
    ld b, d
    xor l
    ld b, d
    db $dd
    ld b, d
    ld e, l
    ld b, d
    ld e, l
    ld b, d
    dec a
    ld b, d
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    ld bc, $01be
    sbc [hl]
    ld hl, $211f
    jp c, $de21

    ld hl, $007f
    ld a, a
    nop
    ccf
    nop
    ld b, $10
    ld b, d
    db $10
    ld [de], a
    nop
    ld a, $00
    ccf
    nop
    ld e, d
    nop
    inc de
    ld [$0857], sp
    rra
    nop
    rra

jr_078_521b:
    nop
    cp a
    nop
    ld l, e
    inc b
    db $eb
    inc b
    rst $28
    nop
    ld a, [hl]
    add b
    cp $80
    cp $80
    ld d, [hl]
    add b
    or $00
    sbc $00
    jp c, Jump_000_3e80

    ret nz

    rst $38
    nop
    cp a
    ld b, b
    cp e
    ld b, b
    db $fd
    nop
    db $db

Jump_078_523d:
    jr nz, jr_078_521b

    ld hl, $01f4
    db $fd
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $30
    ld [$0af5], sp
    rst $30
    ld [$08ff], sp
    rst $30
    ld [$00fe], sp
    push af
    ld [$8079], sp
    ld [hl], d
    add b
    ldh [$80], a
    ret nz

    add b
    add c
    nop
    inc bc
    nop
    add a
    ld [bc], a
    dec bc
    ld b, $11
    ld c, $20
    rra
    ld b, h
    dec sp
    and h
    ld a, e
    jr nz, @+$01

    and d
    ld a, l
    jr nc, @+$01

    ld h, d

Jump_078_527f:
    cp l
    ld d, e
    xor h

jr_078_5282:
    jp $e13c


    ld e, $e3
    inc e
    db $fd
    ld [de], a
    rst $20
    jr jr_078_5282

    ld a, [bc]
    push af
    ld a, [bc]
    ld a, [c]
    dec c
    rst $30
    ld [$04fb], sp
    ei
    inc b
    db $db
    inc h
    call c, $fd27
    ld b, $fb
    ld b, $eb
    ld d, $7b
    add [hl]
    ld l, [hl]
    sub e
    ld a, a
    add d
    ld a, l
    add d
    db $76
    adc b
    ld d, [hl]
    xor b
    scf
    ret z

    ret


    cp $c4
    ei
    add sp, -$09
    ldh [rIE], a
    ldh a, [$ee]
    ret nc

    db $ec
    or b
    call z, $b8c0
    or $09
    or $09
    cp a
    ld [$88f7], sp
    ld [hl], a
    adc b
    rst $30
    adc b
    rst $30
    adc b
    ld a, a
    add b
    ld sp, hl
    ld b, $bb
    ld b, h
    ei
    ld b, h
    ld a, [c]
    ld b, l
    cp d
    ld b, l
    ei
    ld b, h
    or a
    ld b, b
    cp a
    ld b, b
    pop af
    ld b, $fd
    ld [bc], a
    db $dd
    ld [hl+], a
    rst $18
    ld [hl+], a
    rst $18
    ld [hl+], a
    sbc a
    ld [hl+], a
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    sbc $01
    adc $11
    xor $11
    rst $28
    ld de, $11ee
    xor $11
    cp $01
    cp $01

jr_078_5304:
    or $09
    ld [hl], a
    adc b
    rst $30
    ld [$8877], sp
    ld a, a
    adc b
    rst $30
    ld [$08f7], sp
    or a
    ld c, b
    rst $30
    ld [$44bb], sp
    di
    ld c, h
    ld a, e
    ld b, h
    ld a, e
    ld b, h
    dec sp
    ld b, h
    ld a, e
    inc b
    ld a, e
    inc b
    rst $18
    jr nz, jr_078_5304

    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    ld e, l
    ld [hl+], a
    ld a, l
    ld [bc], a
    ld a, a
    nop
    ld l, a
    db $10
    ld l, a
    db $10
    ld l, a
    db $10
    xor $11
    cp $01
    rst $18
    nop
    cp a
    nop
    or a
    ld [$09a6], sp
    ld h, a
    adc b
    daa
    adc b
    daa
    adc b
    dec a
    add d
    ld a, [hl]
    add b
    db $fc
    nop
    ld sp, hl
    nop
    pop de
    nop
    or e
    nop
    jr nz, jr_078_535d

    ld b, b
    rlca
    ret z

jr_078_535d:
    rlca
    inc e
    inc bc
    inc l
    inc de
    ld d, l
    ld a, [hl+]
    push af
    ld a, [hl+]

jr_078_5366:
    rst $30
    jr z, jr_078_5366

    ld [hl+], a
    ld e, a
    and b
    ld c, a
    or b
    ld l, a
    sub b
    xor $11
    ld [$eb15], a
    dec d
    xor $11
    rst $30
    ld [$08f7], sp
    rst $10
    jr z, jr_078_53f6

    adc b
    ld [hl], a
    adc b
    rst $30
    adc b
    push hl
    sbc d
    jp hl


    sub [hl]
    ld a, c
    add [hl]
    inc sp
    call z, Call_078_45ba
    db $fd
    ld b, [hl]
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ld h, c
    cp $a1
    cp $43
    db $fc
    ld h, b
    call c, $d8a0
    ld b, b
    or b
    add b
    ld [hl], b
    add b
    ld h, b
    nop
    ldh [$80], a
    ld b, b
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    ldh [$3f], a
    ret z

    scf
    ret c

    daa
    ret z

    scf
    add sp, $17
    ld hl, sp+$17
    add sp, $17
    cp $11
    ld hl, sp+$17
    ld h, l
    sbc d
    ld [hl], h
    adc e
    ld l, l
    sub d
    ld [hl], h
    adc e
    ld [hl], b
    adc a
    ld a, h
    adc e
    cp $09
    ld a, [hl]
    adc c
    cp h
    ld c, e
    or h
    ld c, e
    ld [hl], $c9
    ld [hl], a
    ret


    cp $41
    ccf
    pop bc
    ld a, $c1
    cp [hl]
    ld b, c
    jp c, $da25

    dec h

jr_078_53f6:
    db $db
    inc h
    db $db
    inc h
    db $db
    inc h

jr_078_53fc:
    db $db
    inc h
    db $db
    inc h
    db $db
    inc h
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    db $fd
    ld [de], a
    db $fd
    ld [de], a
    ld a, a
    sub b
    ld a, l
    sub d
    ld a, a
    sub b
    ld a, a
    sub b
    ld l, a
    sub b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    or a
    ld c, b
    or a
    ld c, b
    rst $30
    ld c, b
    rst $38
    ld b, b
    cp $41
    or [hl]
    ld c, c
    sub a
    ld l, c

jr_078_542c:
    sub $29
    rst $10
    jr z, jr_078_53fc

    inc [hl]
    ei
    inc h
    ei
    inc h
    ld [hl], e
    xor h
    jp nc, $c92d

    ld [hl], $cb
    inc [hl]
    rst $20
    jr jr_078_542c

    db $10
    rst $20
    db $10
    db $eb
    nop
    call nc, $f803
    rlca
    cp c
    ld c, $73
    ld e, $4b
    ld a, $a8
    ld e, a
    ld c, h
    cp a
    ld l, b
    sbc a
    jr nc, @-$2f

    ld [hl-], a
    call $cf30
    inc [hl]
    res 6, e
    ld c, l
    ldh a, [rVBK]
    add sp, $57
    jr c, @-$37

    cp d
    ld b, l
    sbc $25
    call c, Call_000_1c27
    rst $20
    inc e
    rst $20
    ld h, a
    rst $38
    daa
    rst $38
    ld h, a
    rst $38
    db $e3
    rst $38
    ld h, d
    rst $38
    ld d, h
    rst $38
    inc d
    rst $38
    add hl, de
    cp $fe
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    cp $f6
    ld sp, hl
    rst $30
    ld hl, sp-$11
    ldh a, [$f2]
    ldh [$c9], a
    ldh [$f1], a
    ret nz

    and $80
    ld hl, $4280
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0188
    ld d, c
    xor [hl]
    ld d, l
    xor d
    ld c, b
    or a
    rst $00
    cp d
    db $e4
    sbc e
    db $e4
    sbc e
    db $e4
    sbc e
    and h
    db $db
    inc h
    db $db
    ld [hl+], a
    db $dd
    ld h, [hl]
    reti


    inc hl
    db $dd
    and e
    ld e, l
    and a
    ld e, l
    and e
    ld e, l
    and d
    ld e, l
    and [hl]
    ld e, l
    and [hl]
    ld e, l
    and $1d
    and d
    ld e, l
    rst $20
    inc e
    ldh a, [rIF]
    db $f4
    rrca
    ld hl, sp+$0f
    ld sp, hl
    ld c, $d1
    ld l, $73
    adc h
    ld d, l
    xor d
    dec d
    ld [$aa55], a
    ld [hl], l
    xor d
    ld b, h
    cp e

jr_078_5500:
    ccf
    ld [c], a
    push de
    xor d
    sub l
    ld [$ab76], a
    inc bc
    cp $00
    rst $38
    ld c, h
    or a
    nop
    rst $38
    sbc b
    ld h, a
    inc h
    rst $18
    ld [$acf7], sp
    ld d, a
    inc l
    rst $10
    xor [hl]
    ld d, l
    xor c
    ld d, a
    and c
    ld e, a
    xor b
    ld d, a
    xor c
    ld d, a
    db $e3
    rra
    pop de
    cpl
    ldh [$1f], a
    pop hl
    ld e, $d3
    inc l
    rst $18
    jr z, jr_078_5500

    ld sp, $23df
    cp d
    ld b, a
    db $76
    adc e
    ld sp, hl
    rrca
    push hl
    dec de
    push de
    dec sp
    adc l
    ld a, e
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub b
    rst $38
    pop de
    cp $43
    db $fc
    ld b, l
    ld hl, sp+$42
    ld hl, sp+$05
    ldh a, [rP1]
    ldh a, [$0c]
    ei
    inc b
    ei
    inc c
    ei
    dec c
    ei
    ld c, $fb
    inc b
    ei
    ld l, c
    db $fd
    ld l, c
    db $fd
    add hl, hl
    db $fd
    or c
    db $fd
    or b
    db $fd
    and c
    db $fc
    and h
    ld hl, sp-$31
    ldh a, [$f0]
    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    ret nz

    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    inc h
    rst $18
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    dec b
    ld a, [$f005]
    inc d
    ldh [rSTAT], a
    and b
    call nc, $9500
    ld b, b
    add c
    ld b, b
    add c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    inc d
    nop
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    jr nz, jr_078_55ae

jr_078_55ae:
    jr nz, jr_078_55b0

jr_078_55b0:
    nop
    nop
    nop
    ld b, b
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
    or e
    rst $38
    ld h, $ff
    ld a, [hl+]
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    jr nz, @+$01

    dec h
    rst $38
    dec h
    rst $38
    ld hl, $23ff
    rst $38
    inc hl
    rst $38
    and e
    ld a, a
    jp $c37f


    ld a, a
    ld de, $91ef
    ld l, a
    dec h
    db $db
    ld sp, hl
    ld b, a
    dec h
    db $db
    add hl, hl
    rst $10
    ld hl, $79df
    rst $10
    inc de
    rst $38
    inc de
    rst $38
    sub c
    ld a, a
    ld de, $15ff
    rst $38
    ld de, $19ff
    rst $38
    ld e, l
    cp a
    ld [hl], c
    cp a
    ld d, l
    cp a
    ld d, c
    cp a
    ld [hl], a
    cp a
    di
    ccf
    pop de
    ccf
    ld h, l
    cp a
    ld c, c
    cp a
    ld l, b
    cp a
    ld d, h
    cp a
    ld c, d
    cp l
    ret nc

    cpl
    nop
    rst $38
    add [hl]
    ld a, l
    ret c

    cpl
    ld c, b
    cp a
    ld d, b
    cp a
    adc [hl]
    ld [hl], c
    ret c

    ld h, a
    jr c, @-$2f

    ld l, l
    sbc a
    db $db
    ccf
    adc h
    ld a, a
    call Call_000_287f
    rst $18
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ldh a, [$fc]
    ret nz

    ld hl, sp-$40
    ldh a, [$80]
    ldh [$3e], a
    pop bc
    ld a, a
    add c
    ld a, [$f103]
    rlca
    pop hl
    ld [bc], a
    jp Jump_078_4108


    inc c
    add c
    inc e
    rlca

jr_078_5651:
    jr jr_078_5662

    jr nc, jr_078_565c

    ld [hl], b
    dec d
    and b
    ld l, d
    add b
    inc d

jr_078_565b:
    ret nz

jr_078_565c:
    ld l, d
    add b
    nop
    pop bc
    inc b
    rst $30

jr_078_5662:
    ld [$10fa], sp
    ld hl, sp+$10
    db $fc
    add b
    ld a, h
    cp [hl]
    ld h, c
    rra
    nop
    and b
    ld b, b
    add c
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    rst $38
    dec b
    ld a, [$fd02]
    jp $d534


    jr z, jr_078_565b

    jr nz, jr_078_5651

    nop
    ld [$a040], sp
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    jr nz, jr_078_5696

jr_078_5696:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    nop
    nop
    jr @+$01

    jr @+$01

    sbc b
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    cp c
    sbc $19
    cp $19
    cp $9d
    ld a, [$fa1d]
    dec e
    ld a, [$ff18]
    inc e
    ei
    jr @+$01

    add hl, bc
    cp $44
    cp e
    adc h
    ei
    ld bc, $08fe
    rst $38
    ld [$28ff], sp
    rst $38
    ld l, e
    cp h
    adc [hl]
    ld a, c
    cp c
    ld c, [hl]
    adc e
    ld a, h
    dec [hl]
    jp z, $fe09

    ld [$18ff], sp
    rst $38
    adc l
    ld a, e
    ld c, [hl]
    cp e
    ld l, a
    sbc d
    dec sp
    adc $bb
    adc $b9
    adc $f8
    rst $08
    db $fc
    bit 5, h
    db $db
    dec l
    jp c, $aadd

    ld a, c
    adc [hl]
    db $ed
    ld a, [de]
    ld a, h
    adc e
    ret c

    xor a
    ret c

    xor a
    sbc l
    db $eb
    nop
    rst $38
    cpl
    ret nc

    cp a
    ld b, b
    sbc b
    rst $38
    adc b
    rst $38
    ld [$f8ff], sp
    xor a
    ld hl, sp-$51
    ld [$bfff], sp
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    ccf
    rst $38
    ld a, $3f
    ld a, a
    ld a, a
    ld e, a
    rst $38
    rst $38
    rst $38
    db $fc
    add e
    db $fd
    add e
    db $fc
    inc bc
    ld sp, hl
    rlca
    push af
    dec bc
    rst $20
    ld [$10ef], sp
    rst $08
    db $10
    cp a
    jr nz, @-$40

    jr nz, jr_078_57c4

    ld h, c
    ld a, l
    ld b, c
    ld a, l
    ld b, c
    ei
    add e
    ei
    add e
    rst $30
    rlca
    or a
    rlca
    rst $00
    rlca
    xor a
    rrca
    ld c, a
    rrca
    rrca
    rrca
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc c
    di
    adc d
    ld [hl], c
    rla
    ld h, b
    adc d
    ld h, b
    and d
    ld bc, $4000
    add b
    ld b, b
    nop
    nop
    nop
    nop
    add b
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0001
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $00
    dec b
    nop
    ld b, $00
    dec c
    nop
    ld c, $00
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
    inc de
    xor $03
    cp $47
    cp $47
    cp $17
    cp $c5
    ld a, [hl]
    ld b, l
    cp $05
    cp $45
    cp $97
    ld a, h

jr_078_57c4:
    ld d, a
    db $fc
    ld h, a
    db $fc
    rst $00
    ld a, h
    push bc
    ld a, [hl]
    ld c, l
    cp $6c
    rst $38
    ld e, [hl]
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld d, [hl]
    db $fd
    ld h, a
    db $fc
    xor $fd
    daa
    db $fc
    dec [hl]
    cp $94
    ld a, a
    ld c, h
    rst $30
    inc c
    rst $30
    sbc h
    rst $30
    adc h
    rst $30
    xor h
    rst $10
    call z, $cdf7
    or $4d
    or $cc
    rst $30
    call nz, $c4ff
    rst $38
    sub h
    rst $38
    add h
    rst $38
    sub h
    rst $38
    rst $08
    db $fc
    ld c, l
    cp $a6
    db $fd
    sub h
    rst $38
    add $fd
    cp h
    rst $38
    db $ec
    rst $38
    ld e, h
    rst $38
    db $fc
    rst $38
    db $fc
    inc bc
    cp a
    ld b, b
    inc bc
    db $fc
    cp h
    rst $38
    cp $ff
    call c, $fdff
    cp $fc
    rst $38
    ld hl, sp-$01
    sbc b
    rst $38
    xor b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    adc d
    db $fd
    jp hl


    cp [hl]
    adc c
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rra
    ld a, a
    ld l, b
    ld a, a
    ld e, $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add d
    call nz, Call_078_4cff
    rst $38
    inc c
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
    cp a
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld [bc], a
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
    add b
    ld a, a
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
    add b
    ld a, a
    db $10
    rst $28
    ld d, b
    xor a
    db $fc
    inc bc
    ld h, b
    sub a
    ld a, h
    add e
    call c, $e603
    ld bc, $024d
    sub h
    ld [bc], a
    nop
    ld [bc], a
    add d
    nop
    add hl, bc
    nop
    ld d, $00
    ld b, d
    nop
    adc b
    nop
    dec b
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $00
    ld b, $00
    ldh a, [$1f]
    inc [hl]
    rst $18
    call nc, $d23f
    ccf
    ld d, h
    cp a
    sub b
    ld a, a
    ld d, h
    rst $38
    ret nc

    ld a, a
    call nc, Call_000_317f
    rst $38
    ld hl, $a1ff
    ld a, a
    and c
    ld a, a
    pop hl
    ccf
    ld h, c
    cp a
    pop af
    cpl
    pop af
    cpl
    ld [hl], l
    xor e
    ld [hl], c
    xor a
    ld a, l
    and e
    ld [hl], l
    xor e
    ld [hl], l
    xor e
    ld h, c
    cp a
    pop af
    cpl
    and l
    ld a, a
    and c
    ld a, a
    dec h
    rst $38
    ld a, [hl+]
    rst $38
    inc hl
    rst $38
    ld h, d
    rst $38
    ld a, [hl+]
    rst $38
    ld l, d
    rst $38
    ld [hl-], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld a, [hl+]
    rst $38
    ld c, d
    rst $38
    add e
    rst $38
    ld [hl+], a
    rst $38
    and d
    rst $38
    and e
    cp $63
    cp $2b
    or $43
    cp $47
    ld a, [$fe43]
    ld c, e
    or $c0
    rst $38
    ld [bc], a
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld b, e
    db $fc
    ld l, h
    rst $38
    ld e, h
    rst $38
    ld c, h
    rst $38
    ld h, h
    rst $38
    ld b, h
    rst $38
    ld h, [hl]
    db $fd
    ld b, [hl]
    db $fd
    ld b, [hl]
    db $fd
    ld b, [hl]
    db $fd
    ld h, [hl]
    db $fd
    ld h, [hl]
    db $fd

jr_078_592e:
    sub $7d
    rst $20
    ld a, h
    ld a, b
    rst $38
    ld a, [hl]
    db $fd
    ld a, d
    db $fd
    ld [hl], b
    rst $38
    db $fd
    rst $38
    cp h
    ld b, e
    cp $01
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    nop

jr_078_5948:
    ei
    inc b
    ei
    inc b
    ld sp, $f3ce
    inc c
    push af
    ld a, [bc]
    rst $30
    ld [$08f7], sp
    rst $20

jr_078_5957:
    jr jr_078_5948

    db $10
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    db $10
    db $10
    rst $38
    nop
    rst $38
    and b
    ld a, a
    jp nc, $de2d

    ld hl, $21de
    rst $18

jr_078_596d:
    jr nz, jr_078_592e

    ld b, b
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    jr @-$17

    jr jr_078_596d

    jr nc, jr_078_5957

    ld b, b
    cp a
    sbc h
    inc bc
    jr z, jr_078_5995

    inc sp
    ld [$023c], sp
    ld [hl], l
    ld a, [bc]
    or e

jr_078_5995:
    inc c
    ld [hl], c
    ld c, $91
    ld c, $74
    dec bc
    add hl, bc
    ld b, $5c
    inc bc
    ld c, b
    ld b, $3d
    ld [bc], a
    jr jr_078_59a8

    inc a
    ld [bc], a

jr_078_59a8:
    cp b
    ld b, $bc
    ld [bc], a
    call c, Call_078_4802

jr_078_59af:
    ld d, $a5
    cp $a6
    rst $38
    or [hl]
    rst $28
    sbc [hl]
    rst $20
    add a
    cp $97
    xor $94
    rst $28
    add l
    cp $45
    cp $4e
    db $fd
    adc a
    db $fc
    ld a, [bc]
    db $fd
    dec e
    xor $1a
    db $ed
    jr z, @-$1f

    jr z, jr_078_59af

    ld c, $f9
    dec c
    ld a, [$fb0c]
    inc c
    ei
    ld [$49ff], sp
    cp [hl]
    ld c, c
    cp [hl]
    xor a
    ld a, b
    ld e, a
    xor b
    xor e
    ld e, h
    sbc c
    ld l, [hl]
    push bc
    ld a, [hl-]
    add c
    ld a, [hl]
    inc b
    ei
    or [hl]
    ld e, e
    sub d
    ld a, a
    push af
    ld a, [de]
    pop af
    ld e, $79
    sub [hl]
    ld l, b
    sub a
    ld [hl], d
    sbc l
    ld h, b
    sbc a
    ld a, b
    sub a
    ld c, d
    or l
    ld c, b
    or a
    ld e, d
    or l
    rst $28
    dec [hl]
    ld l, e
    or l
    jp hl


    scf
    ld b, c
    cp a
    ld c, l
    or a
    db $fd
    daa
    dec h
    rst $38
    rst $38
    nop
    rst $10
    jr z, jr_078_5a36

    ldh [$e4], a
    cp a
    ld [hl+], a
    rst $38
    ld [hl], d
    xor a
    ld [hl-], a
    rst $28
    jp Jump_000_227f


    rst $38
    ld b, d
    rst $38

jr_078_5a26:
    jp nz, Jump_078_527f

    rst $38

jr_078_5a2a:
    ld e, d
    rst $30
    jp nz, Jump_078_447f

    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38

jr_078_5a36:
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld d, h
    rst $28
    rlca
    rst $38
    rra
    ldh [rSTAT], a
    cp [hl]
    sbc $21
    rst $18
    jr nz, jr_078_5a26

    jr nz, @-$1f

    jr nz, jr_078_5a2a

    jr nz, jr_078_5aac

    and b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc [hl]
    ld h, c
    xor [hl]
    ld d, c
    and h
    ld e, e
    and [hl]
    ld e, c
    sbc [hl]
    ld h, c
    cp [hl]
    ld b, c
    sbc [hl]
    ld h, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp a
    ld b, b
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    cp $01
    rst $38
    rst $38
    rst $28
    rst $38
    add a
    rst $38
    add e
    rst $38
    add e
    rst $38
    ld bc, $01ff
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
    db $10
    rst $28
    nop
    rst $38
    inc b
    ei
    ld [de], a
    db $ed
    xor $11
    xor [hl]
    ld bc, $00ab
    jr z, jr_078_5a9b

    ld b, d

jr_078_5a9b:
    ld bc, $0100
    ld b, h
    ld bc, $0108
    ld hl, $7800
    rlca
    cp h
    inc bc
    inc l
    inc bc
    ld d, h
    inc bc

jr_078_5aac:
    ld a, [hl]
    ld bc, $0578
    add hl, sp
    sub $30
    rst $18
    dec [hl]
    jp c, $d728

    ld [$52f7], sp
    cp a
    ld b, c
    cp a
    ld b, b
    cp a
    ld h, c
    cp a
    ld h, c
    cp a
    jp hl


    ccf
    pop hl
    ccf
    pop hl
    ccf
    ld h, l
    cp a
    ld h, c
    cp a
    and e
    ld a, a
    or a
    ld a, a
    db $e3
    ld a, a
    ld [c], a
    ld a, a
    ld [c], a
    ld a, a
    jp $537e


    cp $cb
    ld a, [hl]
    jp $d27e


    ld a, a
    xor $5b
    and $5b
    ld b, h
    ei
    ld e, b
    rst $30
    xor h
    db $d3
    sbc b
    rst $20
    xor b
    rst $10
    xor l
    sub $cc
    rst $30
    call z, $84f7
    rst $38
    add h
    rst $38
    add l
    cp $8d
    cp $88
    rst $38
    sbc d
    db $fd
    adc b
    rst $38
    ld a, [bc]
    db $fd
    ld a, [hl+]
    db $fd
    ld a, [bc]
    db $fd
    ld e, b
    rst $38
    ld e, h
    ei
    sbc b
    rst $38
    ld e, b
    rst $38
    add b
    ld a, a
    rst $38
    nop
    db $fd
    ld [bc], a
    add b
    rst $38
    or $fd
    ret c

    rst $38
    ld [hl], d
    db $fd
    ld a, [c]
    db $fd
    pop hl
    rst $38
    db $e3
    db $fd
    pop af
    rst $38
    and e
    db $fd
    ld h, e
    db $fd
    inc h
    ei
    dec [hl]
    db $eb
    cp h
    db $eb
    ld b, l
    ei
    db $e4
    ei
    ld h, e
    rst $38
    ld b, a
    ei
    ld b, d
    rst $38
    jp $86ff


    ld a, a
    db $eb
    rla
    ld b, e
    cp a
    rst $38
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ld a, [$fb07]
    rlca
    cp $03
    ld a, e
    add a
    rst $38
    inc bc
    dec sp
    rst $00
    cp e
    ld b, a
    ld [hl], a
    adc e
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $03fd
    db $fd
    inc bc
    rst $38
    ld bc, $ff01
    ld bc, $81ff
    ld a, a
    pop bc
    ccf
    pop hl
    rra
    ld sp, hl
    rlca
    db $fd
    inc bc
    ld sp, hl
    rlca
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld b, c
    cp a
    ld bc, $80ff
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ret nc

    cpl
    ret nz

    ccf
    and b
    ld e, a
    ret nz

    ccf
    ldh a, [rIF]
    sbc b
    ld h, a
    adc b
    ld [hl], a
    ld c, b
    or a
    call nc, $f42b
    dec bc
    xor $11
    ld d, c
    ld l, $4a
    dec [hl]
    cp a
    jp $d3af


    xor e
    rst $10
    ld [$ea97], a
    sub a
    dec l
    rst $10
    ld l, $d7
    ld h, [hl]
    sbc a
    ld h, h
    sbc a
    rst $30
    rra
    db $ec
    rra
    call $ec3f
    rra
    ld a, [$fd0f]
    ld c, $ba
    ld c, a
    dec a
    adc $5a
    xor a
    dec hl
    sbc $2b
    sbc $69
    sbc [hl]
    add hl, hl
    sbc $7d
    sbc [hl]
    xor l
    ld e, [hl]
    ei
    inc e
    ld d, l
    cp [hl]
    inc de
    db $fc
    rla
    db $fc
    inc de
    db $fc
    ld de, $91fe
    ld a, [hl]
    cp e
    ld a, h
    dec h
    ld a, [$fc23]
    ld a, e
    or h
    inc sp
    db $fc
    dec de
    db $f4
    inc hl
    db $fc
    and e
    db $fc
    inc hl
    db $fc

Call_078_5c00:
    inc bc
    db $fc
    ld e, a
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$47
    ld hl, sp+$37
    ld hl, sp+$47
    ld hl, sp+$27
    ld hl, sp-$49
    add sp, -$49
    ld hl, sp-$41
    ldh [$af], a
    ldh a, [$bf]
    ldh [$ef], a
    ldh a, [$7f]
    ldh [$6f], a
    ldh a, [$5f]
    ldh [$5f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
    and b
    rst $38
    and b
    rst $38
    and c
    rst $18
    and c
    rst $00
    cp c
    xor a
    pop de
    rst $20
    sbc c
    xor $d1
    and h
    db $db
    rst $30
    jp z, $caf7

    rst $30
    jp z, $ca27

    jp $01ae


    xor $cf
    and b
    sub b
    ldh [rNR10], a
    ldh [$90], a
    ldh [$0c], a
    ldh a, [$ac]
    rst $30
    inc de
    db $ed
    ld d, $e9
    ccf
    add sp, $19
    xor $9d
    xor $1e
    rst $28
    xor a
    sbc $0c
    rst $38
    cp [hl]
    db $db
    ld a, [$339d]
    call c, $d23d
    pop hl
    sbc $80
    rst $38
    add b
    rst $38
    and b
    rst $38
    ldh [$bf], a
    ld [c], a
    cp a
    ld a, a
    cp a
    rra
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld a, a
    rst $38
    inc bc
    rst $38
    ld d, b
    xor a
    ld b, h
    cp e
    add b

jr_078_5c8b:
    ld a, a
    db $fc
    inc bc
    rst $38
    nop
    add a
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rst $08
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    add hl, sp
    rst $38
    inc bc
    rst $38
    jr nz, jr_078_5c8b

    nop
    rst $38
    nop
    rst $38
    ld e, $e0
    ld e, [hl]
    and b
    ld e, [hl]
    and b

jr_078_5cb6:
    rst $38
    add b

jr_078_5cb8:
    dec l
    ret nc

    ccf
    ret nz

    dec a
    ret nz

    cp h
    ld b, c
    cp h
    ld b, c
    ld a, l
    add c
    cp a
    ld b, c
    ld a, e
    add c
    ld a, e
    add c
    ld a, d
    add c
    ld a, b
    add e
    ei
    ld [bc], a
    ld a, c
    add d
    db $fd
    ld [bc], a

jr_078_5cd4:
    rst $38
    nop
    rst $30
    nop
    or $00
    or $00
    or $00
    ldh a, [rDIV]
    ld hl, sp+$04
    db $fc
    nop
    db $fc
    nop
    db $ec
    nop
    db $e4
    ld [$08e4], sp
    db $e4
    ld [$08f4], sp

jr_078_5cf0:
    db $f4
    ld [$00d8], sp
    reti


    nop
    call z, $d110
    jr jr_078_5cd4

    db $10
    rst $30
    jr @+$01

    db $10
    rst $38
    db $10
    ld e, a
    jr nc, jr_078_5cd4

    jr nc, jr_078_5cb6

    jr nc, jr_078_5cb8

    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_078_5cf0

    jr nz, @-$1f

    ld h, b
    ld a, a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    ld a, a
    ret nz

    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rlca
    nop
    stop
    nop
    nop
    ld [$6f00], sp
    sub b
    ld hl, sp+$07
    ld a, [$8105]
    ld a, a
    ld b, c
    cp a
    ret z

    scf
    ld [$e21d], a
    rra
    db $10
    rst $28
    dec de
    db $e4
    xor l
    ld d, d
    cp l
    ld b, d
    dec c
    ld a, [c]
    ld c, a
    or b
    inc b
    ei
    or a
    ret


    ld bc, $41ff
    rst $38
    ld h, c
    rst $38
    ld b, e
    rst $38
    add c
    rst $38
    di
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld a, [$f6ff]
    rst $38
    rrca
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld bc, $f8fe
    rlca
    nop
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
    ret nz

    ccf
    and h
    ld e, e
    scf
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    scf
    rst $38
    ei
    rst $38
    cpl
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    cp a
    ld b, b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    ld e, a
    add b
    rra
    add b
    ld a, a
    add b
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    ccf
    nop
    dec a
    nop
    cpl
    nop
    inc bc
    nop
    dec l
    nop
    ld [$0900], sp
    nop
    dec b
    nop
    inc c
    nop
    inc b
    nop
    inc d
    nop
    inc b
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    add c
    nop
    or l
    nop
    dec a
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18

jr_078_5e03:
    jr nz, jr_078_5e03

    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    cp h
    ld b, e
    cp $01
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03fd
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    ei
    rlca
    ld a, [$ff07]
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $f5
    ld c, $fd
    ld c, $eb
    inc e
    ei
    inc c
    rst $30
    ld [$0003], sp
    cp a
    nop
    nop
    nop
    add b
    nop
    ld e, a
    and b
    cp e
    ld [hl], h
    dec sp
    db $e4
    ld a, e
    and h
    or a
    ld l, b
    ld [hl], a
    add sp, $5f
    add sp, -$01
    ld b, b
    ld l, a
    ret c

    ld a, a
    ret nz

    ld a, [hl]
    pop bc
    rst $38
    ret nz

    db $fd
    jp nz, $e19e

    cp [hl]
    pop bc
    sbc h
    db $e3
    cp [hl]
    pop bc
    dec e
    db $e3
    and l
    ld e, e
    inc hl
    call c, $e916
    ld [$1ff7], sp
    db $e3
    dec sp
    rst $00
    ld a, [hl+]
    rst $10
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld h, h
    sbc e
    dec bc
    db $f4
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$e8]
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38

jr_078_5e9c:
    rst $38
    rst $38
    ld sp, hl
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
    db $fd
    nop
    rst $38
    nop
    rst $08
    nop
    db $e3
    inc c
    push bc
    ld c, $f5
    ld a, [bc]
    sub $09

jr_078_5eba:
    sbc h
    inc bc
    db $dd
    ld [bc], a
    sbc h
    inc bc

jr_078_5ec0:
    cp b
    rlca
    xor c
    ld b, $39
    ld b, $05
    ld c, $d1
    ld c, $dd
    ld c, $d1
    ld c, $db
    inc c
    db $dd
    ld c, $db
    inc c
    cp $0c
    cp [hl]
    ld [$08be], sp
    cp $08
    db $fc
    ld [$18ec], sp
    db $fc
    jr jr_078_5ec0

    jr nc, jr_078_5eba

    jr c, @-$03

    jr nc, @-$1f

    jr nc, @-$03

    jr nc, jr_078_5e9c

    ld [hl], b
    cp c
    ld [hl], b
    cp e
    ld h, b
    di
    ld h, b
    ei
    ld h, b
    ld e, [hl]
    ldh [$5c], a
    ldh [$ed], a
    ret nz

    ei
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld a, a
    add b
    cp a
    ret nz

    ld [hl], a
    adc b
    rst $30
    adc b
    ccf
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, l
    ld [bc], a
    rst $38
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
    db $d3
    nop
    scf
    nop
    nop
    nop
    rst $28
    nop
    add a
    ld a, b
    ldh [$3f], a
    add c
    ld a, [hl]
    cp a
    ld h, b
    ei
    ld h, h
    rst $18
    ld h, b
    ld e, b
    rst $20
    or h
    ld c, e
    ldh [$5f], a
    ld b, b
    rst $38
    dec de
    rst $20
    or l
    res 6, l
    set 4, a
    sbc e
    ld b, e
    cp a
    ld [c], a
    sbc a
    ld h, d
    sbc a
    add [hl]
    ld a, a
    add [hl]
    ld a, a
    ld b, $ff
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    jr @+$01

    ld a, [de]
    rst $38
    inc a
    rst $38
    ld a, [hl-]
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld [hl], c
    adc [hl]
    ldh a, [rIE]
    rrca
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ld e, a
    and b
    ld bc, $11fe
    xor $01
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
    adc b
    rst $38
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    sbc $20
    sbc $20
    rst $38
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
    add b
    ei
    nop
    ei
    nop
    ld a, a
    add b
    rst $38
    nop
    cp [hl]
    ld b, b
    ld h, a
    add b
    ld l, a
    add b
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    cp $00
    db $fd
    nop
    or e
    nop
    pop af
    nop
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    or a
    nop
    ld l, a
    nop
    adc $00
    ld a, [hl]
    nop
    inc a
    nop
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $10
    nop
    or a
    nop
    add a
    nop
    add $00
    rst $20
    nop
    inc l
    nop
    rst $28
    nop
    rst $08
    nop
    rst $18
    nop
    sbc [hl]
    ld bc, $01fe
    rst $38
    ld bc, $03fd
    db $fc
    inc bc

jr_078_6016:
    cp $03
    ld a, [$ff07]
    ld c, $f7
    ld c, $f5
    ld c, $f7
    inc c
    rst $30
    inc c
    rst $38
    inc c
    ei
    inc c
    rst $28
    jr jr_078_6016

    inc e
    rst $38
    nop
    di
    nop
    ccf
    nop
    ld c, d
    nop
    ld a, a
    add b
    or b
    ld a, a
    ld a, d
    push af
    ld h, c
    cp $6b
    db $f4
    ld h, e
    db $fc
    and $f9
    jp nz, $c0fd

    rst $38
    adc d
    rst $30
    add a
    cp $0f
    or $48
    rst $30
    dec e
    and $2f
    call c, $fc0b
    ld c, c
    cp $b7
    ret c

    rla
    ld hl, sp+$1f
    ldh a, [$62]
    cp l
    ld hl, $6dfe
    ld a, [c]
    ld [$04f7], sp
    ei
    ld [bc], a
    db $fd
    inc h
    db $db
    xor c

jr_078_606b:
    rst $10
    ld [bc], a
    db $fd
    add b
    ld a, a
    ld d, c
    rst $38
    ldh [rIE], a
    sbc a
    ld a, a
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
    ld h, b
    rst $38
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

jr_078_608d:
    rst $38
    nop
    rst $38
    xor $10
    db $ed
    db $10
    call $dc30
    jr nz, jr_078_60f1

    jr nz, jr_078_606b

    jr nz, jr_078_608d

    nop

jr_078_609e:
    rst $30
    nop
    rst $38
    nop
    cp $00
    ld [hl], a
    add b
    di
    nop
    di
    nop
    di
    nop
    ei
    nop
    cp b
    nop
    rst $38
    nop
    cp c
    nop
    dec sp
    nop
    inc sp
    nop
    rrca
    nop

jr_078_60ba:
    ld c, e
    nop
    xor b
    nop
    dec [hl]
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
    db $fd
    nop
    rst $38
    nop
    cp a
    nop

jr_078_60d2:
    rst $38
    nop

jr_078_60d4:
    cp $01
    rst $38
    ld bc, $01fe
    ld [hl], l
    inc bc
    ld h, [hl]
    inc bc
    ld b, a
    ld [bc], a

jr_078_60e0:
    dec bc
    ld b, $cd
    ld b, $c5
    ld c, $9f
    inc c
    sbc a
    inc c
    di
    inc c
    or a
    jr @-$07

    jr jr_078_60e0

jr_078_60f1:
    jr jr_078_60d2

    jr nc, jr_078_60d4

    jr nc, @-$0f

    jr nc, @+$01

    jr nz, jr_078_60ba

    ld h, b
    rst $38
    jr nz, jr_078_609e

    ld h, b
    cp a
    ld b, b
    rst $38
    ld b, b
    cp a
    ld b, b
    ccf
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, [hl]
    add c
    rst $38
    ld bc, $01fe
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $03
    cp $03
    db $fc
    inc bc
    ld sp, hl
    ld b, $f9
    ld b, $79
    add [hl]
    rst $38
    nop
    ccf
    nop
    xor e
    nop
    ei
    nop
    ld c, a
    or b
    ld b, b
    cp a
    call nc, $903b
    ld a, a
    inc d
    ei
    jr nz, @+$01

    inc b
    ei
    dec b
    ei
    sub l
    ld l, a
    adc e
    ld [hl], a
    ld h, e
    rst $18
    cp e
    ld b, a
    jp Jump_078_6f3f


    sub a
    ld d, [hl]
    xor a
    sub [hl]
    ld l, a
    ld l, [hl]
    sbc a
    ld c, $ff
    adc l
    ld a, [hl]
    ld a, $dd
    add hl, de
    cp $18
    rst $38
    add hl, sp
    cp $30
    rst $38
    ld a, [c]
    rst $38
    db $fc
    rst $38
    ld [c], a
    rst $38
    push hl
    rst $38
    push hl
    rra
    cp $ff
    sub d
    rst $38
    db $dd
    rst $38
    rrca
    rst $38
    rst $38
    ld bc, $01fe
    rst $38
    ld bc, $03fc
    scf
    bit 0, d
    rst $38
    ld b, $ff
    rrca
    rst $30
    inc [hl]
    rst $08
    dec a
    rst $08
    dec l
    rst $18
    dec sp
    rst $18
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
    jr jr_078_61c3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_078_61d3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_078_61e3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_078_61f3

    ld [hl-], a

jr_078_61c3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_078_6203

    ld a, [hl-]
    dec sp
    ld [de], a
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_078_61d3:
    ld b, d
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

jr_078_61e3:
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

jr_078_61f3:
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
    ld [hl], b
    ld [hl], c

jr_078_6203:
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
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_078_62c4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_078_62d4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_078_62e4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_078_62f4

    ld [hl-], a

jr_078_62c4:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_078_6304

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop

jr_078_62d4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_078_62e4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_078_62f4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_078_6304:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld bc, $0001
    nop
    rlca
    ld bc, $0000
    nop
    nop
    nop
    nop
    dec b
    dec b
    inc b
    inc b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0000
    ld bc, $0505
    dec b
    nop
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    dec b
    dec b
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    dec b
    dec b
    nop
    dec b
    inc b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0909], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ccf
    jr jr_078_644a

    jr jr_078_6450

    inc e
    dec sp
    inc e
    ccf
    ld [$0c3b], sp
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rla
    inc c
    rla
    inc c
    dec c
    ld b, $45
    ld c, $0f

jr_078_642b:
    inc b
    dec c
    ld b, $09
    ld b, $0b
    ld b, $47
    ld [bc], a
    ld b, a
    ld [bc], a
    ld b, h
    inc bc
    inc h
    inc bc

jr_078_643a:
    inc [hl]
    inc bc

jr_078_643c:
    scf
    ld bc, $0133
    dec sp
    ld bc, $011b
    dec de
    nop
    dec bc
    nop
    rrca
    nop

jr_078_644a:
    rra
    nop
    dec de
    nop
    dec bc
    nop

jr_078_6450:
    dec bc
    nop
    dec hl
    nop
    dec bc
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
    add b
    nop
    add b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld h, b
    add b
    ld l, b
    add b
    ld h, b
    add b
    ld [hl], b
    add b
    ld d, b
    add b
    ld d, b
    add b
    ret nc

    add b
    jr z, jr_078_643a

    jr nz, jr_078_643c

    ldh [rLCDC], a
    ldh [rLCDC], a
    add b
    ld h, b
    and b
    ld h, b
    ldh a, [rNR41]
    ldh a, [rNR41]
    sub b
    jr nz, jr_078_642b

    db $10
    cp [hl]
    db $10
    sbc $10
    call $9a10
    nop
    sub a
    ld [$08db], sp
    rrc b
    rst $08
    ld [$0c83], sp
    ret


    inc b
    push bc
    inc b
    rst $20
    inc b
    ld h, e
    inc b
    push bc
    ld [bc], a
    rst $20
    ld [bc], a
    rst $30
    ld [bc], a
    ld [c], a
    inc bc
    db $f4
    inc bc
    add sp, $03
    ld a, [$ff01]
    ld bc, $01ff
    rst $38
    ld bc, $01fe
    cp $01
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
    add b

jr_078_64ca:
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    sbc a
    ld h, b
    rst $18
    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_078_64ca

    ld [hl-], a

jr_078_64de:
    call $df32
    jr nc, jr_078_64de

    inc d
    rst $38
    db $10
    ld [hl], e
    sbc h
    dec b
    ld a, [$07f8]
    inc bc
    nop
    add b
    nop
    ld a, [hl]
    nop
    pop hl
    nop
    ld hl, sp+$00
    db $db
    inc h
    db $dd
    ld h, $d1
    ld l, $e9
    ld d, $eb
    ld d, $7e
    add e
    ld h, [hl]
    sbc e
    dec l
    db $d3
    ld e, c
    and a
    or l
    ld l, e
    ld bc, $a7ff
    reti


    xor l
    db $d3
    rst $38
    nop
    cp $01
    cp $01

jr_078_6516:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, d
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    sbc [hl]
    nop
    ld e, a
    add b
    db $dd
    add b
    ld d, h
    add b
    push bc
    add b
    push bc
    add b
    adc a
    ld b, b
    ld b, l
    add b
    ld l, [hl]
    add b
    jr nz, jr_078_6516

    and $00
    ld h, b
    add b
    ldh [rP1], a
    and b
    ld b, b
    ldh [rP1], a
    ldh a, [rP1]
    ld h, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    db $10
    jr nz, jr_078_659d

    nop
    jr nc, jr_078_6570

jr_078_6570:
    jr nz, @+$12

    jr z, jr_078_6584

    jr z, jr_078_6586

    ld [$0010], sp
    jr jr_078_657b

jr_078_657b:
    jr jr_078_6591

    ld [$0814], sp
    inc b
    ld [$0804], sp

jr_078_6584:
    ld b, $08

jr_078_6586:
    ld [bc], a
    inc c
    ld a, [bc]
    inc b
    add hl, bc
    ld b, $0b
    ld b, $1a
    rlca
    add [hl]

jr_078_6591:
    inc bc
    sub [hl]
    inc bc
    sbc [hl]
    inc bc
    add e
    inc bc
    db $d3
    ld bc, $015f
    ld e, a

jr_078_659d:
    ld bc, $014f
    push bc
    ld bc, $01c6
    and a
    nop
    ld c, a
    nop
    rst $10
    nop
    ld c, e
    nop
    sbc a
    nop
    call $a500
    nop
    push de
    nop
    ld d, c
    add b
    ld d, a
    add b
    rst $08
    add b

jr_078_65ba:
    ld [$f680], a
    add b

jr_078_65be:
    or $80
    ei
    add b
    cp e
    ret nz

jr_078_65c4:
    or a
    ret nz

    ld a, a
    ret nz

    push af
    ld b, b
    ld sp, hl
    ld b, b
    pop af
    ld b, b
    db $dd
    ld h, b
    cp l
    ld h, b
    push af
    jr nz, @+$01

jr_078_65d5:
    jr nz, jr_078_65d5

jr_078_65d7:
    jr nz, jr_078_65d7

    jr nc, jr_078_65ba

    jr nc, @-$1f

    jr nc, jr_078_65be

    jr nc, jr_078_65d7

    jr @-$3f

    ld e, b
    rst $38
    jr @-$0f

    jr @-$0f

    jr jr_078_6612

    ret c

    pop af
    ld c, $07
    nop
    nop
    nop
    ld b, b
    nop
    ld [bc], a
    nop
    ret nz

    nop
    ld c, [hl]
    or b
    ld b, c
    cp [hl]
    inc bc
    cp $8b
    db $76
    ld h, d
    sbc a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld de, $89ff
    ld a, a
    nop
    rst $38
    ld b, $ff
    add sp, -$61
    sub a
    ld a, b

jr_078_6612:
    rst $30
    jr jr_078_65c4

    ld d, b
    rst $20
    jr @+$01

    ld [$18ef], sp

jr_078_661c:
    rst $28
    jr @+$01

    ld [$08f7], sp
    and a
    jr jr_078_661c

    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    db $db
    inc b
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    ld a, [de]
    nop
    xor e
    nop
    xor e
    nop
    di
    nop
    ei
    nop
    ld sp, hl
    nop
    rst $20
    nop
    ld h, l
    nop
    inc bc
    nop
    add e
    nop
    inc bc
    nop
    rla
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
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0300
    nop
    ld de, $1900
    nop
    sbc l
    nop
    rra
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
    rst $38
    nop
    rst $38
    nop

jr_078_6696:
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
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

jr_078_66b4:
    rst $18
    ld h, b
    rst $18
    ld h, b

jr_078_66b8:
    rst $18
    ld h, b
    cp a
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_078_66b4

    jr nc, jr_078_6696

    jr nc, jr_078_6748

    db $10
    cp a
    db $10
    ld e, a
    db $10
    rst $30
    jr jr_078_66b8

    jr @+$01

    ld [$08ff], sp
    rst $38
    ld [$887f], sp
    di
    inc c
    ld a, e
    adc h
    di
    inc c
    rst $38
    inc b
    rst $38
    inc b
    cp a
    ld b, h
    rst $38
    inc b
    db $fd
    ld b, $fb
    ld b, $7d
    add d

jr_078_66ee:
    ld b, a
    cp b
    rra
    nop
    nop
    nop
    nop
    nop
    ld sp, $0000
    nop
    pop af
    nop
    cp [hl]
    ld b, c
    rst $18
    ld hl, $01ff
    sbc $21
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop

jr_078_670c:
    ld l, a
    sub b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $ec
    inc de
    db $fc
    inc bc
    cp h
    ld b, e
    cp [hl]
    ld b, c

jr_078_671e:
    or $49
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @-$5f

    jr nz, @+$01

    nop
    ld e, a
    jr nz, jr_078_671e

    jr nz, jr_078_670c

    jr nz, jr_078_66ee

    nop
    or c
    nop
    or b
    nop
    or e
    nop
    or c
    nop
    or b
    nop
    jr nc, jr_078_6740

jr_078_6740:
    sub b
    nop
    sub b
    nop
    ret c

    nop
    ld e, b
    nop

jr_078_6748:
    ret c

    nop
    ret nc

    nop
    sub b

jr_078_674d:
    nop
    ld b, b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret z

    nop
    ldh [rP1], a
    ret c

    nop
    ld b, b
    add b
    ldh [rP1], a
    ldh a, [rP1]
    ret nc

    nop
    ret nc

    nop
    or h
    ld b, b
    ldh a, [rP1]
    or b

jr_078_6773:
    ld b, b
    inc b
    ld h, b
    ld d, h
    jr nz, jr_078_67cd

    jr nz, @+$52

    jr nz, jr_078_674d

    jr nz, jr_078_67cf

    jr nz, jr_078_6773

    nop

jr_078_6782:
    ldh [rNR10], a
    ldh a, [rNR10]
    ld hl, sp+$10
    ld hl, sp+$10
    add sp, $10
    pop hl
    jr @-$13

    jr @-$0f

    jr jr_078_6782

    jr @-$01

    ld [$0cb9], sp
    db $fd
    ld [$0cf9], sp
    rst $30
    inc c
    rst $30
    inc c
    rst $20
    inc e
    rst $30
    inc c
    rst $30
    inc c
    db $fd
    ld b, $fd
    ld b, $fd
    ld b, $f9
    ld b, $f9
    ld b, $be
    ld b, e
    rst $18
    ld [hl+], a
    cp [hl]
    ld b, e
    cp $03
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01fe
    rst $38

jr_078_67cd:
    nop
    rst $38

jr_078_67cf:
    nop
    ld a, [hl]
    add b

jr_078_67d2:
    rst $38
    nop
    sbc $20
    rst $38
    nop
    db $fc
    ld bc, $01f6
    xor h
    inc bc
    jr z, jr_078_67e7

    ld d, $0b
    ld l, b
    rla
    cp b
    rlca
    ld [hl], d

jr_078_67e7:
    dec c
    ldh a, [rVBK]
    ld a, [de]
    rst $20
    add hl, sp
    add $ee
    ld de, $8679
    adc c
    or $ef
    db $f4
    pop hl
    cp $e1
    cp $e5
    ei
    db $e4
    ei
    ld a, h
    db $e3
    di
    inc c
    rst $38

jr_078_6803:
    nop
    ld a, b
    add b
    rst $38

jr_078_6807:
    add b
    ei
    add h
    sbc $a1
    rst $38
    add b
    rst $38

jr_078_680f:
    add b

jr_078_6810:
    cp a

jr_078_6811:
    ret nz

    cp l
    jp nz, $c0bf

    cp a
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    rst $38
    ld b, b
    cp a
    ld b, b
    rst $38
    ld b, b
    rst $28
    ld d, b
    xor a
    ld d, b
    cp a
    ld d, b
    xor a
    ld d, b
    cp a
    ld b, b
    ld e, e
    jr nz, jr_078_6889

    jr nz, jr_078_68a9

jr_078_6831:
    jr nz, jr_078_6803

    jr nz, jr_078_6885

    jr nz, jr_078_6807

    jr nz, jr_078_6839

jr_078_6839:
    jr nc, jr_078_684b

    jr nz, jr_078_684d

    jr nz, jr_078_680f

    jr nz, jr_078_6810

    jr nc, jr_078_67d2

    ld [hl], b
    adc a
    ld [hl], b
    rst $00
    jr c, jr_078_6810

    jr c, jr_078_6811

jr_078_684b:
    jr c, @-$1b

jr_078_684d:
    jr jr_078_6831

    jr @-$1b

    jr @-$17

    jr @-$17

    jr @-$07

    ld [$08f7], sp
    rst $30
    ld [$0cf3], sp
    ld d, e
    xor h
    adc h
    nop
    adc [hl]
    nop
    adc d
    inc b
    ld [$6804], a
    inc b
    nop
    inc b
    inc bc
    inc b
    add e
    inc b
    add e
    inc b
    ld [hl], a
    inc b
    di
    inc b
    rst $30
    nop
    db $dd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    db $fd

jr_078_6885:
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd

jr_078_6889:
    ld [bc], a
    ld [hl], a
    nop
    ld l, a
    nop
    ld [hl], $01
    xor $01
    rst $30
    ld bc, $01fe
    or $01
    cp $01
    cp [hl]
    ld b, c
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    cp $01
    sbc $21
    cp $01
    rst $38

jr_078_68a9:
    nop
    rst $38
    nop
    rst $10
    ld [$00bf], sp
    rst $38
    nop
    ccf
    add b
    ccf
    add b
    rst $38
    add b
    rst $18
    add b
    sbc $80
    rst $38
    add b
    xor a
    ret nc

    and a
    ret nc

    cp $80

jr_078_68c4:
    cp l
    ret nz

    rst $38
    add b

jr_078_68c8:
    cp $01
    db $f4
    inc bc
    ei
    ld b, $fd
    ld [bc], a
    rst $28
    ld [de], a
    ld c, [hl]
    inc sp
    adc $33
    db $ec
    ld d, e
    ld c, h
    di
    sbc [hl]
    ld h, c
    ld [hl], $e9

jr_078_68de:
    or $a9

jr_078_68e0:
    ld a, $e9

jr_078_68e2:
    scf
    jp hl


    ld a, $e1

jr_078_68e6:
    ld a, [bc]
    push af
    ld e, a
    or b

jr_078_68ea:
    ld e, $f1
    ld e, a
    or b
    or a
    ld e, b
    or e
    ld e, h
    ld a, d
    sbc l
    ld a, d
    sbc l
    ld e, d
    cp l
    add hl, sp
    sbc $09
    cp $09
    cp $88
    ld a, a
    db $e3
    nop
    ldh a, [rP1]
    ld a, h
    nop
    rst $08
    nop
    cp $00
    cp a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    sub a
    ld l, b
    rst $18
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $18
    jr nz, jr_078_68de

    jr nz, jr_078_68e0

    jr nz, jr_078_68e2

    jr nz, jr_078_68c4

    jr nz, jr_078_68e6

    jr nz, jr_078_68c8

    jr nz, jr_078_68ea

    nop
    ccf
    nop
    rra
    nop
    ldh [$1f], a
    ldh [$1f], a
    db $ec
    inc de
    add $19
    call z, $c413
    dec de
    call $cf12
    db $10
    rst $08
    db $10
    rst $18
    nop
    rst $10
    ld [$00df], sp
    cp a
    nop
    rst $30
    ld [$08d7], sp
    rst $10
    ld [$08e7], sp
    rst $20
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    di
    inc c
    ld a, [c]
    dec c
    di
    inc c
    dec c
    nop
    ld bc, $0004
    inc b
    inc b
    inc b
    inc bc
    inc b
    ld b, e
    inc b
    ld b, d
    inc b
    ld h, a
    nop
    ld l, l
    ld [bc], a
    rst $38
    nop
    ei
    ld b, $ff
    ld [bc], a
    cp $03
    cp $03
    rst $38
    inc bc
    cp $03
    db $dd
    ld [hl+], a
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    cp $01
    rst $38
    ld bc, $01ff
    xor $11
    rst $38
    ld bc, $09f7
    db $76
    adc c
    ld [hl], h
    adc e
    ld [hl], a
    adc c
    rst $30
    adc c
    or $89
    ld a, [c]
    adc l
    ld a, [$fb85]
    add h
    ld a, [$3d84]
    ret nz

    dec sp
    ret nz

    cp a
    ld b, b
    rst $38
    ld b, b
    cp $41
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, [c]
    rrca
    rst $30
    ld a, [bc]
    and $1b
    ldh a, [$2f]
    cp b
    ld h, a
    and b
    ld a, a
    jr nz, @+$01

    ld h, b
    cp a
    and $3d
    ld h, a
    cp h
    and c
    ld a, [hl]
    and b
    ld a, a
    and c
    ld a, [hl]
    or c
    ld a, [hl]
    db $10
    rst $38
    ld d, c
    cp [hl]
    inc de
    cp $13
    cp $92
    ld a, a
    ld e, e
    cp [hl]
    ld a, [bc]
    rst $38
    ld c, d
    cp a
    ld c, d
    cp a
    ret c

    cp a
    ret c

    cp a
    adc b
    rst $38
    adc b
    rst $38
    ld [$8cff], sp
    ld a, a
    ret z

    ld a, a

Call_078_69f6:
    ld c, l
    ld a, [$fb44]
    jp z, $a175

    ld a, [hl]
    add c
    ld a, [hl]
    add b
    ld b, b
    jr nc, jr_078_6a04

jr_078_6a04:
    ld b, $00
    nop
    nop
    ret nz

    nop
    jr c, jr_078_6a0c

jr_078_6a0c:
    add d
    nop
    ldh a, [rP1]
    cp $80
    rst $38
    add b
    db $fd
    add d
    ld a, h
    add e
    db $fd
    ld [bc], a

jr_078_6a1a:
    ld hl, sp+$03
    cp d

jr_078_6a1d:
    ld b, c
    ld a, [$ee41]
    ld b, c
    rst $38

jr_078_6a23:
    ld b, b
    xor $41
    xor $41
    ld [$ee41], a

jr_078_6a2b:
    ld b, c
    xor [hl]
    ld b, c
    and l
    ld b, c
    db $e4
    ld bc, $01e6
    and $01
    ld h, [hl]
    ld bc, $0063
    ld h, c
    nop
    ld hl, $2100
    nop
    call nc, $d521
    jr nz, jr_078_6a1a

jr_078_6a45:
    jr nz, @-$25

    jr nz, jr_078_6a1d

jr_078_6a49:
    jr nz, jr_078_6a23

    jr nz, @-$26

    jr nz, @-$26

    jr nz, jr_078_6a49

    nop
    ret nc

    jr nz, jr_078_6a2b

    jr nz, jr_078_6a45

    db $10
    rst $28
    db $10
    rst $28
    db $10
    xor a
    ld d, b
    ld a, [hl+]
    push de
    ret nc

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
    ld [hl], a
    ld [$08f7], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$8c7b], sp
    di
    inc c
    di
    inc c
    rst $38
    inc b
    di
    inc c
    rst $18
    inc h
    rst $20
    inc e
    rst $30
    inc c
    ld d, [hl]
    xor h
    ld c, [hl]
    or h
    ld c, h
    or b
    dec l
    ret nc

    ld [hl-], a
    ret nz

    dec l
    ret nz

    jp c, $be81

    inc bc
    ld a, h
    rlca
    cp $0f
    and $1f
    rst $10
    ld a, $8b
    ld a, [hl]
    dec bc
    cp $8f
    cp $8b
    cp $da
    rst $38
    di
    cp $63
    cp $43
    cp $c2
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    ld b, e
    rst $38
    ld b, c

jr_078_6ac9:
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld c, e
    rst $30
    ld b, e
    rst $38
    db $e3
    ld a, a
    jr nz, @+$01

    and b
    ld a, a
    inc hl
    db $fc
    inc hl
    db $fc
    xor [hl]
    ld a, c
    dec l
    ld a, [c]
    rst $30
    cp $61
    cp $ef
    db $fc
    set 7, h
    xor a
    ld hl, sp+$37
    ld hl, sp+$5f
    ldh a, [$af]
    ldh a, [$b6]
    jp hl


    ld c, h
    di
    ld e, h
    db $e3
    sub b
    rst $28
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and $19
    ld sp, hl
    ld b, $fa
    ld bc, $807c
    db $db
    jr nz, jr_078_6ac9

    nop
    db $e3
    nop
    pop af
    nop
    db $fc
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$30
    rst $38
    db $10
    rst $38
    ld de, $50ff
    rst $38
    ld d, c
    rst $38
    cp $01
    xor $11
    xor $11
    xor $11
    cp $01
    cp $01
    rst $38
    ld bc, $01fd
    cp $01
    cp $01
    cp $01
    cp $01
    ld e, [hl]
    ld bc, $015d
    inc e
    ld bc, $1108
    add hl, de
    rst $38
    dec c
    rst $38
    ld bc, $c7ff
    dec sp
    di
    inc bc
    ld h, c
    sub e
    ld h, c
    sub e
    ld l, c
    sbc a
    sub [hl]
    add hl, bc
    ld [hl], $89
    scf
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld b, $f9
    db $10
    rst $28
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp h
    ld b, b
    cp $00
    cp [hl]
    ld b, b
    cp d
    ld b, h
    cp d
    ld b, h
    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    cp e
    ld b, h
    cp c
    ld b, h
    ld sp, hl
    inc b
    ei
    inc b
    cp c
    ld b, h
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $f4
    nop
    db $ed
    jr nz, jr_078_6c06

    add b
    push de
    ld [bc], a
    ld c, c
    ld b, $01
    ld c, $01
    ld e, $c1
    ld a, $b1
    ld l, [hl]
    ld c, c
    or [hl]
    ld d, l
    cp d
    sub l
    ld a, d
    ld d, l
    cp d
    push de
    ld a, [hl-]
    ld b, e
    cp [hl]
    ld l, a
    sub d
    rst $00
    ld a, [hl-]
    ld b, c
    cp [hl]
    ld [hl], c
    sbc [hl]
    ld h, b
    sbc a
    ld [hl], d
    sbc a
    or $1f
    ei
    ld e, $b9
    ld e, [hl]
    rst $28
    inc e
    ld a, b
    rst $38
    ld e, b
    rst $38
    pop de
    cp $d1
    cp $63
    db $fc
    ld b, a
    ld hl, sp+$47
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$1f], a
    ldh [$7f], a
    ret nz

    ld a, $c1
    cp $81
    ld a, l
    add d
    ld sp, hl
    ld b, $04
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    ld b, c
    rst $38
    ld c, c
    rst $38
    rst $38
    rst $38
    ld [$ff17], a
    ld bc, $847b

jr_078_6c06:
    sbc a
    ld h, b
    rst $28
    db $10
    reti


    ld b, $2e
    ld bc, $00ec
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    stop
    rst $38
    jr nz, @+$01

    dec hl
    rst $38
    dec h
    rst $38
    sub $29
    jp c, $fb25

    inc b
    ei
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $30
    inc c
    ld a, [$fe05]
    dec b
    ei
    dec b
    ld a, [$e305]
    dec e
    ld [$ea15], a
    dec d
    db $eb
    inc d
    rst $30
    inc c
    rst $20
    inc e
    ld h, a
    inc e
    db $eb
    inc d
    rst $28
    inc d
    db $eb
    inc d
    db $eb
    inc d
    db $eb
    inc d
    ld l, e
    sub h
    ld l, l
    sub d
    rst $18
    nop
    call $ed12
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    rst $38
    db $10
    ld l, l
    sub d
    db $ed
    ld [de], a
    xor $11
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp l
    ld [bc], a
    ld sp, hl
    ld b, $bd
    ld [bc], a
    ld sp, hl
    ld b, $f5
    ld a, [bc]
    push af
    ld a, [bc]
    rst $30
    ld [$08f7], sp
    xor $11
    cp $01
    rst $38
    ld [bc], a
    cp e
    ld b, $72
    rrca
    ld hl, $2c1e
    rra
    rrca
    ld a, [hl]
    jp hl


    ld e, [hl]
    pop af
    ld c, [hl]
    ldh [$5f], a
    sub b
    ld l, a
    call nc, $9a6b
    ld l, a
    dec sp
    adc $12
    rst $28
    sub d
    ld l, a
    rst $28
    rst $38
    xor $ff
    db $ec
    rst $38
    db $ed
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld h, l
    cp $e3
    db $fc
    rst $28
    ld hl, sp+$4f
    ldh a, [$8f]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, $c1
    rst $38

jr_078_6cbf:
    add b
    inc bc
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    inc h
    ei
    ld c, b
    rst $30
    ld b, h
    ei
    add b
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    jr nz, jr_078_6cbf

    inc b
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    add b
    rst $38
    add e
    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    adc $31
    db $d3
    inc c
    ld sp, hl
    ld b, $fd
    inc bc
    cp a
    ld b, b
    jr nc, jr_078_6d12

jr_078_6d12:
    dec c
    nop
    inc bc
    nop
    ld h, c
    nop
    cp [hl]
    nop
    rst $38
    nop
    ld [hl], e
    adc h
    ld c, b
    rst $30
    ld b, c
    cp $53
    cp $81
    cp $09
    or $41
    cp $01
    cp $03
    cp $97
    ld a, [$fff6]
    ld a, [c]
    rst $38
    ldh a, [rIE]
    pop af
    cp $f1
    cp $71
    cp $79
    xor $55
    and $40
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ld l, [hl]
    rst $38
    ldh a, [rIE]
    ld a, h
    jp $c3fc


    db $fc
    jp $c3fc


    db $f4
    set 6, l
    set 7, a
    jp $cbf4


    push af
    set 2, l
    db $eb
    call nc, $d8eb
    rst $20
    jp nc, $d7ef

    db $eb
    add $fb
    add $fb
    sub $eb
    rst $00
    ld sp, hl
    and $fb
    ld a, a
    jp nz, $e21f

    ld e, d
    and a
    ld [$fa17], a
    daa
    cp d
    ld h, a
    ld a, [hl+]
    rst $30
    inc hl
    cp $22
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    daa
    cp $64
    rst $38
    ld l, h
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld e, b
    rst $30
    ld [hl], b
    rst $18
    ld b, b
    cp a
    nop
    rst $38
    ld a, l
    rst $38
    adc b
    rst $38
    nop
    rst $38
    inc b
    ei
    dec c
    ld a, [c]
    call $fc32
    inc bc
    cp $01
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    add h

jr_078_6db9:
    rst $38
    inc b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [de], a
    db $fd
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    add c
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    jr nz, jr_078_6db9

    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, c
    rst $38
    pop bc
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    jp nz, Jump_078_7140

    jr nz, jr_078_6e30

    db $10
    ld e, c
    inc b
    dec de
    inc b
    dec d
    ld [bc], a
    add hl, bc
    nop
    ld b, h
    add b
    ld h, b
    nop
    ld a, [c]
    nop
    ld a, b
    nop
    xor [hl]
    nop
    rst $30
    nop
    rst $38
    nop
    ld a, h
    add e
    ld h, h
    sbc e
    or $00
    ld h, b
    add b
    sbc b
    ldh [$9e], a
    push hl
    cp h
    jp $c136


    dec a
    jp nz, $807f

jr_078_6e30:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    inc hl
    rst $38
    rlca
    ei
    dec hl
    db $db
    inc hl
    rst $18
    ld b, $01
    ld b, [hl]
    ld bc, $01d6
    cp $01
    ld a, d
    add l
    ld a, d
    add l
    ld a, d
    add l
    rst $38
    add c
    ld a, [hl]
    add c
    ld l, [hl]
    sub c
    ld a, a
    add c
    ld l, $d1
    ld l, a
    sub b
    ld l, a
    sub c
    ld l, c
    sub e
    ld d, a
    and e
    cp c
    ld b, a
    ld [hl], d
    adc a
    db $e4
    dec de
    ret nz

    ccf
    sbc b
    ld [hl], a
    dec c
    rst $30
    ld a, [bc]
    rst $30
    ld c, b
    or a
    db $fc
    rst $38
    cp h
    rst $38
    ei
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$df], a
    ldh [$bf], a
    ret nz

    xor d
    push de
    nop
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld e, b
    rst $20
    add hl, bc
    or $a0
    rst $18
    ld [hl], e
    adc h
    and b
    ld e, a
    ldh [$1f], a
    ld c, h
    or e
    ld d, $e9
    ld h, b
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $09
    or $7f
    add b
    ei
    inc b
    rst $38
    nop
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $81ff
    rst $38
    add b
    rst $38
    jp nz, Jump_000_02ff

    rst $38
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
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [hl], h
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld e, a
    jr @+$01

    ld [$04fd], sp
    cp $04
    rst $38
    ld [bc], a
    ld a, [hl]
    ld bc, $01fb
    add c

jr_078_6f0f:
    nop
    ld de, $3740

jr_078_6f13:
    nop
    rra
    nop
    ld e, a
    nop
    xor a
    inc b
    ld e, a
    add d
    sbc [hl]
    ld h, c
    jr @+$01

    ei
    inc b
    ld [bc], a
    nop
    inc b
    nop
    ret nz

    cp a
    ld e, e
    and h
    rst $18
    and b
    rst $38
    add b
    ld a, e
    add h
    rst $38
    nop
    db $fd
    nop
    ld a, l
    add b
    sbc a

jr_078_6f37:
    jr nz, jr_078_6f37

    ld bc, $01fe
    rst $38
    nop
    rst $38

Jump_078_6f3f:
    nop
    ret nz

    nop
    ret nz

    jr nz, @-$3e

    nop
    ret nz

    ld [hl+], a
    ret nz

    nop
    ret nz

    jr nz, @-$3e

    jr nz, jr_078_6f0f

    nop
    ret nz

    jr nz, jr_078_6f13

    ld bc, $08c0
    ret nz

    ld [hl+], a
    nop
    add sp, $40
    ret c

    ret nz

    db $fc
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    add sp, -$01
    add sp, -$01
    ld a, l
    rst $38
    scf
    rst $38
    add hl, bc
    rst $38
    ld l, e
    rst $38
    db $10
    rst $38
    ld h, b
    sbc a
    jp hl


    ld d, $fb
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
    ld l, [hl]
    sub c
    nop
    rst $38
    ld bc, $21ff
    rst $38
    ld [hl], $ff
    or $ff
    inc de
    db $ec
    cp a
    ld b, b
    dec a
    jp nz, $8778

    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    push af
    ld a, [bc]
    ld [$0bff], sp
    rst $38
    inc c
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    dec sp
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $feff
    ld bc, $01fe
    db $ec
    inc de
    cp $01
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $03
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ld sp, hl
    ld b, $fb
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $30
    inc c
    ld a, [c]
    dec c
    di
    inc c

jr_078_6fe4:
    ld a, [$eb0d]
    inc e
    cp $09
    db $ed
    ld a, [de]
    push bc
    ld a, [hl-]
    push bc
    ld a, [hl-]
    pop hl
    ld e, $c5
    ld a, [hl-]
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    db $fd
    inc bc
    rst $38
    ld bc, $01fb
    rst $38
    ld bc, $0106

jr_078_700a:
    ldh [rSB], a
    ld [hl+], a
    ld bc, $0180
    xor e
    nop
    rlc b
    dec bc
    ld b, b
    rst $30
    nop
    rst $18
    jr nz, jr_078_700a

    db $10
    db $dd
    ld [hl-], a
    adc a
    ld hl, sp-$09
    ld c, b
    rra
    jr nz, jr_078_6fe4

    nop
    rst $38
    nop
    or b
    ld c, a
    cp b
    ld c, a
    or b
    ld c, a
    or c
    ld c, [hl]
    or l
    ld c, d
    call $dd12
    ld [bc], a
    ld sp, hl
    ld b, $bd
    ld b, d
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a
    ld h, c
    sbc a
    nop
    ld [$0500], sp
    nop
    stop
    ld d, e
    nop
    stop
    inc d
    nop
    ld [$2500], sp
    nop
    stop
    ld [$0100], sp
    ld d, b
    rlca
    ld d, b
    rlca
    nop
    adc a
    nop
    ld a, a
    ld bc, $02bf
    rst $38
    nop
    rst $38
    ld [$21ff], sp
    rst $38
    ld bc, $aaff
    rst $38
    rst $18
    rst $38
    dec [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    dec c
    rst $38
    ld bc, $81ff
    ld a, a
    db $e4
    dec de
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld [bc], a
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    ccf
    rst $38
    cp [hl]
    rst $38
    ccf
    rst $38
    ret c

    daa
    call c, $dc23
    inc hl
    sbc h

jr_078_7097:
    ld h, e
    call c, $bc23

jr_078_709b:
    ld b, e
    cp h
    ld b, e
    dec a
    jp nz, $c23d

    dec l
    jp nc, $c639

    ld a, a
    add b
    cp a
    ld b, b
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_078_7097

    nop
    rst $38
    jr nz, jr_078_709b

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc h
    rst $18
    db $e4
    rra
    ld h, h
    sbc a
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld d, b
    xor a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret z

    ccf
    adc b
    ld a, a
    add b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    ld [$0aff], sp
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    dec c
    rst $38
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld b, b
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    sbc [hl]
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, e
    add h
    ld a, e
    add h
    db $fc
    add a
    jp nc, $c8ad

    cp a
    ld l, c
    sbc a
    ld a, h
    add e
    ld l, c
    sub [hl]
    inc d
    rst $38
    dec d
    rst $38
    add h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    and l
    rst $18
    push bc
    cp a
    jp hl


    sbc a
    adc l
    rst $38
    ld l, h
    cp a
    ld e, b
    cp a
    jr z, @+$01

    cp b
    rst $38

Jump_078_7140:
    rlca
    ld a, $06
    ccf
    dec bc
    cp $03
    cp $0b
    ld a, $0b
    cp $0f
    ld a, [hl]
    rlca
    cp $0d
    cp $0f
    cp $0f
    cp $13
    cp $01
    cp $0d
    cp $0e
    db $fd
    dec hl
    db $fc
    dec e
    cp $18
    rst $38
    jr @+$01

    dec e
    rst $38
    dec e
    rst $38
    ld a, a
    db $fd
    db $fc
    rst $38
    ld d, h
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, $ff
    ld [hl+], a
    rst $38
    jp nz, $903f

    ld l, a
    ldh a, [rIF]
    rst $38
    ld [bc], a
    db $fc
    inc bc
    db $dd
    ld [hl+], a
    db $fd
    ld [bc], a
    call c, $b023
    ld c, a
    sub h
    ld l, e
    ld e, h
    and e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$8af7], sp
    ld [hl], l
    adc [hl]
    ld [hl], c
    inc c
    di
    adc h
    ld [hl], e
    adc a
    ld [hl], b
    rst $08
    jr nc, @+$6f

    sub d
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
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
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
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
    rst $30
    ld [$0bf4], sp
    di
    inc c
    di
    inc c
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    db $e4
    dec de
    db $f4
    dec bc

jr_078_71dc:
    push hl
    ld a, [de]
    push hl
    ld a, [de]
    di
    inc c
    rst $30
    ld [$08ff], sp
    rst $10
    jr z, jr_078_71dc

    inc c
    rst $30
    ld [$0cf3], sp
    db $e3
    inc e
    jp $833c


    ld a, h
    rlca
    ld hl, sp-$7d
    ld a, h
    inc bc
    db $fc
    inc bc
    db $fc
    add e
    ld a, h
    add e
    ld a, h
    ld a, [$fe65]
    ld h, c
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    ld a, a
    add b
    rst $38
    ld bc, $03fe
    di
    ld c, $93
    ld l, h
    rst $28
    jr @+$01

    db $10
    rst $08
    jr nc, jr_078_7257

    db $e3
    jp nz, $807f

    rst $38
    scf
    call z, Call_000_2fd2
    rst $30
    inc c
    ld d, c
    xor [hl]
    reti


    ld h, $c7
    inc a
    add l
    ld a, [hl]
    rlca
    db $fc
    add e
    ld a, h
    ld d, e
    ld a, h
    add e
    ld a, h

jr_078_7236:
    and d
    ld e, l
    or e
    ld e, h
    jp $e73c


    jr jr_078_7236

    inc e
    inc e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], c
    cp $b1
    cp $f3
    db $fd
    di
    db $fd
    di
    db $fd
    db $e3
    db $fd
    db $e3
    db $fd
    db $e3
    db $fd
    db $e3
    db $fd
    and e

jr_078_7257:
    db $fd
    and e
    db $fd
    and [hl]
    ei
    and [hl]
    ei
    and [hl]
    ei
    ld h, $fb
    ld c, [hl]
    ei
    and $fb
    and $fb
    add $fb
    or $fb
    add $fb
    ld d, [hl]
    ei
    ld [hl], d
    rst $38
    or $fb
    cp h
    rst $30
    cp h
    rst $30
    sbc h
    rst $30
    call c, $dcf7
    rst $30
    call c, $fcf7
    rst $30
    db $fc
    rst $30
    db $fc
    rst $30
    ld hl, sp-$11
    ld hl, sp-$11
    db $fc
    rst $28
    db $fc
    rst $28
    db $fc
    rst $28
    ld hl, sp-$11
    ld a, [$faeb]
    db $eb
    ld hl, sp-$15
    ld hl, sp-$15
    ld sp, hl
    db $ed
    pop de
    db $ed
    pop af
    db $fd
    dec c
    ldh a, [rNR50]
    ret c

    ld c, $f0
    ld c, $f0
    add h
    ld a, d
    adc [hl]
    ld [hl], b
    xor a
    ld [hl], b
    xor [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    cp d
    ld [hl], l
    ld [c], a
    dec a
    ld [c], a
    dec a
    and d
    ld a, l
    adc c
    db $76
    ld d, c
    cp [hl]
    add h
    ld a, e
    ld d, c
    cp [hl]
    adc h
    ld a, e
    sbc l
    ld a, d
    add h
    ld a, e
    xor c
    ld e, [hl]
    ld bc, $28fe
    rst $38
    add a
    ld a, h
    sub b
    ld l, a
    add l
    ld a, [hl]
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    cp $24
    rst $18
    add $3f
    add $3f
    ld c, [hl]

jr_078_72e7:
    or a
    call nz, $c23f
    ccf
    db $d3
    cpl
    db $e3
    rra
    ei
    rlca
    xor $13
    ld a, [c]
    rrca
    ei
    rlca
    ei
    rlca
    xor c
    ld d, a
    xor c
    ld d, a
    pop hl
    rra
    dec hl
    call c, Call_000_18f7
    rst $18
    jr nc, @+$01

    jr nc, jr_078_72e7

    ld h, c
    cp l
    jp nz, $88f6

    cp $01
    or [hl]
    ld b, b
    ld l, a
    add b
    rst $18
    nop
    rst $38
    nop
    cp l
    ld b, b
    ld a, l
    add b
    db $fd
    nop
    db $fd
    nop
    ld a, h
    add b
    sbc $00
    rst $38
    nop
    ei
    nop
    ld a, [$fb00]
    nop
    db $db
    nop
    ei
    nop
    ld a, [$fa00]
    nop
    ld a, [$7a00]
    nop
    ld a, [$be00]
    nop
    or d
    nop
    db $f4
    nop
    or $00
    daa
    add b
    ld [hl], l
    add b
    ld h, l
    add b
    xor l
    nop
    db $ed
    nop
    adc l
    nop
    db $fd
    nop
    ld c, l
    nop
    db $ec
    nop
    ld c, h
    nop
    ld l, b
    nop
    rst $28
    nop
    ld a, [bc]
    nop
    ld l, d
    nop
    cp e
    nop
    ld a, e
    nop
    db $eb
    nop
    pop de
    nop
    ld b, c
    nop
    ld h, l
    nop
    push bc
    nop
    ld h, c
    nop
    ld b, l
    nop
    push bc
    nop
    or a
    nop
    rst $18
    nop
    rst $30
    nop
    or e
    nop
    ei
    nop
    db $e3
    nop
    db $eb
    nop
    db $e3
    nop
    rst $30
    nop
    rst $20
    nop
    rst $30
    nop
    rst $20
    nop
    rst $30
    nop
    rst $20
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
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
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, [hl]
    add c
    sbc [hl]
    ld b, c
    ld a, $41
    ld a, [hl]
    ld b, c
    ld e, $61
    ld a, [hl]
    ld hl, $2837
    sbc l
    ld [hl+], a
    add l
    ld a, [hl-]
    cp h
    inc de
    rst $10
    ld a, [de]
    rst $10
    ld a, [de]
    rst $10
    ld a, [bc]
    call c, Call_078_7c0b
    adc a
    db $76
    adc l
    ld [hl], d
    adc l
    ld d, $ed
    ld e, h
    and a
    sbc b
    ld h, a
    sbc b
    ld h, a
    sbc [hl]
    ld h, e
    cp [hl]
    ld h, e
    cp h
    ld h, e
    push af
    dec hl
    ld b, $f9
    ld c, $f9
    ld c, $f9
    ld a, [bc]
    db $fd
    adc e
    db $fc
    ld c, e
    db $fc
    sbc a
    db $fc
    dec e
    cp $9d
    cp $9d
    cp $9d
    cp $dd
    cp [hl]
    sub h
    rst $38
    xor b
    rst $38
    cp e
    db $fd
    cp e
    db $fd
    jr c, @+$01

    ld l, b
    rst $38
    jr z, @+$01

    ld d, b
    rst $38
    db $fc
    ld bc, $936e
    sbc $25
    ld [hl], d
    adc l
    xor d
    dec d
    cp a
    ld b, b
    ld a, a
    add b
    db $fc
    ld [bc], a
    cp $00
    cp $00
    db $fc
    ld [bc], a
    ld a, [hl]
    nop
    cp $00
    cp [hl]
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld a, h
    nop
    ld a, l
    nop
    ld e, l
    nop
    ld a, l
    nop
    ld a, l
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
    cp e
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    db $db
    nop
    ld [hl], e
    nop
    ld d, a
    nop
    ld d, a
    nop
    ld d, a
    nop
    ld d, a
    nop
    rst $00
    nop
    rst $00
    nop
    adc a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    xor a
    nop
    adc a
    nop
    ld c, a
    nop
    adc $00
    ld c, [hl]
    nop
    ld e, [hl]
    nop
    sbc $00
    sbc $00
    rst $18
    nop
    rst $18
    nop
    cp l
    nop
    cp h
    nop
    cp h
    nop
    xor h
    nop
    xor h
    nop
    db $ec
    nop
    cp h
    nop
    ld sp, hl
    nop
    reti


    nop
    reti


    nop
    ret


    nop
    ld c, h
    ld bc, $00cd
    ld e, e
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    ld l, l
    sub d
    ld a, l
    add d
    ld a, l
    add d
    ld e, l
    and d
    ld a, a
    add b
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    db $db
    inc h
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp e
    ld b, b
    ei
    nop
    rst $38
    nop
    ld a, d
    add c
    cp $01
    ld a, [hl]
    add c
    ld a, a
    add c
    ld l, h
    sub e
    ld l, h
    sub e
    ld l, l
    sub d
    ld a, e
    add h
    db $fd
    ld [bc], a
    rst $18
    ld [hl+], a
    db $dd
    ld [hl+], a
    ld e, l
    and d
    ld a, l

jr_078_74cf:
    and d
    db $dd
    ld [hl+], a
    ei
    inc b
    cp a
    ld b, h
    ei
    inc b
    cp a
    ld b, h
    dec sp
    call nz, $807f
    rst $38
    add b

jr_078_74e0:
    ld [hl], a
    adc b
    scf
    ret z

    scf
    ret z

    cp a
    ld b, b
    xor a
    ld d, b
    sbc a
    ld h, b
    adc a
    ld [hl], b
    rst $08
    jr nc, jr_078_74cf

    ld hl, $31cf
    rst $08
    ld sp, $11ef
    or $19
    ld h, l
    sbc d
    ld [hl], a
    adc d
    ld [hl], a
    adc d
    ld a, e
    add h
    rst $18
    jr nz, jr_078_74e0

    inc h
    rst $18
    jr nz, @+$01

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
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, l
    add d
    ld a, a
    add d
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $ed
    ld [bc], a
    db $ed
    ld [bc], a
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    db $db
    inc b
    db $db
    inc b
    db $db
    inc b
    db $db
    inc b
    rlc h
    rst $18
    nop
    rst $08
    nop
    rst $20
    ld [$08a7], sp
    xor a
    ld [$0897], sp
    sub a
    ld [$08b3], sp
    rst $18
    nop
    db $dd
    nop
    rst $18
    nop
    rst $08
    db $10
    ld l, $11
    ld a, [hl]
    ld bc, $0136
    ld a, $01
    cp a
    nop
    ccf
    nop
    cp l
    ld [bc], a
    sub l
    ld [hl+], a
    cp l
    ld [bc], a
    rst $30
    nop
    db $fd
    ld [bc], a
    cp $00
    cp $00
    ei
    inc b
    ld a, [$fa04]
    inc b
    rst $28
    nop
    cp $00
    rst $38
    nop
    ld [hl], l
    adc b
    or $08
    rst $10
    ld [$00ff], sp
    cp a
    nop
    ld a, a
    nop
    ld e, a
    nop

jr_078_7588:
    ld e, [hl]
    nop
    rst $08
    db $10
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $219f
    rst $38
    ld hl, $21ff
    call c, $ff23
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, a
    ld b, d
    cp a
    ld b, d

jr_078_75a4:
    ld a, [$b946]
    ld b, [hl]
    cp b
    ld b, [hl]
    cp $04
    ld a, [hl]
    add h
    ld e, e
    and h
    rst $38
    add h
    di
    adc h
    ld a, e
    adc h
    rst $30
    ld [$08ff], sp
    ld a, [$fb08]
    ld [$58a3], sp

jr_078_75c0:
    rst $28

jr_078_75c1:
    db $10
    ei
    db $10
    rst $38
    db $10
    rst $38
    db $10

jr_078_75c8:
    rst $30
    db $10
    db $d3
    jr nz, jr_078_75a4

    jr nz, @-$27

    jr nz, jr_078_75c8

    jr nz, jr_078_75c0

    jr nz, jr_078_75c1

    jr nz, @-$2f

    jr nz, jr_078_7588

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    sbc a
    ld b, b
    ld a, l
    add b
    ld a, l
    add b
    ei
    add b
    ld [hl], e
    add b
    jp c, $d281

    ld bc, $01b7
    cp $01

jr_078_75f2:
    xor a
    nop
    ld a, l
    ld [bc], a
    ld a, l
    ld [bc], a
    ld a, [$ee02]
    ld [bc], a
    call z, $fa02
    inc b
    or l
    ld c, d
    cp h
    ld b, e
    cp l
    ld b, d
    ld a, [hl]
    add c
    ld a, e
    add h
    ld a, e
    add h
    ei
    add h
    ld a, e
    add h
    ld a, e
    add h
    rst $30
    ld [$08f7], sp
    or $09
    rst $10
    jr z, jr_078_75f2

    jr z, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    db $fc
    ld [bc], a
    cp $00
    ld a, [$7a04]
    add h
    ld a, [hl]
    add h
    db $fc
    add b
    db $fc
    add b
    db $fc
    nop
    db $fc
    nop
    db $e4
    ld [$08f0], sp
    add sp, $00
    ld hl, sp+$00
    and a
    ld e, b
    daa
    ret c

    cpl
    ret nc

    scf
    ret nc

    scf
    ret nc

    ld h, a
    sub b
    ld b, a
    or b
    ld e, a
    and b
    rst $30
    jr nz, @+$01

    jr nz, jr_078_76e4

    and b
    cpl
    ldh [$8f], a
    ld h, b
    cp a
    ld b, b
    rst $38
    ld b, b
    cp $41
    ld bc, $8140
    ld b, b
    ret nz

    nop
    ld b, c
    add b
    nop
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld a, [bc]
    add b
    adc [hl]
    nop
    adc l
    nop
    sub l
    nop
    sub l
    nop
    and l
    nop
    add h
    ld bc, $011e
    ld e, e
    nop

jr_078_76a0:
    scf
    nop
    ld [hl], $02
    inc [hl]
    ld [bc], a
    ld h, h
    ld [bc], a
    ld l, [hl]
    nop
    ld b, [hl]
    nop
    ld [$ea04], a
    inc b
    db $ec
    inc b
    db $ec
    nop
    db $fc
    nop
    db $f4
    ld [$08d0], sp
    ret nc

    ld [$0058], sp
    ld a, b
    nop
    ld l, b
    db $10
    ldh a, [rNR10]
    ldh [rNR10], a
    and b
    db $10
    cp $00
    db $fc
    nop
    call c, $f820
    nop
    db $fc
    nop
    ret c

    jr nz, @-$06

    nop
    ld hl, sp+$00
    cp b
    ld b, b
    sub b
    ld b, b

jr_078_76dc:
    ret c

    nop
    pop de
    nop
    pop af
    nop
    ld a, e
    add b

jr_078_76e4:
    inc de
    add b
    inc de
    add b
    add e
    nop
    add d
    ld bc, $0106
    ld d, e
    ld [bc], a
    ld [hl], a
    ld [bc], a
    ld l, a
    ld [bc], a
    dec l
    ld [bc], a
    ld b, e
    inc b
    ld b, e
    inc b

jr_078_76fa:
    ld b, e
    inc b
    ld h, e
    inc b
    ld e, a
    nop
    ld d, a
    cp b
    ld e, a
    cp b

jr_078_7704:
    db $76
    sbc b

jr_078_7706:
    ld a, d
    sub b
    ld a, [$ff10]
    db $10

jr_078_770c:
    rst $10
    jr nc, jr_078_76fa

    jr nc, jr_078_7704

    jr nz, jr_078_7706

    jr nz, jr_078_770c

    jr nz, @-$0b

    jr nz, jr_078_76dc

    jr nz, jr_078_76a0

    ld h, b
    db $ed
    ld b, b
    rst $20
    ld b, b
    rst $28
    ld b, b
    db $fd
    ld b, b
    dec h
    ret nz

    ld h, [hl]
    add b
    call nz, $e480
    add b
    db $ec
    add b
    db $e4
    add b
    ld [$8480], sp
    nop
    sub [hl]
    nop
    adc d
    nop
    add b
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    inc hl
    nop
    inc hl
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    ld b, $00
    rrca
    nop
    ld c, $00
    ld b, $08
    ld b, $08
    ld c, $00
    ld e, $00
    inc e
    nop
    dec e
    nop
    inc e
    nop
    ld c, $00
    ld e, $00
    ld e, $00
    jr jr_078_776a

jr_078_776a:
    ld [$1c10], sp
    nop
    inc e
    nop
    jr c, jr_078_7772

jr_078_7772:
    jr jr_078_7794

    jr jr_078_7796

    dec l
    jr nz, jr_078_7782

    jr nz, jr_078_77d0

    jr nz, jr_078_77ce

    jr nz, jr_078_77e1

    nop
    ld [hl+], a
    ld b, b

jr_078_7782:
    ld [hl-], a
    ld b, b
    ld [de], a
    ld b, b
    sub d
    ld b, b
    jp nz, $c300

    nop
    ld b, $80
    nop
    add b
    add b
    nop
    add b
    nop

jr_078_7794:
    add b
    nop

jr_078_7796:
    nop
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $000b
    ld bc, $0102
    ld [bc], a
    ld [$0702], sp
    nop
    rla
    nop
    ld d, c
    inc b
    add hl, de
    inc b
    ld e, $00
    ld e, $00
    ld d, $08
    ld [de], a
    ld [$003a], sp
    inc e
    nop
    inc e
    nop
    dec b
    db $10
    ld bc, $1910
    nop
    dec sp
    nop
    dec sp
    nop
    dec hl
    nop
    inc hl
    nop

jr_078_77ce:
    ld [hl], $00

jr_078_77d0:
    inc sp
    nop
    ld [hl], a
    nop
    ld d, a
    nop
    rlca
    ld b, b
    adc a
    ld b, b
    rst $08
    nop
    xor a
    nop
    cpl
    add b
    dec sp

jr_078_77e1:
    add b
    sub e
    ld [$009b], sp
    sbc d
    ld bc, $01b6
    or [hl]
    ld bc, $01b6
    ld [hl], l
    ld [bc], a
    ccf
    ld [bc], a
    rrca
    ld [hl+], a
    db $fd
    ld [bc], a
    rst $38
    nop
    ei
    inc b
    rst $38
    inc b
    cp e
    ld b, h
    or d
    ld c, l
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
    jr jr_078_7833

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_078_7843

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_078_7853

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_078_7863

    ld [hl-], a

jr_078_7833:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_078_7873

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_078_7843:
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

jr_078_7853:
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

jr_078_7863:
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

jr_078_7873:
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
    ld a, l
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
    jr jr_078_7934

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_078_7944

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_078_7954

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_078_7964

    ld [hl-], a

jr_078_7934:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_078_7974

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    nop
    nop
    nop

jr_078_7944:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_078_7954:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_078_7964:
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_078_7974:
    dec b
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
    ld bc, $0000
    dec b
    dec b
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
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
    dec b
    inc b
    ld b, $06
    ld b, $06
    nop
    nop
    dec b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    dec b
    inc b
    ld b, $06
    ld b, $06
    nop
    nop
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld b, $06
    ld b, $06
    nop
    nop
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld b, $06
    ld b, $00
    nop
    nop
    dec b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$080d], sp
    ld [$0808], sp
    ld [$0d0d], sp
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    dec c
    ld [$0c0d], sp
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0d0d], sp
    dec c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$3fd3], sp
    di
    rra
    rst $28
    dec de
    push af
    dec bc
    ldh a, [rIF]
    jp c, $f825

    rlca
    ld [hl], c
    adc [hl]
    ld [hl], l
    adc d
    ei
    inc b
    rst $38
    nop
    rst $38
    nop

jr_078_7a98:
    rst $38
    nop

jr_078_7a9a:
    rst $18
    jr nz, jr_078_7b1c

    add b
    db $fd
    add d
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $20
    ret c

    rst $20
    ld hl, sp-$09
    add sp, -$39
    ld hl, sp+$4b
    db $f4
    ld a, l
    ld a, [c]
    ld h, l
    ld a, [$72fd]
    or a
    ld a, b
    rst $30
    jr c, jr_078_7a9a

    jr c, jr_078_7a98

    inc a
    rst $38
    inc e
    rst $28
    inc e
    rst $28
    inc e
    db $fd
    ld c, $f5
    ld c, $ff
    ld b, $ef
    ld d, $fa
    rlca
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    xor [hl]
    ld d, c
    xor a
    ld d, b
    rst $38
    jr nz, @-$1f

jr_078_7adf:
    jr nz, jr_078_7adf

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    cpl
    add b
    rst $38
    add b
    rst $18
    add b
    cp a
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [rIE], a
    ldh [$fb], a
    db $e4
    ld l, e
    db $f4
    ld sp, hl
    db $76
    ld sp, hl
    ld [hl], $f9
    ld [hl], $d7
    ld a, $fc
    rra
    add sp, $1f
    ei
    inc c

jr_078_7b1c:
    rst $10
    inc c
    or $0d
    db $fd
    ld b, $ff
    ld b, $fb
    ld b, $be
    inc bc
    cp [hl]
    inc bc
    cp l
    inc bc
    rst $38
    ld bc, $01fe
    db $fd
    ld [bc], a
    rst $38
    nop
    cp a
    nop

jr_078_7b36:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $28
    db $10
    push hl
    jr jr_078_7b36

    jr @+$01

    ld [$04fb], sp
    rst $38
    inc b
    jp hl


    ld b, $fd
    ld [bc], a
    db $fc
    inc bc
    cp a
    ld bc, $013e
    ld a, $01
    cp a
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
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ldh a, [$3f]
    ldh a, [$97]
    ld a, b
    rst $38
    jr jr_078_7b82

    rst $38

jr_078_7b82:
    sub c
    rst $38
    pop bc
    cp a
    pop bc
    cp a
    add b
    rst $38
    add c
    rst $38
    pop bc
    rst $38

jr_078_7b8e:
    ldh [$df], a
    ret z

    rst $30
    ld e, b
    rst $20
    push af
    ld l, d
    ld hl, sp+$67

jr_078_7b98:
    ld a, [$aa65]
    ld [hl], l
    db $fd
    ld [hl-], a
    db $fd
    ld [hl-], a
    sbc $31
    cp $11

jr_078_7ba4:
    rst $30
    jr @+$01

    jr jr_078_7b98

    jr @-$03

    inc c
    rst $38
    inc c
    rst $30
    inc c
    rst $38
    inc b
    db $fd
    ld b, $ff
    ld b, $fb
    ld b, $ff
    ld [bc], a
    cp $03
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01fe
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01

jr_078_7bd0:
    cp $01
    rst $30
    ld [$807f], sp
    ei
    add h
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    ld a, l
    jp nz, Jump_078_40ff

    rst $18
    ld h, b
    ld a, a
    ld h, b
    ccf
    ld h, b
    rst $28
    jr nc, @-$3f

    jr nc, jr_078_7ba4

    jr @-$47

    jr jr_078_7bd0

    jr jr_078_7b8e

    inc c
    db $dd
    ld c, $fd
    ld c, $f5
    ld c, $fc
    rlca
    rst $38
    rlca
    cp $07
    ei
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38

Call_078_7c0b:
    ld bc, $01ff
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_078_7c16:
    rst $30
    ld [$00ff], sp
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01

jr_078_7c2c:
    rst $38
    nop

jr_078_7c2e:
    rst $38
    add b
    cp $81
    rst $28
    ret nc

jr_078_7c34:
    ld l, a
    ret nc

    rst $18
    ld h, b
    cp a
    ld h, b
    rst $38
    jr nz, jr_078_7c2c

    jr nc, jr_078_7c16

    jr c, jr_078_7c34

    inc e
    rst $38
    jr jr_078_7c2e

    ld e, $fd
    ld c, $fd
    ld c, $f4
    rrca
    rst $30
    ld c, $ff
    ld b, $fb
    ld b, $7a
    rlca
    rst $38
    inc bc
    push af
    dec bc
    rst $38
    nop
    ld a, [hl]
    add b
    cp [hl]
    ret nz

    ld e, b
    db $e4
    cp b
    ld h, h
    adc h
    ld [hl], b
    jp hl


    db $10
    jp hl


    db $10
    db $eb
    db $10
    di
    nop
    di
    nop
    rst $20
    nop
    rst $20
    nop
    rst $08
    nop
    rst $08
    nop
    adc a
    nop
    sbc a
    nop
    sbc [hl]
    ld bc, $013e
    dec sp
    nop
    rla
    xor $b7
    xor $4f
    or [hl]
    adc [hl]
    rst $30
    add d
    rst $38
    jp $c7ff


    ei
    db $d3
    rst $28
    set 6, b
    jp $ebf8


    ld hl, sp+$69
    ld hl, sp-$4b
    ld a, b
    ld hl, $21fc
    db $fc
    ld sp, $90fc
    ld a, h
    sbc d
    ld a, h
    ldh a, [rNR34]
    ldh a, [rNR34]
    ld l, b
    sbc [hl]
    ret c

    ld l, $d9
    ld l, $e9
    ld e, $e4
    rra
    push hl
    rra
    ret nz

    ccf
    ld d, a
    xor h
    sbc [hl]
    ld l, l
    sbc $2d
    and $1d
    and $1d
    ld l, e
    sub [hl]
    db $e3
    sbc [hl]
    db $e3
    sbc [hl]
    and e
    rst $18
    pop hl
    rst $18
    ld h, e
    db $dd
    ld e, c
    rst $20
    ei
    ld h, l
    ld hl, sp+$67
    or h
    ld l, e
    add sp, $37
    ld hl, sp+$37
    sbc b
    ld [hl], a
    sub c
    ld a, a
    sub d
    ld a, l
    db $d3
    inc a
    jp hl


    ld e, $fc
    dec hl
    adc $39
    ld a, [$f70d]
    inc c
    rst $10
    inc l
    rst $30
    inc c
    rst $38
    inc b
    ld sp, hl
    ld b, $ff
    ld [bc], a
    rst $28
    ld [de], a
    rst $38
    ld [bc], a
    db $fc
    inc bc
    di
    dec c
    rst $38
    add hl, bc
    or $09
    ld [hl], e
    adc h
    ei
    inc b
    ld a, [$7a05]
    add l
    ei
    add h
    db $fd
    add d
    db $fd
    add d
    cp l
    jp nz, $c2fd

    rst $38
    pop bc
    ld e, a
    pop hl
    ld a, [hl]
    pop hl
    cp $61
    xor $71
    xor a
    ld [hl], b
    ld a, a
    or b
    rst $38
    jr nc, jr_078_7d82

    cp b
    sub $39
    cp $19
    ei
    inc e
    rst $28
    inc e
    ld l, l
    sbc [hl]
    ld c, l
    cp [hl]
    ld c, h
    cp a
    adc a
    ld a, [hl]
    push hl
    ld e, $cd
    ld [hl], $af
    ld d, h
    adc a
    ld [hl], b
    rra
    ldh [$87], a
    ld hl, sp+$2f
    ret nc

    xor a
    ld d, b
    xor a
    ld d, b
    rra
    ldh [$3f], a
    ret nz

    cp a
    ld b, b
    rra
    ret nz

    ld c, [hl]
    add c
    rra
    add c
    cp h
    add e
    cp l
    inc bc
    ccf
    inc bc
    ld a, d
    rlca
    ld a, d
    rlca
    ld a, l
    rlca
    ldh [rIF], a
    ldh a, [rIF]
    pop af
    rrca
    pop hl
    rra
    pop hl
    rra
    di
    rra
    sbc $37
    db $d3
    ccf
    sbc d
    ld a, a
    sbc b
    ld a, a
    sbc d
    ld a, l
    sbc [hl]
    ld a, l
    xor h
    ld e, a
    cpl
    sbc $ae
    rst $18
    sub [hl]
    rst $28
    sub a
    rst $28
    rst $20
    ld a, [de]

jr_078_7d82:
    rst $20
    ld a, [de]
    push af
    ld a, [de]
    db $ed
    ld [de], a
    cp l
    ld d, d
    and $19
    cp e
    ld b, l
    jp $fa05


    dec d
    db $fc
    di
    or $81
    ld a, c
    add [hl]
    db $fd
    ld [bc], a
    ld a, h
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $11
    db $fd
    inc bc
    rst $18
    inc hl
    or $0f
    ld hl, sp+$3f
    or c
    ld a, [hl]
    pop hl
    cp $ff
    ld hl, sp-$05
    db $f4
    ld [hl], c
    xor $e1
    sbc $c1
    ld a, $82
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    cp a
    pop bc
    cp a
    pop bc
    cp a
    ret nz

    cp a
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    rst $08
    and b
    rst $18
    and b
    rst $08
    and b
    ld e, a
    ldh [$c7], a
    ld [hl], b
    rst $00
    ld [hl], b
    ld c, a
    ldh a, [$c7]
    ld [hl], b
    and a
    ld a, b
    and a
    ld a, b
    inc hl
    ld hl, sp+$47
    cp b
    inc bc
    db $fc
    ld sp, $33dc
    call c, $9e71
    ld sp, hl
    ld a, $f9
    ld e, $f9
    ld c, $fc
    rrca
    db $fc
    rrca
    xor $17
    rst $18
    daa
    ld e, a
    and a
    rst $18
    and a
    rst $38
    add e
    ld a, a
    add e
    ccf
    jp Jump_078_41ff


    rst $38
    ld b, c
    rst $38
    ld b, b
    db $fd
    ld b, e
    sbc h
    ld h, e
    rst $10
    ld a, [hl+]
    or l
    ld l, d
    db $eb
    inc [hl]
    db $db
    inc [hl]
    db $d3
    inc a
    ld a, a
    sub b
    rst $28
    sub b
    ld a, $c1
    xor [hl]
    ld d, c
    cp $01
    cp $01
    call c, $fc23
    inc bc
    ld hl, sp+$07
    cp $07
    ld a, [$fb07]
    rlca
    ld sp, hl
    rlca
    jp hl


    rla
    jp hl


    rla
    ld l, l
    inc de
    rst $08
    ld sp, $31de
    sbc $31
    add [hl]
    ld a, c
    add [hl]
    ld a, c
    adc $79
    ld b, e
    db $fc
    ret nz

    rst $38
    call Call_078_69f6
    or $e5
    ld a, [$faa5]
    xor h
    di
    jp nc, $f2fd

    db $fd
    ld a, [c]
    db $fd
    sbc $f9
    db $ed
    ld a, [$fee9]
    and c
    cp $86
    db $fd
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld a, [bc]
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc hl
    rst $18
    add e
    rst $38
    ld de, $40ff
    cp a
    ld b, h
    cp a
    ld c, c
    cp $05
    ld a, [$fa05]
    dec b
    ld a, [$fc02]
    ld b, $f8
    ld d, $e8
    rla
    add sp, $70
    add b
    ld [hl], h
    add b
    ld [hl], h
    add b
    push af
    add b
    rst $30
    add b
    rst $38
    add b
    cp $80
    ccf
    ret nz

    ccf
    ret nz

    dec [hl]
    jp z, $cab5

    ld sp, $33ce
    call z, $4db2
    xor d
    ld d, l
    xor h
    ld d, a
    ld b, a
    rst $38
    daa
    rst $38
    scf
    rst $38
    and a
    ld a, a
    and e
    ld a, a
    xor e
    ld a, a
    cp e
    ld a, a
    sbc e
    ld a, a
    sbc e
    ld a, a
    ld e, e
    cp a
    ld d, e
    cp a
    ld e, l
    cp a
    ld c, l
    cp a
    ld c, l
    cp a
    xor l
    rst $18
    xor c
    rst $18
    ld a, [hl]
    adc c
    cp $09
    cp d
    ld c, l
    cp h
    ld c, e
    cp c
    ld c, [hl]
    db $fd
    ld b, $fd
    ld b, $fd
    ld b, $fc
    rlca
    call c, $fc27
    rlca
    sbc $23
    cp $03
    rst $28
    inc de
    rst $28
    inc de
    db $e4
    ld a, [de]
    db $ec
    db $10
    push de
    dec hl
    push de
    dec hl
    and l
    ld e, e
    push de
    dec hl
    ret nz

    ccf
    and b
    ld e, a
    ld h, b
    sbc a
    ld d, b
    xor a
    jr nz, @-$1f

    ld d, b
    xor a
    and h
    db $db
    sub b
    rst $28
    xor b
    rst $10
    ret z

    ld [hl], a
    ret z

    rst $30
    ret c

    ld h, a
    ret nc

    ld l, a
    ret nc

    ld l, a
    ldh a, [$6f]
    ldh [$7f], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr nc, @+$01

    ld sp, $78ff
    rst $38
    add hl, sp
    rst $38
    ld a, [de]
    rst $38
    add hl, de
    rst $38
    ld e, $ff
    dec a
    rst $18
    cpl
    rst $18
    ld c, $ff
    rrca
    cp $0f
    cp $0f
    cp $87
    cp $a6
    rst $38
    add a
    rst $38
    sub a
    rst $38
    ld d, a
    rst $38
    ld e, a
    rst $38
    dec de
    rst $38
    ld e, e
    rst $38
    jp c, $fb7f

    ld a, [hl]
    db $fd
    ld a, $fc
    ccf
    jp c, $ba3d

    ld e, l
    jp c, Jump_078_523d

    cp l
    ld b, h
    cp e
    ld b, l
    cp d
    ld h, l
    sbc d
    inc h
    db $db
    ld a, [hl+]
    push de
    bit 6, h
    dec bc
    db $f4
    swap h
    ld c, a
    or b
    ld d, a
    xor b
    xor b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    sub h
    ei
    sbc b
    rst $30
    adc e
    db $f4
    ld [bc], a
    db $fd
    rst $18
    rst $38
    rst $08
    rst $38
    ld c, a
    rst $38
    rrca
    rst $30
    rlca
    rst $30
    inc de
    rst $20
    rlca
    rst $30
    adc a
    ld a, a
    ld b, $01
    rrca
    nop
    cpl
    nop
    ld l, a
    nop
    xor $01
    cp $01
    or a
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop

jr_078_7fa6:
    rst $18
    jr nz, jr_078_7fa6

    ld [bc], a
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    ld a, a
    add b
    ld a, e
    add h
    ld a, a
    add b
    ld a, e
    add h
    ei
    inc b
    ld a, [hl]
    add b
    cp c
    ld b, h
    ld hl, sp+$04
    cp l
    ld b, b
    ld a, c
    add b
    cp d
    ld b, c
    or [hl]
    ld b, c
    ld [hl], h
    add e
    rst $18
    ld [hl+], a
    ld c, h
    and e
    ld a, e
    add [hl]
    ld a, $c3
    ld [hl], h
    adc e
    ld [hl], b
    adc a
    ld a, b
    add a
    add sp, $17
    ld [c], a
    dec e
    ld [$c815], a
    scf
    jp z, $cc35

    inc sp
    ldh a, [$2f]
    and h
    ld a, e
    ld c, h
    or e
    call nz, Call_000_203b
    rst $18
    and b
    rst $18
    and b
    rst $18
    add b
    rst $38
    add c
    cp $b1
    adc $d7
    db $ec
