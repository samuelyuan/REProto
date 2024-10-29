SECTION "ROM Bank $01d", ROMX[$4000], BANK[$1d]

    ccf
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rNR33]
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
    cp $00
    cp $00
    cp $00
    cp $00
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
    rlca
    db $fc
    rra
    db $fc
    ld a, a
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
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp-$10
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
    ld bc, $02fe
    db $fc
    rlca
    ld hl, sp+$0e
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    adc $00
    rst $38
    nop
    rst $38
    nop
    ld c, $00
    cp [hl]
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld hl, sp+$09
    ldh a, [rNR23]
    ldh [$3f], a
    ret nz

    scf
    ret nz

    ld a, a
    add b
    db $fd
    nop
    sub d
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld [hl], b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ei
    nop
    ret nc

    nop
    and b
    nop
    ld h, b
    nop
    nop
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or $00
    or b
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ldh [rP1], a
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
    inc b
    nop
    nop
    nop
    sbc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld b, b
    nop
    pop hl
    nop
    and d
    nop
    ld de, $0300
    nop
    rrca
    nop
    add hl, bc
    nop
    ld bc, $0300
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc c
    nop
    inc c
    nop
    ld [$0800], sp
    nop
    ret z

    nop
    ld a, [hl-]
    nop
    jr jr_01d_417c

jr_01d_417c:
    jr nc, jr_01d_417e

jr_01d_417e:
    ldh a, [rP1]
    sbc a
    nop
    or b
    nop
    db $f4
    nop
    ei
    nop
    ld b, d
    nop
    inc b
    nop
    inc bc
    nop
    adc [hl]
    nop
    nop
    nop
    nop
    nop
    stop
    add b
    nop
    dec bc
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
    inc de
    nop
    inc bc
    nop
    ldh [rP1], a
    rst $00
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
    cp $01
    ld bc, $fffe
    nop
    rst $38
    nop
    sbc a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    ccf
    nop
    ld h, $00
    ld a, [$0300]
    nop
    dec bc
    nop
    ld a, a
    nop
    db $fd
    nop
    ld a, a
    nop
    dec d
    nop
    nop
    nop
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
    ld hl, sp+$00
    adc b
    nop
    nop
    nop
    ldh [rP1], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, $00
    or $00
    cp b
    nop
    adc a
    nop
    add b
    nop
    sub c
    nop
    add hl, bc
    nop
    ld [hl], b
    nop
    jr nc, jr_01d_4222

jr_01d_4222:
    cp $00
    cp [hl]
    nop
    add b
    nop
    sbc h
    nop
    sub c
    nop
    ld sp, hl
    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    ld c, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    jr nc, jr_01d_423c

jr_01d_423c:
    ld [hl-], a
    nop
    cp $00
    db $fd
    nop
    ld [hl], a
    nop
    ei
    nop
    ld sp, hl
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    add hl, sp
    nop
    sbc [hl]
    nop
    ld l, b
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld bc, $9d00
    nop
    nop
    nop
    stop
    ld bc, $0100
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ei
    nop
    rst $08
    nop
    rst $38
    nop
    ld a, a
    nop
    ei
    nop
    rst $28
    nop
    ld b, b
    nop
    ld h, e
    nop
    or e
    nop
    rst $38
    nop
    dec sp
    nop
    rrca
    nop
    dec e
    nop
    ccf
    nop
    rst $18
    nop
    rst $38
    nop
    ld [hl], l
    nop
    ld hl, sp+$00
    sub a
    nop
    rla
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
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
    ld a, a
    nop
    db $fd
    nop
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    rst $18
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
    cp a
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
    ldh [$7f], a
    db $fc
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or a
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
    add b
    rst $38
    ld hl, sp+$7f
    rst $38
    rst $18
    ccf
    rst $30
    rrca
    db $fd
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
    ld a, a
    nop
    rst $38
    nop
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
    rst $08
    ccf
    rst $30
    rrca
    db $fd
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    ccf
    di
    rrca
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
    cp a
    ld a, a
    rst $08
    ccf
    di
    rrca
    cp $01
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0a09], sp
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
    inc c
    inc bc
    dec c
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
    rrca

Jump_01d_43fc:
    dec bc
    db $10
    ld de, $1312
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_01d_442a

    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_01d_4444

    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01d_442a:
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_01d_445c

    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    daa
    daa
    daa
    jr nc, jr_01d_4475

jr_01d_4444:
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc [hl]
    ld [bc], a
    dec [hl]
    ld [hl], $37
    jr c, jr_01d_4478

    daa
    add hl, sp
    ld a, [hl-]
    daa
    daa
    daa
    dec sp
    inc a
    dec a
    ld a, $3f

jr_01d_445c:
    ld b, b
    nop
    ld b, c
    ld b, d
    daa
    daa
    ld b, e
    ld b, h
    daa
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
    daa
    daa
    ld d, b
    daa
    daa

jr_01d_4475:
    ld d, c
    ld d, d
    ld d, e

jr_01d_4478:
    ld d, h
    ld d, l
    ld d, [hl]
    dec bc
    ld d, a
    nop
    ld e, b
    ld e, c
    daa
    daa
    ld e, d
    daa
    daa
    daa
    daa
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    nop
    ld h, c
    daa
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    daa
    daa
    ld l, b
    ld l, c
    daa
    ld l, d
    nop
    nop
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld h, [hl]
    ld h, [hl]
    ld [hl], b
    daa
    ld [hl], c
    ld [hl], d
    ld [hl], e
    daa
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld h, l
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
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    add a
    adc b
    adc c
    adc d
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    adc e
    ld [bc], a
    adc h
    adc l
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    daa
    adc [hl]
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_01d_4643:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3f07
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
    rlca
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop

jr_01d_4675:
    rst $38
    ld bc, $06fe
    ld sp, hl
    jr c, jr_01d_4643

    ret nz

    ccf
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
    inc bc
    rrca
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rra
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
    inc bc
    db $fc
    inc c
    di
    jr nc, jr_01d_4675

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
    nop
    nop
    nop
    ld bc, $3f0f
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
    ld bc, $0ffe

jr_01d_46cf:
    ldh a, [$80]
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
    inc e
    db $e3
    ld h, b
    sbc a
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
    inc bc
    rrca
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
    ld bc, $06fe
    ld sp, hl
    jr c, jr_01d_46cf

    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01d_4711:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $06fe
    ld sp, hl
    jr @-$17

    ld h, b
    sbc a
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
    nop
    nop
    nop
    rlca
    rra
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop

jr_01d_473b:
    rst $38
    inc bc
    db $fc
    inc c
    di
    jr nc, jr_01d_4711

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
    ld bc, $06fe
    ld sp, hl
    jr jr_01d_473b

    ld h, b
    sbc a
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
    ld bc, $3f07
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
    db $fc
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$18
    rst $20
    ld h, b
    sbc a
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
    inc bc
    db $fc
    inc c
    di
    jr nc, @-$2f

    ld b, b
    cp a
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

jr_01d_47bb:
    rst $38
    nop
    rst $38
    ld bc, $9ffe
    ldh a, [$8f]
    ld hl, sp+$47
    ld a, h
    inc hl
    ld a, $11
    rra
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
    nop
    nop
    nop

jr_01d_47d3:
    nop
    nop
    nop
    ld bc, $1f07
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
    db $fc
    rst $38
    ldh a, [rIE]
    add b

jr_01d_47eb:
    rst $38
    nop
    rst $38
    ld bc, $06fe
    ld sp, hl
    jr c, jr_01d_47bb

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
    inc bc
    db $fc
    inc c
    di
    jr nc, jr_01d_47d3

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
    ld b, $f9
    ld bc, $01fe
    cp $01
    cp $0c
    di
    jr nc, jr_01d_47eb

    ld h, b
    sbc a
    sbc d
    ld h, l
    rst $38
    nop
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
    ldh a, [$8f]
    ld hl, sp-$39
    db $fc
    ld b, e
    ld a, [hl]
    inc hl
    ld a, $11
    rra
    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
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
    inc bc
    rrca
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
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$72]
    adc l
    add [hl]
    ld a, c
    ld bc, $05fe
    ld a, [$f40b]
    rrca
    ldh a, [$1f]
    ldh [$2d], a
    jp nc, $708f

    cpl
    ret nc

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR22], a
    add sp, -$01
    nop
    rst $30
    ld [$a05f], sp
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $28
    db $10
    ld a, a
    add b
    ld e, a
    and b
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [$8f]
    ld hl, sp+$47
    ld a, h
    inc hl
    ld a, $11
    rra
    jr jr_01d_48ed

    ld [$040f], sp
    rlca
    ld [bc], a
    inc bc
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

jr_01d_48ed:
    rra
    ccf
    ccf
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
    nop
    rst $38
    nop
    rst $38
    dec c
    ld a, [c]
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
    db $fc
    nop
    ld a, [$fe00]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh a, [$7f]
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
    ccf
    ld b, b
    ld a, a
    ld [hl], b
    ld l, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, [hl]
    ld l, a
    ld a, [hl]
    sbc b
    ld h, a
    sbc b
    ld h, a
    adc h
    ld [hl], e
    adc a
    ld [hl], b
    add a
    ld a, b
    add l
    ld a, d
    call nz, Call_000_003b
    rst $38
    nop
    rst $38
    dec bc
    db $f4
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
    db $ed
    nop
    ei
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ld b, b
    nop
    add b
    nop
    ld h, b
    nop
    jp nc, $8a00

    nop
    add sp, $00
    push de
    nop
    call nc, $fe00
    nop
    jp nz, $fd00

    nop
    cp $00
    db $fc
    nop
    db $fd
    nop
    ld a, [$f700]
    nop
    rst $28
    nop
    rst $18
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    cp $01
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
    ld bc, $07f8
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    rlca
    rst $38
    adc a
    ld [hl], c
    adc [hl]
    ld bc, $01fe
    cp $05
    ld a, [$f609]
    adc c
    db $76
    sub c
    ld l, [hl]
    dec b
    ld a, [$fbfe]
    rst $38
    ei
    cp $fb
    rst $38
    ei
    cp $fb
    rst $38
    ei
    cp $fb
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    or b
    nop
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
    ld [$c000], sp
    nop
    add h
    nop
    nop
    nop
    ld b, b
    nop
    call nz, $0f00
    nop
    ld e, a
    nop
    ld a, [$fe00]
    nop
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
    ld hl, sp+$07
    or $08
    or $08
    di
    inc c
    db $f4
    ld a, [bc]
    db $e3
    inc d
    db $e3
    inc d
    ldh [rNR13], a
    ldh [rNR22], a
    sla h
    add h
    ld a, b
    inc e
    ldh [rNR32], a
    ldh [$0e], a
    ldh a, [$8f]
    ldh a, [$c7]
    ld hl, sp-$3d
    db $fc
    add sp, $7f
    db $fc
    ccf
    cp $1f
    db $fc

jr_01d_4ab7:
    rra
    cp $3f
    db $fc

jr_01d_4abb:
    ld a, a
    ld a, [c]

jr_01d_4abd:
    db $fc
    add sp, -$10
    rrca

jr_01d_4ac1:
    ldh a, [rIE]
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $18
    rst $38
    rst $18
    dec [hl]
    rst $18
    ld a, [hl-]
    rst $18
    dec [hl]
    rst $18
    jr nz, jr_01d_4ab7

    jr nz, @-$1f

    jr nz, jr_01d_4abb

    jr nz, jr_01d_4abd

    jr nz, @-$1f

    jr nz, jr_01d_4ac1

    ld [$86f7], sp
    ld sp, hl
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38

jr_01d_4aec:
    and b
    rst $38
    ld d, h
    rst $38
    cp $ff
    ld bc, $ffff
    nop
    sub a
    nop
    add e
    nop
    inc bc
    nop
    ld b, $00
    ld b, $00
    inc b
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
    nop
    nop
    nop
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
    ld l, c
    nop
    jr c, jr_01d_4b24

jr_01d_4b24:
    xor d
    nop
    and d
    nop
    ld [hl], b
    nop
    reti


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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    ccf
    ret nz

    rra
    ld h, b
    rra
    jr nz, @-$5f

    jr nz, jr_01d_4b76

    jr nz, jr_01d_4b68

    jr nz, jr_01d_4b6a

    jr nz, jr_01d_4b68

    ld [hl], b
    db $d3
    jr nc, jr_01d_4aec

    ld [hl], b
    ld sp, hl
    ld b, $06
    ld bc, $0007

jr_01d_4b68:
    rrca
    nop

jr_01d_4b6a:
    cp a
    nop
    rst $28
    db $10
    rra
    ldh [$80], a
    rst $30
    ld h, b
    add a
    nop
    rst $20

jr_01d_4b76:
    ld [$08ff], sp
    rst $38
    ld b, h
    rra
    ld [hl+], a
    rrca
    dec de
    rlca
    inc bc
    nop
    rst $08
    jr nc, jr_01d_4b85

jr_01d_4b85:
    rst $38
    rst $38
    nop
    inc bc
    db $fc
    rst $38
    nop
    ldh a, [rIE]
    rst $28
    ldh a, [$6f]
    ldh a, [$ef]
    ldh a, [$6f]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    pop af
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
    inc b
    nop
    inc b
    nop
    ld [$ca00], sp
    nop
    jr jr_01d_4bbe

jr_01d_4bbe:
    stop
    jr nc, jr_01d_4bc2

jr_01d_4bc2:
    ldh [rP1], a
    ld h, b
    nop
    ld h, b
    nop
    ld e, d
    nop
    ld a, [$b800]
    nop
    or c
    nop
    rst $38
    ld bc, $7fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    add e
    db $fc
    pop bc
    ld a, $80
    rra
    and b
    rra
    add b
    rra
    add b
    rra
    and b
    rra
    jr nc, @+$21

    dec a
    rra
    rra
    ccf
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
    rra
    sbc a
    ccf
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [rIE]
    rst $38
    rrca
    rst $38
    nop
    ld a, [c]
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
    nop
    nop
    jr z, jr_01d_4c48

jr_01d_4c48:
    inc l
    nop
    jr nz, jr_01d_4c4c

jr_01d_4c4c:
    nop
    nop
    ld e, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
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
    cp $81
    ld a, [hl]
    add c
    ld h, l
    sbc d
    ld a, c
    add [hl]
    ld a, b
    add a
    ld a, b
    add a
    ld hl, sp-$29
    ei
    rst $30
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, l
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rst $38
    ld bc, $01fe
    cp $1d
    ld [c], a
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
    cp $01
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
    nop
    rst $38
    ld b, b
    cp a
    ret nc

    ccf
    ret nc

    ccf
    sbc $3f
    db $dd
    ccf
    ld e, c
    cp a
    dec de
    rst $38
    cp e
    rst $18
    nop
    rst $38
    ld bc, $ffff
    rst $38
    ldh a, [rIF]
    dec b
    ld a, [bc]
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
    ld bc, $0000
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
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add h
    nop
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [$87]
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$7d
    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    jp Jump_01d_43fc


    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld b, e
    db $fc
    ld h, e
    db $fc
    ld h, e
    db $fc
    ld h, c
    cp $61
    cp $e1
    cp $fd
    cp $fd
    ld a, [$fefd]
    ld a, l
    cp $0d
    cp $0f
    cp $0f
    cp $0f
    cp $0f
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
    rlca
    rst $38
    add e
    ld a, a
    pop bc
    ccf
    pop hl
    rra
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    cp b
    ld b, a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ret nc

    cpl
    ld a, [$fc05]
    inc bc
    ldh a, [rIF]
    add h
    ld a, e
    add b
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ccf
    jr nz, jr_01d_4eb7

    jr nz, jr_01d_4eb9

    nop
    rra
    nop
    rra
    db $10
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
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38

jr_01d_4eb7:
    rst $38
    rst $38

jr_01d_4eb9:
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
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
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
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
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
    ld a, a
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
    cp $01
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    ld bc, $0302
    ld bc, $0401
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    ld [$0101], sp
    add hl, bc
    ld a, [bc]
    ld bc, $050b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc c
    dec c
    ld c, $0f
    db $10
    ld bc, $1101
    ld [de], a
    inc de
    dec b
    dec b
    dec b
    dec b
    dec b
    inc d
    dec d
    ld d, $17
    jr jr_01d_4f6b

    ld bc, $0101
    ld a, [de]
    dec de
    dec b
    dec b
    inc e
    dec e
    dec b
    ld e, $1f
    jr nz, @+$07

    ld hl, $0122
    ld bc, $0101
    inc hl
    dec e
    dec b
    inc h
    dec b

jr_01d_4f6b:
    dec b
    dec h
    ld h, $27
    jr z, jr_01d_4f9a

    ld a, [hl+]
    ld bc, $2c2b
    inc l
    inc l
    dec l
    ld l, $2f
    dec b
    jr nc, jr_01d_4fae

    ld [hl-], a
    dec b
    inc sp
    inc [hl]
    dec [hl]
    ld bc, $3736
    scf
    scf
    scf
    jr c, jr_01d_4f8f

    dec b
    add hl, sp
    ld a, [hl-]
    dec b
    dec sp

jr_01d_4f8f:
    inc a
    dec a
    ld bc, $3e01
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    dec b

jr_01d_4f9a:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ccf
    ld c, c
    ld bc, $4a01
    ld c, d
    ld c, d
    ld c, d
    ld c, e
    ld c, h
    dec b
    ld c, l
    ld c, [hl]
    jr z, jr_01d_4ffd

jr_01d_4fae:
    ccf
    ccf
    ld d, b
    ld d, c
    ld bc, $0101
    ld bc, $5201
    dec b
    dec b
    ld d, e
    ld d, h
    ld d, l
    ccf
    ccf
    ccf
    ld d, [hl]
    ld bc, $5857
    ld bc, $0101
    ld e, c
    dec b
    dec b
    ld e, d
    ccf
    ccf
    ccf
    ccf
    ccf
    ld bc, $0101
    ld bc, $5c5b
    ld bc, $055d
    dec b
    ld e, [hl]
    ccf
    ccf
    ccf
    ccf
    ccf
    ld bc, $0101
    ld bc, $1a01
    ld e, a
    ld h, b
    dec b
    dec b
    ld h, c
    ccf
    ccf
    ccf
    ccf
    ccf
    ld bc, $0101
    ld bc, $0101
    ld bc, $0562
    dec b
    ld h, e
    ld h, h
    ccf

jr_01d_4ffd:
    ccf
    ccf
    ccf
    ld bc, $0101
    ld bc, $0101
    ld bc, $0565
    ld h, [hl]
    ld h, a
    ld l, b
    ccf
    ccf
    ccf
    ccf
    ld bc, $0101
    ld bc, $0101
    ld bc, $0569
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ccf
    ccf
    ccf
    ld bc, $0101
    ld bc, $0101
    ld bc, $0569
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ccf
    ccf
    ccf
    ld bc, $0101
    ld bc, $0101
    ld bc, $7372
    ld [hl], h
    ld [hl], l
    db $76
    ccf
    ccf
    ccf
    ccf
    ld bc, $0101
    ld bc, $0101
    ld bc, $7877
    ld a, c
    ld a, d
    ld a, e
    ccf
    ccf
    ccf
    ccf
    ld bc, $0101
    ld bc, $0101
    ld bc, $7877
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ccf
    ccf
    ccf
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
    ld bc, $0000
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    jr nz, jr_01d_50a9

jr_01d_50a9:
    ld bc, $0000
    ld bc, $0101
    inc bc
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    nop
    inc bc
    ld bc, $0001
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    inc bc
    inc bc
    ld bc, $0000
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc bc
    nop
    ld bc, $0101
    inc bc
    inc bc
    ld [bc], a
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0301
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0304
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01d_51b8:
    rst $38
    nop
    rst $38
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

jr_01d_51c6:
    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ld h, b
    adc a
    ld [hl], b
    rst $00
    jr c, jr_01d_51b8

    jr jr_01d_51c6

    inc c
    ld sp, hl
    ld b, $fc
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
    ld a, a
    add b
    rra
    ldh [$c0], a
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $ff
    rst $20
    rst $38
    pop bc
    rst $08
    nop
    inc bc
    nop
    pop bc
    nop
    jr nc, jr_01d_520f

jr_01d_520f:
    inc c

jr_01d_5210:
    add b
    add d
    ret nz

    ret nz

    add b
    add b
    nop
    ld h, b
    nop
    stop
    inc c
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    ld a, a
    add b
    rrca
    ldh a, [rSB]
    cp $ff
    nop

jr_01d_5232:
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
    cp a
    ld b, b
    rst $18
    jr nz, jr_01d_5210

    jr nc, jr_01d_5232

    db $10
    rst $30
    ld [$04fb], sp
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    db $fc
    inc bc
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
    rst $38
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
    pop af
    di
    ld a, b
    db $fc
    ld e, $ff
    ld b, $bf
    add [hl]
    rst $38
    ret nz

    db $e4
    ldh [$f0], a
    ld b, b
    ret nz

    nop
    ld [$0200], sp
    nop
    nop
    nop
    add b
    nop
    ld h, b
    nop
    stop
    inc de
    inc bc
    rlca
    rrca
    ccf
    rra
    ld a, a
    nop
    rst $38
    add b
    ld a, a

jr_01d_5294:
    ldh [$1f], a
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

jr_01d_52aa:
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
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ld h, b
    rst $08
    jr nc, jr_01d_5294

    jr nc, jr_01d_52aa

    inc e
    pop af
    ld c, $f8
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    ld e, $e1
    rrca
    ldh a, [rTAC]
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
    ld bc, $fefe
    cp $fe
    rst $38
    pop hl
    rst $30
    add b
    db $ed
    nop
    sub d
    add b
    ldh a, [$e0]
    ld hl, sp+$70
    ld hl, sp+$20
    ldh a, [rP1]
    inc b
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_01d_530b

jr_01d_530b:
    ld [$0100], sp
    nop
    inc bc
    inc bc
    rlca
    rlca
    sbc a
    rra
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
    db $fc
    inc bc
    cp $00
    cp $00
    cp $00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    rra
    ldh [rIF], a
    ldh a, [$87]
    ld a, b
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld a, [$fcfd]
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    adc $f1
    rst $30
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    ld hl, sp-$06
    ldh [$f1], a
    jr c, jr_01d_540e

    inc c
    ld e, $c4
    adc $60
    add sp, $40
    ldh [rP1], a
    nop
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
    ccf
    rra
    ccf
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
    nop
    rst $38
    nop
    cp $00
    ldh [rP1], a
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
    ccf
    ret nz

    rlca
    ld hl, sp-$09
    rst $38
    ld [hl], a
    rst $38
    di
    rst $38
    ldh a, [rIE]
    ret


    rst $30
    rst $08
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $20
    rst $30
    or b
    ld hl, sp-$7a
    adc [hl]
    ld [c], a
    rst $30
    jr nc, jr_01d_5438

    db $10
    ret c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0703

jr_01d_540e:
    rlca
    rra
    rra
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc

jr_01d_5438:
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
    rst $38
    nop
    rst $38
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
    db $fd
    nop
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    cp h
    db $fd
    db $10
    rst $38
    sbc b
    rst $38
    cp a
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
    rst $38
    db $e3
    db $e3
    inc e
    ld e, $02
    add $00
    ldh a, [$c0]
    ret nz

    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld bc, $0707
    rra
    rra
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
    rst $30
    rst $30
    rst $00
    rst $00
    rla
    rla
    inc de
    inc de
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
    rst $38
    nop
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
    ret nz

    ccf
    nop
    rst $38
    ccf
    rst $38
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
    nop
    add b
    add b
    add b
    nop
    add b
    nop
    cp $00
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
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    and $e6
    ld a, [de]
    ld a, [de]
    ld [$80c8], sp
    ldh [$80], a
    add b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rra
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $f8
    ld hl, sp-$10
    ldh a, [$c0]
    ldh [$c0], a
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
    nop
    add b
    nop
    nop
    nop
    nop
    nop

jr_01d_5577:
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $38
    db $fc
    inc bc
    nop
    rst $38
    inc bc
    rst $38
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0103
    inc bc
    ld bc, $0003
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
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
    add b
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    ldh a, [$f1]
    cp h
    cp a
    ld [hl], h
    ld [hl], h
    db $10
    jr jr_01d_5577

    ret nz

    add b
    ret nz

    nop
    nop
    nop
    ld bc, $0701
    rlca
    rrca
    rrca
    ccf
    ccf
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
    db $fc
    db $fc
    ld hl, sp-$04
    ldh a, [$f0]
    ret nz

    ldh [$80], a
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
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_01d_5681

    jr nz, jr_01d_5683

    jr nz, @+$41

    jr nz, jr_01d_5687

    jr nz, jr_01d_5689

    jr nz, jr_01d_568b

    jr nz, jr_01d_568d

    jr nz, jr_01d_568f

    jr nz, jr_01d_5691

    jr nz, @+$41

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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_01d_566f:
    rst $38
    rst $38
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
    jr nz, jr_01d_566f

    add b
    ldh [rP1], a

jr_01d_5681:
    add b
    nop

jr_01d_5683:
    ld bc, $0301
    rlca

jr_01d_5687:
    rrca
    rrca

jr_01d_5689:
    ccf
    ccf

jr_01d_568b:
    ld a, a
    rst $38

jr_01d_568d:
    rst $38
    rst $38

jr_01d_568f:
    rst $38
    db $fc

jr_01d_5691:
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
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
    rrca
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $fe
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
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
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

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
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
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    add c
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

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rlca
    nop
    nop
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
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
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
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
    nop
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
    rst $38
    nop
    rst $38
    nop
    ccf
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
    nop
    rst $38
    nop
    ld a, a
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
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
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
    ld a, a
    rst $38
    ld bc, $ffff
    nop
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
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    rra
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $0103
    inc bc
    ld bc, HeaderManufacturerCode
    ld a, a
    ld bc, $01c3
    jp $7f01


    rrca
    ccf
    nop
    inc bc
    ld bc, $0103
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rra
    rra
    db $e3
    db $e3
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    ld sp, hl
    ld sp, hl
    pop bc
    pop bc
    ld bc, $0101
    ld bc, $0303
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
    rrca
    rst $38
    nop
    rst $38
    nop
    rrca
    nop
    ldh a, [rP1]
    ldh [rNR23], a
    nop
    inc c
    inc c
    inc c
    ld hl, sp-$08
    ldh a, [rP1]
    nop
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
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $01
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$df], a
    ret nc

    rst $08
    sbc $c1
    rst $10
    ret nz

    pop af
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$fc]
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
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
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
    rst $38
    nop
    rst $38
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
    ldh [$1f], a
    ld [hl], b
    rrca
    rra
    nop
    stop
    ld e, b
    add b
    ret c

    ldh [$f6], a
    ld hl, sp-$02
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
    nop
    rst $38
    nop
    rst $38
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
    inc c
    di
    ld c, $f1
    rlca
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp-$79
    ld a, b
    ld a, a
    nop
    inc hl
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ret z

    ldh a, [$fd]
    cp $ff
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0b0a], sp
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0808
    ld [$0808], sp
    ld [$0808], sp
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_01d_59e1

    ld [$0808], sp
    ld [$0808], sp
    ld [$1a08], sp
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [$0808], sp
    ld [$0808], sp
    ld [$2208], sp

jr_01d_59e1:
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld [$0808], sp
    ld [$2f2e], sp
    jr nc, jr_01d_5a25

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01d_5a35

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld [$3f3e], sp
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld [hl], $45
    ld b, [hl]
    ld [hl], $36
    ld b, a
    ld c, b
    ld c, c
    ld [$4b4a], sp
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld [hl], $36
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, d

jr_01d_5a25:
    ld e, e
    ld [$5d5c], sp
    ld e, [hl]
    ld e, a
    ld [hl], $60
    ld h, c
    ld h, d
    ld h, e
    ld [$6564], sp
    ld h, [hl]
    ld h, a

jr_01d_5a35:
    ld l, b
    ld l, c
    ld [hl], $6a
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
    ld [$7877], sp
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
    ld [$8786], sp
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
    ld [hl], $36
    sub d
    ld [$9493], sp
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld [$9d9c], sp
    sbc [hl]
    ld [hl], $84
    add hl, hl
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
    add c
    xor c
    xor d
    xor e
    ld [hl], $92
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
    ld [hl], $84
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $b608

    or [hl]
    jp Jump_000_3636


    ld [hl], $81
    call nz, $a2c5
    add $c7
    ret z

    ret


    jp z, $b6cb

    or [hl]
    call z, Call_000_36cd
    ld [hl], $36
    adc $cf
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $b6
    or [hl]
    or [hl]
    rst $10
    ld [hl], $36
    ld [hl], $d8
    reti


    jp c, $dcdb

    db $dd
    ld [hl], $de
    rst $18
    or [hl]
    or [hl]
    or [hl]
    ldh [$36], a
    ld [hl], $36
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, $36
    nop
    ld bc, $0201
    ld [bc], a
    rlca
    rlca
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0701
    inc bc
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
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0701
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0701
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    dec b
    dec b
    ld bc, $0701
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    ld bc, $0701
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
    dec b
    dec b
    dec b
    ld bc, $0301
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
    dec b
    dec b
    dec b
    ld bc, $0401
    inc b
    inc b
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld b, $00
    nop
    nop
    dec b
    dec b
    nop
    nop
    inc b
    inc bc
    inc b
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    ld bc, $0000
    nop
    inc bc
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    dec b
    nop
    ld bc, $0001
    nop
    inc bc
    ld b, e
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    ld bc, $0001
    ld bc, $0300
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $05
    nop
    ld bc, $0001
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld [bc], a
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
    rst $38
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
    call nz, $80bf
    rst $38
    ld bc, $b7fe
    ld c, b
    rst $30
    ld [$2cd3], sp
    nop
    rst $38
    cp a
    rst $38
    ld e, [hl]
    cp a
    ld l, $9f
    ld l, [hl]
    sbc a
    ld e, [hl]
    rrca
    pop de
    ld c, $20
    rst $18
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $01
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
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
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    cp $ff
    cp $fd
    cp $fb
    cp $f5
    cp $eb
    db $fc
    ret nc

    ld hl, sp-$60
    ldh a, [rNR41]
    ldh [$cf], a
    rst $08
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
    nop
    nop
    nop
    nop
    add b
    add b
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
    daa
    ldh [$27], a
    ldh a, [$27]
    ldh a, [rTAC]
    ldh a, [$37]
    ldh a, [$f7]
    ldh a, [$f3]
    ld hl, sp-$0d
    ld hl, sp+$3b
    ld hl, sp+$3b
    ld hl, sp+$1b
    ld hl, sp-$47
    ld e, h
    xor c
    ld e, h
    dec l
    ld e, h
    ld e, h
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    rst $38
    rra
    db $e4
    rra
    ld b, c
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
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
    ld a, a
    nop
    ld a, a

jr_01d_5d06:
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
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    ldh [rP1], a
    nop
    nop
    nop
    rrca
    rrca
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
    ld hl, sp+$03
    ld hl, sp+$03
    ei
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    db $fc
    ld bc, $01fc
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $00
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
    rrca
    ldh a, [rIE]
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    daa
    rlca
    rra
    rra
    nop
    nop
    nop
    add b
    jr jr_01d_5d06

    rlca
    sbc b
    inc bc
    sbc l
    ld bc, $019e
    adc $01
    adc $01
    adc $01
    adc $00
    rst $08
    nop
    rst $00
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    di
    nop
    di
    nop
    di
    nop
    ret nz

    inc bc
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    ld [$e14a], a
    ld l, c
    pop hl
    ld [hl], e
    db $ed
    dec b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    xor c
    rst $38
    or e
    db $ed
    ld [hl], e
    db $ed
    ld h, l
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
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    add b
    ccf
    nop
    ccf
    nop
    ccf
    nop
    sbc a
    nop

jr_01d_5df8:
    sbc a
    nop
    sbc a
    nop
    rst $20
    ldh [$fb], a
    ld hl, sp+$00
    inc bc
    nop
    inc bc
    jr @+$19

    ldh [$cf], a
    ret nz

    adc a
    add b
    rst $20
    add b
    rst $20
    add b
    rst $20
    ret nz

    and a
    ret nz

    rst $20
    ret nz

    ld h, a
    ret nz

    ld [hl], e
    ldh [rHDMA3], a
    ldh [rHDMA3], a
    ldh [$73], a
    ld h, b
    or e
    ld h, b
    cp c
    ld [hl], b
    xor c
    ld [hl], b
    cp b
    jr nc, jr_01d_5df8

    jr nc, jr_01d_5e3a

    rst $38
    ld a, h
    ld a, b
    nop
    jr nc, jr_01d_5e30

jr_01d_5e30:
    jr nc, jr_01d_5e32

jr_01d_5e32:
    jr nc, jr_01d_5e34

jr_01d_5e34:
    nop
    nop
    nop
    nop
    nop
    nop

jr_01d_5e3a:
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3b79
    ld l, c
    rrca
    ld h, c
    or c
    ld l, a
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
    db $fd
    ei
    ld c, l
    ei
    add [hl]
    ld l, c
    sub [hl]
    ld l, c
    daa
    rst $38
    rst $20
    rst $38
    db $db
    rst $20
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
    sbc a
    nop
    nop
    sbc a
    nop
    sbc a
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
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
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
    nop
    nop
    nop
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    nop
    sbc l
    sbc [hl]
    rst $08
    sbc [hl]
    adc [hl]
    rrca
    xor $1f
    cp $ff
    cp $ff
    cp $ff
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    cp a
    ld l, a
    rst $30
    cpl
    rst $18
    inc hl
    rst $00
    dec sp
    cp a
    ld sp, hl
    add a
    ld sp, hl
    rst $08
    or c
    inc c
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    daa
    ret nz

    rst $20
    nop
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
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
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rIF]
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
    ld bc, $01fe
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
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    ld b, $06
    inc c
    inc c
    ld [$0808], sp
    ld [$0000], sp
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
    nop
    add b
    nop
    add b
    ld bc, $0b80
    add b
    inc bc
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
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    sbc a
    rra
    ld a, a
    ld a, a
    rra
    rra
    nop
    nop
    ld h, b
    add b
    rra
    db $e3
    rrca
    or $06
    ei
    rlca
    ld a, [$fb07]
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    ld sp, hl
    inc bc
    pop hl
    ccf
    rlca
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
    nop
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
    ld b, b
    cp a
    ld [hl], b
    xor a
    ldh a, [$2f]
    ret nz

    ld a, a
    ret nz

    cp a
    add c
    cp $9f
    ld h, b
    cp a
    ld b, b
    ccf
    ret nz

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
    ccf
    ccf
    nop
    nop
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, b
    ld a, b
    ldh a, [$f0]
    ret nz

    ret nz

    add e
    add e
    rlca
    rlca
    rrca
    rrca
    ld e, $1e
    jr jr_01d_60ce

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
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $01c3
    db $fd
    inc bc

jr_01d_60ce:
    cp a
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    ldh a, [$f9]
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    sbc c
    add b
    jp hl


    ldh [$89], a
    add b
    add hl, bc
    nop
    ld h, b
    ld e, c
    add b
    ld a, c
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ldh [rP1], a
    nop
    ldh a, [$c0]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    db $e3
    ld a, a
    adc h
    ld a, [hl]
    pop af
    ld b, b
    cp a
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
    ld bc, $03fe
    db $fc
    rra
    ldh [rIE], a
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld b, $ff
    inc b
    rst $38
    nop
    rst $38
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    cp a
    ld bc, $001f
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
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    nop
    inc hl
    inc e
    ld d, a
    jr z, jr_01d_61f2

    inc l
    ld b, e
    inc a
    inc bc
    inc a
    dec hl
    inc d
    ld a, e
    inc b
    pop hl
    ld e, $c0
    rst $38
    ld hl, sp-$01
    di
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fc
    jp hl


    nop
    sub $00
    jp hl


    nop
    nop
    sub $00
    jp hl


    nop
    sub $00
    jp hl


    nop
    sub $00
    jp hl


    nop
    sub $00
    jp hl


    nop
    sub $00
    jp hl


    nop
    sub $00
    jp hl


    nop
    sub $00
    ret nz

    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38

jr_01d_61f2:
    nop
    rst $38
    rrca
    ldh a, [rIE]
    dec b
    rst $38
    di
    rst $38
    ldh [$e0], a
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
    rlca
    ld hl, sp+$7f
    add b
    rst $38
    rrca
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $28
    ret nz

    rst $20
    stop
    ei
    nop
    db $fd
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh [rP1], a
    db $e3
    nop
    rst $00
    nop
    adc a
    nop
    sbc a
    nop
    ccf
    nop
    ccf
    add b
    rst $38
    nop
    rst $38
    rrca

jr_01d_6235:
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
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
    ldh [$e0], a
    rra
    cp $01
    ldh a, [rIF]
    inc bc
    rst $38
    ccf
    rst $38
    cp $fe
    ld a, [c]
    ld a, [c]
    sub d
    ld [de], a
    ld d, d
    ld [de], a
    sub d
    ld [de], a
    ld d, d
    ld [de], a
    sub d
    ld [de], a
    ld d, d
    ld [de], a
    sub d
    ld [de], a
    ld d, d
    ld [de], a
    sub d
    ld [de], a
    ld d, d
    ld [de], a
    sub d
    ld [de], a
    ld d, d
    ld [de], a
    sub d
    ld [de], a
    ld d, d
    ld [de], a
    sub d
    ld [de], a
    ld d, d
    ld [de], a
    sub e
    inc de
    ld d, e
    inc de
    sub d

jr_01d_629d:
    ld [de], a
    ld d, [hl]
    ld d, $9c
    inc e
    ld e, b

jr_01d_62a3:
    jr jr_01d_6235

    db $10
    jr nc, jr_01d_62d8

    ld h, b
    ld h, b
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
    nop
    rlca
    rlca
    rlca
    ld hl, sp+$7f
    sbc a
    rst $38
    rst $38
    rst $38
    cp $f0
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_01d_62a3

    jr c, jr_01d_629d

    ccf
    ret nz

jr_01d_62d8:
    rst $38
    ld [$3dff], sp
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld a, a
    cp $fe
    db $fc
    ldh a, [$fc]
    nop
    db $fc
    nop
    nop
    cp $00
    rst $38
    nop
    rrca
    nop
    ld bc, $4000
    nop
    or b
    nop
    sbc h
    nop
    sbc $00
    rst $08
    nop
    rst $20
    nop
    add b
    nop
    ld [bc], a
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
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
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    cp $fe
    rst $38
    rst $38
    rra
    rra
    jp $f0c3


    ldh a, [$fc]
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, a
    ld a, a
    ccf
    rrca
    rra
    rlca
    rrca
    inc bc
    rlca
    ld bc, $0003
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
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    sbc a
    sbc a
    ld a, a
    ld a, a
    rra
    rra
    nop
    nop
    ld h, b
    nop
    ld a, h
    ld h, e
    ld a, c
    db $76
    ld a, l
    ld a, e
    ld a, l
    ld a, e
    ld a, l
    ld a, e
    ld a, a
    ld a, e
    ld a, a
    ld a, a
    ld a, l
    ld a, a
    ld a, h
    ld a, d
    ld a, h
    ld a, d
    ld [hl], h
    ld [hl], d
    ld h, h
    ld h, d
    ld [hl], b
    ld c, a
    rst $08
    ret nz

    add [hl]
    add b
    ld b, $00
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
    rra
    rra
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
    rlca
    ld hl, sp+$3f
    rst $08
    rst $38
    rst $38
    rst $38
    cp $f8
    rst $20
    add c
    ld a, [hl]
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$40bf]
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    cp $40
    ld b, $f9
    ld [bc], a
    db $fd
    nop
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    ret nz

    nop
    ldh [rP1], a
    ld h, b
    nop
    jr nc, jr_01d_63e9

jr_01d_63e9:
    stop
    jr jr_01d_63ed

jr_01d_63ed:
    adc b
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
    jr nc, jr_01d_6409

jr_01d_6409:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rlca
    rlca
    ld bc, $8001
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld a, b
    ld a, b
    inc e
    inc e
    ld c, $0e
    rst $00
    rst $00
    db $e3
    db $e3
    pop af
    pop de
    ld hl, sp+$08
    db $fc
    inc b
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
    cp $01
    rra
    ldh [rP1], a
    rst $38
    ld bc, $fffe
    rst $38
    sbc a
    sbc a
    rst $28
    rst $28
    adc a
    adc a
    rra
    rra
    ccf
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
    ld b, b
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
    ld bc, $7f01
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $3ffe
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    di
    add b
    ld a, a
    inc c
    di
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    dec a
    pop bc
    di
    inc bc
    rst $30
    ld [hl], a
    rst $28
    rst $28
    rst $08
    rst $08
    adc a
    adc a
    rra
    rra
    rra
    rra
    rra
    rra
    jr jr_01d_64da

    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    inc bc
    ld bc, $003e
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

jr_01d_64da:
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, $00
    jr c, jr_01d_64ed

jr_01d_64ed:
    ld a, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    jr nz, jr_01d_64f7

jr_01d_64f7:
    jr nz, jr_01d_64f9

jr_01d_64f9:
    jr nz, jr_01d_64fb

jr_01d_64fb:
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    add a
    add a
    rst $18
    rst $18
    rst $30
    rst $30
    ld a, e
    ld a, e
    dec de
    dec de
    call c, $f6e3
    ld sp, hl
    ei
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
    nop
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
    add b
    ld a, a
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
    nop
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
    inc e
    db $e3
    ldh [$1f], a
    rra
    rst $20
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $f9
    ret nz

    ccf
    rlca
    ld hl, sp+$1e
    pop hl
    ld hl, $01de
    cp $0b
    db $f4
    ld a, a
    add b
    rst $38
    ld de, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fe
    rst $38
    rst $38
    rst $38
    cp $fe
    nop
    nop
    ldh a, [rP1]
    di
    nop
    rst $20
    nop
    rst $08
    nop
    rst $08
    nop
    sbc a
    nop
    sbc a
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
    ret nz

    rst $38
    add b
    add e
    pop bc
    pop bc
    db $e3
    db $e3
    ei
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld [hl], b
    adc a
    cp h
    jp $f1ee


    rst $30
    ld hl, sp-$03
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
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    nop
    nop
    nop
    rlca
    rlca
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
    ldh [$1f], a
    rrca
    pop af
    rst $38
    ccf
    rst $38
    rst $38
    cp $f9
    pop hl
    sbc [hl]
    rrca
    ldh a, [$7f]
    add b
    db $e3
    inc e
    rra
    ldh [$8f], a
    ld [hl], b
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    ld a, $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rlca
    rlca
    nop
    nop

jr_01d_6656:
    add b
    add b
    ld hl, sp+$38
    ld b, $06
    nop
    jr nz, jr_01d_6660

    ret nz

jr_01d_6660:
    inc bc
    inc c
    inc hl
    call c, $dc23
    inc hl
    call c, $dc23
    inc hl
    call c, $dc23
    inc hl
    call c, $dc23
    inc hl
    call c, $dc23
    inc hl
    call c, $dc23
    inc hl
    call c, $dc23
    inc hl
    call c, $dc23
    jr nz, jr_01d_6660

    jr nz, jr_01d_6656

    inc hl
    call nz, $cc03
    inc bc
    sbc h
    inc bc
    inc a
    inc bc
    inc a
    rra
    add b
    ld bc, $0080
    nop
    nop
    nop
    nop
    ld bc, $8300
    nop
    rst $00
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    add b
    ld a, a
    ldh [$1f], a
    or b
    rst $08
    db $ec
    di
    rst $30
    ld hl, sp-$03
    cp $fe
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
    ld a, a
    ret nz

    ccf
    cp a
    rst $18
    rst $10
    rst $28
    db $eb
    rst $30
    db $fd
    ei
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
    rst $38
    db $fc
    rst $38
    ld a, a
    adc e

jr_01d_66f2:
    rst $38
    add hl, de
    db $fc
    ei
    ldh [$1f], a
    rlca
    ld hl, sp+$3e
    pop bc
    db $eb
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    cp $ff
    ldh [rIE], a
    nop

jr_01d_670c:
    rst $38
    ld bc, $07ff
    rst $38
    inc bc
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    ld a, a
    ld a, a
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    jr nz, jr_01d_66f2

    nop
    ldh a, [$30]
    ret z

    jr z, jr_01d_670c

    inc l
    jp nc, $d22d

    inc l
    db $d3
    dec l
    jp nc, $d22d

    dec l
    jp nc, $d22d

    dec l
    jp nc, $d22d

    dec l
    jp nc, $d22d

    dec l
    jp nc, $d22d

    dec c
    ld [de], a
    ld bc, $2000
    ret nz

    dec l
    jp nc, $d22d

    dec l
    jp nc, $d22d

    ld hl, sp+$07
    rst $20
    inc e
    rra
    ld a, b
    scf
    ldh a, [rLCDC]
    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
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
    add b
    add b
    add b
    add b
    ret nz

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
    nop
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
    ld [hl], b
    adc a
    call c, $f3e3
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
    add b
    ld a, a
    ret nz

    ccf
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
    rst $38
    daa
    db $fc
    db $d3
    ldh [$1f], a
    ld bc, $3cfe
    jp Jump_000_18e7


    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    cp $01
    cp $f1
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld b, $ff
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
    jp $e0ff


    rst $38
    ldh a, [rIE]
    ld hl, sp-$80
    add b
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    ccf
    add hl, sp
    rrca
    ldh a, [rTAC]
    ld hl, sp-$7d
    db $fc
    pop bc
    cp $e0
    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    db $fc
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
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01fe
    ccf

jr_01d_6837:
    ret nz

    rlca
    ld hl, sp-$1f
    ld e, $fc
    inc bc
    rst $38
    nop
    ccf
    ret nz

    rst $18
    jr nz, @-$0f

    db $10
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, jr_01d_6837

    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $08
    jr nc, jr_01d_68e6

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
    ccf
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    and b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld a, [$ffff]
    cp a
    ccf
    add c
    ld bc, $0000
    nop
    nop
    nop
    nop
    ldh a, [$c0]
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    inc a
    rst $38
    ld e, $ff
    rla
    rst $38
    rlca
    ld a, a
    ld bc, $304f
    ld hl, $1f1e
    ldh [$cf], a
    ldh a, [$ef]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    db $fd
    cp $fe
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
    ld a, a
    ccf
    rst $38
    rst $38
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $20
    rra
    di
    rrca
    di
    rrca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, $01
    ld c, $01
    ld b, $01
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01d_68e6:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rTAC], a
    ld hl, sp+$01
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
    ret nz

    ccf
    call z, $ff33
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    dec c
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add sp, -$01
    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_01d_6936:
    rra
    rra
    rlca
    rlca
    ld bc, $0001
    nop
    ret nz

    ld b, b
    ldh a, [rNR10]
    db $fc
    inc c
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    jr nz, jr_01d_6936

    nop
    ld a, a
    add b
    adc a
    ld [hl], b
    di
    inc c
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
    add b
    rst $38
    add b
    ld sp, hl
    add $fb
    add $fb
    add $fa
    rst $20
    ld sp, hl
    rst $20
    ld sp, hl
    rst $20
    pop af
    rst $28
    ldh a, [rIE]
    ld a, [c]
    rst $38
    or $ff
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $30
    ld a, a
    rst $20
    ld a, [$f867]
    ld h, a
    rst $38
    nop
    rst $38
    nop
    rra
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
    ld a, a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc c
    rst $38
    ld bc, $00ff
    rst $38
    ldh [rIE], a
    add sp, -$01
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
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
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rra
    rra
    adc a
    adc a
    rst $00
    add b
    db $e3
    add b
    di
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [$03]
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ccf
    nop
    ccf
    jr nz, jr_01d_6a37

    jr nz, jr_01d_6a39

    nop
    rra
    nop
    rra
    db $10
    rrca
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01d_6a37:
    rst $38
    nop

jr_01d_6a39:
    rst $38
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld bc, $80ff
    rst $38
    ld bc, $04ff
    rst $38
    nop
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
    ld c, $ff
    ld [bc], a
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
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    dec de
    rst $38
    dec c
    rst $38
    ld b, $ff
    ld bc, $017f
    ld a, a
    dec b
    ccf
    ld e, $bf
    inc a
    sbc a
    rra
    rst $18
    rlca
    ld c, a
    add c
    rrca
    ldh [rTAC], a
    ldh [rSB], a
    ld a, [c]
    nop
    pop af
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    ld [$0a09], sp
    nop
    nop
    nop
    dec bc
    inc c
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
    dec c
    ld c, $00
    nop
    nop
    rrca
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
    db $10
    ld de, $0012
    inc de
    inc d
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
    dec d
    ld d, $17
    nop
    jr jr_01d_6b0e

    ld [bc], a
    ld [bc], a

jr_01d_6b0e:
    ld [bc], a
    ld [bc], a
    add hl, de
    ld a, [de]
    rlca
    rlca
    rlca
    dec de
    inc e
    nop
    dec e
    nop
    ld e, $1f
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_01d_6b43

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_01d_6b53

    nop
    ld a, [hl+]
    dec hl
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    rlca
    inc l
    dec l
    ld l, $2f
    jr nc, jr_01d_6b6c

    ld [hl-], a
    inc sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca

jr_01d_6b43:
    rlca
    rlca
    rlca
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01d_6b85

    ld a, [hl-]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca

jr_01d_6b53:
    rlca
    rlca
    dec sp
    inc a
    dec a
    rlca
    ld a, $3f
    ld b, b
    ld b, c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_01d_6b6c:
    ld c, d
    ld c, e
    ld c, h
    ld [bc], a
    rlca
    rlca
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
    nop
    ld e, b
    inc c
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l

jr_01d_6b85:
    ld e, [hl]
    nop
    nop
    nop
    nop
    nop
    ld e, a
    ld h, b
    nop
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
    nop
    nop
    nop
    nop
    ld h, e
    nop
    nop
    ld h, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, l
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    nop
    nop
    ld l, l
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    ld l, a
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl], b
    ld [hl], c
    nop
    ld [hl], d
    ld h, [hl]
    nop
    nop
    nop
    ld l, [hl]
    ld [hl], e
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0074], sp
    ld [hl], l
    nop
    nop
    nop
    db $76
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [hl], a
    ld h, [hl]
    ld a, b
    ld a, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
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
    inc bc
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
    inc bc
    inc bc
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
    inc bc
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
    inc bc
    inc bc
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0300
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0300
    inc bc
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
    add hl, bc
    rrca
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp a
    rst $38
    ld l, a
    ld a, a
    scf
    ccf
    rrca
    rrca
    ld [bc], a
    inc bc
    ld bc, $0001
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
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
    rst $38
    rst $38
    ccf
    ccf
    rra
    rra
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
    rst $38
    nop
    rst $38
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

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    dec c
    rrca
    rlca
    rlca
    ld bc, $0001
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_01d_6e37:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [rTAC], a
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
    jr nz, jr_01d_6e37

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
    ld c, a
    ld a, a
    ccf
    ccf
    dec c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rra
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
    ret nz

    ccf
    ld h, b
    sbc a
    inc c
    di
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    ld l, a
    ld a, a
    dec de
    rra
    ld b, $07
    inc bc
    inc bc
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

jr_01d_6ed7:
    cp $01
    cp $01
    cp $01
    cp $01
    cp $ff
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
    ret nz

    ccf
    jr nc, jr_01d_6ed7

    ld [$03f7], sp
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
    ret nz

    ccf
    rst $08
    rst $38
    scf
    ccf
    add hl, bc
    rrca
    ld b, $07
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    add a
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $20
    nop
    rst $20
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    di
    nop
    di
    nop
    di
    nop
    di
    nop
    pop af
    nop
    pop af
    nop
    pop af
    ld b, b
    pop af
    ld b, b
    ld sp, hl
    ld b, b
    rst $38
    ld b, b
    db $fd
    ld b, b
    ld sp, hl
    ret nz

    ld sp, hl
    ret nz

    ld sp, hl
    ldh [rIE], a
    ldh [$f8], a
    ldh [$f9], a
    ldh [$fd], a
    ldh [rIE], a
    ldh [$fe], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fe], a
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh a, [$fc]
    ld hl, sp-$04
    ld hl, sp-$02
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp-$02
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
    ccf
    cp $cf
    cp $f3
    cp $fd
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
    ld a, a
    rst $38
    cp a
    rst $38
    ld l, a
    ld a, a
    scf
    ccf
    dec c
    rrca
    inc bc
    inc bc
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
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a
    ld a, c
    ld b, $37
    ld [$003f], sp
    ccf
    nop
    add hl, sp
    ld b, $3a
    dec b
    inc a
    inc bc
    jr c, jr_01d_702d

    jr nc, jr_01d_7037

    add b
    rra
    sub c
    rra
    ld [bc], a

jr_01d_702d:
    rra
    add h
    rra
    ret z

    rra
    sub b
    rra
    add b
    rra
    add b

jr_01d_7037:
    rra
    ret nz

    rra
    ldh [rIF], a
    ldh [rIF], a
    pop bc
    ld c, $e1
    ld c, $c1
    ld c, $e1
    ld c, $cc
    inc bc
    rst $08
    nop
    rst $08
    nop
    rst $08
    add b
    rst $00
    adc b
    pop bc
    adc [hl]
    ldh [$8f], a

jr_01d_7054:
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    ldh [$8f], a
    add b
    ldh a, [$80]
    ldh [rP1], a
    nop
    nop
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
    cp a
    ld b, b
    ld a, d
    add l
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    pop bc
    ccf
    add d
    ld a, a
    inc b
    rst $38
    ld [$efff], sp
    db $10
    rst $18
    jr nz, jr_01d_7054

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

jr_01d_70a0:
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    inc c
    di
    dec c
    ld a, [c]
    daa
    ret c

    and $19
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ei
    inc b
    scf
    ret z

    rst $08
    jr nc, jr_01d_70a0

    inc e
    call c, $bf23
    ld b, b
    ld a, a
    add b

jr_01d_70c4:
    rra
    ldh [rTAC], a
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    nop
    rra
    nop
    rrca
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
    rst $38
    nop

jr_01d_70e2:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_01d_70e8:
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    pop hl
    rra
    jp $863f


    ld a, a
    add h
    ld a, a
    ld [$10ff], sp
    rst $38
    rst $18
    jr nz, jr_01d_70e2

    jr nz, jr_01d_70c4

    ld b, b
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
    dec hl
    call nc, $f807
    add a
    ld a, b
    add hl, bc
    or $1e
    pop hl
    ccf
    ret nz

    ld c, a
    or b
    ld [hl], e
    adc h
    db $fc
    inc bc
    cp $01
    ld a, $c1
    call $f332
    inc c
    ld hl, sp+$07
    rst $30
    ld [$10ef], sp
    rra
    ldh [$cf], a
    jr nc, jr_01d_70e8

    ld c, h
    ld a, h
    add e
    ld a, a
    add b
    cp $00
    dec a
    ret nz

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
    ccf
    nop
    rra
    nop
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
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld sp, hl
    rlca
    di
    rrca
    rst $20
    rra
    rst $08
    ccf
    ld e, $ff
    inc e
    rst $38
    jr c, @+$01

jr_01d_716e:
    ld [hl], b
    rst $38
    db $e4
    ei
    call nz, $80fb
    rst $38
    ld bc, $08fe
    rst $30
    inc bc
    db $fc
    dec b
    ld a, [$fc03]
    rla
    add sp, $03
    db $fc
    rlca
    ld hl, sp+$01
    cp $15
    ld [$f00f], a

jr_01d_718c:
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld d, a
    xor b
    and a
    ld e, b
    ld [hl], b
    adc a
    db $fc
    inc bc
    dec a
    jp nz, Jump_000_24db

    rst $30
    ld [$08f7], sp
    ld l, a
    sub b
    rst $18
    jr nz, jr_01d_718c

    jr nz, jr_01d_716e

    ld b, b
    ld a, a
    add b
    sbc a
    ld h, b
    rst $20
    jr @+$01

    nop
    cp $01
    db $fd
    ld [bc], a
    dec a
    jp nz, Jump_000_34cb

    di
    inc c
    db $f4
    dec bc
    rst $28
    db $10
    call nc, Call_000_1c20
    ldh [$88], a
    ld h, b
    ld c, c
    add b
    ld d, e
    add b
    add b
    nop
    ret nc

    nop
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    cp $00
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
    rrca
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0001
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
    inc bc
    ei
    rlca
    ld hl, sp+$06
    pop af
    rrca
    db $e3
    rra
    pop hl
    rra
    ret nz

    ccf
    jr c, @+$01

    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    ld a, a
    add b
    ld l, a
    sub b
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    ld a, a
    add c
    rst $38
    ld bc, $03fd
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $db
    daa
    ei
    rlca
    ei
    rlca
    ld a, a
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
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
    xor a
    ld e, a
    ld l, a
    sbc a
    ld e, a
    sbc a
    rst $38
    rra
    ld a, a
    rra
    ccf
    rra
    rra
    ccf
    rra
    ccf
    cp a
    ccf
    rst $08
    ccf
    and e
    ld a, a
    ld hl, sp+$3f
    ld a, [hl]
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
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

jr_01d_72b3:
    rst $38
    rst $38

jr_01d_72b5:
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    ld [hl], a
    ld a, a
    dec a
    ccf
    rrca
    rrca
    pop hl
    ccf
    pop hl
    ccf
    pop hl
    ccf
    pop hl
    ccf
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    jp $c37f


    ld a, a
    jp $c37f


    ld a, a
    rst $00
    ld a, a
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    ld a, b
    add a
    jr nc, jr_01d_72b3

    jr nc, jr_01d_72b5

    ld [hl], b
    adc a
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], b
    adc a
    jr nz, @-$1f

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
    ccf
    cp a
    cp a
    cp a
    rra
    cp a
    rra
    ccf
    sbc a
    cp a
    cp a
    cp a
    ld a, a
    cp a
    ccf
    rst $38
    ccf
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
    ld a, a
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
    ret nz

    ccf
    ld [hl], b
    adc a
    inc e
    db $e3
    rlca
    ld hl, sp+$00
    rst $38
    nop

jr_01d_7335:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    sbc a
    rst $38
    rst $20
    rst $38
    di
    rst $38
    inc a
    ccf
    rrca
    rrca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    rst $38
    ret nz

    ccf
    jr nc, jr_01d_7335

    inc c
    di
    inc bc
    db $fc
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
    ccf
    rst $38
    sbc a
    rst $38
    rst $20
    rst $38
    ld a, c
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
    ret nz

    ccf
    jr nc, @-$2f

    inc c
    di
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
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
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

jr_01d_73cd:
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
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
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
    add b
    ld a, a
    ldh [$1f], a
    jr c, jr_01d_73cd

    ld c, $f1
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
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a

jr_01d_7445:
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
    add b
    ld a, a
    ldh [$1f], a
    jr jr_01d_7445

    ld c, $f1
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

jr_01d_746d:
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld h, b
    sbc a
    jr jr_01d_746d

    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [hl], b
    adc a
    inc e
    db $e3
    rlca
    ld hl, sp+$01
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
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
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
    dec c
    ld c, $0f
    db $10
    ld de, $0000
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    inc de
    inc d
    dec c
    dec d
    ld d, $17
    jr jr_01d_7518

    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    jr nz, jr_01d_752d

    ld [hl+], a
    nop
    inc hl
    inc h
    dec h
    dec c
    ld h, $27
    dec c
    dec c
    jr z, jr_01d_7541

jr_01d_7518:
    ld a, [hl+]
    inc hl
    dec hl
    inc l
    nop
    dec l
    ld l, $2f
    jr nc, jr_01d_7553

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_01d_7563

    ld a, [hl-]
    nop
    dec sp

jr_01d_752d:
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, d
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    dec c
    dec c
    dec c
    ld c, d

jr_01d_7541:
    ld c, e
    dec c
    dec c
    ld c, h
    ld c, l
    ld c, l
    ld c, l
    ld c, [hl]
    ld c, a
    dec c
    ld d, b
    ld d, c
    jr jr_01d_75a1

    ld d, e
    ld d, h
    ld d, l
    dec c

jr_01d_7553:
    dec c
    ld d, [hl]
    ld d, a
    dec c
    dec c
    dec c
    dec c
    dec c
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld d, h
    ld e, l
    dec b

jr_01d_7563:
    dec c
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    dec c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld d, h
    ld l, c
    inc c
    dec c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    dec c
    ld l, a
    ld [hl], b
    ld [hl], c
    dec c
    dec c
    ld [hl], d
    ld d, h
    ld [hl], e
    ld [hl], h
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    dec c
    dec c
    dec c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, l
    ld a, l
    ld a, l
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

jr_01d_75a1:
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    dec c
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    dec c
    and c
    and d
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
    dec c
    xor e
    xor h
    dec c
    xor l
    xor [hl]
    dec c
    xor a
    or b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or c
    dec c
    dec c
    or d
    or e
    or h
    or l
    or [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or a
    dec c
    dec c
    cp b
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
    cp l
    dec c
    dec c
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, Jump_000_0101

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
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0202
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
    nop
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    jr nz, jr_01d_768f

jr_01d_768f:
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
    ld b, d
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
    dec b
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    jp $e000


    nop
    ret nz

    nop
    ret nz

    nop
    pop bc
    nop
    inc bc
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
    ldh a, [rP1]
    ret nz

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
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    rra
    ldh [rTAC], a
    ldh [$03], a
    add sp, $00
    ld [$cf00], a

jr_01d_77d2:
    nop
    rst $08
    nop
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    db $d3
    nop
    rst $00
    nop
    rlc b
    rst $08
    nop
    rst $10
    nop
    rst $10
    nop
    db $db
    nop
    ei
    nop
    ei
    nop
    ei
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
    ldh a, [rP1]
    rra
    ldh [$c1], a
    ccf
    ldh a, [rSB]
    ldh a, [rSB]
    db $fc
    ld bc, $01fe
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $00
    db $fc
    nop
    ldh a, [rP1]
    jr nz, jr_01d_77d2

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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    pop bc
    ld a, $e1
    ld e, $f0
    rrca
    nop
    add hl, bc
    nop
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
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
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp-$7f
    ld a, [hl]
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    add b
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
    ccf
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
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
    db $fc
    nop
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
    rlca
    nop
    rrca
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    ld bc, $03fc
    ld hl, sp+$64
    sub b
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
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
    ld bc, $0300
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    ld c, $00
    inc e
    nop
    inc e
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
    nop
    rst $38
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
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
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
    rst $38
    rst $38
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
    nop
    ret nz

    nop
    rst $38
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
    rlca
    nop
    rra
    nop
    ccf
    nop
    cp $03
    ld hl, sp+$04
    ldh a, [$08]
    ldh [$30], a
    add b
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
    ld c, $00
    ld c, $00
    inc e
    ld bc, $0138
    jr c, @+$05

    ld [hl], b
    inc bc
    ldh [rTAC], a
    ldh [rTAC], a
    ldh [rIF], a
    ret nz

    ld c, $c0
    ld e, $80
    ld e, $80
    inc a
    nop
    inc a
    nop
    ld a, b
    nop
    ld a, b
    nop
    cp [hl]
    cp $be
    cp $be
    cp $be
    cp $be
    cp $be
    cp $de
    cp $de
    cp $fe
    cp $ee
    cp $ae
    cp $fe
    cp $fe
    cp $be
    cp $be
    cp $be
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $7e
    cp $fe
    cp $be
    cp $be
    cp $be
    cp $9e
    cp $de
    cp $ee
    cp $ee
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe

jr_01d_7a99:
    cp $fe
    cp $fe

jr_01d_7a9d:
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $7e
    cp $3e
    cp $3e
    cp $06
    cp $02
    cp $82

jr_01d_7ab5:
    cp $e5
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ei
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
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
    ld bc, $0700
    nop
    ld e, $03
    db $fc
    inc b
    ldh a, [$08]
    pop hl
    jr nc, jr_01d_7ab5

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
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, $00
    ld b, $00
    ld c, $00
    inc c
    ld bc, $811c
    jr jr_01d_7a99

    jr c, jr_01d_7a9d

    jr nc, @+$09

    ld [hl], b
    rlca
    ld [hl], b
    rlca
    ldh [rTAC], a
    ldh [rIF], a
    ret nz

    rrca
    ret nz

    rra
    ret nz

    rra
    add b
    rra
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    add e
    add b
    add e
    add b
    add e
    add b
    add e
    add b
    add c
    add b

jr_01d_7b69:
    add c
    add b
    add c
    add b
    add c
    add b
    add a
    add b
    add a
    add b
    add a
    add b
    add a
    add b
    add a
    add b
    add a
    add b
    add a
    add b
    add a
    add b
    add a
    add b
    add a
    add b
    add a
    add b
    add a
    add b
    add a
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
    add b
    add a
    add b
    add a
    ret nz

    rst $00
    ldh a, [$f7]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$7f
    ld hl, sp+$07
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    nop
    ld e, $04
    dec de
    ld [$3067], sp
    rst $08
    ld b, b
    rrca
    add b
    ld d, a
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
    rst $08
    nop
    rlc b
    rlc h
    db $d3
    inc b
    db $d3
    ld [$08e7], sp
    ld h, a
    db $10
    ld b, a
    db $10
    rst $08
    jr nc, jr_01d_7b69

    jr nz, jr_01d_7bfb

    ld h, b
    rra
    ld b, b
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
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
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

jr_01d_7bfb:
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
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    nop
    nop
    inc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ei
    nop
    ei
    nop
    ei
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld e, $e0
    add e
    db $fc
    ei
    db $fc
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    cp $00
    or $00
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
    rst $18
    nop
    rst $38
    nop
    cp $00
    rst $28
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld a, [c]
    nop
    ld [hl], e
    nop
    jr nc, jr_01d_7d01

jr_01d_7d01:
    jr nc, jr_01d_7d03

jr_01d_7d03:
    or b
    nop
    cp d
    nop
    sbc b
    nop
    inc e
    nop
    inc l
    nop
    ld l, $00
    ld l, $00
    ld c, $00
    ld d, $00
    ld d, $00
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    inc de
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
    rst $38
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
    add b
    rst $38
    sbc a
    ldh [$03], a
    ldh a, [rSB]
    ret nz

    dec e
    ret nz

    dec e
    ret nz

    dec e
    ret nz

    add hl, bc
    ret nz

    add hl, bc
    jp nz, $e601

    ld bc, $00f6
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
    cp $00
    cp $00
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp $8300


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rra
    nop
    rra

jr_01d_7dbe:
    nop
    rra
    nop
    adc a
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
    inc bc
    nop
    ld d, e
    nop
    ld b, e
    nop
    ld bc, $1100

jr_01d_7dd6:
    nop
    stop
    jr c, jr_01d_7ddb

jr_01d_7ddb:
    inc l
    nop
    rrca
    nop
    adc a
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
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    jr nc, jr_01d_7dbe

    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    jr nc, @-$3e

    jr nc, jr_01d_7dd6

    or b
    ret nz

    or b
    ret nz

    or b
    ret nz

    ldh a, [$c0]
    ret nc

    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSVBK]
    ld [hl], b
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    rst $38
    and $ff
    rst $38
    rst $38
    rst $20
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
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
    rst $38
    nop
    ld a, a
    nop
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    rst $18
    nop
    add $00
    or b
    nop
    ld e, b
    nop
    add $00
    jp $f000


    nop
    ld hl, sp+$00
    db $fc
    nop
    xor $00
    rst $00
    nop
    rst $20
    nop
    ei
    nop
    rst $38
    nop
    cp $ff
    rst $38
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rIF]
    ld bc, $030f
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
    rlca
    rst $38
    rlca
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
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $0000
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
    add hl, sp
    nop
    ld e, $00
    inc bc
    nop
    ld bc, $8400
    nop
    ld b, b
    nop
    jr nc, jr_01d_7f75

jr_01d_7f75:
    stop
    inc b
    nop
    add e
    nop
    reti


    nop
    add sp, $00
    jr c, jr_01d_7f81

jr_01d_7f81:
    sbc h
    nop
    add $00
    db $e3
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rrca
    nop
    add a
    nop
    jp Jump_000_2100


    nop
    jr jr_01d_7f99

jr_01d_7f99:
    adc $00
    db $d3
    nop
    db $f4
    nop
    ld sp, hl
    nop
    ld sp, hl
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
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    ld bc, $e000
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
    rst $08
    nop
    or e
    nop
    cp $00
    ld a, a
    nop
    ld e, a
    nop
    rst $20
    nop
    ld a, a
