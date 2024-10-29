SECTION "ROM Bank $039", ROMX[$4000], BANK[$39]

    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, d
    nop
    ret nz

    nop
    jp nz, $c400

    add b
    add h
    nop
    add h
    add b
    sub h
    add b
    and h
    add b
    add h
    add b
    add h
    add c
    add h
    nop
    adc b
    nop
    cp h
    db $20, $88
    nop
    adc b
    nop
    adc h
    nop
    adc [hl]
    nop
    ld e, b
    nop
    add sp, $00
    jr jr_039_402d

jr_039_402d:
    sbc h
    ld bc, $fc58
    db $fc
    cp $fe
    cp $fe
    cp $ff
    cp $ff
    cp $ff
    db $fc
    db $fd
    db $fc
    ld a, l
    db $fc
    dec [hl]
    db $fc
    dec a
    db $fc
    dec a
    db $fc
    ld [hl], $fc
    ld h, [hl]
    db $fc
    ld [hl], a
    db $fc
    db $76
    db $fc
    db $76
    ld hl, sp+$7a
    ld hl, sp+$7a
    ld hl, sp+$7a
    ld hl, sp+$2a
    ld hl, sp+$7c
    ld hl, sp+$7c
    ld hl, sp+$7c
    ld hl, sp-$24
    pop af
    push bc
    pop af
    ld b, l
    pop af
    pop bc
    pop af
    ld b, c
    pop af
    pop af
    pop af
    ld [hl], c
    pop de
    pop bc
    db $d3
    sub e
    di
    or e
    di
    or e
    db $e3
    add e
    pop hl
    add c
    db $e3
    add e
    db $e3
    sbc e
    ld [c], a
    sbc d
    db $e3
    ld e, e
    db $e3
    ld a, e
    pop hl
    add hl, sp
    db $e3
    inc sp
    pop bc
    ld de, $49c1
    push bc
    dec e
    ret nz

    db $10
    ret nz

    db $10
    pop bc
    ret nc

    rst $00
    ld d, $c7
    inc b
    rst $08
    inc c
    rst $08
    ld c, h
    rst $08
    ld c, h
    rst $08
    ld c, h
    rst $38
    ld a, b
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
    nop
    nop
    ldh [rIE], a
    rst $38
    push bc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    ld l, c
    rst $38
    push hl
    rst $38
    dec d
    rra
    dec d
    rra
    dec d
    rra
    dec d
    rra
    ld de, $131f
    rra
    inc de
    rra
    inc de
    rra
    inc de
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    ld bc, $131f
    rrca
    inc sp
    rrca
    inc de
    cpl
    inc de
    cpl
    ld d, $2f
    ld h, $1f
    jr nz, jr_039_4107

    dec h
    rra
    ld [hl+], a
    rra
    ld [hl], h
    rrca
    inc h
    ld e, a
    ccf
    ld e, a
    rra
    ld a, a
    ld e, $7e
    ld c, [hl]
    ld a, $4a
    ld a, $4e
    ld a, $5e
    ld a, $5e
    cp [hl]
    dec a
    cp $3f
    cp $3f
    cp $3f

jr_039_4107:
    call c, $c003
    inc bc
    ret nz

    daa
    ret nz

    ccf
    db $e4
    rra
    ld hl, sp+$07

jr_039_4113:
    ld hl, sp+$07

jr_039_4115:
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ld hl, sp+$1f
    ld hl, sp+$17
    ld hl, sp-$10
    jr nc, jr_039_4113

    jr nc, jr_039_4115

    db $10
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [rSVBK]
    rra
    ldh [$1f], a
    and $1f
    rst $20
    rra
    rst $28
    rra
    rst $28
    rra
    rst $20
    rra
    db $e3
    ccf
    rst $00
    ccf
    adc $3f
    add $3f
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add c
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
    inc bc
    ld a, a
    add e
    ld a, a
    add e
    ccf
    rst $00
    rra
    rst $20
    rra
    rst $20
    rrca
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
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$e0], a
    ldh [$e0], a

jr_039_4194:
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
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
    ret nz

    add b
    ret nz

    add b
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
    sub b
    ld a, a
    cp b
    ccf
    ld hl, sp-$71
    ld a, b
    rst $08
    ld a, b
    rst $08
    ld a, b
    rst $38
    jr nc, jr_039_4194

    nop
    add a
    ld bc, $0183
    inc bc
    ld bc, $0103
    rlca
    ld bc, $0107
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rrca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rra
    rlca
    rra
    rlca
    rra
    rlca
    ccf
    rlca
    ccf
    rrca
    ld a, a
    rrca
    rst $38
    rrca
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
    rrca
    rst $38
    rrca
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
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    ld hl, sp-$01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $00
    nop
    nop
    nop
    rlca
    ld [$0009], sp
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    nop
    db $10
    ld de, $0012
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_039_4339

    ld a, [de]
    dec de
    inc e
    nop
    dec e
    ld e, $1f
    jr nz, jr_039_434a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_039_434b

    dec de
    add hl, hl
    nop
    ld a, [hl+]
    dec hl
    inc l
    ld a, [hl+]
    dec l

jr_039_4339:
    ld l, $2f
    jr nc, jr_039_436e

    ld [hl-], a
    ld sp, $1a33
    inc [hl]
    dec [hl]
    ld [hl], $2a
    scf
    jr c, @+$3b

    ld a, [hl-]
    dec sp

jr_039_434a:
    inc a

jr_039_434b:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld a, [de]
    ld a, [de]
    ld l, $42
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
    ld a, [de]
    ld a, [de]
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h

jr_039_436e:
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
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
    ld l, $66
    ld h, a
    nop
    nop
    nop
    nop
    nop
    ld l, b
    ld l, c
    ld l, $6a
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, $2e
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld l, $2e
    ld l, $2e
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $79
    ld a, d
    ld a, e
    ld l, $2e
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
    ld a, [de]
    ld a, [hl+]
    add a
    adc b
    ld a, [de]
    adc c
    adc d
    adc e
    adc h
    adc l
    ld a, [de]
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
    ld bc, HeaderLogo
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld b, d
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    jr nz, jr_039_4480

jr_039_4480:
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
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
    ld bc, $0001
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld b, $06
    ld b, $00
    ld b, $06
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld c, $f1
    ld c, $f1
    rrca
    ldh a, [$1f]
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
    db $e3
    rra
    db $e3
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rlca
    ei
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    nop
    inc bc
    ld bc, $0107
    rlca
    adc b
    ld a, a
    sbc h
    ld a, a
    sbc h
    ld a, a
    cp [hl]
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    pop bc
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    ld [c], a
    ld bc, $01e2
    sbc $3f
    sbc $3f
    call z, $de3f
    ccf
    pop hl
    ccf
    push hl
    ccf
    ret


    ld a, a
    ret


    ld a, a
    add [hl]
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
    ld bc, $0300
    nop
    inc bc
    ld bc, $0103
    rlca
    ld bc, $0207
    rrca
    inc bc
    ld c, $03
    rrca
    rlca
    rra
    rlca
    dec e
    rrca
    rra
    rrca
    ccf
    rrca
    ccf
    rra
    ld a, e
    rra
    ld a, e
    ccf
    ld a, a
    cpl
    rst $30
    cpl
    rst $30
    rst $30
    ret nc

    rst $28
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
    ld bc, $01ff
    ld a, a
    rst $38
    ld a, a

jr_039_4613:
    rst $38

jr_039_4614:
    ccf

jr_039_4615:
    rst $38
    ccf

jr_039_4617:
    rst $38
    rra

jr_039_4619:
    rst $38
    rra

jr_039_461b:
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
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_039_4613

    jr nz, jr_039_4615

    jr nz, jr_039_4617

    jr nz, jr_039_4619

    jr nz, jr_039_461b

    or e
    rst $08
    inc sp
    rst $08
    scf
    rst $08
    inc [hl]
    ret z

    inc [hl]
    ret z

    jr nc, jr_039_4614

    inc sp
    rst $08
    inc sp
    rst $08
    inc [hl]
    rst $18
    ld a, [hl-]
    rst $18
    ld sp, $30df
    rst $18
    jr nc, @-$1f

    nop
    rst $38
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
    ld bc, $0300
    ld bc, $0103
    rlca
    inc bc
    dec b
    inc bc
    rlca
    inc bc
    rrca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rra
    rlca
    rra
    rrca
    dec sp
    rra
    cpl
    rra
    ccf
    rra
    ld [hl], a
    rra
    ld a, a
    ccf
    ld a, a
    ld a, [hl]
    cp a
    ld a, $fb
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $fe
    inc c
    cp $0c
    cp $0c
    cp $0c
    db $fc

jr_039_46b1:
    jr @-$02

jr_039_46b3:
    jr jr_039_46b1

jr_039_46b5:
    jr jr_039_46b3

jr_039_46b7:
    jr c, jr_039_46b1

    jr nc, jr_039_46b3

    jr nc, jr_039_46b5

    jr nc, jr_039_46b7

    ld [hl], b
    ld hl, sp+$70
    ldh a, [$60]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh [$c0], a
    rst $20
    rst $00
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_039_470e:
    rst $38
    rra
    ld [hl], b
    sbc a
    ld [hl], a
    jr jr_039_478c

    jr jr_039_470e

    add hl, de
    rst $30
    add hl, de
    rst $30
    add hl, de
    ld [hl], a
    sbc c
    ld [hl], a
    sbc c
    rst $30
    add hl, de
    rst $30
    add hl, de
    rst $30
    add hl, de
    rst $30
    add hl, de

jr_039_4728:
    rst $30
    add hl, de
    rst $30
    add hl, de
    rst $30
    add hl, de
    rst $30
    jr jr_039_4728

    add hl, de
    rst $30
    add hl, de
    rst $30
    dec a
    rst $30
    add hl, sp
    rst $30
    dec a
    rst $30
    dec a
    ei
    dec a
    ei
    dec a
    ei
    dec a
    ei
    dec a
    ei
    ccf
    ei
    ld a, a
    ei
    ld a, a
    ei
    ld a, a
    ei
    ld a, a
    jp $047f


    inc a
    inc b
    ld a, h
    inc d
    ld a, h
    inc [hl]
    db $fc
    inc [hl]
    db $fc
    ld [hl], h
    db $fc
    ld [hl], h
    db $fc
    ld [hl], h
    db $fc
    db $f4
    db $fc
    db $f4
    db $fc
    db $f4
    db $fc
    rst $28
    rst $38
    add sp, -$01
    add sp, -$01
    ldh a, [rIE]
    pop de
    rst $38
    rst $38
    xor [hl]
    pop af
    and b
    pop hl
    ld b, b
    pop hl
    ld b, b
    pop hl
    ld b, b
    pop hl
    ld b, b
    pop bc
    add b
    jp nz, $c280

    add b
    jp nz, $c280

    add b
    add d
    nop
    add d
    nop
    add d
    nop

jr_039_478c:
    add h
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$1000], sp
    nop
    stop
    stop
    stop
    stop
    stop
    ld de, $1f01
    rrca
    ld a, a
    ld e, a
    rst $30
    rst $10
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    push af
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
    rst $38
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    inc b
    rst $38
    rst $38
    ei
    rst $38
    ei
    rra
    dec de
    dec b
    ld bc, $0008
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    inc sp
    inc de
    cpl
    rrca
    ld a, a
    ld e, a
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rrca
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
    ld bc, $fdff
    ccf
    db $fd
    rra
    db $fd
    rst $38
    db $fd
    ccf
    db $fd
    rra
    db $fd
    inc de
    db $fd
    rla
    db $fd
    inc de
    db $fd
    inc de
    db $fd
    inc de
    db $fd
    rla
    db $fd
    inc de
    db $fd
    rla
    db $fd
    di
    db $fd
    inc bc
    db $fd
    di
    db $fd
    rla
    db $fd
    inc de
    db $fd
    rla
    pop af
    rra
    pop af
    rra
    db $fd
    inc de
    db $fd
    rra
    db $fd
    rra
    db $fd
    rra
    db $fd
    ccf
    db $fd
    sbc a
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    cp $ff
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, d
    rst $38
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    ld a, a
    dec a
    ld c, a
    dec c
    ld b, e
    ld bc, $0041
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_039_4926

jr_039_4926:
    jr nz, jr_039_4928

jr_039_4928:
    jr nz, jr_039_492a

jr_039_492a:
    jr nz, jr_039_492c

jr_039_492c:
    jr nz, jr_039_492e

jr_039_492e:
    jr nz, jr_039_4930

jr_039_4930:
    jr nz, jr_039_4932

jr_039_4932:
    jr nz, jr_039_4934

jr_039_4934:
    ld hl, $2301
    inc bc
    daa
    rlca
    ccf
    rra
    ccf
    rra
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
    ei
    db $db
    push af
    push de
    push af
    push de
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
    ccf
    rst $38
    rra
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
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $faff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld l, [hl]
    rst $38
    ld [hl], a
    rst $38
    or a
    rst $38
    or a
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    sbc $ff
    xor $ff
    xor $ff
    rst $28
    rst $38
    rst $28
    ccf
    scf
    rra
    rla
    rra
    rla
    rrca
    rlca
    rlca
    inc bc
    add a
    inc bc
    add a
    inc bc
    add a
    inc bc
    add a
    dec b
    add a
    dec b
    add a
    dec b
    adc a
    dec c
    adc a
    dec c
    ld e, a
    ld e, $7f
    ld a, $7f
    ld a, $ff
    cp [hl]
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
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
    ei
    db $db
    rst $38
    rst $18
    ld a, [$fbda]
    db $eb
    ld a, [$7dea]
    ld l, l
    nop
    nop
    nop
    nop
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

    rst $38
    rst $38
    jp Jump_000_07ff


    rst $38
    rst $38
    rst $38
    dec de
    rst $38
    rst $20
    rst $38
    rlca
    rst $38
    ld bc, $07ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ret nz

    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ldh [rIE], a
    rst $28
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    ld a, e
    rst $38
    ld a, e
    rst $38
    cp h
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    sbc $ff
    sbc $ff
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    cp a
    xor a
    rst $38
    rst $28
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
    ld sp, hl
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
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
    ldh a, [rIE]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    rra
    db $e3
    rra
    rst $20
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    nop
    ldh [rNR10], a
    ldh a, [$f0]
    ld hl, sp+$10
    db $fc
    db $10
    db $fc
    ldh a, [$fe]
    ld [de], a
    rst $38
    db $10
    rst $38
    ld hl, sp-$01
    inc e
    rst $38
    ld e, $ff
    cp $ff
    rra
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    cp $c0
    rst $30
    pop bc
    pop af
    ret nz

    push af
    ldh [rIE], a
    ld [hl], l
    cp $74
    rst $38
    cp d
    rst $38
    cp c
    rst $38
    cp l
    rst $38
    sbc $ff
    sbc $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, [hl]
    rst $38
    cp [hl]
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
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
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp-$80
    ld hl, sp+$40
    db $fc
    ld b, b
    cp $a0
    ld a, a
    or b
    ld a, a
    ld e, b
    cp a
    xor h
    rst $18
    db $e4
    ld e, a
    cpl
    ld bc, $10b7
    sub a
    nop
    res 0, b
    db $ed
    ld b, h
    push af
    ld h, b
    or $24
    ei
    sub d
    db $fd
    ret c

    cp $ea
    cp $ec
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
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
    ccf
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

jr_039_4c6a:
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
    ccf
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
    nop
    nop
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
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [$80]
    ld hl, sp-$80
    db $fc
    ret nz

    cp $e0
    cp $f0
    rst $38
    ldh a, [$7f]
    ld a, a
    rlca
    cp a
    inc bc
    rst $18
    add c
    ld e, a
    ld b, b
    rst $28
    ret nz

    rst $30
    ldh [rPCM34], a
    jr nc, jr_039_4c6a

    or b
    rst $18
    ret c

    rst $28
    ld l, h
    rst $38
    ld a, $ff
    cp d
    rst $38
    rst $18
    rst $38
    xor $ff
    rst $28
    rst $38
    rst $30
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp-$80
    db $fc
    ret nz

    db $fc
    ld h, b
    rst $38
    rst $38
    rra
    rst $38
    rrca
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ret nz

    sbc $46
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
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
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
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
    inc b
    inc b
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ld a, [c]
    rrca
    rst $30
    rrca
    or $0f
    or $0f
    or $0f
    ld a, [c]
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $28
    ld b, $c4
    nop
    add h
    nop
    add d
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    add e
    nop
    add a
    nop
    rst $08
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
    ld bc, $01ff
    rst $38
    inc bc
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    cp $07
    cp $07
    cp $07
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
    cp $0f
    cp $0f
    cp $0f
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    rrca
    ld hl, sp+$0f
    cp $0f
    rst $38
    rra
    cp $1f
    cp $1f
    rst $38
    rra
    cp $1f
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    add sp, $1f
    call c, $d03f
    ccf
    ld hl, sp+$3f
    ret c

    ccf
    ld hl, sp+$3f
    ld hl, sp-$01
    ld a, b
    ld a, c
    jr nc, jr_039_4eb4

    jr nc, jr_039_4eb6

    jr nc, jr_039_4eb8

    jr nc, jr_039_4ebc

    jr nc, jr_039_4ec0

    jr nc, jr_039_4ebe

    jr nz, jr_039_4eba

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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]

jr_039_4eb4:
    ldh a, [$6f]

jr_039_4eb6:
    ldh a, [$9f]

jr_039_4eb8:
    ldh a, [$1f]

jr_039_4eba:
    ld hl, sp+$0f

jr_039_4ebc:
    ld hl, sp+$0f

jr_039_4ebe:
    ld hl, sp+$0f

jr_039_4ec0:
    ld hl, sp+$0f
    add sp, $1f
    add sp, $1f
    add sp, $1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$3f], a
    ldh a, [$3f]
    ld hl, sp+$7f
    ldh a, [$7f]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $03
    ld [bc], a
    ld bc, $0102
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    ld [$f007], sp
    rrca
    ret nc

    ld a, a
    ldh a, [$7f]
    sub b
    ld a, a
    ldh [$7f], a
    and b
    ld a, a
    and b
    ld a, a
    ldh [$7f], a
    and b
    ld a, a
    ldh [$7f], a
    ld hl, sp+$7f
    ldh a, [rIE]
    ldh a, [$71]
    ldh a, [$74]
    ldh a, [rSVBK]
    ldh a, [$74]
    ldh a, [$72]
    ldh [$74], a
    ldh [rOCPS], a
    ldh [$64], a
    ldh [$f4], a
    ldh [$f2], a
    ldh [$f8], a
    ldh a, [$f8]
    ldh a, [$fc]
    ldh a, [$f8]
    ldh a, [$fc]
    ldh a, [$f8]
    ret c

    db $fc
    ret nc

    ld hl, sp-$30
    ldh a, [$e0]
    ld hl, sp-$40
    ldh [$e0], a
    ldh a, [$c0]
    add sp, -$20
    ldh a, [$c0]
    add sp, -$1f
    pop af
    add c
    jp hl


    add b
    ret nc

    add b
    ret nc

    add d
    jp nz, $d080

    ret nz

    ldh a, [$82]
    ld [c], a
    add b
    ret nz

    add d
    jp nz, $e2c2

    nop
    ret nz

    nop
    and b
    nop
    add b
    nop
    ret nz

    inc b
    add h
    add h
    call nz, $c404
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0081
    nop
    ld de, $0011
    nop
    ld de, $1010
    db $10
    ld [de], a
    ld [de], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    rlca
    ld b, [hl]
    daa
    ld h, $27
    ld h, h
    rlca
    dec b
    rlca
    ld b, $03
    nop
    ld bc, $4601
    ld b, [hl]
    ld b, [hl]
    ld b, b
    ld c, a
    ld c, c
    rst $38
    rst $38
    pop bc
    pop bc
    jp $c1c3


    pop bc
    push bc
    push bc
    jp $d1c3


    pop de
    push bc
    push bc
    jp $85c3


    add l
    add c
    add c
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0901
    add hl, bc
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $c101
    ld bc, $01a1
    pop hl
    ld bc, $01e1
    pop bc
    ld bc, $01c1
    add c
    ld bc, $0141
    pop bc
    ld bc, $01c1
    pop bc
    ld bc, $01c1
    add c
    ld bc, $01c1
    ld b, c
    ld bc, $0101
    add c
    ld bc, $0181
    add c
    ld bc, $0101
    ld bc, $8101
    ld bc, $0081
    nop
    inc bc
    inc bc
    ld bc, $0300
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0300
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    rlca
    dec b
    rlca
    inc b
    rlca
    dec b
    rrca
    inc c
    ld c, a
    ld c, h
    rrca
    ld c, $09
    add hl, bc
    rlca
    rlca
    rlca
    inc bc
    rlca
    rlca
    add hl, bc
    add hl, bc
    ld bc, $8f01
    adc a
    sbc a
    sbc a
    dec de
    dec de
    rra
    rra
    rla
    rla
    rra
    rra
    rrca
    inc bc
    rra
    rla
    rra
    inc de
    rra
    dec b
    ld c, $06
    ld c, $0a
    inc c
    inc c
    nop
    nop
    ld [bc], a
    ld [bc], a
    jr nz, jr_039_5062

    ld c, $0e
    ld e, $12
    inc e
    inc d
    add hl, de
    add hl, de
    dec d
    dec d
    ld d, c
    ld d, c
    add hl, bc
    add hl, bc
    dec e
    dec e
    inc a
    inc [hl]
    ccf
    dec hl
    rst $38
    rst $10
    rst $38
    add e
    ld a, a
    rla
    ld a, a
    ld c, a
    ld [hl], e
    ld b, e
    rst $30
    rst $20

jr_039_5062:
    or a
    or a
    cp l
    dec a
    xor c
    add hl, hl
    and l
    and l
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $a9a9
    dec a
    dec a
    ld sp, hl
    reti


    ld sp, hl
    add hl, bc
    ld sp, hl
    xor c
    ld sp, hl
    add hl, de
    ld sp, hl
    xor c
    ld sp, hl
    add hl, bc
    ld sp, hl
    add hl, hl
    pop af
    sub c
    di
    inc sp
    pop af
    ld d, c
    di
    inc sp
    rst $00
    rst $00
    rla
    rla
    ld [hl], a
    ld d, a
    rst $30
    rst $30
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
    ld b, $07
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
    ld bc, $0a09
    dec bc
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
    inc c
    dec c
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    ld [$1110], sp
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $00
    nop
    nop
    nop
    nop
    rla
    jr @+$1b

    ld a, [de]
    dec de
    ld [$0808], sp
    ld [$0808], sp
    inc e
    dec e
    ld e, $1f
    jr nz, jr_039_510d

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld [$0808], sp
    ld [$0808], sp
    ld [$2726], sp
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $08
    ld [$302f], sp
    ld sp, $0808
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_039_510d:
    jr c, jr_039_5148

    ld a, [hl-]
    dec sp
    ld [$0808], sp
    ld [$0808], sp
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
    ld [$0808], sp
    ld [$4708], sp
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    nop
    ld d, b
    ld d, c
    ld d, d
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_039_5148:
    ld e, l
    ld [$5e08], sp
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, e
    ld h, h
    ld [$6665], sp
    ld h, a
    ld l, b
    ld l, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, d
    ld [$6b08], sp
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld [hl], b
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld [$0808], sp
    ld [$7f08], sp
    add b
    add c
    add d
    add e
    add h
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$083c], sp
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0108], sp
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    ld b, b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0001
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

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
    ldh a, [rIE]
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
    cp $ff
    cp $fe
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
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
    inc b
    rst $38
    inc b
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
    jr nz, @+$01

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
    nop
    rst $38
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

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    cp $ff
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
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    ld a, [bc]
    rlca
    ld sp, $400f
    ccf
    ld b, c
    cp a
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ld b, b
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
    ld bc, $0300
    ld [bc], a
    rlca
    ld [bc], a
    rrca
    ld [hl], $3f
    ld bc, $ff7f
    db $fc
    ld a, a
    ld a, [hl]
    cp a
    cp h
    cp a
    and b
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
    rlca
    rst $38
    rrca
    ei
    dec de
    db $fd
    inc a
    rst $38
    ld a, [hl]
    cp a
    cp l
    ld a, a
    ld [hl], e
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
    ldh [rIF], a
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
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
    ld bc, $0300
    nop
    rlca
    add hl, bc
    rlca
    ld bc, HeaderManufacturerCode
    ld a, a
    rlca
    ei
    rlca
    rst $38
    rrca
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
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    cp $02
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, $ff
    inc a
    rst $38
    ld [hl], c
    rst $38
    db $d3
    rst $38
    ld b, a
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    ccf
    ret nz

    ccf
    ldh a, [$3f]
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    nop
    rra
    inc e
    inc bc
    ld [bc], a
    dec e
    nop
    rra
    nop
    rra
    nop
    rra
    ld [$0f07], sp
    nop
    ld [$0e0f], sp
    rrca
    ld bc, $000f
    rrca
    nop
    rlca
    inc b
    rlca
    nop
    rlca
    ld bc, $0706
    rlca
    rlca
    nop
    inc bc
    nop
    inc bc
    ld bc, $0001
    ld bc, $0103
    ld b, $09
    ld c, $11
    ld a, $00
    ld a, a
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    xor a
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
    ld bc, $08ff
    rst $38
    ld bc, $03ff
    rst $38
    inc b
    rst $38
    dec c
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, l
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $18
    ld a, h
    inc a
    ei
    ld a, e
    rst $30
    rst $30
    rst $30
    rst $30
    rst $28
    rst $28
    rst $28
    xor $df
    db $dd
    cp $fa
    db $fc
    ld hl, sp-$04
    db $f4
    ld hl, sp-$18
    ld hl, sp-$28
    db $fd
    cp l
    rst $38
    ld a, a
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
    ret nz

    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    db $fd
    db $fd
    ld a, a
    ld a, a
    ld [$ffea], a
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    ei
    ei
    ld e, $1e
    ld sp, hl
    cp c
    cp $8e
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $28
    rst $28
    ld hl, sp+$08
    rrca
    nop
    nop
    nop
    ldh [rP1], a
    db $ec
    nop
    ccf
    nop
    inc bc
    nop
    nop
    nop
    ldh [rP1], a
    ld e, $00
    ld bc, $8000
    nop
    ldh a, [rP1]
    adc a
    nop
    add b
    nop
    ret nz

    nop
    ld hl, sp+$00
    rst $00
    nop
    rst $38
    rst $18
    ld a, a
    ld e, a
    rst $38
    rst $18
    rst $38
    jp $d8fb


    ldh a, [$b0]
    jp hl


    ld l, c
    db $e3
    db $e3
    jp $cfc3


    rst $08
    rst $38
    cp $ff
    db $fd
    cp a
    cp e
    ld a, a
    ld [hl], a
    rst $38
    rst $28
    rst $38
    rst $18
    cp $de
    ld hl, sp-$48
    di
    ld [hl], e
    rst $20
    rst $20
    rst $08
    rst $08
    sbc a
    sbc [hl]
    ccf
    dec a
    ld a, a
    ld a, e
    rst $38
    rst $30
    rst $38
    rst $28
    cp $de
    db $fc
    cp h
    ld hl, sp-$48
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
    rst $38
    ld h, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIF]
    nop
    rlca
    ld [$9c03], sp
    di
    ld a, h
    xor e
    ld a, h
    db $db
    inc a
    ei
    inc a
    db $eb
    inc e
    db $eb
    inc e
    db $eb
    inc e
    db $e3
    inc e
    db $e3
    inc e
    rst $30
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
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $18
    nop
    ld e, a
    nop
    and b
    and b
    db $fc
    db $fc
    rlca
    rlca
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    or l
    or l
    ld a, e
    ld a, e
    adc a
    adc a
    db $e4
    db $e4
    rst $38
    cp a
    rst $38
    cp $ff
    cp $ff
    rst $18
    rst $38
    rst $38
    ld l, a
    ld l, a
    sub a
    rla
    ld a, c
    ld bc, $0007
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld a, a
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    rrca
    nop
    nop
    nop
    nop
    nop
    ei
    inc bc
    rlca
    nop
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    add a
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    pop bc
    rst $38
    sbc $ff
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
    cp $fa
    ld a, h
    ld [hl], h
    ld a, l
    ld l, l
    cp $de
    cp $be
    db $fd
    ld a, l
    ei
    ld a, e
    rst $30
    rst $30
    rst $08
    rst $08
    db $d3
    db $d3
    or l
    or l
    cpl
    ld l, $1f
    ld e, $3f
    dec a
    ld a, a
    ld a, e
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    cp $fe
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    pop af
    ld c, $fe
    ld bc, $fe01
    ld a, a
    ld a, a
    sub a
    sub a
    rst $38
    rst $38
    rra
    inc e
    add c
    add c
    ld hl, sp+$58
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [$7f], a
    ld a, b
    rst $38
    ld a, $3f
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $f301
    inc bc
    rrca
    nop
    rrca
    rrca
    ccf
    ccf
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    rst $38
    add a
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    ccf
    rst $38
    jp $fcff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ldh [rIE], a
    rst $18
    rst $28
    xor a
    rst $28
    ld l, a
    sub a
    sub a
    and e
    and e
    adc a
    adc a
    ld c, a
    ld c, a
    adc a
    adc [hl]
    rra
    ld e, $3f
    dec a
    ld a, a
    ld a, e
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    cp $de
    cp $be
    db $fc
    ld a, h
    db $fd
    db $fd
    db $fc
    db $fc
    cp a
    cp a
    cp a
    cp a
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
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    nop
    nop
    ld hl, sp-$08
    ld a, a
    rst $38
    rrca
    rst $38
    inc bc
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
    add b
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    add c
    ccf
    jr nz, @+$01

    inc a
    rst $38
    nop
    rst $38
    nop
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
    db $10
    rst $38
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    add e
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    jp $fcff


    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    jp $fcff


    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    pop bc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $28
    rst $38
    rst $18
    cp $de
    ld sp, hl
    cp c
    ld sp, hl
    ld a, c
    db $e3
    db $e3
    db $e3
    db $e3
    rst $20
    rst $20
    add a
    add a
    adc a
    adc [hl]
    rra
    ld e, $3f
    dec a
    ccf
    dec sp
    ld a, a
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    nop
    rst $38
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
    add b
    ld a, a
    add b
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
    ldh [rLCDC], a
    rst $38
    sub a
    rst $38
    ld l, e
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
    nop
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

    ld [$10ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    pop bc
    rst $38
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    pop hl
    rst $38
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    pop hl
    rst $38
    cp $ff
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
    rlca
    rst $38
    ld hl, sp-$01
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    cp a
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
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
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
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add e
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    cp $ee
    db $fd
    db $ed
    ld hl, sp-$28
    ld hl, sp-$48
    ld sp, hl
    cp c
    di
    ld [hl], e
    rst $30
    ld [hl], a
    rst $20
    rst $20
    rst $08
    rst $08
    sbc a
    sbc a
    rst $18
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
    add b
    ldh a, [rIE]
    rst $38
    rst $38
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
    rlca
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    pop bc
    rst $38
    cp $ff
    cp $7f
    ld a, l
    rst $38
    db $fd
    ld a, a
    ld a, e
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    cp $ee
    db $fc
    call c, $ddfd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$fc]
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    jp $fcff


    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    jp $fcff


    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add a
    rst $38
    ld hl, sp-$01
    cp $ff
    ld a, [hl]
    rst $38
    add [hl]
    rst $38
    ld hl, sp-$01
    cp $ff
    db $fc
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    db $fd
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$41
    cp b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld bc, $01ff
    rst $38
    ld bc, $f10f
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
    ld [bc], a
    cp $06
    cp $06
    cp $06
    cp $06
    cp $04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$00
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [rIE], a
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
    ld bc, $01ff
    rst $38
    ld bc, $03ff
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
    cp $0e
    cp $0e
    cp $0e
    cp $1e
    cp $1e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc a
    db $fc
    inc a
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
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
    add b
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
    ldh a, [rIE]
    cp $ff
    rst $38
    cp $1e
    cp $1e
    cp $1e
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    inc a
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    inc bc
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
    dec b
    ld [bc], a
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    rrca
    ld [bc], a
    db $10
    ld de, $1312
    ld [bc], a
    inc d
    dec d
    ld d, $17
    jr jr_039_5bd4

    ld a, [de]
    dec de
    inc e
    dec e
    ld [bc], a
    db $10
    ld e, $1f
    jr nz, jr_039_5bc7

    ld [bc], a
    ld [bc], a

jr_039_5bc7:
    ld [bc], a
    ld [bc], a
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_039_5bfb

    inc c
    ld a, [hl+]

jr_039_5bd4:
    dec hl
    inc l
    inc l
    dec l
    ld l, $2f
    jr nc, jr_039_5be6

    ld sp, $3332
    inc [hl]
    ld [bc], a
    nop
    nop
    dec [hl]
    ld [hl], $37

jr_039_5be6:
    jr c, jr_039_5c21

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld [bc], a
    ld b, d
    nop
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_039_5bfb:
    ld c, e
    ld c, h
    ld c, h
    ld c, l
    ld c, [hl]
    ld [bc], a
    ld c, a
    nop
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

jr_039_5c21:
    ld l, [hl]
    ld l, a
    ld [bc], a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld l, [hl]
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld l, [hl]
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld [bc], a
    add b
    add c
    ld l, [hl]
    ld l, [hl]
    add d
    add e
    add h
    add l
    add [hl]
    ld l, [hl]
    add a
    ld [bc], a
    adc b
    adc c
    adc d
    adc e
    ld [bc], a
    adc h
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    adc l
    adc [hl]
    adc a
    sub b
    ld l, [hl]
    ld l, [hl]
    sub c
    sub d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    sub e
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    sub h
    sub l
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    sub [hl]
    sub a
    sbc b
    sbc c
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    sbc d
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
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
    inc bc
    nop
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
    nop
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
    nop
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
    nop
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld hl, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    jr nz, jr_039_5d1d

jr_039_5d1d:
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    inc bc
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
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
    nop
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
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
    rst $38
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

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$08
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    add b
    db $fc
    add b
    cp $80
    cp $80
    cp $80
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
    ldh [$fe], a
    pop hl
    cp $e1
    cp $e1
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$09
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
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    cp $01
    cp $01
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    ld a, a
    add a
    ld a, a
    add a
    scf
    rst $08
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
    rra
    rst $38
    ccf
    rst $38
    inc sp
    ccf
    ccf
    ccf
    ld [hl], a
    ld a, a
    ld a, a
    ld a, a
    ld e, a
    ld a, a
    rst $08
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $38
    ld [hl], b
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add $ff
    jp nz, $82ff

    rst $38
    add d
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $1bff
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    inc sp
    rst $38
    inc de
    rst $38
    ld [hl], a
    rst $38
    scf
    rst $38
    ld b, a
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
    ldh [rIE], a
    ldh [$7f], a
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
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    ld a, h
    ccf
    ld a, h
    ccf
    ld a, h
    rra
    ld a, h
    rra
    ld a, h
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, [hl]
    rra
    ld a, b
    rra
    ld a, b
    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ccf
    ccf
    cpl
    ccf
    ld l, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    db $dd
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38
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
    rla
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld e, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
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
    sbc a
    ldh [rIE], a
    add b
    rst $38
    add b
    add d
    adc [hl]
    add a
    rrca
    add a
    rla
    adc h
    inc e
    add a
    cpl
    add e
    dec bc
    add b
    inc l
    add b
    cpl
    add b
    cpl
    add b
    rra
    add b
    rrca
    add b
    rrca
    add b
    dec c
    jp nc, $d253

    ld d, d
    sub $56
    rst $30
    ld [hl], a
    rst $30
    scf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $18
    dec de
    rst $18
    ld a, a
    rst $18
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    cpl
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, [hl+]
    rst $38
    dec l
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    add hl, hl
    rst $38
    jr nz, @+$01

    inc e
    rst $38
    ld l, $ff
    rra
    rst $38
    dec c
    rst $38
    nop
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    cp l
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, e
    db $fc
    ld a, b
    db $f4
    ld [hl], b
    db $f4
    ld [hl], b
    db $e4
    ld h, b
    call nz, $c440
    ret nz

    add h
    add b
    add h
    add b
    add h
    add b
    add h
    add b
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    add h
    add b
    add h
    add b
    call nz, $e4c0
    ldh [$f4], a
    ldh a, [$f8]
    ldh a, [$fc]
    db $f4
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
    rst $30
    rst $38
    rst $30
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    cp a
    cp $01
    db $dd
    ld [hl+], a
    inc bc
    rlc a
    ld c, a
    add a
    rst $10
    adc l
    sbc l
    add l
    rst $10
    ld bc, $00f9
    db $fc
    nop
    sbc $00
    ld [hl], b
    nop
    cp [hl]
    nop
    call c, $c800
    nop
    ret z

    inc bc
    jp $0303


    rla
    rla
    or a
    or [hl]
    db $fd
    rst $38
    ld sp, hl
    ld sp, hl
    ld sp, hl
    cp c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    sbc $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    xor $ff
    xor c
    rst $38
    rst $28
    rst $38
    or a
    rst $38
    rst $08
    rst $38
    sbc $ff
    ld c, b
    rst $38
    ld c, b
    rst $38
    adc [hl]
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    sbc $fc
    call c, $e0f1
    pop de
    ret nz

    sub c
    add b
    ld de, $1100
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    ld [$0800], sp
    nop
    adc b
    add b
    ret z

    ret nz

    ld hl, sp-$10
    db $fc
    db $f4
    cp $f6
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $30
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
    nop
    nop
    nop
    nop
    xor $fe
    cp $fe
    cp $fe
    ld c, $fe
    ld b, $fe
    ld c, $fe
    adc $3e
    ld b, [hl]
    cp [hl]
    ld b, [hl]
    cp [hl]
    ld e, $ee
    ld b, [hl]
    cp [hl]
    and $1e
    sbc $2e
    sbc $2e
    ld b, $fe
    xor $1e
    add $3e
    adc $3e
    adc $3e
    adc [hl]
    ld a, [hl]
    ld c, $fe
    ld c, $fe
    ld c, $fe
    ld c, $fe
    adc [hl]
    cp $8e
    cp $86
    cp $86
    cp $06
    cp $0e
    cp $0e
    cp $0e
    cp $0e
    cp $0e
    cp $0e
    cp $0e
    cp $0f
    rst $38
    xor a
    rst $38
    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ldh a, [rIE]
    ret nc

    rst $38
    ld e, b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ld l, h
    rst $38
    ld l, h
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    or a
    rst $38
    cp e
    rst $38
    db $db
    rst $38
    db $dd
    ld a, [$f2d8]
    ret nc

    pop de
    ret nz

    sub c
    add b
    ld de, $1000
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    inc b
    nop
    add h
    nop
    add h
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    add c
    nop
    add c
    nop
    ld b, c
    nop
    ld b, c
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
    nop
    ld b, b
    nop
    jr nz, jr_039_638c

jr_039_638c:
    jr nz, jr_039_638e

jr_039_638e:
    jr nz, jr_039_6390

jr_039_6390:
    jr nz, jr_039_6392

jr_039_6392:
    jr nz, jr_039_6394

jr_039_6394:
    jr nz, jr_039_6396

jr_039_6396:
    jr nz, jr_039_6398

jr_039_6398:
    stop
    stop
    stop
    stop
    stop
    sub b
    add b
    ret nc

    ret nz

    ldh a, [$e0]
    ld hl, sp-$10
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    inc bc
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
    cp $3f
    cp $3f
    cp $7f
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
    ld hl, sp-$02
    ld hl, sp-$02
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh [$f8], a
    ldh [$f0], a
    ret nz

    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$82]
    ldh [$87], a
    rra
    rst $20
    rra
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [$1f], a
    rst $20
    rra
    ld [c], a
    rra
    ld [c], a
    rra
    rst $20
    ldh [$08], a
    ldh [$0a], a
    ldh [rTMA], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh a, [$80]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    db $fc
    ret nz

    cp $e0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$7f], a
    ldh [$7f], a
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    db $f4
    db $fc
    cp $fe
    ei
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    cp $ff
    cp $fc
    rst $38
    rst $38
    add b
    ld a, a
    nop
    ccf
    nop
    ccf
    ld bc, $021f
    rra
    ld bc, $010f
    adc a
    ld bc, $0087
    add a
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld c, e
    nop
    dec h
    nop
    dec h
    nop
    stop
    stop
    stop
    ld [$0800], sp
    nop
    ld [$0400], sp
    nop
    add h
    nop
    add h
    nop
    add d
    nop
    add d
    nop
    add d
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld b, b
    nop
    jr nz, jr_039_648e

jr_039_648e:
    jr nz, jr_039_6490

jr_039_6490:
    jr nz, jr_039_6492

jr_039_6492:
    jr nz, jr_039_6494

jr_039_6494:
    stop
    stop
    stop
    stop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    add d
    add b
    ld a, [c]
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ld b, b
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
    ld sp, hl
    ld b, $f8
    rlca
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
    ret nz

    ret nz

    ld b, b
    ret nz

    and b
    ld h, b
    ldh a, [$30]
    ld d, b
    or b
    adc b
    ld hl, sp+$0c
    db $fc
    inc b
    db $fc
    ld [bc], a
    cp $03
    rst $38
    sub c
    rst $38
    rst $38
    or $fe
    ld a, d
    rst $38
    ld a, e
    cp $5e
    rst $38
    cpl
    rst $38
    sbc a
    db $fd
    db $10
    rst $38
    ld c, e
    rst $38
    add hl, hl
    ld a, a
    dec [hl]
    ld a, a
    inc b
    ccf
    ld d, $3f
    ld a, [bc]
    rra
    ld a, [bc]
    rra
    dec bc
    rrca
    ld bc, $050f
    rlca
    nop
    rlca
    ld [bc], a
    inc bc
    ld bc, $0103
    add c
    nop
    add c
    nop
    add c
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_039_6578

jr_039_6578:
    jr nz, jr_039_657a

jr_039_657a:
    jr z, jr_039_657c

jr_039_657c:
    inc d
    nop
    stop
    stop
    ld [$0800], sp
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
    nop
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
    ldh a, [$1f]
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
    nop
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
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    dec b
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
    ld a, a
    add b
    ld a, a
    add b

jr_039_65e8:
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$03]
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
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    jr nz, jr_039_65e8

    and b
    ld h, b
    ldh a, [$30]
    ld a, b
    sbc b
    jr z, jr_039_65e8

    sbc h
    db $ec
    ld d, $ee
    ld e, $e6
    dec de
    rst $20
    xor l
    di
    add a
    ld sp, hl
    jp nc, $c1fd

    cp $ff
    sbc a
    rst $38
    cp e
    rst $38
    rst $08
    rst $38
    db $dd
    ei
    db $e3
    rst $38
    and $fd
    pop af
    cp $72
    rst $38
    add hl, de
    rst $38
    add hl, bc
    ld a, a
    inc l
    ld a, a
    dec e
    ccf
    ld e, $3f
    ld c, $1f
    rrca
    rra
    inc bc
    rrca
    ld bc, $010f
    rlca
    inc bc
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    db $fc
    inc bc
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ld c, h
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    ldh [$30], a
    ldh a, [$30]
    ldh a, [rNR23]
    ld hl, sp+$0c
    db $fc
    inc c
    db $fc
    add [hl]
    cp $a7
    rst $38
    rst $38
    xor h
    ld a, a
    inc h
    cp a
    sbc d
    cp a
    add hl, sp
    rst $38
    ld l, c
    rst $38
    or h
    rst $28
    ld h, h
    rst $30
    ld d, d
    rst $30
    sub [hl]
    ei
    adc c
    ei
    ld c, e
    db $fd
    call nc, $60fc
    cp $22
    rst $38
    ld de, $19ff
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
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
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
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
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$08
    db $fc
    db $fc
    ld l, [hl]
    cp $76
    cp $bf
    rst $38
    ccf
    rst $38
    rst $18
    ld a, a
    rst $18
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
    nop
    nop
    nop
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
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    ld b, $07
    ld [$0000], sp
    nop
    add hl, bc
    ld a, [bc]
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    inc c
    dec c
    nop
    nop
    ld c, $0f
    nop
    nop
    nop
    db $10
    inc bc
    inc bc
    inc bc
    ld de, $1312
    inc d
    nop
    nop
    nop
    nop
    dec d
    ld d, $00
    nop
    rla
    inc bc
    inc bc
    jr jr_039_6806

    ld a, [de]
    dec de
    inc e
    nop
    nop
    dec e
    nop
    nop
    ld e, $00
    nop
    rra
    jr nz, jr_039_681c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_039_682c

    nop
    ld a, [hl+]
    dec hl

jr_039_6806:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_039_683d

    ld [hl-], a
    inc sp
    inc bc
    inc bc
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_039_684f

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_039_681c:
    ld b, b
    inc bc
    inc bc
    inc bc
    ld b, c
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

jr_039_682c:
    ld c, l
    inc bc
    inc bc
    inc bc
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

jr_039_683d:
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc

jr_039_684f:
    inc bc
    ld h, a
    ld l, b
    nop
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    inc bc
    inc bc
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
    nop
    sub c
    inc bc
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    nop
    nop
    nop
    nop
    sbc e
    sbc h
    inc bc
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    nop
    nop
    nop
    nop
    nop
    and e
    and h
    and l
    inc bc
    inc bc
    and [hl]
    and a
    xor b
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    xor c
    xor d
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
    xor e
    xor h
    xor d
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    and e
    xor l
    xor [hl]
    and l
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
    nop
    nop
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
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0606
    ld b, $06
    ld b, $04
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0605
    ld b, $06
    inc b
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld b, $07
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    dec b
    dec b
    dec b
    nop
    ld b, $07
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    inc b
    nop
    nop
    ld b, $07
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    inc b
    inc b
    nop
    nop
    ld b, $06
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    ld b, $06
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    nop
    ld [bc], a
    inc b
    inc b
    nop
    nop
    ld b, $06
    rlca
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $00
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    ld b, $06
    nop
    nop
    nop
    ld bc, $0001
    ld b, $06
    ld b, $06
    ld b, $06
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld b, $01
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
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
    ld a, a
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $fffe
    nop
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    rrca
    ldh a, [$03]
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
    ld bc, $03ff
    rst $38
    ld bc, $03ff
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
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
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
    rra
    ldh [$03], a
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
    ld bc, $01ff
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    pop af
    rrca
    rst $30
    rrca
    rst $28
    rra
    rst $28
    rra
    rst $18
    ccf
    rst $08
    ccf
    rrca
    rst $38
    ld e, $ff
    rra
    cp $1c
    rst $38
    jr c, @+$01

    jr c, @+$01

    ld [hl], h
    ei
    ld [hl], b
    rst $38
    ld sp, hl
    rst $30
    pop hl
    rst $38
    pop hl
    rst $38
    jp $e3ff


    rst $18
    and a
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
    add b
    nop
    ldh [rP1], a
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
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    pop af
    rrca
    pop af
    rrca
    db $e3
    rra
    db $e3
    rra
    rst $00
    ccf
    adc $3f
    adc a
    ld a, [hl]
    adc h
    ld a, a
    inc e
    rst $38
    dec sp
    db $fd
    ld a, c
    rst $38
    ld [hl], a
    ei
    ld [hl], e
    rst $38
    di
    rst $38
    rst $20
    rst $38
    rst $10
    rst $28
    rst $08
    rst $38
    xor a
    rst $18
    sbc a
    rst $38
    ld e, a
    cp a
    ccf
    rst $38
    cp a
    ld a, a
    ld e, a
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
    rst $18
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0100
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
    cp $01
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    pop af
    rrca
    db $e3
    rra
    db $e3
    rra
    add $3f
    rst $00
    ld a, $8d
    ld a, [hl]
    adc l

jr_039_6c2b:
    ld a, [hl]
    ld a, [de]
    db $fd
    jr @+$01

    inc [hl]
    ei
    jr c, jr_039_6c2b

    ld l, c
    rst $30
    pop de
    rst $28
    db $d3
    rst $28
    jp $a6ff


    rst $18
    and [hl]
    rst $18
    ld c, a
    cp a
    rrca
    rst $38
    rra
    rst $38
    ccf
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
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    dec a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [rIF]
    ldh [$1f], a
    ld h, b
    rra
    ld h, b
    rra
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_039_6c9c

jr_039_6c9c:
    ld a, $00
    ld [hl], c
    ld c, $a8
    ld d, h
    ld e, b
    and b
    ld [$5cf0], sp
    and b
    ld h, [hl]
    sbc b
    and h
    ld b, b
    ret nz

    nop
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
    ld bc, $0300
    nop
    rlca
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld bc, $0300
    nop
    inc bc
    ld bc, $0107
    ld b, $03
    rrca
    inc bc
    rrca
    rlca
    rra
    rlca
    jr nc, jr_039_6d01

    ld h, b
    rra
    ldh [$1f], a
    pop bc
    ld a, $c5
    ld a, $8a
    ld a, l
    adc d
    ld a, l
    ld d, $f9
    inc b

jr_039_6d01:
    ei
    dec c
    di
    add hl, hl
    rst $30
    ld a, e
    rst $20
    db $d3
    rst $28
    rst $20
    rst $18
    and a
    rst $18
    ld l, a
    sbc a
    ld c, a
    cp a
    rst $08
    ccf
    sub a
    ld a, a
    cp a
    ld a, a
    scf
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
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    and b
    rra
    ldh [$1f], a
    ldh [$e0], a
    ret nz

    ret nz

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
    cp $01
    cp $01
    cp $01
    ld a, [hl]
    ld bc, $017e
    ld a, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld c, $01
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
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld e, $01
    inc e
    inc bc
    inc a
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ld c, $01
    ld e, $01
    inc e
    inc bc
    dec e
    inc bc
    add hl, sp
    rlca
    add hl, sp
    rlca
    ld [hl-], a
    rrca
    db $76
    rrca
    ld h, l
    rra
    ld b, h
    ccf
    jp nz, $803f

    ld a, a
    add h
    ld a, e
    ld hl, $29ff
    rst $30
    inc hl
    rst $38
    ld d, e
    rst $28
    ld d, a
    rst $28
    daa
    rst $18
    daa
    rst $18
    ld c, a
    cp a
    ld c, a
    cp a
    sbc a
    ld a, a
    sbc a
    ld a, a
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
    nop
    cp [hl]
    ld bc, $017e
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
    ldh [$1f], a
    ldh [$1f], a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ccf
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
    ld bc, $03ff
    rst $38
    dec b
    rst $38
    ld b, $ff
    dec c
    rst $38
    dec e
    rst $38
    dec bc
    rst $38
    dec hl
    rst $38
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $0180
    add b
    ld bc, $01c0
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    rst $00
    rlca
    ret nz

    nop
    ret nz

    nop
    ldh [$38], a
    ldh [$7f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    db $fc
    db $fc
    jr @+$01

    dec a
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld [hl], c
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_039_6e91:
    nop
    rst $38
    nop
    ei
    nop
    rst $28
    nop
    pop hl
    nop
    db $fc
    nop
    pop af
    ld c, $f0
    rrca
    ldh [$e0], a
    ldh [$e0], a
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
    nop
    nop
    inc bc
    rst $38

jr_039_6eb2:
    rlca
    rst $38

jr_039_6eb4:
    rra
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld b, a
    rst $38
    rla
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rrca
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
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $28
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
    db $fd
    rst $38
    db $ed
    rst $38
    db $76
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    ld [$20ff], a
    rst $38
    jr nz, jr_039_6eb2

    jr nz, jr_039_6eb4

    ld c, a
    or b
    nop
    rst $38
    rra
    ldh [rSB], a
    cp $0e
    rst $38
    ld a, a
    adc a
    ld a, a
    adc a
    rrca
    rst $38
    rrca
    rst $38
    ld l, a
    sbc a
    rst $28
    rra
    ld l, a
    sbc a
    rrca
    rst $38
    ld l, a
    sbc a
    rra
    rst $38
    rra
    cp $1f
    db $fc
    rra
    db $fc
    rra
    cp $1f
    cp $1e
    cp $1e
    db $fc
    ld e, $fc
    ld e, $fc
    ld e, $fc
    ld e, $fc
    rra
    cp $1f
    cp $1f
    rst $38
    ld e, $ff
    dec e
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rlca
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    ldh [rIE], a
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
    add b
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    sbc $00
    rlca
    nop
    ret nz

    nop
    ld e, $e0
    nop
    rst $38
    nop
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
    ret nc

    rst $38
    ret c

    rst $38
    ld a, h
    rst $38
    cp h
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
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
    db $fd
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $ed
    rst $38
    or $ff
    rst $18
    rst $38
    ld l, h
    rst $38
    or h
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
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
    inc c
    inc bc
    ld c, $01
    add a
    nop
    inc bc
    db $fc
    pop hl
    ld e, $ff
    nop
    inc bc
    db $fc
    ld a, h
    rst $38
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
    add b
    nop
    ret nz

    nop
    rst $38
    ldh a, [$df]
    ld [$040f], sp
    sbc a
    inc b
    rst $38
    ld [$187f], sp
    ccf
    jr jr_039_702e

    jr jr_039_7030

    rra
    ccf
    rrca
    ccf
    rra
    ld a, b
    rra
    ldh a, [$3f]
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    ldh a, [rIE]
    add sp, $17
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    ld hl, sp-$01
    ccf
    ccf
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    db $fc
    add b
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38

jr_039_702e:
    ld a, a
    rst $38

jr_039_7030:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    add a
    rst $38
    ldh [rP1], a
    rlca
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
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
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
    jr jr_039_7086

    db $10
    adc h
    ld d, b
    adc h

jr_039_7086:
    inc sp
    call z, Call_039_6e91
    or $09
    db $fc
    inc bc
    nop
    rst $38
    nop
    ld e, $00
    rra
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    dec bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rlca
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    ldh [rIE], a
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
    ldh [rP1], a
    rst $38
    ld a, b
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
    cp a
    rst $38
    rst $28
    rst $38
    adc a
    nop
    rlca
    nop
    ld a, b
    nop
    inc bc
    ldh a, [rP1]
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
    cp $00
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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

    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp $fe
    cp $fe
    cp $fe
    cp $00
    inc a
    inc h
    ld e, b
    ld c, b
    or b
    add b
    ld h, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_039_7169:
    rst $38
    nop
    cp $00
    cp $00
    cp $fe
    ld bc, $03fc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld hl, sp+$07
    ld a, [$fa07]
    add a
    ld a, [$feff]
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    jr nc, jr_039_7169

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rra
    rra
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    ld hl, sp-$01
    rst $38
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
    add b
    nop
    db $fc
    ld hl, sp-$01
    adc a
    rst $38
    ld a, [hl]
    rst $38
    di
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
    nop
    rst $30
    nop
    ld d, a
    nop
    jp Jump_000_3f00


    nop
    rla
    ldh a, [$1f]
    cp $1f
    cp $3f
    ld bc, HeaderManufacturerCode
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    db $fc
    ld a, a
    ld hl, sp+$7f
    ld hl, sp-$06
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$09
    ldh a, [$f6]
    ldh a, [$f6]
    ldh a, [$f4]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$ec]
    ldh [$ec], a
    ldh [$ec], a
    ldh [$e8], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$fa], a
    ldh [$cc], a
    ret nz

    ret c

    ret nz

    call nc, $f4c0
    ret nz

    db $f4
    ret nz

    db $f4
    ret nz

    db $f4
    ret nz

    adc h
    add b
    and b

jr_039_722f:
    add b
    xor c
    add b
    xor l
    add b
    ret


    add b
    rst $30
    add b
    db $e3
    add b
    ld l, a
    nop
    ld h, e

jr_039_723d:
    nop
    ld h, e
    nop
    ld h, c
    cp $c9
    cp $d9
    cp $fb
    cp $9b
    cp $53
    cp $d3
    cp $d3
    cp $04
    inc bc
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $fb04
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, jr_039_723d

    jr c, jr_039_722f

    ld a, b
    add a
    nop
    rst $38
    ld b, b
    cp a
    ld b, e
    cp a
    ld [hl], c
    adc a
    ld [hl], e
    adc a
    ld bc, $07ff
    rst $38
    ld [bc], a
    cp $1e
    cp $0a
    cp $0c
    db $fc

jr_039_7280:
    inc c
    db $fc

jr_039_7282:
    inc c
    db $fc
    inc d
    db $fc
    jr jr_039_7280

    jr jr_039_7282

    sbc b
    ld a, b
    sbc b
    ld a, b
    sub b
    ld [hl], b
    db $10
    ldh a, [rSVBK]
    ldh a, [$30]
    ldh a, [rNR41]
    ldh [rNR41], a
    ldh [$08], a
    ld hl, sp+$08
    ld hl, sp+$30
    ldh a, [rP1]
    pop af
    ld bc, $01e1
    pop hl
    ld bc, $0101
    inc bc
    inc bc
    db $e3
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    ccf
    rrca
    rrca
    ld c, $0f
    rrca
    rrca
    ld e, $1f
    rra
    rst $38
    sbc $ff
    ld a, [$d0ff]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld [c], a
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    sub b
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
    xor $fe
    sub $ee
    call nc, $c0ec
    db $fc
    db $f4
    db $fc
    ldh a, [$f8]
    add sp, -$08
    add sp, -$08
    ldh [$f0], a
    ret nc

    ldh a, [$c0]
    ldh [$80], a
    ldh [$80], a
    ldh [rP1], a
    ret nz

    add b
    ret nz

    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
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
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, $c1
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

    nop
    ret nz

    nop
    ret nz

    ld bc, $01c1
    pop bc
    ld bc, $0181
    add c
    ld [bc], a
    add e
    ld [bc], a
    add e
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    ld [$080f], sp
    rrca
    ld [$100f], sp
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    jr nc, jr_039_73ab

    jr nz, jr_039_73ad

    jr nz, jr_039_73af

    jr nz, jr_039_73b1

    ld b, b
    ld a, a
    ld d, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    cp $80
    cp $40
    cp $00
    db $fc
    add b
    db $fc
    add b
    db $fc
    nop
    ld hl, sp-$80
    ld hl, sp+$08
    ld hl, sp+$00
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$a0], a
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ret nz

jr_039_73ab:
    ret nz

    ret nz

jr_039_73ad:
    ret nz

    add b

jr_039_73af:
    add b
    rst $38

jr_039_73b1:
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
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
    jr nz, jr_039_7421

    jr nz, jr_039_7423

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    and b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $02
    cp $02
    cp $00
    db $fc
    nop
    db $fc
    inc b
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$08

jr_039_7421:
    ld hl, sp+$00

jr_039_7423:
    ldh a, [rNR10]
    ldh a, [rP1]
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rP1], a
    ret nz

    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ld hl, sp+$07
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [rIE], a
    ldh [rIE], a
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
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    db $fc
    inc bc
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
    nop
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
    inc bc
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
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld de, $1312
    rrca
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_039_7566

    ld a, [de]
    dec de
    inc e
    dec e
    nop
    nop
    ld e, $1f
    jr nz, jr_039_7578

    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_039_7589

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_039_7566:
    jr nc, jr_039_7568

jr_039_7568:
    ld sp, $3332
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    ld [hl], $37
    jr c, jr_039_75ad

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_039_7578:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    nop
    nop
    nop
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    ld c, c
    ld c, d

jr_039_7589:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    nop
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
    nop
    nop
    nop
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

jr_039_75ad:
    nop
    nop
    nop
    ld l, d
    rrca
    rrca
    rrca
    rrca
    ld l, e
    ld l, h
    rrca
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    nop
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld [hl], d
    nop
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, c
    ld a, d
    ld a, e
    inc bc
    ld a, h
    ld a, l
    ld a, [hl]
    ld [hl], d
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    ld a, a
    add b
    add c
    add d
    add e
    inc bc
    add h
    add l
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    add [hl]
    add a
    rrca
    adc b
    adc c
    adc d
    inc bc
    adc e
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    inc bc
    sub c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    sub d
    sub e
    rrca
    sub h
    sub l
    sub [hl]
    inc bc
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    sub a
    sbc b
    rrca
    sbc c
    inc bc
    sbc d
    adc h
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    sbc e
    sbc h
    rrca
    inc b
    sbc l
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
    ld b, $00
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
    ld b, $06
    ld b, $06
    ld b, $01
    nop
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
    ld b, $01
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
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $05
    nop
    nop
    ld bc, $0101
    ld bc, $0600
    ld b, $06
    ld b, $07
    rlca
    inc b
    inc b
    dec b
    ld b, $06
    ld bc, $0101
    ld bc, $0500
    ld b, $04
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0606
    ld bc, $0101
    ld bc, $0501
    ld b, $04
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0606
    ld bc, $0101
    nop
    ld bc, $0606
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $01
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld bc, $0101
    dec b
    dec b
    ld bc, $0606
    ld b, $07
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0505
    ld bc, $0106
    ld b, $06
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $07
    inc b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    rlca
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $01
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld bc, $0106
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $01
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0106
    ld bc, $0101
    ld b, $26
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld bc, $0121
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
    ld bc, $0301
    inc bc
    inc c
    rrca
    inc e
    rra
    ld [hl], b
    ld a, a
    ldh [rIE], a
    ret nz

    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rra
    jr nc, jr_039_7819

    ld h, b
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    cp $07
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$7f], a

jr_039_7819:
    ret nz

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
    ld bc, $0300
    ld [$180f], sp
    rra
    ld h, b
    ld a, a
    ret nz

    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld sp, $31ff
    rst $38
    ld sp, $31ff
    rst $38
    ld de, $13ff
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    rlca
    cp $87
    db $fc
    add a
    db $fc
    adc a
    ld hl, sp-$61
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$7f], a
    ret nz

    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    inc bc
    rlca
    rlca
    nop
    rra
    ld bc, HeaderManufacturerCode
    rst $38
    rlca
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
    ld a, [hl]
    rst $38
    ld a, e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    cp $f3
    cp $f7
    db $fc
    rst $28
    ld hl, sp-$21
    ld hl, sp-$61
    ldh a, [$bf]
    ldh [$bf], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    cp $03
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ldh a, [$1f]
    pop af
    rra
    pop hl
    ccf
    pop hl
    ccf
    jp $c37f


    ld a, a
    nop
    ld bc, $0302
    nop
    rrca
    ld [bc], a
    rra
    nop
    ld a, a
    ld [$18ff], sp
    rst $38
    jr @+$01

    reti


    rst $38
    ei
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp+$7f
    ldh a, [$3f]
    ldh a, [$3f]
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
    ld bc, $01ff
    rst $38
    ld bc, $03fe
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ld a, [c]
    rra
    ldh a, [$1f]
    pop hl
    ccf
    pop hl
    ccf
    db $e3
    ld a, a
    bit 7, a
    ret z

    rst $38
    adc l
    rst $38
    sub a
    rst $38
    ld e, $ff
    inc e
    rst $38
    inc a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $00fc
    db $fc
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
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
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
    inc bc
    nop
    nop
    inc bc
    nop
    rlca
    inc bc
    rra
    inc bc
    ld a, $03
    ld a, [hl]
    daa
    db $fc
    cpl
    ld hl, sp+$4f
    ld hl, sp+$7f
    ldh a, [$7f]
    pop hl
    ld a, a
    pop bc
    ld a, [hl]
    jp $83fe


    rst $38
    inc bc
    rst $38
    rlca
    db $fd
    rlca
    ei
    rrca
    ei
    rrca
    di
    rra
    rst $30
    rra
    db $e3
    ccf
    db $e3
    ccf
    rst $28
    ccf
    rst $00
    ld a, a
    rst $00
    ld a, a
    sub a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    ld bc, $015f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $033f
    cp a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    cp a
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
    ld hl, sp-$01
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld hl, sp-$80
    ret c

    add b
    call nc, $c980
    add b
    call nc, $9180
    add b
    call nc, $d280
    add b
    ld e, b
    add b
    ld a, [hl]
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    nop
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    add e
    ld a, a
    db $fc
    inc bc
    ld a, a
    nop
    ld a, a
    nop
    add b
    ld a, a
    add e
    ld a, h
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
    ret nz

    jr @-$3e

    nop
    add b
    nop
    add b
    nop
    add b
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
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    cp $00
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

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
    rst $38
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
    rlca
    ld a, a
    rlca
    ld a, a
    rrca
    ld a, a
    rra
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ccf
    nop
    rra
    nop
    cpl
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    ld a, l
    add d
    rst $28
    db $10
    ld a, e
    add h
    rst $28
    db $10
    db $db
    inc h
    db $fd
    ld [bc], a
    or [hl]
    ld c, c
    rst $18
    jr nz, jr_039_7af2

    nop

jr_039_7af2:
    dec b
    nop
    add hl, hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $feff
    ld bc, $00ff
    nop
    rst $38
    ret nz

    ccf
    db $fc
    inc bc
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
    rra
    nop
    rlca
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
    ld bc, $0300
    nop
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    rra
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
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    nop
    nop
    db $fc
    rst $38
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    rst $38
    ret nc

    cpl
    xor c
    ld d, [hl]
    rst $30
    ld [$04fb], sp
    xor l
    ld d, d
    xor [hl]
    ld d, c
    ld d, l
    xor d
    dec [hl]
    nop
    ld e, a
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
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $feff
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
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
    ld a, a
    nop
    cp $01
    cp $01
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    rst $38
    nop
    ldh a, [rIF]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    rst $38
    cp $81
    db $fc
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld bc, $00fe
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $78
    add a
    inc a
    jp nz, $fc00

    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    nop
    cp $01
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    ei
    rlca
    ei
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $28
    rra
    xor $1f
    sbc $3f
    inc e
    rst $38
    db $fc
    rst $38
    ld sp, hl
    cp $f9
    cp $fb
    db $fc
    ld a, [c]
    db $fc
    or $f8
    and $f8
    inc c
    ldh a, [$03]
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
    ld hl, sp-$10
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    ld [hl], b
    nop
    jr nc, jr_039_7cce

jr_039_7cce:
    ld sp, $3101
    rlca
    ld sp, $310f
    rrca
    ld de, $110f
    rrca
    ld de, $110f
    rrca
    ld de, $110f
    rrca
    ld sp, $310f
    rrca
    ld sp, $310f
    rrca
    ld [hl], c
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    rst $30
    rrca
    push af
    rrca
    push af
    rrca
    di
    rrca
    di
    rrca
    rst $30
    rrca
    ldh a, [rIF]
    nop
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    db $f4
    rrca
    db $e4
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
    rst $30
    rst $38
    rst $30
    rst $38
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
    rst $38
    ldh a, [$3f]
    ld hl, sp+$1f
    db $fc
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $e0
    rra
    ldh [$1f], a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    add sp, $00
    ld b, b
    nop
    nop
    nop
    nop
    cp a
    ld a, a
    cp [hl]
    ld a, a
    ld a, [hl]
    rst $38
    ld a, l
    cp $fd
    cp $fb
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$df]
    ldh [$9f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
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
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ccf
    ld [bc], a

jr_039_7db5:
    dec a
    inc bc
    jr jr_039_7dbc

    db $10
    inc bc
    nop

jr_039_7dbc:
    rlca
    nop
    rlca
    nop
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_039_7db5

    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $38
    ld bc, $00ff
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
    sbc a
    rst $38
    add a
    rst $38
    ret nc

    rst $38
    ret c

    rst $38
    jp nz, $d7ff

    rst $38
    sub [hl]
    rst $38
    sub [hl]
    rst $38
    sub $ff
    sbc l
    rst $38
    sub a
    nop
    rst $10
    nop
    rst $30
    nop
    db $f4
    add b
    db $fc
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp+$7f
    rlca
    ld a, a
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
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
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
    rra
    ldh [$df], a
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    set 7, a
    ld hl, sp-$01
    jp hl


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
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld sp, hl
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    ld a, a
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
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
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
    rst $28
    rst $38
    rst $30
    rst $38
    rst $18
    nop
    rst $28
    nop
    rst $30
    nop
    ei
    nop
    db $fd
    add b
    cp $c0
    rst $38
    ldh [rIE], a
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
    ccf
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
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    rst $18
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    adc $00
    rst $20
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    db $fc
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    rst $20
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
    rst $38
    rst $08
    rst $38
    ld h, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $20
    nop
    di
    nop
    ld sp, hl
    nop
    db $fc
    nop
    cp $80
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
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
    nop
    rst $38
