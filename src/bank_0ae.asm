SECTION "ROM Bank $0ae", ROMX[$4000], BANK[$ae]

    rlca
    rlca
    rlca
    rlca
    rlca
    rst $08
    ret nc

    pop de
    jp nc, $d38d

    call nc, $d6d5
    rst $10
    ret c

    rlca
    rlca
    rlca
    rlca
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    adc l
    db $e3
    rlca
    rlca
    rlca
    rlca
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0ae_40c8

jr_0ae_40c8:
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ae_4130

jr_0ae_4130:
    nop
    nop
    jr nz, jr_0ae_4134

jr_0ae_4134:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    cp $00
    adc $00
    rst $30
    nop
    db $db
    nop
    call nc, $2d00
    nop
    ld [hl-], a
    nop
    ld c, h
    nop
    ld b, a
    nop
    dec l
    nop
    ld d, $00
    add hl, hl
    nop
    ld d, $00
    and a
    nop
    add a
    nop
    daa
    nop
    ld [$0500], sp
    nop
    inc de
    nop
    daa
    nop
    ld c, c
    nop
    dec h
    nop
    sub l
    nop
    ld d, a
    nop
    ld a, a
    nop
    ld e, a
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $18
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
    add c
    ld a, [hl]
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
    ld c, d
    rst $38
    ret nc

    rst $38
    inc b
    ei
    nop
    rst $38
    ld [c], a
    dec e
    adc d
    ld [hl], l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$03
    db $fc
    dec bc
    db $f4
    dec c
    ld a, [c]
    inc bc
    db $fc
    rra
    ldh [$3f], a
    ret nz

    cpl
    ret nc

    ccf
    ret nz

    ccf
    ret nz

    sbc $21
    ld a, b
    add a
    ld b, c
    cp [hl]
    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    rst $38
    nop
    ld a, a
    add b
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
    db $db
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
    ld a, a
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
    ld sp, hl
    ld b, $ff
    nop
    ldh [$1f], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f5
    ld a, [bc]
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
    rst $38
    nop
    ld a, a
    add b
    rla
    add sp, $07
    ld hl, sp+$03
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$02ff], sp
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rst $18
    rst $38
    jr c, @+$01

    jp nz, Jump_000_04fd

    ei
    add l
    ld a, d
    rla
    add sp, $7b
    add h
    ld sp, hl
    ld b, $a0
    ld e, a
    ld [bc], a
    db $fd
    dec b
    ld a, [$ed12]
    sbc e
    ld h, h
    ccf
    ret nz

    db $fd
    ld [bc], a
    rst $10
    jr z, jr_0ae_4310

    ret nc

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$02fd], sp
    add $39
    rlca
    ld hl, sp+$1f
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
    xor [hl]
    nop
    rst $18
    nop
    xor e
    nop
    db $ed
    nop
    rst $28
    nop
    rst $38
    nop
    cp a
    nop

jr_0ae_4310:
    rst $38
    nop
    ld a, a
    add b
    ld e, a
    and b
    ld d, e
    xor h
    rlca
    ld hl, sp+$00
    rst $38
    sub l
    ld l, d
    ld b, $f9
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    and b
    ld e, a
    ld h, b
    sbc a
    ld hl, sp+$07
    ld [hl], b
    adc a
    ld a, b
    add a
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    add hl, bc
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld e, l
    rst $38
    ccf
    rst $38

jr_0ae_4368:
    cp a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld h, b
    rst $38
    db $10
    rst $28
    and b
    ld e, a
    ld d, l
    xor d
    rst $08
    jr nc, jr_0ae_4368

    db $10
    rst $38
    nop
    rst $30
    ld [$21de], sp
    rla
    add sp, -$69
    ld l, b
    ccf
    ret nz

    rst $30
    ld [$00ff], sp
    ld a, a
    add b
    ld [hl], a
    adc b
    di
    inc c
    jp z, $8335

    ld a, h
    add e
    ld a, h
    rrca
    ldh a, [$1f]
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    ld a, l
    nop
    rst $10
    nop
    rst $38
    nop
    sbc a
    nop
    db $fd
    nop
    ld sp, hl
    nop
    jp hl


    nop
    ld b, e
    nop
    jp z, $f200

jr_0ae_43d3:
    nop
    inc e
    nop
    rra
    nop
    rst $10
    nop
    add l
    nop
    rst $28
    nop
    or c
    nop
    rst $28
    db $10
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld a, b
    add a
    nop
    rst $38
    ret nz

    ccf
    and b
    ld e, a
    ld b, b
    cp a
    jr nz, jr_0ae_43d3

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

Jump_0ae_43ff:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$05ff], sp
    rst $38
    dec [hl]
    rst $38
    ld b, a
    rst $38
    dec a
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fc
    rst $38
    di
    db $fc
    adc a
    ldh a, [$63]
    sbc h
    inc bc
    db $fc
    inc bc
    db $fc
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    xor a
    ld d, b
    ld a, a
    add b
    xor a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jp hl


    ld d, $d1
    ld l, $00
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    or b
    ld a, a
    adc b
    ld a, a
    and $1f
    db $e3
    rra
    di
    dec c
    pop hl
    ld e, $f8
    rlca
    ld a, [$fa05]
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    nop
    ld a, a

jr_0ae_4473:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    db $db
    inc h
    ld l, c
    sub [hl]
    and e
    ld e, h
    jr nz, jr_0ae_4473

    nop
    rst $38
    ld b, b
    cp a
    ret nz

    ccf
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld bc, $1fff
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    add a
    ld hl, sp+$3f
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp $01
    db $fc
    inc bc
    ld sp, hl
    ld b, $e3
    inc e
    rst $00
    jr c, jr_0ae_44f6

    add sp, $00
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
    add b
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    ret c

    ccf

jr_0ae_44f6:
    call nc, $fa2f
    rlca
    ld sp, hl
    rlca
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    ld a, [c]
    dec c
    db $f4
    dec bc
    db $fc
    inc bc
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
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
    rra
    rst $38
    rst $38
    rst $38

jr_0ae_4552:
    db $fd
    rst $38
    db $fd
    rst $38
    jp hl


    rst $38
    db $dd
    rst $38
    cp $ff
    ldh a, [rIE]
    and d
    db $fd

jr_0ae_4560:
    rlca
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

jr_0ae_4571:
    nop
    rst $38
    nop
    push hl
    ld a, [de]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    ld [bc], a
    ei
    inc b
    rst $20
    jr jr_0ae_4560

    jr nc, jr_0ae_4552

    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0ae_459c:
    rst $38
    nop

jr_0ae_459e:
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $81fe
    cp $c3
    db $fc
    inc hl
    db $fc
    inc de
    db $fc
    rrca
    ldh a, [$8f]
    ld [hl], b
    adc a
    ld [hl], b
    swap h
    rst $08
    jr nc, jr_0ae_459c

    jr nc, jr_0ae_459e

    jr nc, jr_0ae_4571

    ld e, a
    add b
    ld a, a
    adc a
    ld a, a
    rlca
    ld hl, sp-$71
    ld [hl], b
    adc a
    ld [hl], b
    jp z, Jump_000_0035

    rst $38
    inc b
    ei
    adc e
    ld [hl], h
    adc a
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0a]
    push af
    ld a, [bc]
    push af
    dec c
    ld a, [c]
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec bc
    rst $38
    ld a, [bc]
    rst $38
    ld b, $ff
    dec bc
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
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38

jr_0ae_4626:
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld hl, sp-$01
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
    db $e3
    db $fc
    add e
    db $fc
    nop
    rst $38
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $18
    jr nz, jr_0ae_4626

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
    ld a, [$f900]
    nop
    ei
    nop
    rst $18
    nop
    ei
    nop
    cp $00
    ccf
    ret nz

    ccf
    ret nz

    dec bc
    db $f4
    ld [bc], a
    db $fd
    ld bc, $0ffe
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    nop
    rst $38
    ccf
    rst $38
    jp Jump_0ae_7ffc


    add b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    add d
    ld a, l
    sbc a
    ld b, b
    sbc a
    ld b, b
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    ret nz

    nop
    db $fd
    ld [bc], a
    jp hl


    ld d, $41
    cp [hl]
    inc bc
    db $fc
    ld [hl+], a
    db $dd
    add d
    ld a, l
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    xor b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld de, $17ff
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38

jr_0ae_46f8:
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
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, bc
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
    nop
    rst $38
    nop
    ld a, [$7f05]
    add b
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_0ae_46f8

    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    nop
    rla
    nop
    rst $30
    ld [$24db], sp
    rra
    ldh [$6d], a
    sub d
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
    db $fd
    ld [bc], a
    db $fc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [$0ff7], sp
    rst $38
    ei
    db $fc
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld [hl+], a
    db $dd
    ld sp, hl
    ld b, $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld b, b
    cp a
    and b
    ld e, a
    ldh a, [rIF]
    nop
    rst $38
    and b
    ld e, a
    ld d, b
    xor a
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
    nop
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
    rst $38
    inc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rrca
    ldh a, [$2d]
    jp nc, Jump_000_00ff

    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    push af
    nop
    cp $00
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
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$20df], sp
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    nop
    rst $38

jr_0ae_4822:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]

jr_0ae_482b:
    push af
    ld a, [bc]
    push af
    ld [bc], a
    db $fc
    db $f4
    ld a, [bc]
    ld hl, sp+$03

jr_0ae_4834:
    ld hl, sp+$05
    cp $01
    cp $00
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, jr_0ae_4822

    jr nz, jr_0ae_4834

    db $10
    rst $20
    jr jr_0ae_482b

    dec e
    ret z

    scf
    ld [$4cf7], sp
    or e
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ld l, b
    sub a
    ld bc, $ffff
    cp $ff
    nop
    rst $38
    nop
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
    add sp, $17
    ld a, b
    add a
    jr @-$17

    ld [$a8f7], sp
    ld d, a
    ret z

    scf
    ldh [rTAC], a
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
    call nc, $feff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    nop
    rst $38
    db $fc
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
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
    reti


    ld h, $ff
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fc
    ld bc, $04fc
    ld hl, sp+$08
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rNR41], a
    pop bc
    ld b, c
    add c
    ld bc, $8183
    inc bc
    nop
    nop
    nop
    nop
    ld c, c
    ld l, h
    ld l, l
    inc h
    or [hl]
    inc h
    or d
    sub [hl]
    jp c, $d892

    bit 5, l
    ret


    and l
    db $ed
    or a
    db $e4
    inc d
    ld a, [c]
    ld a, d
    ldh a, [rNR10]
    ld hl, sp+$3e
    pop af
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
    add b
    ld a, a
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld c, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    nop
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    db $fc
    inc bc
    db $fc
    ld b, $f8
    dec bc
    ldh a, [rTIMA]
    pop af
    add hl, bc
    db $e3
    daa
    jp $c713


    xor a
    ld bc, $00af
    ld e, b
    rrca
    jr c, jr_0ae_49d7

    or h
    dec de
    jr nz, jr_0ae_4a0b

    ld h, d
    dec a
    ld d, b
    ld l, a
    pop bc
    ld a, [hl]
    add b
    rst $38
    add b
    rst $38
    ld b, b

jr_0ae_49d7:
    cp a
    ld [bc], a
    db $fd
    nop
    rst $38
    dec a
    ld [bc], a
    nop
    nop
    ldh a, [rIE]
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    inc b
    ld a, a
    ld b, b
    ccf
    ld l, b
    ccf
    sub b
    ccf
    sub b
    cp a
    sbc b
    sbc a
    ld [$1a1f], sp
    rrca
    cp a
    ld a, a
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

jr_0ae_4a0b:
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
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$f9]
    ld b, $f7
    nop
    ld e, l
    nop
    ld [hl], a
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    db $fc
    inc bc
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    rrca
    rst $38
    and a
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
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    ld d, a
    xor b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$01
    ld a, [c]
    ld bc, $03f0
    and $01
    ret nz

    rlca
    ret z

    rlca
    add b
    rrca
    nop
    rra
    db $10
    rrca
    nop
    nop
    nop
    nop
    ld [hl], b
    nop
    ret nz

    ld a, a
    ret nz

    rst $38
    add b

jr_0ae_4a89:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $40fe
    cp a
    ld [bc], a
    ld bc, $f00f
    add b
    ld a, a
    nop
    rst $38
    ld b, h
    cp e
    nop
    rst $38
    inc bc
    db $fc
    add b
    ld a, a
    ld [$44f7], sp
    cp e
    inc b
    ei
    jr nz, jr_0ae_4a89

    ld hl, $20de
    rst $38
    jr c, @+$09

    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ldh [$1f], a
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
    ld bc, $2fff
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $28
    rst $38
    ld a, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    dec bc
    nop
    ld a, [hl]
    add b
    rst $38
    nop
    rst $38
    nop
    ld d, a
    nop
    ld c, l
    nop
    ldh a, [rP1]
    ld bc, $0d00
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
    jr nz, @+$01

    ld hl, $23ff
    rst $38
    dec h
    rst $38
    inc hl
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [hl], e
    adc h
    rst $38
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
    ret c

    daa
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec sp
    inc b
    nop
    nop
    nop
    nop
    ld e, [hl]
    and b
    nop

jr_0ae_4b47:
    rst $38
    nop
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
    ld b, $01
    rlca
    ld hl, sp+$02
    rst $38
    ld b, b
    cp a
    ld b, h
    cp e
    nop
    rst $38
    inc de
    xor $80
    ld a, a
    inc b
    ei
    jr nz, jr_0ae_4b47

    ld hl, $00de
    rst $38
    ld [$20f7], sp
    rst $18
    and $df
    or $cf
    or $cf
    and $df
    and $df
    db $76
    rst $28
    ld h, [hl]
    rst $38
    ld [c], a
    ld a, a
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld [hl-], a
    rst $38
    ld a, [hl]
    or e
    ld a, [$fe37]
    inc sp
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld [hl-], a
    rst $38
    ld e, $fb
    sbc $bb
    cp $f3
    cp $13
    ldh a, [$1f]
    rst $08
    jr nc, @-$02

    inc bc
    rra
    rst $38
    and b
    rst $38
    nop
    rst $38
    sub d
    rst $38
    dec a
    jp Jump_000_3bc4


    ld a, h
    inc bc
    db $fd
    inc bc
    ld sp, hl
    inc bc
    db $fd
    inc bc
    push af
    dec bc
    ld [$eb03], sp
    rla
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    dec bc
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
    ld a, a
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    cpl
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    ld d, b
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
    ld a, $01
    ld [bc], a
    nop
    add a
    nop
    inc bc
    db $fc
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    add d
    ld a, a
    rst $18
    nop
    inc hl
    db $fc
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    add hl, bc
    rst $30
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    jp nz, Jump_000_193d

    rst $20
    inc e
    db $e3
    inc e
    db $e3
    inc de
    rst $28
    inc de
    rst $28
    rla
    db $eb
    inc de
    rst $28
    rla
    db $eb
    inc de
    rst $28
    inc de
    rst $28
    inc de
    rst $28
    inc de
    rst $28
    rla
    rst $28
    rra
    rst $20
    ld e, $e1
    inc e
    db $e3
    rla
    rst $28
    rra
    rst $20
    rla
    rst $28
    rla
    rst $28
    ccf
    adc $ff
    ld c, $91
    ld l, [hl]
    dec de
    and $cf
    ccf
    rrca
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    call nc, Call_000_002b
    rst $38
    add b
    ld a, a
    and b
    ld e, a
    ret nz

    ccf
    db $fd
    ld [bc], a
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [$8f]
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$2f]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp-$79
    ld a, b
    db $fd
    nop
    inc hl
    ld hl, sp-$7c
    ld a, b
    add l
    ld hl, sp+$0c
    ld hl, sp-$7c
    ld a, b
    inc b

jr_0ae_4ce5:
    ld hl, sp+$04
    ld hl, sp+$14
    add sp, $14
    ld hl, sp+$04
    ld hl, sp-$78
    db $f4
    dec b
    ei
    dec b
    ld a, [$f9c6]
    ret z

    rst $30
    jp $c8fc


    rst $30
    adc c
    or $88
    rst $30
    sbc b
    rst $20
    sbc c
    and $91
    xor $91
    xor $90
    rst $28
    sub d
    db $ed
    inc sp
    call $cfb1
    daa
    reti


    dec de
    and $d8
    rst $20
    cp b
    rst $00
    cp b
    ld b, a
    ret c

    daa
    jr c, jr_0ae_4ce5

    ret c

    daa
    ret c

    rst $20
    ret c

    rst $20
    ret c

    rst $20
    ret nc

    xor a
    ret nc

    cp a
    ret nc

    cp a
    ldh a, [$bf]
    ldh a, [$bf]
    and b
    rst $38
    and b
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
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
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    and $19
    pop af
    ld c, $fe
    ld bc, $00ff
    cp $01
    rst $38
    nop
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    ld l, a
    nop
    ccf
    nop
    rrca
    nop
    dec bc
    nop
    rlca
    nop
    dec bc
    nop
    add hl, bc
    nop
    ld hl, sp+$1f
    db $fc
    dec de
    ret c

    ccf
    ld hl, sp+$1f
    ld a, b
    or a
    or b
    ld a, a
    and b
    ld a, a
    ldh a, [$6f]
    ldh [$7f], a
    ld b, b
    rst $38
    ldh [$df], a
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    cp a
    add b
    rst $38
    nop
    rst $38
    nop
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
    ld [$0cff], sp
    rst $38
    dec b
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
    rla
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rst $18
    rst $38
    rst $08
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
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $28
    rra
    rst $08
    ccf
    or a
    ld c, a
    rst $18
    daa
    di
    rrca
    dec sp
    rst $00
    ret


    scf
    rst $38
    ld bc, $29d6
    db $fc
    inc bc
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
    rst $30
    nop
    pop af
    ld b, $f9
    ld b, $ff
    nop
    add b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    pop bc
    rst $38
    ld d, a
    rst $38
    adc [hl]
    rst $38
    reti


    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld d, a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    ld b, e
    rst $38
    ld d, a
    rst $38
    scf
    rst $38
    or a
    rst $38
    ld a, a
    rst $38
    ld e, a
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
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    ld a, [$fdff]
    rst $38
    ld a, [$feff]
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld sp, hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ccf
    rst $38
    rst $18
    ccf
    rst $18
    ccf
    rst $28
    rra
    rst $28
    rra
    rst $30
    rrca
    rst $38
    rlca
    ei
    rlca
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
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
    rst $38
    nop
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
    ld h, $ff
    inc a
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nc

    rst $38
    sub b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ret c

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    add sp, -$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$fcff]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    pop hl
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
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    ld l, d
    rst $38
    adc h
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr c, @+$01

    jr c, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld h, c
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld h, e
    rst $38
    jp $c3ff


    rst $38
    add a
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    sub a
    rst $38
    sub a
    rst $38
    xor a
    rst $38
    rst $00
    rst $38
    push de
    rst $38
    push hl
    rst $38
    pop de
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, [$ffff]
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    ld bc, $03ff
    rst $38
    ld b, $ff
    inc a
    rst $38
    ld [hl-], a
    rst $38
    and $ff
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld [$10ff], sp
    rst $38
    ld bc, $23ff
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, b
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
    jr nz, @+$01

    ld h, h
    rst $38
    rst $28
    rst $38
    ld l, h
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add l
    rst $38
    jp z, $88ff

    rst $38
    inc c
    rst $38
    rrca
    rst $38
    rla
    rst $38
    ld [$02ff], sp
    rst $38
    add hl, bc
    rst $38
    jr nz, @+$01

    ld l, c
    rst $38
    inc b
    rst $38
    add hl, hl
    rst $38
    adc c
    rst $38
    or d
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    xor a
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    dec hl
    rst $38
    push de
    rst $38
    pop de
    rst $38
    ei
    rst $38
    cp $ff
    rst $30
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    jp hl


    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    xor $ff
    ld l, l
    rst $38
    ld d, b
    rst $38
    ld sp, $2bff
    rst $38
    ld c, l
    rst $38
    inc bc
    rst $38
    and c
    rst $38
    add [hl]
    rst $38
    ld h, a
    rst $38
    or e
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld a, [$fdff]
    rst $38
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0908], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1200
    inc de
    ld [$1408], sp
    dec d
    ld d, $17
    jr jr_0ae_5090

jr_0ae_5090:
    nop
    nop
    add hl, de
    ld a, [de]
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ae_509e

jr_0ae_509e:
    nop
    nop
    nop
    nop
    ld hl, $0022
    nop
    inc hl
    inc h
    dec h
    ld h, $08
    daa
    jr z, jr_0ae_50ae

jr_0ae_50ae:
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    ld [hl], $37
    jr c, jr_0ae_50fd

    ld a, [hl-]
    dec sp
    inc a
    dec a
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
    nop
    ld c, b
    ld c, c
    ld [$4b4a], sp
    ld c, h
    ld c, l
    nop
    nop
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld [$5756], sp
    ld e, b
    ld e, c
    nop
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_0ae_50fd:
    ld l, b
    ld l, c
    nop
    ld [$6b6a], sp
    nop
    ld l, h
    ld l, l
    ld l, [hl]
    ld [$6f08], sp
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    nop
    nop
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld [hl], h
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    nop
    nop
    ld [$8281], sp
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
    nop
    nop
    ld [$8f8e], sp
    sub b
    sub c
    sub d
    sub e
    ld [$9408], sp
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
    ld [$08ac], sp
    ld [$ad08], sp
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
    ld [$b908], sp
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
    ld [$c608], sp
    rst $00
    ld [$c808], sp
    ret


    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    jp z, $cccb

    ld [$0808], sp
    call $cfce
    ld [$d1d0], sp
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    jp nc, $0808

    db $d3
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $bebe

    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    db $db
    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    cp [hl]
    cp [hl]
    db $e4
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    nop
    nop
    jr nz, jr_0ae_5259

jr_0ae_5259:
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
    rlca
    nop
    dec b
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
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp a
    nop
    rst $28
    nop
    rst $30
    nop
    cp a
    nop
    ei
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
    rst $18
    nop
    cp a
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld a, [$f200]
    nop
    cp $00
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

jr_0ae_534d:
    add b
    ccf
    ret nz

    cpl
    ret nc

    rst $38
    nop
    nop
    rst $38
    dec sp
    call nz, $a05f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp h
    ld b, e
    or d
    ld c, l
    cp h
    ld b, e
    ld a, [$f405]
    dec bc
    or b
    ld c, a
    jr nz, jr_0ae_534d

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    dec de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
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
    ldh a, [rIF]
    pop af
    ld c, $df
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
    ccf
    nop
    ld e, l
    nop
    inc h
    nop
    cpl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    ld a, a
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
    and a
    nop
    rst $20
    nop
    rst $38
    nop
    ei
    nop
    ld a, c
    nop
    db $fd
    nop
    rst $38
    nop
    rst $18
    nop
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
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    dec c
    nop
    daa
    nop
    sub e
    nop
    add l
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    ld a, l
    add d
    db $fd
    ld [bc], a
    pop af
    ld c, $7a
    add l
    ld l, d
    sub l
    ld de, $00ee
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $1eff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    nop
    rst $38
    nop
    rst $18
    nop
    ld a, a
    nop
    rst $20
    nop
    sbc d
    nop
    ld b, h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    ld a, [hl+]
    nop
    ld b, a
    nop
    push hl
    nop
    jp hl


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    cpl
    ret nc

    ld e, a
    and b
    ld e, a
    and b
    ld c, $f1
    dec bc
    db $f4
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$04f7], sp
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
    ret nz

    rst $38
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
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld c, h
    nop
    cp h
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
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $28
    db $10
    or a
    ld c, b
    rst $38
    nop
    ld l, e
    sub h
    db $eb
    inc d
    dec [hl]
    jp z, $fc03

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
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $20ff
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    cp $bf
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    jp nc, $d000

    nop
    ret c

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ccf
    ret nz

    dec e
    ldh [$3e], a
    ret nz

    dec e
    ldh [rNR31], a
    ldh [rNR34], a
    ldh [$0a], a
    ldh a, [$0d]
    ldh a, [rNR51]
    ret c

    rra
    ldh [rNR33], a
    ldh [$3f], a
    ret nz

    dec a
    ret nz

    ccf
    ret nz

    sbc [hl]
    ld h, b
    ccf
    ret nz

    ld b, b
    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nc

    nop
    ret nz

    nop
    ret z

    nop
    ret nz

    nop
    jp z, $e900

    nop
    call nz, $df00
    nop
    rst $18
    nop
    rst $18
    nop
    db $db
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    or e
    ld c, h
    xor a
    ld d, b
    sbc a
    ld h, b
    rst $18
    jr nz, @+$01

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
    cp $01
    adc $31
    ld b, d
    cp l
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
    cp a
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
    dec b
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
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld sp, hl
    cp $a1
    cp $7f
    add b
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
    rrca
    nop
    rrca
    nop
    rlca
    nop
    ld [bc], a
    nop
    ld [bc], a
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
    cp a
    nop
    ld a, a
    nop
    xor a
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld e, [hl]
    nop
    cp a
    nop
    rst $10
    nop
    cp $00
    ld a, a
    nop
    xor e
    inc d
    ei
    inc b
    ei
    inc b
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
    dec b
    nop
    rlca
    nop
    rlca
    nop
    cpl
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
    nop
    rst $38
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
    ei
    inc b
    ei
    inc b
    ei

jr_0ae_56b1:
    inc b
    ld sp, hl
    ld b, $f0
    rrca
    add b
    ld a, a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    inc b
    ei
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
    ld a, a
    add b
    jr nz, jr_0ae_56b1

    ld b, b
    rst $38
    ret nz

    rst $38
    call z, $d4f3
    db $e3
    ret z

    rst $30
    ret z

    rst $30
    ret nz

    rst $38
    ret c

    rst $20
    call nz, $e0ff
    rst $38
    rst $00
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
    ld a, [de]
    rst $38
    ld a, e
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
    db $fc
    rst $38
    di
    db $fc
    rst $08
    ldh a, [$be]
    pop bc
    ei
    inc b
    ei
    inc b
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
    ld a, [$fd1d]
    ld c, $ff
    ld b, $ff
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $007f
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    dec e
    nop
    dec d
    nop
    inc c
    nop
    dec d
    nop
    db $fc
    inc bc
    rst $28
    db $10
    or $09
    rst $30
    ld [$05fa], sp
    ld [hl], d
    dec c
    ld a, b
    rlca
    or b
    rrca
    or b
    rrca
    db $fc
    inc bc
    ld a, b
    rlca
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld b, a
    nop
    sub c
    nop
    jp $fb00


    nop
    rst $38
    nop
    rst $38
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
    db $fc
    inc bc
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld b, c
    cp [hl]
    ld bc, $01fe
    cp $01
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    ld [de], a
    rst $38
    rst $20
    rst $38
    ld a, [$f9ff]
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
    ret nz

    rst $38
    nop
    rst $38
    inc b
    ei
    inc d
    db $eb
    inc e
    db $e3
    and $19
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    ld [bc], a
    ei
    inc b
    sub b
    ld a, a
    adc b
    ld a, a
    call nz, $c43f
    ccf
    ld h, d
    sbc a
    and c
    rst $18
    ld hl, sp-$39
    ldh [$7f], a
    ldh a, [$3f]
    ld hl, sp+$1f
    ld hl, sp+$1f
    db $fc
    rrca
    cp $07
    rst $38
    inc bc
    rst $38
    ld bc, $017e
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
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [$f805]
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    nop
    rst $38
    and b
    ld e, a
    add b
    ld a, a
    ret nz

    ccf
    and b
    ld e, a
    add b
    ld a, a
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
    nop
    rst $38
    ld [$22ff], sp
    rst $38
    rlca
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38

jr_0ae_5864:
    ld e, a
    rst $38
    xor $ff
    ld hl, sp-$01
    ldh [rIE], a
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
    ld b, $f9
    rra
    ldh [$7f], a
    add b
    scf
    ret z

    adc a
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    reti


    ld h, $f8
    rlca
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
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_0ae_5864

    ld b, b
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
    nop
    rst $38
    nop
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
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    add a
    rst $38
    jp Jump_0ae_43ff


    rst $38
    ld h, d
    rst $38
    ld [hl-], a
    rst $38
    ld a, [de]
    rst $38
    rrca
    rst $38
    add b
    ld a, a
    and e
    ld e, h
    db $e3
    inc e
    pop hl
    ld e, $e3
    inc e
    pop de
    ld l, $d3
    inc l
    jp $c03c


    ccf
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    and c
    ld e, [hl]
    add c
    ld a, [hl]
    add d
    ld a, l
    add b
    ld a, a
    nop
    rst $38
    ld b, e
    cp a
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld b, $ff
    rlca
    rst $38
    ld b, $ff
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
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38

jr_0ae_593e:
    rst $38

jr_0ae_593f:
    rst $38
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
    nop
    nop
    nop
    ld bc, $0300
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
    jr jr_0ae_593f

    cp $01
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    push hl
    ld a, [de]
    jr z, jr_0ae_593f

    add b
    ld a, a
    jp $f13c


    ld c, $d8
    daa
    db $fc
    inc bc
    ld sp, hl
    ld b, $fb
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_0ae_593e

    ld b, b
    cp a
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
    ld bc, $ffff
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add c
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
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    ldh [$1f], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR23], a
    di
    inc c
    ld l, l
    sub d
    ld a, [hl-]
    push bc
    cpl
    ret nc

    rla

jr_0ae_59d7:
    add sp, $0a
    push af
    inc bc
    db $fc
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rrca
    nop
    jr nz, jr_0ae_5a13

    ld b, b
    ccf
    jr nz, jr_0ae_59d7

    ld a, e
    add h
    rst $38
    nop
    nop
    nop
    nop

jr_0ae_59ff:
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    db $eb
    ld h, $d9
    call c, $fb23
    inc b
    rst $38
    nop
    rst $20
    jr jr_0ae_5a7d

jr_0ae_5a13:
    sub l
    ret nz

    ccf
    jr jr_0ae_59ff

    ld bc, $20fe
    rst $18
    nop
    rst $38
    ld [$8ff7], sp
    ld [hl], b
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
    rst $38
    nop
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
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
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
    nop
    ldh [$03], a
    call z, $c00f
    rrca
    ret nz

    nop
    ret nz

    inc bc
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
    rst $38
    ccf
    ret nz

    rst $38

jr_0ae_5a7d:
    nop
    rst $38

jr_0ae_5a7f:
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$07
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0897], sp
    rst $10
    ld [$f906], sp
    cp $01
    cp $01
    cp $01
    cp [hl]
    ld b, c
    xor d
    ld d, l
    jr nz, jr_0ae_5a7f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, b
    add a
    nop
    rst $38
    ld d, b
    rst $38
    ld b, h
    rst $38
    ret nz

    ccf
    rst $38

jr_0ae_5acb:
    nop
    inc bc
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
    and b
    ld e, a
    cp a
    ld b, b
    rst $38
    nop
    ld [$9715], a
    ld l, b
    jr jr_0ae_5acb

    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld e, c
    and [hl]
    inc c
    di
    dec e
    ld [c], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ld b, b
    cp a
    rst $38
    rst $38
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
    ld bc, $09f1
    pop af
    add hl, bc
    pop af
    add hl, bc
    ld bc, $fe03
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
    rst $38
    cp a
    add b
    rst $18
    add b
    rst $28
    add b
    add a
    rst $38
    add l
    db $fc
    add l
    db $fc
    add h
    db $fc
    add h
    db $fc
    add a
    db $fc
    add a
    db $fc
    add a
    db $fc
    cp e
    call nz, $87f8
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp l
    jp nz, $f689

    add b
    rst $38
    ret nc

    xor a
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
    ret nc

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ld a, a

jr_0ae_5b91:
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ld a, [bc]
    push af
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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
    add b
    ld a, a
    ld a, [$3805]
    rst $00
    jr nz, jr_0ae_5b91

    nop
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
    ld a, [hl]
    add c
    or c
    ld c, [hl]
    pop de
    ld l, $fd
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
    ldh [$fe], a
    ld bc, $03fc
    db $fc
    inc bc
    ldh [$1f], a
    rst $38
    rrca
    ldh a, [rIE]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rst $38
    call nz, $ff3b
    nop
    rst $38
    nop
    cp $ff
    ld a, [c]
    rrca
    ld a, [hl]
    inc bc
    cp [hl]
    inc bc
    ld a, d
    rlca
    ld a, d
    rlca
    db $f4
    rrca
    ld hl, sp+$0f
    inc c
    inc sp
    jr nc, @-$2f

    add sp, $17
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
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    dec hl
    db $db
    ld [$80f8], sp
    ld [hl], b
    ldh [rNR10], a
    ld d, b
    and b
    ldh a, [rP1]
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
    rst $30
    ld [$08f7], sp
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
    ld [de], a
    db $ed
    ld h, b
    sbc a
    inc [hl]
    res 6, [hl]
    ld c, c
    rst $30
    ld [$20df], sp
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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
    db $fd
    ld [bc], a
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    rlca
    db $fd
    rrca
    ld sp, hl
    dec c
    ei
    dec c
    ei
    rrca
    ei
    rrca
    ei
    rrca
    ld a, [$feff]
    rlca
    cp $07
    cp $06
    rst $38
    inc b
    rst $38
    dec b
    cp $fc
    rst $38
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
    add e
    ld a, h
    and b
    ld e, a
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    add e
    ld a, a
    inc bc
    rst $38
    ld b, e
    cp a
    di
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    sub e
    ld a, a
    inc de
    rst $38
    sub e
    ld a, a
    sub e
    ld a, a
    inc de
    rst $38
    inc de
    rst $38
    sub e
    ld a, a
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    rla
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    rla
    rst $38
    inc de
    rst $38
    rla
    rst $38
    inc de
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
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

jr_0ae_5d29:
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
    sbc h
    rst $38
    ld e, $ff
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca

jr_0ae_5d49:
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld a, b
    add a
    xor b
    ld d, a
    or b
    ld c, a
    ret nc

    cpl
    ldh [$1f], a
    ret nc

    cpl
    ld [hl], b
    adc a
    ldh [$1f], a
    jr nz, jr_0ae_5d49

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    xor b
    ld d, a
    inc h
    db $db
    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    sub b
    ld l, a
    add sp, $17
    db $fc
    inc bc
    ld [$b415], a
    ld c, e
    ld hl, sp+$07
    push hl
    ld a, [de]
    ld a, [$ce05]
    ld sp, $0bf4
    push af
    ld a, [bc]
    cp $01
    rst $18
    jr nz, jr_0ae_5d29

    rst $30
    adc b
    rst $30
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
    add b
    ld a, a
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
    add b
    ld a, a
    add b
    ld a, a
    inc b
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    inc de
    rst $38
    ld bc, $11ff
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add a
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, d
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    inc sp
    rst $38
    sbc c
    rst $38
    adc l
    rst $38
    add a
    rst $38
    push bc
    rst $38
    push bc
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
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
    ld b, a
    cp a
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
    ld bc, $01ff

jr_0ae_5e45:
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    inc b
    ei
    nop

jr_0ae_5e51:
    rst $38
    ld b, b

jr_0ae_5e53:
    cp a
    nop
    rst $38
    add b

jr_0ae_5e57:
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    ldh [$1f], a
    ld c, $f1
    ld l, $d1
    cpl
    ret nc

    ld l, h
    sub e
    dec l
    jp nc, $c738

    jr z, jr_0ae_5e45

    ld l, b
    sub a
    jr nz, jr_0ae_5e51

    jr nz, jr_0ae_5e53

    nop
    rst $38
    jr nz, jr_0ae_5e57

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
    inc b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc c
    rst $38
    ld [$10ff], sp
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $38
    add b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
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
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld d, b
    rst $38
    ret nc

    rst $38
    db $f4
    rst $38
    or $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    rra
    rst $38
    cp a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    jp $e1ff


    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
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
    ld h, [hl]
    sbc c
    jp z, $8c35

    ld [hl], e
    and b
    ld e, a
    add l
    ld a, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, $ff
    ld l, $ff
    inc a
    rst $38
    ld hl, sp-$01
    ld h, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    inc de
    rst $38
    rra
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
    add c
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld bc, $03ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ret nz

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
    dec b
    rst $38
    sbc h
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$48ff], sp
    rst $38
    jp z, Jump_000_02ff

    rst $38
    ret c

    rst $38
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
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    jr @+$01

    jr c, @+$01

    ld h, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc d
    rst $38
    ld bc, $00ff
    rst $38
    dec h
    rst $38
    sub b
    rst $38
    add a
    rst $38
    db $10
    rst $38
    ld c, b
    rst $38
    call nc, $e8ff
    rst $38
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
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$15ff], sp
    rst $38
    jr @+$01

    ld [$08ff], sp
    rst $38
    ld a, [bc]
    rst $38
    inc b
    rst $38
    add b
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    jr @+$01

    ld [bc], a
    rst $38
    ld d, d
    rst $38
    sbc d
    rst $38
    call z, $83ff
    rst $38
    add a
    rst $38
    sub e
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
    rst $38
    rst $38
    rst $38
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
    db $10
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr @+$01

    jr nc, @+$01

    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld d, e
    rst $38
    ld d, e
    rst $38
    ld [de], a
    rst $38
    ld b, e
    rst $38
    ld h, d
    rst $38
    ld b, d
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld c, d
    rst $38
    ld b, [hl]
    rst $38
    ld a, [de]
    rst $38
    ld [hl+], a
    rst $38
    dec sp
    rst $38
    rla
    rst $38
    rra
    rst $38
    rla
    rst $38
    ld d, a
    rst $38
    ei
    rst $38
    rst $10
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
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
    ld e, a
    rst $38
    ld e, a
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
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    ccf
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
    rst $38
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
    nop
    ld bc, $0000
    nop
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $06
    ld b, $06
    rlca
    ld [$0000], sp
    add hl, bc
    ld a, [bc]
    nop
    add hl, bc
    dec bc
    inc c
    dec c
    ld c, $06
    ld b, $06
    ld b, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0ae_6182

    ld b, $06
    ld b, $06
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ae_6196

    ld [hl+], a
    inc hl
    inc h
    ld b, $06
    ld b, $06
    ld b, $25
    ld h, $27
    jr z, jr_0ae_61ab

jr_0ae_6182:
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0ae_61bb

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0ae_61cb

    ld a, [hl-]
    dec sp
    ld b, $06

jr_0ae_6196:
    ld b, $3c
    dec a
    ld a, $3f
    ld b, b
    nop
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
    ld c, l
    ld c, [hl]

jr_0ae_61ab:
    ld a, [bc]
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld b, $06
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_0ae_61bb:
    ld e, e
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld b, $06
    ld b, $62
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]

jr_0ae_61cb:
    ld h, a
    nop
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
    ld b, $74
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld b, $06
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    ld b, $81
    add d
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    ld a, [de]
    adc e
    ld b, $8c
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    add hl, bc
    sub e
    ld b, $94
    ld b, $95
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
    nop
    nop
    and b
    ld b, $a1
    ld b, $a2
    and e
    and h
    ld b, $a5
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    nop
    xor h
    ld b, $06
    ld b, $06
    xor l
    ld a, [de]
    ld b, $ae
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    ld b, $06
    ld b, $06
    cp b
    cp c
    ld a, [de]
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    ld a, [de]
    ld b, $bf
    ld b, $06
    ld b, $06
    ld b, $96
    ret nz

    pop bc
    jp nz, $36c3

    call nz, $c6c5
    ld a, [de]
    rst $00
    ret z

    ld b, $06
    ld b, $c9
    jp z, $cba1

    call z, $cecd
    ld [hl], $cf
    ret nc

    pop de
    jp nc, Jump_000_06d3

    ld b, $d4
    ld b, $06
    ld b, $d5
    sub $06
    rst $10
    ret c

    ld [hl], $d9
    jp c, $06db

    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $dc
    ld b, $dd
    ret c

    ld [hl], $de
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ae_6297

jr_0ae_6297:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ae_6336

jr_0ae_6336:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ae_6340

jr_0ae_6340:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ae_637a

jr_0ae_637a:
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
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_0ae_63be

jr_0ae_63be:
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

jr_0ae_63d3:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec bc
    db $f4
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38

jr_0ae_63e5:
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
    rst $20
    jr jr_0ae_63f3

jr_0ae_63f3:
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld d, b
    xor a
    ld b, b
    cp a
    jr nc, jr_0ae_63d3

    jr nz, jr_0ae_63e5

    xor b
    ld d, a
    sub b
    ld l, a
    nop
    rst $38
    nop
    rst $38
    ld a, [de]
    push hl
    inc c
    di
    ld b, h
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1fff
    rst $38
    ld sp, hl
    cp $a0
    rst $38
    rrca
    rst $38
    ld a, b
    rst $38
    sbc b
    rst $38
    ld [$0cff], sp
    rst $38
    inc c
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
    cp $01
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
    db $eb
    inc d
    ld a, [$ed05]
    ld [de], a
    cp $01
    ld a, e
    add h
    db $db
    inc h
    sbc $21
    db $f4
    dec bc
    or l
    ld c, d
    sub d
    ld l, l
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
    ld c, b
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    di
    rst $38
    or e
    rst $08
    rra
    rst $38
    db $e3
    rst $38
    ld h, e
    rst $38
    ld h, c
    rst $38
    ld hl, $35ff
    rst $38
    ccf
    rst $38
    ei
    db $fc
    ld sp, hl
    rlca

jr_0ae_64d2:
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01

jr_0ae_64ec:
    cp [hl]
    ld b, c
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_0ae_64d2

    jr nz, jr_0ae_64ec

    ld [$1ce3], sp
    db $eb
    inc d
    rst $20
    jr jr_0ae_64ec

    db $10
    ld h, e
    sbc h
    push hl
    ld a, [de]
    or l
    ld c, d
    ldh a, [rIF]
    pop af
    ld c, $f0
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07

jr_0ae_6510:
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
    rst $18
    jr nz, jr_0ae_6510

    inc h
    rst $38
    nop
    db $fd
    ld [bc], a
    ld l, a
    sub b
    add hl, hl
    sub $b9

jr_0ae_653f:
    ld b, [hl]
    or [hl]
    ld c, c
    add b
    ld a, a
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
    nop
    rst $38
    jr nz, jr_0ae_653f

    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    ld a, a
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
    db $fc
    rst $38
    inc h
    ei
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
    rst $38
    add b
    cp $80
    add b
    rst $38
    rst $38
    add b
    push af
    adc d
    ld b, b
    rst $38
    ld e, a
    rst $38
    ld a, a
    ret nc

    ld a, a
    ret nc

    ld c, a
    ld hl, sp+$4b
    db $fc
    dec hl
    db $fc
    xor e
    ld a, h
    dec hl
    db $fc
    dec hl
    db $fc
    and l
    ld a, [hl]
    and l
    ld a, [hl]
    sub l
    ld a, [hl]
    sub l
    ld a, [hl]
    sub l
    ld a, [hl]
    sub d
    ld a, a
    sub d
    ld a, a
    sub d
    ld a, a
    adc d
    ld a, a
    jp z, $ca3f

    ccf
    ld c, c
    cp a
    ld c, c
    cp a
    ld c, c
    cp a
    add hl, hl
    rst $18
    dec h
    rst $18
    dec b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $81ff
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    ld b, b
    cp a
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
    ld [bc], a
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    ld bc, $1fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a

jr_0ae_6638:
    nop
    rst $38

jr_0ae_663a:
    nop
    rst $38

jr_0ae_663c:
    ld [bc], a
    db $fd
    nop
    rst $38
    rst $38
    nop
    ei
    nop

jr_0ae_6644:
    rst $38
    nop

jr_0ae_6646:
    rst $28
    nop
    rst $28
    nop
    ld sp, hl
    nop
    rst $30
    nop
    ld [bc], a
    db $fd
    cp $00
    cp a
    ld b, b

jr_0ae_6654:
    rlca
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    rst $18
    jr nz, jr_0ae_663c

    jr nz, jr_0ae_6644

    jr nz, jr_0ae_6646

    jr nz, jr_0ae_6638

    jr nc, jr_0ae_663a

    jr nc, jr_0ae_6654

    jr @-$0b

    inc c
    ret c

    daa
    ld d, c
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    rst $38
    jr nz, @+$01

    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    and b
    rst $38
    sub b
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld h, b
    sbc a
    add b
    ccf
    jr nz, @+$01

    ldh [$fb], a
    ldh a, [$e3]
    db $e4
    ei
    ld h, b
    rst $38
    ld [hl], c
    cp $71
    ld a, [c]
    ld a, l
    ld a, [c]
    ld [hl], c
    cp $31
    cp $31
    cp $39
    cp $31
    cp $01
    cp $01
    cp $0d
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    inc c
    di
    dec c
    ld a, [c]
    inc c
    di
    inc c
    di
    inc c
    di
    ld c, $f1
    ld c, $f1
    ld b, $f9
    ld c, $f1
    inc c
    pop af
    ld b, $f9
    ld [c], a
    db $fd
    inc de
    rst $28
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0ae_6722:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add a
    ld hl, sp+$05
    ld a, [$e817]
    rla
    add sp, $37
    ret z

    rrca
    ldh a, [$7e]
    add b
    jr nz, jr_0ae_6722

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
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38
    add l
    ld a, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    pop de
    ld l, $03
    cp $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
    add b
    rst $38
    rst $38
    nop
    nop
    rlca
    nop
    db $10
    rrca
    nop
    rrca
    nop
    rrca
    ld [$0807], sp
    rlca
    nop
    rlca
    inc b
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0003
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add sp, $17
    db $fc
    inc bc
    rst $38
    nop
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
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
    rst $38
    add b
    rst $38
    add b
    db $fd
    add d
    add a
    ld hl, sp-$41
    ret nz

    cp a
    ret nz

    ld a, e
    add b
    rst $38
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $f4
    nop
    add sp, $00
    db $e4
    nop

jr_0ae_67fc:
    db $fc
    nop
    db $e4
    nop
    nop
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

jr_0ae_680d:
    rst $38
    dec bc
    rst $38

jr_0ae_6810:
    rlca
    nop
    ldh a, [rIF]
    rst $38
    rst $38

jr_0ae_6816:
    cp $11
    rst $38
    db $10
    rst $18
    jr nc, jr_0ae_67fc

    jr nc, jr_0ae_6816

    jr jr_0ae_6810

    jr jr_0ae_680d

    dec e
    db $eb
    inc e
    ld [$e81d], a
    rra
    ld [$c81d], a
    ccf
    add sp, $1f
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
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
    ld bc, $03ff
    rst $38
    ld bc, $01ff
    rst $38
    dec b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    ld [bc], a
    rst $38
    inc bc
    inc bc
    inc bc
    inc bc
    ld hl, $fe21
    cp $00
    nop
    ld a, [hl-]
    dec b
    nop
    rst $38
    nop
    rst $38
    ld [$06ff], sp
    rst $38
    ld c, $ff
    nop
    rst $38
    ld de, $6fef
    sub b
    scf
    ret z

    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    nop
    db $fc
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
    rst $38
    nop
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
    ld a, b
    add a
    rst $38
    nop
    rst $38
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
    ld hl, sp+$00
    db $eb
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
    ld c, b
    nop
    ld b, d
    nop
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
    nop
    nop
    ld de, $e11f
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
    rst $38
    rst $38
    rst $38
    nop
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ld hl, sp+$07
    ldh a, [rIF]
    call nc, $bf2b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    jr nz, @+$01

    jr nz, @+$01

    inc hl
    rst $38
    inc hl
    rst $38
    daa
    rst $38
    ccf
    rst $38
    ccf
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
    nop
    rst $38
    add b
    rst $38
    add d
    rst $38
    add e
    rst $38
    sbc a
    sbc a
    pop bc
    pop bc
    cp $fe
    ld bc, $d000
    cpl
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add [hl]
    rst $38
    add hl, bc
    rst $38
    ld b, a
    ld sp, hl
    inc e
    di
    add hl, de
    cp $90
    ld a, a

jr_0ae_694c:
    rst $18
    jr nz, jr_0ae_694c

    ld [bc], a
    cp e
    ld b, h
    ld a, a
    add b
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
    inc bc
    db $fc
    inc b
    ei
    dec c
    ld a, [c]
    ld a, h
    add e
    dec a
    jp nz, $c43b

    xor a
    ld d, b
    or c
    ld c, [hl]
    pop af
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
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    cp h
    nop
    ld d, e
    nop
    sbc a
    nop
    rst $38
    nop
    db $eb
    nop
    and a
    nop
    dec a
    nop
    db $e4
    nop
    adc c
    nop
    ld c, b
    nop
    ld [$0000], sp
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
    rst $38
    nop
    db $dd
    nop
    rst $30
    nop
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
    add b
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
    jr nc, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    ld a, [bc]
    rst $38
    dec a
    rst $38
    cp e
    rst $38
    ei
    rst $38
    rst $00
    rst $00
    cp $fe
    nop
    nop
    call nz, RST_38
    db $fc
    ld [bc], a
    db $fc
    nop
    cp $10
    rst $28
    adc h
    di
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    push af
    ld a, [bc]
    dec a
    jp nz, Jump_000_00f8

    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ld a, a
    nop
    rst $38
    or h
    ld c, e
    or d
    ld c, l
    ei
    inc b
    ld sp, hl
    ld b, $bd
    ld b, d
    db $fd
    ld [bc], a
    sbc $21
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
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    xor a
    nop
    ld d, a
    nop
    cp a
    nop
    ld a, [hl]
    nop
    cp b
    nop
    ret nc

    nop
    ldh a, [rP1]
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    cp l
    nop
    rst $30
    nop
    sbc $00
    ld a, e
    nop
    ld a, l
    nop
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
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub e
    rst $38
    sub c
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc b
    rst $38
    sub b
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $38
    sbc d
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    ld e, h
    rst $38
    ld e, a
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    ld e, b
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    ld e, [hl]
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, l
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
    rrca
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
    add b
    ld b, b
    add b
    and b
    ld b, b
    ldh [rP1], a
    or b
    ld b, b
    ld hl, sp+$00
    ld a, b
    add b
    ldh [rP1], a
    inc l
    db $d3
    ld l, $d1
    ld e, a
    and b
    dec sp
    call nz, $e11e
    adc a
    ld [hl], b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $18
    nop
    ld c, l
    nop
    add hl, bc
    nop
    inc h
    nop
    ld [bc], a
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
    rst $38
    nop
    cp a
    nop
    rst $18
    nop
    ld l, a
    nop
    ld a, a
    rst $38
    pop bc
    cp $1f
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
    ld b, b
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
    add $ff
    ld [hl], $ff
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    ld hl, $80ff
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ld d, b
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    reti


    rst $38
    ld l, d
    rst $38
    sbc d
    rst $38
    and a
    rst $38
    add $ff
    or [hl]
    rst $38
    xor h
    rst $38
    ld [$eeff], a
    rst $38
    rst $30
    rst $38
    cp e
    rst $38
    db $dd
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    cp $ff
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
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    inc c
    di
    db $ed
    ld [de], a
    sbc $21
    ei
    inc b
    db $fd
    ld [bc], a
    rst $38
    nop
    ei
    inc b
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
    cp $01
    db $fc
    inc bc
    ld a, [$fe05]
    ld bc, $01fe
    rst $38
    nop
    rst $28
    db $10
    cp $01
    rst $38
    nop

jr_0ae_6bfa:
    rst $38
    nop
    db $fc
    inc bc
    pop hl
    ld e, $89
    db $76
    ld [hl], a
    adc b
    cp l
    ld b, d
    rst $38
    nop
    rst $18
    jr nz, jr_0ae_6bfa

    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    ld a, a
    nop
    ld a, [$1501]
    nop
    adc h
    nop
    ld hl, $2000
    nop
    stop
    nop
    nop
    jr nz, jr_0ae_6c2a

jr_0ae_6c2a:
    stop
    nop
    nop
    nop
    nop
    ldh [rIE], a
    ldh [$1f], a
    db $fc
    rst $38
    inc e
    db $e3
    nop
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
    ld c, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    inc b
    rst $38
    dec b
    rst $38
    nop
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

    inc d
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$20ff], sp
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
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
    inc bc
    rst $38
    ld bc, $10ff
    rst $28
    inc a
    jp $a35c


    ld b, h
    cp e
    sbc b
    ld h, a
    cp h
    ld b, e
    rst $30
    ld [$20df], sp
    rst $38
    nop
    rst $20
    jr jr_0ae_6cfb

    push bc
    push de
    ld a, [hl+]
    ret nz

    ccf
    or b
    ld c, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    and b
    ld e, a
    sub h
    ld l, e
    inc h
    db $db
    xor b
    ld d, a
    ldh [$1f], a
    inc bc
    db $fc
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
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
    ccf
    ld b, b
    ld a, a
    nop
    rra
    jr nz, jr_0ae_6d38

    nop
    rrca

jr_0ae_6cfb:
    db $10
    rla
    ld [$000f], sp
    nop
    rst $38
    nop
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
    jr nz, @+$01

    ld c, b
    rst $38
    add b
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
    nop
    rst $38
    nop
    rst $38

jr_0ae_6d38:
    ld [de], a
    rst $38
    inc d
    rst $38
    inc b
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [de], a

jr_0ae_6d5f:
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [hl-]
    rst $38
    add hl, de
    rst $38
    sbc [hl]
    rst $38
    push bc
    rst $38
    rst $20
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38

jr_0ae_6d86:
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    ret nc

    cpl
    xor b
    ld d, a
    sub b
    ld l, a
    ld a, b
    add a
    jr c, jr_0ae_6d5f

    inc c
    di
    ld a, [bc]
    push af
    nop
    rst $38
    nop
    rst $38
    nop

jr_0ae_6da1:
    rst $38
    nop

jr_0ae_6da3:
    rst $38
    nop
    rst $38
    ld bc, $20fe
    rst $18
    xor $11
    cp d
    ld b, l
    call z, $a533
    ld e, d
    xor c
    ld d, [hl]
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_0ae_6da1

    inc a
    rst $18
    jr nc, jr_0ae_6d86

    jr nz, @-$1f

    inc a
    ret nz

    jr z, jr_0ae_6da3

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, h
    rst $38
    ld [bc], a
    rst $38
    ld bc, $80ff
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
    add b
    rst $38
    and b
    rst $38
    ld b, b
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
    ld b, d
    rst $38
    ld h, e
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    add h
    rst $38
    ret nz

    rst $38
    and [hl]
    rst $38
    add h
    rst $38
    and b
    rst $38
    ld bc, $03ff
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    db $e3
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
    ld a, a
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
    inc bc
    rst $38
    ld bc, $02ff
    db $fd
    inc c
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    call nc, $342b
    res 1, d
    ld [hl], l
    rst $28
    db $10
    ei
    inc b
    rst $28
    db $10
    db $fd
    ld [bc], a
    rst $28
    db $10
    db $fd
    ld [bc], a
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
    sbc a
    rst $38
    inc a
    ret nz

    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
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
    ld [$08ff], sp
    rst $38
    ld bc, $03ff
    rst $38
    add e
    rst $38
    add hl, hl
    rst $38
    dec hl
    rst $38
    ld e, $ff
    dec d
    rst $38
    ld bc, $08ff
    rst $38
    add b
    rst $38
    db $10
    rst $38
    ld d, d
    rst $38
    add hl, de
    rst $38
    sbc e
    rst $38
    ld d, l
    rst $38
    inc de
    rst $38
    rla
    rst $38
    adc e
    rst $38
    db $e3
    rst $38
    pop hl
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
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    jr nz, @-$1f

    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ret nc

    cpl
    ld a, b
    add a
    db $e4
    dec de
    db $f4
    dec bc
    cp h
    ld b, e
    db $e4
    dec de
    cp b

jr_0ae_6f13:
    ld b, a
    db $e4
    dec de
    cp $01
    db $f4
    dec bc
    cp $01
    rst $38
    nop
    cp $01
    db $fc
    rst $38
    nop
    nop
    ldh a, [rIF]
    ld a, a
    add b
    ld d, [hl]
    nop
    ld hl, sp+$07
    ld bc, $00fe
    rst $38
    nop
    rst $38
    jr nz, jr_0ae_6f13

    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
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
    add b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld b, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    call c, $deff
    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    adc a
    rst $38
    rst $00
    rst $38
    db $e3
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
    rlca
    rst $38
    inc bc
    rst $38
    rra
    ldh [rSB], a
    nop
    nop
    rst $38
    rst $38
    nop
    jp c, $a000

    ld e, a
    pop af
    ld c, $69
    sub [hl]
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
    ld b, b
    rst $38
    db $10
    rst $38
    inc b
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
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld hl, $88ff
    rst $38
    jp nc, $c2ff

    rst $38
    and $ff
    push af
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
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    adc a
    rst $38
    db $e3
    rst $38
    di
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
    rst $38

jr_0ae_701f:
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
    inc bc
    rst $38
    nop
    nop
    ld a, a
    nop
    nop
    rst $38
    ld l, d
    nop
    cp a
    nop
    inc [hl]
    rr h
    db $e3
    jr nz, jr_0ae_701f

    ld [$00f7], sp
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [bc], a
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
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    ld c, h
    rst $38
    ld d, d
    rst $38
    ld c, b
    rst $38
    adc b
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
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add sp, -$01
    add sp, -$01
    ld a, [$f8ff]
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
    ccf
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    db $e3
    rst $38
    pop af
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
    cp $ff
    ei
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
    rlca
    rst $38
    ld bc, $f20e
    dec c
    ld [hl-], a
    call Call_000_0d52
    ld [c], a
    dec e
    ld b, b
    cp a
    or h
    ld c, e
    ld c, b
    or a
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
    add b
    rst $38
    ld h, b
    rst $38
    ld [$06ff], sp
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
    ld b, b
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $08
    rst $38
    rst $20
    rst $38
    di
    rst $38
    db $fd
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
    jr nc, @-$2f

    ld d, h
    xor e
    ld e, b
    and a
    ld b, b
    cp a
    ld d, b
    xor a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    inc d
    rst $38
    ld b, $ff
    ld bc, $00ff
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
    inc c
    inc c
    inc c
    dec c
    rst $38
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    add hl, bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    add hl, bc
    inc d
    add hl, bc
    add hl, bc
    dec d
    add hl, bc
    add hl, bc
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0ae_71f5

    add hl, bc
    ld hl, $0909
    ld [hl+], a
    inc hl
    inc h
    dec h
    dec bc

jr_0ae_71f5:
    dec bc
    dec bc
    dec bc
    ld h, $09
    daa
    add hl, bc
    jr z, jr_0ae_7227

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0ae_7237

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0ae_7247

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    dec bc
    ld b, c
    ld b, d
    ld b, e
    add hl, bc
    ld b, h
    add hl, bc
    ld b, l
    add hl, bc
    add hl, bc
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_0ae_7227:
    ld c, [hl]
    add hl, bc
    ld c, a
    ld d, b
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    add hl, bc

jr_0ae_7237:
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, c
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, d
    ld e, e
    ld e, h
    add hl, bc
    add hl, bc
    ld e, l
    ld e, [hl]
    ld e, a
    add hl, bc

jr_0ae_7247:
    add hl, bc
    ld h, b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, c
    ld h, d
    ld h, e
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, h
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, l
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
    ld l, h
    ld a, e
    add hl, bc
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
    ld l, h
    adc d
    adc e
    adc h
    adc l
    add hl, bc
    add hl, bc
    add hl, bc
    adc [hl]
    adc a
    ld a, [bc]
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    add hl, bc
    sub a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
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


    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    jp z, Jump_000_0997

    add hl, bc
    rrc c
    add hl, bc
    ld h, b
    call z, $cecd
    rst $08
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ret nc

    pop de
    add hl, bc
    jp nc, Jump_000_09d3

    add hl, bc
    add hl, bc
    call nc, $d6d5
    rst $10
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ret c

    reti


    jp c, $09db

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    call c, Call_000_00dd
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0ae_7417

jr_0ae_7417:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [$f0]
    rrca
    rst $38
    nop
    rst $38
    nop
    adc a
    ldh a, [$f8]
    rst $38
    rst $38
    rst $38
    adc a
    ld a, a
    ld a, h
    add e
    rst $20
    ld hl, sp-$72
    ld a, a
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
    ccf
    ret nz

    ld sp, hl
    cp $f1
    rrca
    dec c
    nop
    inc b
    nop
    nop
    nop
    jp nz, $f000

    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    ldh [$03], a
    db $fc
    nop

jr_0ae_748d:
    rst $38
    nop
    rst $38
    rlca
    nop
    rra
    nop
    rlca
    nop
    adc a
    nop
    ld a, [hl]
    add b
    and b
    ld b, b
    ret nc

    jr nz, jr_0ae_748d

    db $10
    ld hl, sp+$07
    rst $38
    nop
    rst $38
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
    nop
    rst $28
    db $10
    rst $38
    nop
    ei
    inc b
    rst $28
    db $10
    ld a, a
    add b
    ld l, a
    sub b
    ld a, l
    add d
    ld l, a
    sub b
    db $db
    inc h
    cpl
    ret nc

    ld h, l
    sbc d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [$f8]
    rlca
    rst $38
    nop
    rst $38
    nop
    sbc a
    ldh [$fc], a
    rst $38
    rst $38
    rst $38
    rst $20
    rra
    ccf
    ret nz

    ld [hl], e
    db $fc
    rst $20
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
    rst $08
    ldh a, [$ce]
    ccf
    rst $18
    nop
    dec e
    nop
    ld h, a
    nop
    ld e, [hl]
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    rlca
    nop
    ldh a, [rP1]
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld b, e
    cp h
    rrca
    ldh a, [$fa]
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    nop
    rst $38
    nop
    inc e
    ldh [$fe], a
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0ae_755e:
    rst $38
    nop
    rst $38
    nop

jr_0ae_7562:
    rst $38
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
    jr nz, jr_0ae_755e

    db $10
    rst $18
    jr nz, jr_0ae_7562

    db $10
    or a
    ld c, b
    jp $a73c


    ld e, b
    ld bc, $02fe
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rlca
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

jr_0ae_75b4:
    rst $18
    jr nz, jr_0ae_75b4

    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $08
    ldh a, [$fc]
    rst $38
    ccf
    rst $38
    ld sp, hl
    rlca
    rra
    ldh [$39], a
    cp $f9
    rlca
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
    ret nz

    rst $38
    cp $ff
    ld [de], a
    rst $28
    ld [bc], a
    xor e
    ld [bc], a
    and a
    ld l, $d3
    xor d
    ld d, a
    ld d, [hl]
    xor e
    ld a, [hl+]
    rst $10
    sub $2b
    ld c, $03
    jp nz, Jump_0ae_7e03

    add e
    cp $03
    sub $03
    cp $03
    ld b, $03
    or $03
    cp [hl]
    inc bc
    adc [hl]
    inc bc
    xor $03
    rlca
    nop
    ld a, e
    add h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    cp h
    ld b, e
    db $ec
    inc de
    call c, Call_000_1023
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
    ld b, b
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
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    ei
    rlca
    ei
    nop
    or $00
    db $f4
    nop
    pop af
    nop
    db $f4
    nop
    xor $00
    db $f4
    nop
    cp $00
    add sp, $00
    call c, Call_000_1f20
    nop
    add b
    nop
    ldh [rP1], a
    db $ec
    ldh a, [$fe]
    rst $38
    rst $18
    ccf
    call z, $cc03
    ldh a, [$cc]
    ccf
    and $01
    ld hl, sp+$00
    ld a, [$f800]
    nop
    cp $00
    or $00
    ei
    nop
    rst $28

jr_0ae_769b:
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $18
    jr nz, jr_0ae_769b

    add hl, bc
    nop
    rst $38
    nop
    rst $38
    jp nz, $b83d

    ld b, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $81ff
    rst $38
    and c
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec bc
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
    inc bc
    inc bc
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
    add b
    nop
    pop hl
    nop
    ld a, b
    nop
    rrca
    nop
    nop
    nop
    ld b, b
    add b
    and $f8
    rst $38
    rst $38
    cpl
    rra
    ret nz

    rlca
    ldh a, [$e6]
    jr nz, jr_0ae_7746

    ld [bc], a
    inc d
    ld [hl+], a
    inc d
    and e
    inc d
    cp [hl]
    inc b
    ld [hl], a
    inc b
    ld a, a
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b

jr_0ae_7746:
    sbc $25
    sbc $25
    sbc $25
    rst $18
    inc h
    jp c, $de25

    dec h
    sbc $25
    jp nc, $da2d

    dec h
    jp nc, $d22d

    dec l
    jp nc, $d22d

    dec l
    jp nc, $d22d

    dec l
    jp c, $da2d

    dec l
    sbc d
    ld l, l
    sbc d
    ld l, l
    sbc [hl]
    ld l, c
    cp [hl]

jr_0ae_776f:
    ld c, c
    cp [hl]
    ld c, c
    cp [hl]
    ld c, c
    cp h
    ld c, e
    cp [hl]
    ld c, c
    xor h
    ld e, e
    xor h
    ld e, e
    xor h
    ld e, e
    xor h
    ld e, e
    db $ec
    ld e, e
    db $ec
    ld e, e
    db $ec
    ld e, e
    inc h
    db $db
    inc h
    db $db
    add b
    ld a, a
    jr @+$01

    jr nz, jr_0ae_776f

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
    ld de, $97ff
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    or h
    rst $38
    or h
    rst $38
    or h
    rst $38
    or h
    rst $38
    or h
    rst $38
    or h
    rst $38
    or h
    rst $38
    or h
    rst $38
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    or h
    rst $38
    and h
    rst $38
    ld [hl], h
    rst $38
    xor l
    rst $38
    inc [hl]
    rst $38
    inc l
    rst $38
    inc [hl]
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    inc h
    rst $38
    ld h, b
    rst $38
    ld l, b
    rst $38
    inc h
    rst $38
    jr z, @+$01

    ld c, b
    rst $38
    ld h, d
    rst $38
    ld c, b
    rst $38
    jr z, @+$01

    ld l, b
    rst $38
    ld l, b
    rst $38
    ld l, b
    rst $38
    add sp, -$01
    db $ec
    rst $38
    xor $ff
    xor $ff
    xor $ff
    rst $08
    rst $38
    ld bc, $f0c0
    ld hl, sp-$02
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
    ld a, a
    nop
    ld e, a
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    ld e, a
    nop
    rst $38
    nop
    ld l, a
    db $10
    inc c
    inc bc
    rlca
    nop
    ld a, l
    add b
    di
    db $fc
    ld a, a
    rst $38
    ld [hl], a
    rrca
    ld [hl], a
    add b
    dec sp
    db $fc
    add hl, sp
    add a
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
    rst $30
    ld [$45ba], sp
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp h
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    cp h
    ld b, e
    adc [hl]
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$0aff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0ae_78ae:
    inc hl
    rst $38
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ret nz

    ldh a, [$fc]
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rra
    rst $38

jr_0ae_78c3:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_0ae_78d3:
    add b
    rst $00
    jr c, jr_0ae_78d3

    inc bc
    rst $38
    nop
    rra
    ldh [$f8], a
    rst $38
    ld a, a
    rst $38
    di
    rrca
    rst $08
    ldh a, [$9c]
    ld a, a

jr_0ae_78e6:
    ld hl, sp+$07

jr_0ae_78e8:
    rst $38
    nop

jr_0ae_78ea:
    rst $38
    nop

jr_0ae_78ec:
    rst $38
    nop

jr_0ae_78ee:
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_0ae_78c3

    ccf
    call c, $de23
    ld hl, $23dc
    call c, $da23
    dec h
    sbc $21
    rst $18
    jr nz, @-$1f

    jr nz, jr_0ae_78e6

jr_0ae_7907:
    jr nz, jr_0ae_78e8

    jr nz, jr_0ae_78ea

    jr nz, jr_0ae_78ec

    jr nz, jr_0ae_78ee

    jr nz, jr_0ae_78ae

    ld h, d
    rst $18
    jr nz, @-$62

    ld h, e
    sbc b
    ld h, a
    add b
    ld a, a
    ldh [$1f], a
    ret z

    scf
    ret z

    scf
    sub b
    ld l, a
    ret nz

    ccf
    add b
    ld a, a
    jr nz, jr_0ae_7907

    nop
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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    cp $ff
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
    inc b
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    inc de
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
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
    db $fc
    inc bc
    db $f4
    dec bc
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, [$fe05]
    ld bc, $01fe
    ld a, [de]
    push hl
    add b
    ld a, a
    ldh [$1f], a
    ld a, b
    add a
    ret nz

    rst $38
    cp $ff
    ccf
    rst $38
    inc de
    rst $28
    ldh [rIE], a
    adc a
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ret nc

    cpl
    add sp, $17
    ld h, b
    sbc a
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
    add b
    ld a, a
    ld bc, $82fe
    ld a, l
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $08ff
    rst $38
    nop
    rst $38
    jr @+$01

    nop
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

jr_0ae_7a0d:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rra
    rst $38
    ld bc, $78ff
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
    ldh [rIE], a
    jr @+$01

    jr nz, jr_0ae_7a0d

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
    nop
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
    rst $38
    nop
    rst $38
    inc b
    rst $38
    add hl, bc
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    jr z, @+$01

    dec l
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fd
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    ld [$01ff], sp
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rra
    rst $38
    pop hl
    rst $38
    ld a, l
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
    ld hl, $21ff
    rst $38
    ld hl, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    dec b
    rst $38
    ld bc, $05ff
    rst $38
    ld bc, $01ff
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $20
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
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld e, $ff
    ld c, $ff
    inc c
    rst $38
    inc c
    rst $38
    jr @+$01

    jr @+$01

    ld [$08ff], sp
    rst $38
    ld [$0cff], sp
    rst $38
    ld [$1aff], sp
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    jr @+$01

    add hl, bc
    rst $38
    inc c
    rst $38
    ld [$0aff], sp
    rst $38
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    adc a
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
    rrca
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    ld [$01ff], sp
    rst $38
    ld [$06ff], sp
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld c, $ff
    dec c
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
    nop
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    ld c, $ff
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
    rrca
    rst $38
    dec e
    rst $38
    ld c, $ff
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    sbc a
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
    rrca
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
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
    dec e
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
    rra
    rst $38
    rra
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
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
    ld [$00ff], sp
    rst $38
    nop
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    pop bc
    rst $38
    add d
    rst $38
    add [hl]
    rst $38
    ret c

    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    jr z, @+$01

    and b
    rst $38
    and b
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    and b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    and b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    and b
    rst $38
    pop af
    rst $38
    inc a
    rst $38
    ld a, h
    rst $38
    ld [hl], b
    rst $38
    and b
    rst $38
    call nc, $dcff
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    call z, $c0ff
    rst $38
    and c
    rst $38
    ld hl, $97ff
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    ld [$e8ff], a
    rst $38
    jp nz, $e0ff

    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    and $ff
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    call c, Call_0ae_7cff
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fc
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
    db $ed
    rst $38
    db $d3
    rst $38
    db $eb
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    jp z, $f5ff

    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add hl, de
    rst $38
    inc sp
    rst $38
    ld h, $ff
    dec c
    rst $38
    ld de, $35ff
    rst $38
    cpl
    rst $38
    rla
    rst $38
    inc a
    rst $38
    jr @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_0ae_7cff:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    jr @+$01

    jr nz, @+$01

    ld b, b
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
    ld [$00ff], sp
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $dfff
    rst $38
    and b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    dec l
    rst $38
    ld b, $ff
    ld d, $ff
    ld b, $ff
    rlca
    rst $38
    ld h, $ff
    sub c
    rst $38
    ld b, d
    rst $38
    sub b
    rst $38
    db $fc
    rst $38
    ld e, $ff
    ld a, $ff
    ld a, a
    rst $38
    rst $18
    rst $38
    ld e, [hl]
    rst $38
    inc a
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
    rst $10
    rst $38
    and a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    ld l, a
    rst $38
    adc a
    rst $38
    or a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
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
    sub a
    rst $38
    inc l
    rst $38
    sbc b
    rst $38
    ld sp, $60ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    rst $38
    ld e, a
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
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add hl, bc
    rst $38
    dec h
    rst $38
    db $10
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
    ret nz

    rst $38
    ld [hl], b
    rst $38
    di
    rst $38
    ei
    rst $38
    pop hl
    rst $38
    ld [c], a
    rst $38
    ld a, [$5cff]
    rst $38
    ld c, [hl]
    rst $38
    ld h, h

Jump_0ae_7e03:
    rst $38
    ld l, [hl]
    rst $38
    ld c, [hl]
    rst $38
    rlca
    rst $38
    ld b, [hl]
    rst $38
    ret nz

    rst $38
    push bc
    rst $38
    rst $00
    rst $38
    and $ff
    ld [c], a
    rst $38
    add b
    rst $38
    add h
    rst $38
    ret


    rst $38
    xor c
    rst $38
    add d
    rst $38
    call nz, $c6ff
    rst $38
    jp $c8ff


    rst $38
    and $ff
    ld [c], a
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    and a
    rst $38
    db $e3
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    xor b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    add h
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $0dff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ccf
    rst $38
    push af
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld c, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    db $fc
    rst $38
    ld [hl], c
    rst $38
    ld a, [hl-]
    rst $38
    ld e, a
    rst $38
    ld b, $ff
    ld d, h
    rst $38
    ld bc, $80ff
    rst $38
    jr z, @+$01

    and d
    rst $38
    ld h, b
    rst $38
    ld a, [hl]
    rst $38
    rst $28
    rst $38
    dec bc
    rst $38
    xor c
    rst $38
    ld h, [hl]
    rst $38
    ld [de], a
    rst $38
    ld b, a
    rst $38
    inc b
    rst $38
    add b
    rst $38
    sbc h
    rst $38
    ld c, b
    rst $38
    sbc b
    rst $38
    dec [hl]
    rst $38
    sub l
    rst $38
    cp e
    rst $38
    ld [$e2ff], a
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld [hl-], a
    rst $38
    ld bc, $12ff
    rst $38
    ld [$20ff], sp
    rst $38
    ld b, b
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    add h
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $a0ff
    rst $38
    sbc b
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [bc], a
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    ld bc, $21ff
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld bc, $02ff
    rst $38
    nop
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

    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    dec b
    rst $38
    dec h
    rst $38
    add hl, bc
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld hl, $ffff
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    ld [de], a
    rst $38
    inc d
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
    ld [$20ff], sp
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    ld bc, $49ff
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    inc b
    rst $38
    ld c, h
    rst $38
    inc h
    rst $38
    ld b, c
    rst $38
    db $10
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    adc b
    rst $38
    ret nc

    rst $38
    adc b
    rst $38
    sub [hl]
    rst $38
    ld d, l
    rst $38
    ld e, b
    rst $38
    ld e, h
    rst $38
    sbc d
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    ld e, $ff
    inc de
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    ld a, [hl-]
    rst $38
    cp l
    rst $38
    cp [hl]
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    adc d
    rst $38
    add b
    rst $38
    sub b
    rst $38
    adc b
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

Jump_0ae_7ffc:
    add b
    rst $38
    ret nz

    rst $38
