SECTION "ROM Bank $026", ROMX[$4000], BANK[$26]

    rlca
    inc bc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rrca
    rlca
    ld [$10f8], sp
    ldh a, [rNR11]
    ldh a, [$27]
    ldh [$5f], a
    ret nz

    sbc a
    add b
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
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld e, a
    nop
    cp a
    nop
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    rst $38
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
    db $fc
    dec de
    cp e
    jr jr_026_40a1

    ld [$081c], sp
    inc e
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc b
    inc c

jr_026_40a1:
    inc b
    inc c
    inc b
    ld b, $04
    ld b, $04
    ld b, $04
    ld b, $06
    ld b, $06
    ld b, $06
    rst $38
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
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fe
    rst $38
    db $fc
    rst $38
    db $fd
    cp $f9
    cp $f9
    cp $f9
    cp $fb
    db $fc
    ld sp, hl
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38

jr_026_4116:
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    jp nz, $f8ff

    rlca
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    ld a, h
    ld l, a
    db $fd
    ld a, [hl+]
    db $fd
    xor d
    ld a, l
    inc hl
    db $fc
    scf
    ld hl, sp-$09
    jr c, jr_026_4116

    ld a, b
    db $d3
    inc a
    db $d3
    inc a
    db $d3
    inc a
    ei
    inc d
    db $db
    inc [hl]
    di

jr_026_418b:
    inc e
    di
    inc e
    db $e3
    inc e
    jp $e33c


    inc e
    jp $c33c


    inc a
    db $e3
    inc e
    jp $e33c


    inc e
    di
    inc c
    ei
    inc b
    ld l, b
    sub a
    rst $08
    jr nc, jr_026_4214

    sub d
    ld d, b
    xor a
    jr nz, jr_026_418b

    ld d, d
    xor l
    ld [hl], c
    adc [hl]
    ld b, e
    cp h
    adc d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld sp, hl
    cp $f0
    rst $18
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    add hl, sp
    add $35
    adc $35
    adc $39
    sbc $39
    sbc $11
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld e, a
    nop
    ccf
    nop
    ldh [rP1], a
    ldh a, [rP1]
    add sp, $00
    db $f4
    nop
    ldh a, [rP1]
    db $f4
    nop
    db $fc
    nop
    ld a, [$0200]
    ld bc, $0102
    inc b
    inc bc
    inc b
    inc bc
    nop
    rlca
    ld [$0107], sp
    ld c, $11
    ld c, $ff
    rst $38
    rst $38
    rst $38

jr_026_4214:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    rst $38
    ld a, a
    rst $18
    ld c, a
    rst $38
    ld c, a
    rst $38
    cp a
    ld l, a
    or a
    ld l, a
    sub a
    ld l, a
    rst $10
    cpl
    rst $10
    cpl
    sub a
    ld l, a
    rst $10
    cpl
    rst $10
    cpl
    rst $10
    cpl
    rst $00
    ccf
    rst $10
    cpl
    rst $10
    cpl
    rst $20
    rra
    rst $20
    rra
    and a
    ld e, a
    rst $00
    ccf
    rst $30
    cpl
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    ld l, a
    sbc a
    rst $28
    rra
    rst $28
    rra
    ld e, a
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
    ccf
    ccf
    rst $00
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
    rst $30
    ld [$0cf3], sp
    pop hl
    ld e, $e5
    inc e
    push bc
    inc a
    jp $0d3e


    db $fc
    di
    dec bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    pop hl
    ld e, $c1
    ld a, $c3
    inc a
    add a
    ld a, b
    add d
    ld a, l
    ld [$19f7], sp
    rst $20
    inc sp
    swap b
    rst $00
    ld h, e
    sub b
    ld [hl], l
    sub a
    jp nc, $cf31

    jr nc, @+$01

    nop
    ld hl, sp+$07
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
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
    ld e, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    daa
    ldh [$60], a
    ret nz

    ld b, b
    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    db $fc
    adc e
    ld b, b
    rst $38
    nop
    db $e4
    nop
    add a
    nop
    adc a
    nop
    sbc a
    nop
    adc a
    nop
    sbc a
    nop
    cp b
    nop
    ret nz

    add b
    ld hl, sp-$20
    sbc h
    add b
    sbc a
    ld [de], a
    rra
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
    pop hl
    rst $38
    pop hl
    rst $38
    and h
    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    and h
    rst $38
    ldh [rIE], a
    and b
    rst $38
    and b
    rst $38
    and d
    rst $38
    and d
    rst $38
    xor $ff
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    or $ff
    db $e4
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    or h
    rst $38
    or h
    rst $38
    or h
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop hl
    rst $38
    pop hl
    rst $38
    and $ff
    xor $ff
    rst $20
    rst $38
    or $ff
    and $ff
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
    rla
    rst $38
    db $10
    rst $28
    inc hl
    call c, $fb04
    add hl, de
    and $06
    ld sp, hl
    jr c, @-$37

    rlca
    ld [$0000], sp
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
    jr jr_026_43ad

jr_026_43ad:
    rlca
    nop
    inc bc
    nop
    ld b, c
    nop
    ld sp, hl
    nop
    pop af
    nop
    ldh a, [rP1]
    ld [hl], c
    nop
    inc bc
    nop
    rlca
    ld bc, $003e
    ldh [rP1], a
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
    rra
    ldh [rP1], a
    rst $38
    rst $38
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
    add d
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add [hl]
    rst $38
    sub d
    rst $38
    or [hl]
    rst $38
    or $ff
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_026_441f:
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
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    rst $38
    rst $38
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rst $28
    db $10
    ld a, $c1
    rst $38
    nop
    rst $38
    nop
    rra
    nop
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
    add b
    nop
    nop
    nop
    nop
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
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    rlca
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    ld bc, $03ff
    rst $38
    rlca
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
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
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

jr_026_44cc:
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    db $fd
    rst $38
    dec hl
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
    ld [c], a
    rst $38
    add hl, de
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, jr_026_44cc

    jr nz, @+$01

    nop
    add b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    nop
    rst $28
    rra
    rst $18
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
    cp $ff
    cp $ff
    ldh a, [rIE]
    ldh [rIE], a
    jr nz, @+$01

    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [c], a
    rst $38
    or b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    rra
    rst $28
    rra
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    ld e, $fe
    ld e, $fe
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
    ld hl, sp-$01
    ld hl, sp-$01
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    db $e3
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub e
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
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ccf
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $18
    ld l, a
    rst $18
    ld a, a
    rst $08
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    ld l, a
    sbc a
    ld l, a
    sbc a
    ld l, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld e, a
    cp a
    ld e, a
    cp a
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
    cp a
    ld a, a
    cp a
    ld a, a
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
    ld [hl], a
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
    db $fd
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
    ld e, d
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fc
    cp $fc
    cp $fc
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh [$fe], a
    ldh [$fe], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [rIE], a
    inc h
    rst $38
    nop
    rst $38
    nop
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
    add b
    ld a, a
    add b
    ld a, a
    ld [bc], a
    db $fd
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
    db $fd
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fe]
    ldh a, [$fe]
    ldh [$fe], a
    ldh [$fe], a
    ldh [$fe], a
    ldh [$fe], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$40
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rP1]
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
    rst $38
    rst $38
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    sbc b
    rst $20
    add e
    db $fc
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
    rst $38
    add b
    rst $10
    xor b
    ld [bc], a
    db $fd
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
    ld hl, sp+$00
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    dec bc
    rst $30
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld b, d
    cp l
    ld b, c
    cp [hl]
    ld [$5ff7], sp
    and b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ldh a, [rIE]
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
    rst $38
    rst $38
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
    sbc $ff
    sub a
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
    ldh a, [$f0]
    rst $38
    rst $38
    ldh [$1f], a
    ret c

    nop
    db $e4
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    ld bc, $0701
    ld bc, $011f
    rra
    ld bc, $033f
    ccf
    inc bc
    ccf
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, a
    ld [bc], a
    ld a, a
    inc b
    ld a, a
    inc b
    ld a, a
    inc b
    rst $38
    inc b
    rlca
    rrca
    rrca
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld e, a
    cp a
    rst $38
    rra
    rst $18
    ccf
    rst $28
    rla
    ei
    rlca
    rst $28
    inc de
    rst $38
    inc bc
    jp hl


    rla
    di
    dec c
    ld e, e
    and a
    rlca
    ei
    nop
    rst $38
    ld [$02f7], sp
    db $fd
    inc bc
    db $fc
    rlca
    ld hl, sp+$06
    ld sp, hl
    inc bc
    rst $38
    ld b, e
    cp a
    ld a, c
    add a
    cp $01
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
    add hl, bc
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
    stop
    nop
    nop
    nop
    nop
    nop
    ld de, $0d12
    dec c
    inc de
    inc d
    nop
    nop
    nop
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_026_4928

    dec c
    add hl, de
    ld a, [de]
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    nop

jr_026_4928:
    nop
    jr nz, jr_026_494c

    dec c
    dec c
    ld [hl+], a
    nop
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    nop
    nop
    nop
    nop
    nop
    jr z, jr_026_4949

    dec c
    add hl, hl
    nop
    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_026_4979

    ld [hl-], a

jr_026_4949:
    inc sp
    inc [hl]
    dec [hl]

jr_026_494c:
    ld [hl], $37
    nop
    nop
    jr c, jr_026_498b

    ld a, [hl-]
    dec c
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    nop
    nop
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    nop
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    nop
    ld e, b

jr_026_4979:
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    nop
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

jr_026_498b:
    ld l, c
    ld l, d
    ld l, e
    nop
    nop
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
    nop
    nop
    ld a, d
    ld a, e
    ld a, h
    ld a, h
    ld a, l
    ld a, [hl]
    nop
    nop
    nop
    ld a, a
    add b
    add c
    add d
    add e
    nop
    nop
    ld a, h
    ld a, h
    add h
    add l
    add [hl]
    nop
    nop
    nop
    nop
    nop
    add a
    adc b
    adc c
    adc d
    nop
    nop
    adc e
    adc h
    nop
    ld de, $008d
    nop
    nop
    nop
    nop
    adc [hl]
    dec c
    dec c
    adc a
    nop
    nop
    sub b
    sub c
    sub d
    sub e
    nop
    nop
    nop
    nop
    nop
    sub h
    dec c
    dec c
    sub l
    sub [hl]
    nop
    nop
    sub a
    sbc b
    sbc c
    nop
    nop
    nop
    nop
    nop
    sbc d
    sbc e
    dec c
    dec c
    sbc h
    nop
    nop
    nop
    sbc l
    nop
    nop
    nop
    nop
    nop
    nop
    sbc d
    sbc [hl]
    dec c
    dec c
    sbc a
    and b
    nop
    nop
    nop
    and c
    and d
    nop
    nop
    nop
    nop
    and e
    and h
    dec c
    dec c
    dec c
    and l
    nop
    nop
    nop
    nop
    ld de, $0000
    nop
    and [hl]
    and a
    xor b
    dec c
    dec c
    dec c
    xor c
    ld a, [de]
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
    ld bc, $0101
    nop
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
    nop
    ld [bc], a
    dec b
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    dec b
    dec b
    inc b
    dec b
    inc b
    inc b
    ld bc, $0606
    rlca
    rlca
    dec b
    inc b
    nop
    nop
    ld [bc], a
    dec b
    dec b
    inc b
    dec b
    inc b
    inc b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    nop
    nop
    ld [bc], a
    dec b
    dec b
    inc b
    dec b
    inc b
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    nop
    nop
    ld [bc], a
    dec b
    dec b
    inc b
    ld b, $06
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    dec b
    dec b
    inc b
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
    ld bc, $0001
    nop
    ld bc, $0101
    ld hl, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    ld b, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0021
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop

jr_026_4b64:
    rst $38
    nop
    rst $38
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

jr_026_4b72:
    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ld h, b
    rst $08
    jr nc, @-$2f

    jr nc, jr_026_4b64

    jr jr_026_4b72

    inc c
    ei
    inc b
    db $fd
    ld [bc], a
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$79
    ld hl, sp-$3d
    db $fc
    jp Jump_026_61fc


    cp $70
    rst $38
    jr nc, @+$01

    jr @+$01

    inc c
    rst $38
    inc c
    rst $38
    ld b, $ff
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
    add b
    rst $38
    add b
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
    cp $ff
    cp $ff
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
    rst $38
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
    ldh a, [$87]
    ld hl, sp-$79
    ld hl, sp-$3d
    db $fc
    ld h, c
    cp $60
    rst $38
    jr nc, @+$01

    jr @+$01

    ld [$04ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
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
    rst $38
    rst $38
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
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rTAC], a
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
    rst $38
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    nop
    ret nz

    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    jr nc, jr_026_4d1c

jr_026_4d1c:
    jr nc, jr_026_4d1e

jr_026_4d1e:
    stop
    stop
    jr jr_026_4d24

jr_026_4d24:
    ld [$0800], sp
    nop
    inc c
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
    ldh a, [rP1]
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
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$0800], sp
    nop
    inc c
    nop
    inc c
    nop
    inc b
    nop
    ld b, $00
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
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
    ld bc, $0100
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
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    add e
    nop
    rst $00
    nop
    rst $38
    nop
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
    nop
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
    rst $38
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
    cp a
    nop
    rst $18
    add b
    add sp, -$79
    ld sp, hl
    add [hl]
    ei
    add h
    ei
    add h
    db $fd
    add d
    db $fd
    ld b, d
    ld a, a
    ld b, d
    ld a, a
    ld b, d
    ld a, a
    ld h, d
    ld a, a
    ld [hl], e
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $28
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    di
    rrca
    di
    rrca
    di
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
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
    ld a, $c1
    ld a, $c1
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$0e], a
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    inc b
    ei
    inc bc
    rst $38
    rrca
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, e
    nop
    ld hl, sp+$07
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
    pop hl
    rra
    or $09
    ld l, a
    sub b
    dec hl
    call nc, $ff00
    nop
    rst $38
    nop
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
    ld b, $f8
    rlca
    ld hl, sp+$00
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
    ld bc, $11ff
    rst $38
    dec e
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ld a, l
    ld a, a
    ld l, l
    ld a, a
    ld a, [hl]
    ld a, a
    ld l, [hl]
    ld a, a
    db $76
    ld a, a
    ld h, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, b
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    ld hl, sp+$7f
    rst $00
    ld a, a
    pop hl
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
    rst $00
    ld hl, sp-$7d
    db $fc
    ret nz

    rst $38
    rst $20
    ld hl, sp-$10
    adc a
    inc c
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
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
    cp $01
    ld e, $e1
    cp [hl]
    ld b, c
    sbc [hl]
    ld h, c
    sbc h
    ld h, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $21ff
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

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
    ldh [$1f], a
    db $10
    rrca
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$88ff], sp
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38

jr_026_5016:
    rst $38
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
    ld d, [hl]
    rst $28
    jr c, @-$37

    jr @-$17

    ld c, $f1
    rrca
    ldh a, [$8b]
    ld [hl], h
    add e
    ld a, h
    ld bc, $28fe
    rst $10
    sbc h
    ld h, e
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_026_5016

    jr nz, @-$2c

    ld hl, $20c3
    ld b, d
    ld hl, $0023
    ld hl, $2100
    nop
    ld hl, $7000
    ld bc, $00f9
    ldh a, [rP1]
    rrca
    nop
    ldh a, [rP1]
    rrca
    nop
    rst $38
    nop
    ldh [$1f], a
    rra
    ldh [rIE], a
    nop
    ld a, a
    add b
    rst $38
    nop
    cpl
    ret nc

    ccf
    ret nz

    ldh [$1f], a
    nop
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    add b
    ld a, a
    rlca
    rst $38
    ld a, a
    rst $38
    cp $ff
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
    ldh [$1f], a
    ld e, $e1
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, a
    ld hl, sp-$41
    ld b, b
    ld hl, sp+$07
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
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld hl, sp-$79
    adc h
    inc bc
    pop af
    ld c, $00
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, l
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld l, h
    rst $38
    ld d, h
    rst $28
    dec e
    and $37
    call z, Call_000_0cf7
    cp a
    ld b, d
    rst $38
    ld [bc], a
    dec sp
    add $3b
    add $5e

jr_026_50f7:
    and e
    ld e, e
    and [hl]
    ld d, d
    xor a
    rlca
    ld a, [$bf42]
    ld e, e
    and l
    or e
    ld c, l
    rst $28
    ld de, $01ff
    rst $38
    ld bc, $00ff
    ldh [rP1], a
    inc e

jr_026_510f:
    nop
    nop
    nop
    rrca
    nop
    db $fd
    nop
    add b
    ld a, a
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ldh [$1f], a
    nop
    rst $38
    rst $38
    nop
    ret nz

    ccf
    jr nc, jr_026_50f7

    ld hl, sp+$07
    ldh a, [rIF]
    ld a, c
    add [hl]
    jr nz, jr_026_510f

    ret nz

    rst $38
    pop bc
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
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
    ld e, $e1
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    or b
    ld c, a
    ld a, [bc]
    push af
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    nop
    cp $00
    cp $40
    cp $00
    cp $80
    cp $c4
    cp $c0
    cp $04
    cp $40
    cp $04
    cp $44
    cp $c4
    cp $ec
    cp $ec
    cp $fc
    cp $fe
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
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    cpl
    ld sp, hl
    ret


    ccf
    ret


    ccf
    sub h

jr_026_51cd:
    ld a, a
    call nz, $c13f
    ld a, $f1
    ld c, $fd
    ld [bc], a
    db $dd
    ld [hl+], a
    ld e, a
    and d
    rst $38
    ld [bc], a
    ld a, [hl]
    add e
    xor $11
    db $ed
    inc de
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    ldh [rP1], a
    rra
    nop
    inc bc
    nop
    rst $38
    nop
    call c, Call_000_0003
    rst $38
    db $fc
    inc bc
    jp $833c


    ld a, h
    rra
    ldh [$03], a
    db $fc
    db $fc
    inc bc
    nop
    rst $38
    jr c, jr_026_51cd

    ld [hl], e
    adc a
    ld h, [hl]
    sbc a
    db $ec
    rra
    sbc $3f
    sbc h
    ld a, a
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
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
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
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

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]

jr_026_529d:
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$7d
    db $fc
    add e
    db $fc
    pop bc
    cp $c0
    rst $38
    ret nz

    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ldh [$60], a
    ldh [rNR41], a
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ld [$d8f8], sp

jr_026_52c3:
    jr z, jr_026_529d

    jr nz, jr_026_52c3

    inc b
    db $fc
    inc b
    db $fc
    inc b
    cp $02
    cp $02
    ret nc

    rrca
    rrca
    ldh a, [$bd]
    ld b, d
    ccf
    ret nz

    rst $38
    nop
    rst $28
    db $10
    rra
    ldh [$f5], a
    rrca
    add b
    rst $38
    ld c, d
    cp a
    inc c
    rst $38
    ld h, d
    sbc a
    rst $38
    rrca
    rst $08
    ccf
    rst $08
    ccf
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    pop af
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8300
    nop
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$1d
    db $fc
    db $e3
    db $fc
    di
    db $fc
    di
    db $fc
    ld sp, hl
    cp $f9
    cp $fd
    cp $fc
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
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
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
    db $fc
    inc bc
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop

jr_026_542e:
    ld a, a
    nop
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    ld bc, $1fff
    rst $38

jr_026_5456:
    rst $38
    rst $38

jr_026_5458:
    rst $38
    rst $38

jr_026_545a:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc

jr_026_5468:
    db $fc
    inc bc

jr_026_546a:
    db $fc
    inc bc

jr_026_546c:
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $f9
    ld b, $f1
    ld c, $f3
    inc c
    di
    inc c
    di
    inc c
    rst $20
    jr jr_026_5468

    jr jr_026_546a

    jr jr_026_546c

    jr jr_026_5456

    jr nc, jr_026_5458

    jr nc, jr_026_545a

    jr nc, jr_026_546c

    jr nz, jr_026_542e

    ld h, b
    sbc a
    ld h, b
    cp a
    ld b, b
    cp a
    ld b, b
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
    rlca
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
    ccf
    ret nz

    ccf
    ret nz

    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $fb
    inc b
    ei
    inc b
    di
    inc c
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$10ef], sp
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
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf

jr_026_5548:
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
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38

jr_026_5566:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $01
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $fb
    inc b
    di
    inc c
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_026_5566

    jr nz, jr_026_5548

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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
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
    ld bc, $03ff
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
    nop
    rst $38
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
    rra
    rst $38
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    rlca
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    rlca
    rlca
    dec d
    ld d, $17
    jr jr_026_563e

    ld a, [de]
    dec de
    inc e
    ld de, $1e1d
    rra
    jr nz, jr_026_564f

    rlca
    rlca
    inc bc
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_026_5662

    ld a, [hl+]
    dec hl
    ld de, $2d2c

jr_026_563e:
    rlca
    ld l, $03
    inc bc
    cpl
    jr nc, jr_026_5676

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_5686

    ld a, [hl-]
    dec sp

jr_026_564f:
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
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    rlca
    rlca

jr_026_5662:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    rlca
    rlca
    rlca
    ld e, d
    ld e, e
    ld e, h

jr_026_5676:
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    inc bc
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    rlca
    rlca
    rlca
    ld h, [hl]
    ld h, a
    ld l, b

jr_026_5686:
    ld l, c
    ld l, d
    ld l, e
    ld e, a
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    rlca
    rlca
    rlca
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
    rlca
    rlca
    ld a, a
    add b
    rlca
    rlca
    rlca
    add c
    inc bc
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
    rlca
    rlca
    adc l
    adc [hl]
    adc a
    add d
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    inc bc
    inc bc
    inc bc
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
    ld de, $bc1d
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

    call Call_000_07ce
    rlca
    rst $08
    ret nc

    pop de
    jp nc, Jump_000_0707

    rlca
    rlca
    db $d3
    call nc, $d51e
    sub $d7
    ret c

    ld a, [hl-]
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [rTAC], a
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    pop hl
    add $e2
    db $e3
    db $e4
    push hl
    and $07
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rst $20
    inc b
    dec b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0405
    dec b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    dec b
    inc b
    dec b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    ld b, $05
    dec b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld b, $05
    ld b, $02
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0106
    ld bc, $0301
    inc bc
    inc bc
    ld b, $06
    ld bc, $0101
    ld b, c
    ld bc, $0606
    dec b
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld b, $07
    ld b, $05
    dec b
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld bc, $0506
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0505
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $03
    ld bc, $0101
    ld b, $06
    ld b, $06
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld bc, $0101
    ld bc, $0121
    ld bc, $0201
    ld [bc], a
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0141
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $ff80
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    rst $38
    rra
    rst $38
    rrca
    ld a, a
    rlca
    cp a
    inc bc
    rst $18
    ld bc, $006f
    or $3f
    ei
    rra
    ld sp, hl
    rrca
    cp $07
    cp $03
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
    nop
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
    cp $03
    db $fc
    inc bc
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
    ldh [$3f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rla
    ldh [$0b], a
    ldh a, [rTIMA]
    ld hl, sp+$00
    db $fc
    ld b, $fc
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
    rst $38
    ld b, b
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    ld a, a
    rlca
    cp a
    inc bc
    sbc a
    ld bc, $014f
    rst $20
    ccf
    ld a, [c]
    rra
    ld sp, hl
    rrca
    db $fc
    rlca
    cp $03
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
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

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
    ret nz

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
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
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
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$7f]
    ld hl, sp-$41
    ld hl, sp-$61
    db $fc
    ld e, $c0
    cpl
    ret nz

    rla
    ldh [$0b], a
    ldh a, [$0b]
    ldh a, [rDIV]
    ld hl, sp+$02
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
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    ld a, a
    rrca
    cpl
    rlca
    sub a
    inc bc
    ld c, e
    ld bc, $3fe5
    ld a, [c]
    rra
    ld sp, hl
    rrca
    db $fc
    rlca
    cp $03
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    add e
    ld a, h
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld h, b
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    nop
    ld [bc], a
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
    inc b
    nop
    inc b
    nop
    inc c
    nop
    ld [$0800], sp
    nop
    adc b
    nop
    add sp, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$7f], a
    ldh a, [$f8]
    nop
    ld a, b
    add b
    ld a, h
    add b
    ld a, $c0
    ld e, $e0
    rrca
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
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    cp a
    rra
    ld a, a
    rrca
    cpl
    rlca
    sbc a
    inc bc
    ld c, e
    ld bc, $3fe7
    di
    rra
    ld sp, hl
    rrca
    cp $07
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add d
    ld a, l
    add [hl]
    ld a, c
    add [hl]
    ld a, c
    add [hl]
    ld a, c
    add [hl]
    ld a, c
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], c
    ld c, [hl]
    ld sp, $116e
    ld h, [hl]
    ld bc, $0166
    ld h, d
    ld bc, $01e0
    pop hl
    nop
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
    db $fc
    inc bc
    ret nz

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
    ld a, a
    ld a, a
    ccf
    ccf
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, b
    add b
    inc a
    ret nz

    ld e, $e0
    rra
    ldh [$0e], a
    pop af
    rlca
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld a, [$7c07]
    inc bc
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    db $fc
    or $fe
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    inc a
    jp $c33c


    inc a
    jp $837c


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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    add hl, sp
    ld b, $39
    ld b, $79
    ld b, $79
    ld b, $7b
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
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    xor $11
    db $ec
    inc de
    add sp, $17
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
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
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
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
    ldh a, [rIF]
    rlca
    db $fc
    rst $38
    sbc h
    sbc b
    sbc b
    ld b, d
    jp nz, $e040

    and b
    ld [hl], b
    ret nc

    jr c, @-$05

    add hl, de
    ld l, c
    sbc c
    inc [hl]
    call z, $e61a
    rrca
    di
    dec c
    di
    ld b, $f9
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    ld bc, $80ff

jr_026_5cb1:
    rst $38
    nop

jr_026_5cb3:
    rst $38
    add b

jr_026_5cb5:
    ld a, a
    ret nz

jr_026_5cb7:
    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld [hl], b
    rrca
    jr c, jr_026_5cc7

    inc e
    inc bc
    ld c, $01
    inc b
    inc bc
    nop

jr_026_5cc7:
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_026_5cd0:
    jr nz, jr_026_5cb1

jr_026_5cd2:
    jr nz, jr_026_5cb3

jr_026_5cd4:
    jr nz, jr_026_5cb5

jr_026_5cd6:
    jr nz, jr_026_5cb7

jr_026_5cd8:
    jr nz, @-$1f

jr_026_5cda:
    ld h, b
    sbc a

jr_026_5cdc:
    ld h, d
    sbc l

jr_026_5cde:
    ld h, d
    sbc l
    ld h, d
    sbc l
    ld h, d
    sbc l
    ld h, d
    sbc l
    ld h, d
    sbc l

jr_026_5ce8:
    ld h, [hl]
    sbc c

jr_026_5cea:
    and $19

jr_026_5cec:
    and $19

jr_026_5cee:
    and $19

jr_026_5cf0:
    rst $20
    jr jr_026_5cda

    jr jr_026_5cdc

    jr jr_026_5cde

    jr jr_026_5ce8

    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $08
    jr nc, jr_026_5cd0

    jr nc, jr_026_5cd2

    jr nc, jr_026_5cd4

    jr nc, jr_026_5cd6

    jr nc, jr_026_5cd8

    jr nc, jr_026_5cea

    jr nz, jr_026_5cec

    jr nz, jr_026_5cee

    jr nz, jr_026_5cf0

    jr nz, @-$1f

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
    cp $01
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
    ret nz

    ccf
    add c
    ld a, a
    ld bc, $01ff
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    inc bc
    ld [bc], a
    ld bc, $0003
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
    ccf
    ret nz

    rrca
    ldh a, [$fc]
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
    or c
    rst $38
    add hl, de
    rst $38
    call c, $ec7f
    rst $18
    and $ff
    sub $bf
    db $e3
    sbc a
    pop af
    rrca
    pop af
    rra
    db $fd
    rra
    xor $1f
    ld [c], a
    dec e
    ret z

    scf
    push hl
    sbc e
    ei
    rst $00
    db $f4
    db $eb
    ld hl, sp-$19
    ld sp, hl
    or $08
    ld hl, sp+$04
    db $fc
    ld b, $fe
    ld [bc], a
    cp $13
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    nop
    rst $38
    inc b
    ld a, a
    nop
    ccf
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add e
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    add b
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0706
    nop
    rlca
    nop
    dec b
    ld [bc], a
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
    jr nz, @+$01

    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    ld hl, sp+$00
    rst $38
    nop
    inc bc
    db $fc
    inc hl
    db $fc
    ld hl, $01fe
    cp $90
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    ld h, h
    rst $38
    inc [hl]
    rst $38
    cp b
    rst $38
    cp d
    rst $38
    db $dd
    rst $38
    db $ed
    rst $38
    ld l, a
    rst $38
    ld [hl], a
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    ld [hl], a
    rst $38
    rra
    rst $38
    ld l, e
    sbc a
    ld a, a
    sbc a
    daa
    rst $18
    adc a
    rst $30
    set 6, a
    rst $38
    rst $20
    pop af
    rst $38
    db $fc
    rst $38
    ld a, [$fafd]
    db $fd
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
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    rlca
    nop
    nop
    rlca
    nop
    rlca
    rlca
    nop
    rst $38
    rlca
    rst $38
    rlca
    db $fd
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, b
    sub a
    rst $38
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
    ld h, b
    dec de
    db $e4
    rst $38
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
    sbc a
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld e, $e1
    inc c
    di
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
    cp $ff
    ld a, [hl]
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
    ld e, a
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rra
    dec e
    rra
    rra
    rra
    rra
    rra
    add b
    rst $38
    add c
    cp $84
    ei
    db $db
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    dec b
    ld a, [$00ff]
    rst $38
    nop
    rst $38
    nop
    and l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $00
    cp $00
    adc h
    ld [hl], e
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
    or [hl]
    ld c, c
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
    ld l, l
    sub d
    nop
    rst $38
    rst $38
    nop
    sbc a
    nop
    inc bc
    nop
    rrca
    nop
    ld a, $01
    ld bc, $3fff
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
    ccf
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
    ccf
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
    inc sp
    rst $08
    rla
    rst $28
    rst $38
    add a
    cp e
    rst $00
    cp e
    rst $00
    cp e
    rst $00
    cp e
    rst $00
    ld e, l
    db $e3
    ld e, [hl]
    db $e3
    inc e
    db $e3
    ld e, $e3
    inc c
    di
    ld l, [hl]
    sub e
    ld d, [hl]
    xor e
    ld a, d
    adc a
    and [hl]
    rst $18
    sub [hl]
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

jr_026_600d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret z

    rst $38
    or b
    rst $38
    rst $38
    rst $38
    ld e, c
    rst $38
    ret nz

    ccf
    cp $01
    xor b
    ld d, a
    and e
    rst $38
    nop
    rst $38
    sbc $21
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    jr nz, jr_026_600d

    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    stop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld d, l
    xor d
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
    ccf
    ret nz

    rst $38
    nop
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $e4
    dec de
    ld d, d
    rst $38
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
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
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
    ld bc, $0bff
    rst $38
    dec e
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld c, l
    or d
    ld [bc], a
    db $fd
    db $f4
    rst $38
    nop
    rst $38
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld d, [hl]
    xor c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $30
    nop
    rst $38
    nop
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rst $38
    ldh [$1f], a
    rst $38
    nop
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
    ld hl, sp+$07
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
    nop
    ret nz

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
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
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
    rrca
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
    cp [hl]
    rst $38
    dec h
    rst $38
    rst $38
    rst $38
    xor l
    rst $38
    jr nz, @+$01

    ld c, h
    or e
    ld h, [hl]
    sbc c
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    ld a, a
    add b
    rst $38
    nop
    db $e3
    inc e
    nop
    rst $38
    nop
    rst $38
    dec hl
    call nc, Call_000_00ff
    rst $38
    nop
    stop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    ld b, b
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
    db $ec

jr_026_61cb:
    inc de
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    ei
    inc b
    pop bc
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld hl, sp+$07
    jr jr_026_61cb

    ret c

    rst $20
    ret c

    rst $20
    call c, $d8e7
    rst $20
    ret c

    rst $20
    call c, $d8e7
    rst $20
    call c, $f9e7
    rst $20
    db $fc
    rst $20
    cp $e7
    ld a, [c]
    rst $28

Jump_026_61fc:
    rst $30
    rst $28
    rst $30
    rst $28
    and $ff
    and $ff
    and $ff
    xor $ff
    cp $ff
    db $fc
    rst $38
    db $ec
    rst $38
    sbc h
    rst $38
    sbc [hl]
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    dec c
    rst $38
    inc c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    ld e, $ff
    dec bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    add a
    ld a, a
    rst $00
    ccf
    rst $20
    rra
    rst $20
    rra
    rst $30

jr_026_623b:
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $28
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
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr z, @+$01

    jr nz, jr_026_623b

    ld [hl+], a
    db $dd
    ld bc, $08ff
    rst $38
    nop
    rst $38
    jp z, $f635

    add hl, bc
    nop
    rst $38
    nop
    rst $38
    ld h, $d9
    rst $38
    nop
    ld a, [$ff05]
    nop
    ld [bc], a
    nop
    ld a, [$fe05]
    ld bc, $758a
    rst $38
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
    reti


    ld h, $d2
    dec l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, b
    add a
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
    dec bc
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $03
    cp $03
    cp $03
    cp $03
    cp $07
    cp $07
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
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    ld sp, hl
    rra
    di
    rra
    pop af
    rra
    di
    rra
    di
    rra
    rst $30
    rra
    rst $30
    rra
    rst $30
    rra
    rst $30
    rra
    cp $1f
    cp $1f
    cp $1f
    dec de
    inc b
    dec sp
    inc b
    dec sp
    inc b
    dec sp
    inc b
    dec sp
    inc b
    scf
    ld [$0837], sp
    scf
    ld [$0837], sp
    daa
    jr jr_026_6334

    db $10
    ld l, a
    db $10
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    ld c, $70
    ld e, $60
    ld e, $60
    ld e, $60
    inc e
    ld h, b
    inc e
    ld h, b
    inc e
    ld h, b
    inc e
    ld h, b
    jr jr_026_637e

    ld [$7f70], sp
    ld hl, sp+$7f
    ldh a, [$7f]
    ldh a, [$fb]
    ldh a, [$fb]
    ldh a, [$fb]
    ldh [$fb], a
    ldh [$fb], a
    ldh [$e4], a
    ei
    add $f9

jr_026_6334:
    add $f9
    add $f9
    add $f9
    add a
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$7a
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$02
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    add e
    db $fc
    add c
    cp $81
    cp $81
    cp $80
    add b
    nop
    add b
    add b
    nop
    add b
    ld b, b
    nop
    ret nz

    nop
    ret nz

    add b
    ld b, b
    ld b, b
    add b
    nop
    ret nz

    ret nz

    nop
    ldh [rP1], a
    nop
    ldh [$a0], a
    ld b, b
    nop
    ldh [$e0], a
    nop

jr_026_637e:
    ldh [rP1], a

jr_026_6380:
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    inc b
    ld hl, sp-$04
    nop
    db $fc
    nop
    db $fc
    nop
    inc b
    ld hl, sp-$5c
    ld e, b
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    jr jr_026_6380

    db $fc
    nop
    nop
    rst $38
    ld a, [$ff05]
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    ret nc

    rst $38
    nop
    rst $38
    rst $38
    nop
    jr jr_026_63b2

jr_026_63b2:
    jr jr_026_63b4

jr_026_63b4:
    jr c, jr_026_63b6

jr_026_63b6:
    jr nc, jr_026_63b8

jr_026_63b8:
    jr nc, jr_026_63ba

jr_026_63ba:
    jr nc, jr_026_63bc

jr_026_63bc:
    jr nc, jr_026_63be

jr_026_63be:
    ld [hl], c
    nop
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, e
    cp $63
    cp $c3
    cp $c3
    cp $c3
    cp $c7
    db $fc
    rst $00
    db $fc
    add a
    db $fc
    add a
    db $fc
    adc a
    ld hl, sp-$71
    ld hl, sp-$71
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$7f], a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    db $dd
    add b
    db $dd
    add b
    ld e, l
    ld a, a
    db $dd
    rst $38
    call $cdff
    rst $38
    call z, $ccff
    rst $38
    call z, $c4ff
    rst $38
    add hl, sp
    add $39
    add $b9
    ld b, [hl]
    sbc c
    ld h, [hl]
    sbc c
    ld h, [hl]

jr_026_641a:
    sbc l
    ld h, d
    sbc l
    ld h, d
    sbc l
    ld h, d
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $db
    jr nz, jr_026_641a

    nop
    pop hl
    nop
    pop bc
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
    ret nz

    nop
    ret nz

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, b
    add b
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, [hl]
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
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    jr nc, jr_026_64cf

    ld a, h
    ret nz

    ld a, b
    ret nz

    ld a, b
    ret nz

    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp+$00
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$79
    ld a, b
    add e
    ld a, h
    add e
    ld a, h
    jp $c33c


    inc a
    jp $e33c


    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    di
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    ei
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $fd

jr_026_64cf:
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, l
    add d
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

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_026_6564

    jr nz, jr_026_6546

    nop
    cpl
    nop
    inc hl
    nop
    ld hl, $3000
    nop
    stop
    stop
    stop
    stop
    stop
    stop
    stop
    jr jr_026_6520

jr_026_6520:
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    inc c
    nop
    inc c
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
    ld b, $00
    ld b, $00
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop

jr_026_6546:
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]

jr_026_6564:
    rst $38
    nop
    rst $38
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
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
    rlca
    nop
    adc a
    nop

jr_026_65ec:
    sbc a
    nop

jr_026_65ee:
    sbc a
    nop
    cp a
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
    rst $18
    jr nz, jr_026_65ec

    jr nz, jr_026_65ee

    jr nz, @+$21

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

    rra
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
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    jp $c33c


    inc a
    jp $c13c


    ld a, $c1
    ld a, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $f1
    ld c, $f0
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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

jr_026_6686:
    cp $01

jr_026_6688:
    cp $01

jr_026_668a:
    cp $01

jr_026_668c:
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

    rra
    ldh [$1f], a
    ldh [$9f], a
    ld h, b

jr_026_66ac:
    sbc a
    ld h, b

jr_026_66ae:
    sbc a
    ld h, b

jr_026_66b0:
    sbc a
    ld h, b
    sbc a
    ld h, b
    rst $08
    jr nc, jr_026_6686

    jr nc, jr_026_6688

    jr nc, jr_026_668a

    jr nc, jr_026_668c

    jr nc, jr_026_66ae

    db $10
    rst $28
    db $10

jr_026_66c2:
    rst $20
    jr jr_026_66ac

    jr jr_026_66ae

    jr jr_026_66b0

    jr jr_026_66c2

    ld [$08f7], sp
    rst $30
    ld [$0cf3], sp
    di
    inc c
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
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
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
    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc bc
    inc c
    dec c
    inc bc
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_026_6736

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    inc de
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_026_6757

    inc bc
    inc bc
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_026_6736:
    jr nc, jr_026_6769

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_6743

    add hl, sp
    ld a, [hl-]
    dec sp

jr_026_6743:
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
    ld b, a
    inc bc
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_026_6757:
    ld c, a
    ld d, b
    ld d, c

jr_026_675a:
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

jr_026_6769:
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
    and e
    and h
    and l
    and [hl]
    and a
    jr c, jr_026_675a

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
    inc de
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


    inc de
    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    inc bc
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    jr c, jr_026_6804

    inc bc
    inc bc
    di

jr_026_6804:
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $03
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec e
    rlca
    ld [$0a09], sp
    dec bc
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
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    nop
    dec b
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
    inc b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    dec b
    dec b
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
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
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    nop
    nop
    inc b
    dec b
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
    inc b
    nop
    inc b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    inc b
    dec b
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    inc b
    dec b
    dec b
    dec b
    dec b
    inc b
    dec b
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
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
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
    dec b
    ld b, c
    ld bc, $0303
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    inc b
    dec b
    dec b
    dec b
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    inc b
    dec b
    inc b
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    dec b
    dec b
    dec b
    ld b, $01
    ld bc, $0501
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    inc bc
    inc b
    ld bc, $0103
    inc bc
    dec b
    inc h
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    ld bc, $0103
    ld bc, $0005
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
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
    inc hl
    dec bc
    dec bc
    dec bc
    dec bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add a
    rst $38
    jr @+$01

    and b
    rst $38
    adc a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ldh a, [rIE]
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
    db $10
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ei
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
    rlca
    rst $38
    inc bc
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$ef], a
    ldh a, [$86]
    ld hl, sp-$3f
    cp $f8
    rst $38
    cp $ff
    ld a, [$feff]
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
    sub a
    rst $38
    ld h, e
    rst $38
    cp b
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
    ccf
    rst $38
    rrca
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ld b, b
    rst $38
    ld l, b
    rst $38
    jr z, @+$01

    inc [hl]
    rst $38
    inc d
    rst $38
    inc a
    rst $38
    jr z, @+$01

    inc c
    rst $38
    ld b, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    db $e3
    rst $38
    daa
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld bc, $f9ff
    rst $38
    rst $38
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
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    and [hl]
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    pop de
    rst $38
    ld hl, sp-$01
    or $ff
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
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
    ld b, b
    cp a
    sbc a
    rra
    rla
    adc a
    rst $28
    add a
    rst $30
    jp $e1ff


    cp $f1
    rst $38
    ld hl, sp+$7f
    db $fc
    scf
    cp $8f
    rst $38
    add a
    rst $38
    ld b, e
    rst $38
    db $e3
    rst $38
    push hl
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
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    ld h, a
    rra
    dec a
    jp $8047


    inc hl
    ret nz

    sbc d
    pop hl
    jp nz, $b2fc

    db $fc
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
    ld e, a
    rst $38
    rst $00
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    cp $ff
    ld a, a
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
    rst $38
    ld c, a
    rst $38
    ld h, a
    rst $38
    dec l
    rst $38
    inc sp
    rst $38
    scf
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    cpl
    rst $38
    ccf
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
    db $fc
    rst $38
    and $f9
    sbc e
    rst $20
    ld h, [hl]
    sbc a
    inc c
    rst $38
    db $fc
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    ldh a, [rIE]
    db $e3
    db $fc
    jp $c1fc


    cp $c0
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ret nz

    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    inc b
    ei
    ld b, $f9
    add b
    rst $38
    ld h, $df
    add d
    rst $38
    call nz, $e0ff
    rst $38
    ret z

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

jr_026_6ba3:
    rst $38
    nop
    cp $07
    ld hl, sp+$07
    ld hl, sp+$1f
    ldh [rIF], a
    ldh a, [$e7]
    jr jr_026_6ba3

    dec e
    adc b
    ld a, a
    inc e
    rst $38
    db $fc
    rst $38
    cp $ff
    ldh a, [rIE]
    ld sp, hl
    rst $38
    cp $ff
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
    nop
    rst $38
    nop
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
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    ld a, a
    rst $38
    rra
    ld a, a

jr_026_6bf5:
    rrca
    rst $38
    rra
    rra
    rst $20
    ccf
    jp $f18f


    rst $00
    ld sp, hl
    pop af
    cp $fb
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
    rst $18
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
    rst $38
    ldh a, [rIE]
    adc $f1
    jr c, jr_026_6bf5

    ret nz

    ccf
    ld c, [hl]
    pop af
    dec e
    db $e3
    daa
    rst $18
    dec de
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ld b, a
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    cp $cc
    cp $de
    db $fc
    sbc h
    ld hl, sp-$2c
    ld hl, sp-$08
    ldh a, [$e8]
    ldh a, [$f1]
    ldh [$f4], a
    ldh [$d3], a
    db $e3
    rst $20
    rst $00
    db $e3
    jp $c3e3


    and c
    pop bc
    sbc b
    ret nz

    call c, $dc1c
    inc e
    ret nc

    db $10
    ret nc

    db $10
    ret nc

    db $10
    db $ec
    inc l
    ldh [rNR41], a
    db $e3
    ld [bc], a
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    rst $38
    dec bc
    rst $30
    inc c
    rst $38
    ld c, $68
    sub l
    add a
    jr jr_026_6c9b

    ld [$0c03], sp
    dec c
    ld b, $83
    ld b, $c6
    inc bc
    jp Jump_000_2303


    pop bc
    pop af
    pop hl
    cp e
    ldh a, [$3f]
    ld hl, sp+$3f
    ld hl, sp+$3f

jr_026_6c9b:
    db $fc
    rra
    cp $1f
    rst $38
    rrca
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    xor $ff
    sbc $ff
    rst $38
    rst $38
    rst $38
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
    sbc a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
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
    rst $28
    rst $38
    db $eb
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_026_6cff:
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
    db $fc
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ld a, l
    rst $38
    sbc l
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04fc
    ld hl, sp+$18
    ldh [rNR41], a
    ret nz

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
    add b
    add b
    nop
    nop
    nop
    nop
    ret nz

    ld b, b
    ret nz

    nop
    ld hl, sp+$38
    rst $38
    rlca
    rst $18
    ld b, b
    sbc a
    ld e, $01
    ld bc, $0101
    nop
    nop
    inc bc
    inc bc
    rlca
    inc b
    rra
    jr jr_026_6dda

    ld h, b
    rst $38
    add b
    rst $38
    nop
    pop hl
    ld e, $87
    ld a, b
    adc a
    ld [hl], b
    ld a, a
    and b
    ld a, a
    and b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [$bf], a
    rst $18
    cp a
    rst $08
    ld d, e
    rst $28
    jp $477f


    ccf
    add e
    ld a, a
    and e
    rra
    pop bc
    rra
    ld d, c
    adc a
    jp hl


    adc a
    add sp, -$39
    call nc, $e667
    ld h, e
    add sp, $73
    ld sp, hl
    ld sp, $79f0
    db $fc
    ld sp, hl
    rst $38
    db $fc
    db $fc
    cp $da
    cp $1b
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, e
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
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    cp a
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    ld a, [$feff]
    rst $38
    cp $ff
    cp $ff

jr_026_6dda:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rra
    rst $38
    xor a
    rst $38
    ld [c], a
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    ld a, [$ffff]
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
    ldh a, [rIE]
    ldh a, [rIE]
    ld [c], a
    rst $38
    rrca
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    rst $38
    rst $38
    daa
    daa
    daa
    daa
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$2008], sp
    nop
    rra
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $e4
    ei
    sbc c
    and $03
    db $fc
    ld c, $f1
    add hl, sp
    rst $00
    ld [hl], a
    adc a
    rst $08
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, h
    rst $38
    ld a, l
    rst $38
    ld sp, $07ff
    rst $38
    rra
    rst $38
    ccf
    rst $38
    sbc a
    ld a, a
    ld e, c
    ld a, a
    ld [hl], a
    ccf
    rra
    ccf
    ld l, a
    rra
    ld c, [hl]
    sbc a
    ld l, a
    sbc a
    db $eb
    rst $18
    jp hl


    rst $38
    ld sp, hl
    rst $38
    call c, $fcff
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ld sp, hl
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
    rst $38
    sub c
    rst $38
    adc e
    rst $38
    jp z, $ecff

    rst $38
    and c
    rst $38
    or e
    rst $38
    pop de
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld e, e
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    db $ec
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $e4
    rst $38
    jp $87ff


    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    jp hl


    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    rst $38
    jp z, $d3ff

    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    jp nz, $f1fd

    adc $d8
    rst $20
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, $ff
    or $0f
    ei
    rlca
    rst $38
    ld bc, $00ff
    ld a, a
    nop
    ld l, a
    nop
    ld a, a
    ld a, a
    rra
    rra
    ld h, $26
    inc a
    inc a
    ld b, b
    ld b, b
    nop
    nop
    inc h
    inc h
    inc c
    inc c
    ld e, h
    nop
    cp a
    nop
    sbc b
    add a
    ldh a, [$cf]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    adc a
    ld a, a
    ccf
    rst $38
    ld a, a
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
    nop
    rst $38
    add e
    rst $38
    add e
    rst $38
    ld b, a
    rst $38
    ld b, e
    rst $38
    jp nz, $c1ff

    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    or c
    rst $38
    or b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    add sp, -$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld a, $ff
    rlca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    and e
    rst $38
    and e
    rst $38
    or c
    rst $38
    ld hl, sp-$01

jr_026_6fb2:
    pop af
    rst $38
    ld sp, hl
    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, l
    cp $7a
    db $fc
    ld [bc], a
    db $fd
    ld [$88f7], sp
    rst $30
    add b
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld a, [bc]
    rst $38
    inc a
    rst $38
    ld [hl], d
    rst $38
    ld a, d
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    rst $38
    adc b
    db $fd
    sub b
    ei
    sub b
    rst $38
    ret nz

    rst $28
    add h
    rst $18
    adc b
    rst $38
    ld b, b
    rst $38
    add e
    rst $38
    add $ff
    call nz, $c9ff
    rst $38
    jp nc, $e0ff

    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld b, e
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $dfff
    jr nz, jr_026_6fb2

    ld h, b
    sbc a
    ld h, b
    sbc c
    ld h, [hl]
    reti


    ld h, $df
    jr nz, @+$01

    add b
    rst $28
    ret nc

    and b
    rra
    ldh [$1f], a
    ret nc

    rrca
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    nop
    rrca
    or b
    rrca
    ld b, b
    ccf
    add b
    ld a, a
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    ld a, a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    cp a
    ld b, b
    ccf
    ret nz

    ld a, $c0
    ld e, $e0
    ld e, $e0
    ld e, $e0
    ld c, $f0
    adc [hl]
    ldh a, [$8e]
    ldh a, [$8e]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$ce]
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp-$20
    rst $38
    rst $20
    db $fc
    db $e3
    db $fc
    jp $93fc


    cp $36
    rst $38
    ld [hl], e
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    cp c
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    call c, Call_026_6cff
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    ld e, [hl]
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    inc e
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld b, $ff
    ld h, $df
    inc hl
    rst $18
    inc bc
    rst $38
    add e
    rst $38
    rlca
    rst $38
    ld b, c
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ldh [rIE], a
    ld hl, sp-$19
    cp b
    rst $00
    ld b, c
    sbc a
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fd
    inc b
    ei
    rla

jr_026_70c9:
    ld hl, sp+$03

jr_026_70cb:
    db $fc
    ld b, l

jr_026_70cd:
    ld hl, sp+$12
    db $ed
    add hl, bc
    rst $30
    dec bc
    or $40
    cp a
    jr nz, @-$23

    nop
    rst $30
    nop
    rst $28
    ld b, b
    rst $18
    nop
    cp a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    add h
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [c], a
    rst $38
    or h
    rst $38
    jr c, @+$01

    add hl, sp
    rst $38
    or d
    rst $38
    rst $38
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
    ld a, $ff
    ld e, h
    cp a
    jr @+$01

    ld sp, $21ff
    rst $38
    inc bc
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
    ld bc, $04ff
    rst $38
    ld [$03ff], sp
    db $fc
    ld b, $f8
    inc e
    ldh [$78], a
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ret nc

    jr nz, jr_026_70cb

    jr nz, jr_026_70cd

    jr nz, jr_026_713f

jr_026_713f:
    jr c, jr_026_70c9

    jr nc, @+$4a

    jr nc, @+$22

    jr jr_026_7167

    jr @+$22

    jr jr_026_714b

jr_026_714b:
    jr jr_026_714d

jr_026_714d:
    jr jr_026_714f

jr_026_714f:
    jr @+$1a

    ld [$0810], sp
    inc de
    inc c
    inc d
    ld [$0824], sp
    ld h, h
    ld [$0cc0], sp
    push bc
    adc [hl]
    ld b, h
    adc h
    ret nc

    inc b
    ldh [rDIV], a
    ld [c], a

jr_026_7167:
    inc b
    ld [$7ac4], a
    add h
    xor $10
    ld hl, sp+$06
    db $fd
    ld [c], a
    sbc h
    db $e3
    db $fd
    db $e3
    ldh a, [rIE]
    ld sp, hl
    cp $f8
    rst $38
    db $f4
    rst $38
    sbc h
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    jr c, @+$01

    nop
    rst $38
    jr @+$01

    jr @+$01

    inc c
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    dec e
    rst $38
    dec c
    rst $38
    ld c, h
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    and b
    rst $18
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld b, c
    cp $45
    ld hl, sp+$02
    ld sp, hl
    ld b, l
    cp e
    and e
    ld e, [hl]
    ld d, l
    xor [hl]
    inc [hl]
    set 1, [hl]
    ld sp, $609b
    inc e
    ret nz

    ld a, e
    add h
    add sp, $17
    sub l
    ld l, d
    ld b, c
    cp [hl]
    rla
    add sp, $07
    ld hl, sp+$0e
    ldh a, [$57]
    add sp, $1f
    ldh [$5f], a
    ldh [$2e], a
    pop af
    inc c
    di
    db $10
    rst $38
    ld a, [bc]
    db $fd
    dec bc
    db $fc
    db $10
    rst $38
    ld [hl+], a
    rst $38
    ld b, l
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $42ff
    rst $38
    ret nz

    cp $00
    db $fd
    nop
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
    ccf
    rst $38
    ld c, $ff
    nop
    rst $38
    pop bc
    rst $38
    add $ff
    ld [$00ff], sp
    rst $38
    inc bc
    rst $38
    ld b, $ff
    dec e
    rst $38
    ld sp, $d1ff
    rst $38
    dec e
    db $e3
    dec [hl]
    jp Jump_000_03c4


    dec h
    inc bc
    dec b
    inc hl
    dec b
    inc hl
    dec d
    inc hl
    dec e
    inc hl
    dec b
    inc sp
    ld b, l
    inc sp
    ld c, c
    inc sp
    ld c, c
    inc sp
    ld bc, $2133
    inc de
    ld sp, $2322
    jr nc, jr_026_7276

    ld [hl+], a
    ld hl, $1132
    ld [bc], a
    dec e
    ld c, $03
    db $10
    ld sp, $2022
    inc sp
    ld b, b
    ld d, e
    ld [$889b], sp
    sbc e
    nop
    inc de
    jr nc, jr_026_728f

    nop
    inc de
    inc b
    sbc a
    jr jr_026_727d

    ld [$081b], sp
    dec de
    ret z

    bit 0, b
    ld c, e
    db $10
    rra
    nop
    dec de
    jr nz, @+$3d

    add h
    adc a
    and l
    xor [hl]
    sub l
    ld a, [de]

jr_026_7276:
    call nc, $f45b
    ld l, e
    db $fd
    ld [c], a
    db $f4

jr_026_727d:
    set 7, l
    ld b, d
    ld b, $f9
    ld d, d
    db $fd
    inc h
    ei
    jr nz, @+$01

    ld h, [hl]
    db $fd
    ld b, [hl]
    db $fd
    ld b, [hl]
    db $fd
    ld [hl], d

jr_026_728f:
    db $fd
    inc [hl]
    rst $38
    ld [hl], h
    rst $38
    ld [hl], b
    rst $38
    ld l, b
    rst $30
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld [de], a
    rst $38
    inc l
    rst $38
    ld [$30ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add d
    db $fd
    ld bc, $02ff
    rst $38
    dec b
    cp $00
    rst $38
    sub d
    ld a, l
    add h
    ld a, e
    ld d, b
    rst $20
    inc d
    set 7, b
    rlca
    cp c
    ld b, [hl]
    inc bc
    db $fc
    and a
    ld e, b
    ld l, a
    sub b
    dec e
    ldh [rPCM34], a
    ret nz

    ld a, l
    add b
    rst $38
    nop
    rst $28
    nop
    db $fc
    ld [bc], a
    jp c, $f304

    ld [$30cf], sp
    rst $08
    jr nc, jr_026_72ee

    ldh a, [$be]
    ret z

    ld h, e
    sbc h
    add sp, $17
    sbc b
    ld h, [hl]
    sbc b
    ld h, [hl]
    inc bc
    db $fc
    ld b, $f9

jr_026_72ee:
    ld bc, $0bf2
    ldh [rNR23], a
    rst $00
    db $fc
    add e
    inc e
    inc hl
    db $10
    ld l, a
    ld bc, $02df
    rst $38
    inc b
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [$e5ff]
    rst $38
    add h
    rst $38
    ld de, $27ff
    rst $38
    adc a
    rst $38
    ccf
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
    adc $ff
    adc $ff
    sub $ff
    add $ff
    add $ff
    add $ff
    sub $ff
    sub $ff
    sbc [hl]
    rst $38
    adc [hl]
    rst $38
    adc $ff
    sub $ff
    add $ff
    jp c, $daff

    rst $38
    sub h
    rst $38
    add [hl]
    rst $38
    call z, $84ff
    rst $38
    add h
    rst $38
    add h
    rst $38
    sbc [hl]
    rst $38
    adc l
    rst $38
    xor l
    rst $18
    and h
    rst $18
    xor l
    rst $18
    adc l
    rst $38
    adc a
    rst $38
    rst $08
    cp a
    call $cdbf
    cp a
    call z, $ddbf
    cp a
    sbc l
    rst $38
    adc h
    rst $38
    sbc h
    rst $38
    adc h
    rst $38
    ld c, c

jr_026_736b:
    cp a
    adc e
    rst $38
    adc c
    rst $38
    add hl, bc
    rst $38
    ld [$08ff], sp
    rst $38
    adc c
    rst $38
    adc d
    rst $38
    ld [$01ff], sp
    rst $38
    ld d, c
    cp a
    ld bc, $01ff
    rst $38
    ld de, $81ff
    rst $38
    sub c
    rst $38
    sub e
    rst $38

jr_026_738c:
    sub c
    rst $38
    pop de
    cp a
    ld de, $71ff
    cp a
    inc sp
    rst $38
    scf
    rst $38
    cp h
    rst $38
    ld [hl], b
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    pop bc
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $40fe
    rst $38
    inc b
    ei
    add b
    ld a, a
    sbc b
    ld h, a
    or b
    ld c, a
    ld h, d
    sbc l
    ld b, a
    cp b
    rlca
    ld hl, sp+$40
    rst $38
    dec e
    ld [c], a
    rst $08
    ld sp, $06fb
    db $db
    inc b
    ld d, a
    ld [$106b], sp
    rst $18
    jr nz, jr_026_738c

    ld b, b
    ld l, l
    add b
    sbc l
    nop
    ld [hl], d
    ld bc, $0241
    and [hl]
    nop
    ret


    nop
    ld a, [c]
    ld bc, $04e3
    ld b, d
    jr z, jr_026_73f6

    ld c, b
    jr jr_026_736b

    nop
    daa
    pop af
    rrca
    and d
    rra
    jp nz, Jump_026_441f

    inc a
    sbc b
    ld a, l
    ld d, b
    or l
    jr nz, @-$07

    ld [bc], a
    db $ed

jr_026_73f6:
    add c
    rst $08
    adc a
    rst $10
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
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
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ei
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
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    cp a
    cp a
    rst $18
    cp a
    ccf
    cp a
    ld e, a

jr_026_7451:
    cp a
    rst $18
    cp a
    ld e, a
    cp a
    rra
    rst $38
    rra
    rst $38
    ld a, $ff
    ld e, a
    cp a
    ld a, a
    cp a
    ld a, [hl]
    cp a
    inc a
    rst $38
    cp [hl]
    ld a, a
    cp e
    ld a, a
    ld l, b
    rst $38
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    ldh a, [rIE]
    sbc b
    rst $38
    call nz, $e2ff
    rst $38
    ldh a, [rIE]
    sbc b
    rst $38
    add sp, -$01
    or $ff
    ei
    rst $38
    call nc, $e8ff
    rst $38
    add h
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $18
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [bc], a
    db $fd
    add b
    ld a, a
    add h
    ld a, e
    inc b
    ei
    or d
    ld c, l
    ld a, h
    add e
    db $fd
    inc bc
    ld a, h
    inc bc
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    pop bc
    ld a, $d0
    cpl
    add b
    ld e, a
    jr nc, jr_026_7451

    ret nz

    rra
    and c
    rra
    ld c, d
    daa
    inc d
    rst $28
    ld c, b
    ccf
    ld c, b
    ccf
    sub b
    ld a, a
    jr nz, @+$01

    ld d, b
    rst $28
    and c
    rst $18
    ld h, c
    adc a
    inc sp
    rst $08
    rla
    rst $28
    rrca
    rst $38
    ld e, $ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    add b
    ld a, h
    add e
    cp $01
    ld a, h
    add e
    ld a, h
    add e
    db $f4
    dec bc
    ldh a, [rIF]
    add b
    ld a, a
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
    add b
    rst $38
    pop af
    cp $73
    db $fd
    sbc a
    rst $38
    adc a
    rst $38
    jp $a1ff


    rst $38
    sbc b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ret c

    rst $38
    and $ff
    ld a, [$e8ff]
    rst $38
    xor $ff
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
    db $e4
    rst $38
    ld a, [c]
    rst $38
    jr nc, @+$01

    ld [$80ff], sp
    rst $38
    nop
    rst $38
    ld b, $f9
    add e
    db $fc
    ld bc, $22fe
    db $fd
    rlca
    ld hl, sp+$1b
    db $ec
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld [bc], a
    db $fd
    add c
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff

jr_026_75a3:
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr jr_026_75a3

    inc [hl]
    db $eb
    ld c, h
    di
    and b
    rst $18
    and b
    rst $18
    ld b, a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
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
    rst $38
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld a, [c]
    cp $f6
    rst $38
    db $ec
    rst $38
    ret z

    db $fc
    sbc e
    ld hl, sp+$37
    rst $38
    ld h, b
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
    ld bc, $00ff
    rst $38
    nop
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
    ldh [$1f], a
    ldh [$1f], a
    and b
    ld e, a
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
    ld a, [bc]
    push af
    rrca
    ldh a, [rIF]
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
    ld b, b
    rst $38
    ret nz

    rst $38
    ldh [$7f], a
    ld hl, sp+$3f
    call c, $ee1f
    ccf
    jp $f10f


    rra
    ldh [rIF], a
    ldh a, [$5f]
    ldh [rIF], a
    ldh a, [$81]
    cp $a9
    or $c7
    ld hl, sp-$3f
    cp $f8

jr_026_764d:
    rst $38
    ld a, [$3ffd]
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b

jr_026_765f:
    ld l, a
    ldh [$1f], a
    or $09
    ld a, a
    add b
    cp a
    ld b, b
    cp $01
    or $09
    ld a, c
    add [hl]
    inc a
    jp $e11e


    ld h, a
    sbc b
    ld [hl], e
    adc h
    or b
    ld c, a
    ld e, b
    and a
    ld h, h
    sbc e
    jr nc, jr_026_764d

    jr nz, jr_026_765f

    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    add d
    rst $38
    ld b, c
    rst $38
    add b
    rst $38
    jr z, @+$01

    inc b
    rst $38
    ld h, l
    rst $38
    ret c

    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld d, c
    rst $28
    ld b, b
    rst $38
    add b
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld [$19ff], sp
    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
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
    or $fe
    db $f4
    db $fc
    db $ec
    ld hl, sp-$28
    ld sp, hl
    or b
    ld a, [c]
    ld hl, $41e6
    call z, $98c3
    add a
    or b
    rrca
    ld h, e
    inc e
    add $38
    adc a
    ld [hl], b
    rra
    ldh [$3f], a
    pop bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    ld bc, $05ff
    rst $38
    rlca
    rst $38
    rla
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
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
    or b
    ld c, a
    ldh [$1f], a
    cp $01
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
    pop bc

jr_026_772b:
    cp $61
    cp $3b
    db $fc
    db $fc
    ld c, $f7
    rlca
    ld sp, hl
    ld bc, $00f8
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $08
    or b
    rst $28
    sub b
    db $ed
    ld a, [c]
    db $fc
    ei
    cp $fd
    cp $ff
    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    db $e3
    rra
    inc h
    rst $18
    jr nc, jr_026_772b

    inc c
    di
    add h
    ld a, e
    ld [bc], a
    db $fd
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $10ff
    rst $38
    ret z

    ccf
    ld b, b
    cp a
    ld bc, $00ff
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    sub $ff
    ld l, a
    rst $38
    rla
    rst $38
    rrca
    rst $38
    ld h, a
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    sbc $ff
    call c, $fdfe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh [$e3], a
    add b
    pop bc
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ldh [$c0], a
    cp a
    add b
    cp a
    rlca
    ld [hl], $0e
    ld h, l
    dec e
    db $ed
    ld de, $6399
    scf
    rst $00
    daa
    rst $08
    cpl
    rst $08
    ld e, a
    sbc a
    sbc a
    ccf
    rra
    ld a, a
    ld a, a
    ld a, a
    cp l
    ld a, [hl]
    ld a, [hl]
    db $fd
    ei
    db $fd
    push af
    ei
    ei
    rst $30
    rst $28
    rst $30
    rst $10
    rst $28
    rst $08
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
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
    ccf
    rst $38
    ccf
    rst $38
    rrca
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
    ld a, a
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop

jr_026_7813:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld hl, sp+$07
    cp $01
    nop
    nop
    nop
    add b
    add b
    ret nz

    ldh [$f0], a
    jr nc, jr_026_7866

    inc e
    ld e, $87
    ld b, $e3
    inc bc
    ld sp, hl
    nop
    rst $38
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
    ld h, b
    add $b9
    pop af
    sbc $f0
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
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ret nc

    rst $38
    ld l, h
    rst $38
    add $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_026_7866:
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
    cp $fe
    db $fc
    db $fc
    db $fd
    db $ec
    ld sp, hl
    ret c

    ld a, [c]
    pop af
    push hl
    ld [c], a
    set 0, h
    add $c8
    db $e3
    sbc h
    rst $00
    jr c, jr_026_7813

    ld [hl], b
    sbc l
    ld h, c
    dec a
    pop bc
    ei
    inc bc
    ld [hl], a
    rlca
    ld l, a
    rrca
    rrca
    rrca
    rra
    rra
    rra
    ccf
    cp a
    cp a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $30
    rst $28
    rst $30
    rst $10
    rst $28
    rst $28
    rst $18
    cp a
    rst $18
    ld e, a
    cp a
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld bc, $01ff
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
    db $fc
    inc bc
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
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    inc e
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $30
    ld [$c738], sp
    add b
    ld a, a
    nop
    rst $38
    add h
    rst $38
    and e
    rst $38
    db $dd
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
    cp $ff
    cp $ff
    db $fc
    ld hl, sp-$07
    ldh a, [$f3]
    pop hl
    and $e3
    ld h, h
    ret z

    rst $00
    sbc c
    add [hl]
    ccf
    nop
    ccf
    ld bc, $7f81
    inc bc
    rst $38
    rlca
    rst $38
    sbc a
    rst $20
    ccf
    rst $08
    ld a, a
    sbc a
    rst $18
    rra
    cp a
    ccf
    cp a
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
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    cp a
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
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $01ff
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
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    add e
    ld hl, sp-$39
    ldh [$7f], a
    cp b
    ld a, a
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    sbc [hl]
    rst $38
    cp h
    rst $38
    ld a, b
    db $fd
    ld hl, sp-$05
    ldh a, [$f3]
    ldh [$f7], a
    pop bc
    xor $c0
    rst $08
    add b
    sbc a
    inc b
    dec sp
    add hl, bc
    ld [hl], a
    inc de
    rst $28
    ld h, a
    sbc a
    ld b, a
    cp a
    rst $08
    ccf
    sbc a
    ld a, a
    ld e, a
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
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
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
    rlca
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
    inc bc
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
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld e, a
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
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
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
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    inc c
    dec c
    ld c, $0f
    nop
    db $10
    ld de, $1207
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $16
    ld d, $17
    jr jr_026_7a8b

    add hl, de
    nop
    nop
    nop
    ld a, [de]
    dec de
    jr jr_026_7a92

jr_026_7a8b:
    rlca
    rlca
    rlca
    rlca
    rlca
    inc e
    dec e

jr_026_7a92:
    ld e, $1f
    jr nz, jr_026_7ab7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_026_7ac7

    ld a, [hl+]
    dec hl
    rlca
    inc l
    dec l
    ld l, $2f
    rlca
    rlca
    rlca
    rlca
    rlca
    jr nc, jr_026_7adc

    rlca
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_026_7aef

    ld a, [hl-]

jr_026_7ab7:
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
    ld b, b
    ld b, c

jr_026_7ac7:
    ld b, d
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    nop
    nop
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    rlca

jr_026_7adc:
    rlca
    rlca
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    nop
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    rlca
    rlca
    ld e, e

jr_026_7aef:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    nop
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    rlca
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


    jp z, Jump_000_0707

    set 1, h
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
    add sp, $01
    ld bc, $0101
    ld bc, $0101
    inc bc
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
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0121
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0103
    ld bc, $0001
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld b, e
    nop
    inc b
    dec b
    dec b
    inc b
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
    inc b
    dec b
    dec b
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    dec b
    dec b
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    dec b
    inc b
    dec b
    nop
    nop
    nop
    dec b
    dec b
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0301
    dec b
    dec b
    dec b
    inc b
    nop
    nop
    inc b
    dec b
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0301
    dec b
    dec b
    dec b
    inc b
    nop
    inc b
    inc b
    dec b
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0301
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    ld b, $04
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
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    dec b
    dec b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    dec b
    inc b
    dec b
    inc b
    inc b
    inc b
    inc b
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
    inc b
    inc b
    dec b
    inc b
    inc b
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
    inc b
    dec b
    dec b
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc bc
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $fffe
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
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
    jr c, jr_026_7e71

    jr jr_026_7e4f

    sbc e
    sbc e
    sbc h
    sbc a
    db $fc
    rst $38
    sbc e
    sbc e
    add hl, bc
    ld [$0001], sp
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

jr_026_7e4f:
    nop
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
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
    ld b, $f9
    ld c, $f1
    rrca
    ldh a, [$1f]

jr_026_7e71:
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

    ld a, a
    add b
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    db $fd
    inc bc
    ld a, l
    inc bc
    ld a, l
    inc bc
    dec a
    inc bc
    dec a
    inc bc
    dec a
    inc bc
    dec a
    inc bc
    dec e
    inc bc
    dec e
    inc bc
    ld e, $01
    ld e, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld c, $01
    ld b, $01
    ld b, $01
    ld b, $01
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
    rst $38
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
    rst $38
    rra
    rst $38
    rra
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
    ld hl, sp-$01
    ld hl, sp-$01
    cp b
    rst $38
    ld hl, sp-$01
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    jr c, @+$01

    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    call c, $fcff
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
    cp a
    rst $38
    cp a
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

jr_026_7fdd:
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    ld a, e
    rst $38
    ld a, d
    rst $38
    ld a, b
    rst $38
    inc d
    rst $28
    inc c
    rst $38
    adc b
    rst $38
    ld c, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nz, jr_026_7fdd

    nop
    rst $38
