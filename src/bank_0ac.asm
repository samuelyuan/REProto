SECTION "ROM Bank $0ac", ROMX[$4000], BANK[$ac]

    nop
    nop
    jr nz, jr_0ac_4004

jr_0ac_4004:
    ld b, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    jr nz, jr_0ac_402c

jr_0ac_402c:
    nop
    nop
    add d
    nop
    ld [bc], a
    rlca
    call nz, $e703
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca

Jump_0ac_403c:
    rst $18
    jr nz, @+$01

    nop
    ret nz

    nop
    ld l, a
    nop
    db $fd
    nop
    cp [hl]
    nop
    sbc d
    nop
    inc h
    nop
    sub c
    nop
    adc b
    ret nz

    call nz, $c0e0
    ldh a, [$c0]
    ldh a, [$e0]
    ld hl, sp-$20
    ld hl, sp-$1c
    ld hl, sp-$0c
    ld hl, sp-$0c
    ld hl, sp-$04
    ld hl, sp-$09
    ld hl, sp-$0a
    ld hl, sp-$0a
    db $fc
    and $fc
    and $f4
    add $f4
    add [hl]
    db $e4
    and $00
    db $ec
    add b
    db $fc
    ret z

    db $fc
    db $fc
    db $fc
    ld hl, sp-$04

jr_0ac_407b:
    ld hl, sp-$08
    ld hl, sp-$10
    ret nc

    rst $38
    add b
    cp a
    ret nz

    rst $18
    and b
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    cp e
    ld b, h
    rla
    add sp, $00
    nop
    nop
    nop
    ld bc, $e280
    sub b
    sbc a
    ldh [$f0], a
    rst $38
    add d
    cp $a0
    sbc [hl]
    ld h, [hl]
    ld hl, sp+$00
    add $01
    add d
    ld bc, $0082
    ld bc, $0303
    ld [bc], a
    ld b, d
    ld [bc], a
    add d
    ld h, d
    ld [bc], a
    ld [bc], a
    ld a, d
    ld [hl], d

Jump_0ac_40b5:
    cp $fa
    cp $fe
    rst $38
    ld l, d
    ld a, a
    ld e, [hl]
    ld a, a
    cp $ff
    xor $ff
    add a
    rst $38
    cp $ff
    cp $fe
    ld a, [hl]
    ld a, a
    ld a, e
    ld a, e
    ld a, e
    ei
    ccf
    ld a, a
    ld a, a
    rst $38
    cp a
    rst $38
    rst $30
    rrca
    rst $18
    ccf
    cp $7f
    ld a, [c]
    ld a, a
    ld [c], a
    ld a, a
    ldh [rSVBK], a
    ldh [$f0], a
    ldh [$e1], a
    ldh [$e3], a
    ldh [rIE], a
    ret nz

    rst $38
    ld [hl], d
    adc l
    rst $20
    jr jr_0ac_407b

    ld [hl], e
    ld e, e
    add b
    and b
    nop
    ld b, b
    nop
    ld a, [hl+]
    nop
    sub b
    nop
    and b
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
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    add a
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $30
    ld [$16e9], sp
    ld d, d
    xor l
    db $eb
    inc d
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
    ret nz

    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    and b
    nop
    ld b, b

Jump_0ac_413f:
    nop
    nop
    nop
    ld b, b
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
    add b
    nop
    ld b, b
    nop
    and b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ret nz

    nop
    and b
    nop
    nop
    nop
    adc b
    nop
    jr nz, jr_0ac_416a

jr_0ac_416a:
    sub b
    nop
    ld hl, sp+$00
    db $f4
    nop
    ld hl, sp+$00
    add hl, de
    ldh [rVBK], a
    ldh a, [$df]
    ldh a, [$f7]
    ld hl, sp-$01
    ld hl, sp+$76
    ld hl, sp+$3b
    db $fd
    db $db
    inc h
    rst $38
    nop
    rst $38
    rlca
    ld a, a
    cp b
    ldh [rIE], a
    rst $18
    jr nz, jr_0ac_419f

    ld [de], a
    ld [hl], $36
    ld l, l
    ld l, l
    ret


    add hl, bc
    rst $20
    nop
    db $fc
    nop
    ld h, h
    add b
    ld a, a
    add b
    ld l, a
    add a
    add hl, sp

jr_0ac_419f:
    sbc h
    db $ed
    db $ed
    set 1, e
    adc b
    sub e
    jp Jump_0ac_719f


    rst $38
    di

jr_0ac_41ab:
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$c0fd]
    rst $38
    ld bc, $47ff
    cp a
    rst $08
    ccf
    dec bc
    db $f4
    jr nz, jr_0ac_423f

    nop
    ld a, a
    ld [$10ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_0ac_41ab

    ret nc

    cpl
    ld c, e
    or h
    rst $10
    jr nz, jr_0ac_41ea

    nop
    ld [bc], a
    nop
    nop
    nop
    and b
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
    nop
    nop
    nop
    nop

jr_0ac_41ea:
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0500
    nop
    dec bc
    nop
    rla
    nop
    rrca
    nop
    rra
    nop
    ld [$0700], sp
    nop
    rlca
    nop
    ccf
    nop
    db $eb
    nop
    cpl
    nop
    rlca
    nop
    rst $18
    nop
    rst $38
    nop
    db $dd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$fc05]
    inc bc
    ld a, [$ff05]
    nop
    rra
    ldh [$bf], a
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
    or a
    nop
    dec d
    nop
    inc hl
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

jr_0ac_423f:
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    db $10
    rst $38
    rla
    ld hl, sp+$17
    ld hl, sp+$10
    rst $38
    jr z, jr_0ac_4262

    ldh [rNR23], a
    ldh [rNR10], a
    ldh a, [rNR10]
    ldh a, [rNR22]
    or $11
    ldh a, [rNR11]
    cp $ff
    ld e, $1a

jr_0ac_4262:
    rst $30
    ld [c], a
    ld d, $02
    ld d, $02
    sub d
    add d
    ld d, $02
    ld [de], a
    ld [bc], a
    inc de
    ld [bc], a
    sbc [hl]
    add e
    rra
    ld [bc], a
    rra
    ld [bc], a
    rrca
    rla
    rra
    ld e, $f2
    rst $38
    ld [c], a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld h, d
    ld a, a
    ld h, [hl]
    ei
    ld b, e
    cp $02
    rst $38
    rst $30
    ei
    di
    ei
    ldh [$f1], a
    pop bc
    ldh a, [$8b]
    ld a, h
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    cp a
    ld b, b
    db $ed
    ld [de], a
    rst $28
    db $10
    ld e, a
    and b
    ld sp, hl
    ld b, $b7
    ld [$0054], sp
    cp $00
    db $fd
    ld [bc], a
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp+$07
    db $f4
    dec bc
    db $fd
    ld [bc], a
    cp $01
    cp $01
    rst $38
    nop
    push af
    nop
    ei
    nop

Jump_0ac_42e0:
    nop
    nop
    nop
    nop
    ld [$1400], sp
    nop
    inc e
    nop
    dec d
    nop
    cpl
    nop
    ld a, [de]
    nop
    dec b
    nop
    dec bc
    nop
    ld bc, $8100
    nop
    rra
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    ld b, e
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
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    cp l
    nop
    push de
    nop
    jr z, jr_0ac_431c

jr_0ac_431c:
    ld bc, $0000
    nop
    ld [bc], a
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
    ld bc, $0100
    nop
    ld bc, $0000
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    cp $01
    cp $01
    nop
    rst $38
    ld de, $0000
    nop
    nop
    nop
    inc l
    nop
    add h
    ld a, h
    nop
    cp $c7
    cp $f7
    cp $01
    nop
    di
    cp $7f
    sub b
    rrca
    sub b
    ld l, a
    or b
    ld c, d
    or l
    jr nc, @-$1f

    ld de, $bfff
    ld d, b
    sbc $01
    cp d
    ld d, l
    db $fc
    ei
    ld sp, hl
    ld e, a
    or $fd
    sbc h
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    nop
    rst $38
    xor a
    ld d, b
    adc a
    ld [hl], b
    srl h
    rla
    adc b
    cp a
    ret nz

    add e
    db $fc
    cp a
    ld b, b
    call $ff30
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
    and b
    ld e, a
    ret z

    scf
    ldh [$1f], a
    xor b
    ld d, a
    rst $38
    nop
    ld d, a
    nop
    ld b, b
    nop
    nop
    nop
    jp hl


    nop
    cpl
    nop
    inc bc
    nop
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
    jr nz, jr_0ac_43c8

jr_0ac_43c8:
    ld [bc], a
    nop
    ld b, b
    nop
    stop
    inc h
    nop
    and b
    ld e, a
    nop
    cpl
    nop
    rra
    sub h
    dec hl
    ld hl, sp+$07
    and b
    ld c, $00
    rlca
    ld [$1517], sp
    ld a, [bc]
    ld a, [bc]
    dec d
    jr z, jr_0ac_43ec

    ld h, $09
    ld [hl], d
    dec b
    ld a, [hl-]
    dec b

jr_0ac_43ec:
    cp d
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    ld [bc], a
    ld a, d
    dec b
    cp $01
    ld sp, hl
    ld b, $fc
    inc bc
    cp $01
    ld c, $01
    dec b
    ld [bc], a
    nop
    inc bc
    ld bc, $0100
    ld [bc], a
    nop
    ld bc, $0100
    nop
    ld bc, $00ff
    ld a, e
    nop
    db $fd
    nop
    ld a, a
    nop
    db $fd
    nop
    xor h
    nop
    ld d, l
    nop
    cp b
    nop
    pop de
    nop
    ld d, c
    nop
    sbc b
    nop
    ld d, [hl]
    nop
    ld [$0000], sp
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
    inc bc
    nop
    ld a, a
    nop
    ld a, a
    nop
    xor a
    nop
    rrca
    nop
    rla
    nop
    ld a, a
    nop
    ld a, a
    add b
    cp $01
    ld a, h
    add e
    cp b
    rst $00
    ret nc

    rst $28
    ld a, a
    add b
    ld l, a
    sub b
    ld [hl], a
    adc b
    nop
    rst $38
    add hl, hl
    add b
    ld b, b
    add b
    ld [hl], b
    add b
    ld h, b
    add b

Call_0ac_4460:
    ret nz

    and b
    ret nz

    add b
    pop de
    add b
    rst $38
    and b
    add b
    ret nz

    or [hl]
    ret


    pop bc
    rst $38
    and b
    rst $38
    sub d
    db $ed
    pop hl
    rst $38
    sub l
    ld [$f7c8], a
    ldh [rIE], a
    ret nc

    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $09ff
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $ed
    db $10
    and l
    jp c, $fa05

    ld [bc], a
    db $fd
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
    dec b
    ld a, [$b44b]
    sub l
    ld l, d
    db $f4
    nop
    sub e
    nop
    ld e, a
    nop
    add hl, bc
    nop
    cp b
    nop
    ld e, a
    nop
    db $fc
    ld bc, $2492
    ld [$0900], sp
    nop
    xor d
    nop
    sub d
    nop
    nop
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
    ld d, d
    nop
    or [hl]
    nop
    call nz, $d800
    nop
    db $fc
    nop
    sbc h
    nop
    db $f4
    nop
    ld d, b
    nop
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add sp, $7f
    ret nz

    ccf
    db $fc
    ld a, a
    ld hl, sp-$41
    ld d, h
    nop
    ret c

    inc b
    cp d
    inc b
    db $fc
    ld [bc], a
    push af
    ld a, [bc]
    ret c

    daa
    rst $38
    nop
    db $eb
    nop
    add c
    rst $38
    add b
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    and e
    ld e, h
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    call nz, $fe01
    db $fd
    cp $fd
    jp hl


    nop
    ld e, [hl]
    ld bc, $00bf
    ld l, $01
    ld e, a
    nop
    ld l, h
    inc de
    ld [hl], b
    rrca
    ret nc

    cpl
    ldh [$1f], a
    ldh a, [rIF]
    ld h, b
    rra
    ldh a, [rIF]
    pop af
    rrca
    jp nc, $e52f

    rra
    rst $38
    rra
    ld d, b
    xor a
    and b
    ld e, a
    ret nc

    cpl
    pop af
    rrca
    ret nz

    ccf
    rst $10
    ccf
    sbc a
    ld a, a
    rst $28
    ccf
    rst $18
    ccf
    cp a
    ld e, a
    ld e, a
    cp a
    rst $28
    rst $38
    xor a
    ccf
    ld l, a
    ccf
    ld l, a
    ccf
    ld l, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    rra
    rst $38
    rra
    ccf
    rra
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    cp a

jr_0ac_4579:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, e
    db $f4
    ld d, b
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
    nop
    nop
    ld b, b
    nop
    ld a, [$5500]
    xor d
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
    ld e, b
    and a
    rst $38
    nop
    rst $38
    nop
    sub $00
    rst $38
    nop
    call c, Call_0ac_7f23
    nop
    ld b, c
    nop
    cp e
    nop
    adc e
    jr nz, @+$46

    nop
    ld b, b
    nop
    db $10
    ld b, b
    and h
    nop
    xor e
    nop
    adc d
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld b, b
    nop
    nop
    nop
    ld [bc], a
    nop
    jr nz, jr_0ac_45d0

jr_0ac_45d0:
    inc bc
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
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    dec bc
    rlca
    dec de
    rlca
    ld a, e
    rlca
    rlca
    inc bc
    inc bc
    rlca
    add d
    rla
    sub b
    rlca
    jr jr_0ac_4579

    and b
    adc e
    ld [hl+], a
    adc l
    ld c, b
    or a
    nop
    rst $38
    nop
    rst $38
    ld bc, $8ffe
    ld [hl], b
    rst $38
    nop
    dec a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    ld [hl], h
    inc bc
    ld [hl], h
    dec bc
    push de
    ld a, [hl+]
    ret nz

    ccf
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
    rrca
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
    db $10
    rst $28
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor e
    nop
    cp a
    ld b, b
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld a, h
    add e
    add a
    ld a, b
    cp c
    ld b, $d7
    nop
    ld a, a
    add b
    cp $00
    ld b, b
    nop
    ld [hl], b
    nop
    ld d, a
    nop
    sub a
    nop
    dec c
    nop
    ld [bc], a
    ld bc, $0000
    ld [$0000], sp
    nop
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
    inc b
    nop
    ld sp, hl
    cp $fc
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld c, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    jp nz, Jump_0ac_413f

    cp a
    pop bc
    ccf
    pop hl
    rra
    ret c

    rlca
    jr nc, jr_0ac_4709

    or l
    dec bc
    add hl, sp
    rlca
    ld sp, $110f
    rrca
    rra
    ld bc, $010f
    ld e, $01
    rla

jr_0ac_4709:
    ld bc, $0905
    ld [de], a
    ld bc, $010a
    ld c, $01
    ld [bc], a
    add hl, bc
    ld a, [hl+]
    ld bc, $0126
    ld c, d
    ld bc, $011e
    ld [hl], $01
    ld e, d
    ld bc, $012a
    ld [de], a
    ld bc, $018a
    db $f4
    dec bc
    ld d, h
    xor e
    db $10
    rst $28
    db $10
    rst $28
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rlca
    rst $38

jr_0ac_4738:
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38

jr_0ac_473e:
    ld b, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    scf
    nop
    ld c, $00
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
    rla
    nop
    ld l, b

jr_0ac_4755:
    rla
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], l
    rst $38
    nop
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    or [hl]
    nop
    ld b, c
    nop
    sub h

jr_0ac_4777:
    ld h, b
    db $fd
    ld [bc], a
    rst $38
    nop

jr_0ac_477c:
    rst $38
    nop
    ld a, [hl+]
    nop
    ld de, $aa04
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld a, [bc]
    nop
    jr nz, jr_0ac_4790

jr_0ac_4790:
    pop af
    ccf
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    db $e4
    ei
    db $e4
    ei
    db $e4
    ei
    db $e4
    ei
    db $e4
    ei
    pop hl
    cp $cf
    db $fc
    add $fc
    add b
    db $fc
    jr c, jr_0ac_477c

    inc e
    add sp, $18
    xor b
    jr nc, jr_0ac_473e

    jr nz, jr_0ac_4738

    and b
    nop
    and b
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_0ac_47c2

jr_0ac_47c2:
    ldh [rP1], a
    ld d, b
    jr nz, jr_0ac_4777

    nop
    ret nc

    jr nz, jr_0ac_47f3

    sub b
    ret c

    jr nz, jr_0ac_4755

    ld a, b
    add l
    ld a, b
    ld b, [hl]
    cp c

jr_0ac_47d4:
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, b
    cp a
    ld hl, $03ff
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld c, [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld c, [hl]
    rst $38
    sbc d
    rst $38
    sbc e
    rst $38
    xor d
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38

jr_0ac_47f3:
    rst $38
    rst $18
    ccf
    adc a
    rra
    rlca
    rrca
    dec bc
    rlca
    ld bc, $0003
    ld bc, $0095
    ld [hl], h
    inc bc
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor b
    ld d, a
    db $ed
    ld [bc], a
    dec d
    nop
    dec h
    ld [bc], a
    ld a, [$ff05]
    nop
    rst $38
    nop
    ld c, l
    jr nz, @+$2c

    nop
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ac_483c

jr_0ac_483c:
    ld bc, $4800
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    dec b
    ld hl, sp+$45
    cp b
    ld [hl], h
    adc b
    inc a
    add b
    jr c, jr_0ac_47d4

    adc b
    nop
    add b
    nop
    add c
    nop
    ld bc, $0000
    nop
    ld [bc], a
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
    nop
    nop
    inc b
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    nop
    add e
    nop
    rst $10
    nop
    ld a, l
    add d
    ld [hl+], a
    db $dd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    jr c, @+$01

    cp b
    rst $38
    cp h
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    db $dd
    rst $38
    db $dd
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
    rst $38
    rst $38
    cp a
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
    inc de
    rst $38
    inc bc
    rst $38
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, $d1
    or a
    nop
    ld c, b
    nop
    ld [hl], l
    add b
    xor [hl]
    ld d, c
    rst $38
    nop
    ld a, a
    nop
    xor b
    ld bc, $0026
    add hl, bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    rrca
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, a
    cp a
    adc a
    ld a, a
    add a
    ld a, a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    add a
    ld a, a
    sub c
    ld l, a
    reti


    daa
    or c
    ld c, a
    pop af
    rrca
    ld sp, hl
    rlca
    cp c
    ld b, a
    or c
    ld c, a
    di
    rrca
    pop hl
    rra
    pop hl
    rra
    pop bc
    ccf
    jp Jump_0ac_413f


    ccf
    ld b, e
    ccf
    inc bc
    ld a, a
    adc e
    ld a, a
    adc e
    ld a, a
    sbc a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, h
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
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $74ff
    adc e
    db $fd
    ld [bc], a
    rst $30
    nop
    ld [$8000], sp
    nop
    push af
    nop
    add l
    jr nz, @+$75

    add h
    ld d, a
    nop
    adc e
    jr nz, jr_0ac_49bc

    nop
    add h
    ld b, c
    add hl, bc
    nop
    jr nz, jr_0ac_498c

jr_0ac_498c:
    and h
    nop
    add hl, hl
    nop
    rst $18
    rst $38
    sbc a
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ccf
    rra
    rra
    rrca
    ld b, a
    rrca

jr_0ac_49bc:
    dec hl
    rlca
    sbc c
    inc hl
    cp $01
    ld e, a
    and b
    and $19
    or $09
    ccf
    ld b, b
    ld c, e
    nop
    sub h
    ld bc, $0035
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    rra
    rst $38
    rst $28
    rra
    rst $30
    rrca
    di
    rrca
    ld a, l
    inc bc
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
    jr jr_0ac_4a23

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ac_4a33

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0ac_4a43

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0ac_4a53

    ld [hl-], a

jr_0ac_4a23:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0ac_4a63

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $2f
    ccf
    ld b, b
    ld b, c

jr_0ac_4a33:
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
    cpl
    cpl
    ld c, [hl]
    ld c, a

jr_0ac_4a43:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    cpl
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    cpl
    ld e, e
    ld e, h
    ld e, l

jr_0ac_4a53:
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
    cpl
    ld l, d
    ld l, e
    ld l, h

jr_0ac_4a63:
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
    cpl
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
    cpl
    cpl
    cpl
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
    cpl
    cpl
    cpl
    cpl
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    cpl
    cpl
    cpl
    cpl
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
    cpl
    cpl
    cpl
    cpl
    ld [hl], a
    cp b
    cp c
    xor [hl]
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


    xor [hl]
    xor [hl]
    xor [hl]
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

Call_0ac_4b00:
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    push af
    inc b
    dec b
    ld b, $07
    cpl
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $f512
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0ac_4b58

    cpl
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $01
    nop
    inc bc
    inc bc
    ld b, $06
    inc b
    inc bc
    ld b, $03
    ld [bc], a
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc bc
    ld bc, $0606
    ld b, $01
    inc b
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0603
    ld b, $06
    ld b, $01
    inc b

jr_0ac_4b58:
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    ld b, $06
    ld bc, $0403
    ld [bc], a
    inc bc
    ld [bc], a
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0403
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld b, $06
    ld b, $03
    inc bc
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld [bc], a
    rlca
    dec b
    dec b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc b
    inc bc
    ld b, $06
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    nop
    nop
    inc b
    inc b
    nop
    nop
    dec b
    ld b, $06
    nop
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    rlca
    dec b
    dec b
    dec b
    inc bc
    dec b
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
    ld bc, $0101
    ld bc, $0204
    nop
    nop
    nop
    nop
    nop
    ld bc, $0304
    ld bc, $0101
    ld bc, $0001
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0403
    ld bc, $0101
    ld bc, $0101
    inc b
    ld a, [bc]
    ld a, [bc]
    ld [$0008], sp
    ld [$0b09], sp
    ld c, $01
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld [$0900], sp
    ld c, $0e
    ld c, $0e
    ld c, $01
    ld bc, $0b0e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, a
    nop
    ld a, [hl]
    ld bc, $037c
    ld [bc], a
    rlca
    inc bc
    inc bc
    ld bc, $0101
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    nop
    jp $b480


    jp $ffa3


    cp $ff
    cp [hl]
    ld a, b
    rst $08
    jr nc, jr_0ac_4d12

    nop
    ld a, e
    nop
    or e
    nop
    di
    nop
    ld b, a
    add b
    sbc a
    nop
    xor a
    db $10
    rra
    ldh [rIF], a
    ldh a, [rBGP]
    ld hl, sp+$04
    ld hl, sp-$10
    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld l, b
    sub a
    dec hl
    call nc, $dd22
    ld hl, $43de
    cp h
    ld e, e
    cp h
    ld [de], a
    db $fd
    and c
    ld a, [hl]
    ld b, h
    ei
    add c
    cp $8a
    push af
    ld [$17f7], sp
    db $eb
    inc b
    nop
    add $00
    add sp, $00
    ld a, [$2c00]
    nop
    cp $00
    rra
    ldh [rSC], a
    db $fc
    rst $08
    rst $38
    di
    rst $38
    adc l
    rst $38
    ld [bc], a
    rra
    inc bc
    db $db
    ld bc, $008f
    inc hl
    nop
    rlca
    sub a
    rst $38
    dec hl
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rst $00
    ccf
    dec hl
    rst $18
    adc a
    ld a, a
    ld c, a
    cp a
    nop
    rra
    nop
    ld a, a
    nop
    ld a, a
    ld [bc], a
    rst $38
    add c
    ld a, a
    ld [bc], a
    rst $38
    add b
    ld a, a
    ld [bc], a
    rst $38
    add b
    db $eb

jr_0ac_4d12:
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ldh a, [$c0]
    ldh [$e0], a
    ret nz

    nop
    ret nz

    add b
    add b
    rra
    ldh [rP1], a
    rst $38
    ldh [$1f], a
    rst $38
    ld bc, $f1ff
    rra
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    cp $f8
    ldh [$80], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f00
    inc bc
    rst $38
    rrca
    rst $38
    nop
    cp $00
    push af
    nop
    cp e
    ld b, b
    adc a
    ld [hl], b
    rst $38
    nop
    push de
    nop
    cp [hl]
    nop
    ld [$a800], a
    nop
    jp c, $ac00

    nop
    ld [hl], b
    nop
    xor b
    nop
    ld d, b
    nop
    ld h, b
    nop
    jr nz, jr_0ac_4d64

jr_0ac_4d64:
    stop
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
    ld [hl], $f8
    ld l, h
    ldh a, [$d8]
    ldh [$f8], a
    ret nz

    ldh a, [$80]
    ld b, b
    add b
    ret nz

    nop
    nop
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    xor b
    ldh a, [rNR42]
    cp $92
    rst $28
    jp hl


    nop
    ret nc

    nop
    and b
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
    add b
    add b
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
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [$1f]
    ldh [rTAC], a
    ld hl, sp+$7b
    add h
    ld a, a
    add b
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, jr_0ac_4e30

    sub b
    add a
    ld a, b
    add a
    ld a, b
    xor a
    ld [hl], b
    ld a, $e1
    ld e, h
    db $e3
    cp h
    jp $eb16


    ld bc, $0100
    inc b
    ld b, $08
    inc c
    nop
    inc c
    nop
    nop
    add h
    nop
    ld [$f800], sp
    cp $00
    ld a, a
    ret nz

    ld c, l
    ldh a, [$33]
    db $fc
    add hl, bc
    cp $06
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, h
    nop
    dec de
    nop
    ld d, b
    inc bc
    inc h
    ld bc, $0208
    ld d, l
    inc bc
    jr nz, jr_0ac_4e05

    inc d
    inc bc
    ld hl, sp+$0f
    ld sp, hl
    rrca
    rst $38

jr_0ac_4e05:
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, l
    rst $38
    dec bc
    rst $38
    ld e, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    ld e, a
    rra
    ld a, a
    ccf
    ccf
    ld a, [hl]
    ld a, a
    rst $38
    ld a, [hl]
    ld a, a
    db $fd
    ld bc, $80ff
    rst $38
    cp $fd
    rst $38
    ldh a, [$7f]
    ldh [$03], a
    db $fc

jr_0ac_4e30:
    nop
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0700
    inc bc
    ccf
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld hl, sp+$07
    nop
    nop
    call nz, RST_00
    nop
    ldh [rP1], a
    ld a, [hl]
    nop
    add l
    nop
    add b
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ac_4e6e

jr_0ac_4e6e:
    nop
    nop
    ld a, [c]
    nop
    ldh [rP1], a
    ret nz

    nop
    and b
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
    add b
    nop
    db $10
    ldh [rNR41], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$2f], a
    ret nc

    ccf
    ret nz

    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0ac_4eb1:
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
    rst $38

jr_0ac_4ebd:
    nop
    cp $01
    cp $01
    sbc $21
    ldh a, [rIF]
    db $f4
    dec bc
    jr jr_0ac_4eb1

    inc e
    db $e3
    ld e, e
    db $e4
    cp e
    call nz, RST_00
    nop
    ld [$000a], sp
    inc b
    jr jr_0ac_4edd

    db $10
    jr jr_0ac_4efc

    db $10

jr_0ac_4edd:
    jr nz, jr_0ac_4ef0

    jr nz, jr_0ac_4f0b

    ld bc, $01b6
    cp b
    ld bc, HeaderDestinationCode
    xor $00
    rst $38
    add b
    rst $18
    ldh [rRP], a
    ld sp, hl

jr_0ac_4ef0:
    rst $00
    ld l, b
    ld b, e
    adc h
    jr nz, jr_0ac_4ebd

    ld [hl], b
    jp $bdc0


    ld [bc], a
    ei

jr_0ac_4efc:
    ld d, c
    cp $fe
    db $fd
    cp a
    db $fc
    ld a, a
    ld hl, sp-$01
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0ac_4f0b:
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$c2]
    db $f4
    ldh [$d4], a
    rst $38
    cp l
    rst $38
    xor c
    rst $38
    ld a, d
    rlca
    ld a, [$ff00]
    ld hl, sp-$59
    rst $38
    inc h
    rst $38
    ld sp, hl
    rra
    ldh [rP1], a
    ld a, a
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
    db $fd

jr_0ac_4f41:
    cp $e8
    ldh a, [rP1]
    ret nz

    ret nc

    jr nz, jr_0ac_4f41

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    adc a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    dec b
    nop
    inc bc
    nop
    dec bc
    nop
    ld d, $00
    inc c
    nop
    inc c
    nop
    ld [$1800], sp
    rra
    ld c, $1b
    ld a, [bc]
    inc bc
    rrca
    ld bc, $8107
    ld d, $e1
    rlca
    jr c, jr_0ac_4f9b

    inc e
    add hl, de

jr_0ac_4f9b:
    ld b, $08
    inc bc
    ld a, b
    ld bc, $7f80
    ret nz

    ccf
    ret nc

    cpl
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    nop
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38

jr_0ac_4fba:
    add b
    ld a, a

jr_0ac_4fbc:
    nop
    rst $38

jr_0ac_4fbe:
    nop
    rst $38

jr_0ac_4fc0:
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    nop
    dec b
    nop
    ld b, $00
    dec de
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    nop
    ld bc, $0063
    nop
    ld b, b
    add [hl]
    ld b, b
    ld l, l
    add b
    ld e, b
    add h
    jr nz, jr_0ac_4fe7

    jr nz, jr_0ac_4fec

    nop
    add hl, bc
    nop

jr_0ac_4fe7:
    sub e
    nop
    scf
    add b
    ccf

jr_0ac_4fec:
    ret nz

    ccf
    nop
    rst $38
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld a, b
    add b
    jr c, jr_0ac_4fba

    jr nc, jr_0ac_4fbc

    jr nc, jr_0ac_4fbe

    jr nz, jr_0ac_4fc0

    ldh [$fe], a
    ret nz

    cp $c0
    db $fc
    add b
    db $fc
    adc h
    db $fc

jr_0ac_500a:
    jr nc, jr_0ac_500a

    ret nz

    rst $38
    add b
    rst $38
    nop
    nop
    ldh [rP1], a
    cp $00
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
    inc e
    rst $38
    jr @+$01

    jr c, @+$01

    jr c, jr_0ac_5048

    ldh a, [rP1]
    rst $38
    ldh [rIE], a
    rst $38
    ldh [rIE], a
    jr nc, jr_0ac_50b2

    db $fc
    inc bc
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$e0]
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ac_5048:
    nop
    nop
    push bc
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ret nz

    nop
    ld a, $00
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc l
    nop
    ld e, b
    nop
    jr nc, jr_0ac_5066

jr_0ac_5066:
    or b
    nop
    ld h, b
    nop
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
    ld b, b
    add b
    db $fc
    ccf
    rst $38
    rra
    inc bc
    sbc a
    ld [$089f], sp
    rst $08
    inc b
    rst $08
    ld bc, $05ef
    ld h, a
    ld [de], a
    rst $20
    ld a, [hl+]
    rst $30
    cp e
    ld [hl], a
    cp e
    ld a, a
    db $db
    ccf
    rla
    ld a, a
    ld c, a
    ccf
    dec e
    cpl
    rlca
    ccf
    ld [bc], a
    ccf
    inc bc
    rra
    dec d
    rrca
    daa
    rrca
    ccf
    rlca
    ld a, a
    rlca
    ccf
    inc bc
    ld a, a
    inc bc
    dec sp
    dec b
    nop
    rlca

jr_0ac_50b2:
    db $10
    rrca
    jr z, @+$19

    jr jr_0ac_50df

    ld bc, $493f
    scf
    inc hl
    ld e, a
    inc bc
    ld a, a
    add hl, de
    rlca
    dec sp
    rlca
    inc sp
    rrca
    inc sp
    rrca
    ld h, h
    rra
    jr nz, jr_0ac_50eb

    jr nc, jr_0ac_50ed

    jr nz, jr_0ac_50d3

    ld a, h
    rst $38
    db $fd

jr_0ac_50d3:
    cp $fb
    db $fc
    ei
    db $fc
    push af
    ld a, [$f8f7]
    rst $38
    ldh a, [$eb]

jr_0ac_50df:
    db $f4
    rst $30
    add sp, -$22
    ldh [$de], a
    ldh [$fe], a
    ret nz

    sbc h
    ldh [$fc], a

jr_0ac_50eb:
    add b
    ld e, b

jr_0ac_50ed:
    and b
    ld a, b
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ld hl, sp+$00
    ld a, h
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld sp, hl
    cp $fd
    cp $ff
    db $fc
    ld a, a
    db $fc
    rlca
    ld sp, hl
    add [hl]
    ld sp, hl
    ld b, $f9
    ld c, $f3
    adc h
    ld [hl], e
    db $fc
    rlca

jr_0ac_511e:
    ld a, [hl]
    add a
    rst $38
    rla
    rst $38
    inc bc
    rst $38
    or $1f
    ei
    ldh [$df], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_0ac_5130:
    nop
    nop
    nop
    nop
    ld bc, $0f07
    rra
    ccf
    rst $38
    rst $38
    rst $38
    adc a
    ld a, a
    db $fc
    inc bc
    nop
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
    add $00
    inc b
    nop
    jr nz, jr_0ac_511e

    db $fc
    rst $38
    jr c, jr_0ac_5130

    add hl, de

jr_0ac_5163:
    ld l, d
    sub a
    jr z, @+$43

jr_0ac_5167:
    ld a, $cd
    ld [hl-], a
    add c
    ld h, d
    ld d, [hl]
    and c
    ld d, d
    and c
    sbc b
    ld h, c
    dec d
    ldh [$0b], a
    ldh a, [rDIV]
    ld hl, sp-$7b
    ld a, b
    add d
    ld a, h
    jp Jump_0ac_403c


    cp [hl]
    add a
    ld a, b
    ld b, b
    cp a
    jr z, jr_0ac_5163

    jr nz, jr_0ac_5167

    db $10
    rst $28
    ld de, $11ef
    rst $28
    rlca
    rst $28
    rlca
    rst $28
    rra
    rst $20
    ld [bc], a
    rst $30
    ld b, e
    rst $30
    rlca
    rst $10
    and l
    rst $18
    add $ff
    adc a
    cp $0f
    cp $9d
    cp $1d
    cp $3f
    cp $7f
    cp $7e
    rst $38
    ld a, a
    rst $38
    or $f7
    ld e, a
    cp a
    rst $28
    rra
    cp $07
    rst $38
    inc bc
    adc $31
    add a
    ld [$0483], sp
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
    ret nz

    ld bc, $1fe0
    ld sp, hl
    ld b, $fb
    add h
    rst $38
    ldh [$f7], a
    ld hl, sp+$7d
    cp $7e
    rst $38
    rst $38
    cp $c0
    nop
    ld hl, sp+$00
    rst $38
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, [$e084]
    call nz, Call_0ac_4460
    ld a, b
    ld hl, sp+$08
    ld hl, sp+$0e
    inc b
    rlca
    inc bc
    rrca
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
    cp $ff
    ld [hl], b
    ld hl, sp-$20
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    pop bc
    ld a, $fe
    ld bc, $00ff
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0102
    inc bc
    nop
    inc bc
    ld [bc], a
    dec b
    ld [bc], a

jr_0ac_5230:
    ld b, $01
    ld c, $00
    nop
    inc c
    inc e
    ld [$081c], sp
    ld [hl], $09
    inc [hl]
    ld [$0070], sp
    ld [hl], d
    ld bc, $01e3
    pop hl
    add l

jr_0ac_5246:
    jp $c784


    adc b
    ld b, e
    adc h
    rrca
    call nc, $8843
    xor a
    ret c

    cp e
    ret nz

    push af
    jp nz, $e6d3

    ret z

    rst $20
    pop af
    xor $7b
    rst $30
    rst $28
    rst $30
    ld e, l
    jr nz, jr_0ac_52c2

    jr nz, jr_0ac_5230

    jr nc, jr_0ac_5246

    jr nc, jr_0ac_52e4

    sub h
    ld h, a
    sbc b
    ld h, [hl]
    sbc b
    jr z, @-$20

    db $dd
    ld a, [hl]
    db $fd
    cp $fd
    cp $ba
    rst $18
    cp [hl]
    db $db
    dec a
    ei
    cp l
    ei
    rst $28
    db $fd
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    rst $00
    rst $38
    sub l
    cp $c9
    db $fc
    rst $38
    ret nz

    rst $38
    ret nz

    ldh [$a8], a
    rst $00
    ld e, l
    add d
    ld [$b705], a
    nop
    ld e, e
    add b
    cpl
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ld b, b
    rra
    jr nz, jr_0ac_52b6

    db $10
    rrca
    db $10
    dec bc
    inc d
    rra
    jr nz, jr_0ac_52c2

    inc l
    inc de
    inc l
    ccf
    ld b, b
    cpl
    ld d, b

jr_0ac_52b6:
    ccf
    ld b, b
    ld a, a
    add b
    ld c, a
    and b
    ld [hl], l
    add b
    cp l
    ld b, b
    sbc c
    ld b, b

jr_0ac_52c2:
    xor a
    ld b, b
    push hl
    ld [$803d], sp
    ld a, a
    add b
    cp $01
    cp [hl]
    ld bc, $01ff
    rrca
    rrca
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    db $fc
    ld hl, sp-$10
    ret nz

    nop
    nop
    nop
    nop

jr_0ac_52e4:
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $f5
    ld hl, sp-$7f
    ldh [rSB], a
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$f0]
    rrca
    ld a, a
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    db $f4
    ld sp, hl
    ei
    db $fc
    di
    ld a, h
    or e
    ld a, h
    scf
    inc a
    dec a
    ld a, $3f
    ld a, $3d
    ld a, $1f
    ld a, $7f
    ld e, $7f
    ld e, $c2
    rlca
    jp nz, $c303

    rlca
    jp $4707


    ld b, $87
    rlca
    rlca
    rlca
    add a
    dec c
    rst $00
    rrca
    rr a
    ei
    add hl, sp
    rst $38
    dec sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld h, $f7
    ld h, [hl]
    rst $38
    dec b
    rst $38
    add l
    rst $08
    and h
    rst $18
    and e
    sbc a
    xor c
    sbc h
    ld [hl], a
    ccf
    dec d
    dec a
    ld [hl], a
    ld a, h
    inc hl
    ld a, l
    ld c, d
    ld a, e
    ld h, [hl]
    reti


    ld l, $fb
    or l
    rst $28
    dec [hl]
    ld [c], a
    dec a
    db $f4
    cp e
    rst $30
    cp e
    rst $20
    db $db
    ld l, a
    sub e
    ld h, a
    sbc a
    ld l, h
    sbc h
    ld a, b
    adc b
    sbc b
    ld l, b
    call z, $ff3c
    rrca
    rst $38
    rlca
    ccf
    rst $38
    rrca
    ei
    and c
    ld e, a
    ld d, h
    xor e
    jp hl


    ld d, $d2
    dec l
    db $e4
    dec de
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    ld bc, $03fd
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    rst $18
    ccf
    rst $18
    ccf
    inc c
    nop
    rra
    ld bc, $1f1f
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ldh [$61], a
    add c
    ld [bc], a
    ld bc, $0302
    nop
    inc bc
    nop
    rra
    jr jr_0ac_543c

    ld a, b
    rst $30
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$9f]
    ret nz

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
    ld a, a
    nop
    rst $38
    add b
    rst $38
    add b
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld a, $00
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
    cpl
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $30
    rst $30
    rst $38
    rst $38
    rst $20
    db $e3
    rst $28
    db $eb
    rst $28
    ei
    rst $08
    db $db
    rst $18
    sbc e
    rst $18
    rst $38
    rra
    cp a
    ld a, a
    cp a
    ccf
    ld a, a
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38

jr_0ac_5428:
    ld a, [$ffff]
    ld a, [$fefb]
    rst $30
    rst $38
    rst $38
    or a
    rst $30
    rst $38
    xor $be
    ld a, c
    xor b
    cp d
    ld h, b
    sub c
    ld h, c

jr_0ac_543c:
    rst $38

jr_0ac_543d:
    ld e, a
    ccf
    rst $18
    rra
    rst $38
    jr nc, jr_0ac_543d

    jr nz, jr_0ac_5428

    nop
    jp hl


    ld b, b
    rst $10
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ldh a, [$fd]
    add b
    add d
    nop
    ld d, b
    ld bc, $0f2b
    rst $08
    cp $ff
    cp $ff
    cp $fe
    ldh a, [$f5]
    add b
    jp Jump_000_2500


    nop
    inc bc
    inc c
    rra
    db $fc
    rst $38
    ld hl, sp-$01
    ld d, b
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ld [hl], l
    ld a, a
    dec hl
    ccf
    rla
    rra
    rlca
    rra
    ld l, $3f
    ld l, a
    ld a, a
    ld bc, $04fe
    ei
    ld de, $2dee
    sub d
    dec d
    ld a, [hl+]
    dec hl
    inc d
    ld a, [hl+]
    ld d, l
    dec l
    ld d, d
    xor d
    nop
    push de
    add b
    jp z, $c580

    add b
    xor c
    nop
    ld d, d
    nop
    sub l
    nop
    and d
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0200
    nop
    ld [bc], a
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
    inc b
    nop
    inc b
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
    jr nz, jr_0ac_54ea

jr_0ac_54ea:
    jr nz, jr_0ac_54ec

jr_0ac_54ec:
    jr nz, jr_0ac_54ee

jr_0ac_54ee:
    jr nz, jr_0ac_54f0

jr_0ac_54f0:
    ld b, b
    nop
    ldh a, [rP1]
    ld c, a
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ld hl, sp-$07
    ldh a, [$f2]
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f4]
    ldh [$e1], a
    rst $30
    rst $30
    rst $38
    rst $38
    ld hl, sp-$04
    ret nz

    jp hl


    ret nz

    pop bc
    rst $30
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    add b
    ldh a, [rSB]
    ld b, l
    ld c, $1f
    cp $ff
    cp $ff
    ret nz

    db $e3
    nop
    inc de
    nop
    adc e
    jr jr_0ac_556d

    ld hl, sp-$01
    ld hl, sp-$01

jr_0ac_5532:
    ret nz

    rst $20
    nop
    rla
    nop
    ld c, a
    db $10
    ccf

jr_0ac_553a:
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    nop
    cp a
    nop
    rra
    nop
    rst $18
    nop
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
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
    rst $38
    rst $38
    nop
    rst $18
    jr nz, jr_0ac_553a

    ld a, [hl+]
    push hl
    ld a, [de]
    rst $10
    jr z, jr_0ac_5532

    jr c, @-$7c

jr_0ac_556d:
    ld a, l
    ld d, b
    xor a
    ld [hl], d
    adc l
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f5
    ld a, [bc]
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, [hl]
    nop
    cp l
    nop
    cp l
    nop
    ld a, [hl+]
    nop
    ret c

    nop
    ld c, b
    nop
    or b
    nop
    ld d, b
    nop
    ld d, b
    nop
    jr nc, jr_0ac_559a

jr_0ac_559a:
    xor b
    nop
    ld [hl], b
    nop
    and b
    nop
    ld h, b
    nop
    jr nz, jr_0ac_55a4

jr_0ac_55a4:
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
    ret nz

    nop
    ld a, $00
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rra
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    rra
    dec h
    ld a, a
    scf
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    rst $00
    rst $38
    rrca
    rst $38
    dec h
    rst $38
    and b
    rst $38
    ld l, b
    rst $38
    ld hl, sp-$01
    cpl
    rst $38
    add [hl]
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    inc b
    rst $38
    ld b, $ff
    inc c
    rst $38
    inc b
    rst $38
    ld d, h
    xor a
    add d
    ld a, l
    ldh a, [rIF]
    ldh a, [rIF]
    cp $01
    or b
    ld c, a
    nop
    rst $38
    call c, $fc23
    inc bc
    cp [hl]
    ld b, c
    call c, $f923
    ld b, $79
    add [hl]
    db $d3
    inc l
    rla
    add sp, $28
    rst $10
    jp z, $4c35

    or e
    add sp, $17
    add sp, $17
    ld hl, sp+$07
    ld [c], a
    dec e
    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld hl, sp+$07
    ld a, b
    add a
    nop
    rst $38
    ld hl, sp+$07
    cp $01
    or $09
    rst $38
    nop
    db $fc
    inc bc
    ld a, [$fe05]
    ld bc, $00ff
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
    ld e, [hl]
    nop
    dec h
    nop
    ld d, [hl]
    nop
    xor e
    nop
    dec l
    nop
    ld d, l
    nop
    ld d, l
    nop
    and d
    nop
    add d
    nop
    add c
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_0ac_5672

jr_0ac_5672:
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
    ldh a, [rP1]
    rrca
    nop
    nop
    nop
    nop
    nop
    rst $28
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    xor a
    rst $38
    xor a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add e
    ld a, a
    add sp, $1f
    ld a, [de]
    rst $38
    rla
    rst $38
    dec b
    rst $38
    ld d, $ff
    rrca
    rst $38
    ld a, $ff
    inc de
    rst $38
    jr z, @+$01

    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc hl
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    add e
    ld a, a
    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    sbc c
    ld h, [hl]
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, [$ff05]
    nop
    ld l, e
    inc d
    cp a
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    jp c, Jump_0ac_6a00

    nop
    xor l
    nop
    push de
    nop
    ld d, l
    nop
    and b
    nop
    nop
    nop
    jr nz, jr_0ac_5722

jr_0ac_5722:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, $00
    ld bc, $ff00
    rst $38
    ld a, a
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
    di
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
    cp a
    rst $38
    ccf
    rst $38
    ld c, $ff
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    ld [de], a
    rst $38
    ld b, d
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nz, $e13f
    rra
    ld a, [c]
    dec c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    nop
    cp $00
    ld l, e
    nop
    xor [hl]
    nop
    ld d, l
    nop
    xor d
    nop
    ld hl, $0100
    ld b, b
    ld [bc], a
    nop
    ld de, $0400
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ei
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
    cp a
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
    ccf
    rst $38
    ccf
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
    ccf
    rst $38
    dec a
    rst $38
    inc e
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    ld c, a
    rst $38
    xor a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    cpl
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
    ccf
    rst $38
    ccf
    rst $38
    daa
    rst $18
    or d
    ld c, a
    ld l, c
    sub a
    cp l
    ld b, d
    ei
    inc b
    or $09
    ei
    dec b
    ei
    dec b
    ld a, a
    inc bc
    cp a
    inc bc
    db $db
    rlca
    ld e, a
    rlca
    cp a
    rlca
    ld a, a
    rrca
    cp a
    rrca
    ld c, [hl]
    daa
    ld [hl], h
    rlca
    xor h
    rlca
    ld [hl], h
    rlca
    cp c
    rlca
    ld l, h
    rlca
    cp c
    rlca
    ld e, b
    rlca
    xor c
    rlca
    ld e, e
    rlca
    adc b
    rlca
    ld e, e
    rlca
    dec bc
    rlca
    dec bc
    rlca
    rlca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rlca
    rrca
    rrca
    rlca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rrca
    rlca
    rrca
    rlca
    rlca
    rlca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rrca
    rrca
    rra
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, l
    ld sp, hl
    dec a
    ld a, c
    dec a
    add hl, sp
    scf
    add hl, sp
    scf
    add hl, sp
    ld [hl], a
    add hl, sp
    cpl
    ld a, c
    scf
    ld a, c
    dec h
    ld a, c
    jp hl


    or $c9
    or $ce
    push af
    ret z

    rst $30
    add sp, -$29
    add sp, -$29
    add sp, -$29
    ldh [$df], a
    or b
    rst $08
    or b
    rst $08
    ldh [$9f], a
    db $f4
    sbc a
    ld [hl], a
    sbc a
    ld e, a
    cp a
    ccf
    rst $38
    rst $38
    ccf
    ld a, a
    cp a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    cp $fd
    ld sp, hl
    cp $ff
    ld hl, sp-$01
    db $f4
    rst $38
    or $f6
    xor [hl]
    xor $fc
    cp $5c
    sbc $f8
    cp [hl]
    ld hl, sp-$42
    db $f4
    ld [$fafe], a
    db $f4
    ld sp, hl
    or $fc
    rst $30
    db $ec
    rst $18
    db $ec
    rst $18
    db $ed
    sub $fd
    sub $ed
    ld e, a
    di
    sbc $ec
    rst $30
    or c
    rst $38
    ld h, l
    cp a
    dec [hl]
    rst $38
    push hl
    rst $38
    di
    db $fd
    xor l
    rst $38
    ld [hl], c
    rst $38
    rst $30
    db $fd
    di
    db $fd
    sbc a
    cp l
    or b
    sbc a
    sub l
    sbc a
    and [hl]
    sbc l
    or c
    sbc a
    sub l
    cp a
    sub e
    cp l
    sub d
    cp l
    jp nc, $d2bd

    cp a
    rst $18
    cp [hl]
    rst $18
    cp a
    rst $18
    cp a
    rst $38
    rst $38
    db $fd
    cp $ff
    ld hl, sp-$07
    rst $30
    rst $20
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
    db $fc
    db $fd
    db $fc
    db $ec
    db $fc
    db $fd

jr_0ac_599d:
    db $e4
    db $fc
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    db $f4
    db $e4
    call nc, $f4e4
    db $e4
    add sp, -$1c
    db $ec
    db $e4
    db $e4
    db $e4
    rst $38
    nop
    cp b
    ld b, a
    jr jr_0ac_599d

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc hl
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
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    cp $ff
    rst $38
    cp $fc
    cp $ff
    db $fc
    ld sp, hl
    db $fc
    db $fd
    ld hl, sp-$05
    ld hl, sp-$05
    pop af
    rst $28
    pop af
    ei
    db $e3
    jp nc, $e6e2

    add $ae
    adc $cf
    adc a
    ld e, a
    sbc a
    sbc a
    rra
    cp a
    ccf
    sbc d
    adc a
    adc [hl]
    add c
    ld b, $01
    ld [bc], a
    ld bc, $0100
    nop
    ld bc, $0103
    nop
    ld bc, $014f
    cpl
    ld bc, $012f
    ld l, $01
    ld l, $01
    ld l, $01
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    cpl
    nop
    ld l, $01
    dec l
    ld [bc], a
    dec c
    ld [bc], a
    dec l
    ld [bc], a
    dec l
    ld [bc], a
    dec h
    ld [bc], a
    inc d
    inc bc
    dec b
    ld [bc], a
    ld [hl], $01
    dec [hl]
    ld [bc], a
    ld [hl-], a
    dec b
    ld hl, $2516
    ld [de], a
    dec h
    ld [de], a
    ld [bc], a
    dec d
    dec b
    ld [de], a
    dec h
    ld [de], a
    inc b
    inc de
    inc b
    inc de
    add h
    inc de
    inc de
    nop
    inc de
    nop
    rla
    nop
    rla
    nop
    inc de
    inc c
    ld hl, $831f
    ld a, a
    rrca
    rst $38
    ld a, a
    cp a
    rst $38
    rst $38
    db $fd
    ld a, [$f0f8]
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    and b
    add e
    cp d
    add b
    or [hl]
    ret nz

    sbc e
    ret nz

    and l
    ret nz

    sub [hl]
    ret nz

    and l
    ret nz

    sub $c0
    jp c, $fbc0

    ret nz

    set 0, b
    ld b, l
    ret nz

    ld c, d
    ret nz

    nop
    rst $38
    ld bc, $01fe
    cp $02
    db $fd
    add hl, bc
    cp $08
    rst $38
    ld de, $11fe
    cp $22
    db $fd
    db $e3
    db $fc
    db $e3
    db $fc
    push bc
    ld a, [$fcc3]
    add l
    ld a, [$f887]
    add a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$79
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$0d]
    ld a, [c]
    push af
    rst $38
    rst $38
    rst $38
    or $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ldh a, [rIE]
    push af
    ld a, [$f2fd]
    pop af
    rst $20
    ld [c], a
    rst $28
    pop hl
    rst $08
    ret z

    rst $18
    jp c, $959f

    cp a
    db $dd
    ccf
    ld a, [de]
    ld a, a
    rst $18
    ld a, a
    cp a
    ld hl, sp-$27
    ldh [$98], a
    add b
    adc b
    nop
    adc b
    nop
    adc b
    nop
    inc c
    add b
    inc b
    ld [$0c00], sp
    ld [$0804], sp
    inc b
    ret nz

    call nz, $c4c0
    ret nz

    call nz, $c4c2
    jp nz, $c0c4

    add $c0
    add $a4
    jp nz, $c2e4

    ret nz

    ld [c], a
    ret nz

    ld [c], a
    pop hl
    ld [c], a
    pop hl
    ld [c], a
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ld h, d
    pop hl
    ld [hl], d
    pop hl
    ld [hl], b
    pop hl
    ld h, b
    pop af
    ld h, b
    pop af
    or b
    ld [hl], c

jr_0ac_5b44:
    or b
    ld [hl], c
    or b
    ld [hl], c
    or b
    ld [hl], c
    ld sp, $31f0
    ldh a, [$31]
    ldh a, [$38]
    ldh a, [$78]
    ldh a, [$71]
    ld hl, sp+$71
    ld hl, sp+$6d
    ld hl, sp+$7d
    ld hl, sp+$7d
    ld hl, sp+$7e
    ld hl, sp-$68
    ld a, b
    cp b
    ld a, b
    cp b
    ld a, b
    cp b
    ld a, b
    sbc h
    ld a, b
    rst $18
    jr nc, jr_0ac_5b44

    jr nc, @+$01

    nop
    db $fd
    inc bc
    ei
    rlca
    rst $28
    rra
    rst $38
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
    cp a
    ld b, b
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
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld h, a
    ccf
    ld d, a
    rrca
    ld e, a
    rlca
    daa
    rrca
    rrca
    daa
    rlca
    rlca
    rlca
    daa
    rla
    daa
    rlca
    daa
    dec bc
    daa
    sub h
    ld l, e
    ld d, a
    xor b
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, a
    xor b
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
    rst $38
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
    ld b, b
    cp $80
    ld hl, sp-$20
    nop
    add b
    ld bc, $0700
    jr nz, jr_0ac_5c07

    xor c
    ld a, a
    sub b
    rst $38
    ld b, h
    cp $24
    ld hl, sp+$48
    ld hl, sp+$58
    ldh a, [$5c]
    ldh a, [$bc]
    ldh [$bc], a
    ldh [$74], a
    ret nz

    ld h, h
    add b
    and $00
    xor b
    sub $e0
    sbc [hl]
    ld c, [hl]
    or d
    ld h, [hl]

jr_0ac_5c07:
    sbc d
    push hl
    ld a, [de]
    ld h, h
    sbc e
    and h
    ld e, e
    jr nz, jr_0ac_5c6f

    inc hl
    ld e, l
    inc hl
    ld e, l
    ld [hl+], a
    ld e, l
    ld [de], a
    ld l, l
    ld d, [hl]
    add hl, hl
    ld e, h
    ld hl, $203f
    rra
    jr nz, jr_0ac_5c50

    jr nc, jr_0ac_5c31

    jr nc, @+$11

    jr nc, jr_0ac_5c36

    jr nc, jr_0ac_5c58

    db $10
    rrca
    db $10
    rra
    db $10
    rra
    db $10
    dec d

jr_0ac_5c31:
    jr jr_0ac_5c4a

    jr jr_0ac_5c3b

    add hl, de

jr_0ac_5c36:
    inc d
    dec bc
    ld a, [de]
    rrca
    inc c

jr_0ac_5c3b:
    rrca
    ld a, [bc]
    rrca
    adc h
    rrca
    adc l
    rrca
    dec b
    adc a
    dec b
    adc a
    adc [hl]
    add a
    rlca
    add a

jr_0ac_5c4a:
    rlca
    add a
    rlca
    add a
    ld b, a
    add a

jr_0ac_5c50:
    rlca
    rst $00
    inc bc
    rst $00
    add a
    jp $c347


jr_0ac_5c58:
    ld b, e
    jp $c303


    ld [hl+], a
    jp nz, Jump_0ac_42e0

    ld h, [hl]
    nop
    ld l, [hl]
    nop
    halt
    ld a, h
    inc bc
    ld a, [$ec07]
    rra
    ret nc

    ccf
    ld h, b

jr_0ac_5c6f:
    rst $38
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
    rst $38
    nop
    ei
    inc b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec de
    rrca
    jr nc, jr_0ac_5c8a

jr_0ac_5c8a:
    stop
    ld a, [de]
    nop
    or b
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, [c]
    nop
    db $d3
    nop
    add sp, -$80
    or l
    add b
    db $f4
    add b
    db $f4
    add b
    ld hl, sp-$80
    db $fc
    ret nz

    db $ec
    ret nz

    call nz, $c0c0
    ret nz

    jp nz, $c0c0

    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    or a
    nop
    rst $28
    nop
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
    ldh a, [rIF]
    nop
    nop
    nop
    nop
    ld b, $f8
    inc d
    ld hl, sp+$20
    ldh a, [$60]
    ret nz

    nop
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
    nop
    rst $38
    ld bc, $01fe
    cp $02
    db $fd
    nop
    rst $38
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    add b
    ld b, b
    and b
    ld b, b
    add b
    ld h, b
    add b
    ld h, b
    nop
    ld h, b
    ret nz

    jr nz, jr_0ac_5d23

    ldh [rNR10], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh a, [$58]
    ldh a, [rNR23]
    ldh a, [$50]
    ld hl, sp+$20

jr_0ac_5d23:
    ld hl, sp+$58
    ld hl, sp-$54
    ld hl, sp+$5c
    ld hl, sp+$58
    db $fc
    cp h
    db $fc
    ld e, h
    db $fc
    cp $fc
    cp $fc
    db $fc
    cp $fe
    cp $fe
    cp $c6
    ld hl, sp+$00
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rlca
    ld bc, $0000
    nop
    nop
    ld b, b
    add b
    ld a, [c]
    db $fc
    cp a
    ld a, a
    inc b
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ret nz

    ccf
    and b
    ld e, a
    ret nz

    ccf
    and b
    ld e, a
    ret nc

    cpl
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
    inc b
    ld hl, sp+$00
    ldh a, [$60]
    nop
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
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
    nop
    rst $38
    ld de, $02ee
    db $fd
    dec b
    ld a, [$fd02]
    ld bc, $00fe
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
    add hl, bc
    or $04
    ei
    ld a, [bc]
    push af
    dec b
    ld a, [$fa05]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc bc
    db $fc
    inc bc
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    ld bc, $011f
    rlca
    rlca
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
    inc de
    rrca
    inc bc
    ld bc, $0101
    ld bc, $8801
    pop af
    rst $38
    rst $38
    ld e, a
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rrca
    rlca
    rrca
    rrca
    rlca
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
    jr jr_0ac_5e93

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ac_5ea3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0ac_5eb3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0ac_5ec3

    ld [hl-], a

jr_0ac_5e93:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0ac_5ebd

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_0ac_5ea3:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc hl
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_0ac_5eb3:
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

jr_0ac_5ebd:
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b

jr_0ac_5ec3:
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
    cpl
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
    cpl
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
    cpl
    sub $2f
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    cpl
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    cpl
    cpl
    cpl
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    cpl
    cpl
    cpl
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
    jr jr_0ac_5fa0

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ac_5fb0

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0ac_5fc0

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0ac_5fd0

    ld [hl-], a

jr_0ac_5fa0:
    inc b
    inc bc
    ld bc, $0106
    ld bc, $0606
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_0ac_5fb0:
    inc b
    inc bc
    inc bc
    ld b, $01
    nop
    inc bc
    ld b, $06
    ld b, $03
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_0ac_5fc0:
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    inc bc
    ld b, $06
    ld b, $06
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    nop

jr_0ac_5fd0:
    nop
    nop
    nop
    inc bc
    ld bc, $0300
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $02
    rlca
    nop
    ld [bc], a
    inc b
    nop
    nop
    inc b
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $02
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    ld bc, $0404
    ld [bc], a
    ld [bc], a
    inc bc
    ld b, $06
    ld b, $06
    ld b, $02
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0401
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $05
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0001
    ld bc, $0200
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    rlca
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
    nop
    nop
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    add hl, bc
    add hl, bc
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b0b], sp
    dec bc
    dec bc
    inc c
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    ld [$0a08], sp
    ld [$0b0b], sp
    dec bc
    add hl, bc
    ld [$0808], sp
    ld [$0908], sp
    ld [$0808], sp
    ld [$f908], sp
    sub a
    cp $16
    rst $28
    dec bc
    ld [hl], a
    adc e
    ld d, a
    ld a, [hl+]
    dec hl
    sub l
    nop
    rlca
    nop
    inc bc
    ld [$f415], a
    dec bc
    db $ed
    ld [de], a
    rst $28
    db $10
    cp $01
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
    ld h, d
    sbc l
    pop af

jr_0ac_6113:
    ld c, $a2
    ld e, l
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    stop
    jr jr_0ac_6127

jr_0ac_6127:
    jr jr_0ac_6139

    inc e
    jr @+$81

    inc c
    ccf
    rra
    ccf
    scf
    rra
    rrca
    rra
    add hl, de
    rrca
    rra
    rrca
    dec b

jr_0ac_6139:
    inc bc
    rlca
    ld bc, $0107
    rlca
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    jr c, jr_0ac_6113

    inc a
    jp Jump_000_01fe


    ld e, e
    and h
    ld bc, $00fe
    rst $38
    ld bc, $3ffe
    ret nz

    ld c, a
    or b
    inc l
    db $d3
    nop
    rst $38
    jr jr_0ac_6162

jr_0ac_6162:
    pop hl
    nop
    jr nz, jr_0ac_6166

jr_0ac_6166:
    ld b, b
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
    rrca
    nop
    dec b
    nop
    dec de
    nop
    push af
    nop
    xor d
    nop
    push af
    nop
    ld a, [$f500]
    nop
    ld [$ff00], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    cp $e5
    rst $38
    db $e4
    rst $38
    jp nc, $eaff

    cp $f0
    ldh a, [$c0]
    push de
    inc bc
    ei
    rrca
    rrca
    ld a, $3f
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, c
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
    ld a, l
    rst $38
    cp $ff
    cp $ff
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
    cp $ff
    rst $38
    rst $18
    rst $08
    ccf
    cp a
    ret nz

    ld l, a
    ldh a, [$0b]
    db $fc
    add $ff
    ld bc, $0eff
    rst $38
    rlca
    rst $38
    add e
    ld a, a
    cpl
    rst $38
    rrca
    rst $38
    ld c, a
    cp a
    rlca
    rst $38
    ld b, c
    cp a
    ld [hl], c
    adc [hl]
    cp b
    ld b, a
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $03
    rst $38
    inc bc
    rst $38
    nop
    ccf
    nop
    nop
    nop
    add b
    ld a, a
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
    add b
    ld a, a
    ret nz

    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $ee00
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$18
    ldh a, [rLCDC]
    ldh [$f1], a
    nop
    dec h
    jp c, $ff00

    daa
    rst $38
    ld b, c
    db $fc
    dec h
    ret c

    ld a, [$feff]
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
    ld a, a
    ret nz

    ccf
    jp nz, $e13d

    ld e, $b0
    ld c, a
    ld [$3415], a
    rr b
    rst $20
    inc c
    di
    rlca
    ld hl, sp+$3f
    ret nz

    rra
    ldh [$6f], a
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ld e, a

jr_0ac_6284:
    nop
    rst $28
    nop
    rst $18
    nop
    xor a
    nop
    rst $10
    nop
    db $eb
    nop
    cp a
    jr nz, @+$01

    nop
    db $fc
    nop
    ldh [$80], a
    add b
    inc bc
    inc bc
    ld e, $1f
    ld a, a
    ld a, a
    db $fc
    rst $38
    or d
    pop bc
    ld l, b
    add a
    jr nz, jr_0ac_6284

    inc b
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    ret nz

    ld [bc], a
    ret nz

    ld bc, $80c0
    ret nz

    add d
    ret nz

    jp c, $82c0

    rst $38
    daa
    rst $38
    ld c, a
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    di
    rst $38
    pop hl
    rst $38
    jp $87f7


    rst $08
    adc a
    rst $38
    or e
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
    rra
    cp a
    ld a, a
    ccf
    rst $30
    inc bc
    rst $30
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    dec sp
    rst $00
    ld a, [hl]
    rst $38
    rst $18
    ccf
    xor a
    rst $18
    db $d3
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    rst $18
    ccf
    adc a
    ld a, a
    rst $08
    ccf
    ld c, a
    ccf
    ld h, a
    rra
    ld h, a
    rra
    ld h, a
    rra
    ld c, a
    ccf
    ld l, a
    rra
    rst $08
    ccf
    rst $08
    ccf
    dec a
    rrca
    rlca
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
    nop
    ld b, b
    nop
    jp nz, Jump_0ac_7700

    nop
    rst $38
    nop
    nop
    nop
    xor d
    nop
    call nz, Call_0ac_4b00
    or h
    ld b, b
    rst $38
    jp c, Jump_000_00ff

    nop
    nop
    nop
    ld b, d
    db $fc
    db $10
    rst $38
    jr jr_0ac_634d

    nop
    ld bc, $0000
    nop
    nop
    nop

jr_0ac_634d:
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
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$06
    add b
    ld [hl], b
    nop
    add b
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
    ld a, b
    add b
    ld hl, sp-$80
    db $fc
    ret nz

    call c, $fee0
    ldh [$ee], a
    ldh a, [rIE]
    ldh a, [$f7]
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    rst $38
    db $fc
    nop
    ld e, $00
    ld b, $38
    ccf
    ld hl, sp-$01
    ld a, b
    rst $38
    jr c, @+$01

    ld a, b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    cp h
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    db $fd
    jr jr_0ac_63ce

    inc a
    inc e
    sbc h
    ld a, h
    inc a
    ld a, h
    ld e, $fc
    ld a, $7c
    sbc $fc
    sbc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    adc a
    rst $18
    xor a
    sbc a
    xor a
    rst $08
    rst $18
    rst $18

jr_0ac_63ce:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

    add b
    ret nz

    add b
    and b
    ret nz

    or d
    ret nz

    xor [hl]
    ret nz

    cp a
    ret nz

    add b
    rst $38
    ld c, a
    rst $38
    ccf
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
    rra
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    rra
    rst $38
    rst $38
    rra
    ccf
    rlca
    rrca
    inc bc
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
    jr nz, jr_0ac_642a

jr_0ac_642a:
    halt
    cp a
    nop
    rst $38
    nop
    nop
    nop
    ld a, [hl-]
    nop
    ld d, e
    nop
    cp b
    ld b, l
    ld bc, $a8fc
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    nop
    ldh [$87], a
    ld a, b
    inc bc
    inc a
    nop
    rra
    ld b, b
    rrca
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
    inc bc
    cp $3f
    ret nz

    rst $38
    nop
    cp $01
    ldh [rNR32], a
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
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$80]
    cp b
    ret nz

    ld hl, sp-$3f
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$f7]
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    add hl, hl
    cp $03
    db $fc
    inc bc
    db $fc
    add c
    cp $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld a, b
    ld a, [$f1f0]
    cp $fb
    rst $38
    pop af
    rst $38
    ldh a, [$fb]
    ret nz

    db $f4
    sub a
    add sp, -$01
    pop bc
    rst $38
    add c
    cp $83
    cp $ff
    db $fd
    rst $38
    ei
    rst $38
    di
    rst $38
    rst $20
    rst $38

jr_0ac_64d0:
    ld a, [bc]
    dec d
    cpl
    ld d, b
    ccf
    ld b, b
    add hl, de
    rlca
    or a
    ld c, a
    sub a
    ld a, a
    dec sp
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ld b, $f9
    dec bc
    ldh a, [$c8]
    jr nc, jr_0ac_64d0

    nop
    rst $10
    jr nz, @+$01

    nop
    ld a, [c]
    nop
    nop
    rst $38
    ld c, b
    rst $38
    ld [bc], a
    rst $38
    and b
    rst $38
    nop
    ld hl, sp+$18
    ldh a, [$78]
    ldh a, [$fc]
    ld hl, sp-$06
    db $fc
    ei
    db $fc
    ei
    ld a, h
    ld sp, hl
    cp $f9
    cp $7d
    ld a, [hl]
    dec a
    ld a, [hl]
    ld [hl-], a
    inc a
    dec a
    ld e, $1c
    rra
    ld e, $1f
    ld e, $1f
    rra
    ld e, $1e
    rra
    ld e, $1f
    inc e
    rra
    cp l
    ld e, $18
    rst $38
    nop
    rst $38
    rst $18
    rst $38
    ld h, b
    rst $38
    sbc a
    rst $38
    sbc a
    ld h, a
    ld b, a
    ld h, a
    ld b, a
    ld h, a
    ld b, c
    ld h, a
    jr nz, @+$69

    add hl, sp
    ld h, a
    sbc d
    ld h, a
    xor a
    ld [hl], a
    db $dd
    ld h, a
    xor c
    ld [hl], a
    rst $38
    rst $38
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
    rrca
    cp a
    ld b, a

jr_0ac_6552:
    dec de
    daa
    rra
    inc bc
    dec c
    inc de
    rrca
    ld bc, $0906
    rlca
    nop
    inc bc
    inc b
    ld bc, $0102
    ld [bc], a
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
    ld bc, $0700
    nop
    rlca
    ld [$100f], sp
    ccf
    nop
    ld a, a
    add b
    db $fd
    inc bc
    ld a, [$f707]
    rrca
    xor $1f
    db $dd
    ld a, $fa
    ld a, l
    push af
    ld a, [$f0ef]
    rst $10
    add sp, -$03
    add d
    sub a
    jr nz, jr_0ac_6552

    ld b, b
    ld e, d
    add b
    rst $30
    nop
    rst $38
    nop
    dec a
    jp nz, $f8c7

    ld hl, sp-$01
    nop
    nop
    add b
    nop
    ret nc

    nop
    ret nc

    add b
    ld hl, sp-$08
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $cf
    xor $de
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
    ld a, a
    rst $38
    rst $38
    rst $38

jr_0ac_65c8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, c
    rst $38
    ld e, b
    and a
    adc d
    dec [hl]
    sbc a
    nop
    ld e, d
    nop
    ld de, $a400
    nop
    ld a, c
    nop
    db $fc
    ldh a, [$f8]
    ldh [$f8], a
    ldh [$f0], a
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, [hl]
    add b
    ld [hl], b
    add b
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$08], a
    add sp, $04
    ld d, e
    xor h
    ld h, b
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ld b, $f9
    rrca
    nop
    and b
    ld [$0010], sp
    xor b
    nop
    cp b
    nop
    ld h, b
    sub b
    ld [$e070], sp
    jr jr_0ac_666b

    ld d, b
    ld h, b
    db $10
    jr z, jr_0ac_65c8

    db $10
    xor b
    inc d
    add sp, $08
    ldh a, [rP1]
    ld hl, sp-$04
    rst $38
    ld a, b
    rst $38
    ld a, d
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    dec b
    rst $38
    ld [$0df7], sp
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    ld a, a
    sbc a
    rst $38
    rrca
    ccf
    ld c, a
    add hl, sp
    ld b, $1b
    inc h
    dec c
    ld [de], a
    dec c
    ld [de], a
    ld b, $09
    ld e, $01
    scf

jr_0ac_666b:
    ld [$1c6b], sp
    ld a, [c]
    dec a
    call nc, $e83b
    rla
    jp hl


    ld e, $f9
    ld a, $f9
    ld a, [hl]
    rst $30
    ld hl, sp-$01
    ldh [$bf], a
    ret nz

    ld e, a
    and b
    xor a
    ld b, b
    ld a, e
    add b
    db $fd
    nop
    rst $18
    nop
    rst $28
    nop
    db $fd
    ld [bc], a
    dec sp
    add h
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    rst $38
    inc bc
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
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
    nop
    add c
    add c
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ret nz

    inc a
    and b
    ld hl, sp-$10
    ldh a, [$e0]
    ldh a, [$e0]
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
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
    or [hl]
    rst $38
    ld c, b
    or a
    rst $10
    jr z, jr_0ac_6756

    add b
    ei
    nop
    cp $00
    ld e, h
    nop
    jr z, jr_0ac_66e0

jr_0ac_66e0:
    jr nc, jr_0ac_66f1

    ld b, $01
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    nop

jr_0ac_66f1:
    nop
    nop
    nop
    dec c
    nop
    rlca
    nop
    dec b
    nop
    rlca
    nop
    ld c, $00
    rla
    nop
    xor d
    nop
    rst $28
    nop
    xor a
    nop
    xor $01
    cp [hl]
    ld bc, $03fd
    db $fc
    inc bc
    db $fc
    inc bc
    xor a
    ld b, b
    nop
    ld b, b
    nop
    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [rSC]
    rst $38
    rst $10
    rst $38
    sub h
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    sbc h
    rst $38
    call $8cf3
    pop af
    ret nc

    ldh [$90], a
    ldh [$80], a
    ldh [$80], a
    ldh [$a0], a
    ldh [$e6], a
    ldh [$d0], a
    and $c3
    cp $6b
    db $fc
    xor a
    ldh a, [$af]
    ld a, [c]
    and e
    cp $ab
    cp $af
    cp $a5
    cp $a7
    cp $af
    cp $41
    cp $41
    cp $40
    rst $38

jr_0ac_6756:
    ld b, c
    cp $40
    rst $38
    ld b, c
    cp $41
    ld a, [c]
    nop
    ld bc, $00ff
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    ld a, [hl]
    add c
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
    cp $01
    db $fd
    inc bc
    cp $01
    rst $38
    ld bc, $03fd
    ei
    rlca
    rst $30
    rrca
    rst $38
    rrca
    rst $28
    rra
    rst $18
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    cp $0e
    ld hl, sp+$18
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rNR41], a
    jp $ff43


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [$f8]
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
    rlca
    rrca
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
    cp $ff
    ei
    rst $38
    ld b, e
    cp l
    dec bc
    db $fd
    ld c, $fd
    ld c, [hl]
    cp h
    ld l, l
    sbc [hl]
    ld de, $0afc
    ldh a, [rSB]
    ld e, d
    nop
    ld a, [hl+]
    add hl, bc
    ccf
    db $10
    rrca
    ld bc, $443e
    dec sp
    ld h, c
    ld e, $f9
    ld b, $ff
    rst $38
    ld a, a
    ccf
    rra
    rrca
    rrca
    rlca
    add e
    inc bc
    pop bc
    ld bc, $0080
    ldh [rP1], a
    or b
    nop
    ld [hl], b
    nop
    jr c, jr_0ac_6806

jr_0ac_6806:
    db $f4
    nop
    cp e
    ret nz

    ld a, h
    add c
    ld a, h
    add c
    db $fc
    ld bc, $01d4
    nop
    ld bc, $0102
    nop
    nop
    xor b
    nop
    dec h
    ld a, [$ffff]
    rst $38
    rst $38
    ld b, $ff
    jr @-$1d

    jr nz, @+$01

    cp a
    ld h, b
    pop bc
    ld a, $0f
    ld e, $1f
    ld c, $0f
    ld bc, $0f01
    dec b
    dec bc
    jr jr_0ac_683d

    ld a, h
    inc bc
    ld d, h
    dec hl
    cp b
    ld l, a
    adc a

jr_0ac_683d:
    ld a, l
    cpl
    db $db
    dec b
    ld a, [de]
    dec d
    ld h, d
    add d
    ld b, c
    jp nz, $8301

    ld b, c
    push bc
    ld b, e
    rst $00
    ld b, e
    db $eb
    ld b, a
    ld b, a
    rst $00
    ld a, a
    rst $08
    ld c, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rra
    rra
    ccf
    rst $38
    rst $18
    ccf
    rst $20
    rra
    pop af
    rrca
    db $fc
    inc bc
    ld a, e
    add h
    ld c, d
    or l
    and $19
    ld hl, sp+$07
    ld sp, hl
    rlca
    rst $20
    rra
    sbc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $02
    db $fc
    inc b
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    db $fc
    inc e
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    jr nz, @+$22

    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh [$e1], a
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
    ld sp, $e0fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    sbc $ff
    inc b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    rlca
    rst $08
    rrca
    rrca
    rlca
    rrca
    add a
    rrca
    ld [$01ff], a
    cp $48
    or a
    ld c, b
    or a
    ld sp, $aece
    ld d, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rra
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    add a
    inc bc
    rla
    inc bc
    rra
    nop
    ld e, $01
    ld e, $01
    ld a, [de]
    dec b
    ld d, c
    cpl
    ld e, e
    cpl
    ei
    rlca
    or a
    xor a
    res 6, a
    ld c, l
    add e
    or e
    rrca
    or e
    rrca
    or e
    rrca
    or e
    rrca
    scf
    adc a
    rst $28
    rra
    ld l, a
    sbc a
    or a
    rrca
    inc sp
    rrca
    or a
    rrca
    db $ed
    inc de
    ld c, a
    rlca
    dec l
    rra
    add l
    ld a, a
    ld b, l
    cp a
    dec e
    ccf
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    db $fd
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $38
    rra
    rst $38
    inc bc
    cp $02
    rst $38
    inc bc
    rst $38
    rlca
    cp $0e
    rst $38
    rrca
    rst $38
    rra
    db $fc
    inc a
    ldh [rNR41], a
    ret nz

    ld b, b
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh [$e0], a
    nop
    nop
    nop
    nop
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    nop
    ld bc, $0300
    inc b
    inc bc
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    add b
    cp a
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
    cp $00
    db $eb
    nop
    db $ed
    nop
    xor e
    nop
    rst $10
    nop
    cpl
    nop
    xor a
    nop
    ld d, a
    nop
    push hl
    ret nz

    rst $38
    ldh a, [$f3]
    rst $38
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
    ld [hl], b
    rst $38
    db $f4
    rst $38
    nop
    db $fd
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    pop hl
    cp $e0
    rst $38
    ldh [rIE], a
    ld bc, $01fe
    cp $01
    cp $01
    cp $00
    rst $38
    ld b, b
    cp a
    ld a, h
    add e
    xor $11
    ld l, [hl]
    sub c
    push af
    ld a, [bc]
    db $fc
    add e
    db $fc
    inc hl
    ret c

    daa

Jump_0ac_6a00:
    ld b, b
    cp a
    ld [c], a
    sbc a
    di
    sbc a
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    adc a
    rra
    ld c, a
    sbc a
    rst $18
    adc a
    ret nc

    adc a
    call $cd9e

Jump_0ac_6a2d:
    sbc e
    rst $18
    adc a
    rst $18
    adc a
    sbc a
    rst $08
    sbc a
    rst $08
    inc bc
    rst $00
    db $e3
    rst $00
    cp h
    rst $00
    adc a
    db $fc
    jp c, $dfe4

    db $fc
    cp $fd
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    db $fc
    db $ed
    or $e7
    rst $38
    ldh a, [$f0]
    rst $38
    rst $38
    ldh [$e0], a
    rst $38
    rst $38
    ret nz

    ret nz

    rst $38
    rst $38
    ld b, c
    pop bc
    add e
    add e
    rst $38
    rst $38
    ld bc, $0803
    rrca
    ld hl, sp-$01
    nop
    add a
    nop
    rrca
    ldh a, [rIE]
    ldh a, [rIE]
    nop
    rra
    nop
    ccf
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld a, a
    xor b
    ld d, a
    inc b
    ei
    adc d
    ld [hl], l
    ld d, $e9
    ld bc, $02fe
    db $fd
    nop
    rst $38
    dec c
    ld a, [c]
    inc de
    rst $38
    ld a, [hl+]
    push de
    ld a, a
    add b
    cp e
    ld b, h
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
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    ld e, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ret nc

    nop
    rst $38
    jr z, jr_0ac_6b44

    cp c
    ld hl, sp-$01
    rst $38
    rst $38
    rst $18
    rst $38
    ldh a, [rIE]
    and b
    rst $38
    db $10
    rst $38
    daa
    ret c

    nop
    rst $28
    ld b, $e8
    inc c
    ldh a, [$08]
    ldh a, [rNR23]
    ldh [rP1], a
    ldh a, [$30]
    ret nz

    ld [hl], b
    add b
    ld [hl], b
    add b
    ld h, b
    add b
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld [hl], b
    add b
    inc h
    ret nz

    ld [hl+], a
    ret nz

    ld [hl-], a
    ret nz

    ld [hl-], a
    ret nz

    ld h, h
    sub b
    dec e
    ldh [$33], a
    ret nz

    add hl, de
    ldh [$84], a
    ei
    ldh [rIE], a
    or b
    rst $38
    cp b
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
    ld e, a
    cp a
    cp a
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
    cp a
    rst $38
    xor a
    rst $38
    ret nz

    and b
    nop
    and b
    nop
    and b
    ret z

    or b
    ret nz

    add b
    ldh a, [$80]
    rst $38
    add b
    ld a, a
    add b
    cp a
    ld e, a
    rst $38
    ccf
    rst $30
    rst $38
    ccf
    ccf

jr_0ac_6b44:
    ld l, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    xor $ff

jr_0ac_6b4e:
    ldh a, [rIE]
    rst $38
    rst $38
    and $df
    sbc $af
    sbc $3f
    ld l, a
    sbc [hl]
    or l
    ld e, [hl]
    ld a, l
    cp $7e
    db $fd
    cp a
    ld a, h
    ld d, [hl]
    cp l
    adc d
    ld a, l

jr_0ac_6b66:
    rst $10
    inc a
    db $db
    cp h
    ld l, e
    db $fc
    cp l
    ld c, d
    rst $20
    jr jr_0ac_6b7f

    ld sp, hl
    rlca
    ld hl, sp+$07
    ld hl, sp+$06
    ld sp, hl
    ld l, a
    sub b
    xor $11
    rst $28
    db $10
    rst $28

jr_0ac_6b7f:
    db $10
    rla
    add sp, $48
    or a
    ld e, a
    and b
    rst $18
    jr nz, jr_0ac_6b66

    ld [hl+], a
    sbc a
    ld h, b
    rst $18
    jr nz, jr_0ac_6b4e

    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    nop
    dec hl
    add b
    xor d
    nop
    and d
    nop
    and d
    nop
    ld bc, $8a00
    nop
    ld b, l
    nop
    ld [bc], a
    nop
    rst $18
    nop
    pop de
    and b
    ld d, h
    ld [c], a
    add e
    push af
    ld [$88f5], a
    rst $30
    inc c
    di
    scf
    ret nz

    rst $10
    jr nz, jr_0ac_6bc5

jr_0ac_6bc5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    rra
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
    ld bc, $0200
    nop
    adc b
    nop
    ld l, l
    nop
    or h
    ld c, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nz, $efff
    rst $38
    rst $38
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
    ld e, a
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
    add h
    nop
    cp a
    nop
    ei
    add l
    rst $38
    rst $38
    cp l
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld a, c
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $38
    rla
    xor a
    ld a, a
    sub a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    inc c
    rst $38
    ld [hl], l
    cp a
    cp c
    ld l, a
    xor d
    ld [hl], l
    ld a, l
    cp [hl]
    db $fd
    ld a, [hl]
    ccf
    db $fc
    sbc c
    ld a, [hl]
    rst $10
    jr c, jr_0ac_6cd8

    cp a
    rst $18
    ccf
    ld l, a
    sbc a
    di
    rrca
    cpl
    rst $10
    rst $08
    ccf
    rst $20
    rra
    or e
    ld c, a
    call c, Call_0ac_6e23
    sub c
    db $db
    inc h
    ld a, l
    add d
    add a
    ld a, a
    ld a, [c]
    dec c
    sbc $21
    xor [hl]
    ld d, c
    rst $30
    ld [$22dd], sp
    ld a, a
    add b
    db $ed
    ld [de], a
    ei
    inc b
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
    ld [hl], a
    nop
    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    cp a
    nop
    ld e, a
    nop
    xor e
    nop
    ld de, $c700
    rlca
    add d
    ld b, l
    ld a, [bc]
    dec b
    ld b, [hl]
    dec c
    adc a
    dec c
    adc a
    adc l
    dec e
    adc a
    ld [$909f], sp
    rra
    nop
    sbc a
    jr z, jr_0ac_6cbd

    inc c
    inc bc
    inc b
    inc bc
    ld b, $01
    ld [bc], a

jr_0ac_6cbd:
    ld bc, $0102
    ld [bc], a
    ld bc, $0007
    ld [bc], a
    ld bc, $0003
    ld bc, $0300
    nop
    ld bc, $0580
    add b
    dec b
    nop
    rlca
    nop
    rlca
    nop
    ld c, $01

jr_0ac_6cd8:
    dec e
    ld [bc], a
    add hl, de
    ld b, $38
    rlca
    ld a, [bc]
    dec d
    ld a, c
    ld b, $20
    rra
    rrca
    rst $38
    rrca
    rst $38
    ld bc, $05ff
    rst $38
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    cp $ff
    cp a
    rst $38
    ld d, a
    inc bc
    rlca
    inc bc
    ld bc, $0303
    inc bc
    ld bc, $0703
    ld bc, $0153
    cp b
    ld b, a
    ld e, [hl]
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    db $fd
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
    cp a
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
    ccf
    ld a, [$5faf]
    ld a, c
    cp a
    ld a, [hl]
    cp l
    cp c
    ld a, [hl]
    push hl
    ei
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
    rst $28
    xor a
    ld a, a
    ld l, a
    sbc a
    jp nz, $d63d

    rst $38
    and l
    ld e, a
    rst $10
    add hl, hl
    push af
    ld a, [bc]
    ld l, [hl]
    sub c
    ld l, a
    sub b
    cp e
    ld b, h
    ei
    inc b
    xor [hl]
    ld d, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    or $09
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, [$f8e0]
    ldh [$f8], a
    ldh [$f4], a
    ret nz

    ldh a, [$c0]
    ldh a, [$c0]
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$c0], a
    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ret nc

    ret nz

    ret nc

    ret nz

    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$c0]
    ld a, [c]
    ret nz

    push af
    ret nz

    xor $c0
    db $fc
    ret nz

    ld a, [c]
    ret nz

    db $fc
    ret nz

    db $fd
    ret nz

    db $dd
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    sbc $e0
    call c, $dde0
    db $e3
    db $dd
    db $e3
    db $dd
    db $e3
    push de
    db $eb
    push bc
    ei
    rst $20
    ld a, [$fae7]
    db $e3
    cp $e4
    ld a, [$fae4]
    ld a, [c]
    db $fc
    ld a, [c]
    db $fc
    push af
    ld hl, sp-$0f
    ld hl, sp+$01
    ld hl, sp+$0f
    nop
    cp $33
    cp $4f
    sbc $e7
    cp $e3
    jp nc, $f7ef

    rst $28
    di
    rst $28
    db $e3
    rst $38
    di
    rst $38
    rst $10

Call_0ac_6e23:
    rst $38

jr_0ac_6e24:
    rst $10
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $30
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
    ld a, a
    rst $38
    or a
    rst $38
    ld l, a
    rst $38
    ld sp, hl
    rst $38
    push hl
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    xor e
    rst $30
    sbc e
    rst $38
    adc e
    ld a, a
    ld e, a
    xor e
    push hl
    dec de
    cp a
    ld b, b
    rst $18
    jr nz, jr_0ac_6e24

    ld b, b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    db $eb
    inc d
    rst $38
    nop
    xor a
    ld d, b
    rst $38
    nop
    cp d

jr_0ac_6e75:
    ld b, l
    rst $28
    db $10
    db $fd
    ld [bc], a
    sbc $21
    rst $38
    nop
    ld a, [$e005]
    db $10
    ret nz

    jr nc, jr_0ac_6e75

    nop
    ld h, b
    nop
    and b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    and b
    nop
    jr nz, jr_0ac_6ea2

jr_0ac_6ea2:
    add b
    nop
    inc h
    nop
    xor $00
    cp a
    nop
    ld a, [hl]
    nop
    ld [hl], a
    ld [$08f7], sp
    inc d
    nop
    inc a
    nop
    ld e, b
    nop
    ld a, [$7a00]
    nop
    cp l
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
    inc c
    di
    ld h, $c1
    add b
    ld de, $d140
    jp nz, $d6f1

    pop hl
    add [hl]
    pop af
    adc a
    ldh a, [$b7]
    ret nz

    dec de
    add b
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    stop
    stop
    stop
    stop
    jr nc, jr_0ac_6eea

jr_0ac_6eea:
    ld [hl], d
    nop
    ei
    nop
    sub l
    ld h, b
    sbc a
    ld h, b
    ld a, a
    add b
    cp a
    ret nz

    cp a
    ld h, b
    rra
    add b
    sbc [hl]
    ld hl, $8778
    ldh [$9f], a
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    and c
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    ccf
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    adc l
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
    rst $28
    rra
    ei
    ld b, $fd
    ld [bc], a
    rst $18
    jr nz, @+$01

    nop
    ld a, c
    add [hl]
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    ei
    inc b
    ld bc, $0400
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
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    dec b
    nop
    rlca
    nop
    dec bc
    nop
    daa
    nop
    rrca
    nop
    ld d, a
    nop
    rrca
    nop
    ld l, a
    nop
    rla
    nop
    ld l, a
    nop
    rst $18
    nop
    cp $01
    cp $01
    inc bc
    nop
    inc bc
    nop
    ld e, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp a
    ld b, b
    ld e, a
    and b
    adc e
    db $f4
    sbc a
    ldh [$93], a
    db $ec
    db $f4
    rst $38
    cp $ff
    inc b
    ei
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    ld a, a
    nop
    cp $01
    ld [bc], a
    nop
    dec b
    nop
    dec bc
    nop
    cpl
    nop
    ld d, a
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
    ld a, [$f405]
    dec bc
    ret nc

    cpl
    add b
    ld a, a
    nop
    rst $38
    ld bc, $03ff
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    ld c, e
    or a
    push af
    dec bc
    cp d
    ld b, l
    cp $01
    ld a, h
    add e
    sbc $21
    cp e
    ld b, h
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, d
    rst $38
    nop
    ld [hl], l
    adc d
    rst $38
    nop
    inc a
    inc bc
    ld e, h
    inc bc
    sbc b
    rlca
    ld [hl], b
    rrca
    ldh a, [rIF]
    ld h, b
    rra
    and b
    rra
    add b
    ld a, a
    rra
    nop
    rra
    nop
    ld e, a
    nop
    ccf
    nop
    ccf
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
    rst $18
    jr nz, @+$01

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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ei
    inc b
    rst $30
    ld [$0877], sp
    ld a, a
    nop
    ld [hl], a
    ld [$502f], sp
    sub a
    ld l, b
    xor a
    ld d, b
    xor a
    ld d, b
    sub a
    ld l, b
    sub a
    ld l, b
    xor e
    ld d, h
    sub l
    ld l, d
    ld a, [bc]
    push af
    dec d
    ld [$f50a], a
    ld a, [bc]
    push af
    add l
    ld a, [$ff80]
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
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
    ldh [rIE], a
    ldh a, [rIE]
    or b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld b, c
    rst $38
    dec bc
    push af
    add c
    ld a, a
    ld d, c
    xor a
    ld l, c
    sub a
    cp c
    ld b, a
    ld [hl], l
    adc e
    cp l
    ld b, e
    db $dd
    inc hl
    xor e
    ld d, l
    rst $30
    add hl, bc
    call nc, $a100
    nop
    ld [$c400], a
    nop
    and h
    nop
    call nc, $c900
    nop
    and d
    nop
    and b
    nop
    add c
    nop
    ret z

    nop
    ld hl, $4200
    nop
    sub b
    nop
    ld c, b
    nop
    sub b
    nop
    add sp, $00
    pop hl
    nop
    ld [$e700], a
    nop
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    cp $00
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $00
    cp $01
    cp $01
    cp $01
    cp $01
    cp $02
    db $fc
    rlca
    ld hl, sp+$02
    db $fc
    dec bc
    db $f4
    dec bc
    db $f4
    dec bc
    db $f4
    add sp, $00
    db $f4
    nop
    db $f4
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld hl, sp+$01
    db $fc
    ld bc, $01f8
    db $fc
    ld bc, $01f8
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld sp, hl
    nop
    db $db
    jr nz, jr_0ac_71f0

    sub b
    cp e
    ld b, b
    ld e, e
    and b
    dec hl
    ret nc

    dec bc
    ldh a, [$03]
    ldh a, [$0a]
    pop af
    ld a, [bc]
    pop af
    ld b, $f1
    ld b, $f1
    ld c, $f1
    rlca
    ldh a, [$0e]
    pop af
    rrca

Jump_0ac_719f:
    ldh a, [rNR34]
    ldh [rNR32], a
    ld [c], a
    ld a, [de]
    db $e4
    ld e, h
    db $e3
    db $fd
    db $e3
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld a, [$f8e5]
    rst $20
    ret nc

    rst $28
    jp nc, $f0ed

    rst $28
    ret nc

    rst $28
    ret nc

    rst $28
    pop de
    xor $d9
    and $f9
    add $f9
    add $f1
    adc $f3
    adc $e3
    sbc $e9
    sub $f0
    rst $08
    ldh [$df], a
    ldh [$df], a
    ld [$e3df], a
    rst $18
    xor e
    rst $18
    xor e
    rst $18
    xor e
    rst $18
    xor a
    rst $18
    rst $38
    sbc a
    rst $28
    sbc a
    rst $18
    cp [hl]
    adc a
    cp $df
    cp [hl]
    cp a
    cp $df
    cp $df
    rst $38

jr_0ac_71f0:
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    cp $ff
    ei
    db $fd
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    rst $30
    ei
    db $fd
    ei
    ei
    db $fd
    cp $fd
    rst $38
    cp $fe
    rst $38
    ld d, h
    nop
    ld d, d
    nop
    adc h
    nop
    or b
    nop
    add sp, $00
    add sp, $00
    ld l, b
    nop
    and b
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$01
    ldh a, [$03]
    ldh [rTAC], a
    ret nz

    rrca
    add b
    rra
    nop
    ccf
    add b
    ccf
    add b
    ccf
    nop
    ccf
    ld [bc], a
    ccf
    ld [bc], a
    ccf
    ld b, l
    ccf
    ld c, e
    ccf
    jp z, $993f

    ld a, a
    xor e
    ld a, a
    xor e
    ld a, a
    sbc l
    ld a, a
    and a
    ld a, a
    sbc e
    ld a, h
    or a
    ld a, h
    db $ec
    ld a, b
    inc a
    ld a, b
    sbc h
    ld a, b
    ld hl, sp+$70

jr_0ac_7258:
    ldh a, [$e0]
    db $e3
    ret nz

    rst $38
    rst $10
    rst $38
    rst $38
    ccf
    ldh a, [$38]
    ldh a, [$38]
    ldh a, [$38]
    ldh a, [$38]
    ldh [$38], a
    ldh [$30], a
    ldh [$30], a
    ldh [rIE], a
    jr nz, @-$0f

    jr nc, jr_0ac_7258

    ld a, a
    rst $20
    ld a, a
    rst $20
    ld a, a
    rst $30
    ld a, a
    rst $30
    ld a, a
    rst $38
    ld a, a
    rst $28
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
    adc a
    nop
    ret nz

    nop
    call z, $c300
    nop
    adc $00
    pop hl
    ret nz

    cp $f8
    add [hl]
    rst $38
    add c
    ld a, a
    ret nz

    ld a, a
    ld e, a
    ccf
    sbc e
    rlca
    ld h, $c1
    adc c
    ldh a, [rSC]
    db $fc
    add b
    rst $38
    add b
    rst $38
    ld [$f9ff], sp
    ld b, $fe
    ld bc, $30cf
    ei
    inc b
    rst $18
    jr nc, @-$28

    add hl, hl
    ldh a, [$1f]
    call nc, $c02b
    ccf
    db $fc
    rlca
    ld hl, sp+$07
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld [hl], a
    ret z

    dec e
    ld [c], a
    dec de
    db $e4
    ld b, $f9
    add c
    cp $c0
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [$7f]
    ld a, d
    rst $38
    pop af
    sbc a
    ld sp, $99df
    ld l, a
    ld l, l
    or a
    rst $38
    sub a
    xor a
    rst $18
    rst $30
    ld a, [hl]
    rst $18
    ccf
    db $ed
    ld a, a
    cp a
    rst $38
    cp $ff
    cp a
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    cp $ff
    cp $ff
    cp $fd
    cp $ef
    db $fd
    rst $38
    rst $38
    ld a, [hl]
    add b
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
    nop
    nop
    nop
    nop
    nop
    cp $00
    ld b, b
    inc a
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [$03], a
    ldh [$15], a
    ret nz

    ld a, [hl]
    ret nz

    or c
    ret nz

    ld a, c
    ret nz

    ld [hl], a
    ret nz

    or a
    ldh [$37], a
    ldh [$f7], a
    ldh [rPCM34], a
    ldh [$e0], a
    ldh [$e7], a
    ldh [$ef], a
    ldh [rIE], a
    ldh [$e0], a
    ldh [$c0], a
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
    ld c, $01
    rra
    rst $38
    rst $38
    rst $38
    ld b, $ff
    rst $38
    nop
    rra
    nop
    rra
    nop
    dec hl
    inc d
    ld [hl], l
    ld a, [bc]
    ld d, [hl]
    add hl, hl
    dec hl
    inc d
    ld [hl], l
    ld a, [bc]
    xor d
    dec d
    xor c
    ld d, [hl]
    add hl, hl
    sub $28
    rst $10
    ld d, b
    xor a
    ld a, [hl+]
    push de
    ld d, h
    xor e
    inc b
    ei
    add l
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    ret


    rst $30
    ret nz

    rst $38
    ldh [rIE], a
    rra
    rst $38
    push af
    rrca
    inc e
    inc bc
    add c
    nop
    ld l, b
    nop
    ld d, $00
    adc a
    nop
    or b
    nop
    db $d3
    ldh [$3c], a
    ld hl, sp+$0f
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    ccf
    db $10
    rrca
    inc b
    inc bc
    pop bc
    nop
    ldh a, [rP1]
    ld [bc], a
    db $fc
    nop
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    ld [$c2ff], sp
    rst $38
    jp hl


    rst $38
    ldh a, [rIE]
    rst $30
    ld l, b
    db $10
    rst $28
    ld e, d
    push hl
    ret nz

    rst $38
    ld hl, sp+$57
    cp b
    ld l, a
    rst $30
    add hl, de
    push af
    ld c, $f2
    rrca
    ld a, h
    add e
    rst $18
    ld hl, $08f7
    sbc $21
    db $eb
    inc d
    ld e, [hl]
    and c
    ld a, e
    add h
    adc [hl]
    pop af
    ld e, e
    db $e4
    dec c
    ld a, [$fc83]
    adc c
    cp $c5
    rst $38
    ld hl, sp-$01
    ld [hl], a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $28
    ld l, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    inc l
    rst $38
    sbc [hl]
    db $ed
    ei
    call c, $d87c
    db $fc
    db $fc
    cp $de
    sbc a
    rst $38
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
    ld [$0404], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0ac_745e

    ld a, [de]
    dec de
    inc b
    inc b
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ac_7470

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0ac_7480

    ld a, [hl+]
    inc b
    dec hl
    inc l
    dec l
    ld l, $2f

jr_0ac_745e:
    jr nc, jr_0ac_7491

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0ac_74a1

    ld a, [hl-]
    dec sp
    dec h
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_0ac_7470:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc b
    ld c, c
    dec h
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_0ac_7480:
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
    dec h
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_0ac_7491:
    ld e, a
    ld h, b
    dec h
    dec h
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

jr_0ac_74a1:
    ld l, l
    ld l, [hl]
    dec h
    dec h
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
    dec h
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
    dec h
    sbc b
    sbc c
    sbc d
    sbc e
    dec h
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
    dec h
    and [hl]
    and a
    xor b
    dec h
    dec h
    ld l, a
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
    dec h
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
    ld de, $0707
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
    ld [bc], a
    ld [bc], a
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
    rlca
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
    ld [bc], a
    rlca
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
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
    inc bc
    ld bc, $0403
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
    inc bc
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0601
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0001
    nop
    inc b
    nop
    nop
    inc b
    ld [bc], a
    nop
    ld [bc], a
    dec b
    dec b
    ld bc, $0001
    ld bc, $0001
    nop
    inc b
    nop
    ld bc, $0203
    nop
    ld [bc], a
    dec b
    dec b
    ld bc, $0001
    ld bc, $0000
    nop
    inc b
    nop
    ld bc, $0203
    nop
    ld [bc], a
    dec b
    dec b
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0200
    rlca
    ld [bc], a
    dec c
    dec c
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0a08], sp
    ld [$0c09], sp
    ld a, [bc]
    ld a, [bc]
    dec c
    dec c
    dec c
    cp a
    ret nz

    ld e, a
    ldh [$9f], a
    ldh [$5f], a
    ldh [$9f], a
    ldh [$5f], a
    ldh [$af], a
    ldh a, [rVBK]
    ldh a, [$af]
    ldh a, [$c7]
    ld hl, sp-$11
    ldh a, [$d7]
    ld hl, sp-$19
    ld hl, sp-$09
    ld hl, sp-$19
    ld hl, sp-$09
    ld hl, sp-$19
    db $fc
    rst $30
    db $fc
    db $e3
    cp $f3
    cp $ea
    rst $38
    db $f4
    rst $38
    ld [$f5ff], a
    rst $38
    xor $ff
    rst $30
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
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    add sp, $00
    add sp, $00
    ld l, b
    db $10
    inc [hl]
    ld b, b
    ld a, $00
    inc d
    ld [$a007], sp

Jump_0ac_7700:
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    jp nc, $eb7f

    ccf
    db $f4
    cp a
    or $3f
    db $fc
    sbc a
    rst $38
    ld e, [hl]
    rst $38
    sub a
    rst $38
    ld d, e
    rst $38
    xor c
    rst $38
    ld e, l
    rst $38
    xor d
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fd
    cp $fa
    db $fd
    ld a, [$fbfd]
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp-$0f
    ld hl, sp-$14
    pop af
    ld [$c0f0], a
    ldh a, [rSC]
    ld bc, $0102
    ld [bc], a
    ld bc, $0003
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0201
    ld bc, $0200
    ld bc, $0300
    inc b
    inc bc
    ld d, $00
    inc d
    ld [bc], a
    jr c, jr_0ac_7764

    ld [$0416], sp
    ld [$1804], sp

jr_0ac_7764:
    inc c
    db $10
    jr c, jr_0ac_776a

    ld d, h
    ld [hl+], a

jr_0ac_776a:
    ld e, h
    ld h, $7e
    sbc a
    rst $38
    ld a, a
    cpl
    rst $38
    adc a
    rst $38
    dec hl
    rst $38
    ld d, e
    rst $38
    xor c
    rst $38
    ld d, l
    rst $38
    jp hl


    rst $38
    call nc, $e8ff
    rst $38
    call c, $feff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fd
    cp $fd
    cp $fc
    rst $38
    db $fd
    cp $f8
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    push af
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    or $ff
    db $f4
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $06fe
    ld sp, hl
    add hl, hl
    sub $9a
    ld h, l
    ld l, l
    sub d
    dec d
    ld [$49b6], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $28
    nop
    or d
    nop
    sub e
    inc b
    ld a, [hl+]
    dec b
    rst $00
    jr c, @+$62

    rst $18
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
    ld b, c
    cp $41
    cp $41
    cp $43
    db $fc
    ld b, e
    db $fc
    ld b, a
    ld hl, sp+$17
    add sp, $5e
    ldh [rVBK], a
    ldh a, [$9f]
    ldh [$8e], a
    or b
    sbc h
    ldh [$7c], a
    ret nz

    ld e, h
    ldh [$5e], a
    ldh [rNR32], a
    ldh [$5c], a
    ldh [$5c], a
    ldh [rNR32], a
    ldh [$8a], a
    ldh [$81], a
    or b
    sbc c
    ret nz

    ld d, d
    ret z

    ld c, e
    ldh [rSCX], a
    ldh [$0e], a
    ldh a, [rNR12]
    add c
    sub c
    ret z

    call z, $f2f2
    add sp, -$18
    ldh a, [$f4]
    db $fc
    ldh [$fc], a
    ldh [$fe], a
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $20
    cp $e3
    cp $f0
    rst $38
    ld a, [$f5ff]
    rst $38
    cp $ff
    db $fd
    rst $38
    ld a, [$fdff]
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
    or $f8
    pop hl
    db $f4
    jp hl


    ldh [$c0], a
    ldh [$e0], a
    ret nz

    pop bc
    ret nz

    add b
    ret nz

    ret nz

    add b
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    add b
    nop
    reti


    nop
    ld a, h
    add b
    sbc $20
    ld e, d

jr_0ac_787d:
    and b
    sub c
    ld l, [hl]
    ld d, h
    xor e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    rst $38
    rst $38
    xor b
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
    ld bc, $02fe
    db $fd

jr_0ac_789e:
    inc l
    db $d3
    and d
    ld e, l
    ld d, l
    xor d
    jr z, jr_0ac_787d

    sub a
    ld l, b
    sub a
    ld l, b
    xor e
    ld d, h
    ld d, l
    xor d
    ld l, d
    sub l
    xor a
    ld d, b
    ei
    nop
    push hl
    nop
    adc e
    nop
    ld l, $01
    dec l
    ld d, d
    cp l
    ld b, b
    jp c, $0404

    ld hl, sp+$01
    cp $77
    adc b
    cp $00
    ld a, a
    add b
    ld a, d
    add h
    jp hl


    nop
    ldh [rP1], a
    sub b
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
    nop
    nop
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
    ld b, b
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    jr c, @-$3e

    dec e
    ldh [rTAC], a
    jr c, jr_0ac_789e

    ld c, b
    ret


    inc b
    db $10
    rrca
    ld de, $0e02
    ld hl, $0041
    ld h, c
    add b
    ld a, e
    nop
    sub d
    ld [$904c], sp
    rst $10
    and b
    or a
    ret nz

    sub b
    ei
    ld l, a
    db $fc
    dec sp
    cp $26
    rst $38
    ld e, l
    rst $38
    dec l
    rst $38
    ld b, c
    rst $38
    xor e
    rst $38
    rst $10
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
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    ld de, $0000
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $bd00
    nop
    and l
    ld e, d
    ld d, h
    xor e
    xor d
    ld d, l
    dec b
    ld a, [$ff00]
    daa
    rst $38
    db $fc
    rst $38
    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    dec b
    ld a, [$bf40]
    and b
    ld e, a
    ld b, b
    cp a
    dec d
    ld [$ff00], a
    add b
    ld a, a
    xor c
    ld d, [hl]
    dec b
    ld a, [$09f6]
    rst $30
    ld [$00fa], sp
    ld a, [hl+]
    ret nc

    ret c

    ld hl, $48a5
    add sp, $00
    ld h, h
    nop
    dec h
    nop
    dec sp
    ld b, h
    ld a, [hl]
    add b
    ld a, c
    inc b
    ret nc

    nop
    nop
    nop
    nop
    nop
    ret nz

    ldh a, [$fc]
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    dec d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0ac_79c9:
    rst $38
    ld [$16f7], sp
    jp hl


    ld a, [de]
    pop hl
    rla
    add sp, $1f
    ldh [$2f], a
    ret nc

    rra
    ldh [$1f], a
    ldh [rNR50], a
    db $db
    rla
    db $eb
    daa
    db $db
    jr jr_0ac_79c9

    dec bc
    db $f4
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0b
    db $f4
    ld b, $f9
    ld b, c
    cp $51
    cp $8c
    rst $38
    ld [hl-], a
    db $fd
    ld e, e
    cp $8b
    rst $38
    push de
    rst $38
    ld [$3bff], a
    inc b
    ld c, b
    rlca
    ld h, h
    inc de
    ld a, [de]
    ld h, c
    inc c
    sub e
    dec b
    ld l, b
    nop
    and e
    nop
    push af
    rst $28
    dec a
    pop bc
    ld a, [hl]
    ret


    rst $38
    db $fd
    rrca
    inc c
    rrca
    db $fc
    rrca
    ld a, [$fd0f]
    rrca
    ld a, [$fd0f]
    rst $28
    cp $ef
    db $fd
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    db $ec
    rst $38
    add b
    ld d, b
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
    jr nz, jr_0ac_7a5a

jr_0ac_7a5a:
    sub $00
    cp l
    ld b, b
    ld e, $e1
    or c
    ld c, [hl]
    ld c, b
    or a
    ld [bc], a
    rst $38
    jp hl


    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld d, l
    xor d
    inc b
    ei
    ld [bc], a

jr_0ac_7a77:
    db $fd
    ld [bc], a
    db $fd
    add hl, hl
    sub $aa
    ld d, l
    and l
    ld e, d
    ld d, l
    xor d
    dec hl
    call nc, Call_000_00fc
    ld sp, hl
    nop
    or h
    nop
    sub h
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    db $10
    ld [bc], a
    push de
    ld [$0089], sp
    ld b, b
    nop
    nop
    nop
    nop
    nop
    stop
    rrca
    rlca
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    sbc a
    ld l, a
    dec bc
    db $f4
    ld l, $d1
    rla
    add sp, $0f
    ldh a, [rIF]
    ldh a, [rNR22]
    add sp, $2f
    ret nc

    rla
    add sp, -$41
    ld b, b
    db $dd
    jr nz, jr_0ac_7a77

    ld b, b
    ldh a, [rP1]
    ret nz

    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [$e8]
    ld hl, sp-$08
    ld hl, sp+$00
    jr jr_0ac_7ad4

jr_0ac_7ad4:
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ld [hl], b
    add b
    ld a, [$f800]
    nop
    ld hl, sp+$00
    ld hl, sp-$80
    db $fc
    nop
    ld a, [hl]
    add b
    ld a, a
    ret nz

    jr nz, @-$3e

    ld b, b
    and b
    and b
    ret nz

    ret nz

    and b
    xor b
    ret nz

    ldh a, [$c0]
    ld hl, sp-$20
    cp $50
    rst $18
    add sp, -$01
    add sp, -$49
    ld hl, sp-$01
    ld a, [$f84f]
    rra
    cp $3b
    cp $37
    cp $8d
    rst $38
    ld b, h
    rst $38
    and h
    rst $38
    ret nc

    rst $38
    ld [$f5ff], a
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
    add a
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
    dec b
    nop
    ld [hl+], a
    nop
    cp $01
    ld bc, $50fe
    xor a
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
    db $10
    rst $28
    xor e
    ld d, h
    ld b, a
    cp b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    inc a
    jp nz, Jump_0ac_40b5

    ld [$8500], a
    nop
    rrca
    nop
    dec de
    inc b
    ld a, d
    nop
    and h
    nop
    add b
    nop
    nop
    nop
    ld e, $00
    and d
    nop
    sub l
    nop
    ld a, [hl+]
    nop
    xor b
    nop
    sub h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld e, a
    ccf
    inc bc
    ld bc, $0000
    ret nz

    ret nz

    cp $f8
    rst $38
    db $eb
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
    sub a
    nop
    rla
    nop
    ld d, a
    nop
    ld a, [hl+]
    nop
    inc l
    nop
    ld a, [hl+]
    nop
    adc h
    nop
    ld b, l
    nop
    ld [de], a
    nop
    stop
    jr z, jr_0ac_7bb2

jr_0ac_7bb2:
    nop
    nop
    jr nz, jr_0ac_7bb6

jr_0ac_7bb6:
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_0ac_7bc2

jr_0ac_7bc2:
    nop
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
    ld b, b
    nop
    add b
    nop
    ld a, [c]
    nop
    jp hl


    nop
    db $f4
    nop
    ld [$fa00], a
    nop
    ld a, [$fd00]
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
    db $fc
    nop
    cp $00
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [rP1], a
    rst $38
    nop
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push af
    rst $38
    cp $ff
    push af
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
    di
    rst $38
    sub l
    jr nz, jr_0ac_7c3b

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    dec bc
    nop
    ld a, $00
    ld a, l
    ld [bc], a
    jp nc, Jump_0ac_6a2d

    sub l
    ld h, b
    sbc a
    ld a, [bc]
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc

jr_0ac_7c3b:
    db $fc
    rra
    ldh [$7f], a
    add b
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    ei
    inc b
    ld a, a
    add b
    ret nz

    nop
    nop
    nop
    push af
    nop
    rst $38
    nop
    cp $00
    db $e4
    nop
    nop
    nop
    add d
    nop
    inc b
    nop
    ld d, b
    nop
    ret z

    nop
    and b
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc b
    nop
    jr nz, jr_0ac_7c70

jr_0ac_7c70:
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rla
    rlca
    nop
    nop
    nop
    nop
    ldh a, [$80]
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
    rst $38
    nop
    cp a
    nop
    ld d, a
    nop
    ld e, [hl]
    nop
    xor e
    nop
    xor b
    nop
    nop
    nop
    jr nz, jr_0ac_7c9a

jr_0ac_7c9a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc d
    nop
    ld [de], a
    nop
    ld e, d
    nop
    xor a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    cpl
    ret nc

    sub $00
    ei
    nop
    rst $38
    nop
    rra
    ldh [$0d], a
    ld a, [c]
    inc c
    di
    nop
    rst $38
    db $fd
    ld a, [bc]
    ld l, l
    add b
    ld d, $e9
    pop af
    cp $f8
    rst $38
    ld l, b
    rst $38
    ld a, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc e
    rst $38
    sbc a
    rst $38
    ei
    rst $38
    di
    ld [$0804], sp
    nop
    ld [$0800], sp
    ret z

    inc a
    ret nc

    rrca
    ldh [rNR32], a
    ldh a, [rIF]
    db $fd
    nop
    cp $01
    ldh a, [rIF]
    ld hl, sp+$07
    cpl
    nop
    db $fd
    nop
    ld a, h
    inc bc
    cp a
    rst $38
    rst $38
    ld a, a
    ccf
    ld a, a
    rra
    cp a
    ld e, a
    sbc a
    xor a
    rst $08
    rrca
    rst $20
    rla
    db $e3
    ld [$7ff0], sp
    add b
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld c, a
    nop
    ld d, a
    nop
    xor d
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    xor c
    nop
    ld b, h
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld de, $0000
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $ff00
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    pop af
    rst $38
    cp a
    ld a, a
    rlca
    inc bc
    nop
    nop
    add b
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    cp $00
    push de
    nop
    ld d, h
    nop
    add b
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

jr_0ac_7d7b:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, d
    nop
    call nc, $ca00
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
    ld a, d
    add l
    jr z, jr_0ac_7d7b

    ld e, d
    and l
    nop
    rst $38
    ld bc, $54fe
    cp $a0
    cp $e0
    db $fc
    sbc a
    ld h, b
    cp [hl]
    ld a, b
    push hl
    ld a, d
    ld a, b
    rst $38
    ld a, [hl]
    rst $38
    db $76
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    cp $ff
    ld [c], a
    rst $38
    rst $38
    rst $38
    ld [hl], d
    rst $38
    cp h
    dec bc
    add hl, sp
    ld b, $3c
    ld [bc], a
    ld h, b
    inc bc
    sub b
    ld a, a
    ld [hl-], a
    rst $38
    cp [hl]
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    inc sp
    adc a
    add c
    ld a, [c]
    ld a, h
    rst $38
    ld [hl-], a
    rst $08
    ld b, d
    cp h
    ld a, l
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
    cp $62
    add b
    jr c, jr_0ac_7dff

    ld c, a
    or b
    db $fd
    ld [bc], a
    ld l, e
    sub h
    rst $18

jr_0ac_7dff:
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
    pop hl
    nop
    xor b
    nop
    add h
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    and d
    nop
    inc d
    nop
    adc b
    nop
    jr nz, jr_0ac_7e1e

jr_0ac_7e1e:
    add b
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
    nop
    nop
    inc b
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
    daa
    rra
    ld bc, $0000
    nop
    ldh [rP1], a
    db $eb
    inc d
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
    ccf
    nop
    cpl
    nop
    rrca
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
    ld [bc], a
    nop
    inc bc
    rlca
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
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    rrca
    nop
    rrca
    nop
    rra
    nop
    rla
    nop
    cpl
    nop
    sbc a
    nop
    ld e, a
    nop
    cp [hl]
    ld bc, $03fc
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld e, c
    and [hl]
    nop
    rst $38
    ld a, [hl]
    add a
    adc a
    rlca
    adc a
    rlca
    adc a
    rlca
    sbc a
    rrca
    sbc a
    rrca
    rst $38
    rrca
    nop
    nop
    nop
    ld bc, $7abd
    ld a, d
    db $fd
    ld a, b
    rst $38
    jr c, @+$01

    db $f4
    ld hl, sp+$70
    ld hl, sp+$62
    ld e, a
    call c, $b08b
    add hl, de
    ld d, d
    inc hl
    call nz, $b407
    nop
    rst $08
    nop
    rst $30
    nop
    adc l
    add b
    dec bc
    db $10
    ld h, c
    jr nc, jr_0ac_7f3e

    jp nz, $eec4

    db $e4
    ld hl, sp+$79
    cp $7f
    rst $38
    rra
    ld a, a
    adc a
    rra
    inc bc
    rst $38
    ld bc, $80ff
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]

jr_0ac_7eee:
    ld hl, sp-$01
    ld a, [c]
    db $fc
    call c, $d703
    dec hl
    ld [hl], a
    adc c
    ei
    inc b
    rst $38
    nop
    push de
    jr nz, jr_0ac_7eee

    nop
    cp $00
    add sp, $00
    ld [$e400], a
    nop
    ret nc

    nop
    nop
    nop
    and b
    nop
    nop
    nop
    ld [$a100], sp
    nop
    inc h
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
    ld h, b
    nop
    ld [c], a

Call_0ac_7f23:
    nop
    cp $00
    cp a
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    cp $00
    ld de, $000e
    nop
    nop
    nop
    call c, $e320
    inc e
    ldh [$1f], a
    ld hl, sp+$07

jr_0ac_7f3e:
    ld [hl], b
    adc a
    cp $01
    ld a, c
    add [hl]
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld [$4b00], a
    nop
    dec c
    nop
    dec hl
    nop
    inc d
    nop
    sub h
    nop
    ld b, l
    ret nz

    add d
    ld b, b
    ld b, l
    nop
    inc h
    nop
    ld [de], a
    nop
    ld a, [bc]
    nop

jr_0ac_7f62:
    dec b
    nop
    ld de, $d400
    nop
    jp nc, $2a00

    nop
    ld c, d
    nop
    and h
    nop

jr_0ac_7f70:
    ret nc

    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr jr_0ac_7f62

    jr jr_0ac_7f70

    inc c
    di
    inc c
    db $e3
    inc e
    ld b, c
    cp [hl]
    dec b
    ld a, [$f801]
    ld [bc], a
    ld hl, sp+$33
    ret z

    inc hl
    ret c

    ret nz

    dec sp
    ld hl, sp+$00
    ld a, e
    nop
    dec sp
    nop
    inc e
    add b
    inc c
    ret nz

    nop
    ldh [rIF], a
    rst $38
    rra
    rst $38
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $1fff
    rst $38
    rlca
    rst $38
    ld a, $ff
    ld e, $3f
    db $10
    ccf
    jr nz, @+$01

    ld de, $103e
    ccf
    ld de, $00be
    cp a
    ld d, c
    ccf
    ld d, c
    ccf
    rst $18
    ccf
    sub a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $ff
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
    cp a
    ld a, a
    rst $18
    ccf
    ld b, a
    ccf
    db $e3
    ccf
    ld de, $e1a3
    ldh a, [$f8]
    cp $7f
    rst $38
    rlca
    rst $38
    inc d
    db $e3
    ld [$04f0], sp
    ld hl, sp-$3a
    jr c, @+$68

    sbc c
    ld sp, hl
    ld b, $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
