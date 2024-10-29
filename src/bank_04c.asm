SECTION "ROM Bank $04c", ROMX[$4000], BANK[$4c]

Jump_04c_4000:
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
    and d
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
    and e
    and b
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
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
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
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add hl, de
    add hl, de
    add $c7
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ret z

    ret


    jp z, $cccb

    call $cfce
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    add hl, de
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $19
    add hl, de
    add hl, de
    rst $10
    add hl, de
    ret c

    add hl, de
    add hl, de
    add hl, de
    ld bc, $0101
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    ld bc, $0101
    ld bc, $0001
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    nop
    ld bc, $0101
    ld bc, $0600
    ld b, $06
    ld b, $07
    ld b, $06
    ld b, $06
    rlca
    nop
    ld bc, $0101
    ld bc, $0600
    ld b, $06
    ld b, $07
    ld b, $06
    ld b, $07
    rlca
    nop
    nop
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld b, $07
    ld b, $06
    ld b, $07
    rlca
    nop
    nop
    ld bc, $0101
    ld bc, $0606
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    ld bc, $0101
    ld bc, $0206
    ld b, $06
    ld b, $06
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0606
    ld b, $07
    rlca
    rlca
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0701
    rlca
    nop
    rlca
    rlca
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_04c_416d

jr_04c_416d:
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    nop
    nop
    db $10
    jr nc, jr_04c_41d3

    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    ld [$1818], sp
    ld [$0818], sp
    ld [$0808], sp

jr_04c_41d3:
    ld [$0808], sp
    ld [$0c08], sp
    ld [$080c], sp
    ld [$040c], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    rla
    ld a, c
    ld [bc], a
    ld bc, $61f2
    db $fd
    jr c, jr_04c_4287

    ld [hl], b
    nop
    add b
    nop
    inc hl
    rla
    rst $38
    rst $38
    ld [hl], a
    nop
    cp h
    cp h
    ld b, b
    cp [hl]
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38

jr_04c_421c:
    and b
    ld e, a
    or c
    ld e, a
    add hl, hl
    ld d, a
    dec bc
    ld d, l
    add c
    ld a, a
    inc bc
    rst $38
    rst $20
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
    cp $ff
    rst $38
    db $fc
    add b
    db $fc
    jr c, jr_04c_421c

    db $fc
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$24ff], sp
    rst $38
    dec d
    rst $38
    nop
    rst $38
    cpl
    rst $38
    inc h
    inc a
    ldh [$f8], a
    ld b, b
    ldh [$c0], a
    ret nz

    rst $38
    rst $38
    ret nz

    rst $38
    ccf
    rst $38
    nop
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
    ld b, e
    rst $28
    add c
    jp Jump_000_0602


    jr c, @-$02

    ld a, [c]
    di
    inc [hl]
    rst $30
    cp [hl]

jr_04c_4287:
    rst $38
    inc bc
    rst $38
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
    nop
    rst $38
    ld d, c
    xor [hl]
    ld d, h
    xor e
    nop
    rst $38
    nop
    rst $38
    add sp, $17
    ei
    inc b
    rst $38
    nop
    rst $20
    jr jr_04c_430f

    sbc e
    ld a, b
    add a
    db $fd
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    rst $38
    rst $38
    rst $38
    rst $20
    dec de
    inc bc
    dec de
    ld c, $1b
    ld a, [de]
    db $eb
    xor d
    db $eb
    cpl
    db $eb
    ld a, a
    db $eb
    ld e, l
    db $eb
    ld c, c
    rst $38
    db $e3
    db $fd
    rst $38
    push af
    push af
    push af
    rst $38
    rst $38
    ld hl, sp-$08
    pop af
    rst $30
    push af
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    add b
    rrca
    db $10
    ld [hl], a
    add a
    ld b, d
    ld b, d
    set 6, c
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

jr_04c_430f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    ld a, [de]
    rst $38
    rst $28
    rst $38
    ld b, a
    ld b, a
    ld e, $5e
    nop
    inc d
    sbc $df
    rra
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
    rst $18
    rst $18
    sbc a
    sbc a
    dec sp
    ccf
    ld l, a
    ld a, a
    xor c
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    sbc b
    ld h, a
    ld e, a
    and b
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    jr c, jr_04c_4372

jr_04c_4372:
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    or $f0
    ld [c], a
    rst $28
    ei
    xor $fb
    and $fb
    db $d3
    cp $da
    or $da
    sub $b8
    rst $10
    ret nc

    or a
    call nz, $a4b7
    or a
    inc h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, [hl]
    rst $38
    ld [$19f7], sp
    or $80
    ld a, a
    jr nz, @+$01

    jr nz, @-$1f

    ld h, $fb
    add b
    ld a, a
    ld l, b
    cp a
    cp c
    rst $38
    jr z, @+$01

    rst $38
    rst $38
    rst $38
    ld a, a
    cp a
    db $fd
    rst $18
    ldh [$7f], a
    add b
    xor [hl]
    rst $38
    xor d
    rst $38
    adc d
    rst $38
    adc e
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $10
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
    rst $38
    adc [hl]
    rst $38
    and b
    ld [bc], a
    or d
    ei
    dec a
    rst $38
    rst $38
    rst $38
    or [hl]
    db $eb
    ld c, d
    rra
    dec b
    ld a, [bc]
    adc l
    ld a, [c]
    add sp, -$09
    ld [c], a
    push af
    pop af

jr_04c_440b:
    db $f4
    ld a, [c]
    db $fd
    rst $30
    db $fd
    pop af
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
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld [bc], a
    rst $38
    ei
    rst $38
    ei
    rrca
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
    ret nz

    ccf
    add h
    ld a, e
    jr nc, jr_04c_440b

    ret nz

    ccf
    ret nc

    cpl
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
    rst $38
    sub $7f
    db $e3
    ld a, a
    db $d3
    ld l, a
    ld h, e
    ld a, a
    ld [hl], e
    ld l, a
    ld [c], a
    ld a, a
    and e
    ld a, a
    ld sp, $23af
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    or $ff
    xor h
    rst $38
    cp $ff
    cp $ff
    cp $ff
    ldh a, [rIE]
    ld a, [c]
    rst $38
    ld a, d
    rst $38
    ld [hl], b
    rst $38
    or $ff
    ld a, e
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $08
    ld a, a
    rst $38
    nop
    rst $38
    nop
    cp d
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc l
    rst $38
    ei
    cp $f8
    db $fc
    nop
    ld b, c
    nop
    db $e3
    ld [hl], l
    rst $30
    ei
    rst $38
    xor d
    ld a, [$ffab]
    ld l, d
    cp a
    ld e, [hl]
    xor e
    ld [bc], a
    rst $38
    ld [de], a
    rst $28
    sub b
    ld l, a
    nop
    rst $38
    ld d, d
    rst $38
    ld b, c
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
    ld sp, hl
    rst $38
    ldh [$fe], a
    ret nz

    db $fc
    ld hl, sp-$04
    jr c, @+$01

    ld hl, sp-$03
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_04c_4512

    jr nz, jr_04c_4514

    jr nz, jr_04c_4516

    jr nz, jr_04c_4518

    jr nz, jr_04c_451a

    jr nz, jr_04c_451c

    jr nc, jr_04c_451e

    jr nc, jr_04c_4520

    jr nz, jr_04c_4532

    jr nc, jr_04c_4514

    jr nc, jr_04c_4516

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

jr_04c_4512:
    db $10
    db $10

jr_04c_4514:
    db $10
    db $10

jr_04c_4516:
    ldh a, [$f8]

jr_04c_4518:
    db $fc
    rst $38

jr_04c_451a:
    rst $38
    rst $38

jr_04c_451c:
    rst $38
    rst $38

jr_04c_451e:
    rst $38
    rst $38

jr_04c_4520:
    db $db
    rst $38
    db $ed
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

jr_04c_4532:
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
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    rst $38
    rst $38
    ld a, a
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
    cp a
    rst $38
    rst $38
    rst $38
    ld e, a
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
    rrca
    rst $38
    rrca
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
    rst $10
    rst $38
    sub a
    sbc a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $30
    rst $10
    rst $30
    sub a
    rst $38
    rlca
    rst $38
    rst $20
    cp a
    xor a
    rst $38
    ei
    rst $38
    ld d, e
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    and e
    rst $38
    xor e
    rst $38
    xor e
    rst $38
    xor e
    rst $38
    xor e
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
    ccf
    ld bc, $011d
    add hl, sp
    inc bc
    ld [hl], e
    rlca
    rst $20
    rrca
    rst $08
    sub l
    sbc a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    ld d, b
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    stop
    jr jr_04c_45dc

jr_04c_45dc:
    ld e, $00
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
    add b
    ret nz

    ldh [$f0], a
    ld hl, sp-$04
    cp $fc
    cp $fc
    cp $fc
    db $fc
    cp $fc
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
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add c
    nop
    add d
    nop
    ret nz

    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    add hl, de
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    reti


    rst $38
    call nz, Call_04c_6aff
    rst $38
    jr nc, @+$01

    ld bc, $00ff
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
    add l
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    sub h
    rst $38
    add b
    rst $38
    sub d
    rst $38
    db $e3
    rst $38
    sub h
    rst $38
    sub c
    rst $38
    adc $ff
    call $a4ff
    rst $38
    and $ff
    rst $18
    rst $38
    db $ed
    rst $38
    xor a
    rst $38
    db $fd
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
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

    ret nz

    rst $38
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
    nop
    nop
    nop
    push hl
    nop
    db $e3
    nop
    pop hl
    nop
    ld h, e
    nop
    ld bc, $2000
    nop
    ld [hl+], a
    nop
    nop
    nop
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
    ld hl, sp-$04
    cp $ff
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    ld de, $1fff

jr_04c_473b:
    rst $38
    dec de
    rst $38
    inc e
    ei
    jr nc, @+$01

    jr c, jr_04c_473b

    sub b
    rst $30

jr_04c_4746:
    ld [de], a
    rst $38
    ld e, $ff
    jr @-$07

    ld de, $12fe
    push af
    jr jr_04c_4746

    ld d, $f1
    sub b
    rst $38
    ld d, $fe
    ld a, [de]
    cp $12
    cp $12
    or $54
    cp $10
    cp $10
    rst $38
    sub h
    rst $38
    sbc c
    db $fd
    ld de, $11f3
    push af
    or l
    push af
    sub e
    di
    db $d3
    di
    ld c, [hl]
    rst $38
    adc $ff
    jp c, Jump_04c_4cff

    rst $38
    cp h
    cp $6d
    rst $38
    sbc $ff
    ld a, a
    db $fd
    ld sp, hl
    cp $fd
    ld a, [$f9fe]
    rst $38
    ld sp, hl
    db $fd
    ei
    rst $38
    ld a, [$fc7f]
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rIE]
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

jr_04c_47ba:
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $10
    jr nc, jr_04c_47ba

    db $10
    or a
    db $10
    or a
    db $10
    or a
    db $10
    di
    db $10
    scf
    db $10
    dec [hl]
    db $10
    ld [hl-], a
    db $10
    ld sp, $3610
    db $10
    inc d
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
    jr jr_04c_480e

    or b
    ret nc

    ld hl, sp-$10
    db $f4
    ld hl, sp+$77
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$11
    ld hl, sp-$14
    ei

jr_04c_480e:
    add sp, -$01
    ccf
    add sp, $3f
    add sp, $3f
    add sp, $3f
    add sp, -$01
    add sp, -$01
    add sp, $7f
    add sp, $3f
    add sp, -$01
    ld l, b
    ld a, a
    add sp, -$01
    add sp, $3f
    add sp, $7f
    add sp, $7f
    add sp, -$41
    ld l, b
    cp a
    ld l, b
    rla
    nop
    rla
    nop
    rla
    nop
    rla
    nop
    rla
    nop
    rla
    nop
    rla
    nop
    rlca
    nop
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    ld hl, sp+$3f
    ld hl, sp+$6f
    ld hl, sp-$01
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    ld l, a
    nop
    ld l, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    dec l
    nop
    dec c
    nop
    ccf
    nop
    dec de
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $0100
    nop
    rlca
    nop
    add a
    nop
    rst $00
    nop
    ld a, a
    add b
    rlca
    ld hl, sp+$01
    cp $40
    cp a
    rst $38
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
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    sbc $21
    cp $01
    rst $30
    ld [$01fe], sp
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    ld b, b
    cp a
    ldh [$1f], a
    cp $01
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
    rst $38
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
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
    rst $28
    db $10
    rst $28
    db $10
    ei
    inc b
    ld a, [$3105]
    adc $02
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf

jr_04c_49c9:
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_04c_49d1:
    nop
    nop

jr_04c_49d3:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04c_49c9

    nop
    rst $38
    inc h
    db $db
    db $10
    rst $28
    jr nz, jr_04c_49d1

    jr nz, jr_04c_49d3

    nop
    rst $38
    sub b
    ld l, a
    ret nz

    ccf
    db $e4
    dec de
    ret c

    daa
    ret c

    daa
    ld hl, sp+$07
    ld a, [c]
    dec c
    ld hl, sp+$07
    ldh a, [rIF]
    ld [hl], b
    adc a
    or b
    ld c, a
    ret nc

    cpl
    db $e4
    dec de
    db $e4
    dec de
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    ld h, b
    sbc a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr nz, @-$1f

    jr nz, @-$1f

    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $00
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    ld a, $00
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$06
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld c, $f1
    ld c, $f1
    ld b, $f9
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0b]
    db $f4
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0b]
    db $f4
    rrca
    ldh a, [$2f]
    ret nc

    rrca
    ldh a, [rIF]
    ldh a, [$0a]
    push af
    ld a, [bc]
    push af
    ld c, $f1
    ld c, $f1
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    dec de
    push hl
    rla
    jp hl


    rra
    pop hl
    dec e
    db $e3
    rra
    pop hl
    rra
    pop hl
    dec e
    db $e3
    dec e
    db $e3
    dec e
    db $e3
    dec e
    db $e3
    dec e
    db $e3
    dec e
    db $e3
    dec e
    db $e3
    dec e
    db $e3
    dec a
    db $e3
    dec a
    db $e3
    db $fd
    db $e3
    db $ed
    di
    push hl
    ei
    pop hl
    rst $38
    ld e, $00
    ld a, $00
    ld a, $00
    inc a
    nop
    inc a
    nop
    inc a
    nop
    cp h
    nop
    db $fc
    nop
    jp $c33f


    ccf
    jp $c33f


    ccf
    jp $e33f


    ccf
    db $e3
    ccf
    db $e3
    ccf
    db $e3
    ccf
    inc hl
    rst $38
    inc hl
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    adc h
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    ld [$8800], sp
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld c, b
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
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld e, a
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    and b
    nop
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
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
    ld a, a
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
    ldh [rP1], a
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    di
    nop
    dec bc
    nop
    dec b
    nop
    dec b
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
    ld bc, $0300
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
    inc bc
    nop
    inc bc
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $f8
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $f9
    cp $f8
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    pop af
    cp $f1
    cp $f0
    rst $38
    pop af
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    jp $c2fc


    db $fd
    jp nz, $c2fd

    db $fd
    jp nz, $c2fd

    db $fd
    jp nz, $c2fd

    db $fd
    call nz, $c5fb
    ld a, [$fac5]
    pop bc
    cp $81
    cp $81
    cp $81
    cp $81
    cp $81
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    ret nz

    ld a, $c1
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    dec a
    jp nz, $817e

    ld a, [hl]

Jump_04c_4cff:
    add c
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, e
    add h
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, a
    add b
    ld a, a
    add b
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    db $ed
    ld [de], a
    pop hl
    ld e, $a1
    ld e, [hl]
    call nz, $843b
    ld a, e
    ld c, l
    or d
    call $d132
    ld l, $59
    and [hl]
    pop de
    ld l, $c1
    ld a, $85
    ld a, d
    add d
    ld a, l
    sub d
    ld l, l
    sub a
    ld l, b
    sub e
    ld l, h
    ld b, e
    cp h
    rst $00
    jr c, @+$09

    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$7e
    ld a, l
    sub b
    ld l, a
    inc b
    ei
    inc b
    ei
    adc h
    ld [hl], e
    xor b
    ld d, a
    add sp, $17
    pop af
    ld c, $b4
    ld c, e
    or h
    ld c, e
    or b
    ld c, a
    or b
    ld c, a
    or b
    ld c, a
    or b
    ld c, a
    or b
    ld c, a
    or h
    ld c, e
    or b
    ld c, a
    or h
    ld c, e
    or h
    ld c, e
    or h
    ld c, e
    sub h
    ld l, e
    ld d, h
    xor e
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    inc b
    ei
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
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
    nop
    rst $38
    nop
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
    ccf
    ret nz

    ccf
    ret nz

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
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
    add c
    cp $01
    cp $01
    ldh a, [rIF]
    push hl
    ld a, [de]
    pop hl
    ld e, $c1
    ld a, $c1
    ld a, $82
    ld a, l
    add d
    ld a, l
    ld c, $f1
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld bc, $01fe
    cp $01
    cp $04
    ei
    inc b
    ei
    ld [$08f7], sp
    rst $30
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    db $10

jr_04c_4e1f:
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

jr_04c_4e29:
    rst $38
    nop

jr_04c_4e2b:
    rst $38
    db $10
    rst $28
    ld [$00f7], sp
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
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $f4
    dec bc
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add h
    ld a, e
    cp b
    ld b, a
    jr c, jr_04c_4e1f

    jr nc, jr_04c_4e29

    jr nc, jr_04c_4e2b

    ld a, b
    add a
    ld h, b
    sbc a
    ret nz

    ccf
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
    ld b, b
    cp a
    ld b, b
    cp a
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
    and b
    ld e, a
    cp b
    ld b, a
    ld hl, sp+$07
    cp b
    ld b, a
    db $76
    adc c
    inc [hl]
    sla b
    rst $18
    and b
    ld e, a
    inc b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    ld [de], a
    db $ed
    inc [hl]
    sla [hl]
    reti


    inc b
    ei
    ld [$0df7], sp
    ld a, [c]
    add hl, bc
    or $09
    or $00
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
    rst $30
    ld [$19e6], sp
    rst $28
    db $10
    xor $11
    xor $11
    db $ec

jr_04c_4ed9:
    inc de
    db $ec
    inc de
    call $8d32
    ld [hl], d
    sbc l
    ld h, d
    sbc c
    ld h, [hl]
    cp e
    ld b, h
    adc e
    ld [hl], h
    dec bc
    db $f4
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld b, $f9
    add h

jr_04c_4ef1:
    ld a, e
    pop hl
    ld e, $e8
    rla
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sub b
    ld l, a
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    jr nc, @-$2f

    jr nc, jr_04c_4ed9

    ldh [$1f], a
    ldh [$1f], a
    jr nz, @-$1f

    jr nz, jr_04c_4ef1

    nop
    rst $38
    nop
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
    ld [$08f7], sp
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
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
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
    jr jr_04c_4f83

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04c_4f93

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04c_4fa3

    ld a, [hl+]
    inc e
    inc e
    inc e
    dec hl
    inc l
    dec l
    ld l, $2f

jr_04c_4f83:
    jr nc, jr_04c_4fb6

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04c_4fa9

    inc e
    inc e
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a

jr_04c_4f93:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    inc e
    inc e
    inc e
    inc e
    ld a, [hl-]
    ld b, [hl]
    ld b, a

jr_04c_4fa3:
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_04c_4fa9:
    ld c, [hl]
    ld c, a
    ld d, b
    inc e
    inc e
    inc e
    inc e
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_04c_4fb6:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    inc e
    inc e
    inc e
    inc e
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
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld h, a
    ld l, b
    inc e
    inc e
    ld l, c
    inc e
    inc e
    ld l, d
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    inc e
    inc e
    inc e
    ld [hl], d
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    ld [hl], a
    ld a, b
    inc e
    inc e
    inc e
    inc e
    inc e
    ld a, c
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
    ld a, d
    ld a, e
    inc e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    ld a, h
    inc e
    inc e
    inc e
    inc e
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
    inc e
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ld e, l
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
    inc e
    cp b
    ld a, h
    inc e
    cp c
    cp d
    cp e
    cp c
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    inc e
    ret z

    inc e
    ret


    jp z, $cccb

    call Call_04c_5dce
    ld e, l
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_04c_5d5d

    db $db
    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    inc e
    db $e3
    db $e4
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld b, $07
    ld bc, $0101
    nop
    ld b, $06
    ld [bc], a
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    nop
    rlca
    inc bc
    ld [bc], a
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld b, $07
    ld bc, $0001
    nop
    nop
    inc bc
    inc bc
    ld bc, $0602
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    rlca
    rlca
    nop
    nop
    nop
    inc bc
    ld bc, $0602
    ld b, $07
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0707
    rlca
    rlca
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0707
    rlca
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    ld b, $06
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0401
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
    ld bc, $c001
    add b
    nop
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld h, b
    sub b
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp a
    ld b, b
    ld a, [bc]
    rst $38
    rst $20
    rst $38
    ld d, e
    rst $18
    ld c, c
    rst $28
    inc bc
    cp a
    jr @+$61

    ld a, [bc]
    cpl
    add d
    xor a
    ld [hl], h
    rst $38
    ret z

    scf
    jr nz, @+$01

    sbc a
    rst $38
    sub d
    rlca
    ret z

    rst $38
    ldh a, [rIE]
    nop
    nop
    cp $00
    nop

jr_04c_5207:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$41

    ldh a, [rIE]
    db $10
    cpl
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld [$80f7], sp
    rst $38
    inc b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nz, jr_04c_5207

    nop
    rst $38
    nop
    rst $38
    rst $28
    db $fd
    cp l
    rst $38
    ld b, c
    ld d, [hl]
    ld b, b
    ld [hl], d
    add sp, -$01
    nop
    rst $38
    add b
    rst $38
    jp z, $80ff

    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    xor c
    adc [hl]
    add b
    rst $38
    ld b, b
    rst $38
    set 7, a
    xor $ff
    ldh [rIE], a
    jp nz, $bfff

    ldh [$bf], a
    ldh [$df], a
    ldh a, [$df]
    ldh a, [$ef]
    ld hl, sp-$01
    ld hl, sp-$09
    sbc [hl]
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    dec a
    jp nz, $8877

    cp a
    ld b, b
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
    inc [hl]
    res 0, b
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
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $ff00
    rst $38
    ld l, a
    rst $38
    cp a
    rst $38
    db $eb
    rst $38
    ld a, d
    rst $38
    and l
    rst $38
    sub b
    rst $38
    ld c, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld b, c
    cp [hl]
    ld [bc], a
    db $fd
    add hl, hl
    sub $8a
    ld [hl], l
    xor d
    ld d, l
    cp e
    ld b, h
    inc c
    inc c
    inc b
    inc b
    nop
    nop
    ld de, $2011
    jr nz, jr_04c_52d3

    ld [$5555], sp
    ld [bc], a
    ld [bc], a
    nop

jr_04c_52d1:
    nop
    nop

jr_04c_52d3:
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    rst $38
    nop
    nop
    rst $38
    ld l, $ff
    nop
    rst $38
    add b
    rst $38
    jp hl


    rst $38
    ld [de], a
    push hl
    sub a
    jp hl


    ld [bc], a
    ld h, a
    ldh a, [rIE]
    jr nz, @+$01

    nop
    rst $38
    sub b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld a, a
    inc bc
    nop
    nop
    ld bc, $21ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_04c_5313:
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $10ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$7f], a
    ld h, d
    rra
    jr nc, jr_04c_52d1

    add b
    sbc a
    adc b
    rst $18
    nop
    rst $38
    ld h, b
    sbc a
    ld [hl], h
    rst $38
    ld [$12fb], sp
    pop af
    jr nc, jr_04c_5313

    adc b
    ld a, a
    and b
    ld e, a
    sbc [hl]
    ld c, h
    inc b
    ld sp, hl
    ld [$fafd], sp
    rst $38
    inc a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    dec bc
    db $f4
    inc c
    di
    rlca
    ld hl, sp+$30
    rst $08
    ld [hl], e
    adc h
    nop
    rst $38
    ld de, $5bee
    and h
    ld a, a
    add b
    rst $38
    nop
    cp $01
    rlca
    ld hl, sp+$7e
    add c
    nop
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
    inc h
    db $db
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    rst $18
    ldh [$cf], a
    ldh a, [rBGP]
    ld hl, sp+$27
    ld hl, sp+$4f
    ld hl, sp-$01
    db $fc
    rst $18
    cp $ff
    rst $38
    rst $10
    rst $38
    ld l, d
    rst $38
    push de
    rst $38
    adc h
    rst $38
    and c
    rst $38
    ld b, b
    ld b, b
    nop
    nop
    ld b, b
    ld b, b
    inc c
    inc c
    ld b, h
    ld b, h
    db $10
    db $10
    ld bc, $0401
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $fffe
    nop
    nop
    rst $38
    db $ec
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [$00ff], sp
    rst $38
    ld b, b
    rst $38
    ld bc, $00ff
    rst $38
    ld [$81ff], sp
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    add hl, bc
    rst $38
    ld a, [hl]
    rst $38

Call_04c_5404:
    rlca
    nop
    ld c, b
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
    jr nz, @+$01

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
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    add h
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $10ff
    rst $38
    ld [bc], a
    rst $38
    adc b
    rst $38
    ldh [$1f], a
    db $fd
    rrca
    ld hl, sp+$0f
    ld hl, sp+$07
    cp $07
    cp $03
    rst $38
    inc bc
    ld b, c
    cp a
    sub c
    ld l, a
    ld h, h
    sbc e
    db $f4
    dec bc
    db $fc
    inc bc
    ld hl, sp+$07
    pop de
    ld l, $ab
    ld d, h
    push de
    ld a, [hl+]
    db $fc
    inc bc
    ld bc, $20fe
    rst $18
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$5f], a
    ldh a, [rIF]
    ld hl, sp+$57
    db $fc
    inc bc
    cp $03
    cp $a0
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    nop
    nop
    nop
    nop
    jr nz, jr_04c_54a6

jr_04c_54a6:
    stop
    ld bc, $f000
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
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
    nop
    rst $38
    nop
    rst $38
    jr z, @+$01

    nop
    rst $38
    ld [$12ff], sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [$f8ff], sp
    rst $38
    ld l, $01
    ld [$00f7], sp
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
    jr nz, @+$01

    jr z, @+$01

    nop
    rst $38
    db $10
    rst $38
    ld d, b
    rst $38
    inc d
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc h
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    ld b, d
    rst $38
    add hl, bc
    rst $38
    add hl, hl
    rst $38
    ld hl, $00ff
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$20ff], sp
    rst $38
    ld [$11ff], sp
    rst $38
    ld b, $ff
    nop
    rst $38
    add b
    rst $38
    inc b
    rst $38
    ld b, l
    rst $38
    ld hl, $02ff
    rst $38
    ld h, d
    rst $38
    nop
    rst $38
    dec d
    rst $38
    sub b
    rst $38
    adc c
    rst $38
    sub h
    rst $38
    jr nz, @+$01

    xor $ff
    cp a
    rst $38
    sbc [hl]
    rst $38
    rst $18
    rst $38
    rst $38
    ld a, a
    db $ed
    ld a, a
    rst $28
    ccf
    db $fd
    ccf
    rst $30
    rra
    rst $38
    rra
    ei
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
    db $fd
    inc bc
    rst $38
    ld bc, $03ff
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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [rP1], a

jr_04c_5571:
    nop
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
    rst $28
    rst $28
    rst $38
    rst $38
    db $fd
    db $fd
    db $f4
    db $f4
    db $eb
    db $eb
    rst $30
    rst $30
    db $fd
    db $fd
    jr nz, jr_04c_5571

    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, a
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, c
    rst $38
    ld h, e
    rst $38
    cpl
    cp $36
    db $fd
    dec a
    rst $38
    ld e, $ff
    rra
    cp $0e
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    inc h
    rst $38
    add h
    rst $38
    inc b
    rst $38
    ld b, $ff
    inc bc
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ld hl, $41ff
    rst $38
    ld b, c
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    xor b
    rst $38
    ld [$90ff], sp
    rst $38
    ld d, h
    rst $38
    ld [$09ff], sp
    rst $38
    dec h
    rst $38
    sub d
    rst $38
    dec d
    rst $38
    dec d
    rst $38
    ld d, d
    rst $38
    ld e, b
    rst $38
    dec h
    rst $38
    and h
    rst $38
    and l
    rst $38
    rst $30
    rst $38
    sbc $ff
    rst $38
    rst $38
    ld l, a
    rst $38
    cp a
    rst $38
    db $dd
    rst $38
    rst $30
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
    ld a, a
    rst $38
    ld l, l
    rst $38
    rst $18
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    add c
    ld a, a
    inc bc
    rst $38
    inc b
    db $fc
    dec e
    db $ed
    add hl, sp
    reti


    ld a, e
    cp e
    db $76
    or $e9
    jp hl


    db $db
    db $db
    and a
    rst $20
    xor $ee
    xor $ee
    rst $38
    db $fd
    reti


    ld sp, hl
    add e
    ld a, [c]
    add [hl]
    rst $30
    ld e, $fd
    inc c
    ei
    inc a
    di
    nop
    rst $38
    ld a, h
    rst $28
    ld a, b
    rst $18
    ret nc

    cp a
    ld h, c
    cp a
    rst $00
    ld a, e
    ld bc, $87ff
    rst $38
    inc de
    rst $28
    ld b, $ff
    ld [bc], a
    rst $38
    rla
    rst $38
    jr @+$01

    jr c, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, e
    db $fd
    ret nz

    rst $38
    add h
    ei
    ld [c], a
    rst $18
    ld b, l
    ld a, a
    ld b, l
    ld a, a
    ld b, [hl]
    ld a, h
    xor h
    ld a, h
    inc c
    cp l
    sbc h
    cp l
    sbc l
    cp a
    sbc e
    rst $18
    ld [hl], l
    rst $18
    ld a, l
    rst $30
    db $76
    rst $28
    rst $30
    rst $28
    cpl
    rst $30
    inc hl
    cp $2e
    ld a, [$fe72]
    scf
    db $fc
    cp h
    db $fc
    sbc a
    rst $38
    sbc a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    ld a, a
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
    ld a, a
    rst $38
    rst $38
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
    cp $ff
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc b
    ld b, $00
    ld b, $02
    ld b, $02
    ld b, $07
    ld [bc], a
    ld a, a
    add d
    ld a, [$faff]
    rst $38
    ccf
    ei
    ld [hl], a
    ld sp, hl
    rst $30
    ld sp, hl
    rst $30
    ld sp, hl
    dec sp
    dec a
    rst $30
    db $fd
    xor a
    cp l
    ld a, e
    ld a, l
    rst $28
    db $fd
    rst $38
    db $fc
    set 3, h
    sub l
    sbc [hl]
    daa
    ld a, $5f
    ld l, [hl]
    cp a
    sub $e5
    cp [hl]
    push bc
    ld a, [hl]
    dec c
    or $96
    rst $28
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $30
    rst $38
    ld a, [hl]
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    jp $8fff


    rst $30
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    dec a
    rst $28
    jp hl


    rst $28
    ld l, c
    rst $28
    dec hl
    xor a
    rst $30
    xor a
    or a
    rst $10
    rst $10
    rst $10
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $bf
    ld a, a
    cp $fc
    rst $38
    sbc [hl]
    db $fd
    cp b
    sbc a
    xor h
    ld e, e
    add hl, hl
    rra
    rst $18
    ld a, $3d
    rla
    ld [hl], h
    ccf
    or h
    ld a, a
    ld [hl], $3b
    ld hl, sp-$0d
    cp h
    rst $30
    or $fd
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    di
    rst $38
    di
    rst $38
    pop hl
    rst $38
    push hl
    rst $38
    db $e3
    cp $83
    cp $c3
    cp $87
    db $fc
    add a
    db $fc
    add a
    db $fc
    adc a
    ld hl, sp-$31
    ld hl, sp-$31
    ld hl, sp-$21
    ldh a, [$df]
    ldh a, [rIE]
    ldh a, [$5f]
    ldh a, [rIE]
    ldh a, [rIE]

jr_04c_579b:
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
    ret nz

    nop
    ld a, [c]
    nop
    cp $00
    ld [hl], c
    adc [hl]
    ld a, c
    add [hl]
    jr nz, jr_04c_579b

    ld h, b
    sbc a
    ret nz

    cp a
    call nz, $c0bb
    cp a
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, d
    db $fd
    ld b, c
    cp $40
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    and b
    rst $38
    or b
    rst $28
    and b
    rst $38
    and b
    rst $38
    or b
    rst $38
    or b
    rst $38
    sub h
    ei
    ret nc

    rst $38
    jp nc, $d4fd

    ei
    ret nc

    rst $38
    ret nc

    rst $38
    ret c

    rst $38
    ret z

    rst $38
    add sp, -$01
    rst $38
    add sp, -$01
    add sp, -$01
    add sp, -$01
    add sp, -$41
    db $ec
    cp a
    db $e4
    ccf
    db $f4
    ccf
    db $f4
    ccf
    cp $37
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

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
    nop
    nop
    nop

jr_04c_5843:
    nop
    nop

jr_04c_5845:
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld bc, $0100
    nop
    dec bc
    nop
    rla
    nop
    rrca
    nop
    dec c
    nop
    ld c, a
    add b
    ld e, a
    and b
    rla
    add sp, $01
    cp $20
    rst $18
    jr nz, jr_04c_5843

    jr nz, jr_04c_5845

    add d
    ld a, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    nop
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
    rst $38
    nop
    ld e, a
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
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
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

jr_04c_58a1:
    add b
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
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a

jr_04c_58b9:
    db $fd
    ld [bc], a
    db $fd
    db $10
    rst $28
    inc b
    ei
    jr nz, jr_04c_58a1

    adc b
    ld [hl], a
    and b
    ld e, a
    sub b
    ld l, a
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
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    jr z, jr_04c_58b9

    nop
    rst $38
    nop
    rst $38
    nop
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
    cp a
    ld b, b
    and a
    ld e, b
    sbc e
    ld h, h
    sbc d
    ld h, l
    and d
    ld e, l
    ld sp, hl
    ld b, $78
    add a
    ld a, l
    add d
    dec [hl]
    jp z, $53ac

    or h
    ld c, e
    ld hl, $81de
    ld a, [hl]
    add h
    ld a, e
    db $10
    rst $28
    ret nz

    ccf
    jp nz, Jump_000_003d

    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $f4
    dec bc
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld h, b
    sbc a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    inc d
    db $eb
    jr nc, @-$2f

    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b

jr_04c_595f:
    ld a, a
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04c_595f

    nop
    rst $38
    ld b, b
    cp a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    cp $00
    cp $00
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $f900
    nop
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

Call_04c_59d9:
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
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    cp $03
    cp $03
    cp $03
    cp $01
    cp $01
    cp $06
    db $fd
    rlca
    db $fc
    rrca
    db $f4
    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$1f
    add sp, $0f
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc de
    db $fc
    dec de
    db $f4
    dec de
    db $f4
    rra
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$27
    ld hl, sp+$37
    add sp, $37
    add sp, $3f
    ldh [rNR22], a
    add sp, $1b
    db $e4
    ld d, [hl]
    jp hl


    ld d, a
    add sp, $57
    add sp, $55
    ld [$e817], a
    adc l
    ld a, [c]
    adc a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8b]
    db $f4
    add hl, bc
    or $04
    ei
    ld [bc], a
    db $fd
    ld b, $f9
    ld bc, $02fe
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, b
    cp a
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld bc, $80fe
    ld a, a
    inc b
    ei
    inc b
    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03fe
    cp $03
    rst $38
    inc bc
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    add a
    db $fc
    add a
    ld sp, hl
    adc a
    ld sp, hl
    adc a
    ld sp, hl
    adc a
    ld sp, hl
    adc a
    di
    sbc a
    di
    sbc a
    di
    sbc a
    di
    sbc a
    rst $20
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $20
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
    jp $c300


    nop
    db $e3
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld [c], a
    nop
    ld [c], a
    nop
    add $00
    call nc, $fc00
    nop
    db $fc
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    db $f4
    nop
    db $f4
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    db $f4
    nop
    ldh a, [rP1]
    or $00
    ld a, [c]
    nop
    ld a, [$ec00]
    nop
    rst $38
    nop
    db $fd
    nop
    ld a, [$da00]
    nop
    call c, $fc00
    nop
    nop
    nop
    ld [bc], a
    nop
    add hl, hl
    nop
    inc sp
    ld bc, $0127
    ld c, a
    ld [bc], a
    sbc a
    ld [bc], a
    ccf
    ld [bc], a
    ccf
    ld [bc], a
    cpl
    ld [bc], a
    rst $18
    inc b
    rst $38
    inc b
    rst $28
    inc b
    ld e, a
    ld b, $ff
    ld c, $ff
    ld c, $f9
    rrca
    ld sp, hl
    rrca
    pop af
    rra
    pop af
    rra
    di
    rra
    di
    rra
    db $e3
    ccf
    rst $20
    ccf
    rst $20
    ccf
    rst $20
    ccf
    rst $00
    ld a, a
    rst $08
    ld a, a
    rst $08
    ld a, a
    rst $08
    ld a, a
    sbc a
    rst $38
    sbc a
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
    nop
    nop
    nop
    nop
    nop
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $f1
    cp $f1
    cp $f1
    cp $e1
    cp $e1
    cp $c1
    cp $c1
    cp $c1
    cp $81
    cp $81
    cp $80
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [hl], a
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
    inc bc
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
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    ld b, $00
    ld b, d
    nop
    ld b, $01
    ld b, $01
    dec b
    ld bc, $0107
    dec b
    inc bc
    add c
    inc bc
    ld b, $03
    and [hl]
    inc bc
    and e
    ld b, $06
    ld b, $0c
    ld b, $06
    adc h
    adc h
    adc h
    ret z

    adc h
    ld e, h
    ret z

    ld c, d
    ret c

    ld d, c
    ld hl, sp+$70
    ld hl, sp+$74
    ldh a, [$f8]
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fd
    db $fc
    db $fc
    cp $fe
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
    cp $ff
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

jr_04c_5c74:
    sbc a
    ldh [rIE], a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop

jr_04c_5c7e:
    rst $30
    ld [$08f7], sp
    sbc a
    ld h, b
    cp a
    ld b, b
    rst $38
    nop
    rst $18
    jr nz, @-$1f

    jr nz, @-$1f

    jr nz, jr_04c_5c7e

    db $10
    rst $28
    db $10
    rst $08
    jr nc, jr_04c_5c74

    jr nz, @-$5f

    ld h, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
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
    ldh a, [$0d]
    ld a, [c]
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTMA]
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $ed
    inc bc
    pop de
    inc bc
    dec de
    inc bc
    sbc a
    inc bc
    add d
    rlca
    rlca
    ld b, $8e
    ld b, $24
    ld c, $2f
    inc c
    ld c, h
    inc c
    sbc c
    inc c
    dec bc
    inc e
    rra
    jr jr_04c_5d26

    jr jr_04c_5cfe

    jr c, jr_04c_5d2c

    jr nc, jr_04c_5d26

    jr nc, jr_04c_5d54

    jr nc, jr_04c_5d25

    ld h, b
    ld h, b
    ld h, b
    ret nz

    ld h, b
    ld b, b
    ldh [$60], a
    ret nz

jr_04c_5cfe:
    jp nc, $b8c0

    ret nz

    push hl
    add b
    xor a
    add b
    ld d, a
    add b
    ld b, a
    add b
    rst $00
    nop
    cpl
    nop
    adc a
    nop
    xor a
    nop
    ld l, $00
    ld e, [hl]
    nop
    ld e, [hl]
    nop
    ld c, a
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    cp a
    nop
    ccf

jr_04c_5d25:
    nop

jr_04c_5d26:
    cp a
    nop
    cp a
    nop
    ccf
    nop

jr_04c_5d2c:
    cp a
    nop
    ld a, [hl-]
    nop
    ld a, a
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
    add b
    cp a
    add b
    rst $38
    add b
    rst $18
    ret nz

    rst $38
    ret nz

    call c, $ffe0
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    sbc a
    add b
    ccf
    add b
    rst $38
    nop
    rst $38
    nop

jr_04c_5d54:
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38

Jump_04c_5d5d:
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    db $dd
    ld [hl+], a
    db $db
    inc h
    db $db
    inc h
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_04c_5dd0

    add b
    cp d
    nop
    ld a, [hl-]
    nop
    ld d, a
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $10
    nop
    rst $20
    nop
    rst $28
    nop
    ld a, [$fe04]
    nop
    cp [hl]
    nop
    db $fc
    nop
    ld l, a
    nop
    ld l, e
    nop
    rrca
    nop
    rra
    nop
    dec sp
    nop
    ld a, b
    nop
    ld a, d
    nop
    ld a, h
    nop
    ld a, d
    nop
    cp $00
    push af
    nop
    push hl
    nop
    and h
    nop
    and l
    nop
    xor a
    nop
    ld a, [hl]
    nop
    ld e, c
    nop

Call_04c_5dce:
    ld a, l
    nop

jr_04c_5dd0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc $00
    ld a, h
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    db $e4
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$00
    add sp, $00
    ret c

    nop
    ret c

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    cp d
    nop
    inc e
    nop
    ld e, h
    nop
    ld a, $00
    ld l, [hl]
    nop
    sub $00
    sbc a
    nop
    sbc a
    nop
    ccf
    nop
    ld a, c
    nop
    xor h
    nop
    ret z

    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    push af
    nop
    adc e
    nop
    adc $00
    db $fd
    nop
    db $db
    nop
    sbc a
    nop
    ei
    nop
    db $ed
    nop
    db $ed
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
    rst $28
    nop
    db $eb
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
    rst $18
    nop
    db $fd
    nop
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
    db $db
    inc h
    rst $30
    ld [$04fb], sp
    rst $28
    db $10
    rst $30
    ld [$8877], sp
    di
    nop
    rst $30
    nop
    db $e3
    nop
    jp $c600


    nop
    ld b, $00
    rla
    nop
    inc c
    nop
    jr c, jr_04c_5e82

jr_04c_5e82:
    jr c, jr_04c_5e84

jr_04c_5e84:
    ld a, c
    nop
    ld [hl], h
    nop
    db $f4
    nop
    ret z

    nop
    xor b
    nop
    add hl, de
    nop
    cp e
    nop
    cp [hl]
    nop
    ld [hl], $00
    or d
    nop
    ld l, a
    nop
    ld c, a
    nop
    ld e, [hl]
    nop
    sbc [hl]
    nop
    db $fc
    nop
    ld a, h
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld [hl], b
    nop
    ret nz

    nop
    ret nz

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
    stop
    or h
    nop
    inc h
    nop
    add d
    nop
    ret nc

    nop
    and e
    nop
    ld h, e
    nop
    ld b, [hl]
    nop
    inc c
    nop
    cp $00
    cp $00
    ei
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    or a
    nop
    sbc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    rst $08
    nop
    jp $ef00


    nop
    rst $00
    nop
    rst $08
    nop
    call $dd00
    nop
    xor a
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    rst $30
    nop
    rst $28
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
    db $fc
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    db $e3
    nop
    jp nz, $4601

    ld bc, $018e
    ld a, e
    inc b
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
    ld a, [$f105]
    ld c, $b0
    ld c, a
    db $10
    rst $28
    inc d
    db $eb
    xor d
    ld d, l
    ld d, l
    xor d
    rst $28
    db $10
    ld [hl], a
    adc b
    cp a
    ld b, b
    ld a, a
    add b
    ldh [rP1], a
    add b
    nop
    add b
    nop
    jp nz, Jump_04c_4000

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    add [hl]
    nop
    rlca
    nop
    dec c
    nop
    add hl, bc
    nop
    dec de
    nop
    scf
    nop
    daa
    nop
    ld c, $00
    inc e
    nop
    inc a
    nop
    ld a, b
    nop
    sub b
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
    nop
    nop
    ld b, b
    nop
    ld b, b
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    ld h, b
    nop
    ld [hl], b
    nop
    pop af
    nop
    rst $30
    nop
    cp $00
    db $f4
    nop
    or c
    nop
    di
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
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    rst $30
    nop
    push af
    nop
    push hl
    nop
    ld hl, sp+$00
    call z, $d800
    nop
    ret nc

    nop
    add b
    nop
    add c
    nop
    add c
    nop
    add e
    nop
    add a
    nop
    and a
    nop
    cpl
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
    nop
    rst $38
    nop
    cp a
    ld b, b
    db $db
    inc h
    cpl
    ret nc

    ld e, e
    and h
    rra
    ldh [$5f], a
    and b
    cp a
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
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_04c_603e

jr_04c_603e:
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04c_6068

    ld [hl+], a
    inc hl
    inc h
    dec d
    dec h
    ld h, $00
    daa
    nop
    jr z, jr_04c_607b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04c_606f

    dec d
    dec d
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04c_609e

    ld a, [hl-]
    dec sp
    inc a

jr_04c_6068:
    dec a
    dec d
    dec d
    ld a, $3f
    ld b, b
    ld b, c

jr_04c_606f:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    dec d
    dec d
    ld c, e

jr_04c_607b:
    ld c, h
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
    dec d
    dec d
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
    dec d
    ld l, c
    ld l, d
    ld l, e

jr_04c_609e:
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
    dec d
    dec d
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
    dec d
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
    dec d
    dec d
    dec d
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
    dec d
    ld c, e
    or d
    or e
    or h
    or l
    nop
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    dec d
    dec d
    cp a
    ret nz

    pop bc
    jp nz, $c300

    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, Jump_000_15cb

    dec d
    add l
    call z, $cecd
    nop
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ld d, $15
    ret c

    reti


    jp c, Jump_000_00db

    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    dec d
    dec d
    push hl
    and $e7
    add sp, $00
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    dec d
    db $f4
    nop
    push af
    nop
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    dec d
    nop
    ld bc, $0302
    inc b
    dec b
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec d
    dec c
    ld c, $0f
    nop
    stop
    nop
    ld b, $06
    ld b, $06
    rlca
    rlca
    ld bc, $0101
    ld bc, $0007
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    ld bc, $0100
    ld bc, $0007
    ld b, $06
    ld b, $07
    nop
    rlca
    rlca
    ld b, $06
    ld b, $01
    ld bc, $0100
    rlca
    nop
    ld b, $00
    ld b, $06
    rlca
    ld b, $06
    ld b, $06
    ld b, $07
    nop
    nop
    nop
    rlca
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    nop
    nop
    ld bc, $0607
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    inc bc
    nop
    nop
    ld bc, $0701
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    ld bc, $0101
    ld bc, $0000
    rlca
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    inc bc
    ld bc, $0101
    ld bc, $0100
    rlca
    ld b, $06
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $07
    ld bc, $0101
    ld bc, $0000
    inc bc
    ld b, $02
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $07
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld b, $02
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    rlca
    ld bc, $0001
    ld bc, $0603
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $07
    ld b, $07
    ld bc, $0000
    nop
    rlca
    ld b, $06
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $07
    ld bc, $0101
    ld bc, $2100
    nop
    ld b, $06
    ld b, $00
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    nop
    nop
    ld bc, $0606
    ld b, $00
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    nop
    nop
    ld bc, $0606
    ld b, $00
    ld b, $06
    ld b, $06
    ld b, $07
    rlca
    rlca
    rlca
    ld bc, $0100
    rlca
    ld b, $06
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    nop
    nop
    ld bc, $0607
    ld b, $00
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0101
    nop
    rlca
    nop
    ld b, $00
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    rlca
    ld bc, $0001
    add hl, bc
    rrca
    ld c, $0e
    ld c, $0e
    nop
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    rrca
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
    ld a, a
    rst $38
    cp a
    ld a, a
    ld e, a
    ccf
    ccf
    rra
    inc sp
    rrca
    inc sp
    rrca
    add hl, de
    rlca
    dec c
    inc bc
    ld c, h
    inc bc
    call c, Call_04c_7e03
    add c
    inc a
    jp $ff40


    ret nz

    rst $38
    jp hl


    cp $f9
    cp $f9
    cp $f9
    cp $f1
    cp $f4
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    set 6, a
    ld [hl], c
    rst $38
    ld sp, hl
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
    ld a, a
    rst $38
    cp a
    ld a, a
    rst $28
    rra
    ei
    rlca
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
    ld a, [bc]
    push af
    ld [hl+], a
    db $dd
    nop
    rst $38
    nop
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
    nop
    rst $38
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
    db $10
    rst $28
    rst $38
    nop
    rrca
    ldh a, [rP1]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $ff
    ld a, [c]
    rst $38
    rst $38
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
    rst $38
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
    rst $30
    rst $38
    rst $30
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
    rst $18
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    and e
    ld e, a
    ld [c], a
    rra
    pop af
    rrca
    db $fd
    inc bc
    rst $38
    ld bc, $03fc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld a, h
    add e
    ld a, [de]
    db $e4
    ld b, $ff
    add c
    cp $d3
    db $fc
    db $d3
    db $fc
    di
    db $fc
    ld a, [c]
    db $fd
    db $ed
    cp $fc
    rst $38
    xor $ff
    cp $ff
    rst $38
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $08
    ccf
    di
    rrca
    db $fd
    inc bc
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$ff00]
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc h
    db $db
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
    ld e, a
    rst $38
    ld [bc], a
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
    ld sp, hl
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
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    pop af
    rst $38
    push af
    rst $38
    db $fc
    rst $38
    ld a, [$fffb]
    ei
    ld c, $0e
    rrca
    rrca
    rrca
    rlca
    ld e, $1a
    rra
    dec de
    rra
    inc de
    ccf
    inc l
    dec a
    dec e
    db $d3
    db $e3
    di
    add c
    ld sp, hl
    add c
    rst $38
    add c
    add e
    ei
    ld d, a
    and a
    sub d
    ld h, e
    or d
    inc bc
    add $37
    and $17
    xor a
    ld c, [hl]
    and d
    ld b, a
    db $eb
    rrca
    ld [bc], a
    rst $38
    rst $00
    ccf
    rst $30
    rrca
    ldh a, [rIF]
    ld hl, sp+$0f
    db $fd
    ld a, [bc]
    db $e3
    inc e
    rst $28
    db $10
    daa
    ret c

    rlca
    ld hl, sp+$0f
    ldh a, [rBGP]
    ld hl, sp-$59
    ld hl, sp-$55
    db $fc
    di
    db $fc
    ld hl, sp-$01
    call c, $fdff
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
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rst $38
    ld c, a
    cp a
    and e
    ld e, a
    ld d, c
    xor a
    add b
    ld a, a
    inc de
    db $ec
    ld d, h
    xor e
    ld e, $e1
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

    ld c, a
    rst $38
    add d
    rst $38
    db $fc
    rst $38
    and b
    rst $38
    call c, $ffff
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
    reti


    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    ld a, d
    db $e3
    rst $38
    db $e3
    rst $38
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
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    inc bc
    rst $38
    add d
    rst $38
    ld b, b
    ld a, a
    rst $20
    ld a, a
    ld c, c
    ld a, a
    ldh [$7f], a
    sbc c
    rst $38
    sbc b
    rst $38
    sbc h
    adc a
    add [hl]
    rst $18
    rst $20
    adc a
    ld c, [hl]
    rst $00
    ld c, a
    rst $20
    ld a, a
    ld l, a
    ccf
    ccf
    ld a, a
    rra
    sbc a
    ccf
    adc a
    rra
    cp [hl]
    ld e, a
    rla
    ld a, a
    sbc a
    ccf
    rst $10
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    db $db
    ccf
    jp hl


    ccf
    pop hl
    ld a, $82
    ld a, a
    db $e3
    ld e, [hl]
    adc [hl]
    ld [hl], d
    sbc l
    ld h, e
    ld e, d
    and h
    add hl, de
    and $3a
    call nz, $e61b
    add hl, sp
    rst $00
    dec sp
    pop bc
    or b
    ret


    ret c

    jp hl


    ld b, b
    db $fd
    ldh a, [rIE]
    push hl
    ei
    or $fd
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
    ld bc, $ffff
    nop
    rst $38
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
    rst $38
    add [hl]
    ld a, l
    add a
    cp $3f
    rst $38
    and e
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
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
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
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
    sbc h
    rst $38
    ei
    ld [hl], e
    ld h, a
    inc de
    ld h, a
    add a
    rst $20
    rst $08
    rst $08
    rst $08
    rst $30
    rst $18
    rst $38
    rst $38
    xor h
    rst $38
    sbc l
    ld [c], a
    rra
    ldh [$1f], a
    ldh [$8f], a
    ldh a, [rIF]
    ldh a, [$83]
    db $fc
    ldh [rIE], a
    db $fc
    ei
    ld a, c
    ret z

    ld sp, hl
    db $fc
    db $f4
    xor d
    ld c, b
    rst $38
    ld bc, $12fe
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    pop de
    rst $18
    jp c, $8acf

    rst $08
    db $fc
    adc a
    sbc e
    adc a
    adc c
    adc e
    add hl, de
    adc c
    adc a
    add hl, de
    sbc e
    dec de
    sbc e
    ld de, $9173
    ld [hl], d
    inc sp
    db $d3
    inc hl
    di
    db $e3
    rst $38
    ld [hl], e
    daa
    ld a, a
    and a
    rst $38
    ld b, a
    ld a, a
    ld h, a
    ld l, a
    rst $10
    ld l, a
    ld h, a
    rst $38
    sbc $ff
    ld e, a
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    ld [hl], e
    cp e
    add a
    ei
    cp e
    rst $10
    jp nc, $cdff

    cp $fa
    rst $38
    ld a, [$feff]
    rst $38
    db $fc
    rst $38
    ld a, [hl+]
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
    nop
    rst $38
    ld b, b
    cp a
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ldh a, [rIE]
    ld c, a
    cp b
    rst $38
    rst $38
    daa
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, @+$01

    rst $38
    rst $38
    ld a, [$f7ff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, e
    rst $38
    reti


    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
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
    rst $38
    rst $38
    ld bc, $02ff
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    db $fc
    db $fc
    db $fc
    db $fc
    ld l, l
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    rst $00
    ccf
    push bc
    ccf
    jp $c13f


    ccf
    pop bc
    ccf
    dec b
    rst $38
    ld [$027f], a
    ld sp, $3813
    add hl, de
    sbc c
    ld a, b
    add a
    rst $28
    nop
    nop
    rst $38
    ccf
    ret nz

    ld a, a
    add b
    cp a
    ld b, b
    ei
    nop
    inc bc
    db $fc
    nop
    rst $38
    rla
    add sp, $0f
    ldh a, [rTAC]
    ld hl, sp-$18
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    and c
    cp $f7
    rst $38
    pop hl
    ld a, a
    ld [hl], b
    cp a
    or l
    ld a, a
    rst $28
    ldh a, [$df]
    ldh [$df], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    rst $38
    add b
    rst $38
    add b
    push af
    add b
    db $eb
    add b
    rst $30
    add b
    db $ed
    nop
    push af
    nop
    rst $18
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
    ld b, b
    cp a
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    db $fc
    rst $38
    and a
    ld e, e
    cp a
    jp $ffff


    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    sbc h
    rst $38
    ld sp, $b3ff
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sub h
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    rst $38
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
    sbc $ff
    ld bc, $0145
    ld a, c
    add c
    dec b
    ld bc, $ab01
    push af
    rst $38
    rst $38
    ld h, [hl]
    rst $38
    set 7, a
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    dec h
    ei
    ld a, a
    rst $38
    inc hl
    rst $38
    sbc h
    jr c, @+$1a

    sbc h
    ld a, h
    sbc h
    rst $18
    rst $38
    nop
    rst $38
    ld a, [de]
    rst $38
    sbc h
    ld [hl], c
    add sp, $10
    ld a, [c]
    ld [$0ff7], sp
    ldh [$1f], a
    inc bc
    cp $f8
    rlca
    ld a, [$fc07]
    inc bc
    nop
    rst $38
    ld l, h
    sub e
    rst $38
    nop
    ccf
    ret nz

    ld c, b
    rst $38
    call nz, $03fb
    db $fc
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    db $fd
    dec d
    ld [$ff00], a
    add a
    ld a, b
    nop
    rst $38
    ld b, c
    cp [hl]
    add h
    ld a, e
    ld bc, $82fe
    ld a, l
    sub c
    ld l, [hl]
    ld a, [hl+]
    push de
    ld d, l
    xor d
    xor d
    ld d, l
    ld b, c
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec h
    jp c, $ff00

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$01f7], sp
    cp $ff
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
    cp $ff
    rst $38
    ld a, l
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    db $ed
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp $ff
    rst $20
    rst $38
    ret nz

    rst $38
    jr @+$01

    db $fd
    rst $38
    ldh a, [rIE]
    ld [bc], a
    db $fd
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld b, e
    db $fc
    or l
    ld a, [$fff4]
    ld b, $f9
    rst $38
    rst $38
    rst $38
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
    ret c

    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    sbc h
    rst $38
    rst $08
    rst $38
    ld [hl], b
    rst $38
    or b
    adc a
    add b
    adc a
    ret


    adc a
    ret


    add a
    sbc $c7
    rst $38
    rst $38
    inc b
    rst $38
    add b
    rst $38
    jp z, $b4ff

    rst $38
    add b
    rst $38
    inc b
    rst $38
    and b
    rst $38
    adc a
    ld a, a
    ld [$4e0f], sp
    rlca
    rst $10
    rst $38
    nop
    rst $38
    rst $28
    ld a, a
    ld l, $f7
    db $dd
    rst $30
    rra

jr_04c_68d9:
    rst $38
    nop
    rst $38
    inc b
    rst $38
    add b
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $28
    ld a, a
    rst $38
    nop
    inc bc
    nop
    and h
    ld e, e
    ld d, c
    xor [hl]
    ld a, [bc]
    push af
    sub l
    ld l, d
    jr nz, jr_04c_68d9

    ld d, b
    xor a
    ld a, [bc]
    push af
    ld d, h

Jump_04c_68ff:
    xor e
    and b
    ld e, a
    ld d, c
    xor [hl]
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    and b
    ld e, a
    nop
    rst $38
    ld [bc], a
    db $fd
    inc b
    ei
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    ldh a, [$ec]
    rst $38
    inc c
    di
    pop bc
    rst $38
    ld hl, sp-$28
    call c, $d8ff
    rst $38
    db $fc
    rst $38
    ld [$90ff], sp
    rst $38
    ld [bc], a
    db $fd
    ret nz

    rst $38
    db $e4
    rst $38
    inc b
    rst $38
    adc d
    db $fd
    add c
    cp $1f
    ldh [rPCM34], a
    adc b
    rlca
    ld hl, sp+$32
    call z, $8084
    ld [$c7e0], a
    ret nz

    add e
    add b
    dec c
    nop
    ld [$c600], sp
    ret nz

    ld [bc], a
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
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    db $fd
    cp $fe

jr_04c_6995:
    rst $38
    rst $38
    rst $38
    ld hl, $b5ff
    rst $38
    inc de
    rst $38
    nop
    rst $38
    nop
    or l
    jr nz, @+$01

jr_04c_69a4:
    jr nz, @+$01

    ld c, c
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld e, h
    cp a
    jr nc, jr_04c_6995

    sub b
    ld a, [c]
    jr jr_04c_69a4

    ld bc, $07fb
    rst $38
    ld a, l
    cp $00
    rst $38
    and $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    push hl
    rst $38
    push de
    ld a, a
    rst $08
    ld [hl], a
    rst $30
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    inc d
    rst $38
    nop
    rst $38
    nop

jr_04c_69d9:
    rst $38
    cpl
    rst $38
    rst $38
    nop
    rst $38

jr_04c_69df:
    nop
    xor d

jr_04c_69e1:
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    dec b
    ld a, [$55aa]
    ld de, $2aee
    push de
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec d
    ld [$55aa], a
    ld d, l
    xor d
    xor d
    ld d, l
    dec d
    ld [$55aa], a
    nop
    rst $38
    jr nz, jr_04c_69e1

    ld b, c
    cp [hl]
    ld [bc], a
    db $fd
    jr z, jr_04c_69df

    jr nc, jr_04c_69d9

    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $d3
    db $fd
    set 7, l
    xor b
    ld [de], a
    db $e4
    rst $38
    add b
    rst $38
    adc a
    ldh a, [$80]
    rst $38
    rla
    add sp, $2f
    ret nc

    cp e
    ld b, b
    push af
    db $f4
    ld h, b
    ld h, b
    ld e, $00
    ld [bc], a
    nop
    ld l, b
    nop
    ld h, b
    nop
    ld a, c
    nop
    jr z, jr_04c_6a50

jr_04c_6a50:
    ldh a, [rP1]
    dec b
    nop
    adc a
    nop
    rra
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    ld h, b
    nop
    rst $38
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    xor c
    rst $38
    db $ed
    rst $38
    xor e
    rst $38
    db $10
    rst $28
    ld de, $d0a0
    ld bc, $4134
    add c
    ld [hl], l
    adc a
    pop af
    ld a, [$d6ff]
    rst $38
    adc b
    rst $30
    ld bc, $04aa
    ei
    add b
    ld a, [c]
    ld a, [hl+]
    rst $38
    ld a, [$00ff]
    rst $38
    ld a, [hl]
    pop af
    ld [hl], b
    sbc a
    db $10
    rra
    or b
    ld a, a
    ret nz

    rst $38
    nop
    rst $38
    ld a, [c]
    rst $38
    inc h
    sub e
    or c
    add b
    adc l
    add b
    rst $38
    rst $38
    ld b, b
    cp a
    inc e
    rst $38
    db $dd
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr c, jr_04c_6aef

    ld [hl], b
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    rst $38
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    ld d, b
    xor a
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    nop
    rst $38
    and d
    ld e, l
    ld b, l
    cp d
    xor d
    ld d, l
    ld de, $aaee
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    nop
    rst $38
    ld a, [bc]
    push af
    nop
    rst $38
    ld bc, $03fe
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop

jr_04c_6aef:
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
    nop

Call_04c_6aff:
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    dec c
    ld [bc], a
    db $fd
    nop
    rst $38
    inc b
    rst $38
    ld l, c
    add [hl]
    xor l
    ld d, d
    rst $30
    nop
    ld a, [$af00]
    nop
    inc a
    nop
    ld e, b
    nop
    rrca
    nop
    and l
    nop
    nop
    nop
    nop
    nop
    rla
    nop
    ld [$d000], sp
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    sub $ff
    rst $38
    add e
    db $e4
    inc bc
    inc bc
    rst $38
    add a
    ld a, a
    add a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    add h
    rst $38
    jp $a73c


    ld e, h
    and h
    ld e, a
    inc b
    ld a, h
    ld b, $ff
    add a
    rst $38
    dec b
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add hl, bc
    rst $38
    rrca
    ld hl, sp+$0f
    rst $38
    rrca
    rst $38
    nop
    rst $38
    pop bc
    ld a, [hl]
    ld b, b
    ld a, a
    ld d, b
    ld a, a
    ret nz

    rst $38
    nop
    rst $38
    adc l
    di
    rst $00
    rst $38
    jp nz, $01ff

    rst $38
    call nz, $107b
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    inc h
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld h, a
    rst $38
    adc a
    ld a, a
    rst $38
    nop
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    ldh a, [rIF]
    db $f4
    rrca
    db $fc
    rrca
    ldh a, [rIF]
    db $f4
    rrca
    pop af
    ld c, $ff
    nop
    rst $38
    nop
    nop
    rst $38
    sub b
    ld l, a
    db $10
    rst $28
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
    inc b
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
    rst $38
    nop
    rst $38
    nop
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
    set 7, b
    rlca
    ret nz

    ccf
    ldh [rNR13], a
    ei
    rrca
    ld [hl], a
    sbc a
    reti


    daa
    db $fd
    ld [bc], a
    ld hl, sp+$07
    jp c, $d30a

    ld bc, $0103
    call nz, Call_000_1000
    nop
    ld [de], a
    nop
    add b
    nop
    ld [bc], a
    nop
    ld bc, $6200
    nop
    cp c
    nop
    pop hl
    nop
    ldh [rP1], a
    cp $00
    cp $00
    ei
    nop
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    sbc a
    rst $38
    xor l
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld de, $91ff
    rst $38
    or c
    ld a, a
    sub b
    ld l, a
    sub d
    db $fd
    ld a, a
    nop
    ld b, b
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    cp [hl]
    ld b, c
    rst $38
    rst $38
    db $fd
    rst $38
    ld b, e
    rst $38
    ld [c], a
    dec a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$31
    rst $38
    rst $38
    or c
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld d, a
    rst $28
    ld bc, $00ff

jr_04c_6ca3:
    rst $38
    add hl, bc
    rst $38
    ld bc, $02ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld de, $09fe
    cp $05
    cp $03
    cp $11
    xor $01
    cp $21
    cp $11
    cp $09
    cp $01
    cp $03
    cp $0d
    cp $17
    ld hl, sp-$29
    jr c, @+$01

    nop
    rst $38
    nop
    sub b
    ld l, a
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    db $10
    rst $28
    jr c, jr_04c_6ca3

    dec e
    ld [c], a
    inc c
    di
    rst $38
    nop
    rst $38
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
    ld a, e
    rst $38
    ld a, a
    add b
    ld a, [$4af7]
    and c
    ld e, $e0
    rst $38
    rst $38
    rst $30
    rst $38
    add hl, bc
    rst $30
    add d
    ld a, a
    nop
    rst $38
    and b
    ld e, a
    ld [bc], a
    rst $38
    xor e
    rst $18
    add b
    ld a, a
    inc hl
    rst $18
    sbc h
    ld b, e
    ld a, l
    ld [bc], a
    ld a, [hl-]
    ld a, [hl-]
    ld b, a
    rlca
    sub d
    ld [bc], a
    call nc, $b800
    nop
    jp nz, $d902

    nop
    dec b
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
    ld a, a
    rst $38
    ld [hl], c
    rst $38
    ld h, d
    or [hl]
    sub h
    ld [$ec82], a
    ld c, b
    xor h
    call z, $fffc
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    ld d, h
    inc l
    rst $00
    ccf
    ld hl, $ffdc
    rst $38
    call c, $0fff
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [de]
    push af
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld bc, $04ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc b
    ld a, a
    call c, Call_04c_75eb
    set 3, e
    db $e3
    rst $38
    rst $38
    db $fc
    rst $38
    cp $03
    ld a, [hl]
    add e
    ld l, h
    rst $38
    inc de
    rst $38
    dec de
    db $f4
    dec e
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    nop
    rst $38
    ld de, $2aee
    push de
    ld d, l
    xor d
    xor b
    ld d, a
    ld d, h
    xor e
    ld [$03f7], sp
    db $fc
    adc [hl]
    ld [hl], c
    ld c, c
    or [hl]
    add d
    ld a, l
    ld b, c
    cp [hl]
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, b
    xor a
    adc d
    ld [hl], l
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$0ff7], sp
    ldh a, [rNR11]
    xor $00
    rst $38
    nop
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
    nop
    nop
    ccf
    rst $38
    rst $38
    rst $38
    and d
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    add d
    rst $38
    add a
    rst $38
    ld b, e
    rst $38
    rst $30
    rst $38
    dec c
    rst $38
    rst $30
    rst $38
    ld [hl], $ff
    add b
    rst $38
    ld bc, $09ff
    rst $38
    rlca
    rst $38
    ld b, e
    cp a
    add d
    ld a, a
    dec bc
    rst $38
    and d
    ld e, a
    ldh a, [rIF]
    ret nz

    rst $38
    ld d, e
    rrca
    dec de
    rra
    inc e
    rra
    cp h
    rra
    cp l
    ccf
    rst $38
    rst $38
    cp a
    rst $38
    nop
    rst $38
    rst $30
    ld [$ff55], sp
    ld a, l
    nop
    ld hl, sp-$01
    sbc a
    rst $38
    rst $38
    rst $38
    ret


    rst $38
    ld a, a
    rst $38
    ld de, $1dff
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $38
    sub a
    rst $38
    nop

jr_04c_6e2d:
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc h
    sbc d
    ld b, d
    cp [hl]
    rst $38
    rst $38
    rlca

jr_04c_6e3f:
    ld hl, sp+$00
    rst $38
    rrca
    ldh a, [rVBK]
    or b
    rrca
    ldh a, [$f0]
    rrca
    cpl
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    and b
    ld e, a
    ld d, h
    xor e
    xor d
    ld d, l
    ld [hl], h
    adc e
    jr nc, jr_04c_6e2d

    jr nz, jr_04c_6e3f

    xor b
    ld d, a
    ld d, h
    xor e
    and b
    ld e, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, c
    xor [hl]
    and d
    ld e, l
    ld d, l
    xor d
    xor d
    ld d, l
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    inc b
    ei
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    ldh [rIE], a
    di
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld e, a
    rst $38
    db $ec
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $08
    rst $38
    ld [hl-], a
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    daa
    rst $38
    ld h, [hl]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    dec e
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    set 7, e
    db $eb
    rst $28
    db $eb
    rst $38
    or [hl]
    rst $38
    ld de, $80ff
    ld a, a
    sub $2c
    ld [$0aff], sp
    db $fd
    rst $38
    rst $38
    cp $ff
    set 7, a
    rst $38
    rst $38
    ei
    ld hl, sp+$5b
    ldh a, [$f0]
    ldh a, [$fb]
    db $f4
    ld d, c
    rst $38
    dec b
    ld a, [$ea15]
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    ccf
    ret nz

    cp $ff
    ei
    cp $ff
    cp $ff
    nop
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    ld a, [$8005]
    rst $38
    adc c
    cp $0f
    rst $38
    ld b, b
    rst $38
    add b
    ld a, a
    nop
    rst $38
    and b
    ld e, a
    ld d, b
    xor a
    add b
    ld a, a
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    ld a, b
    add a
    add c
    ld a, [hl]
    nop
    rst $38
    db $10
    rst $28
    add c
    ld a, [hl]
    ld d, h
    xor e
    xor b
    ld d, a
    ld b, b

jr_04c_6f3f:
    cp a
    inc b
    ei
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04c_6f3f

    or b
    rst $38
    xor d
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    db $76
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld [$eaf7], sp
    cp b
    cp b
    cp b
    cp b
    cp a
    cp [hl]
    cp a
    cp h
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    add b
    rst $38
    cp [hl]
    nop
    dec l
    rst $38
    sbc [hl]
    ld h, b
    rst $38
    rst $38
    db $fd
    rst $38
    nop
    rst $38
    ld b, d
    db $fd
    sbc b
    ld l, a
    ld e, h
    rrca
    ld d, c
    dec e
    or h
    ccf
    dec e
    ei
    cp $01
    add b
    ld a, a
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, e
    cp a
    ld [bc], a
    rst $38
    dec a
    rst $38
    rra
    cp $1c
    cp $dc
    rst $38
    ld a, l
    cp $df
    rst $38
    rst $38
    rst $38
    rrca
    or $ef
    scf
    rst $28
    ld [hl], $eb
    scf
    rst $28
    scf
    db $eb
    scf
    rst $28
    dec sp
    db $eb
    ld [hl], $de
    inc sp
    rst $38
    inc de
    ei
    rla
    and $1b
    db $fc
    inc de
    db $e4
    dec de
    db $fc
    inc de
    ld hl, sp+$17
    db $fc
    dec de
    or $19
    db $e4
    dec de
    rst $20
    add hl, de
    rst $20
    add hl, de
    rst $20
    add hl, de
    db $e3

jr_04c_700d:
    rra
    rst $38
    rra
    rst $38
    rra
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
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $10fe
    rst $28
    jr nz, jr_04c_700d

    nop
    rst $38
    ld a, a
    add b
    ld e, a
    rst $38
    rst $18
    ldh [$f5], a
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld e, [hl]
    rst $38
    sbc $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or a

jr_04c_7053:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [hl]
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $08
    nop
    and e
    db $fc
    ei
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    jr nz, jr_04c_7053

    ld c, b
    nop
    add sp, -$08
    ret nz

    db $10
    ldh a, [$e0]
    ldh [$ea], a
    ccf
    rst $38
    rrca
    rst $38
    sub b
    nop
    add e
    rra
    sbc a
    rst $38
    inc sp
    rst $38
    rst $38
    rst $38
    ld a, [bc]
    cp $f8
    ld [bc], a
    ld a, c
    db $fc
    ld a, [hl-]
    ld sp, hl
    ld a, $f1
    inc a
    db $e3
    add hl, bc
    cp $df
    add sp, -$41
    ld hl, sp+$78
    db $fc
    db $fc
    ld hl, sp-$07
    ld hl, sp-$08
    db $fc
    ld c, b
    db $fc
    adc h
    db $fc
    and e
    db $fd
    cp h
    rst $38
    ld e, [hl]
    adc l
    db $fc
    rst $38
    inc a
    rst $18
    ld c, h
    ld a, a
    ld a, a
    ld e, [hl]
    ld c, h
    ld a, a
    ld c, l
    ccf
    sbc c
    ccf
    ld sp, $68ff
    rst $38
    inc a
    ei
    ld h, $f3
    ld a, [hl+]
    rst $20
    dec l
    cp $7c
    cp e
    ld [de], a
    rst $38
    ld e, $fd
    dec d
    ld sp, hl
    inc de
    rst $30
    cpl
    rst $18
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
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    or h
    rst $38
    ld [c], a
    rra
    db $e3
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec sp
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
    rst $18
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc $ff
    ld l, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    ld [bc], a
    ret nz

    nop
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
    db $fd
    rst $38
    ccf
    rst $38
    nop
    nop
    inc b
    rrca

jr_04c_7148:
    ld e, $1e
    ld a, $7c
    ld hl, sp-$04
    jr c, jr_04c_7148

    pop af
    ldh a, [rTAC]
    inc bc
    daa
    rst $00
    adc a
    rst $08
    sub a
    sbc a
    ccf
    ccf
    ld [hl], a
    ld a, a
    ld a, e
    rst $38
    ei
    rst $38
    ei
    ei
    rst $18
    ld sp, hl
    db $fd
    ld sp, hl
    ei
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    jp hl


    ld a, l
    db $ed
    ld a, e
    ld a, d
    ld a, a
    ld [hl], $7f
    ccf
    ld a, a
    rst $38
    cp a
    xor a
    ld a, a
    xor a
    rst $38
    rst $38
    rst $38
    db $fc
    db $fd
    dec e
    db $fd
    call nc, Call_000_173f
    cp a
    call nc, $943b
    dec sp
    sbc h
    inc sp
    ld a, [hl]
    ld de, $03fc
    jp nc, $c40d

    dec de
    db $db
    rrca
    db $db
    adc a
    sbc [hl]
    sbc a
    sbc b
    cp a
    cp h
    rst $38
    cp h
    rst $38
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
    cp $ff
    db $fc
    rst $38
    push af
    ld a, [$f50a]
    inc d
    db $eb
    ld [bc], a
    db $fd
    nop
    rst $38
    rra
    ldh [rLCDC], a
    cp a
    dec bc
    db $f4
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    inc bc
    rst $38
    db $10
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff
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
    ld a, a
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    ld bc, $ed00
    cp $fc
    db $fc
    call c, $fbf9
    pop af
    db $e3
    di
    rst $00
    rst $20
    rst $08
    rst $08
    adc a
    rra
    rra
    rra
    ccf
    rra
    rra
    rra
    rst $38
    ld a, a
    rrca
    rra
    rra
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
    or $ff
    ei
    rst $38
    ld a, [$feff]
    rst $38
    db $db
    rst $38
    ld [$ceff], a
    db $fd
    db $ed
    rst $38
    push af
    rst $38
    jp hl


    rst $38
    rst $30
    db $fd
    db $e3
    cp $f4
    rst $38
    pop hl
    cp $d0
    rst $38
    pop bc
    cp $a1
    rst $38
    jp nc, Jump_04c_68ff

    db $fd
    ret z

    ldh a, [rLCDC]
    cp $f3
    rst $08
    ld b, l
    rst $38
    ld b, e
    rst $38
    ld b, a
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $30
    ld hl, sp-$21
    ldh [$bf], a
    ret nz

    rst $38
    nop
    ld a, a
    add b
    ccf

jr_04c_726f:
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld e, $e1
    adc b
    rst $30
    jp $dffc


    ldh [rIE], a
    nop
    and b
    ld e, a
    ld b, b
    cp a
    add d
    ld a, l
    nop
    rst $38
    ld b, d
    cp l
    add b
    ld a, a
    inc h
    db $db
    jr nz, jr_04c_726f

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
    ld bc, $02fe
    db $fd
    ld hl, $ffde
    nop
    rst $38
    nop
    inc sp
    db $fc
    ld hl, sp+$07
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
    ld a, a
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
    rst $38
    rst $38
    ld e, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $30
    rst $10
    rst $30
    and a
    di
    sbc a
    jp $dba2


    jp nz, $4d33

    di
    cp c
    rst $00
    ld [hl], l
    adc l
    pop hl
    ld de, $a545
    ld h, e
    pop hl
    sub c
    sub c
    inc h
    inc h
    call $f3c9
    or d
    call nz, $97c0
    sub e
    add h
    add h
    ld sp, hl
    reti


    or d
    or d
    ld h, [hl]
    call nz, Call_04c_59d9
    db $f4
    ld h, h
    call $efcd
    rst $20
    rst $28
    rst $28
    ld hl, sp-$01
    add sp, -$09
    and b
    rst $18
    pop bc
    ccf
    jp $c13f


    ccf
    add c
    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    adc a
    ld a, a
    rra
    rst $38
    sbc a
    ld a, a
    cp l
    ld a, [hl]
    daa
    ld hl, sp+$3f
    ret nz

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
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    inc b
    ei
    ld [bc], a
    db $fd
    nop
    rst $38
    db $10
    rst $28
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    jp $dffc


    rst $38
    rst $38
    rst $38
    rst $38
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
    inc b
    dec b
    ld b, $07
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
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_04c_7409

    ld a, [de]
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_04c_741a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_04c_742a

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_04c_743a

jr_04c_7409:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_04c_744a

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_04c_741a:
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
    nop
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    ld d, b

jr_04c_742a:
    ld d, c
    ld d, d
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    nop
    nop
    nop
    ld e, b
    ld d, e

jr_04c_743a:
    ld d, e
    ld e, c
    ld d, e
    ld d, e
    ld d, e
    ld d, e
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

jr_04c_744a:
    ld h, h
    ld h, l
    ld h, [hl]
    ld d, e
    ld d, e
    ld d, e
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
    ld d, e
    ld d, e
    ld d, e
    ld [hl], h
    ld [hl], l
    nop
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    nop
    ld a, h
    ld a, l
    ld a, [hl]
    ld d, e
    ld d, e
    ld d, e
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    add a
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    nop
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
    nop
    and e
    and h
    and l
    and [hl]
    and a
    nop
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
    ld d, e
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    nop
    add $c7
    ret z

    ret


    jp z, $cccb

    call $ce53
    rst $08
    ret nc

    pop de
    jp nc, Jump_000_00d3

    call nc, $99d5
    sub $d7
    ret c

    reti


    ld d, e
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
    ld [$0000], a
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld b, $00
    ld b, $06
    ld b, $00
    rlca
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    rlca
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    rlca
    rlca
    ld b, $00
    ld b, $00
    inc bc
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $07
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    inc b
    ld b, $06
    ld b, $06
    ld b, $00
    rlca
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $00
    rlca
    nop
    rlca
    rlca
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
    rlca
    ld bc, $0101
    ld bc, $0001
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    ld bc, $0101
    ld b, $06
    ld b, $06
    nop
    ld b, $02
    ld b, $06

Call_04c_75eb:
    ld b, $07
    ld b, $01
    ld bc, $0101
    ld b, $07
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    rlca
    ld bc, $0100
    ld bc, $0707
    ld b, $06
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    ld bc, $0100
    ld bc, $0601
    ld b, $06
    nop
    ld b, $06
    ld h, $06
    ld b, $06
    rlca
    nop
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $18
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $30
    rrca
    pop af
    rrca

Call_04c_7680:
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld a, b
    add a
    db $fc
    add e
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
    cp a
    ret nz

    cp $c3
    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $18
    db $e3
    db $dd
    db $e3
    db $fd
    db $e3
    db $fd
    db $e3
    db $fd
    db $e3
    rst $38
    pop hl
    rst $38
    pop hl
    rst $28
    pop af
    rst $28
    pop af
    xor $f1
    cp $f1
    cp $f1
    rst $38
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $38
    db $fc
    cp $fd
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
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
    ld a, a
    rst $38
    rra
    rst $30
    rrca
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $18
    ldh [$fb], a
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
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $e9
    cp $f8
    rst $38
    cp $fd
    cp h
    db $fc
    db $fd
    db $fc
    db $fc
    db $fd
    db $fd
    cp $de
    db $fd
    ld a, l
    cp $74
    ei
    ld [hl], d
    call c, Call_04c_7680
    push bc
    ld e, [hl]
    ret nz

    ld a, a
    sub c
    ld l, l
    and b
    ld a, a
    add hl, hl
    rst $28
    xor b
    ld l, a
    add sp, $3f
    ldh [$3b], a
    and c
    ld a, [hl]
    pop hl
    ccf
    jp $8e3f


    ld [hl], a
    ld c, d
    cp a
    call nc, $d03f
    ccf
    db $f4
    rra
    ldh [$1f], a
    db $e4
    rra
    ldh [$1f], a
    pop hl
    rra
    pop hl
    rra
    rst $30
    rrca
    ei
    rrca
    ld a, a
    adc a
    ld a, a
    adc a
    db $fc
    adc a
    di
    adc [hl]
    pop af
    adc [hl]
    rst $38
    add h
    rst $30
    adc b
    cp a
    ret nz

    cp [hl]
    pop bc
    cp a
    pop bc
    rst $38
    jp nz, $c7f8

    cp $c5
    cp $c5
    call c, $dde5
    push hl
    db $dd
    push hl
    ld sp, hl
    push hl
    ei
    push hl
    db $fc
    db $e3
    db $fc
    db $e3
    rst $28
    ld a, [c]
    xor $f3
    db $ed
    di
    db $fd
    di
    cp $f1
    rst $38
    pop af
    cp $f1
    rst $30
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    cp $fd
    cp $fd
    db $fd
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
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
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld l, [hl]
    rst $38
    sbc [hl]
    ld a, [hl]
    and $1e
    db $fc
    ld [bc], a
    cp $01
    rst $18
    ldh [$fb], a
    db $fc
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
    add b
    rst $38
    nop
    call nc, Call_04c_7f80
    db $10
    xor $40
    and b
    nop
    ld [bc], a
    ret nz

    jr nz, jr_04c_785f

    xor e
    nop
    and b
    nop
    sub b
    nop
    ret nz

    add b
    ld [bc], a
    nop
    rlca
    inc b
    inc bc
    adc d
    scf
    adc d
    ld [hl], a
    ld [hl], c
    cp a
    ld [bc], a
    rst $38
    and h
    rst $38
    ld [$30ff], sp
    rst $38
    ld h, c
    rst $38
    ld b, l
    rst $38
    add c
    rst $38
    dec bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    dec hl
    cp $09
    cp $57
    db $fc
    xor a
    ld hl, sp+$5e
    ld sp, hl
    db $ed
    di
    cpl
    di
    sbc c
    rst $20
    cp e
    rst $00
    or a
    rst $08
    ld h, a
    sbc a
    ld h, a
    sbc a
    ret


jr_04c_785f:
    ccf
    jp hl


    ccf
    di
    ccf
    or d
    ld a, a
    ld [hl], $ff
    ld [hl], $ff
    inc [hl]
    rst $38
    ld a, $ff
    inc e
    rst $38
    ld d, b
    rst $38
    inc d
    rst $38
    sub b
    rst $38
    sbc b
    rst $38
    or c
    rst $38
    ldh a, [$bf]
    add sp, -$01
    ldh [rIE], a
    db $e4
    rst $38
    push hl
    rst $38
    ret nc

    rst $38
    pop de
    rst $38
    call nc, $85ff
    rst $38
    pop bc
    rst $38
    and c
    rst $38
    and a
    rst $38
    adc [hl]
    rst $38
    xor d
    rst $38
    rra
    rst $38
    xor e
    rst $38
    sub a
    rst $38
    ld h, a
    rst $38
    ld d, [hl]
    rst $38
    nop
    rst $38
    sub l
    ld a, [hl]
    inc de
    cp $99
    ld a, [hl]
    dec b
    cp $91
    ld a, [hl]
    add [hl]
    ld a, l
    add d
    ld a, l
    and e
    ld a, l
    adc [hl]
    ld a, c
    ld [hl], e
    cp l
    ld c, h
    cp e
    db $e4
    dec sp
    ld b, h
    cp e
    adc $33
    ret c

    scf
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    ld a, a
    db $fc
    rst $38
    ld a, [hl]
    cp a
    ld a, [hl]
    ld a, a
    cp [hl]
    cp $bf
    cp [hl]
    rst $18
    cp $df
    adc $ff
    cp $ef
    and $ff
    cp $f7
    ld a, [$fff7]
    ei
    cp $fb
    ei
    db $fd
    rst $38
    db $fd
    db $fc
    rst $38
    rst $38
    cp $fe
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
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $18
    rst $18
    ccf
    rst $30
    rrca
    ld a, l
    add e
    rst $28
    ldh a, [$fd]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    xor a
    rrca
    rst $30
    rlca
    rlca
    rlca
    daa
    rlca
    or a
    rlca
    rlca
    rlca
    rlca
    ccf
    rlca
    ld b, a
    ccf
    inc b
    cp a
    adc h
    ld a, a
    dec sp
    rst $38
    and e
    rst $38
    ld c, [hl]
    rst $38
    call Call_000_1cfe
    rst $38
    dec sp
    db $fd
    ld d, l
    ei
    cp a
    di
    rst $28
    rst $30
    rst $18
    rst $20
    rst $18
    rst $28
    xor a
    rst $18
    cp $9f
    ld e, a
    cp a
    cp a
    ld a, a
    jp nc, $3b23

    add e
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    cp $ff
    sbc $ff
    cp $ff
    db $fc
    rst $38
    adc b
    rst $38
    jr @+$01

    sbc d
    db $fd
    dec sp
    db $fd
    xor e
    db $fd
    ld e, c
    rst $38
    add hl, sp
    rst $38
    ld a, a
    ei
    or a
    ei
    inc sp
    rst $38
    or e
    rst $38
    ld a, a
    rst $30
    ld [hl], l
    rst $38
    ld l, a
    rst $30
    ld h, a
    rst $38
    and e
    rst $38
    ld a, e
    rst $28
    rst $38
    rst $28
    rst $08
    rst $38
    rst $08
    rst $38
    ld l, a
    rst $18
    ld a, a
    rst $18
    cp [hl]
    rst $18
    add e
    rst $38
    add [hl]
    rst $38
    call z, $04bf
    rst $38
    ld h, [hl]
    cp a
    ld b, $ff
    sub [hl]
    ld a, a
    adc $7f
    adc $7f
    ld c, [hl]
    rst $38
    ld a, [bc]
    rst $38
    inc h
    rst $38
    inc c
    rst $38
    sbc l
    rst $38
    ld c, c
    rst $38
    dec l
    rst $38
    dec c
    rst $38
    adc l
    rst $38
    ld e, c
    rst $38
    sbc c
    rst $38
    ld c, c
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    cp d
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
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
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $30
    add b
    rst $38
    add b
    rst $38
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$7f], a
    ldh [$7f], a
    pop af
    ld a, a
    pop af
    rra
    pop af
    rrca
    pop af
    ld e, a
    pop af
    ld c, a
    pop af
    ld a, a
    pop af
    rst $28
    pop af
    cp a
    pop af
    cp a
    pop af
    sbc a
    pop af
    cp a
    pop af
    cp a
    pop af
    cp a
    pop af
    rra
    pop af
    rra
    pop af
    xor a
    pop af
    cp a
    ld sp, hl
    adc a
    ld sp, hl
    adc a
    ld sp, hl
    add [hl]
    ld sp, hl
    adc [hl]
    ld sp, hl
    sub $f9
    adc $f9
    sub $f9
    add $f9
    set 7, l
    jp c, $9afd

    db $fd
    sbc d
    db $fd
    ld a, [de]
    db $fd
    ld e, d
    db $fd
    ld b, d
    db $fd
    and $fd
    add $fd
    add $fd
    and $fd
    and $fd
    ld [$e6ff], a
    rst $38
    xor $ff
    and $ff
    ld b, [hl]
    rst $38
    jp nz, $c6ff

    rst $38
    add $ff
    and [hl]
    rst $38
    and a
    rst $38
    or d
    rst $38
    or e
    rst $38
    ld a, [c]
    rst $38
    ld [hl], e
    rst $38
    ld [hl], c
    cp $71
    cp $61
    cp $23
    db $fc
    ld h, e
    db $fc
    rst $20
    db $fc
    db $e3
    db $fc
    ld [hl], e
    db $fc
    rst $08
    db $fc
    rst $10
    db $fc
    rst $38
    db $fc
    db $db
    db $fc
    rst $18
    db $fc
    rst $10
    db $fc
    rst $10
    db $fc
    rst $10
    db $fc
    rst $10
    db $fc
    sub a
    db $fc
    xor e
    db $fc
    xor e
    db $fc
    cp e
    db $fc
    xor a
    db $fc
    xor e
    db $fc
    xor a
    db $fc
    cp a
    db $fc
    ld a, e
    db $fc
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$6f
    ld hl, sp+$6f
    ld hl, sp+$7f
    ld hl, sp+$6f
    ld hl, sp+$5f
    ld hl, sp+$7f
    ld hl, sp-$11
    ld hl, sp-$21
    ld hl, sp-$01
    ld hl, sp-$21
    ld hl, sp-$21
    ld hl, sp-$21
    ld hl, sp-$21
    ld hl, sp-$21
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$21
    ld hl, sp-$21
    ld hl, sp-$01
    ld hl, sp-$21
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$bf]
    ldh a, [$bf]
    ldh a, [$3f]
    ldh a, [$bf]
    ldh a, [rSC]
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    dec de
    db $e4
    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    cpl
    ret nc

    cpl
    ret nc

    ccf
    ret nz

    rra
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
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    cp $ff
    cp $ff
    rst $38
    sbc a
    sbc a
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
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
    jp Jump_04c_7ffc


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
    inc b
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
    db $10
    rst $28
    inc b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cpl
    ret nc

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

    rst $18
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
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    or $00
    cp $00
    db $fc
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $30
    ld hl, sp-$17
    cp $fa
    rst $38
    ld l, a
    cp $2e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    nop
    rst $38
    db $fc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fd
    inc b
    db $fd
    inc b
    db $e4
    inc b
    call nc, Call_04c_5404
    inc b
    ld d, h
    inc b
    push bc
    inc b
    add h
    inc b
    add h
    inc b
    inc b
    cp $fc
    cp $03
    db $fc
    add e
    db $fc
    jp $c13c


    ld a, $41
    cp [hl]
    push bc
    ld a, $d1
    ld a, $1f
    ei
    ld e, $fb
    ld a, a
    ei
    db $fc
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
    rst $38
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
    inc b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    nop
    rst $38
    ld bc, $00ff
    db $eb
    nop
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    cp $00
    rst $38

jr_04c_7c6f:
    nop
    nop
    rst $38
    and b
    ld e, a
    ld bc, $03fe
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
    db $10
    rst $28
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04c_7c6f

    nop
    rst $38
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
    ld a, [$7a00]
    nop
    jp c, $fa00

    nop
    db $eb
    nop
    ld [hl], e
    nop
    sub e
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    ld a, [de]
    nop
    ld [bc], a
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
    ld b, $00
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
    ld bc, $0f03
    rlca
    rra
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    sbc $ff
    cp $ff
    cp $ff
    and d
    rst $18
    jp nc, $f6af

    rst $38
    db $e4
    ei
    ld a, [$fdf7]
    di
    add sp, -$09
    ld [$fef7], a
    rst $20
    ld hl, sp-$19
    or $f9
    db $f4
    rst $38
    pop af
    rst $38
    or b
    ld a, a
    or h
    rst $38
    db $f4
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    or d
    rst $38
    db $d3
    rst $28
    push de
    ld sp, hl
    xor a
    rst $38
    add a
    ei
    sub a
    rst $38
    db $eb
    rst $38
    or a
    ld a, a
    ld a, a
    ei
    ld a, a
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    rst $38
    ei
    ei

jr_04c_7d29:
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    sbc a
    rst $38
    and a
    rst $38
    xor a
    rst $10
    db $d3
    ld l, a
    di

jr_04c_7d37:
    cpl
    jp $f73f


    dec de
    ei
    rrca
    rst $30
    rrca
    ld b, a
    cp a
    rlca
    rst $38
    ld b, e
    cp a
    ld b, b
    cp a
    ld a, [de]
    push hl
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    jr z, jr_04c_7d29

    nop
    rst $38
    nop
    rst $38
    jr nz, jr_04c_7d37

    ld b, c
    cp [hl]
    inc b
    ei
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    stop
    jr jr_04c_7d74

jr_04c_7d74:
    nop
    nop
    nop
    nop
    ld b, b
    nop
    pop bc
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    nop
    nop
    jr nz, jr_04c_7d88

jr_04c_7d88:
    nop
    nop
    ld [$0000], sp
    nop
    ld b, $00
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
    adc b
    rst $38
    nop
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
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    ld b, d
    rst $38
    ld d, e
    rst $38
    ld [bc], a
    rst $38
    jp nz, $11ff

    rst $38
    ld b, d
    rst $38
    ld [$62ff], sp
    rst $38
    sub l
    rst $38
    ld b, [hl]
    rst $38
    ld d, d
    rst $38
    inc sp
    rst $38
    ld d, c
    rst $38
    ld d, h
    rst $38
    ld [hl], h
    rst $38
    ld [hl], a
    rst $38
    sbc $ff
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ec
    rst $38
    rst $38
    rst $38
    ccf
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
    nop
    rst $38
    nop

Call_04c_7e03:
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    ld b, c
    cp [hl]
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_04c_7e22

jr_04c_7e22:
    ld e, b
    nop
    ld a, b
    nop
    jr z, jr_04c_7e28

jr_04c_7e28:
    ld b, b
    nop
    ret nz

    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    nop
    jr nz, jr_04c_7e38

jr_04c_7e38:
    nop
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
    nop
    nop
    nop
    ld bc, $0303
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
    rst $38
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
    ld d, a
    rst $38
    rla
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rlca
    rst $38
    daa
    rst $38
    daa
    rst $38
    add a
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rla
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    xor a
    rst $38
    rrca
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cpl
    rst $18
    rst $28
    rra
    rst $28
    rra
    rst $28
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
    ldh [rP1], a
    ldh [rP1], a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $30
    rra
    rst $28
    rra
    rst $38
    rrca
    push af
    rrca
    ei
    rlca
    rst $38

jr_04c_7ee3:
    inc bc
    rst $38

jr_04c_7ee5:
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
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    add b
    ld a, a
    db $10
    rst $28
    nop
    rst $38
    jr nz, jr_04c_7ee5

    nop
    rst $38
    ld b, b
    cp a
    jr z, jr_04c_7ee3

    nop
    rst $38
    ld [bc], a
    db $fd
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    ld [$0810], sp
    db $10
    ld [$0810], sp
    ld [$0810], sp
    db $10
    ld [$0010], sp
    db $10
    ld bc, $0713
    rra
    rra
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
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
    ld [$01f7], sp
    cp $02
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    db $10
    rst $28
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
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
    nop
    ld [$0800], sp
    nop

Call_04c_7f80:
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld b, b
    nop
    nop
    nop
    dec b
    inc bc
    rrca
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
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
    db $fd
    rst $38
    db $fc
    di
    rst $38
    ldh a, [$f3]
    ld hl, sp-$0b
    rst $38
    ld a, [$faf5]
    push af
    ld hl, sp-$09
    ei
    db $f4
    push hl
    ld a, [$fbf4]
    ld [$e7ff], a
    ld a, [$ffff]

Jump_04c_7ffc:
    rst $28
    cp $fb
    db $fe
