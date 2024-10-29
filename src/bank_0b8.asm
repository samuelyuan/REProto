SECTION "ROM Bank $0b8", ROMX[$4000], BANK[$b8]

    rst $38
    rrca
    rst $28
    rra
    add a
    ld a, a
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    ld [$f8ff], sp
    rst $38
    daa
    rst $38
    ld hl, sp+$05
    ldh a, [$81]
    jp $c7a4


    ret z

    rst $08
    call z, $c9df
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp a
    ret nz

    push de
    nop
    xor d
    nop
    ld e, a
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $08
    ccf
    rst $30
    rrca
    cp a
    add c
    rst $18
    ldh [$7a], a
    ldh a, [$3f]
    db $fc
    sbc a
    cp $7f
    add a
    add a
    ld hl, sp-$08
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
    ld b, c
    ld b, c
    rst $38
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$01
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_0b8_4083:
    cp $ff
    ld hl, sp-$02
    ldh a, [rIE]
    ret nz

    rst $38
    ld b, l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    xor $7f
    ccf
    xor a
    rlca
    ld d, l
    ld bc, $00fa
    db $fd
    add b
    cp $f0
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    jp $fcfc


    rst $38
    rst $38
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
    ldh [rIE], a
    ret nz

    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $c2ff
    ccf
    add h
    ld a, a
    rst $38
    rst $38
    sub b
    ld a, a
    and b
    ld a, a
    ldh a, [rIF]
    rrca
    nop
    rlca
    nop
    rlca
    nop
    ccf
    ld bc, $017d
    ld sp, hl
    add hl, bc
    di
    ld [hl], c
    rst $20
    jp $cf87


    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    ld a, a
    ld hl, sp+$3f
    ld a, b
    rra
    cp b
    rrca
    ld e, b
    rlca
    xor h
    inc bc
    sub $83
    ld [$f5c1], a
    ldh [$fa], a
    ldh a, [$fd]
    sub c
    rst $38
    rst $08
    ld a, $3e
    pop bc
    db $10
    rst $28
    pop hl
    cp $9e
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38

jr_0b8_4126:
    ld [$10ff], sp
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38

jr_0b8_4134:
    nop
    rst $38
    nop
    rst $38
    add b
    cp $7e
    cp $01
    db $fd
    ld [bc], a
    ei
    call nz, $ef3f
    jr jr_0b8_4134

    jr jr_0b8_4126

    or b
    rst $18
    cp $df
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    ccf
    rst $18
    jr nc, @+$01

jr_0b8_4155:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $f3
    dec c
    jp $f13d


    ld c, $f8
    rlca
    cp $01
    rst $38
    nop
    sbc e
    ld h, h
    rst $00
    cp b
    jp nz, $81bd

    ld a, [hl]
    ld c, $f1
    dec a
    jp nz, $0ff0

    ld sp, hl
    ld b, $0e
    pop af
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    cp $00
    cp $01
    db $fd
    ld [c], a
    ei
    rla
    rst $30
    ld [$08ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_0b8_4155

    ld b, b
    ld a, a
    add b
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    cp $03
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cp $fc
    cp $f8
    db $fd
    ldh a, [rNR30]
    ldh [$35], a
    pop bc
    ld l, e
    jp $8356


    xor [hl]
    rlca
    ld e, h
    ld [$8cbf], sp
    ei
    ld hl, sp+$77
    ld [hl], c

jr_0b8_41c7:
    adc [hl]
    add d
    ld a, l
    db $fc
    inc bc
    di
    dec c
    and $1f
    adc b
    ld a, d
    ld d, b
    or l
    db $10
    ei
    jr nz, @-$07

    and b
    ld a, a
    jr nc, @-$1f

    rst $08
    ccf
    jr jr_0b8_41c7

    jr nz, @-$3f

    ld a, a
    ld a, a
    add b
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    db $fc
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    di

jr_0b8_4207:
    rrca
    cp $1c
    push af
    ld h, b
    xor d
    add b
    ld e, a
    ld bc, $bf07
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp a
    ld sp, hl
    rlca
    jp Jump_000_263d


    jp c, $3bc6

    and $1b
    inc sp
    call $8679
    adc $31
    ld a, a
    add e
    db $fc
    dec a
    ret nz

    ld [$5500], a
    ld bc, $1fbf
    rst $38
    ld a, e
    push hl
    sub l
    db $eb
    adc h
    di
    db $e4
    sbc e
    adc b
    ld [hl], a
    jr c, jr_0b8_4207

    ld b, b
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
    rst $38
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
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    cp $ff
    xor e
    inc bc
    ld d, l
    nop
    cp $00
    rst $38
    db $fc
    rst $38
    rst $38
    db $fd
    ld hl, sp-$15
    ldh [$d7], a
    pop bc
    xor a
    add d
    ld e, a
    inc b
    cp a
    ld [$30ff], sp
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    rst $38
    rst $38
    pop bc
    pop bc
    ld a, [hl]
    ld a, [hl]
    rst $08
    rst $08
    ccf
    ccf
    inc bc
    inc bc
    dec b
    dec b
    rlca
    rlca
    jr nz, @+$01

    ldh [rIE], a
    ccf
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    adc a
    rst $38
    ld [hl], l
    ld [hl], b
    xor e
    ld [$05d7], sp
    db $eb
    add e
    push af
    pop hl
    ld a, [$ff50]
    adc b
    cp $3c
    di
    ld a, $f1
    ccf
    ldh a, [$7f]
    rst $38
    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [rIE]
    ld hl, sp-$01
    ld d, a
    rlca
    xor d
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$19
    cp a
    cp $bf
    pop hl
    ccf
    ldh [$3f], a
    ldh [$7f], a
    ldh [$bf], a
    ldh [rIE], a
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [c], a
    rst $38
    rra
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    cp $ff
    ld d, l
    ld bc, $00fe
    rst $38
    ld hl, sp+$07
    rst $38
    inc b
    rst $38
    cp $ff
    ld b, l
    ld a, a
    xor b
    ccf
    ld e, b
    rra
    cp b
    rra
    ret c

    adc a
    db $ec
    add a
    ld [hl], a
    jp $e03a


    rra
    ldh a, [rIF]
    db $fc
    db $eb
    rst $38
    cp h
    rra
    ld d, a
    inc bc
    ld a, [$fd00]
    ret nz

    ccf
    ldh a, [rIE]
    db $fc
    dec bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
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
    db $fc
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

Jump_0b8_437f:
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
    ret nz

    rst $38
    and b
    ccf
    ret nc

    rra
    db $ec
    rrca
    rst $30
    add e
    ld a, [hl]
    ret nz

    rst $38
    ldh [$1f], a
    rst $38
    nop
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
    ld d, l
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, a
    ccf
    xor d
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
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $f4
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ffff
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
    rst $38
    rst $38
    cp e
    nop
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    cp $07
    db $fc
    rrca
    ld hl, sp+$1b
    pop af
    or $e3
    cp a
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $fd
    db $fc
    xor e
    nop
    rst $38
    inc bc
    db $fc
    rra
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    ld bc, $00fe
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
    ldh a, [rIE]
    rrca
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38

jr_0b8_4437:
    rst $38
    rst $38
    jr nz, jr_0b8_4437

    inc hl
    db $fc
    inc hl
    cp $11
    cp $11
    cp $f1
    rra
    db $10
    rst $38
    ld hl, sp+$2f
    ccf
    ld h, h
    ld a, a
    and h
    rst $38
    and h
    rst $38
    inc h
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld d, $ff
    add hl, de
    ld sp, hl
    ld de, $63f1
    db $e3
    add l
    add a
    add hl, bc
    rrca
    ld [hl], c
    ld a, a
    adc c
    rst $38
    adc c
    ld a, a
    adc b
    ld a, a
    adc b
    rst $38
    adc b
    ld a, a
    rst $38
    sbc [hl]
    rst $38
    ld l, $ff
    ld e, $ff
    add a
    ld a, a
    adc e
    ccf
    adc $3f
    add $1f
    pop hl
    ld [c], a
    ld [bc], a
    di
    inc bc
    ldh a, [$f0]
    ld sp, hl
    ld bc, $07f8
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
    ret nz

    rst $38
    ccf
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld de, $11ff
    rst $38
    ld de, $90ff
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $21ff
    rst $38
    ld de, $11ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
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
    ld bc, $0302
    inc b
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
    nop
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $0012
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
    inc d
    dec d
    ld d, $17
    jr jr_0b8_4511

jr_0b8_4511:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
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
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    nop
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
    ld h, $27
    jr z, jr_0b8_4568

    ld a, [hl+]
    nop
    nop
    nop
    nop
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
    jr nc, jr_0b8_4551

jr_0b8_4551:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b8_4568:
    nop
    nop
    scf
    jr c, jr_0b8_45a6

    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    nop
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
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b8_45a6:
    nop
    nop
    nop
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0202
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
    ld bc, $0202
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
    ld bc, $0201
    ld bc, $0303
    nop
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld [bc], a
    ld bc, $0505
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
    ld [bc], a
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
    nop
    nop
    nop
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
    rst $38
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
    ld a, [$7000]
    nop
    jp Jump_0b8_4083


    ld b, b
    ld b, b
    ld b, b
    ld [$0808], sp
    ld [$0000], sp
    inc d
    inc d
    and a
    and a
    ld e, e
    ld e, e
    rst $38
    rst $20
    rst $38
    sbc a
    rst $38
    ld l, [hl]
    rst $38
    rst $10
    ei
    ret z

    rst $38
    inc de
    db $fc
    rrca
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add c
    rlca
    rlca
    ld [$9f08], sp
    sbc a
    ld e, a
    ld e, a
    cpl
    cpl
    pop bc
    pop bc
    inc a
    inc a
    ld l, e
    ld l, e
    ei
    ei
    dec sp
    dec sp
    inc sp
    inc sp
    inc sp
    inc sp
    add a
    add a
    rst $30
    rst $30
    db $dd
    db $dd
    rst $38
    rst $38
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [de], a
    ld [de], a
    ld [$0008], sp
    nop
    ld [$0408], sp
    inc b
    add c
    add c
    jr nz, @+$22

    add hl, bc
    add hl, bc
    ld h, $26
    adc l
    adc l
    db $db
    db $db
    cp h
    cp h
    ld h, b
    ld h, b
    rst $38
    ldh a, [rIE]
    add a
    ld a, [$5ff8]
    nop
    rst $38
    ld e, $e1
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [rIE], a
    add b
    rst $38
    inc bc
    rst $38
    dec c
    rst $38
    dec e
    rst $38
    ld [hl], a
    db $fd
    db $fc
    xor e
    add b
    rst $38
    inc bc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    add c
    cp $4a
    rst $38
    db $76
    cp $5a
    rst $38
    ld d, [hl]
    cp $56
    rst $38
    ld d, a
    rst $38
    dec d
    rst $38
    db $db
    rst $38
    jr z, @+$01

    ld l, b
    rst $30
    inc h
    rst $38
    db $e4
    rst $30
    inc h
    ei
    ld [de], a
    db $fd
    sub c
    cp $68
    rst $38
    cp h
    rst $38
    ei
    rst $38
    db $f4
    rst $38
    and b
    cp $41
    ld hl, sp-$79
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIE]
    adc a
    rst $38
    rst $38
    ld a, [hl]
    ld d, l
    ld bc, $00fe
    rst $38
    ld hl, sp-$01
    ld b, $ff
    dec bc
    rst $38
    rra
    rst $38
    ld l, e
    rst $38
    rst $28
    rst $38
    xor e
    rst $38
    rst $28
    db $fd
    cp h
    ld [$5fc0], a
    nop
    rlca
    rst $38
    rst $38
    ld hl, sp+$1f
    ldh [$e1], a
    rst $38
    cp $fe
    ldh [$f5], a
    add b
    xor a
    rlca
    ld e, a
    rst $38
    rra
    ld a, a
    ccf
    rst $38
    ld [hl], b
    rst $38
    ld d, [hl]
    rst $38
    ld a, [hl+]
    ld a, a
    ld a, [hl+]
    rst $38
    xor d
    rst $38
    ld a, c
    rst $38
    ld [$07ff], sp
    rst $38
    inc de
    rst $38
    ld c, a
    rst $38
    xor e
    rst $38
    nop
    rst $38
    pop af
    xor [hl]
    ld c, $55
    nop
    rst $38
    add b
    rst $38
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    sbc e
    rst $38
    ld a, e
    ld e, a
    rra
    xor a
    rrca
    rst $10
    rlca
    add e
    db $eb
    ld b, e
    rst $30
    pop hl
    ei
    pop hl
    db $fd
    pop hl
    ei
    rra
    ld e, [hl]
    ld bc, $03ab
    rst $30
    db $f4
    cp $f8
    dec c
    ldh a, [$3b]
    pop bc
    rst $10
    rlca
    xor [hl]
    ld [$3f7f], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    inc sp
    inc sp
    call z, $85cc
    add l
    ret


    ret


    set 1, e
    rst $38
    rst $18
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld b, c
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp-$01
    xor h
    rlca
    ld d, [hl]
    inc bc
    ei
    pop hl
    dec a
    pop de
    ld a, d
    adc b
    db $fd
    ld [$1cfe], sp
    rst $38
    inc e
    cp $74
    rst $38
    call nc, Call_0b8_7cfe
    rst $38
    ld e, h
    cp $f4
    rst $38
    ld a, b
    cp $f8
    rst $38
    ld hl, sp-$02
    ldh a, [$f0]
    rst $18
    ld sp, hl
    ccf
    rst $38
    xor a
    rst $38
    ld sp, hl
    cp $6e
    ld hl, sp-$43
    ret nz

    ld [$5701], a
    rrca
    cp a
    ccf
    rst $38
    ret nc

    ld a, [$3df0]
    ld hl, sp+$0f
    rst $38
    rlca
    rlca
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
    ccf
    ccf
    add e
    add e
    or h
    or h
    cp d
    cp d
    rst $38
    rrca
    rst $28
    rra
    add a
    ld a, a
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    ld [$f8ff], sp
    rst $38
    and a
    rst $38
    ld hl, sp-$7b
    ldh a, [rSTAT]
    ld b, e
    ld h, h
    rst $00
    ld c, b
    ld c, a
    ld c, h
    rst $18
    ld c, c
    ld a, a
    ld h, e
    rst $38
    ld h, a
    ld a, a
    ld [hl], a
    rst $38
    ld a, e
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp a
    ret nz

    push de
    nop
    xor d
    nop
    ld d, l
    ccf
    cp a
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $20
    rst $38
    rst $38
    rra
    ld e, a
    inc bc
    xor e
    nop
    push af
    ret nz

    cp $f8
    ccf
    add a
    add a
    ld hl, sp-$08
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
    ld b, c
    ld b, c
    rst $38
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$01
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$02
    ldh a, [rIE]
    ret nz

    rst $38
    ld b, l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    xor $7f
    ccf
    xor a
    rlca
    ld d, l
    ld bc, $80ea
    db $fd
    ldh [$fe], a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    jp $fcfc


    rst $38
    rst $38
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
    ldh [rIE], a
    ret nz

    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $c2ff
    ccf
    add h
    ld a, a
    rst $38
    rst $38
    sub b
    ld a, a
    and b
    ld a, a
    ldh a, [rIF]
    rrca
    nop
    rlca
    nop
    rlca
    nop
    ccf
    ld bc, $017d
    ld sp, hl
    add hl, bc
    di
    ld [hl], c
    rst $20
    jp $cf87


    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    ld a, a
    ld hl, sp+$3f
    ld a, b
    rra
    cp b
    rrca
    ld e, b
    rlca
    xor h
    inc bc
    sub $83
    ld [$f5c1], a
    pop bc
    ei
    pop hl
    db $fd
    and c
    rst $38
    rst $18
    ld a, $8f
    ld [hl], b
    db $10
    rst $28
    pop hl
    cp $9e
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38

jr_0b8_4a66:
    ld [$10ff], sp
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38

jr_0b8_4a74:
    nop
    rst $38
    nop
    rst $38
    add b
    cp $7e
    cp $01
    db $fd
    ld [bc], a
    ei
    call nz, $ef3f
    jr jr_0b8_4a74

    jr jr_0b8_4a66

    or b
    rst $18
    cp $df
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    ccf
    rst $18
    jr nc, @+$01

jr_0b8_4a95:
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    pop af
    ld c, $e7
    add hl, de
    add a
    ld a, c
    jp $f13c


    ld c, $fa
    dec b
    call c, $8f23
    ld [hl], b
    jp $e13c


    ld e, $c0
    ccf
    add [hl]
    ld a, c
    ld de, $40ee
    cp a
    ld hl, sp+$07
    rrca
    ldh a, [$f0]
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    cp $00
    cp $01
    db $fd
    ld [c], a
    ei
    rla
    rst $30
    ld [$08ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_0b8_4a95

    ld b, b
    ld a, a
    add b
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    cp $03
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fd
    ldh a, [$0a]
    ldh [$15], a
    ret nz

    dec hl
    pop bc

jr_0b8_4afb:
    ld d, a
    add e
    xor [hl]
    dec b
    ld e, [hl]
    inc b
    cp a
    adc [hl]
    ld sp, hl
    db $fc
    ld [hl], e
    ld sp, hl

jr_0b8_4b07:
    ld b, $c3
    inc a
    inc h
    db $db
    rst $38
    ld bc, $37ce
    sbc b
    ld l, d
    ld d, b
    or l
    jr nc, @-$23

    ldh [$37], a
    ld h, b
    cp a
    jr nc, jr_0b8_4afb

    rst $08
    ccf
    jr jr_0b8_4b07

    jr nz, @-$3f

    ld a, a
    ld a, a
    add b
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    db $fc
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    rra
    push af
    jr nz, @-$14

    ret nz

    ld e, a
    nop
    inc bc
    cp a
    rrca
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld sp, hl
    rst $00
    add $3b
    ld c, $f2
    adc [hl]
    ld [hl], e
    ld c, [hl]
    or e
    inc hl
    db $dd
    ld [hl], c

jr_0b8_4b65:
    adc [hl]
    sbc h
    ld h, e
    ld a, a
    add e
    db $fc
    dec a
    ret nz

    ld [$5500], a
    ld bc, $1fbf
    rst $38
    ld a, a
    pop hl
    or l
    res 1, h
    di
    adc h
    di
    jr jr_0b8_4b65

    ld a, b
    add a
    ld b, b
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
    rst $38
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
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    xor d
    add b
    ld d, l
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ei
    rst $38
    cp $fa
    ld hl, sp-$2b
    ret nz

    xor a
    ld bc, $065f
    cp a
    jr jr_0b8_4c3e

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    rst $38
    rst $38
    pop bc

jr_0b8_4bd3:
    pop bc
    ld a, [hl]
    ld a, [hl]
    rst $08
    rst $08
    ccf
    ccf
    inc bc
    inc bc
    dec b
    dec b
    rlca
    rlca
    jr nz, @+$01

    ldh [rIE], a
    ccf
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    or b
    ccf
    ld e, h
    rrca
    ld [$f503], a
    add c
    ld a, [$5de0]
    jr jr_0b8_4bd3

    inc b
    rst $38
    ld e, $fd
    rst $38
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$7f]
    rst $38
    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [rIE]
    rst $38
    rst $38
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    rst $38
    rst $38
    ldh [$bf], a
    cp $bf
    pop hl
    ccf
    ldh [$3f], a
    ldh [$7f], a
    ldh [$bf], a

jr_0b8_4c3e:
    ldh [rIE], a
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [c], a
    rst $38
    rra
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld a, a
    rst $38
    xor d
    add b
    rst $38
    ld b, b
    ld a, a
    ccf
    cp [hl]
    rra
    db $dd
    rrca
    db $ec
    rlca
    or $c7
    dec sp
    db $e3
    dec d
    pop af
    cp $fc
    rrca
    cp $09
    rst $38
    ld [$e8ff], sp
    rst $38
    ld e, a
    rra
    xor d
    nop
    push af
    nop
    rst $38
    ldh [$1f], a
    rst $38
    ld [$fcff], sp
    rst $38
    dec bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
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
    db $fc
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
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    cp b
    ccf
    rst $10
    rlca
    cp $c0
    ccf
    ld hl, sp-$01
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    cp $aa
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    cp a
    ccf
    ld d, l
    nop
    rst $38
    nop
    rst $38
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
    inc b
    rst $38
    inc b
    rst $38
    db $f4
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ffff
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
    rst $38
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
    ld hl, sp-$01
    ret nz

    cp a
    rrca
    ldh a, [$1f]
    db $e3
    rst $38
    dec e
    db $fc
    ld [hl], a
    ldh [$af], a
    add a
    ld a, h
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    rst $38
    rst $38
    nop
    rst $38
    rlca
    rst $38
    db $fd
    ld hl, sp-$55
    nop
    ld a, a
    inc bc
    db $fc
    ld a, a
    add b
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
    ld bc, $00fe
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
    ldh a, [rIE]
    rrca
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38

jr_0b8_4d87:
    rst $38
    rst $38
    jr nz, jr_0b8_4d87

    inc hl
    db $fc
    and e
    ld a, [hl]
    ld d, c
    cp $91
    cp $11
    rst $38
    db $10
    rst $38
    ld hl, sp+$2f
    ccf
    db $e4
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    rst $38
    inc h
    rst $38
    ld d, $f9
    rra
    pop hl
    rst $38
    rlca
    xor [hl]
    rrca
    ld a, c
    ld a, a
    pop af
    rst $38
    adc c
    add hl, bc
    rst $38
    adc c
    ld a, a
    adc c
    ld a, a
    adc c
    ld a, a
    adc c
    ld a, a
    adc b
    ld a, a
    adc b
    rst $38
    adc b
    ld a, a
    rst $38
    sbc [hl]
    rst $38
    ld l, $ff
    ld e, $ff
    add a
    ld a, a
    adc e
    ccf
    adc $3f
    add $1f
    pop hl
    ld [c], a
    ld [bc], a
    di
    inc bc
    ldh a, [$f0]
    ld sp, hl
    ld bc, $07f8
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
    ret nz

    rst $38
    ccf
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld de, $11ff
    rst $38
    ld de, $90ff
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $21ff
    rst $38
    ld de, $11ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
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
    ld bc, $0302
    inc b
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
    nop
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $0012
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
    inc d
    dec d
    ld d, $17
    jr jr_0b8_4e61

jr_0b8_4e61:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
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
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    nop
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
    ld h, $27
    jr z, jr_0b8_4eb8

    ld a, [hl+]
    nop
    nop
    nop
    nop
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
    jr nc, jr_0b8_4ea1

jr_0b8_4ea1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b8_4eb8:
    nop
    nop
    scf
    jr c, jr_0b8_4ef6

    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    nop
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
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b8_4ef6:
    nop
    nop
    nop
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    ld e, h
    ld d, l
    ld e, l
    ld e, [hl]
    ld e, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0202
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
    ld bc, $0202
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
    ld bc, $0201
    ld bc, $0303
    nop
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0101
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
    ld [bc], a
    ld bc, $0505
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
    ld [bc], a
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
    nop
    nop
    nop
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
    rst $38
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
    ld a, [$7000]
    nop
    jp Jump_0b8_4083


    ld b, b
    ld b, b
    ld b, b
    ld [$0808], sp
    ld [$0000], sp
    inc d
    inc d
    and a
    and a
    ld e, e
    ld e, e
    rst $38
    rst $20
    rst $38
    sbc a
    rst $38
    ld [hl], e
    db $fd
    ret c

    rst $38
    rst $08
    rst $38
    inc de
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add c
    rst $38
    rst $00
    rst $38
    cp a
    rst $28
    add a
    push af
    ld h, b
    cp $38
    rst $38
    rst $10
    rst $38
    ccf
    rst $38
    ld l, e
    ei
    ei
    dec sp
    dec sp
    inc sp
    inc sp
    inc sp
    inc sp
    add a
    add a
    rst $30
    rst $30
    db $dd
    db $dd
    rst $38
    rst $38
    rst $38
    ld b, $ff
    ld [bc], a
    cp $02
    rst $38
    ld de, $09ff
    rst $38
    nop
    rst $38
    ld [$04ff], sp
    add c
    add c
    jr nz, @+$22

    add hl, bc
    add hl, bc
    ld h, $26
    adc l
    adc l
    db $db
    db $db
    cp h
    cp h
    ld h, b
    ld h, b
    rst $38
    ldh a, [$fe]
    add c
    rst $38
    ld sp, hl
    ld e, a
    ld e, $ea
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$5f
    ldh [rIE], a
    and b
    rst $38
    and e
    rst $38
    xor l
    rst $38
    sbc l
    rst $38
    sub l
    rst $28
    adc l
    rst $38
    rst $00
    db $fd
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    xor e
    inc bc

jr_0b8_515a:
    push af
    nop
    rst $38
    ldh [rIE], a
    sbc b
    ld b, a
    ld b, a
    ld [hl], b
    ld [hl], b
    ld e, b
    ld e, b
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    dec d
    dec d
    db $db
    db $db
    rst $38
    add b
    rst $38
    adc b
    rst $38
    ld b, h
    ld a, a
    ld b, b
    cp a
    jr nz, jr_0b8_515a

    sub b
    rst $28
    adc c
    rst $10
    ld b, a
    db $eb
    and c
    push af
    ldh a, [$fe]
    db $fc
    rst $38
    and e
    cp $41
    ld hl, sp-$79
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIE]
    rrca
    rst $38
    rst $38
    rst $38
    ld d, l
    nop
    xor d
    nop
    rst $38
    ld a, h
    rst $38
    add e
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    ld l, e
    rst $38
    rst $28
    rst $38
    xor e
    rst $38
    rst $28
    rst $38
    xor a
    cp $fe
    db $fd
    cp b
    db $eb
    ret nz

    ld e, a
    ld bc, $0fff
    rst $38
    di
    cp $fc
    ld d, l
    nop
    xor e
    nop
    rst $38
    inc bc
    ccf
    ccf
    rst $00
    rst $00
    ld d, b
    ld d, b
    ld d, [hl]
    ld d, [hl]
    xor d
    xor d
    xor d
    xor d
    ld a, [hl+]
    ld a, [hl+]
    add hl, sp
    add hl, sp
    ld [$0708], sp
    rlca
    inc de
    inc de
    ld c, a
    ld c, a
    xor e
    xor e
    nop
    nop
    jr nc, jr_0b8_520e

    add a
    add a
    ld a, [$55f8]
    nop
    cp a
    rlca
    ld hl, sp-$01
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    db $db
    cp a
    dec sp
    ld e, a
    rrca
    xor a
    rlca
    rst $10
    add e
    db $eb
    jp Jump_0b8_61f7


    ei
    pop hl
    db $fd
    pop hl
    rst $38
    rst $38
    push de
    add b
    xor d
    nop

jr_0b8_520e:
    ld a, a
    ld bc, $7efe
    db $fd
    ld hl, sp-$15
    ldh [$57], a
    nop
    cp a
    ld bc, $067f
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    inc sp
    inc sp
    call z, $85cc
    add l
    ret


    ret


    set 1, e
    rst $38
    rst $18
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld b, c
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    ldh [rIE], a
    cp b
    rra
    ld d, h
    rlca
    db $eb
    inc bc
    push af
    pop bc
    ei
    ld hl, $10fd
    ld a, [$fd10]
    ld [hl], b
    ld a, [$fdd0]
    ld [hl], b
    cp $50
    db $fd
    ldh a, [$fe]
    ld a, b
    rst $38
    ld hl, sp-$02
    ld hl, sp-$01
    ld hl, sp-$08
    rst $08
    ld sp, hl
    ccf
    rst $38
    sbc a
    rst $38
    pop af
    cp $06
    ld hl, sp-$03
    ld h, b
    ld [$d780], a
    inc bc
    xor a
    inc c
    ld a, l
    ld a, $f2
    ld a, a
    ret


    rst $38
    or e
    ld a, a
    adc [hl]
    add a
    ld sp, hl
    ld hl, sp-$01
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
    add e
    add e
    or h
    or h
    cp d
    cp d
    rst $38
    rrca
    rst $28
    rra
    add a
    ld a, a
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    ld [$f8ff], sp
    rst $38
    daa
    rst $38
    ld hl, sp+$05
    ldh a, [$81]
    jp $c7a4


    ret z

    rst $08
    call z, $c9df
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp a
    ret nz

    push de
    nop
    xor d
    nop
    ld e, a
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $08
    ccf
    rst $30
    rrca
    cp a
    add c
    rst $18
    ldh [$7a], a
    ldh a, [$3f]
    db $fc
    sbc a
    cp $7f
    add a
    add a
    ld hl, sp-$08
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
    ld b, c
    ld b, c
    rst $38
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$01
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$02
    ldh a, [rIE]
    ret nz

    rst $38
    ld b, l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    xor $7f
    ccf
    xor a
    rlca
    ld d, l
    ld bc, $00fa
    db $fd
    add b
    cp $f0
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    jp $fcfc


    rst $38
    rst $38
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
    ldh [rIE], a
    ret nz

    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $c2ff
    ccf
    add h
    ld a, a
    rst $38
    rst $38
    sub b
    ld a, a
    and b
    ld a, a
    ldh a, [rIF]
    rrca
    nop
    rlca
    nop
    rlca
    nop
    ccf
    ld bc, $017d
    ld sp, hl
    add hl, bc
    di
    ld [hl], c
    rst $20
    jp $cf87


    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    ld a, a
    ld hl, sp+$3f
    ld a, b
    rra
    cp b
    rrca
    ld e, b
    rlca
    xor h
    inc bc
    sub $83
    ld [$f5c1], a
    ldh [$fa], a
    ldh a, [$fd]
    sub c
    rst $38
    rst $08
    ld a, $3e
    pop bc
    db $10
    rst $28
    pop hl
    cp $9e
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38

jr_0b8_53b6:
    ld [$10ff], sp
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38

jr_0b8_53c4:
    nop
    rst $38
    nop
    rst $38
    add b
    cp $7e
    cp $01
    db $fd
    ld [bc], a
    ei
    call nz, $ef3f
    jr jr_0b8_53c4

    jr jr_0b8_53b6

    or b
    rst $18
    cp $df
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    ccf
    rst $18
    jr nc, @+$01

jr_0b8_53e5:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $f3
    dec c
    jp $f13d


    ld c, $f8
    rlca
    cp $01
    rst $38
    nop
    sbc e
    ld h, h
    rst $00
    cp b
    jp nz, $81bd

    ld a, [hl]
    ld c, $f1
    dec a
    jp nz, $0ff0

    ld sp, hl
    ld b, $0e
    pop af
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    cp $00
    cp $01
    db $fd
    ld [c], a
    ei
    rla
    rst $30
    ld [$08ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_0b8_53e5

    ld b, b
    ld a, a
    add b
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    cp $03
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cp $fc
    cp $f8
    db $fd
    ldh a, [rNR30]
    ldh [$35], a
    pop bc
    ld l, e
    jp $8356


    xor [hl]
    rlca
    ld e, h
    ld [$8cbf], sp
    ei
    ld hl, sp+$77
    ld [hl], c

jr_0b8_5457:
    adc [hl]
    add d
    ld a, l
    db $fc
    inc bc
    di
    dec c
    and $1f
    adc b
    ld a, d
    ld d, b
    or l
    db $10
    ei
    jr nz, @-$07

    and b
    ld a, a
    jr nc, @-$1f

    rst $08
    ccf
    jr jr_0b8_5457

    jr nz, @-$3f

    ld a, a
    ld a, a
    add b
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    db $fc
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    di

jr_0b8_5497:
    rrca
    cp $1c
    push af
    ld h, b
    xor d
    add b
    ld e, a
    ld bc, $bf07
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp a
    ld sp, hl
    rlca
    jp Jump_000_263d


    jp c, $3bc6

    and $1b
    inc sp
    call $8679
    adc $31
    ld a, a
    add e
    db $fc
    dec a
    ret nz

    ld [$5500], a
    ld bc, $1fbf
    rst $38
    ld a, e
    push hl
    sub l
    db $eb
    adc h
    di
    db $e4
    sbc e
    adc b
    ld [hl], a
    jr c, jr_0b8_5497

    ld b, b
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
    rst $38
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
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    cp $ff
    xor e
    inc bc
    ld d, l
    nop
    cp $00
    rst $38
    db $fc
    rst $38
    rst $38
    db $fd
    ld hl, sp-$15
    ldh [$d7], a
    pop bc
    xor a
    add d
    ld e, a
    inc b
    cp a
    ld [$30ff], sp
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    rst $38
    rst $38
    pop bc
    pop bc
    ld a, [hl]
    ld a, [hl]
    rst $08
    rst $08
    ccf
    ccf
    inc bc
    inc bc
    dec b
    dec b
    rlca
    rlca
    jr nz, @+$01

    ldh [rIE], a
    ccf
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    adc a
    rst $38
    ld [hl], l
    ld [hl], b
    xor e
    ld [$05d7], sp
    db $eb
    add e
    push af
    pop hl
    ld a, [$ff50]
    adc b
    cp $3c
    di
    ld a, $f1
    ccf
    ldh a, [$7f]
    rst $38
    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [rIE]
    ld hl, sp-$01
    ld d, a
    rlca
    xor d
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$19
    cp a
    cp $bf
    pop hl
    ccf
    ldh [$3f], a
    ldh [$7f], a
    ldh [$bf], a
    ldh [rIE], a
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [c], a
    rst $38
    rra
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    cp $ff
    ld d, l
    ld bc, $00fe
    rst $38
    ld hl, sp+$07
    rst $38
    inc b
    rst $38
    cp $ff
    ld b, l
    ld a, a
    xor b
    ccf
    ld e, b
    rra
    cp b
    rra
    ret c

    adc a
    db $ec
    add a
    ld [hl], a
    jp $e03a


    rra
    ldh a, [rIF]
    db $fc
    db $eb
    rst $38
    cp h
    rra
    ld d, a
    inc bc
    ld a, [$fd00]
    ret nz

    ccf
    ldh a, [rIE]
    db $fc
    dec bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
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
    db $fc
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
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    and b
    ccf
    ret nc

    rra
    db $ec
    rrca
    rst $30
    add e
    ld a, [hl]
    ret nz

    rst $38
    ldh [$1f], a
    rst $38
    nop
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
    ld d, l
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, a
    ccf
    xor d
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
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $f4
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ffff
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
    rst $38
    rst $38
    cp e
    nop
    rst $38
    nop
    rst $38
    rst $38
    inc bc
    cp $07
    db $fc
    rrca
    ld hl, sp+$1b
    pop af
    or $e3
    cp a
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    db $fd
    db $fc
    xor e
    nop
    rst $38
    inc bc
    db $fc
    rra
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    ld bc, $00fe
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
    ldh a, [rIE]
    rrca
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38

jr_0b8_56c7:
    rst $38
    rst $38
    jr nz, jr_0b8_56c7

    inc hl
    db $fc
    inc hl
    cp $11
    cp $11
    cp $f1
    rra
    db $10
    rst $38
    ld hl, sp+$2f
    ccf
    ld h, h
    ld a, a
    and h
    rst $38
    and h
    rst $38
    inc h
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld d, $ff
    add hl, de
    ld sp, hl
    ld de, $63f1
    db $e3
    add l
    add a
    add hl, bc
    rrca
    ld [hl], c
    ld a, a
    adc c
    rst $38
    adc c
    ld a, a
    adc b
    ld a, a
    adc b
    rst $38
    adc b
    ld a, a
    rst $38
    sbc [hl]
    rst $38
    ld l, $ff
    ld e, $ff
    add a
    ld a, a
    adc e
    ccf
    adc $3f
    add $1f
    pop hl
    ld [c], a
    ld [bc], a
    di
    inc bc
    ldh a, [$f0]
    ld sp, hl
    ld bc, $07f8
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
    ret nz

    rst $38
    ccf
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld de, $11ff
    rst $38
    ld de, $90ff
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $21ff
    rst $38
    ld de, $11ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
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
    ld bc, $0302
    nop
    nop
    nop
    nop
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
    rlca
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
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    db $10
    ld de, $0012
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_0b8_580c

jr_0b8_580c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
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
    jr nz, jr_0b8_585c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
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
    ld h, $27
    nop

jr_0b8_585c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
    nop
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
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp $78
    ld hl, sp-$42
    cp [hl]
    cp a
    cp a
    ld a, a
    ld a, a
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
    db $fd
    db $fd
    cp $fe
    xor b
    ld hl, sp+$50
    ldh a, [$9f]
    rst $38
    xor l
    rst $38
    ld a, d
    rst $30
    ld a, d
    rst $30
    or l
    rst $38
    ld [hl], l
    rst $28
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    rst $38
    cp a
    rst $38
    adc e
    rst $38
    ld a, e
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    rst $28
    cp $ce
    db $ed
    ret z

    ld [hl], a
    ld b, h
    daa
    daa
    ld a, h
    ld a, h
    db $e3
    db $e3
    ld [hl], b
    ldh a, [$bc]
    db $fc
    cp a
    rst $28
    ld a, a
    rst $38
    ld a, a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld hl, sp-$08
    and b
    and b
    jp nc, $ffd2

    rst $38
    rst $38
    rst $28
    db $fd
    ld h, h
    ei
    xor b
    rst $30
    or b
    rst $28
    pop hl
    cp $22
    rst $28
    ld b, d
    rst $18
    add a
    cp [hl]
    inc c
    ld [hl], l
    db $10
    db $eb
    ldh [$57], a
    inc bc
    ld hl, sp+$0f
    rst $38
    rst $38
    ret z

    rst $38
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    nop
    nop
    db $10
    db $10
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, a
    rlca
    ei
    ld bc, $e0fd
    cp $f8
    xor a
    ld b, $f5
    ld bc, $f0fe
    xor a
    ld c, $f5
    ld bc, $c0ff
    rst $38
    rst $38
    ccf
    ret nz

    rst $38
    rst $38
    ccf
    rst $38
    ccf
    ld [$fffb], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, $ff
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld a, a
    ccf
    cp a
    add hl, de
    rst $18
    adc l
    ld l, a
    ld c, e
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    ld d, c
    ld hl, sp-$01
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
    inc bc
    db $fd
    or l
    ei
    jp z, $fbff

    ei
    di
    rst $30
    ld [bc], a
    ei
    di
    rst $30
    ld [hl+], a
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    sub l
    sub l
    pop de
    pop de
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    and $c3
    jp $ef81


    jp Jump_0b8_7fff


    rst $20
    jp Jump_000_00c3


    rst $20
    nop
    rst $38
    nop
    ld b, d
    nop
    rst $38
    rst $38
    rst $38
    nop
    add c
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    or e
    or e
    dec [hl]
    dec [hl]
    and a
    and a
    ld a, a
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
    rst $20
    rst $28
    rst $08
    ld e, a
    rra
    rst $38
    cp a
    cp $7e
    db $fd
    db $fc
    cp $94
    db $fd
    ld a, b
    ei
    ld hl, sp-$01
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop
    rra
    rra
    db $ed
    db $ed
    xor h
    xor h
    xor c
    xor c
    rst $38
    rst $38
    and d
    rst $38
    ld d, c
    rst $38
    or d
    rst $38
    ld a, [bc]
    rst $30
    add a
    di
    dec l
    db $e3
    push de
    jp $87af


    ld e, a
    rrca
    cp a
    rra
    ld a, a
    ccf
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    db $ec
    rst $38
    cp $03
    cp $03
    cp $ff
    cp $17
    cp $53
    cp $ff
    cp $03
    sbc e
    rst $38
    ld a, a
    rst $38
    sub a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    push af
    ldh [$af], a
    add b
    ld a, a
    rlca
    ld a, [$7f18]
    daa
    rst $38
    pop hl
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld l, c
    ld l, c
    xor l
    xor l
    ccf
    ccf
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    rst $38
    db $fc
    xor e
    inc bc
    db $fd
    nop
    rst $38
    cp $5f
    ld bc, $07ff
    rst $38
    rst $38
    rst $38
    ld sp, hl
    sbc a
    ld [hl], c
    add a
    ld a, b
    pop bc
    cp $ff
    ld a, a
    ret nz

Call_0b8_5bf9:
    ld a, a
    ret nz

    rst $38
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    jr nc, @-$1f

    ret


    rst $38
    ld c, c
    rst $18
    ld d, c
    cp a
    sub c
    rst $38
    add sp, $5f
    ld e, $eb
    ld bc, $e1ff
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    or $ff
    ld l, e
    rst $38
    ld c, $ff
    dec b
    ld a, a
    add d
    rra
    db $e3
    rlca
    ld sp, hl
    db $fd
    cp $00
    rst $38
    jr nz, jr_0b8_5c61

    ld [$180f], sp
    rra
    nop
    rrca
    ld [$400f], sp
    ld b, a
    ld b, b
    ld b, e
    ld b, h
    ld b, a
    inc l
    inc l
    inc h
    inc h
    inc h
    inc h
    ld [bc], a
    ld [bc], a
    ld de, $1011
    db $10
    db $10
    stop
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    ld b, $ff
    adc c
    rst $38
    sbc h
    rst $38
    jp z, $44ff

    ld a, a
    add e
    nop

jr_0b8_5c61:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    rlca
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
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    db $10
    ld de, $0012
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_0b8_5d0c

jr_0b8_5d0c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
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
    jr nz, jr_0b8_5d5c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
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
    ld h, $27
    nop

jr_0b8_5d5c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
    nop
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
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp $78
    ld hl, sp-$42
    cp [hl]
    cp a
    cp a
    ld a, a
    ld a, a
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
    db $fc
    db $fc
    cp $fe
    xor e
    rst $38
    ld d, a
    rst $38
    sbc a
    rst $38
    xor l
    rst $38
    ld a, d
    rst $30
    ld a, d
    rst $30
    or l
    rst $38
    ld [hl], l
    rst $28
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    rst $38
    cp a
    rst $38
    adc e
    rst $38
    ld a, e
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    ld c, a
    push af
    and b
    sbc a
    sbc a
    jp z, $ebca

    db $eb
    ld a, b
    ld hl, sp-$44
    db $fc
    cp a
    rst $28
    ld a, a
    rst $38
    ld a, a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld hl, sp-$08
    and b
    and b
    jp nc, $ffd2

    rst $38
    rst $38
    rst $28
    rst $38
    ld h, a
    ld a, [$f7a8]
    or b
    rst $28
    pop hl
    cp [hl]
    and d
    rst $28
    and e
    ld e, a
    ld b, a
    cp [hl]
    adc h
    ld [hl], l
    db $10
    db $eb
    ldh [$57], a
    inc bc
    ld hl, sp+$0f
    rst $38
    rst $38
    ret z

    rst $38
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    nop
    nop
    db $10
    db $10
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    inc bc
    db $fd
    nop
    cp $f8
    xor a
    ld b, $f5
    pop hl
    cp $f8
    xor a
    ld c, $f5
    ld bc, $c0ff
    rst $38
    rst $38
    ccf
    ret nz

    rst $38
    rst $38
    ccf
    rst $38
    ccf
    ld [$fffb], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, $ff
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld a, a
    ccf
    cp a
    add hl, de
    rst $18
    add l
    ld l, a
    ld c, e
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    ld d, c
    ld hl, sp-$01
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
    cp $02
    db $fd
    or l
    ei
    jp z, $fbff

    ei
    di
    rst $30
    ld [bc], a
    ei
    di
    rst $30
    ld [hl+], a
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    sub l
    sub l
    pop de
    pop de
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    and $c3
    jp $ef81


    jp $7ffe


    rst $20
    jp Jump_000_00c3


    rst $20
    nop
    rst $38
    nop
    ld b, d
    nop
    rst $38
    rst $38
    rst $38
    nop
    add c
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    or e
    or e
    dec [hl]
    dec [hl]
    and a
    and a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $28
    rst $08
    ld e, a
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, h
    db $fd
    db $fc
    ei
    sub b
    db $fd
    ld a, b
    ei
    ld hl, sp-$01
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop
    rra
    rra
    db $ed
    db $ed
    xor h
    xor h
    xor c
    xor c
    rst $38
    rst $38
    and d
    rst $38
    ld d, c
    rst $38
    cp d
    rst $30
    ld a, [bc]
    rst $20
    sub a
    rst $20
    dec l
    rst $20
    db $dd
    rst $00
    or a
    rrca
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    db $ec
    rst $38
    cp $03
    cp $03
    cp $ff
    cp $17
    cp $53
    cp $ff
    cp $03
    sbc e
    rst $38
    ld a, a
    rst $38
    sub a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    push af
    ldh [$af], a
    add b
    ld a, a
    rlca
    ld a, [$7f18]
    daa
    rst $38
    pop hl
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld l, c
    ld l, c
    xor l
    xor l
    ccf
    ccf
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    rst $38
    db $fc
    xor e
    inc bc
    db $fd
    nop
    rst $38
    cp $55
    ld bc, $00ff
    rst $38
    rst $38
    rst $38
    ld sp, hl
    sbc a
    ld [hl], c
    add a
    ld a, b
    pop bc
    cp $ff
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    jr nz, @+$01

    or c
    rst $38
    ld l, c
    rst $18
    ld c, c
    rst $38
    ld c, c
    rst $18
    ret z

    ld a, a
    ld e, $ef
    ld [hl+], a
    rst $10
    call nz, $38ff
    rst $38
    db $f4
    rst $38
    or $ff
    ld l, e
    rst $38
    ld c, $ff
    dec b
    ld a, a
    add d
    rra
    db $e3
    rlca
    ld sp, hl
    db $fd
    cp $00
    rst $38
    jr nz, jr_0b8_6161

    ld [$180f], sp
    rra
    nop
    rrca
    ld [$400f], sp
    ld b, a
    ld b, b
    ld b, e
    ld b, h
    ld b, a
    inc l
    inc l
    inc h
    inc h
    inc h
    inc h
    ld [bc], a
    ld [bc], a
    ld de, $1011
    db $10
    db $10
    stop
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    ld b, $ff
    adc c
    rst $38
    sbc h
    rst $38
    jp z, $44ff

    ld a, a
    add e
    nop

jr_0b8_6161:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    rlca
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
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0b8_61f7:
    nop
    inc de
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
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_0b8_620c

jr_0b8_620c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
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
    jr nz, jr_0b8_625c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
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
    ld h, $27
    nop

jr_0b8_625c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
    nop
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
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp $78
    ld hl, sp-$42
    cp [hl]
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
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
    xor e
    rst $38
    ld d, a
    rst $38
    sbc a
    rst $38
    xor l
    rst $38
    ld a, d
    rst $30
    ld a, d
    rst $30
    or l
    rst $38
    ld [hl], l
    rst $28
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    rst $38
    cp a
    rst $38
    adc e
    rst $38
    ld a, e
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    rst $38
    xor a
    rrca
    push af
    nop
    rst $38
    ldh a, [rIF]
    rrca
    add b
    add b
    rst $38
    rst $38
    ld b, b
    ret nz

    cp h
    db $fc
    cp a
    db $e3
    ld a, a
    rst $38
    ld a, a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld hl, sp-$08
    and b
    and b
    jp nc, $ffd2

    rst $38
    rst $38
    rst $28
    db $fd
    ld h, h
    ei
    xor b
    rst $30
    or c
    rst $28
    ld [c], a
    cp a
    and h
    ld l, a
    daa
    rst $18
    ld b, a
    cp a
    adc a
    ld a, a
    rra
    ld a, [$57f8]
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    ret z

    rst $38
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    nop
    nop
    db $10
    db $10
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, a
    rlca
    ei
    ld bc, $f8fd
    ld e, [hl]
    inc e
    rst $28
    ld b, $f5
    pop hl
    cp $d8
    rst $38
    cp $55
    ld bc, $00ff
    rst $38
    ld a, a
    cp a
    ret nz

    rst $38
    rst $38
    ccf
    rst $38
    ccf
    ld [$fffb], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, $ff
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld a, a
    ccf
    cp a
    add hl, de
    rst $18
    add l
    rst $28
    ld c, e
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    ld d, c
    ld hl, sp-$01
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
    cp $02
    db $fd
    or l
    ei
    jp z, $fbff

    ei
    di
    rst $30
    ld [bc], a
    ei
    di
    rst $30
    ld [hl+], a
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    sub l
    sub l
    pop de
    pop de
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    and $c3
    jp $ef81


    jp Jump_0b8_7eff


    rst $20
    jp Jump_000_00c3


    rst $20
    nop
    rst $38
    nop
    ld b, d
    nop
    rst $38
    rst $38
    rst $38
    nop
    add c
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    or e
    or e
    dec [hl]
    dec [hl]
    and a
    and a
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
    ld a, a
    ld a, a
    rst $18
    sbc [hl]
    cp $6c
    db $fd
    db $fc
    ei
    sub b
    db $fd
    ld a, b
    ei
    ld hl, sp-$01
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop
    rra
    rra
    db $ed
    db $ed
    xor h
    xor h
    xor c
    xor c
    rst $38
    rst $38
    and d
    rst $38
    ld d, c
    rst $38
    or d
    rst $38
    ld [bc], a
    rst $38
    sub a
    rst $38
    dec [hl]
    rst $08
    push de
    adc a
    or a
    rra
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    db $ec
    rst $38
    cp $03
    cp $03
    cp $ff
    cp $17
    cp $53
    cp $ff
    cp $03
    sbc e
    rst $38
    ld a, a
    rst $38
    sub a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f7f8]
    ldh [$af], a
    add c
    ld a, a
    ld b, $fa
    jr jr_0b8_663c

    daa
    rst $38
    pop hl
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld l, c
    ld l, c
    xor l
    xor l
    ccf
    ccf
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    rst $38
    cp $aa
    nop
    rst $38
    inc bc
    rst $38
    cp $55
    ld bc, $00fe
    rst $38
    cp $ff
    ld sp, hl
    sbc a
    ld [hl], c
    add a
    ld a, b
    pop bc
    cp $ff
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, h
    rst $38
    and b
    rst $38
    and c
    ld a, a
    ld hl, $21ff
    ld a, a
    ld e, c
    rst $38
    ld d, b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld hl, sp-$51
    ld [$04ff], sp
    rst $38
    cp $ff
    ld l, e
    rst $38
    ld c, $ff
    dec b
    ld a, a
    add d
    rra
    db $e3
    rlca
    ld sp, hl
    db $fd
    cp $00
    rst $38
    jr nz, jr_0b8_6661

    ld [$180f], sp
    rra
    nop
    rrca
    ld [$400f], sp
    ld b, a

jr_0b8_663c:
    ld b, b
    ld b, e
    ld b, h
    ld b, a
    inc l
    inc l
    inc h
    inc h
    inc h
    inc h
    ld [bc], a
    ld [bc], a
    ld de, $1011
    db $10
    db $10
    stop
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    ld b, $ff
    adc c
    rst $38
    sbc h
    rst $38
    jp z, $44ff

    ld a, a
    add e
    nop

jr_0b8_6661:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    rlca
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
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    db $10
    ld de, $0012
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_0b8_670c

jr_0b8_670c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
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
    jr nz, jr_0b8_675c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
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
    ld h, $27
    nop

jr_0b8_675c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
    nop
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
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    cp $78
    ld hl, sp-$42
    cp [hl]
    cp a
    cp a
    ld a, a
    ld a, a
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
    db $fd
    db $fd
    cp $fe
    xor e
    rst $38
    ld d, a
    rst $38
    sbc a
    rst $38
    xor l
    rst $38
    ld a, d
    rst $30
    ld a, d
    rst $30
    or l
    rst $38
    ld [hl], l
    rst $28
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    rst $38
    cp a
    rst $38
    adc e
    rst $38
    ld a, e
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    ld c, a
    push af
    and b
    sbc a
    sbc a
    jp z, $ebca

    db $eb
    ld a, b
    ld hl, sp-$44
    db $fc
    cp a
    rst $28
    ld a, a
    rst $38
    ld a, a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld hl, sp-$08
    and b
    and b
    jp nc, $ffd2

    rst $38
    rst $38
    rst $28
    rst $38
    ld h, a
    ld a, [$f7a8]
    or b
    rst $28
    pop hl
    cp [hl]
    and d
    rst $28
    and e
    ld e, a
    ld b, a
    cp [hl]
    adc h
    ld [hl], l
    db $10
    db $eb
    ldh [$57], a
    inc bc
    ld hl, sp+$0f
    rst $38
    rst $38
    ret z

    rst $38
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    nop
    nop
    db $10
    db $10
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    inc bc
    db $fd
    nop
    cp $f8
    xor a
    ld b, $f5
    pop hl
    cp $f8
    xor a
    ld c, $f5
    ld bc, $c0ff
    rst $38
    rst $38
    ccf
    ret nz

    rst $38
    rst $38
    ccf
    rst $38
    ccf
    ld [$fffb], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, $ff
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    ld a, a
    ccf
    cp a
    add hl, de
    rst $18
    add l
    ld l, a
    ld c, e
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    inc e
    rst $38
    ld d, c
    ld hl, sp-$01
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
    cp $02
    db $fd
    or l
    ei
    jp z, $fbff

    ei
    di
    rst $30
    ld [bc], a
    ei
    di
    rst $30
    ld [hl+], a
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    nop
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    sub l
    sub l
    pop de
    pop de
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    and $c3
    jp $ef81


    jp $7ffe


    rst $20
    jp Jump_000_00c3


    rst $20
    nop
    rst $38
    nop
    ld b, d
    nop
    rst $38
    rst $38
    rst $38
    nop
    add c
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    or e
    or e
    dec [hl]
    dec [hl]
    and a
    and a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $20
    rst $28
    rst $08
    ld e, a
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, h
    db $fd
    db $fc
    ei
    sub b
    db $fd
    ld a, b
    ei
    ld hl, sp-$01
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop
    rra
    rra
    db $ed
    db $ed
    xor h
    xor h
    xor c
    xor c
    rst $38
    rst $38
    and d
    rst $38
    ld d, c
    rst $38
    cp d
    rst $30
    ld a, [bc]
    rst $20
    sub a
    rst $20
    dec l
    rst $20
    db $dd
    rst $00
    or a
    rrca
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    db $ec
    rst $38
    cp $03
    cp $03
    cp $ff
    cp $17
    cp $53
    cp $ff
    cp $03
    sbc e
    rst $38
    ld a, a
    rst $38
    sub a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    push af
    ldh [$af], a
    add b
    ld a, a
    rlca
    ld a, [$7f18]
    daa
    rst $38
    pop hl
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld l, c
    ld l, c
    xor l
    xor l
    ccf
    ccf
    ldh [$e0], a
    nop
    nop
    ld hl, sp-$08
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld hl, sp-$08
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    rst $38
    db $fc
    xor e
    inc bc
    db $fd
    nop
    rst $38
    cp $55
    ld bc, $00ff
    rst $38
    rst $38
    rst $38
    ld sp, hl
    sbc a
    ld [hl], c
    add a
    ld a, b
    pop bc
    cp $ff
    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    rst $38
    ld a, a
    ret nz

    ld a, a
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    jr nz, @+$01

    or c
    rst $38
    ld l, c
    rst $18
    ld c, c
    rst $38
    ld c, c
    rst $18
    ret z

    ld a, a
    ld e, $ef
    ld [hl+], a
    rst $10
    call nz, $38ff
    rst $38
    db $f4
    rst $38
    or $ff
    ld l, e
    rst $38
    ld c, $ff
    dec b
    ld a, a
    add d
    rra
    db $e3
    rlca
    ld sp, hl
    db $fd
    cp $00
    rst $38
    jr nz, jr_0b8_6b61

    ld [$180f], sp
    rra
    nop
    rrca
    ld [$400f], sp
    ld b, a
    ld b, b
    ld b, e
    ld b, h
    ld b, a
    inc l
    inc l
    inc h
    inc h
    inc h
    inc h
    ld [bc], a
    ld [bc], a
    ld de, $1011
    db $10
    db $10
    stop
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    ld b, $ff
    adc c
    rst $38
    sbc h
    rst $38
    jp z, $44ff

    ld a, a
    add e
    nop

jr_0b8_6b61:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    nop
    nop
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b8_6ca7

    ld a, [hl+]
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b8_6cb9

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b8_6c90

jr_0b8_6c90:
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
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
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_0b8_6ca7:
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

jr_0b8_6cb9:
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
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
    ld [bc], a
    rlca
    rlca
    rlca
    ld [bc], a
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
    rlca
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    ld b, e
    add b
    ld a, l
    ld bc, $0706
    ld [$10bd], sp
    rra
    jr nc, jr_0b8_6e23

    ld [hl], b
    rra
    ret nc

    ccf
    or b
    ld e, a
    ld hl, sp+$0f
    ld b, $ff
    ld bc, $c0ff
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    nop

jr_0b8_6e1a:
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    inc b
    dec bc
    db $fc
    dec a

jr_0b8_6e23:
    ld a, [c]
    ld d, [hl]
    or c
    db $e3

jr_0b8_6e27:
    jr nz, jr_0b8_6e1a

    jr nz, jr_0b8_6e27

    jr nz, @-$2f

    ld [hl], b
    rst $18
    ld h, b
    ld a, c
    pop bc
    pop af
    ld b, c
    rst $08
    ld [hl], c
    rst $18
    ld h, c
    rst $38
    ld b, c
    di
    add e
    db $e3
    add e
    sbc a
    db $e3
    cp a
    jp Jump_0b8_437f


    ld a, c
    ld b, c
    ld [hl], c
    ld b, c
    rst $08
    ld [hl], c
    ld e, a
    ld h, c
    ld a, a
    ld b, c
    ld a, c
    ld b, c
    ld [hl], c
    ld b, c
    ld c, a
    ld [hl], c
    ld e, a
    ld h, c
    ld a, c
    ld b, c
    ld [hl], c
    ld b, c
    rst $28
    or c
    cp a
    ldh [$fc], a
    and b
    ld hl, sp-$60
    rst $20
    cp b
    rst $28
    or b
    cp a
    ldh [$fc], a
    and b
    ld hl, sp-$60
    rst $20
    cp b
    xor a
    ldh a, [rIE]
    and b
    cp $90
    db $fc
    sub b
    db $d3
    sbc h
    or a
    ret c

    cp $90
    db $fc
    sub b
    db $d3
    sbc h
    or a
    ret c

    rst $38
    sub b
    sbc $90
    cp h
    ret nc

    ei
    adc h
    rst $38
    ret z

    rst $28
    ret z

    rst $18
    add sp, -$01
    ret z

    cp $c8
    jp hl


    adc $db
    db $ec
    rst $38
    ret z

    rst $28
    ret z

    sbc $f4
    db $dd
    sub [hl]
    cp a
    call nc, $94ff
    rst $18
    sub h
    cp a
    call nc, $a7f4
    db $ed
    or [hl]
    rst $38
    and h
    cp a
    db $e4
    ld a, [c]
    and e
    db $eb
    or d
    ei
    and d
    cp e
    ld [c], a
    ld a, [c]
    and e
    db $e3
    or e
    di
    and e
    rst $20
    and a
    db $fd
    push bc
    db $fc
    call nz, $c4fc
    db $fc
    call nz, $c4fc
    db $fc
    call nz, $a8f8
    nop
    nop
    rst $28
    pop af
    ld e, l
    ld [c], a
    ld a, e
    add h
    ld [hl], a
    adc e
    db $fc
    ld a, a
    add b
    db $ed
    nop
    cp [hl]
    nop
    ei
    nop
    ld l, [hl]
    nop
    push de
    ld a, [hl+]
    add b
    nop
    db $10
    jr z, jr_0b8_6f2e

    ld d, [hl]
    and b
    push af
    ld a, [bc]
    sbc e
    db $e4
    ld b, b
    rst $38
    and b
    rst $38
    cp $f1
    rst $38
    ldh a, [rIE]

jr_0b8_6ef9:
    jr nz, jr_0b8_6ef9

    ld b, b
    pop hl
    add b
    add b
    nop
    ret nz

    ccf
    ccf
    ret nz

    pop hl
    nop
    add b
    nop
    ld e, $00
    ld a, a
    nop
    rst $38
    ld h, b
    cp $f0
    ld sp, hl
    cp $fb
    db $fc
    rst $38
    sbc b
    cp $08
    db $ec
    ld [$fc9b], sp
    cp a
    ret c

    rst $38
    adc b
    rst $38
    adc b
    cp $90
    db $fc
    ret nc

    db $d3
    db $fc
    rst $30
    reti


    db $fd
    pop de
    ld sp, hl
    pop de

jr_0b8_6f2e:
    rst $20
    ld sp, hl
    rst $28
    pop af
    rst $38
    pop hl
    ld a, [$f3e3]
    ld [c], a
    rst $28
    ld a, [c]
    cp $e3
    ld a, [$f3e3]
    ld [c], a
    rst $08
    ld a, [c]
    sbc $e3
    db $fd
    add $e7
    add h
    rst $00

jr_0b8_6f49:
    add h
    cp h
    rst $08
    db $fd
    adc [hl]
    rst $08
    adc h
    sbc [hl]
    sbc h
    db $fd
    sbc [hl]
    ld a, a
    ld e, h
    rst $38
    ld e, h
    rst $18
    ld e, h
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, l
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    cp $7c
    db $fd
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ld a, b
    cp $78
    db $fc
    ld a, b
    ei
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld [hl], c
    rst $38
    ld sp, $31ff
    db $fd
    ld sp, $31b9
    scf
    add hl, sp
    rst $38

jr_0b8_6f89:
    jr c, jr_0b8_6f89

    jr c, jr_0b8_6f49

    jr c, @+$3d

    inc a
    inc a
    jr c, @+$3e

    jr c, jr_0b8_6fd1

    inc a
    ld a, $3c
    cp h
    ld a, $be
    inc a
    sbc a
    inc e
    ld e, [hl]
    sbc h
    rst $38
    ld e, $ff
    sbc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    ld a, a
    ld b, [hl]
    ccf
    ld [hl+], a
    rra
    ld [de], a
    dec b
    nop
    ld a, h
    add e
    ei
    rlca
    rst $38
    rrca
    rst $38
    rst $38
    nop
    ld l, [hl]
    nop
    cp e
    nop
    or $00
    rst $18
    nop
    cp e
    ld c, h
    ld [hl+], a
    add b
    inc b
    nop
    add b
    inc b
    ld de, $02a9
    rst $30
    ld [$817e], sp
    nop

jr_0b8_6fd1:
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
    cp $00
    ld bc, $8300
    ld a, h
    ld a, h
    add e
    rst $00
    nop
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    jr @+$41

    inc a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $7f
    cp $7f
    ld a, a
    ld e, [hl]
    ld a, a
    ld e, [hl]
    cp $9f
    rst $28
    adc [hl]
    rst $30
    add [hl]
    xor $c4
    db $dd
    and $ef
    or h
    cp a
    call nc, $947f
    cp $0c
    db $fd
    ld b, $cf
    ld [$088f], sp
    ld a, [hl]
    adc b
    db $fc
    ld [$0ccb], sp
    adc a
    ld [$887f], sp
    db $fc
    db $10
    sbc b
    db $10
    rla
    jr @+$01

    db $10
    db $fd
    ld de, $1199
    daa
    add hl, sp
    rst $28
    ld sp, $23ff
    dec sp
    inc hl
    inc sp
    inc hl
    rst $28
    scf
    rst $38
    ld b, a
    rst $38
    ld b, a
    ld [hl], a
    ld b, a
    rst $20
    ld b, a
    rst $18
    ld h, a
    rst $38
    ld c, a
    rst $28
    adc a
    rst $08
    adc a
    cp a
    rst $08
    rst $38
    adc a
    rst $28
    adc a
    rst $08
    adc a
    cp a
    rst $08
    rst $38
    rst $00
    rst $30
    rst $00
    rst $20
    rst $00
    rst $18
    rst $20
    rst $38
    rst $00
    rst $38
    rst $20
    di
    ld [c], a
    rst $28
    ld a, [c]
    cp $e3
    ei
    ld a, [c]
    rst $30
    ld a, [$f1ff]
    db $fc
    ldh a, [$fb]
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, c
    rst $38
    ld [hl], c
    rst $38
    ld h, d
    db $fd
    ld b, l
    ld sp, hl
    ld c, c
    pop af
    sub c
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp+$48
    ld hl, sp+$48
    db $fc
    inc h
    nop
    nop
    dec sp
    ldh a, [$3f]
    ldh a, [$3f]
    ret nz

    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, l
    ld [$02a6], sp
    ld d, l
    inc b
    dec bc
    ld b, $11
    ld a, [$f405]
    dec bc
    ld b, b
    cp a
    ld bc, $03ff
    rst $38
    ccf
    rst $00
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $001f
    ldh [rP1], a
    ldh a, [rIF]
    cpl
    ret nc

    ret c

    jr nz, jr_0b8_7137

    nop
    rlca
    nop
    rst $38
    rlca
    rst $38
    rrca
    rst $18
    rra
    sbc a
    rra
    ld a, a
    sbc [hl]
    rst $38
    ld e, $9f
    add hl, de
    rra
    db $10
    db $fc
    db $10
    ld hl, sp+$10
    daa
    jr c, jr_0b8_7110

    ld sp, $21ff
    ld a, [$f223]
    inc hl
    cpl
    ld [hl-], a
    ccf
    ld [hl+], a
    db $fc
    ld b, a
    push af
    ld b, [hl]
    rst $20
    ld b, h
    ld e, a
    ld h, h
    ld a, [hl]
    ld b, h
    db $fd
    ld b, [hl]
    di
    ld b, d
    adc a
    ld a, [c]
    cp $c3
    ld sp, hl
    pop bc
    rst $20
    ret c

    db $ec
    ldh a, [$f9]
    pop hl
    rst $20
    ld a, [$f4ef]
    ld hl, sp-$11
    ei
    db $ed
    db $fd
    jp hl


jr_0b8_7110:
    ei
    db $ed
    rst $38
    ret


    rst $28
    ret


    sbc $ec
    db $fd
    adc $ff
    adc h
    db $eb
    adc [hl]
    sbc a
    ld [$dbbe], a
    rst $18
    sbc d
    cp e
    sbc $ff
    sbc d
    sbc $93
    cp a
    jp nc, Jump_000_1ef3

    or $1b
    cp [hl]
    inc sp
    ld a, a
    or c
    rst $38
    add hl, sp
    cp c

jr_0b8_7137:
    ccf
    ld a, e
    cp l
    rst $38
    add hl, sp
    ld a, a
    ld a, l
    db $fd
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $ff
    rst $38
    ld a, h
    rst $38
    ld a, h
    ld a, $3c
    ld sp, hl
    ccf
    dec a
    add hl, sp
    ld a, c
    ld a, c
    ld a, l
    ld a, c
    ei
    di
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld e, e
    ld [hl], e
    ld c, c
    ld a, c
    rst $20
    inc h
    db $e3
    ld [hl+], a
    pop af
    sub c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    di
    sub d
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
    ei
    dec b
    db $fd
    jp nz, $f53b

    dec c
    ei
    add l
    ld a, a
    dec h
    rst $18
    adc l
    ld [hl], a
    dec h
    rst $18
    add l
    ld a, a
    add hl, de
    rst $28
    ld sp, $c1ff
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
    rra
    rra
    ld a, a
    adc a
    adc a
    ld [hl], a
    rst $38
    rlca
    dec bc
    inc bc
    add e
    inc bc
    di
    inc bc
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ld hl, $21b9
    ld sp, $ef21
    ld sp, $a1ff
    ei
    and e
    push af
    rst $00
    adc [hl]
    ei
    cp a
    ld d, e
    cp d
    inc hl
    ld [hl], d
    and e
    rst $28
    ld sp, $21bf
    ld a, l
    ld [hl], c
    ld sp, hl
    ld [hl], c
    rst $30
    ld a, c
    rst $38
    ld [hl], c
    ld a, a
    ld [hl], c
    ld a, l
    ld a, c
    ei
    ld a, l
    rst $38
    ld a, c
    dec a
    add hl, sp
    ei
    dec a
    rst $30
    add hl, de
    db $dd
    sub c
    cp c
    pop de
    or $1b
    cp $33
    ld a, [hl]
    ld [hl], e
    ld a, [c]
    cp e
    xor $37
    cp [hl]
    daa
    ld a, $27
    or $27
    xor $77
    rst $38
    push hl
    rst $38
    push hl
    rst $30
    push hl
    call Call_0b8_5bf9
    ld l, l
    rst $38
    ld c, c
    rst $28
    ld c, c
    db $dd
    ld l, c
    ld a, e
    ld c, l
    rst $28
    ld c, c
    rst $38
    add hl, hl
    cp a
    add hl, hl
    ld a, l
    and l
    rst $30
    dec h
    xor a
    dec [hl]
    ld a, a
    and l
    cp $27
    or $27
    xor $37
    cp [hl]
    daa
    ld a, [hl]
    and a
    cp $27
    ld a, [$7653]
    ld e, e
    cp $53
    sbc $93
    cp [hl]
    db $d3
    ld a, [$f693]
    dec de
    rst $08
    add hl, bc
    ccf
    ret


    ld a, l
    adc c
    ld sp, hl
    adc l
    jp hl


    adc c
    adc c
    jp hl


    ret


    ret


    ret


    call $c9ff
    rst $38
    ld l, c
    rst $38
    ld l, c
    rst $38
    ld l, c
    sbc $52
    sbc $52
    sbc $52
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0b8_73a4

    ld a, [de]
    dec de
    inc e
    nop
    nop
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

jr_0b8_73a4:
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
    rlca
    rlca
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
    rlca
    rlca
    rlca
    ld [bc], a
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
    rlca
    rlca
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
    rst $38
    nop
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    rst $18
    ldh [$fb], a
    db $f4
    or $ff
    rst $38
    rst $38
    cp $ff
    ld [$10ff], sp
    rst $38
    db $10
    ei
    ld [hl], b
    cp $f3
    db $fc
    ld a, [c]
    db $fd
    ld sp, hl
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
    db $fc
    rst $38
    ei
    db $fc
    db $fd
    ld a, [c]
    or $f1
    db $e3
    ldh [$f1], a
    ldh [$fc], a
    ldh [$cf], a
    ldh a, [$df]
    ldh [$79], a
    pop bc
    pop af
    pop bc
    rst $08
    pop af
    rst $18
    pop hl
    rst $38
    pop bc
    di
    add e
    db $e3
    add e
    sbc a
    db $e3
    cp a
    jp $c37f


    ld a, c
    pop bc
    pop af
    pop bc
    ld c, a
    pop af
    ld e, a
    pop hl
    rst $38
    ld b, c
    ld sp, hl
    ld b, c
    pop af
    ld b, c
    ld c, a
    pop af
    ld e, a
    pop hl
    ld sp, hl
    ld b, c
    ld [hl], c
    ld b, c
    rst $28
    or c
    cp a
    ldh [$fc], a
    and b
    ld hl, sp-$60
    rst $20
    cp b
    rst $28
    or b
    cp a
    ldh [$fc], a
    and b
    ld hl, sp-$60
    rst $20
    cp b
    xor a
    ldh a, [rIE]
    and b
    cp $90
    db $fc
    sub b
    db $d3
    sbc h
    or a
    ret c

    cp $90
    db $fc
    sub b
    db $d3
    sbc h
    or a
    ret c

    rst $38
    sub b
    sbc $90
    cp h
    ret nc

    ei
    adc h
    rst $38
    ret z

    rst $28
    ret z

    rst $18
    add sp, -$01
    ret z

    cp $c8
    jp hl


    adc $db
    db $ec
    rst $38
    ret z

    rst $28
    ret z

    sbc $f4
    db $dd
    sub [hl]
    cp a
    call nc, $94ff
    rst $18
    sub h
    cp a
    call nc, $a7f4
    db $ed
    or [hl]
    rst $38
    and h
    cp a
    db $e4
    ld a, [c]
    and e
    db $eb
    or d
    ei
    and d
    cp e
    ld [c], a
    ld a, [c]
    and e
    db $e3
    or e
    di
    and e
    rst $20
    and a
    db $fd
    push bc
    db $fc
    call nz, $c4fc
    db $fc
    call nz, $c4fc
    db $fc
    call nz, $a8f8
    nop
    nop
    rst $38
    nop
    sbc $21
    db $ec
    inc de
    cp e
    ld b, a
    db $fc
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, d
    nop
    push bc
    ret nz

    nop
    add sp, $10
    xor e
    ld b, h
    ld e, a
    and b
    push af
    ld a, [bc]
    sbc e
    db $e4
    ret nz

    rst $38
    ldh [rIE], a
    cp $f1
    rst $38
    ldh a, [rIE]
    ldh [$fe], a
    ret nz

    pop hl
    add b
    add b
    nop
    ret nz

    ccf
    ccf
    ret nz

    pop hl
    nop
    add b
    nop
    ld e, $00
    ld a, a
    nop
    rst $38
    ld h, b
    cp $f0
    ld sp, hl
    cp $fb
    db $fc
    rst $38
    sbc b
    cp $08
    db $ec
    ld [$fc9b], sp
    cp a
    ret c

    rst $38
    adc b
    rst $38
    adc b
    cp $90
    db $fc
    ret nc

    db $d3
    db $fc
    rst $30
    reti


    db $fd
    pop de
    ld sp, hl
    pop de
    rst $20
    ld sp, hl
    rst $28
    pop af
    rst $38
    pop hl
    ld a, [$f3e3]
    ld [c], a
    rst $28
    ld a, [c]
    cp $e3
    ld a, [$f3e3]
    ld [c], a
    rst $08
    ld a, [c]
    sbc $e3
    db $fd
    add $e7
    add h
    rst $00

jr_0b8_7639:
    add h
    cp h
    rst $08
    db $fd
    adc [hl]
    rst $08
    adc h
    sbc [hl]
    sbc h
    db $fd
    sbc [hl]

jr_0b8_7644:
    ld a, a
    ld e, h
    rst $38
    ld e, h
    rst $18
    ld e, h
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, l
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    cp $7c
    db $fd
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ld a, b
    cp $78
    db $fc
    ld a, b
    ei
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld [hl], c
    rst $38
    ld sp, $31ff
    db $fd
    ld sp, $31b9
    scf
    add hl, sp
    rst $38

jr_0b8_7679:
    jr c, jr_0b8_7679

    jr c, jr_0b8_7639

    jr c, jr_0b8_76ba

    inc a
    rst $38
    jr c, @+$01

    jr c, jr_0b8_7644

    inc a
    ld a, $3c
    cp h
    ld a, $be
    inc a
    sbc [hl]
    inc e
    ld e, $9c
    rst $38
    ld e, $ff
    sbc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    ld a, a
    ld b, [hl]
    ccf
    ld [hl+], a
    rra
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b8_76ba:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0b8_7775

    ld a, [de]
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b8_7788

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    nop
    nop
    jr z, jr_0b8_779b

    ld a, [hl+]
    dec hl
    inc l

jr_0b8_7775:
    dec l
    ld l, $2f
    jr nc, jr_0b8_77ab

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_0b8_77be

    ld a, [hl-]
    dec sp
    inc a

jr_0b8_7788:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b8_779b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b8_77ab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b8_77be:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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

jr_0b8_792c:
    nop
    rst $38
    nop
    rst $38
    sub b
    rra
    jr nc, jr_0b8_7953

    ld [hl], b
    rra
    jr nc, jr_0b8_7957

    db $10
    rra
    ld [$060f], sp
    rlca
    ld bc, $ff01
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ei
    nop

jr_0b8_794a:
    rst $38
    nop
    ei
    inc bc
    db $fc
    rlca
    ei
    inc c
    db $fd

jr_0b8_7953:
    ld [de], a
    or $11
    db $e3

jr_0b8_7957:
    jr nz, jr_0b8_794a

    jr nz, jr_0b8_7957

    jr nz, jr_0b8_792c

    ld [hl], b
    rst $18
    ld h, b
    ld sp, hl
    ld b, c
    ld [hl], c
    pop bc
    rst $08
    ld [hl], c
    rst $18
    ld h, c
    ld a, a
    pop bc
    di
    add e
    db $e3
    add e
    sbc a
    db $e3
    cp a
    jp $c37f


    ld sp, hl
    ld b, c
    pop af
    ld b, c
    rrca
    pop af
    rst $18
    pop hl
    ld a, a
    pop bc
    ld a, c
    pop bc
    pop af
    pop bc
    rst $08
    pop af
    rst $18
    pop hl
    ld sp, hl
    pop bc
    pop af
    pop bc
    rst $28
    or c
    cp a
    ldh [$fc], a
    and b
    ld hl, sp-$60
    rst $20
    cp b
    rst $28
    or b
    cp a
    ldh [$fc], a
    and b
    ld hl, sp-$60
    rst $20
    cp b
    xor a
    ldh a, [rIE]
    and b
    cp $90
    db $fc
    sub b
    db $d3
    sbc h
    or a
    ret c

    cp $90
    db $fc
    sub b
    db $d3
    sbc h
    or a
    ret c

    rst $38
    sub b
    sbc $90
    cp h
    ret nc

    ei
    adc h
    rst $38
    ret z

    rst $28
    ret z

    rst $18
    add sp, -$01
    ret z

    ld a, [hl]
    ld c, b
    ld l, c
    ld c, [hl]
    ld e, e
    ld l, h
    ld a, a
    ld c, b
    ld l, a
    ld c, b
    ld e, [hl]
    ld [hl], h
    db $dd
    sub [hl]
    cp a
    call nc, $94ff
    rst $18
    sub h
    cp a
    call nc, $a7f4
    db $ed
    or [hl]
    rst $38
    and h
    cp a
    db $e4
    ld a, [c]
    and e
    db $eb
    or d
    ei
    and d
    cp e
    ld [c], a
    ld a, [c]
    and e
    db $e3
    or e
    di
    and e
    rst $20
    and a
    db $fd
    push bc
    db $fc
    call nz, $c4fc
    db $fc
    call nz, $c4fc
    db $fc
    call nz, $a8f8
    nop
    nop
    nop
    ld l, a
    nop
    call nc, $8000
    ret nz

    db $10
    xor d
    ld b, h
    ld e, a
    and b
    push af
    ld a, [bc]
    sbc e
    db $e4
    ld b, b
    ld a, a
    jr nz, jr_0b8_7a53

    inc e
    inc de
    rra
    jr nc, jr_0b8_7a58

    ld h, b
    ld a, [hl]
    ret nz

    pop hl
    add b
    add b
    nop
    ret nz

    ccf
    ccf
    ret nz

    pop hl
    nop
    add b
    nop
    ld e, $00
    ld a, a
    nop
    rst $38
    ld h, b
    cp $f0
    ld sp, hl
    cp $fb
    db $fc
    rst $38
    sbc b
    cp $08
    db $ec
    ld [$fc9b], sp
    cp a
    ret c

    rst $38
    adc b
    rst $38
    adc b
    cp $90
    db $fc
    ret nc

    db $d3
    db $fc
    rst $30
    reti


    db $fd
    pop de
    ld sp, hl
    pop de
    rst $20
    ld sp, hl
    rst $28
    pop af
    rst $38

jr_0b8_7a53:
    pop hl
    ld a, [$f3e3]
    ld [c], a

jr_0b8_7a58:
    rst $28
    ld a, [c]
    cp $e3
    ld a, [$f3e3]
    ld [c], a
    rst $08
    ld a, [c]
    sbc $e3
    db $fd
    add $e7
    add h
    rst $00

jr_0b8_7a69:
    add h
    cp h
    rst $08
    db $fd
    adc [hl]
    rst $08
    adc h
    sbc [hl]
    sbc h
    db $fd
    sbc [hl]

jr_0b8_7a74:
    ld a, a
    ld e, h
    rst $38
    ld e, h
    rst $18
    ld e, h
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, l
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, h
    cp $7c
    db $fd
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ld a, b
    cp $78
    db $fc
    ld a, b
    ei
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld [hl], c
    rst $38
    ld sp, $31ff
    db $fd
    ld sp, $31b9
    scf
    add hl, sp
    rst $38

jr_0b8_7aa9:
    jr c, jr_0b8_7aa9

    jr c, jr_0b8_7a69

    jr c, jr_0b8_7aea

    inc a
    rst $38
    jr c, @+$01

    jr c, jr_0b8_7a74

    inc a
    ld a, $3c
    cp h
    ld a, $be
    inc a
    sbc [hl]
    inc e
    ld e, [hl]
    sbc h
    rst $38
    ld e, $ff
    sbc [hl]
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    ld a, a
    ld b, [hl]
    ccf
    ld [hl+], a
    rra
    ld [de], a
    nop
    nop
    nop
    cp e
    ld [$1122], sp
    inc b
    ld b, b
    add b
    xor d
    ld de, $02fd
    rst $30
    ld [$817e], sp
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

jr_0b8_7aea:
    nop
    nop
    cp $00
    ld bc, $8300
    ld a, h
    ld a, h
    add e
    rst $00
    nop
    nop
    nop
    ld a, [hl]
    nop
    rst $38
    jr @+$41

    inc a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $7f
    cp $7f
    ld a, a
    ld e, [hl]
    ld a, a
    ld e, [hl]
    cp $9f
    rst $28
    adc [hl]
    rst $30
    add [hl]
    xor $c4
    db $dd
    and $ef
    or h
    cp a
    call nc, $947f
    cp $0c
    db $fd
    ld b, $cf
    ld [$088f], sp
    ld a, [hl]
    adc b
    db $fc
    ld [$0ccb], sp
    adc a
    ld [$887f], sp
    db $fc
    db $10
    sbc b
    db $10
    rla
    jr @+$01

    db $10
    db $fd
    ld de, $1199
    daa
    add hl, sp
    rst $28
    ld sp, $23ff
    dec sp
    inc hl
    inc sp
    inc hl
    rst $28
    scf
    rst $38
    ld b, a
    rst $38
    ld b, a
    ld [hl], a
    ld b, a
    rst $20
    ld b, a
    rst $18
    ld h, a
    rst $38
    ld c, a
    rst $28
    adc a
    rst $08
    adc a
    cp a
    rst $08
    rst $38
    adc a
    rst $28
    adc a
    rst $08
    adc a
    cp a
    rst $08
    rst $38
    rst $00
    rst $30
    rst $00
    rst $20
    rst $00
    rst $18
    rst $20
    rst $38
    rst $00
    rst $38
    rst $20
    di
    ld [c], a
    rst $28
    ld a, [c]
    cp $e3
    ei
    ld a, [c]
    rst $30
    ld a, [$f1ff]
    db $fc
    ldh a, [$fb]
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fe
    rst $38
    rst $38
    cp $ff
    db $fc
    ld a, [hl]
    ld a, h
    ld a, b
    ld a, h
    ld a, c
    ld a, l
    ld a, c
    ld [hl], c
    ld [hl], d
    ld h, d
    ld h, a
    ld b, a
    ld sp, hl
    ld c, c
    pop af
    sub c
    ldh a, [$90]
    ldh a, [$90]
    ld hl, sp+$48
    ld hl, sp+$48
    db $fc
    inc h
    nop
    nop
    nop
    ld [hl], l
    nop
    xor [hl]
    nop
    ld d, b
    ld b, b
    dec bc
    xor $11
    ld a, [$fc05]
    inc bc
    db $fc
    inc bc
    ld bc, $02ff
    cp $1c
    db $e4
    db $fc
    inc b
    cp $02
    rst $38
    ld bc, $001f
    ldh [rP1], a
    ldh a, [rIF]
    cpl
    ret nc

    ret c

    jr nz, jr_0b8_7c37

    nop
    rlca
    nop
    rst $38
    rlca
    rst $38
    rrca
    rst $18
    rra
    sbc a
    rra
    ld a, a
    sbc [hl]
    rst $38
    ld e, $9f
    add hl, de
    rra
    db $10
    db $fc
    db $10
    ld hl, sp+$10
    daa
    jr c, jr_0b8_7c10

    ld sp, $21ff
    ld a, [$f223]
    inc hl
    cpl
    ld [hl-], a
    ccf
    ld [hl+], a
    db $fc
    ld b, a
    push af
    ld b, [hl]
    rst $20
    ld b, h
    ld e, a
    ld h, h
    ld a, [hl]
    ld b, h
    db $fd
    ld b, [hl]
    di
    ld b, d
    adc a
    ld a, [c]
    cp $c3
    ld sp, hl
    pop bc
    rst $20
    ret c

    db $ec
    ldh a, [$f9]
    pop hl
    rst $20
    ld a, [$f4ef]
    ld hl, sp-$11
    ei
    db $ed
    db $fd
    jp hl


jr_0b8_7c10:
    ei
    db $ed
    rst $38
    ret


    rst $28
    ret


    sbc $ec
    db $fd
    adc $ff
    adc h
    db $eb
    adc [hl]
    sbc a
    ld [$dbbe], a
    rst $18
    sbc d
    cp e
    sbc $ff
    sbc d
    sbc $93
    cp a
    jp nc, Jump_000_1ef3

    or $1b
    cp [hl]
    inc sp
    ld a, a
    or c
    rst $38
    add hl, sp
    cp c

jr_0b8_7c37:
    ccf
    ld a, e
    cp l
    rst $38
    add hl, sp
    ld a, a
    ld a, l
    db $fd
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $ff
    rst $38
    ld a, h
    rst $38
    ld a, h
    ld a, $3c
    ld sp, hl
    ccf
    ei
    dec a
    ld a, l
    ld a, c
    ld a, e
    ld a, l
    rst $30
    ei
    ei
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld a, c
    ld a, c
    rst $20
    inc h
    db $e3
    ld [hl+], a
    pop af
    sub c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    ld a, c
    ld c, c
    di
    sub d
    nop
    nop
    ld b, $fc
    ld b, $fc
    dec b
    db $fc
    inc b
    db $fc
    dec b
    db $fc
    ld [$30f8], sp
    ldh a, [$ec]
    ret nz

    ld sp, $0500
    nop
    inc bc
    ld bc, $011b
    daa
    inc bc
    sbc a
    rlca
    rst $28
    rst $38
    rra
    rra
    ld a, a
    adc a
    adc a
    ld [hl], a
    rst $38
    rlca
    dec bc
    inc bc
    add e
    inc bc
    di
    inc bc
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ld hl, $21b9
    ld sp, $ef21
    ld sp, $a1ff
    ld a, [$f4a3]
    rst $00
    adc [hl]
    ei
    cp [hl]
    ld d, e
    cp e
    inc hl
    ld [hl], e
    and e
    rst $28
    ld sp, $21bf
    ld a, l
    ld [hl], c
    ld sp, hl
    ld [hl], c
    rst $30
    ld a, c
    rst $38
    ld [hl], c
    ld a, a
    ld [hl], c
    ld a, l
    ld a, c
    ei
    ld a, l
    rst $38
    ld a, c
    dec a
    add hl, sp
    ei
    dec a
    rst $30
    add hl, de
    db $dd
    sub c
    cp c
    pop de
    rst $30
    dec de
    rst $38
    inc sp
    ld a, a
    ld [hl], e
    di
    cp e
    rst $28
    scf
    cp a
    daa
    ld a, $27
    or $27
    xor $77
    rst $38
    push hl
    rst $38
    push hl
    rst $30
    push hl
    call Call_0b8_5bf9
    ld l, l
    rst $38
    ld c, c
    rst $28
    ld c, c
    db $dd
    ld l, c
    ld a, e
    ld c, l
    rst $28
    ld c, c
    rst $38
    add hl, hl
    cp a
    add hl, hl

Call_0b8_7cfe:
    ld a, l
    and l
    rst $30
    dec h
    xor a
    dec [hl]
    ld a, a
    and l
    cp $26
    or $27
    xor $36
    cp [hl]
    ld h, $7e
    and [hl]
    cp $26
    ld a, [$7652]
    ld e, d
    cp $52
    sbc $92
    cp [hl]
    jp nc, $92fa

    or $1a
    rst $08
    add hl, bc
    ccf
    ld c, c
    ld a, c
    add hl, bc
    cp e
    adc c
    xor e
    adc c
    sbc e
    adc c
    reti


    ret


    db $db
    ret


    rst $38
    ret


    rst $38
    ld l, c
    rst $38
    ld l, c
    rst $38
    ld l, c
    rst $18
    ld d, d
    rst $18
    ld d, d
    rst $18
    ld d, d
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
    dec c
    ld c, $0e
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    ld c, $0e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b8_7d96

    ld a, [hl+]
    ld c, $0e
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b8_7da8

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b8_7d8d

    ld c, $39
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_0b8_7d8d:
    ld b, [hl]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e

jr_0b8_7d96:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e

jr_0b8_7da8:
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
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
    rlca
    rlca
    rlca
    inc bc
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
    rlca
    rlca
    rlca
    inc bc
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
    rlca
    rlca
    rlca
    inc bc
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
    rlca
    rlca
    rlca
    rlca
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

Jump_0b8_7eff:
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
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$03
    ldh a, [rIE]
    db $f4
    ei
    pop af
    cp $f3
    db $fc
    or $f9
    ei
    db $fc
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
    db $fc
    rst $38
    ei
    db $fc
    db $fd
    ld a, [c]
    or $f1
    db $e3
    ldh [$f1], a
    ldh [$fc], a
    ldh [$cf], a
    ldh a, [$5f]

Jump_0b8_7fff:
    db $e0
