SECTION "ROM Bank $045", ROMX[$4000], BANK[$45]

    ei
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
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

Jump_045_403b:
    nop
    rst $38
    nop
    rst $28
    db $10
    xor b
    nop
    ld d, h
    nop
    and d
    nop
    ld d, a
    nop
    cp $ff
    rst $38
    rst $38
    ld bc, $03ff
    rst $38
    di
    db $fc
    xor l
    rst $18
    rst $28
    db $10
    ret nz

    nop
    ld l, d
    add b
    ld sp, hl
    rlca
    add b
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    xor d
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$54ff], a
    rst $38
    xor c
    cp $53
    db $fc
    xor a
    ldh a, [$5f]
    ldh [$28], a
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ldh a, [rIF]
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
    ei
    db $fc
    cp a
    ret nz

    xor a
    nop
    ld e, a
    nop
    ld d, l
    xor d
    ld a, [$fc05]
    inc bc
    cp [hl]
    ld b, c
    ld [hl], h
    adc e
    xor d
    ld d, l
    ld d, l
    xor d
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
    rst $28
    nop
    rst $18
    nop
    ei
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [$ff00]
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
    xor b
    nop
    nop
    nop
    and b
    nop
    ld d, l
    nop
    db $10
    rst $28
    rst $38
    rst $38
    rst $28
    rst $38
    cp [hl]
    pop hl
    cp $01
    cp l
    pop bc
    add c
    add c
    pop bc
    ld bc, $8181
    ld bc, $2081
    nop
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add d
    rst $38
    ld a, d
    add l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ccf
    ret nz

    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    pop bc
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $9f
    ldh [$bf], a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld [hl], a
    nop
    ld b, b
    cp a
    ret z

    scf
    ld b, h
    cp e
    add d
    ld a, l
    ld b, l
    cp d
    adc e
    ld [hl], h
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
    rst $38
    nop
    db $fd
    nop
    cp d
    nop
    push de
    nop
    cp d
    nop
    ld e, l
    nop
    cp d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    xor a
    nop
    rst $38
    nop
    cp a
    nop

Jump_045_419e:
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_045_41a7:
    nop
    ld l, d
    add b
    db $fd
    rst $38
    ld e, a
    rst $38
    and e
    ld a, h
    rra
    ldh [$c0], a
    rst $38
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    jr nc, @+$01

    ld d, b
    xor a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ld e, b
    rst $20
    sbc a
    ldh [$5f], a
    ldh [$9f], a
    ldh [$f0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    jr nc, jr_045_41a7

    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$aa]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38

Jump_045_41ee:
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    db $fd
    cp $df
    ldh [rIE], a
    nop
    di
    inc c
    cp $00
    db $dd
    nop
    cp a
    nop
    ld [hl], a
    nop
    ld d, l
    xor d
    adc b
    ld [hl], a
    inc b
    ei
    xor d
    ld d, l
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
    ld e, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld e, a
    nop
    cp e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
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
    and b
    nop
    ld b, b
    rst $38
    rst $38
    rst $38
    ldh a, [rIF]
    nop
    nop
    rst $38
    nop
    adc a
    nop
    nop
    nop
    nop
    nop
    push af
    nop
    inc de
    rst $28
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ld a, [c]
    rrca
    push af
    rrca
    ld [c], a
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$08
    rlca
    add c
    ld a, [hl]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    add b
    rst $38
    cp $ff
    cp a
    rst $38
    ld a, a
    rst $38
    xor d
    rst $38
    ld e, [hl]
    rst $38
    xor e
    cp $55
    cp $a9
    cp $57
    db $fc
    xor e
    db $fc
    ld d, e
    db $fc
    xor a
    ld hl, sp+$57
    ld hl, sp+$00
    rst $38
    inc b
    rst $38
    call nz, Call_000_2afb
    push de
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, h
    xor e
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$45ba]
    db $fd
    ld [bc], a
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
    rst $38
    nop
    ld a, a
    nop
    cp $00
    ld a, a
    nop
    ei
    nop
    ld [hl], l
    nop
    xor e
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    rst $10
    nop
    rst $28
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$f000]
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, h
    inc bc
    ld b, b
    ccf
    or $0f
    rlca
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    dec d
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    or b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    db $10
    rst $38
    adc d
    ld a, a
    dec d
    rst $38
    jp z, Jump_000_153f

    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec c
    ld a, [c]
    ld a, a
    add b
    or c
    ld c, [hl]
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    ld c, a
    or b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop

Jump_045_4380:
    add d
    ld a, l
    cp $01
    rst $28
    ld bc, $01f6
    rst $38
    nop
    ld d, l
    nop
    ei
    nop
    db $fd
    nop
    inc d
    db $eb
    ld h, $d9
    ld b, l
    cp d
    xor d
    ld d, l
    ld [hl], l
    adc d
    and a
    ld e, b
    ld [hl], l
    adc d
    rst $28
    db $10
    rst $30
    ld [$10ef], sp
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
    rst $18
    nop
    rst $38
    nop
    ld e, a
    nop
    rst $38
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor [hl]
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor [hl]
    nop
    ld e, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
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
    nop
    nop
    nop
    nop
    xor h
    nop
    rla
    add sp, -$01
    rst $38
    rst $38
    rst $38
    rrca
    ldh a, [rNR41]
    rst $18
    rst $38
    rst $38
    ret nz

    ccf
    ld hl, sp+$07
    ld a, b
    rlca
    ld a, a
    rst $38
    ld a, a
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
    db $fd
    rst $38
    xor d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    db $fd
    rst $38
    ld a, [$75ff]
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_045_443f:
    nop
    rst $38
    nop
    rst $38
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
    ld l, b
    cp h
    ld b, e
    ld a, a
    cp $7d
    cp $7f
    cp $ec
    rst $38
    db $eb
    cp $72
    rst $38
    ld b, b
    rst $38
    add l
    ld a, [$ff80]
    ld [$00f7], sp
    rst $38
    adc h
    ld [hl], e
    nop
    rst $38
    ld e, $e1
    ld h, d
    sbc l
    rst $38
    nop
    ld [$09ff], sp
    rst $38
    ld l, b
    cp a
    db $10
    rst $38
    nop
    rst $38
    and b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    add d
    ld a, l
    add l
    ld a, d
    and b
    ld e, a
    add l
    ld a, d
    xor d
    ld d, l
    add l
    ld a, d
    xor b
    ld d, a
    sub l
    ld l, d
    xor b
    ld d, a
    push de
    ld a, [hl+]

jr_045_4496:
    xor d
    ld d, l
    rst $30
    ld [$44bb], sp
    push af
    ld a, [bc]
    ld a, [$ff05]
    nop
    ld a, a
    nop
    rst $10
    jr z, @+$01

    nop
    rst $18
    jr nz, jr_045_4496

    inc d
    rst $38
    nop
    rst $38
    nop
    push de
    ld a, [hl+]
    ei
    inc b
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, e
    inc b
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    or a
    ld [$007f], sp
    or a
    ld [$146b], sp
    db $fd
    ld [bc], a
    ld a, [$f705]
    ld [$14eb], sp
    push af
    ld a, [bc]
    xor $11
    push af
    ld a, [bc]
    ld [$f515], a
    ld a, [bc]
    ld [$fd15], a
    ld [bc], a
    ld [$f415], a
    dec bc
    ld [$f815], a

jr_045_44e9:
    rlca
    ld hl, sp+$07
    db $f4
    dec bc
    ldh a, [rIF]
    ld c, $00
    rrca
    nop
    rrca
    nop
    rrca
    nop
    cpl
    nop
    rst $20
    jr @+$01

    rst $38
    rst $38
    rst $38
    xor $1f
    rra
    ldh [$f8], a
    rst $38
    ld a, [de]
    db $fd
    jr z, jr_045_44e9

    ld c, [hl]
    cp l
    cp $fd
    db $fc
    rst $38
    add b
    ld a, a
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
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
    ld h, e
    sbc h
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, a
    or b
    rst $38
    nop
    db $fc
    inc bc
    ccf
    ret nz

    rra
    ldh [$bf], a
    ld b, b
    push af
    ld a, [bc]
    ld [$d515], a
    ld a, [hl+]
    ei
    inc b
    rst $30
    ld [$04fb], sp
    rst $30
    ld [$00ff], sp
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
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld l, e
    add b

jr_045_4592:
    rst $10
    nop
    ld a, e
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $18
    nop
    ld l, e
    add b
    push de
    nop
    ld [$d500], a
    nop
    ld [$dd00], a
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld a, [$f500]
    nop
    ei
    nop
    push af
    nop
    ld a, [hl]
    add b
    rst $38
    nop
    ld e, e
    and b
    cp a
    ld b, b
    rst $18
    jr nz, jr_045_4592

    ld b, b
    ld e, a
    and b
    xor a
    ld d, b
    ld e, a
    and b
    xor a
    ld d, b
    ld e, a
    and b
    adc a
    ld [hl], b
    ldh [rP1], a
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rst $38
    nop
    jr c, @-$37

    rra
    rst $20
    rlca
    cp $85
    ld a, [hl]
    ld b, $ff
    rlca
    rst $38
    inc bc
    rst $38
    nop
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
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    sbc b
    ld h, a
    adc $31
    cp $01
    rst $08
    jr nc, @+$01

    nop
    ld e, e
    and h
    rst $38
    nop
    rst $30
    ld [$0af5], sp
    xor d
    ld d, l
    ld d, l
    xor d
    xor a
    ld d, b
    ld a, a
    add b
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
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ld a, [$dd00]
    nop
    xor d
    nop
    push de
    nop
    ld [$5500], a
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    ld d, l
    nop
    and d
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, h
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld b, b
    nop
    add d
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    ld [$d500], a
    nop
    ld [$5500], a
    nop
    xor [hl]
    nop
    push af
    nop
    ld [$7d00], a
    nop
    rst $28
    nop
    push af
    nop
    ld [$ff00], a
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
    rst $38
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
    push de
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    rst $38
    nop
    adc [hl]
    db $fd
    rst $38
    rst $38
    rst $38
    nop
    cp l
    ld b, d
    sbc a
    ld h, b
    cp $ff
    rst $28
    rst $38
    rla
    add sp, $44
    rst $38
    rst $18
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    rst $18
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    add hl, sp
    add $89
    db $76
    adc b
    ld [hl], a
    adc a
    ld [hl], b
    sbc b
    ld h, a
    di
    inc c
    ld a, a
    add b
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
    db $fd
    nop
    cp $00
    push af
    nop
    ld a, [$d500]
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    nop
    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_045_47aa

jr_045_47aa:
    nop
    nop
    add b
    nop
    ld b, b
    nop
    xor b
    nop
    ld d, b
    nop
    add sp, $00
    call nc, $aa00
    nop
    push de
    nop
    cp $00
    push af

Jump_045_47bf:
    nop
    cp $00
    ld d, l
    nop
    xor d
    nop
    push af
    nop
    ld [$7500], a
    nop
    ld [$ff00], a
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld l, a
    sub b
    rst $38
    rst $38
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    ld d, [hl]
    ld sp, hl
    rst $38
    rst $38
    sub e
    ld l, h
    rlca
    ld hl, sp-$03
    ld [bc], a
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    rst $38
    ld a, [hl+]
    rst $38
    nop
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    ld a, [hl+]
    rst $38
    sub l
    ld a, a
    ld a, [hl+]
    rst $38
    ld d, l
    cp a
    ld l, d
    sbc a
    ld h, l
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
    rst $38
    nop
    cp $00
    db $dd
    nop
    ld a, [$d500]
    nop
    xor b
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, c
    nop
    xor b
    nop
    inc b
    nop
    adc b
    nop
    ld b, b
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
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$7700], a
    nop
    xor [hl]
    nop
    push de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and d
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
    inc e
    db $e3
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    rst $38
    db $e3
    ld e, a
    cp a
    ld b, b
    pop hl
    ld e, $7f
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    push de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld bc, $00ff
    rst $38
    push af
    rst $38
    cp e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
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
    jr jr_045_48f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_045_4903

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_045_4913

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_045_4923

    ld [hl-], a

jr_045_48f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_045_4933

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_045_4903:
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

jr_045_4913:
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

jr_045_4923:
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

jr_045_4933:
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
    jr jr_045_49f3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_045_4a03

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_045_4a23

    ld [hl-], a

jr_045_49f3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_045_4a33

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
    nop

jr_045_4a03:
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    nop
    dec b
    dec b
    inc b
    inc b
    nop
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
    dec b
    inc b
    ld bc, $0304
    ld [bc], a
    inc bc

jr_045_4a23:
    ld b, $00
    ld b, $03
    nop
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0404
    inc bc
    ld b, $06

jr_045_4a33:
    ld b, $00
    ld b, $03
    inc bc
    nop
    nop
    nop
    nop
    dec b
    dec b
    inc b
    dec b
    ld b, $06
    ld b, $06
    nop
    inc bc
    ld b, $03
    nop
    nop
    nop
    nop
    dec b
    dec b
    dec b
    inc b
    nop
    inc bc
    inc bc
    ld b, $00
    inc bc
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
    nop
    nop
    inc bc
    ld b, $00
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld b, $00
    nop
    inc bc
    nop
    nop
    nop
    nop
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
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld bc, $0600
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    dec b
    ld bc, $0606
    ld b, $03
    ld b, $00
    ld [bc], a
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
    ld [bc], a
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
    inc bc
    inc bc
    ld b, $00
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
    inc bc
    inc bc
    inc bc
    nop
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
    ld [bc], a
    ld [bc], a
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    inc c
    inc c
    ld a, [bc]
    ld [$0808], sp
    ld [$090a], sp
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    rrca
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
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
    rrca
    dec bc
    ld a, [bc]
    ld [$0808], sp
    rst $38
    rst $38
    ldh [rIE], a
    db $eb
    db $f4
    cp $f0
    ldh a, [$fe]
    push af
    ld hl, sp-$02
    rst $38
    db $fc
    rst $38
    call c, $dff9
    ld hl, sp-$22
    db $fc
    ld c, a
    db $fc
    dec h
    cp $24
    ld a, [$f00e]
    ld a, [de]
    push hl
    sub l
    ld sp, hl
    sub h
    ld hl, sp-$64
    ei
    jp z, $c8fc

    cp $cd
    cp $55
    cp $44
    rst $38
    ld h, h
    rst $38
    or d
    rst $38
    and e
    rst $38
    sub d
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    add sp, -$01
    add sp, -$01
    db $ec
    rst $38
    db $e4
    rst $38
    call z, $e4ff
    rst $38
    add $ff
    ld [hl-], a
    rst $38
    or d
    rst $38
    inc hl
    rst $38
    add hl, sp
    rst $38
    xor c
    rst $38
    db $dd
    rst $38
    adc $ff
    add sp, -$01
    ret


    rst $38
    db $f4
    rst $38
    and $ff
    and $7f
    db $db
    ld a, a
    ld l, e
    ld a, a
    and e
    ld a, a
    ld de, $75ff
    rra
    dec e
    rra
    nop
    rra
    ld e, b
    rrca
    ld c, b
    rrca
    inc e
    rrca
    inc b
    rst $38
    call nz, Call_000_3a07
    rlca
    rra
    inc bc
    rst $38
    inc bc
    ei
    ld bc, $0bf5
    xor c
    ld a, a
    ld l, $d1
    rst $38
    nop
    cp $01
    ld [hl], $c8
    ccf
    ret nz

    ld d, $0b
    or a
    ld a, b
    ld l, a
    sub b
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld a, c
    add a
    rst $18
    ld a, $ed
    ldh a, [$7f]
    add b
    ld a, [$f600]
    nop
    db $10
    ld hl, $061f
    ld a, a
    inc a
    db $dd
    db $e3
    ldh a, [rIF]
    cp b
    ld c, a
    sub a
    ld l, c
    ccf
    rst $28
    ld sp, hl
    cp $fb
    db $e4
    rla
    add sp, $4a
    or h
    ld [bc], a
    rst $38
    sbc h
    rst $38
    push af
    cp $99
    and $a9
    sub $d9
    and [hl]
    and d
    push de
    ld a, [$fa85]
    add l
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld e, e
    add h
    ld a, e
    add h
    db $eb
    inc b
    di
    inc b
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc d
    rst $28
    inc b
    rst $38
    add h
    ld a, a
    inc b
    rst $38
    dec b
    cp $08
    rst $38
    inc c
    rst $38
    ld a, h
    rst $38
    adc c
    cp $48
    cp a
    nop
    rst $38
    add c
    ld a, [hl]
    xor c
    ld e, [hl]
    ld a, a
    rst $10
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
    ccf
    rst $38
    rst $38
    nop
    ret z

    nop
    cp e
    nop
    call nc, $e000
    inc b
    ld b, b
    ld [$0045], sp
    inc h
    nop
    ld l, l
    ld [de], a
    add b
    rst $38
    ld l, b
    nop
    cp l
    nop
    ld [hl], a
    add b
    ld l, h
    add b
    ld [hl-], a
    add b
    ld h, e
    add b
    ld [hl-], a
    ret nz

    xor b
    rst $10
    db $76
    add sp, -$80
    ret nz

    ldh [$c0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$e0]
    ld [hl], b
    ldh [$73], a
    db $f4
    ld a, l
    cp $38
    ldh a, [$28]
    ld hl, sp+$10
    ld hl, sp+$11
    db $fc
    inc h
    cp $15
    cp $39
    cp $1b
    rst $38
    sbc e
    cp $98
    cp $89
    cp $89
    rst $38
    push bc
    rst $38
    ld c, c
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    and e
    rst $38
    ld [hl+], a
    rst $38
    ld [de], a
    rst $38
    ret nc

    rst $38
    pop de
    rst $38
    xor b
    rst $38
    ld hl, sp-$01
    ld e, d
    rst $38
    ld e, h
    rst $38
    ld h, h
    rst $38
    ld h, $ff
    ld [hl-], a
    rst $38
    and d
    rst $38
    ld d, c
    rst $38
    pop de
    rst $38
    pop bc
    rst $38
    set 7, a
    db $ed
    rst $38
    push hl
    rst $38
    ld b, a
    ld a, a
    ld b, e
    ld a, a
    db $eb
    ld [hl], a
    db $e4
    dec sp
    cp [hl]
    ld sp, $7ba4
    push af
    dec de
    db $f4
    dec de
    db $fc
    rst $38
    sbc e
    cpl
    ld c, $2f
    ld b, $8f
    inc b
    rlca
    rla
    ld c, $ff
    db $76
    or $8b
    sbc $23
    rst $30
    dec bc
    cp e
    ld b, a
    ld a, l
    cp d
    ld a, [$abe1]
    ld b, h
    rst $38
    nop
    db $fc
    inc bc
    ld a, a
    adc a
    or e
    ld a, h
    adc $f1
    ld e, a
    and b
    ld e, $e1
    ld e, $e1

jr_045_4d08:
    ld e, a
    and b
    ld e, d
    and l
    ld e, a
    and b
    rst $18
    jr nz, @+$14

    db $ed
    ld hl, $2afe
    push af
    cpl
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$b0]
    nop
    jr nc, jr_045_4d24

jr_045_4d24:
    ldh [rP1], a
    ldh a, [rP1]
    ld [hl], b
    nop
    or b
    nop
    ld [hl], b
    nop
    or b
    nop
    ld c, a
    or b
    call Call_045_6f32
    sub b
    rst $08
    jr nc, jr_045_4d88

    or b
    rst $18
    jr nc, jr_045_4d08

    inc [hl]
    ld c, a
    or b
    rst $38
    rst $38
    nop
    sbc a
    inc a
    add d
    nop
    jp hl


    ld [bc], a

jr_045_4d49:
    or b
    nop
    db $fd
    rst $38
    rst $38
    cp $ff
    rst $28
    db $10
    daa
    ld hl, sp+$1d
    ldh [rIE], a
    ld b, b
    cp a
    ld b, b
    jp c, $ff20

    jr nz, jr_045_4d49

    rst $38
    ret nz

    rst $38
    nop
    sbc b
    nop
    sub b
    nop
    add hl, bc
    nop
    and c
    nop
    ld a, [de]
    nop
    xor $00
    rst $28
    ld d, h
    rst $38
    rst $30
    nop
    cp b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    rst $38
    nop
    ld l, a
    sbc a
    ldh a, [$80]
    nop
    nop
    nop
    nop

jr_045_4d88:
    nop
    nop
    dec d
    ld [bc], a
    dec b
    nop
    ld l, $01
    ld a, h
    rst $38
    ld h, a
    ld hl, sp+$3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    ld [hl], c
    add b
    or l
    nop
    cp a
    rst $38
    db $eb
    db $fc
    or a
    add b
    sbc c
    ret nz

    jp c, $f3c0

    ret nz

    sub $c1
    rst $38
    rst $38
    ld a, h
    ldh [$60], a
    ldh [rNR41], a
    ldh [$af], a
    ldh a, [$b5]
    ldh a, [$b9]

jr_045_4dbb:
    ld a, [c]
    ld a, [hl]
    db $fd
    jr c, @-$06

    jr jr_045_4dbb

    inc a
    ld hl, sp+$78
    db $fc
    ld e, [hl]
    db $fc
    ld a, a
    db $fd
    sbc $fc
    cp [hl]
    cp $cf

jr_045_4dcf:
    cp $7f
    cp $fe
    rst $38
    rst $38
    rst $38

jr_045_4dd6:
    cp a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    push de
    ccf
    or l
    ld a, a
    push af
    rra
    inc de
    rrca
    add a
    dec de
    add h
    dec bc
    adc e
    nop
    add e
    add b
    jp nz, $a280

    add c
    rst $10
    ld bc, $2052

jr_045_4e00:
    db $e3
    jr c, jr_045_4dd6

    jr z, jr_045_4e00

    nop
    ei
    nop
    db $fd
    nop
    ld hl, sp+$00
    ld a, l
    add b
    call c, $dc00
    nop
    call c, $c400
    nop
    sbc h
    nop
    adc [hl]
    nop
    or [hl]
    nop
    add [hl]
    nop
    sub d
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    cp h
    ld b, e
    cp l
    ld b, e
    cp l
    ld b, e
    cp a
    ld b, c
    xor h
    ld d, e
    cp [hl]
    ld b, c
    xor [hl]
    ld d, c
    xor h
    ld d, e

jr_045_4e3c:
    xor b
    ld d, a
    xor h
    ld d, e
    rst $38
    rst $38
    ld bc, $007f
    scf
    nop
    sub e
    and b
    rra
    jr z, jr_045_4dcf

    rst $38
    rst $38
    pop af
    rst $38
    rst $38
    nop
    ld [hl], d
    add b
    rst $28
    nop
    cp $00
    cp $00
    cp $00
    rst $18
    jr nz, jr_045_4e3c

    rst $38
    ld a, e
    add h
    sub a
    inc b
    ld e, e
    inc b
    ei
    inc b
    db $fc
    ld [bc], a
    and b
    ld [bc], a
    ld bc, $c102
    ccf
    rra
    ldh [$e1], a
    nop
    sub e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push hl
    rra
    ld h, d
    ret nc

    ld [hl+], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $1112
    jr nz, jr_045_4e9c

    ld hl, $0b25
    ld a, a
    add b
    ld b, b
    rst $38
    db $fc
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    add hl, bc
    nop

jr_045_4e9c:
    ld a, h
    inc bc
    adc h
    ld a, a
    add $f8
    ld [hl], l
    nop
    halt
    sbc $00
    ld e, a
    nop
    cp c
    inc bc
    ld a, l
    rst $38
    pop de
    rst $38
    ld [$00ff], sp
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ldh a, [$fe]
    add b
    db $ed
    nop
    db $fc
    nop
    add b
    nop
    nop
    rlca
    inc bc
    nop
    inc a
    ld b, l
    add d
    sub b
    nop
    add b
    nop
    ld bc, $0f00
    ld [bc], a
    ldh a, [$08]
    nop
    add b
    nop
    nop
    add b
    nop
    ld [bc], a
    add c
    sbc a
    add h
    ld a, e
    ldh a, [$7f]
    ret nz

    rst $38
    ret nz

    ei
    ret nz

    ld e, e
    rst $28
    ld a, l
    cp $ef
    ldh a, [$eb]
    db $f4
    db $f4
    ei
    rst $30
    rst $38
    rst $18
    rst $28
    ld a, b
    rst $38
    dec a
    cp $7c
    rst $30
    db $f4
    ld a, a
    call nc, $db4f
    ld b, $a2
    ld e, a
    cp b
    ld b, a
    or h
    ld c, e
    ld a, h
    inc bc
    db $76
    ld bc, $01fe
    rrca
    jr nz, jr_045_4f1e

    jr nz, jr_045_4f48

    nop
    scf
    nop
    scf
    nop
    rlca
    db $10
    scf
    db $10
    ld d, a
    jr nc, @-$0b

    nop

jr_045_4f1e:
    ld a, [hl-]
    nop
    nop
    rst $38
    ld [$eaff], sp
    dec e
    add d
    ld a, l
    ld [bc], a
    db $fd
    ld sp, $93ce
    ld l, h
    sbc [hl]
    ld h, l
    add [hl]
    inc b
    ld [de], a
    inc b
    sub a
    nop
    sub b
    ld [bc], a
    ret nc

    ld [bc], a
    dec de
    add d
    or l
    add d
    ld l, c
    add d
    ld a, b
    rst $38
    cp $01
    ld a, e
    nop
    ld a, e
    nop

jr_045_4f48:
    di
    nop
    adc $00
    rst $28
    rst $38
    adc a
    ld [hl], b
    db $ed
    nop
    ld e, h
    nop
    cp a
    nop
    sbc a
    nop
    cp $00
    pop af
    nop
    cp $01
    jr nz, @+$01

    rst $38
    nop
    ld a, a
    nop
    db $dd
    nop
    rst $38
    nop
    rla
    nop
    ret z

    nop
    ld hl, sp+$07
    ld b, b
    rst $38
    sub b
    nop
    ret z

    nop
    cp [hl]
    nop
    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    ret nz

    ccf
    add e
    db $fc
    nop
    nop
    ld bc, $0000
    nop
    ld [$4000], sp
    nop
    ld c, d
    ld bc, $ee75
    ld hl, sp+$00
    nop
    push af
    nop
    rst $38
    nop
    rst $28
    nop
    db $fc
    nop
    adc h
    ld b, $7f
    db $fc
    rst $38
    ld b, b
    jp nc, Jump_045_403b

    ccf
    ld b, b
    ld a, e
    nop
    ld c, $21
    inc b
    ccf
    rlca
    ld hl, sp-$04
    nop
    ei
    inc b
    nop
    db $f4
    nop
    rst $38
    rst $20
    rst $38
    ld sp, hl
    db $fc
    nop
    push af
    ret nz

    jr nc, jr_045_4fbd

jr_045_4fbd:
    db $10
    adc a
    nop
    ld b, $03
    or h
    ld c, d
    add b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $050a
    ldh a, [$08]
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, d
    rlca
    ld e, h
    ld a, [hl+]
    sbc e
    ld h, b
    inc c
    add e
    rst $38
    nop
    ei
    rlca
    ld l, a
    ld e, $7d
    ld a, [$8ef1]
    db $eb
    ld d, $cf
    ccf
    cp h
    ld a, [hl]
    ei
    db $fc
    db $d3
    xor h
    adc $a4
    ld [hl], h
    adc $5a
    ld h, [hl]
    sbc $62
    cp [hl]
    ld h, b
    db $fd
    ld hl, $20fd
    jr z, @-$07

    ld sp, $13de
    db $fc
    ld de, $07fe
    ld hl, sp-$79
    ld a, b
    ld b, [hl]
    cp c
    sbc e
    ld h, h
    ei
    inc b
    ld [hl], e
    adc h
    dec bc
    db $f4
    cp h
    ld b, d
    adc a
    ld [hl], b
    cp c
    ld b, [hl]
    db $fc
    ld b, e
    cp $41
    sbc [hl]
    ld h, c
    sbc $21
    cp $21
    cp l
    ld h, d
    ld b, [hl]
    add hl, sp
    or d
    ld e, l
    rst $38
    db $10
    xor a
    db $10
    ld hl, sp+$1f
    add d
    ld a, l
    call z, Call_045_693b
    sbc [hl]
    ld a, d
    adc l
    and h
    ld e, a
    db $ec
    rla
    ret nc

    cpl
    rst $38
    rra
    and c
    ld a, a
    ld h, $21
    jr nz, jr_045_5068

    jr nz, jr_045_505a

    inc de
    inc h
    rst $38
    rst $38
    inc h
    inc bc
    nop
    ccf
    nop
    ld e, l
    nop
    ld a, a
    nop
    scf
    nop
    rst $28

jr_045_505a:
    nop
    rst $38
    rst $38
    rst $38
    and $ff
    nop
    rst $18
    nop
    rst $28
    nop
    rst $30
    nop
    rst $00

jr_045_5068:
    nop
    db $fc
    nop
    sub $ff
    rst $38
    add b
    db $ec
    ld h, h
    nop
    ld a, l
    nop
    cp $00
    rst $10
    nop
    ld a, [hl]
    nop
    ret nc

    cpl
    jr nz, @+$01

    cp l
    ld b, d
    inc bc
    nop
    stop
    ret nz

    nop
    nop
    nop
    ld b, $11
    or l
    ld e, d
    ld h, h
    add b
    nop
    nop
    nop
    cp a
    ld [$9977], sp
    nop
    xor b
    ld [bc], a
    ld b, $ff
    add b
    db $fc
    adc d
    jr nz, jr_045_50ff

    rlca
    jr nz, jr_045_5068

    nop
    adc a
    rrca
    rst $38
    cp $ff
    sub d
    rst $38
    nop
    cp $08
    pop hl
    nop
    rst $38
    add hl, bc
    and a
    ld [hl], b
    rst $38
    add b
    db $ed
    nop
    ccf
    inc b
    ld a, l
    nop
    ld a, c
    rlca
    rst $38
    ld a, h
    cp $a0
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $110e
    pop de
    inc h
    add c
    nop
    add d
    ld bc, $8003
    sub [hl]
    adc a
    rst $30
    ld l, b
    rst $38
    add b
    or c
    ld c, [hl]
    sub h
    ld l, e
    xor a
    ld e, a
    cp h
    ld a, a
    call nz, $97fb
    add sp, -$43
    jp nz, $ff87

    ld a, [$cb7c]
    ldh [$bb], a
    nop
    ld a, d
    ld b, h
    ld a, d
    ld b, h
    cp [hl]
    ld [bc], a
    add hl, de
    ld h, $13
    add hl, hl
    dec b
    inc de
    dec c
    db $10
    inc b
    ld a, [bc]

jr_045_50fe:
    adc l

jr_045_50ff:
    ld [$0887], sp
    call nz, RST_00
    add h
    ld [de], a
    ld b, h
    sbc [hl]
    ld b, d
    jr jr_045_514f

    ld h, [hl]
    add hl, bc
    dec bc
    daa
    inc h
    add hl, sp
    ld [hl+], a
    ld de, $1110
    nop
    db $10
    add hl, de
    nop
    ld [$4008], sp
    inc c
    ld bc, $6e0c
    add l
    call $f5a6
    add [hl]
    rst $38
    add d
    xor a
    jp nc, $e15f

    ld a, a
    pop bc
    db $f4
    ld c, c
    rst $38
    ld h, b
    cp $20
    rst $38
    ld h, b
    rst $38

jr_045_5137:
    jr nz, jr_045_5137

    and b
    db $f4
    db $10
    rst $38
    db $10
    ei
    db $10
    rst $30
    rst $38
    adc $ff
    rst $38
    nop
    inc a
    inc bc
    nop
    nop
    rst $30
    ld [$ffff], sp
    di

jr_045_514f:
    jr nz, jr_045_5178

    jr nz, jr_045_517a

    jr z, jr_045_5177

    ld hl, $a825
    jr nz, jr_045_50fe

    ld d, $21
    cp a
    ld a, a
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ld h, $07
    rst $38
    rst $30
    rst $38
    nop
    dec hl
    rrca
    nop
    ccf
    nop
    ld a, a
    nop
    ld e, l

jr_045_5177:
    ld [bc], a

jr_045_5178:
    pop af
    rrca

jr_045_517a:
    jr @+$01

    ld l, [hl]
    sub c
    db $10
    rst $28
    rla
    nop

jr_045_5182:
    cpl
    nop
    ld l, a
    nop
    rst $38
    rrca
    ei
    db $dd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld l, a
    add e
    rra
    inc [hl]
    rst $38
    nop
    call c, Call_045_5300
    db $10
    ld b, a
    nop
    ld e, [hl]
    nop
    rst $08
    ccf
    rst $38
    db $e4
    rst $38
    add b
    rst $38
    nop
    sbc a
    nop
    scf
    add hl, bc
    rst $30
    sbc a
    ld a, a
    cp [hl]
    ld h, c
    inc d
    dec hl
    inc a
    ld hl, $2122
    dec sp
    daa
    ld l, d
    inc [hl]
    nop
    add b
    nop
    nop
    nop
    nop

jr_045_51c2:
    inc bc
    nop
    ld d, $28
    ret nz

    add hl, hl
    ld bc, $0000
    inc b
    inc de
    ld b, b
    cp a
    inc c
    pop hl
    ret nc

    db $fd
    nop
    ld [hl], e
    inc c
    rst $28
    ld de, $7e9f
    di
    db $fc
    db $76
    ret


    add hl, de
    rst $20
    ccf
    rst $00
    ld sp, hl
    ccf
    pop af
    di
    ld h, $f9
    or $b8
    ld d, b
    cp h
    push bc
    ld [hl], h
    xor [hl]
    db $76
    or h
    ld a, [hl+]
    pop af
    ld a, [hl-]
    pop af
    ld a, [de]
    ld l, b
    rla
    ld a, b
    dec c
    jr jr_045_5182

    add c
    add [hl]
    ld b, d

Call_045_51ff:
    ld b, e
    ld a, a
    jp nz, Jump_045_41ee

    db $eb
    jr nz, jr_045_51c2

    ld h, b
    or h
    ld d, b
    rst $38
    db $10
    db $fd
    ld [$08ef], sp
    add h
    nop
    and h
    add h
    ret nz

    inc b
    ld b, d
    add d
    nop
    ld b, d
    ret z

    ld b, c
    ld b, b
    ld hl, $2020
    sub b
    nop
    db $10
    db $10
    jr nc, jr_045_5236

    nop
    ld [$0808], sp
    ld bc, $0408
    inc b
    inc b
    inc b
    cp e
    add [hl]
    cp a
    add d
    ld a, [hl]
    add c

jr_045_5236:
    rst $18
    ld b, c
    ld e, [hl]
    ld b, c
    ld c, a
    ld b, b
    ld c, a
    jr nz, jr_045_526e

    jr nz, @+$01

    rst $38
    rst $30
    rst $38
    cp $05
    cp a
    jp nc, $803f

    cp e
    ld b, h
    rst $38
    rst $38
    rst $38
    nop
    ld [hl], a
    adc b
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    ld e, d
    ld hl, $877a
    rst $38
    cp $58
    ld [bc], a
    ei
    inc b
    or d
    ld c, l
    ld a, a
    nop
    rst $38
    nop
    ld c, a
    nop
    ld d, $ff
    rst $38
    nop

jr_045_526e:
    rst $30
    ld [$0700], sp
    nop
    add hl, de
    nop
    add d
    add hl, hl
    sub a
    rst $38
    ld a, [hl]
    sbc a
    ld h, b
    xor $01
    ldh [rP1], a
    ret nc

    nop
    add c
    nop
    ld d, a
    xor e
    cp e
    and $d0
    jr nz, jr_045_528b

jr_045_528b:
    nop
    nop
    nop
    nop
    nop
    nop
    rst $18
    rlca
    rst $38
    ld hl, sp-$01
    nop
    rst $18
    nop
    dec l
    ld d, b
    rrca
    nop
    and $8f
    ld e, a
    sub b
    ld l, b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $01
    adc e
    ld [hl], h
    rst $30
    ld [$20df], sp
    ei
    nop
    sbc e
    daa
    or [hl]
    ld a, l
    db $e4
    sbc e
    ldh [$9f], a
    ei
    adc h
    cp a
    add a
    rst $38
    cp h
    rst $18
    and b
    xor $01
    ld hl, sp+$00
    rst $20
    add hl, bc
    ld a, [hl]
    dec e
    ld e, [hl]
    pop hl
    ld h, d
    dec e
    sub l
    ld a, e
    cp a
    ld a, a
    db $fc
    ld a, a
    pop bc
    cp $06
    ld sp, hl
    dec hl
    rst $38
    cp a
    ld a, a
    rst $38
    cp $a4
    ei
    ld [de], a
    db $fd
    sub b
    ld a, l
    push de
    adc d
    daa
    ret nc

    ld [hl], a
    ld b, b
    adc l
    ld [hl+], a
    rla
    jr nz, jr_045_534b

    or l
    db $fc
    dec bc
    ld a, [hl]
    adc e
    sbc [hl]
    add l
    dec e
    add $ef
    jp nz, $e7b2

    ld a, h
    xor a

Call_045_5300:
    sub d
    jr nc, jr_045_5359

    db $10
    dec c
    ld [$0d22], sp
    add l
    ld b, $03
    inc b
    ld [de], a
    ld b, d
    ld hl, $2f03
    ld bc, $09a3
    ld e, a
    ld bc, $01df
    ld l, a
    ld [$003f], sp
    push hl
    nop
    di
    add h
    add b
    add d
    ld b, [hl]
    ld c, $55
    ld e, c
    ld h, b
    dec h
    ld [hl+], a
    jr nz, jr_045_533b

    ld [hl+], a
    db $10
    ld [de], a
    ld [bc], a
    jr jr_045_5341

    add hl, bc
    inc b
    ld [$0400], sp
    nop
    inc b
    db $10
    ld c, $80

jr_045_533b:
    ld [hl-], a
    ld [bc], a
    pop bc
    add b
    ld b, c
    rst $38

jr_045_5341:
    rst $38
    cp a
    rst $38
    sub a
    ld a, a
    rlca
    rst $38
    ld d, e
    rrca
    rst $20

jr_045_534b:
    rrca
    di
    rst $38
    db $e3
    rra
    or a
    ld c, a
    di
    rrca
    db $d3
    cpl
    di
    rrca
    dec h

jr_045_5359:
    rrca
    di
    ld a, a
    or a
    ld e, a
    ld b, e
    rra
    inc bc
    cpl
    xor l
    rlca
    dec de
    daa
    inc bc
    rlca
    ld a, e
    adc a
    or e
    rst $38
    dec de
    ld h, a
    ld h, e
    rra
    dec bc
    ld [hl], a
    dec de
    daa
    xor e
    ld d, a
    rst $38
    rst $38
    ld b, e
    and a
    ld hl, $1117
    ld b, a
    ld d, e
    adc a
    add hl, de
    daa
    ld a, l
    adc a
    ei
    rst $38
    ret


    xor a
    add hl, bc
    rlca
    ld de, $050f
    dec bc
    rrca
    inc bc
    srl a
    dec b
    ei
    db $fd
    inc bc
    cp c
    rlca
    db $fd
    inc bc
    cp e
    rlca
    ld bc, $7dff
    add e
    rrca
    ld de, $4339
    add hl, bc
    ld b, e
    scf
    rrca
    xor a
    ld [hl], e
    or a
    ld c, e
    ld d, a
    xor e
    ld sp, hl
    inc bc
    rst $28
    rla
    ld [hl], e
    rst $38
    or l
    ld e, e
    xor c
    ld d, a
    add c
    ld a, a
    rla
    rst $28
    ld a, l
    rst $38
    rst $38
    jp $a759


    db $d3
    ld hl, $0fd7
    ld a, a
    cp a
    adc a
    rst $38
    ld h, a
    rst $38
    xor a

jr_045_53cd:
    rst $30
    ccf
    db $fd
    rst $38
    pop hl
    xor e
    rst $10
    ld l, e
    sub a
    rst $38
    rra
    rst $30
    ld a, b
    rst $10
    add sp, -$31
    ldh a, [$7b]
    db $e4
    dec l
    ld a, [c]
    ld a, [$4611]
    cp b
    ld d, b
    adc h
    ld a, [c]
    ld c, h
    push af
    ld [bc], a
    sbc a
    jr nz, jr_045_53cd

    ld de, $08f7
    db $fd
    nop
    or a
    ld b, b
    ld l, d
    inc b
    dec sp
    nop
    ld de, $1000
    nop
    jr jr_045_5400

jr_045_5400:
    ld [hl], e
    adc h
    adc e
    ld d, h
    xor a
    ld b, d
    xor h
    ld b, e
    rst $30
    ld hl, $906f
    ei
    db $10
    db $fd
    ld [$00ff], sp
    cp a
    call nz, $c2ff
    ld a, a
    ret nz

    cp l
    pop hl
    rst $38
    ld h, b
    db $dd
    jr nc, jr_045_549c

    db $10
    cp a
    ld [$08ff], sp
    rst $38
    inc b
    cp a
    inc b
    xor a
    add [hl]
    rst $20
    add d
    ld c, a
    pop bc
    db $e3
    ld b, b
    rst $30
    ld h, b
    pop hl
    and b
    push af
    ret nc

jr_045_5436:
    ld [c], a
    db $10
    ldh [$58], a
    ret c

    jr z, jr_045_5436

    inc b
    ld hl, sp+$04
    cp $ff
    ldh [rIE], a
    rst $38
    ldh [$ef], a
    ldh [$fd], a
    ldh [$fb], a
    ldh [$e0], a
    rst $38
    rst $28
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fb], a
    db $e4
    rst $18
    ldh [$e5], a
    ld hl, sp-$08
    rst $20
    db $fc
    ldh [$f8], a
    ldh [$ee], a
    ldh [$f0], a
    ldh [$e0], a
    ldh [$f0], a
    ldh [$eb], a
    db $f4
    rst $38
    ldh [$f8], a
    ldh [$fd], a
    ldh [$fe], a
    ldh [$ef], a
    ldh a, [$e7]
    ld hl, sp+$60
    rst $38
    ld a, h
    db $e3
    ld a, a
    ldh [$6f], a
    ldh a, [$e0]
    ldh a, [$60]
    ldh a, [$f0]
    ld a, [$ffe0]
    ld h, b
    push af
    and b
    ld a, [c]
    ldh [$f0], a
    ld h, b
    ldh a, [$2c]
    pop af
    ld h, b
    db $fd
    xor h
    ldh a, [$6c]
    ldh a, [$2d]
    pop af
    dec l
    pop af

jr_045_549c:
    dec [hl]
    ld sp, hl
    ld hl, $2dfd
    pop af
    db $ed
    pop af
    xor l
    pop af
    push hl
    ld sp, hl
    push hl
    ld sp, hl
    and l
    ld sp, hl
    cp l
    pop af
    dec e
    pop af
    or l
    ld sp, hl
    or l
    ld sp, hl
    sub c
    db $fd
    sbc l
    pop af
    inc a
    ldh a, [$d0]
    db $fc
    push af
    ld sp, hl
    ld sp, hl
    push af
    cp l
    pop af
    cp l
    pop af
    cp l
    pop af
    sub l
    ld sp, hl
    sub c
    db $fd
    pop de
    cp l
    reti


    or l
    push hl
    sbc c
    ld a, c
    sub l
    db $fd
    sub c
    db $fd
    sub c
    sub l
    ld sp, hl
    push af
    reti


    pop af
    dec a
    add l
    ld a, c
    ld [hl+], a
    sbc $ee
    inc bc
    rst $30
    ld bc, $00fb
    cp d
    nop
    ld e, b
    ld h, $34
    ld [bc], a
    ld b, a
    ld de, $09fa
    ld a, [hl]
    add h
    add hl, sp
    ld b, [hl]
    ld e, h
    cpl
    cp c
    inc de
    pop bc
    db $10
    ld l, e
    ld [$04ad], sp
    ld d, d
    ld [bc], a
    ld c, b
    inc bc
    add hl, hl
    ld bc, $1000
    cp b
    nop
    db $fd
    ld [$8456], sp
    inc h
    ld b, d
    ld [bc], a
    ld h, b
    cp a
    ld h, c
    cp $11
    rst $18
    jr jr_045_5596

    ld [$06ff], sp
    rst $38
    ld [bc], a
    ei
    add d
    sbc [hl]
    ld b, c
    db $fd
    ld bc, $20fe
    ld a, a
    db $10
    cp a
    db $10
    rst $18
    ld [$08ff], sp
    xor d
    inc b
    and a
    nop
    adc a
    add b
    pop bc
    ld bc, $40c1
    ld h, c

jr_045_5537:
    jr nz, jr_045_556d

    jr nz, jr_045_555f

    db $10
    jr jr_045_553e

jr_045_553e:
    jr z, @+$0a

    rst $28
    rst $38
    cp a
    ldh [$1f], a
    ldh [$df], a
    jr nz, @+$01

    nop
    ld a, a
    ret nz

    rst $38
    rst $38
    jr jr_045_5537

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, $c1
    ccf
    ret nz

    add h
    ei
    add a

jr_045_555f:
    ld a, a
    ld a, h
    add e
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ld [bc], a

jr_045_556d:
    db $fd
    rst $20
    rra
    ld bc, $0100
    nop
    ld bc, $0f00
    nop
    add e
    nop
    dec a
    ret nz

    ld b, a
    jr c, @-$0b

    dec b
    cp [hl]
    ld bc, $013a
    add sp, $01
    db $fc
    ld bc, $c13a
    ld b, b
    dec sp
    cp c
    rlca
    rlca
    ld bc, $010c
    ld sp, $2cc0
    pop de

jr_045_5596:
    ldh [rIE], a
    ld a, [hl]
    ld b, a
    ld a, [hl]
    ld b, c
    ld l, [hl]
    ld d, c
    ld a, [hl+]
    or l
    scf
    xor b
    cpl
    or b
    ld e, a
    sub b
    ld d, a
    sbc b
    ld d, l
    sbc d
    ld l, a
    adc b
    cpl
    ret z

    cpl
    ret z

    dec [hl]
    add $33
    jp nz, $c23b

    cp e
    jp nz, $6b72

    rla
    jr jr_045_560c

    adc h
    inc bc
    jp $e080


    add c
    ld sp, hl
    ret nz

    rst $38
    jp nz, $c0fd

    ld sp, hl
    ret z

    pop af
    jp nz, $e4e3

    rst $00
    add hl, bc
    adc [hl]
    ld de, $399e
    ld h, $59
    ld h, [hl]

jr_045_55d8:
    cp c
    add $19
    and $11
    xor $d1
    ld l, $30
    ld c, $90
    adc h
    ld c, b
    call nz, Call_045_6420
    inc d
    jr nc, jr_045_55f3

    jr c, jr_045_5651

    inc e
    inc l
    add b
    ld a, [$b444]

jr_045_55f3:
    ld c, b
    sbc d
    ld [hl], h
    ld a, $d8
    cp d
    call z, $e6dd
    rst $30
    jp z, $e5fb

    ld de, $0c60
    ld e, b
    sub c
    xor h
    ld b, d
    jp nz, Jump_045_6102

    and c
    dec [hl]

jr_045_560c:
    db $10
    ld de, $0a01
    ld b, h
    nop
    nop
    add h
    ld b, d
    ld [bc], a
    add c
    nop
    jr nz, @+$22

    ld d, b
    db $10
    inc d
    ld [$0caa], sp
    rst $28
    sub l
    rst $38
    rst $00
    rst $18
    ld h, d
    ld a, a
    ld h, c
    ld [hl], a
    add hl, hl
    rst $28
    db $10
    rst $38
    db $10
    xor a
    jr jr_045_55d8

    ld [$06d6], sp
    db $eb
    ld [bc], a
    res 0, e
    push hl
    ld bc, $40f3
    jr z, jr_045_563e

jr_045_563e:
    dec sp
    nop
    adc [hl]
    pop af
    ld c, $71
    ld c, $71
    ld c, $71
    ld c, $71
    ld c, $f1
    adc a
    ldh a, [rNR10]
    jp hl


    inc hl

jr_045_5651:
    ret nc

    ld d, $61
    ld [de], a
    ld h, b
    ld de, $10e0
    ld h, b
    nop
    ld [hl], b
    nop

jr_045_565d:
    ldh [$90], a
    ldh [rNR42], a

jr_045_5661:
    ld b, h
    inc d
    ld h, b
    ld h, $c8
    inc d
    ld [$e21c], a
    ld d, $e8
    ld a, [de]
    db $e4
    ld e, $e0
    ld c, $f1
    inc d
    ld l, d
    inc b
    ld a, d
    ld c, $f0
    ld c, $f1
    rrca
    ldh a, [rTAC]
    ld hl, sp+$0d
    ld a, [c]
    rlca
    ld hl, sp+$06
    ld sp, hl
    inc c
    di
    ld b, $f9
    inc c
    di
    ld b, $f9
    adc h
    ld [hl], e
    dec b
    ld a, [$db24]
    inc h
    db $db
    ld a, [bc]
    push af
    and b
    ld e, a
    adc b
    ld [hl], a
    ld b, b
    cp a
    add d
    ld a, l
    adc b
    ld [hl], a
    ld [$08f7], sp
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    add b
    ld a, a
    adc b
    ld [hl], a
    add b
    ld a, a
    ld [$0477], sp
    ld a, e
    db $10
    ld l, a
    inc c
    di
    adc b
    ld [hl], a
    add h
    ld a, e
    ld d, d
    xor a
    jr nz, jr_045_565d

    add d
    ccf
    jr nz, jr_045_5661

    sub b
    cpl
    ret nc

    cpl
    ld [$00f7], sp
    ld a, a
    db $10
    ld l, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    inc b
    ld a, a
    nop
    ld a, a
    ld b, h
    ccf
    ld b, l
    ccf
    ld bc, $44bf
    ccf
    ld h, d
    rra
    ld l, l
    sub a
    scf
    ld c, a
    inc hl
    ld e, a
    inc sp
    rrca
    adc c
    daa
    ld bc, $090f
    rlca
    rst $30
    rrca
    ld a, [hl]
    cpl
    db $76
    ccf
    ld c, [hl]
    ccf
    ld l, l
    rra
    db $76
    rrca
    xor $13
    cp $03
    nop
    add e
    ld b, d
    ld b, d
    ld a, l
    ld [hl+], a
    ld [de], a
    ld hl, $1910
    sub b
    dec c
    and a
    add h

jr_045_570e:
    ld h, d
    ld b, d
    dec sp
    ld h, c
    dec bc
    or a
    ld e, $ad
    ld [$040b], sp
    dec e
    ld b, $8b
    add hl, bc
    ld b, e
    nop
    ld hl, $24ff
    ld a, a
    sub b
    ld a, l
    adc b
    cp e
    ld b, h
    jp c, $efa4

    sub b
    rst $28
    ld d, c
    cp l
    ld h, b
    db $fd
    ld [de], a
    push af
    ld a, [de]
    or a
    ld [$047b], sp
    sbc l
    ld [bc], a
    sbc a
    ld [bc], a
    rst $18
    add c
    rst $38
    ld b, b
    adc [hl]
    ccf
    xor l
    ccf
    ld c, [hl]
    cp a
    ld h, l
    cp a
    ld b, [hl]
    ccf

jr_045_574a:
    ld c, b
    ccf
    inc b
    ld a, a
    dec c
    ld a, a
    ld b, h
    ccf
    dec b
    ld a, a

jr_045_5754:
    sub h
    ld l, a
    ld c, b
    ccf
    jr nc, jr_045_57a9

    ld [hl-], a
    ld c, a
    ld a, [de]
    daa
    ld bc, $090f
    rlca
    add hl, bc
    rlca
    ld bc, $000f
    rrca
    nop
    rrca
    ld [$0007], sp
    rrca
    ld [$0e07], sp
    ld bc, $0102
    add b
    ld bc, $0081
    add b
    nop
    add b
    nop
    jr nz, jr_045_570e

    ld [hl], b
    add b
    ld h, b
    sub b
    nop
    ldh [rSB], a
    ldh a, [rNR10]
    pop hl
    jr nz, jr_045_574a

    jr nc, jr_045_5754

    db $10
    ldh [rP1], a
    db $f4
    inc b
    ld hl, sp+$00
    db $fc
    dec b
    ld hl, sp-$6b
    ld a, b
    add c
    ld a, b
    add c
    ld a, b
    add b
    ld a, b
    ld bc, $08f8
    pop af
    add hl, bc
    ldh a, [rSB]
    ld hl, sp+$10
    ld [c], a
    ld d, d

jr_045_57a9:
    ldh [rNR41], a
    jp nz, $c002

    rlca
    ldh [rLYC], a
    add d
    dec bc
    call nz, $9c43
    ld b, b
    sbc [hl]
    ld b, b
    sbc a
    ld b, c
    sbc [hl]
    ld [hl+], a
    db $dd
    and d
    call c, $ffff
    ei
    rst $38
    ld hl, sp-$04
    db $e3
    db $fc
    db $e3
    db $ec
    db $e3
    db $fc
    db $eb
    ldh a, [$e3]
    ld hl, sp-$3d
    db $fc
    set 7, h
    ret


    db $fc
    adc c
    ld hl, sp-$67
    ld hl, sp-$07
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$10
    ld hl, sp+$50
    ld hl, sp+$70
    ld hl, sp+$75
    ld hl, sp+$3c
    ldh a, [$39]
    ldh a, [$a6]
    ld hl, sp+$2f
    ldh a, [rLY]
    jr nc, jr_045_5861

    jr nc, jr_045_5863

    or b
    scf
    ld hl, sp+$2d
    cp $e2
    ld l, e
    push hl
    ld l, c
    ld b, b
    jp nz, Jump_000_2025

    sub b
    ld sp, $1820
    sub h
    inc c
    add l
    add d
    ld b, b
    jp Jump_045_61a0


    ld [hl], b
    ld d, b
    ld c, b
    cp b
    or b
    xor h
    ret z

    ld d, [hl]
    ld hl, $e9de
    ld d, $22
    db $db
    adc d
    ld a, l
    sbc h
    dec h
    ei
    cp [hl]
    rst $30
    db $fd
    ei
    dec l
    xor $bf
    or $1b
    ld a, l
    rrca
    ld a, a
    ld b, $af
    sub [hl]
    rst $18
    ld b, c
    xor $01
    rst $28
    jr nz, @-$07

    nop
    rst $38
    nop
    rst $30
    ld [$04ff], sp
    cp $02
    jp c, Jump_045_7dbd

    cp b
    ld hl, sp-$48
    cp h
    ld hl, sp-$48
    ld hl, sp-$44
    ld hl, sp+$3f
    rst $38
    ccf
    rst $38
    inc sp
    ld hl, sp+$3b
    db $fc
    ld [hl], l
    ld hl, sp+$6b
    ldh a, [$fe]
    pop af
    ld e, c
    ldh a, [$5d]
    ld a, [c]
    ld d, a
    ld sp, hl
    ld a, a

jr_045_5861:
    rst $38
    ld [hl], b

jr_045_5863:
    ld [c], a
    ld [hl], b
    pop hl
    pop hl
    ldh [$e0], a
    rst $30
    push bc
    add sp, $41
    ldh [$61], a
    ldh [$ef], a
    rst $38
    ei
    db $e4
    ld b, b
    pop af
    ld b, e
    ldh [rBCPD], a
    add $6b
    call nc, $c067
    sbc c
    ld h, b
    and a
    ld e, a
    cp a
    ld a, h
    xor e
    ld b, h
    xor $11
    ld e, e
    xor h
    ld [hl], $49
    ld e, e
    inc l
    ld e, e
    xor a
    rst $38
    ld a, a
    cpl
    db $fc
    call $6622
    ld [$9442], sp
    cp b
    ld b, b
    inc b
    nop
    ld h, $0f
    ld a, h
    ld hl, sp-$30
    and b
    inc [hl]
    ld [$2214], sp
    inc d
    ld bc, $1723
    ld a, $1f
    ld l, a
    ldh a, [$f3]
    nop
    push af
    ld [$02c5], sp
    db $ec
    ld bc, $8976
    add d
    pop hl
    add b
    rrca
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ccf
    rst $28
    rra
    rst $30
    rlca
    db $fd
    ld b, $fc

jr_045_58cf:
    rlca
    db $fc
    rlca
    db $fc
    rlca
    xor l

jr_045_58d5:
    rlca
    db $ec
    dec b
    and h
    dec b
    and h
    dec b
    adc c
    dec c
    ret


    dec c
    jr jr_045_58f1

    ld [$2a0f], sp
    rra
    ld [$093f], sp
    ccf
    rrca
    ld a, a
    inc e
    rst $38
    jr nc, jr_045_58cf

    nop

jr_045_58f1:
    db $10
    jr c, jr_045_5904

    inc a
    db $10
    ld d, a
    jr c, jr_045_58d5

    inc sp
    ld d, c
    cp a
    ld a, [de]
    rst $38
    db $dd
    rst $38
    cp l
    ld a, $04
    add a

jr_045_5904:
    inc de

jr_045_5905:
    jp Jump_000_2361


    dec b
    db $10
    ld [hl+], a
    nop
    add b
    nop
    add d
    add d
    rst $38
    ld b, c
    db $d3
    jr nz, @-$11

    db $10
    db $fd
    inc b
    cp e
    add h
    rst $38
    jp $e13e


    ld c, a
    ldh a, [$f0]
    jr z, jr_045_5943

    ld e, b
    cp h
    inc h
    ld c, h
    or d
    ld l, l
    sub d
    db $10
    ld l, [hl]
    ld [hl], $09
    jr jr_045_595e

    rst $38
    inc b
    db $fd
    adc [hl]
    jr c, jr_045_5905

    rst $38
    ld c, e
    cp $23
    cp a
    db $10
    ld [hl], a
    ld a, [bc]
    ld a, a
    dec b
    adc a
    rst $38
    add hl, de

jr_045_5943:
    inc b
    inc d
    dec bc
    inc b
    ld a, [bc]
    dec [hl]
    ld [$0900], sp
    rst $38

jr_045_594d:
    rst $38
    xor $bd
    push de
    ld [bc], a
    add b
    inc b
    cpl
    ld b, b
    pop bc
    inc c
    xor l
    ld d, d
    rst $20
    db $10
    jr nz, @-$7b

jr_045_595e:
    rst $38
    ld a, a
    ei
    call nc, $92ed
    cp a
    nop
    xor l
    ld [de], a
    ld a, l
    nop
    ld c, $10
    add l
    nop
    ld c, a
    cp a
    rst $38
    ld hl, sp+$48
    nop
    rrca
    ld b, b
    xor d
    inc b
    rst $18
    jr nz, jr_045_594d

    add hl, hl
    ld a, [hl]
    add c
    rst $38
    ccf
    call nc, Call_045_51ff
    xor a
    pop de
    cpl
    ld d, h
    xor e
    dec de
    rst $20
    rst $38
    rlca
    rst $18
    ccf
    di
    db $fc
    and c
    ld d, b
    cpl
    add b
    rrca
    nop
    adc e
    nop
    ld bc, $0b0a
    rlca
    ld a, h
    or d
    adc [hl]
    pop de
    ld [bc], a
    inc b
    ld e, a
    nop
    push de
    jr z, jr_045_59d6

    rla
    db $fd
    ld a, [hl]
    db $ed
    jp c, $807f

    rra
    add b
    ld a, e
    nop
    cp a
    rlca
    ccf
    rst $38
    ld hl, sp+$7f
    jp nz, $087f

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $04ff
    rst $38
    nop
    rst $38
    dec b
    cp $40
    or b
    ldh a, [rP1]
    inc sp
    ld c, h
    ld [bc], a
    ld c, a
    nop
    call c, $9020
    sub b
    db $10

jr_045_59d6:
    dec hl
    sub a
    rlca
    rra
    inc bc
    sbc a
    rrca
    rst $38
    rst $00
    rlca
    cpl
    rlca
    xor a
    ld b, a
    ld d, h
    xor $00
    ld hl, sp+$00
    ret nz

    ld b, b
    nop
    nop
    inc de
    ld [hl+], a
    dec e
    ld c, c
    scf
    ld h, d
    rra
    call Call_000_3b3d
    rst $38
    ld e, [hl]
    rst $28
    add a
    xor d
    ld bc, $d9b7
    ld [$ffe4], a
    or $79
    push af
    sbc e
    ld e, h
    xor [hl]
    xor [hl]
    db $dd
    jp c, Jump_000_23e7

    dec a
    dec d
    ld a, [de]
    ei
    dec c
    ld sp, hl
    add [hl]
    xor a
    ld b, d
    rst $38
    ld hl, $10be
    cp a
    ld [$04bb], sp
    rst $10
    add d
    db $eb
    ld b, c
    push af
    nop
    ld a, [c]
    ld [$40ad], sp
    rst $30
    nop
    ld [hl], e
    ret nz

    cp a
    ld b, b
    or $60
    rst $38
    db $10
    rst $38
    adc b
    db $dd
    inc h
    ld a, a
    and d
    ld e, l
    add d
    daa
    ret z

    rst $28
    ld hl, $b25f
    rst $38
    rst $38
    cp a
    ld a, a
    rst $28
    ld a, a
    bit 6, a
    ret c

    ld h, a
    ld a, l
    ld a, a
    rst $38
    rst $38
    cp l
    rst $38
    db $db
    ccf
    ei
    rrca
    db $db
    cpl
    rst $38
    rra
    ld l, a
    cp a
    or h
    ld e, a
    rst $18
    ccf
    rst $38
    rst $38
    ld [hl], a
    adc e
    ld d, h
    xor e
    xor $13
    or $09
    ld a, $41
    ld e, l
    ld [hl+], a
    rlca
    ld e, a
    rst $38
    rst $38
    cp l
    ld [bc], a
    ld l, a
    inc de
    ld a, a
    add a
    ld a, e
    cp a
    ld l, e
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    dec e
    rst $38
    or d
    rst $38
    jp $d6ff


    rst $28
    cp $ff
    cp $ff
    ld a, [$1dfd]
    add $f8
    inc b
    xor l
    ld d, h
    ld [hl], b
    adc a
    cp $0d
    cp l
    ld a, [$82fd]
    db $fc
    inc bc
    push af
    ld a, [bc]
    ld a, [hl]
    add c
    or $19
    ld [$d2f1], a
    xor c
    add [hl]
    ld [hl], c
    and d
    ld a, c
    adc [hl]
    ld [hl], c
    ld a, b
    or a
    ld [c], a
    db $fd
    rst $20
    ld sp, hl
    ld [hl], c
    db $fd
    and l
    rst $38
    add e
    rst $38
    ld bc, $0cff
    rst $38
    jr nc, @+$01

    add b
    db $fc
    nop
    db $e4
    ld h, b
    add h
    ld d, c
    cp h
    ld a, l
    inc a
    ld a, l
    ld a, b
    pop hl
    add sp, -$3e
    ld [$4803], sp
    jr c, jr_045_5b46

    jr c, jr_045_5b52

    ldh [$f4], a
    ld b, b
    or h
    nop
    inc [hl]
    inc b
    inc [hl]
    inc h
    ld a, h
    db $ec

jr_045_5ae1:
    ld hl, sp-$44
    ret z

    ld a, d
    inc c
    ld c, c
    ld a, [hl-]
    dec d
    ld a, d
    ld [de], a
    db $fd
    jr c, jr_045_5ae1

    ld b, h
    ld hl, sp-$26
    add h
    ld [hl], a
    ldh [$eb], a
    ld [hl], b
    ret nc

    db $fc
    ld a, c
    or [hl]
    adc a
    ld a, [hl]
    sbc l
    db $eb
    add $7f
    ld h, a
    cp a
    jr c, jr_045_5b23

    sub h
    cpl
    add [hl]
    ld c, e
    ld hl, $1567
    cp e
    ld c, c
    cp b
    call nc, $f2bc
    ld l, l
    or d
    ld e, l
    add hl, de
    ld e, [hl]
    call z, $42be
    or a
    ld hl, $3079
    dec e
    ld a, [hl+]
    dec c
    xor $17
    ld e, a

jr_045_5b23:
    db $e3
    xor [hl]
    ld d, c

jr_045_5b26:
    rst $38
    ld hl, $1bff
    ld e, a
    rrca
    xor c
    rlca
    call z, Call_000_3d03
    ld b, b
    or d
    jr nz, jr_045_5b26

    db $10
    db $fc
    nop
    cp $04
    di
    ld a, [bc]
    ld [hl], a
    jp Jump_045_47bf


    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38

jr_045_5b46:
    db $fc
    rst $38
    cp c
    cp $b8
    rst $38
    ld a, [$fefd]
    ld sp, hl
    db $fc
    ei

jr_045_5b52:
    db $fc
    ei
    db $f4
    ei
    db $f4
    ei
    db $f4
    ei
    call nc, $f4fb
    ei
    db $f4
    ei
    add b
    rst $38
    ret nz

    cp a
    ld l, b
    rst $30
    xor b
    ld [hl], a
    ret nz

    cp a
    pop bc
    ccf
    pop bc
    rst $38
    pop de
    rst $28
    pop de
    rst $28
    or e
    rst $08
    add e
    rst $38
    add e
    rst $38
    and e
    rst $18
    add e
    rst $38
    rlca
    rst $38

jr_045_5b7e:
    daa
    rst $18
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    rrca
    cp $0f
    cp $0f
    cp $0c
    cp $1e
    db $fc
    rra
    db $fc
    rra
    db $fc

jr_045_5b94:
    dec e
    db $fc
    jr jr_045_5b94

    ccf
    ld hl, sp+$38
    ld hl, sp+$30
    ld hl, sp+$38
    ldh a, [$38]
    ldh a, [$78]
    ldh a, [rSVBK]
    db $fc
    ld h, a
    ldh a, [rSVBK]
    ldh [$f0], a
    ldh [$e0], a
    ldh [$c0], a
    ldh [$ec], a
    ret nc

    rst $20
    ret nz

    pop bc
    ret nz

    ret nc

    ret nz

    add b
    ret nz

    add b
    ret nz

    jr nc, jr_045_5b7e

    ld e, h
    add b
    adc b
    rst $30
    adc d
    push af
    jp hl


    sub [hl]
    ret z

jr_045_5bc7:
    rst $30
    sub a
    ld a, b
    db $e4
    rra
    or $0b
    ld a, l
    ld [bc], a
    ld d, [hl]
    xor c
    ld e, d
    push hl
    jr jr_045_5bc7

    dec bc
    db $f4
    ld b, $fb
    nop
    rst $38
    ld b, d
    db $fd
    sbc b
    ld [hl], a
    cp a
    ld [bc], a
    rst $30
    inc b
    cp a
    ld bc, $00fd
    db $fd
    ret nz

    ldh a, [$a0]
    cp $d0
    cp $fe
    ld c, c
    ld d, $5e
    nop
    ld b, e
    add h
    add c
    ld h, [hl]
    ld [$0211], sp
    sbc b
    set 0, h
    adc b
    ldh a, [$62]
    ld hl, sp-$7b
    db $fc
    ld d, [hl]
    cp $f5
    ld e, e
    and e
    rst $18
    sbc e
    rst $20
    push hl
    ld e, d
    add hl, de
    or [hl]
    rrca
    ld l, e
    ld b, $bd
    ld b, c
    jp $e023


    ld d, b
    cp d
    cp b
    xor h
    call nz, Call_045_637e
    ccf
    ld de, $88fe
    ld c, [hl]
    ld c, h
    and a
    jp nz, Jump_000_00ab

    ld l, l
    ld a, [de]
    dec [hl]
    jp z, $878f

    db $ec
    sub a
    rst $38
    ld l, a
    rst $18
    ld a, l
    cpl
    ld a, a
    ld b, $5e
    inc de
    inc sp
    dec c
    sbc [hl]
    nop
    sbc $81
    add sp, -$01
    ld c, a
    cp $1f
    cp $1e
    cp $1e
    db $fc
    ld e, $fc
    ld e, $fc
    rra
    db $fc
    dec sp
    db $fc
    inc a
    ld hl, sp+$3c
    ld hl, sp+$78
    ld hl, sp+$70
    ld hl, sp+$74
    ld hl, sp+$76
    ld hl, sp+$7f
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    or $c0
    rst $38
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    ret nz

    add b
    ret nz

    add b
    add b
    add b
    ldh a, [$80]
    rra
    add b
    add e
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    ld l, l
    add b
    add l
    ld hl, sp+$00
    rst $38
    or [hl]
    dec bc
    or $01
    cp b
    nop
    add sp, $00
    ld [hl], b
    nop
    ldh a, [rP1]

jr_045_5c9a:
    sbc b
    ld h, b
    di
    inc c
    rst $20
    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    ret nz

    jr nz, jr_045_5c9a

    inc c
    ld e, $87
    inc bc
    ldh [rP1], a
    ld l, a
    nop
    db $e4
    nop
    ld b, h
    add b
    sbc b
    ld h, b
    db $e4
    jr jr_045_5d33

    add a
    ld a, a
    add b
    rst $18
    jr nz, jr_045_5d34

    adc h
    sub h
    ld h, e
    ld hl, $c9dc
    ld [hl], $14
    db $eb
    ei
    ld d, h
    ld [hl+], a
    db $dd
    ld a, b
    rst $00
    ld h, b
    cp a
    and b
    ld e, a
    cp $03
    sub h

jr_045_5cd7:
    dec hl
    jr z, @+$07

    ld c, d
    add l
    ld e, a
    and b
    call nz, $9638
    nop
    dec [hl]
    nop
    rl b
    xor $80
    ld a, a
    and b
    ld e, a
    nop
    and a
    ld [bc], a
    ld c, a
    ld bc, $00fa
    ld [bc], a
    and b
    ld d, c
    db $e4
    cp $18
    jp $9abc


    ld h, l
    db $ed
    inc de
    ld l, l
    sbc a
    ld h, c
    inc b
    cp b
    ld bc, $00e8
    ld h, b
    add b
    and c
    ld b, b
    ld [hl-], a
    ret nz

    inc b
    ld hl, sp-$5c
    call nc, $e1ce
    and b
    ld [hl], e
    ld h, d
    sbc b
    adc $bd
    ld [hl], e
    rst $08
    dec sp
    ld h, a
    ld c, $59
    inc b
    daa
    add e
    sub [hl]
    ld b, b
    db $e3
    jr nz, jr_045_5cd7

    ret c

    jr jr_045_5d5d

    ld e, h
    or $ea
    ld l, c
    or [hl]
    add hl, de
    or $5c

jr_045_5d31:
    ei
    and a

jr_045_5d33:
    ld e, h

jr_045_5d34:
    sub d
    rst $28
    ld b, c
    db $fd
    ld [hl+], a
    ld l, l
    ld [de], a
    ld a, l
    ld e, $2d
    ld h, $5d
    rst $38
    rst $38
    adc d
    push af
    sbc a
    ld h, b
    rst $38
    nop
    rla
    nop
    ld a, a
    add b
    nop
    rst $38
    ld [hl], $c8
    rst $18
    jr nz, jr_045_5d31

    ld hl, $007e
    cp a
    nop
    rst $28
    nop
    cp a
    nop
    sbc l

jr_045_5d5d:
    ld h, d
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $f4
    nop
    rst $20
    nop
    xor e
    nop
    ld [hl], l
    nop
    add b
    nop
    ld e, $e0
    ret c

    rlca
    rst $38
    nop
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    ld a, a
    add b
    rst $30
    add sp, -$41
    ld a, a
    db $e3
    dec e
    ld a, [$d205]
    ld bc, $01e6
    sub b
    nop
    sbc h
    nop
    ld [hl], d
    xor l

jr_045_5d90:
    ld b, $ff
    jr c, @+$09

    inc bc
    nop
    inc hl
    nop
    ld [bc], a
    nop
    ld bc, $8100

jr_045_5d9d:
    nop
    inc c
    ret nz

    ld b, a
    jr c, jr_045_5db2

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    add b
    jr nc, jr_045_5d90

    ld [hl+], a
    inc e

jr_045_5db2:
    sbc h
    inc bc
    dec d
    nop
    dec bc
    nop
    nop
    nop
    ld [bc], a
    nop
    ldh [rP1], a
    call nz, $e138
    ld e, $e8
    rla
    ld [c], a
    dec e
    ld hl, $759e
    add d
    db $10
    add sp, -$7e
    inc a
    jr nz, @-$1f

    cp $11
    ret


    jr nc, jr_045_5df1

    and b
    rra
    ldh [$97], a

jr_045_5dd9:
    ld h, b
    ld c, a
    sub b
    call $f122
    nop
    jr nz, jr_045_5d9d

    add b
    adc a
    ld h, b
    ldh [rNR10], a
    cp h
    adc [hl]
    xor $41
    db $e3
    ld b, c
    jp hl


    push de
    rst $38
    pop hl

jr_045_5df1:
    nop
    or l
    nop
    cp h
    nop
    sub e
    inc b
    ld sp, $dd00
    nop
    call nz, $f140

jr_045_5dff:
    and b
    inc a
    ldh a, [$87]
    ld hl, sp-$25
    ld h, h
    and [hl]
    ld a, a
    ret


    ccf
    ld a, [c]
    rrca
    db $ed
    ld d, e
    xor $31
    ld [$8400], sp
    nop
    jr nz, jr_045_5dd9

    db $d3
    ld h, $0d
    call c, $fc85
    ret nc

    ld l, e
    jr nc, jr_045_5dff

    or h
    ld c, e
    ld c, c
    or [hl]
    call nc, Call_000_26ea
    add hl, sp
    dec d
    ld a, [de]
    inc b
    dec bc
    add b
    rlca
    ld b, c
    pop bc
    and b
    ld l, b
    add hl, sp
    sub h
    ld c, b
    sbc h
    inc b
    sbc $d2
    rst $20
    ld l, d
    ld [hl], l
    db $10
    inc l
    inc e
    adc e
    rst $38
    rst $38
    sbc a
    ld h, b
    ei
    nop
    rst $38
    nop
    jp hl


    nop
    sbc [hl]
    nop
    jr z, @+$01

    db $fd
    nop
    db $db
    jr nz, @-$3f

    ld b, b
    db $fd
    ld [bc], a
    rst $28
    db $10
    rst $38
    nop
    ld l, c
    add b
    jp hl


    nop
    dec de
    db $e4
    ld hl, sp+$07
    call z, $d400
    nop
    ldh [rP1], a
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    ldh [$f4], a
    dec bc
    jr nc, jr_045_5e76

jr_045_5e76:
    add [hl]
    nop
    ld c, $00
    db $f4
    nop
    rst $38
    nop
    ld l, a
    nop
    ccf
    ret nz

    inc bc
    db $fc
    db $ec
    inc bc
    db $e3
    db $10
    xor d
    ld d, l
    xor [hl]
    ld d, c
    inc hl
    ld e, h
    sbc $21
    add a
    ld hl, sp+$70
    rst $38
    ld a, a
    rst $38
    dec [hl]
    ld a, [bc]
    add b
    nop
    ld [$5000], sp

jr_045_5e9d:
    nop
    ld b, b
    nop
    adc b
    nop
    or b
    nop
    adc b
    ld [hl], b
    ccf
    nop
    rlca
    nop
    add b
    nop
    add b
    nop
    ld h, b
    nop
    ld c, b
    nop
    ldh [rP1], a
    call nz, $d030
    ld l, $78
    inc bc
    add hl, bc
    nop
    ld bc, $0000
    nop
    ld [$0204], sp
    ret nz

    ld b, b
    cp h
    ret nc

    ld l, $3a
    rst $00
    ret z

    ld [hl], $34
    inc c
    add [hl]
    inc c
    add l
    ld hl, sp-$68
    ld l, b
    and h
    jr jr_045_5f15

    ld bc, $0061
    add b
    nop
    ld b, b
    nop
    ret nz

    nop
    ld h, b
    ld [hl], h
    nop
    ld a, h
    inc b
    ld c, l
    ld bc, $008d
    add $80
    sub c
    ret nz

    db $e3
    jr c, jr_045_5f6b

    rst $38
    ld [$06a9], sp
    inc a
    ld b, e
    cp a
    nop
    dec hl
    add b
    ld d, l
    ld [c], a
    add hl, sp
    ldh a, [$08]
    adc $b6
    ld [bc], a
    sub e
    ld bc, $0012
    ld a, h
    add b
    xor e
    ld b, b
    ret nc

    and b
    ld l, $f0
    add hl, de
    cp $5b
    inc c
    ld l, c
    ld b, $14

jr_045_5f15:
    dec bc
    ld d, b
    add a
    and d
    ld b, c
    jr nc, jr_045_5e9d

    ld l, c
    nop
    adc d
    sub b
    and h
    ld l, d
    ld sp, $4836
    xor e
    dec h
    sbc d
    ld b, d
    or a
    and c
    ld c, d
    ret z

    scf
    ld l, $d5
    jp nc, Jump_045_6d8f

    dec hl
    ld de, $003e
    dec bc
    inc b
    inc bc
    add d
    add e
    ld b, b
    pop bc
    ldh [$30], a
    nop
    nop
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
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_045_5f81

    ld a, [de]
    dec de
    inc e

jr_045_5f6b:
    dec e
    ld e, $1f
    jr nz, jr_045_5f91

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_045_5fa1

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_045_5fb1

    ld [hl-], a

jr_045_5f81:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_045_5fc1

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_045_5f91:
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

jr_045_5fa1:
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

jr_045_5fb1:
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
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c

jr_045_5fc1:
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
    ld a, h
    ld a, l
    ld a, [hl]
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
    add b
    add c
    add d
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
    jr jr_045_608d

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_045_609d

    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_045_608d:
    nop
    dec b
    dec b
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

jr_045_609d:
    nop
    nop
    dec b
    nop
    nop
    nop
    ld b, $06
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
    nop
    nop
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
    ld bc, $0601
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
    inc bc
    inc bc
    ld [bc], a
    nop
    inc bc
    ld [bc], a
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
    ld [bc], a
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

Jump_045_6102:
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
    rlca
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    inc bc
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
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    inc bc
    inc bc
    ld b, $03
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
    ld b, $06
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    rlca
    rlca
    rlca
    rlca
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
    add hl, bc
    dec bc
    ld a, [bc]
    rrca
    rrca
    rrca

Jump_045_61a0:
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0a0b], sp
    rrca
    rrca
    rrca
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0b08], sp
    ld a, [bc]
    ld a, [bc]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_045_61db:
    rst $38
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $cb
    db $fc
    rst $38
    ld [$10ff], sp
    or $00
    ld sp, hl
    jr nz, jr_045_6258

    jp hl


    jr z, jr_045_61db

    daa
    jp c, $46b9

    sub d
    ld l, l
    rst $38
    ld [$18e7], sp
    db $fc
    inc de
    ld a, [hl]
    ld hl, $6699
    and h
    ld e, e
    ld h, d
    sbc l
    ei
    dec b
    ld d, b
    cpl
    ld a, [c]
    rrca
    push bc
    ld a, $ff
    rst $38
    rst $38
    rst $38
    ei
    db $fd
    db $fd
    ld sp, hl
    db $fc
    ld hl, sp-$04
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
    rst $38
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc
    cp $fc
    db $fc
    db $fc
    db $fc
    cp $ff
    db $fc
    db $fc
    db $fc
    cp $fc
    db $fc
    cp $fc
    rst $38
    rst $38
    db $fc
    db $fd
    cp $fd
    cp $ff
    cp $ff
    cp $fe
    rst $38

jr_045_6258:
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    cp $ff
    cp $fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fa
    db $fd

jr_045_629a:
    ld sp, hl
    rst $38
    push hl
    rst $38
    db $eb
    rst $30
    db $fc
    rst $20
    ld [$ecfd], a
    ei
    ld a, e
    ldh a, [rIE]
    pop hl
    db $fc
    db $e3
    ld [$a7d6], a
    call nc, $8967
    jp c, $ff2d

    db $10
    cp a
    db $10
    rst $38
    jr nz, jr_045_629a

    ld b, c
    ld e, a
    ret nz

    xor d
    sub d
    cp e
    inc b
    db $dd
    inc b
    ld e, $00
    db $dd
    ld [$107e], sp
    db $ed
    db $10
    sbc $20
    ld a, l
    nop
    ld b, [hl]
    ld sp, hl
    inc h
    db $db
    add c
    rst $38
    pop hl
    rst $38
    ld de, $86ef
    ld a, e
    add d
    ld a, a
    ld [bc], a
    rst $38
    rst $38
    db $f4
    rst $38
    ldh [rIE], a
    ld a, [c]
    rst $30
    ld a, [$fffd]
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    add a
    rst $38
    rst $10
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    cp a
    ccf
    sbc a
    ld a, a
    adc a
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    add a
    ld a, a
    rst $20
    ccf
    ld b, a
    ccf
    ld l, a
    rra
    and a
    rra
    di
    rrca
    add hl, hl
    rla
    inc bc
    rra
    ld [hl], c
    rrca
    or e
    rrca
    inc bc
    rst $38
    db $d3
    ccf
    rst $08
    ccf
    ld b, a
    ccf
    add c
    ld a, a
    ld bc, $59ff
    cp a
    rst $10
    rrca
    ei
    rlca
    rst $18
    inc bc
    db $fd
    inc bc
    ld h, c
    sbc a
    ei
    rlca
    inc e
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    rlca
    rst $38
    ld hl, sp+$07
    add hl, de
    rlca
    ld e, h
    inc bc
    ld [hl], e
    rrca
    sub c
    ld a, a
    ld b, e
    ccf
    ld b, d
    ccf
    ld [hl], e
    rrca
    rra
    ccf
    add e
    ld a, a
    rla
    rrca
    scf
    rrca
    scf
    rrca
    ld h, a
    rra
    rla
    ld l, a
    rst $20
    rra
    rrca
    rlca
    rrca
    rlca
    ccf
    rlca
    ld c, a
    add a
    rst $18
    adc a
    cp a
    rrca
    rst $18
    cpl

Call_045_637e:
    cp a
    rla
    or a
    ld l, a
    rst $30
    rst $08
    db $fc
    adc l
    db $fc
    sbc c
    pop af
    sub d
    ld [c], a
    and h
    jp nz, $c8e4

    add b
    rst $10
    cp c
    db $76
    cp [hl]
    ld l, l
    cp [hl]
    ld e, h
    db $fd
    xor e
    ld hl, sp-$22
    ld hl, sp+$16
    ld sp, hl
    cpl
    pop af
    ld [hl], h
    and e
    ld a, d
    ld b, e
    inc l
    rst $00
    sub h
    rst $00
    call $c708
    ld [$11fe], sp
    rst $18
    jr nc, jr_045_642e

    and c
    ei
    ld b, b
    di
    nop
    ld h, d
    add d
    and h
    nop
    ld d, h
    inc b

jr_045_63bc:
    inc c
    nop
    ld c, [hl]
    nop
    rra
    nop
    dec e
    db $10
    ld [hl], $1f
    rst $18
    jr nc, @+$01

    jr nz, jr_045_63bc

    ld h, $ef
    ld b, b
    jp hl


    ld b, [hl]
    jp $bbcd


    adc l
    db $fd
    add e
    ld b, a
    cp c
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    sub $28
    ld hl, sp+$04
    ei
    rst $38
    ld [hl], a
    rst $38
    ld a, l
    rst $38
    dec a
    rst $30
    cp a
    ld [hl], a
    scf
    ei
    ld a, [$b2f7]
    rst $38
    rst $38
    cp $fd
    rst $38
    rst $38
    rst $38
    db $fd
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
    cp $ff
    ld l, a
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
    or $f9
    db $ec
    ld a, [c]

Call_045_6420:
    rst $38
    rst $38
    ldh a, [rIE]
    ld [$fbfd], a
    db $fd
    push af
    ld [$e0fe], a
    db $fd
    ld [c], a

jr_045_642e:
    db $fc
    rst $38
    rst $28
    ldh a, [rIE]
    ldh a, [$fb]
    db $f4
    db $fd
    rst $38
    ei
    db $f4
    push af
    ld a, [$fff4]
    rst $38
    rst $38
    push af
    ld a, [$faf5]
    db $ed
    ldh a, [$fa]
    db $fd
    db $e4
    ldh a, [$e0]
    ldh a, [$f0]
    jp hl


    cp $fd
    rst $38
    ldh a, [$b2]
    db $fd
    ei
    cp $f9
    cp $f7
    ld hl, sp-$01
    ldh a, [$fb]
    db $fd
    di
    db $fc
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    db $fd
    ret nz

    add e
    ldh [$bd], a
    ret nz

    add b
    ret nz

    ret nz

    add b
    add b
    ret nz

    pop bc
    ldh [$de], a
    ldh [$d8], a
    ldh [$cd], a
    ldh a, [$ce]
    ldh a, [$e3]
    db $fc
    ldh [rIE], a
    rst $38
    rst $38
    di
    db $fc
    db $10
    jp nz, $04e2

    ld [bc], a
    inc b
    nop
    dec bc
    sub c
    ld c, $01
    inc d
    ld bc, $6e12
    cp a
    ld a, a
    db $fd
    rst $08
    ld a, a
    cp [hl]
    push hl
    and b
    ei
    add b
    rst $38
    ld d, e
    cp l
    add hl, bc
    di
    dec sp
    push hl
    ld l, c
    and a
    ld d, l
    db $e3
    ld h, a
    jp nz, Jump_045_419e

    adc d
    add h
    sub h
    add h
    ld b, $04
    jr nz, @+$07

    ret z

    ld a, [bc]
    add d
    ld [$0095], sp
    inc b
    ld de, $01a9
    adc d
    ld bc, $212c
    and d
    ld hl, $e843
    pop de
    ld c, b
    ld c, a
    pop bc
    push de
    add e
    push bc
    add e
    add e
    add l
    dec l
    ld bc, $020b
    rrca
    ld [bc], a
    cpl
    ld [bc], a
    ld d, [hl]
    ld [bc], a
    ld [bc], a
    ld b, $14
    ld [bc], a
    ld d, [hl]
    inc b
    sbc b
    ld hl, $8019
    cp c
    adc b
    cp $89
    rst $38
    adc b
    rst $38
    ret z

    ei
    ld c, h
    rst $18
    inc l
    ld e, a
    xor h
    ld h, l
    cp [hl]
    xor [hl]
    ld e, a
    cp a
    ld a, a
    sbc a
    rst $38
    cp [hl]
    db $fd
    cp a
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    ld a, [$3eef]
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
    rst $18
    rst $38
    rst $38
    rst $38
    or a
    dec bc
    add b
    nop
    jp z, $70f5

    adc c
    ldh a, [$08]
    sbc b
    ld h, d
    db $d3
    inc l
    ld [$4804], sp
    and b
    add sp, $10
    or a
    ld b, b
    adc b
    ld d, b
    db $e4
    add hl, bc
    cp [hl]
    pop bc
    ld c, [hl]
    or c
    cp $00
    xor [hl]

jr_045_653d:
    ret nc

    xor $fb
    db $fc
    ld [bc], a
    ldh [rNR10], a
    jr nz, jr_045_6546

jr_045_6546:
    xor [hl]
    ld d, b
    ld [$0810], sp
    nop

jr_045_654c:
    ld [$2504], sp
    jp c, Jump_000_00e8

    or b
    ld b, b
    xor a
    ldh a, [$c0]
    db $10
    add b
    nop
    nop
    add b
    xor [hl]

jr_045_655d:
    pop de
    ret z

    jr nz, jr_045_6598

    ret z

    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, h
    ld b, [hl]
    dec a
    ld b, [hl]
    ccf
    inc h
    rra
    inc h
    rra
    and h
    rra
    daa
    rra
    inc h
    rra
    inc h
    rra
    ld h, $1f
    dec h
    rra

jr_045_657c:
    ld b, h
    ccf
    add h
    ld a, a
    cp $fd
    sbc [hl]
    ld h, c
    cp h
    ld b, e
    and [hl]
    ld d, c
    ld b, c
    or d
    db $10
    ld [c], a
    add b
    ld h, d
    ld [bc], a
    ldh [rP1], a
    and b
    ld b, b
    add b
    db $e4
    ld e, h
    push de
    ld a, h

jr_045_6598:
    pop bc
    db $fc
    cp d
    or h
    db $ec
    cp b
    res 7, b
    ld c, c
    ret c

    jr nz, jr_045_657c

    cp b
    ret nc

    ld de, $9ff0
    jr nc, jr_045_653d

    ld [hl], a
    jr nc, jr_045_654c

    jr nc, jr_045_655d

    jr z, jr_045_65ef

    and b
    ld a, h
    ld [hl], $61
    ld [hl], l
    pop hl
    ld a, c
    pop hl
    ld d, c
    pop hl
    ld h, l
    ret


    reti


    pop hl
    push hl
    pop bc
    and c
    pop bc
    ret nc

    add c
    and c
    add d
    add b
    add e
    adc $a3
    and e
    inc bc
    ld l, [hl]
    inc de
    ld b, [hl]
    ld [bc], a
    dec hl
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    rlca
    nop
    inc b
    inc b
    dec d
    ld [de], a
    ld e, $11
    ccf
    ld [de], a
    call nc, $531b
    sbc l
    ld [hl], a
    sbc d
    ld [hl], e
    adc [hl]
    rst $30

jr_045_65ef:
    sbc d
    db $db
    sub [hl]
    or $9f
    sub $bf
    rst $18
    cp a
    cp $bf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $10
    xor a
    rst $38
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    ld [c], a
    rst $38
    ld hl, sp-$01
    jp hl


    cp $43
    db $fc
    ld b, b
    cp a

jr_045_661c:
    cp a
    ld a, a
    ld c, $11
    ld [$1fff], sp
    rst $38
    ld bc, $00df
    rst $38
    pop bc
    rst $38
    jr nz, @+$01

    nop
    xor $00
    ldh a, [$e0]
    cp $05
    ld [hl], b
    nop
    ld hl, sp-$80
    rst $38
    db $fd
    rst $38
    ret nz

jr_045_663b:
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $10
    and b
    ld d, d
    add b
    nop
    rst $38
    jr z, jr_045_661c

    inc bc
    sub b
    nop
    ld a, [$fffe]
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    rst $38
    add hl, bc
    rst $38
    dec bc
    rst $18
    nop
    rst $38
    cp a
    rst $38
    nop
    pop bc
    rlc b
    ld a, a
    add b
    ld a, $e1
    rst $38
    ld b, b
    rst $10
    jr z, jr_045_663b

    rst $38
    daa
    ret c

    inc bc
    db $fc
    db $dd
    or d
    cp a
    ldh [$3f], a
    ret nz

    ld a, [$ff05]
    cp a
    ld a, l
    and a
    inc h
    adc a
    ld b, $2d
    and a
    rst $28
    inc [hl]
    rst $28
    inc c
    daa
    inc c
    daa
    inc b
    ld l, a
    sbc h
    inc h
    sub h
    inc h
    xor l
    inc d
    scf
    ld b, b
    ld [hl], e
    inc b
    db $e4
    ld e, a
    db $dd
    ld a, a
    ld c, l
    rst $38
    db $76
    rst $18
    ld d, b
    rst $38
    ld [hl], h
    rst $18
    cpl
    ld b, h
    xor h
    rst $10
    add h
    rst $18
    and l
    rst $10
    add [hl]
    cp a
    add h
    xor a
    call nc, $84af
    sub a
    add [hl]
    sbc l
    ld b, h
    add a
    adc l
    ld b, $84
    rlca
    sub h
    ld b, $4d
    add [hl]
    inc h
    add a
    nop
    rlca
    ld b, $13
    add $07
    add d
    dec h
    ld d, [hl]
    rlca
    sub $07
    and l
    ld d, a
    call nc, $cf07
    rlca
    ld [hl], $c7
    ld a, [hl]
    rlca
    db $76
    ld c, $d7
    ld b, $14
    ld b, $e6
    ld b, $0d
    rlca
    ld d, l
    ld b, $cd
    and d
    ld h, a
    and b
    ld b, a
    and b
    ld c, e
    push hl
    ld [hl], e
    db $e4
    cp a
    call nz, $0dfb
    cp a
    ret z

    ret


    inc b
    adc c
    ld b, c
    ld sp, hl
    ld b, b
    ld a, c
    add $f4
    jp z, $fc7a

    ld d, b
    ld a, [$dcfa]
    db $fc
    db $db
    rst $38
    db $fc
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    add e
    rst $38
    inc de
    rst $28
    inc l
    db $d3
    and b
    ld e, c
    ld b, [hl]
    cp c
    inc l
    db $d3
    inc c
    di
    db $fd
    dec bc
    nop
    rst $38
    db $ec
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    ld bc, $a580
    nop
    nop
    add sp, $02
    ld bc, $8410
    nop
    db $fc
    jr c, @+$01

    ld bc, $44f2
    ret nc

    ret nz

    rst $38
    nop
    rst $38
    sbc a
    nop
    ccf
    nop
    inc b
    ldh [rOCPD], a
    nop
    ld a, a
    nop
    ld a, a
    nop
    add b
    rst $38
    xor l
    nop
    dec a
    nop
    nop
    and e
    add b
    cp $80
    cp $00
    rst $30
    ld a, [$a0ff]
    rst $38
    rst $38
    jr nz, jr_045_676b

    rst $38
    rst $38
    nop
    cp $00
    rst $38
    nop
    adc d

jr_045_676b:
    ld [hl], l
    rst $38
    ld b, b
    dec de
    db $e4
    cp l
    jp nc, Jump_000_00f0

    ldh [rP1], a
    cp d
    pop bc
    ld l, b
    rst $10
    rrca
    di
    db $fc
    rst $38
    ld a, $01
    xor c
    ld d, $90
    nop
    ld a, [hl]
    add e
    ld a, a
    rst $38
    ret nz

    ld a, a
    ld b, b
    rst $38
    ld c, a
    rst $38
    ld c, c
    ld a, a
    ld c, c
    ld a, a
    ld c, c
    ld a, a
    ld c, c
    ld a, a
    ret


    ld a, a
    ret


    ld a, a
    ret


    ld a, a
    ret


    ld a, a
    ret


    ld a, a
    ld c, c
    rst $38
    ret


    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ret


    ld a, a
    ld c, c
    rst $38
    ret


    ld a, a
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ld c, a
    rst $38
    ld b, b
    ldh a, [rLCDC]
    rst $38
    ld b, b
    ld a, a
    cp a
    ld a, a
    ld a, [hl-]
    db $fc
    ld e, $69
    ld [$18f9], sp
    rst $28
    ld a, [de]
    rst $28
    rra
    rst $28
    ld c, $ef
    ld [$19ef], sp
    rst $08
    inc c
    rst $18
    xor [hl]
    ld e, l
    inc c
    ld l, a
    inc d
    ld c, [hl]
    ld b, l
    ld l, $05
    ld e, [hl]
    push bc
    ld e, $f8
    inc b
    xor h
    ld d, b
    add sp, $59
    cp l
    ld l, c
    ld c, a
    or c
    ld l, c
    di
    and a
    di
    rst $00
    or e
    push bc
    ld h, $a5
    ld b, [hl]
    ld c, [hl]
    daa
    rrca
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rra
    sbc a
    rra
    rra
    ccf
    rst $38

Call_045_6803:
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    rst $20
    rst $18
    rst $18
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld a, a
    cp $76
    cp $74
    cp $66
    rst $38
    ld b, l
    rst $38
    ld h, b
    rst $38
    db $e3
    rst $38
    ld b, c
    ld a, [hl]
    ld b, b
    ld a, [hl]
    ret nz

    ld a, [hl]
    ld c, h
    ld [hl], d
    ld c, d
    ld [hl], h
    ld b, d
    db $fc
    ld b, d
    ld a, h
    ld b, d
    ld a, h
    pop bc
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop bc
    ld a, [hl]
    pop de
    ld a, [hl]
    pop bc
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    pop bc
    ld a, [hl]
    ret nz

    ld a, a
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    pop bc
    ld a, [hl]
    ld b, b
    ld a, [hl]
    nop
    ld a, [hl]
    ld b, b
    ld a, [hl]
    ret nz

    ld a, a
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    pop hl
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    ld b, c
    ld a, [hl]
    pop bc

jr_045_685d:
    ld a, [hl]
    pop de
    ld l, [hl]
    ld [hl], b
    ld c, [hl]
    ret nc

    ld l, [hl]
    ld d, d
    ld l, [hl]
    ld [hl], d
    ld c, [hl]
    ld c, e
    db $76
    ld a, e
    ld b, h
    ld l, [hl]
    ld b, b
    ld b, l
    ld c, d
    inc bc
    ld b, [hl]
    ld b, h
    ld [bc], a
    ld b, c
    ld b, d
    add $61
    dec l
    ld [hl-], a
    rst $38
    rst $38
    rst $20
    ld a, b
    db $10
    ldh [$84], a
    nop
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
    rst $38
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38

jr_045_68ae:
    rst $38
    rst $38
    ld h, c
    ld l, $20
    dec l
    inc b
    inc hl
    nop
    ld [hl], l
    ld sp, $9052
    ld d, d
    jr jr_045_68ae

    ld b, c
    sbc b
    ld e, b
    sbc b
    jr z, jr_045_685d

    ld c, d
    ld [$8838], sp
    ld a, b
    adc h
    ld d, l
    xor h
    dec b
    db $ec
    inc l
    call nz, $07e1
    add hl, de
    add a
    cp c
    rlca
    dec l
    inc de
    ld d, c
    cpl
    add c
    ld a, a
    inc bc
    rst $30
    ld bc, $83f7
    ld l, a
    add hl, bc
    rst $20
    dec l
    db $d3
    ld sp, $bdcf
    rst $20
    push af
    set 6, l
    res 6, c
    ld e, a
    ld sp, hl
    rst $10
    ld sp, hl
    rst $30
    db $fd
    ei
    rst $38
    rst $30
    rst $38
    ei
    db $fd
    ei
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $30
    ld hl, $3177
    rlca
    rlca
    ccf
    ld l, c
    sub a
    ld hl, $07df
    rst $38
    dec h
    rst $38
    add e
    ld a, a
    ld bc, $7907
    add a
    ei
    rlca
    pop af
    rlca
    ld l, c
    add a
    ld d, c
    rlca
    inc bc
    rlca
    ld bc, $f907
    rlca
    ld bc, $0107
    rlca
    ld sp, hl
    rlca
    sbc c
    rlca
    ld a, c
    rlca
    db $fd
    rlca
    ld sp, hl
    rlca
    inc bc
    rlca
    rlca
    rlca
    dec e
    rlca
    inc bc
    rlca
    inc bc

Call_045_693b:
    rlca
    ld bc, $f907
    rlca
    ld bc, $f907
    rlca
    ld sp, hl
    rlca
    ld bc, $0107
    rlca
    ld sp, $f107
    rlca
    ld bc, $a107
    rlca
    jp hl


    rlca
    ld bc, $3307
    rlca
    ld sp, hl
    rlca
    ei
    rlca
    ld sp, hl

jr_045_695d:
    rlca
    ld bc, $83ff
    rla
    dec c
    inc hl
    ld a, c
    add a
    dec b
    di
    xor a
    ld e, a
    rst $30
    ld hl, sp+$04
    nop
    add b
    nop
    nop
    nop
    ld bc, $ff00
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    rst $38
    rst $38
    add b
    add b
    nop
    ld a, a
    nop
    rst $38
    ld a, a
    rst $38
    sbc d
    and $bf
    add a
    ld a, l
    ei
    ld c, c
    push de
    ret nz

    ld a, a
    ld h, b
    rst $18
    inc h
    cp e
    jr nc, jr_045_695d

    ld [hl], b
    ccf
    sbc a
    ld a, [hl]
    rst $38
    cp [hl]
    cp a
    ld a, b
    cp $38
    ld e, h
    ld hl, sp-$14
    sub b
    ld l, h
    ret nc

    sbc b
    ld h, b
    rst $38
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
    rra
    rrca
    rrca
    ld c, a
    rlca
    inc bc
    rlca
    rst $08
    scf
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $20
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, h
    db $fc
    ld h, h
    db $fc
    ld h, h
    db $fc
    ld h, h
    db $fc
    ld h, h
    db $fc
    ld h, h
    db $fc
    ld h, h
    db $fc
    ld h, h
    db $fc
    ld h, h
    db $fc
    ld h, h

jr_045_69f3:
    db $fc
    db $e4
    db $fc
    inc b
    inc e
    inc b
    db $fc
    inc b
    db $fc
    db $fc
    db $fc
    ld [hl], b
    ld [$70fe], sp
    cp h
    ldh a, [$78]
    ldh [$f0], a
    add b
    ld [hl], b
    ret nz

    ldh [$80], a
    ld h, b
    add b
    ret nz

    nop
    add b
    rst $38
    jr nz, jr_045_69f3

    inc b
    ei
    inc h
    db $db
    dec h
    jp c, $ed12

    dec hl
    call nc, $d629
    sub b
    ret nz

    ret nz

    ret nz

    cp $c0
    rst $30
    ret z

    db $ed
    jp nc, $fac4

    call nz, $c5fc
    ld hl, sp-$60
    ret nc

    add b
    ldh [$a4], a
    ret z

    sbc e
    ret nz

    or [hl]
    pop de
    or l
    ldh [$ba], a
    pop bc
    or [hl]
    pop bc
    add sp, -$29
    db $db
    call z, $ddf7
    rst $28
    cp $ff
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
    rst $28
    rst $38
    rst $00
    rst $38
    pop bc
    rst $38
    rst $00
    db $fd
    ret


    rst $38
    jp $dfff


    rst $38
    jp z, $fdc1

    ret nz

    jp nz, $c1c9

    ret nc

    pop de
    ret z

    ret nz

    pop bc
    db $d3
    ret nz

    db $d3
    ret nz

    db $fc
    jp $c1de


    cp $c1
    ret nz

    rst $38
    cp $c1
    and $c1
    ret nc

    rst $28
    sbc $c1
    jp nz, $c6c1

    pop bc
    cp $c1
    add b
    pop bc
    add b
    pop bc
    sub $e9
    set 0, b
    adc [hl]
    pop bc
    ld a, [$fec5]
    pop bc
    cp $c1
    ldh [$df], a
    ld a, [$e8c5]
    rst $10
    db $f4
    set 1, b
    pop bc
    pop bc
    ret nz

    jp z, $d7c5

    set 3, c
    add $f6
    ret


    push af
    ret z

    ret nz

    rst $20
    db $fd
    jp $ecd2


    call c, $dbc0
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$c0], a
    jp c, $c4c0

    ret nz

    ret nc

    ret nz

    pop bc
    ret nz

    call nz, $d0c0
    ret nz

    ret nz

    ret nz

    cp $ff
    ld sp, hl
    cp $f7
    ld a, [$f4eb]
    cp $e0
    rst $28
    ret nc

    rst $30
    ret z

    jp nz, $d3fd

jr_045_6ae1:
    xor $dc
    or e
    rst $28
    sub b
    rst $30
    adc b
    ei
    add h
    db $fd
    ld [bc], a
    rst $38
    ld bc, $00ff

jr_045_6af0:
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, @-$5f

    jr nz, jr_045_6af0

    db $10
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, e
    add h
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, [hl]
    add c
    ld a, a
    add b
    ccf
    ret nz

    ld e, a
    and b
    ld e, a
    and b
    cpl
    ret nc

    daa
    ret c

    or a
    ld c, b
    dec de
    db $e4
    ld e, e
    and h
    ld sp, $e7fe
    db $fc
    xor [hl]
    ld sp, hl
    ld bc, $80ff
    rst $38
    ld b, c
    rst $38
    sbc c
    rst $38
    or a
    rst $38
    inc b
    ld bc, $000b
    adc [hl]
    ld de, $a619
    rst $20
    jr jr_045_6ae1

    ld d, c
    ld [hl], a
    adc c
    db $d3
    inc a
    ld l, d
    cp l
    ld e, h
    ld a, [c]
    cp $e8
    ld a, h
    or h
    db $ec
    ld [hl], b
    call nz, $c170
    or b
    sub d
    ldh [$d9], a
    and b
    pop bc
    ret nz

    add $e9
    call nz, $c0cb
    rst $18
    pop bc
    call z, $f8c7
    pop de
    xor $c1
    ld hl, sp-$20
    pop af
    ret nz

    pop bc
    ld b, b
    pop hl
    add b
    pop hl
    ld b, b
    pop bc
    ld b, b
    pop hl
    nop
    pop bc
    call $c1e1
    pop hl
    push hl
    pop hl
    pop bc
    pop hl
    pop bc
    ei
    jp $c5f9


    jp hl


    pop bc
    db $eb
    ld sp, hl
    pop hl
    ldh [$c1], a
    xor $c1
    ldh [$c7], a
    ld [c], a
    push bc
    db $eb
    pop bc
    ld c, c
    jp $cb61


    pop hl
    ret z

    push hl
    ret z

    db $ed
    ret nz

    push hl
    ret z

    ld l, d
    call nz, $e02e
    ld h, b
    ret nz

    xor a
    ret nz

    and $c8
    ld h, [hl]
    ret z

    ld l, c
    call nz, $c864
    inc hl
    ret z

    db $eb
    nop
    and $00
    and h
    nop
    and e
    inc c
    db $e3
    inc c
    db $f4
    or b
    ld a, [$fe08]
    ld h, [hl]
    rst $38
    ld d, c
    rst $38
    nop
    rst $38
    nop
    ld a, a
    rst $38
    rra
    rst $38
    xor b
    rst $38
    jr nz, @+$01

    ld sp, hl
    cp $4f
    ldh a, [$bf]
    ld hl, sp-$01
    ret nc

    ld hl, sp+$00
    add sp, $00
    ld a, [hl]
    nop
    rst $38
    nop

jr_045_6bd8:
    cp a
    nop

jr_045_6bda:
    rrca
    nop
    sub a
    nop
    ret


    jr nz, jr_045_6bd8

    nop
    cp a
    ld b, b
    ld a, e
    add h
    cp l
    ld b, d
    rst $18
    jr nz, jr_045_6bda

    db $10
    rst $30
    ld [$847b], sp
    db $fd
    ld [bc], a
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    cp $00
    cp $00
    ld l, a
    add b
    or $01
    rst $38
    nop
    xor $00
    push af
    nop

jr_045_6c06:
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $18
    jr nz, jr_045_6c06

    db $10
    rst $28
    db $10
    rst $30

jr_045_6c1b:
    ld [$04fb], sp
    ei
    inc b
    add l
    ld a, a
    inc bc
    rst $38
    inc hl
    rst $38
    ld b, a
    rst $38
    dec bc
    rst $38
    rra
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rlca
    add b
    add hl, de
    ld b, $84
    dec de
    push de
    ld a, $d0
    ld a, l
    ld [hl], e
    sub e
    rst $20
    ld c, a
    ld bc, $c3ff
    ccf
    dec c
    ld [hl], e
    ld bc, $497f
    ccf
    ld b, l
    cp a
    ld b, c
    cp a
    add d
    ld a, l
    ld b, h
    dec sp
    ld b, h
    dec sp
    inc b
    ld a, e
    ld c, h
    inc sp
    ld b, h
    dec sp
    ld b, l
    ld [hl-], a
    ld [$0537], sp
    ld a, [hl-]
    dec hl
    ld d, $21
    rra
    ld sp, $110f
    ld c, $01
    rrca
    dec de
    ld b, $08
    rlca
    ld [bc], a
    rlca
    rlca
    inc bc
    ld [bc], a
    inc bc
    and d
    ld [bc], a
    ld [c], a
    nop
    ld h, e
    ld bc, $42b1
    ld a, [$6b01]
    db $10
    pop hl
    inc de
    pop hl
    ld a, [de]
    ld b, d
    jr nc, jr_045_6c97

    ld h, b
    pop bc
    ld [hl+], a
    ld [hl+], a
    ld b, b
    call nz, $c622
    jr nz, jr_045_6c1b

    ld h, e
    and $ff
    di
    cp $d6
    ei
    xor l

jr_045_6c97:
    ld a, [c]
    cp [hl]
    ld a, [c]
    xor $f2
    xor $f2
    cp $e2
    di
    cp $f7
    cp $ff
    cp $fe
    cp $fe
    cp $fe
    cp $be
    cp $fe
    cp $1a
    and $1a
    rst $20
    ld e, d
    and a
    ld [hl], d
    adc a
    ld [hl], e
    adc a
    ld bc, $03fe
    db $fc
    rst $10
    jr z, @+$01

    rst $38
    cp a
    rst $38
    ld c, a
    rst $38
    add l
    ld a, a
    nop
    rst $38
    ret nz

    ccf
    ld h, b
    rra
    ld [$0f07], sp
    nop
    ld bc, $8000
    nop
    rst $28
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $08
    nop
    rla
    nop
    pop hl
    nop
    db $eb
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
    ld a, a
    add b
    rst $18
    nop
    rst $30
    nop
    db $ed
    db $10
    ei
    nop
    or a
    nop
    db $fc
    ld [bc], a
    ld a, [hl]
    ld bc, $003e
    ld a, $00
    rst $18
    nop
    rst $30
    ld [$045b], sp
    ei
    nop
    ld e, h
    add c
    db $ed
    nop
    cp [hl]
    ld b, b
    rst $30
    nop
    db $fd
    nop
    pop af
    ld [$00fd], sp
    ld a, [$cc04]
    ld [$01ba], sp
    ld h, l
    ld [bc], a
    adc d
    dec b
    xor b
    rla
    jp $103e


    rst $38
    and b
    rst $38
    cp d
    ld b, l
    inc hl
    db $dd
    rlca
    cp $9a
    ld a, h
    ld a, l
    ld a, [$f3ee]
    rst $30
    rst $08
    ld e, a
    cp [hl]
    cp e
    rst $38
    rst $38
    rst $28
    rst $30
    rst $28
    ld c, a
    rst $38
    ld c, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $18
    rlca
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    inc de
    cpl
    inc bc
    nop
    jr @+$01

    cp $03
    rst $38
    ld bc, $01ff
    add b
    ld a, a
    ld a, a
    ld bc, $00ff
    rst $38
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]

Call_045_6d77:
    push de
    ld l, $51
    rlca
    ld c, b
    ld d, e
    nop
    and e
    ld e, a
    nop
    rst $38
    nop
    ei
    ld [$a1e5], sp
    rst $38
    nop
    rst $28
    add b
    ld [hl], a
    nop
    ld a, a
    rst $38

Jump_045_6d8f:
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
    rst $38
    ccf
    ldh [rNR41], a
    ldh [rNR41], a
    pop hl
    dec h
    rst $38
    ccf
    pop hl
    dec h
    push hl
    dec h
    pop hl
    ld hl, $3fbf
    and e
    dec hl
    ld [hl+], a
    daa
    inc c
    ld h, e
    rra
    ld a, a
    ld de, $1be0
    di
    ccf
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    jp z, $0805

    push hl
    add [hl]
    ldh a, [$03]
    ld hl, sp+$00
    rst $38
    ret nz

jr_045_6dc9:
    ccf
    ld [hl], b
    adc a
    xor $11
    rst $18
    jr nz, jr_045_6df5

    rst $18
    add b
    ld a, a
    ldh [$1f], a
    ld [hl], c
    rrca
    ld e, c
    rst $20
    ld d, d
    db $ed
    sub c
    ld a, [hl]
    ld [c], a
    dec e
    di
    inc c
    ld a, [$7c07]
    inc bc
    rst $18
    nop
    sub e
    inc c
    ld a, [hl]
    ld bc, $09b6
    xor e
    inc b
    and h
    ld b, e
    ret nc

    cpl
    ld [c], a

jr_045_6df5:
    jr jr_045_6dc9

    inc c
    db $fd
    ld [bc], a
    ld a, [hl]
    ld bc, $205f
    cpl
    db $10
    db $fd
    nop
    rst $18
    nop
    adc c
    ld [bc], a
    ld e, d
    dec h
    xor l
    ld [de], a
    db $f4
    add hl, bc
    sub [hl]
    ld [$0669], sp
    ld a, d
    dec b
    ld e, [hl]
    add c
    cp a
    ld b, b
    sbc [hl]
    ld h, b
    dec hl
    db $10
    ld h, h
    add hl, de
    ld d, $09
    sub c
    ld b, $dc
    jr nc, @+$01

    ld d, b
    db $ed
    inc bc
    db $db
    rlca
    and a
    rra
    ld a, h
    rra
    ld sp, hl
    ld a, a
    push af
    rst $38
    ld e, a
    and $59
    xor a
    xor c
    ld [hl], $2f
    sbc $39
    rst $38
    db $eb
    rst $30
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    cp $ff
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
    rst $38
    cp $fe
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fe
    rst $38
    cp $ff
    cp $ff
    inc a
    rst $38
    xor e
    ld e, h
    ld a, $fd
    ld [c], a
    dec e
    sbc $31
    xor [hl]
    ld e, c
    jp z, Jump_000_1d35

    ld h, d
    ld d, $09
    jp c, Jump_000_0e25

    ld de, $055a
    or $39
    cp d
    ld a, l
    xor h
    ld d, c
    dec sp
    push bc
    ei
    db $ed
    cpl
    ld e, c
    nop
    ld c, c
    ld a, [bc]
    ld bc, $05fb
    rrca
    ld hl, $0107
    ld a, [bc]
    ld bc, $c1b9
    dec sp
    ld bc, $0119
    ld a, a
    add hl, bc
    push de
    ld bc, $ff01
    rst $38
    rst $38
    ld bc, $01f1
    pop af
    dec b
    ld a, c
    rst $38
    rst $38
    ld bc, $0101
    add hl, bc
    ld d, e
    db $ed
    rst $38
    rst $38
    ld h, e
    ld [hl], c
    ld h, c
    ld [hl], e
    pop hl
    ld a, a
    rst $38
    rst $38
    dec b

jr_045_6eb5:
    inc bc
    sub l
    dec bc
    rst $38
    rst $38
    dec sp
    rst $38
    nop
    rst $38
    ld a, c
    add [hl]
    ld e, b
    rst $38
    ld h, $ff
    ld c, b
    ccf
    jr nz, @-$38

    ld [$41f0], sp
    cp b
    db $10
    rst $28
    xor [hl]
    ld d, c
    cp e
    rst $38
    ld h, h

jr_045_6ed3:
    rst $38
    ld b, d
    rst $38
    rst $00
    rst $38
    ld [de], a
    rst $38
    jr nz, @+$01

    ld [$65ff], sp
    sbc a
    add hl, de
    rst $20
    sub $39
    ld d, e
    db $ec
    ld e, h
    db $e3
    rst $20
    jr c, @-$0b

    inc c
    jr c, jr_045_6eb5

    ld e, [hl]
    pop hl
    rst $08
    jr c, jr_045_6f34

    cp [hl]
    and d

jr_045_6ef5:
    ld e, a
    ld e, h
    inc hl
    ld e, d
    ld bc, $29d6
    ld h, h
    sbc e
    sbc e
    ld h, h
    xor c
    ld d, $62
    dec e
    ld sp, hl
    ld b, $78
    add a
    cp [hl]
    ld b, c
    ld e, $21
    cpl
    sub b
    sub a
    jr z, jr_045_6ed3

    inc e
    ld d, b
    xor a
    jr nz, jr_045_6ef5

    add b
    ld a, a
    ld c, b
    scf
    ldh [$1f], a
    or b
    ld c, a
    ret c

    daa
    push bc
    nop
    add a
    ld b, b
    rra
    ret nz

    add b
    ret nz

    ld bc, $00c0
    ret nz

    add c
    ret nz

    ret nz

    add b
    ld b, c
    add b

Call_045_6f32:
    ld b, e
    add b

jr_045_6f34:
    jp Jump_045_4380


    add b
    jp $8580


    ret nz

    res 0, b
    jp $a080


    add e
    sub c
    add e
    or l
    add c
    ld sp, hl
    add c
    cp c
    add c
    pop af
    add c
    di
    add c
    sub l
    add c
    push af
    add e
    or c
    add c
    push af
    add c
    pop hl
    add c
    cp c
    add c
    push af
    add c
    pop af
    add c
    pop hl
    add c
    jp hl


    add c
    db $ed
    add c
    pop hl
    add c
    push hl
    add c
    push hl
    add c
    pop hl
    add c
    pop hl
    add c
    cp c
    add c
    pop hl
    add c
    db $eb
    add c
    pop af
    add c
    pop af
    add c
    ld sp, hl
    add e
    db $fd
    add c
    db $fd
    add e
    ld sp, hl
    add e
    push af
    add e
    ld e, c
    add e
    ei
    add e
    dec sp
    add e
    ld c, e
    add e
    ld c, e
    add e
    ld e, e
    add e
    dec de
    add e
    ld e, a
    inc bc
    ld a, e
    inc bc
    ld [hl], a
    add e
    ld a, a
    add e
    ld [hl], a
    inc bc
    ld l, a
    inc bc
    rst $08
    inc bc
    ld c, a
    inc bc
    ld c, a
    inc bc
    rst $00
    inc bc
    rst $08
    inc bc
    adc e
    inc bc
    rlc e
    daa
    inc bc

jr_045_6fac:
    dec bc
    inc bc
    dec bc
    inc bc
    rrca
    inc bc
    rrca
    inc bc
    rlca
    ld b, e
    rlca
    inc bc
    rrca
    inc bc
    inc de
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    daa
    inc de
    rlca
    ld d, e
    rlca
    ld d, a
    rlca
    rra
    rlca
    dec de
    rlca
    rra
    and a
    rra
    rst $20
    ei
    rlca
    ei
    rlca
    sbc l
    rlca
    pop hl
    nop
    dec a
    nop
    ld b, l
    nop
    add hl, hl
    nop
    nop

jr_045_6fdf:
    nop
    ld d, [hl]
    and c
    ld sp, $adcc
    ld [hl], d
    ld d, d
    cp l
    inc e
    db $e3
    and [hl]
    ld e, c
    di
    inc c
    ld e, d
    and l
    cp [hl]
    ld b, c
    rst $08
    jr nc, jr_045_6fac

    ld c, b
    ld a, a
    add b
    ld a, $c1
    rra
    ldh a, [$a1]
    ld e, [hl]
    ld b, e
    cp [hl]
    and b
    ld e, a
    add b
    ld a, a
    ld b, b
    cp a
    ld l, b
    sub a
    ld d, b
    xor a
    ld c, $f1
    ret c

    daa
    and b
    ld e, a
    pop de
    ld c, $d8
    inc bc
    ld e, h
    add e
    jr z, jr_045_6fdf

    inc de
    db $e4
    dec bc
    db $f4
    ld b, $f9
    inc bc
    db $fc
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
    cp $fe
    rst $38
    cp $fe
    rst $38
    cp $ff
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
    cp $fc
    rst $38
    cp $ff
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
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
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    rst $38
    db $fc
    ld hl, sp-$04
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$02
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$02
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$01
    ld hl, sp-$10
    ld hl, sp-$08
    ld hl, sp-$10
    ld hl, sp-$01
    ld hl, sp-$0d
    ld hl, sp-$09
    ld hl, sp-$10
    ld hl, sp-$0a
    ld hl, sp-$01
    ld hl, sp-$0d
    ld hl, sp-$0d
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp-$0a
    ld sp, hl
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp nc, $e0ff

    ld c, $b4
    ld b, c
    push af
    nop
    sbc [hl]
    ld h, b
    dec l
    jp nc, $ff39

    push bc
    ccf
    ld a, b
    rlca
    ld e, a
    add c
    add d
    ld [hl], c
    ld d, d
    xor l
    adc h
    ld [hl], e
    ld b, b
    ccf
    ld h, c
    adc [hl]
    ld a, b
    add a
    add $31
    ld sp, hl

jr_045_70f7:
    nop
    ld l, d
    add b
    ld [hl], l
    add b
    rst $08
    jr nc, @-$27

    ld [$84fb], sp
    ld e, a
    ldh [rNR42], a
    cp $00
    rst $38
    add hl, bc
    cp $22
    rst $18
    inc d
    db $eb
    ld [$06f7], sp
    ld sp, hl
    add c
    ld a, [hl]
    add b
    ld a, a
    jr nz, jr_045_70f7

    ld [bc], a
    rst $38
    ld b, b
    cp a
    ld d, b
    xor a
    xor d
    ld b, a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $18
    adc e
    ld [hl], a
    xor a
    sbc $da
    push af
    ld e, a
    ldh [$f8], a
    ld b, a
    sub b
    cpl
    and [hl]
    ld e, c
    ld e, l
    ld [hl+], a
    rst $38
    nop
    ld a, [c]
    dec c
    cp a
    ld b, b
    rst $30
    nop
    ld l, [hl]
    nop
    call c, $d000
    nop
    add b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    dec hl
    nop
    reti


    rlca
    db $fd
    cp $cc
    ldh a, [$ef]
    nop
    cp b
    rlca
    ld e, e
    jr nz, jr_045_7199

    nop
    ld a, e
    nop
    nop
    inc bc
    add b
    inc e
    ld a, d
    inc b
    cp l
    nop
    cp b
    nop
    ld [$af04], a
    ld b, b
    ld a, a
    nop
    sbc a
    nop
    ld a, [$4801]
    or [hl]
    sub $00
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    sub c
    ld l, $17
    add sp, $3e
    nop
    rst $38
    nop
    rst $18
    nop
    db $fc
    inc bc
    cp $00
    db $f4
    nop
    ld [$d600], a
    nop
    ld bc, $fffe
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    rst $38

jr_045_7199:
    nop
    ei
    nop
    sub $00
    rst $38
    nop
    ldh a, [rIF]
    ld a, a
    nop
    rst $18
    nop
    ld e, e
    nop
    ld de, $e5ee
    nop
    ldh a, [$08]
    ld a, [c]
    nop
    ld a, [hl+]
    ret nc

    cp $01
    sbc a
    ld h, b
    ld h, a
    sbc b
    rlca
    ld hl, sp+$04
    ei

jr_045_71bc:
    rst $20
    jr @+$59

    xor b
    add b
    nop
    ret nc

    ld [$20dd], sp
    ld a, a
    add b
    ld e, b
    and a
    ld a, e
    rst $38
    add b
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, $3f
    ld b, b
    dec bc
    ld h, $01
    jr nz, jr_045_71bc

    pop bc
    inc e
    ld c, b
    or a
    cp l
    ret nz

    ccf
    nop
    adc a
    ld b, b
    ld hl, $0f06
    inc b
    rla
    nop
    add hl, bc
    nop
    ld bc, $0000
    ld a, a
    add b
    ld a, a
    ld d, b
    xor a
    ld [$a477], sp
    dec de
    jr nz, jr_045_720b

    sbc b
    inc bc
    ld a, [hl+]
    db $10
    ret nc

    ld [$8064], sp
    ret c

    ld bc, $00f5
    ei
    nop
    ld d, [hl]

jr_045_720b:
    and b
    add l
    ld hl, sp+$4b
    db $f4
    inc b
    ei
    add c
    ld a, [hl]
    ld bc, $acfe
    di
    ld b, b
    rst $38
    ld [$80ff], sp
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ei
    dec a
    call nz, $0c3b
    db $d3
    inc e
    db $db
    sub b
    rra
    jr jr_045_724b

    ld a, [bc]
    dec e
    sub h
    dec de
    adc b
    inc de
    adc b
    inc de
    ld [de], a
    ld bc, $0300
    nop
    inc bc
    ld [$1c07], sp
    rra
    inc [hl]
    rra
    ld a, h
    rra
    ld e, h

jr_045_724b:
    ccf
    inc l
    di
    nop
    inc bc
    ld [$3807], sp
    rlca
    ld hl, sp+$07
    ld [$0807], sp
    rlca
    ld [$7807], sp
    rlca
    adc b
    rlca
    nop
    rlca
    nop
    rlca
    ld [$e807], sp
    rlca
    ret nz

    rlca
    nop
    rlca
    nop
    rlca
    jr z, jr_045_7277

    ld hl, sp+$07
    jr jr_045_727b

    jr @+$09

    sbc b

jr_045_7277:
    rlca
    cp b
    rlca
    ld a, b

jr_045_727b:
    rlca
    jr jr_045_7285

    jr @+$09

    jr @+$09

    db $10
    rrca
    cp b

jr_045_7285:
    rlca
    jr @+$09

    jr jr_045_7291

    jr @+$09

    jr jr_045_7295

    jr c, @+$09

    db $10

jr_045_7291:
    rrca
    jr @+$09

    cp b

jr_045_7295:
    rlca
    jr c, jr_045_729f

    jr c, @+$09

    jr c, @+$09

    jr nc, jr_045_72ad

    db $10

jr_045_729f:
    rrca
    ldh a, [$0b]
    jr nc, jr_045_72ad

    jr nc, jr_045_72af

    inc [hl]
    add hl, bc
    inc [hl]
    add hl, bc
    ld h, h
    add hl, de
    inc [hl]

jr_045_72ad:
    add hl, bc
    ld [hl+], a

jr_045_72af:
    dec e
    ld hl, $e01e
    rra
    jr nz, jr_045_72d5

    ld h, b
    rra
    ld h, b
    rra
    pop hl
    ld e, $e3
    inc e
    ld [$0814], a
    stop
    jr @+$1a

    nop
    ld b, b
    inc c
    ldh a, [rDIV]
    add b
    call nc, $feee
    inc bc
    rst $38
    ei
    rst $38
    and b
    db $fd
    inc d

jr_045_72d5:
    rst $38
    ld b, b
    rst $38
    ld [$80ff], sp
    daa
    jr nc, jr_045_72e5

    ld h, d
    sbc l
    rst $28
    nop
    ld a, a
    nop
    rst $28

jr_045_72e5:
    add b
    ld sp, hl

jr_045_72e7:
    jr nz, jr_045_72e7

    nop
    rst $38
    nop
    rst $38
    inc b
    ld a, [hl]
    inc bc
    ld e, a
    cp a
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    add b
    rst $38
    inc c
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld bc, $02ff
    rst $38
    add b
    ld a, a
    nop
    ccf
    jr nz, jr_045_732b

    nop
    and e
    sub h
    ld b, c
    ld b, $f8
    inc bc
    ld hl, sp-$7b
    ld a, d
    ld [$18f7], sp
    rst $20
    ld bc, $5eff
    rst $38
    dec b
    cp $fa
    rst $38
    cp $bb
    ld a, d
    rst $38
    ld a, [$b3ff]
    cp $0e

jr_045_732b:
    di
    dec bc
    or $02
    di
    ld [bc], a
    ld [c], a
    ld a, [de]
    ld [c], a
    ld [bc], a
    ld [c], a
    ld [bc], a
    ld [c], a
    ld a, [hl-]
    add $16
    ld [c], a
    dec b
    ld [$c71a], a
    sbc d
    rlca
    ld b, $87
    rlca
    sub a
    rlca
    and a
    add a
    ld a, a
    ld b, a
    or a
    and a
    ld d, a
    rst $28
    rla
    and a
    ld d, a
    cpl
    rst $10
    rlca
    rst $30
    ld e, a
    and a
    rla
    rst $00
    add a
    ld l, a
    add a
    ld c, a
    rlca
    sbc $07
    ld e, a
    rlca
    ld a, a
    adc a
    ld [hl], $1f
    ld l, [hl]
    rrca
    ld a, [hl]
    adc a
    ld a, [hl]
    adc a
    ld a, [hl]

jr_045_736e:
    ld c, $fe
    rrca
    cp $8f
    ld a, [hl]
    rrca
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $4f
    cp [hl]
    rra
    xor $4f
    cp [hl]
    adc l
    ld a, [hl]
    rrca
    db $fc
    rrca
    db $fc
    rra
    db $fc

Jump_045_738c:
    rra
    db $fc
    sbc a
    ld a, h
    ld e, $fc
    sbc h
    ld a, h
    inc e
    db $fc
    sbc h
    ld a, h
    rra
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
    call c, $fc1c
    inc e
    db $fc
    inc a
    call c, $3cd8
    inc e
    cp h
    sbc h
    jr c, jr_045_73cd

    cp b
    ld e, h
    cp b
    jr c, jr_045_736e

    ld e, b
    cp b
    ld e, l
    jr c, jr_045_73f3

    jr c, jr_045_73f5

    jr c, @+$7a

    jr c, @+$7a

    jr c, jr_045_743b

    jr c, @+$3a

    ld a, b
    jr c, jr_045_7440

    jr c, jr_045_7442

    jr c, jr_045_7444

    cp l

jr_045_73cd:
    ld a, b
    db $fc
    ei
    db $fc
    rst $38
    nop
    cp a
    nop
    rst $20
    ld b, b
    rst $28
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [$ffff], sp
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $28
    nop
    ld a, b
    nop
    adc $00
    push af
    ret nz

    ld a, a
    sub b
    rst $38
    ld b, $ff

jr_045_73f3:
    sbc e
    db $fc

jr_045_73f5:
    dec hl
    ld a, a
    db $10
    ccf
    nop
    ld c, h
    ld bc, $0019
    inc d
    nop
    ld l, e
    rst $38
    ld [hl], c
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    inc l
    rst $38
    ld [hl], l
    rst $38
    dec b
    rst $38
    nop
    cp a
    nop
    ld a, a
    add b
    ccf
    and b
    rrca
    ld hl, sp+$07
    ld [de], a
    db $ed
    add h
    ei
    ld [bc], a
    db $fd
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
    jr jr_045_7453

    ld a, [de]

jr_045_743b:
    dec de
    inc e
    dec e
    ld e, $1f

jr_045_7440:
    jr nz, jr_045_7463

jr_045_7442:
    ld [hl+], a
    inc hl

jr_045_7444:
    inc h
    dec h
    ld h, $27
    jr z, jr_045_7473

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_045_7483

    ld [hl-], a

jr_045_7453:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_045_7493

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_045_7463:
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

jr_045_7473:
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

jr_045_7483:
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

jr_045_7493:
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
    ldh [$b3], a
    or e
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $b3
    rst $28
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
    db $d3
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_045_7557

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_045_7567

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_045_7577

    ld a, [hl+]
    dec hl
    or e
    inc l
    dec l
    or e
    or e
    or e
    or e

jr_045_7557:
    or e
    or e
    or e
    or e
    or e
    ld l, $2f
    jr nc, @+$33

    nop
    nop
    ld bc, $0504
    dec b
    dec b

jr_045_7567:
    dec b
    dec b
    inc b
    dec b
    nop
    nop
    inc bc
    rlca
    inc bc
    nop
    nop
    ld bc, $0405
    inc b
    inc b

jr_045_7577:
    inc b
    inc b
    inc b
    dec b
    nop
    inc bc
    rlca
    rlca
    inc bc
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    rlca
    rlca
    inc bc
    ld b, $06
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    rlca
    rlca
    rlca
    inc bc
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0300
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    nop
    nop
    nop
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $00
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    rlca
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
    nop
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
    nop
    ld b, $03
    inc bc
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
    inc bc
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
    inc bc
    nop
    nop
    nop
    nop
    nop
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

jr_045_7652:
    nop
    nop
    ld bc, $0404
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
    ld bc, $0808
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0a08], sp
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$ff0f], sp
    add hl, bc
    rst $30
    ld e, $e1
    adc a
    ld [hl], b
    rla
    add sp, -$61
    ld h, b
    dec de
    ldh [$98], a
    ld h, b
    jr jr_045_7652

    ld d, b
    and b
    sbc b
    ld b, b
    ld b, c
    jr nz, jr_045_76e7

    nop
    rrca
    add b
    rrca
    ldh a, [rNR22]
    ldh [rP1], a
    rst $38
    add b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld e, l
    add e
    ld a, a
    add b
    daa
    ret c

    ld l, $40
    ldh [$df], a
    jp $8bfd


    db $fd
    call nz, $c0ff
    rst $38
    sub c
    xor $89
    or $8a
    push af
    ld b, a
    add b
    inc e

jr_045_76e3:
    ldh [$bf], a
    ret nz

    sbc a

jr_045_76e7:
    ldh [$97], a
    ldh [$9f], a
    ldh [$8d], a
    ldh a, [$a7]
    ret z

    dec [hl]
    ret nz

    adc a
    ldh [$9b], a
    ldh [$5a], a
    pop hl
    rra
    ldh [$9c], a
    pop hl
    ld e, $e0
    sub [hl]
    ldh [$9e], a
    ldh [$bf], a
    ldh [$be], a
    ret nz

    or b
    ret nz

    ld [hl], b
    ret nz

    cp b
    ret nz

jr_045_770c:
    nop
    db $e4
    nop
    ldh [$9a], a
    ldh [rSTAT], a
    ld hl, sp+$59
    ldh [$0d], a
    ldh [$6d], a
    ldh a, [rRP]
    add sp, $4f
    ldh a, [rOCPD]
    ldh a, [rHDMA2]
    push hl
    ld c, b
    ldh a, [$09]
    ldh a, [$0d]
    ldh a, [rP1]
    ld hl, sp+$09
    ld a, [c]
    inc d
    ld a, [$f902]
    di
    db $fd
    di
    db $fc
    db $f4
    ei
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$f8fd]
    rst $38
    db $fc
    rst $38
    call nz, $cf39
    jr nc, jr_045_76e3

    jr nc, jr_045_770c

    ld a, [hl-]
    rst $00
    jr c, @-$35

    ld a, $df
    ccf
    ld e, a
    cp a
    ld a, a
    rst $38
    ld a, [$afff]
    rst $38
    db $fd
    rst $38
    ld [hl], a
    xor a
    inc b
    dec sp
    sbc h
    ld h, e
    call nc, Call_000_202b
    db $dd
    ld b, b
    or b
    ld h, b
    add b
    nop
    rlca
    ld bc, $041c
    add sp, $21
    ld e, b
    call nz, $f8b9
    rst $38
    ld a, [c]
    rst $38
    ld hl, sp-$04
    ret nz

    push af
    adc b
    rst $10
    ld hl, $389e
    ld [hl], a
    sub c
    cp $fd
    ei
    ei
    push af
    rst $38
    rst $10
    rst $38
    cp l
    rst $38
    push af
    set 6, l
    ld b, [hl]
    rst $38
    ld e, h
    cp a
    adc a
    ld h, b
    ld a, $c1
    ldh a, [rSC]
    jr z, jr_045_77b4

    db $10
    ld e, b
    ld b, b
    ldh [$80], a
    and c
    dec l
    db $d3
    adc d
    rst $30
    push af
    rst $38
    ld a, a
    rst $38
    rst $08
    ccf
    db $fd
    rlca
    db $e3
    rlca
    add d
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    inc hl
    inc bc

jr_045_77b4:
    ld h, e
    inc bc
    ld [bc], a
    inc bc
    jp $e103


    inc bc
    ldh a, [$03]
    adc [hl]
    inc bc
    ld a, [$f207]
    rrca
    ld h, c
    sbc a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld hl, $e6ff
    rra
    ld a, h
    inc bc
    ldh [rNR22], a
    inc d
    ld c, e
    cp h
    ld b, e
    ld hl, sp+$07
    cp l
    ld b, e
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld b, l
    cp e
    ld a, e

jr_045_77e3:
    add l
    dec c
    di
    ld hl, $29df
    rst $10
    ld bc, $25ff
    db $db
    ld bc, $83ff
    rst $38
    rst $38
    and e
    ld a, a
    add c
    ld e, a
    xor c
    dec b
    rst $38
    dec b
    rst $38
    ld [hl], h
    adc e
    db $fc
    inc bc
    ld a, b
    add a
    jr nz, jr_045_77e3

    ld [hl], h
    cp a
    ld a, [hl]
    add c
    cp $01
    rst $38
    nop
    xor d
    push af
    or h
    ld c, e
    db $e4
    dec de
    sbc $23
    ld e, a

jr_045_7815:
    and b
    ld l, b
    cp a
    ld bc, $08ff
    rst $38
    inc b
    ei
    add a
    ld a, l
    ld bc, $fbff
    ld d, h
    ld hl, sp+$17

jr_045_7826:
    call z, Call_045_6d77
    sub a
    ld [$b7ff], sp
    ld l, c
    rst $18
    or h
    rst $10
    ld l, c
    cp b
    ld b, a
    ld c, $f5
    ld c, a
    cp c
    sbc c
    ld [hl], a
    ld h, [hl]
    rst $18
    add h
    ld a, a
    inc bc
    db $fd
    jp nz, $310d

    add h
    ld l, a
    add b
    xor $11
    adc d
    ld [hl], l
    and b
    ld e, a
    ld b, [hl]
    ld hl, sp-$40
    cp $5f
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
    or l
    jr nz, jr_045_7826

    jr nz, jr_045_7860

jr_045_7860:
    nop
    rst $28
    rlca
    ccf
    sbc h
    rst $38
    ld h, c
    rst $38
    nop

jr_045_7869:
    rst $38
    nop
    rst $38
    db $10
    db $fc
    jr nz, jr_045_7869

    rst $28
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    sbc $ff
    inc l
    push hl
    rst $38
    cp a
    ld a, h
    rst $38
    ld a, c
    rst $38
    ldh [rIE], a
    call nz, Call_000_19ff
    ld a, [$607f]
    cp a
    jp nz, Jump_000_1cbf

    rst $28
    dec de
    rst $38
    sbc b
    ld h, [hl]
    jr nz, jr_045_7815

    ld e, d
    rlca
    ld a, h
    rrca
    sub d
    ccf
    ld l, d
    ld a, a
    reti


    rst $38
    ld [bc], a
    rst $38
    add d
    ld hl, sp-$80
    ld hl, sp-$7a
    ld hl, sp+$06
    ld hl, sp+$05
    ld hl, sp+$04
    ld hl, sp+$05
    ld hl, sp+$07
    ld hl, sp-$7b
    ld hl, sp-$7b
    ld hl, sp-$7c
    ld hl, sp-$7b
    ld hl, sp+$15
    ld hl, sp+$45
    ld hl, sp-$6b
    ld hl, sp-$79
    ld hl, sp+$15
    ld hl, sp-$2b
    ld hl, sp-$3f
    db $fc
    ldh [$fc], a
    and b
    db $fc
    ret nz

    db $fc
    and b
    db $fc
    xor b
    db $fc

jr_045_78d0:
    and b
    db $fc
    jr nz, jr_045_78d0

    nop
    db $fc
    add b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    adc [hl]
    db $fc
    sub [hl]
    db $fc
    sbc [hl]
    db $fc
    add $fc
    ld [hl], $fc
    sub h
    cp $bc
    cp $1c
    cp $54
    cp $3c
    cp $5e
    db $fc
    inc a
    cp $3c
    cp $34
    cp $b4
    ld e, [hl]
    sub h
    ld a, [hl]
    sub h
    ld a, [hl]
    sub h
    ld a, [hl]
    ld d, $fe
    sub h
    ld a, [hl]
    ld d, $fe
    ld a, b
    cp [hl]
    ld [hl], b
    cp $3a
    cp $35
    cp $e6
    ld a, [hl]
    db $ec
    ld a, [hl]
    or a
    ld a, [hl]
    xor a
    ld a, [hl]
    sub a
    ld a, [hl]
    rst $10
    ld a, $ca
    ccf
    xor d
    ccf
    rst $38
    ld e, $fb
    ld e, $cf
    ld a, $56
    rra
    rra
    ld c, [hl]
    adc [hl]
    dec c
    ld a, [bc]
    ld c, a
    ret nz

    rrca
    ld h, c
    ld c, [hl]
    ld l, b
    ld b, a
    ld e, b
    ld h, a
    ld [$ec66], a
    ld h, a
    ld hl, sp+$67
    ld h, d
    rst $38
    ld [hl], d
    ld a, l
    ld [hl], b
    ld a, a
    ld hl, sp+$7f
    ld [hl-], a
    ld a, l
    inc [hl]
    ld a, e
    sub [hl]
    ld a, c
    ld b, d
    ld sp, hl
    ld a, [bc]
    ld [hl], c
    ld [$1371], sp
    ldh [$c8], a
    pop af
    sbc b
    pop af
    ei
    ret nc

    call nc, $96f9
    ld sp, hl
    inc e
    ld sp, hl
    ld d, $08
    nop
    db $10
    ret nz

    rst $20
    ld [$00bf], sp
    cp $02
    ld sp, hl
    nop
    db $e3
    nop
    cp a
    ld b, b
    ld a, a
    nop
    rst $08
    rst $38
    ld hl, sp-$01
    rst $20
    cp $f9
    rst $38
    ret nc

    cp $81
    ld a, a
    add [hl]
    rst $38
    db $10
    ld [$ca75], a
    rst $30
    dec d

jr_045_7983:
    rst $28
    ld d, a
    db $fc
    inc sp
    sbc $47
    rst $38
    adc a
    rst $30
    ccf
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    ei
    inc c
    rst $38
    sub b
    cp $a0
    db $fd
    ld b, b
    rst $38
    add c
    rst $28
    ld [de], a
    rst $30
    jr nc, jr_045_79b1

    ld de, $d50f
    rrca
    db $db
    rlca
    reti


    rlca
    cp e
    ld b, a
    rst $20
    rra
    rst $20
    rra
    di

jr_045_79b1:
    rrca
    db $eb
    rla
    db $eb
    rla
    swap a
    db $e3
    rra
    or e
    rrca
    ld sp, hl
    rlca
    xor b
    rla
    cp e
    rlca
    xor d
    rla
    ld sp, hl
    rlca
    ld l, b
    rla
    jr jr_045_79f1

    ld hl, sp+$07
    or h
    dec bc
    ld [hl], b
    rrca
    ld h, c
    rlca
    ld b, h
    inc bc
    ld h, h
    inc bc
    ld h, e
    rlca
    ld [hl], $01
    scf
    nop
    ld b, e
    inc b
    ld h, c
    ld b, $00
    ld h, e
    nop
    inc hl
    nop
    inc hl
    nop
    inc hl
    nop
    inc hl
    nop
    ld [hl], e
    nop
    inc sp
    nop
    dec sp
    ld b, b

jr_045_79f1:
    dec sp
    ld b, b
    dec de
    jr nz, @+$1d

    ld b, b
    dec hl
    jr nz, @+$45

    jr nc, jr_045_79ff

    jr nz, @+$05

    ld h, b

jr_045_79ff:
    add hl, bc
    jr nz, jr_045_7983

    nop
    sub c
    nop
    pop bc
    nop
    ld [hl], c
    nop
    pop bc
    nop
    ld d, c
    nop
    pop bc
    nop
    ld b, c
    ld [$1841], sp
    ld b, c
    ld [$0041], sp
    ld bc, $8100
    nop
    ld bc, $2140
    ret nz

    ld bc, $01c0
    ld b, c
    ld hl, $11c1
    ld b, b
    ld de, $b140
    ld b, b
    add hl, sp
    nop
    xor c
    ld bc, $00fd
    ei
    and c
    ei
    add b
    db $fd

jr_045_7a36:
    xor b
    ld sp, hl
    jr nz, jr_045_7a36

    ld l, b
    db $fc
    jr nc, @+$01

    jr z, @+$01

    jr z, jr_045_7ac1

    inc h
    ld a, a
    ld [$40ff], sp
    rst $38
    nop
    ld sp, hl
    ld [$00e9], sp
    jp hl


    nop
    db $fc
    db $dd
    jr nz, jr_045_7aa1

    or b
    ld d, e
    xor h
    add e
    db $fc
    sub a
    ld hl, sp-$67
    ldh [$72], a
    and b
    ld sp, hl
    nop
    rst $28
    rst $38
    rst $38
    rst $18
    ld a, e
    cp $ff
    db $ec
    cp a
    ld a, [c]
    rst $38
    db $e4
    rst $38
    reti


    ld a, [$db7d]
    ld l, h
    rst $28
    ld d, b
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    xor a
    ld e, l
    rst $10
    ld l, c
    cp $17
    ret


    ld a, a
    or h
    rst $38
    jp hl


    rst $38
    di
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld a, l
    rst $38
    ld [bc], a
    reti


    nop
    add d
    inc bc
    sbc h
    dec d
    ld a, [$7027]
    ld c, l
    ret nz

    adc [hl]
    pop bc
    ld c, h
    inc hl
    ld e, b

jr_045_7aa1:
    cp a
    call z, $fe3f
    adc a
    ei
    rst $20
    or $f9
    db $fd
    cp $6b
    rst $38
    sbc a
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
    ld l, a

jr_045_7ac1:
    ei
    jp hl


    or e
    xor c
    di
    db $db
    di
    ld e, e
    di
    dec h
    db $db
    call Call_000_2e33
    pop bc
    ld a, d
    add l
    ld a, [de]
    push hl
    ld l, c
    rst $38
    jp hl


    rst $38
    ld sp, hl
    rst $38
    reti


    ccf
    call nc, $f50b
    ld a, [bc]
    ldh a, [rIF]
    pop af
    ld c, $30
    rst $08
    pop af
    ld c, $00
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$07
    ret c

    rlca
    ret c

    rlca
    ld [hl], b
    adc a
    ret nz

    ccf
    ld hl, sp+$07
    ldh a, [rIF]
    or b
    ld c, a
    ret nz

    ccf
    ret nz

    rra
    jr z, jr_045_7b1b

    ld [$f287], sp
    dec c
    add sp, $07
    ld hl, sp+$07
    ld e, b
    rlca
    ret c

    daa
    ld [$5ca7], sp
    and e
    pop af
    ld c, $b9
    ld b, $99
    ld h, $09

jr_045_7b1b:
    and [hl]
    pop af
    ld c, $f9
    ld b, $b9
    ld b, $f0
    rrca
    ldh [$1f], a
    ld d, c
    xor [hl]
    pop de
    ld l, $f4
    ld c, $ff
    ld b, $7e
    rlca
    inc hl
    sbc $c3
    ld a, $fd
    ld b, $f5
    ld c, $f5
    ld c, $1f
    cp $53
    rst $38
    inc bc
    rst $38
    inc [hl]
    rst $38
    add sp, -$09
    dec h
    jp c, Jump_045_738c

    ld [hl], b
    adc b
    add b
    ld h, b
    ld [bc], a
    nop
    db $10
    jr nz, jr_045_7b91

    ld hl, sp+$00
    jp nz, Jump_000_1900

    nop
    ld a, [hl]
    ld [$10bf], sp
    db $fc
    nop
    ld e, e
    nop
    xor a
    rst $38
    rst $38
    db $fd
    rst $18
    db $fd
    sbc $e7
    ld hl, sp-$52
    ret nc

    cp c
    ret nz

    call nz, $d620
    add b
    rst $28
    nop
    rst $28
    db $10
    rst $38
    nop
    or a
    ld c, b
    push de
    ld a, [hl+]
    ld e, $e9
    ld [$09ff], a
    cp $52
    cp a
    ld sp, $f9ef
    adc $b6
    ei
    db $ec
    rst $38
    ld a, b
    rst $38
    db $e4
    rst $38
    ld [c], a
    db $fd
    add l

jr_045_7b91:
    ei
    nop
    rst $38
    ld [$18ff], sp
    rst $38
    jr nz, @+$01

    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    cpl
    db $db
    rla
    db $ec
    add c
    rst $38
    call nz, $d8fb
    rst $20
    cp b
    ld a, a
    cp $3f
    rst $10
    rst $28
    cp a
    rst $20
    rst $38
    ei
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
    db $fc
    ld a, [$90c0]
    pop bc
    sbc b
    sbc b
    ret nz

    add b
    pop bc
    jp nz, Jump_000_2c98

    sub c
    adc [hl]
    ld sp, $bc43
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
    db $fc
    rst $38
    db $76
    add b
    ld sp, hl
    nop
    ld [$a3ff], sp
    ld a, h
    inc hl
    call c, $af70
    ld bc, $6ffe
    sub b
    ld a, a
    add b
    inc b
    ei
    rra
    ldh [rNR22], a
    add sp, $07
    ld hl, sp+$73
    sbc h
    ld e, l
    rst $30
    adc [hl]
    ld [hl], c
    add hl, bc
    rst $30
    db $dd
    ld a, [$00ff]
    rst $38
    add b
    ld a, e
    add h
    adc c
    db $76
    rst $38
    add b
    rst $38
    nop
    xor l
    ld d, d
    db $fd
    ld c, a
    rst $38
    ld c, b
    rst $38
    inc b
    xor e
    ld [hl], h
    sbc [hl]
    ld l, c

jr_045_7c18:
    sub [hl]
    ld a, c
    xor l
    sub $fe
    rst $00
    rst $30
    adc b
    ld a, b
    rst $38
    adc h
    rst $00
    ei
    ld a, a
    or d
    rrca
    or e
    ld c, $9b
    ld b, $bb
    ld b, $c2
    rlca
    rrca
    jp $c73a


    sub d
    ld l, a
    add e
    ld a, a
    jp $ef7f


    rst $30
    rst $08
    rst $38
    rst $38
    rst $38
    cp e
    ld b, h
    jr z, jr_045_7c18

    add b
    ld h, b
    nop
    add b
    nop
    ld bc, $c502
    ld bc, $2034
    ld b, b
    cp d
    db $fd
    ld a, l
    ld a, [$f5fb]
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    cp b
    rst $38
    and c
    cp $eb
    or h
    ld a, c
    add b
    rlc b
    add e
    nop
    ld b, c

jr_045_7c69:
    nop
    add e
    nop
    rra
    nop
    ld [hl-], a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    ei
    add h
    xor a
    ld d, b
    cp a
    ld [hl], b
    adc a
    ldh a, [$7e]
    add c
    ld a, h
    add e
    sub b
    ld l, [hl]
    ld hl, $40de
    cp [hl]
    ret nz

    ld a, h
    add b
    db $fc
    nop
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp-$7f
    ld [hl], b
    inc b
    pop hl
    db $10
    db $eb
    jr nz, jr_045_7c69

    ld [$82f3], sp
    ld b, b
    ret nz

    ret z

    and [hl]
    ld d, b
    call c, $cbf1
    db $fc
    inc sp
    cp $3a
    rst $18
    and $9f
    push de
    db $eb
    ld a, [$fffd]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    pop af
    ld [c], a
    db $10
    ld hl, $2059
    ld l, c
    sub b
    cp e
    ld b, b
    cp a
    nop
    jr nc, @-$7e

    and c
    nop
    sbc h
    nop
    cp $00
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    cp $ff
    or b
    ld bc, $0102
    and h
    ld bc, $05ff
    db $fd
    rlca
    ei
    dec b
    or e
    ld e, l
    xor a
    ld d, c
    rst $38
    ld bc, $03fd
    ld b, c
    cp a
    rst $38
    ld bc, $23dd
    inc bc
    db $fd
    ld a, e
    sub a
    add hl, bc
    rst $30
    ld e, e
    and l
    cp l
    ld b, e
    ld l, e
    sub a
    rst $38
    ld bc, $01ff
    rst $38
    dec d
    add hl, sp
    rst $00
    rst $30
    add hl, bc
    rst $38
    ld bc, $f907
    ld a, a
    sub c
    rst $38
    ld e, l
    rst $38
    dec hl
    rst $38
    add l
    rst $38
    ld bc, $41ff
    rst $38
    ld bc, $05fb
    rst $38
    add hl, bc
    ld a, d
    db $fd
    rst $08
    add l
    ei
    ld a, a
    adc c
    rlca
    cp c
    rlca
    sbc c
    rlca
    sbc c
    rlca
    ld a, c
    add a
    ld bc, $4987
    add a
    add hl, sp
    rst $00
    ld hl, $01df
    rst $38
    add a
    ld a, e
    adc a
    rst $30
    rst $38
    rst $38
    ret nz

    rst $38
    ld b, $ff
    db $10
    rst $38
    ld b, a
    rst $38

jr_045_7d48:
    jr jr_045_7d48

    pop bc
    ld a, [c]
    inc [hl]
    set 6, e
    inc b
    ld hl, sp-$69
    pop bc
    cp a
    pop de
    rst $38
    ld h, e
    rst $38
    ld b, [hl]
    cp a
    ld c, d
    cp a
    inc d
    rst $38
    jp nz, $cdfd

    ld [hl-], a
    ld e, a
    and b
    rst $18
    ld hl, $01fe
    push af
    ld c, $eb
    inc d
    ld a, [hl]
    ld bc, $00ff
    rst $30
    ld [$807e], sp
    sbc $21
    ld a, h
    add e
    ret c

    daa
    db $d3
    inc l
    ret nz

    jr c, @-$0e

    nop
    nop
    ldh [rP1], a
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
    ld [bc], a
    ld [bc], a
    nop
    inc b
    nop
    rrca
    ld [bc], a
    ld de, $7100
    ld a, [hl+]
    ld b, b
    db $10
    ret nz

    ld b, $81
    dec bc
    nop
    ld a, [$3900]
    add b
    cp $00
    sbc $20
    ld a, l
    sbc a
    dec [hl]
    rst $38
    inc b
    rst $38
    reti


    rst $38
    rst $30
    db $ed
    rst $28
    di
    rst $18
    ld sp, hl
    cp a
    ld a, [hl]
    rst $28
    rst $38
    and a
    scf
    rla

Jump_045_7dbd:
    db $e3
    sub b
    rlca
    db $10
    ld h, d
    ld [hl], b
    adc e
    sbc h
    ld b, $98
    rlca
    db $10
    ld c, $04
    ld a, [bc]
    ld [$1406], sp
    ld a, [bc]
    ld [hl-], a
    inc c
    ld [hl], d
    inc c
    ld [hl], d
    inc c
    ld h, e
    inc e
    ld [hl], e
    inc c
    ld a, [hl-]
    dec b
    ld a, $01
    ld a, [hl-]
    inc b
    dec e
    ld [bc], a
    dec d
    ld a, [bc]
    ld [hl], c
    inc c
    ld h, e
    inc c
    ld sp, $730e
    inc c
    ld a, e
    inc b
    ld a, c
    ld b, $59
    ld b, $7b
    inc b
    ld h, e
    inc c
    ld h, b
    rrca
    ld a, c
    ld b, $31
    ld c, $39
    ld b, $38
    rlca
    jr @+$08

    jr @+$08

    jr c, jr_045_7e0c

    ld [$3806], sp
    ld b, $dc
    ld [bc], a

jr_045_7e0c:
    ld d, h
    ld [bc], a
    ret nc

    ld b, $04
    ld [bc], a
    add $00
    db $10
    rlca
    inc h
    inc bc
    inc h
    inc bc
    jr nz, jr_045_7e1f

jr_045_7e1c:
    ld h, c
    ld [bc], a
    ld h, b

jr_045_7e1f:
    inc bc
    ld h, c
    ld [bc], a
    ldh [$03], a
    ldh [$03], a
    ld h, b
    add e
    ld h, d
    add b
    ld [c], a
    ld bc, $01e2
    push af
    nop
    ld [hl+], a
    nop
    add b
    ld bc, $8000
    nop
    nop
    ld b, b
    jr nz, jr_045_7e1c

    nop
    and b
    ld b, c

jr_045_7e3e:
    ld b, b
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
    cp l
    db $fd
    sub $ff
    and [hl]
    ld c, l
    ld a, [c]
    ld h, e
    cp a
    ld c, h
    rst $38
    ld a, b
    rst $38
    ld h, e
    db $fc
    add a
    ld hl, sp+$0f
    ldh a, [$3b]
    call nz, $c03f
    ld c, a
    or b
    ld a, a
    add b
    ld a, a
    add b
    di
    nop
    di
    nop
    rst $38
    nop
    rst $20
    jr jr_045_7e3e

    jr nc, jr_045_7ec7

    add hl, hl
    db $e4
    dec de
    ldh a, [rIF]
    call nz, $c83b
    scf
    ld [$0037], sp
    inc bc
    nop
    inc bc
    nop
    rlca
    ld bc, $0302
    inc b
    inc hl
    inc c
    inc bc
    inc a
    ld b, $19
    nop
    cpl
    adc c
    ld [hl], $13
    ld l, h
    scf
    ret z

    ld c, a
    ld a, [c]
    rra
    ld h, b
    rra
    ldh [$3f], a
    call nz, $817e
    db $fc
    inc bc
    scf
    ld bc, $0315
    adc e
    ld bc, $014f
    and $01
    ld h, e
    sub c
    inc de
    jp hl


    ld l, [hl]
    pop af
    di
    db $fd
    ld a, [$fffd]
    rst $28
    cp $ff
    cp $7f
    rst $38
    cp l
    rst $38
    rst $18
    rst $38
    cp $7f
    rst $38
    ld a, a
    cp a
    ccf
    sbc a
    rla

jr_045_7ec7:
    xor a
    ccf
    add a
    ld [hl], a
    adc a
    rrca
    cpl
    rrca
    ccf
    ld d, a
    cpl
    rrca
    ld a, a
    rlca
    ld a, a
    ld e, a
    cp a
    ld c, $ff
    rrca
    rst $38
    rst $20
    rst $38
    cp [hl]
    ld a, a
    ld e, a
    rrca
    inc b
    ld h, e
    reti


    inc bc
    ldh a, [rIF]
    inc e
    jp Jump_000_3788


    or h
    inc bc
    call z, Call_045_6803
    add e
    or b
    ld b, a
    ld a, h
    inc bc
    db $fc
    inc bc
    nop
    ld a, a
    sub b
    rlca
    ld d, b
    inc bc
    nop
    rst $38
    ld b, b
    rrca
    ld d, b
    inc bc
    call nc, $dc03
    inc bc
    and h
    inc bc
    inc h
    inc bc
    jr jr_045_7f11

    ld b, b
    ccf
    add h

jr_045_7f11:
    inc bc
    ld hl, sp+$03
    ret nz

    rra
    add sp, $13
    db $e4
    inc bc
    xor h
    inc de
    inc a
    add e
    ld d, b
    cpl
    cp b
    rlca
    inc [hl]
    ld b, e
    ld c, h
    inc bc
    sub b
    rlca
    db $10
    rlca
    ld b, b
    rlca
    ld b, b
    rla
    add b
    ccf
    ld de, $39e7
    rlca
    ld hl, $091f
    scf
    ld de, $21ef
    rst $18
    ld de, $c1ef
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    or c
    ld c, c
    or a
    ld e, a
    cp e
    cp e
    rst $00
    adc a
    ld a, a
    ld a, a
    ei
    ld l, e
    db $fd
    rst $30
    ld e, c
    db $dd
    inc hl
    db $fd
    rlca
    push af
    rra
    db $d3
    cpl
    ld sp, hl
    rlca
    push af
    rrca
    pop hl

jr_045_7f63:
    ccf
    ld [hl], e
    rrca
    push af
    dec de
    rst $28
    ld a, [hl-]
    sbc a
    ld a, l
    rrca
    ei
    ld e, [hl]
    ei
    inc c
    rst $38
    jr nc, jr_045_7f63

    ld d, c
    xor [hl]
    ld [de], a
    db $fd
    ld de, $03ff
    cp $05
    cp $6a
    db $dd
    db $10
    rst $38
    pop bc
    ld a, $9f
    ld h, b
    ld a, $c1
    ld a, h
    add e
    db $fc
    inc bc
    ld hl, sp+$07
    rst $30
    rrca
    db $f4
    dec bc
    db $ed
    ld [de], a
    ld c, l
    or d
    sbc e
    ld h, h
    dec [hl]
    jp z, $8877

    xor $11
    sub h
    ld l, e
    ld b, l
    cp $27
    db $fd
    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    and b
    rst $38
    and h
    rst $38
    add sp, -$01
    xor $fd
    ld h, h
    rst $38
    and h
    rst $38
    and $fd
    ld [hl], $fd
    inc a
    rst $38
    inc h
    rst $38
    and d
    ld a, l
    and [hl]
    ld a, l
    ld d, $fd
    ld bc, $00fe
    rst $38
    ld b, d
    cp l
    ld h, d
    rst $18
    db $eb
    db $f4
    and b
    rst $38
    ld h, [hl]
    rst $38
    ld [c], a
    rst $38
    inc h
    rst $38
    ld h, [hl]
    rst $38
    inc h
    rst $38
    ld c, h
    rst $30
    ld h, $ff
    inc c
    rst $30
    and [hl]
    rst $38
    or h
    ld a, a
    inc [hl]
    rst $18
    ld l, $ff
    ld d, $ef
    ld c, $ff
    add [hl]
    ld a, a
    add [hl]
    ld a, a
    add [hl]
    ld a, a
    adc [hl]
    scf
    call nz, Call_045_443f
    cp a
    ld b, [hl]
    cp a
    ld b, d
    cp a
    db $c4
    ccf
