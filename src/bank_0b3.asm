SECTION "ROM Bank $0b3", ROMX[$4000], BANK[$b3]

    db $20, $a0
    jp $0cc3


    inc c
    db $10
    db $10
    ld h, b
    ld h, b
    add b
    add b
    nop
    nop
    ld bc, $2001
    rst $18
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    dec bc
    db $f4
    inc c
    di
    inc c
    di
    inc b
    ei
    inc b
    ei
    rlca
    ld hl, sp+$06
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    rst $38
    ld bc, $1ffe
    ldh [$0c], a
    di
    db $fd
    ld [bc], a
    rst $20
    jr jr_0b3_405a

    pop af
    rra
    db $e3
    rst $38
    rst $08
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b3_405a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld a, b
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
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
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    ld [hl+], a
    ld [c], a
    inc c
    call z, $9010
    ld h, c
    ld h, c
    add d
    add d
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_0b3_40ea

    ld b, b

jr_0b3_40cb:
    ld b, b
    add c
    add c
    ld bc, $0001
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc h
    db $db
    jr nz, @-$1f

    ld hl, sp+$07
    ld l, b
    sub a
    jr jr_0b3_40cb

    and b
    ld e, a
    db $e4
    dec de
    and $19

jr_0b3_40ea:
    and $19
    ld h, [hl]
    sbc c
    ccf
    ret nz

    dec c
    ld a, [c]
    rrca
    ldh a, [$2f]
    ret nc

    cpl
    pop de
    ccf
    jp $c33f


    ld a, a
    add a
    ld a, a
    add a
    ld a, l
    adc l
    ld hl, sp+$18
    ld a, [$f03a]
    ld [hl], b
    cp l
    cp l
    rst $30
    rst $30
    cp $fe
    rst $28
    rst $28
    rst $38
    ei
    rst $38
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
    rst $38
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
    ld a, [$edff]
    rst $38
    ld a, [$fdff]
    rst $38
    rst $30
    rst $38
    cp $f8
    rst $38
    nop
    rst $38

Jump_0b3_413e:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [hl+], a
    ld [hl+], a
    ld b, h
    ld b, h
    add h
    add h
    ld [$1008], sp
    db $10
    jr nz, jr_0b3_4194

    jr nz, jr_0b3_4196

    ld b, b
    ld b, b
    add b
    add b
    add b
    add b
    ld bc, $0101
    ld bc, $7f80
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
    ld a, a
    ld a, a
    rst $38
    rst $38

jr_0b3_4194:
    rst $38
    rst $38

jr_0b3_4196:
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    xor b
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    pop hl
    rst $38
    xor e
    rst $38
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc de
    db $ec
    adc [hl]
    ld [hl], b
    ld a, a
    add b
    ld d, h
    xor e
    rst $38
    ld b, h
    rst $38
    and a
    rst $38
    ld l, e
    rst $38
    ld a, a
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld hl, $2121
    ld hl, $4141
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    add d
    add d
    add d
    add d
    add d
    add d
    add h
    add h
    inc b
    inc b
    inc b
    inc b
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
    db $fc
    ld e, $f8
    inc e
    ldh [rSVBK], a
    add b
    ldh [rP1], a
    adc h
    nop
    sbc l
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $18
    ccf
    sbc a
    ld a, a
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
    ldh a, [$f0]
    nop
    ld bc, $5700
    ld bc, $07ff
    rst $38
    ccf
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
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
    ld de, $1111
    ld de, $1111
    ld de, $1011
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
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
    add b
    rst $38
    add a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc h
    ldh a, [$b1]
    ret nz

    jp $8701


    inc bc
    rrca
    rlca
    inc de
    rrca
    jr nz, jr_0b3_42c3

    ld b, b
    ccf
    add b
    ld a, a
    add b
    rst $38
    add c
    cp $81
    cp $81
    cp $81
    cp $81
    cp $81
    cp $81
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a

jr_0b3_42c3:
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld b, $f9
    ld b, $f9
    dec b
    ei
    dec b
    ei
    dec b
    ei
    dec b
    ei
    dec b
    ei
    inc b
    ei
    inc c
    di
    ld a, [bc]
    rst $30
    ld a, [$fef7]
    rst $38
    db $fc
    rst $38
    inc c
    rrca
    ld l, h
    rrca
    db $fc
    ld a, a
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    rst $28

jr_0b3_42f1:
    db $10
    rst $28

jr_0b3_42f3:
    db $10
    rst $38

jr_0b3_42f5:
    nop
    rst $38

jr_0b3_42f7:
    rst $38
    nop
    rst $38
    nop
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

jr_0b3_4309:
    nop
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    add h
    add h
    add d
    add d
    add d
    add d
    add c
    add c
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nc, jr_0b3_42f1

    jr nc, jr_0b3_42f3

    jr nc, jr_0b3_42f5

    jr nc, jr_0b3_42f7

    jr nz, jr_0b3_4309

    ld a, h
    sbc a
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nc

    cp a
    ret nc

    cp a
    ldh a, [$3f]
    pop af
    ld a, $b1
    ld a, [hl]
    or c
    ld a, [hl]
    or c
    ld a, [hl]
    or b
    ld a, a
    and b
    ld a, a
    ldh [$7f], a
    ld [c], a
    ld a, l
    ld h, b
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
    add b
    rst $38
    cp $80
    cp $80
    cp $80
    cp $80
    db $fc
    add d
    db $fc
    adc d
    db $fc
    ld a, [bc]
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$14
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$2c]
    ldh a, [$2c]
    ldh [rNR32], a
    ldh [rNR34], a
    ldh [rNR34], a
    ret nz

    ld a, $c0
    ld a, $c0
    ld a, $c0
    ld a, $80
    ld a, [hl]
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld e, $ff
    ld e, $ff
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
    rst $38
    rlca
    rst $38
    inc bc
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
    ld bc, $ffff
    ld bc, $01ff
    rst $38
    ld bc, $8484
    ld b, d
    ld b, d
    ld hl, $2021
    jr nz, jr_0b3_4423

    db $10
    ld [$0408], sp
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add c
    add c
    add b
    add b
    db $db
    rst $28
    reti


jr_0b3_4423:
    rst $28
    jp z, $bafe

    sbc $b2
    sbc $b2
    sbc $b4
    call c, $fc14

jr_0b3_4430:
    ld [hl], h
    cp h

jr_0b3_4432:
    ld h, h
    cp h
    ld l, b
    cp b
    jr c, jr_0b3_4430

    jr c, jr_0b3_4432

    ldh a, [rSVBK]
    ret nc

    ld [hl], b
    ldh a, [rSVBK]
    ld d, b
    and b
    ld h, b
    add b

Jump_0b3_4444:
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    nop
    add b

jr_0b3_447e:
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
    ldh a, [rP1]
    ld hl, sp+$00
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp $cffc


    ldh a, [$fe]
    pop bc
    ldh a, [$cf]
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    cp $f1
    ccf
    jr nc, jr_0b3_447e

    sub b
    ld b, e
    ld b, b
    jr nz, jr_0b3_4504

    jr jr_0b3_44fe

    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0001
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
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b3_44fe:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b3_4504:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    db $fc
    inc bc
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
    nop
    rst $38
    nop
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
    cp $01
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_0b3_4560

    nop
    nop
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
    nop
    rrca
    nop
    rra
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

jr_0b3_4560:
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    nop
    cp $01
    ldh a, [rIF]
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
    add b
    ld a, a
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    nop
    nop
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
    ccf
    nop
    ccf
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
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

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
    rst $38
    nop
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
    db $fc
    inc bc
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
    ld bc, $0002
    nop
    nop
    inc bc
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
    ld b, $07
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1200
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1a

    jr jr_0b3_462e

    jr jr_0b3_4630

    jr jr_0b3_4633

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b3_4643

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    nop
    nop
    jr z, jr_0b3_4656

    ld a, [hl+]

jr_0b3_462e:
    dec hl
    inc l

jr_0b3_4630:
    dec l
    ld l, $2f

jr_0b3_4633:
    jr nc, jr_0b3_4666

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    jr z, jr_0b3_4673

    scf
    jr c, jr_0b3_4679

    ld a, [hl-]
    dec sp
    inc a

jr_0b3_4643:
    dec a
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    nop
    jr z, jr_0b3_4683

    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_0b3_4656:
    ld c, d
    ld c, e
    nop
    nop
    nop
    jr z, jr_0b3_46a9

    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_0b3_4666:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, b
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

jr_0b3_4673:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_0b3_4679:
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

jr_0b3_4683:
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
    nop
    add a
    nop
    nop
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    nop
    adc [hl]
    adc a
    sub b
    sub c
    sub d

jr_0b3_46a9:
    sub e
    sub h
    nop
    nop
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld e, b
    sbc h
    sbc l
    sbc [hl]
    sbc a
    nop
    and b
    nop
    nop
    and c
    and d
    and e
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    and h
    ld b, h
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
    ld b, h
    or c
    or d
    ld b, h
    ld b, h
    ld b, h
    or e
    or h
    ld b, h
    ld b, h
    ld b, h
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
    ld e, b
    cp a
    ret nz

    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    pop bc
    jp nz, Jump_0b3_4444

    jp $c5c4


    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    add $c7
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ret z

    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ret


    jp z, Jump_0b3_4444

    ld b, h
    ld b, h
    rlc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $00
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0b3_478e

jr_0b3_478e:
    nop
    nop
    nop
    nop
    rlca
    rlca
    nop
    nop
    dec b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    inc bc
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
    rlca
    rlca
    rlca
    nop
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
    ld bc, $0505
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rlca
    nop
    nop
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
    rlca
    nop
    nop
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    nop
    nop
    nop
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
    ld b, $00
    nop
    nop
    jr nz, jr_0b3_482f

jr_0b3_482f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
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
    ccf
    ret nz

    rlca
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
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    ld a, [hl]
    add b
    db $fc
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ld de, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rSB]
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$3e], a
    ret nz

    ld a, h
    add b
    ld hl, sp+$00
    ldh a, [rP1]
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
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ret nz

    jr nz, jr_0b3_4923

    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]

jr_0b3_4923:
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
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
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3c], a
    ret nz

    ld a, b
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_0b3_49d4

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0002
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100

jr_0b3_49d4:
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    db $e3
    nop
    db $e3
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rrca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [rNR34]
    ldh [$7c], a
    add b
    ldh a, [rP1]
    ldh [rP1], a
    pop bc
    ld bc, $0282
    inc b
    inc b
    ld [$1008], sp
    db $10
    jr nz, jr_0b3_4a62

    ld b, b
    ld b, b
    add b
    add b
    add c
    add c
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [$0808], sp
    ld [$1010], sp
    jr nz, jr_0b3_4a78

    jr nz, jr_0b3_4a7a

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    ld a, a
    adc b

jr_0b3_4a62:
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, h
    cp a
    ld b, h
    cp a
    ld b, h
    cp a
    ld b, h

jr_0b3_4a78:
    cp a
    ld b, h

jr_0b3_4a7a:
    cp a
    ld b, h
    ld a, a
    add h
    ld a, a
    add h
    ld e, a
    and h
    ld e, a
    and h
    ld e, a
    and h
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ccf
    jp nz, $c23f

    ccf
    ld b, d
    ccf
    ld b, d
    cpl
    ld d, d
    cpl
    ld d, d
    cpl
    ld d, d
    cpl
    ld d, d
    cpl
    ld d, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    jr nz, jr_0b3_4ac6

    jr nz, jr_0b3_4ac8

    jr nz, jr_0b3_4ac2

    jr z, jr_0b3_4ac4

    add hl, hl
    rla
    add hl, hl
    rrca
    ld [hl], c
    rrca
    ld [hl], b
    rrca
    ld [hl], c
    rrca
    ld [hl], c
    rrca
    ld [hl], c
    rrca
    ld [hl], c
    dec bc
    ld [hl], h
    dec bc
    ld [hl], h
    rlca
    ld a, b

jr_0b3_4ac2:
    rlca
    ld a, b

jr_0b3_4ac4:
    rlca
    ld a, b

jr_0b3_4ac6:
    inc b
    ei

jr_0b3_4ac8:
    inc b
    ei
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    dec b
    ld a, [$fd02]
    ld [bc], a
    db $fd
    ld [$fff7], sp
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    adc b
    ld [$1111], sp
    ld hl, $4221
    ld b, d
    add d
    add d
    add h
    add h
    ld [$0808], sp
    ld [$1010], sp
    jr nz, jr_0b3_4b2e

    jr nz, jr_0b3_4b30

    ld b, c
    ld b, c
    ld b, c
    ld b, c
    add d
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, @+$22

jr_0b3_4b2e:
    jr nz, jr_0b3_4b50

jr_0b3_4b30:
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    ld de, $11ef
    rst $28
    ld de, $11ef
    rst $28

jr_0b3_4b50:
    ld de, $11ef
    rst $28
    ld de, $11ef
    rst $28
    ld de, $13ef
    rst $28
    inc de
    rst $28
    inc de
    rst $28
    inc de
    rst $28
    inc de
    rst $28
    inc de
    rst $28
    inc de
    rst $28
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    ld sp, hl
    jr @-$16

    rla
    db $ec
    rla
    xor $17
    rst $28
    daa
    rst $18
    daa
    rst $18
    daa
    rst $18
    daa
    rst $18
    daa
    rst $18
    daa
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    xor a
    rst $18
    cpl
    rst $18
    cpl
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld d, b
    adc a
    sbc a
    rrca
    sub b
    rrca
    db $10
    rrca
    or b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    and b
    ld e, a
    nop
    rst $38
    ld b, b
    cp a
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
    rst $38
    nop
    rst $38
    nop
    sub d
    sub d
    ld [de], a
    ld [de], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc h
    inc h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    add h
    add h
    add h
    add h
    adc b
    adc b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_0b3_4c1a

    jr nz, jr_0b3_4c1c

    jr nz, jr_0b3_4c1e

    jr nz, jr_0b3_4c20

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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38

jr_0b3_4c1a:
    ld hl, sp-$01

jr_0b3_4c1c:
    ld hl, sp-$01

jr_0b3_4c1e:
    ld hl, sp-$01

jr_0b3_4c20:
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
    ldh [$9f], a
    inc a
    inc bc
    rlca
    nop
    rrca
    nop
    rst $20
    nop
    rst $38
    add b
    db $fd
    ld [c], a
    and $f9
    pop hl
    cp $c0
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
    nop
    rst $38
    nop
    ldh [rIE], a
    rra
    rst $38
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld hl, $2121
    ld hl, $2121
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_0b3_4ca2

    jr nz, jr_0b3_4ca4

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$ffff], sp

jr_0b3_4ca2:
    rst $38
    rst $38

jr_0b3_4ca4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ld a, [c]
    db $fd
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$ef]
    db $f4
    db $eb
    db $f4
    db $eb
    db $f4
    db $eb
    db $fc
    di
    db $fc
    di
    db $fc
    ei
    cp $f9
    rst $38
    db $fc
    rst $38
    cp $ff
    ccf
    rst $38
    ld h, a
    rst $38
    rst $18
    rst $38
    ld a, l
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    xor a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    rst $38
    cp $ff
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
    rst $38
    nop
    rst $38
    nop
    inc h
    inc h
    sub d
    sub d
    adc c
    adc c
    ld b, h
    ld b, h
    ld [hl+], a
    ld [hl+], a
    ld hl, $1021
    db $10
    ld [$0808], sp
    ld [$8484], sp
    add d
    add d
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    jr nz, jr_0b3_4d66

    jr nz, jr_0b3_4d68

    jr nz, jr_0b3_4d6a

    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b3_4d66:
    rst $38
    rst $38

jr_0b3_4d68:
    rst $38
    rst $38

jr_0b3_4d6a:
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    ldh [rIE], a
    ret z

    rst $30
    sub b
    rst $28
    jr nc, @-$2f

    ld h, c
    sbc [hl]
    call nz, Call_000_023f
    rst $38
    ld [bc], a
    rst $38
    sub d
    ld l, a
    ld b, $ff
    ld b, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, a
    cp a
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $08
    ld e, a
    cp a
    rra
    rst $38
    sbc a
    ld a, a
    ld [bc], a
    db $fd
    add d
    ld a, l
    ret z

    scf
    pop af
    adc a
    db $fd
    db $e3
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $18
    rst $18
    rst $38
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    inc bc
    db $fc
    rst $38
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
    db $fc
    inc bc
    db $fc
    inc bc
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
    db $fd
    inc bc
    db $fc
    inc bc
    sbc [hl]
    sbc a
    ld h, a
    ld h, a
    sbc c
    sbc c
    ld b, h
    ld b, h
    inc hl
    inc hl
    db $10
    db $10
    adc h
    adc h
    add d
    add d
    ld b, c
    ld b, c
    jr nz, @+$22

    db $10
    db $10
    ld [$0408], sp
    inc b
    add d
    add d
    add c
    add c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_0b3_4e4e

    db $10
    db $10
    db $10
    db $10
    ld [$0408], sp
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    add b
    rst $38
    ld h, b
    sbc a

jr_0b3_4e4e:
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    rrca

jr_0b3_4e55:
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
    inc c
    di
    ld a, a
    add b
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$80]
    add b
    ret nc

    ret nc

    db $fc
    db $fc
    db $fc
    db $fc
    db $e3
    db $e3
    and e
    and e
    inc hl
    inc hl
    add hl, sp
    add hl, sp
    dec l
    rst $38
    ldh a, [$ef]
    jr nc, jr_0b3_4e55

    db $10
    rst $28
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    add b
    add b
    add c
    add b
    add e
    add b
    add e
    add b
    rlca
    add b
    rrca
    add b
    rrca
    add b
    rra
    add b
    rra
    add b
    rra
    add b
    rra
    add b
    rra
    add b
    rra
    add c
    rra
    add e
    rra
    add e
    rra
    add d
    rra
    add e
    ld e, $83
    ld e, $83
    ld e, $82
    rra
    add d
    rra
    add d
    rra
    add e
    ld e, $83
    ld e, $83
    rra
    add e
    rra
    add d
    rra
    add e
    rra
    add e
    rra
    add e
    ld e, $83
    rra
    add e
    rra
    add e
    rra
    add b
    rra
    add b
    rra
    add b
    rra
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add c
    sbc [hl]
    ld a, a
    add b
    ld a, [hl]
    add c
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
    rst $38
    ld a, b
    add a
    rst $38
    ret nz

    or a
    or b
    ld l, [hl]
    ld l, [hl]
    add hl, de
    add hl, de
    add $c6
    ld hl, $1821
    jr jr_0b3_4f21

    ld b, $c1
    pop bc
    jr nz, jr_0b3_4f40

    db $10

jr_0b3_4f21:
    db $10
    ld [$0608], sp
    ld b, $01
    ld bc, $8080
    ld b, b
    ld b, b
    jr nz, jr_0b3_4f4e

    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    add b
    add b

jr_0b3_4f40:
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b3_4f4e:
    nop
    nop
    ld bc, $7ffe
    add b
    rst $38
    nop
    rra
    ldh [$29], a
    sub $0f
    ldh a, [$3f]
    ret nz

    rra
    ldh [rIE], a
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
    db $fc
    inc bc
    rst $38
    nop
    ld a, $c1
    rra
    ldh [$7f], a
    and b
    ld hl, $60fe
    rst $38
    nop
    rst $38
    ld e, h
    and e
    ld sp, hl
    add a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    inc bc
    db $10
    inc de
    ldh a, [$f7]
    nop
    rrca
    nop
    rra
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

jr_0b3_4f9b:
    rst $38
    nop
    rst $38
    nop

jr_0b3_4f9f:
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
    jr nc, @+$01

    ld [hl], b
    rst $38
    ret nc

    rst $38
    or b
    rst $38
    ldh a, [$bf]
    ldh a, [$bf]
    ld [hl], b
    cp a
    ldh a, [$9f]
    ld [hl], b
    rst $18
    ld [hl], b
    rst $38
    jr nc, jr_0b3_4f9f

    cp b
    ld a, a
    ld hl, sp+$1f
    jr @-$0f

    ld e, b
    rst $28
    jr c, @+$01

    jr c, jr_0b3_4f9b

    ld e, b
    rst $38
    ret c

    rst $38
    ld e, b
    rst $38
    ret c

    ccf
    ld hl, sp-$01
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp-$01
    nop
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    nop
    rst $08
    ret nz

    jr c, jr_0b3_504e

    add [hl]
    add [hl]
    ld [hl], c
    ld [hl], c
    inc c
    inc c
    inc bc
    inc bc
    ret nz

    ret nz

    jr nc, @+$32

    ld [$0608], sp
    ld b, $01
    ld bc, $8080
    ld b, b
    ld b, b
    jr nc, jr_0b3_505e

    ld [$0408], sp
    inc b
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_0b3_5060

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38

jr_0b3_504e:
    nop
    rst $38
    inc a
    jp $38c7


    adc b
    ld [hl], a
    add b
    ld a, a
    cp $01
    db $fd
    ld [bc], a
    inc b
    ei

jr_0b3_505e:
    ldh [$1f], a

jr_0b3_5060:
    nop
    rst $38
    ldh [$1f], a
    call c, $f923
    ld b, $3c
    jp $3fc0


    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    add b
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    cp $03
    ld a, [$fa03]
    inc bc
    ld a, [$f407]
    ld b, $f4
    ld b, $f4
    ld b, $f4
    inc b
    db $f4
    inc c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$1c
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [$38]
    ldh [$3c], a
    ldh [$3c], a
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fc
    rlca
    cp $03
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
    rra
    ldh [rIE], a
    nop
    ld hl, sp+$07
    nop
    rst $38
    ldh a, [rIF]
    cp $01
    rra
    nop
    jp $38c0


    jr c, jr_0b3_50f3

    ld b, $c1
    pop bc
    jr nc, jr_0b3_5122

    inc c

jr_0b3_50f3:
    inc c
    inc bc
    inc bc
    nop
    nop
    ret nz

    ret nz

    jr nc, jr_0b3_512c

    ld [$0608], sp
    ld b, $01
    ld bc, $0000
    add b
    add b
    ld b, b
    ld b, b
    jr nz, jr_0b3_512a

    jr jr_0b3_5124

    inc b
    inc b

jr_0b3_510e:
    ld [bc], a
    ld [bc], a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ld a, [$4705]
    cp b
    nop
    nop

jr_0b3_5122:
    nop
    nop

jr_0b3_5124:
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b3_512a:
    nop
    nop

jr_0b3_512c:
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $00
    ldh [$e3], a
    ldh a, [$b1]
    db $fc
    inc e
    cp $0e
    rst $38
    rlca
    rst $18
    inc bc
    rst $18
    ld bc, $01df
    sbc e
    ld bc, $1be5
    pop de
    cpl
    add l
    dec hl
    db $ed
    inc bc
    ld c, l
    inc bc
    ld h, a
    ld [bc], a
    ld [hl], a
    ld [bc], a
    ld a, e
    ld b, $bb
    ld b, $57
    inc c
    rla
    inc c
    rst $20
    inc e
    ld h, a
    inc e
    ld b, a
    inc a
    ld c, a
    jr c, jr_0b3_510e

    ld a, b
    ld a, b
    ld [$08f8], sp
    ld a, b
    ld [$10b0], sp
    or b
    ld de, $11f0
    ldh a, [rNR13]
    ldh [$a3], a
    ldh [$e7], a
    ld h, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $7ffe
    add b
    rst $38
    nop
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    ld a, a
    nop
    rlca
    nop
    ret nz

    ret nz

    jr c, jr_0b3_51fa

    rlca
    rlca
    add b
    add b
    ld h, b
    ld h, b
    jr jr_0b3_51e2

    ld b, $06
    ld bc, $0001
    nop
    add b
    add b
    ld b, b
    ld b, b
    jr nc, jr_0b3_5206

    inc c
    inc c
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    rst $38

jr_0b3_51e2:
    ld a, a
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
    rst $08
    ccf
    rrca
    rrca
    rrca
    rra
    rrca
    ccf
    rlca
    ld a, a
    rlca
    ld a, a

jr_0b3_51fa:
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

jr_0b3_5206:
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    inc bc
    ld a, h
    add e
    db $fc
    add e
    db $fc
    add e
    cp h
    add c
    cp [hl]
    ld bc, $013e
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
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
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc bc
    rst $38
    nop
    rra
    nop
    inc bc
    nop
    ret nz

    ret nz

    jr c, jr_0b3_52c0

    rlca
    rlca
    nop
    nop
    add b
    add b
    ld h, b
    ld h, b
    jr jr_0b3_52aa

    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld h, b
    ld h, b
    db $10
    db $10
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38

jr_0b3_52aa:
    rst $38
    rst $38
    rst $38
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

jr_0b3_52c0:
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
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    inc bc
    ld a, a
    nop
    ld a, a
    nop
    rra
    nop
    rst $20
    ldh [rNR23], a
    jr jr_0b3_52e6

    rlca
    nop
    nop
    nop
    nop
    ret nz

    ret nz

jr_0b3_52e6:
    jr nc, @+$32

    inc c
    inc c
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    inc a
    jp $c33c


    inc a
    jp $c33c


    inc a
    jp $c33c


    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    rra
    ldh [rIF], a
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
    ldh a, [rTAC]
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
    ld hl, sp+$03
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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
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
    ldh a, [rIE]
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
    rst $38
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
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rst $20
    ldh [rNR23], a
    jr jr_0b3_53ac

    rlca
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b3_53ac:
    ret nz

    ret nz

    jr nc, jr_0b3_53e0

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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a

jr_0b3_53e0:
    ldh [$1f], a
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    rlca
    rlca
    add a
    add a
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
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

    ccf
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
    ldh [$e0], a
    inc e
    inc e
    inc bc
    inc bc
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
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    ld bc, $0000
    nop
    ldh [$e0], a
    jr jr_0b3_54d8

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
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b3_54d8:
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    inc bc
    nop
    nop
    nop
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
    ccf
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    add hl, de
    ld b, $06
    ld b, $06
    ld b, $06
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b3_558f

    ld [hl+], a
    inc hl
    ld b, $06
    ld b, $06
    ld b, $06
    inc h
    ld b, $25
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    ld b, $06
    ld b, $06
    ld b, $06
    dec l
    ld b, $2e
    cpl
    jr nc, jr_0b3_55bd

    ld [hl-], a
    inc sp
    inc [hl]

jr_0b3_558f:
    dec [hl]
    ld b, $06
    ld b, $06
    ld b, $06
    ld [hl], $37
    jr c, jr_0b3_55d3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld sp, $063e
    ld b, $06
    ld b, $06
    ld b, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld b, $06
    ld b, $06
    ld b, $49
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_0b3_55bd:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, h
    ld d, h
    ld d, h
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
    ld d, c
    ld e, a
    ld h, b
    ld h, c

jr_0b3_55d3:
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
    ld d, c
    ld l, [hl]
    ld [$706f], sp
    ld [hl], c
    ld [hl], d
    ld b, $06
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld b, $06
    ld b, $7c
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
    ld b, $06
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
    ld b, $06
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    ld b, $9f
    and b
    ld b, $a1
    and d
    and e
    ld b, $06
    ld b, $a4
    and l
    and [hl]
    and a
    ld b, $06
    ld b, $06
    xor b
    xor c
    ld b, $aa
    xor e
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    xor h
    xor l
    ld b, $ae
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $93
    ld b, $af
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    or b
    or c
    or d
    ld b, $05
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
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
    ld bc, $0101
    ld bc, $0600
    ld b, $06
    ld b, $06
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, l
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
    ld b, $00
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
    nop
    nop
    nop
    ld bc, $0000
    nop
    dec b
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
    ld bc, $0001
    nop
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    ld bc, $0100
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
    ld bc, $010f
    rlca
    ld bc, $0007
    rlca
    nop
    rlca
    nop
    rlca
    ld bc, $0106
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0900
    nop
    nop
    ld bc, $0100
    dec b
    nop
    nop
    nop
    inc bc
    nop
    ld [$0100], sp
    nop
    nop
    nop
    ld bc, $0400
    nop
    nop
    nop
    nop
    nop
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
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei

jr_0b3_5892:
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc c
    di
    inc c
    di
    inc c
    di
    ld e, $f3
    ld a, $f3
    ld a, $f3
    ccf
    di
    ccf
    di
    ccf
    di
    ld a, a
    di
    rst $38
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    or a
    ld [hl-], a
    add l
    nop
    push bc
    nop
    call nz, $a500
    nop
    or $00
    push de
    nop
    and $00
    or a
    nop
    push de
    nop
    rst $30
    nop
    push af
    nop
    rst $30
    nop
    rst $30
    nop
    rst $30
    nop
    rst $18
    jr nz, jr_0b3_5892

    ld d, b
    rra
    ldh [rVBK], a
    or b
    ld e, e
    and h
    rra
    ldh [rNR31], a
    db $e4
    dec sp
    call nz, $a45b
    dec de
    db $e4
    dec de
    ld h, h
    dec de
    ld h, h
    dec de
    ld h, h
    dec de
    ld h, h
    dec de
    ld h, h
    dec de
    ld h, h
    dec de
    ld h, h
    dec de
    ld h, h
    dec de
    inc h
    dec de
    inc h
    add hl, de
    ld h, $19
    ld h, $19
    ld h, $19
    ld h, $19
    ld h, $19
    ld h, $19
    ld b, $19
    ld b, $19
    ld b, $19
    ld b, $19
    ld b, $19
    ld b, $19
    ld b, $19
    ld b, $19
    ld b, $19
    ld b, $19
    ld b, $19
    ld b, $39
    ld b, $39
    ld b, $39
    ld b, $39
    ld b, $39
    ld b, $39
    ld b, $39
    ld b, $39
    ld b, $39
    ld b, $39
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc a
    ldh a, [rIE]
    add b
    ldh a, [$8f]
    add b
    rst $38
    add b
    ld a, a

jr_0b3_5954:
    add b
    ld a, a

jr_0b3_5956:
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
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    rst $28
    db $10
    ld hl, sp+$08
    add sp, $08
    add sp, $08
    ld d, h
    add h
    ld [hl], h
    add h
    call nc, Call_0b3_6404
    add h
    and h
    ld b, h
    db $f4
    inc b
    ld h, d
    add d
    ld h, d
    add d
    ld [hl+], a
    jp nz, $c222

    ld [hl+], a
    jp nz, $c222

    ld hl, $21c1
    pop bc
    ld hl, $21c1
    pop bc
    ld hl, $21c1

jr_0b3_5991:
    pop bc
    jr nz, jr_0b3_5954

    jr nz, jr_0b3_5956

    sub b

jr_0b3_5997:
    ld h, b
    sub b

jr_0b3_5999:
    ld h, b
    sub b

jr_0b3_599b:
    ld h, b
    sub b

jr_0b3_599d:
    ld h, b
    sub b

jr_0b3_599f:
    ld h, b
    sub b

jr_0b3_59a1:
    ld h, b
    sub b

jr_0b3_59a3:
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    sub b
    ld h, b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld [hl], b
    ret z

    jr nc, jr_0b3_5991

    jr nc, @-$36

    jr nc, @-$36

    jr nc, jr_0b3_5997

    jr nc, @-$3a

    jr c, jr_0b3_5997

    jr c, jr_0b3_5999

    jr c, jr_0b3_599b

    jr c, jr_0b3_599d

    jr c, jr_0b3_599f

    jr c, jr_0b3_59a1

    jr c, jr_0b3_59a3

    jr c, jr_0b3_59e1

jr_0b3_59e1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld a, h
    add b
    add h
    inc b
    add h
    add h
    add d
    add d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld hl, $2021
    jr nz, jr_0b3_5a29

    jr nz, jr_0b3_5a2b

    jr nz, jr_0b3_5a1d

    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0408], sp
    inc b
    inc b

jr_0b3_5a1d:
    inc b
    inc b
    inc b
    inc b
    inc b
    add d
    add d
    add d
    add d
    add d
    add d
    add c

jr_0b3_5a29:
    add c
    add c

jr_0b3_5a2b:
    add c
    add c
    add c
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, @+$22

    jr nz, jr_0b3_5a5e

    jr nz, jr_0b3_5a60

    jr nz, jr_0b3_5a62

    jr nz, jr_0b3_5a64

    jr nz, jr_0b3_5a66

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

jr_0b3_5a5e:
    inc b
    inc b

jr_0b3_5a60:
    inc b
    inc b

jr_0b3_5a62:
    inc b
    inc b

jr_0b3_5a64:
    inc b
    inc b

jr_0b3_5a66:
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$f4]
    inc b
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld hl, $2121
    ld hl, $1010
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    add h
    add h
    add h
    add h
    add d
    add d
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld hl, $2021
    jr nz, jr_0b3_5ac7

    jr nz, jr_0b3_5ab9

    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    inc b

jr_0b3_5ab9:
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add c
    add c
    add c
    add c
    add c
    add c
    add b

jr_0b3_5ac7:
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_0b3_5af2

    jr nz, jr_0b3_5af4

    jr nz, @+$22

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0408], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_0b3_5af2:
    ld [bc], a
    ld [bc], a

jr_0b3_5af4:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $7ffe
    add c
    and c
    ld hl, $1010
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    add h
    add h
    add d
    add d
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld hl, $2021
    jr nz, jr_0b3_5b49

    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b
    add d
    add d
    add d
    add d
    ld b, c

jr_0b3_5b49:
    ld b, c
    ld b, c
    ld b, c
    jr nz, jr_0b3_5b6e

    jr nz, jr_0b3_5b70

    jr nz, jr_0b3_5b72

    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $8101
    add c
    add c
    add c
    add b
    add b
    ld b, b
    ld b, b

jr_0b3_5b6e:
    ld b, b
    ld b, b

jr_0b3_5b70:
    ld b, b
    ld b, b

jr_0b3_5b72:
    jr nz, jr_0b3_5b94

    jr nz, jr_0b3_5b96

    jr nz, jr_0b3_5b98

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0108], sp
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    rlca
    ld hl, sp-$01
    nop

jr_0b3_5b94:
    ld hl, sp+$07

jr_0b3_5b96:
    nop
    rst $38

jr_0b3_5b98:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [$f0]
    nop
    ld [$0808], sp
    ld [$8484], sp
    add h
    add h
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld hl, $1021
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    add h
    add h
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld hl, $2021
    jr nz, jr_0b3_5be1

    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    add d
    add d
    add c
    add c
    ld b, c

jr_0b3_5be1:
    ld b, c
    ld b, b
    ld b, b
    jr nz, jr_0b3_5c06

    jr nz, jr_0b3_5c08

    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $8101
    add c
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_0b3_5c24

    jr nz, jr_0b3_5c26

jr_0b3_5c06:
    jr nz, jr_0b3_5c28

jr_0b3_5c08:
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_0b3_5c24:
    nop
    nop

jr_0b3_5c26:
    add b
    add b

jr_0b3_5c28:
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIE]
    nop
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    ld a, l
    add c
    adc b
    ld [$8484], sp
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld hl, $1021
    db $10
    db $10
    db $10
    ld [$0408], sp
    inc b
    add h
    add h
    add d
    add d
    ld b, c
    ld b, c
    ld hl, $2021
    jr nz, jr_0b3_5c87

    db $10
    ld [$0808], sp
    ld [$0404], sp
    add d
    add d
    add d
    add d
    ld b, c
    ld b, c
    ld hl, $2021

jr_0b3_5c87:
    jr nz, jr_0b3_5c99

    db $10
    db $10
    db $10
    ld [$0408], sp
    inc b
    inc b
    inc b
    add d
    add d
    add d
    add d
    ld b, c
    ld b, c
    ld b, c

jr_0b3_5c99:
    ld b, c
    jr nz, jr_0b3_5cbc

    jr nz, @+$22

    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add c
    add c
    add c
    add c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_0b3_5cd6

    jr nz, jr_0b3_5cd8

    db $10
    db $10
    db $10
    db $10

jr_0b3_5cbc:
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b

jr_0b3_5cd6:
    ld b, b
    ld b, b

jr_0b3_5cd8:
    jr nz, jr_0b3_5cfa

    jr nz, jr_0b3_5cfc

    db $10
    db $10
    db $10
    db $10
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38

jr_0b3_5cfa:
    inc bc
    rst $38

jr_0b3_5cfc:
    ccf
    jp $03ff


    jp Jump_000_033f


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
    rra
    db $e3
    rst $20
    rlca
    inc hl
    inc hl
    sub e
    sub e
    adc e
    adc a
    ld b, c
    ld b, a
    inc h
    daa
    ld d, $17
    sub a
    sub a
    adc a
    adc a
    ld b, a
    ld b, a
    daa
    daa
    rla
    rla
    rla
    rla
    rrca
    rrca
    rlca
    rlca
    add a
    add a
    ld b, a
    ld c, a
    ld b, e
    ld c, a
    inc hl
    cpl
    ld de, $0817
    rrca
    ld [$040b], sp
    dec b
    ld [bc], a
    ld [bc], a
    add d
    add d
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    jr nz, jr_0b3_5d6e

    db $10
    db $10
    db $10
    db $10
    ld [$0408], sp
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    add d
    add d
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    jr nz, @+$22

    jr nz, jr_0b3_5d84

    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b

jr_0b3_5d6e:
    ld [bc], a
    ld [bc], a
    add d
    add d
    add c
    add c
    ld b, b
    ld b, b
    jr nz, @+$22

    jr nz, @+$22

    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp

jr_0b3_5d84:
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $8080
    add b
    add b
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $03
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
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]

jr_0b3_5df7:
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$f0]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    ldh [$e1], a
    ld h, b
    pop hl
    jr nz, jr_0b3_5df7

    nop
    pop hl
    add b
    pop hl
    sbc $e1
    rst $38
    ldh [$e1], a
    cp $e0
    rst $38
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc a
    jp Jump_0b3_413e


    cp a
    add b
    add e
    add b
    ld b, e
    ld b, b
    ld hl, $2020
    jr nz, @+$12

    db $10
    ld [$0808], sp
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    add d
    add d
    add c
    add c
    ld b, b
    ld b, b
    jr nz, @+$22

    jr nz, jr_0b3_5e78

    db $10
    db $10
    db $10
    db $10
    ld [$0408], sp
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    add c
    add c
    add c
    add c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_0b3_5e8e

    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp

jr_0b3_5e78:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add c
    add c
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
    rra
    nop
    rra
    nop
    rra

jr_0b3_5e8e:
    nop
    rra
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

jr_0b3_5eb7:
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

jr_0b3_5ec5:
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

jr_0b3_5ed1:
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    ccf
    ld h, b
    sbc a
    jr nz, jr_0b3_5ec5

    jr nc, jr_0b3_5eb7

    jr jr_0b3_5ed1

    inc c
    di
    ld b, $f9
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
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    rrca
    jr c, @+$09

    jr jr_0b3_5f13

    inc e
    inc bc
    ld c, $01
    ld b, $01
    add a

jr_0b3_5f13:
    add b
    add e
    add b
    ld b, c
    ld b, b
    ld hl, $2020
    jr nz, jr_0b3_5f2d

    db $10
    ld [$0808], sp
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add c
    add c
    ld b, b
    ld b, b
    ld b, b

jr_0b3_5f2d:
    ld b, b
    jr nz, @+$22

    jr nz, jr_0b3_5f52

    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $8001
    add b
    add b
    add b
    ld b, b
    ld b, b
    jr nz, @+$22

    jr nz, @+$22

    db $10
    db $10
    db $10
    db $10
    ld [$0008], sp
    nop

jr_0b3_5f52:
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    inc bc
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    rst $38
    inc c
    di
    inc de
    ldh [rNR32], a
    ldh [$1f], a
    add sp, $1f
    jp hl


    rra
    pop hl
    rra
    ldh [$3f], a
    call nz, $c43f
    ccf
    add $3f
    rst $00
    ccf
    rst $00
    ccf
    call nc, $d43f
    ccf
    call nz, $c43f
    ccf
    call nz, $807f
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
    add h
    ld a, a
    add e
    ld a, a
    adc c
    ld a, a
    adc b
    ld a, a

jr_0b3_5f99:
    adc h
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    ld bc, $00bf
    rst $18
    nop
    rst $28
    nop
    ld [hl], e
    add b
    add hl, sp
    ret nz

    ld e, $e0
    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
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
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    adc a
    jr nc, jr_0b3_5f99

    jr @-$17

    inc c
    di
    ld c, $f1
    rlca
    ld hl, sp+$03
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
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    jr c, jr_0b3_5ff9

    inc e
    inc bc
    inc c
    inc bc
    ld c, $01
    rlca

jr_0b3_5ff9:
    nop
    add e
    add b
    add e
    add b
    ld b, c
    ld b, b
    jr nz, jr_0b3_6022

    db $10
    db $10
    db $10
    db $10
    ld [$0408], sp
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $8101
    add c
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_0b3_603a

    db $10
    db $10
    db $10
    db $10
    ld [$8008], sp
    ld a, a

jr_0b3_6022:
    add b
    ld a, a
    add b
    ld a, a
    ldh a, [rIF]
    inc bc
    nop
    nop
    nop
    ret nz

    nop
    jr @-$1e

    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b3_603a:
    nop
    rst $38
    nop
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
    jr c, jr_0b3_6051

    add $01
    ld sp, hl
    ret nz

    cp $40
    inc h

jr_0b3_6051:
    rst $38
    ld de, $51ff
    rst $38
    db $dd
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    adc b
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
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    add a
    rst $38
    jp $e3ff


    rst $38
    ld a, [hl-]
    rst $38
    ld e, $ff
    add d
    rst $38
    ldh [rIE], a
    ld [hl], a
    rst $38
    ld a, a

jr_0b3_6085:
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    ld c, a
    cp a
    rst $08
    inc bc
    rst $20
    ld bc, $00f3
    ld a, b
    add c
    inc e
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
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
    ld a, a
    ret nz

    ccf
    ld b, b
    cp a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    jr c, jr_0b3_6085

    inc e
    db $e3
    ld c, $f1
    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
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
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld [hl], b
    rrca
    jr c, @+$09

    jr c, jr_0b3_60f1

    inc e
    inc bc
    ld c, $01
    ld c, $01
    rlca

jr_0b3_60f1:
    nop
    add e
    add b
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    jr nz, jr_0b3_611a

    db $10
    db $10
    db $10
    db $10
    ld [$0008], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    inc e
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38

jr_0b3_611a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld h, b
    rra
    sbc h
    inc bc
    db $e3
    add b
    db $fc
    nop
    rst $38
    add b
    rst $38
    jr nz, @+$01

    jr c, @+$01

    ld e, [hl]
    rst $38
    cpl
    rra
    rst $38
    rra
    rst $38
    ld c, $ff
    rrca
    rst $38
    rra
    rst $38
    dec bc
    rst $38
    dec de
    rst $38
    ccf

jr_0b3_614f:
    rst $38
    cp a
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], d
    rst $38
    ld [hl], d
    rst $38
    ld [hl], a
    rst $38
    ld [hl], l
    rst $38
    ld h, a
    rst $38
    rst $28
    rst $38
    call $fdff
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fd
    cp $fd
    cp $7d
    cp $bd
    ld a, [hl]
    db $fd
    inc a
    dec sp
    sbc h
    dec de
    call z, $ec0b
    dec bc
    db $fc
    inc bc
    ld a, b
    add a
    jr c, jr_0b3_614f

    jr @-$17

    nop
    rst $38
    nop
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
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    adc a
    jr c, @-$37

    inc a
    jp $e11e


    ld c, $f1
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    jr c, jr_0b3_61c7

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0b3_61c7:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    ccf
    jr nc, @+$11

    adc b
    rlca
    add sp, $07
    ld hl, sp+$27
    ld hl, sp+$67
    ldh a, [$af]
    ldh a, [$af]
    ldh a, [$ef]
    ldh a, [$6f]
    ldh a, [$6f]
    ldh [$5f], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38

jr_0b3_6216:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld a, b
    add a
    inc a
    jp $e31c


    ld c, $f1
    rlca
    ld hl, sp+$07
    ld hl, sp+$03

jr_0b3_623d:
    db $fc
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
    ldh [$1f], a
    ld bc, $0000
    nop
    jr nc, jr_0b3_6216

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
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld a, b
    add a
    jr c, jr_0b3_623d

    inc e
    db $e3
    ld e, $e1
    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld hl, sp+$07
    ld bc, $0000
    nop
    ret nz

    nop
    ld b, $f8
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    add b
    inc c
    ldh a, [rSB]
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
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
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
    ld bc, $0302
    inc b
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
    ld b, $07
    ld [$0909], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    rrca
    db $10
    ld de, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $05
    rla
    jr jr_0b3_631c

    add hl, bc
    add hl, bc
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$0b

    add hl, bc
    ld hl, $2322
    inc h
    dec h
    add hl, bc
    add hl, bc
    ld h, $27
    jr z, jr_0b3_6342

    ld a, [hl+]
    dec hl
    inc l

jr_0b3_631c:
    dec l
    ld l, $2f
    add hl, bc
    jr nc, jr_0b3_6353

    ld [hl-], a
    add hl, bc
    add hl, bc
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b3_6365

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    add hl, bc
    add hl, bc
    ld b, c
    ld b, d
    ld b, d
    ld b, e
    add hl, bc
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_0b3_6342:
    ld c, h
    add hl, bc
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

jr_0b3_6353:
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
    add hl, bc
    add hl, bc

jr_0b3_6365:
    add hl, bc
    ld l, h
    add hl, bc
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld l, d
    ld l, e
    add hl, bc
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld l, [hl]
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    ld l, d
    ld l, e
    add hl, bc
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    ld a, a
    ld a, a
    ld a, a
    adc c
    adc d
    dec b
    ld l, d
    ld l, e
    add hl, bc
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
    adc d
    adc d
    dec b
    sub l
    ld l, e
    add hl, bc
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld l, [hl]
    add b
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
    inc sp
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
    add hl, bc
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $b1b1

    jp $c5c4


    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cp c
    add $c7
    or c
    or c
    or c
    or c
    ret z

    ret


    jp z, $cccb

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    call $cfce
    ret nc

    pop de
    jp nc, $0909

    add hl, bc
    db $d3
    call nc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    push de
    add hl, bc
    add hl, bc
    add hl, bc

Call_0b3_6404:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    sub $d7
    dec sp
    add hl, bc
    add hl, bc
    add hl, bc
    rlca
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
    rlca
    dec b
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
    rlca
    dec b
    ld bc, $0000
    nop
    ld bc, $0601
    ld b, $06
    dec b
    nop
    nop
    nop
    nop
    rlca
    dec b
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0601
    nop
    nop
    nop
    nop
    rlca
    dec b
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld b, $00
    nop
    nop
    nop
    rlca
    dec b
    ld bc, $0000
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
    rlca
    ld [bc], a
    dec b
    nop
    dec b
    dec b
    inc b
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $05
    ld b, $00
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0100
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
    ld bc, $0100
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, b
    jr nz, jr_0b3_64ef

jr_0b3_64ef:
    nop
    nop
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $05
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
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $05
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    dec b
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
    dec b
    dec b
    dec b
    ld b, $00
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
    jr nz, jr_0b3_654e

jr_0b3_654e:
    nop
    nop
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    rst $38
    rra
    ldh a, [rIF]
    rst $38
    ldh a, [$f0]
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [$1f], a
    rst $38
    nop
    rst $38
    add b
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
    rst $38
    rst $38
    nop
    ld bc, $0080
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    set 7, a
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
    nop
    nop
    inc bc
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
    cp $ff
    cp $ff
    cp $ff
    adc $ff
    ret nz

    rst $38
    inc a
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
    jp hl


    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ccf
    rrca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [rNR34], a
    ldh [rNR34], a
    ldh [rNR34], a
    ldh [rNR34], a
    ldh [$3e], a
    ret nz

    inc a
    ret nz

    dec a
    ret nz

    dec a
    ret nz

    dec a
    ret nz

    ld a, l
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    rra
    add b
    rra
    add b
    rra
    add b
    rra
    add b
    dec e
    add d
    dec e
    add d
    dec e
    sbc d
    rrca
    adc d
    ld c, $8b
    ld c, $8b
    ld [$0e8f], sp
    adc l
    rlca
    add l
    dec b
    add a
    ld b, $c7
    rlca
    add $02
    jp $c303


    ld bc, $01e1
    pop hl
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
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
    ld sp, hl
    ld c, $f1
    inc e
    db $e3
    jr c, @-$37

    jr c, @-$37

    ld [hl], b
    adc a
    ldh [$1f], a
    ldh [$9f], a
    ret nz

    cp a
    add b
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
    add e
    ld a, [hl]
    rst $38
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
    ld a, [c]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld b, $f8
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
    rst $38
    ld a, b
    add a
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $c0
    rra
    add b
    ccf
    add h
    dec sp
    and [hl]
    add hl, de
    ld [hl], a
    ld [$007d], sp
    ld a, l
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    or $08
    ld a, h
    add b
    db $fc
    nop
    db $fc
    nop
    db $fd
    nop
    add sp, $00
    pop af
    nop
    ei
    nop
    ei
    nop
    db $db
    nop
    rlc b
    rlc b
    ei
    nop
    di
    nop
    di
    nop
    cp $00
    or $00
    cp $00
    cp $00
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
    ccf

jr_0b3_6805:
    ret nz

    ccf
    ret nz

    ld a, $c0
    inc e
    ldh [$80], a
    ld [hl], b
    ld c, b
    or b
    sub e
    db $fc
    add sp, -$21
    ld l, c
    db $76
    ld a, $3e
    jr jr_0b3_6832

    nop
    ld bc, $0300
    nop
    add a
    nop
    rst $38
    nop

jr_0b3_6823:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc

jr_0b3_6832:
    inc bc
    db $fc
    ld b, $f9
    ld c, $f1
    inc c
    di
    jr jr_0b3_6823

    jr c, jr_0b3_6805

    ld [hl], b
    adc a
    ld h, b
    sbc a
    ldh [$1f], a
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
    ld a, a
    rst $38
    jr nc, @+$01

    add sp, -$09
    call c, Call_000_38e3
    rst $00
    ld [hl], b
    adc a
    pop hl
    rra
    rst $38
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
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $0c00
    inc bc
    ld h, b
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
    ret nz

    ccf
    ret nz

    cp a
    ldh [$9f], a
    ldh [$9f], a
    ldh a, [$cf]
    ldh a, [$cf]
    ld hl, sp+$67
    ld hl, sp+$67
    ld hl, sp+$67
    db $fc
    inc hl
    db $fc
    inc hl
    db $fc
    inc sp
    db $fc
    inc sp
    cp $31
    db $fc
    inc de
    cp $11
    db $ec
    inc de
    cp $01
    db $fc
    inc bc
    or $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $f4
    inc bc
    db $f4
    inc bc
    db $f4
    inc bc
    db $f4

jr_0b3_68c7:
    inc bc
    ld [hl], h
    inc bc
    db $e4
    inc bc
    db $e4
    inc bc
    call z, $c803
    rlca
    adc b
    rlca
    jr jr_0b3_68dd

    db $10
    rrca
    db $10
    rrca
    jr nc, jr_0b3_68eb

    ld h, b

jr_0b3_68dd:
    rra
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
    cp a
    nop
    ld a, a
    ld bc, $03fe

jr_0b3_68eb:
    db $fc
    rlca
    ld hl, sp+$06
    ld sp, hl
    inc c
    di
    jr @-$17

    jr jr_0b3_68dd

    jr nc, jr_0b3_68c7

    ld h, b
    sbc a
    ld h, b
    sbc a
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
    nop
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
    ld [bc], a
    db $fc
    ld b, $f8
    inc b
    ld hl, sp+$0c
    ldh a, [rNR23]
    ldh [rNR23], a
    ldh [rNR10], a
    ldh [$30], a
    ret nz

    ld h, b
    add b
    ld h, b
    add b
    ld b, b
    add b
    ret nz

    nop
    rst $08
    ldh a, [$03]
    db $fc
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    nop
    cp $00
    cp $ff
    cp $c1
    ld a, $71
    adc [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    cp $01
    cp $02

jr_0b3_696f:
    db $fc
    ld [bc], a

jr_0b3_6971:
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc

jr_0b3_6985:
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    ld b, $f9
    inc b
    ei
    inc c
    di
    jr jr_0b3_6985

    jr nc, jr_0b3_696f

    jr nc, jr_0b3_6971

    ld h, b
    sbc a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $02
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$0c
    ldh a, [$08]
    ldh a, [rNR23]
    ldh [rNR10], a
    ldh [$30], a
    ret nz

    jr nz, @-$3e

    ld h, b
    add b
    ld b, b
    add b
    ret nz

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
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    rst $38
    rst $38
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    db $fd
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

jr_0b3_6a0d:
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
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_0b3_6a0d

    ld d, b
    adc a
    ret z

    rlca
    adc h
    inc bc
    add h
    inc bc
    ld b, $01
    ld [bc], a
    ld bc, $0003
    inc bc
    nop
    inc bc
    nop
    ld bc, $018f
    rst $00
    ld bc, $01c7
    rst $00
    ld bc, $01c7
    add a
    ld bc, $01c7
    rst $00
    ld bc, $01c7
    add a
    ld bc, $01c7
    rst $08
    ld bc, $018f
    adc a

jr_0b3_6a5c:
    inc bc
    rst $08
    inc bc
    rst $08
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $07
    add [hl]
    add a
    adc h
    adc a
    db $dd
    sbc $fb
    db $fc
    ld [hl], d
    db $fd
    inc b
    ei
    inc c
    di
    ld [$10f7], sp
    rst $28
    jr nc, @-$2f

    ld h, b
    sbc a
    ld b, b
    cp a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ld bc, $01fe
    cp $02
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [rNR23]
    ldh [rNR10], a
    ldh [$30], a
    ret nz

    jr nz, jr_0b3_6a5c

    ld h, b
    add b
    ld b, c
    add c
    pop bc
    ld bc, $0181
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    db $10

jr_0b3_6ab9:
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, @+$22

    jr nz, jr_0b3_6ae2

    jr nz, jr_0b3_6ae4

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
    ld bc, $0101
    ld bc, $fff8

jr_0b3_6ae2:
    add b
    rst $38

jr_0b3_6ae4:
    ld [bc], a
    db $fd
    ld b, [hl]
    cp c
    jr nc, jr_0b3_6ab9

    inc a
    jp $c03f


    rst $38
    nop
    rlca
    nop
    rst $38
    nop
    rrca
    ld [$0c0f], sp
    rra
    ld b, $1f
    ld [bc], a
    ld e, $01
    ld e, $01
    rra
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc c
    inc bc
    inc e
    inc bc
    inc c
    add e
    inc e
    add e
    inc c
    add e
    inc c
    add e
    inc e
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    inc c
    add e
    ld c, $81
    ld c, $81
    ld c, $81
    ld c, $81
    ld c, $81
    ld c, $c1
    ld c, $c1
    ld c, $cf
    ld c, $cf
    ld c, $cf
    ld c, $cf
    ld c, $cf
    ld c, $cf
    rrca
    adc $0f
    adc $0e
    pop bc
    ld c, $c1
    ld c, $c1
    ld c, $c1
    inc c
    jp $c20d


    add hl, bc
    add $0b
    call nz, $cf03
    scf
    rst $08
    ld [hl], a
    adc a
    rst $08
    ccf
    adc a
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    ld [$0afe], sp
    cp $02
    cp $34
    call z, $8c74
    ld b, h
    add h
    adc b
    ld [$0888], sp
    ld [$1008], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_0b3_6bae

    jr nz, jr_0b3_6bb0

    jr nz, jr_0b3_6bb2

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
    add b
    add b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_0b3_6bae:
    inc b
    inc b

jr_0b3_6bb0:
    inc b
    inc b

jr_0b3_6bb2:
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_0b3_6be6

    jr nz, jr_0b3_6be8

    jr nz, jr_0b3_6bea

    jr nz, @+$22

    ld b, b
    ld b, b
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
    add b
    add b
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
    rst $38

jr_0b3_6be6:
    dec de
    db $e4

jr_0b3_6be8:
    sub e
    ld l, h

jr_0b3_6bea:
    rst $18
    jr nz, @+$01

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
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    add d
    add d
    add d
    add d
    add d
    add d
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    ld [$1008], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_0b3_6c6a

    jr nz, jr_0b3_6c6c

    ld hl, $4121
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b

jr_0b3_6c6a:
    inc b
    inc b

jr_0b3_6c6c:
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$1010], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, @+$22

    jr nz, jr_0b3_6ca8

    jr nz, jr_0b3_6caa

    jr nz, jr_0b3_6cac

    jr nz, jr_0b3_6cae

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    add b

jr_0b3_6c9f:
    add b
    ld h, a
    sbc c
    inc b
    ei
    dec d
    ld [$c03f], a

jr_0b3_6ca8:
    cp a
    ld b, b

jr_0b3_6caa:
    rst $38
    inc bc

jr_0b3_6cac:
    rst $38
    rra

jr_0b3_6cae:
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
    jr nz, jr_0b3_6c9f

    nop
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    jr z, jr_0b3_6c9f

    ld bc, $00fe
    rst $38
    ld c, b
    or a
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
    add b
    ld a, a
    inc b
    ei
    rst $38
    nop
    rst $38
    nop
    db $10
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
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld de, $1111
    ld de, $1111
    ld hl, $2121
    ld hl, $2121
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    add d
    add d
    add d
    add d
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    inc b
    inc b
    inc b
    inc b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    jr nz, jr_0b3_6d62

    jr nz, jr_0b3_6d64

    jr nz, jr_0b3_6d66

    jr nz, jr_0b3_6d68

    jr nz, jr_0b3_6d6a

    jr nz, jr_0b3_6d6c

    jr nz, jr_0b3_6d6e

    jr nz, jr_0b3_6d70

    jr nz, jr_0b3_6d72

    jr nz, jr_0b3_6d74

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rst $38
    rst $38

jr_0b3_6d62:
    ld a, a
    rst $38

jr_0b3_6d64:
    rst $38
    ld a, a

jr_0b3_6d66:
    rst $38
    ld a, a

jr_0b3_6d68:
    rst $38
    rst $38

jr_0b3_6d6a:
    rst $38
    rst $38

jr_0b3_6d6c:
    rst $38
    rst $38

jr_0b3_6d6e:
    rst $38
    rst $38

jr_0b3_6d70:
    nop
    rst $38

jr_0b3_6d72:
    nop
    rst $38

jr_0b3_6d74:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$b7]
    ld c, b
    ld b, e
    cp h
    dec d
    ld [$b847], a
    rla
    add sp, $0a
    push af
    ld b, b
    cp a
    nop
    rst $38
    inc bc
    db $fc
    rst $10
    jr z, @+$31

    ret nc

    sub a
    ld l, b
    dec bc
    db $f4
    daa
    ret c

    add a
    ld a, b
    inc hl
    call c, $fa05
    rst $38
    nop
    rst $38
    nop
    ld [$40f7], sp
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
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    ld de, $1111
    db $10
    db $10
    jr nz, jr_0b3_6df8

    jr nz, jr_0b3_6dfa

    jr nz, jr_0b3_6dfc

    jr nz, jr_0b3_6dfe

    jr nz, jr_0b3_6e00

    jr nz, jr_0b3_6e02

    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_0b3_6df8:
    ld b, b
    ld b, b

jr_0b3_6dfa:
    ld b, b
    ld b, b

jr_0b3_6dfc:
    ld b, b
    ld b, b

jr_0b3_6dfe:
    ld b, b
    ld b, b

jr_0b3_6e00:
    nop
    rst $38

jr_0b3_6e02:
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ccf
    pop bc
    rst $30
    rlca
    jp $8e03


    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    ld bc, $1fff
    ldh [$fe], a
    nop
    ld hl, sp+$00
    ld a, [$f400]
    nop
    ld a, [$ff00]
    nop
    cp h
    ld b, e
    ldh a, [rIF]
    ret nz

    ccf
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
    rst $38
    nop
    rst $38
    nop
    ld de, $1111
    ld de, $1111
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    adc b
    adc b
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add c
    add c
    add c
    add c
    add c
    add c
    add c

jr_0b3_6e93:
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
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
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr nz, jr_0b3_6e93

    ld d, b
    rst $28
    ld hl, sp-$09
    db $fc
    di
    and $f9
    add e
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38

jr_0b3_6ecd:
    ld a, a
    rst $38
    ld c, a
    rrca
    rrca
    jr c, jr_0b3_6ef3

    ld hl, sp+$3f
    ldh a, [rIE]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    db $10
    rst $28
    jr jr_0b3_6ecd

    ld [$08f7], sp
    rst $30
    inc c
    di
    inc b
    ei
    inc b
    ei
    ld b, $f9
    ld [c], a

jr_0b3_6ef3:
    dec e
    ld [c], a
    dec e
    inc hl
    inc e
    inc hl
    inc e
    ld de, $910e
    adc [hl]
    sub c
    adc [hl]
    sub b
    adc a
    adc b
    add a
    adc b
    add a
    adc b
    add a
    ld c, b
    ld b, a
    ld b, h
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    ld b, e
    ld [hl+], a
    ld hl, $2122
    ld [hl+], a
    ld hl, $2122
    ld hl, $2120
    jr nz, jr_0b3_6f32

    db $10
    ld de, $1010
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$8181], sp

jr_0b3_6f32:
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add c
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $06fe
    ld hl, sp+$18
    ldh [$60], a
    sub b

jr_0b3_6f70:
    add b
    ld [hl], b
    nop
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$80
    ld a, b
    add b
    ld a, b
    ld b, b
    cp b
    ld h, b
    sbc b
    jr nc, jr_0b3_6f70

    sbc b
    ldh [$cc], a
    ldh a, [$c6]
    ld hl, sp-$79

jr_0b3_6faf:
    db $fc
    add e

jr_0b3_6fb1:
    ld a, [$fd01]
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop

jr_0b3_6fbd:
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

jr_0b3_6fcd:
    cp $00

jr_0b3_6fcf:
    rst $38
    add b

jr_0b3_6fd1:
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    ld h, b
    sbc a
    ld h, b
    sbc a
    jr nz, jr_0b3_6fbd

    jr nc, jr_0b3_6faf

    jr nc, jr_0b3_6fb1

    db $10
    rst $28
    jr jr_0b3_6fcd

    jr jr_0b3_6fcf

    jr jr_0b3_6fd1

    inc c
    di
    inc c
    di
    inc c
    di
    ld b, $f9
    ld b, $f9
    add [hl]
    ld a, c
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add c
    ld a, [hl]
    ld b, c
    ld a, $41
    ld a, $40
    ccf
    ld b, b
    ccf
    jr nz, jr_0b3_7027

    jr nz, jr_0b3_7029

    jr nz, jr_0b3_702b

    jr nz, @+$21

    jr nz, jr_0b3_702f

    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b

jr_0b3_7027:
    inc bc
    inc b

jr_0b3_7029:
    inc bc
    ld [bc], a

jr_0b3_702b:
    ld bc, $8182
    add d

jr_0b3_702f:
    add c
    add d
    add c
    add c
    add b
    add c
    add b
    add c
    add b
    ld b, c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
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
    inc bc
    db $fc
    inc c
    ldh a, [$30]
    ret nz

    ret nz

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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0107
    add a
    ld bc, $02c6
    and $82
    or $82
    ld a, [hl]
    ld b, d
    ld a, $22
    ld e, $12
    ld c, $08
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
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
    add b
    nop
    add b
    nop

jr_0b3_70cb:
    add b
    nop

jr_0b3_70cd:
    ret nz

    nop
    ret nz

    nop

jr_0b3_70d1:
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
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
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b

jr_0b3_70ef:
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    jr nc, jr_0b3_70d1

    jr c, jr_0b3_70cb

    jr c, jr_0b3_70cd

    jr jr_0b3_70ef

    inc e
    db $e3
    inc e
    db $e3
    inc c
    di
    ld c, $f1
    ld c, $f1
    ld b, $f9
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc

jr_0b3_711f:
    db $fc
    ld bc, $01fe

jr_0b3_7123:
    cp $01

jr_0b3_7125:
    cp $00

jr_0b3_7127:
    rst $38
    nop

jr_0b3_7129:
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    jr @-$0f

    jr jr_0b3_7123

    jr jr_0b3_7125

    jr jr_0b3_7127

    jr jr_0b3_7129

    ld sp, $36df

jr_0b3_713d:
    sbc $38
    ret c

    ld [hl], b
    ret nc

    or b
    sub b
    jr nc, @+$12

    jr nc, @+$12

    jr nc, @+$12

    ld [hl], b
    db $10
    ld h, b
    jr nz, jr_0b3_71af

    jr nz, jr_0b3_71b1

    jr nz, jr_0b3_71b3

    jr nz, jr_0b3_71b5

    jr nz, @+$62

    jr nz, @+$62

    jr nz, @+$62

    jr nz, jr_0b3_713d

    jr nz, jr_0b3_711f

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [$80]
    ld a, b
    ld b, b
    inc a
    jr nz, jr_0b3_71ad

    db $10
    rra
    db $10
    rrca
    ld [$0407], sp
    inc bc
    ld [bc], a
    ld bc, $0000
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop

jr_0b3_71ad:
    rst $38
    nop

jr_0b3_71af:
    rst $38
    ret nz

jr_0b3_71b1:
    ccf
    ret nz

jr_0b3_71b3:
    ccf
    ret nz

jr_0b3_71b5:
    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc c
    ldh a, [$30]
    ret nz

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
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
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
    rrca
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, b
    add a
    inc a
    jp $e11e


    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld b, b
    or b
    nop
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    rrca
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
    ccf
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, h
    add e
    ld a, $c1
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $00
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, [hl]
    add c
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
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
    ld b, $06
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    ld b, $06
    ld b, $06
    inc c
    dec c
    ld c, $00
    nop
    nop
    rrca
    db $10
    ld de, $0000
    ld [de], a
    ld b, $13
    inc d
    dec d
    ld d, $17
    jr jr_0b3_731d

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b3_732d

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld b, $28
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b3_734e

jr_0b3_731d:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    daa
    ld b, $36
    scf
    jr c, jr_0b3_7360

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $34

jr_0b3_732d:
    ccf
    ld b, b
    ld b, b
    dec [hl]
    daa
    ld b, $41
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
    dec [hl]
    daa
    ld b, $4e
    ld c, a
    ld b, $50
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld c, e

jr_0b3_734e:
    ld d, a
    ld e, b
    ld e, c
    daa
    ld b, $06
    ld b, $06
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

jr_0b3_7360:
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
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
    ld b, $93
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
    adc [hl]
    sub c
    daa
    ld b, $06
    sbc a
    and b
    and c
    and d
    and e
    and h
    ld b, $a5
    and [hl]
    and a
    xor b
    xor c
    xor d
    daa
    ld b, $06
    xor e
    xor h
    xor l
    xor [hl]
    ld b, $06
    ld b, $06
    xor a
    or b
    or c
    or d
    or e
    or h
    ld b, $06
    ld b, $06
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

    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    push bc
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    add $c7
    ret z

    ret


    jp z, $bcbc

    cp h
    cp h
    cp h
    cp h
    set 1, h
    call $cfce
    ret nc

    pop de
    jp nc, $0606

    cp h
    cp h
    db $d3
    call nc, $d6d5
    rst $10
    ret nc

    pop de
    jp nc, $0606

    ld b, $06
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $00
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
    ld b, $06
    ld b, $05
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $02
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
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
    dec b
    dec b
    ld b, $05
    dec b
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
    ld [bc], a
    dec b
    ld bc, $0503
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    ld b, $01
    ld bc, $0101
    ld bc, $0001
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
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    dec b
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
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
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
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    ld bc, $03fc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
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
    nop
    rst $38
    nop
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
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    ld h, b
    nop
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
    inc c
    ei
    call z, Call_000_3cfb
    dec sp
    ld c, $0d
    rlca
    dec b
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $04
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ld e, $00
    ld a, $00
    inc a
    nop
    ld a, h
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    add a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    cp $01
    cp $03
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
    ld hl, sp+$06
    ld sp, hl
    ld c, $f1
    ld c, $f1
    ld c, $f1
    inc c
    di
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $c0
    ccf
    jr nc, jr_0b3_76cd

    inc c
    inc bc
    inc bc
    inc c
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

jr_0b3_76cd:
    rlca
    nop
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    rlca
    ret nz

    rlca
    ret nz

    add a
    ret nz

    add a
    ret nz

    add a
    ret nz

    add e
    ret nz

    add e
    ldh [$83], a
    ld h, b
    ld b, e
    ld h, b
    ld b, e
    ld h, b
    ld b, e
    ld h, b
    ld b, e
    ld h, b
    ld b, e
    ld h, b
    ld b, e
    ld [hl], b
    ld b, e
    jr nc, jr_0b3_771d

    jr nc, jr_0b3_771f

    jr nc, jr_0b3_7721

    jr nc, jr_0b3_7723

    ld sp, $3b22
    jr nz, jr_0b3_7720

    db $10
    rra
    db $10
    ld e, $11
    ld e, $11
    inc e
    inc bc
    inc a
    inc bc
    jr c, jr_0b3_7715

    ld a, b
    inc bc
    ld [hl], b

jr_0b3_7715:
    inc bc
    ldh a, [$03]
    ldh [$03], a
    ldh [$03], a
    ret nz

jr_0b3_771d:
    inc bc
    add b

jr_0b3_771f:
    inc bc

jr_0b3_7720:
    add b

jr_0b3_7721:
    inc bc
    nop

jr_0b3_7723:
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
    inc bc
    nop
    inc bc
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

jr_0b3_7743:
    rlca
    nop

jr_0b3_7745:
    rrca
    nop

jr_0b3_7747:
    rrca
    nop

jr_0b3_7749:
    rrca
    ld bc, $010e
    ld c, $01
    ld e, $01
    ld e, $03

jr_0b3_7753:
    inc e
    inc bc

jr_0b3_7755:
    inc e
    inc bc

jr_0b3_7757:
    inc a
    ld [bc], a

jr_0b3_7759:
    dec a
    ld b, $79
    ld b, $79
    ld b, $f9
    ld b, $f9
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    jr jr_0b3_7753

    jr jr_0b3_7755

    jr jr_0b3_7757

    jr jr_0b3_7759

    jr nc, jr_0b3_7743

    jr nc, jr_0b3_7745

    jr nc, jr_0b3_7747

    jr nc, jr_0b3_7749

    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
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
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld bc, $01fe
    cp $03
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
    ld b, $f8
    ld b, $f8
    ld b, $f8
    ld b, $f8
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b3_77b7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
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

jr_0b3_77cb:
    rst $38
    nop

jr_0b3_77cd:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fd
    rlca
    ld sp, hl
    inc b
    ei
    inc c
    di
    jr jr_0b3_77cb

    jr jr_0b3_77cd

    jr nc, jr_0b3_77b7

    ld a, h
    adc a
    ld a, a
    sbc a
    rst $38
    rra
    rst $18
    ccf
    adc a
    ld a, a
    add e
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
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    ld [$08f7], sp
    rst $30
    ld [$09f7], sp
    or $19
    and $11
    xor $11
    xor $13
    db $ec
    inc sp
    call z, $dc22
    ld [hl+], a
    call c, $dc22
    ld h, d
    sbc h
    ld h, d
    sbc h
    ld b, [hl]
    cp b
    ld b, [hl]
    cp b
    call nz, $8438
    ld a, b
    add h
    ld a, b
    add h
    ld a, b
    adc h
    ld [hl], b
    adc h
    ld [hl], b
    adc b
    ld [hl], b
    ld [$08f0], sp
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [rNR23]
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$30], a
    ret nz

    jr nc, @-$3e

    jr nc, @-$3e

    jr nz, @-$3e

    ld hl, $21c1
    pop bc
    ld h, c
    add c
    ld h, c
    add c
    ld h, c
    add c
    ld h, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    ld b, c
    add c
    pop bc
    ld bc, $01c1
    pop bc
    ld bc, $01c1
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
    add c
    ld bc, $0181
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, b
    cp a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $20
    ldh [$f3], a
    ldh a, [$3f]
    ldh a, [rNR34]
    ld sp, hl
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld sp, hl
    add $fe
    pop hl
    rst $38
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$7f]
    ldh [rNR34], a
    pop hl
    ld [$01f7], sp
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fefe
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
    nop
    rst $38
    rlca
    ld hl, sp-$01
    nop
    db $fc
    inc b
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add h
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
    add d
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop

jr_0b3_7961:
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
    ld a, a
    sbc a
    ld e, a
    cp a
    rra
    rst $38
    ld e, a
    cp a
    sbc a
    ld a, a
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    jr nz, jr_0b3_7961

    and b
    ld e, a
    ld b, b
    cp a
    and b
    ld e, a
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
    ld bc, $fffe
    nop
    cp $00
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    add h
    add h
    add h
    add h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld hl, $2121
    ld hl, $2121
    ld hl, $2021
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_0b3_79f5

    jr nz, @+$12

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

jr_0b3_79f5:
    ld [$0404], sp
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    adc b
    adc b
    adc b
    adc b
    adc b
    adc b
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld [hl+], a
    ld [hl+], a
    ld hl, $2121
    ld hl, $1111
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    add h
    add h
    add h
    add h
    add d
    add d
    add d
    add d
    add d
    add d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_0b3_7ac6

    jr nz, @+$22

    jr nz, @+$22

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0404], sp
    ld bc, $0101
    ld bc, $0101

jr_0b3_7ac6:
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
    nop
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    rst $38
    nop
    jp nc, $8912

    adc c
    adc c
    adc c
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld de, $1111
    ld de, $1010
    ld [$0808], sp
    ld [$8484], sp
    add h
    add h
    add h
    add h
    ld b, d
    ld b, d
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld hl, $2021
    jr nz, jr_0b3_7b3f

    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    inc b

jr_0b3_7b3f:
    inc b
    add d
    add d
    add d
    add d
    add c
    add c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    jr nz, jr_0b3_7b6e

    jr nz, jr_0b3_7b70

    jr nz, @+$22

    jr nz, @+$22

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    ld [$0408], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_0b3_7b6e:
    ld [bc], a
    ld [bc], a

jr_0b3_7b70:
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, @+$22

    jr nz, @+$22

    nop
    nop
    add b
    nop
    rst $38
    nop
    ld hl, sp+$18
    ld hl, sp+$18
    db $fc
    nop
    db $fc
    nop
    inc c
    ldh a, [$0c]
    ldh a, [$fc]
    nop
    inc c
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    db $fc
    dec c
    db $fc
    dec c
    db $fc
    dec c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$8c]
    ld a, h
    ld c, h
    cp h
    inc l
    call c, $ec1c
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc b
    db $fc
    inc bc
    db $fc
    adc e
    ld a, h
    call z, $6c3f
    rra
    inc l
    rra
    inc e
    rrca
    sbc h
    adc a
    adc h
    adc a
    ld c, h
    ld e, a
    ld b, h
    ld e, a
    inc h
    cpl
    inc d
    rra
    sub b
    sub a
    adc e
    adc h
    ld c, e
    ld c, b
    ld b, h
    ld b, h
    inc h
    inc h
    ld [hl+], a

Call_0b3_7c03:
    ld [hl+], a
    ld de, $1111
    ld de, $0808
    ld [$8408], sp
    add h
    add h
    add h
    add d
    add d
    ld b, d
    ld b, d
    ld b, c
    ld b, c
    ld hl, $2021
    jr nz, jr_0b3_7c3b

    jr nz, jr_0b3_7c2d

    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b
    inc b
    inc b
    add d
    add d
    add d

jr_0b3_7c2d:
    add d
    add c
    add c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, b
    ld b, b
    jr nz, jr_0b3_7c58

    jr nz, jr_0b3_7c5a

    db $10

jr_0b3_7c3b:
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    add b
    add b

jr_0b3_7c58:
    add b
    add b

jr_0b3_7c5a:
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_0b3_7c86

    jr nz, jr_0b3_7c88

    jr nz, jr_0b3_7c8a

    jr nz, jr_0b3_7c8c

    db $10
    db $10
    db $10
    db $10
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ldh a, [rIF]
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

jr_0b3_7c86:
    nop
    inc bc

jr_0b3_7c88:
    nop
    rra

jr_0b3_7c8a:
    nop
    rst $38

jr_0b3_7c8c:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    rst $38
    ld [hl], b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    add e
    rst $18
    cp h
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    cp a
    db $db
    cp a
    ei
    sbc a
    reti


    cp a
    push de
    cp e
    cp e
    pop de
    cp c
    pop de
    or c
    pop bc
    or c
    pop bc
    or c
    pop bc
    or c
    pop bc
    sub c
    pop bc
    sub c
    pop bc
    and e
    pop de
    xor e
    pop de
    xor e
    pop de
    xor a
    pop de
    and l
    pop de
    or e
    pop bc
    or e
    pop bc
    sub e
    pop hl
    sub c
    pop hl
    adc a
    pop af
    add e
    pop af
    adc l
    pop af
    xor e
    push de
    sbc l
    pop hl
    adc e
    push af
    ld b, a
    ld sp, hl
    pop hl
    rst $38
    ld [hl], c
    rst $38
    cp c
    ld a, a
    ld e, l
    cp a
    ccf
    rst $18
    cpl
    rst $18
    rla
    xor $0b
    or $05
    ld a, [$f906]
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld b, b
    ccf
    jr nz, jr_0b3_7d23

    jr nc, @+$11

    db $10
    rrca
    adc b
    add a
    adc b
    add a
    ld b, h
    ld b, e
    ld b, d
    ld b, c
    ld [hl+], a
    ld hl, $1011
    ld de, $0810
    ld [$8888], sp
    add h
    add h
    ld b, h
    ld b, h
    ld b, d
    ld b, d
    ld hl, $2121

jr_0b3_7d23:
    ld hl, $1010
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add c
    add c
    add c
    add c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    jr nz, jr_0b3_7d5e

    jr nz, jr_0b3_7d60

    jr nz, jr_0b3_7d62

    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0808], sp
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $8101
    add c
    add c
    add c
    add b
    add b
    ld b, b
    ld b, b

jr_0b3_7d5e:
    ld b, b
    ld b, b

jr_0b3_7d60:
    ld b, b
    ld b, b

jr_0b3_7d62:
    jr nz, jr_0b3_7d84

    jr nz, jr_0b3_7d86

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    nop
    nop
    ld a, a
    nop
    ld a, a
    ld a, a
    ld a, a

jr_0b3_7d84:
    nop
    ld a, a

jr_0b3_7d86:
    rlca
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
    ld [hl], b
    adc a
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$9f]
    ldh a, [$bf]
    ldh a, [$bf]
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    ld h, b
    sbc a
    jr nc, @-$2f

    db $10
    rst $28
    ld [$0cf7], sp
    di
    ld b, $f9
    inc bc
    db $fc
    ld bc, $00fe
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
    ld b, b
    ccf
    ld h, b
    rra
    jr nz, jr_0b3_7e2d

    jr nz, jr_0b3_7e2f

    db $10
    rrca
    ld [$8c07], sp
    add e
    add h
    add e
    ld b, d
    ld b, c
    inc hl
    jr nz, jr_0b3_7e3e

    jr nz, jr_0b3_7e30

    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    add d
    add d
    add d
    add d
    ld b, c

jr_0b3_7e2d:
    ld b, c
    ld b, c

jr_0b3_7e2f:
    ld b, c

jr_0b3_7e30:
    jr nz, jr_0b3_7e52

    jr nz, jr_0b3_7e54

    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp

jr_0b3_7e3e:
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    add b
    add b
    add b
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b

jr_0b3_7e52:
    ld b, b
    ld b, b

jr_0b3_7e54:
    jr nz, jr_0b3_7e76

    jr nz, jr_0b3_7e78

    db $10
    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0000], sp
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_0b3_7e76:
    ldh a, [rIF]

jr_0b3_7e78:
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    sbc a
    ld h, b
    add c
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    adc a
    ld a, a
    xor a
    ld a, a
    xor a
    ld a, a
    xor [hl]
    ld a, a
    and a
    ld a, a
    and a
    ld a, a
    xor [hl]
    ld a, a
    xor [hl]
    ld a, a
    xor a
    ld a, a
    xor e
    ld a, [hl]
    adc d
    ld a, [hl]
    adc [hl]
    db $76
    add [hl]
    ld h, b
    add b
    ldh [rP1], a

jr_0b3_7eb4:
    ldh [rP1], a
    call nz, $c400
    nop
    call nz, $cc00
    nop
    db $fc
    nop
    dec de
    db $fc
    dec de

jr_0b3_7ec3:
    db $fc
    dec de
    db $fc

jr_0b3_7ec6:
    dec sp
    db $fc
    jr c, jr_0b3_7ec6

    add hl, sp
    db $fc
    ld a, [hl-]
    db $fc
    dec sp

jr_0b3_7ecf:
    db $fc
    db $fc
    jr c, jr_0b3_7ecf

    jr c, jr_0b3_7eb4

    jr jr_0b3_7ee5

    nop
    ld b, $80
    inc bc
    ret nz

    ld bc, $00e0

jr_0b3_7edf:
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop

jr_0b3_7ee5:
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    sbc a
    jr nc, jr_0b3_7ec3

    db $10
    rst $28
    jr jr_0b3_7edf

    inc c
    di
    ld b, $f9
    inc bc
    db $fc
    inc bc
    db $fc
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
    add b
    ld a, a
    ret nz

    ccf
    ld b, b
    ccf
    ld h, b
    rra
    jr nz, jr_0b3_7f37

    jr nc, jr_0b3_7f29

    jr jr_0b3_7f23

    ld [$0c07], sp
    inc bc
    add [hl]
    add c
    add [hl]

jr_0b3_7f23:
    add c
    ld b, e
    ld b, b
    ld hl, $2120

jr_0b3_7f29:
    jr nz, jr_0b3_7f3b

    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_0b3_7f37:
    ld [bc], a
    add c
    add c
    add c

jr_0b3_7f3b:
    add c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp-$40
    rst $38
    ld a, b
    rst $38
    cp a
    rst $38
    pop af
    rst $38
    rst $30
    rst $18
    rst $38
    rst $38
    rst $30
    ld a, a
    rst $20
    ld a, a
    jp $c37f


    rst $38
    jp $e3ef


    ld l, a
    add e
    ld c, a
    add e
    ld c, [hl]
    add e
    ld e, d
    add a
    ld e, b
    add e
    ld b, b
    add e
    nop
    add e
    nop
    add e
    jr nc, @+$05

    jr nc, jr_0b3_7f75

    jr nc, jr_0b3_7f77

    db $10

jr_0b3_7f75:
    inc bc
    ret nz

jr_0b3_7f77:
    inc bc
    jr jr_0b3_7f7d

    call c, Call_0b3_7c03

jr_0b3_7f7d:
    inc bc
    ld a, h
    inc bc
    ld a, b
    rlca
    ld a, b
    rlca
    ld [hl], b
    rrca
    nop
    ccf
    jr nc, @+$11

    and b
    rlca
    add b
    rlca
    ld [$4787], sp
    nop
    ccf

jr_0b3_7f93:
    nop
    ld e, $01
    ld c, $01
    ld c, $01
    ld c, $81
    ld c, $c1
    ld c, $e1
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    sbc a
    jr nc, jr_0b3_7f77

    jr nc, @-$2f

    jr jr_0b3_7f93

    inc c
    di
    ld b, $f9
    rlca
    ld hl, sp+$03
    db $fc
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ld b, b
    ccf
    ld h, b
    rra
    jr nc, jr_0b3_7fe1

    jr nc, @+$11

    jr jr_0b3_7fdd

    inc c
    inc bc
    inc c
    inc bc
    ld b, $01
    add a

jr_0b3_7fdd:
    add b
    add e
    add b
    ld b, c

jr_0b3_7fe1:
    ld b, b
    ld hl, $2020
    jr nz, jr_0b3_7ff7

    db $10
    db $10
    db $10
    ld [$0808], sp
    ld [$0404], sp
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $38

jr_0b3_7ff7:
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    nop
    rst $38
