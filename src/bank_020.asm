SECTION "ROM Bank $020", ROMX[$4000], BANK[$20]

    db $fc
    inc bc
    ldh [$1f], a
    nop
    rst $38
    ld [hl-], a
    call Call_000_17e8
    cp c
    ld b, [hl]
    ld a, [c]
    dec c
    rst $28
    db $10
    ld a, l
    add d
    ld a, [hl]
    add c
    ld a, d
    add c
    cp a
    ld b, b
    call c, Call_020_7d23
    add b
    rst $38
    nop

jr_020_401e:
    ld a, a
    add b
    rst $18
    jr nz, jr_020_401e

    inc b
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop

jr_020_402c:
    db $fd

Jump_020_402d:
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    or $09
    ld [hl], a
    adc a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld [c], a
    db $fd
    ld de, $17ee
    add sp, $7f
    add b
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rst $18
    jr nz, jr_020_402c

    jr nc, @+$01

    nop
    rst $38
    rst $38
    cp $ff
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    rrca
    nop
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
    ld [bc], a
    db $fd
    inc b
    ei
    nop
    rst $38
    ld de, $02ee
    db $fd
    ld b, l
    cp d
    and b
    rst $18
    ld bc, $10fe
    rst $28
    add c
    ld a, [hl]
    ret z

    scf
    ret nz

    ccf
    ret z

    scf
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, $c1
    sbc l

jr_020_40ab:
    ld h, d
    adc $31
    call Call_020_6732
    sbc b
    pop af
    ld c, $5b
    and h
    xor l
    ld d, d
    ld a, c
    add [hl]
    sub $29
    ld d, b
    xor a
    adc a
    ld [hl], b
    ld a, [hl]
    add c
    pop hl
    ld e, $1f
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    ld bc, $1f00
    rrca
    ld a, a
    ld a, [hl]
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    ccf
    inc b
    ei
    jr c, jr_020_40ab

    ld e, $e1
    cpl
    ret nc

    xor a
    ld d, b
    rra
    ldh [$af], a
    ld d, b
    sbc l
    ld h, d

jr_020_40f0:
    xor [hl]
    ld d, c
    db $db
    inc h
    call $af32
    ld d, b
    rst $20
    jr jr_020_40f0

    ld a, [bc]
    or $09
    push af
    ld a, [bc]
    ld a, e
    add h
    cp $01
    cp l
    ld b, d

jr_020_4106:
    rst $38
    nop
    ld e, a
    and b
    ld a, a
    add b
    rst $18
    jr nz, jr_020_4106

    ld [$50af], sp
    cp e
    ld b, h
    ld h, a
    adc b
    and e
    ld c, a
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    pop hl
    cp $89
    or $02
    db $fd
    ld de, $39ee
    add $98
    ld h, a
    adc h
    ld [hl], e
    call z, $ce33
    ld sp, $19e6
    and a
    ld e, b
    or $09
    rst $38
    nop
    cp [hl]
    ld b, c
    ei
    inc b
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
    nop
    rst $38
    nop
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
    nop
    rst $38
    ld [hl+], a
    db $dd
    nop
    rst $38
    inc b
    ei
    ld [$10f7], sp
    rst $28
    ld bc, $12fe
    db $ed
    nop
    rst $38
    ld bc, $12fe
    db $ed
    and d
    ld e, l
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ret nc

    cpl
    db $10
    rst $28
    xor b
    ld d, a
    di
    inc c
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    db $eb
    inc d
    di
    inc c
    call c, Call_020_6f23
    sub b
    db $dd
    ld [hl+], a
    ld l, e
    sub h
    ldh [$1f], a
    rrca
    ldh a, [$fe]
    ld bc, $1ee1
    rra
    ldh [$7f], a
    add b
    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    ldh [rP1], a
    inc bc
    ld bc, $0f2f
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    add b
    ld a, a
    db $10
    rst $28
    ld bc, $10fe
    rst $28
    ret nc

    cpl
    ret z

    scf
    db $ec
    inc de
    or $09
    ld [c], a
    dec e
    ld a, b
    add a
    ei
    inc b
    cp l
    ld b, d
    call c, $ee23
    ld de, $20df
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    db $ed
    ld [de], a
    rst $30
    ld [$02fd], sp
    cp $01
    db $fd
    ld [bc], a
    push af
    dec bc
    rst $08
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    adc b
    rst $30
    ld b, e
    cp h
    inc hl
    call c, $ac53
    di
    inc c
    ld sp, hl
    ld b, $f9
    ld b, $f4
    dec bc
    ld hl, sp+$07
    cp $01
    cp $01
    ld a, c
    add [hl]
    pop af
    ld c, $ce
    ld sp, $08f7
    di
    inc c
    ei
    inc b
    rst $18
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    dec bc
    rst $30
    dec bc
    rst $30
    dec bc
    rst $30
    dec bc
    rst $30
    dec bc
    rst $30
    dec bc
    rst $30
    dec bc
    rst $30
    dec bc
    rst $30
    ei
    rlca
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop

jr_020_425f:
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
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld [bc], a
    db $fd
    add b
    ld a, a
    ld de, $00ee
    rst $38
    jr nz, jr_020_425f

    nop
    rst $38
    inc b
    ei
    ld [de], a
    db $ed
    xor l
    ld d, d
    ld d, a
    xor b
    rst $38
    nop
    add b
    ld a, a
    ld h, c
    sbc [hl]
    scf
    ret z

    sub d
    ld l, l
    ld l, $d1
    sbc a
    ld h, b
    sbc a
    ld h, b
    db $eb
    inc d
    ld b, e
    cp h
    ld l, h

jr_020_429f:
    sub e
    db $fc
    inc bc
    rst $38
    nop
    ld d, b
    xor a
    rrca
    ldh a, [$fc]
    inc bc
    jp Jump_000_3f3c


    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    rlca
    inc bc
    ld e, a
    rra
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    nop
    cp $01
    ldh [$1f], a
    nop
    rst $38
    ld [$80f7], sp
    ld a, a
    ret nc

    cpl
    ret nz

    ccf

jr_020_42d0:
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld e, b
    and a
    jr c, jr_020_429f

    xor h
    ld d, e
    sub a
    ld l, b
    ld e, a
    and b
    ld d, a
    xor b
    ld l, c
    sub [hl]
    or a
    ld c, b
    ld d, [hl]
    xor c
    ld e, e
    and h
    cpl
    ret nc

    xor e
    ld d, h
    sub $29
    ld d, a
    xor b
    ld l, a
    sub b
    cp e
    ld b, h
    xor a
    ld d, b
    rst $18
    jr nz, jr_020_42d0

    jr z, jr_020_4368

    sub e
    xor a
    ld e, a
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    add b
    rst $38
    inc b
    ei
    db $10
    rst $28
    add h
    ld a, e
    jp $c33c


    inc a
    pop hl
    ld e, $f5
    ld a, [bc]
    ld hl, sp+$07
    pop af
    ld c, $ff
    nop
    ld a, [$ea05]
    dec d
    rst $30
    ld [$807f], sp
    ld a, [$fa05]
    dec b
    ld e, l
    and d
    ld h, [hl]
    sbc c
    or [hl]
    ld c, c
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr @+$01

    rlca
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
    ldh a, [rIE]
    db $10
    rst $28
    db $10
    rst $28
    add h
    ld a, e
    ld d, b
    xor a

jr_020_4368:
    ld b, b
    cp a
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld [$21f7], sp
    sbc $11
    xor $ec
    inc de
    ld d, [hl]
    xor c
    cp l
    ld b, d
    ld c, h
    or e
    ld bc, $51fe
    xor [hl]
    adc a
    ld [hl], b
    sub b
    ld l, a
    xor h
    ld d, e
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    pop hl
    ld e, $1f
    ldh [$fc], a
    inc bc
    add e

jr_020_4397:
    ld a, h
    rra
    ldh [$af], a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    dec bc
    rlca
    cp a
    ld a, [hl]
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    db $fc
    inc bc
    ret nz

    ccf
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, jr_020_4397

    ld [bc], a
    db $fd
    ld [$00f7], sp
    rst $38
    inc h
    db $db
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
    ld [hl+], a
    db $dd
    ld [bc], a
    db $fd
    dec b
    ld a, [$7e81]
    pop bc
    ld a, $e1
    ld e, $e0
    rra
    ld [hl], d
    adc l
    ld hl, sp+$07
    cp b
    ld b, a
    db $fc
    inc bc
    sbc $21
    rst $38
    nop
    xor $11
    rst $20
    rra
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    inc bc
    db $fc
    rra
    ldh [$0b], a
    db $f4
    rlca
    ld hl, sp+$13
    db $ec
    dec hl
    call nc, $b44b
    dec b
    ld a, [$7a85]

jr_020_4406:
    rst $10
    jr z, jr_020_4406

    ld [bc], a
    push af
    ld a, [bc]
    ld a, l
    add d
    cp a
    ld b, b
    rst $38
    nop
    db $ed
    ld [de], a
    or $09
    or $09
    sbc $21
    rst $28
    db $10
    push af
    ld a, [bc]
    rst $30
    ld [$08f7], sp
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
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
    rst $38
    rst $38
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, [hl]
    add b
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    add c
    add c
    rst $38
    ld a, a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    cp $88
    ld [hl], a
    inc b
    ei
    sub b
    ld l, a
    adc d
    ld [hl], l
    nop
    rst $38
    and d
    ld e, l
    nop
    rst $38
    ld bc, $0afe
    push af
    ld b, b
    cp a
    ld b, $f9
    inc bc
    db $fc
    ret z

    scf
    jp c, $e925

    ld d, $14
    db $eb
    ld a, e
    add h
    ld b, b
    cp a
    ld a, [bc]
    push af
    add b
    ld a, a
    adc d
    ld [hl], l
    ld b, $f9
    ld bc, $1ffe
    ldh [$f0], a

jr_020_4491:
    rrca
    push bc
    ld a, [hl-]
    ld a, [hl+]
    push de
    ld c, l
    or d
    or a
    ld c, b
    di
    inc c
    rst $38
    nop
    ld hl, sp+$01
    add a
    rra
    ld a, a
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ld hl, sp+$07
    add b
    ld a, a
    dec b
    ld a, [$bd42]
    ld de, $02ee
    db $fd
    nop
    rst $38
    ld b, b
    cp a
    ld h, c
    sbc a
    ld h, b
    sbc a
    jr nz, @-$1f

    jr nc, jr_020_4491

    ld c, h
    or e
    inc c
    di
    ld l, $f1
    ld b, $f9
    rla
    add sp, -$5d
    ld e, h
    ld a, [bc]
    push af
    add c
    ld a, [hl]
    add b
    ld a, a
    ret nz

    ccf
    and d
    ld e, l
    ld a, [c]
    dec c
    ld [hl], l
    adc d
    ld sp, hl
    ld b, $3b
    call nz, $af53
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
    ldh [rIE], a
    nop
    rst $38

jr_020_44f0:
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
    ldh [$1f], a
    ldh [$1f], a
    db $d3
    inc l
    jp hl


    ld d, $af
    ld d, b
    di
    inc c
    xor [hl]
    ld d, c
    rst $18
    jr nz, @-$40

    ld b, c
    jp $fd3c


    ld [bc], a
    di
    inc c
    db $fd
    ld [bc], a
    rst $20
    jr jr_020_44f0

    ld h, $dd
    ld [hl+], a
    db $fd
    ld [bc], a
    ld a, [$df05]
    jr nz, jr_020_4555

    nop
    inc de
    nop
    inc e
    inc bc
    ld h, e
    rra
    sbc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a

jr_020_452f:
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38

jr_020_454d:
    add b
    ld a, a
    add b
    nop
    rst $38
    db $10
    rst $28
    adc d

jr_020_4555:
    ld [hl], l
    jr z, jr_020_452f

    adc b
    ld [hl], a
    ld hl, $08de
    rst $30
    inc b
    ei
    db $10
    rst $28
    and l
    ld e, d
    db $10
    rst $28
    ld bc, $82fe
    ld a, l
    add b
    ld a, a
    jr nz, jr_020_454d

    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    inc h
    db $db
    add b
    ld a, a
    add c
    ld a, [hl]
    ld e, $e1
    ldh [$1f], a
    inc bc
    db $fc
    ld e, e
    and h
    ccf
    ret nz

    ld a, [c]
    dec c
    db $eb
    inc d
    rst $38
    nop
    db $fc
    inc bc
    adc a
    rra
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    cp $01
    ldh a, [rIF]
    nop
    rst $38
    ld [$02f7], sp
    db $fd
    ld b, b
    cp a
    ld [$10f7], sp
    rst $28
    ld d, b
    xor a
    ld bc, $80fe
    ld a, a
    inc b
    ei
    ld b, d
    cp l
    ld bc, $00fe
    rst $38

jr_020_45b2:
    inc h
    db $db
    db $10
    rst $28
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    db $e4
    dec de
    ldh a, [rIF]
    ret c

    daa
    or l
    ld c, d
    ld a, h
    add e
    ld [hl], $c9
    add hl, sp
    rst $00
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld bc, $05fe
    ld a, [$fd02]
    jr nz, @+$01

    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    dec d
    ld [$10ef], a
    rst $18
    jr nz, jr_020_45b2

    ld b, b
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, jr_020_464b

    or c
    ei
    inc b
    push af
    ld a, [bc]
    ld [hl], l
    adc d
    pop hl
    ld e, $40
    cp a
    jp z, Jump_000_0035

    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc e
    db $fc
    ldh [$e0], a
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
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
    ld a, h
    add e
    ld a, [hl-]
    push bc
    dec c
    ld a, [c]
    rlca
    ld hl, sp+$43
    cp h
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    ld a, a
    ret z

    scf
    or l
    ld c, d
    cp h
    ld b, e
    xor $11
    rst $38

jr_020_464b:
    nop
    ei
    inc b
    ld l, a
    sub b
    cpl
    ret nc

    inc e
    db $e3
    jp Jump_000_3e3c


    pop bc
    ret nz

    ccf
    rrca
    ldh a, [$7d]
    add d
    ld a, e
    add h
    push af
    ld a, [bc]
    ld a, [$ff05]
    nop
    db $fd
    inc bc
    rst $18
    ccf
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    db $fc
    inc bc
    ldh [$1f], a
    inc b
    ei
    ld [bc], a
    rst $38
    ld hl, $00fe
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    add hl, hl
    rst $10
    ld [bc], a
    db $fd
    ld [$05f7], sp
    ld a, [$fd02]
    nop
    rst $38
    nop
    rst $38
    ld [$24f7], sp
    db $db
    ld [bc], a
    db $fd
    add e
    ld a, h
    dec b
    ld a, [$ff00]
    ld bc, $11fe
    xor $41
    cp a
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    ret nz

    rst $38
    add hl, hl
    cp $04
    ei
    ld d, b
    xor a
    ld hl, $10de
    rst $28
    add b
    ld a, a
    ld b, b
    cp a
    ld a, [hl+]
    push de
    inc de
    db $ec
    ld e, e
    and h
    ei
    inc b
    rst $38
    nop
    xor a
    ld d, b
    rst $38
    nop
    ld a, d
    add l
    cp $01
    ld e, e
    and h
    sbc [hl]
    ld h, c
    ld e, l
    and d
    inc d
    db $eb
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
    inc bc
    rst $38
    rra
    db $fc
    rst $28
    ldh [rTAC], a
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
    add b
    nop
    add b
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
    ld b, b
    cp a
    nop
    rst $38
    sub b
    ld l, a
    push bc
    ld a, [hl-]
    ld [c], a
    dec e
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, e
    add h
    db $ed
    ld [de], a
    rra
    ldh [$2b], a
    call nc, $f807
    sub e
    ld l, h
    and b
    ld e, a
    pop hl
    ld e, $d8
    daa
    ld b, e
    cp h
    inc a
    jp $3fc0


    rrca
    ldh a, [rPCM34]
    adc b
    xor a
    ld d, b
    push af
    ld a, [bc]
    db $dd
    ld [hl+], a
    or a

jr_020_4751:
    ld c, b
    rst $38
    inc bc
    rst $38
    ld a, $ff
    ldh a, [rIE]
    nop
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38
    xor d
    rst $38
    ld bc, $54ff
    rst $38
    ld [bc], a

jr_020_4769:
    rst $38
    sub b
    ld a, a
    ld a, [bc]
    rst $38
    ld b, b
    rst $38
    jr nz, jr_020_4751

    db $10
    rst $38
    ld [$00f7], sp
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
    add b
    ld a, a
    jr nz, @-$1f

    ld c, b
    or a
    jr nz, jr_020_4769

    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ld d, a
    xor a
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    call nz, Call_000_14ff
    rst $38
    ld a, [bc]
    rst $30
    inc h
    db $db
    dec d
    ld [$57a8], a
    ld d, d
    xor l
    add hl, hl
    sub $24
    db $db
    ld b, e
    cp h
    rra
    ldh [$df], a
    jr nz, @-$07

    ld [$20df], sp
    db $eb
    inc d
    rst $28
    db $10
    cp $01
    ld [hl], a
    adc b
    ld a, d
    add l
    xor b
    ld d, a
    ret nc

    cpl
    ret nz

    ccf
    ld bc, $c0fe
    ccf
    ld b, b
    cp a
    ld [$00f7], sp
    rst $38
    inc bc
    rst $38
    rra
    db $fc
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
    rrca
    nop
    rrca
    nop
    rlca
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
    nop
    nop
    nop
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
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld [hl+], a
    rst $38
    ld bc, $80fe
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc d
    db $eb
    inc b
    ei
    db $10
    rst $28
    and l
    ld e, d
    jp nz, $c03f

    ccf
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    add e
    ld a, h
    inc a
    jp Jump_000_3ec1


    dec b
    ld [$946b], a
    push af
    ld a, [bc]
    rst $28
    db $10
    jp $b73c


    ld c, b
    rst $38
    rlca
    rst $38
    ld a, h
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ldh a, [rIF]
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    adc b
    rst $38
    inc h
    rst $38
    ld [de], a
    rst $38
    dec b
    rst $38
    ld de, $04ff
    rst $38
    ld bc, $00ff
    rst $38
    ld [$04ff], sp
    ei
    ld [bc], a
    db $fd
    ld b, c
    cp [hl]
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    add h
    ld a, e
    ld c, b
    or a
    daa
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    jp nz, Jump_000_15ff

    db $eb
    ld c, d
    or l
    add hl, hl
    sbc $94
    db $eb
    ld bc, $0afe
    db $fd
    dec b
    ld a, [$fd02]
    add hl, bc
    or $05
    ld a, [$10ef]
    inc sp
    call z, Call_020_6798
    ld a, c
    add [hl]
    rst $38
    nop
    call nc, $bb2b
    ld b, h
    ld [hl], c
    adc [hl]
    db $10
    rst $28
    jr z, @-$27

    nop
    rst $38
    nop
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
    inc e
    db $fc
    ld h, b
    ldh [$80], a
    add b
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
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
    ld a, a
    nop
    ld a, a
    nop
    ccf
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
    inc bc
    nop
    ld bc, $0000
    nop
    nop

jr_020_4907:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    cp [hl]
    ld [bc], a
    db $fd
    add b
    ld a, a
    inc d
    db $eb
    ld [hl+], a
    db $dd
    inc d
    ei
    ld bc, $80fe
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    sub b
    ld l, a
    jr nz, jr_020_4907

    rlca
    ld hl, sp+$38
    rst $00
    ret nz

    ccf
    nop
    rst $38
    ld [bc], a
    rst $38
    add c
    ld a, a
    and c
    ld e, a
    adc c
    ld a, [hl]
    rla
    add sp, -$01
    rrca
    rst $38
    ld a, h
    rst $38
    ret nz

    rst $38
    nop
    cp $01
    pop hl
    ld e, $17
    add sp, -$41
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    scf
    ret z

    xor a
    ld d, b
    dec e
    ld [c], a
    rrca
    ldh a, [rNR51]
    jp c, $b847

    ld [$04f7], sp
    ei
    add d
    db $fd
    pop bc
    cp $29
    or $52
    db $fd
    jr z, @+$01

    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $80ff
    ld a, a
    nop
    rst $38
    db $10
    rst $28
    add e
    ld a, a
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
    ldh [rIE], a
    db $10
    rst $38
    jr z, @+$01

    ld d, h
    rst $38
    ld b, b
    rst $38
    sub h
    ld a, a
    ld a, [hl+]
    rst $18
    add l
    ld a, a
    ld d, d
    xor a
    and a
    ld e, b
    rra
    ldh [$e9], a
    ld d, $b7
    ld c, b
    ld e, a
    and b
    ld l, [hl]
    sub c
    cp a
    ld b, b
    rst $08
    jr nc, jr_020_49aa

    ret c

    ld e, $89
    rra
    sbc b
    ld e, a
    xor a

jr_020_49aa:
    scf
    ldh a, [$82]
    ld a, b
    ld bc, $00fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rra
    db $fc
    ld a, a
    ldh [$bf], a
    add b
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
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
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

jr_020_49f3:
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
    ld bc, $a2ff
    ld a, a
    add hl, hl
    rst $18
    inc d
    rst $28
    ld bc, $02ff
    db $fd
    add hl, bc
    or $80
    ld a, a
    ld b, b
    cp a
    jr nz, jr_020_49f3

    add a
    ld a, b
    ld a, b
    add a
    add b
    ld a, a
    ld [bc], a
    rst $38
    nop
    rst $38
    ld d, e
    rst $38
    cpl
    rst $38
    ld a, b
    rst $38
    adc a
    pop af
    ld a, a
    sbc a
    rst $38
    ldh a, [$f8]
    add a
    ldh [rNR10], a
    ret nz

    jr nz, @-$4e

    ld b, b
    ld a, b
    add b
    db $fc
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
    add b
    rst $30
    ld [$807f], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, a
    add b
    ccf
    ret nz

    ld d, a
    xor b
    ld l, a
    sub b
    and a
    ld e, b
    ld e, e
    and h
    ld e, c
    and [hl]
    inc l
    db $d3
    sub a
    add sp, $47
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    pop af
    rst $38
    inc c
    rst $38
    ld b, d
    rst $38
    ld hl, $02ff
    rst $38
    jr nz, @+$01

    xor b
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    and a
    ld hl, sp+$1f
    ldh [$f7], a
    ld [$20df], sp
    ld [$f415], a
    dec bc
    call c, $ec23
    inc de
    ld a, b
    add a
    ret c

    daa
    ld [hl], b
    adc a
    db $d3
    cpl
    xor a
    ld e, h
    cp l
    ld h, c
    and $87
    jr c, jr_020_4adb

    ld b, b
    ld a, a
    add c
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
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
    ld bc, $00ff
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
    rra
    nop
    rra
    nop
    rrca
    nop
    rlca
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
    nop
    nop
    add b

jr_020_4adb:
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld h, b
    ldh [$30], a
    ldh a, [$0c]
    db $fc
    inc b
    cp $42
    rst $38
    and c
    rst $18
    ld d, h
    db $eb
    db $10

Call_020_4aff:
    rst $28
    rlca
    ld hl, sp+$78
    add a
    add c
    ld a, a
    dec b
    rst $38
    dec hl
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    nop
    jp Jump_000_3f00


    nop
    db $e3
    inc bc
    rra
    rra
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
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    db $10
    rrca
    ld [$f507], sp
    nop
    ld a, [$fa00]
    nop
    db $fd
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    rra
    rst $38
    rst $38
    rst $38
    rst $38

jr_020_4b43:
    rst $38
    ld a, [$caff]
    rst $38
    ld l, b
    rst $38
    sub e
    rst $38
    inc b
    rst $38
    ld d, d
    rst $38
    inc b
    rst $38
    ld d, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_020_4b43

    nop
    rst $28
    ld [$08cf], sp
    rst $08
    ld c, b
    sbc a
    inc l
    rst $18
    inc a
    rst $18
    ld a, b
    rst $28
    ret nc

    sbc a
    ld h, b
    ld a, a
    add b
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld bc, $03ff
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
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
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
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
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
    add b
    nop
    ret nz

    nop
    ldh [$60], a
    sub b

jr_020_4bf0:
    add b
    ld a, b

jr_020_4bf2:
    jr nc, jr_020_4bf0

    jr c, jr_020_4bf2

    db $fc
    cp $fc
    rst $38
    ldh a, [rIE]
    rst $00
    rst $38
    ld hl, sp+$78
    ccf
    rst $38
    ccf
    rst $18
    ld a, a
    adc a
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp+$03
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    ld bc, $00b4
    db $db
    nop
    xor l
    nop
    ld d, [hl]
    nop
    xor e
    inc b
    ld sp, hl
    rlca
    ld a, a
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    ld a, d
    rst $38
    push bc
    rst $38
    ld [de], a
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    ld [bc], a
    rst $38
    add b
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
    ld bc, $01ff
    rst $38
    ld [bc], a
    cp $02
    cp $02
    cp $04
    db $fc
    inc b
    db $fc
    ld [$08f8], sp
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [$60]
    ldh [rLCDC], a
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38

Call_020_4cb3:
    nop
    rst $38
    nop
    ld a, a
    nop
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
    ld bc, $0000
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
    cp $ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    db $fc
    rst $38
    cp $00
    nop
    add b
    nop
    ret nz

    nop
    ldh [rNR10], a
    add sp, $18
    db $fc
    cp $f0
    db $fc
    ld e, h
    db $fc
    ld [$a8f8], sp
    ld hl, sp-$30
    ldh a, [$f0]
    ldh a, [rNR10]
    ldh a, [$a0]
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
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
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    jr jr_020_4dcb

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_020_4dda

    ld hl, $2322
    inc h
    dec h
    ld h, $18
    add hl, de
    daa
    jr z, jr_020_4dee

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_020_4dcb:
    jr nc, jr_020_4dfe

    ld [hl-], a
    inc sp
    inc [hl]
    jr jr_020_4deb

    dec [hl]
    ld [hl], $37
    jr c, jr_020_4e10

    nop
    ld a, [hl-]
    dec sp

jr_020_4dda:
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    jr jr_020_4dfb

    dec [hl]
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_020_4deb:
    ld c, d
    ld c, e
    ld c, h

jr_020_4dee:
    ld c, l
    ld c, [hl]
    jr jr_020_4e0b

    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_020_4dfb:
    ld e, b
    ld e, c
    ld e, d

jr_020_4dfe:
    ld e, e
    ld e, h
    jr jr_020_4e1b

    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, c
    ld h, d
    ld h, e
    ld h, h

jr_020_4e0b:
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c

jr_020_4e10:
    jr jr_020_4e2b

    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_020_4e1b:
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    jr jr_020_4e3b

    ld a, b
    ld a, c
    ld a, d
    nop
    nop
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]

jr_020_4e2b:
    ld a, a
    add b
    add c
    add d
    add e
    jr jr_020_4e4b

    add h
    add l
    add [hl]
    add a
    nop
    nop
    adc b
    jr nz, @-$75

jr_020_4e3b:
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    jr @-$6f

    sub b
    sub c
    sub d
    sub e
    sub h
    jr @+$1a

    jr @+$1a

jr_020_4e4b:
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    jr jr_020_4e6a

    jr jr_020_4e6c

    jr jr_020_4e6e

    jr jr_020_4e70

    jr jr_020_4e72

    jr @-$69

    sbc d
    sbc e
    sbc h
    sbc l
    jr jr_020_4e7a

    jr jr_020_4e7c

    jr jr_020_4e7e

    jr jr_020_4e80

    jr jr_020_4e82

jr_020_4e6a:
    jr @-$69

jr_020_4e6c:
    nop
    sbc [hl]

jr_020_4e6e:
    sbc a
    and b

jr_020_4e70:
    jr jr_020_4e8a

jr_020_4e72:
    jr jr_020_4e8c

    jr jr_020_4e8e

    jr jr_020_4e90

    jr jr_020_4e92

jr_020_4e7a:
    jr @-$69

jr_020_4e7c:
    and c
    and d

jr_020_4e7e:
    and e
    and h

jr_020_4e80:
    jr jr_020_4e9a

jr_020_4e82:
    jr jr_020_4e9c

    jr jr_020_4e9e

    jr jr_020_4ea0

    jr jr_020_4ea2

jr_020_4e8a:
    jr @-$69

jr_020_4e8c:
    nop
    nop

jr_020_4e8e:
    and l
    and [hl]

jr_020_4e90:
    ld [bc], a
    ld [bc], a

jr_020_4e92:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_020_4e9a:
    ld [bc], a
    ld [bc], a

jr_020_4e9c:
    ld [bc], a
    ld [bc], a

jr_020_4e9e:
    ld [bc], a
    ld [bc], a

jr_020_4ea0:
    ld [bc], a
    ld [bc], a

jr_020_4ea2:
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
    inc b
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
    inc b
    inc b
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
    inc b
    inc b
    nop
    nop
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    ld b, $00
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
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    inc b
    inc h
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $06
    ld b, $06
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    pop bc
    ccf
    add c
    ld a, a
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
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    pop hl
    rra
    pop bc
    ccf
    add e
    ld a, a
    add a
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
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
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld b, $ff
    ld a, [bc]
    rst $38
    inc c
    rst $38
    db $10
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
    inc bc
    add b
    inc bc
    add b
    inc bc
    add b
    inc bc
    add b
    inc bc
    add b
    inc bc
    add b
    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c0
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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
    db $fc
    inc bc
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
    add a
    ld a, a
    adc a
    ld a, a
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
    ld a, a
    rst $38
    ld a, a
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
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [de], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    add l
    rst $38
    ld b, a
    rst $38
    add d
    rst $38
    ld b, l
    rst $38
    add h
    rst $38
    ld [$10ff], sp
    rst $38
    ld [$28ff], sp
    rst $38
    db $10
    rst $38
    jr z, @+$01

    jr nz, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, HeaderLogo
    ld bc, $0000
    ld bc, $0001
    ld bc, $0500
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    rlca
    nop
    ld bc, $0a00
    nop
    rrca
    nop
    ld b, [hl]
    nop
    cp a
    nop
    rst $10
    nop
    cp a
    nop
    rst $28
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    push hl
    ld a, [de]
    ret nz

    ccf
    add b
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
    ld bc, HeaderManufacturerCode
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
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$09ff], sp
    rst $38
    add hl, bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec c
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $09ff
    rst $38
    add b
    rst $38
    nop
    di
    add b
    rst $38
    add b
    cp a
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
    nop
    add b
    nop
    add b
    nop
    add b
    ld bc, $0180
    add b
    dec b
    add b
    and e
    nop
    push de
    nop
    push de
    nop
    rst $28
    nop
    rst $10
    nop
    rst $18
    nop
    rst $30
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

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, [de]
    push hl
    inc c
    di
    db $10
    rst $28
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    and b
    rst $38
    or b
    rst $38
    jr nc, @+$01

    or b
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    add b
    rst $38
    or b
    rst $38
    and b
    rst $38
    or b
    rst $38
    or b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    and b
    rst $38
    and b
    rst $38
    or b
    rst $38
    sub b
    rst $38
    or c
    rst $38
    pop de
    rst $38
    or c
    rst $38
    or d
    rst $38
    or c
    rst $38
    or c
    rst $38
    pop de
    rst $38
    pop af
    rst $38
    ret nc

    rst $38
    or b
    rst $38
    ld d, b
    rst $38
    add b
    rst $38
    and b
    ld sp, hl
    nop
    ret nz

    nop
    ret nz

    nop
    and b
    nop
    db $f4
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    pop af
    ld a, a
    ld a, e
    ccf
    ld de, $c100
    nop
    adc c
    nop
    ld l, d
    nop
    xor e
    nop
    rst $10
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$09], a
    or $12
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld a, a
    ldh [$60], a
    ret nz

    ld b, b
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], d
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, c
    rst $38

jr_020_53c2:
    ld a, c
    rst $38
    ld a, b
    rst $38
    ld a, c
    rst $38
    ld [hl], b
    rst $38
    ld l, a
    ldh a, [$df]
    ldh [$b6], a
    ret nz

    add b
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    cp b
    rst $38
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    rst $08
    nop
    ld e, e
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
    db $fc
    call nz, Call_020_78f8
    ldh a, [rLCDC]
    nop
    ld h, b
    nop
    and b
    nop
    ldh [rP1], a
    ld d, c
    nop
    pop af
    nop
    pop af
    nop
    di
    nop
    pop af
    nop
    di
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_020_53c2

    ld h, b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    inc c
    di
    inc b
    ei
    ld a, [bc]
    push af
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
    ld hl, sp+$07
    inc a
    inc bc
    inc b
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
    db $fc
    rst $38
    ld hl, sp-$01
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
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
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
    ld d, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    and b
    rst $38
    jr nz, @+$01

    and b
    rst $38
    and b
    rst $38
    jr nc, @+$01

    ld b, b
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    cp h
    inc bc
    nop
    rst $38
    ld d, b
    rst $38
    sub b
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld [$ff00], a
    nop
    rst $38
    nop
    nop
    ld bc, $0a00
    nop
    rst $38
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec b
    nop
    dec b
    nop
    dec b
    nop
    ld d, l
    nop
    sub c

jr_020_54d7:
    nop
    inc d
    nop
    inc d
    nop
    jr z, jr_020_54de

jr_020_54de:
    inc [hl]
    nop
    or h
    nop
    cp l
    nop
    ld e, l
    nop
    rst $38
    nop
    ld e, a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    xor b
    ld d, a
    jr nc, jr_020_54d7

    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
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
    inc hl
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    add e
    rst $38
    and a
    rst $38
    inc hl
    rst $38
    daa
    rst $38
    daa
    rst $38
    ld h, a
    rst $38
    daa
    rst $38
    daa
    rst $38
    ld h, a
    rst $38
    daa
    rst $38
    ld b, $ff
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
    inc b
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
    jr c, jr_020_559b

jr_020_559b:
    ld [hl-], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld a, a
    nop
    xor a
    nop
    add h
    ld a, e
    rst $38
    nop
    cp e
    nop
    rst $38
    nop
    rst $30
    nop
    ld e, a
    nop
    ld a, a
    nop
    cp a
    nop
    db $10
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    dec a
    jp nz, $c23d

    or [hl]
    ret


    sbc b
    rst $20
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
    nop
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
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    sub $ff
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
    and b
    rst $38
    and b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    and b
    rst $38
    and b

jr_020_562d:
    rst $38
    add b
    rst $38
    adc d
    rst $38
    add d
    rst $38
    and d
    rst $38
    and b
    rst $38
    jp nz, $82ff

    rst $38
    and b
    rst $38
    and d
    rst $38
    add h
    rst $38
    add b
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld d, d
    xor l

jr_020_564c:
    rst $18
    jr nz, jr_020_564c

    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    call z, Call_020_4aff
    rst $38
    ret nz

    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor a
    nop
    and [hl]

jr_020_566c:
    nop
    and $00
    ld hl, sp-$01
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
    db $10
    cp $59
    db $fc
    pop af
    ld hl, sp-$0f
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    pop af
    nop
    ldh a, [rSB]
    pop bc
    jr nc, jr_020_566c

jr_020_569b:
    jr nz, jr_020_562d

    ld h, c
    sub b
    ld h, c
    sub b
    ld h, c
    sub b
    ld h, c
    db $10
    pop hl
    db $10
    pop hl
    db $10
    pop hl
    ld a, [de]
    pop hl
    ld [de], a
    pop hl
    ld d, $e1
    ld a, [de]
    pop hl
    ld a, [de]
    pop hl
    ld e, $e1
    jr jr_020_569b

    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc d
    db $eb
    ld [$04f7], sp
    ei
    ld [$05f7], sp
    ei
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    add sp, $17
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc h
    rst $38
    pop af
    rst $38
    ldh [rIE], a
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
    add d
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
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
    ld bc, $80ff
    ld a, a
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld hl, $25ff
    rst $38
    ld b, l
    rst $38
    ld b, h
    rst $38
    ld b, c
    rst $38
    nop
    ld b, a
    nop
    nop
    nop
    nop
    nop
    or d
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
    db $fc
    inc bc
    db $f4
    dec bc
    db $ec
    inc de
    ldh a, [rIF]
    db $f4
    dec bc
    db $e4
    dec de
    db $e4
    dec de
    jp nc, Jump_020_402d

    cp a
    ld b, b
    cp a
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
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    rst $38
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
    sbc a
    ld c, a
    sbc a
    rra
    adc a
    rlca
    adc a
    rlca
    sbc a
    rrca
    cp a
    rrca
    cp a
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp a
    rst $38
    add hl, bc
    rst $38
    inc l
    rst $38
    jr @+$01

    ld [$08ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    ld e, b
    rst $38
    jr @+$01

    ld e, b
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    db $10
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    adc b
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    adc b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    ld c, b
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    inc d
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    nop
    rst $08
    nop
    rlca
    ld bc, $0003
    ld a, [hl+]
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
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0b]
    db $f4
    ld c, $f1
    ld a, [bc]
    push af
    ld c, $f1
    dec c
    ld a, [c]
    ld c, $f1
    ld c, $f1
    ld c, $f1
    dec c
    ld a, [c]
    inc e
    db $e3
    ld a, [de]
    push hl
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
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
    db $10
    rst $28
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
    nop
    rst $38
    inc b
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    sub b
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$20ff], sp
    rst $38
    jr nz, @+$01

    and h
    ei
    ld [hl+], a
    ld hl, sp+$10
    ei
    add b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rLCDC], a
    ldh [rP1], a
    ldh [rLCDC], a
    ldh [$60], a
    ldh [$a0], a
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rP1], a
    ret nz

    add b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ld b, b
    ret nz

    ld b, b
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rst $38

jr_020_5927:
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
    ld [hl+], a
    ld c, l
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
    nop
    rst $38
    jr nz, jr_020_5927

    nop
    rst $38
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
    cp $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub a
    cp a
    inc bc
    rst $38
    nop
    ei
    nop
    di
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $002c
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_020_5999:
    rst $38
    nop
    cp a
    nop
    rst $28
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_020_59a3:
    rst $38
    ei
    ld hl, sp-$01
    ldh a, [rIE]
    nop
    cp a
    nop
    ld e, [hl]
    nop
    ei
    nop
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
    jr nz, jr_020_59a3

    jr nz, jr_020_5999

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, h
    rst $38
    nop
    ld a, d
    nop
    or h
    nop
    ld a, [$0000]
    rst $38
    nop
    rst $38
    inc b
    db $eb
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld sp, hl
    inc b
    ld sp, hl
    nop
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
    nop
    cp a
    nop
    rra
    nop
    adc a
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
    db $eb
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
    rlca
    ld [$0a09], sp
    dec bc
    nop
    nop
    inc c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    stop
    nop
    nop
    ld de, $1312
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
    ld d, $00
    nop
    rla
    jr jr_020_5a99

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
    jr nz, jr_020_5a91

jr_020_5a91:
    nop
    nop
    nop
    nop
    nop
    ld hl, $2322

jr_020_5a99:
    inc h
    dec h
    ld h, $27
    jr z, jr_020_5ac8

    ld a, [hl+]
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_020_5ada

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_020_5aea

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

jr_020_5ac8:
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

jr_020_5ada:
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

jr_020_5aea:
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
    nop
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


    jp z, $cbcb

    call z, $cecd
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ret c

    reti


    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    ld h, l
    and $e7
    add sp, -$17
    ld [$eceb], a
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
    inc b
    inc b
    inc b
    nop
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
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
    ld b, $02
    ld [bc], a
    ld [bc], a
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
    ld bc, $0204
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld b, $00
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
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0404
    nop
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
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0006
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0004
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    inc b
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
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc b
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
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld hl, sp+$07
    ldh a, [rIF]
    ld a, [c]
    rrca
    pop af
    rrca
    push hl
    rra
    rst $20
    rra
    pop hl
    rra
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    sub a
    ld a, a
    sub a
    ld a, a
    adc a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    nop
    rrca
    ld h, b
    rra
    ret nz

    ccf
    ret nz

    ccf
    and b
    rra
    add b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    ld d, h
    adc e
    add b
    ccf
    db $10
    ld l, a
    add b
    ld l, l
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    jp $ffff


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
    pop hl
    rra
    push hl
    rra
    pop hl
    rra
    jp $cb3f


    ccf
    jp $873f


    ld a, a
    add a
    ld a, a
    add a
    ld a, a
    rlca
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    nop
    rrca
    nop
    rrca
    ld h, b
    rra
    add b
    ccf
    add b
    ccf
    jr nz, jr_020_5d8b

    ld b, b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
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
    sub b
    ld l, a
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc e
    inc b

jr_020_5d8b:
    ei
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
    ld hl, sp-$01
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rVBK], a
    ldh a, [rPCM34]
    ld hl, sp-$05
    db $fc
    db $fd
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    nop
    rst $38
    db $10
    rst $20
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
    cp $00
    cp $03
    db $fc
    ld bc, $fefe
    cp $fc
    cp $fe
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
    dec h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $3f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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
    ld b, b
    ccf
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
    ld b, b
    cp a
    ld c, e
    or h
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
    rst $38
    ld e, a
    rst $30
    rrca
    db $e3
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$02
    db $fd
    cp $ff
    cp $ff
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
    ld bc, $00ff
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
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    db $fc
    cp $f8
    cp $f8
    nop
    ld a, [$fe00]
    nop
    ld hl, sp+$00
    ld hl, sp+$20
    ld hl, sp+$20
    ld hl, sp+$00
    db $f4
    nop
    ld hl, sp+$00
    ldh a, [$60]
    ldh [$a0], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rIE], a
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    di
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $20
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $08
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, h
    rst $38
    nop
    ld a, b
    nop
    ld a, d
    nop
    ld a, d
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rLCDC]
    cp $c0
    rst $38
    nop
    rst $38
    add b
    di
    ret nz

    ldh a, [rP1]
    ldh a, [rLCDC]
    ld hl, sp+$00
    ld hl, sp+$00
    ld [hl], b
    nop
    ld [hl], b
    nop
    jr nz, jr_020_5f35

jr_020_5f35:
    jr nc, jr_020_5f37

jr_020_5f37:
    jr nz, jr_020_5f48

    jr nz, jr_020_5f3b

jr_020_5f3b:
    nop
    nop
    jr nz, jr_020_5f3f

jr_020_5f3f:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_020_5f48:
    jp $2c3c


    inc bc
    dec b
    nop
    ld bc, $0100
    nop
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    sub [hl]
    nop
    ld a, b
    nop
    rlca
    nop
    xor b
    nop
    ei
    nop
    ld hl, sp+$00
    rst $18
    nop
    stop
    nop
    nop
    add b
    nop
    ld hl, sp+$00
    cp a
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    ld sp, hl
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    di
    rrca
    di
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $20
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $08
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fd
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $f4
    db $fc
    ldh a, [$f8]
    ldh [$f8], a
    ldh [$f8], a
    add sp, -$01
    ld hl, sp-$20
    rst $38
    rst $38
    ldh [$f4], a
    ldh [$f0], a
    ldh [$fc], a
    ret nc

    ld a, [$ffe0]
    ret nz

    adc a
    ldh a, [$80]
    rst $38
    ret nz

    rst $38
    rra
    cp $ff
    add b
    rst $38
    nop
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    ld bc, $00ff
    ld a, a
    nop
    cp $00
    cp $00
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
    ld b, b
    nop
    ld a, e
    nop
    and e
    nop
    rst $18
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    rst $38
    jr z, @+$01

    ld [bc], a
    db $eb
    nop
    ret z

    nop
    rst $18
    nop
    nop
    cp $fe
    ld bc, $00ff
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
    rrca
    ld a, [c]
    ret nc

    rrca
    ldh [rP1], a
    add b
    nop
    rst $30
    nop
    cp $00
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rst $18
    nop
    cp b
    rlca
    ldh [rP1], a
    ldh [rP1], a
    db $fc
    nop
    db $fc
    nop
    inc c
    nop
    ld d, $00
    nop
    nop
    ldh a, [rP1]
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $08
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    ei
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, [c]
    nop
    rst $38
    nop
    pop af
    nop
    ldh [rP1], a
    ld a, [c]
    nop
    ei
    nop
    db $fd
    nop
    sbc [hl]
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add c
    rst $38
    nop
    rst $38
    add b
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$08
    rlca
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
    cp h
    nop
    rla
    nop
    rlca
    nop
    ld b, $00
    rlca
    nop
    rst $38
    nop
    nop
    rst $38
    add hl, de
    nop
    nop
    nop
    nop
    nop
    and d
    nop
    rst $28
    nop
    db $e3
    nop
    ccf
    ret nz

    inc bc
    db $fc
    jp $ffff


    ld c, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    db $fc
    inc de
    ld e, e
    nop
    ld b, c
    nop
    cp $00
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    db $fc
    inc bc
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    db $e4
    ldh a, [rIF]
    cp $00
    cp $00

jr_020_610e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld sp, $d000
    nop
    ld a, [$0200]
    db $fc
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
    rra
    ldh [$60], a
    rra
    nop
    nop
    ld b, b
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld h, b
    add b
    nop
    ld a, a
    jr jr_020_6144

jr_020_6144:
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
    nop
    nop
    and $19
    ld [hl], a
    adc b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    or a
    ld c, b
    rst $30
    ld [$c43b], sp
    inc sp
    call z, Call_020_4cb3
    rst $30
    ld [$8870], sp
    ld a, a
    add b
    rst $18
    jr nz, jr_020_610e

    ld h, b
    ccf
    ret nz

    ld bc, $7e00
    add b
    nop
    and c
    nop
    call c, $dd00
    nop
    jr nz, jr_020_617f

jr_020_617f:
    nop
    nop
    nop
    nop
    nop
    nop
    sbc b
    nop
    cp h
    nop
    ld bc, $0000
    nop
    nop
    nop
    jp c, Jump_000_1f00

    nop
    rst $38
    nop
    ld c, a
    ld bc, $0000
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    rst $38
    db $10
    ld e, b
    inc bc
    ld b, c
    nop
    cp $00
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    db $fc
    inc bc
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    inc c
    inc bc
    nop
    nop
    cp d
    nop
    ld [hl], b
    nop
    adc h
    nop
    db $f4
    nop
    or a
    nop
    nop
    rst $38
    ccf
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    db $e4

jr_020_61d5:
    nop
    ld h, h
    nop
    or h
    nop
    rst $38
    jr nz, jr_020_61d5

    daa
    rst $38
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $e3
    inc e
    db $fc
    nop
    adc [hl]
    nop
    add b
    nop
    ret nc

    nop
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    daa
    ret c

    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld bc, $00fe
    ld bc, $0000
    nop
    nop
    ldh [rP1], a
    add a
    nop
    add $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$10
    rlca
    db $fd
    nop
    sbc a
    nop
    rst $08
    nop
    rst $18
    nop
    inc e
    nop
    cp h
    nop
    ccf
    ret nz

    ld b, b
    ccf
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    stop
    ld c, $00
    ccf
    add b
    add b
    ld a, a
    ld a, [hl]
    nop
    ld [$0000], sp
    nop
    add b
    nop
    nop
    nop
    ccf
    nop
    rst $38
    nop
    db $fc
    inc bc
    db $fc
    inc bc
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
    dec a
    ld [bc], a
    jp nz, $ff00

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
    and b
    nop
    ld hl, sp+$00
    dec c
    nop
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    and b
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, jr_020_629e

    ld hl, sp-$10
    rlca
    ldh a, [rP1]
    ld hl, sp+$00

jr_020_629e:
    ld hl, sp+$00
    rst $38
    nop
    inc e
    ldh [$80], a
    rra
    add b
    nop
    ret nc

    nop
    ldh a, [rP1]
    db $fc
    nop
    rst $38
    nop
    inc bc
    db $fc
    db $fc
    inc bc
    cp $00
    cp $00
    ld hl, sp+$00
    db $fd
    nop
    ld e, a
    and b
    inc c
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
    nop
    ld b, b
    add b
    nop
    ld a, a
    ld b, c
    nop
    rst $00
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    db $f4
    nop
    dec a
    ret nz

    cp $00
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
    call Call_000_3032
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    nop
    xor $00
    sub e
    ld l, h
    ld a, [hl]
    nop
    add sp, $00
    ldh [rP1], a
    add b
    nop
    add b
    nop
    add b
    nop
    add sp, $00
    ld b, b
    nop
    nop
    cp $00
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
    ldh a, [$c0]
    rrca
    sub b
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
    add b
    nop
    nop
    cp $00
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    add sp, $00
    cp $00
    ld [hl+], a
    nop
    nop
    rst $38
    sub b
    nop
    ld e, b
    nop
    nop
    nop
    xor $00
    cp $00
    cp $00
    ld e, $e0
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    or b
    nop
    ldh [rP1], a
    ld d, b
    nop
    ldh a, [rP1]
    dec sp
    call nz, Call_000_00ff
    rst $38
    nop
    inc a
    nop
    db $f4
    nop
    db $fc
    nop
    rst $38
    nop
    nop
    cp $00
    ld bc, $0000
    nop
    nop
    nop
    nop
    jr c, jr_020_63a4

jr_020_63a4:
    nop
    ld hl, sp+$00
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    nop
    xor $00
    nop
    cp $7e
    ld bc, $00fc
    ldh [rP1], a
    ldh [rP1], a
    ld hl, sp+$00
    ld c, h
    or b
    rra
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld [hl], a
    add b
    add b
    ld a, a
    ld sp, hl
    nop
    ldh a, [rP1]
    ld b, h
    nop
    ld [bc], a
    nop
    nop
    nop
    rlca
    nop
    rst $20
    jr jr_020_63ee

    nop
    nop
    nop
    nop
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
    ld a, [de]

jr_020_63ee:
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
    or d
    ld c, h
    ld bc, $4000
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
    db $fc
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
    ld bc, $04fc
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
    rst $38
    ld e, $00
    rrca
    nop
    dec c
    nop
    rrca
    nop
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
    ld hl, sp+$08
    rst $38
    rrca
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    add sp, $17
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rra
    rst $38
    db $10
    db $ed
    nop
    call nz, $fc00
    nop
    rst $38
    nop
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    ld [hl], $49
    nop
    nop

jr_020_6490:
    nop
    nop
    nop
    nop
    ld bc, $4800
    nop
    ld bc, $0000
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
    db $fc
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
    add b
    nop
    nop
    rst $38
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    dec b
    ld hl, sp+$03
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
    jr c, jr_020_6490

    nop
    ccf
    ld b, a
    nop
    add e
    nop
    pop bc
    nop
    ld [$7000], sp
    nop
    ld a, a
    add b
    rst $30
    ld [$003f], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_020_64ee

jr_020_64ee:
    db $e3
    inc e
    rrca
    nop
    rra
    nop
    ld l, h
    nop
    inc c
    nop
    inc h
    nop
    inc [hl]
    nop
    inc e
    nop
    cp b
    ld b, h
    xor a
    nop
    ld c, a
    nop
    add sp, $00
    ld hl, sp+$00
    jr nz, jr_020_650a

jr_020_650a:
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    ld hl, sp+$18
    rlca
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
    nop
    nop
    nop
    nop
    inc hl
    nop
    rrca
    ret nz

    nop
    ccf
    nop
    nop
    nop
    nop
    adc a
    nop
    ld de, $0500
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rNR10]
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
    ld bc, $ff00
    nop
    ld bc, $defe
    ld bc, $00ff
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
    rrca
    ldh a, [$f0]
    rst $38
    ret nz

    ccf
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
    adc $ff
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
    jr z, jr_020_657e

jr_020_657e:
    nop
    nop
    stop
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
    ld h, b
    add b
    ld a, e
    inc b
    jr c, jr_020_6592

jr_020_6592:
    or b
    nop
    ld d, [hl]
    nop
    sbc a
    nop
    pop de
    nop
    ld sp, $40c0
    ccf
    rrca
    nop
    ld b, $00
    rrca
    nop
    ccf
    nop
    ccf
    nop
    nop
    rst $38
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
    rst $38
    rra
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    sub b
    ld l, [hl]
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
    jr nz, jr_020_65d0

jr_020_65d0:
    nop
    ret nz

    pop bc
    ld a, $fe
    nop
    db $fc
    nop
    ld d, l
    nop
    ld d, l
    nop
    ld hl, sp+$00
    adc a
    ld [hl], b
    cp $01
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
    nop

jr_020_65ee:
    rst $18
    jr nz, jr_020_65ee

    ld [bc], a
    rst $20
    nop
    ld [hl], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld de, $0700
    ldh a, [$fe]
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    inc b
    cp a
    nop
    scf
    nop
    rst $10
    nop
    rst $38
    nop
    rlca
    ld hl, sp-$08
    rlca
    rst $38
    nop
    rra
    nop
    rla
    nop
    rrca
    nop
    daa
    nop
    ld h, e
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, a
    add b
    rlca
    ld a, b
    rra
    ld bc, $00bf
    ld l, a
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
    dec bc
    rrca
    nop
    rlca
    nop
    add hl, bc
    nop
    cpl
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    ld bc, $fefe
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
    nop
    rst $38
    nop
    rst $38
    ld c, e
    or h
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
    ld b, b
    cp a
    rst $18
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
    rla
    ld e, a
    nop
    stop
    scf
    nop
    inc bc
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
    ld l, c
    sub b
    rlca
    nop
    inc hl
    nop
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ld sp, hl
    ld [hl], b
    rrca
    ld l, a
    nop
    xor a
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    nop
    rst $38
    ccf
    nop
    cpl
    nop
    rra
    nop
    ld c, a
    nop
    rst $00
    nop
    ld a, e
    add b
    add b
    ld a, a
    rst $38
    nop
    ld a, a
    nop
    ccf
    ld [bc], a
    ld a, a
    nop
    rst $18
    nop
    db $db
    inc h
    ld bc, $0000
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
    ld l, a
    sub c
    rst $38
    inc b
    rst $38
    dec b
    rra
    nop
    ccf
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
    rst $38
    nop
    ld a, a
    nop
    ld c, a
    nop
    sub $00
    db $dd
    nop
    rst $38
    nop
    nop
    nop
    sbc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    jr z, jr_020_672f

jr_020_672f:
    ld b, d
    nop
    nop

Call_020_6732:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    and h
    nop
    inc de
    nop
    nop
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
    rra
    ldh [rIE], a
    nop

jr_020_6750:
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    add b
    add b
    ld a, a
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
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
    and a
    rlca
    nop
    or b
    nop
    rst $30
    nop
    rst $30
    nop
    ld a, a
    nop
    ld bc, $0700
    nop
    nop
    nop
    xor l
    nop
    db $76
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_020_6798:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
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
    add b
    ld bc, $007f
    nop
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
    ld a, a
    nop
    nop
    nop
    nop
    and b
    rst $38
    ld d, b
    rst $38
    add h
    rst $38
    nop
    rst $08
    jr nc, jr_020_6750

    nop
    sbc a
    nop
    rst $18
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$f400], sp
    nop
    pop de
    nop
    db $fd
    nop
    ccf
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    rst $38
    ld b, $ff
    ld b, $ff
    ld h, a
    rst $38
    ld c, a
    rst $38
    ld b, $b7
    nop
    ld a, e
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
    dec bc
    nop
    nop
    nop
    jr jr_020_6813

jr_020_6813:
    add hl, de
    nop
    rrca
    nop
    adc a
    nop
    rrca
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
    ld [bc], a
    nop
    inc d
    nop
    dec b
    nop
    dec b
    nop
    jr c, jr_020_6833

jr_020_6833:
    inc c
    nop
    ld a, [de]
    nop
    inc bc
    nop
    dec b
    nop
    inc hl
    nop
    inc hl
    nop
    ld a, e
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
    ld de, $fc03
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec de
    ccf
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ld a, a
    nop
    inc de
    ld bc, $0103
    inc bc
    ld bc, $01c1
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $0300
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $01e0
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ret nz

    nop
    ld a, $01
    nop
    nop
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
    ld d, c
    nop
    call $0200
    nop
    nop
    nop
    nop
    nop
    ld b, a
    nop
    rst $10
    nop
    adc a
    nop
    rst $38
    nop
    cp a
    nop
    ld bc, $8000
    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    jp nc, $0500

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
    dec a
    nop
    dec c
    nop
    jp hl


    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec bc
    nop
    nop
    nop
    nop
    nop
    ld [$0400], sp
    nop
    stop
    dec b
    nop
    adc l
    nop
    sbc c
    nop
    rst $38
    nop
    cp a
    nop
    inc b
    nop
    nop
    nop
    ld h, h
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
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
    rst $38
    nop
    rst $38
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
    cp $fc
    nop
    nop
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $00
    cp $00
    cp $00
    cp $00
    cp $20
    sbc $20
    sbc $38

jr_020_698d:
    add $2c
    jp nc, $926c

    ld [hl], $c8
    inc d
    ld [$ea14], a
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld b, $f8
    db $76
    adc b
    ld [de], a
    db $ec
    ld d, $e8
    ld a, [bc]
    db $f4
    ld b, $f8
    ld [de], a
    db $ed
    db $10
    rst $28
    jr nz, jr_020_698d

    ld [bc], a
    db $fd
    ld [de], a
    db $ed
    ld [hl+], a
    db $dd
    ld de, $1aee
    push hl
    inc de
    db $ec
    nop
    rst $38
    ld [bc], a
    db $fd
    ld [$00f7], sp
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    ld bc, $17fe
    add sp, $15
    ld [$fc03], a
    ld bc, $007e
    ld a, a
    ld bc, $037e
    db $fc
    ld bc, $017e
    ld a, [hl]
    dec b
    ld a, d
    ld bc, $007e
    ld a, a
    ld [bc], a
    ld a, l
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    ld a, a
    nop
    rst $38
    nop
    rra
    nop
    jr jr_020_69f5

jr_020_69f5:
    add b
    nop
    call z, $df00
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, $00
    ld bc, $1c00
    nop
    ld e, b
    nop
    jr z, jr_020_6a09

jr_020_6a09:
    ld l, h
    nop
    ld a, [$fe00]
    nop
    rst $38
    nop
    rst $30
    nop
    rrca
    nop
    ld bc, $0000
    nop
    ld a, h
    nop
    or $00
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl+], a
    nop
    add hl, hl
    nop
    dec d
    nop
    dec hl
    nop
    rra
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
    nop
    nop
    nop
    nop
    nop
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
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add e
    ret nz

    add a
    ret nz

    sbc a
    ret nz

    add c
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
    nop
    rst $38
    nop
    ccf
    nop
    ld [$0800], sp
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
    add [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret c

    nop
    rst $38
    nop
    ld a, a
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    and b
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
    ld b, c
    nop
    ldh [rP1], a
    ldh [rP1], a
    and b
    nop
    nop
    nop
    ld bc, $0300
    nop
    rrca
    nop
    rra
    nop
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    inc hl
    nop
    add h
    nop
    ld b, $00
    ld d, e
    nop
    cp a
    nop
    db $fd
    nop
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
    add b
    nop
    jp hl


    nop
    rst $38
    nop
    xor l
    nop
    nop
    nop
    nop
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
    ld a, a
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
    ld bc, $0300
    nop
    rrca
    nop
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    db $dd
    ld bc, $00fe
    rst $38
    nop
    rst $30
    nop
    rrca
    nop
    add b
    nop
    ldh a, [rP1]
    adc $00
    push af
    nop
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    cp $00
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    cp e
    nop
    rlc b
    jp nc, $fd00

    nop
    rst $38
    nop
    ld bc, $0000
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
    ld c, $0f
    db $10
    ld de, $0012
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
    jr jr_020_6bd7

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    nop
    jr nz, jr_020_6bea

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_020_6bfa

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_020_6bd7:
    jr nc, jr_020_6c0a

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_020_6c1a

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_020_6bea:
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
    ld c, a
    ld d, b
    ld d, c

jr_020_6bfa:
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

jr_020_6c0a:
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

jr_020_6c1a:
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    xor b
    xor c
    xor d
    xor e
    xor h
    nop
    sub h
    xor l
    xor [hl]
    xor a
    or b
    or c
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    or d
    or e
    nop
    and c
    or h
    or l
    or [hl]
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    or a
    cp b
    cp c
    cp d
    xor [hl]
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    cp e
    cp h
    cp l
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    cp [hl]
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    cp a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
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
    ld bc, $0101
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    dec b
    dec b
    dec b
    dec b
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    inc b
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0404
    inc b
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0301
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
    ld bc, $0100
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    dec b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    nop
    ld bc, $0101
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
    inc b
    inc b
    inc b
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
    inc b
    inc b
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
    inc b
    inc b
    inc b
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
    inc b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    rrca
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    ld bc, $00ff
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
    ld bc, $85ff
    rst $38
    rra
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
    db $fc
    nop
    ld sp, hl
    ld bc, $01f9
    ldh a, [rP1]
    ldh a, [rP1]
    db $f4
    inc b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    ld a, [hl]
    add c
    ld l, h
    add e
    ld a, h
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$27
    ld hl, sp+$47
    ld hl, sp+$07
    ldh a, [$0d]
    ldh a, [$0e]
    ldh a, [rIF]
    ldh a, [$09]
    ldh a, [$0b]
    ldh [$1f], a
    jr nz, jr_020_6ec3

    jr nz, @+$21

    jr nz, jr_020_6ec3

    ld h, b
    rra
    ld d, b
    daa
    ld d, b
    daa
    ld d, b
    daa
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_020_6ec3:
    rst $38
    jr nc, @+$01

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
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    inc b
    rst $38
    add b
    rst $38
    ld [hl-], a
    rst $38
    rlca
    rst $38
    rst $38
    ld hl, sp-$01
    ld c, b
    rst $38
    nop
    rst $38
    ld bc, $80ff
    rst $38
    add b
    cp a
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
    inc b
    ld a, a
    ld [$04ff], sp
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
    rst $38
    nop
    rst $38
    nop
    ld bc, $01fe
    ld a, [hl]
    ld bc, $017e
    cp $01
    cp $01
    cp $02
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld a, h
    ld [bc], a

Call_020_6f23:
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$02
    ld a, [$f800]
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$14
    db $fc
    inc b
    db $f4
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc e

jr_020_6f51:
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
    add hl, hl
    rst $38
    nop

jr_020_6f5f:
    rst $38
    add l
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, $ff
    db $db
    rst $38
    ccf
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    db $10
    rst $38
    sub b
    ld a, a
    nop
    db $f4
    jr nz, jr_020_6f5f

    jr nz, jr_020_6f51

    nop
    ret z

    nop
    ret z

    nop
    ret z

    nop
    add c
    nop
    add c
    nop
    adc c
    nop
    adc c
    nop
    add c
    nop
    add c
    nop
    db $76
    adc c
    push hl
    sbc d
    db $fd
    ld [bc], a
    ld sp, hl
    ld [bc], a
    pop bc
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
    add c
    ld [bc], a
    add c
    inc b
    add c
    inc b
    inc bc
    inc b
    inc bc
    inc b
    dec bc
    inc b
    ld a, [bc]
    inc b
    dec b
    ld [$0803], sp
    dec b
    inc c
    dec b
    inc c
    ld bc, $0308
    ld [$0801], sp
    dec bc
    jr @+$0d

    jr @+$0b

    jr jr_020_6fc4

    db $10
    inc bc
    db $10

jr_020_6fc4:
    inc bc
    db $10
    dec bc
    jr jr_020_6fdc

    jr nc, jr_020_6fe2

    jr nc, jr_020_6fd8

    jr z, @+$03

    jr nz, jr_020_6ff0

    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38

jr_020_6fd8:
    rra
    rst $38
    rrca
    rst $38

jr_020_6fdc:
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38

jr_020_6fe2:
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

jr_020_6ff0:
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
    ld bc, $01ff
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
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
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
    nop
    rst $38
    inc d
    rst $38
    add b
    rst $38
    ld bc, $98ff
    rst $38
    adc d
    rst $38
    sbc a
    rst $38
    rst $38
    ldh [rIE], a
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
    add e
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    add c
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $ec
    ld [bc], a
    db $fc
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp+$04
    pop af
    inc b
    di
    inc b
    di
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
    di
    inc b
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$0877], sp
    rst $30
    ld [$08f7], sp
    ld [hl], a
    ld [$08e7], sp
    rst $10
    ld [$c0c0], sp
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    ld hl, sp-$04
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
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    ld a, h
    ld a, e
    ld a, h
    ld a, e
    ld a, h
    ld a, e
    ld a, h
    ld a, e
    inc a
    dec sp
    inc a
    dec sp
    inc a
    dec sp
    inc a
    dec sp
    inc a
    dec sp
    inc a
    dec sp
    inc a
    dec sp
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc e
    dec de
    inc c
    dec bc
    inc c
    dec bc
    inc c
    dec bc
    inc c
    dec bc
    ei
    rlca
    di
    rrca
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
    ld bc, $01ff
    rst $38
    ld bc, $29ff
    rst $38
    ld d, c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    add c
    rst $38
    ld e, a
    rst $38
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    ld a, b
    rlca
    ld a, b
    rlca
    ld hl, sp+$07
    ld a, h
    inc bc
    ld a, h
    inc bc
    inc a
    inc bc
    db $fc
    inc bc
    ld a, h
    inc bc
    cp h
    add e
    inc a
    inc bc
    cp h
    add e
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    xor h
    add e
    ld a, h
    inc bc
    nop
    inc bc
    inc c
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    ld a, h
    inc bc
    ld a, h
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
    add sp, $07
    add sp, $07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    cp b
    rlca
    ld hl, sp+$05
    ret nz

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
    ccf
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
    cp $80
    ld a, [$f280]
    add b
    ld a, [c]
    add b
    jp nc, $9280

    add b
    sub d
    add b
    ldh [$9e], a
    ldh [$9e], a
    ldh [$9e], a
    ldh [$9a], a
    ldh [$9a], a
    ldh [$9a], a
    ldh [$9d], a
    ld h, b
    sbc l
    ldh [$9d], a
    ldh [$9d], a
    db $e4
    sbc a
    db $f4
    adc a
    db $f4
    rst $08
    db $f4
    rst $18
    or $df
    or $df
    ld sp, hl
    nop
    ld hl, sp-$80
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$80
    ld sp, hl
    ld bc, $00f8
    ld hl, sp+$40
    db $fc
    inc b
    db $fc
    inc b
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    ld b, $f8
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
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
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $08
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $03fc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    ld bc, $03fc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    inc bc
    sbc h
    nop
    call nz, $c400
    nop
    db $e4
    db $10
    ld d, h
    db $10
    ld d, h
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    ld bc, $0106
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $01
    ld b, $00
    rlca
    ld bc, $0006
    rlca
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
    rlca
    rlca
    rst $38
    nop
    rst $38
    ld de, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    sub b
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    cp $00
    rst $38
    nop
    cp $00
    xor a
    nop
    xor a
    nop
    and a
    nop
    sub a
    nop
    sub a
    nop
    sub a
    nop
    ld d, a
    nop
    ld e, a
    nop
    add c
    ld a, a
    and b
    ld a, a
    inc b
    ld a, a
    nop
    ld a, a
    nop
    ccf
    add c
    ccf
    jp $433f


    dec a
    inc a
    nop
    ld a, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    rra
    nop
    ld e, a
    nop
    rrca
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    rst $08
    nop
    rst $08
    nop
    add a
    ld bc, $0187
    add a
    nop
    rst $00
    inc bc
    add h
    nop
    db $f4
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld b, c
    nop
    ld b, c
    nop
    pop bc
    add b
    push bc
    add b
    ld b, l
    nop
    ld b, c
    nop
    db $db
    inc h
    ld e, a
    and b
    dec de
    db $e4
    dec de
    db $e4
    dec de
    db $e4
    rra
    ldh [rNR13], a
    db $e4
    inc de
    db $ec
    rra
    ldh [rNR34], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0b]
    ldh a, [$09]
    ldh a, [$09]
    ldh a, [$0b]
    ldh a, [$0d]
    ldh a, [$2d]
    ret nc

    adc l
    ld [hl], b
    db $f4
    ld [$09f5], sp
    push af
    add hl, bc
    db $f4
    ld [$08f4], sp
    db $76
    ld [$0874], sp
    db $f4
    ld [$0af2], sp
    ld a, [c]
    ld a, [bc]
    ld [hl], d
    ld a, [bc]
    ld [hl], d
    ld a, [bc]
    ld a, [hl-]
    ld b, $3a
    ld b, $08
    inc b
    jr jr_020_7390

    ld [$0804], sp
    inc b

jr_020_7390:
    add b
    db $e3
    add b
    add a
    nop
    inc b
    add c
    ei
    pop hl
    rst $38
    jp $c3ff


    db $e3
    ret nz

    ldh [$80], a
    adc a
    nop
    ld h, d
    ld [$619f], sp
    rst $28
    add sp, -$04
    dec a
    rst $38
    adc a
    rst $38
    rrca
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
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub d
    dec b
    ld d, e
    nop
    ld c, e
    inc b
    ld c, a
    nop
    daa
    nop
    and a
    nop
    sub e
    nop
    sub e
    nop
    rst $08
    nop
    ret


    nop
    jp hl


    nop
    push hl
    nop
    push hl
    nop
    ld a, [c]
    nop
    ld a, [c]
    nop
    or $00
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld hl, sp+$00

jr_020_7402:
    db $fc
    db $10
    db $fd
    nop
    ld a, h
    nop
    ld a, [hl]
    ld [$003e], sp
    ld a, $08
    rra
    inc b
    rra
    inc b
    rra
    inc b
    adc a
    inc b
    adc a
    ld b, $8b
    ld [bc], a
    adc e
    ld [bc], a
    add a
    nop
    ld b, a
    nop
    ld b, a
    nop
    ld b, a
    inc b
    ld b, e
    nop
    ld [hl+], a
    ld bc, $0022
    ld hl, $2100
    nop
    ld hl, $1000
    nop
    stop
    stop
    stop
    add hl, bc
    nop
    add hl, de
    nop
    add hl, bc
    nop
    ld [$7700], sp
    adc b
    ld a, e
    add h
    ld a, e
    adc h
    ld a, e
    add h
    ld l, e
    sub h
    ld a, c
    add [hl]
    cp c
    ld b, [hl]
    add hl, sp
    ld b, [hl]
    ld b, [hl]
    nop
    ld b, [hl]
    nop
    ld b, l
    nop
    ld b, e
    nop
    inc hl
    nop
    ld hl, $2000
    nop
    jr nz, jr_020_7460

jr_020_7460:
    rst $18
    jr nz, jr_020_7402

    jr nz, jr_020_74d4

    db $10
    xor a
    db $10
    xor a
    db $10
    adc a
    db $10
    rlca
    db $10
    ld b, a
    ld d, b
    ld b, a
    ld c, b
    ld b, a
    ld c, b
    add a
    adc b
    rlca
    ld [$4847], sp
    inc bc
    ld [$0403], sp
    ld bc, HeaderLogo
    dec b
    nop
    inc b
    ld bc, $0005
    inc b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    rst $20
    rst $38
    ld h, a
    ld a, a
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld h, a
    ld a, a
    ld h, a
    ld a, a
    ld h, a
    ld a, a
    ld h, a
    ld a, a
    rst $20
    rst $38
    rst $20
    rst $38
    ld h, a
    ld a, a
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld h, a
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
    inc sp
    rst $38
    inc sp
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38

jr_020_74d4:
    inc bc
    rst $38
    inc bc
    rst $38
    sub e
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    sub c
    rst $38
    rst $18
    ld l, [hl]
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    daa
    rst $28
    rrca
    rst $20
    rlca
    or $07
    rst $30
    rlca
    rst $38
    rlca
    ld a, e
    inc bc
    ld a, a
    inc bc
    ld a, $03
    ccf
    ld bc, $023f
    rra
    nop
    sbc a
    ld bc, $00cf
    ld c, a
    nop
    ld b, a
    nop
    ld b, a
    nop
    ld h, e
    nop
    inc hl
    nop
    dec d
    nop
    ld de, $1000
    nop
    sbc b
    nop
    sbc c
    nop
    add h
    nop
    call nz, $c400
    nop
    ld [c], a
    nop
    and $00
    push hl
    nop
    di
    nop
    di
    nop
    ld d, c
    add b

jr_020_752a:
    ld [$0800], sp
    nop
    ld [$7b00], sp
    add h
    ld l, e
    sub h
    ld l, e
    sub h
    ld l, c
    sub d
    cp l
    ld b, d
    xor l
    ld d, d
    or [hl]
    ld c, c
    ld d, [hl]
    xor c
    ld e, d
    and l
    sbc e
    ld h, h
    sbc a
    ld h, h
    xor a
    ld d, b
    xor a
    ld d, b
    rst $28
    ld [de], a
    rst $30
    ld a, [bc]
    rst $10
    ld [$08f7], sp
    di
    dec c
    ei
    dec b
    ld sp, hl
    ld b, $f9
    ld b, $7c
    inc bc
    ld h, h
    sbc e
    ld a, b
    add a
    ld a, b
    add a
    ld a, $81
    ld a, $81
    or d

jr_020_7567:
    ld b, c
    cp a
    ld b, b
    cp a
    ld b, b
    cp e
    ld b, b
    cp l
    ld b, b
    rst $18
    ld h, b
    ld e, [hl]
    jr nz, @-$23

    inc h
    rst $18
    jr nz, jr_020_7567

    jr nc, jr_020_752a

    db $10
    xor a
    db $10
    ld c, a
    ld d, b
    ld c, a
    ld d, b
    jp nz, Jump_000_33c8

    jr c, jr_020_75da

    ld e, b
    and c
    xor b
    ld [bc], a
    inc b
    inc bc
    inc b
    ld bc, $f004
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    cp a
    ld a, a
    sbc a
    ccf
    rst $08

jr_020_75da:
    rra
    rst $28
    rra
    rst $20
    rrca
    di
    rlca
    ei
    rlca
    ld sp, hl
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    ld l, a
    nop
    ld a, a
    or a
    ld a, a
    rst $18
    ld a, a
    ei
    cp a
    rst $28
    ccf
    rst $28
    rra
    rst $30
    rra
    di
    rrca
    rst $38
    rla
    db $fd
    rlca
    db $fd
    inc bc
    rst $38
    inc bc
    ld a, a
    ld bc, $017f
    ccf

jr_020_760b:
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
    rst $08
    nop
    rst $00
    nop
    rst $00
    nop
    ld b, e
    nop

jr_020_761e:
    ld b, e
    nop
    adc $31
    jp nc, $d32d

    inc l
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    or $09
    or [hl]
    add hl, bc
    or [hl]
    ld c, c
    ld e, e
    inc h
    dec sp
    add h
    ld a, l
    add d
    ld a, l
    add d
    cp d
    ld b, l
    xor d
    ld b, l
    sbc d
    dec h
    call $cd22
    ld [hl+], a
    rst $00
    db $10
    jp $c110


jr_020_7647:
    db $10
    ld [c], a

jr_020_7649:
    adc c
    ld [c], a
    add hl, bc
    pop bc
    ld [$44f3], sp
    ld a, [c]
    inc b
    ldh [rDIV], a
    ldh a, [rSC]
    ldh a, [rNR43]
    ld a, b
    add d
    ld a, b
    add c
    ld a, h
    add c
    ld a, b
    add c
    cp b
    ld b, b
    cp [hl]
    ld b, b
    xor [hl]
    ld d, b
    ld c, [hl]
    jr nc, jr_020_7647

    jr nz, jr_020_7649

    jr nz, jr_020_760b

    jr nz, jr_020_761e

    db $10
    xor a
    sub b
    rrca
    db $10
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    and e
    and h
    ldh [$e4], a
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$cf]

jr_020_76c1:
    ldh a, [$e7]
    ld hl, sp-$09
    ld hl, sp-$0d
    db $fc
    ld sp, hl
    cp $fd
    cp $fc
    rst $38
    cp $ff
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    rst $38
    ld a, a
    rst $18
    ccf
    rst $18
    ccf
    rst $38
    ld e, a
    rst $38
    rra
    or $0f
    rst $30
    rrca
    ei
    rla
    db $fd
    rlca
    rst $38
    inc bc
    cp $05
    rst $38
    dec b
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    ld bc, HeaderManufacturerCode
    cp a
    nop
    rra
    nop
    rra
    nop
    rra
    ld bc, $000f
    adc a
    nop
    rla
    nop
    rla
    nop
    add e
    nop
    add e
    nop
    ld b, c
    nop
    ld d, c
    nop
    ld b, d
    nop
    jr nz, jr_020_771a

jr_020_771a:
    jr nz, jr_020_771c

jr_020_771c:
    sub b
    nop
    inc de
    nop
    or l
    ld a, [bc]
    rst $30
    ld [$0856], sp
    ld a, e
    inc b
    ld a, e
    inc b
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    ld [hl], $81
    ld a, $81
    dec c
    add b
    rlca
    ld b, b
    inc bc
    ld b, b
    dec bc
    jr z, @+$03

    jr nz, @+$03

    jr nz, jr_020_76c1

    sub b
    nop
    db $10
    add b
    db $10
    add b
    ld [$08c0], sp
    ret nz

    ld [$0440], sp
    add b
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ldh [$df], a
    ldh [$cf], a
    ldh a, [$e7]
    ld hl, sp-$09
    ld hl, sp-$0d
    db $fc
    ld sp, hl
    cp $fd
    cp $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc e
    rst $38
    db $dd
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    or a
    rst $38
    or a
    ld a, a
    ei
    ld a, a
    ei
    cp a
    db $ed
    cp a
    db $ec
    rra
    cp $5f
    rst $38
    cpl
    rst $38
    daa
    rst $38
    daa
    db $fd
    inc bc
    cp $0b
    cp $05
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    nop
    rst $38

jr_020_77a9:
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $003f
    ret nz

    ccf
    ldh [$1f], a
    and b
    rra
    add b
    rrca
    add b
    rrca
    ret nz

    rrca
    ldh a, [rTAC]
    ret z

    inc c
    ldh [$03], a
    ldh [$03], a
    ld [hl], b
    add c
    ld [hl], b
    add c
    db $10
    add b
    cp b
    ld b, b
    cp b
    ld b, b
    ret c

    jr nz, jr_020_77a9

    jr nz, @-$14

    ld [de], a
    ld l, h
    db $10
    ld h, [hl]
    db $10
    db $76
    ld [$0875], sp
    ld a, c
    inc b
    ei
    inc b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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
    cp $00
    cp $00
    rst $38
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
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$8f], a
    ldh a, [$cf]
    ldh a, [$c7]
    ld hl, sp-$1d
    db $fc
    di
    db $fc
    pop af
    cp $f8
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    cp $ec
    rst $38
    ld [$6bff], a
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    cp e
    rst $38
    sbc $ff
    sbc $ff
    rst $28
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    di
    ld a, a
    ld sp, hl
    cp a
    ld sp, hl
    cp a
    db $fc
    rst $18
    rst $18
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    rla
    rst $28
    scf
    rst $08
    ld a, e
    add a
    dec a
    adc a
    db $fd
    rrca
    rst $38
    add hl, bc
    ld a, a
    dec c
    rst $38
    nop
    ccf
    nop
    ld e, a
    ret nz

    ccf
    add b
    cpl
    ld b, b
    ccf
    ld b, b
    rra
    jr nz, jr_020_7888

    jr nz, jr_020_7888

    db $10
    inc bc
    db $10

jr_020_7888:
    dec b
    inc c
    inc bc
    ld [$0402], sp
    add d
    inc b
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$8f], a
    ldh a, [$cf]
    ldh a, [$c7]
    ld hl, sp-$1d
    db $fc
    di
    db $fc
    pop af
    cp $f8
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38

Call_020_78f8:
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    ld [hl], c
    rst $38
    ld d, c
    rst $38
    dec a
    rst $38
    cp l
    rst $38
    adc l
    rst $38
    sbc $ff
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $18
    sbc a
    cp a
    sbc a
    rst $18
    rst $08
    sbc $cf
    ld c, [hl]
    ld b, a
    ld c, a
    ld b, a
    rrca
    dec bc
    rlca
    inc bc
    rlca
    dec b
    ld b, $05
    dec b
    inc b
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
    ldh [rP1], a
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
    cp $c7
    ld hl, sp-$39
    ld hl, sp-$1d
    db $fc
    pop hl
    cp $f1
    cp $f8
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld [$88fe], sp
    rst $38
    jr nz, @+$01

    and [hl]
    rst $38
    ld [hl], l
    rst $38
    jr nz, @+$01

    ld h, c
    rst $38
    ld h, h
    rst $38
    ld [hl], c
    rst $38
    jr c, @+$01

    jr @+$01

    sbc h
    rst $38
    sbc h
    rst $38
    adc $ff
    adc $ff
    push hl
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
    db $fc
    nop
    db $fc
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$8f], a
    ldh a, [$c7]
    ld hl, sp-$39
    ld hl, sp-$1d
    db $fc
    pop af
    cp $00
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
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    cp $00
    cp $00
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$8f], a
    ldh a, [rP1]
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
    ld bc, $0000
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
    ld c, $0f
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_020_7a4c

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_020_7a5c

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_020_7a6c

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_020_7a7c

    ld [hl-], a

jr_020_7a4c:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $00
    scf
    jr c, jr_020_7a8d

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_020_7a5c:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_020_7a6c:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]

jr_020_7a7c:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_020_7a8d:
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, l
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
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    adc c
    adc c
    adc c
    adc c
    adc c
    adc c
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
    sub [hl]
    sub [hl]
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
    adc c
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
    add $46
    rst $00
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

    nop
    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld b, [hl]
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$4646], a
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    db $eb
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    nop
    nop
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld b, [hl]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
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
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
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
    ld [bc], a
    inc b
    inc b
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
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
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
    ld bc, $0000
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
    ld bc, $0000
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
    ld bc, $0000
    nop
    ld bc, $0001
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
    rlca
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    rlca
    rlca
    rlca
    rlca
    dec b
    dec b
    inc bc
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
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
    nop
    nop
    nop
    nop

jr_020_7c9f:
    nop
    nop
    nop
    nop
    nop
    nop

jr_020_7ca5:
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
    ld bc, $033f
    ld a, a
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    and h
    ld e, e
    ldh [$1f], a
    jr nz, jr_020_7ca5

    ld b, c
    cp [hl]
    inc bc
    db $fc
    rlca
    ld hl, sp+$04
    ei
    inc b
    di
    inc c
    db $e3
    add hl, sp
    add $23
    sbc h
    pop bc
    inc a
    add $39
    adc h
    ld [hl], e
    inc e
    db $e3
    jr nc, @-$2f

    ld d, c
    adc [hl]
    and d
    dec e
    ld h, d
    dec e
    add h
    ld a, e
    adc c
    db $76
    dec d
    ld [$ce31], a
    ld l, d
    sub h
    ld b, h
    cp c
    sub [hl]
    ld l, c
    xor h
    ld d, e
    nop
    rst $30
    ld [$a0e7], sp
    ld c, a
    ret nz

    rra
    jr nz, jr_020_7c9f

    ret nz

    ccf
    nop
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    dec b
    ei
    ccf
    ldh [$3d], a
    ldh [$3e], a
    ldh [$3f], a
    ldh [$3e], a
    ldh [$3e], a
    ldh [$3e], a
    ldh [$3f], a
    ldh [$3f], a
    ldh [$3e], a

Call_020_7d23:
    ldh [rNR33], a
    ld [hl], b
    inc e
    ld [hl], b
    inc e
    ld [hl], b
    inc e
    ld [hl], b
    ld e, $70
    rra
    ld [hl], b
    rra
    ld [hl], b
    rra
    ld [hl], b
    rra
    ld [hl], b
    rra
    ld [hl], b
    rrca
    jr c, @+$11

    jr c, @+$11

    jr c, jr_020_7d4e

    jr c, jr_020_7d50

    jr c, jr_020_7d52

    jr c, jr_020_7d54

    jr c, jr_020_7d56

    jr c, jr_020_7d58

    jr c, jr_020_7d5a

    jr c, jr_020_7d54

    inc a

jr_020_7d4e:
    rlca
    inc e

jr_020_7d50:
    rlca
    inc e

jr_020_7d52:
    rlca
    inc e

jr_020_7d54:
    rlca
    inc e

jr_020_7d56:
    rlca
    inc e

jr_020_7d58:
    rlca
    inc e

jr_020_7d5a:
    rlca
    inc e
    rlca
    inc e
    inc bc
    ld c, $03
    ld c, $03
    ld c, $03
    ld c, $03
    ld c, $03
    ld c, $03
    ld c, $03
    ld c, $03
    rrca
    inc bc
    rrca
    ld bc, $010f
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    rlca
    ld bc, $0007
    rlca
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
    ld bc, $0700
    nop
    rrca
    inc bc

jr_020_7d97:
    rra
    rlca
    ccf
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld [hl], b
    rrca
    ret nz

jr_020_7da3:
    ccf
    sub b
    ld l, a
    ld b, c
    cp [hl]
    inc bc
    db $fc
    ld b, $f9
    adc h
    ld [hl], e
    jr jr_020_7d97

    add hl, sp
    add $73
    adc h
    add $39
    call nz, $983b
    ld h, a
    add hl, de
    and $30
    rst $08
    ld h, b
    sbc a
    call nz, $843b
    ld a, e
    ld [$11f7], sp
    xor $2a
    push de
    ld b, [hl]
    cp c
    call nz, $883b
    ld [hl], a
    ld e, b
    and a
    jr nz, jr_020_7da3

    and b
    ld e, a
    ld h, b
    sbc a
    add b
    ccf
    nop
    ld a, a
    add c
    ld a, [hl]
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    ld [$02ff], sp
    rst $38
    ld a, [de]
    rst $28
    ld de, $2dee
    ret nc

    ld l, a
    sub b
    dec l
    ret nc

    adc e
    ldh a, [rIF]
    ldh a, [rOBP1]
    ldh a, [rNR11]
    ldh [rNR22], a
    ldh [$37], a
    ret nz

    ld h, b
    rra
    or b
    rrca
    sbc b
    rlca
    xor h
    inc bc
    ld a, [hl-]
    ld bc, $0078
    sub b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_020_7e1f:
    ret nz

    nop
    ld [c], a
    nop
    rst $38
    nop
    cp a
    nop
    sbc a
    nop
    rst $28
    jr nz, jr_020_7e1f

    nop
    rst $38
    adc d
    rst $38
    nop
    rst $28
    ld [$a0cf], sp
    xor $80
    xor $48
    xor $00
    and b
    daa
    daa
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $1100
    nop
    ld de, $9110
    nop
    rst $18
    ld [bc], a
    rst $28
    inc bc
    rst $28
    ld bc, $19eb
    ld sp, hl
    or c
    cp c
    ldh [rIE], a
    ldh [$ef], a
    pop hl
    di
    ld [hl], a
    rst $30
    inc l
    rst $38
    nop
    cp a
    cp $00
    rst $00
    nop
    ldh a, [rP1]
    rst $38
    nop
    cp a
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    db $fc
    nop
    ldh a, [rP1]
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
    ld bc, $0300
    ld bc, $0307

jr_020_7e89:
    rra
    rlca
    ccf
    rrca

jr_020_7e8d:
    ld a, a
    rra
    rst $38
    jr nc, jr_020_7ea1

    ld l, b
    rla
    pop bc
    ld a, $81
    ld a, [hl]
    ld b, d
    cp l
    ld b, h
    cp e
    adc b
    ld [hl], a
    ld de, $22ee

jr_020_7ea1:
    db $dd
    ld h, h
    sbc e
    add b
    ld a, a
    sbc b
    ld h, a
    jr nz, jr_020_7e89

    ld b, b
    cp a
    ld b, b
    cp a
    adc c
    db $76
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc b
    ei
    ld c, b
    or a
    adc b
    ld [hl], a
    ld b, b
    cp a
    jr nc, jr_020_7e8d

    ld h, b
    sbc a
    ld b, c
    cp a
    ret nz

    ccf
    add b
    ld a, a
    ld [bc], a
    db $fd
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    cp $11
    xor $07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$27
    ld hl, sp+$2b
    ldh a, [$57]
    ldh [$7f], a
    add b
    rla
    add b
    ld c, $81
    rrca
    add b
    ccf
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
    ld [hl], a
    ld [$18e7], sp
    rst $38
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    cp $00
    ld a, [hl]
    nop
    ccf
    db $10
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0190
    sub c
    nop
    pop de
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $03ff
    rst $38
    dec b
    rst $28
    ld [bc], a
    ccf
    ld bc, $000f
    dec de
    nop
    ld a, a
    ld b, b
    rst $38
    nop
    adc a
    ld b, $87
    dec d
    sbc a
    cpl
    xor a
    rrca
    rst $38
    cpl
    cp a
    ccf
    cp a
    adc [hl]
    rst $38
    sub b
    rst $38
    ld a, $ff
    ccf
    rst $38
    cp [hl]
    rst $38
    adc [hl]
    rst $38
    add $ff
    db $fc
    rst $38
    ld h, b
    rst $38
    rst $38
    ld bc, $07fe
    ld hl, sp+$1e
    ldh [$f8], a
    nop
    ldh [rP1], a
    add b
    nop
    nop
    nop

jr_020_7f6f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0307
    rrca
    rlca
    rra
    rrca
    ld a, a
    db $10
    rrca
    jr nz, jr_020_7fa3

    ret nz

    ccf
    add b

jr_020_7f87:
    ld a, a
    nop
    rst $38

jr_020_7f8a:
    ld [$10f7], sp
    rst $28
    jr nz, jr_020_7f6f

    ld h, b
    sbc a
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
    ld c, b
    or a
    db $10

jr_020_7fa3:
    rst $28
    add b
    ld a, a
    jr nz, jr_020_7f87

jr_020_7fa8:
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $07fe
    db $fc

jr_020_7fb6:
    inc bc
    db $fc
    inc hl
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$9f], a
    ldh [$35], a
    ret nz

    ld [hl], a
    add b
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
    db $fd
    ld [bc], a
    cp $00
    cp $00
    db $ec
    db $10
    call z, Call_000_2c30
    ret nc

    add sp, $10
    jp hl


    db $10
    pop bc
    jr nc, jr_020_7fb6

    jr nz, jr_020_7fa8

    jr nz, jr_020_7f8a

    ld b, b
    rst $20
    nop
    rst $00
    nop
    rlc b
    rst $10
    nop
    sbc [hl]
    nop
    push af
    nop
    push af
    nop
    ld [$d300], a
    nop
    adc a
    nop
    ccf
    nop
