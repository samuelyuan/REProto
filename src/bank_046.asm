SECTION "ROM Bank $046", ROMX[$4000], BANK[$46]

    ret nz

    ccf
    inc b
    rst $38
    ld h, $ff
    xor h
    ld a, a
    ld l, $ff
    ld l, $ff
    db $38, $df
    sbc d
    ld a, a
    or [hl]
    ld a, a
    sbc l
    ld a, a
    push af
    ccf
    or l
    ccf
    call c, Call_046_6c3f
    rra
    adc l
    ccf
    adc [hl]
    ccf
    adc $3f
    sub $3f
    adc $1f
    sbc $2f
    db $e4
    rra
    push de
    rrca
    adc h
    ld b, a
    ld c, l
    add a
    dec b
    rst $00
    ld [$88c7], sp
    rst $00
    and b
    rst $00
    or h
    jp $e3c6


    sub $e1
    db $f4
    db $e3
    db $f4
    db $e3
    cp $e3
    add sp, -$09
    ldh a, [rIE]
    pop af
    rst $38
    ld a, b
    rst $38
    db $f4
    rst $38
    ld a, l
    ei
    cp h
    ei
    or e
    db $fc
    sbc e
    db $fc
    ld e, d
    or h
    push bc
    ld hl, sp+$0c
    ldh a, [rNR14]
    ldh [rP1], a
    ldh a, [$34]
    ldh [$90], a
    ld [hl], b
    inc e
    ldh [$4c], a
    or b
    inc d
    ld hl, sp-$62
    ld a, b
    add hl, sp
    db $fc
    pop af
    inc e
    ld a, a
    cp a
    rrca
    rst $38
    dec sp
    rst $00
    ei
    add a
    ld a, a
    add a
    ei
    rrca
    pop hl
    rra
    ret nc

    ccf
    ldh [$3f], a
    ret nz

    ld a, a
    inc bc
    db $fd
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    add h
    rst $38
    add hl, bc
    rst $38
    ld c, d
    rst $38
    ld [hl], h
    rst $38
    add b
    ld a, a
    and b
    ld a, a
    add h
    ld a, a
    nop
    rst $38
    ld d, b
    xor a
    daa
    reti


    inc c
    di
    dec e
    cp $9c
    ld a, [hl]
    sbc [hl]
    rst $38
    dec e
    cp $9f
    cp $df
    cp a
    sbc l
    rst $38
    rra
    cp $1f
    cp $1e
    cp a
    rra
    rst $38
    dec e
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    ld c, $ff
    cpl
    rst $38
    rst $18
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld e, a
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
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc $ff
    rst $18
    cp $df
    rst $38
    rst $18
    rst $38
    or $ff
    or a
    cp $75
    cp $d7
    cp $f7
    cp $ff
    cp $fd
    cp $bf

Call_046_40ff:
    cp $bf
    cp $bf
    cp $bf
    cp $bf
    cp $bd
    cp $9f
    cp $df
    cp $bf
    cp $5f
    cp $dd
    cp $fc
    rst $38
    ld a, l
    cp $fd
    cp $7d
    cp $7c
    rst $38
    db $fd
    cp $bd
    cp $ed
    cp $ec
    rst $38
    db $ed
    cp $ee
    db $fd
    rst $08
    db $fc
    call c, $9dff
    cp $bf
    db $fc
    cp a
    db $fc
    sbc [hl]
    db $fc
    ccf
    rst $38
    inc e
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    sbc h

Jump_046_4141:
    rst $38
    inc e
    rst $38
    ld e, h
    cp a
    inc a
    rst $18
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    sbc h
    ld a, a
    sbc h
    ld a, a
    sbc b
    ld a, a
    sbc b
    ld a, a
    cp b
    ld a, a
    sbc b
    ld a, a
    ld hl, sp+$3f
    rst $18
    ccf
    sbc h
    ld a, a
    cp [hl]
    ld e, l
    dec a
    ld a, [$77bb]
    or $7f
    xor l
    cp $bc
    rst $18
    ld a, [$fa1d]
    ld e, a
    ld [hl], d
    dec a
    jr c, jr_046_419b

    add e
    inc c
    pop hl
    inc bc
    ld b, c
    cp l
    ld a, b
    add a
    call c, Call_046_7b03
    nop
    rst $38
    nop
    rst $30
    nop
    cp e
    nop
    rst $08
    nop
    rst $38
    nop
    rst $18
    nop
    cp a
    ld b, b
    rst $18
    nop
    ld a, a
    add b
    ld [hl], a

jr_046_419b:
    add b
    cp $01
    cp $00
    sub c
    ld l, a
    add c
    rst $38
    add c
    ld a, a
    jp nz, Jump_000_207d

    rst $38
    ld [$ff7d], a
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
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
    ret c

    ld a, [c]
    call z, $cdf3
    rst $38
    sbc l
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
    db $fc
    rst $38
    cp $ff
    jr z, @+$01

    nop
    rst $38
    ret nc

    rst $38
    ld e, b
    rst $38
    nop
    rst $28
    pop hl
    ld e, $00
    rst $30
    db $db
    jr nz, @-$0e

    rrca
    db $db
    rlca
    ld hl, sp+$07
    ld sp, hl
    ld b, $02
    rst $38
    ld c, $f7
    ld b, b
    cp a
    inc d
    rst $28
    inc de
    rst $38
    rst $10
    ld a, a
    ret z

    rst $38
    ret c

    ld l, a

Call_046_4220:
    push hl
    cp $01
    rst $38
    ld c, b
    cp a
    add d
    rst $38
    ldh [$9f], a
    call z, $e1f7
    rst $38
    nop
    rst $38
    db $fc
    nop
    ldh [rP1], a
    nop
    nop
    ldh a, [$f0]
    rrca
    rst $38
    nop
    rst $38
    ldh [$f9], a
    sbc a
    rst $18
    sub d
    rst $18
    sub d
    sbc a
    sub d
    rst $18
    sub d
    rst $38
    sub d
    ei
    sub d
    ei
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    cp $92
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    jp nc, Jump_000_3fff

    rst $38
    nop
    rst $38
    ldh a, [rIE]
    adc a
    sbc a
    sbc l
    ld b, [hl]
    rrca
    call z, Call_000_0b1c
    add hl, sp
    ld d, [hl]
    dec sp
    ld l, l
    dec sp
    rst $28
    ld a, a
    ld e, a
    ld e, e
    ld [hl], a
    db $eb
    rst $10
    cp [hl]

jr_046_427d:
    ld [$b5ce], a
    rst $30
    rst $38
    ld e, [hl]
    rst $38
    cpl
    rst $38
    jp c, $a33f

    rra
    db $ed
    inc de
    sbc $00
    rst $18
    jr nz, jr_046_42c1

    rst $28
    ld d, b
    rst $28
    jr jr_046_427d

    nop
    rst $38
    add h
    ei
    dec b
    ei
    ld b, l
    cp e
    ld bc, $aeff
    ld d, e
    ld e, d
    sub a
    jp nc, $dabf

    db $fd
    reti


    xor $fc
    ei
    cp $ff
    rst $28
    cp $fd
    rst $38
    cp $ff
    rst $38
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

jr_046_42c1:
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    nop
    rst $38
    nop
    cp a
    add b
    rst $38
    ret nz

    db $fd
    ret nz

    ld sp, hl
    ret nz

    ld sp, hl
    ret nz

    ld hl, sp-$40
    ld hl, sp-$40
    ld sp, hl
    ret nz

    pop af
    ret nz

    pop hl
    ret nz

    pop af
    ret nz

    pop af
    ret nz

    ld [hl], c
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fd
    add c
    ld sp, hl
    add c
    pop af
    add c
    ret nc

    pop bc
    pop bc
    ret nz

    ld bc, $01c0
    ret nz

    rlca
    ret nz

    daa
    ret nz

    rrca
    ret nz

    rlca
    ret nz

    rrca
    pop bc
    rlca
    ret nz

    rlca
    ret nz

    rlca
    pop bc
    rrca
    ret nz

    rlca
    pop bc
    rrca
    ret nz

    adc a
    ret nz

    rrca
    ret nz

    rla
    ld b, b
    sbc a
    ld b, c
    sbc a
    ret nz

    rra
    ret nz

    rrca
    pop bc
    rrca
    pop bc
    rrca
    pop bc
    dec b
    pop bc
    ld bc, $01c1
    add b
    ld b, c
    ret nz

    ld bc, $01c0
    add c
    ld d, c
    add c
    ld d, e
    ld b, c
    add c
    ret nz

    inc bc
    ret nz

    inc bc
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec b
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    cp l
    ldh [$ea], a
    ld e, a
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    ld a, a
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $28
    ld c, c
    rst $38
    ld c, c
    rst $08
    ld c, c
    rst $18
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    ei
    ret


    rst $38
    ld sp, hl
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    ld e, e
    cp $da
    rst $38
    sub a
    cp [hl]
    adc a
    or $0d
    cp $4e
    cp l
    dec bc
    rst $38
    sbc d
    ld l, a
    ld a, [hl-]
    sbc a
    sbc e
    ld a, a
    ld d, $ff
    or h
    ld a, a
    ld a, $fb
    inc a
    rst $38
    ld l, l
    cp a
    ld a, a
    ei
    scf
    ld l, a
    bit 3, a
    scf
    ld c, a
    ld b, c
    xor a
    call nz, Call_046_49a9
    and a
    sub c
    rst $28
    ld c, [hl]
    cp a
    cp c
    rlca
    cp a
    db $e3
    ld a, e
    and a
    cp a
    db $e3
    ld [hl], d
    rst $28
    ld [hl], e
    rst $28
    rst $38
    di
    rst $38
    di
    db $db
    rst $30
    rst $30
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp a
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
    ld a, a
    rst $38
    ccf
    rst $38
    rla
    rst $38
    rst $18
    rst $38
    ld d, a
    ei
    rst $18
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $10
    ld hl, sp+$70
    rst $38
    ld [hl], e
    db $fc
    ld a, b
    push af
    ld [hl], $f9
    ld a, a
    ldh a, [$75]
    ld a, [$f57a]
    ldh a, [rIE]
    ld [hl], h
    ei
    push de
    ld a, [$ffd0]
    ld [hl], a
    ld hl, sp+$77
    ld hl, sp+$5b
    ldh a, [$7a]
    ldh a, [$75]
    ld a, [c]
    rst $38
    ldh a, [$d1]
    cp $7c
    di
    ld hl, sp-$09
    ldh a, [rIE]
    ldh a, [rIE]
    jr nc, @+$01

    ld a, a
    ldh a, [rIE]
    ldh a, [$3f]
    ldh a, [$7f]
    ldh a, [$5f]
    ldh a, [$3f]
    ldh a, [rIE]
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld bc, $0903
    rlca
    push de
    cpl
    add hl, de
    rst $38
    pop af
    rst $38
    ld de, $11df
    ld e, a
    ld de, $11ff
    cp a
    ld de, $11ff
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    dec e
    rst $38
    add hl, de
    rst $38
    dec d
    rst $18
    dec d
    ld e, a
    dec d
    rst $38
    dec e
    rst $38
    dec d
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    ld a, [de]
    rst $38
    inc de
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    ld e, $ff
    sbc a
    rst $38
    cp $ff
    rst $38
    rst $18
    cp a
    rst $38
    cp l
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $30
    rst $38
    cp a
    rst $28
    daa
    rst $38
    ld h, c
    rst $38
    pop af
    rst $38
    jp hl


    rst $38
    ld b, e
    rst $38
    ld c, l
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    db $ed
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rst $18
    db $fd
    ld a, l
    ccf
    dec l
    rra
    rrca
    rlca
    ld bc, $ff03
    rst $38
    cp $ff
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
    ld hl, sp-$19
    sbc b
    or [hl]
    ret


    reti


    cp [hl]
    ei
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    nop
    cp $ff
    ld [c], a
    rst $38
    ei
    rst $38
    ld b, c
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, e
    rst $38
    push af
    rst $38
    ld [bc], a
    db $fd
    jr nz, @+$01

    sub l
    ld l, a
    nop
    rst $38
    rst $38
    ld a, a
    ld d, l
    xor [hl]
    cp d
    db $fd
    ld hl, sp-$01
    db $fd
    rst $38
    ldh a, [rIE]
    add sp, -$01
    db $ed
    rst $38
    nop
    rst $38
    db $fd
    ld [bc], a
    rst $38
    nop
    dec sp
    call nz, Call_000_01fe
    rst $18
    jr nz, jr_046_4577

    rst $38
    add [hl]
    rst $38
    jr @+$01

    jp c, $daff

    rst $38
    sub d
    rst $38
    sub e
    cp $92
    rst $38
    sub d
    rst $38
    sbc c
    or $93
    ld a, [$bad7]
    sub d
    rst $38
    and d
    cp $b0
    ld l, d
    dec sp
    ret nc

    db $76
    add sp, $20
    ld a, [$e804]
    db $f4
    ld a, [c]
    di
    cp $a2
    rst $30
    ld [c], a
    rst $38
    xor $ff
    cp $ff
    db $eb
    cp $fa
    rst $10
    di
    xor $eb
    db $76
    ld h, [hl]
    ei
    ei
    rst $00
    ld l, e
    or $f7
    ld a, [$dffb]
    ei
    rst $28
    db $e3
    rst $38
    db $db
    rst $30
    db $db
    rst $38
    rst $38
    ei
    ei
    rst $28
    rst $38
    ei
    rst $18
    ei
    sbc e
    rst $30
    sbc a
    ei
    or e
    cp a
    di
    cp e
    db $d3
    cp e
    cp e
    push af
    sbc a
    ei
    db $db
    rst $38
    db $fd
    ei
    di
    db $fd
    di
    rst $30
    db $db
    ei
    db $eb

jr_046_4577:
    rst $38
    ld a, l
    di
    ld l, c
    rst $38
    ld a, c
    ei
    db $fd
    ei
    rst $18
    xor a
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jp $813c


    ld a, [hl]
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    xor c
    rst $38
    add b
    rst $38
    rst $38
    nop
    cp a
    rst $38
    rla
    rst $28
    rst $28
    db $fd
    inc h
    rst $38
    db $10
    rst $38
    adc e
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld l, c
    rst $38
    ld hl, $a3fe
    db $fd
    rst $38
    db $fd
    ldh [rNR22], a
    nop
    ld e, e
    ld e, [hl]
    ld bc, $817e
    ret nc

    dec l
    or b
    ld c, a
    ld l, $df
    cp l
    ld c, [hl]
    rst $38
    cp $ff
    ldh a, [rIE]
    add sp, -$02
    ldh [$fb], a
    ldh [$f9], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a
    ldh a, [$f8]
    ldh [$f8], a
    ldh a, [$fa]
    ldh a, [$fe]
    ret nc

    rst $38
    ret nc

    ret nc

    ldh [$d8], a
    ld h, a
    jp hl


    ld e, l
    ld l, c
    ld e, a
    ld e, [hl]
    jr z, jr_046_462f

    ccf
    inc b
    scf
    inc a
    rlca
    nop
    nop
    call z, Call_000_2322
    cp a
    inc hl
    rst $38
    add hl, hl
    ld a, a
    ld [hl], l
    cp e
    db $fd
    ei
    db $db

jr_046_462f:
    ld a, l
    db $fd
    ld a, [hl-]
    sbc $7b
    cp $7b
    db $fd
    ccf
    ld a, l
    cp a
    cp l
    ld a, a
    ld a, e
    db $fd
    rst $38
    db $fd
    ld a, a
    db $db
    rst $38
    db $fd
    db $fd
    rst $38
    db $fd
    cp a
    rra
    rst $28
    rlca
    rst $18
    rra
    rst $00
    sub a
    ld b, [hl]
    cpl
    rst $00
    add a
    ld d, a
    rlca
    ld a, a
    rrca
    scf
    rlca
    db $eb
    ld [bc], a
    rst $38
    di
    ld a, [bc]
    inc bc
    ld l, a
    inc de
    rst $20
    inc bc
    or e
    dec hl
    or e
    xor c
    rst $38
    add hl, hl
    rst $30
    inc hl
    reti


    ld b, l
    sbc e
    ld c, c
    and l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_046_467f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $faff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $ff
    cp a
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $7e
    cp $fe
    ld a, [hl]
    ld a, [hl]
    cp $7e
    cp $fe
    cp $7e
    cp $7e
    rst $38
    ld a, a
    cp $ff
    cp $7f
    cp $fe
    rst $38
    cp $fe
    cp $fe
    cp $ff
    rst $38
    cp $ff
    cp $f7
    cp $ff
    or $f6
    rst $38
    cp $f7
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fc
    rst $38
    ld a, h
    rst $38
    db $fc
    ccf
    db $fc
    ccf
    rst $38
    cp a
    xor a
    rlca
    rst $38
    rst $00
    rst $08
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, d
    nop
    ld h, d
    nop
    jr nc, jr_046_4704

jr_046_4704:
    jr jr_046_4706

jr_046_4706:
    inc e
    nop
    ld c, $00
    cpl
    nop
    cp a
    nop
    ld e, e
    nop
    nop
    nop
    ld [hl], e
    cp $7f
    cp a
    and $bb
    db $e3
    sub [hl]
    db $e3
    sbc l
    ret


    ccf
    ld a, b
    call z, $ed54
    ld a, h
    rlca
    cp $f2
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    or $5f
    jp nz, Jump_046_467f

    ei
    pop hl
    ld e, l
    ld b, c
    rst $38
    jp hl


    ld a, a
    ldh a, [$2f]
    ld h, d
    cp l
    ldh a, [$fe]
    ld sp, hl
    db $76
    ld a, [c]
    ld a, l
    ldh a, [rIE]
    db $fc
    ld [hl], e
    ld a, [$7dbf]
    cp a
    cp l
    rst $38
    cp a
    ld a, l
    db $fd
    cp a
    cp a
    rst $38
    rst $38
    cp a
    ccf
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    rst $38

Jump_046_4767:
    ld a, a
    ei
    rst $38
    ld sp, hl
    rst $38
    db $fd
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ld e, h
    cp a
    ccf
    rst $18
    ld a, a
    cp a
    ld a, [hl]
    cp l
    ld e, e
    ld a, $bf
    ld a, l
    ccf
    ld a, a
    ccf
    ld a, [hl]
    dec a
    ld a, [hl]
    ld a, [hl]
    rra
    dec a
    ccf
    ccf
    ccf
    cp [hl]
    ccf
    ld a, $bf
    ld a, $bf
    ccf
    cp a
    cp a
    ld a, a
    ld a, [hl]
    cp a
    ld a, a
    cp h
    ld a, $fd
    dec sp
    db $fc
    dec sp
    db $fd
    ld a, a
    cp [hl]
    ld a, l
    or d
    ld a, l
    ld [hl-], a
    cpl
    or d
    ld a, a
    or a
    ld a, a
    cp [hl]
    cp e
    ld a, h
    ld a, c
    cp $fb
    ld a, h
    ld a, l
    cp $f5
    ld a, d
    db $76
    ld sp, hl
    ld a, a
    ldh a, [$7f]
    ld hl, sp+$7c
    rst $38
    ld a, e
    rst $38
    ld a, b
    rst $38
    db $10
    rst $38
    db $fc
    rra
    ld a, $1f
    scf
    rra
    inc a
    rra
    inc a
    rra
    inc a
    rra
    ld a, $1f
    ccf
    rra
    cp a
    rra
    cp [hl]
    rra
    rst $38
    rra
    rst $38
    rra
    rra
    rra
    rra
    rra
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    ld a, $ff
    ccf
    rst $38
    cp a
    rst $38
    ld a, e
    rst $38
    ld e, l
    ld [hl], a
    ld l, $bd
    ei
    or $ff
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $30
    rst $38
    ei

jr_046_4823:
    rst $38
    rst $38
    ei
    db $fd
    rst $38
    ld a, e
    db $fd
    ccf
    rst $38
    sbc a
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    and a
    rst $38
    rst $18
    cp a
    rst $30
    rst $38
    ld a, a

Call_046_483b:
    rst $38
    ld a, a
    rst $30
    di
    ld a, a
    ld h, a
    db $fd
    db $fd
    ld a, $7f
    cp a
    sub a
    rst $38
    rst $18
    sbc a
    ld c, a
    rst $38
    rst $18
    rst $28
    rst $28
    rst $18
    rst $28
    rst $30
    rst $30
    rst $10
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    db $eb
    ld a, l
    cp l
    ei
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $28
    rst $00
    rst $38
    rst $20
    rst $18
    rst $00
    rst $38
    rst $00
    rst $38
    xor a
    rst $30
    rst $28

jr_046_4877:
    rst $38
    rst $18
    cp $be
    db $fc
    db $fc
    ld sp, hl
    ld a, [$fbf9]
    or $e8
    push hl
    call nz, $f0e9
    adc c
    pop hl
    sub d
    pop hl
    ld [$60c2], sp
    adc h
    ldh [$c8], a
    jr nc, jr_046_4823

    ld c, b
    ret nz

    jr nc, jr_046_4877

    ld b, b
    ret nz

    and b
    call nz, $d8a0
    nop
    and c
    ld d, b
    ret nz

    ld h, c
    pop bc
    add b
    add e
    ld hl, $25c2
    or l
    ld c, b
    ld a, [$f565]
    add e
    pop af
    add e
    ld bc, $bfff
    rst $38
    ld d, e
    db $fd
    rst $28
    pop af
    rst $08
    or c
    rrca
    add c
    sbc a
    add c
    adc a
    ld bc, $0f83
    ld a, a
    add c
    adc a
    ld bc, $018f
    adc a
    ld bc, $01ff
    and l
    ei
    or c
    rst $38
    pop bc
    inc hl
    inc bc
    ld bc, $0381
    inc bc
    ld bc, $53a1
    dec de
    ccf
    cpl
    sub e
    ld a, a
    add e
    cpl
    inc de
    add e
    and e
    ld a, e
    or e
    rra
    rrca
    dec bc
    add a
    rlca
    inc bc
    add a
    ld c, e
    ld h, a
    adc e
    cp e
    ld b, a
    adc a
    ld l, a
    add a
    ld b, a
    xor a
    ld b, e
    rst $00
    sub a
    jp $d767


    daa
    rst $18
    rlca
    xor a

Call_046_4901:
    ld b, a
    rst $38
    add a
    cp a
    rst $00
    rst $38
    ld b, a
    rrca
    rst $30
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $20
    rst $20
    rst $38
    ld a, a
    cp a
    ccf
    rst $18
    sbc a
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
    ld a, a
    ld a, a
    rst $38
    cp a
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $30
    cp a
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
    cp $df
    rst $38
    ret


    rst $38
    db $ed
    rst $38
    rst $28
    rst $30
    rst $38
    db $eb
    ld sp, hl
    rst $30
    db $dd
    ld a, [$fff9]
    ld a, [$fdfd]
    rst $38
    cp $fd

Call_046_4956:
    cp $ff
    rst $38
    cp $ff
    ei
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
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $10
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28

Call_046_49a9:
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    ccf
    rst $38
    cp a
    rst $38
    ld e, a
    cp a
    rst $00
    ld a, a
    daa
    rst $38
    ld [hl], a
    xor a
    rst $30
    cp a
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
    jr jr_046_49f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_046_4a03

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_046_4a13

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_046_4a23

    ld [hl-], a

jr_046_49f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_046_4a33

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_046_4a03:
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

jr_046_4a13:
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

jr_046_4a23:
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

jr_046_4a33:
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
    jr jr_046_4af3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_046_4b03

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_046_4b13

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_046_4b23

    ld [hl-], a

jr_046_4af3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_046_4b33

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_046_4b03:
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
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_046_4b13:
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
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_046_4b23:
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

jr_046_4b33:
    nop
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
    ld bc, $0101
    ld bc, $0200
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
    inc b
    inc b
    ld bc, $0401
    inc b
    ld bc, $0505
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, HeaderLogo
    ld bc, $0404
    inc b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    inc bc
    nop
    inc b
    inc b
    ld bc, $0401
    inc b
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
    ld [bc], a
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
    ld [bc], a
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
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
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld bc, $0505
    inc b
    inc b
    dec b
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0505
    dec b
    inc b
    dec b
    ld b, $02
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    add hl, bc
    dec c
    dec c
    dec c
    dec c
    ld [$080e], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    dec c
    dec c
    dec c
    ld [$0e08], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    dec bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp

Jump_046_4c3f:
    ld [$0052], sp

jr_046_4c42:
    sub $20
    ld e, a
    nop
    rst $08
    jr nz, jr_046_4c42

    ld b, $5f
    rst $38
    db $e4
    add hl, de
    inc de
    ld c, b
    xor a
    ld [$08c7], sp
    ld b, d
    dec b
    ld b, a
    inc b
    rla
    nop
    ld e, [hl]
    nop
    ld l, l
    ld [bc], a
    ccf
    rst $38
    call z, $2a00
    nop
    rst $20
    nop
    ld c, e
    nop
    ld c, a
    db $10
    ld e, e
    nop
    cp a
    nop
    ld a, [de]
    nop
    xor $01
    rst $18
    ld a, $5f
    and b
    rst $30
    nop
    ld a, a
    nop
    db $db
    nop
    rst $28
    nop
    cp a
    nop
    or $00
    db $ed
    nop
    dec hl
    rlca
    sub l
    ld a, d
    add hl, de
    and $ae
    ld b, b
    cp e
    nop
    dec b
    nop
    dec de
    nop
    jr z, jr_046_4c94

jr_046_4c94:
    nop
    nop
    ld bc, $0500
    nop
    ld a, [bc]
    inc b

jr_046_4c9c:
    ld l, l
    db $10
    ld d, h
    add b
    nop
    nop
    ld [$0a00], sp
    nop
    and d
    nop
    ld h, a
    nop
    dec e
    ld [bc], a
    ld [hl], a
    inc c
    push hl
    jr c, jr_046_4c9c

    add b
    db $fc
    nop

jr_046_4cb4:
    push de
    nop
    jr nz, jr_046_4cb8

jr_046_4cb8:
    add hl, bc
    nop
    nop
    ld [$0003], sp
    ld c, $00
    ld a, d
    db $10
    ld a, b
    ldh [$f5], a

jr_046_4cc5:
    db $10
    ei
    db $10
    ld [hl], e
    jr jr_046_4cc5

    ld [$086f], sp
    rst $30
    inc c
    cp a
    ld [$60bc], sp
    cp l
    ret nz

    and $00
    adc b
    nop
    ld a, [bc]
    nop
    ld a, d
    ld bc, $04f2
    or [hl]
    ld [$209b], sp
    cp [hl]
    ld b, b
    jp c, $db00

    nop
    adc l
    nop
    ld a, c
    ld bc, $06e5
    ld d, l
    ld [$10b8], sp
    db $e4
    ld b, b
    push bc
    nop
    ld e, d
    nop
    ld sp, hl
    nop
    rst $38
    inc bc
    db $eb
    ld d, $7b
    adc h
    ei
    jr nc, jr_046_4cb4

    ldh [rIE], a
    add b
    ld a, a
    nop
    ld hl, sp+$07
    rst $38
    inc bc
    ei
    ld c, $04

jr_046_4d11:
    dec de
    ld [de], a
    rra
    add b
    add hl, sp
    ld de, $467e
    or h
    inc l
    ld c, e
    ld [hl], b
    add d
    add c
    daa
    inc bc
    rst $08
    rlca
    rst $18
    inc e
    cp $be
    ld a, e
    db $76
    ld sp, hl
    di
    db $ed
    db $ec
    jp c, $a1dc

    jr nz, jr_046_4d11

    adc c
    or [hl]
    ret nc

    ld c, e
    add e
    rlca
    dec b
    ld b, [hl]
    ld c, h
    add hl, hl
    ld [hl-], a
    dec e

jr_046_4d3e:
    nop
    ld e, $bf
    nop
    ld e, a
    nop
    rra
    nop
    rst $30
    nop
    rst $28
    ld [de], a
    rst $38
    push hl
    db $fd
    nop
    rlc b
    ret nc

    nop

jr_046_4d52:
    db $eb
    nop
    cp $00
    call z, $d521
    nop
    rst $10
    nop
    rst $00
    ccf
    adc l
    ldh a, [rSTAT]
    ld b, $b5
    nop
    cp a
    nop
    ld e, $80
    push de
    jr nz, jr_046_4d3e

    nop
    ld l, h
    ld bc, $03cd
    rst $38
    rst $38
    db $fd
    adc b
    ei
    ld [$087b], sp
    rst $38
    inc b
    rst $28
    inc b
    cp $04
    rst $38
    ld b, $fb
    rlca
    cp l
    ld a, [hl]
    db $eb
    sub h
    dec de
    ldh [$7e], a
    nop
    xor e
    nop
    rlc b
    ld l, l
    nop
    pop de
    nop
    add hl, bc
    nop
    ld e, $01
    xor a
    inc e
    cp c
    ld b, b
    db $ed
    nop
    ld [hl+], a
    ld bc, $00b3
    sbc a
    nop
    dec bc
    jr nz, jr_046_4d52

    inc bc
    ld a, a
    inc c
    ld a, h
    jr nc, @-$42

    ret nz

    pop hl
    nop
    db $d3
    nop
    push de
    nop
    ld [hl-], a
    nop
    ld [hl], d
    ld bc, $029f
    jr nc, jr_046_4dc2

    jp hl


    nop
    add a
    nop
    ld [hl], l
    nop
    inc a
    nop

jr_046_4dc2:
    jp c, Jump_000_2300

    ld bc, $029f
    rst $08
    jr jr_046_4de2

    ld h, b
    adc e
    add b
    rrca
    nop
    ld d, $00
    ld de, $2400
    inc bc
    ld e, c
    inc b
    add hl, hl
    db $10
    sbc a
    ld h, b
    db $db
    nop
    dec [hl]
    nop
    or c
    nop

jr_046_4de2:
    ld [hl], d
    inc bc
    xor a
    ld b, $5f
    ld [$20fb], sp
    rst $30
    ld b, b
    cp a
    nop
    ccf
    nop
    ld [hl], a
    ld bc, $067d
    ld d, a
    inc c
    ccf
    db $10
    cp $20
    cp [hl]
    ret nz

    rst $30
    nop
    rst $28
    ld bc, $038f
    rrca
    rlca
    dec [hl]
    ld c, $12
    dec l
    and a
    ld e, a
    ld [hl], $df
    dec c
    cp $da
    cp a
    ld [hl], $fb
    rst $00
    ld a, a
    daa
    rst $08
    ld l, [hl]
    sbc l
    dec e
    ld a, d
    push af
    ld a, $e9
    pop de
    rst $00
    cp e
    ccf
    rst $08
    ld e, a
    ld a, $3c
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    ld a, $7f
    dec e
    ld [$fd12], a
    ld h, d
    cp l
    rst $08
    ld d, l
    add d
    xor a
    dec d
    ld l, [hl]
    inc c
    cp $19
    ld a, [hl]
    inc [hl]
    ei
    ld a, a
    pop bc
    cp $07
    db $fd
    inc bc
    ld a, a
    add b
    cp a
    nop
    rst $18
    and a
    xor a
    rst $38
    ld h, c
    nop

jr_046_4e4e:
    ld d, [hl]
    nop
    cp l
    nop
    xor c
    nop
    ld [hl], l
    nop
    or [hl]
    nop
    adc h
    jr nz, jr_046_4e4e

    rrca
    rst $38
    cp $2a
    nop
    cp a
    nop
    xor a
    nop
    rst $30
    nop
    cp $00
    ld [hl], a
    nop
    rst $38
    nop
    ld l, a
    rla
    ld a, [c]
    db $fd
    dec a
    ret nz

    rst $38
    nop
    ld l, $d1
    sub e
    ld l, h
    or e
    ld c, h
    sbc c
    ld h, [hl]
    and a
    ld e, a
    sbc [hl]
    ld a, a
    jp c, $a9ad

    ret nc

    db $fc
    nop
    db $fd
    nop
    ld e, a
    nop
    cp d
    nop
    pop de
    nop
    and a
    ld bc, $0eff
    cp b
    ld [hl], b
    or d
    ld b, b
    and l
    ld b, b
    ret nc

    ld b, b
    ld b, b
    ld b, b
    ld h, b
    nop
    sla c
    ld e, a
    inc h
    rst $38
    ld [hl], b
    rst $38
    add b
    ld l, a
    nop
    cp c
    nop
    ld a, [hl]
    ld bc, $009f
    ld l, a
    ld [bc], a
    sbc l
    nop
    ld [hl], h
    ld h, b
    res 0, b
    ld d, $00
    ld l, c
    nop
    ld e, b
    nop
    and e
    ld bc, $0ec6
    db $fd
    db $10
    ld a, [$ed40]
    nop
    adc b
    ld [bc], a
    rst $28
    nop
    ld e, [hl]
    ld bc, $06fb
    push bc
    ld a, [de]
    call c, Call_046_7b23
    add c
    sub a
    nop
    pop bc
    ld bc, $03ee
    or a
    inc c
    ld a, a

jr_046_4edd:
    jr jr_046_4edd

    ld h, c
    ccf
    ret nz

    rst $18
    nop
    ccf
    ld bc, $0779
    rst $38
    ld b, $e7
    jr c, @-$1f

    ld [hl], b
    ld a, a
    ret nz

    jr nz, @+$42

    nop
    ld bc, $0301
    ld c, $03
    dec h
    ld e, $78
    rla
    dec hl

jr_046_4efd:
    rst $10
    add a
    ld a, [hl]
    ld a, [hl+]
    db $dd
    ld d, $b9
    ld h, e
    push af
    rst $08
    sub d
    inc l
    rst $18
    ld e, a
    cp b
    cp l
    ld [hl], b
    ld [hl], c
    ld l, e
    rst $10
    and a
    xor a
    rst $08
    ld e, a
    sbc a
    ld a, a
    cp a
    ld a, a
    ei
    rst $28
    rst $30
    db $dd
    rst $28
    ret c

    rst $38
    cp a
    ld [hl], e
    db $eb
    ld [hl], a
    set 7, a
    sbc [hl]
    ld l, l
    ld l, h
    cp e
    ld a, c
    cp [hl]
    ld a, d
    db $f4
    ld sp, hl
    push hl
    jp nc, Jump_000_04ea

    or $dd
    ld a, [hl+]
    dec a
    ld e, d
    ld [hl], $a9
    ret


    ld h, [hl]
    reti


    add a
    and a
    ld e, e
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    add b
    ld a, a
    ld b, c
    cp $80
    ld a, a
    nop
    ccf
    jr nz, jr_046_4f8f

    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    db $10
    rra
    ld b, b
    rst $38
    jr nz, jr_046_4efd

    ld [$0017], sp
    rra
    ld [$0007], sp
    rrca
    add b
    rrca
    inc d
    dec bc
    ld [$c03f], sp
    cp a
    nop
    rlca
    inc b
    inc bc
    inc e
    inc bc
    jr @+$09

    add b
    dec bc
    ld b, b
    rlca
    ld a, $5f
    call nc, $80fb
    add hl, bc
    inc a
    inc bc
    db $fd
    inc bc
    di

jr_046_4f85:
    dec c
    db $eb
    nop
    ld c, e
    nop
    ld c, a
    rlca
    db $fd
    jr jr_046_4f85

jr_046_4f8f:
    ret nz

    inc b

jr_046_4f91:
    nop
    ld c, [hl]
    nop
    inc a
    nop
    ld [hl], $00
    ld d, a
    ld bc, $0e1b
    rst $18
    jr nc, @+$01

    ret nz

    ei
    nop
    push af
    ld [bc], a
    cp a
    nop
    rst $38
    ld bc, $887f
    rst $18
    jr nz, jr_046_4f91

    pop bc
    db $dd
    nop
    dec a
    nop
    xor c
    nop

jr_046_4fb4:
    sbc l
    inc bc
    cp a
    inc c
    rrca
    jr nc, jr_046_4fb4

    ld b, h
    rst $18
    nop
    and a
    nop
    rst $08
    ld bc, $0673
    cp l
    nop
    db $e4
    db $10
    xor d
    ld b, b
    rst $28
    nop
    rst $30
    nop
    cp [hl]
    ld b, e
    ld d, a
    adc h
    db $fd
    db $10
    cp a
    ld h, b
    rst $18
    ret nz

    cp [hl]
    ld bc, $01ff
    ld a, [$fc07]
    dec bc
    scf
    jr nc, @+$75

    ld d, b
    adc c
    ld d, d
    ld [bc], a
    add hl, bc
    ld bc, $130b
    rrca
    or a
    rrca
    rra
    ccf
    ccf
    cp $ad
    cp $1d
    ld a, [$6bb4]
    ld b, a
    ld a, [$d7ad]
    xor d
    ld e, l
    db $ed
    inc sp
    db $eb
    ld [hl], a
    rst $28
    sub a
    cp a
    rst $08
    ccf
    sbc $bf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc $ff
    cp a
    cp $af
    cp $9b
    db $fc
    db $eb
    db $fc
    db $ed
    ld e, c
    cp d
    db $e3
    call nz, $ea77
    ld c, c
    sub d
    ld e, c
    or l
    ld a, [hl+]
    ld b, l
    ld c, e
    adc e
    rst $00
    dec b
    sbc [hl]
    inc h
    ld e, a
    sbc $29
    inc sp
    call c, Call_046_71af
    rst $28
    ld [hl], c
    db $f4
    db $db
    or $8c
    ld l, h
    sub h
    ld a, a
    add b
    ccf
    ret nz

    ld l, $c1
    inc l
    jp nz, $ff00

    nop
    rst $38
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR33], a
    ldh [rNR22], a
    ldh [rNR23], a
    ldh [rP1], a
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$04
    ei
    ld bc, $02ff
    ld hl, sp+$05
    ld hl, sp+$02
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fc
    cp $1a
    db $e4
    ret nc

    ld l, $b8
    ld b, [hl]
    jr @-$18

    inc d
    db $e3
    ld [$05f7], sp
    ld a, [c]
    nop
    ld [hl], e
    rst $38
    ld a, e
    rst $38
    ld [hl], e
    ld a, l
    ld a, e
    sbc a
    ld a, c
    sbc a
    ei
    rst $38
    dec a
    db $eb
    dec a
    or $3f
    or e
    inc c
    rlca
    jr c, jr_046_5109

    ld e, e
    inc b
    sbc e
    inc b
    ld a, [de]
    nop
    inc e
    nop
    ld e, $02
    inc c
    ld e, l
    ccf
    db $fd
    rst $08
    db $fd
    rrca
    rst $28
    rra
    cp [hl]
    ld b, a
    db $fd
    rrca
    sbc $37
    rst $20
    ld b, a
    ld bc, $0303
    inc bc
    inc bc
    rlca
    inc bc
    rrca
    inc hl
    inc de
    ld b, e
    inc hl
    inc bc
    add e
    dec hl
    inc bc
    inc bc
    rlca
    dec bc
    rrca
    inc de
    dec sp
    add a
    ld h, e
    ld b, a
    add e
    adc e
    rlca
    rst $20
    rlca
    rst $28
    rrca
    ld e, a
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    cp $fd
    rst $30
    ld sp, hl
    di
    rst $30
    push af
    rst $08
    xor [hl]
    rst $18
    ld bc, $dbff
    ccf
    cp a
    rst $28
    ld e, a
    cp a
    ccf
    rst $38

jr_046_50fa:
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

jr_046_5109:
    db $fd
    db $db
    db $fc
    ld hl, sp-$0b
    ld a, c
    db $ed
    sub $eb
    call nz, $6d2f
    set 3, e
    ld [hl], $fb
    scf
    ld d, a
    rst $38
    sbc a
    cp $7c
    cp a
    rst $38
    add hl, sp
    di
    ld a, [hl]
    db $fd
    rst $20
    ld l, l
    rst $38
    cp a
    adc $ec
    sbc h
    jr c, jr_046_50fa

    ret c

    cp e
    or b
    ld d, c
    ldh [$6c], a
    ret z

    call nc, $c381
    ld b, d
    and d
    inc h
    ld b, c
    inc h
    adc b
    ld [$8418], sp
    rst $38
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    db $ed
    rst $38
    ld [$05f7], sp
    ld a, [$5fa0]
    dec b

jr_046_5153:
    ld a, [$be41]
    dec hl
    call nc, Call_000_00ff
    ldh a, [rIE]
    ld c, b
    rst $30
    dec hl
    call nc, Call_000_00fc
    cp $00
    ld e, a
    add b
    ld a, [hl]
    add b
    rst $38
    nop
    and b
    db $fd
    nop
    ccf
    nop
    ld b, b
    ret z

    nop
    reti


    nop
    pop bc
    db $10
    jp nc, Jump_000_0001

    ld c, c
    inc bc
    rst $38
    and b
    ld c, a
    and d
    nop
    ld h, b
    sbc a
    jr nc, jr_046_5153

    ld a, l
    add d
    ld d, b
    xor a
    add h
    ei
    ld l, [hl]
    sub l
    call nc, $6b2b
    sub h
    and a
    ld e, b
    sub $29
    or [hl]
    ret


    cp $9d
    rst $18

jr_046_5199:
    and l
    add d
    db $fd
    ldh a, [$cf]
    jp nz, Jump_000_2abd

    add b
    ld c, $f0

jr_046_51a4:
    inc e
    jp $c03f


    rra
    ldh [rNR34], a
    pop bc
    dec e
    ldh [rP1], a
    xor $1b
    db $e4
    ld e, $e1
    add hl, bc
    or $1c
    di
    inc a
    rst $38
    cp a
    rst $38
    rst $38
    ldh a, [$f0]
    rst $08
    ret nz

    cp a
    ret nz

    rst $38
    ldh a, [rIE]
    adc a
    rst $38
    jr nc, jr_046_5199

    ld [hl], b
    add b
    ld a, b
    add b
    ld h, b
    add b
    ld [hl], b
    add b
    cp b
    ret nz

    add b
    ldh a, [$80]
    rst $38
    ld b, b

jr_046_51d9:
    rst $38
    jr nc, @+$01

    ld c, $fe
    rra
    ldh [$3c], a
    ret nz

    jr c, jr_046_51a4

    ld e, $e0
    add a
    ld hl, sp-$40
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, a
    rst $38

jr_046_51f4:
    rst $38
    ccf
    rst $38
    ld a, [hl]
    db $fc
    rst $38
    ld a, [$fdfc]
    push hl
    ld e, e
    db $e3
    rst $18
    rst $20
    rst $28
    sub a
    sub a
    cp $9d
    ld a, a
    cp a
    ld l, a
    ld a, a
    sbc $fe
    or l
    db $db
    ld l, [hl]

jr_046_5210:
    ld d, c
    cp $fe
    pop af
    rst $28
    ld [hl], e
    xor $f6
    xor h
    db $f4
    cp b
    ld c, h
    ld e, b
    or h
    jr c, jr_046_5210

    ldh [$f5], a
    ret


    db $d3
    add d
    sub [hl]
    ld c, $14
    inc l
    add hl, de
    jr jr_046_51f4

    sub b
    ld [hl], d
    and b
    inc h
    ret nz

    ld h, h
    ld b, a
    add c
    add e
    adc d
    sub [hl]
    inc bc
    ld b, $95
    ld a, [bc]
    inc c
    inc d
    ld e, b
    or b
    jr c, jr_046_51d9

    nop
    cpl
    nop
    rst $20
    nop
    ld bc, $f700
    nop
    nop
    rst $38
    rst $38
    nop
    cp a
    nop
    add hl, bc
    or $40
    cp a
    ld a, [c]
    dec c
    add a
    ld a, b
    db $ed
    ld [de], a
    nop
    rst $38
    rrca
    rst $38
    db $fd
    ld [bc], a
    ld de, $6900
    nop
    ld a, d
    nop
    rst $38
    nop
    sbc a
    nop
    adc b
    ld [bc], a
    nop
    ld [hl], a
    dec [hl]
    nop
    dec de
    nop
    nop
    ld [hl+], a
    inc d
    nop
    add hl, bc
    nop
    jr c, jr_046_527a

jr_046_527a:
    dec de
    ldh [rP1], a
    cp [hl]
    and $01
    ld e, e
    and h
    ld e, a
    and b
    ld l, $d1
    ld l, l
    sub b
    ld a, a
    add b
    xor e
    call nc, $ff02
    cp [hl]
    ld b, c
    ld a, a
    add b
    ld a, e
    add h
    and h
    ld e, e
    ld e, e
    and h
    db $e3
    db $fc
    adc a
    ld a, a
    dec h
    sbc $68
    sub a
    ld b, [hl]
    cp c
    add sp, $17
    ld a, [$7f45]
    cp h
    ld a, $eb
    dec sp
    and $2f
    sub $6a
    or l
    ld bc, $01f8
    sbc [hl]
    cpl
    db $10
    ld l, $d0
    rra
    ldh [$82], a
    db $fc
    ldh [$7f], a
    ld [hl], b
    sbc a
    jr @-$0f

    rra
    rst $38
    ld a, a
    cp $8f
    rst $38
    ld h, h
    sbc a
    inc [hl]
    rrca
    inc d
    rrca
    dec d
    ld c, $16
    inc c
    dec l
    ld e, $0f
    ld a, h
    ld c, $ff
    ld d, $ef
    db $76
    adc a
    or l
    rrca
    push de
    ld c, $15
    ld c, $94
    rrca
    xor h
    rra
    adc h
    ld a, a
    inc e
    rst $38
    db $fc

jr_046_52eb:
    rst $38
    cp $ff
    rst $20
    rst $38
    rst $20
    rst $28
    cp a
    ld c, a
    rst $38
    ld e, a
    dec a
    cp a
    ld a, a
    ld a, d
    rst $38
    ld a, l
    rst $38
    ld sp, hl
    ei
    rst $30
    cp a
    rst $28
    add $7f
    sbc [hl]
    rst $38
    db $ec
    sbc a
    ret c

    cp d
    jp c, Jump_046_6535

    ld a, [c]
    ld h, e
    pop hl
    jp z, $8863

    add h
    ld [$0844], sp
    adc b
    db $10
    jr @+$0e

    jr nz, jr_046_536e

    ld hl, $8142
    add [hl]
    rst $18
    dec b
    rst $38
    ld l, b

jr_046_5325:
    cp a
    jr jr_046_5325

    jr nc, @-$01

    jr nc, jr_046_52eb

    ld h, b
    db $fd
    ld h, c
    db $fd
    jp $0282


    jp $8506


    ld a, [bc]
    dec c
    ld a, [bc]
    rrca
    ld e, $1e
    inc [hl]
    inc a
    inc [hl]
    jr z, jr_046_5364

    call c, $f807
    or h
    ld c, e
    inc h
    db $db
    nop
    rst $38
    db $fc
    rst $38
    rla
    add sp, $1e
    pop hl
    call c, Call_046_4220
    cp l
    ld b, c
    cp [hl]
    rst $18
    jr nz, @+$60

    and c
    ld b, h
    ei
    cp $ff
    xor h
    ld d, e
    ld h, a
    nop
    or [hl]
    nop

jr_046_5364:
    ld a, a
    add b
    sbc l
    nop
    db $ed
    nop
    xor e
    nop
    add hl, bc
    or b

jr_046_536e:
    nop
    ld e, l
    ld c, a
    nop
    ld c, [hl]
    nop
    dec bc
    nop
    dec h
    nop
    add c
    nop
    ld c, c
    inc b
    inc bc
    ret z

    sub b
    ld h, [hl]
    ld [hl], l
    db $db
    ld c, d

jr_046_5383:
    or l
    adc b
    ld [hl], a
    ld c, h
    or e
    cp a
    inc b
    cp l
    ld b, d
    or [hl]
    ld c, c
    ld e, a
    or d
    di
    dec c
    rst $30
    ld a, [bc]
    pop bc
    ld a, $6b
    sub h
    ld d, c
    xor [hl]
    jp Jump_046_7fbc


    db $fc
    cp a
    ld b, c
    or d
    nop
    inc b
    nop
    inc de
    nop
    adc d
    nop
    inc bc
    nop
    jr nz, jr_046_53ac

jr_046_53ac:
    ld b, b
    nop
    ret c

    nop
    ldh a, [rP1]
    sbc b
    nop
    inc b
    ld d, b
    jr nz, jr_046_53c6

    add hl, de
    nop
    ld [hl], l
    nop
    sbc $00
    ccf
    cp $ff
    pop bc
    pop bc
    ld a, $00
    rst $38

jr_046_53c6:
    nop
    rst $38
    pop bc
    rst $38
    ld a, $ff
    pop bc
    ld a, $40
    nop
    ccf
    ld b, b
    cp [hl]
    nop
    ld b, b
    add b
    inc hl
    ret nz

    rst $08
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp b
    jr c, jr_046_5383

    nop
    inc [hl]
    ret nz

    ret nc

    nop
    ld [hl], c
    add b
    ld e, $e1
    nop
    rst $38
    rst $38
    rst $38
    adc b
    ret nz

    ldh a, [$e8]
    rst $20
    ld hl, sp-$02
    rst $38
    cp $ff
    db $fd
    rst $38
    ld l, [hl]
    jp c, $bedc

    ldh a, [$f4]
    add hl, sp
    ldh a, [$98]
    ld [hl], b
    inc h
    pop af
    ld h, b
    pop bc
    add [hl]
    ret nz

    add h
    ld b, b
    ld [$1225], sp
    add hl, bc
    ld [de], a

jr_046_5413:
    inc d
    inc h
    dec hl
    ld b, c
    add hl, hl
    ld de, $83c2
    add e
    dec b
    and a
    adc l
    daa
    rrca
    adc a
    dec d
    rra
    ld e, $3b
    dec a
    ld l, $3d
    ld l, l
    ld a, e
    cp e
    cp c
    ld [hl], a
    rst $10
    inc h
    ld l, [hl]
    sbc c
    jp c, $9425

    db $d3
    and l
    or d
    and c
    ld l, [hl]
    ld h, h
    reti


    pop bc
    push af
    pop hl
    pop af
    sbc l
    jr nz, jr_046_5413

    inc b
    sub c
    ld c, b
    add b
    ld b, b
    ld b, b
    add l
    ld b, c
    ret nz

    ld bc, $0704
    nop
    ld b, c
    inc b
    ld b, c
    nop
    ld b, c
    nop
    ld b, c
    ld [bc], a
    ld b, c
    ld [bc], a
    ld b, c
    ld [bc], a
    jp nz, Jump_046_4141

    ld [bc], a
    ld e, h
    inc hl
    ld e, [hl]
    ld hl, $23fe
    ld a, [hl]
    inc hl
    ld sp, hl
    daa
    rst $38
    daa
    ld a, a
    daa
    cp $f3
    ld h, b
    ccf
    ldh [$3f], a
    call nz, $e03f
    ccf
    ld [hl], c
    ccf
    ldh [$3f], a
    ldh [$3f], a
    ld [hl], b
    rst $38
    jr nc, jr_046_5501

    ldh a, [$3f]
    ld [hl], b
    rra
    ldh a, [$1f]
    ldh a, [$3f]
    db $10
    ccf
    db $10
    rra
    jr nc, jr_046_54af

    ld [hl], b
    rst $38
    jr nz, jr_046_54b3

    ld b, b
    rra
    adc h
    rra
    ld c, b
    rra
    sbc h
    rrca
    ld a, [de]
    rrca
    dec de
    rst $38
    sbc b
    ccf
    ld c, b
    rra
    ld a, [de]
    rra
    xor b
    rra
    ld bc, $291f
    rra

jr_046_54ac:
    sbc c
    rra
    inc c

jr_046_54af:
    rra
    add b
    rra
    add hl, de

jr_046_54b3:
    rrca
    jr jr_046_54c5

    ld h, b
    rrca
    adc c
    ld a, a
    cp b
    rrca
    ld [$900f], sp
    rrca
    res 1, h
    ei
    ld c, h
    ld [hl], c

jr_046_54c5:
    xor [hl]
    ld a, b
    rst $28
    ldh a, [rIE]
    jr nc, @+$01

    sub b
    ld a, a
    ld d, b
    ccf
    ld e, b
    ccf
    ld e, b
    ccf
    call c, Call_000_3c3f
    ld a, a
    ld a, $ff
    ld a, $ff
    ld e, h
    cp a
    sbc [hl]
    ld a, a
    ld e, h
    ccf
    ld e, h
    ccf
    ld e, h
    ccf
    sbc $3f
    cp [hl]
    ld a, a
    ld a, $ff
    ld a, h
    rst $38
    db $fc
    rst $38
    ld [hl], a
    jr nc, jr_046_54ac

    ld l, l
    jp nc, Jump_046_4767

jr_046_54f7:
    add a
    adc e
    and a
    rrca

jr_046_54fb:
    sbc d
    inc d
    ld e, $1f
    dec a
    daa

jr_046_5501:
    ld e, a
    ld b, e
    ld a, [hl]
    add [hl]
    or l
    inc c
    ld [hl], a
    ld a, [de]
    ld l, l
    inc b
    jp c, $aa54

    dec [hl]
    ld l, l
    ld d, l
    ld l, d
    db $eb
    sbc a
    rst $28
    or l
    rst $38
    ld h, l
    db $eb
    db $fc
    rst $18
    db $f4
    ld a, [$e2d5]
    cp l
    ld e, a
    push hl
    ld h, l
    ld e, a
    or [hl]
    res 3, d
    ld l, [hl]
    push hl
    ld d, $a4
    ld e, b
    jr z, jr_046_54fb

    ld d, d
    cp b
    call nc, $e0ff
    rst $38
    ldh [$fc], a
    add sp, -$03
    xor c
    rst $28
    add b
    rst $28
    add d

jr_046_553d:
    ei
    nop

jr_046_553f:
    rst $38
    adc b

jr_046_5541:
    ld [hl], a
    adc b
    ld [hl], a
    call nz, Call_046_483b
    or a
    ld b, h
    cp e
    ld h, b
    sbc a
    ld b, h

jr_046_554d:
    cp e
    ld b, b
    cp a
    ld b, h
    cp e
    ld c, b
    or a
    ld h, b
    sbc a
    ld h, h
    sbc e
    ld h, b
    sbc a
    ld h, b
    sbc a
    jr nz, jr_046_553d

    jr nz, jr_046_553f

    jr nz, jr_046_5541

    ldh [$1f], a
    ldh [$1f], a
    jr nc, jr_046_54f7

    ld h, b
    sbc a
    ld h, h
    sbc e
    jr nz, jr_046_554d

    ld h, h
    sbc e
    inc [hl]
    swap h
    bit 5, h
    sub e
    ld [hl], $c9
    ld l, h
    sub e
    inc a
    jp $db24


    jp nc, Jump_000_242d

    db $db
    inc h
    db $db
    and h
    ld e, e
    ld [hl], h
    dec bc
    ld h, h
    dec de
    ld a, h
    inc bc
    inc e
    inc bc
    inc a
    inc bc
    inc [hl]
    dec bc
    db $76
    add hl, bc
    dec [hl]
    ld a, [bc]
    ld sp, $704e
    rrca
    or $09
    db $ed

jr_046_559d:
    ld [de], a
    or [hl]
    ld c, c
    push af
    ld a, [bc]

jr_046_55a2:
    ld [hl], h
    adc e
    ld [hl], d

jr_046_55a5:
    adc l
    sbc d
    dec b
    adc d
    dec d
    add a
    ld [$018e], sp
    adc l

jr_046_55af:
    ld [bc], a
    adc d
    ld b, l
    dec a
    ld [bc], a
    rst $30
    ld [$42bd], sp
    cp c
    ld b, d
    jr jr_046_559d

    jr jr_046_55a2

    jr jr_046_55a5

    sbc h
    ld h, d
    sbc l
    ld h, b
    sbc l
    ld h, b
    or h
    ld c, b
    ld d, b
    xor b
    jr @-$1e

    jr jr_046_55af

    ld d, h
    xor c
    ld d, d
    xor c
    db $10
    ldh [rNR11], a
    ldh [rNR24], a
    ldh [$90], a
    ld h, b
    ld d, b
    xor b
    call c, $0820
    ld a, [c]
    scf
    ld a, [$aadc]
    ld e, [hl]
    and b
    jp c, $dea4

    ldh [$9e], a
    ldh [$be], a
    ldh a, [$e6]
    ld hl, sp-$40
    cp d
    ld [$d255], a
    db $dd
    jp Jump_000_02bd


    db $fd
    ld e, e
    push af
    sub e
    db $ed
    jr z, @+$01

    ld [bc], a
    ei
    ld d, [hl]
    rst $38
    rst $28
    dec [hl]
    or l
    ld l, e
    ld [hl], e
    sbc $4e
    ld a, [$b4dd]
    db $f4
    dec a
    db $fc
    xor d
    ld l, h
    sbc c
    ld d, b
    or h
    jr nz, @-$0a

    ld h, b
    or c
    ld b, c
    ret


    ld b, c
    sub c
    sub e
    jp z, $ffc7

    push de
    rst $30
    ret


    rst $38
    ld c, a
    rst $28
    sub e
    rst $38
    ld [de], a
    rst $18
    ld h, d
    ccf
    jr z, @-$47

    ld d, c
    ld l, a
    ld d, c
    ld l, a
    pop hl
    rst $18
    and [hl]
    db $db
    ld [hl+], a
    rst $18
    nop
    rst $38
    ld b, b
    cp a
    ld b, d
    cp l
    cpl
    ret nc

    cpl
    ret nc

    dec bc
    ldh [$f9], a
    ld b, b
    ld d, b
    xor a
    ld e, b
    xor a
    ld d, c
    and b
    db $10
    ldh [rNR21], a
    ldh [rP1], a
    ldh a, [rNR10]
    ldh [$80], a
    ldh a, [rSTAT]
    ldh a, [$89]
    cp $40
    ldh a, [$81]
    ldh a, [rP1]
    ldh a, [rIF]
    ldh a, [rTAC]
    ldh a, [rDIV]
    pop af
    add a
    rst $38
    ld c, h
    cp $10
    rst $28
    ld [$04f1], sp
    di
    nop
    pop af
    ld bc, $03f3
    rst $30
    ld bc, $08fe
    db $f4
    nop
    ldh a, [rSC]
    ldh a, [rLCDC]
    ldh a, [rSB]
    ldh a, [rP1]
    pop af
    ld b, [hl]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rSB], a
    pop hl
    ld bc, $4ae6
    add sp, -$80
    ldh a, [rP1]
    ldh [rSB], a
    ldh [$81], a
    pop hl
    inc c
    pop hl
    inc b
    db $eb
    dec c
    ld a, [c]
    ld e, $e1
    dec c
    di
    add hl, bc
    or $34
    push hl
    ld bc, $03ee
    db $f4
    add d
    ld a, l
    add e
    ld a, [hl]
    ld [$03f5], sp
    ld hl, sp+$40
    ld sp, hl

jr_046_56ba:
    ld b, $f1
    db $10
    ld [c], a
    ld hl, $00e6
    db $ed
    add hl, bc
    di
    add d
    ld [hl], a
    inc d
    rst $20
    inc b

jr_046_56c9:
    ei
    xor c

jr_046_56cb:
    ld e, a
    add e
    ld a, [$6f82]
    sub l
    ld h, [hl]
    and h
    res 7, h
    ld c, e
    inc c
    rst $30
    jr jr_046_56c9

    jr jr_046_56cb

    add hl, sp
    push de
    pop bc
    ccf
    dec hl
    ld d, e
    ld d, h
    cpl
    ld c, h
    ccf
    ld c, h

jr_046_56e7:
    ld e, $1e
    dec d
    rra
    rra
    ld a, e
    cpl
    or d
    ld l, a
    ld l, h
    ld [hl], l
    ld hl, sp-$31
    cp b
    db $ed
    call nc, $f07a
    or l
    ld sp, $2def
    di
    jp $034e


    adc $85
    xor [hl]
    add l
    adc a
    adc [hl]
    ld c, e
    ld c, e
    sbc a
    rra
    rra
    rla
    cp a
    or c
    ld a, $29
    dec [hl]
    ld h, e
    ld a, [hl]
    ld h, d
    ld a, [hl]
    add h
    cp $84
    db $ec
    adc h
    ld l, c
    sbc d
    ld c, c
    ld hl, sp+$09
    add b
    stop
    jr nc, @-$76

    jr nc, jr_046_56e7

    jr nz, jr_046_56ba

    ld h, b
    ret nz

    ld bc, $01e2
    ld bc, $8f80
    ld a, [c]
    ld a, [bc]
    rst $20
    ld d, b
    xor a
    rst $00
    inc a
    ld hl, $4dde
    cp d
    dec h

jr_046_573d:
    jp c, $38c7

    ret nc

    rlca
    add sp, $03
    ldh a, [rTAC]
    ldh a, [rTAC]
    ld c, b
    or a
    add b
    ld a, a
    jr nc, jr_046_5755

    call c, Call_000_2407
    rlca
    ret nc

    rlca
    nop

jr_046_5755:
    rlca
    jr nc, @+$11

    or b
    ld l, a
    nop
    rlca
    inc d
    inc bc
    jr @+$09

    jr nc, jr_046_5769

    sub b
    rrca
    cp b
    rra
    ldh [rIE], a
    nop

jr_046_5769:
    cp a
    add b
    ld l, a
    jr nz, jr_046_573d

    db $10
    adc a
    jr z, jr_046_57d1

    jr nz, @+$01

    ret nc

    rst $08
    inc b
    adc e
    inc c
    inc bc
    nop
    rrca
    ld [$0007], sp
    rra
    ld d, b
    cpl
    nop
    adc a
    db $10
    rrca
    inc d
    dec bc
    jr nz, jr_046_57a9

    add h
    dec sp
    ldh [rPCM34], a
    add sp, -$69
    ret nz

    rlca
    add hl, hl
    rla
    db $10
    rrca
    ld [bc], a
    dec a
    ld h, e
    ld e, l
    or c
    adc $60
    rst $18
    inc h
    db $db
    inc bc
    ld a, l
    rlca
    reti


    jp $a19d


    rra
    jp hl


jr_046_57a9:
    rla
    ret


    scf
    ret


    inc sp
    ld l, c
    sub l
    ld c, b
    scf
    and l
    ld a, e
    and c
    ld e, l
    add hl, bc
    ld [hl], l
    ld [hl-], a
    dec l
    inc l
    ld [hl], c
    ld c, b
    ld h, l
    nop
    push af
    or b
    push bc
    inc bc
    cp l
    add hl, sp
    ld [hl], a
    ld d, [hl]
    ei
    pop hl
    cp a
    rla
    db $fd
    ld l, c
    rst $38
    cp e
    rst $38
    cp c

jr_046_57d1:
    ld d, a
    inc hl
    cp $25
    rst $38
    ld d, l
    rst $38
    call c, $98ff

jr_046_57db:
    rst $38
    ld d, e
    db $fd
    jr nc, jr_046_57db

    rst $38
    ld a, [hl]
    ld d, c
    cp $65
    call c, $d4ab
    sbc c
    xor [hl]
    inc e
    ei
    jr nc, @+$01

    ld hl, $357b
    ld l, d
    ld d, e
    ld a, [$db76]
    cp h
    rst $20
    adc $bf
    ret c

    cpl
    ld a, [$d31f]
    cp a
    ldh a, [$7f]
    ld h, c
    cp a
    and c
    rst $38
    db $e3
    ld e, a
    ld b, d
    rst $38
    or d
    rst $38
    or [hl]
    db $fd
    sub h
    db $ed
    ld c, c
    ld a, $0d
    ld hl, sp+$05
    ld hl, sp+$56
    db $10
    add hl, sp
    ld b, b
    inc c
    ldh a, [$74]
    xor b
    ld b, e
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    pop bc
    cp a
    add b
    or [hl]
    nop
    db $fc
    add b
    rst $00
    nop
    dec d
    nop
    ld a, [de]
    nop
    ld [bc], a
    ld [$000a], sp
    jr jr_046_5838

jr_046_5838:
    dec d
    nop
    stop
    ld [hl-], a
    nop
    jr z, jr_046_5840

jr_046_5840:
    dec a
    rst $38
    ld a, $ff
    inc [hl]
    rst $38
    jr nc, @+$01

    ccf
    rst $38
    jr nc, @+$01

    inc sp
    ld hl, sp+$33
    db $fc
    dec sp
    db $f4
    ld [hl-], a
    db $fd
    ccf
    rst $38
    db $76
    rst $38
    ld [hl], a
    rst $38
    db $76
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    jr c, @+$01

    ld [hl], h
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, e
    db $fc
    ld a, e
    db $fc
    ld a, a
    db $fc
    db $76
    rst $38
    ld h, l
    cp $f7
    ld hl, sp-$12
    pop af
    rst $00
    di
    ld c, b
    rst $20
    set 7, h
    ld a, [c]
    db $fd
    pop af
    rst $38
    rst $30
    rst $18
    rst $38
    rst $38
    push de
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    call $ecff
    cp $ec
    rst $38
    ret c

    rst $38
    ld sp, hl
    cp $ff
    rst $38
    rst $38
    rst $38
    or a
    rst $18
    add b
    add c
    pop bc
    add b
    add b
    and b
    ret nc

    ld [$8d02], a
    ret c

    add b
    sub b
    nop
    nop
    add b
    nop
    add d
    ld a, h
    add d
    dec a
    jp nz, $fae5

    pop hl
    rra
    ld c, e
    or h
    xor a
    db $10
    dec e
    ldh [$e1], a
    ld e, $42
    ldh a, [$fe]
    ei
    rst $38
    rst $38
    rst $38
    rst $38

jr_046_58c8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
    rst $38
    inc hl
    rst $38
    ld h, $fb
    ld e, d
    rst $20
    jp hl


    ld d, [hl]
    sbc c
    adc $d5
    ld a, [hl+]
    ld a, [hl]
    ld bc, $11ee
    rra
    and b
    ld e, l
    and d
    rst $38
    ld [bc], a
    ld d, e
    ld h, h
    sbc e
    ld b, h
    db $76
    adc b
    ld b, l
    cp b
    and [hl]
    ld e, b
    or a
    ld d, b
    adc h
    ld [hl], c
    and l
    ld [hl], c
    ld [c], a
    add hl, sp
    ld e, e
    ldh a, [rWY]
    ret nc

    ld b, d
    ldh a, [$82]
    db $f4
    sbc b
    and h
    adc b
    ldh [rNR43], a
    ret z

    jr c, jr_046_58c8

    nop
    ret nc

    inc d
    sub b
    add h
    db $10
    add b
    nop
    rst $28
    jr nz, jr_046_5922

    and c
    xor $01
    xor e
    ld b, c
    sub c
    ld b, e
    ld h, l
    add d
    inc de
    add b
    adc a
    nop
    xor e
    inc b

jr_046_5922:
    add e
    inc b
    dec c
    nop
    ld b, c
    ld [$006e], sp
    ld e, a
    nop
    ld d, a
    nop
    rla
    nop
    ld e, l
    and d
    ret z

    scf
    ldh [$3b], a
    ret nc

    cpl
    sub c
    ld l, [hl]
    db $ec
    ld d, e
    adc l
    ld [hl], c
    add hl, sp
    rst $00
    ccf
    rst $38
    ld e, c
    rst $20

jr_046_5944:
    ret


    rst $30
    ld e, c
    rst $20
    rst $30
    rst $38
    sbc c
    rst $38
    ld b, e
    cp l
    sub e
    ld h, l
    rst $38
    rrca
    push af
    rst $38
    inc sp
    rst $08
    cp c
    ld e, a
    cpl
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    ld a, a
    rst $38
    rst $30

jr_046_5965:
    rst $38
    db $e3
    sbc a
    ld [hl], l
    adc a
    ret


    ccf
    jr z, jr_046_5965

    db $ed
    sub e
    ldh [$1f], a
    ldh a, [$3f]
    ld h, c
    rst $38
    ret z

    rst $38
    ld d, e
    sbc h
    call nc, Call_000_342a
    jp z, $9ee0

    sbc c
    and $e0
    adc [hl]
    ld [bc], a
    adc b
    add [hl]
    nop
    ld b, d
    add b
    sub b
    ld [$0014], sp
    inc b
    nop
    nop
    nop
    db $10
    ldh [$2c], a
    ret nc

    rra
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    ccf
    ld bc, $40af
    push bc
    add b
    cp $d8
    rst $38
    cp [hl]
    rst $38
    nop
    rst $28
    nop
    db $dd
    inc bc
    ret nc

    add c
    ld a, [$af02]
    nop
    rst $18
    ret nz

    rst $38
    cp $ff
    ld bc, $01ef
    sbc $2a
    add c
    sub b
    nop
    jr nz, jr_046_5944

    ldh [$f8], a
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $38
    rst $30
    cp $47
    cp $0f
    reti


    xor a
    bit 5, e
    sbc a
    and e
    ld e, l
    pop af
    rra
    xor l
    inc de
    dec hl
    add a
    srl [hl]
    add d
    ld a, a
    ld b, e
    ld e, [hl]
    call nz, $bd7f
    cp $ec
    add e
    ld l, d
    add l
    add b
    ld c, $40
    add hl, bc
    ld d, $09
    ld [bc], a
    add hl, de
    add hl, bc
    inc d
    ld e, $01
    cp h
    inc bc
    add b
    inc hl
    add hl, hl
    rlca
    ld l, c
    rlca
    ld [hl+], a
    ld c, a
    ld b, d
    ld d, e
    jp z, $8e13

    sub c
    add b
    or [hl]
    ld b, h
    sub b
    ld sp, $cd04
    nop
    ld h, d
    inc c
    ret z

    nop
    adc d
    ld e, b
    jr nc, jr_046_5a3b

    ld b, $10
    db $10
    rst $38
    dec de
    rst $38
    nop
    rst $38
    ld l, e
    or [hl]
    ld h, [hl]
    cp [hl]
    ld hl, $f6fe
    ld a, l
    ld b, d
    db $dd
    db $fd
    ld b, c
    db $fd
    pop de
    rst $30
    push de
    rst $38
    add c
    rst $38
    adc d
    rst $38

jr_046_5a3b:
    sbc d
    ei
    ld a, [hl-]
    rst $38
    ld a, [de]
    ret nz

    rst $38
    jr nz, @+$01

    and b
    rst $38
    add b
    rst $38
    ei
    rst $38
    ld c, b
    rst $30
    ld e, l
    ld [c], a
    rst $38
    ret nz

    ret nz

    rst $38
    call nz, $c1fb
    cp $c0
    rst $38
    rst $18
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    sbc d
    push hl
    xor e
    ret nc

    sbc [hl]
    pop hl
    ret nz

    cp a
    ld a, a
    nop
    rst $20
    db $10
    ld [bc], a
    cp l
    inc hl
    rst $18
    nop
    rst $38
    nop
    rst $38
    dec d
    rst $38
    ld bc, $01ff
    rst $38
    rla
    rst $38
    inc bc
    db $fd
    ld [bc], a
    rst $38
    pop hl
    cp a
    add d
    ld a, a
    ret nc

    cpl
    ld e, b
    and a
    ld [$84f7], sp
    ld a, e
    add b

jr_046_5a8f:
    rst $38
    ld a, b
    rlca
    ld a, $00
    cp [hl]
    ld bc, $7f00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    jr nc, jr_046_5ab3

    inc bc
    nop
    inc b
    nop
    ld b, b
    nop
    add b
    ld a, h
    ld [$0a07], sp
    inc b
    rst $28
    nop
    rst $38

jr_046_5ab3:
    nop
    xor d
    ld d, l
    ld a, [$fe04]
    nop
    rra
    ldh [$92], a
    ld a, a
    adc l
    ld [hl], d
    ld b, $00
    jr z, jr_046_5ac4

jr_046_5ac4:
    and b
    inc d
    inc d
    ret nz

    pop af
    xor $fb
    ccf
    rst $28
    ld a, e
    rst $30
    rst $38
    rst $30
    rst $28
    rst $28
    rst $30
    rst $38

jr_046_5ad5:
    rst $30
    rst $08
    rst $38
    rst $28
    rst $18
    rst $28
    rst $38
    db $eb
    rst $38
    and [hl]
    rst $18
    db $e3
    or a
    add l
    ld e, a
    ld hl, $a5ff
    db $eb
    ld h, a
    xor a
    and e
    ld l, e
    ld c, $d3
    add [hl]
    ld e, e
    add a
    ld d, d
    sbc e
    add $55
    add [hl]
    db $e4
    dec b
    and h
    add l
    ld [hl], l
    add [hl]
    and d
    rrca
    adc d
    cpl
    xor [hl]
    dec bc
    jr z, jr_046_5a8f

    jr z, jr_046_5ad5

    inc h
    ld c, c
    nop
    sub l
    sub b
    ld e, [hl]
    ld [hl-], a
    ld e, c
    jr c, jr_046_5b12

    xor b
    dec d

jr_046_5b12:
    adc d
    ld bc, $010c
    adc h
    ld hl, $0199
    call nz, Call_046_4901
    ld bc, $410d
    dec c
    ld b, c
    rlc b
    sbc c
    ld b, d
    ld l, b
    add d
    sub b
    and d
    ld a, [c]
    add d
    ret nc

    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    rst $38
    ld [bc], a
    rst $28
    ld [de], a
    rst $38
    nop
    rst $30
    nop
    pop af
    inc b
    or $04
    push af
    inc b
    rst $18
    nop
    rla
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    inc b
    db $db
    dec [hl]
    jp z, $08f7

    nop
    rst $38
    xor a
    ld d, b
    dec e
    ld [c], a
    dec c
    ld a, [c]
    di
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    ld a, e
    rst $38
    inc e
    db $e3
    ld d, a
    xor b
    xor a
    ld d, b
    nop
    rst $38
    db $f4
    dec bc
    rst $38
    nop
    db $dd
    ld [hl+], a
    dec l
    rst $38
    ld hl, sp+$07
    ld a, a
    nop
    dec l
    sub d
    ld c, $f1
    rrca
    ld [hl], b
    xor a
    ld d, b
    ld bc, $01ff
    rst $38
    nop
    rst $38
    cp e
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld a, $d5
    rra
    rst $38
    rst $00
    cp e
    add b
    db $76
    add d
    ld a, a
    ldh [rIF], a
    inc h
    db $db
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
    ld sp, hl
    rlca
    ld e, a
    nop
    ld a, l
    nop
    cp a
    ld b, b
    ld a, [$e1f4]
    rra
    ld a, [hl]
    add c
    ldh a, [rIF]
    cp $01
    rst $38
    inc b
    or a
    nop
    rst $38
    nop
    rst $08
    or b
    rst $38
    ld hl, sp+$02
    rlca
    inc c
    nop
    inc c
    nop
    ld d, b
    and b
    ld b, h
    ld de, $e0c4
    db $fc
    cp $ff
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fe
    rst $38
    cp $ff
    rst $38
    cp a
    cp a
    ld [hl], l
    sbc a
    ld a, l
    ld d, a
    rst $38
    rst $38
    ld e, l
    ld e, a
    cp l
    db $fd
    ld a, a
    or a
    ld a, l
    rst $38
    cp e
    ld sp, hl
    ld a, a
    ld a, a
    rst $38
    rst $28
    ld a, a
    ld l, e

Jump_046_5bf7:
    rst $38
    ld h, [hl]
    rst $38
    ld b, d
    rst $28
    ld l, d
    rst $00
    rst $00
    ld [$ebd7], a
    ld c, a
    jp nz, $6b46

    add a
    ld e, d
    add a
    res 0, [hl]
    rst $28
    add d
    adc a
    adc e
    and [hl]
    adc l
    add d
    rrca
    and [hl]
    ld b, $85
    ld b, h
    daa
    rlca
    inc d
    inc b
    ld e, $54
    inc b
    inc b
    dec b
    ld c, a
    cp a
    ld c, a
    cp a
    adc l
    rst $38
    ld c, a
    rst $28
    ld h, [hl]
    rst $18
    or a
    ld l, a
    dec e
    rst $28
    inc a
    rst $28
    rst $28
    rrca
    rst $28
    dec l
    rst $28
    rrca
    rst $28
    dec bc
    cp a
    dec c
    cp a
    ld a, [bc]
    sbc a
    dec c
    sbc a
    adc d
    ld b, b
    rst $38
    ld [hl], c
    adc [hl]
    or l
    ld c, d
    or h
    ld c, e
    nop
    rst $38
    add b
    ld a, a
    add $39
    xor [hl]
    ld d, c
    dec d
    rst $38
    adc b
    ld [hl], a
    ld h, c
    sbc [hl]
    nop
    rst $38
    ldh [rIE], a
    ld a, [de]
    cp a
    nop
    rst $38
    nop
    rst $38
    ld a, [de]
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    nop
    ei
    rlca
    rst $38
    add e
    ld a, h
    add a
    ld a, b
    sub l
    ld a, [$ed01]
    nop
    cp a
    nop
    rst $18
    nop
    sbc a
    db $fc
    inc bc
    cp [hl]
    ld b, c
    inc bc
    ld a, h
    and a
    ld a, a
    ret nc

    cpl
    sub b
    ld l, a
    dec d
    rst $38
    inc e
    db $e3
    inc bc
    db $fd
    and c
    rst $38
    ld a, [bc]
    cp a
    ld e, a
    and d
    ld [bc], a
    db $fd
    ld h, a
    cp h
    ld c, a
    or h
    ld e, $e9
    db $fd
    ld a, [$f4fb]
    ei
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10

Call_046_5ca7:
    cpl
    ld e, a
    nop
    db $fc
    inc bc
    cp $00
    ld a, $c0
    ld e, b
    dec a
    rrca
    nop
    dec h
    nop
    ld d, d
    nop
    daa
    ld e, b
    nop
    dec b
    inc d
    nop
    nop
    nop
    ld b, b
    add b
    jp nz, Jump_000_3d3c

    nop
    ret z

    nop
    cp c
    ld b, b
    sbc e
    ld [hl], h
    ret c

    inc bc
    db $e4
    ld hl, sp-$02
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
    xor a
    rst $38
    ld l, a
    cp a
    rst $28
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, [$7fde]
    cp $7f
    sbc $7f
    rst $38
    ld a, a
    db $fd
    ld a, [hl]
    ld a, [hl]
    db $fd
    rst $18
    cp $fe
    rst $38
    cp $df
    cp $7f
    cp $5d
    sub a
    rst $38
    ld a, b
    cp a
    rst $10
    ccf
    ld e, a
    cp a
    push af
    cp a
    inc [hl]
    rst $18
    ld d, b
    cp a
    sbc b
    ld [hl], a
    ld d, b
    cp a
    jr nc, @+$01

    cp d
    ld d, l
    ld [hl], d
    sbc a
    inc d
    cp e
    ld [hl-], a
    sbc l
    ld [hl], a
    ld a, [de]
    inc de
    ld a, a
    ld [hl-], a

jr_046_5d1d:
    rst $10
    ld [de], a

jr_046_5d1f:
    ld [hl], a
    sub d
    ld a, l
    ld e, e
    or l
    add hl, sp

jr_046_5d25:
    rst $10
    add hl, de

jr_046_5d27:
    db $76
    db $10
    or $98
    rst $20
    pop af
    rst $20
    sbc b
    daa
    and h
    inc de
    sub b
    inc hl
    or b

jr_046_5d35:
    inc hl
    xor d
    dec h
    ld [c], a
    jr nz, jr_046_5d1d

    jr nz, jr_046_5d1f

    ld hl, $a066
    db $fd
    rst $38
    add b
    ld l, [hl]
    jr nz, jr_046_5d25

    jr nz, jr_046_5d27

    db $fd
    rst $38
    ld [hl-], a
    ret


    ld a, $c1
    and a
    ld e, b
    inc d
    rst $38
    nop
    rst $38
    jr nz, jr_046_5d35

    nop
    rst $38
    nop
    rst $38
    xor a
    rst $38
    ld bc, $01ff
    rst $28
    ld [hl], e
    rst $38
    ld c, a
    rst $38
    inc bc
    ei
    inc bc
    rst $38
    ld h, e
    sub a
    rlca
    rst $38
    ei
    rlca
    rst $30
    rlca
    rst $38
    rlca
    rst $28
    rst $38
    rrca
    rst $08
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    rst $18
    ccf
    rra
    rst $38
    cp a
    ld a, a
    cp a

jr_046_5d85:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $18
    ld a, [$7f17]
    and b
    ld l, l
    or $c6
    add hl, sp
    db $ed
    ld e, e
    rst $38
    dec bc
    ei
    ld b, a
    cp a
    jp $9ff7


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
    jp nc, $8b2f

    db $76
    ld c, a
    ld [hl], $06
    ld b, $14
    ld l, [hl]
    inc c
    ld e, $2c
    rrca
    ld c, h
    rrca
    inc e
    rst $18
    sbc b
    ld e, a
    jr jr_046_5dff

    sbc b
    ccf
    jr nc, jr_046_5e03

    jr nc, jr_046_5d85

    jr nc, @+$01

    ld l, b
    ld [hl], a
    ld a, e
    ld h, h
    add sp, $63
    ld h, d
    ret c

    call nc, $c0c0
    add sp, -$30
    ret z

    adc b
    ret nc

    xor h
    add b
    sub b
    add sp, -$02
    ld hl, sp-$42
    rst $38
    call Call_046_5ffe
    ld sp, hl
    adc e
    db $fd
    db $dd
    xor e
    adc l
    ei
    xor l
    res 6, h
    xor l
    add [hl]
    db $ed
    or h
    jp $eda2


    or l
    and $e5

Jump_046_5df7:
    rst $18
    push de
    rst $28
    call $87f7
    push af
    sbc l

jr_046_5dff:
    rst $20
    xor a
    rst $10
    db $f4

jr_046_5e03:
    or a
    or $c5
    push af
    or [hl]
    xor h
    or $92
    rst $30
    or $96
    rst $18
    and d
    sbc [hl]
    or d
    or d
    ld a, [c]
    jp nz, $e2b6

    sub d
    ld a, [c]
    jp c, $fbd2

    db $db
    jp nc, $f3da

    db $d3
    ld [$fbc3], a
    db $e3
    db $db
    ld a, e
    db $eb
    ld c, e
    push af
    db $db
    ld h, l
    ld b, l
    ld [hl], c
    ld d, c
    call $f915
    ld e, l
    jp hl


    ld c, l
    push af
    inc b
    reti


    ld b, a
    call Call_046_4956
    ld b, c
    ld c, [hl]
    ld d, e
    ld c, [hl]
    ld e, [hl]
    rst $38
    ld a, $ff
    jr c, @+$01

    inc a
    rst $38
    ld a, [hl]
    rst $38
    dec a
    cp a
    ld a, [hl]
    rst $38
    cp $7f
    ld a, [hl]
    rst $38
    ei
    rst $38
    cp $ff
    ei
    cp $fb
    cp $ff
    cp $fd
    db $fc
    rst $38
    db $fc
    ei
    db $fc
    db $fd
    cp $fb
    db $fc
    rst $38
    ld hl, sp-$13
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    pop af
    di
    db $e3
    di
    rst $28
    di
    di
    rst $20
    cp $e6
    adc $e6
    sbc $ee
    cp $cc
    db $fc
    call z, $ccbc
    sbc b
    db $fc
    ret c

    cp b
    ret c

    ld hl, sp-$10
    ld hl, sp-$08
    ldh a, [$f1]
    or b
    ld [hl], b
    or b
    ldh [$f0], a
    ldh a, [$e3]
    db $e3
    ldh [$c2], a
    pop hl
    push hl
    jp nz, $c6c1

    ret


    add $c1
    adc [hl]
    push af
    adc a
    pop af
    adc a
    ld a, [c]
    adc a
    ld [hl], a
    adc a
    rla
    ld e, a
    or a
    rrca
    rst $30
    rrca
    rst $18
    rrca
    sbc a
    rrca
    sub l
    rrca
    sub e
    rrca
    sbc a
    rrca
    or a
    inc c
    pop de
    ld c, $f3
    inc c
    rst $30
    inc e
    ld [$0111], sp
    add hl, bc
    ret


    inc de
    ld bc, $439b
    sub e
    ld b, e
    rlca
    rlca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rra
    rrca
    rra
    rra
    rra
    rrca
    ccf
    cpl
    ld e, a
    ld c, a
    ccf
    rst $08
    rst $38
    rst $30
    rst $18
    rst $30
    rst $18
    rst $30
    rst $28
    rst $30
    rst $38
    rst $28
    ld a, a
    rst $28
    rst $30
    ei
    ld a, a
    or $fb
    ld a, a
    ld a, [c]
    db $76
    db $fd
    db $76
    db $ed
    xor $f5
    rst $38
    push af
    ld a, c
    rst $28
    di
    xor l
    pop hl
    cp a
    cp e
    push af
    ld a, d

jr_046_5f03:
    rst $30
    ld a, h
    dec de
    ld d, h
    ccf
    rla
    dec e
    ld d, a
    dec e
    add hl, de
    sbc a
    dec c
    dec de
    cp c
    dec c
    adc l
    ld a, [de]
    sbc [hl]
    add hl, bc
    ld a, [bc]
    rrca
    ld a, [bc]
    ld c, l
    inc c
    adc e
    rrca
    ld [$0a05], sp
    ld c, a
    rst $38
    ld b, $df
    ld b, [hl]
    rst $28
    rst $00
    rst $38
    push bc
    rst $38
    ld [hl], l
    rst $38
    rlca
    rst $30
    rlca
    rst $20
    inc bc
    rst $10
    inc bc
    rst $38
    add e
    rst $38
    add e
    rst $30
    add e
    rst $38
    add e
    or a
    and a
    sbc e
    jp $c68f


    cp a
    ld a, $c7
    ld l, $cf
    ld l, h
    adc a
    db $fc
    rrca
    ld c, h
    rra
    ld e, a
    inc e
    sbc d
    dec e
    add hl, sp
    ld a, [de]
    ld a, [$f239]
    dec a
    ld hl, sp+$30
    ld hl, sp+$36
    ld [hl], b
    or $60
    ld a, c
    db $fc
    ld h, b
    db $f4
    add sp, -$2c
    ld [$caf4], a
    ldh a, [$cc]
    ret c

    and h
    sbc h
    and b
    cp b
    add c
    ret nc

    xor c
    jr nz, jr_046_5f03

    ld [hl], d
    ld bc, $0374
    inc e
    inc bc
    nop
    rra
    add hl, bc
    ld d, $09
    ld b, $01
    ld c, $02
    dec e
    ld [de], a
    dec c
    inc bc
    inc e
    inc b
    dec de
    inc b
    dec de
    inc c
    inc sp
    ld [hl-], a
    dec c
    jr jr_046_5fb7

    nop
    ld a, a
    and c
    ld e, a
    ld d, b
    xor a
    pop bc
    ld a, $e1
    ld e, $c3
    ccf
    add d
    ld a, l
    ld bc, $82fe
    ld a, l
    add a
    ld a, a
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
    rst $38
    ccf
    ld a, a
    cp a
    ccf
    ld a, a
    ld a, a

jr_046_5fb7:
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    rst $10
    ei
    rla
    ei
    dec [hl]
    rst $18
    ld [hl], b
    sbc a
    ld a, [de]
    rst $38
    db $db
    ld l, $59
    ld l, [hl]

Call_046_5ffe:
    ld e, h
    xor e
    rla
    ld l, l
    ld e, h
    and a
    add $35
    add [hl]
    rst $30
    sub $a7
    db $d3
    and a
    jp $8396


    jp nc, $d3e7

    rst $20
    db $db
    db $eb
    push af
    pop hl
    db $dd
    cp c
    db $ed
    ld l, b
    push af
    ld [hl], b
    db $ec
    cp d
    db $e4
    cp h
    ld a, [$f59e]
    jp c, Jump_046_5bf7

    or [hl]
    sub $bb
    sbc c
    and $cd
    ld [$adea], a
    db $ec
    jp z, $ea68

    ld l, a
    xor b
    ld l, b
    xor l
    xor l
    ld h, [hl]
    ld h, $cd
    and [hl]
    db $ed
    push hl
    xor $00
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
    jr jr_046_6073

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_046_6083

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_046_6093

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_046_60a3

    ld [hl-], a

jr_046_6073:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_046_60b3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_046_6083:
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

jr_046_6093:
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

jr_046_60a3:
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

jr_046_60b3:
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

Call_046_60c0:
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
    jr jr_046_6173

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_046_6180

    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ld hl, $2322

jr_046_6173:
    inc h
    dec h
    add hl, de
    add hl, de
    add hl, de
    ld h, $27
    jr z, jr_046_6195

    add hl, de
    add hl, de
    add hl, de
    add hl, de

jr_046_6180:
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $03
    inc bc
    nop
    nop
    nop
    dec b
    dec b
    inc b
    dec b
    dec b

jr_046_6195:
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    ld b, $00
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
    inc bc
    nop
    nop
    nop
    dec b
    dec b
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
    dec b
    inc b
    inc b
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
    ld bc, $0401
    dec b
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
    inc b
    inc b
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    inc b
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $03
    rlca
    ld [bc], a
    nop
    inc b
    inc b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $03
    nop
    nop
    nop
    inc b
    inc b
    inc b
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
    nop
    inc b
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
    dec b
    inc b
    dec b
    inc b
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
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    dec c
    ld [$0d0d], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c
    inc c
    inc c
    dec c
    ld [$080d], sp
    dec c
    ld [$0808], sp
    ld [$0808], sp

Jump_046_629f:
    ld [$0c0d], sp
    dec c
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec c
    dec c
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$03ff], sp
    or h
    ld c, a
    ret z

    ccf
    sub h
    ld a, e
    ld h, b
    rst $38
    jp nz, $93fd

    db $ec
    ld b, d
    cp l
    add b
    ld a, a
    ld bc, $00fe
    rst $38
    ld bc, $03ff
    rst $38
    ld b, $ff
    ld c, a

jr_046_62dd:
    cp [hl]
    sbc a
    ld a, h
    ld l, e
    cp h
    ld c, a
    ldh a, [$af]
    ldh a, [rNR52]
    reti


    or a
    ret z

    ld l, a
    sub b
    rst $18
    jr nz, jr_046_62dd

    ld bc, $ff03
    inc bc
    rst $38
    ld b, $ff
    inc c
    rst $38
    jr @+$01

    or b
    rst $38
    ld [hl], b
    rst $28
    pop bc
    cp $6f

jr_046_6301:
    sub b
    cp a
    ld b, b
    cp $01
    db $fd
    inc bc
    ei
    ld b, $ff
    inc b
    db $fd
    ld a, [bc]
    rst $18
    db $10
    sbc $21
    sbc l
    ld h, d
    ld e, a
    add b
    ld [hl], a
    adc b
    sub $29
    push bc
    dec sp
    xor d
    ld d, a
    db $dd
    ld h, $da
    dec l
    rst $20
    jr jr_046_6301

    inc sp
    ld h, $f9
    push de
    ld [$d52a], a
    ld h, a
    sbc c
    ldh [$1f], a
    ld c, b
    or a
    ld d, d
    xor l
    inc h
    db $db
    ld h, h
    sbc e
    db $fc
    inc bc
    pop bc
    ld a, $80
    ld a, a
    ld h, c
    sbc a
    ld e, a
    and d
    sub a
    ld l, h
    inc hl
    call c, $d92a
    dec a
    jp nc, $b047

    rra
    ldh [$3f], a
    pop bc
    ld a, h
    add e
    ld l, b
    sub a
    db $fd
    ld b, $d0
    rrca
    and l
    ld e, d
    ret z

    scf
    add d
    ld a, l
    adc e
    ld [hl], l
    ld a, $c3
    ld c, l
    or d
    ld d, d
    dec c
    nop
    inc bc
    and d
    nop
    cp e
    inc b
    db $d3
    inc l
    ld bc, $a1fe
    rst $38
    add hl, bc
    rst $38
    db $10
    rlca
    ld bc, $00f3
    rst $38
    nop
    ei
    nop
    db $fc
    ld h, b
    ld hl, sp-$40
    rst $18
    or b
    di
    ld l, h
    db $fc
    ei
    rst $38
    rla
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    add hl, de
    ld b, $31
    rrca
    and $1a
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

jr_046_63a1:
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
    inc hl
    rst $38
    dec b
    rst $38
    ld b, d
    rst $38
    db $10
    rst $38
    rst $38
    rst $38
    sbc b
    rst $38
    ld l, $ff
    jr nz, jr_046_63a1

    ld a, [hl+]
    push de
    db $dd
    ld [hl+], a
    ld e, l
    and e
    ld e, e
    and a
    add h
    ld a, a
    ld [$14ff], sp
    rst $38

jr_046_63d0:
    daa
    ld hl, sp+$57
    ldh [$9f], a
    ldh [$af], a
    ret nz

    rrca
    or b
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    inc bc
    rst $38
    adc $ff
    inc c
    rst $38
    jr @+$01

    or d
    db $fd
    ld h, d
    db $fd
    ld b, c
    rst $38

jr_046_63ee:
    add d
    rst $38
    rst $30
    ld [$21de], sp
    db $ec
    inc de
    cp e
    ld b, $79
    ld b, $fb
    inc c
    rst $30
    jr jr_046_63ee

    jr nc, jr_046_63d0

    ld [hl], b
    dec l
    jp nc, $80fd

    cp $01
    ld a, h
    add e
    ld hl, sp+$07
    ld hl, sp+$07
    ld h, b
    sbc a
    ldh [$1f], a
    ret nz

    ccf
    add c
    ld a, [hl]
    add d
    db $fd
    ld b, b
    cp a
    jp nz, Jump_046_4c3f

    or a
    ret nz

    ccf
    ld bc, $70fe
    sbc a
    and b
    ccf
    add c
    ld a, [hl]
    inc bc
    db $fd
    sub d
    rst $28
    inc bc
    cp $07
    db $fc
    add hl, de
    xor $23
    call c, Call_000_30cf
    sub l
    ld l, d
    cp [hl]
    ld b, c
    ld d, $e9
    call nc, $9da3
    ld b, $f6
    rrca
    ldh [$1f], a
    ret c

    scf
    jr nz, @+$01

    nop
    rst $38
    ld d, $eb
    add h
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    nop
    rst $38
    ld h, c
    cp a
    ld b, e
    rst $38
    inc bc
    rst $38
    add l
    rst $38
    dec c
    rst $38
    ld [hl], d
    rra
    rst $38
    rra
    ld h, a
    ccf
    cp a
    rrca
    inc bc
    rst $28
    dec b
    rra
    add hl, bc
    rlca
    nop
    ld bc, $00f9
    cpl
    ret nz

    cp $01
    inc sp
    rst $08
    ld b, a
    rst $38
    rst $20
    rra
    inc de
    rrca
    rla
    rrca
    rra
    rrca
    cp [hl]
    ld e, $be
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, h
    db $fc
    ret nz

    ld h, b
    ret nz

    ld [hl], b
    add h
    db $fc
    and c
    xor a
    ldh a, [$0a]
    add hl, sp
    sub a
    sub e
    dec l
    and e
    xor a
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
    rrca
    rst $38

jr_046_64ae:
    nop
    rst $38
    ld [$0bff], sp
    rst $38
    db $e4
    rst $38
    cp a
    rst $38
    rra
    rst $38
    dec [hl]
    rst $38
    dec a
    rst $38
    ldh [rIE], a
    ld d, c
    cp [hl]
    and [hl]
    ld a, c
    ld c, l
    ld a, [c]
    sub b
    rst $28
    dec [hl]
    jp z, $806d

    ei
    nop
    inc e
    db $e3
    xor $01
    db $ed
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$107f], sp
    db $db
    jr nz, jr_046_651a

    jp nz, $80ff

    cp $01
    db $dd
    inc bc
    sbc $23
    ld a, b
    add a
    db $f4
    rrca
    jp hl


    ld e, $c7
    jr c, jr_046_64ae

jr_046_64ef:
    ld h, b
    ld e, e

jr_046_64f1:
    ldh [$9f], a
    ldh [$3c], a
    pop bc
    ld a, h
    add e
    ld c, l
    sub d
    ld a, [hl]
    dec b
    ld a, [$f00d]
    rra
    pop hl
    ld a, $c3
    ld a, h
    add [hl]
    ld sp, hl
    dec b
    ei
    ld [bc], a
    rst $38
    inc c
    rst $30
    add hl, de
    rst $28
    jr nc, jr_046_64ef

    ld h, b
    cp a
    pop bc
    ld a, a
    add c
    rst $38
    ld b, e
    cp a
    inc bc
    rst $38

jr_046_651a:
    ld b, $ff
    inc b
    rst $38
    dec bc
    rst $38
    ld [de], a
    rst $38
    ld l, $f3
    ld b, a
    ld sp, hl
    add h
    ei
    jr c, jr_046_64f1

    adc h
    ld [hl], a
    nop
    rst $28
    ldh [$1f], a
    ret nz

    ccf
    add c
    ld a, a
    ld b, [hl]

Jump_046_6535:
    ei
    add b
    rst $38
    inc bc
    db $fc
    dec c
    ld a, [$f40b]
    ld d, h
    xor e
    sbc c
    ld h, a
    inc hl
    rst $18
    and e
    rst $18
    rlca
    rst $38
    ld c, $ff
    rra
    rst $38
    ld e, $ff
    ld a, $ff
    db $fd
    ld a, a
    rst $38
    db $fd
    xor e
    rst $38
    rst $20
    rst $38
    rst $10
    rst $38
    xor $f7
    rst $38
    ld a, a
    rst $08
    rst $38
    cp $ff
    db $fc
    rst $30
    db $fc
    db $dd
    db $fd
    db $fc
    cp $fd
    push de
    db $fd
    rst $30
    db $fd
    ld a, a
    ei
    cp $7b
    ld [hl], b
    ldh a, [$e0]
    ldh a, [$e0]
    ldh [$fb], a
    call nz, $c1c2
    db $ec
    ret nz

    add d
    inc b
    ld [hl], c
    adc a
    sbc $20
    call z, $f021
    db $fd
    inc e
    rst $38
    ld b, b
    rst $28
    ld h, c
    ld a, [hl]
    add sp, $1e
    nop
    add b
    ret nz

    ldh [$88], a
    cp c
    db $10
    rst $38
    ld d, b
    or a
    ld [hl], c
    and b

jr_046_659c:
    cp $e0
    cp $fa
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jp z, $ecff

    rst $38
    xor d
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ld [$f8ff], sp
    rst $38
    ld d, $ff
    sbc d
    ld h, a
    or a
    ld c, h
    ei
    inc c
    ld [hl], a
    sbc b
    rst $00
    jr c, jr_046_65e2

jr_046_65cb:
    add sp, $63
    call c, $dc21
    push af
    dec bc
    or $0b
    cp l
    ld b, [hl]
    sbc e
    ld l, h
    or $19
    rst $08
    jr nc, jr_046_659c

    ld h, b
    rst $18
    ld h, b
    and e
    ret z

jr_046_65e2:
    ld a, [hl]
    add c
    ld a, h
    add d
    dec sp
    add h
    push bc
    jr z, jr_046_665a

    nop
    rst $18
    nop
    sbc $21
    cp $01
    ld a, a
    add c
    rst $38
    inc bc
    db $f4
    adc a
    or h
    rst $08
    jr c, jr_046_65cb

    sbc [hl]
    ld a, a
    db $f4
    ccf
    and l
    ld a, [hl]
    rst $38
    ld a, [hl]
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, [$f27f]
    db $fc
    xor h
    db $fc
    jp hl


    ret c

    call $beba
    rst $18
    or h
    rst $38
    ld a, l
    rst $38
    cp $fe
    cp [hl]
    cp $bd
    ld a, [hl]
    cpl
    rst $38
    ld a, c
    rst $38
    cp $f7
    rst $38
    ld a, [hl]
    rst $38
    inc a
    ld sp, hl
    ld a, $f9
    rra
    rst $38
    ld e, $fd
    ld a, $ff
    inc a
    ei
    inc e
    or $19
    rst $20
    add hl, sp
    or a
    ld a, e
    jp z, $dc77

    rst $20
    ret z

    rst $38
    adc a
    db $fd
    ld a, a
    rst $18
    sbc [hl]
    rst $38
    cp $bf
    ld a, h
    rst $38
    ld a, h
    ei
    ld sp, hl
    rst $38
    db $fd
    ei
    di
    rst $38
    di
    rst $38
    rst $00
    rst $18
    rst $20
    rst $38

jr_046_665a:
    adc a
    rst $38
    ld a, a
    rst $18
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, [hl]
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
    ld a, a
    rra
    rrca
    rrca
    inc bc
    inc bc
    nop
    ld d, b
    add b
    nop
    nop
    nop
    nop
    ld b, b
    add b
    ret nz

    nop
    inc bc
    nop
    rlca
    ld bc, $0707
    rrca
    rlca
    rlca
    dec bc
    ccf
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_046_6696:
    rst $18
    sbc a
    ld a, a
    rst $08
    xor $19
    rst $18
    db $10
    ld a, a
    db $10
    cp a
    ldh [$fc], a
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld c, c
    rst $38
    ld h, c
    rst $38
    ld b, $ff
    dec b
    rst $38
    rlca
    rst $38
    ld e, $ff
    rst $30
    rst $38
    cp $03
    cp h
    rlca
    ld [c], a
    dec e
    db $ec
    ld de, $338c
    call nc, $d82b
    ld h, a
    ret z

    or a
    rst $08
    rst $38
    ld e, l
    rst $38
    cp c
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [$ef]
    ld b, e
    db $fd
    jp $06bf


    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ld [hl-], a
    rst $18
    ld de, $2cff
    di
    ld c, [hl]
    pop af
    add h
    ei
    ld h, [hl]
    ld hl, sp-$08
    rst $38
    pop af
    rst $38
    di
    rst $38
    db $ed
    rst $38
    ld c, a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    jp nz, Jump_000_1925

    and $ce
    cp b
    sbc e
    db $f4
    or c
    ld [$ce51], a
    ld b, [hl]
    sbc h
    jr nz, jr_046_6696

    ldh [rDIV], a
    ret nz

    nop
    add h
    add hl, bc
    sub e
    ld b, d
    ld h, c
    ld d, $75
    ld l, $2c
    ld e, l
    adc a
    inc de
    rlca
    sub b
    adc h
    ld [hl+], a
    ld a, [$3f04]
    add b
    ld a, e
    adc h
    db $eb
    dec d
    ld l, $53
    ld a, [$f427]
    ld c, a
    sbc c
    ld l, [hl]
    adc e
    db $fd
    sbc c
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld [hl], h
    rst $38
    ld e, c
    rst $38
    xor $bf
    dec a
    cp a
    or a
    ld a, a
    dec hl
    rst $38
    ld l, a
    rst $38
    ld e, l
    rst $38
    cp a
    cp $ff
    ei
    rst $30
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $fd
    db $fc
    rst $38
    ei
    cp $7b
    db $fd
    ei
    ld a, l
    cp $fb
    or $ff
    db $fc
    rst $30
    db $fd
    rst $38
    ld hl, sp-$01
    call $f1f8
    jp c, $fde3

    and a
    di
    db $d3
    rst $20
    rst $38
    ld b, a
    ld l, a
    rst $00
    add hl, de
    cpl
    inc de
    ccf
    dec bc
    rla
    rra
    rrca
    ld a, $3e
    db $fc
    db $fc
    pop af
    ld hl, sp-$1d
    pop af
    rst $30
    db $eb
    rst $38
    rst $08
    rst $18
    cp a
    rst $38
    rst $38
    rst $30
    di
    ei
    db $fd
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    db $fc
    adc [hl]
    db $ec
    inc c
    ld a, h
    ld [$fed8], sp
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
    rst $18
    rst $38
    rrca
    rst $38
    or a
    rst $38
    ld l, a
    rst $38
    db $fd
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
    db $fc
    ld bc, $00fe
    cp $80
    ld a, [hl]
    add c
    ld a, [hl]
    add b
    ld a, a
    sbc b
    ld h, a
    ld c, h
    or e
    jp z, $8c35

    ld [hl], e
    ld h, $59
    ld b, [hl]
    cp c
    jp nz, $e63d

    add hl, de
    dec a
    rst $38
    db $fc
    rrca
    ld c, [hl]
    add a
    rst $30
    rst $38
    ld c, [hl]
    cp a
    xor $07
    inc de
    add a
    ld h, $c3
    nop
    inc bc
    add b
    ld b, c
    ret c

    pop hl
    cp d
    pop af
    sbc a
    ldh a, [$cf]
    db $fc
    rst $08
    cp $83
    rst $38
    daa
    ldh a, [$6f]
    ret nz

    rst $28
    ret nz

    sbc c
    add b
    ret nc

    nop
    sub b
    nop
    ldh a, [rP1]
    add sp, $40
    db $e3
    db $10
    or [hl]
    ret nz

    ld c, a
    or b
    ld a, [hl-]
    call nz, Call_046_40ff
    xor a
    ret nc

    ld c, e
    or b
    ld c, l
    or d
    ld [hl], h
    nop
    db $ec
    nop
    add e
    ld c, b
    ld a, a
    add b
    ld c, l
    sub d
    rra
    ld [c], a
    ld l, l
    or [hl]
    db $ed
    ld d, [hl]
    sbc b
    rst $28
    xor d
    db $fd
    sbc e
    ld a, l
    inc sp
    cp $b3
    cp $4f
    db $f4
    rst $10
    db $fc
    db $db
    db $ec
    ei
    db $f4
    cp a
    ld d, c
    ld sp, hl
    daa
    sub $ab
    rst $30
    ld c, h
    rst $28
    ld [hl], h
    db $ed
    ld a, [$ec9b]
    ld a, l
    pop de
    sbc a
    pop af
    cp a
    db $e3
    xor e
    ld d, a
    rst $30
    ld c, a
    push de
    ld c, a
    rst $18
    xor l
    ld e, a
    xor a
    di
    rra
    ld [hl], a
    sbc a
    xor a
    cpl
    ld a, a
    cp a
    db $fd
    ld a, a
    rst $38
    ld [hl], l
    db $fc
    rst $30
    db $ec
    ei
    rst $10
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    db $fd
    cp $fb
    ld hl, sp-$07
    db $e3
    and e
    add a
    ld e, [hl]
    rrca
    inc e
    ccf
    ld sp, hl
    ld a, [hl]
    pop af
    db $fc
    ldh [$f8], a
    rst $28
    ldh a, [$cd]
    ldh a, [$c0]
    db $f4
    add b
    ret c

    add b
    ldh a, [rP1]
    ret nz

    nop
    add c
    nop
    add c
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    adc b
    nop
    add sp, -$80
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub c
    rst $38
    call c, $ffff
    rst $38
    adc $ff
    sbc [hl]
    rst $38
    jp c, $fcff

    inc bc
    db $fd
    ld [bc], a
    rst $38
    nop
    ccf
    ret nz

    add [hl]
    ld a, b
    ld hl, sp+$07
    db $eb
    inc d
    ld [hl], l
    ld a, [bc]
    ld a, h
    add e
    ld h, e
    sbc h
    ld a, h
    add e
    rst $38
    add b
    rst $38
    add b
    sbc a
    ldh [$99], a
    add $c3
    ret nz

    call nz, Call_046_60c0
    ret nz

    sbc $e0
    ld [hl], l
    ldh [$f3], a
    ldh [$66], a
    ldh a, [rOCPD]
    ldh a, [$fd]
    ldh a, [$e0]
    db $10
    ld b, b
    cp b
    dec b
    cp $0b
    rst $38
    pop de
    cp [hl]
    ldh a, [$df]
    call nz, $80bf
    ld a, a
    dec bc
    push af
    ld [hl], l
    adc e
    adc $33
    ret c

    daa
    db $f4
    rlca
    push af
    dec bc
    jp hl


    rlca
    adc d
    rla

jr_046_6910:
    cp d
    rlca
    ld [hl], h
    rrca
    ldh a, [rIF]
    pop hl
    rra
    ret


    scf
    pop hl
    ld e, $c4
    ccf
    and d
    ld e, l
    ld e, d
    nop
    reti


    nop
    rst $28
    db $10
    di
    nop
    and d
    jr nz, jr_046_6910

    nop
    xor a
    ld b, b
    ld l, a
    add b
    rst $28
    add b
    rst $18
    ld bc, $02bd
    sbc a
    ld [hl+], a
    db $dd
    ld h, $ac
    ld e, a
    add hl, hl
    sbc $8e
    ld sp, hl
    ld [hl], c
    db $fd
    pop de
    rst $38
    ld a, [$6cfe]
    rst $38
    ld hl, sp+$7f
    db $fc
    ld e, a
    ld e, c
    cp $f8
    db $fd
    or l
    di
    or l
    ei
    ld h, e
    rst $38
    ld h, a
    ei
    rst $18
    rst $30
    rst $38
    rst $30
    sbc a
    rst $28
    ret


    rst $28
    adc $ff
    rst $38
    rst $18
    sbc [hl]
    ei
    cp a

jr_046_6967:
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    db $fd
    rst $30
    ei
    cp $cf
    ld e, h
    cp [hl]
    cp b
    ld a, [hl]
    ldh a, [$7c]
    call nz, $f9f8
    cp $fb
    db $fc
    ld sp, hl
    db $fc
    ld d, a
    ld hl, sp-$4b
    ld hl, sp-$29
    ld hl, sp-$51
    ldh a, [$ab]
    ld [hl], h
    ld e, e
    db $e4
    ld e, e
    ldh [$bd], a
    ret nz

    adc [hl]
    pop hl
    add hl, bc
    rst $30
    dec d
    db $e3
    inc a
    jp Jump_000_22df


    jr c, jr_046_6967

    ld a, a
    add h
    ld a, [hl-]
    call Call_000_08ff
    rst $30
    ld [$9867], sp
    rst $28
    ldh a, [$fb]
    db $fc
    rst $38
    cp $ff
    rst $38
    ld a, a
    rst $38
    ld a, [de]
    rst $38
    db $ec
    rst $38
    and d
    rst $38
    ei
    rst $38
    and b
    rst $38
    rst $00
    ld hl, sp-$41
    ld e, a
    pop hl
    rra
    db $fc
    inc bc
    rst $38
    nop
    cp $01
    rlca
    ld hl, sp+$47
    cp a
    ld b, b
    cp a
    ldh [$1f], a
    rra
    ldh [$31], a
    sbc $b0
    ld c, a
    db $d3
    inc l
    ei
    inc b
    dec bc
    db $f4
    ldh a, [rIF]
    ccf
    nop
    rra
    nop
    rst $38
    nop
    cp a
    nop
    db $dd
    nop
    rst $38
    nop
    xor c
    ld d, [hl]
    rlca
    nop
    nop
    nop
    nop
    nop
    di
    nop
    ld a, b
    cp a
    rst $38
    ld a, a
    rst $00
    ld a, a
    sub d
    rst $38
    or a
    db $ed
    cpl
    rst $38
    xor $59
    cpl
    reti


    sbc [hl]
    or e
    ld d, a
    or d
    ld sp, hl
    ld h, $83
    inc h
    rst $20
    ld c, b
    ld d, a
    adc c
    cp a
    add c
    ld [c], a
    inc de
    push de
    ld [hl+], a
    sbc $24
    rst $38
    ld b, h
    cp $08
    ld [$ff1d], a
    ld de, $13fd
    rst $18
    inc hl
    cp $05
    db $fd
    ld b, [hl]
    cp [hl]
    rst $00
    ei
    adc a
    ld c, a
    and c
    ld a, d

jr_046_6a33:
    add l
    ld a, [hl]
    add e
    db $fd
    ld [bc], a
    ld a, h
    add a
    db $ed
    rla
    ld sp, hl
    adc a
    ld c, e
    cp a
    db $d3

jr_046_6a41:
    ccf
    ld d, a
    cp a
    ld l, e
    cp a
    ld l, a
    cp a
    cp $7f
    rst $18
    ld a, a
    db $db
    rst $38
    sbc e
    rst $38
    rra
    rst $38
    or [hl]
    rst $38
    ld a, [hl-]
    xor $ee
    cp $c5
    db $fc

jr_046_6a5a:
    db $ec
    db $fc
    sbc c
    db $fc
    ret z

    cp b
    jr jr_046_6a5a

    inc d
    ld [hl], b
    and b
    or b
    and b
    ldh [rNR52], a
    ldh [$e1], a
    ldh [$c1], a
    ret nz

    ret nz

    add b
    db $76
    add c
    db $e3
    add c
    ld [c], a
    ld bc, $02c0
    ret nz

    ld [bc], a
    add h
    nop
    add b
    inc b
    inc b
    nop
    ld [$880a], sp
    inc c
    sub b
    inc d
    sbc b
    jr @-$6c

    jr c, jr_046_6a41

    jr nc, jr_046_6a33

    jr nz, jr_046_6add

    ld h, b
    ld d, e
    db $fc
    add c
    rst $38
    adc a
    ld sp, hl
    add l
    ei
    cpl
    di
    adc e
    rst $30
    ld e, a
    db $e3
    scf
    rst $08
    rlca
    ld bc, $000f
    rrca
    nop
    rrca
    inc bc
    ccf
    ld bc, $001f
    rra
    nop
    ccf
    rrca
    rrca
    ld e, $80
    call nz, $f0fc
    dec l
    cp $e0
    cp a
    inc d
    jp hl


    add a
    ld hl, sp+$0a
    db $f4
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    add c
    ld a, a
    pop hl
    ld e, $d4
    dec hl
    ldh a, [$8f]
    ld h, b
    rst $18
    add hl, sp
    rst $00
    ld e, a
    ldh [rOCPS], a
    push de
    ld a, l
    jp nz, $fc03

    ld sp, hl

jr_046_6add:
    rlca
    cp $01
    cp $01
    sub [hl]
    ld l, c
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    inc bc
    dec e
    ld [c], a
    db $e4
    rra
    ei
    dec b
    inc d
    nop
    rst $20
    db $10
    dec a
    ld [bc], a
    rlca
    nop
    or $01
    rra
    ldh [$a1], a
    cp $c6
    rst $38
    rst $38
    rst $08
    xor e
    adc l
    or e
    sbc a
    ld b, e
    cpl
    push hl
    rra
    sub a
    ld l, [hl]
    rst $28
    ld e, a
    ld e, a
    xor a
    ld e, a
    sbc a
    ld e, a
    cp a
    rst $18
    ccf
    rst $38
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
    cp [hl]
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    ld a, [hl]
    rst $18
    sbc $fe
    sbc e
    db $fd
    inc a
    rst $38
    cp d
    ld a, d
    ld [hl+], a
    cp $24
    db $fc
    ld l, h
    db $fc
    ld a, b
    ld hl, sp-$18
    ld hl, sp-$08
    ldh a, [$d0]
    ldh a, [$f1]
    ldh a, [$a9]
    ldh [$28], a
    ldh [$c2], a
    ld b, b
    ld c, l
    ret nz

    add c
    ret


    xor e
    add c
    ld a, [bc]
    add d
    ld [hl], d
    ld [bc], a
    ld a, c
    ld b, $1c
    add a
    dec l
    ld b, $cf
    ld [$180e], sp
    ld de, $171c
    db $10
    dec hl
    db $10
    ld h, [hl]
    jr nz, jr_046_6ba5

    ld h, b
    ld b, b
    call nz, $c000
    nop
    ld [$0088], sp
    ld bc, $1581
    inc bc
    ld d, l
    inc bc
    ld d, a
    inc bc
    dec c
    inc bc
    dec c
    inc bc
    ld [$1807], sp
    rlca
    add hl, de
    ld b, $06
    rra
    rlca
    ccf
    rlca
    ccf
    rlca
    ld e, a
    inc de
    ld a, a
    rlca
    ld a, a
    inc bc
    rst $38
    inc hl
    rst $38
    ld h, a
    inc bc
    db $d3
    ld h, a
    ld a, a
    pop hl
    ei
    ld [hl], l
    inc sp
    ld a, l
    rla
    ld [hl-], a
    ld d, $8b
    ld b, a
    sbc d
    db $ed
    sub $5d
    ld h, [hl]
    ld d, a

jr_046_6ba5:
    add hl, hl
    ld a, [hl-]
    dec c
    cp e
    ld c, h
    ld [hl], e
    inc e
    inc sp
    ld e, h
    ld l, e
    sub h
    ccf
    push bc
    rst $30
    dec c
    or [hl]
    add hl, hl
    xor l
    ld d, d
    ld d, a
    ld l, d
    ld a, l
    ld c, d
    cpl
    ld d, h
    ld [hl], l
    add [hl]
    rrca
    ld hl, sp+$0d
    ld a, [$f80f]
    add a
    ld hl, sp-$01
    ld hl, sp-$32
    cp a
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    jp nz, $93ff

    ld a, a
    ld h, c
    sbc a
    ld bc, $69fe
    sub [hl]
    ccf
    ret nz

    jr c, @+$01

    db $e3
    rra
    add b
    ld a, a
    nop
    rst $38
    ld [bc], a
    db $fd
    inc e
    rst $38
    ld d, b
    cp a
    ld h, c
    sbc [hl]
    ret nz

    rst $38
    inc e
    rst $38
    ld bc, $01ff
    rst $38
    ret nz

    rst $38
    ld e, $ff
    rlca
    rst $38
    dec b
    rst $38
    push hl
    rst $38
    jp z, $fcfd

    rst $38
    db $fc
    rst $38
    ld a, [$7dff]
    rst $38
    ld sp, hl
    rst $38
    db $db
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $38
    rst $30
    rst $28
    rst $38
    rst $28
    rst $18
    rst $18
    rst $18
    or a
    rst $18
    cp a
    rst $38
    xor a
    rst $38
    rst $38
    ld a, [hl]
    ld e, a
    ei
    dec hl
    rst $18
    cp d
    add a
    rra
    and h
    dec [hl]
    ld c, h
    dec e
    ld l, h
    ld c, d
    ld de, $0912
    ld a, [de]
    ld bc, $100f
    inc l
    db $10
    ld l, b
    nop
    adc b
    jr nz, @+$32

Call_046_6c3f:
    nop
    dec b
    ld [hl], b
    db $f4
    ld hl, $63d1
    pop bc
    db $d3
    sub e
    jp $8355


    daa
    dec b
    inc hl
    dec b
    add c
    ld c, a
    dec bc
    adc l
    sbc l
    dec bc
    rrca
    dec e
    dec e
    dec de
    ld e, $35
    db $10
    cp a
    inc [hl]
    adc a
    dec e
    ld d, a
    cpl
    ld d, l
    sbc h
    ld b, a
    rrca
    inc de
    rla
    dec bc
    xor e
    add a
    add [hl]
    rst $08
    sub $8f
    add $df
    call $fddf
    sbc $ff
    sbc $df
    cp $ff
    ld a, [$fea9]
    sbc c
    cp $72
    db $dd
    ei
    ld d, l
    db $eb
    or l
    and $b9
    ld e, l
    ld [$7ac3], a
    ld l, c
    rst $30
    sbc [hl]
    push af
    xor c
    db $f4
    ret


    rst $38
    cp [hl]
    db $eb
    xor e
    cp $95
    cp $b1
    ld e, [hl]
    rst $38
    ld e, c
    rst $20
    cp l
    cp e
    or l
    inc hl
    cp h
    sbc $62
    sub $6b
    sbc l
    ld h, d
    ld a, e
    and h
    ei
    add h
    ld l, a
    sub b
    rst $38
    ld [$887f], sp
    cp a
    ld b, b
    cp $10
    sbc $10
    ld a, [c]
    ld [$00ff], sp
    ld sp, hl
    ld hl, $fd7e
    ld h, e
    sbc a
    db $fd
    ld [bc], a
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
    ld a, a
    add b
    or $f9
    cpl
    rst $38
    rst $30
    ld [$01ff], sp
    ccf
    pop bc
    cpl
    pop de
    pop hl
    rra
    ld sp, hl
    rlca
    rst $28
    ld de, $01ff
    ld l, a
    add c
    add a
    ld a, c
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $18
    ld hl, $0779
    rla
    ld bc, $01ff
    ccf
    pop bc
    and $1b
    rst $38
    inc bc
    rst $38
    inc bc
    ld e, $e3
    ld b, d
    cp a
    cp d
    ld b, a
    rra
    ld [c], a
    rlca
    ld a, [$fefb]
    rst $38
    db $fc
    db $fd
    cp $fd
    cp $fe
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ei
    rst $38
    or $ff
    or d
    rst $30
    xor d
    rst $30
    db $ec
    rst $30
    call $e474
    rst $18
    cp b
    rst $08
    db $db
    ld sp, hl
    sub e
    push af
    ld d, c
    ld [hl], a
    di
    ld a, a
    sbc [hl]
    ld l, e
    xor $9f
    rra
    xor $e5
    ld a, $6f
    ld a, [hl]
    ld l, c
    ld a, [hl]
    ld a, l
    ld a, a
    xor l
    ld a, e
    ld e, a
    cp c
    cp e
    push hl
    or a
    ld l, d
    ld l, e
    or h
    ld l, e
    cp h
    ld [hl], a
    xor b
    ld l, a
    or b
    dec l
    ld a, [c]
    cpl
    ldh a, [rVBK]
    ldh a, [$7b]
    push de
    sbc a
    push af
    db $dd
    and e
    or a
    add sp, $5f
    and d
    ld h, l
    sbc d
    cp [hl]
    rst $00
    cp h
    rst $00
    sbc $a7
    ld hl, sp-$71
    db $fc
    dec bc
    db $fd
    ld a, [bc]
    or e
    ld e, l
    ld a, a
    sbc c
    dec hl
    db $dd
    or $bf
    ld a, d
    cp a
    rst $30
    ld a, [hl-]
    db $d3
    ld a, [hl]
    sub $6d
    adc $75
    sub a
    ld l, h
    db $ed
    cp d
    cp a
    add sp, $5b
    xor h
    db $db
    db $f4
    cp e
    call nc, $b1ef
    ccf
    pop hl
    ld a, e
    and l
    ld a, [$fe05]
    inc bc
    sub $4b
    rst $18
    ld b, [hl]
    call c, $d447
    rst $00
    cp h
    rst $00
    ld l, l
    add a
    db $ed
    rrca
    ld l, a
    rrca
    rst $38
    ld [$10df], sp
    rst $18
    inc d
    ccf
    db $10
    dec de
    dec [hl]
    cp e
    dec [hl]
    cpl
    ld [hl-], a
    db $db
    ld [hl], $6f
    ld d, d
    ld l, a
    ld d, d
    rst $28
    ld d, h
    rst $38
    ld b, h
    rst $38
    add h
    ld a, [hl]
    add l
    rst $38
    ld [$0cfb], sp
    pop de
    cp $c1
    cp $d1
    cp $91
    cp $d3
    db $fc
    or d
    db $fd
    and d
    db $fd
    and d
    db $fd
    ld [c], a
    cp l
    sub d

jr_046_6dd3:
    db $fd
    ld [hl-], a
    db $fd
    ld hl, $21fe
    cp $a4
    ei
    xor b
    rst $30
    or b
    rst $28
    add b
    rst $38
    ld d, b
    xor a
    jr nz, @+$01

    ld b, b
    cp a
    ld b, b
    cp a
    nop

jr_046_6deb:
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    jr nz, jr_046_6dd3

    nop
    rst $38
    jr nz, @-$1f

    ld d, b
    xor a
    jr jr_046_6deb

    add b
    ld a, a
    add b
    ld a, [hl]
    ld bc, $00fe
    rst $38
    add e
    ld a, h
    jp $c13c


    ld a, $e0
    rra
    ld hl, $cbdf
    or a
    sub e
    rst $38
    dec bc
    rst $38
    xor e
    ld a, a
    rrca
    cp a
    rlca
    rst $38
    rst $18
    ld a, a
    ld e, a
    ld a, a
    rst $08
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ccf
    rst $18
    dec de
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    rst $30
    ld a, a
    ld a, e
    rst $38
    ld a, c
    rst $28
    db $db
    rst $28
    cp a
    pop de
    rst $38
    pop de
    rst $38
    db $d3
    ld a, $d3
    cp $e3
    cp $23
    cp $01
    rst $38
    inc b
    db $fd
    ld b, [hl]
    db $fd
    ld b, $78
    adc a
    jp c, $ddaf

    cp a
    ld e, a
    cp l
    ld a, l
    sbc a
    ei
    ld a, a
    ld [hl], $fb
    ld l, a
    cp d
    or [hl]
    rst $38
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    cp e
    rst $38
    xor d
    rst $38
    ld l, [hl]
    cp a
    or a
    ld a, a
    cp a
    ld e, a
    cp e
    ld e, a
    or e
    ld a, a
    db $eb
    ld a, a
    ld l, [hl]
    cp a
    rst $38
    ld a, a
    sub $7f
    ld c, [hl]
    rst $30
    call nz, $a57f
    rst $38
    db $fd
    rst $28
    sbc $ef
    cp c
    xor $3f
    jp c, $db3e

    ld d, [hl]
    cp a
    ld e, a
    or a
    db $db
    ld [hl], a
    cp a
    ld [hl], l
    db $ed
    or a
    or a
    ld l, a
    ld a, a
    xor a
    rst $18
    ld a, e
    rst $38
    ld e, e
    ei
    ld e, a
    cp [hl]
    db $fd
    db $dd
    or a
    rst $10
    rst $38
    ld a, a
    cp a
    cp e
    ld e, a
    db $eb
    ld e, a
    db $ed
    ld d, e
    reti


    scf
    db $fd
    ld [hl-], a
    cp [hl]
    ld e, [hl]
    ld e, a
    rst $28
    cpl
    pop hl
    rst $38
    ld hl, $21ff
    ld a, [$ff25]
    ld b, b
    rst $38
    ld b, d
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$02
    db $fd
    rrca
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rTIMA]
    ldh [rP1], a
    ldh [$0d], a
    ldh a, [$1f]
    ldh [rNR13], a
    add sp, $3f
    ret nz

    ccf
    ret nz

    ld a, $c0
    inc bc
    db $fc
    ld a, $c1
    rra
    ldh [$3f], a
    add b
    ld a, a
    add b
    ld b, e
    cp h
    ld l, b
    sub a
    ld [hl], l
    adc d
    db $10
    rst $38
    db $e3
    rst $38
    ld e, $ff
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop hl
    cp $4e
    rst $38
    or a
    ld c, b
    ld [hl], a
    adc b
    add e
    ld a, h
    ldh a, [rIF]
    cp [hl]
    ld b, c
    ld a, a
    add b
    adc a
    ldh a, [$f8]
    rst $38
    rst $38
    db $fc
    rst $38
    cp $7b
    cp $7a
    rst $38
    db $fd
    rst $38
    ei
    db $fd
    rst $30
    db $fd
    ld sp, hl
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $30
    rst $28
    rst $30
    rst $28
    rst $38
    xor e
    rst $28
    xor a
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    ccf
    rst $18
    rst $38
    ld e, a
    ld b, a
    rst $38
    ld l, e
    cp a
    rst $30
    xor a
    rlca
    rst $38
    push af
    ld e, a
    cp $57
    adc [hl]
    ld a, a
    call z, $b9bf
    xor $bb
    db $fd
    dec e
    rst $38
    ccf
    db $dd
    ld e, l
    rst $38
    ld l, a
    rst $38
    db $eb
    cp $f6
    rst $38
    di
    rst $38
    and $ff
    ld [hl], l
    rst $38
    ld e, a
    rst $20
    db $ec
    rst $30
    xor a
    cp $ed
    cp $fd
    cp $bb
    sbc $db
    cp $7b
    db $fc
    rst $38
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    rst $38
    xor $fb
    rst $38
    ld [$facf], a
    jp c, Jump_046_5df7

    or $bd
    or $bf
    db $e4
    sbc a
    db $e4
    or h
    rst $28
    ei
    xor h
    cp a
    add sp, $57
    add sp, -$01
    ret c

    or $d8
    cp [hl]
    ret nc

    cp e
    call nc, $f4bb
    ld l, a
    cp c
    rst $38
    ld hl, $a1bd
    or a
    and b
    ld a, [hl]
    add c
    ld a, [$fb43]
    ld b, d
    or $43
    db $d3
    ld b, a
    sub a
    ld b, e
    db $e3
    add h
    and a
    add b
    xor $91
    rst $30
    ld [$886f], sp
    dec hl
    adc b
    rst $28
    nop
    ld l, a
    nop
    ld [hl], a
    nop
    inc d
    db $eb
    dec [hl]
    jp z, $c738

    dec e
    ld [c], a
    rra
    ldh [$c2], a
    db $fd
    adc l
    ld a, a
    ld e, l
    and d
    ld sp, hl
    ld b, $f3
    inc c
    rst $38
    nop
    adc $f1
    inc a
    rst $38
    ld h, e
    sbc a
    ld [bc], a
    db $fd
    ld c, d
    or l
    ld h, h
    sbc e
    sbc a
    ldh [$31], a
    cp $81
    rst $38
    ld b, b
    rst $38
    ld de, $81ff
    rst $38
    ld a, l
    cp $53
    rst $38
    pop af
    rst $38
    ld sp, $d1ff
    rst $38
    ld a, [hl]
    rst $38
    rlca
    rst $38
    nop
    rst $38
    inc d
    rst $38
    ldh [rIE], a
    inc b
    rst $38
    ld hl, $bcfe
    rst $38
    cp b
    rst $38
    inc e
    rst $38
    ld bc, $c0ff
    rst $38
    ccf
    ldh [$f9], a
    cp $ff
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
    xor $fd
    rst $18
    rst $38
    rst $38
    rst $38
    db $ec
    rst $38
    db $fc
    ei
    jp z, $ddfd

    ld sp, hl
    pop af
    rst $38
    db $d3
    db $fd
    pop de
    ei
    or $fb
    ld [$eaff], a
    cp $e6
    rst $38
    sub $ff
    db $fd
    rst $18
    add $ff
    or h
    rst $38
    and h
    rst $38
    xor d
    db $fd
    db $ed
    sbc d
    db $dd
    xor d
    rst $20
    sbc d
    push af
    dec de
    ei
    dec d
    ei
    dec d
    jp hl


    rla
    rst $08
    inc sp
    rst $28
    inc sp
    rst $28
    inc sp
    sub [hl]
    ld l, e
    or $2f
    xor [hl]
    ld e, a
    call c, $557f
    rst $38
    db $f4
    ld a, a
    cp h
    rst $38
    rst $38
    cp $ed
    cp $f8
    rst $38
    ld a, l
    adc [hl]
    cp d
    ld c, a
    ei
    rra
    di
    rra
    rst $38
    dec de
    ei
    rra
    ld a, [$7e1f]
    scf
    rst $30
    ccf
    xor $37
    or $3f
    sub [hl]
    ld a, a
    ld e, [hl]
    ld l, a
    sbc $6f
    sbc $7f
    rst $18
    ld a, a
    ccf
    rst $10
    sub l
    rst $38
    db $fd
    cp a
    db $fc
    cp a
    ld l, [hl]
    rst $38
    ld a, c
    rst $28
    ld sp, hl
    rst $28
    db $e3
    cp $fb
    rst $10
    rst $38
    rst $18
    ld e, a
    rst $18
    cp a
    rst $18
    cp a
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, $ff
    ld a, $fd
    dec a
    ld a, l
    ld a, l
    rst $38
    ld a, e
    ld a, e
    ld a, e
    ei
    ld [hl], a
    rst $30
    ld [hl], a
    pop de
    cpl
    ld l, a
    db $10
    ld hl, sp+$00
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    swap h
    db $e3
    rra
    ldh a, [rIF]
    ret z

    scf
    add a
    ld a, b
    ld [hl], c
    adc [hl]
    ret nz

    rst $38
    ld a, $ff
    add e
    rst $38
    cp a
    nop
    db $ec
    nop
    ld a, $00
    inc hl
    ret nz

    inc bc
    db $fc
    add hl, hl
    rst $10
    ld [$fff7], sp
    ld [bc], a
    db $fd
    add d
    add e
    ld a, h
    add sp, $07
    sbc [hl]
    nop
    cp $00
    cp $00
    rst $20
    jr @-$02

    inc bc
    ld b, b
    rst $38
    db $10
    rst $38
    ld [c], a
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    jp hl


    rst $38
    ld a, $ff
    db $f4
    dec bc
    inc bc
    db $fc
    db $10
    rst $28
    ld [c], a
    db $fd
    cp h
    rst $30
    sbc $ff
    rst $00
    rst $38
    ret z

    rst $38
    ret


    sbc $c8
    xor a
    add c
    rst $38
    add c
    xor a
    sub e
    db $dd
    or l
    sub a
    inc de
    ld e, a
    inc sp
    dec e
    daa
    ei
    inc hl
    rst $38
    inc sp
    rst $38
    ld h, a
    dec sp
    daa
    ei
    ld h, e
    rst $38
    ld l, e
    rst $30
    ld h, a
    ld [hl], a
    rst $28
    rst $30
    rst $28
    rst $30
    rst $38
    adc $df
    xor $be
    rst $28
    sbc [hl]
    rst $28
    db $ed
    cp a
    rst $18
    cp l
    db $fd
    sbc a
    rst $38
    sbc a
    rst $30
    sbc c
    xor e
    push de
    cp d
    push bc
    ld [hl], a
    jp z, Jump_046_629f

    ld c, a
    cp d
    or a
    jp z, $9b66

    add sp, $57
    push af
    ld e, [hl]
    ld l, l
    sub $5e
    and l
    call c, Call_046_5ca7
    and a
    sub h
    ld l, a
    db $dd
    xor a
    add hl, de
    rst $28
    ld e, a
    xor a
    inc [hl]
    rst $08
    ld [$701d], a
    sbc a
    ld [hl], c
    sbc a
    ld e, e
    cp l
    add hl, sp
    rst $18
    db $db
    cp a
    rst $38
    cp a
    ld l, $bf
    ld [hl], $bf
    di
    ld a, $72
    cp a
    rst $30
    ld a, $9b
    ld a, [hl]
    rst $10
    ld a, [hl]
    db $f4
    ld a, a
    rst $18
    ld a, h
    db $f4
    ld a, a
    ld a, [hl]
    push af
    cp $f5
    cp $fd
    rst $08
    rst $38
    push de
    rst $28
    db $d3
    rst $28
    reti


    rst $28
    ret


    cp $e8
    rst $18
    xor c

Call_046_71af:
    sbc $84
    ei
    and c
    sbc $c4
    cp e
    push bc
    cp d
    ld d, h
    xor e
    adc [hl]
    ld [hl], c
    adc h
    ld [hl], e
    add h
    ld a, e
    add a
    ld hl, sp+$00
    rst $38
    ld a, h
    inc bc
    ld d, e
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    inc [hl]
    nop
    stop
    sbc l
    ld [c], a
    dec [hl]
    cp $ea
    rla
    cp $01
    ld d, a
    xor b
    add b
    ld a, a
    ld bc, $e0fe
    rst $38
    call nz, $f43f
    dec bc
    ccf
    nop
    db $eb
    nop
    ld a, a
    nop
    ei
    nop
    ld l, a
    db $10
    add $01
    inc bc
    db $fc
    nop
    rst $38
    db $10
    rst $28
    ld a, [hl-]
    rst $38
    adc a
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    jr z, @+$01

    inc bc
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    db $e4
    rst $38
    inc c
    rst $38
    ld b, l
    rst $38
    ld d, c
    rst $38
    ld e, a
    and b
    add l
    ld a, d
    ret nz

    ccf
    xor h
    ld d, e
    ld [$c0f7], sp
    rst $38
    ld [$ffff], a
    rst $38
    db $fd
    rst $38
    rst $38
    cp a
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
    sbc a
    rst $18
    cp a
    rst $18
    cp a
    cp $9f
    rst $38
    ld e, $fb
    ld e, $d3
    ccf
    or d
    ld e, l
    jp hl


    rla
    sub $3b
    ld [hl], d
    cp a
    db $eb
    ccf
    ld l, e
    cp a
    ld a, d
    cp a
    ei
    ld a, $d6
    cp a
    add $ff
    push af
    ld a, a
    rst $28
    ld [hl], a
    ld b, l
    rst $38
    push hl
    rst $38
    db $fd
    rst $28
    rst $38
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    rst $28
    cp e
    ld a, [$beef]
    db $eb
    xor [hl]
    ld a, a
    ld e, d
    xor a
    cp d
    ld e, a
    sbc e
    ld a, l
    jr nc, @+$01

    or a
    ld a, l
    cp a
    ld d, a
    or a
    ld a, a
    ld a, a
    cp a
    sbc c
    ld a, a
    ld sp, hl
    cpl
    dec a
    rst $28
    ld a, l
    xor a
    db $eb

jr_046_729b:
    ccf
    cp e
    ld a, a
    or a
    ld a, a
    ld a, [c]
    ld l, a
    ld [hl], d
    rst $38
    inc sp
    rst $38
    cp [hl]
    rst $18
    ld b, e
    cp a
    ld a, d
    add l
    ld e, a
    and b
    dec bc
    db $f4
    adc d
    ld [hl], a
    rla
    rst $28
    cpl
    rst $10
    inc h
    rst $18
    inc h
    rst $18
    inc h
    rst $18
    inc l
    rst $18
    add hl, sp
    rst $08
    nop

jr_046_72c1:
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $18
    rst $38
    ld b, e
    cp a
    jr nc, jr_046_729b

    sbc b
    ld h, a
    ret nz

    ccf
    db $fd
    inc bc
    rst $38
    nop
    add d
    db $fd
    add hl, hl
    rst $38
    sub e
    ld l, a
    ldh [$1f], a
    ret nz

    ccf
    ld b, b
    cp a
    jr nz, jr_046_72c1

    ldh a, [rIE]
    rrca
    rst $38
    ld bc, $08ff
    rst $30
    nop
    rst $38
    ld [hl], b
    xor a
    ret


    rst $30
    srl a
    and d
    ld e, a
    ret


    ld [hl], $f3
    inc c
    ccf
    ret nz

    ld [hl], b
    rst $38
    rla
    rst $38
    ld [$80f7], sp
    ld a, a
    add b
    rst $38
    ld h, b
    rst $38
    dec hl
    rst $18
    ld [$02f7], sp
    db $fd
    pop bc
    cp $1c
    rst $38
    sbc [hl]
    ld hl, $03fc
    dec a
    rst $00
    sbc a
    ld a, a
    call c, Call_046_7e3f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fb
    db $fc
    db $f4
    ld hl, sp-$01
    ldh a, [$f6]
    ld hl, sp-$04
    ldh [$dc], a
    ldh [$fc], a
    db $e3
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    db $fc
    ei
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f5
    ld a, [$f0cd]
    xor $f0
    adc $f0
    ld hl, sp-$40
    sbc b
    ldh [$f8], a
    ret nz

    rrca
    ldh a, [rNR41]
    rst $18
    cp l
    ld b, e
    inc bc
    rst $38
    rst $10
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    ld a, e
    rst $38
    di
    rst $38
    xor e
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    ei
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
    rst $30
    rst $38
    rst $38
    ld h, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    cp a
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
    ld a, a
    rst $38
    rra
    rst $38
    db $e3
    rra
    ldh a, [$8f]
    adc l

jr_046_73b3:
    di
    rst $00
    ld hl, sp-$28
    rst $38
    ret nc

    rst $38
    ret


    ld a, [hl]
    and [hl]
    rst $08
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    ld a, a
    rst $38
    inc de
    rst $38
    ld bc, $08ff
    rst $38
    jr nz, jr_046_73b3

    ld [$36f7], sp
    ret


    ld [c], a
    db $fd
    ld e, $ff
    ld de, $27ff
    ld hl, sp+$5f
    ldh [$7f], a
    ret nz

    ccf
    ret nz

    rst $28
    ldh a, [$0e]
    rst $38
    ld b, e
    rst $38
    ld b, b
    cp a
    ld [$b0f7], sp
    rst $38
    db $f4
    rst $38
    cp a
    ld a, a
    ld bc, $80ff
    ld a, a
    nop
    rst $38
    ld [hl], b
    rst $08
    db $76
    ld sp, hl
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    ld bc, $03fd
    rst $28
    inc de
    rst $30
    rlca
    rst $38
    rlca
    cp $0f
    db $fc
    rra
    call c, $d03f
    rst $38
    rst $38
    db $fc
    ld a, h
    rst $38
    ld b, l
    cp a
    db $ed
    db $d3
    ei
    rst $38
    ld de, $9dff
    inc bc
    ld h, e
    inc bc
    rlca
    inc bc
    dec bc
    rlca
    rrca
    rlca
    rrca
    rrca
    cp a
    ld c, a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    db $fd
    and a
    ld e, l
    or l
    set 6, a
    ei
    rst $38
    rst $38
    rst $00
    dec sp
    sbc e
    inc bc
    ld l, e
    rlca
    rra
    rlca
    rla
    rrca
    cp a
    rrca
    ld a, a
    rra
    cp a
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
    ccf
    rst $38
    ld b, a
    cp a
    rst $20
    ccf
    rst $28
    rst $38
    rst $18
    ld a, a
    rst $28
    ld a, a
    ld a, a
    rst $28
    ld e, a
    and b
    inc e
    db $e3
    cp d
    ld b, l
    inc sp
    call z, $8ef1
    ld bc, $80fe
    ld a, a
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, b
    and a
    inc bc
    db $fc
    ldh a, [rIE]
    ld e, a
    cp a
    inc hl
    nop
    nop
    nop
    inc b
    nop
    ld b, $00
    ret nz

    nop
    ld c, $f0
    or b
    rrca
    cp a
    ld b, c
    dec a
    inc bc
    db $eb
    rla
    rst $38
    rlca
    rrca
    rst $38
    rst $18
    ccf
    db $fd
    rra
    cp $3f
    cp l
    ld a, a
    db $fd
    ld a, d
    ld a, [$eaff]
    rst $30
    pop bc
    rst $38
    db $d3
    rst $28
    and a
    ld e, a
    rst $28
    rra
    ld e, a
    cp a
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
    db $fc
    inc bc
    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, jr_046_7518

    ret nz

    rra
    ldh [$3b], a
    call nz, $fc63
    ld b, [hl]
    cp a
    ldh a, [rIF]
    ld a, h
    inc bc
    rst $38
    ld bc, $0bf5
    inc sp
    rrca
    ld l, a
    rlca
    rst $20
    rrca
    xor a
    ld a, a
    ccf
    rra
    dec e
    ccf
    ld a, b
    ccf
    ld a, l
    ld a, a
    db $fd
    ld a, a
    ld [c], a
    rst $38
    push bc
    rst $38
    add $ff
    adc a
    rst $38
    rla
    rst $38
    cpl
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    sbc a
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

jr_046_7518:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jr jr_046_7583

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_046_7593

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_046_75a3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_046_75b3

    ld [hl-], a

jr_046_7583:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_046_75c3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_046_7593:
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

jr_046_75a3:
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

jr_046_75b3:
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

jr_046_75c3:
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
    jr jr_046_7684

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_046_7694

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_046_76a4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_046_76b4

    ld [hl-], a

jr_046_7684:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_046_76c4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $05
    inc b
    inc b
    inc b

jr_046_7694:
    dec b
    dec b
    inc b
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    inc b
    dec b
    dec b
    dec b
    inc b
    inc b
    dec b

jr_046_76a4:
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    inc b
    inc b

jr_046_76b4:
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    inc b
    nop
    dec b

jr_046_76c4:
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    dec b
    nop
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    inc b
    dec b
    inc b
    dec b
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
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    dec b
    dec b
    dec b
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
    inc b
    inc b
    dec b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $00
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
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
    nop
    nop
    nop
    nop
    ld b, $00
    inc bc
    inc bc
    nop
    dec b
    dec b
    nop
    nop
    nop
    inc b
    dec b
    ld b, $00
    ld b, $00
    nop
    ld [bc], a
    inc bc
    nop
    dec b
    dec b
    dec b
    nop
    nop
    nop
    inc b
    dec b
    inc bc
    ld b, $03
    nop
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    dec b
    dec b
    nop
    nop
    nop
    inc b
    dec b
    nop
    ld bc, $0601
    nop
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    dec b
    inc b
    ld bc, $0505
    dec b
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
    dec b
    dec b
    inc b
    dec b
    inc b
    inc b
    nop
    ld bc, $0505
    dec b
    nop
    nop
    nop
    nop
    nop
    ld b, $0b
    ld c, $0c
    inc c
    inc c
    add hl, bc
    add hl, bc
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$090e], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$3c08], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ret nz

    rst $38
    ld [$10f7], sp
    rst $28
    nop
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp c
    rst $38
    add e
    rst $38
    and a
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    db $fd
    rst $38
    db $fd
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    dec bc
    db $f4
    ld a, a
    add b
    rst $08
    nop
    adc [hl]
    ld bc, $0798
    di
    rrca
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
    add c
    cp $14
    db $eb
    add h
    ld a, e
    inc h
    db $db
    ld [hl], b
    adc a
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
    ccf
    rst $38
    ld a, a
    rst $38
    ld h, [hl]
    sbc a
    ld b, $ff
    inc b
    rst $38
    ld bc, $02ff
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    nop
    rst $38
    ld c, $f1
    nop
    rst $38
    ld b, [hl]
    cp c
    ld h, b
    sbc a
    or e
    ld c, a
    rst $08
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    cp $e8
    rst $30
    rla
    add sp, -$16
    dec d
    ld [c], a
    dec e
    jp z, $813f

    ld a, [hl]
    call c, Call_000_3cff
    rst $38
    jr nz, @+$01

    dec de
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    add sp, -$01
    jp $fbff


    inc b
    ldh a, [rIF]
    dec b
    cp $18
    db $e4
    inc a
    ret nz

    ld c, a
    nop
    ld [hl], a
    dec bc
    rst $28
    rra
    cp a
    ld a, a
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    nop
    rst $38
    ld bc, $03fe
    db $fc
    ld [$eff7], sp
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
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    ld c, $ff
    dec sp
    db $fc
    ld a, a
    ldh a, [$de]
    pop hl
    ld hl, sp-$79
    ld sp, hl
    ld b, $fa
    dec b
    and d
    ld e, l
    db $ec
    inc de
    ld hl, sp+$07
    or h
    ld c, e
    add b
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $09
    or $0d
    ld a, [c]
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld sp, hl
    rst $38
    sbc b
    rst $38
    add hl, bc
    rst $38
    dec bc
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ld h, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    ld a, a
    db $10
    rst $38
    jr nz, @+$01

    ld bc, $1dfe
    ld [c], a
    rla
    ldh [$7c], a
    add b
    ldh a, [rP1]
    ld e, a
    nop
    ld sp, hl
    ld [bc], a
    db $76
    add hl, bc
    and c
    ld e, a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    cp $c7
    ld hl, sp+$0f
    ldh a, [rTIMA]
    ld a, [$f20d]
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld [bc], a

jr_046_792f:
    db $fd
    nop
    rst $38
    ld [$0cf7], sp
    di
    db $10
    rst $28
    and b
    ld e, a
    add b
    ld a, a
    db $10
    rst $38
    jr nz, @+$01

    ld [$09ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc d
    ld a, l
    nop
    rst $38
    jr nz, jr_046_792f

    rrca
    ldh a, [rP1]
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    cp $c0
    rst $38
    sbc l
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$80ff], a
    rst $38
    rlca
    rst $38
    ld a, b
    add a
    ldh a, [rIF]
    db $e3
    inc e
    ld [hl], e
    adc h
    ld a, d
    add l
    xor c

jr_046_797b:
    ld d, [hl]
    ld [hl-], a
    rst $08
    ld b, a
    cp h
    ld h, c

jr_046_7981:
    ldh a, [$61]
    add b
    add hl, de
    rlca
    rla
    rrca
    ld e, a
    ccf
    ld a, l
    cp $fb
    db $fc
    rst $20
    ld hl, sp-$22
    pop hl
    jr jr_046_797b

    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    add b
    ld a, a
    inc b
    ei
    add hl, de
    and $01
    cp $03
    db $fc
    ld h, a
    sbc b
    db $10
    rst $28
    jr z, jr_046_7981

    pop bc
    ccf
    add a
    ld a, a
    ld e, $ff
    inc a
    cp $f7
    ld hl, sp-$22
    pop hl
    or a
    ret z

    rst $28
    db $10
    db $fc
    inc bc
    ld a, c
    add [hl]
    db $fc
    inc bc
    ld e, h
    and e
    dec d
    ld [$f807], a
    add d
    ld a, l
    nop
    rst $38
    dec [hl]
    res 4, a
    ld e, a
    rst $08
    ccf
    rst $38
    rst $38
    ld hl, sp-$01
    rrca
    ldh a, [$7b]
    add b
    ld a, l
    add d
    cp h
    ld b, e
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
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38

jr_046_79f5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b

jr_046_7a0d:
    rst $38
    dec bc
    rst $38
    or c
    ld c, a
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    adc l
    di
    call z, $f433
    dec bc
    ld a, [c]
    rrca
    jr nc, jr_046_79f5

    ld a, b
    add a
    inc d
    db $eb
    ld b, b
    cp a
    jr nz, jr_046_7a0d

    jr nz, @+$01

    rst $38
    jr nz, @+$01

    nop
    rst $38

jr_046_7a35:
    inc c
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
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld a, [bc]
    db $fd
    nop
    rst $38
    jr jr_046_7a35

    rlca
    rst $38
    cp a
    ld a, a
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ret nz

    rst $38
    or h
    ld c, e
    db $10
    rst $28
    dec b
    cp $0e
    pop af
    ld a, a
    add b
    sbc a
    ld h, b
    ld a, $c1
    ld a, l
    add d
    dec b
    cp $05
    cp $00
    rst $38
    ld e, $e1
    ld a, [hl]
    add c
    ld hl, sp+$07
    di
    inc c
    ld c, c
    or b
    ld h, d
    add c
    add c
    rlca
    cp a
    rrca
    ld e, a
    ccf
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ld c, c
    or [hl]
    jp nc, $d02d

    cpl
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, $f9
    ld [$00f7], sp
    rst $38
    ld h, c
    sbc a
    db $d3
    cpl
    adc a
    ld a, a
    ld e, $ff
    jr c, @+$01

    ldh [rIE], a
    ret c

    rst $20
    ld a, d
    add l
    rst $38
    nop
    ld b, b
    rst $38
    dec de
    rst $38
    rra
    rst $38
    ld [hl], $ff
    push hl
    rst $38
    ld c, b
    rst $38
    ld [hl], e
    rst $38
    ld d, a
    rst $38
    dec de
    rst $20
    and $1f
    rra
    rst $38
    ccf
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ccf
    ret nz

    rst $00
    ld [$05fa], sp
    ldh a, [rIF]
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
    di
    rst $38
    or c
    rst $38
    pop af
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
    ld bc, $00ff
    nop
    rst $38
    dec e

Call_046_7b03:
    ld [c], a
    or $09
    ei
    inc b
    db $f4
    dec bc
    rst $38
    nop
    xor c
    ld d, a
    rlca
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
    ld [hl], b
    adc a
    ld [bc], a
    rst $38
    ld b, [hl]
    rst $38
    rst $38
    ld b, b
    rst $38

Call_046_7b23:
    ld b, b
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
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$20ff], sp
    rst $38
    ld b, b
    rst $38
    inc e
    db $e3
    ld de, $00ee
    rst $38
    call nz, $3c3b
    jp $d32c


    ld d, a
    xor a
    adc a
    ld a, a
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
    sbc a
    ld a, a
    rra
    rst $38
    rlca
    rst $38
    dec de
    rst $20
    inc de
    rst $28
    inc sp
    rst $08
    ld [hl], a
    adc a
    ld b, a
    cp a
    rra
    rst $20
    ccf
    rst $00
    ld l, a
    add a
    and a
    ld c, a
    ld d, b
    xor h
    ldh a, [rNR41]
    db $76
    add c
    dec de
    rlca
    ld h, a
    rra
    inc a
    rst $38
    ld a, [$f0fd]
    rst $38
    db $e3
    call c, $ff79
    ld a, a
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    nop
    rst $38
    inc de
    db $ec
    ld bc, $03fe
    rst $38
    rrca
    rst $38
    inc e
    rst $38
    ld a, b
    rst $38
    db $fc
    di
    db $d3
    db $ec
    ld [hl], $c9
    xor h
    ld d, e
    rla
    add sp, $37
    ret z

    sbc [hl]
    ld h, c
    sbc a
    ld h, b
    cp $01
    sub $29
    ld a, [hl+]
    push de
    cp l
    ld b, e
    ld a, a
    add a
    rst $08
    ccf
    ccf
    rst $38
    ld a, [hl]
    rst $38
    cp c
    rst $38
    or $7f
    rst $38
    xor $de
    sbc c
    ldh [rPCM12], a
    ld [c], a
    jp hl


    pop hl
    sbc d
    db $eb
    rra
    cp h
    ld [hl], d
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
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
    db $e3
    rst $38
    ld d, $e9
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $08fe
    rst $30
    ld h, [hl]
    sbc c
    ld c, e
    or h
    inc de
    add sp, -$55
    ld d, h
    dec h
    jp c, $3fc0

    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    di
    db $fc
    dec bc
    db $f4
    ld a, [hl+]
    push de
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    nop
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
    ld b, b
    rst $38
    ld [$08f7], sp
    rst $30
    add hl, bc
    rst $30
    sub e
    ld l, a
    or a
    ld c, a
    rst $28
    rra
    ld e, a
    cp a
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

jr_046_7c51:
    rst $38
    rst $38
    rst $38
    rst $30
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38

jr_046_7c61:
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ld a, a
    rst $30
    rst $38
    rst $10
    rst $20
    add a
    ei
    rra
    pop hl
    ld a, $c1
    db $db
    inc h
    cp $01
    jr nc, jr_046_7c51

    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr z, jr_046_7c61

    ld a, h
    add e
    inc bc
    rst $38
    rlca
    rst $38
    ld e, $fd
    jr nc, @+$01

    add sp, -$09
    add b
    rst $38
    ld b, b
    cp a
    add c
    ld a, a
    inc bc
    rst $38
    rrca
    rst $30
    rrca
    rst $38
    ld l, e
    sbc a
    ld h, a
    sbc a
    ccf
    rst $18
    ld l, a
    sbc a
    ld h, a
    sbc a
    ld c, a
    cp a
    ld e, $ff
    db $fc
    dec l
    ei
    rst $18
    cp $f7
    db $fc
    db $fd
    pop af
    rst $38
    rst $38
    and $e8
    db $dd
    reti


    cp a
    db $76
    ld a, e
    add a
    rst $38
    adc c
    ld e, [hl]
    add hl, sp
    or d
    pop hl
    ld h, [hl]
    xor e
    call nc, Call_000_18d6
    db $e3
    dec l
    ld [hl], b
    rst $28
    db $10
    rst $38
    and b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld bc, $03ff
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    jr nz, @+$01

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
    db $fd
    rst $38
    di
    rst $38
    ldh a, [rIE]
    adc $ff
    dec b
    rst $38
    ld a, [$6c05]
    sub e
    or c
    ld c, a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $ac
    di
    rst $08
    rst $38
    ld a, [bc]
    rst $38
    inc c
    rst $30
    add l
    rst $38
    or h
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
    ld [$00f7], sp
    rst $38
    ld b, b
    cp a
    inc c
    di
    nop
    rst $38
    ld h, e
    sbc a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    and l
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    pop hl
    rst $38
    pop hl
    rst $18
    ld b, e
    rst $38
    cp a
    rst $38
    ld a, l
    ei
    di
    rst $28
    add e
    rst $38
    dec bc
    rst $38
    add [hl]
    rst $38
    inc c
    ei
    jr c, @+$01

    sbc $ff
    rst $38
    rst $38
    di
    rst $38
    adc $fe
    sbc [hl]
    db $fd
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$01
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
    cp $ff
    ld a, l
    rst $38
    cp e
    ld a, a
    xor a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    ccf
    rst $18
    ld a, a
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
    db $fd
    rst $38
    ei
    rst $38
    cp $fc
    ld hl, sp-$07
    ld a, [c]
    rst $30
    ld d, h
    db $eb
    and [hl]
    db $eb
    ld b, b
    rst $38
    add l
    ld a, d
    jp $08bc


    cp [hl]
    nop
    push af
    and h
    add sp, -$30
    ret c

    or e
    and c
    rst $00
    ld c, e
    add a
    sbc a
    adc a
    rra
    rra
    cp a
    rst $38
    ccf
    rst $38
    rst $30
    rst $10
    rst $28
    pop bc
    cp $69
    cp $40
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    rst $38
    pop de
    rst $28
    ret nz

    rst $38
    ld a, [bc]
    rst $38
    jr z, @+$01

    inc l
    rst $38
    ld hl, $0efe
    ldh a, [$7f]
    add b
    ld [hl], a
    add b
    scf
    ret z

    and a
    ld e, b
    ld [hl], e
    adc h
    xor l
    ld d, b
    ld e, l
    and b
    cp $01
    pop hl
    rra
    rra
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    dec e
    cp $1d
    cp $0f
    db $fc
    dec c
    cp $0d
    cp $0d
    cp $8f
    ld a, [hl]
    ld b, a
    cp [hl]
    ld b, $ff
    daa
    rst $18
    ccf
    rst $00
    rst $28
    rla
    ld a, a
    adc a
    ccf
    rst $18
    dec sp
    rst $38
    ld h, c
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    reti


    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a

Call_046_7e3f:
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
    db $fd
    rst $38
    ei
    rst $38
    ldh [rIE], a
    add c
    rst $38
    sub e
    ld l, a
    rrca
    rst $38
    ccf
    ei
    ld a, c
    rst $30
    db $d3
    rst $28
    jp nz, $803f

    ld a, a
    inc bc
    rst $38
    ld b, $ff
    dec e
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
    cp $fc
    db $fd
    ei
    rst $30
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fd
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    db $fd
    cp $fa
    db $fd
    ld a, [$e1f0]
    and $88
    rst $00
    and b
    rra
    ld [bc], a
    ld a, l
    ld sp, $01ea
    db $ec
    inc de
    reti


    ld [hl], h
    or d
    pop de
    ld l, c
    ld h, c
    sub e
    cpl
    rlca
    ld c, $8f
    dec e
    rra
    ccf
    ld a, a
    cp $ff
    db $ec
    rst $38
    db $fd
    reti


    or e
    ei
    ld [$fcf7], a
    xor $dd
    ei
    rst $30
    ei
    ld a, a
    rst $38
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld [$10f7], sp
    rst $28
    ld d, b
    xor a
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld b, $f9
    ld a, [hl-]
    push bc
    rst $30
    ld [$00fd], sp
    ld e, l
    add b
    ld a, $c0
    ld a, l
    add d
    ldh [$1f], a
    ldh [$1f], a
    add b
    ld a, a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $28
    ldh a, [$2f]
    ret nc

    cp d
    ld b, l
    ld sp, hl
    rlca
    sbc e
    ld h, a
    rst $30
    rlca
    rst $30
    rrca
    ld l, l
    rra
    rst $28
    rra
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rst $38
    rst $20
    add a
    rst $38
    cpl
    rst $38
    sbc a
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
    ei
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld hl, sp-$01
    add sp, -$09
    ldh a, [$cf]
    add b
    rst $38
    add c
    rst $38
    rst $28
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    cp h
    cp $fb
    rst $38
    rst $20
    rst $38
    db $dd
    rst $18
    cp l
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    cp $ff
    db $fc
    db $fc
    rst $38
    db $fc
    db $eb
    cp $c3
    rst $38
    ret nz

    cp a
    ld b, b
    rst $38
    add [hl]
    ld sp, hl
    add hl, bc
    rst $30
    ld [$03f7], sp
    rst $38
    ld h, a
    cp $ed
    ld hl, sp-$0c
    ldh a, [$e2]
    pop af
    ldh a, [$c7]
    sub e
    jp z, Jump_000_0f20

    ld b, h
    rra
    ld a, d
    cp a
    cp c
    ld [hl], a
    ld c, $f6
    dec a
    adc l
    ld h, e
    sbc e
    ld d, a
    daa
    rst $08
    ld c, [hl]
    sbc [hl]
    sbc l
    ld [hl], c
    ld a, $fa
    db $ed
    ldh [$df], a
    adc c
    ei
    rst $28
    ld d, a
    and [hl]
    ld e, a
    ld d, l
    cp [hl]

Jump_046_7fbc:
    xor l
    ccf
    rst $18
    ld a, a
    xor $ff
    db $fd
    ei
    cp d
    rst $38
    ld e, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $18
    rst $38
    rst $38
    cp a
    add e
    rst $38
    rst $38
    rst $38
    sbc $ff
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
    cp $ff
    sub c
    rst $38
    ld e, [hl]
    cp a
    sbc [hl]
    rst $38
    ldh [rIE], a
    ld bc, $19ff
    rst $28
    sub c
    ld l, a
    jr nc, @+$11

    sub d
    ld l, l
    ld [hl], e
    adc b
    ld [hl], b
    adc a
    ld e, $ff
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
