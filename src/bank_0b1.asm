SECTION "ROM Bank $0b1", ROMX[$4000], BANK[$b1]

    ld de, $11e0
    ldh [rNR42], a
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    add hl, sp
    nop
    ret nz

    nop
    nop
    nop
    add hl, bc
    nop
    ld a, h
    ld [$08bc], sp
    call $3d38
    ret z

    ret z

    jr c, jr_0b1_4055

    ret nz

    ret nz

    add b
    adc l
    add b
    call c, $f484
    sbc h
    db $f4
    call c, $dc74
    ld [hl], h
    call c, $dc75
    ld [hl], l
    call c, Call_0b1_5cf5
    rst $10
    ld a, h
    rst $10
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld h, d
    cp a
    ld [hl], $3f
    dec a
    db $fd
    ld a, c
    ei
    ld hl, sp-$01
    ret z

    rst $18
    adc e
    ld a, h
    rrca
    ld a, a
    nop
    ld a, a
    nop
    ld a, a

jr_0b1_4055:
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

jr_0b1_405f:
    nop
    ld b, b
    ld a, a
    cpl
    ld a, a
    inc d
    ld a, a
    jr nz, jr_0b1_405f

    ld [hl-], a
    pop af
    inc sp
    ldh a, [$32]
    ldh a, [$32]
    ldh a, [$3a]
    ldh a, [$3a]
    di
    ld a, [hl-]
    ldh a, [$3a]
    ldh a, [$3b]
    ld a, [c]
    inc sp
    ei
    inc sp

jr_0b1_407d:
    ld a, [$fa30]

jr_0b1_4080:
    jr nc, jr_0b1_407d

jr_0b1_4082:
    ld [hl-], a
    ld sp, hl
    jr c, @-$06

    jr c, jr_0b1_4080

    jr c, jr_0b1_4082

    jr c, @-$03

    cp a
    ld hl, sp-$41
    ld hl, sp-$41
    ld sp, hl
    cp $f8
    ld a, [$fefc]
    ld hl, sp-$42
    ld hl, sp-$05
    db $fc
    cp a
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld a, e
    db $fc
    ld a, e
    ld a, h
    add hl, sp
    ld a, $fb
    db $fc
    db $fd
    cp $fd
    cp $ff
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $7d
    cp $7d
    cp $7d
    cp $7d
    cp $7d
    cp $7d
    cp $7d
    cp $7d
    cp $7c
    rst $38
    db $fd
    ld a, [hl]
    db $fc
    ld a, a
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    cp $ff
    cp $7f
    cp $7f
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    ld a, a
    rst $38
    xor $ff
    ld h, a
    rst $38
    nop
    ld a, a
    ei
    ld [$0aa4], sp
    xor [hl]
    and d
    xor $a2
    xor $bf
    ld a, [$4aa4]
    and h
    sbc $25
    db $fc
    scf
    and l
    cp $15
    and $85
    ld a, a
    add b
    db $fc
    ret nz

    nop
    nop
    nop
    nop
    rlca
    rlca
    ld a, b
    ld a, a
    add b
    rst $38
    inc bc
    db $fc
    inc a
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, [hl]
    add a
    ld a, b
    sbc a
    ld h, b
    rst $38
    nop
    db $fc
    nop
    pop hl
    nop
    adc a
    nop
    adc [hl]
    ld bc, $06f9
    rst $30
    ld [$33cf], sp
    inc a
    call nz, Call_000_19f8
    ldh [$67], a
    add b
    adc a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $ff
    nop
    rst $38
    nop
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
    nop
    rst $38
    cp $ff
    rst $08
    rst $38
    ld [hl], a
    rst $28
    ld d, a
    or a
    cp e
    sub a
    di
    ccf
    cp e
    ld a, a
    cp e
    ld a, a
    cp e
    ld a, a
    cp e
    ld a, a
    db $db
    ld a, a
    ld e, e
    ld a, a
    ld e, e
    ld a, a
    db $db
    ld a, a
    reti


    ld a, [hl]
    jr nc, @-$3e

    nop
    nop
    nop
    rlca
    rlca
    ld a, b
    ld a, a
    add b
    rst $38
    inc bc
    db $fc
    inc a
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $20
    nop
    rst $00
    nop
    inc e
    inc bc
    ld [hl], e
    inc c
    rst $28
    ld de, $669e
    ld a, b
    sbc c
    ldh [$27], a
    ret nz

    rst $08
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ld e, $ff
    inc a
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fd
    rlca
    ei
    ld c, $f7
    dec a
    adc $7f
    sbc b
    ld a, a
    ldh [rIE], a
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
    jp nz, $bd3d

    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, a
    cp a
    cpl
    rst $18
    xor c
    rst $00
    rst $00
    pop bc
    rst $00
    jp $c3c7


    jp $c7c3


    jp $c3c7


    jp $c3c3


    jp $c3c3


    jp $c4e7


    ldh [$c8], a
    ldh [$c8], a
    db $e3
    jp $01e4


    rst $20
    sub d
    ld h, h
    ret nz

    ld h, b
    ret nc

    ldh [$c7], a
    ldh [$d7], a
    ldh [$cf], a
    ld h, b
    ld e, a
    jr nz, jr_0b1_4302

    jr nz, jr_0b1_4314

    or b
    ld l, a
    or b
    ld l, a
    or b
    ld l, h
    or e
    ld l, b
    or a
    ld h, b
    cp h
    ld h, b
    cp e
    ld h, d
    cp a
    ld h, b
    cp a
    ld h, b
    cp [hl]
    ld h, c
    cp b
    ld h, a
    or b
    and a
    ld a, b
    and [hl]
    ld a, c
    and b
    ld a, a
    and e

jr_0b1_42c3:
    ld a, a
    and h
    ld a, h
    jr nc, jr_0b1_42c3

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b

jr_0b1_42cd:
    rst $38
    db $10
    ccf
    ld sp, $177f
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    jr z, @+$01

    ldh [rIE], a
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc de
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_0b1_42cd

    ld [hl], b
    rst $38
    ret nz

    ld a, a
    ldh a, [$9f]
    ld b, b
    cp a

jr_0b1_42f6:
    cp b
    ld d, a
    ld hl, $c3de
    inc a
    rst $10
    jr c, jr_0b1_42f6

    jr @+$01

    nop

jr_0b1_4302:
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    nop

jr_0b1_4314:
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    ldh [$cf], a
    ldh [$e0], a
    ldh [$e8], a
    ldh [$ea], a
    ldh [$ea], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$af], a
    ret nz

    pop de
    db $e3
    jp hl


    pop af
    ld hl, sp-$0f
    ld hl, sp-$0f
    ld hl, sp-$0d
    ld hl, sp-$09
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ei
    rst $30
    ld hl, sp-$10
    ld hl, sp-$10
    rst $38
    ldh a, [$fe]
    or b
    jr c, @+$32

    ld [hl], b
    jr c, jr_0b1_437f

    ld hl, sp-$4f
    ld a, b
    or a
    ld sp, hl
    jr nc, jr_0b1_4395

    ld [hl-], a
    ld a, $72
    rra
    db $eb
    rra
    db $eb
    rra
    ld [$e81f], a
    ld e, $e9
    jr @-$03

    ld c, $eb
    ld e, $cb
    ld a, $0b
    cp $1b
    cp [hl]
    dec sp
    ld a, [hl]
    sbc e
    cp $0b
    xor $1b
    adc [hl]
    ld a, e
    ld c, $ea
    rra
    ld [$98fe], sp
    ld a, h
    add hl, sp

jr_0b1_437f:
    rst $38
    set 1, a
    dec bc
    inc a
    ld a, [bc]
    db $fd
    add hl, bc
    rst $38
    ld a, [bc]
    rst $38
    jr @+$01

    ld a, c
    rst $38
    cp e
    cp $c8
    rst $38
    add sp, -$01
    ret nz

jr_0b1_4395:
    rst $38
    ret nz

    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

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
    ldh [$1f], a
    ld hl, sp+$07
    ld sp, hl
    ld b, $fb
    inc b
    ei
    inc b
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
    add b
    ld a, a
    ldh a, [$1f]
    ei
    inc e
    db $fd
    ld c, $fe
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlc e
    rst $38
    inc bc
    ld bc, $0101
    ld bc, $0001
    rst $38
    nop
    ret


    ldh [$c9], a
    ret nz

    add c
    ret z

    add c
    sbc $98
    rst $38
    add c
    rst $38
    rst $00
    rst $38
    ei
    rst $38
    add b
    ldh [rP1], a
    nop
    rra
    nop
    pop hl
    nop
    inc e
    nop
    nop
    nop
    ld c, $00
    ld h, a
    ld e, $3f
    rst $38
    ld a, [c]
    db $fc
    ret z

    ldh a, [$a1]
    nop
    ld e, [hl]
    nop
    ld a, $80
    and d
    ret nz

    ld a, [bc]
    and $6a
    ld h, $f8
    and [hl]
    ret nc

    and [hl]
    db $d3
    and [hl]
    jp $debe


    cp a
    sbc $bf
    ret z

    cp a
    ret c

    cp a
    call c, $d7ad
    and a
    rlca
    adc $0f
    sbc b
    ld a, $71
    ei
    rst $28
    or $8f
    reti


    ccf
    and d
    ld a, a
    ld c, l
    cp $9f
    ld hl, sp+$2e
    pop af
    ld e, h
    db $e3
    ld hl, sp-$79
    ldh a, [rIF]
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    inc hl
    call c, $dc23
    daa
    ret c

    ld hl, $20de
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    inc de
    db $ec
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a

jr_0b1_44a7:
    add b
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
    db $fc
    inc bc
    rst $38
    nop
    cp a
    ld bc, $0021
    add e
    nop
    and e
    nop
    and a
    nop
    cp a
    nop
    sub l
    nop
    add b
    nop
    add b
    nop
    adc b
    ccf
    sbc b
    inc e
    adc b
    dec de
    adc b
    rra
    adc c
    ccf
    sbc h
    ccf
    sbc l
    ccf
    cp a
    jr c, jr_0b1_44a7

    nop
    and a
    nop
    cp b
    nop
    and b
    nop
    and e
    nop
    cp l
    inc bc
    xor a
    rra
    cp a
    rra
    xor e
    inc e
    cp a
    nop
    ccf
    nop
    dec sp
    nop
    add d
    nop
    add a
    nop
    add [hl]
    inc b
    sbc a
    inc d
    cp a
    dec d
    cp a
    dec d
    cp a

Call_0b1_4513:
    dec d
    cp a
    dec d
    rst $38
    dec d
    cp h
    inc d
    ldh a, [rNR13]
    add d
    ld c, $88
    add hl, sp
    or b
    scf
    add b
    rrca
    add b
    cp a
    ret nz

    cp a
    rst $00
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    ccf
    ret nz

    ld h, b
    sbc a
    ld hl, sp-$39
    ld hl, sp+$3f
    add a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    ld a, e
    add h
    call c, $3823
    rst $00
    ld a, [hl-]
    push bc
    ld a, h
    add e
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    pop hl
    ld e, $e3
    inc e
    rst $30
    ld [$01fe], sp
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07

jr_0b1_456c:
    ldh a, [rIF]
    ldh [$1f], a
    daa
    rst $38
    inc de
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    inc b
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

jr_0b1_4587:
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    cp a

jr_0b1_4590:
    ldh [$df], a
    ldh [$df], a

jr_0b1_4594:
    ldh [$df], a
    ldh [$df], a

jr_0b1_4598:
    ldh [$5f], a
    ld h, b
    ld e, a
    ld a, a
    rra
    ccf
    rst $18
    dec sp
    ld d, c
    dec [hl]
    ld d, c
    ccf
    pop de
    dec d
    pop af

jr_0b1_45a8:
    ld d, l
    pop af
    rst $18
    pop af
    rst $18
    ccf
    ld e, a
    jr nc, jr_0b1_4590

    jr nc, jr_0b1_4612

    ccf
    ld d, b
    jr nc, jr_0b1_4587

    jr nc, jr_0b1_4598

    jr nc, jr_0b1_4594

    or [hl]
    ld d, b
    cp a
    ret nc

    ccf
    ret nc

    ccf
    ld d, $3f
    reti


    add hl, sp
    rra
    jr nc, jr_0b1_45a8

    jr nc, jr_0b1_4624

    jr nc, jr_0b1_456c

    di
    sbc a
    rst $38
    sbc a

jr_0b1_45d1:
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld e, $3f
    ld e, h
    rst $38
    sub b
    cp a
    nop
    ld a, a
    db $10
    rst $38
    nop
    rst $38
    inc de
    rst $38
    ld e, $ff
    ld [hl], c
    rst $38
    sbc [hl]
    rst $38
    ldh [rIE], a
    nop
    rst $38
    db $10
    rst $38
    jr nz, jr_0b1_45d1

    ldh a, [$1f]
    ret nz

    ccf
    sub b

jr_0b1_45f7:
    rst $38
    ld a, a
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ldh [$1f], a
    db $10
    rst $38
    nop
    rst $38
    ld [hl], b
    sbc a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    db $10
    rst $38
    nop
    rst $38

jr_0b1_4612:
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_0b1_45f7

    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh [$1f], a
    pop bc
    ld a, $81
    ld a, [hl]
    inc bc
    db $fc

jr_0b1_4624:
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
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
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a

jr_0b1_463f:
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    rla
    rst $38
    inc de
    rst $38
    add hl, bc
    rst $38
    dec b
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
    ldh a, [rIE]
    jr nc, jr_0b1_463f

    ld e, b
    sbc a
    ld e, b
    adc a
    ld e, b
    adc a
    ret c

    adc a
    ld e, b
    adc a
    ld hl, sp-$71
    adc a
    rst $38
    xor a
    rst $18
    ld sp, hl
    adc a
    adc c
    adc a
    xor c
    rst $18
    adc e
    db $fd
    rst $18
    xor c
    adc l
    reti


    adc l
    ld sp, hl
    adc l
    ld sp, hl
    adc a
    ld sp, hl
    adc e
    db $fd
    adc c
    rst $18
    sbc c
    rst $18
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    and $ff
    jp Jump_000_00ff


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
    ld a, b
    rst $38
    add b
    rst $38
    rra
    rst $38
    pop hl
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    rst $38
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
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ld b, b
    rst $38
    or b
    rst $38
    ld e, [hl]
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    ld d, $fc
    inc c
    db $fc
    inc b
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
    rrca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    dec l
    rst $38
    dec l
    rst $38
    dec a
    rst $28
    ld l, l
    xor a
    xor l
    cpl
    xor a
    cpl
    cp a
    cpl
    ld l, a
    cp a
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    rst $28
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, $ff
    ld bc, $c0ff
    rst $38
    ccf
    rst $38
    inc c
    rst $38
    ld [$19ff], sp
    cp $e1
    cp $01
    cp $00
    rst $38
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
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
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    rst $38
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
    rst $38
    ccf
    ret nz

    rst $38
    nop
    ld a, a
    add b
    dec b
    ld a, [$ff00]
    ccf
    rst $38
    pop bc
    cp $08
    rst $30
    ld a, a
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $30
    ld hl, sp+$00
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    ld bc, $01fd
    cp $00
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
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ccf
    cp $3f
    sbc $1f
    ldh [rIF], a
    ldh a, [rTAC]
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
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, b
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
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
    add a
    ld hl, sp-$01
    ld a, a
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
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38

jr_0b1_4867:
    rst $38

jr_0b1_4868:
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, jr_0b1_4868

    jr nz, jr_0b1_4867

    inc hl
    and b
    ld e, a
    add e
    ld a, h
    add a
    ld a, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
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
    ld bc, $fcff
    inc bc
    ld hl, sp+$07
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    ret nz

    rst $38
    rlca
    ld hl, sp+$24
    db $db
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    ld hl, sp-$40
    nop
    nop
    nop
    inc bc
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rst $28
    ldh [$ef], a
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp h
    jp $c0bf


    cp a
    ret nz

    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    ccf
    sbc $bf
    ld b, b
    cp a
    ld b, b
    cpl
    ret nc

    xor a
    ret nc

    rst $28
    sub b
    cp a
    ret nz

    rrca
    ldh a, [$87]
    ld hl, sp+$03
    db $fc
    ld bc, $80fe
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    rst $00
    rst $38
    ld a, b
    rst $38
    ret nz

    rst $38
    rlca
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$0cf3], sp
    daa
    ret c

    rst $38
    db $fc
    db $e3
    rra
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rIF]
    add e
    ld a, h
    rrca
    ldh a, [$7f]
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
    cp $ff
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld c, $f1
    rst $38
    rst $38
    rst $38
    cp $fc
    inc bc
    ld b, a
    cp a
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rrca
    inc bc
    rlca
    inc bc
    inc bc
    adc e
    ld a, e
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    dec c
    cp $0f
    db $fc
    adc a
    ld a, h
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    db $fc
    ccf
    db $ec
    cp a
    ld l, h
    cp a
    ld l, h
    cp a
    ld l, h
    cp a
    ld l, h
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    inc l
    rst $28
    inc a
    rst $38
    inc l
    rst $38
    inc l
    rst $28
    inc a
    rst $38
    inc l

Jump_0b1_4a00:
    rst $28
    inc a
    rst $28
    inc a
    ld l, a
    cp h
    cpl
    db $fc
    cpl
    rst $38
    cpl
    rst $38
    jr z, @+$01

    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $7eff
    rst $38
    add c
    cp $00
    rst $38
    nop
    rst $38
    rst $38
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
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
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
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    ld [hl], b
    adc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $00
    ld hl, sp-$62
    pop hl
    dec a
    jp $ef11


    ccf
    rst $18
    or e
    ld a, a
    ld bc, $4dff
    or e
    reti


    daa
    ccf
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $10
    jp hl


    sbc a
    pop hl
    sbc a
    pop hl
    adc e
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc $f0
    ret nz

    ldh [$c0], a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $38
    nop

jr_0b1_4aae:
    rst $38
    nop
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
    cp $fe
    nop
    cp $00
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    cp $fe
    ld a, [hl]
    add b
    cp $01
    rst $38
    ld bc, $f10e
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    add b
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld [hl], c
    add c
    ld a, a
    adc [hl]
    di
    db $fc
    ld c, $f0
    jr c, jr_0b1_4aae

    ld a, h
    add b
    ld a, $c0
    inc bc
    db $fc
    add b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    sbc $20
    inc e
    ldh [$78], a
    add b
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    ei
    inc b
    di
    inc c
    pop hl
    ld e, $c0
    ccf
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $30
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    push af
    rst $38
    rst $30
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
    ld hl, sp-$08
    jr jr_0b1_4b7c

    rra
    jr @+$41

    add hl, sp
    rst $38
    dec sp
    rst $38
    dec de
    rst $38
    rra
    rst $38
    rra
    ld a, a
    ld a, a
    ld a, a

jr_0b1_4b73:
    ld a, a
    ld a, e
    ld a, h
    ei
    db $fc
    ei
    db $f4
    ei
    db $f4

jr_0b1_4b7c:
    dec sp
    call nz, $c43b
    dec sp
    call nz, $847b
    dec sp
    call nz, $847b
    dec sp
    call nz, $c43b
    ld a, e
    add h
    dec sp
    call nz, $c43b
    dec sp
    call nz, $847b
    ld a, e
    add h
    dec sp
    call nz, $c43b
    dec sp
    call nz, $c738
    dec sp
    call nz, $847b
    dec sp
    call nz, $847b
    ld a, [hl-]
    push bc
    jr c, jr_0b1_4b73

    dec sp
    call nz, $847b
    ld a, e
    add h
    dec sp
    call nz, $847b
    dec sp
    call nz, $e5da
    ei
    db $e4
    db $eb
    db $f4
    ld l, e
    ld [hl], h
    ld a, e
    ld a, h
    ld a, e
    ld a, h
    db $fc
    rst $38
    cp l
    cp [hl]
    cp l
    cp [hl]
    ld a, h
    ld a, a
    ld e, l
    ld e, [hl]
    ld e, l
    ld e, [hl]
    call z, $ee5f
    xor a
    ld l, a
    xor a
    ld h, a
    xor a
    scf
    rst $18
    inc sp
    rst $10
    dec sp
    rst $18

jr_0b1_4bde:
    dec hl
    rst $18

jr_0b1_4be0:
    dec c
    ld a, a
    dec c
    ld a, a
    db $fd
    rst $38
    cp $1f
    ld c, $0f
    rrca
    rrca
    dec c
    rrca
    dec c
    rrca
    dec c
    rrca
    db $fd
    rrca
    dec c
    rst $38
    db $fd
    rst $38
    dec c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    db $fd
    rlca
    rst $38
    ld bc, $0181
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    add b
    jr nc, jr_0b1_4bde

    jr c, jr_0b1_4be0

    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fe
    db $fd
    db $fd
    ld a, [$fffa]
    rst $38

jr_0b1_4c5e:
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ld a, a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    nop
    jp hl


    ld de, $3fc0
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ei
    jr nc, jr_0b1_4c5e

    nop
    ret nz

    nop
    ret nz

    dec a
    ret nz

    add hl, hl
    ret nz

    cp d
    ldh [$31], a
    ret nz

    ld a, [hl+]
    ret nz

    ld [de], a
    ret nz

    ld a, [hl+]
    ret nz

    ld a, [hl+]
    ret nz

    nop
    ret nz

    and h
    ret nz

    sub h
    ret nz

    adc c
    ret nz

    sub d
    ret nz

    db $10
    ldh [rDIV], a
    ldh a, [$3d]
    jp nz, $ff00

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
    cp a
    cp a
    ccf
    cp a
    rra
    rst $18
    ld e, a
    rst $18
    ld e, a
    rst $18
    ld l, a
    rst $28
    ld l, a
    rst $28
    rst $08
    ld l, a
    rst $10
    ld [hl], a
    rst $10
    ld [hl], a
    ld d, e
    cp e
    ld e, e
    cp e
    ld a, e
    db $db
    ld a, l
    db $dd
    ld [hl], h
    sbc $57
    rst $28
    ld d, a
    ld l, a
    ld d, a
    ld l, a
    ld e, a
    ld [hl], a
    ld e, a
    ld [hl], a
    rla
    dec sp
    rla
    dec sp
    rla
    dec de
    rla
    dec e
    rla
    dec e
    ld d, $1f
    rla
    rra
    rla
    rra
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rlca
    rst $18
    ccf
    ld [hl], a
    rst $18
    daa

jr_0b1_4d25:
    rst $18
    rst $10
    xor a
    rst $10
    xor a
    and a
    rst $18
    rst $10
    rst $28
    rst $28
    rst $10
    rst $30
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
    db $fd
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b1_4d4b:
    rst $38
    rst $00
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, jr_0b1_4d25

    inc a
    jp $c13e


    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    inc a

jr_0b1_4d73:
    jp $c13e


    ld a, $c1
    inc a
    jp $c33c


    ld a, $c1
    inc a
    jp $c738


    jr c, jr_0b1_4d4b

    inc e
    db $e3
    jr @-$17

    jr @-$17

    jr jr_0b1_4d73

    ret c

    rst $20
    call c, $9ee3
    pop hl
    sbc $e1
    sbc $e1
    sbc $e1
    sbc [hl]
    pop hl
    sbc $e1
    sbc $e1
    cp $c1
    sbc $e1
    sbc $e1
    rst $18
    ldh [$fa], a
    push bc
    db $db
    db $e4
    ei
    call nz, $c9f6
    ei
    call nz, $c4fb
    or a
    ret z

    ei
    call nz, $c4fb
    ei
    call nz, $c0ff
    rst $38
    ret nz

    ldh a, [$c0]
    db $fc
    ret nz

    or a
    ret nz

    and h
    ret nz

    or b
    ret nz

    cp b
    ret nz

    cp b
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    di
    ret nz

    ldh a, [$c0]
    ld [$f6c0], a
    ret z

    add $f8
    ldh [rIE], a
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ldh [rIE], a
    rst $38
    rst $38
    rra
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
    sbc [hl]
    rst $28
    cp [hl]
    rst $08
    cp a
    rst $10
    sbc a
    rst $28
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fdff]
    rst $38
    ld a, [$ffff]

jr_0b1_4e17:
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
    add b
    rst $38
    add d
    rst $38
    push de
    rst $38
    xor a
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
    jr nz, jr_0b1_4e17

    and b
    ld e, a
    ld h, b
    sbc a
    and d
    ld e, l
    ld l, b
    sub a
    ld [$f515], a
    ld a, [bc]
    ld a, [$ff05]
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, b
    nop
    nop
    nop
    or a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0040
    or h
    nop
    nop
    nop
    nop
    add b
    nop
    rrca
    nop
    rra
    nop
    nop
    rst $38
    rst $30
    rst $28
    ei
    rst $38
    db $fd
    ei
    pop af
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
    rst $38
    rst $38
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
    rra
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
    or d
    ld c, l
    inc l
    db $d3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    db $eb
    ld d, b
    ld d, b
    and b
    rst $38
    ld d, b

jr_0b1_4ec3:
    rst $38
    xor d
    rst $38
    rst $38
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
    inc bc
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    add b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_0b1_4ec3

    ld d, h
    xor e
    and d
    ld e, l
    ld e, h
    and e
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    ld hl, sp+$00
    inc bc
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld b, b
    nop
    and l
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
    nop
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rra
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
    rra
    rst $38
    ldh [rIE], a
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
    ld bc, $0302
    nop
    inc b
    dec b
    ld b, $06
    rlca
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    dec b
    ld de, $1312
    ld b, $06
    ld b, $06
    ld b, $06
    inc d
    dec d
    ld d, $17
    jr jr_0b1_4f76

    ld a, [de]
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b1_4f88

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b1_4f98

    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_0b1_4f76:
    jr nc, jr_0b1_4fa9

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b1_4f80

jr_0b1_4f80:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec a
    dec a
    dec a

jr_0b1_4f88:
    dec a
    dec a
    ld a, $3f
    ld [hl], $40
    ld b, c
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_0b1_4f98:
    dec a
    dec a
    ld c, d
    ld c, e
    ld c, h
    ld b, b
    ld c, l
    nop
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_0b1_4fa9:
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
    ld h, b
    ld [hl], $36
    ld [hl], $36
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld b, $06
    ld h, a
    ld l, b
    ld [hl], $36
    ld [hl], $36
    ld [hl], $36
    ld [hl], $69
    ld l, d
    ld l, e
    ld l, h
    ld b, $06
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
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
    ld b, $7f
    add b
    add c
    add d
    add e
    add h
    nop
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    add e
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    nop
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
    nop
    and c
    and d
    nop
    and e
    and h
    and l
    and [hl]
    nop
    nop
    nop
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
    nop
    nop
    nop
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

    nop
    nop
    nop
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call RST_00
    nop
    nop
    adc $cf
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
    and $36
    ld [hl], $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ld [hl], $36
    ld [hl], $f0
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2101
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
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    rlca
    ld b, $06
    ld b, $06
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
    ld bc, $4101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0301
    rlca
    rlca
    rlca
    ld b, $02
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0201
    ld b, $06
    ld b, $06
    ld b, $07
    nop
    nop
    nop
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
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jp $30ff


    rst $38
    inc c
    di
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    ldh [$1f], a
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

jr_0b1_5264:
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

jr_0b1_526e:
    ret nz

    ccf
    add c
    ld a, $07
    jr c, jr_0b1_5284

    jr nc, jr_0b1_5296

    jr nz, jr_0b1_52b8

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

jr_0b1_5284:
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

jr_0b1_5296:
    ccf
    nop
    cp a
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_0b1_526e

    jr nc, jr_0b1_5264

    inc a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf

jr_0b1_52b8:
    pop hl
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$3f]
    rst $38
    rrca
    rst $38
    jp $f03f


    rrca
    db $fc
    jp $f03f


    rrca
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
    rra
    ldh [$7f], a
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
    ld hl, sp+$00
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
    add b
    nop
    ret nz

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
    ld a, a
    add b
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
    ld bc, $00ff
    rst $38
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
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
    rrca
    rst $38
    jp $f03f


    rrca
    db $fc
    jp $f23d


    dec bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0e
    ldh a, [rNR32]
    ldh [rNR34], a
    ldh [$38], a
    ret nz

    ld a, [hl-]
    ret nz

    ld [hl], b
    add b
    ld l, b
    add b
    ld h, b
    add b
    ld a, d
    add b
    ld l, b
    add b
    ld [hl], h
    add b
    ld l, [hl]
    add b
    ld d, h
    add b
    ld h, h
    add b
    ld e, h
    add b
    ld h, [hl]
    add b
    ld c, b
    add b
    ld d, h
    add b
    ld l, h
    add b
    ld c, h
    add b
    ld h, [hl]
    add b
    ld a, b
    add b
    ld h, b
    add b
    ld [hl], a
    add b
    ld a, h
    add b
    ld [hl], a
    add b
    ld l, [hl]
    add b
    ld l, [hl]
    add b
    ld e, a
    add b
    ld a, [hl]
    add b
    ld d, a
    add b
    ld c, l
    add b
    ld a, l
    add b
    ld a, l
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    sbc h
    inc bc
    adc h
    inc bc
    adc h
    inc bc
    adc h
    inc bc
    add h
    inc bc
    add h

jr_0b1_53ed:
    inc bc
    add h
    inc bc
    add h
    inc bc
    add b
    inc bc
    add b
    inc bc
    add b
    inc bc
    add b
    inc bc
    add b
    inc bc
    add b
    inc bc
    add c
    inc bc
    add b
    inc bc
    add b
    inc bc
    add b
    inc bc
    add l
    inc bc
    call c, $fc03
    inc bc
    db $fc
    inc bc
    ld sp, hl
    rlca
    xor b
    ld d, a
    and c
    ld e, a
    add l
    ld a, a
    rra
    rst $38
    rra
    rst $38
    ccf
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    ccf
    rst $38
    ccf
    call c, $dc3f
    dec a
    ret nz

    inc a
    add b
    jr nz, jr_0b1_53ed

    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    rlca
    add d
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld b, d
    rlca
    ld b, d
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld b, [hl]
    rlca
    ld b, $07
    ld b, $07
    ld b, [hl]
    rlca
    ld b, $07
    ld b, $07
    ld b, [hl]
    rlca
    ld b, [hl]
    rlca
    ld b, [hl]
    rlca
    ld b, [hl]
    rlca
    ld h, a
    ld b, $67
    ld b, $67
    ld b, $e7
    ld b, $e7
    ld b, $e7
    ld b, $e7
    ld b, $67
    add [hl]
    ld h, a
    add [hl]
    ld h, a
    add [hl]
    rst $20
    ld b, $e7
    ld b, $e7
    ld b, $67
    add [hl]
    and a
    ld b, [hl]
    daa
    add $a7
    ld b, [hl]
    daa
    add $27
    add $27
    add $27
    add $27
    add $27
    add $27
    add $07
    and $07
    and $07
    and $06
    and $07
    and $06
    and $87
    and $86
    and $c6
    and $c7
    and $c6
    and $c6
    and $c6
    and $c7
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $e6
    and $f4
    rst $28
    and $fd
    jp hl


    cp $fb
    cp $fb
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$1f], a
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
    ldh a, [rIE]
    adc a
    ldh a, [$3f]
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ld a, [hl+]
    push de
    db $10
    xor a
    rlca
    rra
    rrca
    rra
    rra
    rra
    rrca
    rra
    rlca
    rrca
    ld bc, $0007
    ld bc, $0000
    ld b, b
    add b
    db $10
    ldh [$f4], a
    ld hl, sp-$04
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $003f
    rlca
    nop
    rra
    nop
    rst $38
    ld bc, $001f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    ld d, l
    ld a, $d5
    add hl, bc
    or $f0
    xor a
    rst $38
    xor a
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
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
    rst $28
    rra
    ld h, l
    sbc e
    ld d, [hl]
    pop hl
    rst $30
    jp $c3f7


    rst $30
    jp $c3f7


    di
    jp $e3f8


    db $e4
    ld sp, hl
    ld a, [$76f4]
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    ld a, $9f
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
    rra
    rrca
    rrca
    ccf
    ccf
    cp $ff
    ld hl, sp+$07
    ld a, c
    rlca
    ld a, c
    rlca
    ld a, c
    rlca
    ld a, c
    rlca
    add hl, sp
    rlca
    add hl, sp
    rlca
    jr c, jr_0b1_5625

    add hl, sp
    rlca
    inc a
    inc bc
    inc a
    inc bc
    inc a

jr_0b1_5625:
    inc bc
    inc a
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    ld e, $01
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
    inc bc
    nop
    inc bc
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

jr_0b1_5650:
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    jr z, jr_0b1_5650

    xor h
    db $ed
    or [hl]
    sbc l
    or $d6
    ei
    adc a
    ei
    ret


    rst $38
    db $f4
    rst $18
    rst $30
    rst $18
    rst $18
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
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
    ld hl, sp-$01
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
    rst $38
    nop
    rst $38
    nop
    db $fd
    cp $fe
    rst $38
    cp $ff
    rst $38
    cp $ff
    cp $ff
    cp $fd
    cp $fd
    cp $f8
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    cp $80
    rst $38
    nop
    rst $38
    ld d, e
    ccf
    ld d, c
    ccf
    dec a
    ld a, a
    ld h, $7f
    inc hl
    ld a, a
    ld h, e
    ld a, a
    ld sp, $8d1f
    rst $00
    jp hl


    di
    ld hl, sp-$03
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $e3
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rla
    rst $20
    rlca
    rst $30
    rla
    rst $20
    and a
    ld d, a
    ld h, a
    sub a
    or a
    ld b, a
    rst $10
    daa
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    ld [hl], a
    rlca
    ld [hl], a
    rlca
    ld [hl], a
    rlca
    ld [hl], a
    rlca
    scf
    rlca
    scf
    rlca
    daa
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
    ld b, $03
    ld bc, $0700
    ld bc, $1fe3
    rst $20
    rra
    ld c, a
    cp a
    rra
    rst $38
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
    ldh a, [rIE]
    rrca
    ldh a, [rNR34]
    ldh [rNR32], a
    ldh [$0c], a
    ldh a, [$0c]
    ldh a, [$86]
    ld hl, sp-$01
    rst $38
    pop bc
    cp $0e
    ldh a, [rTAC]
    ld hl, sp-$3d
    db $fc
    pop af
    cp $ff
    rst $38
    db $fc
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$7f], a
    add b
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    sbc a
    ld e, a
    adc a
    ld l, a
    rst $00
    daa
    jp $c123


    ld sp, $18e0
    add sp, $1c
    db $ec
    ld e, [hl]
    xor $5f
    ld l, a
    rst $18
    xor a
    rst $18
    ld e, a
    cp a
    cp a
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
    ld a, a
    rst $38
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
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    sbc $e1
    pop de
    ldh [$d0], a
    ldh [$d0], a
    ldh [$fc], a
    add e
    inc bc
    add b
    inc bc
    nop
    ld a, [hl+]
    pop bc
    cp $81
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ret nz

    rst $18
    ldh [$5f], a
    ld h, b
    ld e, a
    ld h, b
    ret nz

    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $20
    rra
    inc sp
    rrca
    dec de
    rlca
    dec c
    inc bc
    dec bc
    rlca
    cpl
    rra
    ret nz

    rst $38
    inc e
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    dec b
    inc bc
    add a
    inc bc
    ldh [$8f], a
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    adc a
    add a
    rst $20
    db $e3
    di
    pop af
    ld sp, hl
    ld hl, sp-$04
    db $fc
    cp $fe
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    ld e, a
    ccf
    ld l, l
    rra
    ld l, a

jr_0b1_5849:
    sbc l
    ld l, a
    sbc l
    dec l
    sbc a
    rrca
    rst $38
    rst $20
    rlca
    ld e, b
    add e
    rst $10
    jr z, jr_0b1_5849

    dec e
    cp $1f
    rst $38
    ld a, a
    rst $30
    ld a, a
    rla
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    or a
    cp a
    rst $30
    cp a
    or h
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    jr c, @+$01

    inc e
    rst $38
    inc e
    rst $38
    adc [hl]
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    di
    rst $38
    pop af
    rst $38
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
    ccf
    ccf
    rra
    rra
    rrca
    adc a
    add a
    rst $00
    jp $e1e3


    pop af
    ldh a, [$f8]
    ld hl, sp-$02
    cp $ff
    db $fd
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    cp h
    ei
    call c, $acbb
    db $db
    call c, $dccb
    ld c, e
    db $fc
    db $db
    cp h
    ei
    call c, $bcbb
    ei
    db $fc
    ei
    db $fd
    ei
    cp $ff
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
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
    rlca
    ld hl, sp+$03
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0b
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

    ld a, a
    add b
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add c
    ld a, [hl]
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    sbc b
    rst $38
    adc l
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    db $fd
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
    sbc a
    adc a
    rst $08
    ld b, a
    rst $20
    inc hl
    di
    ld de, $0ff9
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
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
    rlca
    rst $38
    rlca
    rst $38
    inc b
    rst $38
    ld b, $fd
    dec b
    cp $04
    cp $04
    cp $04
    cp $05
    cp $07
    db $fc
    inc b
    cp $05
    cp $04
    cp $06
    db $fc
    ld b, $fc
    ld b, $fc
    ld b, $fc
    inc b
    cp $04
    cp $04
    cp $04
    cp $04
    cp $04
    cp $05
    cp $04
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld [hl], b
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
    ld bc, $0ffe
    ldh a, [rIE]
    nop
    reti


    ld h, $ff
    nop
    rst $38
    nop
    rst $38
    nop
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
    add c
    ld a, [hl]
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
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
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [$03], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
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
    ld hl, sp-$01
    nop
    rst $38
    nop
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
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    ld d, h
    rst $18
    nop
    ld b, b
    nop
    nop
    nop
    jp $e33c


    inc e
    ld bc, $00fe
    rst $38
    rst $38
    nop
    or b
    nop
    nop
    nop
    ld [hl], l
    nop
    ld [c], a
    dec d
    db $ed
    nop
    rst $10
    nop
    inc b
    nop
    cp d
    nop
    inc c
    nop
    inc c
    ldh a, [$6f]
    ldh a, [rNR23]
    ldh [rP1], a
    rst $38
    dec [hl]
    jp z, $ffff

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
    ld bc, $03fe
    db $fc
    ld bc, $1ffe
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $10
    jr z, @+$01

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
    cp $01
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01

jr_0b1_5af0:
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    stop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ldh [rNR41], a
    jr nz, jr_0b1_5af0

    db $10
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$0c
    db $fc
    db $ed
    db $f4
    rra
    ld [c], a
    ccf
    jp nz, $e11f

    ld bc, $02ff
    db $fd
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    rst $38
    ld c, $ff
    jr c, @+$01

    ldh a, [rIE]
    rst $30
    rst $38
    db $fc
    db $fc
    ret nz

    nop
    nop
    nop
    rlca
    nop
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

    rra
    ldh [$1f], a
    ldh [$1f], a
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
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld d, c
    nop
    ret nc

    nop
    ld d, b
    nop
    nop
    sbc a
    nop
    adc a
    nop
    sub a
    ld c, b
    inc d
    rl l
    nop
    ld e, e
    nop
    ld b, b
    nop
    rlca
    nop
    ld a, [bc]
    dec b
    dec bc
    nop
    dec c
    nop
    inc bc
    nop
    add e
    nop
    adc c
    nop
    adc c
    rrca
    adc c
    rrca
    dec c
    add hl, bc
    add hl, bc
    adc a
    xor a
    ld e, c
    rst $38
    rst $38
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
    rrca
    ldh a, [$be]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    pop hl
    ld e, $e1
    ld e, $c3
    inc a
    add e
    ld a, h
    add a
    ld a, b
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$03], a
    db $fc
    ld a, h
    add e
    rst $38
    nop
    rra
    db $10
    rra
    db $10
    rrca
    ld [$080f], sp
    ld c, $09
    inc b
    rlca
    inc b
    rlca

jr_0b1_5bee:
    inc b
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld b, $03
    ccf
    ld bc, $01ff
    db $fd
    ld bc, $00e0
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    jr nz, jr_0b1_5bee

    inc hl
    ldh [$7f], a
    rst $38
    db $fc
    ldh a, [rP1]
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    add l
    nop
    dec b
    nop
    dec b
    nop
    nop
    db $f4
    nop
    ld h, b
    add b
    ld a, b
    add h
    ld [$40f4], sp
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jr nz, @-$6e

    jr nz, jr_0b1_5c48

jr_0b1_5c48:
    ldh [rP1], a
    stop
    add sp, $00
    ld d, b
    nop
    ret z

    nop
    add sp, $00
    ret nz

    nop
    ld d, b
    xor b
    ld d, b
    xor l
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
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    jr @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld e, $ff
    ld bc, $00ff
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

    ld a, a
    add b
    rst $30
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    rst $38
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
    rst $38
    nop
    inc bc
    db $fc
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    pop hl
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $fe
    ld bc, $07f8
    ldh [$1f], a
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
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp-$79
    ldh a, [$8f]
    ret nz

    cp a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    jr nz, jr_0b1_5d1b

    jr nz, jr_0b1_5d1d

    ldh [$3f], a
    db $ec
    ldh a, [rP1]
    nop
    nop
    nop

jr_0b1_5ce6:
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

Call_0b1_5cf5:
    nop
    rst $38
    rst $38
    nop
    rst $38
    ldh [rIE], a
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    db $dd
    jr nz, jr_0b1_5d2b

    sbc b
    jr nz, jr_0b1_5ce6

    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld a, a
    nop
    rst $38
    rrca
    ldh a, [rP1]
    nop
    nop

jr_0b1_5d1b:
    inc c
    nop

jr_0b1_5d1d:
    inc b
    db $10
    inc h
    ret nc

    inc h
    ret nc

    inc h
    nop
    ld [$df00], sp
    db $10
    rst $38
    rst $38

jr_0b1_5d2b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add a
    nop
    rst $38
    nop
    ret nz

    ccf
    push de
    ccf
    push de
    ccf
    dec d
    ld a, a
    xor d
    ld a, a
    xor d
    ld a, a
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    dec d
    rst $38
    ret nz

    ccf
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
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp b
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
    rra
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
    inc e
    ldh [rP1], a
    nop
    nop
    nop
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
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ld b, b
    rra
    ld b, b
    rra
    ld b, b
    rra
    nop
    cp a
    nop
    ccf
    rra
    nop
    sbc a
    nop
    sbc a
    add hl, de
    ld [bc], a
    ld [$2f12], sp
    db $10
    jr nz, jr_0b1_5de4

jr_0b1_5de4:
    sbc a
    nop
    nop
    and c
    ld e, $20
    nop
    jr nz, jr_0b1_5ded

jr_0b1_5ded:
    jr nz, jr_0b1_5def

jr_0b1_5def:
    and b
    nop
    and b
    nop
    jr nz, @+$03

    ld hl, $a719
    rra
    pop hl
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ldh [rIE], a
    ld hl, sp+$3f
    db $fc
    rrca
    db $fc
    rst $38
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    inc a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rrca
    ldh a, [$50]
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    dec b
    rst $38
    ldh a, [rIF]
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
    cp $00
    ldh a, [rP1]
    ret nz

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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    ld bc, $0fff
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
    rst $38
    rst $38
    rst $38
    db $fc
    ret nz

    nop
    nop
    nop
    nop
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
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    xor l
    ld h, b
    xor b
    ld h, l
    xor d
    ld h, l
    jr nz, jr_0b1_5ea4

jr_0b1_5ea4:
    jp z, $0c25

    jr nz, jr_0b1_5ee7

    add b
    sub b
    nop
    sub b
    nop
    add b
    nop
    db $10
    add b
    sub b
    nop
    rst $38
    nop
    ld d, h
    xor e
    rst $38
    nop
    or h
    ld c, e
    rst $28
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
    db $fd
    nop
    db $fd
    add b
    ld a, l
    ld a, [c]
    ld c, $fa
    ld [bc], a
    ld a, [$f802]
    push hl
    db $fc
    dec e
    db $fd
    db $fd
    add c
    ld bc, $0000
    nop
    nop
    ld [bc], a
    ld [bc], a
    add e
    inc bc
    db $e3
    inc bc
    ei
    inc bc
    rst $38

jr_0b1_5ee7:
    inc bc
    rst $38
    inc bc
    inc bc
    db $fd
    ld d, e
    db $fd
    ld d, e
    db $fd
    xor e
    db $fd
    xor e
    db $fd
    xor e
    db $fc
    ld d, e
    db $fc
    ld d, e
    db $fc
    ld d, e
    db $fc
    inc bc
    db $fc
    rst $38
    nop
    ld a, a
    add b
    add b
    ld a, a
    rst $38
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
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $0fff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rra
    rra
    dec bc
    dec bc
    add hl, bc
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld hl, $21ff
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    inc de
    rst $38
    rla
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld bc, $031e
    inc e
    inc bc
    inc e
    ld [bc], a
    dec e
    inc bc
    inc e
    rlca
    jr jr_0b1_5f83

    add hl, de
    inc bc
    inc e
    rlca
    jr jr_0b1_5f89

jr_0b1_5f83:
    add hl, de
    inc bc
    inc e
    rlca
    jr @+$07

jr_0b1_5f89:
    ld a, [de]
    rlca
    jr jr_0b1_5f94

    jr @+$09

    jr @+$09

    jr jr_0b1_5fa2

    db $10

jr_0b1_5f94:
    rst $28
    ldh a, [$ef]
    ldh a, [rIF]
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    or e
    cp h

jr_0b1_5fa2:
    inc de
    inc e
    di
    db $fc
    ld [de], a
    inc e
    ld d, d
    ld e, h
    ld [de], a
    inc e
    ld [de], a
    inc e
    db $10
    ld e, $0e
    db $10
    ld c, $10
    rst $28
    db $10
    ld c, a
    or b
    ld c, a
    or b
    rrca
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp+$18
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rst $38
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    rst $18
    rst $18
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    xor a
    xor a
    xor a
    xor a
    or a
    or a
    or a
    or a
    rst $10
    rst $10
    db $db
    db $db
    db $db
    db $db
    db $eb
    db $eb
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    db $ed
    or $76
    or $76
    ld [hl], $f6
    ei

jr_0b1_6005:
    dec de
    dec de
    dec bc
    dec de
    dec bc
    dec de
    dec bc
    dec c
    dec b
    dec c
    dec b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld e, $ff
    ld c, $ff
    ld c, $ff
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
    ld e, $e1
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    db $fd
    nop
    add sp, $20
    ret nz

    db $10
    add b
    ld h, d
    add b
    add d
    nop
    ld l, $80
    ld b, a
    add b
    ld l, [hl]
    add b
    cp [hl]
    ld b, b
    cp $00
    rst $38
    nop
    and $19
    nop
    rst $38
    dec b
    rst $38
    db $10
    rst $38
    and c
    cp $06
    ld hl, sp+$3e
    ret nz

    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rDIV]
    ld [hl], b
    add b
    ld l, h
    add b
    ldh [rP1], a
    and b
    ld b, h
    ldh a, [rSB]
    ldh [rSC], a
    ld l, b
    add a
    ld b, b
    xor a
    ret nz

    ld [hl+], a
    add b
    jr nz, jr_0b1_6005

    nop
    ret z

    ld bc, $2001
    nop
    nop
    nop
    inc b
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $18
    nop
    inc c
    ldh a, [rTAC]
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    rra
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rrca
    ldh a, [$f0]
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0b1_60f9

    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b1_610b

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b1_611b

    inc e
    inc e
    inc e
    inc e
    ld a, [hl+]
    dec hl
    inc l

jr_0b1_60f9:
    dec l
    ld l, $2f
    jr nc, jr_0b1_612f

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $1c
    scf
    jr c, jr_0b1_6140

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_0b1_610b:
    ld a, $3f
    ld b, b
    inc e
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, l
    ld b, l
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_0b1_611b:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    inc e
    inc e
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_0b1_612f:
    ld e, l
    ld e, [hl]
    ld e, a
    ld d, d
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

jr_0b1_6140:
    ld l, l
    ld l, [hl]
    ld d, d
    ld h, b
    ld l, a
    nop
    nop
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
    ld d, d
    ld a, e
    ld a, h
    nop
    nop
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
    ld a, h
    nop
    nop
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
    nop
    nop
    nop
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    nop
    sbc [hl]
    sbc a
    and b
    and c
    ld d, d
    and d
    nop
    nop
    nop
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
    xor $1c
    inc e
    inc e
    inc e
    inc e
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld a, [$fcfb]
    db $fd
    cp $52
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
    ld d, d
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
    ld bc, $0103
    ld bc, $0101
    ld bc, $2121
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    inc bc
    ld bc, $0101
    inc b
    inc b
    ld bc, $0000
    nop
    ld b, $06
    ld b, $07
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    ld b, $06
    ld b, $06
    nop
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0401
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld bc, $0101
    ld bc, $0003
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
    ld bc, $0101
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
    ld b, $00
    nop
    nop
    nop
    ld bc, $080b
    ld [$0808], sp
    ld [$0808], sp
    ld [$0e08], sp
    ld c, $08
    ld [$ff00], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [$8f]
    ld h, b
    rst $38
    jr @+$01

    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38

jr_0b1_6366:
    nop
    rst $38
    ld l, [hl]
    ld sp, $1833
    dec sp
    inc e
    rra
    inc c
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    pop hl
    nop
    rst $38
    nop
    jp c, Jump_000_0925

    ld b, $fd
    ld [bc], a
    ld a, [$f905]
    ld b, $84
    ld a, e
    inc c
    inc bc
    sbc b
    ld h, a
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
    ld bc, $0100

jr_0b1_6399:
    nop
    ei
    db $f4
    ld c, b
    or b

jr_0b1_639e:
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$007d], sp
    rst $18
    jr nz, jr_0b1_6399

    inc de
    ldh [$1f], a
    ld a, [bc]
    rst $30
    db $10
    rst $28
    ld [bc], a
    rst $38
    sub $ef
    adc $ff
    ld h, $df
    ld a, [bc]
    rst $38
    jr jr_0b1_639e

    ld h, b
    add b
    add e
    nop
    ld e, $00
    ld h, e
    nop
    adc h
    inc bc
    ld hl, $081e
    ldh a, [rSCY]
    add c
    add hl, bc
    ld b, $25
    jr jr_0b1_6366

    ld h, b
    ld b, [hl]
    add b
    ld d, $00
    dec b
    nop
    inc d
    inc bc
    ld c, b
    rlca
    ld b, b
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    ld hl, sp+$0f
    ldh a, [rTIMA]
    ldh [$5f], a
    add b
    ld a, [de]
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    dec c
    ld [bc], a
    rra
    ld b, $3b
    inc b
    ld l, [hl]
    ld [de], a
    cp $0e
    cp [hl]
    ld a, [bc]
    ld a, [hl-]
    ld a, [bc]
    cp a
    ld a, [de]
    dec sp
    ld a, [de]
    ei
    rra
    rst $38

jr_0b1_6411:
    nop
    rst $38

jr_0b1_6413:
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a

jr_0b1_6422:
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
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld b, $ff
    ld bc, $00ff

jr_0b1_643b:
    rst $38
    pop hl

jr_0b1_643d:
    rra
    ei

jr_0b1_643f:
    rlca
    ld a, $01
    rra
    add b
    rlca
    ret nz

    inc hl
    ret nz

    ld sp, $39c0
    ret nz

    add hl, sp
    ret nz

    jr c, jr_0b1_6411

    jr c, jr_0b1_6413

    jr @-$1d

    jr @-$1d

jr_0b1_6456:
    jr @-$1d

    jr jr_0b1_643b

    jr jr_0b1_643d

    jr jr_0b1_643f

    ld e, c
    jr nz, jr_0b1_64b9

    jr nz, jr_0b1_64bb

    jr nz, jr_0b1_64bd

    jr nz, jr_0b1_649f

    nop
    ld a, c
    nop
    ld e, c
    ld hl, $2019
    jr c, jr_0b1_6470

jr_0b1_6470:
    jr jr_0b1_6472

jr_0b1_6472:
    jr c, jr_0b1_6474

jr_0b1_6474:
    jr c, jr_0b1_6476

jr_0b1_6476:
    ld a, c
    nop

jr_0b1_6478:
    ld hl, sp+$01
    ld hl, sp+$01
    ret c

    ld hl, $21d8
    ld [hl], b
    and c
    ld sp, $31e1
    pop hl
    jr nz, jr_0b1_6478

    ld h, b
    ldh a, [rSB]
    ldh a, [rP1]
    db $10
    ldh [rNR11], a
    pop hl
    ld [de], a
    db $e3
    db $10
    add d
    ld [hl], c
    ld bc, $47f2
    jr nc, jr_0b1_6422

    ld [hl], b
    ld b, a
    sub b
    dec b

jr_0b1_649f:
    jr nc, jr_0b1_6456

    ld sp, $3145
    add l
    ld de, $3107
    dec b
    sub c
    dec b
    pop bc
    dec b
    pop hl
    inc bc
    pop af
    dec bc
    pop af
    add hl, bc
    pop hl
    add hl, hl
    add b
    ld e, b
    nop
    xor b

jr_0b1_64b9:
    nop
    reti


jr_0b1_64bb:
    nop
    db $d3

jr_0b1_64bd:
    nop
    ld [hl], a
    nop
    db $e3
    ld [$10b3], sp
    ld a, [c]
    add hl, de
    ld a, [c]
    dec e
    rst $30
    sbc b
    db $76
    sub c
    or a
    ld de, $11b7
    or a
    sub c
    dec [hl]
    sub e
    or l
    inc de
    pop af
    rla
    or c
    rra
    or c
    sub a
    ld sp, hl
    rla
    dec a
    sub e
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b1_6512:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    sbc a
    ld a, a
    rst $08
    dec sp
    rst $38
    add hl, bc
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rSB], a
    cp $f0
    rrca
    cp $01
    ldh a, [rIF]
    ldh a, [rIF]
    cp $01
    inc b
    ei
    ret nz

    ccf
    nop
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    rst $38
    nop
    db $ec
    ldh a, [$f0]
    ldh [rLCDC], a
    ldh [$e6], a
    ld b, b
    rst $28
    ld b, b
    push af
    ld c, d
    ld h, e
    db $dd
    ld h, c
    rst $18
    add sp, -$01
    adc [hl]
    ei
    rst $28
    di
    db $fc
    ld hl, sp-$08
    ret nz

    rst $00
    nop
    jr c, jr_0b1_6568

jr_0b1_6568:
    ldh [$03], a
    add e
    inc e
    ld c, $71
    add hl, sp
    add $e7
    jr jr_0b1_6512

    ld h, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    cp $3e
    db $fc
    sbc h
    ldh a, [$c0]
    ld hl, sp-$20
    ld hl, sp-$10
    db $fc
    ldh a, [$f6]
    ld hl, sp-$05
    db $e4
    ei
    call nz, $80ff
    push af
    ld [de], a
    or l
    ld d, d
    push af
    ld b, [hl]
    or l
    ld b, [hl]
    push hl
    ld b, [hl]
    xor c
    ld b, [hl]
    add l
    ld c, d
    and c
    ld e, $55
    ld a, [hl-]
    or h
    ld a, e
    ld [hl], l
    ei
    push af
    ld a, [$fef1]
    db $f4
    db $fd
    pop af
    cp $f1
    db $fc
    pop af
    db $fc
    push hl
    ld sp, hl
    db $e4
    ld sp, hl
    adc $f3
    adc h
    rst $30
    ld [$83f7], sp
    ld a, a
    pop bc
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
    ldh [$1f], a
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
    add b
    ld a, a
    add b
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld h, a
    rra
    inc sp
    rrca
    sbc c
    rlca
    push bc
    ld a, [bc]
    and $09
    ldh [rIF], a
    db $e4
    dec bc
    xor $01
    and $09
    push hl
    ld a, [bc]
    ldh [rIF], a
    pop hl
    ld c, $e0
    rrca
    rst $28
    nop
    push hl
    ld a, [bc]
    ld h, l
    ld c, $26
    inc c
    inc h
    ld [$0d22], sp
    ld h, [hl]
    add hl, bc
    ld h, b
    rrca
    ldh [rIF], a
    db $e4
    rrca
    db $e4
    rrca
    and h
    ld c, [hl]
    ldh [rLCDC], a
    ldh [$c2], a
    jr nz, jr_0b1_6631

    rst $20
    rrca
    ld hl, $040f
    rst $28
    ld h, b
    adc a
    ld [hl-], a
    rst $08
    ld b, c
    cp a
    add b
    ld a, a
    adc a

jr_0b1_6631:
    ld a, e
    adc $3d
    rst $28
    ld e, $cc
    rst $38
    ldh a, [$ef]
    and $e7
    pop bc
    jp Jump_000_0300


    inc bc
    ld [bc], a
    inc b
    rlca
    rlca
    inc c
    inc bc
    inc e
    jr nz, jr_0b1_6689

    ld bc, $a27f
    rst $38
    add a
    rst $38
    xor d
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    rst $28
    cp a
    cp $af
    ld l, $ff
    ld l, h
    rst $38
    ld a, l
    rst $28
    ld a, l
    rst $28
    ld a, $ff
    inc a
    cp a
    jr c, jr_0b1_66e9

    ld hl, sp+$7f
    or b
    rst $38
    ld d, b
    cp a
    ld a, b
    ccf
    ld b, h
    ld a, a
    add e
    rst $38
    nop
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
    ld a, a
    rst $38
    ld a, a

jr_0b1_6689:
    rst $38
    ccf
    rst $38
    inc c
    di
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

jr_0b1_66b6:
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    ccf
    ld h, d
    rra
    ld d, b
    inc bc
    ld d, b
    add c
    nop

jr_0b1_66e9:
    add b
    ld d, b
    add b
    ld d, b
    add b
    nop
    add b
    ld [hl], b
    add b
    ld [de], a
    ret nz

    jr nc, jr_0b1_66b6

    xor $00
    or b
    rrca
    ld bc, $110a
    inc c
    and l
    ld [$8835], sp
    ld [hl], c
    adc h
    ld b, c
    xor h
    ld de, $01ec
    db $ec
    inc d
    dec hl
    add h
    ld l, e
    nop
    ld l, a
    ret nz

    rst $08
    ld h, l
    jp c, $fd02

    ld h, b
    rst $38
    sub e
    rst $28
    ld l, d
    rst $38
    ld [hl], e
    rst $38
    ldh [rIE], a
    ld sp, hl
    add $78
    add a
    ld sp, hl
    ld b, $e0
    rra
    ld b, b
    cp a
    sub c
    rst $28
    ld d, b
    rst $28
    ld d, e
    xor $12
    db $ed
    ld bc, $13ff
    rst $38
    inc sp
    rst $18
    ccf
    rst $18
    xor a
    ld e, a
    cpl
    rst $18
    cpl
    rst $18
    xor [hl]
    rst $18
    ld l, $ff
    ld c, h
    rst $38
    call z, Call_0b1_6cbf
    cp a
    add b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $fc
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld a, [$fc00]
    nop
    pop af
    add d
    ld a, [$c3b8]
    cp a
    ret nz

    cp l
    ret nz

    xor h
    ret nz

    cp b
    ret nz

    inc l
    ret nz

    ld hl, sp-$20
    db $fc
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
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld c, $bf
    ld [bc], a
    sub a
    nop
    ret


    nop
    ret z

    nop
    ret z

    nop
    ret z

    ld c, c
    ret z

    ld l, [hl]
    jp hl


    db $db
    nop
    ld a, [bc]
    add b
    ld a, [$d200]
    ld [$08f3], sp
    db $d3
    ld [$00fb], sp
    ld a, [c]
    add hl, bc
    rst $18
    add hl, hl
    rst $18
    dec l
    rst $38
    dec l
    rst $38
    dec l
    ld a, a
    cp h
    cp l
    ld a, a
    or l
    ld a, a
    add d
    db $fd
    xor d
    db $dd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [$d9fd]
    rst $38
    ret c

    rst $38
    ret


    rst $38
    call $c8ff
    rst $38
    ret


    rst $38
    ld l, [hl]
    rst $38
    ld l, h
    rst $38
    adc b
    rst $38
    and [hl]
    rst $38
    and e
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ret z

    rst $38
    rst $00
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
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$01
    ld hl, sp+$01
    ldh a, [rP1]
    cp $03
    db $fc
    dec b
    pop bc
    rrca
    adc [hl]
    ld [hl], a
    ld [hl], b
    adc [hl]
    add b
    rra
    jr nz, jr_0b1_686e

    ret nz

    ld a, $00
    ld d, b
    add b
    ld a, b
    nop
    inc a
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $28
    rra
    ld l, a
    rra
    jr z, jr_0b1_686d

    ld l, b
    rra
    ld l, b
    rra
    ld l, b
    rra
    ret z

    cp a
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

jr_0b1_686d:
    rst $38

jr_0b1_686e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_0b1_6897:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld h, l
    ld a, d
    db $76
    ld l, b
    ld l, d
    ld [hl], b
    ld h, b
    ld [hl], b
    ld h, [hl]
    ld [hl], c
    ld h, a
    ld [hl], b
    ld l, b
    ld [hl], a
    ld a, b
    ld h, a
    ld h, a
    ld [hl], b
    ld l, l
    ld [hl], b
    ld h, b
    ld [hl], b
    ld [hl], e
    ld h, b
    ld [hl], a
    ld h, b
    ld [hl], a
    ldh [$f6], a
    ldh [$e0], a
    ldh a, [$e5]
    ldh a, [$60]
    ldh a, [$e0]
    rst $30
    ld h, e
    rst $30
    ld h, b
    rst $30
    ld l, b
    rst $30
    ld h, c
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld [$f0ff], sp
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    dec d
    ld [$c0ff], a
    ld a, a
    cp a
    ccf
    ret nz

    rst $28
    db $10
    dec de
    db $e4
    rra
    ldh [$37], a
    ret z

    cpl
    ret nz

    rst $18
    jr nz, jr_0b1_693c

    ret nz

    ld l, l
    nop
    dec [hl]
    ld c, b
    ei
    nop
    cp e
    nop
    ei
    ld bc, $06ff
    rst $38
    jr c, @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
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
    ld a, a
    rst $38
    ld [hl], b
    rst $38
    dec [hl]
    ld a, [$fa35]
    ld a, d
    push af
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b1_693c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
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
    rst $38
    rst $38
    rst $38
    ld e, h
    and d
    ld hl, sp+$06
    nop
    ld [bc], a
    nop
    nop
    inc e
    ldh [rNR32], a
    ldh [$0c], a
    ld a, [c]
    nop
    cp $f8
    nop
    add d
    nop
    ld [bc], a
    nop
    xor b
    nop
    db $10
    xor b
    ld l, b
    nop
    cp b
    nop
    jr nz, jr_0b1_69ae

jr_0b1_69ae:
    call nc, $6400
    nop
    ld h, h
    add b
    ld a, h
    add b
    ret nz

    nop
    nop
    db $fc
    xor l
    ld d, d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    jr @+$01

    ldh [rIE], a
    ld c, $f1
    inc de
    db $ec
    ld a, $c1
    ld a, d
    add l
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, jr_0b1_6a5a

    add b
    rst $38
    rst $38
    rst $38
    nop
    cp [hl]
    ld b, b
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp [hl]
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $06ff
    rst $38
    jr @+$01

    ld h, b
    db $fd
    add b
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    cp b
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
    nop
    rst $38
    ret nz

    ld hl, sp-$1f
    cp $f0
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    dec b
    ld a, [$5da2]
    ld d, l
    xor d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ld hl, sp-$01
    rst $38
    rst $38
    nop
    adc h
    nop
    add b
    nop
    add b
    nop
    nop
    rst $38
    nop
    ld a, e
    inc b

jr_0b1_6a5a:
    cp e
    ld b, h
    and b
    ld e, a
    xor d
    nop
    ret c

    nop
    nop
    nop
    ccf
    nop
    ld d, c
    inc l
    ld e, c
    nop
    ld l, a
    nop
    jr jr_0b1_6a6e

jr_0b1_6a6e:
    rra
    nop
    ld c, d
    nop
    ld c, [hl]
    ld a, b
    ld c, a
    ld a, b
    ld l, [hl]
    ld c, b
    ld c, d
    ld a, l
    ld a, d
    call $ffff
    rst $38
    rst $38
    ld a, b
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
    add hl, de
    and $00
    rst $38
    ccf
    ret nz

    rst $38
    nop
    pop bc
    nop
    add b
    nop
    ld c, b
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld bc, $0272
    inc c
    inc c
    db $10
    db $10
    jr nz, jr_0b1_6ac8

    cp $20
    rst $38
    ld b, b
    rst $38
    add b
    cp $00
    rst $38
    nop
    db $ed
    nop
    db $fc
    nop
    cp b
    nop
    ldh [rP1], a
    ret nz

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

jr_0b1_6ac8:
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $38
    nop
    nop
    db $fc
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    inc a
    jp $fff0


    rrca
    rst $38
    ld de, $43ee
    cp h
    rrca
    ldh a, [$5f]
    and b
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
    rst $38
    rst $38
    rst $38
    ccf
    ccf
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    jr z, jr_0b1_6b21

jr_0b1_6b21:
    jr z, jr_0b1_6b23

jr_0b1_6b23:
    jr z, jr_0b1_6b25

jr_0b1_6b25:
    nop
    and [hl]
    ld bc, $0401
    pop bc
    ld h, $40
    and a
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc bc
    nop
    add a
    nop
    rlca
    nop
    nop
    add b

jr_0b1_6b3d:
    nop
    ld b, b
    nop
    add b
    ld bc, HeaderSGBFlag
    ld b, [hl]
    ld bc, $0000
    add b
    ld b, [hl]
    add b
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_0b1_6b3d

    dec a
    jp nz, $c13e

    ld e, $e1
    sbc b
    ld h, a
    ld e, b
    and a
    ret z

    scf
    rst $28
    db $10
    ld l, e
    db $10
    db $10
    ld [$0800], sp
    add h
    ld [$0fff], sp
    cp $fe
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $8100
    nop
    pop bc
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    inc bc
    inc e
    inc e
    ld h, b
    ld h, b
    add b
    add b
    nop
    nop
    add hl, de
    db $e4
    inc bc
    inc a
    nop
    nop
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [rNR13]
    db $ec
    rst $38
    rst $38
    ld c, a
    or b
    xor a
    ld d, b
    rst $18

jr_0b1_6bb5:
    jr nz, jr_0b1_6bb5

    ld bc, $00ff
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $00fe
    rst $38
    nop
    ld [bc], a
    jr nz, jr_0b1_6bf4

    nop
    ld [bc], a

jr_0b1_6bf4:
    nop
    nop
    db $ed
    nop
    ld hl, $00c0
    db $e4
    nop
    db $fc
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld hl, sp+$04
    ld hl, sp+$78
    add l
    nop
    ld bc, $6100
    nop
    ld hl, $2580
    add b
    dec h
    add b
    ld hl, $4100
    nop
    db $fd
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    db $fd
    add d
    ld a, l
    add d
    ld a, l
    sub [hl]
    ld l, c
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $fdfc
    nop
    db $fd
    nop
    ld a, l
    nop
    dec e
    nop
    ccf
    inc bc

jr_0b1_6c3c:
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
    add b
    nop

jr_0b1_6c50:
    add a
    nop
    sbc e
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_0b1_6c3c

    jr nz, jr_0b1_6cbe

    jr nz, jr_0b1_6c50

    db $10
    rst $28
    rra
    rst $38
    ldh a, [$f7]
    ld [$0877], sp
    scf
    ld [$041b], sp
    inc bc
    inc b
    ld e, d
    nop
    rst $38
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
    nop
    ld sp, hl
    or $df
    cpl
    push af
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, d
    rst $38
    ld hl, sp-$01
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
    ret nz

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
    rrca
    rrca
    nop
    nop
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

jr_0b1_6cbe:
    rst $38

Call_0b1_6cbf:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $01ff
    rst $38
    call Call_0b1_4513
    sub e
    ld a, l
    add e
    ld bc, $fe00
    ld bc, $0900
    pop af
    inc b
    inc b
    nop
    inc b
    nop
    inc b
    nop
    nop
    inc b
    inc b
    nop
    rrca
    ld [$3dca], sp
    rst $38
    ld [$0afd], sp
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ccf
    ret nz

    rst $38
    ret nz

    cp a
    ld a, h
    ei
    rlca
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
    db $fd
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    rst $38
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    rst $38
    ld a, a
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
    rst $18
    ccf
    db $fd
    rra
    ld l, h
    rra
    inc c
    rra
    db $ec
    rra
    db $ec
    rra
    db $ec
    rra
    rrca
    rst $38
    cp $ff
    db $ec
    rra
    xor $1f
    xor $1f
    xor [hl]
    ld e, a
    rst $38
    rrca
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
    add b
    rst $38
    cp $ff
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld l, [hl]
    ld bc, $2944
    ld d, h
    add hl, hl
    nop
    nop
    ld d, e
    inc l
    ld h, b
    nop
    ld a, [c]
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    and e
    ld e, h
    rst $38
    nop
    and b
    ld e, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    and a
    cp $b3
    ld c, l
    cp h
    ld b, e
    sbc a
    ld h, c
    xor a
    ld d, c
    or a
    ld c, c
    ld bc, $0047
    ld b, c
    ld bc, $e141
    pop hl
    rra
    rra
    rrca
    rrca
    rlca
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
    pop bc
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
    rst $38
    rrca
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
    sbc a
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
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rla
    rla
    rla
    rra
    rst $38
    rra
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
    cp $ff
    rst $38
    rst $38
    ld a, a
    adc a
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, h
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    nop
    db $fd
    add d
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$59
    ld hl, sp-$09
    rst $38
    add [hl]
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$79
    ld hl, sp-$7b
    ld hl, sp-$69
    db $fc
    and [hl]
    ld hl, sp-$7b
    ld hl, sp-$7e
    ld hl, sp-$7b
    ld hl, sp-$7b
    ld hl, sp-$80
    ld hl, sp-$0c
    ld hl, sp-$2e
    ld hl, sp-$2f
    ld hl, sp-$0e
    ld hl, sp-$3a
    ld hl, sp-$3c
    ld hl, sp-$79
    ld hl, sp-$40
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
    ld a, a
    ld a, a
    sbc a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    xor a
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    nop
    nop
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
    rst $38
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    rst $38
    adc a
    ldh a, [$8f]
    rst $38
    ld hl, sp-$01
    rst $20
    ld hl, sp-$3a
    ld hl, sp-$39
    ld hl, sp-$1a
    ld hl, sp-$1c
    ld hl, sp-$1c
    ld hl, sp-$1a
    ld hl, sp-$0c
    ld hl, sp-$20
    ld hl, sp-$0c
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$07
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ld e, a
    xor a
    rst $18
    ccf
    ld e, a
    and e
    ld d, c
    xor a
    ld e, e
    and a
    sbc $21
    ld d, d
    xor l
    sbc $21
    ld a, a
    add b
    ld c, e
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call nc, $a8ff
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr c, jr_0b1_6fb0

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
    ld [hl], b
    rla
    nop
    inc bc
    nop
    rlca
    nop
    and l
    nop
    add hl, hl
    nop
    ld d, d
    nop
    ld sp, $4b00
    nop
    ld d, d
    nop
    ld d, c
    nop
    ld d, c
    nop
    ld [bc], a
    nop
    adc d
    nop
    sub h
    nop
    ld hl, $4d00
    nop
    inc b
    nop
    add h
    nop
    cp a
    ld b, b
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
    cp $fe
    db $fc

jr_0b1_6fb0:
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    and e
    rst $38
    cp c
    rst $38
    cp h
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    and b
    ld hl, sp+$00
    ld c, [hl]
    nop
    ld b, a
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    add b
    ld b, b
    ret nz

    nop
    db $fc
    db $fc
    ld b, $ff
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
    rrca
    rst $38
    db $eb
    dec e
    rst $28
    ld sp, hl
    ccf
    rst $38
    dec de
    rrca
    ccf
    dec bc
    dec de
    ld c, $3b
    ld c, $1b
    inc c
    dec a
    rrca
    inc [hl]
    rrca
    rlca
    ld e, $27
    ld e, $26
    rra
    inc sp
    rrca
    rlca
    dec sp
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $18
    ei
    adc a
    ei
    adc a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    xor a
    ld a, a
    xor e
    ld a, a
    xor e
    rst $38
    db $eb
    ld a, a
    srl a
    set 7, h
    rst $38
    di
    ld hl, sp-$05
    ldh a, [$38]
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    db $fc
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    jr nc, @+$11

    jr nc, @+$11

    db $10
    rrca
    jr nc, @+$11

    jr nc, @+$11

    jr nc, @+$11

    jr nc, jr_0b1_7061

    jr nc, jr_0b1_7063

    jr nc, @+$11

    jr nc, @+$11

    jr nc, jr_0b1_7069

    jr nc, jr_0b1_706b

    jr nc, jr_0b1_706d

    jr nc, jr_0b1_706f

    db $10

jr_0b1_7061:
    rrca
    db $10

jr_0b1_7063:
    rrca
    jr jr_0b1_706d

    jr jr_0b1_706f

    db $10

jr_0b1_7069:
    rrca
    db $10

jr_0b1_706b:
    rrca
    dec de

jr_0b1_706d:
    rlca
    dec de

jr_0b1_706f:
    rlca
    ld a, [de]
    rlca
    db $e3
    rra
    dec de
    rlca
    dec de
    rlca
    ld a, [de]
    rlca
    ei
    rlca
    dec de
    rlca
    ld a, e
    rlca
    ei
    rlca
    db $e3
    rra
    di
    rrca
    di
    rrca
    di
    rrca
    ld [hl], e
    rrca
    di
    rrca
    ld a, e
    rlca
    ld a, e
    rlca
    cp d
    rlca
    cp e
    rlca
    cp e
    rlca
    dec sp
    rlca
    ld e, e
    rlca
    ld e, e
    rlca
    cpl
    inc bc
    rlca
    inc bc
    ld [bc], a
    ld a, a
    ld b, $ff
    cp $ff
    cp $ff
    cp $ff
    ccf
    rra
    rra
    rrca
    rrca
    ccf
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
    ccf
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    ld bc, $0407
    rlca
    ld b, $07
    rlca
    add a
    rlca
    rst $00
    rlca
    ld h, a
    rlca
    scf
    inc bc
    rra
    ld bc, $040f
    rlca
    ld b, $07
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
    rst $38
    ld a, a
    db $fc
    ld a, a
    db $fc
    ld a, a
    call z, $ccff
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    sbc $7f
    sbc [hl]
    ld a, a
    ld e, [hl]
    cp a
    ld e, [hl]
    cp a
    sbc a
    ld a, a
    ld e, a
    cp a
    cp a
    ld e, a
    rst $18
    cp a
    cp a
    rst $38
    rst $38
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
    or $ff
    and $ff
    or $ff
    rst $38
    rst $38
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ld h, b
    sbc a

jr_0b1_716a:
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld hl, sp+$07
    ld a, b
    add a
    ld a, b
    add a

jr_0b1_7184:
    ld a, h
    add e
    add sp, $17
    ld l, [hl]
    sub c
    db $ed
    ld [de], a
    jp c, $ed25

    ld [de], a
    rst $28
    db $10
    rst $18
    jr nz, jr_0b1_7184

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    db $fd
    nop
    ret nz

    nop
    ld [hl-], a
    ret nz

    inc e
    ret nz

    db $10
    add b
    nop
    ret nz

    jr nz, jr_0b1_716a

    ld [hl+], a
    ret nz

    ld [hl], e
    add b
    ccf
    ret nz

    call z, $c000
    nop
    xor d
    nop
    ret c

    jr nz, jr_0b1_71d8

    ldh [$80], a
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    adc a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38

jr_0b1_71d8:
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    ccf
    rst $18
    db $fc
    rra
    ld a, h
    sbc a
    ld a, l
    sbc d
    ld a, b
    or a
    rst $38
    rst $38
    ld a, b
    rst $38
    ld a, d
    cp l
    ld hl, sp+$3f
    rst $38
    ld e, a
    ld a, a
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld [$f5ff], a
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
    ccf
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
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
    adc b
    ld [hl], a
    and b
    ld e, a
    xor d
    ld d, l
    call nc, $e92b
    ld d, $fe
    ld bc, $02fd
    rst $38
    nop
    inc bc
    nop
    nop
    nop
    rst $18
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ld a, a
    nop
    nop
    rst $38
    rst $18
    cp a
    rst $28
    rst $38
    rst $30
    rst $28
    rst $00
    rst $28
    rst $20
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
    ld hl, sp-$01
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
    adc a
    rst $18
    rst $00
    rst $28
    rst $20
    rst $28
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    ld l, l
    rst $38
    db $fd
    rst $38
    sbc a
    ld a, a
    ld b, b
    cp a
    call c, $ff23
    rst $38
    ld d, a
    xor b
    rrca
    ldh a, [$cb]
    inc [hl]
    or e
    ld c, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    xor [hl]
    ld b, b
    ld b, b
    add b
    rst $38
    ld b, b
    rst $38
    xor d
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
    rrca
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    nop
    rst $38
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    ld d, b
    xor a
    adc d
    ld [hl], l
    ld [hl], c
    adc [hl]
    db $fd
    ld [bc], a
    rst $38
    nop
    ccf
    nop
    ldh [rP1], a
    rrca
    inc bc
    rrca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    inc bc
    db $fc
    ret nc

    rst $38
    rst $38
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
    rrca
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
    ld d, e
    and c
    daa
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rla
    di
    rlca
    di
    ld l, e
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    rlca
    db $fd
    push bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    push de
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    and [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld hl, sp-$01
    call nz, Call_000_1cfa
    ldh [$7c], a
    add c
    xor h
    ld d, b
    ld e, h
    and c
    inc c
    ldh a, [$5c]
    and c
    inc l
    pop de
    inc e
    ldh [$2c], a
    pop de
    inc c
    pop af
    inc c
    pop af
    inc d
    jp hl


    inc a
    ret nz

    ld a, h
    add b
    inc a
    ret nz

    inc a
    ret nz

    ld a, h
    add b
    ld a, h
    add b
    inc a
    ret nz

    inc e
    ldh [$3c], a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc e
    ldh [rNR32], a
    ldh [$0c], a
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$08]
    or $0c
    ldh a, [$08]
    or $0c
    ldh a, [$08]
    or $0c
    ldh a, [$08]
    db $f4
    inc d
    add sp, $18
    db $e4
    inc e
    ldh [rNR23], a
    db $e4
    inc d
    add sp, $1c
    ldh [rNR23], a
    and $3c
    ret nz

    inc e
    ldh [$3c], a
    ret nz

    ld [$1cf6], sp
    ld [c], a
    ld e, [hl]
    and b
    inc e
    ld [c], a
    cp [hl]
    ld b, b
    ld e, h
    and d
    xor [hl]
    ld d, b
    cp [hl]
    ld b, b
    ld [hl], h
    adc d
    xor d
    ld d, l
    cp $01
    cp $01
    nop
    nop
    rst $38

jr_0b1_73e3:
    ld hl, sp-$01
    rlca
    rst $38
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    ld h, $00
    push af

jr_0b1_73f5:
    nop
    ld a, [$fd00]
    nop
    rrca
    ldh a, [$81]
    cp $ff
    rst $38
    nop
    rst $38
    jr nz, jr_0b1_73e3

    jr nc, jr_0b1_73f5

    ld hl, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e
    ldh [$f0], a
    rst $38
    rst $38
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
    inc d
    inc d
    inc d
    inc d
    inc d
    dec d
    ld d, $17
    jr jr_0b1_7458

    rrca
    ld a, [de]
    dec de
    inc e
    dec e
    inc d
    inc d
    inc d
    inc d
    inc d
    ld e, $1f
    jr nz, jr_0b1_746e

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b1_747e

    ld a, [hl+]
    dec hl
    inc l

jr_0b1_7458:
    dec l
    ld l, $2f
    jr nc, jr_0b1_748e

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b1_749e

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_0b1_746e:
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

jr_0b1_747e:
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

jr_0b1_748e:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    rrca
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a

jr_0b1_749e:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld l, c
    ld l, c
    ld l, c
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld l, c
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld l, c
    ld l, c
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
    rrca
    adc [hl]
    add d
    ld l, c
    ld l, c
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
    rrca
    sbc d
    sbc e
    ld l, c
    ld l, c
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
    rrca
    sbc d
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
    rrca
    or l
    or [hl]
    inc d
    inc d
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

    jp $c5c3


    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    inc d
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $db14

    call c, Call_000_14dd
    inc d
    inc d
    inc d
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    ld l, c
    ld l, c
    add sp, -$17
    inc d
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    ld l, c
    ld l, c
    ld l, c
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $6969
    ld l, c
    ld l, c
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld bc, $0003
    nop
    nop
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
    ld bc, $0003
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
    nop
    ld bc, $0003
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
    ld bc, $0401
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    ld bc, $0101
    ld bc, $0401
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    ld b, $06
    ld b, $06
    nop
    ld bc, $0303
    nop
    ld bc, $0401
    inc b
    ld bc, $0000
    nop
    ld b, $06
    ld b, $07
    ld bc, $0303
    inc bc
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $2101
    ld hl, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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

jr_0b1_767b:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_0b1_7687:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0909
    ld bc, $0101
    ld bc, $0909
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
    jp z, $e485

    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    add sp, -$31
    ldh [$cf], a
    sub $ff
    ldh a, [rIE]
    or b
    rst $38
    ldh [$bf], a
    and e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    xor e
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld h, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    cp $ff
    ld a, a
    rst $38
    rra
    rst $38
    inc hl
    ld e, a
    jr c, @+$09

    ld a, $81
    dec [hl]
    ld a, [bc]
    ld a, [hl-]
    add l
    jr nc, jr_0b1_76f1

    ld a, [hl-]
    add l
    inc [hl]
    adc e
    jr c, @+$09

    inc [hl]
    adc e
    jr nc, jr_0b1_767b

    jr nc, @-$6f

    jr z, jr_0b1_7687

    inc a

jr_0b1_76f1:
    inc bc
    ld a, $01
    inc a
    inc bc
    inc a
    inc bc
    ld a, $01
    ld a, $01
    inc a
    inc bc
    jr c, jr_0b1_7707

    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a

jr_0b1_7707:
    inc bc
    jr c, @+$09

    jr c, @+$09

    jr nc, @+$11

    jr nc, jr_0b1_771f

    jr nc, @+$11

    jr nc, jr_0b1_7723

    jr nc, @+$11

    db $10
    ld l, a
    jr nc, @+$11

    db $10
    ld l, a
    jr nc, @+$11

    db $10

jr_0b1_771f:
    ld l, a
    jr nc, @+$11

    db $10

jr_0b1_7723:
    cpl
    jr z, jr_0b1_773d

    jr jr_0b1_774f

    jr c, @+$09

    jr jr_0b1_7753

    jr z, jr_0b1_7745

    jr c, jr_0b1_7737

    jr jr_0b1_7799

    inc a
    inc bc
    jr c, jr_0b1_773d

    inc a

jr_0b1_7737:
    inc bc
    db $10
    ld l, a
    jr c, @+$49

    ld a, d

jr_0b1_773d:
    dec b
    jr c, jr_0b1_7787

    ld a, l
    ld [bc], a
    ld a, [hl-]
    ld b, l
    ld [hl], l

jr_0b1_7745:
    ld a, [bc]
    ld a, l
    ld [bc], a
    ld l, $51
    ld d, l
    xor d
    ld a, a
    add b
    ld a, a

jr_0b1_774f:
    add b
    nop
    nop
    rst $38

jr_0b1_7753:
    rra
    rst $38
    ldh [rIE], a
    nop
    nop
    nop
    ret nz

    nop
    add d
    nop
    stop
    nop
    nop
    reti


    nop
    rst $38
    nop
    ld a, l
    nop
    rst $10
    nop
    ldh a, [rIF]
    add c
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    inc b
    ei
    inc c
    rst $30
    add h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, jr_0b1_778b

    rrca
    rst $38
    rst $38

jr_0b1_7787:
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b1_778b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b1_7799:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or [hl]
    rst $38
    cp a
    rst $38
    ld sp, hl
    cp $02
    db $fd
    dec sp
    call nz, $ffff
    ld [$f015], a
    rrca
    db $d3
    inc l
    call $ff32
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], l
    ld [hl], l
    ld [bc], a
    ld [bc], a
    ld bc, $02ff
    rst $38
    ld d, l
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
    ldh a, [rIE]
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
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
    ld bc, $0afe
    push af
    ld d, c
    xor [hl]
    adc [hl]
    ld [hl], c
    cp a
    ld b, b
    rst $38
    nop
    db $fc
    nop
    rlca
    nop
    ldh a, [$c0]
    ldh a, [rP1]
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld b, b
    nop
    xor c
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
    ret nz

    ccf
    dec bc
    rst $38
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
    rst $38
    rst $38
    ldh a, [rIE]
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
    ccf
    rst $38
    db $fc
    ei
    ccf
    ld hl, sp+$3e
    ld sp, hl
    cp [hl]
    ld e, c
    ld e, $ed
    rst $38
    rst $38
    ld e, $ff
    ld e, [hl]
    cp l
    rra
    db $fc
    rst $38
    ld a, [$fdfe]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    rst $38
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
    nop
    rst $38
    ld d, b
    rst $38
    xor d
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
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
    cp $11
    xor $05
    ld a, [$aa55]
    dec hl
    call nc, Call_0b1_6897
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    ret nz

    nop
    nop
    nop
    ei
    nop
    nop
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
    ld c, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    nop
    cp $00
    nop
    rst $38
    ei
    db $fd
    rst $30
    rst $38
    rst $28
    rst $30
    db $e3
    rst $30
    rst $20
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
    cp $ff
    ld hl, sp-$01
    pop af
    ei
    db $e3
    rst $30
    rst $20
    rst $30
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    and $ff
    rst $38
    cp $3f
    cp $3f
    cp $33
    rst $38
    inc sp
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, e
    cp $79
    cp $7a
    db $fd
    ld a, d
    db $fd
    ld sp, hl
    cp $fa
    db $fd
    db $fd
    ld a, [$fdfb]
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$1f]
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$0e
    pop af
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld c, $f1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    rra
    ldh [rNR34], a
    pop hl
    ld e, $e1
    ld a, $c1
    rla
    add sp, $76
    adc c
    or a
    ld c, b
    ld e, e
    and h
    or a
    ld c, b
    rst $30
    ld [$04fb], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$00ff], sp
    cp a
    nop
    inc bc
    nop
    ld c, h
    inc bc
    jr c, jr_0b1_79a7

    ld [$0001], sp

jr_0b1_79a7:
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    cp [hl]
    ld bc, $037c
    inc sp
    nop
    inc bc
    nop
    ld d, l
    nop
    dec de
    inc b
    jr jr_0b1_79c1

    ld bc, $e3ff
    rst $38
    rst $38

jr_0b1_79bf:
    rst $38
    rst $38

jr_0b1_79c1:
    rst $38
    rst $38
    rst $38
    rst $38
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
    pop af
    rst $38
    db $e3
    rst $38
    rst $00
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
    db $fc
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $00
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    rst $10
    cp b
    rst $30
    sbc a
    db $fc
    rst $38
    ret c

    ldh a, [$fc]
    ret nc

    ret c

    ld [hl], b
    call c, $d870
    jr nc, jr_0b1_79bf

    ldh a, [$2c]
    ldh a, [$e0]
    ld a, b
    db $e4
    ld a, b
    ld h, h
    ld hl, sp-$34
    ldh a, [$e0]
    call c, $ffe8
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    ei
    rst $18
    pop af
    rst $18
    pop af
    rst $38
    push af
    rst $38
    push af
    rst $38
    push af
    rst $38
    push af
    cp $d5
    cp $d5
    rst $38
    rst $10
    cp $d3
    db $fc
    db $d3
    ccf
    rst $38
    rst $08
    rra
    rst $18
    rrca
    inc e
    rst $38
    inc a
    rst $38
    jr c, @+$01

    ccf
    rst $38
    inc a
    rst $38
    ld e, $ff
    rra
    rst $38
    inc c
    ldh a, [$0c]
    ldh a, [$08]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [rNR23]
    ldh [rNR23], a
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$d8]
    ldh [$d8], a
    ldh [$58], a
    ldh [$c7], a
    ld hl, sp-$28
    ldh [$d8], a
    ldh [$58], a
    ldh [$df], a
    ldh [$d8], a
    ldh [$df], a
    ldh [$df], a
    ldh [$c7], a
    ld hl, sp-$31
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$ce]
    ldh a, [$cf]
    ldh a, [$de]
    ldh [$de], a
    ldh [$5d], a
    ldh [$dd], a
    ldh [$dd], a
    ldh [$dc], a
    ldh [$da], a
    ldh [$da], a
    ldh [$f4], a
    ret nz

    rst $38
    ret nz

    ld b, c
    cp $60
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    db $fc
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
    db $fc
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $00
    rst $38
    add b
    ldh [rNR41], a
    ldh [$60], a
    ldh [$e0], a
    pop hl
    ldh [$e3], a
    ldh [$e6], a
    ldh [$ec], a
    ret nz

    ld hl, sp-$80
    ldh a, [rNR41]
    ldh [$60], a
    ldh [rIE], a
    rst $38
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
    rst $38
    pop af
    rrca
    pop af
    rst $38
    rra
    rst $38
    rst $20
    rra
    ld h, e
    rra
    db $e3
    rra
    ld h, a
    rra
    daa
    rra
    daa
    rra
    ld h, a
    rra
    cpl
    rra
    rlca
    rra
    cpl
    rra
    rrca
    rra
    rrca
    rra
    sbc a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld a, [$fbf5]
    db $fc
    ld a, [$8ac5]
    push af
    jp c, Jump_0b1_7be5

    add h
    ld c, d
    or l
    ld a, e
    add h
    cp $01
    jp nc, $fffd

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $30
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
    rst $38
    nop
    rst $38
    inc e
    db $fc
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $e8
    nop
    ret nz

    nop
    ldh [rP1], a
    and l
    nop
    sub h
    nop
    ld c, d
    nop
    adc h
    nop
    jp nc, Jump_0b1_4a00

    nop
    adc d
    nop
    adc d
    nop
    ld b, b
    nop
    ld d, c
    nop
    add hl, hl
    nop
    add h
    nop
    or d
    nop
    jr nz, jr_0b1_7b9e

jr_0b1_7b9e:
    ld hl, $fd00
    ld [bc], a
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
    ld a, a
    ld a, a
    ccf
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
    ld sp, hl
    rst $38
    pop af
    rst $38
    push bc
    rst $38
    sbc l
    rst $38
    dec a
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    dec b
    rra
    nop
    ld [hl], d
    nop
    ld [c], a
    nop
    add d
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0302
    nop
    ccf
    ccf
    ld h, b
    rst $38
    ret nz

    rst $38
    add b

Jump_0b1_7be5:
    rst $38
    nop
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
    cp $ff
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
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
    di
    add sp, -$18
    add sp, -$08
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $f1
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $013e
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    nop
    cp a
    ld b, c
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    push hl
    rra
    rst $28
    rst $38
    ld h, c
    rra
    ld bc, $011f
    rra
    pop hl
    rra
    and c
    rra
    jp hl


    ccf
    ld h, l
    rra
    and c
    rra
    ld b, c
    rra
    and c
    rra
    and c
    rra
    ld bc, $2f1f
    rra
    ld c, e
    rra
    adc e
    rra
    ld c, a
    rra
    ld b, e
    ccf
    inc bc
    ld a, a
    pop hl
    rra
    inc bc
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
    cp $fe
    ld sp, hl
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    push af
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ei
    db $fc
    cp a
    ld hl, sp+$36
    ld hl, sp+$30
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp-$10
    rst $38
    ld a, a
    rst $38
    scf
    ld hl, sp+$77
    ld hl, sp+$77
    ld hl, sp+$75
    ld a, [$f0ff]
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $7fff
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $76
    add b
    ld [hl+], a
    sub h
    ld a, [hl+]
    sub h
    nop
    nop
    jp z, Jump_000_0634

    nop
    ld c, a
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    push bc
    ld a, [hl-]
    rst $38
    nop
    dec b
    ld a, [$fffe]
    rst $38
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $e5
    ld a, a
    call $3db2
    jp nz, $86f9

    push af
    adc d
    db $ed
    sub d
    add b
    ld [c], a
    nop
    add d
    add b
    add d
    add a
    add a
    ld hl, sp-$08
    ldh a, [$f0]
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
    add e
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
    rst $38
    ldh a, [rIE]
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
    nop
    ld e, d
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld l, a
    ei
    db $f4
    xor a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, d
    rst $38
    rra
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
    inc bc
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
    ldh a, [$f0]
    nop
    nop
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
    nop
    rst $38
    nop
    add b
    rst $38
    add b
    rst $38
    or e
    ret z

    and d
    ret


    cp [hl]
    pop bc
    add b
    nop
    ld a, a
    add b
    nop
    sub b
    adc a
    jr nz, jr_0b1_7e49

    nop
    jr nz, jr_0b1_7e2c

jr_0b1_7e2c:
    jr nz, jr_0b1_7e2e

jr_0b1_7e2e:
    nop
    jr nz, jr_0b1_7e51

    nop
    ldh a, [rNR10]
    ld d, e
    cp h
    rst $38
    db $10
    cp a
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    inc bc
    db $fd
    ld a, $df

jr_0b1_7e49:
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd

jr_0b1_7e51:
    ld [bc], a
    rst $38
    nop
    cp a
    nop
    rra
    nop
    rrca
    nop
    rst $38
    rst $38
    rrca
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
    nop
    nop
    nop
    nop
    halt
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
    sbc b
    daa
    ret nz

    inc a
    nop
    nop
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ret z

    scf
    rst $38
    rst $38
    ld a, [c]
    dec c
    push af
    ld a, [bc]
    ei
    inc b
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
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    ld b, b
    inc b
    ld b, b
    nop
    ld b, b
    nop
    nop
    or a
    nop
    add h
    inc bc
    nop
    daa
    nop
    ccf
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    rra
    jr nz, jr_0b1_7f17

    ld e, $a1
    nop
    add b
    nop
    add [hl]
    nop
    add h
    ld bc, $01a4
    and h
    ld bc, $0084
    add d
    nop
    cp a
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    cp a
    ld b, c

jr_0b1_7f17:
    cp [hl]
    ld b, c
    cp [hl]
    ld l, c
    sub [hl]
    ld b, b
    cp a
    ret nz

jr_0b1_7f1f:
    ccf
    add b
    ccf
    cp a
    nop
    cp a
    nop
    cp [hl]
    nop
    cp b
    nop
    db $fc
    ret nz

    rst $38
    rst $38

jr_0b1_7f2e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e100
    nop
    reti


    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ld a, [$f704]
    ld [$f8f7], sp
    rst $38
    rrca
    rst $28
    db $10
    xor $10
    db $ec
    db $10
    ret c

    jr nz, jr_0b1_7f1f

    jr nz, jr_0b1_7f61

jr_0b1_7f61:
    rst $38
    nop
    nop
    ccf
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    inc a
    jp $ff0f


    ldh a, [rIE]
    adc b
    ld [hl], a
    jp nz, $f03d

    rrca

jr_0b1_7f76:
    ld a, [$ff05]
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
    db $fc
    db $fc
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
    nop
    rst $38
    rst $38
    rst $38
    nop
    inc d
    nop
    inc d
    nop
    inc d
    nop
    nop
    ld h, l
    add b
    add b
    jr nz, jr_0b1_7f2e

    ld h, h
    ld [bc], a
    push hl
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0b1_7f76

    nop
    pop hl
    nop
    ldh [rP1], a
    nop
    ld bc, $0200
    nop
    ld bc, $6280
    add b
    ld h, d
    add b
    nop
    nop
    ld bc, $0162
    or $ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @-$17

    cp h
    ld b, e
    ld a, h
    add e
    ld a, b
    add a
    add hl, de
    and $1a
    push hl
    inc de
    db $ec
    rst $30
    ld [$08d6], sp
    ld [$0010], sp
    db $10
    ld hl, $ff10
    ldh a, [$7f]
    ld a, a
    jr nz, jr_0b1_7ff2

jr_0b1_7ff2:
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    add c
    nop
    add e
    nop
    db $01
    nop
