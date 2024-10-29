SECTION "ROM Bank $087", ROMX[$4000], BANK[$87]

    ld d, b
    db $e3
    ld a, b
    add a
    ld h, e
    sbc h
    inc h
    db $db
    inc de
    rst $28
    adc l
    ld a, $96
    ld a, c
    ld [bc], a
    db $fd
    and a
    ret c

    add l
    ld a, d
    db $18, $e7
    di
    inc c
    adc [hl]
    ld [hl], c
    di
    inc c
    jp nz, Jump_000_293d

    rst $10
    ld c, a
    cp a
    jr c, @+$01

    ldh a, [rIE]
    adc l
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    inc a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr c, @+$01

    ld [hl], a
    rst $38
    cp $ff
    ret nz

    rst $38
    nop
    rst $38
    ld h, c
    cp $84
    ei
    nop
    rst $38
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
    rlca
    rlca
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_087_4085

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_087_4095

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_087_40a5

    ld a, [hl+]
    rlca
    dec hl

Jump_087_407f:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_087_40b6

jr_087_4085:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$09

    rlca
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_087_4095:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    rlca
    rlca
    rlca
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_087_40a5:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    rlca
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_087_40b6:
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
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
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
    ld [hl], d
    ld [hl], d
    add c
    add d
    ld [hl], l
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
    ld [hl], d
    add c
    adc a

Call_087_40ef:
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
    ld [hl], d
    add c
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
    ld [hl], d
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

    ld [hl], l
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
    rlca
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
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld hl, sp+$15
    ld d, $17
    rlca
    jr jr_087_419a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_087_41aa

    ld [hl+], a
    inc hl
    inc h
    rlca
    rlca
    dec h
    ld h, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_087_419a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_087_41aa:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_087_41fb:
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
    inc bc
    inc bc
    ld bc, $0000
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
    inc bc
    inc bc
    ld bc, $0004
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
    inc bc
    inc bc
    ld bc, $0004
    nop
    nop
    nop
    nop
    inc b
    nop

Jump_087_423f:
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0008], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0820], sp
    ld [$0008], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0000], sp
    ld [$9208], sp
    rst $38
    add b
    rst $38
    add b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld e, b
    rst $38
    ld [$0aff], sp
    rst $38
    inc hl
    rst $38
    dec b
    rst $38
    ld [hl+], a
    rst $38
    ld [$6a7f], a
    rst $38
    ld c, [hl]
    rst $38
    ld b, [hl]
    rst $38
    ld b, [hl]
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    add hl, bc
    rst $38
    ld hl, $23ff
    rst $38
    add hl, hl
    rst $38
    inc sp
    rst $38
    xor e
    rst $38
    ld [hl], e
    rst $38
    or e
    rst $38
    ld d, [hl]
    rst $38
    ld b, a
    rst $38
    ld d, [hl]
    rst $38
    ld b, a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
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

Jump_087_433c:
    ld a, a

Jump_087_433d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    ld hl, sp-$30
    ldh [$80], a
    inc bc
    inc d
    dec bc
    dec de
    rst $38
    ld a, [de]
    rst $38
    ld a, [de]
    rst $38
    ld a, [de]
    rst $38
    inc d
    rst $38
    ld [hl], h
    cp a
    or h
    rst $38
    or h
    rst $38
    or h
    rst $38
    ld a, h
    rst $30
    ld a, [hl]
    rst $30
    ld h, l
    rst $38
    ld h, d
    rst $38
    ld a, d
    rst $28
    jp z, $feff

    rst $38
    sbc $ff
    cp $ff
    rst $18
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    or $ff
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
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
    rst $10
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
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
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, [hl]
    rst $38
    db $fd
    rst $38
    ld a, h
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld a, [$f5ff]
    rst $38
    push af
    rst $38
    push af
    rst $38
    or $ff
    ei
    rst $38
    ld sp, hl
    rst $38
    db $ec
    rst $38
    or $ff
    push af
    rst $38
    db $f4
    rst $38
    di
    rst $38
    push af
    rst $38
    rst $20
    rst $38
    push hl
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    db $db
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
    cp a
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc e
    rst $38
    daa
    rst $38
    cpl
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    cp $ff
    ldh a, [$f8]
    pop hl
    ret nz

    add h
    inc bc
    jr nz, jr_087_44c9

    ret nz

    ld a, a
    inc bc
    rst $38
    rra
    rst $38
    and c
    ld a, a
    db $eb
    ld a, a
    bit 7, a
    rst $20
    ld a, a
    ld d, e
    rst $38
    ld d, a
    rst $38
    ld b, a
    rst $38
    rst $00
    rst $38
    jp $c7ff


    rst $38
    add $ff
    ld l, [hl]
    rst $38
    xor [hl]

jr_087_44c9:
    rst $38
    add $ff
    sbc [hl]
    rst $38
    sbc $ff
    sbc $ff
    sbc $ff
    sbc $ff
    cp a
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    db $db
    rst $38
    ld a, c
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld [hl], e
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    or $fb
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], d
    rst $28
    ld h, b
    rst $38
    ldh [$df], a
    ret nz

    rst $38
    ret nz

    rst $38
    call z, $f0f7
    rst $18
    jp nz, $8aff

    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    add l
    rst $38
    add c
    rst $38
    add e
    rst $38
    and h
    rst $38
    add h
    rst $38
    and c
    rst $38
    ld bc, $21ff
    rst $38
    inc h
    rst $38
    add e
    rst $38
    and e
    rst $38
    dec h
    rst $38
    add l
    rst $38
    dec b
    rst $38
    ld h, a
    rst $38
    dec hl
    rst $38
    sub a
    rst $38
    ld c, e
    rst $38
    dec hl
    rst $38
    dec hl
    rst $38
    dec hl
    rst $38
    ld h, a
    rst $38
    ld [de], a
    rst $38
    ld d, a
    rst $38
    ld h, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp l
    rst $38
    xor a
    rst $38
    cp [hl]
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    ld l, [hl]
    rst $38
    rst $18
    rst $38
    db $dd
    rst $38
    cp l
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    cp a
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
    rst $18
    cp $f0
    ld hl, sp-$20
    pop bc
    ld [$0107], sp
    ccf
    inc bc
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
    sub c
    rst $28
    add c
    rst $38
    ld bc, $11ff
    rst $38
    ld sp, $60ff
    rst $38
    and d
    rst $38
    and b
    rst $38
    and d
    rst $38
    ld [c], a
    rst $38
    db $e3
    cp $e2
    rst $38
    and d
    rst $38
    db $f4
    rst $38
    ld a, [$24ff]
    rst $38
    ld b, l
    cp $a5
    cp $ad
    cp $2d
    cp $ad
    cp $6c
    rst $38
    db $ec
    rst $38
    jp hl


    rst $38
    db $fd
    rst $38
    reti


    rst $38
    db $fd
    rst $38
    cp d
    rst $38
    ld [$f2ff], a
    rst $38
    jp nc, $f2ff

    rst $38
    jp nc, $f2ff

    rst $38
    di
    rst $38
    or c
    rst $38
    dec [hl]
    rst $38
    or l
    rst $38
    inc sp
    rst $38
    dec h
    rst $38
    dec [hl]
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    ld [hl], a
    rst $38
    ld a, e
    rst $38
    ld h, a
    rst $38
    ld l, [hl]
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, e
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    db $db
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    rst $10
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
    cp [hl]
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
    ld a, a
    rst $38
    ld a, l
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $f8
    ldh a, [$83]
    pop bc
    ld bc, $670f
    ccf
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38

jr_087_4675:
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [$fb]
    ret nz

    ldh [$58], a
    and a
    adc h
    ld h, a
    jr jr_087_4675

    ld l, b
    sbc a
    add sp, $1f
    ld b, b
    cp a
    ld [$1aff], sp
    db $ed
    ld [$18ff], sp
    rst $28
    jr z, jr_087_4675

    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld de, $11ff
    rst $38
    ld bc, $35ff
    rst $38
    sub l
    rst $38
    or c
    rst $38
    xor e
    rst $38
    sub c
    rst $38
    dec h
    rst $38
    ld d, e
    rst $38
    daa
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    xor d
    rst $38
    ld [hl+], a
    rst $38
    ld l, d
    rst $38
    adc $ff
    ld h, d
    rst $38
    add $ff
    xor $ff
    sub $ff
    rst $10
    rst $38
    db $ed
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    ld a, l
    rst $38
    cp [hl]
    rst $38
    cp l
    rst $38
    cp [hl]
    rst $38
    cp d
    rst $38
    xor [hl]
    rst $38
    xor l
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    adc $ff
    ld l, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, e
    rst $38
    ld c, e
    rst $38
    ld e, e
    rst $38
    ld e, l
    rst $38
    ld e, c
    rst $38
    sbc e
    rst $38
    ld e, l
    rst $38
    reti


    rst $38
    reti


    rst $38
    db $db
    rst $38
    or a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    db $dd
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    ldh a, [$87]
    jp Jump_000_1f0f


    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    nop

jr_087_474b:
    rst $38
    nop
    ld l, l
    nop
    nop
    ld e, b
    rst $28
    ld b, b
    rst $38
    ld e, b
    rst $28
    ld e, b
    rst $28
    ld b, b
    rst $38
    jr jr_087_474b

    sbc h
    db $eb
    adc b
    rst $38
    add hl, hl
    sbc $88
    rst $38
    add c
    cp $84
    rst $38
    add b
    rst $38
    add e
    cp $11
    cp $31
    sbc $13
    cp $13
    cp $18
    rst $38
    ld a, [bc]
    rst $38
    inc [hl]
    rst $18
    inc c
    rst $30
    inc d
    rst $28
    nop

Jump_087_477f:
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld bc, $00ff
    rst $38
    ld hl, $25ff
    rst $38
    add hl, hl
    rst $30
    ld bc, $41ff
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    ld b, l
    rst $38
    ld b, c
    rst $38
    ld c, c
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    adc e
    rst $38
    adc d
    rst $38
    dec bc
    rst $38
    adc d
    rst $38
    adc e
    rst $38
    sub e
    rst $38
    adc e
    rst $38
    sub a
    rst $38
    rla
    rst $38
    sub a
    rst $38
    sbc a
    rst $38
    sbc l
    rst $38
    ccf
    rst $38
    ld c, $ff
    ccf
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
    dec sp
    rst $38
    dec a
    rst $38
    xor l
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    cp e
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    ld sp, hl
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
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $30
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
    rst $28
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
    db $fd
    rst $38
    ld hl, sp-$0f
    adc e
    rst $00
    ccf
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, [c]
    db $fd
    call nc, $80eb
    rst $38
    nop
    rst $38
    nop
    rst $38
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

Jump_087_483d:
    add b
    nop

Call_087_483f:
    nop
    push de
    ld a, [hl+]
    ld d, l
    ld a, [hl+]
    call c, $ba27
    ld b, l
    cp b
    ld b, a
    ld hl, sp+$07
    and d
    ld e, l
    xor b
    ld d, a
    jp hl


    ld d, [hl]
    cp b
    ld b, a
    xor b
    ld d, a
    xor b
    ld d, a
    or d
    ld c, l
    dec h
    jp c, $d12e

    daa
    ret c

    and l
    jp c, $f803

    dec b
    ld hl, sp-$7b
    ld hl, sp-$80
    db $fc
    nop
    db $fc
    pop hl
    cp [hl]
    and h
    ei
    ld c, h
    cp e
    inc hl
    db $fc
    ld bc, $20fe
    rst $38
    nop
    rst $38
    add h
    ei
    rlca
    ld sp, hl
    nop
    rst $38
    add hl, bc
    rst $30
    ld [bc], a
    db $fd
    ld b, d
    db $fd
    ld bc, $01ff
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld hl, $12ff
    rst $38
    ld a, [bc]
    rst $38
    add hl, hl
    rst $38
    and a
    rst $38
    ld b, [hl]
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld h, d
    rst $38
    ret z

    rst $38
    and [hl]
    rst $38
    ld h, e
    cp $aa
    rst $38
    rst $00
    cp $e3
    cp $fb
    cp $db
    cp $5b
    cp $5f
    cp $6d
    cp $4f
    cp $ef
    cp $ff
    cp $7d
    cp $ed
    cp $f7
    cp $fd
    cp $ed
    cp $ac
    rst $38
    db $dd
    cp $fc
    rst $38
    db $fc

jr_087_48d3:
    rst $38
    db $fc
    rst $38
    cp $fd
    db $fc
    rst $38
    db $fc
    rst $38
    adc h
    rst $38
    add h
    rst $38
    add h
    rst $38
    call nz, $94ff
    rst $38
    add h
    rst $38
    adc h
    rst $38
    inc c
    rst $38
    ld c, b
    cp a
    cp b
    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    xor b
    rst $38
    sbc b
    rst $38
    ld a, b
    rst $38
    ret c

    rst $38
    jr @+$01

    cp b
    rst $38
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
    ldh a, [rIE]
    or $ff
    ldh a, [rIE]
    nop
    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    add h
    rst $38
    or b
    rst $38
    sub b
    rst $38
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
    ld hl, sp+$00
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    ld [hl], b
    rst $08

jr_087_4943:
    jr nc, jr_087_48d3

    ld [hl], b
    rrca
    ldh a, [$3e]
    ldh [$2e], a
    ldh a, [$2f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [rIE], a
    jr nz, jr_087_4943

    ld sp, $a17e
    call $ee22
    ld hl, $21fe
    cp $21
    rst $38
    ld hl, $659b
    sbc a
    ld h, c
    db $fc
    inc hl
    ld e, a
    ld hl, $217e
    ld b, a
    ld sp, hl
    ld [bc], a
    db $fd
    sub a
    ld l, c
    add a
    ld a, c
    db $fc
    nop
    adc e
    inc [hl]
    adc l
    add b
    ld a, [de]
    adc a
    dec e
    add d
    add b
    nop
    sbc b
    ldh [$93], a
    pop hl
    ld [de], a
    pop hl
    inc de
    ldh [rNR22], a
    ldh [rNR30], a
    pop hl
    dec de
    ldh [rNR23], a
    db $e3
    dec d
    ld [c], a
    db $dd
    ld [c], a
    ld e, l
    ld [c], a
    ld e, l
    ld [c], a
    ld e, l
    ld [c], a
    ld e, a
    ld [c], a
    ld e, a
    ld [c], a
    rst $38
    ld [c], a
    ld c, a
    ld a, [c]
    ld b, a
    ld a, [$fec3]
    jp nz, $c0ff

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, e
    add b
    add a
    ld b, e
    ret nz

    inc bc
    add $00
    ld b, h
    add b
    ld h, [hl]
    add b
    ld a, [hl]
    add b
    cp $00
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ccf
    ret nz

    ld a, a
    add b
    ld a, e
    add h
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl-]
    push bc
    ld h, e
    sbc h
    inc hl
    call c, $fc03
    ld hl, $01de
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc b
    ei
    inc b
    ei
    inc b
    ei
    ld bc, $07ff
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f8]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, c
    add h
    ld a, c
    add h
    ld a, h
    add h
    ld hl, sp-$7c
    ld hl, sp-$7c
    cp b
    add h
    ld a, c
    add h
    inc [hl]
    add h
    ld [hl], c
    add h
    ld [hl], b
    add h
    ld [hl], h
    add h
    ld a, b
    add h
    ld a, c
    add h
    ld a, c
    add h
    inc [hl]
    add h
    add sp, $04
    push hl
    inc b
    ld a, c
    add h
    add sp, $04
    add sp, $04
    ld hl, sp+$04
    ei
    inc b
    or e
    ld c, h
    ld hl, $39d4
    call nz, $c43b
    add b
    nop
    ccf
    ret nz

    jr nz, jr_087_4a6a

jr_087_4a6a:
    db $10
    rst $38
    db $fc
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    rst $38
    db $fd
    nop
    ld a, l
    add b
    ccf
    ret nz

    ccf

jr_087_4a7d:
    ret nz

    cpl
    ret nc

    rra
    ldh [$03], a
    ld hl, sp-$80
    db $fc
    ret nz

    cp $c8
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    jr nz, jr_087_4a7d

    nop
    rst $38
    add b
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
    nop
    jr nz, jr_087_4ab4

jr_087_4ab4:
    add b
    nop
    cp b
    nop
    reti


    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fc
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
    rst $28
    db $10
    cp [hl]
    ld b, b

jr_087_4ace:
    adc b
    nop
    dec b
    ld a, [$f708]
    ld b, h
    cp e
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    ei
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
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38

jr_087_4aee:
    rst $38
    rst $38
    db $10
    rst $38
    nop
    rst $38

jr_087_4af4:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor b

jr_087_4afc:
    nop
    nop
    nop
    nop
    ld a, a
    nop
    ld c, a
    jr nc, jr_087_4b74

    db $10

jr_087_4b06:
    ld l, a
    db $10
    ld c, a
    db $10
    dec l
    ld [de], a
    rst $28
    db $10
    xor a
    db $10
    rst $28
    db $10
    ld e, l
    ld [hl+], a
    rst $28
    db $10
    rst $08
    jr nc, jr_087_4af4

    inc h
    xor a
    db $10
    rst $08
    jr nc, jr_087_4aee

    jr nc, jr_087_4afc

    inc h
    db $db
    inc h
    sbc e
    inc h
    call z, $db33
    inc h
    swap h
    ld c, a
    jr nc, jr_087_4b06

    jr z, jr_087_4ace

    ld h, d
    adc e
    ld [hl], h
    ld [bc], a
    nop
    ret nz

    nop
    nop
    nop
    sbc c
    ld h, [hl]
    ccf
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    sub c
    nop
    db $db
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
    add b
    ld h, $d9
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    rst $38
    nop
    rst $38
    nop
    or a
    ld c, b
    and b
    ld e, a

jr_087_4b68:
    nop
    rst $38

jr_087_4b6a:
    nop
    rst $38

jr_087_4b6c:
    nop
    rst $38
    nop
    rst $38
    ld a, [hl+]
    push de

jr_087_4b72:
    rst $38
    rst $38

jr_087_4b74:
    rst $38
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
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
    add c
    nop
    sbc b
    nop
    reti


    nop
    sbc c
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
    ld a, e
    add b
    nop
    nop
    ld [hl], a
    adc b
    ld a, a
    add b
    ld [hl], a
    adc b

jr_087_4ba6:
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, e
    rst $38
    ld h, h
    sbc e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
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
    ld h, b
    nop
    nop
    nop
    rra
    nop
    ld a, b
    nop
    add b
    nop
    ld hl, $3900
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or l
    add h
    jr nc, jr_087_4b68

    jr z, jr_087_4b6a

    jr c, jr_087_4b6c

    ld a, b
    add h
    ld a, [hl-]
    add h
    jr c, jr_087_4b72

    ld a, b
    add h
    ld hl, sp-$7c
    ld e, d
    and h
    ld a, b
    add h
    add sp, -$6c
    ret nc

    xor h
    sbc b
    and h
    ld l, b
    sub h
    adc b
    or h
    jr jr_087_4ba6

    sbc l
    and h
    ret z

    or h
    adc b
    or h
    add h
    cp b
    ret nz

    cp h
    ld d, l
    xor b
    ret c

    and h
    ret nc

    xor h
    ret nz

    cp h
    ret c

    inc h
    ld d, h
    nop
    ld bc, $7e00
    nop
    ret nz

    ccf
    nop
    nop
    inc bc
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld a, h
    inc bc
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ret z

    scf
    ld b, b
    ccf
    ld b, d
    cp a
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld c, e

Call_087_4c3f:
    rst $38
    pop de
    ld l, $51
    xor [hl]
    ld [$08f7], sp
    rst $30
    ld [bc], a
    db $fd
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld a, [hl-]
    push bc
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
    nop
    and e
    nop
    sub e
    nop
    rst $00
    nop
    rst $10
    nop

jr_087_4c74:
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld b, $00
    inc [hl]
    set 7, c
    ld b, $79
    add [hl]
    ld [hl+], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc l
    rst $38
    add hl, sp
    add $28
    rst $10
    add hl, hl
    sub $28
    rst $10
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
    nop
    rst $38
    nop
    pop de
    nop
    ld [$ff00], sp
    nop
    cp a
    nop
    ld b, b
    nop
    add b
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
    add hl, bc
    jr nz, jr_087_4c74

    nop
    ld bc, $d500
    nop
    ret nz

    nop
    ld hl, $3000
    nop
    or c
    nop
    dec b
    db $10
    or b
    nop
    sub d
    nop
    stop
    or b
    nop
    nop
    stop
    db $10
    jr nz, jr_087_4cf0

    ld b, e
    db $10
    ld h, e
    db $10
    ld d, b
    db $10
    ld d, b
    db $10
    jr nz, jr_087_4cfa

    inc d
    db $10
    jr c, jr_087_4cfe

    db $ec
    db $10

jr_087_4cf0:
    or a
    db $10
    or l
    db $10
    ld [hl], a
    db $10
    add hl, sp
    nop
    ret z

    inc [hl]

jr_087_4cfa:
    ld [hl], b
    ld bc, $f139

jr_087_4cfe:
    add hl, hl
    ld de, $0d03
    add c
    rrca
    add c
    adc a
    ld d, c
    adc a
    ld e, c
    add a
    ld sp, $358f
    adc a
    ld de, $118f
    adc a
    dec a
    add a
    ld e, l
    add a
    ld [hl], l
    adc a
    ld sp, $75cf
    adc a
    rst $30
    adc a
    or l
    rst $08
    dec [hl]
    rst $08
    daa
    rst $18
    and a
    rst $18
    rlca
    rst $38
    daa
    rst $18
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    nop
    rst $00
    add b
    rst $00
    add b
    push bc

jr_087_4d37:
    ld [bc], a
    ld b, a
    nop
    ld b, a
    nop
    ld b, a
    nop
    rst $00
    nop
    rst $08
    nop
    call $9502
    ld b, d
    cp a
    ld b, b
    rst $38
    nop
    add e
    ld b, b
    and e

jr_087_4d4d:
    ld b, b
    and c
    ld a, [hl]
    cp c
    ld a, [hl]
    sub b
    ld a, a
    ldh a, [$7f]
    cp b
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$7f
    cp b
    ld a, a
    jr nc, jr_087_4ddf

    jr nz, @+$01

    ld b, b
    rst $38
    ld h, b
    sbc a
    jr nc, jr_087_4d37

    ldh [$df], a
    ldh a, [$cf]
    jr nz, jr_087_4d4d

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    ccf
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
    ld h, b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    inc hl
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
    adc b
    ld [hl], a
    ld d, $eb
    inc h
    ei
    ld h, b
    add a
    ld [hl], d
    add l
    jr c, @-$77

    ld d, b
    add a
    ld d, c
    add a
    ld de, $0887
    add a
    ld [$4087], sp
    add a
    nop
    add a
    nop
    add a
    ld b, e
    add l
    ld [bc], a
    add l
    dec bc
    add l
    dec b
    add e
    ld b, h
    add e
    ld c, [hl]
    add c
    ld c, h
    add e
    cp h
    ld b, e
    ret c

    rlca
    cp h

jr_087_4ddf:
    ld b, e
    db $fc
    inc bc
    cp h
    ld b, e
    cp h
    ld b, e
    add hl, sp
    jp Jump_087_63dc


    xor h
    ld d, e
    db $fd
    ld b, d
    cp l
    ld b, d
    rst $38
    ld b, b
    cp d
    ld b, l
    rst $38
    ld b, b
    ld a, [c]
    ld c, l
    ld a, [c]
    ld c, l
    xor $51
    rst $38
    ld b, b
    cp [hl]

jr_087_4dff:
    ld b, c
    ld e, $e1
    ld e, $e1
    inc l
    db $d3
    add b
    ld a, e
    inc a
    db $e3
    sbc d
    ld h, l
    dec de
    push hl
    ld e, e
    push hl
    inc de
    db $ed
    sub e
    db $ed
    sub b
    rst $28
    jr c, jr_087_4dff

    ld l, b
    or a
    cp b
    rst $20
    db $e4
    or a
    add h
    rst $30
    xor b
    rst $30
    xor h
    rst $30
    xor d
    rst $30
    cp b
    rst $30
    and b
    rst $38
    and c
    rst $38
    and d
    rst $38
    ret


    rst $30
    xor b
    rst $30
    ld d, b
    rst $38
    ld h, b
    rst $38
    ld h, h
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    dec [hl]
    rst $38
    or a
    rst $38
    ld b, c
    rst $38
    dec de
    rst $38
    ld d, a
    rst $38
    pop de
    ld a, a
    scf
    rst $38
    ld d, e
    rst $38
    ld d, d
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld e, d
    rst $38
    ld e, e
    rst $38
    ld e, e
    rst $38
    ld e, e
    rst $38
    ld d, e
    rst $38
    ld d, e
    rst $38
    ld e, c
    rst $38
    ld e, e
    rst $38
    ld d, d
    rst $38
    ld e, e
    rst $38
    ld a, a
    rst $38
    dec l
    rst $38
    ld e, e
    rst $38
    ld e, e
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    ld l, l
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    dec l
    rst $38
    ld a, [hl+]
    rst $38
    db $10
    rst $38
    ld [hl], $ff
    jr nc, @+$01

    inc [hl]
    rst $38
    dec e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
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
    rra
    ldh [rIF], a
    ldh a, [rNR31]
    db $e4
    dec e
    ld [c], a
    ld [de], a
    push hl
    ld [bc], a
    push af
    inc c
    di
    add hl, bc
    or $0d
    ld a, [c]
    inc c
    di
    ld d, $f3
    rrca
    ld a, [c]
    ld c, $f2
    ld e, d
    db $f4
    ld a, [bc]
    db $f4
    ld b, h
    ld hl, sp+$00
    ld sp, hl
    inc bc
    ld sp, hl
    add hl, sp
    di
    daa
    di
    inc sp
    rst $20
    ld d, a
    rst $20
    rst $00
    rst $28
    cp [hl]
    rst $08
    adc [hl]
    rst $18
    ld e, l
    sbc a
    inc e
    cp a
    dec sp
    cp [hl]
    ld hl, sp+$3f
    ld [hl], $7d
    ld a, [c]
    ld a, l
    ld l, l
    ld a, [$7e20]
    inc b
    ld [hl], b
    ld d, b
    jr nz, jr_087_4f57

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
    add h
    nop
    ldh [rP1], a
    db $e4
    nop
    ldh a, [rP1]
    ld [hl], h
    add b
    db $f4
    nop
    ld [hl], b
    add b
    ld [hl], h
    add b
    ld h, h
    add b
    ld [hl], h
    add b
    ld [hl], b
    add b
    ld [hl], d
    add b
    ld [hl-], a
    ret nz

    ld a, [$fa80]
    add b
    cp d
    ret nz

    cp d
    ret nz

    cp [hl]
    ret nz

    cp h
    jp nz, $c2b9

    cp [hl]
    pop bc
    cp [hl]
    ret nz

    cp a
    ret nz

    sbc l
    ldh [$bf], a
    ret nz

    adc a
    ldh a, [$57]
    add sp, -$61
    ldh [$1f], a
    ldh [rDMA], a
    ld sp, hl
    add [hl]
    ld sp, hl
    ld b, e
    db $fc
    ld b, e
    db $fc
    jp nz, $c3fd

    db $fc
    ld b, d
    db $fd
    ld b, d
    db $fd
    pop bc
    cp $43
    db $fc
    pop bc
    cp $c1
    cp $41
    cp $e0

jr_087_4f57:
    rst $38
    pop hl
    cp $a1
    cp $a0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    and b
    rst $38
    and $ff
    add sp, -$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [$c8ff]

jr_087_4f89:
    rst $38
    ld a, [de]
    rst $28
    ld l, b
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld [$01fe], sp
    cp $00
    rst $38
    nop
    push af
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
    ld b, b
    nop
    nop
    nop
    jr z, jr_087_4f89

    inc [hl]
    res 1, h
    ld [hl], e
    call nc, $ac6b
    ld d, e
    ret c

    ld e, a
    sbc h
    ld e, a
    ld e, h
    sbc a
    adc h
    rra
    dec c
    ld e, $1e
    rrca
    inc c
    rra
    ld c, $1f
    sbc $0f
    ld a, $cf
    sbc [hl]
    rst $08
    adc [hl]
    rst $08
    cp [hl]
    rst $08
    adc [hl]
    rst $08
    sbc [hl]
    rst $08
    xor [hl]
    rst $08
    and [hl]
    rst $08
    scf
    rst $08
    ld [hl], a
    adc a
    or $8f
    or a
    ld c, a
    or a
    ld c, a
    scf
    rrca
    sub a
    rrca
    rla
    adc a
    sbc e
    rlca
    jr @-$77

    sbc b
    rlca
    sbc b
    rlca
    sbc b
    rlca
    sub b
    rrca
    sbc b
    rlca
    ret c

    rlca
    jr jr_087_5045

    ld d, b
    rrca
    ld b, b
    rrca
    db $10
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    ld c, a
    jr nz, jr_087_505d

    jr nz, jr_087_505f

    ld h, b
    rrca
    ld l, b
    rlca
    ld b, b
    cpl
    ld l, b
    rlca
    ld [$0827], sp
    daa
    nop
    daa
    ld b, b
    daa
    db $10
    cpl
    ld [$2037], sp
    daa
    jr nz, @+$61

    ld c, b
    sbc a
    ld c, b
    rla
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    call c, $ec07
    rra
    db $f4
    ccf
    ld l, h
    di
    db $fc
    di
    call z, $ecf3
    inc de
    db $ec
    inc de
    db $e4

jr_087_5045:
    dec de
    db $e4
    dec de
    db $e4
    dec de
    db $e4
    dec de
    ld a, [hl]
    adc c
    db $76
    adc c
    db $76
    adc c
    cp $09
    ld a, d
    adc l
    ld a, [hl]
    adc c
    ld e, d
    xor l
    ld d, d
    xor l
    ld h, d

jr_087_505d:
    sbc l
    ld b, d

jr_087_505f:
    cp l
    ld b, [hl]
    cp l
    ld b, d
    cp l
    ld b, $fd
    nop
    rst $38
    ld h, c
    sbc [hl]
    dec b

jr_087_506b:
    cp $25
    sbc $05
    cp $00
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld h, $df
    inc bc
    cp $00
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $30
    ld [bc], a
    db $e3
    jr jr_087_506b

    ld a, [de]
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
    db $10
    rrca
    ld b, h
    add e
    ld de, $0260
    inc e
    nop
    rlca
    adc e
    or $6b
    sub $82
    rst $38
    ld b, $fb
    ld b, [hl]
    ei
    ld b, c
    rst $38
    ld d, [hl]
    db $eb
    ld c, c
    rst $30
    ld bc, $43ff
    db $fd
    ld bc, $61ff
    rst $38
    jr nz, @+$01

    ld b, c
    rst $38
    ld hl, $61ff
    rst $38
    ld hl, $24ff
    rst $38
    db $10
    rst $38
    ld h, b
    rst $38
    or b
    rst $38
    and b
    rst $38
    or b
    rst $38
    ld [hl], b
    rst $38
    sub b
    rst $38
    ld d, b
    rst $38
    ld [hl-], a
    rst $38
    ld [hl], h
    rst $38
    or h
    rst $38
    ld e, h
    rst $38
    ld a, h
    rst $38
    ld e, c
    rst $38
    ld a, b
    rst $38
    cp [hl]
    rst $38
    ld e, d
    rst $38
    sbc a
    rst $38
    dec l
    rst $38
    cp [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    ld [hl], $ff
    ld d, $ff
    scf
    rst $38
    scf
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    rla
    rst $38
    inc de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    inc de
    rst $38
    add hl, de
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    add hl, de
    rst $38
    add hl, de
    rst $38
    dec e
    rst $38
    dec de
    rst $38
    dec e
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    adc l
    rst $38
    inc e
    rst $38
    ld a, c
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld a, l
    rst $38
    ld a, l
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
    cpl
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    cpl
    ld a, a
    xor a
    ld a, a
    rst $38
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
    inc a
    rst $38
    ld a, $ff
    cp l
    ld a, a
    rra
    ccf
    sbc l
    ccf
    ld e, a
    rst $38
    rra
    ccf
    rlca
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
    rrca
    push af
    ld [de], a
    db $ed
    db $10
    rst $28
    ld de, $43ee
    cp [hl]
    add b
    ld a, a
    ld [bc], a
    rst $38
    add e
    ld a, a
    ld [bc], a
    rst $38
    ld b, $fb
    ld bc, $06ff
    ei
    dec b
    ei
    dec b
    ei
    ld bc, $01ff
    rst $38
    add c
    rst $38
    add e
    db $fd
    add e
    db $fd
    and b
    rst $38
    ret z

    rst $38
    adc b
    rst $38
    and b
    rst $38
    and b
    rst $38
    ld b, l
    cp $40
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    xor c
    rst $38
    ld [hl], d
    rst $28
    jr nz, @+$01

    ld [hl+], a
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld a, d
    rst $30
    ld e, b
    rst $30
    ld a, c
    rst $30
    or b
    rst $38
    db $f4
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    ret c

    rst $38
    cp b
    rst $38
    jr c, @+$01

    cp b
    rst $38
    ld e, b
    rst $38
    ld e, d
    rst $38
    ld e, h
    rst $38
    sbc l
    rst $38
    ld a, l
    rst $38
    ld l, a
    rst $38
    or a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    db $76
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $28
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
    rlca
    rst $38
    add a
    ld a, a
    ret z

    rst $30
    sbc c
    db $fc
    rst $38
    rst $38
    ld a, l
    rst $38
    ld c, l
    rst $38
    xor l
    rst $38
    or $ff
    inc [hl]
    ld a, a
    inc c
    rra
    inc bc
    rlca
    nop
    ld bc, $ff8b
    add a
    rst $38
    rst $00
    rst $38
    jp $c7ff


    rst $38
    ld h, e
    rst $38
    ld b, e
    rst $38
    ld h, e
    rst $38
    dec hl
    rst $38
    inc hl
    rst $38
    dec [hl]
    rst $38
    ld de, $94ff
    rst $38
    ld a, c
    rst $18
    ld c, d
    rst $38
    ld c, b
    rst $38
    set 7, a
    ld c, d
    rst $38
    ld a, [hl]
    rst $28
    adc [hl]
    rst $38
    xor [hl]
    rst $38
    xor l
    rst $38
    and h
    rst $38
    add $ff
    xor d
    rst $38
    ld c, e
    rst $38
    ld e, e
    rst $38
    ld d, a
    rst $38
    jp Jump_087_477f


    rst $38
    ld c, a
    rst $38
    dec l
    rst $38
    ld l, a
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    dec a
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    cp a
    rst $38
    ld e, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $18
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
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $18
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
    rst $18
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
    ld a, a
    rst $38
    rra
    ld a, a
    ld c, a
    add a
    db $eb
    ldh a, [$cc]
    rst $38
    sbc a
    rst $38
    sub d
    rst $38
    ldh [rIE], a
    add [hl]
    rst $38
    rst $08
    rst $38
    ld l, b
    rst $38
    ld l, h
    rst $38
    db $f4
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    push bc
    rst $38
    sub l
    rst $38
    db $d3
    rst $38
    db $eb
    rst $38
    xor a
    rst $38
    push hl
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
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    di
    db $fd
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
    db $fd
    rst $38
    rst $38
    db $fd
    db $fc
    rst $38
    push af
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    or $ff
    cp [hl]
    rst $38
    or $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $30
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
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld h, a
    rra
    sbc l
    db $e3
    add e
    db $fc
    ld [$7aff], sp
    rst $38
    ld d, c
    rst $38
    db $f4
    rst $38
    ld a, $fd
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    call c, $ceff
    rst $38
    adc $ff
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $30
    rst $38
    push hl
    rst $38
    sub l
    rst $38
    ld b, l
    rst $38
    ld de, $51ff
    rst $38
    ld bc, $00ff
    rst $38
    inc c
    rst $38
    inc h
    rst $38
    ld hl, $40ff
    rst $38
    nop
    rst $38
    inc d
    rst $38
    ld [$1cff], sp
    rst $38
    jr z, @+$01

    ld [$21ff], sp
    rst $38
    and d
    ld a, a
    inc h
    rst $38
    add h
    rst $38
    ld h, $ff
    add d
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld bc, $09ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    sub b
    rst $38
    sbc l
    rst $38
    sbc l
    rst $38
    add l
    rst $38
    add $ff
    jp nz, $d2ff

    rst $38
    jp nc, $d6ff

    rst $38
    db $ed
    rst $38
    rst $30
    rst $38
    ld a, [c]
    rst $38
    di
    rst $38
    jp nc, $ecff

    rst $38
    ld l, b
    rst $38
    ld hl, sp-$01
    add sp, -$01
    ld hl, sp-$01
    cp l
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, [$f8ff]
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    ld a, a
    ld [hl], a
    adc a
    ld l, b
    pop af
    ret z

    cp $a1
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
    jr jr_087_5573

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_087_5583

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_087_5593

    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec l
    ld l, $2f
    jr nc, jr_087_55a4

jr_087_5573:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_087_55b4

    ld a, [hl-]
    dec sp
    dec l
    dec l
    inc a
    dec a
    ld a, $3f

jr_087_5583:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    dec l
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_087_5593:
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
    ld e, l
    ld e, [hl]
    ld e, a

jr_087_55a4:
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
    ld l, [hl]
    ld l, a

jr_087_55b4:
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
    ld a, [hl]
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    adc e
    adc e
    adc e
    adc e
    adc e
    adc e
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
    adc e
    adc e
    adc e
    adc e
    adc e
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    dec l
    xor b
    dec l
    xor c
    xor d
    adc e
    adc e
    adc e
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
    adc e
    adc e
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
    add $8b
    adc e
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $c6d3

    adc e
    adc e
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$c6], a
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    add $f0
    pop af
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $c6
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
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_087_5693

    ld a, [de]
    dec de
    inc e
    dec e
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

jr_087_5693:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $00
    nop
    nop
    nop
    inc b
    nop
    inc b
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
    inc b
    inc b
    inc b
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
    ld [bc], a
    inc b
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, [bc]
    ld [$0808], sp

jr_087_57a3:
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    ld a, [bc]
    cp $1f
    ld c, e
    ccf
    ld d, l
    dec sp
    cp $19
    ld l, a
    jr jr_087_5836

    jr jr_087_5838

    jr @-$23

    jr jr_087_583c

    jr jr_087_57fe

    jr jr_087_5800

    jr jr_087_5842

jr_087_57d7:
    jr jr_087_5804

    jr @-$0f

    jr jr_087_57d7

    add hl, bc
    xor a
    jr jr_087_5800

    ld [$198e], sp
    sbc e
    inc c
    db $dd
    ld a, [bc]
    sbc $08
    db $fd
    ld [$18ed], sp
    sbc $28
    cp $08
    ld a, [$fa0c]
    inc c
    ld sp, hl
    inc c
    ld hl, sp+$0c
    jp hl


    inc e
    adc h
    ld e, c

jr_087_57fe:
    ld hl, sp+$0d

jr_087_5800:
    add sp, $1d
    cp l
    inc c

jr_087_5804:
    jr z, jr_087_57a3

    cp l
    inc c
    db $fc
    dec c
    db $fd
    inc c
    push de
    inc l
    db $fd
    inc c
    sub h
    ld l, l
    ld e, h
    xor l
    rst $30
    inc c
    ld a, h
    adc l
    ld a, [hl]
    adc l
    cp h
    dec c
    or $0d
    or $0d
    ld l, l
    sub h
    rst $30
    inc c
    ld l, l
    sub h
    ld [hl], a
    adc h
    ld a, a
    add h
    rst $38
    inc b
    or $0c
    or $0c
    cp $04
    ld l, [hl]
    sub h
    ld l, [hl]
    sub h

jr_087_5836:
    ld l, h
    sub [hl]

jr_087_5838:
    ld l, h
    sub [hl]
    ld l, h
    sub [hl]

jr_087_583c:
    db $e4
    ld e, $04
    cp [hl]
    inc l
    sub [hl]

jr_087_5842:
    ld c, [hl]
    or [hl]
    ld c, h
    or [hl]
    dec l
    sub $0f
    or $45
    cp [hl]
    rlca
    cp $46
    cp a
    ld b, e
    cp [hl]
    inc c
    rst $30
    ld c, a
    or [hl]
    ld c, e
    or [hl]
    ld e, e
    and [hl]
    ld l, d
    sub a
    ld l, e
    sub [hl]
    swap [hl]
    ld a, d
    add a
    db $eb
    ld d, $77
    adc [hl]
    ld a, [$e207]
    rra
    inc hl
    sbc $aa
    ld d, a
    jp z, $8e37

    ld [hl], e
    add $3b
    ld c, d
    or a
    ld b, d
    cp a
    ld b, [hl]
    cp e
    ld b, d
    cp a
    ld b, [hl]
    cp e
    adc [hl]
    ld [hl], e
    ld c, $f3
    rlca
    ei
    ld a, [bc]
    rst $30
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    ei
    rlca
    ei
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld h, c
    sbc a
    ld l, e
    sub a
    inc bc
    rst $38
    inc bc
    rst $38
    dec bc
    rst $30
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    dec b
    ei
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $30
    ld bc, $01ff
    rst $38
    ld bc, $21ff
    rst $38
    or l
    ld c, [hl]
    ld d, l
    xor [hl]
    xor l
    sub $f7
    db $ec
    ld h, h
    cp $b9
    ld a, [hl]
    db $fc
    ld e, $7e
    inc c
    ld a, h
    ld b, $f8
    ld b, $ea
    inc b
    add sp, $06
    ld [$ec04], a
    ld [bc], a
    xor $00
    xor $00
    or b
    ld b, $ff
    nop
    ld [hl], c
    ld b, $e8
    ld b, $75
    ld [bc], a
    ld c, b
    ld h, $e1
    ld b, $49
    ld b, $e8
    ld [bc], a
    add sp, $02
    jp hl


    ld [bc], a
    ld [hl], h
    add d
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld a, b
    ld [bc], a
    ld hl, sp+$02
    db $fc
    ld [bc], a
    sbc $02
    cp $02
    ld a, [$f302]
    ld [bc], a
    di
    ld [bc], a
    jp nz, $c213

    inc de
    ld a, [$f803]
    inc bc
    ld a, [$fc03]
    inc bc
    ld a, [$d403]
    inc hl
    reti


    ld [hl+], a
    ret


    ld [hl+], a
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld sp, hl
    ld [bc], a
    ld l, b
    inc de
    ld hl, sp+$03
    ld a, b
    inc bc
    ld a, b
    inc bc
    ld a, d
    ld bc, $03fc
    ld a, [hl]
    ld bc, $01fe
    ld a, [hl]
    ld bc, $0d71
    rst $30
    add hl, bc
    ld a, a
    ld bc, $01be
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, $41
    ld a, [hl]
    ld bc, $453b
    ld l, e
    dec d
    dec sp
    ld b, l
    ld a, a
    ld bc, $156b
    db $eb
    dec d
    cp e
    ld b, l
    call $cf13
    ld de, $11ee
    cp a
    ld b, c
    ld a, [$ad01]
    ld b, c
    rst $38
    ld bc, $459a
    sbc e
    ld b, l
    cp e
    ld b, l
    ld a, a
    add c
    ld a, [hl]
    add c
    cp e
    ld b, l
    ld d, b
    xor a
    ld l, d
    sub l
    ld e, l
    and e
    call $d433
    dec hl
    ldh a, [rIF]
    or d
    ld c, l
    ldh [$1f], a
    ret nc

    cpl
    pop bc
    ccf
    jp $c13d


    ccf
    rlca
    cp c
    sub e
    dec l
    and e
    dec e
    add c
    ccf
    ld de, $f1af
    rrca
    ld d, c
    xor a
    ld d, l
    xor e
    ld b, c
    cp a
    ld b, b
    cp a
    pop de
    cpl
    ret nz

    ccf
    and c
    ld e, a
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    ld [c], a
    dec e
    ldh [$1f], a
    ret c

    cpl
    ld e, b
    xor a
    ld e, c
    xor a
    ld c, b
    cp a
    ld b, b
    cp a
    ld e, b
    xor a
    nop
    rst $38
    nop
    rst $38
    di
    inc c
    db $e3
    inc e
    ld h, d
    sbc l
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld [hl], e
    adc h
    ld [hl], e
    adc h
    ld sp, $358c
    adc h
    ld d, c
    adc h
    ld h, $9d
    ld h, a
    sbc h
    rst $20
    inc e
    ld [hl], e
    adc h
    ld h, h
    sbc l
    ld h, a
    sbc h
    ld h, [hl]
    sbc l
    inc h
    rst $18
    ld b, a
    cp h
    ld h, l
    sbc [hl]
    dec h
    sbc [hl]
    dec l
    sub [hl]
    rst $20
    inc e
    push bc
    ld a, $65
    sbc [hl]
    ld h, l
    sbc [hl]
    ld h, l
    sbc [hl]
    ld h, l
    sbc [hl]
    ld b, l
    cp [hl]
    ld h, l
    sbc [hl]
    ld h, h
    sbc a
    dec b
    sbc $75
    adc [hl]
    push hl
    ld e, $25
    sbc $e1
    ld e, $f5
    ld c, $15
    xor $b5
    ld c, [hl]
    xor b
    ld d, [hl]
    sub c
    ld l, [hl]
    and e
    ld e, [hl]
    pop de
    ld l, $d3
    ld l, $92
    ld l, a
    ld d, b
    xor a
    ld b, e
    cp [hl]
    ld e, b
    and a
    ld a, [bc]
    or a
    ld [de], a
    xor a
    ld d, d
    xor a
    jr @-$57

    inc de
    xor [hl]
    ld e, c
    and [hl]
    dec bc
    or [hl]
    cp e
    ld b, $93
    ld l, [hl]
    ld h, e
    sbc [hl]
    jp nz, Jump_087_423f

    cp a
    ld c, d
    or a
    ld [hl+], a
    rst $18
    and e
    ld e, [hl]
    adc d
    ld [hl], a
    dec hl
    ld d, [hl]
    ld h, d
    rra
    and e
    ld e, a
    and e
    ld e, a
    add e
    ld a, [hl]
    ld b, e
    cp [hl]
    ld [bc], a
    cp $0b
    or $23
    sbc $0b
    or $53
    xor $13
    xor $03
    cp $21
    sbc $02
    cp $01
    cp $31
    xor $03
    cp $11
    xor $03
    cp $23
    cp $13
    xor $13
    xor $13
    xor $13
    xor $00
    rst $38
    add d
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld h, e
    rst $38
    jp Jump_087_6fff


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

jr_087_5a9a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, [hl]
    ld hl, $205f
    ld d, a
    jr z, @-$61

    ld h, b
    dec de
    ld h, h
    rst $18
    jr nz, jr_087_5a9a

    jr nz, @+$2f

    ld d, b
    rst $38
    nop
    db $db
    inc h
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    ld a, [$e505]
    ld a, [de]
    ld a, [hl]
    ld bc, $00fb
    ld e, a
    and b
    rst $28
    db $10
    rst $28
    db $10
    call nc, $ef21
    db $10
    ld l, a
    sub b
    rst $28
    db $10
    ld l, l
    sub b
    db $fc
    ld de, $11ec
    xor $11
    jp z, $ee31

    ld de, $11ea
    jp hl


    ld [de], a
    xor $11
    adc $31
    rst $28
    db $10
    add sp, $15
    jp z, $ea35

    dec d
    db $ed
    ld [de], a
    adc $31
    ld l, a
    sub b
    ld c, b
    or e
    ld h, d
    sbc c
    ld h, b
    sbc e
    ld l, b
    sub e
    ld l, h
    sub e
    ld l, $d1
    dec c
    ld a, [c]
    dec l
    jp nc, $d22d

    inc c
    di
    inc [hl]
    db $db
    inc b
    ei
    or [hl]
    ld e, c
    ld [hl], $d9
    ld a, [hl-]
    push de
    nop
    rst $38
    ld c, $f1
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    di
    dec b
    ld a, [$f916]
    push af
    ld a, [$fb84]
    db $e4
    dec de
    push hl
    ld a, [de]
    db $e4
    dec de
    ld [hl], h
    dec bc
    db $fc
    dec bc
    db $e4
    dec de
    db $fc
    dec bc
    ldh [$1f], a
    db $fc
    dec bc
    db $ec
    dec bc
    ld [hl], b
    rrca
    db $fc
    rrca
    xor [hl]
    rra
    ld e, [hl]
    cpl
    ld a, $0f
    ld a, [hl]
    rrca
    ld a, [hl]
    rrca
    cp $0f
    cp [hl]
    rrca
    cp h
    rrca
    ret


    rra
    rst $28
    rra
    cp a
    ld e, a
    rst $18
    ccf
    rst $38
    ld a, a
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    and b
    ld a, a
    add b
    ld a, a
    ld h, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp nz, Jump_087_483d

    or a
    ld [$18f7], sp
    rst $30
    ld c, b
    cp a
    call nz, Call_087_4c3f
    or a
    sbc d
    ld h, l
    call z, $0c33
    di
    db $ec
    inc de
    xor d
    ld d, l
    sbc b
    ld h, a
    call z, $9833
    ld h, a
    call z, $9c33
    ld h, e
    call z, $cc33
    inc sp
    inc c
    di
    and h
    ld e, e
    xor b
    ld d, a
    adc $33
    rst $20
    dec de
    call z, Call_000_0d33
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    adc l
    ld [hl], d
    dec b
    ld a, [$d02f]
    adc h
    ld [hl], d
    dec c
    ld a, [c]
    adc l
    ld [hl], d
    adc l
    ld [hl], d
    xor l
    ld d, d
    dec c
    ld a, [c]
    adc l
    ld [hl], d
    dec c
    ld a, [c]
    dec d
    ld a, [$f708]
    add l
    ld a, d
    dec b
    ld a, [$f20d]
    ld c, l
    or d
    ld e, c

jr_087_5bfd:
    or [hl]
    ld c, c
    or [hl]
    ld d, l
    cp d
    ld b, l
    cp d
    pop de
    cp [hl]
    ld sp, hl
    or $d5
    ld a, [$be41]
    and c
    ld e, [hl]
    ld b, e
    cp [hl]
    ld bc, $41fe
    cp [hl]
    add hl, hl
    sub $25
    jp c, $ff00

    ld h, c
    sbc [hl]
    jr nz, jr_087_5bfd

    ld d, b
    xor a
    rst $18
    rst $38
    sbc a
    rst $30
    xor a
    rst $30
    db $e3
    pop bc
    ld l, c
    add b
    ld l, c
    add b
    ld a, b
    add b
    db $ec
    nop
    ldh [rP1], a
    sub c
    ld h, b
    rst $38
    rst $30
    rst $38
    rst $38
    sbc $ff
    db $dd
    cp $c4
    ld hl, sp-$19
    ld hl, sp-$1d
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
    ldh a, [$fc]
    ld a, [$fffd]
    rst $38
    rst $38
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
    cp $fc
    db $fc
    db $fd
    ei
    rst $38
    di
    rst $38
    rst $30
    di
    rst $30
    rst $28
    rst $10
    rst $28
    db $dd
    rst $38
    sbc a
    rst $38
    cpl
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
    ld d, h
    xor e
    ld e, h
    and e
    ld d, [hl]
    xor c
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld d, [hl]
    xor c
    ld a, h
    add e
    db $76
    adc c
    ld a, $81
    ld e, h
    and e
    ld a, [hl]
    add c
    ld a, d
    add l
    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld e, e
    and h
    ld l, h
    sub e
    jp c, Jump_087_5ca5

    and e
    ld c, c

Jump_087_5ca5:
    or [hl]
    ld d, l
    xor d
    ld e, [hl]
    and c
    ld c, d
    or l
    ld a, [bc]
    or l
    ld l, c
    sub [hl]
    ld c, d
    or l
    ld h, a
    sbc b
    ld c, [hl]
    or c
    ld a, [hl+]
    push de
    ld e, d
    and l
    ld [$ea95], a
    sub l
    ld c, c
    or [hl]
    xor d
    ld d, l
    ret z

    scf
    rst $28
    db $10
    ld e, $71
    adc e
    ld [hl], h
    and e
    ld e, h
    ei
    inc d
    di
    inc e
    cp b
    ld d, a
    ld c, $71
    add h
    ld a, e
    sbc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [$88f7], sp
    ld [hl], a
    adc b
    ld [hl], a
    add h
    ld a, e
    add b
    ld a, a
    adc b
    ld [hl], a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    and b
    ld e, a
    or b
    ld e, a
    add b
    ld a, a
    sbc b
    ld [hl], a
    add c
    ld a, a
    sub c
    ld a, a
    add h
    ld a, a
    nop
    rst $38
    adc b
    ld a, a
    sbc h
    ld a, a
    ld [$08f7], sp
    rst $30
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ret z

    ld [hl], a
    adc b
    ld [hl], a
    xor b
    ld [hl], a
    adc b
    ld [hl], a
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $30
    ld a, a
    rst $30
    rst $30
    rst $20
    rst $28
    rst $20
    rst $08
    ld h, a
    cpl
    ld c, a
    ld e, $cf
    ld e, [hl]
    sbc a
    ld e, $9f
    ccf
    sbc a
    cp a
    rra
    rra
    rra
    rra
    rra
    and $18
    ldh [rP1], a
    pop hl
    nop
    di
    rrca
    di
    ccf
    rst $18
    ccf
    rst $18
    ccf
    ld a, a
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
    rst $38
    rst $38
    rst $38
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
    pop hl
    rst $38
    pop de
    rst $28
    db $d3
    rst $28
    jp $e0ff


    rst $18
    ret nc

    rst $28
    ret nz

    rst $38
    ret z

    rst $38
    rst $18
    rst $28
    rst $00
    rst $38
    ret nz

    rst $38
    ret nc

    rst $28
    ret nz

    rst $38
    ld b, b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    push af
    rst $38
    ldh a, [rIE]
    inc d
    db $ec
    ld [$28f4], sp
    sub $02
    cp $10

jr_087_5d89:
    xor $01
    cp $11
    rst $28
    db $10
    rst $28
    ld de, $48ef
    rst $30
    dec c
    di
    rra
    db $e3
    ld c, l
    di
    ld l, $f3
    inc e
    db $e3
    ld e, $e3
    jr jr_087_5d89

    inc d
    db $e3
    inc a
    db $e3
    inc a
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    db $10
    rst $20
    inc e

jr_087_5db1:
    db $e3
    inc e
    db $e3
    sbc h
    db $e3
    ld e, h
    db $e3
    jr @-$17

    db $10
    rst $28
    nop
    rst $38
    inc b
    ei
    ld bc, $16ff

jr_087_5dc3:
    db $eb
    dec b
    ei
    dec h
    ei
    ld b, b
    rst $38
    ld a, [bc]
    rst $30
    ld [hl-], a
    rst $28
    ld a, [hl-]
    rst $20
    ld b, $fb
    ld d, $eb
    and e
    rst $18
    ld bc, $42ff
    cp a
    ld l, [hl]
    sbc e
    ld [c], a
    sbc a
    nop
    rst $38
    jr c, jr_087_5db1

    jr nz, jr_087_5dc3

    ld hl, $68df
    sbc a
    ld [bc], a
    rst $38
    ld a, [bc]
    rst $38
    ld a, [hl+]
    rst $18
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    xor d
    rst $18
    or e
    rst $18
    ld l, e
    rst $18
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    rra
    rst $30
    inc de
    rst $38
    rra
    rst $30
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld d, e
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ld b, d
    rst $38
    add hl, hl
    rst $38
    dec c
    rst $38
    add hl, sp
    rst $38
    add hl, de
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    jr nz, jr_087_5e26

jr_087_5e26:
    rst $38
    nop
    add a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    sub c
    rst $28
    add a
    inc bc
    ld bc, $ff01
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
    ld l, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    push hl
    rst $38
    cp $ff
    cp $ff
    cp [hl]

jr_087_5e5b:
    db $fd
    ld a, d
    db $fd
    ld a, d
    db $fd
    ei
    db $fc
    ld a, [$f8fd]
    rst $38
    ld a, [$f8fd]
    rst $38
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
    cp h
    rst $38
    and l
    cp $71
    cp $fd
    ld a, [hl]
    ld [hl], c
    cp $10
    rst $38
    jr nz, @+$01

    ld [hl], b
    cp a
    ld b, h
    cp a
    adc b
    inc d
    sbc a
    add b
    dec de
    add h
    rlca
    ret z

    rst $00
    ld c, b
    adc a
    ld h, b
    adc b
    ld h, a
    sbc h
    ld h, a
    ld hl, sp-$08
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$3c
    db $fc
    cp a
    rst $38
    cp a
    rst $38
    or l
    ld a, [bc]
    or l
    ld a, [bc]
    dec [hl]
    adc d
    dec [hl]
    adc d
    dec [hl]
    adc d
    jr nz, jr_087_5e5b

    add hl, hl
    sub [hl]
    ld l, c
    sub [hl]
    and $19
    ld sp, hl
    ld b, $fe
    ld bc, $01fe
    db $fd
    ld [bc], a
    db $10
    db $eb
    ld d, b
    xor c
    inc b
    ei
    nop
    rst $38
    inc c
    ei

jr_087_5ed4:
    jr nz, jr_087_5ed4

    xor h
    ld a, [$fe00]
    and d
    db $fc
    sub b
    cp $82
    cp $80
    cp $80
    cp $02
    cp $0a
    cp $2b
    cp $53
    cp $13
    cp $1b
    cp $6b
    cp $6f
    cp $ab
    cp $ee
    rst $38
    ld a, [hl]
    rst $38
    sbc $ff
    adc $ff
    sbc [hl]
    rst $38
    ld a, $ff
    ld a, [hl-]
    rst $38
    cp d
    rst $38
    ld hl, sp-$01
    ld a, [$feff]

jr_087_5f0b:
    rst $38
    cp $ff
    ld a, [$ffff]

jr_087_5f11:
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
    rst $20
    rst $20
    rst $28
    rst $28
    rst $38
    rst $18
    cp a
    rra
    rst $38
    rrca
    rra
    rrca
    ld a, a
    ccf
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    dec a
    db $fc
    nop
    db $fc
    inc bc
    db $fc
    ld bc, $01fc
    db $fc
    nop
    db $fd
    jr z, jr_087_5f11

    jr nc, jr_087_5f0b

    push de
    jp hl


    db $fc
    jp $c3ee


    ld h, a
    adc e
    rst $28
    inc bc
    ld a, c
    inc bc
    add e
    ld a, $4c
    inc sp
    inc sp
    ld a, [hl]
    rst $38
    ld a, [hl]
    ld bc, $83fe
    cp $0e
    rst $38
    inc l
    rst $18
    rst $30
    rst $38
    and $7b
    and $7b
    rst $20
    ld a, e
    and $7b
    ld h, d
    rst $38
    ld h, e
    rst $38
    ld h, a
    ei
    ld [c], a
    rst $38
    ld h, $fb
    cp $03
    ld b, $fb
    inc hl
    rst $18
    ld b, d
    rst $38
    or $fe
    ld c, $fe
    ld [bc], a
    cp $80
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld a, d
    add b
    ld a, a
    add b
    dec a
    jp nz, $f708

    add b
    rst $38
    ret nz

    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_087_5fa0:
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
    rst $38
    rst $38
    rst $38
    rst $38
    di
    nop
    cp e
    ld b, b
    ei
    nop
    pop af
    ld [bc], a
    di
    nop
    di
    nop
    sbc e
    ld b, b
    or e
    ld b, b
    ld sp, $b942
    ld b, d
    or l
    ld b, d
    or c
    ld b, d
    or l
    ld b, d
    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    nop
    add sp, $01
    rst $38
    nop
    ldh [rP1], a
    ldh a, [rP1]

jr_087_5fe1:
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    ei
    ccf
    cp b
    ld b, l
    cp a
    ld b, b
    cp a
    ld b, b
    ld e, a
    and b
    dec a
    jp nz, $c23d

    dec e
    ld [c], a
    jr nz, jr_087_5fe1

    nop
    ret nz

    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    ret nz

    jr nz, @+$01

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
    ldh [$80], a
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    ret nz

    add b
    ret nz

    add b
    ld b, b
    add b
    add b
    ld b, b
    add b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    nop
    add b
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp a
    nop
    db $fc
    inc bc
    and b
    ld e, a
    nop
    rst $38
    ld d, a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp h
    ld b, d
    ld a, [c]
    nop
    ld a, [c]
    nop
    ld a, [c]
    nop
    ld a, [c]
    nop
    ld hl, sp+$00
    ld a, [c]
    nop
    jp c, $f220

    nop
    or d
    ld b, b
    or d
    ld b, b
    ld [c], a
    db $10
    cp d
    ld b, b
    add d
    ld [hl], b
    add c
    ld [hl], d
    and b
    ld d, d
    or $ff
    di
    rst $38
    ei
    rst $38
    cp $ff
    nop
    inc bc
    ld d, b
    ei
    ld bc, $0007
    rlca
    ld bc, $011f
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    cp e
    rst $38
    ld d, a
    ld hl, sp-$02
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    db $fc
    ld bc, $17ec
    ld b, d
    cp a
    nop
    rlca
    nop
    rst $38
    ret c

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
    rlca
    ld b, b
    rst $38
    nop
    nop
    nop
    nop
    ld [c], a
    rra
    jp nz, $c23f

    ccf
    add b
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    nop
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    ld bc, $0109
    inc bc
    ld bc, $0312
    ld a, [c]
    inc bc
    cp $03
    pop bc
    ld h, $10
    rst $20
    rst $38
    rst $38
    rra
    rra
    rra
    rra
    dec de
    rra
    dec de
    rra
    dec de
    rra
    ei
    rst $38
    ld a, d
    rst $38
    jr c, jr_087_6184

    ld l, c
    ld [de], a
    ld l, l
    ld [de], a
    add hl, bc
    ld [hl], d
    ld [hl], d
    add hl, bc
    db $76
    add hl, bc
    ld c, c
    ld [de], a
    sub b
    dec bc
    sub [hl]
    add hl, bc
    ld b, $19
    add l
    ld a, [de]
    add h
    dec de
    ret z

    rla
    ld d, [hl]
    add hl, bc
    ld b, b
    rra
    ld [c], a
    rra
    and b
    ld e, a
    and b
    ld e, a
    ld [c], a
    rra
    ld [hl+], a
    rst $18
    ld a, b
    add a
    ld [hl], b
    adc a
    ld b, b
    cp a
    ld [hl], d
    adc a
    jr nc, @-$2f

    ld hl, $62cf
    adc a
    ld [bc], a
    rst $28
    db $10
    rst $28
    ld de, $90ef
    rst $28
    ld de, $92ef
    rst $28
    ld [de], a
    rst $28

jr_087_6184:
    sbc [hl]
    rst $28
    db $d3
    rst $28
    add l
    rst $38
    ld b, [hl]
    rst $38
    or a
    rst $28
    xor d
    rst $38
    rst $08
    rst $38
    and a
    rst $38
    rst $08
    rst $38
    xor $ff
    rst $20
    rst $38
    xor l
    rst $38
    rst $28
    rst $38
    push hl
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    cpl
    rst $38
    cp a
    rst $38
    rrca
    ccf
    rrca
    rrca
    inc bc
    rrca
    inc bc
    rrca
    ld bc, $0107
    rlca
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0100
    rst $30
    ccf
    ld [hl], a
    ld a, a
    ld [hl], a
    ld a, a
    rst $10
    ld a, a
    scf
    rst $38
    or a
    rst $38
    or a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    or a
    rst $38
    rst $18
    rst $38
    sub a
    rst $38
    rst $18
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    rst $08
    ld a, a
    ld c, a
    rst $38
    ld d, $ff
    ld c, a
    rst $38
    ld l, a
    rst $18
    ld c, a
    rst $38
    ld c, [hl]
    rst $38
    cpl
    rst $38
    ld e, [hl]
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
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
    rst $18
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
    cp a
    rst $38
    ld e, a
    rst $38
    ld e, a
    ld a, a
    cpl
    ld a, a
    rra
    ccf
    rra
    ccf
    rra
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    rrca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    nop
    ld bc, $f0ef
    db $fd
    ld [c], a
    cp a
    ldh [$f6], a
    pop hl
    cp $e1
    db $eb
    db $e4
    rst $28
    ldh [rIE], a
    ldh [$eb], a
    ldh a, [rIE]
    ldh [$ef], a
    ldh a, [$fb]
    db $e4
    db $fd
    ldh [$ef], a
    ldh a, [$fc]
    db $e3
    db $ec
    di
    rst $38
    ldh [$fe], a
    pop hl
    rst $38
    ldh [rIE], a
    ldh [$fd], a
    ld [c], a
    ld sp, hl
    and $fb
    db $e4
    ei
    db $e4
    rst $38
    ldh [$ef], a
    ldh [$f3], a
    db $e4
    rst $38
    ldh [$fe], a
    pop hl
    cp $e1
    ld a, [$ffe5]
    ldh [$fc], a
    db $e3
    xor $f1
    rst $38
    ldh [$ee], a
    ldh a, [rIE]
    ldh [$ef], a
    ldh a, [$ed]
    ld a, [c]
    db $eb
    db $f4
    jp hl


    or $ea
    push af
    pop af
    xor $e9
    or $e9
    or $e8
    rst $30
    db $e4
    ei
    add sp, -$09
    pop hl
    cp $e8
    rst $30
    add sp, -$09
    add sp, -$09
    ld [$e8f5], a
    rst $30
    ld [$eaf5], a
    push af
    add sp, -$09
    db $ec
    di
    ldh [rIE], a
    rst $38
    rst $38
    ldh [rIE], a
    di
    db $ec
    add sp, -$09
    ld a, [$f6e5]
    jp hl


    ld a, [c]
    db $ed
    ld a, [c]
    db $ed
    ld a, [c]
    db $ed
    di
    db $ec
    ld a, [$ebe5]
    db $f4
    and $f9
    db $e3
    db $fc
    rst $20
    ld hl, sp-$20
    rst $38
    db $e4
    ei
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    and $f9
    ldh [rIE], a
    db $ec

Jump_087_6311:
    di
    pop hl
    cp $e7
    ld hl, sp-$1b
    ld a, [$ffe0]
    ldh [rIE], a
    add sp, -$09
    db $e4
    ei
    ldh [rIE], a
    ldh [rIE], a
    add sp, -$09
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add sp, -$01
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    db $e3

jr_087_633b:
    db $fd
    ld hl, sp-$40
    sub d
    call z, $ffc0
    ret nz

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
    ld c, c
    or [hl]
    xor b
    rst $10
    xor h
    db $d3
    ld h, l
    sbc d
    ld b, h
    cp e
    jr nz, jr_087_633b

    nop
    rst $38
    ret nz

    cp a
    ld [$61f7], sp
    sbc [hl]
    ret


    or [hl]
    inc b
    ei
    inc e
    db $e3
    call Call_087_74b2
    adc e
    ld l, l
    sub d
    rla
    ld [$a25d], a
    and a
    jp c, $ff3e

    rst $38
    add d
    push af
    add d
    ld [hl], a
    add d
    or $83
    rst $20
    sub d
    ld [hl], h
    add e
    ld [hl], a
    add d
    ld a, l
    add d
    rst $38
    add d
    rst $38
    add d
    db $fc
    add e
    cp a
    jp nz, $936f

    ld a, [hl]
    add e
    or $82
    cp $82
    or $82
    xor d
    add d
    db $e4
    add d
    push af
    add d

jr_087_63a0:
    ei
    add d
    ld a, [c]
    add d
    ld hl, sp-$7e
    cp h
    add d
    db $fc
    add d
    db $fc
    add d
    db $ec
    sub d
    ld hl, sp-$7a
    db $fd
    add d
    ld a, l
    add d
    jp hl


    add [hl]
    ld a, c
    add [hl]
    adc l
    ld a, [c]
    dec a
    jp nz, $82fd

    db $ed
    sub d
    rst $18
    and b
    sbc $a0
    inc l
    jp nc, $d6a9

    jr z, jr_087_63a0

    or b
    adc $88
    or $a4
    sbc $11
    xor $f8
    add [hl]
    dec [hl]
    jp z, $86f9

    inc sp
    call z, $ce31

Jump_087_63dc:
    ld [hl], c
    adc [hl]
    ld d, e
    xor [hl]
    ld d, c
    xor [hl]
    ld bc, $01fe
    cp $81
    cp $85
    cp $05
    cp $15

jr_087_63ed:
    xor $87
    db $fc
    dec c
    or $84
    rst $38
    add a
    db $fc
    inc b
    rst $38
    add b
    rst $38
    add a
    db $fc
    ld b, $fd
    adc [hl]
    db $fd
    add [hl]
    db $fd
    inc b
    rst $38
    and h
    rst $38
    sub h
    rst $38
    add h
    rst $38
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    and h
    rst $38
    sub h
    rst $38
    sbc b
    rst $38
    db $10
    rst $38
    add h
    rst $38
    ld [hl], $ff
    add b
    nop
    ld a, [$0005]
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
    sbc h
    ld l, b
    sub l
    ld l, b
    sub b
    ld l, b
    sub d
    ld l, b
    or b
    ld c, b
    or d
    ld c, b
    sbc d
    ld l, b
    or b
    ld c, b
    and b
    ld e, b
    sub b
    ld l, b
    sbc b
    ld h, b
    ldh [rNR23], a
    and b
    ld e, b
    or b
    ld c, b
    sbc c
    ld l, b
    and b
    ld e, b
    sbc b
    ld l, b
    and d
    ld e, b
    sbc b
    ld l, b
    sbc b
    ld l, b
    ret nz

    jr c, jr_087_63ed

    ld l, b
    sbc b
    ld l, b
    ret nc

    jr z, @+$22

    ld e, b
    ld sp, hl
    ld [$2858], sp
    jr c, jr_087_64b0

    ld a, [$b208]
    ld c, b
    ld hl, sp+$0a
    ld a, [$6a08]
    ld hl, sp+$02
    ld hl, sp+$42
    ld [$0a50], sp
    ret c

    ld [bc], a
    add $08
    sub $08
    push de
    ld [$0844], sp
    ld b, e
    ld [$0807], sp
    xor c
    inc b
    xor $00
    cp [hl]
    nop
    and a
    ld [$0ae5], sp
    ld b, h
    ld a, [bc]
    ld d, l
    ld a, [bc]
    pop af
    ld a, [bc]
    rst $10
    ld [$08d7], sp
    ld [c], a
    dec c
    rst $10
    ld [$08f7], sp
    ld e, [hl]
    ld bc, $05fa
    db $f4
    dec bc
    ld a, [$f205]
    dec c
    ld l, [hl]
    ld de, $15ea
    add sp, $17

jr_087_64b0:
    pop af

jr_087_64b1:
    ld c, $d1
    ld l, $e2
    dec e
    and d
    ld e, l
    or d
    ld c, l
    ldh [$1f], a
    ld [c], a
    dec e
    jp nz, Jump_087_663d

    sbc l
    add [hl]
    ld a, l
    sub b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    db $10
    rst $38
    add b

jr_087_64cf:
    ld a, a
    jr nc, jr_087_64b1

    sub c
    ld a, [hl]
    ld de, $90fe
    ld a, a

jr_087_64d8:
    db $10

jr_087_64d9:
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld e, $f7
    inc e
    rst $30
    ld a, [de]
    rst $30
    dec d
    rst $38
    sub l
    rst $38
    sub h
    rst $38

jr_087_64f6:
    db $10
    rst $38
    db $10
    rst $38
    or l
    rst $38
    nop
    nop
    nop

jr_087_64ff:
    rst $38
    sub b
    jr nz, jr_087_6533

    nop
    sub b

jr_087_6505:
    jr nz, jr_087_6507

jr_087_6507:
    jr nz, @-$7e

    jr nz, jr_087_651b

    jr nz, @-$6c

    jr nz, @-$7e

    jr nz, jr_087_6511

jr_087_6511:
    jr nz, jr_087_6513

jr_087_6513:
    jr nz, jr_087_6515

jr_087_6515:
    jr nz, jr_087_653f

    jr nz, jr_087_6539

    jr nz, jr_087_655b

jr_087_651b:
    jr nz, jr_087_657d

    jr nz, jr_087_6567

jr_087_651f:
    jr nz, jr_087_6561

    jr nz, jr_087_6567

    jr nz, jr_087_658a

jr_087_6525:
    jr nz, jr_087_658b

    jr nz, jr_087_6511

    jr nz, jr_087_6505

    jr nz, jr_087_6595

    jr nz, jr_087_64d8

    ld h, b
    ret


    jr nz, jr_087_651b

jr_087_6533:
    jr nz, jr_087_64ff

    jr nz, jr_087_651f

    jr nz, jr_087_64d9

jr_087_6539:
    jr nz, jr_087_6505

    jr nz, jr_087_6525

    jr nz, jr_087_64cf

jr_087_653f:
    ld h, b
    ld l, c
    and b
    reti


    jr nz, jr_087_64f6

    ld h, b
    dec d
    ldh [rNR33], a
    ldh [$7d], a
    and b
    dec e
    ldh [$28], a
    pop hl
    dec e
    ldh [$34], a
    pop hl
    inc [hl]
    pop hl
    ld d, $e1
    sbc l
    ld h, b
    sbc e

jr_087_655b:
    ld h, b
    sub a
    ld h, b
    sub [hl]
    ld h, c
    sub a

jr_087_6561:
    ld l, b
    sbc [hl]
    ld h, c
    inc d
    jp hl


    sub [hl]

jr_087_6567:
    ld l, c
    xor d
    ld [hl], l
    adc d
    ld [hl], l
    sub a
    ld l, c
    or [hl]
    ld c, c
    sbc a
    ld h, c
    sbc $61
    sub e
    ld l, l
    db $10
    rst $28
    ld [de], a
    db $ed
    ld a, [c]
    ld c, l
    pop bc

jr_087_657d:
    ld a, a
    ccf
    rst $38
    ld d, a
    pop bc
    scf
    pop bc
    ld l, a
    pop bc
    ld a, a
    pop bc
    ld e, a
    pop bc

jr_087_658a:
    dec l

jr_087_658b:
    pop bc
    ld c, l

jr_087_658d:
    pop bc
    daa
    pop bc

jr_087_6590:
    ld l, a
    pop bc
    ld c, a
    pop bc
    ld e, [hl]

jr_087_6595:
    pop bc
    ld [hl], e
    pop bc
    ld d, l
    jp $c17f


    ld a, a
    pop bc
    ld a, d
    push bc
    ld a, a
    pop bc
    ccf
    pop bc

jr_087_65a4:
    ld a, h
    jp $c976


    ld [hl], h
    bit 7, b
    rst $00
    ld a, l
    jp $c53b


    add hl, sp
    rst $00
    ld a, a
    pop bc
    dec [hl]
    swap h
    bit 4, l
    db $db
    ld h, [hl]
    db $db
    dec h
    db $db
    inc bc
    rst $38
    ld h, e
    rst $18
    ld [hl-], a
    rst $08
    jr c, jr_087_658d

    ld [$8ef7], sp
    di
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
    rst $38
    ld a, a
    ret nz

    ld a, b
    ldh [$3d], a
    ldh a, [rNR34]
    ld hl, sp+$1e
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
    add d
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    add d
    nop
    nop
    add b
    ld [bc], a
    add b
    ld [bc], a
    add b
    nop
    add b
    inc b
    add b
    ld b, [hl]
    add b
    sub [hl]
    nop
    ld de, $1080
    add b
    jr nc, jr_087_6590

    ld h, d
    add b
    ld b, d
    add b
    ld d, b
    add b
    ld l, c
    add b
    jr z, @-$7e

    add hl, hl
    add b
    ld c, c
    add b
    ld bc, $9180
    nop
    jr jr_087_65a4

    ld [$4180], sp
    add b
    inc d
    add b
    ld sp, $4180
    add b
    ld bc, $1580
    add b
    add h
    nop
    add e
    nop
    add l
    nop
    nop
    add h
    ld c, b
    add h
    add hl, bc

Jump_087_663d:
    add h
    adc e
    inc b
    sub a
    nop
    add a
    db $10
    add c
    inc b
    sub h
    ld bc, $05a8
    ld hl, sp+$05
    adc $01
    dec de
    inc b
    sbc e
    inc b
    or b
    dec c
    cp a
    inc b
    cp e
    inc b
    xor c
    inc d
    sbc d
    dec h
    dec sp
    add h
    dec sp
    add h
    ei
    inc b
    di
    inc c
    and b
    rra
    rst $30
    rrca
    or d
    dec c
    cp e
    inc b
    db $e3
    inc e
    ld a, [$d705]
    jr z, jr_087_66ee

    add h
    ld c, e
    or h
    add $39
    and $19
    jp nz, Jump_087_433d

    cp h
    rlca
    ld hl, sp-$7f
    ld a, [hl]
    add d
    ld a, l
    ld c, c
    or [hl]
    ld d, c
    xor [hl]
    ld c, c
    or [hl]
    jp nz, $013d

    cp $42
    cp l
    add e
    ld a, h
    jp $c23c


    dec a
    ld [bc], a
    db $fd
    call nz, $063b
    ld sp, hl
    rrca
    ld hl, sp-$36
    ld a, l
    ldh [$7f], a
    adc d
    ld a, l
    ld a, [bc]
    db $fd
    ld [$88ff], sp
    ld a, a
    jr z, @+$01

    jr @+$01

    ld c, b
    rst $38
    ld [$18ff], sp
    rst $38
    jr nz, @+$01

    ld [$08ff], sp
    rst $38
    ld bc, $01fe
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
    cp a
    nop
    rst $18
    nop
    rst $28
    add b
    rst $30
    ret nz

    rst $30
    ret nz

    ld a, e
    ldh [$3d], a
    ldh a, [$e5]
    ld a, [de]

jr_087_66e2:
    cp l
    ld [bc], a
    ld h, a
    jr jr_087_670e

    jr jr_087_6736

    ld [de], a
    ld h, $11

jr_087_66ec:
    rst $28
    db $10

jr_087_66ee:
    rst $00
    jr jr_087_6760

    db $10
    ld l, a
    db $10
    rrca
    db $10

jr_087_66f6:
    call $8712
    jr jr_087_672a

    db $10
    ccf
    db $10
    rst $28
    db $10
    ld a, a
    db $10
    ld e, a

jr_087_6703:
    db $10
    db $eb
    db $10
    ret nc

    rra
    sub $1f
    xor b

jr_087_670b:
    ld d, b
    ret z

    db $10

jr_087_670e:
    call nz, $ec10
    db $10
    db $ec
    db $10
    call $cc10
    db $10
    add hl, hl
    sub b
    db $ec
    db $10
    db $e4
    db $10
    ld [$eb10], a
    db $10
    ld c, d

jr_087_6723:
    jr nc, @-$1a

    db $10
    xor d
    db $10
    ld [hl+], a
    db $10

jr_087_672a:
    ldh a, [rP1]
    ret c

    jr nz, jr_087_670b

    jr nz, jr_087_66f6

    jr nc, jr_087_6723

    nop
    ld d, [hl]
    and b

jr_087_6736:
    ld d, d
    and b
    cp a
    ld b, b
    db $dd
    jr nz, jr_087_679c

    and b
    db $fd
    jr nz, @+$70

    and b
    sbc d
    ld h, b
    db $db
    jr nz, jr_087_66e2

    ld h, b
    sub a
    ld l, b
    db $dd
    jr nz, jr_087_66ec

    ld h, b
    rst $30
    jr nz, jr_087_6770

    ldh [rIE], a
    jr nz, jr_087_6784

    ldh a, [$fe]
    pop hl
    xor [hl]
    ld [hl], c
    xor $31
    ld [$fc35], a
    inc hl

jr_087_6760:
    db $ec
    inc sp
    rst $38
    jr nz, jr_087_6703

    ld h, c
    or $29
    xor $31
    ld c, h
    inc sp
    call c, $9423
    ld l, e

jr_087_6770:
    call nc, $c12b
    ccf
    nop
    rst $38
    ldh [$3f], a
    add c
    ld a, a
    ld [c], a
    dec a
    or b
    ld l, a
    ld e, c
    and a
    pop bc
    ccf
    add c
    ld a, a

jr_087_6784:
    add c
    ld a, a
    ld b, c
    cp a
    add c
    ld a, a
    add b
    ld a, a
    and c
    ld a, a
    ld bc, $01ff
    rst $38
    add c
    ld a, a
    add hl, bc
    rst $38
    ld b, l
    rst $38
    jr nz, @+$01

    jr nz, @+$01

jr_087_679c:
    ld b, b
    rst $38

jr_087_679e:
    jr nz, @+$01

    ld [$40ff], sp
    rst $38
    add b
    ld a, a
    ret nz

    ld a, a
    jp z, Jump_087_407f

    cp a
    db $fc
    inc bc
    ld [hl], $ff

jr_087_67b0:
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$04
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
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, $f1
    cp h
    ld b, e
    sbc [hl]
    ld b, c
    or [hl]
    ld c, c
    ld e, $41
    ld e, $41
    cp a
    ld b, b
    add [hl]
    ld e, c
    adc a
    ld d, b
    adc $51
    db $d3
    ld c, h
    adc e
    ld d, h
    jp c, $bc44

    ld b, d
    ld e, [hl]
    ld b, b
    ld e, h
    ld b, d
    ld c, e
    ld d, h
    call nz, $bc5a
    ld b, d
    ld a, [hl-]
    call nz, $cef0
    sbc d
    ld b, [hl]
    call nc, Call_000_1c4a
    jp nz, $c21e

    ld d, $ca
    sbc h
    ld b, d
    sub [hl]
    ld c, d
    ld e, [hl]
    add d
    inc e
    jp nz, Jump_000_02fe

    ld a, $c2
    xor h
    ld d, d
    ld a, [hl]
    cp $7c
    add d
    nop
    add d
    db $10
    add d
    jr nc, jr_087_679e

    ld [de], a
    add b
    nop
    add d
    ld h, c
    add d
    ld b, b
    add d
    ld bc, $0082
    add c
    ld sp, $a880
    add d
    jr nz, jr_087_67b0

    and b
    add d
    add c
    add d
    sub c
    add d
    ld d, h
    add d
    ld [hl], l
    add d
    ld [hl], l
    add d
    ld [hl], l
    add d
    rla
    add b
    dec [hl]
    add d
    rla
    add b
    dec h
    add d
    inc sp
    add h
    ccf
    add b
    ld a, $81
    dec de
    add h
    ld a, [hl-]
    add l
    dec sp
    add h
    ld a, b
    add a
    jr c, @-$77

    db $fc
    rlca
    ld hl, sp+$07
    ld a, b
    add a
    ret nc

    rlca
    ld a, h
    add a
    inc a
    rst $00
    ld a, b
    add a
    ld d, h
    xor a
    db $f4
    rrca
    ret nc

    cpl
    call nz, Call_087_483f
    or a
    ret z

    scf
    call c, $e027
    rra
    ld b, h
    cp a
    add h
    ld a, a
    adc b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld [$24ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    inc c
    ei
    ld bc, $00ff
    rst $38
    ld [$0aff], sp
    rst $38
    ld c, d
    rst $38
    ld [$49ff], sp
    rst $38
    add c
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    dec d
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
    rst $38
    nop
    rst $38
    rst $38

jr_087_68b5:
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
    inc b
    nop
    inc b
    nop
    inc b
    ld c, b
    inc b
    inc c

jr_087_68c9:
    nop
    inc c
    nop
    inc c
    nop
    inc b
    ld [$001c], sp
    inc c
    nop
    inc c
    nop
    nop
    ld [$0802], sp
    nop
    ld [$0810], sp
    db $10
    ld [$0810], sp
    nop
    ld [$0811], sp
    add hl, bc
    ld [$0813], sp
    ld e, $08
    ld a, [hl-]
    ld [$081a], sp
    ld a, [de]
    ld [$085a], sp
    ld [hl], d
    ld [$083a], sp
    ld a, [hl-]
    ld [$08a8], sp
    cp b
    ld [$0898], sp
    and [hl]
    jr jr_087_68b5

    ld [$18a7], sp
    and [hl]
    jr jr_087_6938

    sbc b
    rla
    xor b
    add a

jr_087_690d:
    jr c, @+$4d

    jr c, jr_087_691c

    jr c, @-$39

    jr c, @-$37

    jr c, @+$47

    jr c, @-$18

    jr jr_087_68c9

    db $10

jr_087_691c:
    db $f4
    jr @-$32

    jr nc, jr_087_6946

    sbc d
    adc a
    jr nc, @+$4a

    or [hl]
    ld [hl], l

Call_087_6927:
    sbc d
    ld l, c
    sub [hl]
    and [hl]
    ld e, c
    ret


    ld [hl], $fd
    ld [de], a
    rst $38
    db $10
    cp a
    ld d, b
    jr c, jr_087_690d

    ld e, b
    or a

jr_087_6938:
    cp b
    ld d, a
    ld a, h
    sub e
    sub b
    ld a, a
    rla
    rst $38
    add e
    ld [hl], b
    ld d, e
    or b
    adc a
    ld [hl], b

jr_087_6946:
    add a
    ld [hl], b
    adc e
    ld [hl], b
    sbc [hl]
    ld h, b
    sub [hl]
    ld h, b
    dec de
    ldh [$92], a
    ld h, c
    add a
    ld [hl], b
    ld d, $e0
    dec sp
    ldh [rNR31], a
    ldh [$1f], a
    ldh [$3f], a
    ldh [rIF], a
    ldh a, [rNR33]
    ld [c], a
    cp a
    ld h, b
    rrca
    ldh a, [$3b]
    db $e4
    ld a, $e1
    ld a, $e1
    ld a, $e1
    cp l
    ld h, d
    ld e, $e1
    ld a, [hl-]
    push hl
    ld a, $e1
    ld [hl-], a
    db $ed
    ld [hl-], a
    db $ed
    ld [hl-], a
    db $ed
    ld sp, $31ef
    rst $28
    jr nc, @-$0f

    sub h
    db $eb
    or l
    db $eb
    ld [hl], $e9
    ld hl, $47ff
    rst $38
    ld a, [bc]
    push af
    nop
    rst $38
    nop
    rst $38
    or a
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
    ld bc, $0302
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
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc b
    inc b
    inc c
    inc b
    inc b
    dec c
    inc b
    inc b
    inc b
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_087_69d0

    inc b
    inc b
    inc b
    inc b

jr_087_69d0:
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_087_69fa

    ld hl, $2322
    inc h
    dec h
    inc b
    inc b
    ld h, $27
    jr z, jr_087_6a0d

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld hl, $212e
    ld hl, $2f21
    jr nc, jr_087_6a21

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_087_6a31

    ld a, [hl-]
    dec sp

jr_087_69fa:
    inc a
    dec a
    ld hl, $2121
    ld hl, $3f3e
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
    ld c, d

jr_087_6a0d:
    ld c, e
    ld hl, $4c21
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b

jr_087_6a21:
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld h, c
    ld h, d
    ld h, e

jr_087_6a31:
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld l, h
    ld hl, $6e6d
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    db $76
    ld [hl], a
    ld hl, $7978
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld hl, $807f
    ld c, b
    ld c, b
    add c
    add d
    ld hl, $8321
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    ld hl, $8a21
    adc e
    ld c, b
    adc h
    adc l
    ld hl, $8e21
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
    ld hl, $2121
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
    ld hl, $a921
    xor d
    xor e
    xor h
    xor l

Jump_087_6a95:
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    xor b
    ld hl, $b8b7
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
    ld hl, $c7c6
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
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
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    inc b
    inc b
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
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $00
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0006
    nop
    inc b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    nop
    inc bc
    rlca
    rlca
    rlca
    inc b
    inc b
    nop
    nop
    inc b
    ld [bc], a
    dec b
    dec b
    inc b
    inc b
    inc b
    nop
    inc b
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $00
    inc b
    inc b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    rlca
    ld b, $06
    ld b, $06
    ld b, $06
    nop
    nop
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc h
    ld e, a
    dec de
    ld h, a
    pop bc
    ld a, $57
    xor d
    sub a
    xor d
    add h
    cp e
    sbc e
    push bc
    adc e
    push de
    call nc, $f8cb
    rst $00
    ret c

    rst $20
    pop af
    xor $fc
    db $e3
    push hl
    ld a, [$f0ff]
    rst $38
    ldh a, [$f6]
    ld sp, hl
    push af
    ld a, [$fbfc]
    ld a, [$f8fd]
    rst $38
    cp $fd
    db $fc
    rst $38
    db $fd
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, $f9
    sbc $f9
    cp $09
    di
    inc c
    ld [hl], c
    adc [hl]
    cp a
    ld b, h
    cp [hl]
    ld b, l
    db $ed
    ld b, $79
    add [hl]
    ld a, [hl]
    add e
    db $fc
    add e
    cp [hl]
    jp $cb35


    inc a
    jp Jump_087_41fb


    db $fd
    ld b, c
    or $41
    ld e, a
    ldh [$3f], a
    ldh [$7e], a
    and b
    rrca
    ldh a, [rIF]
    ldh a, [$9f]
    ld [hl], b
    rra
    ldh a, [rNR52]
    reti


    inc bc
    db $fc
    adc l
    ld a, d
    xor l
    ld e, d
    add c
    ld a, [hl]
    ld b, a
    cp h
    ld b, $fd
    dec h
    sbc $8c
    rst $38
    ld a, [c]
    rst $38
    and [hl]
    db $db
    ldh [$df], a
    push af
    set 0, c
    rst $38
    rst $10
    jp hl


    ld a, [c]
    db $ed
    di
    db $ec
    rst $28
    ldh a, [$f3]
    db $fc
    db $f4
    ei
    ld a, [c]
    db $fd
    pop af
    cp $fa
    db $fd
    ld sp, hl
    cp $f8
    rst $38
    db $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    rst $18
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
    ld a, [bc]
    pop hl
    rrca
    ldh [$2b], a
    ldh [$2d], a
    ldh [rBGP], a
    or b
    ld b, a
    or b
    inc de
    ldh a, [rSCX]
    or b
    and l
    ld e, d
    and h
    ld e, d
    cp [hl]
    ld c, b
    adc b
    ld a, d
    sub $f8
    cp a
    nop
    add sp, $05
    ld [hl], e
    inc b
    ei
    inc b
    ld [hl], e
    add h
    push af
    add d
    sub c
    add d
    ld a, a
    add b
    cp h
    ld b, d
    sbc [hl]
    ld b, c
    call c, $bc41
    ld b, c
    sbc [hl]
    ld h, c
    ret c

    dec h
    rst $38

jr_087_6d37:
    jr nz, jr_087_6d37

    jr nz, jr_087_6d99

    and b
    ld h, [hl]
    sub b
    ld [hl], a
    sub b
    rla
    ldh a, [$8f]
    ld [hl], b
    inc bc
    ld hl, sp+$0f
    ld hl, sp-$61
    ld l, b
    db $e3
    inc e
    or e
    ld c, h
    ld b, a
    cp h
    call Call_000_15b6
    xor $81
    cp $43
    cp $43
    cp $ca
    ld [hl], a
    ld b, d

jr_087_6d5d:
    rst $38
    ld bc, $41ff
    cp a
    ld h, c
    cp a
    ld bc, $10ff
    rst $38
    db $10
    rst $38
    inc [hl]
    rst $18

jr_087_6d6c:
    db $10
    rst $38
    ld [$0aff], sp
    rst $38
    add hl, bc
    rst $38
    inc b
    rst $38
    adc h
    rst $30
    sub b
    ldh [$a0], a
    ret nz

    ldh [$e0], a
    ldh [$e0], a

jr_087_6d80:
    ldh [$e0], a
    ldh a, [$f0]
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    cp $fc

jr_087_6d99:
    cp $fc
    cp $fe
    cp $fe
    cp $fe
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
    add hl, sp
    add [hl]
    rst $30
    add b
    db $ed
    add d
    jp hl


    add d
    jr nc, jr_087_6d80

    sub l
    ld b, d
    push de
    ld b, d
    rst $30
    ld b, b
    cp h
    ld b, c
    adc d
    ld h, c
    sbc b
    ld h, c
    ld a, d
    and c
    cp l
    ld h, b
    cp a
    ld h, b
    rst $28
    jr nc, jr_087_6d5d

    ld [hl], b
    ld e, $70
    ld e, [hl]
    jr nc, jr_087_6d6c

    ld a, b
    rst $30
    jr jr_087_6e40

    sbc b
    ld l, a
    sbc b
    xor l
    ld e, d
    and e
    ld e, h
    and b
    ld e, a
    ld d, h
    xor a
    ld a, [hl]
    add l
    db $76

jr_087_6de7:
    adc l
    ccf
    call nz, $9fe4
    ld b, c
    cp [hl]
    sub c
    ld l, [hl]
    or e
    ld c, [hl]
    and d
    ld e, a
    add c
    ld a, [hl]
    add [hl]
    ld a, e
    ld c, b
    or a
    add sp, $37
    ret nz

    ccf
    pop hl
    ccf
    push bc
    dec sp
    add h
    ld a, e
    ld d, b
    cp a
    jr nz, jr_087_6de7

    nop
    rst $38
    adc b
    ld a, a
    ld c, b
    cp a
    adc b
    ld a, a
    xor b
    ld a, a
    adc b
    ld a, a
    inc c
    rst $38
    add h
    rst $38
    add h
    rst $38
    add h
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_087_6e40:
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
    add b
    nop
    ret nz

    nop
    ret nz

    add b
    ldh [$c0], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$10
    ld hl, sp-$08
    ld hl, sp-$04
    ld hl, sp-$08
    db $fc
    ldh a, [$fc]
    ld a, [c]
    db $fc
    db $fc
    cp $f8
    cp $f8
    cp $fd
    cp $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    adc $01
    db $dd
    ld [bc], a
    rst $10
    nop
    ld e, a
    nop

jr_087_6e88:
    di
    inc b
    ld [hl], a
    nop
    rlca
    jr nz, jr_087_6e88

    ld [bc], a
    db $eb
    nop
    ld l, e
    nop
    xor a
    nop
    cpl
    nop
    rst $00
    nop
    ld l, e
    add h
    ld l, e
    add h
    ld c, e
    add h
    ld e, a
    add b
    ld d, e
    add h
    ld d, h

jr_087_6ea5:
    add e
    cp a
    ld b, b
    sbc h
    ld b, e
    xor l
    ld b, d
    xor l
    ld b, d
    db $e4
    dec bc
    rst $20
    ld [$23cc], sp
    ld a, [de]
    push hl
    ld a, h
    and e
    ld a, h
    and e
    ld b, h
    or e
    inc h
    db $d3
    dec l
    jp nc, $f55a

    dec de
    db $f4
    and h
    dec de
    ld h, h
    dec de
    or h
    dec bc
    ld a, h
    dec bc
    cp h
    dec bc
    sbc l
    ld a, [bc]
    or d
    dec c
    ld d, [hl]
    adc l
    ld a, h
    add a
    cp $85
    ld a, h
    add a
    ld [hl], c
    adc [hl]
    jr c, jr_087_6ea5

    ld a, b
    rst $00
    ld a, l
    jp nz, $cb76

    sbc [hl]
    ld h, e
    ld d, h
    db $eb
    sub c
    rst $28
    or c
    rst $28
    ld sp, $c1ef
    rst $38
    and b
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$02
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
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
    nop
    nop
    add b
    nop
    add b
    add b
    add b
    ret nz

    add b
    add b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    ldh [$80], a
    ldh [$e0], a
    ldh [$f0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$e0]
    ld hl, sp-$10
    add sp, -$1c
    ld hl, sp-$10
    db $fc
    ld a, [$76fd]
    adc c
    ld l, d
    add l
    ld l, a
    add h
    ld l, a
    add h
    ld a, a
    add h
    ld l, e
    add h
    ld a, a
    add h
    di
    inc b
    db $fd

jr_087_6f53:
    ld b, d
    xor [hl]
    ld b, e
    cp h
    ld b, d
    or h

jr_087_6f59:
    ld b, d
    jr nc, jr_087_6f9e

    cp b

jr_087_6f5d:
    ld b, d
    add hl, sp
    jp nz, Jump_000_20db

    ld c, a
    and b
    ld e, [hl]
    and c
    sbc a
    ld h, b
    cp $21
    ld e, [hl]
    and c
    ld c, [hl]

jr_087_6f6d:
    or c
    sbc $21
    ld b, h
    cp c
    xor $11
    cp [hl]
    ld d, c
    rst $00
    jr c, @+$59

    cp b
    ld b, a
    ld hl, sp-$4f
    ld c, [hl]
    sbc $29
    ld [hl], a
    adc b
    ld a, a
    adc b
    ld d, e
    xor h
    ld b, d
    xor l
    ld e, e
    and h
    jr c, jr_087_6f53

    jr nz, jr_087_6f6d

    inc e
    rst $20
    jr c, jr_087_6f59

    ld e, h
    rst $20
    jr c, jr_087_6f5d

    jr @-$17

    db $10
    rst $28
    ld a, [bc]
    rst $30
    inc d
    db $eb

jr_087_6f9e:
    and b
    rst $38
    ld [$28f7], sp
    rst $30
    ld hl, $20ff
    rst $38
    ld hl, $01ff
    rst $38
    db $10
    ldh a, [rP1]
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_087_6fcd:
    rst $38
    rlca
    ld hl, sp+$3e
    ret nz

    pop af
    nop
    adc a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    ld e, a
    add b
    ld l, a
    add b
    scf
    ret nz

    rla
    ldh [rNR31], a
    ldh [$0b], a
    ldh a, [$0d]
    ldh a, [rTMA]
    ld hl, sp+$06
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop

Jump_087_6fff:
    rst $38
    dec e
    jp nz, $c601

    add [hl]
    ld b, d
    and l
    ld b, d
    dec l
    jp nz, $c22d

    ld c, l
    and d
    db $dd
    ld [hl+], a
    ld a, l
    and d
    xor [hl]
    ld h, c
    xor h
    db $e3
    xor l
    inc bc
    add c
    dec hl
    and c
    dec bc
    db $fc
    inc bc
    adc c

jr_087_701f:
    inc de
    inc c
    inc de
    ld e, [hl]
    ld bc, $114e
    ld b, d
    dec d
    cp d
    dec b
    and a
    ld [$09f6], sp
    push hl
    ld a, [bc]
    rst $20
    ld [$0aa5], sp
    push hl
    ld a, [bc]
    dec [hl]
    adc d
    ld [hl], l
    adc d
    or [hl]
    adc c
    jr nc, jr_087_6fcd

    ld a, b
    add a
    ld a, d
    add l
    ld a, c
    add [hl]
    add hl, sp
    add $b8
    ld b, a
    ld a, l
    add $70
    rst $08
    ld [hl], h
    rst $08
    jr nc, jr_087_701f

    ld l, b
    rst $10
    ld e, b
    rst $20
    db $10
    rst $28
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
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
    db $fc
    ld a, h
    cp $fe
    cp $fb
    cp $9b
    cp $eb
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    inc c
    rst $38
    nop
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
    ldh a, [$7c]
    add b
    db $e3
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
    nop
    rst $38

jr_087_70a5:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    ld l, a
    add b
    ld l, a
    add b
    scf
    ret nz

    scf
    ret nz

    dec de
    ldh [rNR31], a
    ldh [$0d], a
    ldh a, [$0e]
    ldh a, [rTMA]
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

jr_087_70e0:
    sbc [hl]
    jr nz, jr_087_70e0

    nop
    sbc l
    jr nz, jr_087_70a5

jr_087_70e7:
    nop
    or a
    nop
    ld a, [$3f00]
    nop
    adc l
    db $10
    add $11
    add l
    db $10
    pop bc

jr_087_70f5:
    db $10
    db $ec
    ld de, $11ec
    jp z, Jump_087_6311

jr_087_70fd:
    sub b
    di
    nop
    ld h, d
    sbc c
    rst $28
    db $10
    rst $38
    nop
    ld [hl], d
    adc c
    ld a, [c]
    adc c
    ld [hl], c
    adc d
    sub c
    ld [$e996], a
    rst $10
    xor b
    ld h, $d9
    add $b9
    add $b9
    rlca
    ld hl, sp+$56
    ld sp, hl
    ld a, d
    add l
    jr jr_087_70e7

    ld a, [hl-]
    push bc
    ld d, [hl]
    add l
    inc e
    rst $00
    ld a, [de]
    push bc
    ld d, $c5
    ld l, [hl]
    push bc
    jr c, jr_087_70f5

    jr @-$17

    jr c, @-$37

    ld a, [hl-]
    push bc
    jr c, jr_087_70fd

    jr @-$17

    inc e
    db $e3
    add hl, sp
    and $30
    rst $28
    ld [de], a
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld h, b
    rst $38
    nop
    ld a, a
    rlca
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    ccf
    ldh a, [$3f]
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ret nz

    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld a, $c0
    pop af
    nop
    adc a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    rst $28
    nop
    ld l, a
    add b
    ld [hl], a
    add b
    scf
    ret nz

    dec sp
    ret nz

    dec e
    ldh [$0d], a
    ldh a, [$0e]
    ldh a, [rTMA]
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
    nop
    rst $38
    or l
    ld a, a
    inc [hl]
    rst $38
    or l
    ld a, a
    or a
    ld a, a
    cp l
    ld a, a
    push de
    ccf
    sub l
    ld a, a
    sbc l
    ld a, a
    xor a
    ld a, a
    sbc [hl]
    ld a, a
    cp $3f
    xor $3f
    push af
    ccf
    sbc a
    ld a, a
    ld a, a
    cp a
    or l
    ld a, a
    xor a
    ld a, a
    db $fd
    ccf
    ld [hl], a
    cp a
    sbc a
    ld a, a
    rra
    rst $38
    ld a, [hl]
    cp a
    ld a, [hl]
    cp a
    ld c, [hl]
    cp a
    ld e, [hl]
    cp a
    cp a
    rst $38
    ccf
    rst $38
    ld e, a
    cp a
    ld e, e
    cp a
    ld e, e
    cp a
    db $db
    ccf
    ld e, e
    cp a
    dec a
    rst $18
    dec sp
    rst $18
    dec sp
    rst $18
    ld a, $df
    dec sp
    rst $18
    dec sp
    rst $18
    ld l, $df
    ccf
    rst $18
    cpl
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    dec c
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    dec sp
    di
    ei
    ld sp, hl
    db $fd
    ld sp, hl
    db $f4
    db $fd
    call nc, $d7fd
    db $fc
    sbc $fd
    sbc $fd
    or $fd
    ld b, $fd
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$78]
    add b
    rst $00
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
    db $fc
    nop
    ld [hl], e
    nop
    ld c, a
    nop
    cp [hl]
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
    pop de
    db $fc
    pop de
    db $fc
    ld d, c
    db $fc
    ld d, c
    db $fc
    ld d, e
    db $fc
    pop de
    db $fc
    ld d, l
    ld hl, sp-$38
    db $fc
    ld b, d
    db $fc
    ld b, b
    db $fc
    ld b, d
    db $fc
    db $10
    cp $08
    cp $4b
    db $fc
    dec bc
    db $fc
    ld c, c
    cp $69
    cp $39
    cp $2b
    db $fc
    ld c, c
    cp $57
    db $fc
    ld e, c
    cp $19
    cp $29
    cp $89
    cp $29
    cp $38
    rst $38
    cp h
    rst $38
    inc a
    rst $38
    or h
    rst $38
    ret z

    rst $38
    add hl, hl
    cp $a8
    rst $38
    jr z, @+$01

    or h
    rst $38
    or h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    rst $18
    rst $38
    and $ff
    ld [hl], c
    cp $3a
    db $fd
    sbc a
    rst $38
    add a
    rst $38
    add e
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld e, $e0
    pop af
    nop
    adc a
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
    cp $00
    ld sp, hl
    nop
    rst $20
    nop
    sbc a
    nop
    ld a, h
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    add b
    ld a, a
    sub l
    ld [hl+], a
    push bc
    ld a, [hl+]
    ld a, h
    inc bc
    ld d, l
    ld [hl+], a
    rst $38

jr_087_72f9:
    nop
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $7d
    ld [bc], a
    ld sp, hl
    ld b, $79
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $6d

jr_087_730b:
    ld b, $70
    rrca
    ld a, l
    ld b, $39

jr_087_7311:
    ld b, [hl]
    ld a, c
    add [hl]
    reti


    ld h, $68
    rla
    push af
    ld c, $30
    ld c, a
    ld b, $7d
    jp nz, $8f3d

    ld [hl], h
    inc h
    rst $18
    and h
    ld e, a
    add h
    ld a, a
    adc b
    ld [hl], a
    sub h
    ld a, a
    adc h
    ld [hl], a
    inc a
    rst $00
    jr c, jr_087_72f9

    cp b
    ld b, a
    ld a, b
    rst $00
    inc a
    rst $00
    inc [hl]
    rst $00
    db $fc
    ld b, a
    ret c

    ld h, a
    inc a
    rst $00
    jr nc, jr_087_7311

    jr c, jr_087_730b

    sbc b
    ld h, a
    ld [$5cf7], sp
    rst $20
    ld e, b
    rst $20
    jr nc, @-$2f

    ld d, d
    rst $28
    ld l, [hl]
    rst $10
    ld b, [hl]
    rst $38
    ld c, [hl]
    rst $30
    ld b, [hl]
    rst $38
    ld b, c
    cp $18
    rst $20
    ret nz

    ccf
    nop
    rst $38
    cp $ff
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld h, b
    rra
    or b
    rrca
    call z, $f603
    ld bc, $00fb
    db $fd
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
    cp $00
    db $fd
    nop
    di
    nop
    rst $08
    nop
    ld a, $01
    ld hl, sp+$07
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
    db $eb
    inc [hl]
    jp $8b3c


    inc [hl]
    rst $08
    inc [hl]
    dec bc
    db $f4
    add d
    ld a, l
    ld [$bdf7], sp
    ld a, [hl]
    cp e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, h
    ei
    inc b
    cp e
    ld b, h
    ld [hl], $c9
    ld a, e
    add h
    ld a, l
    add d
    cp h
    ld b, e
    cp c
    ld b, [hl]
    ld [hl], $c9
    ld [hl-], a
    call Call_087_5fa0
    ld [hl], $c9
    ld a, [c]
    dec c
    ld d, h
    xor e
    ld [hl], l
    adc e
    ld [hl], b
    adc a
    ld [hl], c
    adc a
    add hl, sp
    rst $08
    ld sp, hl
    rrca
    ld sp, $31cf
    rst $08
    db $e4
    sbc e
    pop hl
    sbc a
    ld h, b
    sbc a
    xor b
    rst $18
    add b
    rst $38
    adc d
    rst $38
    sub b
    rst $28
    add b
    rst $38
    adc d
    rst $38
    add d
    rst $38
    add d
    rst $38
    jp nz, $9aff

    rst $38
    sub [hl]
    rst $38
    sub d
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld a, [de]
    rst $38
    sbc d
    rst $38
    ld [$80ff], sp
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    ld hl, sp+$00
    ret nz

    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld h, b
    rra
    cp b
    rlca
    call c, $ef03
    nop
    di
    nop
    db $fd
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
    cp $00
    ld sp, hl
    nop
    rst $20
    nop
    sbc a
    nop
    ld a, h
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    adc e
    ld [hl], l
    ld [$12f7], sp
    db $ed
    ld a, [de]
    push hl
    inc e
    db $e3
    add hl, de
    and $18
    rst $20
    dec c
    ld a, [c]
    add hl, sp
    add $0b
    or $11
    xor $85
    ld a, [$f28d]
    add hl, bc
    or $01
    cp $01
    cp $05
    ld a, [$fc03]
    inc bc
    db $fc
    inc bc
    db $fc
    add [hl]
    db $fd
    add e
    db $fc
    rlca
    db $fc
    inc de
    db $ec
    ld bc, $c3fe
    db $fc
    ld de, $21ee
    cp $18
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    nop
    rst $38
    dec c
    ei
    jr nz, @-$1f

    ld d, b
    rst $28
    db $10
    rst $28
    nop
    rst $38
    db $10
    rst $28
    ld [$02ff], sp
    rst $38
    inc bc
    cp $01
    cp $02
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add h
    rst $38
    db $10
    rst $38

Call_087_74b2:
    ld d, b
    rst $38
    db $10
    rst $38
    add b
    rst $38
    ld c, h
    rst $38
    nop
    cp a
    inc c
    rrca
    nop
    inc bc
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld a, b
    rlca
    sbc h
    inc bc
    xor $01
    rst $30
    nop
    ei
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
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    di
    nop
    rst $08
    nop
    ld a, $01
    ld hl, sp+$07
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
    pop af
    db $ec
    db $d3
    inc l
    ld a, [c]
    inc l
    pop de
    inc l
    ld a, [c]
    inc l
    pop de
    inc l
    call nc, $b929
    ld b, h
    xor c
    ld d, [hl]
    or a
    ld c, b
    add a
    ld a, b
    call c, $b678
    ld c, b
    or [hl]
    ld c, b
    cp $00
    and h
    ld c, d
    and h
    ld c, d
    ld a, h
    add d
    ld e, [hl]
    add b
    db $f4
    ld [$807c], sp
    ld l, h
    sub b
    ld [hl], h
    adc b
    ld [hl], h
    adc b
    db $db
    db $fc
    db $db
    db $fc
    rst $38
    ld hl, sp+$56
    ld hl, sp-$2a
    ld hl, sp-$2a
    ld hl, sp-$2a
    ld hl, sp-$0a
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$f3]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f9]
    ld hl, sp-$01
    cp $87
    ld a, b
    dec bc
    ld hl, sp+$07
    ld hl, sp+$06
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    ld b, $f9
    ld b, [hl]
    ld sp, hl
    add a
    ld sp, hl
    sbc [hl]
    pop af
    inc e
    di
    adc d
    push af
    ld a, [de]
    push af
    and [hl]

jr_087_756b:
    ld sp, hl
    ld [bc], a
    ld sp, hl
    jr nz, jr_087_756b

    add b
    db $fd
    ld l, $37
    ld bc, $000f
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    inc c
    nop
    add hl, bc
    ld [bc], a
    ld [$0802], sp
    ld a, [bc]
    ld [$0802], sp
    ld [bc], a
    ld [$0208], sp
    ld a, [bc]
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    inc de
    db $fc
    jr @-$0e

    rra
    ldh a, [rNR32]
    ldh a, [$b4]
    ld a, b
    cp $38
    ld a, a
    inc a
    cp a
    ld a, $ff
    ccf
    rst $38
    ccf
    ei
    ccf
    ret


    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $00
    ld sp, hl
    nop
    rst $20
    nop
    sbc [hl]
    ld bc, $037c
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub h
    db $eb
    call c, $cda3
    and d
    ret


    and [hl]
    ret


    and [hl]
    ret


    and [hl]
    reti


    and [hl]
    add hl, de
    and $bb
    ld b, h
    or c
    ld c, h
    or c
    ld c, h
    or c
    ld c, h
    and e
    ld c, h
    or e
    ld c, h
    scf
    ret z

    ld [hl-], a
    ret


    ld [hl-], a
    ret


    ld [hl+], a
    reti


    ld [bc], a
    ld sp, hl
    ld b, d
    cp c
    add $39
    add $39
    ld c, [hl]
    ld sp, $3146
    ld b, [hl]
    ld sp, $31c6
    add $31
    adc $31
    adc $31
    adc [hl]
    ld [hl], c
    adc h
    ld [hl], e
    inc c
    db $e3
    ld [$09e6], sp
    and $19
    and $39
    add $39
    add $99
    ld b, [hl]
    sbc c
    ld b, [hl]
    xor e
    ld d, h
    db $e4
    add b
    db $fc
    ldh a, [$fe]
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
    ld c, $f3
    adc b
    ld [hl], a
    inc c
    di
    nop
    rst $38
    db $10
    rst $28
    sbc b
    rst $20
    inc b
    rst $38
    ld [$00f7], sp
    rst $38
    ld b, d
    rst $38
    nop
    db $fc
    add b

jr_087_7647:
    ei
    ld b, b
    rst $20
    nop
    ld c, a
    ld [$00bf], sp
    ld h, a
    nop
    and d
    ld bc, $0020
    ld hl, $2100
    nop
    ld de, $1100
    nop
    stop
    db $10
    ei
    ld hl, sp-$1b
    ldh [$3d], a
    ld bc, $0776
    or a
    jr c, jr_087_7647

    ret nz

    adc a
    rrca
    rst $10
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    dec sp
    db $fc
    ld l, e
    db $fc
    ld h, e
    db $fc
    add $f9
    adc [hl]
    pop af
    dec e
    db $e3
    db $dd
    inc hl
    db $fd
    inc bc
    pop af
    rlca
    ld [hl], c
    add a
    inc sp
    rst $00
    ld [de], a
    rst $20
    ld [bc], a
    rst $30
    ld bc, $03fe
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
    nop
    rst $38
    ld d, c
    xor [hl]
    call $8132
    ld a, [hl]
    add c
    ld a, [hl]
    adc c
    ld h, [hl]
    add hl, de
    and $19
    and $1a
    db $e4
    ld a, [de]
    call nz, $cc12
    ld [de], a
    call z, $cc12
    ld [de], a
    call z, $cc12
    rla
    ret z

    dec [hl]
    adc b
    dec [hl]
    adc b
    dec [hl]
    adc b
    ld h, l
    jr jr_087_773c

    jr @+$67

    jr jr_087_7740

    jr jr_087_7744

    jr jr_087_7742

    inc e
    ld h, e
    inc e
    ld l, d
    dec d
    ld c, d
    dec [hl]
    ld c, d
    dec [hl]
    jp z, $c235

    dec a
    call nz, $c53b
    ld a, [hl-]
    dec sp
    nop
    ei
    nop
    ei
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld l, a
    nop
    ld a, a
    nop
    ld l, c
    nop
    ld a, l
    nop
    ld l, a
    nop
    jp hl


    ret nz

    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    db $e3
    ld d, $eb
    db $10
    rst $28
    inc h
    db $db
    ld a, b
    rst $00
    ld h, b
    rst $18
    inc h
    rst $18
    dec h
    sbc $80
    add c
    nop
    ld a, $20
    sbc a
    add c
    cp [hl]
    nop
    cp a
    ld b, b
    rra
    inc bc
    ld e, [hl]
    nop
    ld e, a
    cp a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp h
    db $fc

jr_087_773c:
    and b
    ldh [$80], a
    add b

jr_087_7740:
    ld b, $07

jr_087_7742:
    sub e
    db $10

jr_087_7744:
    rst $08
    ret nz

    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    db $76
    add b
    ld a, [$fc00]
    nop
    db $fc
    nop
    ld a, b
    nop
    ld a, b
    nop
    ld l, c
    nop
    ld [hl], e
    nop
    ld a, a
    nop
    scf
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$f0], a
    ldh [$e8], a
    ldh a, [$e1]
    cp $ee
    rst $30
    adc $f7
    adc a
    rst $30
    sbc [hl]
    rst $20
    inc e
    rst $28
    inc a
    rst $08
    inc a
    rst $08
    ld hl, sp+$0f
    pop hl
    ld e, $c1
    ld a, $e3
    inc e
    jp Jump_087_433c


    cp h
    rra
    ldh [rIF], a
    ldh a, [rTAC]

jr_087_778b:
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ei
    rlca
    ld a, a
    inc bc
    ld e, e
    rlca
    ld a, e
    rlca
    ld a, d
    rlca
    ld a, d
    rlca
    db $76
    rrca
    or $0f
    and $16
    db $e4
    inc e
    db $e4
    inc e
    db $ed
    dec e
    db $fd
    dec c
    db $ed
    dec e
    db $ed
    dec e
    ret


    add hl, sp
    ret


    add hl, sp
    reti


    dec sp
    db $d3
    dec sp
    db $d3
    inc sp
    ret nc

    jr nc, jr_087_778b

    inc [hl]
    or a
    ld [hl], a
    scf
    rst $30
    scf
    rst $30
    daa
    rst $20
    cpl
    rst $28
    cpl
    rst $28
    cpl
    rst $28
    ld l, a
    rst $28
    ld a, e
    ei
    ld d, b
    ld hl, sp-$01
    ld e, b
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    add c
    rst $38
    ldh a, [rIE]

jr_087_77e3:
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
    sub e
    ld [hl], b
    dec b
    ldh a, [rP1]
    pop af
    ld [hl], $e1
    ld a, [hl-]
    pop hl
    inc sp
    pop hl
    add hl, de
    db $e3
    jr jr_087_77e3

    ld c, h
    di
    nop
    rra
    ld h, b
    rst $00
    dec hl
    sub $7d
    add [hl]
    db $ed
    add [hl]
    db $e4
    adc a
    or a
    adc l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    cpl
    inc bc
    rrca
    nop
    stop
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
    ld bc, $1f00
    nop
    cp b
    cp b
    add c
    add b
    rla
    nop
    ld e, a
    nop
    rst $30
    nop
    cp e
    nop
    ld l, h
    nop
    or [hl]
    nop
    pop de
    nop
    inc h
    nop
    ld d, d
    nop
    ld h, c
    nop
    ld l, c
    nop
    ld [hl], d
    inc c
    ld h, b
    adc h
    xor b
    sbc h
    inc b
    sbc b
    ld e, b
    cp h
    ld a, $fc
    ld a, h
    cp $7d
    cp $7c
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld sp, hl
    cp $f1
    cp $f1
    cp $e3
    db $fc
    rst $38
    ret nz

    dec bc
    db $f4
    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld h, a
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
    add e
    add e
    add b
    sbc a
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    di
    di
    di
    di
    di
    di
    db $ed
    db $fd
    cp $fe
    cp $fe
    ld hl, sp-$01
    nop
    ld a, a
    nop
    ld a, l
    ldh a, [$f7]
    db $fc
    db $fd
    pop af
    db $fc
    pop hl
    db $fc
    pop hl
    db $fc
    ld sp, hl
    db $fd
    ld sp, hl
    db $fd
    pop af
    db $fd
    db $e3
    db $fd
    rst $20
    ei
    ld a, [$fa02]
    ld [c], a
    or $e2
    rst $30
    ldh [$f5], a
    push hl
    push af
    push hl
    push af
    push hl
    db $eb
    set 7, e
    jp z, $eafa

    ld a, [$feea]
    ldh [$d6], a
    ret nz

    push de
    call nz, $c4d5
    db $dd
    ret nz

    res 0, b
    db $eb
    add b
    ld a, [$fee8]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc de
    db $fc
    inc de
    db $fc
    sub a
    ld a, b
    dec sp
    db $f4
    ld b, $f9
    dec l
    ld a, [c]
    ld a, [hl+]
    push af
    ld [hl], e
    db $ed
    rst $38
    rst $38
    rst $38
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
    rra
    rrca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    ld a, d
    nop
    ldh [rP1], a
    add b
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    ret nc

    nop
    ld h, b
    nop
    nop
    nop
    jr jr_087_792e

jr_087_792e:
    inc c
    nop
    jr nz, jr_087_7932

jr_087_7932:
    and b
    nop
    ld d, b
    nop
    jr nz, jr_087_793a

    jr nz, jr_087_793b

jr_087_793a:
    ld b, b

jr_087_793b:
    ld [bc], a
    add c
    rlca
    add e
    rlca
    rlca
    nop
    rrca
    nop
    ld e, $01
    inc de
    inc c
    jr nz, jr_087_7969

    and b
    rra
    inc b
    rst $38
    db $76
    rst $38
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    and $ff
    and $ff
    add $ff
    adc $ff
    push bc
    cp $d4
    rst $28
    ret nc

    rst $28
    ret nc

    rst $28
    ld hl, sp-$09
    ld hl, sp-$09
    ld sp, hl

jr_087_7969:
    or $fe
    pop af
    db $fc
    di
    rst $38
    pop hl
    cp $f1
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
    ccf
    add d
    ei
    ld [c], a
    ei
    and $f9
    and $f8
    rst $20
    rst $10
    push bc
    rst $30
    push bc
    or l
    rst $08
    adc $0e
    jp z, $ca0a

    ld a, [bc]
    jp z, $950a

    dec d
    sub l
    dec d
    sub l
    dec d
    sub l
    dec d
    rst $28
    ld hl, $2beb
    db $eb
    dec hl
    db $eb
    dec hl
    cp $42
    sub $56
    sub $56
    rst $10
    ld d, [hl]
    push af
    and l
    xor l
    xor l
    xor l
    xor l
    xor a
    xor c
    rst $28
    ld c, e
    ld e, e
    ld c, d
    ld e, d
    ld c, d
    ld e, [hl]
    ld e, d
    sbc $16
    call nc, $b514
    sub h
    cp l
    or h
    xor l
    add hl, hl
    xor c
    add hl, hl
    ld l, e
    add hl, hl
    ld e, e
    ld b, c
    ld e, e
    ld d, e
    db $d3
    ld d, e
    rst $10
    db $d3
    rst $30
    add a
    and a
    and a
    xor a
    and a
    cpl
    cpl
    ld l, a
    rrca
    ld e, a
    rrca
    ld e, a
    rrca
    rst $18
    rlca
    sbc a
    rra
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add c
    ld a, a
    ld b, e
    db $fd
    add c
    rst $38
    add d
    rst $38
    jp nz, Jump_000_03bf

    cp $06
    cp $05
    cp $06
    db $fd
    ld b, $fd
    add hl, bc
    cp $0c
    ei
    dec c
    ei
    sub c
    rst $38
    sub b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rra
    rra
    rlca
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
    ld a, $00
    jr jr_087_7a2a

jr_087_7a2a:
    inc b
    nop
    inc bc
    nop
    nop
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rra
    nop
    ld a, [hl-]
    dec b
    pop bc
    ld a, $87
    ld a, b
    ld b, $f8
    rlca
    ei
    rra
    rst $20
    sbc a
    ld h, a
    rst $38
    ld c, $ff
    ld e, $fe
    dec e
    db $fc
    dec sp
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    di
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    db $ed
    ld a, [c]
    db $eb
    db $f4
    pop de
    xor $c1
    cp $99
    cp $33
    db $fc
    ld a, [c]
    db $fd
    ldh a, [rIE]
    ldh [rIE], a
    inc a
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    di
    rrca
    ld a, [hl]
    add c
    rlca
    rst $38
    nop
    rst $38
    cp a
    or d
    or [hl]
    or h
    or [hl]
    or h
    cp $24
    ld a, h
    inc h
    ld l, h
    inc l
    ld l, l
    ld l, h
    ld a, l
    ld c, c
    ld sp, hl
    ld c, c
    db $db
    reti


    db $db
    db $d3
    db $db
    sub e
    di
    sub e
    or a
    or e
    or a
    and [hl]
    rst $20
    and h
    rst $28
    cpl
    ld l, a
    ld l, a
    ld l, a
    ld c, a
    ld c, a
    ld c, a
    rst $18
    rst $18
    rst $18
    sbc a
    rst $18
    sbc a
    sbc a
    sbc a
    cp a
    sbc a
    cp a
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ld e, a
    pop hl
    sub a
    jp hl


    sbc c

jr_087_7ac5:
    db $e3
    cp h
    jp $c2bf


    or [hl]
    jp z, $c6bd

    ld l, a
    add h
    ld e, a
    and h
    ld [hl], e
    adc h
    ld a, a
    adc b
    ei
    ld [$9863], sp
    db $e3
    jr jr_087_7b3c

    or b
    ld b, a
    or b
    daa
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$0a], a
    push hl
    cp $41
    ld a, a
    ret nz

    cp l
    jp nz, $81ff

    rst $38
    add c
    dec sp
    push bc
    jr nc, jr_087_7ac5

    adc [hl]
    ld [hl], e
    sub d
    ld l, a
    add h
    ld a, a
    dec b
    rst $38
    nop
    rst $38
    ld [$a8ff], sp
    ld e, a
    db $10
    rst $38
    ld de, $10fe
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ld h, h
    rst $38
    rst $38
    rst $38
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
    ccf
    ccf
    rrca
    dec b
    inc bc
    rlca
    ld bc, $0182
    ld [hl+], a
    ld bc, $030c
    cp d
    dec b
    ldh a, [rIF]
    ldh [$1f], a
    pop bc
    ld a, $cb
    inc [hl]
    rst $28
    db $10
    db $fc
    nop
    di
    nop
    rst $00
    nop

jr_087_7b3c:
    adc h
    inc bc
    jr nc, @+$11

    add b
    sbc a
    add b
    cp [hl]
    ld bc, $037d
    ei
    rlca
    rst $30
    rrca
    rst $28
    ld e, $fe
    ld e, $de
    rra
    cp $3e
    rst $18
    ld a, $dd
    db $fc
    rra
    db $fc
    dec sp
    db $fc
    dec sp
    ld hl, sp+$77
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    pop bc
    ld a, $c3
    inc a
    add a
    ld a, b
    ld b, $f9
    inc c
    di
    nop
    rst $38
    nop
    nop
    ld b, $00
    add b
    ld [$3c00], sp
    nop
    jr c, @+$03

    ld hl, sp+$00
    ld sp, hl
    ld [bc], a
    ld a, c
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
    jr jr_087_7bb3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_087_7bc3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_087_7bd3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_087_7be3

    ld [hl-], a

jr_087_7bb3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_087_7bf3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_087_7bc3:
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

jr_087_7bd3:
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

jr_087_7be3:
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

jr_087_7bf3:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld l, c
    ld l, c
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
    ld l, c
    ld l, c
    adc b
    adc c
    adc d
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
    ld l, c
    ld l, c
    sub l
    sub [hl]
    adc d
    adc d
    sub a
    sbc b
    sbc c

Call_087_7c23:
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    ld l, c
    ld l, c
    and c
    adc d
    adc d
    adc d
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    ld l, c
    ld l, c
    ld l, c
    xor d
    xor e
    adc d
    adc d
    adc d
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    ld l, c
    ld l, c
    ld l, c
    or h
    or l
    adc d
    adc d
    adc d
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
    jp nz, $8a8a

    adc d
    jp $c5c4


    add $c7
    ret z

    ret


    jp z, $cccb

    call $ce69
    rst $08
    adc d
    adc d
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $69db

    call c, $8add
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eb88], a
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    and b
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$6909], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_087_7cd8

    ld l, c
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_087_7cd8:
    nop
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    inc b
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
    ld [bc], a
    dec b
    dec b
    dec b
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
    inc b
    ld [bc], a
    dec b
    dec b
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
    inc b
    inc b
    inc b
    dec b
    dec b
    ld [bc], a
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
    inc b
    inc b
    inc b
    ld [bc], a
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
    inc b
    inc b
    inc b
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
    inc b
    inc b
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
    inc b
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
    inc b
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
    inc b
    inc b
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
    inc b
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
    inc b
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
    inc b
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
    inc b
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
    inc h
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
    jr nz, jr_087_7de3

    inc b
    nop
    nop
    nop

jr_087_7de3:
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c00], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    nop
    ld d, e
    call nz, $c441
    ld h, l
    ret nz

    ld c, c
    db $e4
    add hl, hl
    db $e4
    cpl
    ldh [$2f], a
    ldh [$37], a
    add sp, $3a
    ldh [rNR22], a
    ldh a, [rNR11]
    db $f4
    db $10
    ld sp, hl
    ld [de], a
    ld sp, hl
    ld c, d
    cp b
    ld c, c
    cp d
    dec bc
    db $fc
    ld [hl], e
    adc h
    daa
    call c, $cc37
    ld c, [hl]
    db $fc
    db $fc
    cp $fc
    ld [bc], a
    cp $02
    rst $38
    ld [bc], a
    call nc, Call_087_7c23
    add e
    ld hl, sp+$03
    ld a, e
    add c
    ld a, [$ba01]
    ld bc, $00bf
    cp $00
    rst $38
    nop
    ccf
    add b
    xor a
    sub b
    cp [hl]
    add b
    cp l
    jp nz, $e09f

    ld l, e
    call nc, $d669
    rst $08
    ld [hl], b
    sbc [hl]
    ld h, c
    daa
    add sp, $7b
    and b
    ld h, a
    or b
    rra
    ldh a, [$9f]
    ld [hl], b
    dec sp
    ret nc

    rla
    ld hl, sp+$13
    db $fc
    dec de
    db $ec
    dec de
    db $ec
    dec de
    db $ec
    ld h, $dd
    dec h
    sbc $4c
    or a
    inc b
    rst $38
    inc bc
    cp $04
    ld hl, sp+$00
    di
    inc bc
    rst $08
    add c
    rra
    ld hl, $216f
    rst $28
    ld bc, $24f7
    ld [hl], a
    db $10
    ld [hl], a
    db $10
    ld [hl], a
    db $10
    ld a, e
    ld [$88bb], sp
    cp e
    adc e
    cp b
    ldh a, [rIE]
    ret nz

    rst $38
    pop bc
    cp $83
    db $fc
    add a
    ld hl, sp-$31
    ldh a, [$bf]
    ret nz

    ld a, [hl]
    add c
    cp e
    ld b, h
    ld [hl], a
    adc b
    rst $38
    nop
    cp h
    ld b, e
    ld [hl], b
    adc [hl]
    ret nz

    ld sp, $6380
    nop
    sbc a
    nop
    ccf
    nop
    rst $38
    nop
    db $fc
    ld b, $f6
    rla
    rst $10
    cpl
    cpl
    ccf
    ccf
    rra
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
    rst $38
    rst $38
    db $fc
    db $fc
    di
    ld a, [c]
    call $37ce
    ccf
    sbc $7b
    ei
    ld [c], a
    ld [c], a
    push af
    push af

jr_087_7ee0:
    rst $38

jr_087_7ee1:
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fc
    db $fc
    db $ed
    db $ed
    or b
    or b
    jp nz, $e8c3

    rst $20
    inc e
    ccf
    rst $20
    ldh a, [$bf]
    add b
    ld sp, hl
    add b
    xor d
    rst $38

jr_087_7efa:
    ld a, e
    ret nz

    ld l, c
    ld b, a
    ld e, a
    ld a, a
    db $76
    and b
    ld b, e
    or b
    db $d3
    jr nc, @-$2b

    jr nc, jr_087_7ee0

    jr nc, @+$01

    db $10
    or a
    ld e, b
    and $19
    rst $08
    jr c, jr_087_7f61

    add hl, sp
    rst $08
    jr c, jr_087_7efa

    inc e
    and a
    ld e, h
    rst $10
    inc l
    db $ec
    ld d, $6d
    sub [hl]
    ld l, l
    sub [hl]
    ld a, e
    add [hl]
    ld d, e
    adc [hl]
    ld c, d
    sub a
    ld [hl], d
    adc a
    inc sp
    ld c, a
    ld sp, $114f
    ld l, a
    or c
    ld c, a
    ld hl, $314f
    ld c, a
    ret nz

    cpl
    jr jr_087_7ee1

    ret nc

    daa
    ret nc

    daa
    inc l
    sub e
    ld l, [hl]
    sub c
    dec h
    jp c, Jump_087_6a95

    di
    ld c, h
    ld e, b
    ld h, a
    adc c
    db $76
    dec a
    ld h, d
    ld [hl], c
    ld a, [hl+]
    push af
    ld a, [hl+]
    add [hl]
    add hl, sp
    sbc d
    dec [hl]
    db $f4
    dec de
    ld sp, hl
    ld d, $c1
    ld a, $f4
    dec bc
    db $e4
    dec de
    reti


jr_087_7f61:
    ld l, $70
    adc a

jr_087_7f64:
    db $f4
    rrca
    ldh [$1f], a
    cp h
    ld b, a
    call c, Call_087_6927
    sub a
    ld h, h
    sbc b
    nop
    add l
    nop
    dec a
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, [hl]
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    cp [hl]
    add b
    rst $18
    add l
    rst $18
    push bc
    rst $18
    ret nz

    rst $18
    call nz, Call_087_40ef
    rst $28
    ld b, b
    ldh [rP1], a
    nop
    rra
    ldh [$7e], a
    add c
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $00
    jr c, @+$21

    ldh [$7f], a
    add b
    cp $01
    rst $20
    jr jr_087_7f64

    ld b, b
    ld hl, sp+$07
    ret nz

    ccf
    ld bc, $1fff
    rst $38
    ld a, h
    rst $38
    rlca
    ld a, [$907f]
    rst $38
    add b
    rst $38
    sub a
    rst $38
    xor a
    rst $38
    sbc $ff
    jp c, $dfff

    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $30
    rst $30
    db $f4
    db $f4
    ldh a, [$f3]
    ld bc, $0a0d
    ld a, d
    ld a, h
    sbc h
    ldh a, [$f0]
    or h
    or h
    or b
    or b
    push hl
    ld h, l
    ld e, a
    rst $18
    ld a, h
    db $fc
    db $f4
    inc [hl]
    xor b
    add sp, $20
    ld h, b
    ldh [$80], a
    ld b, $25
    db $10
    ccf
    call nz, Call_000_02bb
    di
    rst $20
    ld [hl], a
    rst $38
    inc de
    ld [$1808], sp
    ld [$08af], sp
    xor b
    ld a, a
    call c, Call_000_1c3f
    rst $38
    ccf
    rst $38
