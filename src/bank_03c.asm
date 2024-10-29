SECTION "ROM Bank $03c", ROMX[$4000], BANK[$3c]

    ld b, b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$81]
    ld a, [hl]
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    ld [hl], b
    rrca
    db $fc
    jr nz, @+$01

    adc d
    rst $38
    ld b, e
    cp $05
    cp $91
    cp $03
    db $fc
    ld b, a
    cp b
    dec a
    add b
    cp a
    nop
    adc a
    nop
    ld e, a
    nop
    ld d, d
    nop
    ld [hl], l
    nop
    db $d3
    nop
    push de
    nop
    ld a, d
    nop
    ld l, d
    nop
    ld d, l
    nop
    jp nc, Jump_03c_4f00

    nop
    ld c, a
    nop
    ccf
    nop
    ld e, c
    add b
    add c
    ld a, b
    or b
    rrca
    rlca
    nop
    nop
    nop
    ld d, [hl]
    nop
    sub d
    nop
    xor d
    nop
    and h
    nop
    ld c, d
    nop
    sub h
    nop
    ld d, d
    nop
    sub d
    nop
    and l
    nop
    sub h
    nop
    ld c, c
    nop
    and l
    nop
    or h
    nop
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    sbc $00
    cp [hl]
    nop
    cp a
    nop
    add b
    nop
    add b
    nop
    add hl, bc
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    rst $08
    nop
    call z, $df00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    pop hl
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
    ret nz

    rst $38
    call nz, $e4ff
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ccf
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
    rra
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    call c, $f8ff
    rst $18
    xor b
    rst $18
    jp hl


    sbc [hl]
    ldh a, [$9f]
    push af
    ld a, [$7ff0]
    ld [hl], c
    cp $f9
    cp $f8
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    add e
    ld a, a
    cp h
    ld b, e
    rra
    ldh [$78], a
    add a
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
    rrca
    ldh a, [$f0]
    rrca
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    push af
    nop
    ld d, e
    nop
    sub c
    nop
    ld h, l
    nop
    ld a, [hl-]
    nop
    cp a
    nop
    ld d, e
    nop
    ld c, e
    nop
    jp nc, $ca00

    nop
    jp nc, $6900

    nop
    jp nc, $6900

    nop
    ld d, d
    nop
    sub h
    nop
    ld h, h
    add b
    ld bc, $f0f8
    rrca
    ld e, [hl]
    ld bc, $00ab
    ld h, l
    nop
    and l
    nop
    db $f4
    nop
    ld a, [$f900]
    nop
    ld a, d
    nop
    add hl, sp
    nop
    xor d
    nop
    daa
    nop
    daa
    nop
    xor c
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ldh [rP1], a
    nop
    nop
    inc b
    nop
    call nz, $6c00
    nop
    ld l, l
    nop
    call $ff00
    nop
    adc a
    nop
    adc a
    nop
    rst $18
    nop
    nop
    nop
    ld b, b
    nop
    ldh a, [rP1]
    jr c, jr_03c_4185

jr_03c_4185:
    ld a, b
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
    nop
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    nop
    rst $38
    ld a, $07
    nop
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
    db $fc
    rst $38
    rst $38
    rst $38

Call_03c_41c4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    add c
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
    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    and b
    ld a, a
    and c
    ld a, a
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38

jr_03c_41f0:
    ld h, b
    sbc a
    sbc a
    ld h, b
    jp $fe3c


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
    ld a, a
    add b
    ld [bc], a
    db $fd
    db $fc
    inc bc
    cp $01
    cp $01

jr_03c_420e:
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a

jr_03c_4214:
    ld a, l
    ld [bc], a
    ld a, l
    ld [bc], a
    dec a
    ld [bc], a
    ld e, e
    inc b
    db $eb
    inc b
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$0877], sp
    daa
    ld [$0897], sp
    scf
    ld [$108f], sp
    xor a
    db $10
    xor a
    db $10
    cpl
    db $10
    rst $28
    db $10
    rrca
    ldh a, [$d0]
    cpl
    rst $18
    jr nz, jr_03c_4214

    jr nz, jr_03c_420e

    jr nz, jr_03c_41f0

    ld b, b
    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    nop
    inc c
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
    sbc [hl]
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    rra
    nop
    rra
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $08
    nop
    ei
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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    inc [hl]
    rst $38
    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld a, a
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld [bc], a
    rst $38

jr_03c_42b2:
    ld a, [$feff]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
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

jr_03c_42ce:
    rst $38
    rst $38

jr_03c_42d0:
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
    ei
    rst $38
    ld a, [$f0ff]
    rst $38
    ldh a, [rIE]
    add b
    ld a, a
    add sp, $17
    rlca
    ld hl, sp-$40
    ccf
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_03c_42ce

    jr nz, jr_03c_42d0

    jr nz, jr_03c_42b2

    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
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
    ccf
    ret nz

    pop bc
    ld a, $fe
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
    rrca
    ldh a, [$f0]
    rrca
    rst $38
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
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
    rst $38
    nop
    rst $38
    ld [$01ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    ld [hl], b
    rst $38
    ldh a, [rIE]
    push af
    rst $38
    pop af
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $ff
    rst $38
    ld a, a
    ldh [$7f], a
    ldh [$3f], a
    rst $18
    ccf
    rst $28
    ccf
    rst $38
    ccf
    ei
    rra
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    inc bc
    ld c, a
    nop
    rrca
    nop
    nop
    nop
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
    rst $30
    rst $38
    db $fc
    rst $38
    rst $30
    rst $38
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
    ldh a, [rIF]
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
    rrca
    ldh a, [$f0]
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
    nop
    rst $38
    rla
    rst $38
    jr nc, @+$01

    ld l, b
    rst $38
    ld hl, sp-$01
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $08
    ld bc, $01ff
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld bc, $03ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp b
    rst $38
    ld c, $ff
    sbc $ff
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp hl


    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $30
    rst $38
    rst $38
    cp $ff
    cp a
    rst $38
    rrca
    rst $38
    nop
    rra
    nop
    rrca
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    or $f9
    or $f9
    or $f9
    rla
    ld hl, sp-$1c
    ei
    dec l
    ld a, [c]
    dec c
    ld a, [c]
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$0b]
    ldh a, [$09]
    ldh a, [$08]
    pop af
    ld c, d
    or c
    ld a, [bc]
    pop af
    ld a, [bc]
    pop af
    adc h
    ld [hl], e
    ret nz

    ccf
    ldh [$1f], a
    add sp, $17
    xor e
    ld d, h
    ret


    ld [hl], $e7
    db $10
    rst $20
    db $10
    rst $20
    db $10
    db $e3
    db $10
    jp hl


    db $10
    and $10
    rst $20
    db $10
    ld b, $f0
    push hl
    db $10
    pop hl
    db $10
    pop hl
    db $10
    pop hl
    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    pop hl
    db $10
    pop hl
    db $10
    rst $28
    db $10
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    call z, $ed33
    ld [de], a
    db $eb
    inc d
    rst $28
    db $10
    rst $28
    db $10

Call_03c_44dc:
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    cpl
    ret nc

    rst $28
    db $10
    db $ed
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    ld e, $ff
    rst $38
    rst $38
    nop
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    and c
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    inc hl
    rst $38
    db $e3
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    jp $c0ff


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
    cp $00
    cp $00
    cp $00
    cp $01
    db $fc
    ld [bc], a
    ld bc, $0102
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    ld [$1804], sp
    inc b
    jr c, @+$06

    add hl, hl
    ld e, $15
    ld c, $09
    ld d, $03
    jr @+$05

    jr @+$05

    jr @+$05

    jr nc, @+$05

    jr nc, @+$05

    jr nc, jr_03c_455a

    jr nz, jr_03c_455c

    ld h, b

jr_03c_455a:
    inc bc
    ld h, b

jr_03c_455c:
    inc bc
    ldh [$03], a
    pop hl
    ld a, a
    ld e, $cf
    nop
    call c, $8400
    nop
    adc b
    nop
    adc b
    nop
    add hl, de
    nop
    ld sp, hl
    nop
    db $fc
    dec bc
    and $19

jr_03c_4574:
    xor $11
    ld sp, hl
    ld d, $d1
    ld a, $c9
    ld [hl], $dc
    inc hl
    db $fc
    inc hl
    adc d
    ld h, l
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    inc a
    jp $c13e


    ld a, [hl]
    add c
    ld a, b
    add a
    ld a, h
    add e
    db $fd
    ld [bc], a
    ldh a, [rIF]
    rst $38
    nop
    rst $28
    nop
    ld a, h

jr_03c_4599:
    add e
    ld b, $ff
    rlca
    rst $38
    and $1f

jr_03c_45a0:
    db $fd
    inc bc

jr_03c_45a2:
    db $f4
    dec bc
    db $fc
    inc bc
    ld hl, sp+$07
    ret z

    rlca
    ld hl, sp+$07
    ld [hl], d
    dec c
    ld a, [c]
    dec c
    ld [hl], h
    dec bc
    rst $20
    jr jr_03c_45a2

    db $10
    ld l, a
    db $10
    adc e
    jr nc, jr_03c_4599

    ld hl, $27d8
    sbc [hl]
    ld h, c
    cp l
    ld b, e
    or b
    ld c, a
    ld [bc], a
    rst $38
    ld a, a
    add b
    ld l, a
    add b
    ld a, a
    add b
    rlca
    ld hl, sp+$00
    rst $38

jr_03c_45d0:
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, a
    jr nc, jr_03c_4574

    inc c
    db $ed
    ld [bc], a
    db $dd
    jr nz, jr_03c_45d0

    db $10
    ld sp, hl
    nop
    pop af
    nop
    di
    nop
    di
    nop
    inc bc
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    add b
    rst $38
    jp hl


    rst $38
    ld a, [$1bff]
    db $fd
    inc bc
    db $fd
    inc b
    nop
    ld [$0804], sp
    inc b
    ld [$0804], sp
    nop
    db $10
    ld [$0810], sp
    db $10
    ld [$1020], sp
    jr nz, jr_03c_4624

    jr nz, jr_03c_4626

    ld b, b
    jr nz, jr_03c_465a

    jr nz, jr_03c_465c

    jr nz, jr_03c_465e

    jr nz, jr_03c_45a0

    ld b, b
    add d
    ld b, c
    add d
    ld b, c

jr_03c_4624:
    add d
    ld b, c

jr_03c_4626:
    inc b
    add e
    dec b
    add e
    inc c
    add e
    add hl, bc
    add [hl]
    add hl, bc
    add [hl]
    rrca
    inc b
    rra
    inc b
    ld [bc], a
    dec e
    inc de
    inc c
    dec de
    inc b
    dec sp
    inc b
    ld a, l
    ld [bc], a
    ld a, [hl]
    ld bc, $01fe
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [$1f]
    add sp, $11

jr_03c_465a:
    ld hl, sp+$01

jr_03c_465c:
    xor $71

jr_03c_465e:
    db $db
    db $f4
    ld [$11f6], sp
    xor $31
    adc $03
    db $fc
    inc bc
    db $fc
    add e
    db $fc
    ld b, $f9
    ld c, $f1
    sbc [hl]
    ld a, c
    adc h
    ld a, e
    call z, Call_03c_5c33
    and e
    or c
    ld b, [hl]
    ld [c], a
    dec b
    jp hl


    inc b
    ld sp, hl
    inc b
    db $76
    adc b
    scf
    ret z

    ld b, a
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp-$69
    ld hl, sp-$2a
    cp c
    add l
    ei
    dec c
    di
    dec c
    di
    rlca
    ei
    ld [bc], a
    rst $38
    ld b, e
    rst $38
    db $f4
    rst $38
    rst $30
    ld hl, sp-$1c

jr_03c_469f:
    ld hl, sp+$70
    rst $38
    inc c
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld c, [hl]
    cp a
    ld e, [hl]
    cp a
    ld a, $ff

jr_03c_46ae:
    ld c, $ff
    rra
    rst $38
    ld a, a
    cp $7d
    cp $f7
    db $fc
    ld [$7cf4], a
    ldh [$7c], a
    ldh [$7e], a
    ldh [$27], a
    ldh a, [$0b]
    ldh a, [$1f]
    ldh [$fd], a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld hl, sp+$07
    jr nc, jr_03c_469f

    inc c

jr_03c_46d1:
    di
    dec e
    db $e3
    db $10
    rst $28
    db $10
    rst $28
    push af
    ld c, $f3
    inc c
    rst $00
    jr c, jr_03c_46ae

    jr nc, @-$1f

jr_03c_46e1:
    jr nz, jr_03c_46e1

    ld bc, $01fe
    db $fc
    inc bc
    ld hl, sp+$07
    pop af
    ld c, $f1
    ld c, $e2
    dec e
    rst $38
    db $fc
    rst $38
    cp $ff
    db $f4
    ld a, a
    rst $38
    ld a, a
    ldh [$7f], a
    ld hl, sp-$01
    ret nz

    rst $38
    ldh a, [rP1]
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ld b, b
    ccf
    ld h, b
    ccf
    ld a, b
    ccf
    ld a, h
    ccf
    cp $7f
    ldh a, [$7f]
    ret nz

    ld a, a
    nop
    rst $38
    nop
    db $fd
    nop
    ld hl, sp+$00
    sbc b
    nop
    rlca
    inc c
    ld a, a
    inc de
    rst $28
    inc a
    jp $c5fa


    db $fc
    ld b, e
    db $fc
    inc bc
    ld sp, hl
    rlca
    rst $38
    rlca
    xor [hl]
    ld e, a
    ld c, h
    cp a
    db $e4
    rra
    ld [c], a
    rra
    ld h, d
    rra
    ld [hl], h
    rrca
    ldh a, [rIF]
    jr nc, jr_03c_46d1

    jr nc, @-$2f

    inc b
    ei
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $28
    inc bc
    db $fc
    db $10
    rst $38
    ld bc, $02ff
    db $fd
    ld h, b
    sbc a
    db $ed
    inc de
    adc $31
    sub $21
    add $21
    ld [hl+], a
    ld b, c
    and e
    ld b, b
    adc a
    ld [hl], b
    ld sp, $31c0
    ret nz

    ld [hl], c
    add b
    ld [hl], c
    add b
    ld h, e
    sub b
    xor $11
    call z, $8833
    ld [hl], a
    inc bc
    rst $38
    dec de
    rst $38
    inc a
    rst $38
    cp h
    ld a, a
    ld e, h
    ccf
    ld c, $3d
    jp $cb3c


    inc a
    dec l
    cp $be
    ld a, a
    adc [hl]
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    cp $3d
    cp $be
    ld a, h
    call nz, $f838
    inc b
    ld [hl], b
    adc h
    ld [$1afc], sp
    db $fc
    ld d, [hl]
    ld hl, sp+$2f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$6f], a
    sub b
    rst $28
    db $10
    rst $38

jr_03c_47b3:
    nop
    ret z

    scf
    ret nz

    ccf
    ld b, b
    ccf
    nop
    ccf
    nop
    rra
    db $10
    rrca
    jr jr_03c_47c9

    db $dd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a

jr_03c_47c9:
    add b
    cp $01
    cp $01
    inc a
    add e
    cp b
    rst $00
    cp b
    rst $00
    ld [hl], d
    adc l
    ldh [$1f], a
    db $e4
    dec de
    ret z

    scf
    add b
    ld a, a
    sbc b
    ld h, a
    db $10
    rst $28
    jr nc, jr_03c_47b3

    ld b, b
    cp a
    ld b, c
    cp a
    pop bc
    ccf
    add d
    ld a, a
    add e
    ld a, h
    ld bc, $fffc
    add e
    rst $38
    dec c
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
    add hl, sp
    rst $38
    ld de, $00ff
    rst $38
    ld [hl], d
    rst $38
    ld [hl], e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$8cff], sp
    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    rra
    nop
    pop hl
    nop
    ret nz

    nop
    ret nz

    add b
    ldh [$c0], a
    pop hl
    call nz, $c0c0
    ret nz

    add b
    pop bc
    ld b, b
    add b
    add b
    nop
    nop
    scf
    nop
    ld b, a
    nop
    ld b, a
    nop
    ld b, e
    ld bc, $0140
    ret nz

    ld bc, $01c0
    ret nz

    ld [bc], a
    pop af
    reti


    daa
    dec b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, d
    rst $38
    ld [hl], d
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    adc $ff
    inc c
    rst $38
    sub b
    rst $38
    ld d, b
    rst $38
    jr @+$01

    jr c, @+$01

    jr c, @+$01

    inc e
    rst $38
    adc h
    ld a, a
    add b
    ld a, a
    adc b
    ld a, a
    add h
    ld a, a
    inc c
    rst $38
    inc d
    rst $38
    jr @+$01

    ld a, b
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    ld h, e
    rst $38
    rra
    rst $38
    add hl, de
    rst $38
    jp hl


    dec e
    di
    inc c
    sbc c
    ld b, $5c
    and e
    cp [hl]
    pop bc
    sbc [hl]
    ld hl, $106f
    ld b, a
    ld [$0740], sp
    ld [bc], a
    ld bc, $0102
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
    cp a
    ld b, b
    add a
    ld a, b
    jp Jump_000_023c


    db $fd
    rlca
    ld hl, sp+$0d
    ld a, [c]
    ld a, [bc]
    push af
    ld a, [de]
    push hl
    inc [hl]
    sra b
    rst $10
    ld l, c
    sub [hl]
    ret


    ld [hl], $c1
    ld a, $83
    ld a, h
    add e
    ld a, h
    inc bc
    db $fc
    rlca
    db $fc
    inc c
    rst $38
    ld [$8eff], sp
    ld a, a
    inc c
    rst $38
    ccf
    cp $3f
    cp $3f
    cp $0f
    cp $06
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    di
    rst $38
    ld [hl], c
    rst $38
    ld a, b
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    jr c, @+$01

    inc c
    rst $38
    jr z, @+$01

    nop
    rst $38
    rlca
    rst $38
    ret z

    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    sbc $ff
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
    jp nz, $8001

    ld bc, $0180
    ldh [rSB], a
    ldh [rP1], a
    ld b, b
    ld bc, $03d8
    jr nc, jr_03c_492c

    ld [hl], b
    rlca
    ldh a, [$03]
    nop

jr_03c_492c:
    rla
    nop
    ld e, $00
    inc e
    ld b, c
    inc l
    ld b, e
    ld [$1083], sp
    add a
    db $10
    rlca
    db $10
    rlca
    nop
    rrca
    nop
    ld c, e
    rst $38
    inc d
    rst $38
    db $10
    rst $38
    db $10
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

jr_03c_495b:
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    jp c, Jump_03c_79e5

jr_03c_4975:
    add a
    jr jr_03c_497f

    jr c, jr_03c_4981

    call z, $c683
    pop bc
    ld h, c

jr_03c_497f:
    ldh [$91], a

jr_03c_4981:
    ld h, b
    ld [hl], a
    adc b
    ld sp, $03ce
    db $fc
    inc bc
    db $fc
    add [hl]
    ld a, c
    adc $f1
    ld l, l
    di
    ld e, c
    rst $20
    jr c, jr_03c_495b

    ld [hl], d
    adc a
    ld h, h
    sbc a
    db $e4
    rra
    db $e4
    rra
    call nz, Call_000_003f
    rst $38
    add b
    ld a, a
    jr nc, @-$2f

    jr nc, jr_03c_4975

    ld a, b
    add a
    ld [hl], b
    adc a
    ldh [$1f], a
    ld a, b
    rlca
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
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
    add b
    ld a, a
    add c
    ld a, a
    pop bc
    ccf
    jp $e03f


    rra
    di
    inc c
    ld b, c
    cp [hl]
    add c
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    ld b, c
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
    ld [$0909], sp
    add hl, bc
    ld a, [bc]
    dec bc
    nop
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0912
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_03c_4a1f

    ld a, [de]
    dec de
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03c_4a37

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_03c_4a1f:
    add hl, bc
    ld [hl+], a
    inc hl
    inc h
    dec h
    add hl, bc
    ld h, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    daa
    jr z, jr_03c_4a5b

    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [hl+]
    dec hl

jr_03c_4a37:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc l
    dec l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, $2f
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    jr nc, jr_03c_4a5a

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld sp, $3332
    add hl, bc

jr_03c_4a5a:
    add hl, bc

jr_03c_4a5b:
    add hl, bc
    db $10
    inc [hl]
    dec [hl]
    ld [hl], $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    scf
    jr c, jr_03c_4aa1

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, [hl]
    add hl, bc
    db $10
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld d, a

jr_03c_4aa1:
    ld e, b
    ld e, c
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, d
    ld e, e
    ld e, h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, l
    ld b, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, [hl]
    ld e, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, b
    ld h, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, d
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, h
    ld h, l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld h, [hl]
    ld h, a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, b
    ld l, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, d
    add hl, bc
    ld l, $6b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    add hl, bc
    add hl, bc
    ld [hl], d
    add hl, bc
    add hl, bc
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    add hl, bc
    ld a, d
    add hl, bc
    add hl, bc
    ld h, l
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld h, l
    add hl, bc
    add b
    add hl, bc
    add hl, bc
    add c
    add hl, bc
    ld h, b
    add hl, bc
    add d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0001
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
    ld bc, $0000
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0303
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0303
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0001
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
    ld bc, $0001
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
    ld bc, $0000
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    nop
    nop
    ld b, c
    ld bc, $0101
    ld bc, $2101
    nop
    ld bc, $0000
    ld bc, $2100
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_03c_4c7c:
    ldh [rIE], a
    jr nc, @+$01

    ld c, $ff
    inc de
    db $ed
    daa
    ret c

    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $10
    rst $28
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    ld bc, $07fe
    ld hl, sp-$39
    jr c, @-$07

    ld [$00ff], sp
    rst $38
    nop
    rst $30
    ld [$01fe], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ld sp, hl
    ld b, $f3
    inc c
    ld [hl], e
    adc h
    rst $20
    jr @-$37

    jr c, @-$2f

    jr nc, jr_03c_4c7c

    ld h, b
    sbc a
    ld h, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$07
    cp $81
    rst $38
    ldh [$7f], a
    ld hl, sp+$1f
    cp $07
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38

jr_03c_4d22:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    or $01
    cp $01
    cp $03
    db $fc
    dec b
    ld a, [$f807]
    rrca
    ldh a, [$57]
    xor b
    rrca
    ldh a, [$1f]
    ldh [rNR34], a
    pop hl
    rlca
    ld hl, sp-$40
    rst $38
    jr nc, @+$01

    ld c, $ff
    dec c
    di
    ld a, a
    add b
    sbc $21

jr_03c_4d4e:
    ei
    inc b

jr_03c_4d50:
    rst $28
    db $10
    rst $30
    ld [$00ff], sp
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
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
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld sp, hl
    ld b, $f3
    inc c
    db $e3
    inc e
    rst $20
    jr jr_03c_4d4e

    jr nc, jr_03c_4d50

    jr nc, jr_03c_4d22

    ld h, b
    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld hl, sp+$07
    cp $81
    rst $38
    ldh [$7f], a
    ld hl, sp+$1f
    cp $07
    rlca
    ld hl, sp+$03
    db $fc
    daa
    ret c

    dec de
    db $e4
    dec b
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    ld c, $f1
    dec bc
    db $f4
    ld a, $c1
    rrca
    ldh a, [$1f]
    ldh [$5f], a
    and b
    cp e
    ld b, h
    rra
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld a, l
    add d
    rst $18
    jr nz, jr_03c_4e46

    add h
    rst $38
    nop
    rst $30
    ld [$817e], sp
    rst $30
    ld [$00ff], sp
    db $fd
    ld [bc], a
    rst $28
    db $10
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [$81]
    cp $70
    rst $38
    xor [hl]
    ld e, a
    cp l
    ld b, e
    rst $28
    db $10
    cp [hl]
    ld b, c
    cp $01
    ld a, h
    add e
    call c, $f923
    ld b, $f3
    inc c
    di
    inc c
    rst $20
    jr @-$37

    jr c, @-$2f

    jr nc, @-$6f

    ld [hl], b
    sbc a
    ld h, b
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
    rst $38
    nop
    ld a, e
    add h
    rst $28
    db $10
    ld a, l
    add d
    rst $28
    db $10
    rst $30
    ld [$817e], sp
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp-$3d
    inc a
    ldh [$1f], a
    ret nc

    cpl
    pop af
    ld c, $78
    add a
    rst $28
    db $10
    db $fd
    ld [bc], a
    cp $01
    rst $30
    ld [$00ff], sp

jr_03c_4e46:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03c_4e50:
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
    ld sp, hl
    ld b, $f9
    ld b, $f3
    inc c
    rst $30
    ld [$18e7], sp
    rst $08
    jr nc, jr_03c_4eba

    or b
    rrca
    ldh a, [$83]
    db $fc
    ld [hl], b
    rst $38
    ld l, h
    sbc a
    ld a, a
    add e
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03c_4e7e:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03c_4e94:
    rst $38
    nop

jr_03c_4e96:
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f3
    inc c
    di
    inc c
    rst $20
    jr jr_03c_4e94

    jr jr_03c_4e7e

    jr nc, jr_03c_4e50

    ld h, b
    sbc a
    ld h, b
    ccf
    ret nz

    ccf
    ret nz

    ld a, e
    add h

jr_03c_4eba:
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$87], a
    ld hl, sp+$70
    rst $38
    db $ec
    rra
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
    ei
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f3
    inc c
    rst $30
    ld [$18e7], sp
    rst $08
    jr nc, @-$2f

    jr nc, jr_03c_4e96

    ld h, b
    sbc a
    ld h, b
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b

Jump_03c_4f00:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$87], a
    ld hl, sp+$60
    rst $38
    db $fc
    rra
    ei
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
    sbc a
    nop
    cp [hl]
    nop
    adc e
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$87], a
    ld hl, sp+$60
    rst $38
    db $fc
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop

jr_03c_4f5c:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    nop
    db $eb
    nop
    ld [$d601], a
    ld bc, $0136
    sub h
    inc bc
    xor h
    inc bc
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rTAC], a
    ld hl, sp-$20
    rst $38
    db $fc
    rra
    ei
    rlca
    rst $38
    nop
    rst $38
    nop

jr_03c_4f82:
    rst $38
    nop

jr_03c_4f84:
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
    inc bc
    rst $38
    inc bc
    rst $38
    rlca

jr_03c_4f96:
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    inc bc
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld sp, hl
    ld b, $f9
    ld b, $f3
    inc c
    ld a, [c]
    inc c
    pop hl
    inc e
    db $e4
    jr jr_03c_4f96

    jr jr_03c_4f82

    jr nc, jr_03c_4f84

    jr nc, jr_03c_4f82

    jr nc, jr_03c_4f5c

    ld h, b
    sub a
    ld h, b
    scf
    ret nz

    daa
    ret nz

    rra
    ret nz

    ld c, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    cp a
    nop
    sbc a
    nop
    rst $38
    nop

jr_03c_4fd2:
    rst $38
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
    inc bc
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
    add hl, sp
    rst $18
    jr @+$01

    ldh a, [rIE]
    or b
    ld a, a
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rIE], a
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
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03c_500e:
    rst $38
    rst $38

jr_03c_5010:
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rlca
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

jr_03c_5024:
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld sp, hl
    ld b, $f9
    ld b, $f3
    inc c
    di
    inc c
    db $e3
    inc e
    rst $20
    jr jr_03c_5024

    jr jr_03c_500e

    jr nc, jr_03c_5010

    jr nc, jr_03c_4fd2

    ld [hl], b
    sbc a
    ld h, b
    sbc a
    ld h, b
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
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    ccf
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
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
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
    ld a, a
    rlca
    rra
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    rra
    ld a, a
    rrca
    ld a, a
    rlca
    ld a, a
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ld a, a
    adc a
    ld a, a
    sbc a
    ld h, c
    sbc a
    ld h, b
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
    ldh a, [rIF]
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
    cp $01
    cp $01
    cp $01
    db $fc
    db $e3
    db $fc
    ei
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
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38

jr_03c_510a:
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    cp $f8
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    nop
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
    ld a, a
    rst $38
    rra
    rst $38
    inc bc

jr_03c_5134:
    rst $38
    nop

jr_03c_5136:
    rst $38
    nop

jr_03c_5138:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rSB], a
    cp $80
    ld a, a
    ldh a, [rIF]
    cp $01

jr_03c_514a:
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
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld b, $f3
    inc c
    di
    inc c
    rst $20
    jr jr_03c_514a

    jr jr_03c_5134

    jr nc, jr_03c_5136

    jr nc, jr_03c_5138

    jr nc, jr_03c_510a

    ld h, b
    sbc a
    ld h, b
    cp a
    ld b, b
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
    rst $38
    ret nz

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
    rst $38
    rst $38
    rst $38

jr_03c_5192:
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
    rrca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    inc bc
    cp $03
    cp $03
    cp $07
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$1f
    ldh a, [$9f]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
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

jr_03c_51d0:
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld b, $f9
    nop
    rst $38
    ret nz

    ccf
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $fb
    inc b
    di
    inc c
    di
    inc c
    rst $30
    ld [$18e7], sp
    rst $28
    db $10
    rst $08
    jr nc, jr_03c_51d0

    jr nz, jr_03c_5192

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
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
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    ret nz

    ccf
    ldh a, [rIF]
    cp $c1
    ccf
    ldh a, [rIF]
    cp $01
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
    rrca
    ldh a, [rSB]
    cp $80
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
    add b
    ld a, a
    ldh a, [rIF]
    db $fc
    jp $f03f


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
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$00
    rst $38
    ret nz

    ccf
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
    add b
    ld a, a
    ldh [$1f], a
    db $fc
    jp $f03f


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
    rra
    ldh [$03], a
    db $fc
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    ldh [rNR31], a
    db $fc
    add a
    ld a, a
    ldh a, [rIF]
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
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$00
    rst $38
    ret nz

    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03c_52ee:
    rst $38
    ldh [$1f], a
    ld hl, sp-$79
    ld a, a
    ldh a, [rIF]
    cp $01
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
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    inc bc
    db $fc
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    nop
    rst $38

jr_03c_531b:
    nop
    rst $38
    nop
    rst $38
    nop

jr_03c_5320:
    rst $38
    nop

jr_03c_5322:
    rst $38
    nop
    cp $c1
    ld a, $f9
    add [hl]
    ld a, a
    ldh a, [rIF]

jr_03c_532c:
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
    ld sp, hl
    ld b, $f9
    ld b, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f3
    inc c
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    rst $20
    jr jr_03c_531b

    add hl, sp
    rst $00
    jr c, jr_03c_5320

    jr c, jr_03c_5322

    jr c, jr_03c_532c

    jr nc, jr_03c_52ee

    ld [hl], b

jr_03c_5360:
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    sbc a
    ld h, b
    rra
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
    rrca
    ldh a, [rP1]
    rst $38
    add b
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop

jr_03c_5390:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01

jr_03c_539a:
    cp $01

jr_03c_539c:
    cp $01

jr_03c_539e:
    cp $01
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

jr_03c_53aa:
    ld hl, sp+$07

jr_03c_53ac:
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f1
    ld c, $f3
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    db $e3
    inc e
    rst $20
    jr jr_03c_53aa

    jr jr_03c_53ac

    jr @-$17

    jr jr_03c_5390

    jr c, jr_03c_539a

    jr nc, jr_03c_539c

    jr nc, jr_03c_539e

    jr nc, jr_03c_5360

    ld [hl], b
    adc a
    ld [hl], b
    sbc a
    ld h, b
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

jr_03c_53e4:
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    ret nz

    scf
    ld hl, sp+$0f
    cp $71
    adc a
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

jr_03c_540c:
    ld a, a
    add b

jr_03c_540e:
    rst $38
    nop

jr_03c_5410:
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a

jr_03c_541c:
    db $fd
    ld [bc], a

jr_03c_541e:
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $fb
    inc b
    ei
    inc b

jr_03c_5428:
    inc de
    db $ec
    inc bc
    db $fc
    nop
    rst $38
    ldh [$1f], a
    db $e4
    dec de
    rst $20
    jr jr_03c_541c

    jr jr_03c_541e

    jr jr_03c_5428

    db $10
    rst $08
    jr nc, jr_03c_540c

    jr nc, jr_03c_540e

    jr nc, jr_03c_5410

    jr nc, @-$1f

    jr nz, jr_03c_53e4

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    cp a
    ld b, b
    dec sp
    call nz, $c03f
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
    rst $38
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
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ret nz

    ld a, a
    ldh a, [$8d]
    ld a, [hl]
    db $e3
    rra
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
    cp $01
    cp $01
    di
    inc c
    ld a, [$0005]
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    ld [bc], a
    inc c
    dec c
    ld c, $0f
    ld [bc], a
    db $10
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_03c_54d2

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03c_54e9

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [hl+], a
    inc hl
    add hl, bc
    add hl, bc

jr_03c_54d2:
    add hl, bc
    add hl, bc
    inc h
    dec h
    ld h, $27
    jr z, jr_03c_5503

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03c_5513

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $09
    add hl, bc

jr_03c_54e9:
    add hl, bc
    scf
    jr c, jr_03c_5526

    ld a, [hl-]
    dec sp
    inc a
    dec a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, $3f
    add hl, bc
    add hl, bc
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    add hl, bc
    add hl, bc
    add hl, bc

jr_03c_5503:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld b, [hl]
    add hl, bc
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    add hl, bc
    add hl, bc
    add hl, bc

jr_03c_5513:
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_03c_5526:
    add hl, bc
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    add hl, bc
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    add hl, bc
    ld [hl], e
    ld [hl], h
    ld [hl-], a
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    add hl, bc
    ld a, e
    ld a, h
    ld [bc], a
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add b
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
    add hl, bc
    add hl, bc
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    add hl, bc
    and h
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    sbc e
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    add hl, bc
    xor [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    add hl, bc
    cp b
    cp c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    add hl, bc
    jp nz, $c4c3

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc bc
    inc bc
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $2101
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    inc b
    ld bc, $0101
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
    inc b
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
    inc b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    ld bc, $0404
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add e
    rst $38
    add c
    rst $38
    add c
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    db $10
    rst $38
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr nc, @+$01

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
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
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
    cp $ff
    ld hl, sp-$01
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
    nop
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    db $fc
    jp $e3fc


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
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld hl, sp-$01
    ldh [rIE], a
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
    nop
    nop
    nop
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
    nop
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    rlca
    nop
    rlca
    nop
    ld b, $01
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
    ld a, a
    cpl
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    jr z, jr_03c_5a5b

    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ccf
    cp a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $30
    rst $38
    ld a, h
    db $fc
    ld d, b
    ld d, b
    nop
    nop
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

    ccf

jr_03c_5a5b:
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
    ldh [rIF], a
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    nop
    jp hl


    jp hl


    ld l, e
    ld l, e
    rst $28
    rst $28
    ld l, a
    ld l, a
    cp a
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
    sub b
    sub b
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    and a
    rst $38
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rra
    rra
    db $fc
    rst $38
    or [hl]
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    sbc l
    db $fd
    add sp, -$18
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $3f01
    ccf
    ld hl, sp-$01
    push hl
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rra
    ldh [$3f], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    db $fc
    db $fc
    sbc $de
    rst $18
    rst $18
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
    cp $fe
    nop
    nop
    ld bc, $0001
    nop
    rra
    rra
    db $f4
    rst $38
    add b
    rst $38
    ld e, e
    rst $38
    add sp, -$01
    ld e, a
    rst $38
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    rra
    ldh [rIE], a
    ret nz

    rst $38
    ld b, h
    rst $38
    or [hl]
    rst $38
    ldh a, [rIE]
    rla
    rst $38
    db $fc
    db $fc
    add b
    add b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    dec [hl]
    ccf
    ld hl, sp-$01
    ret nz

    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    inc [hl]
    rst $38
    pop de
    cp $81
    rst $38
    ccf
    ret nz

    rrca
    ldh a, [$03]
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
    ldh a, [$f0]
    jr nz, jr_03c_5ba4

    jr nz, jr_03c_5ba6

    jr nz, jr_03c_5ba8

    db $f4
    db $f4
    ldh a, [$f0]
    ld a, [$f6fa]
    cp $ff
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$08
    dec b
    dec b
    ccf
    ccf
    xor e
    xor e
    ld a, b
    ld a, a

jr_03c_5ba4:
    add b
    rst $38

jr_03c_5ba6:
    nop
    rst $38

jr_03c_5ba8:
    jr nc, @+$01

    dec bc
    rst $38
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    db $f4
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    cp $03
    rst $38
    cp l
    db $fd
    ret nz

    ret nz

    nop
    nop
    ld [bc], a
    ld [bc], a
    ld d, $17
    ld l, b
    ld a, a
    ld l, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$df21]
    cpl
    rst $38
    ei
    ei
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rra
    pop hl
    ld bc, $01ff
    rst $38
    ld bc, $feff
    nop
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
    ld a, h
    call c, Call_03c_7cdc
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld e, d
    ld a, [hl]
    inc a
    ld a, $1e
    ld e, $1e
    ld e, $0e
    ld c, $0e
    ld c, $07
    rlca
    rst $00
    rst $00
    db $ed
    db $ed
    pop hl
    pop hl
    nop
    nop
    add b
    add b
    inc bc
    inc bc
    cp a
    cp a
    ld a, a

Call_03c_5c33:
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, [de]
    ld a, [$d0d0]
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, a
    ld c, a
    cp a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc de
    rst $28
    ld e, $fe
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld hl, $ff21
    rst $38
    adc a
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld b, $f9
    ld d, e
    xor a
    ccf
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
    pop bc
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $b9
    ld hl, sp-$2e
    pop af
    inc c
    di
    ld [$01f7], sp
    rst $38
    ld b, $7e
    ld [bc], a
    ld a, d
    ld bc, $0079
    ld a, b
    nop
    ld a, h
    nop
    inc a
    nop
    ld a, $00
    ld e, $1f
    add hl, bc
    rra
    ld bc, $111f
    rra
    db $10
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    ld [$c0c7], sp
    rst $08
    ret z

    ld c, a
    ld c, h
    rst $00
    call nz, $c0c3
    ld b, e
    ld b, b
    ld d, e
    ld d, d
    ret


    ret z

    ret


    ret z

    ld sp, hl
    ld hl, sp-$07
    ld sp, hl
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    rla
    rla
    ld [hl], c
    ld [hl], c
    db $d3
    di
    xor $ff
    ldh a, [rIE]
    push hl
    ei
    ld a, [hl]
    cp $f0
    ldh a, [rP1]
    nop
    nop
    nop
    rra
    rra
    jr jr_03c_5d04

    cp $fe
    cp $fe
    ld sp, hl
    rst $38

jr_03c_5cec:
    db $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    rra
    rst $38

jr_03c_5cf4:
    ld a, [hl]
    cp $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    nop
    rst $38
    nop

jr_03c_5d04:
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
    rlca
    rlca

jr_03c_5d12:
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, [hl]
    db $fd
    cp $f9
    ld a, [$f2f5]
    set 0, [hl]
    reti


    add $fb
    ld b, [hl]
    rst $38
    ld b, [hl]
    pop bc
    ld a, [hl]
    jp $f37e


    ld a, [hl]
    ei
    ld a, [hl]
    rst $38
    ld a, [hl]
    and c
    jr nz, jr_03c_5cec

    jr c, jr_03c_5cf4

    ld a, $bf
    ld a, $bf
    ld a, $bf
    ld a, $9f
    rra
    adc a
    rrca
    add a
    rlca
    and a
    daa
    scf
    scf
    cp a
    cp a
    rst $38
    rst $38
    rst $08
    ld c, [hl]
    rst $38
    ld a, h
    rst $28
    ld h, b
    sbc a
    jr nz, jr_03c_5d12

    nop
    rst $18
    nop
    rst $18
    nop
    sbc a
    nop
    rst $28
    nop
    rst $08
    nop
    adc a
    nop
    rst $20
    nop
    rst $20
    nop
    rst $00
    nop
    db $e3
    nop
    di
    nop
    ld [hl], e
    add b
    pop af
    add b
    db $fd
    add b
    add hl, sp
    ret nz

jr_03c_5d72:
    dec a
    ret nz

    cp $c0
    cp h
    ret nz

    sbc $e0
    sbc $e0
    rst $18
    ldh [$cf], a
    ldh a, [$3f]
    jr nc, jr_03c_5d72

    ldh [$ef], a
    add sp, -$01
    ld hl, sp-$09
    ldh a, [$f7]
    db $f4
    rst $28
    db $ec
    db $e3
    ldh [$c7], a
    add $c3
    jp nz, $0203

    add c
    add b
    add a
    add a
    db $fd
    db $fd
    rst $38
    rst $38
    rst $18
    rst $18
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    ld bc, $0301
    inc bc
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld a, [$fbf6]
    rst $20
    db $eb
    rst $00
    db $db
    add a
    cp e
    xor [hl]
    ei
    sbc [hl]
    ei
    adc a
    ei
    cp a
    ei
    add a
    ei
    ld [hl], l
    ld [hl], c
    dec d
    ld de, $0105
    dec b
    ld bc, $0004
    ld [hl], l
    ld [hl], c
    ld a, l
    ld a, c
    ld a, l
    ld a, c
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rra
    rra
    db $fd
    db $fd
    ei
    ld a, [$d0d7]
    rst $38
    ldh a, [$df]
    ldh [$bf], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    nop
    add b
    add b
    nop
    add b
    ld b, b
    ret nz

    nop
    ret nz

    nop
    ldh [rNR41], a
    db $e4
    inc b
    rst $28
    rrca
    or $16
    db $fd
    dec e
    rst $30
    rlca
    rst $38
    rrca
    rst $30
    ld c, a
    rst $38
    ld b, a
    rst $38
    rla
    ei
    ld d, a
    rst $38
    ld b, e
    rst $38
    ld d, e
    ld a, l
    adc e
    nop
    rst $38
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
    ld sp, hl
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    db $fc
    rst $38
    cp $f9
    cp $e9
    cp $e9
    cp b
    adc a
    ld e, h
    cpl
    rst $18
    cpl
    rst $18
    cpl
    add hl, de
    rst $28
    scf
    daa
    ld de, $1001
    nop
    sub b
    add b
    sub $c6
    sub a
    add a
    rla
    rlca
    inc de
    inc bc
    or c
    and c
    pop af
    pop hl
    push af
    push hl
    rst $30
    rst $20
    ld a, a
    ld a, a
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    cp $7b
    db $fc
    ld [hl], a
    ld hl, sp-$01
    ldh [rIE], a
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
    ld [bc], a
    ld [bc], a
    ld hl, $2f21
    cpl
    cp $fe
    ld a, [c]
    ld a, [c]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, $ff
    inc b
    ei
    inc b
    ei
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
    ld hl, sp+$06
    ld sp, hl
    ld b, $f9
    dec b
    ei
    rlca
    ei
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    add b
    nop
    nop
    ld [bc], a
    nop
    ld b, $10
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, d
    add b
    ld b, d

jr_03c_5f3e:
    nop
    jp nz, $de80

    nop
    ld b, d
    nop
    ld b, d
    adc h
    adc $94
    sbc $08
    ld c, d
    inc e
    ld e, [hl]
    inc d
    ld d, [hl]
    sbc h
    sbc $01
    ld e, a
    rra
    ld e, a
    inc c
    adc $0e
    adc $74
    db $f4
    jr nz, jr_03c_5f3e

    ret nz

    ret nz

    db $fc
    rst $38
    ld sp, hl
    cp $e8
    ldh a, [$80]
    ret nz

    add b
    ret nz

    and b
    ret nz

    ld [hl], b
    add b
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, b
    add b
    ld a, h
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$cf], a
    ldh a, [$f8]
    ldh a, [$9e]
    ld hl, sp-$71
    cp $83
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
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
    ld a, h
    ld a, h
    inc a
    inc a
    inc e
    inc e
    inc c
    inc c
    inc b
    inc b
    nop
    nop
    nop
    nop
    sub b
    sub b
    ld b, $06
    cp [hl]
    cp [hl]
    di
    di
    db $fd
    db $fd
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    rra
    ret nz

    ccf
    ret nz

    ccf
    add c
    ld a, a
    add e
    ld a, a
    adc a
    ld a, a
    ldh [rP1], a
    ret nz

    nop
    add b
    ld bc, $0300
    nop
    dec bc
    nop
    dec de
    nop
    dec sp
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    adc b
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    ld [$fb00], sp
    ld [hl], e
    ld a, e

jr_03c_6044:
    inc bc
    dec de
    ld b, e
    ld e, e
    rst $00
    rst $38
    xor $ff
    db $fc
    cp $f8
    ld sp, hl
    ld a, $f8
    jr c, jr_03c_6044

    ld [hl], b
    ldh [$f0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
    cp a
    ret nz

    cp a
    ret nz

    adc a
    ret nz

    inc bc
    ret nz

    ld bc, $0100
    nop
    rlca
    nop
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
    rst $38
    nop
    rst $38
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
    and b
    rst $18
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
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
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
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
    nop
    adc a
    nop
    adc a
    jr nz, jr_03c_60fa

    ld [hl], c
    nop
    ld [hl], a
    nop
    ld a, a
    nop
    ccf

jr_03c_60fa:
    ld b, $09
    ld c, $01
    ld c, $61
    ld c, $61
    ld c, $e1
    ld c, [hl]
    and c
    ld c, [hl]
    and c
    ld c, h
    and e
    ld c, h
    and d
    ld c, h
    and d
    call z, $cc22
    ld [hl+], a
    adc h
    ld h, d
    add b
    ld h, d
    add b
    ld h, d
    add b
    ld h, d
    add b
    ld b, d
    add b
    ld b, d
    nop
    jp nz, $ff00

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
    ret nz

    ret nz

    nop
    rst $38
    ld bc, $01ff
    cp $03
    cp $03
    cp $03
    cp $03
    ld [c], a
    inc bc
    add d
    ld [bc], a
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rSVBK]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    jp nz, $c3c0

    ret nz

    pop bc
    ret nz

    jp $c3c0


    ret nz

    add $c0
    rst $08
    ret nz

    ret


    ret nz

    jp $c3c0


    ret nz

    jp $c7c0


    ret nz

    jp $c3c0


    ret nz

    rst $00
    ret nz

    jp nz, $c8c0

    ret nz

    call c, $cac0
    ret nz

    rst $08
    ret nz

    ret c

    rst $00
    ret nz

    rst $38
    nop
    db $fd
    nop
    ld l, h
    nop
    inc c
    nop
    inc c
    ld bc, $710d
    ld a, l
    ld d, c
    ld l, h
    ld [hl], c
    inc c
    ld [hl], c
    inc c
    ld [hl], c
    inc c
    ld [hl], c
    inc c
    di
    ld [$08f3], sp
    di
    ld [$18e3], sp
    ldh [rNR23], a
    nop
    jr jr_03c_61b7

jr_03c_61b7:
    jr jr_03c_61b9

jr_03c_61b9:
    jr jr_03c_61bb

jr_03c_61bb:
    jr jr_03c_61bd

jr_03c_61bd:
    jr jr_03c_61bf

jr_03c_61bf:
    jr jr_03c_61c1

jr_03c_61c1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, $ff
    cp c
    pop hl
    db $fc
    ld h, b
    sbc [hl]
    ldh a, [$f9]
    sbc [hl]
    db $fc
    rrca
    db $fc
    rlca
    cp $07
    cp $03
    rst $38
    inc bc
    ld a, a
    inc bc
    ccf
    inc bc
    rra
    inc bc
    ccf
    ld bc, $007f
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
    ccf
    ret nz

    rlca
    ld hl, sp+$01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $fe
    ld e, $fe
    cp [hl]
    cp $fe
    cp $fe
    cp $fe
    inc a
    cp $10
    cp $00
    inc bc
    db $fd
    inc hl
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    rlca
    db $fd
    inc bc
    db $fd
    dec de
    db $fd
    inc sp
    db $fd
    db $fd
    ld bc, $01fd
    db $fd
    adc c
    ei
    jp $e3fb


    ei
    cp e
    ld a, [c]
    ld a, e
    ld [bc], a
    ei
    inc bc
    ld a, [$fb03]
    add e

jr_03c_6235:
    ei
    jp $c2fb


jr_03c_6239:
    ei
    jp nz, $07fb

    or $c7
    ld [hl], $c7
    ld [hl], $c7
    ld [hl], $c7
    ld [hl], $c7
    ld [hl], $c7
    inc [hl]
    rst $00

jr_03c_624b:
    inc [hl]
    rst $00
    inc [hl]
    rst $00
    inc [hl]
    rst $10
    inc h
    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    rst $08
    inc l
    rst $08
    inc l
    rst $08
    jr z, jr_03c_6235

    jr z, @-$2f

    jr z, jr_03c_6239

    jr jr_03c_624b

    ret c

    sbc a
    reti


    sbc a
    ei
    ld a, a
    rst $38
    ld a, [hl]
    ccf
    rst $38
    inc bc
    rst $38
    inc de
    xor $77
    adc [hl]
    ld c, a
    cp [hl]
    sbc a
    cp $ff
    cp $ff
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rTAC], a
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
    rst $28
    ld a, a
    add a
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld h, b

jr_03c_62ca:
    rst $38
    nop

jr_03c_62cc:
    rst $38
    nop

jr_03c_62ce:
    rst $38

jr_03c_62cf:
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    sbc b
    nop
    jr jr_03c_62e5

jr_03c_62e5:
    jr jr_03c_62ea

    dec de
    ld [c], a
    ei

jr_03c_62ea:
    jp $e7f8


    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $20
    db $10
    rst $00
    jr nc, jr_03c_62ca

    jr nz, jr_03c_62cc

    jr nz, jr_03c_62ce

    jr nz, jr_03c_62cf

    jr nz, jr_03c_6303

jr_03c_6303:
    ld h, b
    nop
    ld h, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    rst $38
    rst $38
    rst $38
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
    ld a, [hl]
    nop
    add c
    ld a, [hl]
    nop
    rra
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
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
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
    cp $00
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
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
    ld b, a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    dec sp
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    dec de
    rst $38
    ld c, $ff
    nop
    cp $01
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc

jr_03c_638c:
    nop
    adc h

jr_03c_638e:
    nop
    inc c
    nop
    inc c
    ld bc, $f10d
    db $fd
    pop af
    db $fc
    db $e3
    jr jr_03c_638e

    ld [$08f3], sp
    di
    ld [$08f3], sp
    di
    ld [$08f3], sp
    db $e3
    jr jr_03c_638c

    jr jr_03c_638e

    db $10
    db $e3
    db $10
    db $e3
    stop
    jr nc, jr_03c_63b3

jr_03c_63b3:
    jr nz, jr_03c_63b5

jr_03c_63b5:
    jr nz, jr_03c_63b7

jr_03c_63b7:
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ret nz

    rst $38

jr_03c_63d2:
    ret nz

    ld a, a
    ldh [$60], a
    ld [hl], b
    jr nc, jr_03c_6409

    db $10
    jr @+$0a

    jr jr_03c_63e6

    jr @+$0a

    rst $28
    jr jr_03c_63d2

    jr @+$01

    inc c

jr_03c_63e6:
    call z, $8c0c
    inc c
    call z, $ec0c
    inc c
    db $ec
    inc c
    ld a, h
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
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
    nop
    nop
    nop
    nop

jr_03c_6409:
    nop
    nop
    pop bc
    nop
    rst $38
    nop
    rst $38
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
    ld b, $07
    ld [$0202], sp
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    ld [bc], a
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld d, $17
    jr jr_03c_643b

    add hl, de
    ld a, [de]

jr_03c_643b:
    dec de
    inc e
    dec e
    ld e, $1f
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, @+$23

    ld [bc], a
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr z, jr_03c_6484

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    cpl
    jr nc, jr_03c_649c

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    scf
    jr c, jr_03c_64b4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_03c_6484:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_03c_649c:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_03c_64b4:
    ld [bc], a
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
    ld l, d
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
    ld bc, $7902
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
    ld [bc], a
    inc bc
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0401
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
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0200
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
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
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
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_03c_6687

jr_03c_6687:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03c_66ce:
    cp $01
    db $fd
    inc bc
    di
    rrca
    db $e3
    rra
    rst $10
    ccf
    rrca
    rst $38
    cpl
    rst $38

jr_03c_66dc:
    db $fd
    rst $38
    or [hl]
    rst $38
    ld h, h
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
    and c
    cp $31
    ld a, $af
    xor h
    dec sp
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [rNR34], a
    pop hl
    ld a, $c1
    cp $01
    db $fc
    inc bc
    ld a, [$fd07]
    add [hl]
    pop af
    ld c, $fd
    ld c, $eb
    inc e
    rst $30
    jr jr_03c_66dc

    ld [hl-], a
    rst $38
    jr nz, jr_03c_66ce

    ld b, h
    rst $30
    ld [$05fa], sp
    xor $11
    cp c
    ld b, [hl]
    or c
    ld c, [hl]
    ld c, b
    or a
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
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
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
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f8
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    di
    rrca
    db $f4
    rrca
    add sp, $1f
    call c, Call_03c_7f3f
    rst $38
    cp a
    rst $38
    ld a, h
    rst $38
    rst $38
    db $fc
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$19
    ld hl, sp-$11
    ldh a, [$6f]
    ldh a, [$9f]
    ldh [rNR33], a
    ld [c], a
    cp h
    jp $c1be


    ld a, e
    add h
    ld a, [c]
    rrca
    db $f4
    dec c
    push hl
    dec e
    pop bc
    dec a
    ret


    dec [hl]
    push hl
    add hl, sp
    sbc a
    ld a, a
    ccf
    rst $38
    ld c, $ff
    inc bc
    db $fc
    cp [hl]
    pop bc
    db $fc
    jp $a798


    ldh a, [$cf]
    ld [hl], b
    adc a
    jp nz, $883d

    ld [hl], a
    sub b
    ld l, a
    ldh a, [rIF]
    ret nz

    ccf
    add h
    ld a, e
    add b
    ld a, a
    ld d, b
    xor a
    nop
    rst $38
    add b
    ld a, a
    add c
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
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
    ldh [rIF], a
    ldh a, [$79]
    cp $ff
    cp $bb
    db $fc
    rlca
    ld hl, sp+$1e
    pop hl
    cp d
    add $2f
    rst $18
    jp z, $ed3f

    rra
    db $fd
    rra
    push bc
    ccf
    db $e3
    ccf
    and e
    ld a, a
    inc hl
    cp a
    dec hl
    cp a
    add hl, de
    sbc a
    ld e, c
    rst $18
    reti


    ld e, a
    dec e
    rst $18
    sbc [hl]
    ld e, a
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
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
    nop
    rst $38
    ld bc, $09ff
    rst $38
    inc bc
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
    rst $38
    cp $ff
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$01
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
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    rst $38
    nop
    db $fd
    inc bc
    db $fd
    ld b, $c9
    ld a, [hl-]
    cp $7f
    rst $18
    rst $38
    db $db
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    db $fc
    rst $38
    ld hl, sp-$01
    sub e
    sbc a
    jp $e6df


    rst $38
    adc c
    rst $38
    ld a, [de]
    rst $38
    ld [hl], $ff
    ld c, h
    rst $38
    inc c
    rst $38
    jr nz, @+$01

    inc bc
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    inc de
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    ret nz

    ccf
    add c
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    ei
    dec bc
    rst $30
    inc de
    rst $20
    inc hl
    jp $c303


    ld bc, $8183
    inc bc
    jp $c301


    ld bc, $01e1
    pop hl
    nop
    ldh [rP1], a
    add c
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld hl, sp+$06
    rst $30
    ld [$38d7], sp
    rst $28
    ret c

    rst $28
    jr @+$01

    ld [$0cfb], sp
    ccf
    call z, $f9fa
    db $fd
    rst $38
    pop af
    rst $38
    rst $20
    rst $38
    add [hl]
    rst $38
    adc a
    rst $38
    ld e, $ff
    db $76
    rst $38
    ret z

    rst $38
    ret


    rst $38
    add e
    rst $38
    ld [bc], a
    rst $38
    rrca
    rst $38
    dec e
    rst $38
    or a
    rst $38
    scf
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    ld a, a
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    db $fc
    add b
    ldh a, [$80]
    ret nz

    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f9]
    ldh a, [$f2]
    ld sp, hl
    ld hl, sp-$01
    ld a, h
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
    nop
    rrca
    nop
    rra
    nop
    ld a, [hl]
    ld bc, $06f8
    ldh [rNR23], a
    ret nz

    jr nc, @-$5e

    ld [hl], b
    nop
    or b
    nop
    ld sp, $3710
    ret nc

    ccf
    ei
    rra
    rst $20
    rra
    rst $18
    ccf
    cp [hl]
    ld a, a
    inc [hl]
    rst $38
    call z, $c9ff
    rst $38
    sub d
    rst $38
    dec d
    rst $38
    adc e
    rst $38
    rra
    rst $38
    scf
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [$f8f9]
    ei
    ld a, [c]
    di
    ldh [$e1], a
    pop af
    pop af
    pop de
    pop af
    ldh a, [$f0]
    ret nc

    ldh a, [$3f]
    rst $08
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
    rlc a
    dec bc
    rlca
    rrca
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    dec b
    inc bc
    inc bc
    rlca
    dec de
    rlca
    inc hl
    rra
    ld b, e
    ccf
    add l
    ld a, e
    ld c, $f1
    inc de
    db $ec
    inc d
    db $eb
    rlca
    nop
    rra
    nop
    ld a, a
    nop
    db $fc
    inc bc
    ldh a, [$0c]
    pop hl
    db $10
    sub d
    ld h, c
    ld [hl], b
    and a
    ld l, b
    daa
    ld b, b
    ccf
    ld b, b
    ccf
    inc bc
    ld a, h
    dec c
    ld a, [c]
    ld a, [de]
    push hl
    ld [hl], h
    adc e
    ld e, b
    and a
    ld l, a
    rst $38
    sbc e
    rst $38
    scf
    rst $38
    ld a, a

jr_03c_6a27:
    rst $38
    rst $18
    rst $38
    cp [hl]
    cp $7c
    db $fc
    db $fc
    db $fc
    db $f4
    db $f4
    db $e4
    db $fc
    call nz, $ecf4
    call c, $9cec
    ld hl, sp+$04
    ld hl, sp+$04
    ld a, b
    add h
    ld h, d
    sbc [hl]
    ld c, [hl]
    cp [hl]
    cp [hl]
    cp $fe
    cp $ea
    db $fc
    sbc a
    pop hl
    ld a, [hl]
    add b
    cp $00
    db $fd
    ld bc, $01f1
    pop bc
    ld bc, $0101
    ld bc, $8101
    add c
    add d
    add c
    add e
    add b
    add c
    add [hl]
    add b
    adc a
    ret nz

    rst $18
    ldh [$df], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [$101f], sp
    rra
    db $10
    rra
    inc e
    inc de
    nop
    rrca
    add b
    adc a
    ld c, b
    rst $08
    adc b
    adc a
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    ld a, $01
    db $fc
    inc bc
    ldh a, [rIF]
    ldh [$1f], a
    add b
    ld a, a
    ld [bc], a
    db $fd
    ld b, a
    jr c, jr_03c_6a27

    ld [hl], c
    inc d
    db $eb
    add hl, de
    and $b2
    ld c, l
    sbc a
    rst $38
    sub a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, b
    db $fc
    db $f4
    db $f4
    db $e4
    db $e4
    db $f4
    db $f4
    db $f4
    db $f4
    sub h
    db $f4
    db $e4
    add h
    db $fc
    inc e
    ld c, h
    cp h
    db $76
    sub [hl]
    db $f4
    sub h
    ld l, d
    ld e, $7e
    ld [bc], a
    ld a, $42
    ld e, [hl]
    ld h, d
    ld b, $3e
    ld a, $3e
    ld a, [hl]
    ld a, [hl]
    ld a, $3e
    ld a, $3a
    ld a, $02
    ld a, $02
    ld a, [hl-]
    nop
    ld [hl], $04
    ld [hl-], a
    ld [de], a
    ld a, $3c
    ld e, $1e
    ld e, $1e
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    adc a
    jp z, $8d4f

    adc a
    ld bc, $0001
    nop
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    ld e, $fe
    jp nz, Jump_000_18ff

    rst $38
    pop bc
    rst $38
    ld [hl], e
    rst $38
    inc b
    rst $38
    dec de
    rst $20
    nop
    rst $38
    rlca
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
    inc bc
    nop
    inc c
    inc bc
    jr c, @+$09

    ld h, b
    rra
    pop bc
    ld a, $82
    ld a, l
    ld b, $f9
    ld [$18f7], sp
    rst $20
    ldh a, [rIF]
    ld h, b
    sbc a
    pop de
    ld l, $82
    ld a, h
    inc b
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$18
    db $ec
    inc a
    call z, $d3e2
    add e
    di
    ld [bc], a
    di
    ld bc, $22f2
    di
    ld [hl], b
    di
    ld d, d
    di
    ld e, e
    cp e
    xor d
    ei
    ret z

    ei
    jp hl


    sbc d
    ld l, c
    dec de
    ld l, c
    add hl, de
    add sp, -$68
    jp hl


    sbc c
    ld l, c
    add hl, de
    ld [$8878], sp
    ld hl, sp+$79
    ld a, c
    ld [hl], h
    ld a, h
    ld [hl], h
    ld a, h
    ld a, b
    ld a, b
    jr c, jr_03c_6ba6

    jr c, jr_03c_6ba8

    jr c, jr_03c_6baa

    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cp e
    cp e
    ld l, $2e
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
    rst $38
    rst $38
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld l, [hl]
    xor $1f
    rst $38
    ld b, $ff

jr_03c_6ba6:
    adc h
    rst $38

jr_03c_6ba8:
    db $ec
    rst $38

jr_03c_6baa:
    ccf
    db $fc
    rrca
    ld hl, sp+$3e
    ret


    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld b, $0b
    ld b, $0b
    rla
    inc hl
    rra
    ld b, e
    ccf
    inc sp
    ld c, a
    daa
    rra
    inc hl
    rra
    inc bc
    ccf
    ld b, h
    dec sp
    sbc b
    ld h, a
    inc [hl]
    bit 4, b
    sbc a
    ld d, c
    xor a
    jp Jump_000_033f


    rst $38
    dec bc
    rst $30
    sbc e
    ld h, a
    dec sp
    rst $00
    dec bc
    rst $20
    ld c, c
    rst $20
    adc e
    ld h, a
    adc e
    ld h, a
    xor e
    ld h, a
    xor e
    ld h, a
    xor e
    ld h, a
    dec hl
    rst $20
    ld l, e
    rst $20
    ld l, e
    rst $20
    call nz, Call_03c_44dc
    call c, $dcc4
    ld c, h
    call c, $9c04
    ld d, h
    call z, $dcc4
    ld b, h
    call c, $dc54
    ld d, h
    call c, $c4cc
    ret nz

    ret nz

    and b
    ldh [rOBP0], a
    ret z

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ld a, [$8ffa]
    adc a
    ld a, [$7efa]
    ld a, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    rst $30
    rst $30
    ei
    ei
    rst $38
    rst $38
    rst $08
    rst $08
    push hl
    rst $20

jr_03c_6c2e:
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    rrca
    rrca
    ld a, [$feff]
    db $fd
    ldh [rIE], a
    push bc
    ld a, [$fef1]
    rst $20
    ld hl, sp-$11
    ldh a, [$c3]
    db $fc
    jp $f5fd


    ei
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rla
    rst $08
    jr nc, @+$01

    nop
    ld a, a
    add b
    rst $20
    jr jr_03c_6c2e

    jr nc, jr_03c_6c61

jr_03c_6c61:
    nop
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

    ldh [$c0], a
    add b
    ret nz

    ret nz

    add b
    ret nz

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
    add a
    add a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0801
    add hl, bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0707
    inc c
    rrca
    dec e
    rra
    dec a
    ld a, $5c
    ld e, a
    xor $fb
    ld a, c
    ld a, a
    rrca
    rrca
    ld c, a
    ld c, a
    ld d, [hl]
    ld e, a
    adc a
    ldh a, [rDIV]
    ei
    db $f4
    rst $08
    add c
    cp $81
    cp $55
    xor [hl]
    ld a, c
    add [hl]
    db $d3
    db $ed
    push af
    rst $30
    rst $30
    rst $30
    push hl
    push hl
    ei
    rst $38
    rrca
    pop af
    or h
    ei
    add hl, sp
    rst $38
    push af
    ld a, a
    ld e, l
    db $e3
    db $fc
    inc bc
    or l
    set 7, a
    add e
    ld a, e
    add a
    ld a, a
    add a
    daa
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    cp a
    cp a
    ld a, a
    rst $38
    db $dd
    inc sp
    rst $28
    ld de, $877b
    ld b, $fd
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
    ld hl, sp+$07
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
    ldh a, [rIF]
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
    pop hl
    rra
    pop hl
    rra
    db $e3
    rra
    db $e3
    rra
    rst $20
    rra
    rst $20
    rra
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc bc
    inc bc
    dec a
    ccf
    ccf
    ccf
    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, a
    ld hl, $8f3e
    db $fc
    inc hl
    db $fd
    xor c
    rst $18
    cp l
    rst $38
    ei
    rst $38
    rst $30
    ld hl, sp+$0b
    rst $30
    ld a, $e3
    or a
    ld l, c
    or a
    ld c, [hl]
    ld a, e
    call nz, $f796
    rst $38
    rst $38
    sbc [hl]
    rst $38
    ld h, a
    sbc e
    rst $28
    rra
    cp [hl]
    ld a, c
    adc e
    ld a, l
    ei
    daa
    ld e, $e2
    ld sp, hl
    rra
    rst $18
    ccf
    ccf
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
    db $fd
    ei
    ei
    rst $18
    rst $18
    rst $38
    db $fd
    ld a, [hl]
    db $fd
    ld a, [$f9fd]
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $08
    rst $08
    rst $20
    rst $20
    or $f7
    rst $10
    rst $10
    jp $e1c3


    pop hl
    xor $ee
    cp [hl]
    cp [hl]
    cp $fe
    db $fc
    db $fc
    ld a, h
    db $fc
    rrca
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
    ld bc, $fffe
    nop
    cp $00
    cp $00
    db $fd
    ld bc, $01fd
    ld sp, hl
    ld bc, $03fb
    di
    inc bc
    di
    inc bc
    and $07
    and $07
    rst $00
    rlca
    jp $8203


    ld [bc], a
    add a
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    ld e, $1f
    dec e
    rra
    ld a, a
    ld a, a
    db $fd
    rst $38
    ld [hl], a
    ld [hl], a
    ld l, l
    ld l, l
    rst $30
    rst $30
    rst $28
    rst $28
    cp $fe
    rst $38
    rst $38
    ld [hl], l
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    call z, $91ff
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
    sbc b
    sbc b
    ld l, a
    rst $28
    rst $38
    rst $38
    rst $08
    rst $08
    rst $00
    rst $00
    db $d3
    di
    ld l, l
    rst $38
    ld e, [hl]
    rst $28
    cp a
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    di
    ccf
    adc $3e
    ld a, a
    rst $38
    ld [hl], c
    pop af
    cpl
    rst $28
    sbc a
    ld a, a
    daa
    rst $38
    ld a, c
    ld sp, hl
    call nc, $fed4
    cp $fb
    ei
    ei
    ei
    di
    di
    cp h
    cp h
    cp $fe
    cp $fe
    sbc a
    sbc a
    ld sp, hl
    ld sp, hl
    ei
    ei
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $df
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $30
    rst $30
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    and b
    and b
    ld sp, $7331
    ld [hl], e
    ld h, a
    ld h, a
    ld d, e
    ld d, e
    jp $c33c


    inc a
    jp $c33c


    inc a
    pop bc
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c0
    ccf
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld sp, hl
    ld bc, $01f9
    pop af
    ld bc, $01f1
    pop hl
    ld bc, $03e3
    rst $00
    rlca
    rst $08
    rrca
    add a
    rlca
    adc a
    rrca
    rra
    rra
    ccf
    ccf
    ld h, a
    ld a, e
    ld c, e
    ld [hl], h
    rst $08
    ldh a, [$bf]
    ret nz

    sbc l
    ld [c], a
    db $10
    rst $28
    ld a, h
    add e
    ld l, [hl]
    pop de
    xor l
    db $d3
    add e
    rst $38
    cp a
    rst $38
    ld a, a
    ld a, a
    rst $28
    rst $28
    rst $20
    rst $20
    di
    di
    ld a, [c]
    ld a, [c]
    ld hl, sp-$08
    rst $18
    rst $38
    ld hl, sp-$08
    db $fd
    db $fd
    ldh [$e0], a
    ldh a, [$f0]
    rst $10
    rst $10
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    dec d
    dec d
    call c, $94dc
    sub h
    call nz, Call_03c_41c4
    pop bc
    cp [hl]
    cp a
    adc c
    adc c
    rst $38
    rst $38
    xor e
    rst $28
    cp a
    cp a
    ld a, a
    ld a, a
    rst $08
    rst $28
    rst $28
    rst $38
    cp a
    cp a
    adc $cf
    rst $30
    rst $30
    rst $38
    rst $38
    sbc a
    sbc a
    db $fd
    rst $38
    call z, $7bff
    ei
    ld l, a
    rst $28
    rst $38
    rst $38
    ei
    rst $38
    sbc a
    rst $38
    ld e, a
    ld a, a
    ret c

    rst $38
    inc a
    ccf
    ret c

    rst $18
    pop de
    rst $18
    ld h, a
    ei
    rst $20
    rst $38
    ld l, a
    ld a, a
    rst $38
    rst $38
    set 1, a
    rst $18
    rst $18
    ld c, a
    ld c, a
    dec d
    rra
    sbc a
    sbc a
    sbc e
    sbc e
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $00
    rst $00
    jp $e7c3


    rst $20
    rst $00
    rst $00
    rst $00
    rst $00
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    dec e
    rra
    dec b
    ld b, $c4
    rst $00
    db $fc
    rst $38
    cp [hl]
    rst $38
    rst $18
    rst $38
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    cpl
    db $10
    ld l, a
    db $10
    ld l, a
    db $10
    ld e, a
    jr nz, jr_03c_703e

    jr nz, jr_03c_7040

    ld hl, $215f
    ld e, a
    ld hl, $215f
    rst $18
    ld hl, $21df
    rst $18
    inc hl
    rst $18
    inc hl
    db $fc
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
    add c
    nop
    inc a
    inc a
    dec a
    dec a
    ld h, [hl]
    ld a, a
    pop hl
    sbc a
    ld a, c
    add [hl]
    nop
    rst $38
    rst $38
    rst $38
    db $db
    db $db
    db $eb
    db $eb
    di
    di
    db $fd
    db $fd
    db $e3
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    xor a
    rst $30
    rst $30
    rst $18
    rst $38
    db $fc
    rst $38
    db $fc
    di
    cp a
    ld b, d
    ld c, c
    or [hl]
    add hl, hl
    or $a9
    ld d, [hl]
    ret nz

    ccf
    ld [$c7d7], a
    rst $38
    rst $30
    rst $38
    cp a
    cp a
    xor $ee
    and $e6

jr_03c_703e:
    ld a, $3e

jr_03c_7040:
    scf
    scf
    ld a, $3e
    rst $38
    rst $38
    db $76
    db $76
    or $f6
    ld a, a
    ld a, a
    ccf
    ccf
    ld a, $3e
    dec hl
    cpl
    sbc a
    sbc a
    sbc $de
    call c, Call_03c_7edc
    ld a, [hl]
    ld d, e
    ld e, a
    rst $38
    rst $38
    xor $ee
    ei
    rst $38
    ld a, a
    rst $38
    cp [hl]
    cp $3f
    rst $38
    ei
    rst $38
    sbc c
    sbc l
    rst $38
    rst $38
    db $fd
    db $fd
    rst $20
    rst $28
    rst $38
    rst $38
    and a
    xor a
    db $fd
    db $fd
    rst $18
    rst $18
    rst $38
    rst $38
    push af
    db $fd
    ld c, a
    rst $38
    rst $30
    rst $38
    ld h, a
    rst $38
    rst $18
    rst $38
    daa
    ccf
    rst $00
    rst $18
    rst $28
    rst $38
    ld l, c
    ld sp, hl
    rst $28
    rst $38
    rst $28
    rst $38
    dec sp
    dec sp
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    inc de
    di
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $30
    rst $30
    rlca
    rlca
    adc $ce
    ld a, [c]
    ld a, [c]
    ld sp, hl
    ld sp, hl
    ld a, [c]
    ld a, [c]
    add e
    add e
    rst $18
    rst $18
    cp $fe
    or a
    rst $30
    cp a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    dec h
    rst $20
    cp a
    rst $38
    cp a
    rst $38
    cp a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
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
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $20
    ldh [$c7], a
    ret nz

    ld h, a
    ldh [$e7], a
    ld h, b
    ld h, a
    ldh [$67], a
    ldh [$c7], a
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $20
    ldh [$c7], a
    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    jp $c3c0


    ret nz

    jp nz, $c2c0

    ret nz

    ld [c], a
    ldh [$e2], a
    ldh [$e0], a
    ldh [$d0], a
    ret nc

    pop hl
    ldh [$f1], a
    ldh a, [$e1]
    ldh [$e1], a
    ldh [$c1], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    ld b, b
    ld b, b
    ret nz

    ret nz

    add b
    add b
    ld b, b
    ld b, b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    sub b
    sub b
    ret nz

    ret nz

    add b
    add b
    ld b, b
    ld b, b
    ret nz

    ret nz

    ldh [$e0], a
    ret nz

    ret nz

    ret nc

    ret nc

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    or b
    or b
    ret nz

    ret nz

    ret nz

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
    ret z

    ret z

    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret z

    ret z

    ret nz

    ret nz

    add b
    add b
    ret nc

    ret nc

    ret nz

    ret nz

    sub b
    sub b
    ret nz

    ret nz

    ret z

    ret z

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret z

    ret z

    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    ret z

    ret z

    ret nz

    ret nz

    ret nz

    ret nz

    ret z

    ret z

    ret nz

    ret nz

    ret nc

    ret nc

    adc b
    adc b
    jr jr_03c_71ce

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    ret z

    ret z

    ret z

    ret z

    ret nz

    ret nz

    ret c

    ret c

    sub b
    sub b
    ret c

    ret c

    ret nc

    ret nc

    ret nc

    ret nc

    ret nz

    ret nz

jr_03c_71ce:
    add b
    add b
    push hl
    add d
    push hl
    add d
    push hl
    add d
    push hl
    add d
    ld [$ca85], a
    dec b
    jp z, $ca05

    dec b
    dec [hl]
    rst $08
    dec [hl]
    rst $08
    ld l, e
    sbc [hl]
    ld l, e
    sbc [hl]
    ld l, e
    sbc [hl]
    ld l, e
    sbc [hl]
    ld l, e
    sbc [hl]
    ld l, e
    sbc [hl]
    ld d, a
    cp h
    ld d, a
    cp h
    ld d, a
    cp h
    ld d, a
    cp h
    rla
    db $fc
    rla
    db $fc
    cpl
    ld hl, sp+$2f
    ld hl, sp+$2e
    ld sp, hl
    ld l, $f9
    ld l, $f9
    ld l, $f9
    ld a, $f1
    ld e, [hl]
    pop af
    ld e, [hl]
    pop af
    ld e, h
    di
    ld e, h
    di
    ld e, h
    di
    ld a, h
    db $e3
    cp h
    db $e3
    cp h
    db $e3
    cp b
    rst $20
    cp b
    rst $20
    cp b
    rst $20
    ld hl, sp-$39
    ld a, b
    rst $00
    ld [hl], b
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    rst $08
    ld [hl], b
    rst $08
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

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
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld b, $7e
    ld b, $7c
    dec b
    ld a, h
    dec c
    ld a, h
    dec c
    ld a, h
    dec c
    inc a
    dec c
    inc a
    dec c
    inc a
    dec c
    inc a
    dec c
    inc a
    dec b
    ld a, $06
    ld a, $06
    ld a, $06
    ld a, $06
    ld a, $06
    ld a, $06
    ld e, $06
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rra
    ld bc, $011f
    rra
    ld bc, $011f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
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
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
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
    cp $06
    cp $06
    cp $06
    cp $0e
    cp $0e
    cp $0e
    db $fc
    dec c
    db $fc
    dec c
    db $fc
    dec c
    db $fc
    dec c
    db $fc
    dec e
    db $fc
    dec e
    ld hl, sp+$1b
    ld hl, sp+$1b
    ld sp, hl
    dec de
    ld sp, hl
    dec de
    ld sp, hl
    dec de
    ld sp, hl
    dec sp
    ld sp, hl
    dec sp
    pop af
    scf
    pop af
    scf
    di
    scf
    di
    scf
    di
    scf
    di
    ld [hl], a
    db $e3
    ld l, a
    db $e3
    ld l, a
    db $e3
    ld l, a
    db $e3
    ld l, a
    db $e3
    ld l, a
    rst $20
    ld l, a
    and $ee
    add $de
    add $de
    add $de
    add $de
    call z, $ccdd
    db $dd
    adc h
    cp l
    adc h
    cp l
    adc h
    cp l
    sbc h
    cp l
    sbc b
    cp e
    sbc b
    cp e
    jr @+$7d

    jr @+$7d

    jr @+$7d

    jr c, @+$7d

    jr nc, @+$79

    jr nc, @+$79

    jr nc, @+$79

    jr nc, @-$0b

    jr nc, @-$0b

    ld h, b
    jp hl


    ld h, b
    db $eb
    ld h, b
    rst $28
    ld h, b
    db $e3
    ld h, b
    db $e3
    ld h, b
    push hl
    ret nz

    pop de
    ret nz

    db $db
    ret nz

    push de
    ret nz

    rst $18
    ret nz

    rst $10
    ret nz

    db $d3
    ld h, b
    db $e3
    ld h, b
    db $eb
    ld h, b

jr_03c_7379:
    rst $28
    ld h, b

jr_03c_737b:
    db $eb
    ld [hl], b
    di
    ld [hl], b
    rst $30
    jr nc, jr_03c_7379

    jr nc, jr_03c_737b

    jr c, jr_03c_7401

    jr c, @+$7d

    jr c, @+$7d

    jr @+$7d

    jr @+$7d

    inc e
    ld a, l
    inc e
    ld a, l
    sbc h
    cp l
    sbc h
    cp l
    adc [hl]
    cp [hl]
    adc [hl]
    cp [hl]
    adc [hl]
    cp [hl]
    adc [hl]
    cp [hl]
    rst $08
    rst $18
    rst $08
    rst $18
    rst $00
    rst $18
    rst $00
    rst $18
    rst $00
    rst $18
    rst $00
    rst $18
    rst $00
    rst $18
    db $e3
    rst $28
    db $e3
    rst $28
    db $e3
    rst $28
    db $e3
    rst $28
    db $e3
    ld l, a
    pop hl
    ld l, a
    pop hl
    ld l, a
    pop af
    ld [hl], a
    pop af
    ld [hl], a
    pop af
    ld [hl], a
    pop af
    ld [hl], a
    ldh a, [$37]
    ldh a, [$37]
    ldh a, [$37]
    ld hl, sp+$3b
    ld hl, sp+$3b
    ld hl, sp+$3b
    ld hl, sp+$3b
    rst $00
    rst $18
    rst $00
    rst $18
    rst $08
    rst $18
    adc $de
    adc [hl]
    cp [hl]
    adc [hl]
    cp [hl]
    adc [hl]
    cp [hl]
    sbc [hl]
    cp [hl]
    sbc [hl]
    cp [hl]
    sbc h
    cp l
    inc e
    ld a, l
    dec a
    ld a, h
    dec a
    ld a, h
    dec a
    ld a, h
    add hl, sp
    ld a, d
    jr c, jr_03c_746b

    jr c, jr_03c_746d

    jr c, @-$03

    jr c, @-$03

    jr c, @-$03

    ld [hl], b
    rst $30
    ld [hl], b
    rst $30
    ld [hl], b
    rst $30
    ld [hl], b
    rst $30
    ld [hl], b

jr_03c_7401:
    rst $30
    ldh a, [$f7]
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    pop bc
    sbc $c3
    call c, $dcc3
    rst $00
    ret nc

    rst $00
    ret c

    rst $00
    ret c

    adc a
    or b
    adc a
    or b
    adc a
    or b
    adc a
    or b
    xor a
    sub b
    cpl
    ld d, b
    ld e, a
    jr nz, @+$61

    jr nz, @+$61

    jr nz, @+$61

    jr nz, jr_03c_748e

    jr nz, jr_03c_7450

    ldh [rIF], a
    ldh a, [$1f]
    ldh [$9e], a
    ld h, c
    ld e, [hl]
    and c
    ld e, $e1
    ld e, [hl]
    and c
    ld e, h
    and e
    inc c
    di
    inc b
    ei
    add h
    ld a, e
    inc c
    di
    inc c
    di
    inc c
    di
    ld c, $f1
    ld a, [bc]
    push af

jr_03c_7450:
    ld e, $e1
    ld e, $e1
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
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
    inc bc
    db $fc
    inc bc
    db $fc
    ld b, e

jr_03c_746b:
    cp h
    inc bc

jr_03c_746d:
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld b, e
    cp h
    dec bc
    db $f4
    ld h, e
    sbc h
    inc bc
    db $fc
    inc bc
    db $fc
    inc de
    db $ec
    inc de
    db $ec
    ld de, $01ee
    cp $21
    sbc $01
    cp $01
    cp $01
    cp $00
    rst $38

jr_03c_748e:
    nop
    rst $38
    ld [hl-], a
    call $f708
    ld [$24f7], sp
    db $db
    nop
    rst $38
    nop
    rst $38
    ld b, d
    cp l
    ld b, b
    ccf
    ld b, h
    dec sp
    nop
    ld a, a
    inc b
    ld a, e
    nop
    ld a, a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ld hl, sp-$05
    ld hl, sp-$05
    ld a, b
    ei
    nop
    ld a, a
    nop
    ld a, a
    inc h
    ld e, e
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    and b
    ld e, a
    adc e
    ld [hl], h
    rlca
    ld hl, sp+$0e
    pop af
    ld [$06f7], sp
    ld sp, hl
    ld c, l
    or d
    ld a, [bc]
    push af
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$03]
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$df]
    jr nz, @+$01

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
    rst $38
    nop
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ccf
    ret nz

    ld e, a
    and b
    rra
    ldh [$2f], a
    ret nc

    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $81fe
    ld a, [hl]
    add b
    ld a, a
    add c
    ld a, [hl]
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
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
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

jr_03c_7581:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b

jr_03c_7589:
    ld a, a
    inc bc
    db $fc
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    jr nz, jr_03c_7581

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_03c_7589

    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld b, $07
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
    add hl, bc
    nop
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
    nop
    nop
    nop
    nop
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
    dec c
    ld c, $00
    nop
    nop
    ld b, $0f
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
    ld de, $1312
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_03c_7638

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03c_7648

    ld [hl+], a
    inc hl
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03c_7659

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03c_7669

jr_03c_7638:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03c_7679

    nop
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_03c_7648:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b

jr_03c_7659:
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

jr_03c_7669:
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld l, d
    inc hl
    ld l, e
    inc hl

jr_03c_7679:
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
    ld a, [hl]
    ld a, a
    add b
    add c
    nop
    ld l, c
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
    sub c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
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
    ld bc, $2101
    ld bc, $0000
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
    ld bc, $0000
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
    inc bc
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
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
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
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
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
    jr nz, jr_03c_77ba

jr_03c_77ba:
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
    inc b
    inc b
    inc b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld hl, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0404
    ld [bc], a
    ld bc, $0141
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
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
    ld bc, $0101
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
    nop
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
    ld bc, $01fe
    cp $01
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
    rlca
    ld hl, sp+$0f
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $c0
    ccf
    pop af
    rrca
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
    rst $38
    inc bc
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
    add b
    rst $38
    sbc [hl]
    rst $38
    or e
    rst $38
    db $ed
    rst $38
    jp hl


    rst $18
    rst $38
    rst $08
    pop af
    add c
    pop hl
    add c
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    inc bc
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
    ld hl, sp+$07
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
    nop
    rst $38
    nop
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
    ret nz

    ccf
    ret nz

    ccf
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
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
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
    rst $38
    nop
    rst $38
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
    cp $01
    cp $01
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
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$06
    ld hl, sp+$06
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    db $e3
    rra
    db $e3
    rra
    jp $c23f


    ccf
    nop
    db $fc
    nop
    db $fc
    nop

Jump_03c_79e5:
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add e
    ld a, h
    jp $c33c


    inc a
    jp $c33c


    inc a
    jp $c33c


    inc a
    jp $c33c


    inc a
    pop bc
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c0
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rSC]
    ld a, [c]
    ld [bc], a
    ld a, [c]
    ld [bc], a
    ld [c], a
    ld bc, $05e1
    push hl
    inc bc
    jp $d313


    inc de
    db $d3
    rla
    rst $10
    rla
    sub a
    rla
    sub a
    rra
    sbc a
    ld c, $9e
    rra
    rra
    dec b
    dec b
    ld b, [hl]
    ld b, [hl]
    adc a
    adc a
    rst $18
    rst $18
    sbc a
    sbc a
    sbc a
    sbc a
    ld [$e9ff], a
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ret nz

    cp $81
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $1ffe
    jr nz, jr_03c_7af2

    jr nz, jr_03c_7af4

    jr nz, jr_03c_7ae6

    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rlca
    ld [$8807], sp
    rlca
    adc b

jr_03c_7ae6:
    rlca
    adc b
    inc bc
    adc h
    inc bc
    call nz, $c403
    nop
    rst $00
    nop
    rst $20

jr_03c_7af2:
    ld b, b
    and e

jr_03c_7af4:
    ld b, b
    and e
    ld b, b
    or c
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a

jr_03c_7afe:
    ldh [rNR23], a
    ldh [rNR23], a
    rst $20
    jr @-$17

    jr jr_03c_7afe

    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$bf60], sp
    ret nc

    ld a, a
    ret nz

    ld l, a
    ret nz

    ld l, a
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop

jr_03c_7b22:
    rst $38
    nop

jr_03c_7b24:
    rst $38
    nop
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
    di
    inc c
    di
    inc c
    ld [hl], e
    adc h
    ld h, e
    sbc h
    ld h, e
    sbc h
    jr nz, jr_03c_7b22

    jr nz, jr_03c_7b24

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [$0e], a
    xor $0b
    rst $08
    ld [bc], a
    rst $08
    inc c
    jp $d21d


    dec c
    sub d
    add hl, bc
    sub [hl]
    inc e
    add e
    ld a, [de]
    rlca
    ld c, $1f
    dec sp
    dec sp
    nop
    nop
    db $10
    stop
    nop
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
    ld b, $06
    ld b, [hl]
    ld b, [hl]
    push bc
    push bc
    add a
    add a
    rst $00
    rst $00
    call nz, $88c4
    adc b
    add a
    add a
    add [hl]
    add [hl]
    adc c
    adc c
    adc e
    adc e
    rrca
    rrca
    ld c, $0f
    scf
    scf
    ld a, a
    ld a, a
    rra
    rra
    dec de
    rra
    ld [$6b1f], sp
    ld a, a
    ld l, [hl]
    ld a, [hl]
    ld l, e
    ld a, e
    xor $ff
    ld b, a
    ld a, a
    add e
    rst $38
    sbc l
    ld [c], a
    cp a
    ret nz

    cp l
    jp nz, $c03f

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
    ldh [rP1], a
    ldh [rP1], a
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    ld bc, $00e0
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
    rst $38
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
    jr nc, jr_03c_7c70

    ld de, $1911
    add hl, de
    ld b, e
    ld b, e
    ld sp, $7031
    ld [hl], b
    jr nz, jr_03c_7c6c

    dec c
    db $fd
    ld a, c
    add a
    ei
    inc b
    cp $01
    rst $38
    nop
    cp $01
    ld hl, sp+$07
    push af
    rrca
    add hl, hl
    rst $18
    ld a, a
    sbc a
    xor b
    ld hl, sp-$04
    db $fc
    ld e, h
    ld e, h
    db $fc
    db $fc
    ld a, b
    ld a, b
    ld h, b
    ld h, b

jr_03c_7c6c:
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a

jr_03c_7c70:
    ld h, b
    ld h, b
    ld e, b
    ld e, b
    ld e, b
    ld e, b
    ld c, [hl]
    ld c, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    add $c6
    ld a, [hl]
    ld a, [hl]
    cp a
    rst $38
    ret nz

    ret nz

    or a
    rst $30
    ret nz

    ret nz

    call c, $addc
    rst $38
    ld c, a
    rst $38
    push hl
    rst $20
    or e
    rst $38
    db $ec
    di
    or [hl]
    ld a, [$dbdd]
    ld b, $fd
    ld [$36ff], sp
    ld a, [$fc74]
    dec hl
    rst $30
    sbc a
    ld a, a
    cp h
    ld e, h
    sbc a
    ld a, a
    ld b, a
    cp a
    xor $ff
    ld e, $ff
    call z, $cd3f
    rst $38
    ld l, a
    sub a
    ldh [$1f], a
    pop hl
    rra
    db $e3
    rra
    ld sp, hl
    rlca
    rst $38
    nop
    cp $01
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
    ld hl, sp+$06
    ldh a, [$0e]
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    nop

Call_03c_7cdc:
    nop
    nop
    nop
    nop
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
    inc bc
    db $fc
    ld a, a
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
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, a
    db $fc
    ld a, a
    db $fc
    ccf
    db $fc
    rra
    db $fc
    rra
    db $fc
    rrca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    inc bc
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
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    add b
    add b
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ret nz

    and b

jr_03c_7d39:
    and b
    ld b, b
    ld b, b
    ldh [$e0], a
    sbc c
    ld a, c
    add hl, de
    jp hl


    ld a, h
    adc l
    ld sp, hl
    dec b
    ld [$6a16], a
    sub [hl]
    add $fe
    ld e, b
    ret c

    jr @+$1a

    inc [hl]
    inc [hl]
    ld [hl], h
    ld [hl], h
    inc [hl]
    inc [hl]
    ld a, $3e
    ld c, $0e
    rlca
    rlca
    ld h, b
    ld h, b
    ld hl, $0321
    inc bc
    ld b, $06
    rrca
    rrca
    ld a, [de]
    ld e, $1f
    rra
    cpl
    ccf
    ld a, a
    ld a, a
    db $ed
    db $ed
    rst $28
    rst $38
    add l
    add a
    rst $20

jr_03c_7d75:
    rst $20
    adc h

jr_03c_7d77:
    adc a
    rst $30
    rst $38
    rst $18
    rst $38
    ld a, a
    ld a, a
    rst $08
    rst $38
    ld e, [hl]
    db $db
    db $eb
    rst $28
    inc bc
    inc bc
    cp $ff
    ld [hl], l
    cp $03
    inc bc
    nop
    nop
    ld l, b
    ld l, b
    jr nz, jr_03c_7db2

    inc h
    inc a
    db $fc
    db $fc
    sbc e
    sbc e
    and a
    rst $38
    ret z

    cp a
    db $dd
    ld a, $c9
    ld a, $02
    rst $38
    sub a
    rst $38
    pop af
    db $fd
    pop de
    rst $28
    push af
    db $eb
    ld [c], a
    cp $23
    di
    adc a
    ld a, a
    ldh [rNR23], a

jr_03c_7db2:
    ret nz

    jr c, jr_03c_7d75

    jr nc, jr_03c_7d77

    jr nc, jr_03c_7d39

    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    nop
    ret nz

    nop
    ret nz

    nop
    add c
    nop
    add c
    inc bc
    add b
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ldh [rIE], a
    ldh [rIE], a
    call nz, $c4fb
    ei
    adc h
    di
    adc h
    di
    ld c, $f1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld a, $c1
    ld a, $c1
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
    ld a, [hl]

jr_03c_7e05:
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    inc a
    jp $c33c


    inc a
    jp $e718


    jr jr_03c_7e05

    db $10
    rst $28
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
    cp $01
    ld a, [hl]
    ld bc, $017e
    inc a
    inc bc
    inc a
    inc bc
    jr jr_03c_7e43

    nop
    rra
    nop
    rrca
    nop
    rlca
    add b

jr_03c_7e43:
    add e
    ld b, b
    jp $c1c0


    add b
    add c
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
    jr jr_03c_7e6e

    adc b
    adc b
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    add c
    add c
    pop de
    pop de
    add b
    ret nz

    jr nz, jr_03c_7ece

jr_03c_7e6e:
    ld hl, sp-$08
    ret nz

    ldh [$d8], a
    ld hl, sp-$02
    cp $60
    ld [hl], b
    xor h
    db $fc
    and a
    rst $38
    ld [$9cfa], a
    sub h
    or l
    ld a, l
    rst $10
    ccf
    xor d
    ld l, [hl]
    cp a
    ld a, e
    ld c, l
    ei
    ld a, [de]
    db $fd
    db $dd
    rst $38
    ld c, d
    ld a, l
    ld a, [$1efd]
    add hl, de
    ld sp, hl
    cp $1e
    rra
    sbc $de
    rst $00
    rst $00
    add sp, $6f
    ld l, a
    rst $28
    ei
    rst $38
    ei
    rst $38
    push hl
    cp $17
    ld d, $7a
    ld a, e
    push hl
    rst $38
    xor $f1
    ret z

    rst $08
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
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf

jr_03c_7ece:
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
    add b
    ld a, a
    add b
    ld a, a

Call_03c_7edc:
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $05
    ld a, [$fa05]
    ld c, l
    ld [hl-], a
    dec a
    ld [bc], a
    inc a
    inc bc
    inc e
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc b
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
    add b
    add e
    nop
    inc bc
    ld b, b
    ld b, e
    nop
    ld [bc], a
    nop
    inc bc
    ld [hl], b

jr_03c_7f23:
    db $76
    jr nz, jr_03c_7f4c

    jr @+$40

    jr c, @+$3c

    jr c, @+$3c

    inc d
    inc e
    ld e, $1e
    ld d, $1e
    add a
    add a
    add a
    add a
    rlca
    rlca
    add b
    add b
    and c
    and c
    ld b, c
    pop bc
    ld b, e

Call_03c_7f3f:
    ld b, e
    ld de, $f011
    ldh a, [$f9]
    ld sp, hl
    cp b
    cp b
    db $10
    db $10
    add b
    add b

jr_03c_7f4c:
    ld c, h
    call z, Call_000_0c0c
    sbc $de
    db $f4
    ld a, $f7
    ccf
    db $d3
    ccf
    cp $1e
    xor $de
    rst $28
    sbc a
    ld c, c
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a

jr_03c_7f83:
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
    ldh [$3f], a
    ret nz

    jr jr_03c_7f83

    rlca
    ld hl, sp+$38
    rst $00
    ret nz

    jr nc, jr_03c_7f23

    ld b, d
    add b
    ld b, d
    add b
    ld b, d
    add b
    ld b, e
    add b
    ld b, e
    add b
    ld b, d
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, d
    add b
    ld b, d
    add b
    ld b, d
    add b
    ld b, e
    add b
    ld b, e
    add b
    inc bc
    add b
    rlca
    add b
    rlca
    add b
    inc bc
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    nop
    add b
    nop
    add b
    ld [bc], a
    add b
    rlca
    add b
    dec b
    add b
    rlca
    add b
    rlca
    add b
    rlca
    nop
    add e
    nop
    add b
    nop
    add h
    ld a, b
    rst $38
    ld a, d
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    db $fd
    ld a, c
    db $fc
    ld a, d
    db $fd
    ld a, c
    db $fc
    ld a, b
    db $fd
    ld a, b
    db $fd
    ld a, b
    db $fd
    ld a, b
    db $fd
    ld a, c
    db $fc
    ld a, c
    db $fc
    ld a, d
    db $fd
