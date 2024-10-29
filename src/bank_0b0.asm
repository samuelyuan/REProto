SECTION "ROM Bank $0b0", ROMX[$4000], BANK[$b0]

    inc c
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [rNR23]
    ldh [rNR23], a
    ldh [$08], a
    ldh a, [$08]
    ldh a, [$d8]
    ldh [$d8], a
    ldh [$58], a
    ldh [$c7], a
    ld hl, sp-$28
    ldh [$d8], a
    ldh [$58], a
    ldh [$df], a
    ldh [$d8], a
    ldh [$df], a
    ldh [$df], a
    ldh [$c7], a
    ld hl, sp-$31
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$ce]
    ldh a, [$cf]
    ldh a, [$de]
    ldh [$de], a
    ldh [$5d], a
    ldh [$dd], a
    ldh [$dd], a
    ldh [$dc], a
    ldh [$da], a
    ldh [$da], a
    ldh [$f4], a
    ret nz

    rst $38
    ret nz

    ld b, c
    cp $60
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    db $fc
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
    db $fc
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $00
    rst $38
    add b
    ldh [rNR41], a
    ldh [$60], a
    ldh [$e0], a
    pop hl
    ldh [$e3], a
    ldh [$e6], a
    ldh [$ec], a
    ret nz

    ld hl, sp-$80
    ldh a, [rNR41]
    ldh [$60], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    rst $38
    nop
    rst $38
    ld bc, $f1ff
    rra
    rst $38
    rst $20
    rra
    ld h, e
    rra
    db $e3
    rra
    ld h, a
    rra
    daa
    rra
    daa
    rra
    ld h, a
    rra
    cpl
    rra
    rlca
    rra
    cpl
    rra
    rrca
    rra
    rrca
    rra
    sbc a
    ld a, a
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
    ld a, [$fbf5]
    db $fc
    ld a, [$8ac5]
    push af
    jp c, Jump_0b0_7be5

    add h
    ld c, d
    or l
    ld a, e
    add h
    cp $01
    jp nc, $fffd

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rrca
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
    nop
    nop
    nop
    nop
    nop
    rst $30
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
    inc e
    db $fc
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $e8
    nop
    ret nz

    nop
    ldh [rP1], a
    and l
    nop
    sub h
    nop
    ld c, d
    nop
    adc h
    nop
    jp nc, $4a00

    nop
    adc d
    nop
    adc d
    nop
    ld b, b
    nop
    ld d, c
    nop
    add hl, hl
    nop
    add h
    nop
    or d
    nop
    jr nz, jr_0b0_414e

jr_0b0_414e:
    ld hl, $fd00
    ld [bc], a
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
    ld a, a
    ld a, a
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
    ld sp, hl
    rst $38
    pop af
    rst $38
    push bc
    rst $38
    sbc l
    rst $38
    dec a
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    dec b
    rra
    nop
    ld [hl], d
    nop
    ld [c], a
    nop
    add d
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0302
    nop
    ccf
    ccf
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
    rst $38
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
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    di
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
    di
    add sp, -$18
    add sp, -$08
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $f1
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $013e
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    nop
    cp a
    ld b, c
    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    push hl
    rra
    rst $28
    rst $38
    ld h, c
    rra
    ld bc, $011f
    rra
    pop hl
    rra
    and c
    rra
    jp hl


    ccf
    ld h, l
    rra
    and c
    rra
    ld b, c
    rra
    and c
    rra
    and c
    rra
    ld bc, $2f1f
    rra
    ld c, e
    rra
    adc e
    rra
    ld c, a
    rra
    ld b, e
    ccf
    inc bc
    ld a, a
    pop hl
    rra
    inc bc
    rst $38
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
    cp $fe
    ld sp, hl
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    push af
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    nop
    nop
    rlca
    nop
    rrca
    nop
    rra
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
    rst $38
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    rst $38
    ld hl, sp-$41
    ld hl, sp+$36
    ld hl, sp+$30
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp+$37
    ld hl, sp-$10
    rst $38
    ld a, a
    rst $38
    scf
    ld hl, sp+$77
    ld hl, sp+$77
    ld hl, sp+$75
    ld a, [$f0ff]
    rst $38
    rst $38
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
    ld bc, $7fff
    rst $38
    rst $38
    rst $38
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
    db $76
    add b
    ld [hl+], a
    sub h
    ld a, [hl+]
    sub h
    nop
    nop
    jp z, Jump_000_0634

    nop
    ld c, a
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0100
    nop
    rst $38
    nop
    push bc
    ld a, [hl-]
    rst $38
    nop
    dec b
    ld a, [$fffe]
    rst $38
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $e5
    ld a, a
    call $3db2
    jp nz, $86f9

    push af
    adc d
    db $ed
    sub d
    add b
    ld [c], a
    nop
    add d
    add b
    add d
    add a
    add a
    ld hl, sp-$08
    ldh a, [$f0]
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
    add e
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
    ldh a, [rIE]
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
    ld e, d
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    ld l, a
    ei
    db $f4
    xor a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    cp l
    ld b, d
    rst $38
    rra
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
    inc bc
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
    ldh a, [$f0]
    nop
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_0b0_43bc:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    rst $38
    add b
    rst $38
    or e
    ret z

    and d
    ret


    cp [hl]
    pop bc
    add b
    nop
    ld a, a
    add b
    nop
    sub b
    adc a
    jr nz, jr_0b0_43f9

    nop
    jr nz, jr_0b0_43dc

jr_0b0_43dc:
    jr nz, jr_0b0_43de

jr_0b0_43de:
    nop
    jr nz, jr_0b0_4401

    nop
    ldh a, [rNR10]
    ld d, e
    cp h
    rst $38
    db $10
    cp a
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    inc bc
    db $fd
    ld a, $df

jr_0b0_43f9:
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38

Jump_0b0_43ff:
    nop
    db $fd

jr_0b0_4401:
    ld [bc], a
    rst $38
    nop
    cp a
    nop
    rra
    nop
    rrca
    nop
    rst $38
    rst $38
    rrca
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
    halt
    rst $38
    cp $ff
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
    sbc b
    daa
    ret nz

    inc a
    nop
    nop
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ret z

    scf
    rst $38
    rst $38
    ld a, [c]
    dec c
    push af
    ld a, [bc]
    ei
    inc b
    ld a, a
    add b
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
    add b
    ld a, a
    nop
    rst $38
    nop
    ld b, b
    inc b
    ld b, b
    nop
    ld b, b
    nop
    nop
    or a
    nop
    add h
    inc bc
    nop
    daa
    nop
    ccf
    nop
    nop
    nop
    nop
    add b
    nop
    add b
    rra
    jr nz, jr_0b0_44c7

    ld e, $a1
    nop
    add b
    nop
    add [hl]
    nop
    add h
    ld bc, $01a4
    and h
    ld bc, $0084
    add d
    nop
    cp a
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    cp a
    ld b, c

jr_0b0_44c7:
    cp [hl]
    ld b, c
    cp [hl]
    ld l, c
    sub [hl]
    ld b, b
    cp a
    ret nz

jr_0b0_44cf:
    ccf
    add b
    ccf
    cp a
    nop
    cp a
    nop
    cp [hl]
    nop
    cp b
    nop
    db $fc
    ret nz

    rst $38
    rst $38

jr_0b0_44de:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $e100
    nop
    reti


    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    ld a, [$f704]
    ld [$f8f7], sp
    rst $38
    rrca
    rst $28
    db $10
    xor $10
    db $ec
    db $10
    ret c

    jr nz, jr_0b0_44cf

Jump_0b0_450f:
    jr nz, jr_0b0_4511

jr_0b0_4511:
    rst $38
    nop
    nop
    ccf
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    inc a
    jp $ff0f


    ldh a, [rIE]
    adc b
    ld [hl], a
    jp nz, $f03d

    rrca

jr_0b0_4526:
    ld a, [$ff05]
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
    rst $38
    rst $38
    db $fc
    db $fc
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
    nop
    inc d
    nop
    inc d
    nop
    inc d
    nop
    nop
    ld h, l
    add b
    add b
    jr nz, jr_0b0_44de

    ld h, h
    ld [bc], a
    push hl
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_0b0_4526

    nop
    pop hl
    nop
    ldh [rP1], a
    nop
    ld bc, $0200
    nop
    ld bc, $6280
    add b
    ld h, d
    add b
    nop
    nop
    ld bc, $0162
    or $ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @-$17

    cp h
    ld b, e
    ld a, h
    add e
    ld a, b
    add a
    add hl, de
    and $1a
    push hl
    inc de
    db $ec
    rst $30
    ld [$08d6], sp
    ld [$0010], sp
    db $10
    ld hl, $ff10
    ldh a, [$7f]
    ld a, a
    jr nz, jr_0b0_45a2

jr_0b0_45a2:
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    add c
    nop
    add e
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

    ret nz

    jr c, jr_0b0_4602

    ld b, $06
    ld bc, $0001
    nop
    nop
    rst $38
    inc bc
    rra
    add a
    ld a, a
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    and b
    ld e, a
    ld b, l
    cp d
    xor d
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
    nop
    nop
    nop
    nop
    ld a, a
    nop

jr_0b0_4602:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rra
    rst $38
    rst $38
    rst $38
    nop
    ld sp, $0100
    nop
    ld bc, $0000
    rst $38
    nop
    sbc $20
    db $dd
    ld [hl+], a
    dec b
    ld a, [$0055]
    dec de
    nop
    nop
    nop
    db $fc
    nop
    adc d
    inc [hl]
    sbc d
    nop
    or $00
    jr jr_0b0_463e

jr_0b0_463e:
    ld hl, sp+$00
    ld d, d
    nop
    ld [hl], d
    ld e, $f2
    ld e, $76
    ld [de], a
    ld d, d
    cp [hl]
    ld e, [hl]
    or e
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $ff
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
    sbc b
    ld h, a
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    add e
    nop
    ld bc, $1200
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    add b
    ld c, [hl]
    ld b, b
    jr nc, jr_0b0_46a4

    ld [$0408], sp
    inc b
    ld a, a
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $007f
    rst $38
    nop
    or a
    nop
    ccf
    nop
    dec e
    nop
    rlca
    nop
    inc bc
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
    add b
    rst $38
    ld b, b
    rst $38
    ld bc, $ffff
    rst $38

jr_0b0_46a4:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld c, $ff
    xor h
    ld e, a
    xor h
    ld e, a
    ld e, [hl]
    xor a
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
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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

Jump_0b0_46f7:
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl-]
    ld b, l
    rra
    ld h, b
    nop
    ld b, b
    nop
    nop
    jr c, jr_0b0_470f

    jr c, jr_0b0_4711

    jr nc, jr_0b0_475b

    nop
    ld a, a
    rra

jr_0b0_470f:
    nop
    ld b, c

jr_0b0_4711:
    nop
    ld b, b
    nop
    dec d
    nop
    ld [$1615], sp
    nop
    dec e
    nop
    inc b
    nop
    dec hl
    nop
    ld h, $00
    ld h, $01
    ld a, $01
    inc bc
    nop
    nop
    ccf
    or l
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    jr @+$01

    rlca
    rst $38
    ld [hl], b
    adc a
    ret z

    scf
    ld a, h
    add e
    ld e, [hl]
    and c
    rst $30
    ld [$00ff], sp
    ei
    inc b
    cp $01
    rst $38
    rst $38
    rst $38
    nop
    ld a, l
    ld [bc], a
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, l
    nop
    db $fd

jr_0b0_475b:
    nop
    cp $00
    cp $80
    rst $38
    ld h, b
    rst $38
    jr @+$01

    ld b, $bf
    ld bc, $00ff
    rst $18
    nop
    rst $38
    nop
    dec e
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
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ei
    db $fc
    rst $30
    ld hl, sp-$0a
    ld hl, sp+$14
    ld hl, sp+$16
    ld hl, sp+$16
    ld hl, sp+$16
    ld hl, sp+$13
    db $fd
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    rrca
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
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $fe
    and [hl]
    ld e, [hl]
    ld l, [hl]
    ld d, $56
    ld c, $06
    ld c, $66
    adc [hl]
    and $0e
    ld d, $ee
    ld e, $e6
    and $0e
    or [hl]
    ld c, $06
    ld c, $ce
    ld b, $ee
    ld b, $ee
    rlca
    ld l, a
    rlca
    rlca
    rrca
    and a
    rrca
    ld b, $0f
    rlca
    rst $28
    add $ef
    ld b, $ef
    ld d, $ef
    add [hl]
    ld a, a
    cp $ff
    cp $ff
    ld b, $ff
    ld b, $ff
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    jr nz, @+$01

    db $10
    rst $38
    rrca
    rst $38
    nop
    rst $38
    ret nz

    ccf
    xor b
    ld d, a
    rst $38
    inc bc
    cp $fd
    db $fc
    inc bc
    rst $30
    ld [$27d8], sp
    ld hl, sp+$07
    db $ec
    inc de
    db $f4
    inc bc
    ei
    inc b
    db $fc
    inc bc
    or [hl]
    nop
    xor h
    ld [de], a
    rst $18
    nop
    db $dd
    nop
    rst $18
    add b
    rst $38
    ld h, b
    rst $38
    inc e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
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
    ld b, c
    ld e, a
    dec e
    jp Jump_000_03fd


    cp l
    inc bc
    dec [hl]
    inc bc
    dec e
    inc bc
    inc [hl]
    inc bc
    rra
    rlca
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Jump_0b0_4877:
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
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
    ld a, [hl]
    rst $38
    ld [hl], b
    db $fd
    ld b, b
    jp hl


    nop
    sub e
    nop
    inc de
    nop
    inc de
    nop
    inc de
    sub d
    inc de
    db $76
    sub a
    db $db
    nop
    ld d, b
    ld bc, $005f
    ld c, e
    db $10
    rst $08
    db $10
    rl b
    rst $18
    nop
    ld c, a
    sub b
    ei

Call_0b0_48c7:
    sub h
    ei
    or h
    rst $38
    or h
    rst $38
    or h
    cp $3d
    cp l
    cp $ad
    cp $41
    cp a
    ld d, l
    cp e
    ld c, a
    cp a
    ld c, a
    cp a
    ld e, a
    cp a
    sbc e
    rst $38
    dec de
    rst $38
    sub e
    rst $38
    or e
    rst $38
    inc de
    rst $38
    sub e
    rst $38
    db $76
    rst $38
    ld [hl], $ff
    ld de, $65ff
    rst $38
    push bc
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    inc de
    rst $38
    db $e3
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
    ld b, b

jr_0b0_490d:
    cp a
    ld b, b
    ccf
    nop
    ccf
    nop
    rra
    add b
    rra
    add b
    rrca
    nop
    ld a, a
    ret nz

    ccf
    and b
    add e
    ldh a, [$71]
    xor $0e
    ld [hl], c
    ld bc, $04f8
    db $ec
    inc bc
    ld a, h
    nop
    ld a, [bc]
    ld bc, $001e
    inc a
    nop
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
    jr nc, jr_0b0_490d

    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38

jr_0b0_4954:
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
    pop bc
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b0_4990:
    ld [c], a
    db $fc
    ld b, [hl]
    ld hl, sp+$0a
    ret nz

    ld a, [bc]
    add c
    nop
    ld bc, $010a
    ld a, [bc]
    ld bc, $0100
    ld c, $01
    ld c, b
    inc bc
    inc c
    inc bc
    ld [hl], a
    nop
    dec c
    ldh a, [$80]
    ld d, b
    adc b
    jr nc, jr_0b0_4954

    db $10
    xor h
    ld de, $318e
    add d
    dec [hl]
    adc b
    scf
    add b
    scf
    jr z, jr_0b0_4990

    ld hl, $00d6
    or $03
    di
    and [hl]
    ld e, e
    ld b, b
    cp a
    ld b, $ff
    ret


    rst $30
    ld d, [hl]
    rst $38
    adc $ff
    rlca
    rst $38
    sbc a
    ld h, e
    ld e, $e1
    sbc a
    ld h, b
    rlca
    ld hl, sp+$02
    db $fd
    adc c
    rst $30
    ld a, [bc]
    rst $30
    jp z, Jump_0b0_4877

    or a
    add b
    rst $38
    ret z

    rst $38
    call z, $fcfb
    ei
    push af
    ld a, [$fbf4]
    db $f4
    ei
    ld [hl], l
    ei
    ld [hl], h
    rst $38
    ld [hl-], a
    rst $38
    inc sp
    db $fd
    ld [hl], $fd
    ld bc, $02fe
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ccf
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld e, a
    nop
    ccf
    nop
    adc a
    pop bc
    cp $83
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
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
    ld bc, $01fe
    cp $01
    cp $01
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    and $f8
    call z, $99f0
    ldh [$a3], a
    ld d, b
    ld h, a
    sub b
    rlca
    ldh a, [$27]
    ret nc

    ld [hl], a
    add b
    ld h, a
    sub b
    and a
    ld d, b
    rlca
    ldh a, [$87]
    ld [hl], b
    rlca
    ldh a, [$f7]
    nop
    and a
    ld d, b
    and [hl]
    ld [hl], b
    ld h, h
    jr nc, jr_0b0_4a81

    db $10
    ld b, h
    or b
    ld h, [hl]
    sub b
    ld b, $f0
    rlca
    ldh a, [$27]
    ldh a, [$27]
    ldh a, [rNR51]
    ld [hl], d
    rlca
    ld [bc], a
    rlca
    ld b, e
    inc b
    ldh a, [$e7]
    ldh a, [$84]
    ldh a, [rNR41]
    rst $30
    ld b, $f1
    ld c, h
    di
    add d
    db $fd
    ld bc, $f1fe

jr_0b0_4a81:
    sbc $73
    cp h
    rst $30
    ld a, b
    inc sp
    rst $38
    rrca
    rst $30
    ld h, a
    rst $20
    add e
    jp $c000


    ret nz

    ld b, b
    jr nz, @-$1e

    ldh [$30], a
    ret nz

    jr c, jr_0b0_4a9d

    db $fc
    add b
    cp $45

jr_0b0_4a9d:
    rst $38
    pop hl
    rst $38
    ld d, l
    rst $38
    push af
    rst $38
    push af
    rst $38
    push af
    rst $38
    rst $30
    db $fd
    ld a, a
    push af
    ld [hl], h
    rst $38
    ld [hl], $ff
    cp [hl]
    rst $30
    cp [hl]
    rst $30
    ld a, h
    rst $38
    inc a
    db $fd
    inc e
    cp $1f
    cp $0d
    rst $38
    ld a, [bc]
    db $fd
    ld e, $fc
    ld [hl+], a
    cp $c1
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    ccf

jr_0b0_4afd:
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $f3
    call c, $90ff
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    ld hl, sp+$07
    add b
    ld a, a
    rrca
    ldh a, [$7f]
    add b
    rrca
    ldh a, [rIF]
    ldh a, [$7f]
    add b
    jr nz, jr_0b0_4afd

    inc bc
    db $fc
    nop
    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    scf
    rrca
    rrca
    rlca
    ld [bc], a
    rlca
    ld h, a
    ld [bc], a
    rst $30
    ld [bc], a
    xor a
    ld d, d
    add $bb
    add [hl]
    ei
    rla
    rst $38
    ld [hl], c
    rst $18
    rst $30
    rst $08
    ccf
    rra
    rra
    inc bc
    db $e3
    nop
    inc e
    nop
    rlca
    ret nz

    pop bc
    jr c, jr_0b0_4bbd

    adc [hl]
    sbc h
    ld h, e
    rst $20
    jr @-$05

    ld b, $fe
    ld bc, $00ff
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    cp $7f
    ld a, h
    ccf
    add hl, sp
    rrca
    inc bc
    rra
    rlca
    rra
    rrca
    ccf

jr_0b0_4b6b:
    rrca
    ld l, a

jr_0b0_4b6d:
    rra
    rst $18

jr_0b0_4b6f:
    daa
    rst $18

jr_0b0_4b71:
    inc hl
    rst $38

jr_0b0_4b73:
    ld bc, $48af
    xor l
    ld c, d
    xor a
    ld h, d
    xor l
    ld h, d
    and a
    ld h, d
    sub l
    ld h, d
    and c
    ld d, d
    add l
    ld a, b
    xor d
    ld e, h
    dec l
    sbc $ae
    rst $18
    xor a
    ld e, a
    adc a
    ld a, a
    cpl
    cp a
    adc a
    ld a, a
    adc a
    ccf
    adc a
    ccf
    and a
    sbc a
    daa
    sbc a
    ld [hl], e
    rst $08
    ld sp, $10ef
    rst $28
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

jr_0b0_4bbd:
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    jr @+$01

    ld h, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add a
    ld hl, sp-$21
    ldh [$7c], a
    add b
    ld hl, sp+$01
    ldh [$03], a
    call nz, $8c03
    inc bc
    sbc h
    inc bc
    sbc h
    inc bc
    inc e
    add e
    inc e
    add e
    jr jr_0b0_4b6b

    jr jr_0b0_4b6d

    jr jr_0b0_4b6f

    jr jr_0b0_4b71

    jr jr_0b0_4b73

    jr @-$77

    sbc d
    inc b
    ld a, [de]
    inc b
    ld a, [de]
    inc b
    ld a, [de]
    inc b
    inc e
    nop
    sbc [hl]
    nop
    sbc d
    add h
    sbc b
    inc b
    inc e
    nop
    jr jr_0b0_4c02

jr_0b0_4c02:
    inc e
    nop
    inc e
    nop
    sbc [hl]
    nop
    rra
    add b
    rra
    add b
    dec de
    add h
    dec de
    add h
    ld c, $85
    adc h
    add a
    adc h
    add a
    inc b
    rrca
    ld b, $0f
    add b
    rrca
    nop
    ld [$8807], sp
    add a
    ld c, b
    rst $00
    ld [$8e41], sp
    add b
    ld c, a
    ld [c], a
    inc c
    pop hl
    ld c, $e2
    add hl, bc
    and b
    inc c
    xor l
    adc h
    and d
    adc h
    and c
    adc b
    ldh [$8c], a
    and b
    adc c
    and b
    add e
    and b
    add a
    ret nz

    adc a
    ret nc

    adc a
    sub b
    add a
    sub h
    ld bc, $001a
    dec d
    nop
    sbc e
    nop
    rlc b
    xor $00
    rst $00
    db $10
    call $4f08
    sbc b
    ld c, a
    cp b
    rst $28
    add hl, de
    ld l, [hl]
    adc c
    db $ed
    adc b
    db $ed
    adc b
    db $ed
    adc c
    xor h
    ret


    xor l
    ret z

    adc a
    add sp, -$73
    ld hl, sp-$73
    jp hl


    sbc a
    add sp, -$44
    ret


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rrca
    pop af
    ld b, $ff
    jr @+$01

    ld h, b
    rst $38
    add b

jr_0b0_4c81:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0b0_4c87:
    rst $38
    db $76
    adc h
    call z, $dc18
    jr c, jr_0b0_4c87

    jr nc, jr_0b0_4c81

    nop
    ldh [rP1], a
    ret nz

    nop
    add a
    nop
    rst $38
    nop
    ld e, e
    and h
    sub b
    ld h, b
    cp a
    ld b, b
    ld e, a
    and b
    sbc a
    ld h, b
    ld hl, $30de
    ret nz

    add hl, de
    and $00
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
    add b
    nop
    add b
    nop
    rst $18
    cpl

jr_0b0_4cbc:
    ld [de], a
    dec c
    ld de, $0000
    nop
    nop
    nop
    nop
    db $10
    cp [hl]
    nop
    ei
    inc b
    ld [hl], a
    ret z

    rlca
    ld hl, sp+$50
    rst $28
    ld [$40f7], sp
    rst $38
    ld l, e
    rst $30
    ld [hl], e
    rst $38
    ld h, h
    ei
    ld d, b
    rst $38
    jr @+$09

    ld b, $01
    pop bc
    nop
    ld a, b
    nop
    add $00
    ld sp, $84c0
    ld a, b
    db $10
    rrca
    ld b, d
    add c
    sub b
    ld h, b
    and h
    jr jr_0b0_4cbc

    ld b, $62
    ld bc, $0068
    and b
    nop
    jr z, jr_0b0_4cbc

    ld [de], a
    ldh [rSC], a
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    rra
    ldh a, [rIF]
    and b
    rlca
    ld a, [$5801]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    or b
    ld b, b
    ld hl, sp+$60
    call c, Call_0b0_7620
    ld c, b
    ld a, a
    ld [hl], b
    ld a, l
    ld d, b
    ld e, h
    ld d, b
    db $fd
    ld e, b
    call c, $df58
    ld hl, sp+$00
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
    jr jr_0b0_4d63

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b0_4d73

    ld [hl+], a
    inc hl
    inc h

jr_0b0_4d55:
    dec h
    ld h, $27
    jr z, jr_0b0_4d72

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b0_4d94

jr_0b0_4d63:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b0_4da4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_0b0_4d72:
    ld b, c

jr_0b0_4d73:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    jr jr_0b0_4dc5

    ld c, d
    ld c, e
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
    jr jr_0b0_4da3

    jr jr_0b0_4de4

    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_0b0_4d94:
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    jr jr_0b0_4db3

    jr jr_0b0_4db5

    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c

jr_0b0_4da3:
    ld l, d

jr_0b0_4da4:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    jr jr_0b0_4e19

    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b

jr_0b0_4db3:
    ld a, c
    ld a, d

jr_0b0_4db5:
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
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

jr_0b0_4dc5:
    adc d
    adc e
    jr jr_0b0_4d55

    adc l
    add b
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
    add b
    and c
    and d
    and e
    and h
    and l

jr_0b0_4de4:
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
    add b
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
    add b
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $80ce
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7

jr_0b0_4e19:
    ret c

    reti


    jp c, $dcdb

    db $dd
    add b
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    jr @+$1a

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
    jr @+$18

    rla
    jr jr_0b0_4e78

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    ld bc, $0101
    ld [bc], a
    ld bc, $0301
    inc bc

jr_0b0_4e78:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0302
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0201
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0103
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0103
    ld bc, $0101
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0103
    inc bc
    inc bc
    ld bc, $0303
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0201
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld b, $07
    inc bc
    ld bc, $0300
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
    rlca
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    ld b, $07
    ld bc, $0303
    dec b
    dec b
    ld bc, $0303
    nop
    nop
    inc bc
    ld bc, $0606
    nop
    rlca
    ld bc, $0403
    inc b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0206
    rlca
    ld bc, $0c0c
    inc c
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    dec bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    dec bc
    dec bc
    nop
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    dec c
    ld [$080b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    rra
    rst $38
    ld hl, sp-$20
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
    add b
    nop
    ld b, c
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    add b
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    ld b, b
    ldh [rLCDC], a
    ld h, e
    inc hl
    inc sp
    inc hl
    ld de, $9111
    sub c
    ld hl, sp-$08
    ld a, b
    ld hl, sp+$3c
    db $fc
    inc a
    db $fc
    ld [hl-], a
    ld a, [c]
    ld h, d
    ld [c], a
    add e
    jp nz, $0301

    add hl, de
    inc bc
    pop bc
    ld b, $00
    add hl, sp
    ld [bc], a
    ret nz

    add hl, bc
    ld b, $5c
    ccf
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add c
    cp $06
    ld hl, sp+$19
    pop hl
    ld c, a
    add a
    ccf
    rra
    rst $38
    xor $3f
    jr z, jr_0b0_5054

    inc sp
    rra
    rla
    rra
    dec de
    rrca
    dec bc
    rrca
    dec c
    rlca
    inc b
    rrca
    ld bc, $073f
    rst $38
    inc e
    cp $71
    ei
    rst $00
    db $ec
    rra
    inc sp
    rst $38
    call z, $f0bf
    rst $18
    ldh [$df], a
    ldh a, [$ef]
    ldh a, [$ef]
    ld hl, sp-$09
    db $fc
    ei
    db $fc
    ei
    cp $fd
    cp $fd
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
    adc a
    rst $38

jr_0b0_5054:
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $80ff
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    add sp, -$01
    add sp, -$01
    db $f4
    rst $38
    ld a, [$fdff]
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    ld a, [$f3fd]
    db $fc
    push af
    ld a, [$fbf4]
    add sp, -$09
    ld h, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    add c
    rst $38
    rst $00
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
    rlca
    rlca
    inc bc
    inc bc
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
    rst $38
    nop
    ldh a, [rIF]
    rrca
    rst $38
    db $fc
    ldh a, [$c0]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ld hl, sp+$00
    rst $30
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
    inc bc
    inc bc
    rra
    rra
    rst $00
    rst $38
    sub e
    rst $38
    ld bc, $45ff
    ld b, l
    ld bc, $9301
    sub e
    rst $00
    rst $00
    rst $38
    ld a, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, $01
    sub b
    rrca
    sub c
    adc a
    ret z

    add a
    ld b, h
    ld b, e
    ld h, h
    ld b, e
    ld [hl+], a
    ld hl, $a132
    cp c
    db $10
    ld e, l
    sub b
    call c, $6e10
    ld l, b
    rst $28
    add sp, -$09
    db $f4
    rst $00
    add h
    ld a, e
    ld [hl-], a
    ei
    ld a, [$f9ff]
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    and $ff
    sbc h
    cp $71
    ei
    rst $00
    db $ec
    rra
    or e
    ld a, a
    call z, $30ff
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

    cp a
    ret nz

    cp a
    ldh [$df], a
    ldh a, [$ef]
    ldh a, [$ef]
    ld hl, sp-$09
    ld hl, sp-$09
    db $fc
    ei
    rst $38
    ei
    db $fc
    rst $38
    ld h, b
    sbc a
    jr c, @-$37

    inc e
    db $e3
    ld c, $f1
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$bf], a
    ret nz

    ld [hl], a
    adc b
    xor a
    ld d, b
    sbc $21
    ld a, e
    add a
    db $76
    adc a
    dec l
    rst $18
    ld a, [hl+]
    rst $18
    dec d
    rst $38
    ld a, [de]
    rst $38
    dec a
    rst $38
    ld a, $ff
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
    rst $38
    rst $38
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
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $18ff
    ld a, a
    db $fc
    cp $9c
    rra
    ld c, $1f
    ld c, $0e
    ld b, $0e
    ld b, $07
    ld [bc], a
    rrca
    inc bc
    rrca
    rlca
    rlca
    inc bc
    add a
    inc bc
    add a
    inc bc
    add a
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    ld [hl], c
    ld a, a
    db $e4
    rst $38
    ret nz

    rst $38
    pop de
    rst $38
    ret nz

    rst $38
    db $e4
    rst $38
    pop af
    pop af
    rst $38
    cp $ff
    ldh a, [$f8]
    add a
    rst $00
    jr c, jr_0b0_522a

    ret nz

    cp $01
    ldh a, [rIF]
    add e
    ld a, a
    rra
    rst $38
    ld a, [hl]
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ld bc, $0ffe
    ldh a, [$3c]
    ret nz

    ldh a, [rP1]
    ret nz

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
    pop hl
    nop
    rst $20
    nop
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    ld bc, $87fe
    ld hl, sp-$71
    ld [hl], e
    rst $08
    ret nz

    rst $38
    db $10
    rst $28
    adc h
    di
    ld a, [bc]
    push af
    inc b
    ei
    nop
    rst $38

jr_0b0_522a:
    dec b
    ld a, [$fd02]
    ld [bc], a
    db $fd
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
    ld e, $ff
    ld l, e
    push af
    add l
    ld a, [$fd02]
    rla
    add sp, $2f
    ret nc

    rra
    ldh [$2f], a
    ret nc

    ld e, [hl]
    and b
    or l
    ld b, b
    add sp, $00
    ld d, b
    nop
    cp b
    nop
    ld l, c
    db $10
    adc h
    ld [hl], b
    ld [bc], a
    db $fc
    ld bc, $40fe
    rst $38
    sub b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld [$f6ff], a
    rst $38
    ld hl, sp-$02
    cp $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ldh a, [$f8]
    ldh a, [$f8]
    pop hl
    ldh a, [$e2]
    pop af
    db $f4
    db $e3
    ret z

    rst $20
    ret nc

    rst $28
    ldh [$df], a
    ret nc

    rst $08
    add sp, -$39
    call nz, $f4e3
    db $e3
    ld a, [$f8f1]
    nop
    nop
    nop
    nop
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
    rra
    nop
    rra
    nop
    sbc c
    nop
    adc [hl]
    nop
    add b
    add b
    ret nz

    add b
    ret nz

    add c
    call nz, Call_0b0_48c7
    ld c, a
    ld c, d
    ld c, a
    ld h, b
    ld h, a
    db $e4
    rst $20
    ld h, d
    db $e3
    ld [hl], e
    di
    ld [hl], b
    ldh a, [$f0]
    ldh a, [$f9]
    sbc b
    ld hl, sp+$08
    inc a
    ret z

    db $fc
    inc c
    db $fc
    inc b
    sbc [hl]
    ld h, h
    ld c, $f6
    ld h, [hl]
    ld a, [$faf7]
    rst $00
    ld a, [$fd01]
    ld bc, $07e1
    add a
    ccf
    rra
    ld sp, hl
    ld a, b
    db $e3
    ld h, d
    ld a, a
    rrca
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    rra
    ccf
    inc e
    rra
    inc bc
    ld a, a
    inc c
    rst $38
    ld sp, $c7fe
    ld hl, sp+$1f
    db $e3
    ld a, a
    adc l
    cp $36
    ld sp, hl
    call nc, Call_000_03eb
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    ld bc, $02fe
    db $fd
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, c
    cp [hl]
    add $39
    ld c, b
    or a
    db $10
    rst $28
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
    nop
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    ldh a, [$1f]
    ld hl, sp+$0f
    call nc, $aa07
    inc bc
    ld b, l
    ld bc, $000a
    rlca
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    ccf
    nop
    sbc a
    nop
    ld c, a
    add b
    inc h
    ret nz

    inc de
    ldh [$09], a
    ldh a, [$0d]
    ldh a, [$84]
    ld hl, sp+$04
    ld hl, sp+$4f
    ldh a, [$99]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add e
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld e, $00
    ld h, $18
    ld b, e
    inc a
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fc
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    add b
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
    adc b
    nop
    adc h
    nop
    adc b
    nop
    add b
    nop
    nop
    nop
    nop
    inc bc
    add hl, sp
    ccf
    jr nc, @+$01

    sub h
    rst $38
    nop
    rst $38

jr_0b0_53c2:
    add hl, hl
    rst $38
    inc c
    rst $38
    sbc a
    rst $38
    jr c, jr_0b0_53c2

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    add b
    rra
    ld b, b
    inc e
    ret nz

    ld b, b
    ldh [$60], a
    pop af
    ld [hl], d
    cp $00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [$80]
    ldh a, [$80]
    ld hl, sp-$80
    rst $38
    ret nz

    ld a, h
    ld b, e
    rst $38
    ld b, b
    ei
    ld h, l
    cp $e7
    ldh a, [$2f]
    jp hl


    ld [hl], a
    adc [hl]
    pop af
    ld a, $f1
    or $c9
    ld a, a
    add b
    sbc a
    ld h, b
    rra
    ldh [$5f], a
    and b
    ld a, a
    add b
    rst $28
    db $10
    cp l
    ld b, d
    rla
    add sp, $4f
    or b
    ld b, $f9
    inc hl
    call c, $f906
    ld c, $f1
    ld a, [hl-]
    push bc
    ld l, h
    sub e
    adc c
    db $76
    inc b
    ei
    nop
    rst $38
    ld bc, $02fe
    db $fd
    ld [$00f7], sp
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    rra
    ld bc, $001f
    rst $38
    nop
    ldh a, [rP1]
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    pop hl
    nop
    rrca
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
    ld a, $00
    reti


    nop
    ld [c], a
    nop
    xor l
    nop
    push de
    nop
    ld d, d
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    add b
    sub [hl]
    ld bc, $032c
    jr jr_0b0_548b

    ld bc, $0b0f
    ld b, $0f
    nop
    rra

jr_0b0_548b:
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    ret nz

    sub $c9
    jp c, $eac5

    ld b, l
    rst $20
    ld l, b
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    ld l, a
    ld h, b
    scf
    scf
    scf
    scf
    scf
    scf
    db $10
    db $10
    ld e, h
    call c, $fc3c
    inc e
    db $fc
    ld e, [hl]
    cp $1e
    cp $3e
    cp $7e
    cp $86
    add [hl]
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc sp
    inc bc
    ei
    inc bc
    db $e3
    inc bc
    inc bc
    inc bc
    ld bc, $011f
    rst $10
    add hl, hl
    rst $10
    add hl, hl
    ld e, a
    jr nz, jr_0b0_5508

    ld c, [hl]
    dec [hl]
    ld e, [hl]
    dec [hl]
    ld e, $3f
    inc d
    inc a
    rlca
    ld a, a
    inc b
    rst $28
    inc bc
    ld a, [hl]
    rst $00
    ld sp, hl
    ccf
    or $7f
    sbc a
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    inc b
    ei
    rlca
    ld hl, sp+$24
    db $db
    inc b
    ei
    rrca
    ldh a, [$ae]
    ld d, c
    ld [$80f7], sp
    ld a, a
    add b
    ld a, a
    add e
    ld a, h
    adc $30
    db $fd
    ld [bc], a
    cp $01
    add sp, $17

jr_0b0_5508:
    ld a, [$e305]

jr_0b0_550b:
    inc e
    ret nz

    ccf
    pop hl
    ld e, $e0
    rra
    ld l, e
    sub h
    ld a, b
    add a
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
    ret nz

    rst $38
    ld h, b
    ccf
    jr nc, jr_0b0_5545

    jr jr_0b0_5537

    inc c
    rlca
    inc c
    rrca
    ld a, $03
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    db $fc

jr_0b0_5537:
    nop
    di
    nop
    rst $08
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $03bc
    ld a, b
    rlca
    ld [hl], c

jr_0b0_5545:
    rrca
    db $e3
    ld e, $c6
    dec a
    adc c
    ld a, [hl]
    inc d
    ei
    ld a, [hl-]
    push hl
    ld l, b
    rst $10
    db $eb
    sub h
    ld [$d414], a
    jr z, @-$26

    jr nz, jr_0b0_550b

    ld b, b
    ld b, b
    and b
    add c
    ld b, c
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    pop af
    rst $38
    add c
    add a
    rlca
    rla
    daa
    ld e, a
    daa
    rst $10
    rlca
    ld a, a
    and a
    rst $38
    cp [hl]
    cp $e0
    ldh [rSB], a
    nop
    ld c, $00
    ld [hl], b
    nop
    add b
    nop
    rlca
    add b
    ccf
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    di
    adc h
    cp a
    ret nz

    cp a
    ret nz

    cp $c1
    pop af
    adc $cf
    ldh a, [$dc]
    db $e3
    ret nc

    rst $28
    db $e3
    ld a, a
    ld l, h
    rst $38
    ld [hl], b
    rst $38
    add e
    db $fc
    call z, $b1f3
    cp $df
    ccf
    rst $38
    rst $38
    nop
    rst $38
    rst $20
    jr @-$07

    ld [$08f7], sp
    di

jr_0b0_55c1:
    inc c
    di
    inc c
    inc de
    db $ec
    rlca
    ld hl, sp+$19
    ldh [rPCM34], a
    add b
    rst $08
    nop
    inc a
    inc bc
    ld a, [$fc05]
    inc bc
    cp h
    ld b, e
    ld a, b
    add a
    cp b
    ld b, a
    ldh a, [rIF]
    ret nc

    cpl
    jr nz, @-$1f

    jr nz, jr_0b0_55c1

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
    ret nz

    ld a, a
    ldh [$3f], a
    ld h, b
    rra
    ret nc

    ccf
    sub b
    ld a, a
    ld [$28ff], sp
    rst $38
    ld h, b
    rst $20
    sub b

jr_0b0_5603:
    rst $30
    sub b
    ld [hl], e
    db $10
    di
    sub b
    ld [hl], e
    ld [$88d9], sp
    ld c, c
    ld c, c
    adc c
    add e
    inc bc
    rlca
    rlca
    ld a, [bc]
    rrca
    inc d
    rra
    jr z, jr_0b0_5659

    ld d, b
    ld a, a
    and b
    rst $38
    ld b, e
    rst $38
    cp $fc
    cp $fc
    cp $fc
    db $fc
    ld a, [hl]
    cp $7c
    db $fc
    cp $fc
    cp $0f
    ld h, [hl]
    add a
    ld c, $86
    adc a
    add [hl]
    adc a
    add a
    rst $08
    adc a
    rst $00
    sbc c
    rst $18
    db $e3
    pop af
    pop bc
    pop bc
    ret


    ld b, a
    ld b, c
    ld e, c

jr_0b0_5644:
    pop bc
    ld h, b
    ld h, a

jr_0b0_5647:
    ld b, b
    ld a, a
    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_0b0_5647

    ld hl, $26f9
    rst $20

jr_0b0_5653:
    jr c, jr_0b0_5644

    jr nc, jr_0b0_5653

    inc de
    pop af

jr_0b0_5659:
    ld e, $f6
    add hl, de
    sbc b
    ld [hl], a
    ld [hl], b
    sbc a
    db $d3
    ccf
    inc e
    rst $38
    jr nc, @+$01

    jp nz, Jump_000_04fd

    ei
    ld h, c
    sbc [hl]
    rst $20
    jr jr_0b0_5603

    ld l, e
    ld [hl], c
    adc [hl]
    rst $30
    ld [$f807], sp
    ei
    db $fc
    ld c, $ff
    ei
    rlca
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    ld sp, hl
    rlca
    pop bc
    ccf
    add d
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
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

jr_0b0_56e1:
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
    ldh [rNR34], a
    pop hl
    dec e
    ld [c], a
    dec bc
    db $f4
    rlca
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    add e
    db $fc
    ld bc, $00fe
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, h
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$3b10], sp
    inc sp
    ccf
    ld de, $39ff
    rst $38
    inc e
    ld a, [hl]
    ld h, b
    ldh a, [rP1]

jr_0b0_5725:
    ret nz

    nop
    nop
    nop
    nop
    inc bc
    nop
    adc b
    rlca
    add [hl]
    jr c, jr_0b0_56e1

    ld b, b
    ld b, c
    ret nz

    db $e3
    ret nz

    db $fd
    add b
    xor l
    adc b
    ld a, [$bc89]
    add e
    or c
    add a
    cp h
    add [hl]
    db $e4
    sub a
    and $8e
    and a
    rst $18
    ld a, d
    rst $00
    ld h, c
    rst $18
    ld d, c
    xor $ee
    pop de
    ld sp, $6fc6
    sub b
    adc c
    ld [hl], d
    dec hl
    call nc, Call_000_10ed
    adc $11
    jr z, jr_0b0_5725

    ld h, c
    sbc [hl]
    db $e3
    inc e
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, e
    ret nz

    cp [hl]
    ld h, c
    call c, $8833
    ld a, a
    inc b
    rst $38
    ld [bc], a
    rst $38

jr_0b0_5778:
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
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$07ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$18e7], sp
    rst $08
    jr nc, jr_0b0_5778

    ld h, b
    rra
    ldh [$5a], a
    and l
    cp l
    ld b, d
    xor b
    ld d, a
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop

jr_0b0_57ea:
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    add b
    nop
    inc b
    ld c, $04
    adc a
    inc b
    sbc a
    ld c, $9f
    call c, $d09f
    sbc b
    ret nz

    add b
    ld b, b
    nop
    ld b, b
    nop
    ld b, d
    ld bc, $0748
    ld [de], a
    inc c
    nop
    add b
    nop
    nop
    ld [bc], a
    nop
    nop
    ld b, $0f
    nop
    add e
    nop
    nop
    ld bc, $008d
    sbc e
    nop
    inc bc
    add h
    inc d
    adc e
    ld b, e
    sbc h
    ld c, a
    sub b
    ccf
    rst $00
    ld hl, sp-$01
    rlca
    ld hl, sp+$7f
    add b
    rst $38
    ret nz

    ld a, a
    or b
    sbc a
    ld c, $ff
    ld bc, $00ff
    rst $38
    nop
    cp a
    nop
    ld a, a
    add b
    ccf
    add b
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp h
    inc bc
    ldh a, [$0e]
    rst $20

jr_0b0_585b:
    jr jr_0b0_57ea

    ld [hl], b
    ld e, $e0
    ld a, a
    add b
    ld [hl], c
    adc [hl]
    inc bc
    db $fc
    rlca
    ld hl, sp-$23
    ld [c], a
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop bc
    rst $38
    ld a, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp-$7f
    ld a, [hl]
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
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
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ei
    inc b
    or $09
    db $ec
    inc de
    rst $18
    jr nz, jr_0b0_585b

    ld c, e
    ld d, d
    xor l
    ld a, l
    add d
    rst $38
    nop
    cp [hl]
    ld b, c
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
    ld a, a
    add b
    sbc e
    ld h, h
    ld e, a
    and b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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
    rla
    db $10
    rra
    or b
    rst $10
    ldh a, [$5f]
    ldh a, [$5f]
    ldh a, [$1f]
    jr nc, jr_0b0_590a

    ld [hl-], a
    inc d
    jr nc, jr_0b0_5902

    jr nc, jr_0b0_5907

    inc sp
    rra
    or b
    sbc e
    jr nc, jr_0b0_590a

    ld a, [hl-]
    ld e, $31
    inc e
    inc sp

jr_0b0_58fe:
    sub h
    add hl, sp

jr_0b0_5900:
    inc d
    inc sp

jr_0b0_5902:
    ret c

    or a
    pop de
    cp a
    db $d3

jr_0b0_5907:
    cp a
    rst $18
    inc a

jr_0b0_590a:
    rst $18
    jr nc, jr_0b0_594c

    ret nz

    rst $38
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    rst $38
    ld e, a
    and b
    rla
    jr nz, @-$2f

    jr nz, @+$61

    jr nz, jr_0b0_58fe

    jr nz, jr_0b0_5900

    jr nz, @+$01

    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop

jr_0b0_592e:
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    and b
    nop
    add b
    nop
    ld b, [hl]
    nop
    sbc h
    nop
    cp d
    nop
    ld [$e800], a
    nop
    add sp, $00
    jp hl


    ld bc, $7e9e
    ldh [$f0], a

jr_0b0_594c:
    nop
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $0e
    ldh a, [$7e]
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    cp $00
    ld a, [hl-]
    ret nz

    dec e
    ldh [rTMA], a
    ld hl, sp+$01

jr_0b0_597b:
    cp $80
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    cp $01
    cp $01
    db $fc
    inc bc
    ld sp, hl
    ld b, $f8
    rlca
    di
    inc c
    db $eb
    inc d
    rst $00
    jr c, jr_0b0_592e

    ld h, [hl]
    inc h
    db $db
    ld a, a
    add b
    push de
    ld a, [hl+]
    db $fd
    ld [bc], a
    push hl
    ld a, [de]
    ld l, d
    sub l
    jr z, jr_0b0_597b

    add [hl]
    ld a, c
    or a
    ld c, b
    push hl
    ld a, [de]
    ld d, d
    xor l
    cp d
    ld b, l
    cp $01
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
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh a, [rTAC]
    db $fc
    ld a, c
    add a
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    ld [c], a
    cp a
    jp nz, $c2ff

    cp a
    jp nz, Jump_0b0_43ff

    or $43
    ld a, d
    rst $00
    xor $63
    db $76
    db $e3
    adc $73
    ld c, d
    rst $30
    ld [c], a
    ld e, a
    ld c, d

jr_0b0_59e9:
    rst $30
    ld h, h
    rst $18
    ld d, l
    rst $38
    ld e, a
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    db $fc
    rst $08
    rst $38
    inc bc

jr_0b0_59f8:
    rst $38

jr_0b0_59f9:
    ld bc, $01ff
    cp $03
    db $fc
    ld a, a
    rst $38
    add b
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ld c, $ef
    ld de, $609f
    ld a, $c0
    ld a, l
    add b
    di
    nop
    rst $08
    ldh [$c1], a
    ccf
    sbc $21
    rst $18
    jr nz, @-$1f

    jr nz, jr_0b0_59f9

    jr nz, jr_0b0_59f8

    jr nz, jr_0b0_59e9

    jr nz, @+$52

    jr nz, jr_0b0_5a65

    jr nz, jr_0b0_5a27

jr_0b0_5a27:
    ld [hl], b
    nop
    ld e, h
    nop
    ld b, a
    nop
    ld b, b
    ld bc, $0141

jr_0b0_5a31:
    ld b, c
    inc bc
    ld b, e
    rrca

jr_0b0_5a35:
    ld c, a
    cp a
    rst $38
    rra
    rra
    inc de
    inc de
    jr nz, jr_0b0_5a5e

    jr nz, jr_0b0_5a60

    ld b, b
    ld b, b
    add b
    ret nz

    add b
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $00
    ld hl, sp+$00
    db $fc
    nop

jr_0b0_5a55:
    sbc a
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop

jr_0b0_5a5e:
    ret nz

    nop

jr_0b0_5a60:
    ldh a, [rP1]
    jr c, jr_0b0_5a64

jr_0b0_5a64:
    rrca

jr_0b0_5a65:
    nop
    ld b, e
    nop
    inc b
    nop
    inc c
    nop
    ret c

    nop
    jr c, jr_0b0_5a31

    jr jr_0b0_5a55

    ld bc, $03fe
    db $fc
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld [hl], a
    adc b
    rst $28
    db $10
    ld d, c
    xor [hl]
    ld c, h
    or e
    rst $18
    jr nz, jr_0b0_5a35

    ld d, l
    ld e, l
    and d
    rst $30
    ld [$c03f], sp
    jp hl


    ld d, $2b
    call nc, $906f
    scf
    ret z

    ld l, e
    sub h
    or l
    ld c, d
    and l
    ld e, d
    ld e, h
    and e
    push af
    ld a, [bc]
    db $eb
    inc d
    db $fd
    ld [bc], a
    xor d
    ld d, l
    rst $38
    nop
    ld a, [$ff05]
    nop

jr_0b0_5ab0:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ldh [$cf], a
    jr c, jr_0b0_5ab0

    ld c, $fc
    inc bc
    ld [hl+], a
    rst $38
    ld l, $ff
    ld a, [hl-]
    rst $38
    ld [c], a
    rst $38
    daa
    cp $24
    cp $7d
    and $6d
    and $d4
    ld l, a
    call z, Call_0b0_6c7f
    rst $38
    ld h, h
    rst $38
    db $ec
    rst $38
    ld [hl], b
    rst $30
    jp Jump_000_03c4


    inc b
    jp Jump_000_3bc4


    inc a
    nop
    rlca
    inc bc
    inc b
    di
    db $f4
    add hl, bc
    ld c, $01
    ld b, $00
    rlca
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$d0]
    ldh [$60], a
    add b
    add b
    ld h, b
    nop
    ldh [rP1], a
    ldh [$80], a
    ld h, b
    ldh [$e0], a
    db $10
    ldh a, [rLCDC]
    cp b
    or b
    scf
    dec [hl]
    dec [hl]
    ld l, d
    ld l, d
    ld a, l
    ld a, l
    ld a, h
    ld a, h
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
    db $e3
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
    rra
    rra
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    inc a
    db $10
    rrca
    jr nz, jr_0b0_5b53

    ld b, b
    nop
    add b

jr_0b0_5b53:
    ld bc, $0700
    add b
    ld c, $c4
    jr jr_0b0_5b63

    jr nc, jr_0b0_5b79

    ldh [rNR52], a
    ret c

    ld sp, hl
    ld b, $e6

jr_0b0_5b63:
    ld bc, $00e3
    ld hl, sp+$00
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
    ld e, a
    and b
    rst $18
    jr nz, jr_0b0_5bf8

jr_0b0_5b79:
    add b
    rst $38
    nop
    ld e, a
    and b
    and e
    ld e, h
    rst $38
    nop
    ld a, l
    add d
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, e
    add h
    ld a, a
    add b
    sbc a
    ld h, b
    ld e, a
    and b
    rst $28
    db $10
    ld l, a
    sub b
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
    rst $38
    nop
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
    db $10
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, d
    rst $38
    inc d
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    nop
    rst $38
    add c
    ld a, [hl]
    jp z, Jump_000_0037

    db $fc
    nop
    add c
    nop
    cp a
    nop
    ld bc, $000f
    ld a, $00
    inc bc
    db $fc
    rrca
    ldh a, [$59]
    and b
    inc sp
    ret nz

    ld [hl+], a
    pop bc
    ld [hl], $c1
    db $ec
    add e
    db $e4
    ei
    ld e, $e1
    ld e, $e1
    ld c, $f1
    nop
    rst $38

jr_0b0_5bf8:
    ld d, b
    rst $38
    xor d
    rst $38
    dec d
    rra
    and d
    db $e3
    ld d, h
    ld d, a
    xor d
    xor d
    ld d, l
    ld d, l
    db $eb
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
    rra
    rst $38
    rst $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, $00
    inc c
    nop
    jr jr_0b0_5c3f

jr_0b0_5c3f:
    ldh a, [rP1]
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
    add b
    nop
    ld b, b
    add b
    sbc b
    ld h, b
    ld h, [hl]
    jr jr_0b0_5c72

    ld b, $1e
    ld bc, $0007
    add e
    nop
    ld h, [hl]
    nop
    nop
    nop
    ld b, b
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

jr_0b0_5c72:
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    db $fd
    nop
    rst $28
    nop
    cp $00
    db $dd
    nop
    ld a, [$dd00]
    nop
    ld a, [$fd00]
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
    nop
    rst $38
    add b
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
    ld bc, $02fe
    db $fd
    inc b
    ld a, [$fd00]
    nop
    ld hl, sp+$00
    ld a, [c]
    inc bc
    ld hl, sp+$03
    add b
    ld c, $60
    ld e, $e0
    ld e, h
    ldh [$c0], a
    ld [hl+], a
    add b
    ld b, c
    nop
    dec b
    nop
    ld bc, $2701
    jr z, jr_0b0_5d35

    add c
    ld a, a
    sub d
    ld a, a
    adc l
    ld a, a
    jp $c13f


    ccf
    rlca
    rst $38
    ld b, [hl]
    cp [hl]
    add [hl]
    ld a, [hl]
    add $3e
    ld h, [hl]
    sbc [hl]
    inc c
    db $fc
    ld d, h
    db $fc
    xor l
    db $fd
    ld e, l
    rst $38
    add c
    rst $38
    ld d, b
    cp $f8
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$07
    ld sp, hl
    ei
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
    ld sp, $c3f1
    ei
    ld [c], a
    and $c2
    jp $c2c2


    add $c6
    call nz, $85c4
    add h
    add a
    add h
    adc [hl]
    adc l
    inc e
    dec bc
    jr jr_0b0_5d2f

    ld bc, $0013
    ld h, b
    nop
    ret nz

    inc bc
    add e
    inc b
    rlca
    ld [$080f], sp
    rrca
    db $10

jr_0b0_5d2f:
    rra

jr_0b0_5d30:
    dec d
    ld a, [hl+]
    ld a, [hl+]
    dec d
    ld d, l

jr_0b0_5d35:
    ld a, [hl+]
    ld a, [hl+]
    ld d, l
    dec d
    ld a, [hl+]
    ld a, [bc]
    dec b
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
    add b
    nop
    ret nz

    nop
    jr nc, @-$3e

    ret z

    jr nc, jr_0b0_5d63

    inc c
    inc b
    inc bc
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

jr_0b0_5d63:
    nop
    nop
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
    add b
    nop
    ld b, b
    nop
    ret nz

    nop
    and b
    nop
    or b
    nop
    ld l, b
    nop
    call c, $ef00
    nop
    rst $38
    nop
    rst $38
    nop
    sbc $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $08
    nop
    rst $08
    nop
    rst $18
    nop
    sbc a
    nop
    sbc [hl]
    nop
    sbc [hl]
    ld b, b
    cp h
    ld b, b
    inc a
    ret nz

    inc h
    add c
    jr nz, jr_0b0_5d30

    ld b, b
    add b
    ld b, b
    rst $38
    ld b, b
    rst $08
    ld b, b
    sbc a
    add b
    cp a
    add c
    cp a
    add b
    xor a
    sub b
    inc sp
    inc c
    cp b
    rlca
    rst $38
    nop
    ld c, a
    ldh a, [$ab]
    cp $55
    rst $38
    and d
    rst $30
    add a
    rst $00
    sub a
    sub a
    cpl
    cpl
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, b
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f1]
    ldh a, [$e2]
    pop hl
    add h
    add e
    inc b
    inc bc
    add hl, bc
    rlca
    inc de
    rrca
    inc hl
    rst $18
    rlca
    ld a, a
    ld bc, $1e7f
    rst $38

jr_0b0_5e06:
    inc e
    rst $38
    inc a
    rst $38
    ld a, c
    rst $38
    pop af
    rst $38
    db $e3
    cp $e7
    db $fc
    add $fd
    inc c
    dec sp
    inc c
    inc bc
    pop bc
    jp $f030


    inc c
    db $fc
    inc bc
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
    and b
    ld e, a
    ld b, b
    cp a
    nop
    rst $38
    nop
    ccf
    nop
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
    nop
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_0b0_5e06

    ret nc

    jr nz, @+$26

    jr jr_0b0_5e54

    ld b, $02
    ld bc, $0001
    nop
    nop
    ldh [rP1], a

jr_0b0_5e54:
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
    or $09
    ld a, [$fa05]
    dec b
    db $fc
    inc bc
    ld hl, sp+$07
    db $ec
    inc de
    cp $01
    db $ec
    inc de
    db $fd
    jp nc, $d2fd

    ld sp, hl
    rst $10
    ld sp, hl
    and a
    pop af
    adc a
    pop af
    xor a
    ld a, [c]
    ld c, [hl]
    ld [$ca16], a
    ld [hl-], a
    add h
    ld h, h
    and h
    ld b, h
    ld c, [hl]
    add h
    rra
    adc b
    inc e
    adc c
    ld [$081b], sp
    ccf
    rst $28
    db $10
    ldh [$1f], a
    ld l, b
    sbc a
    adc c
    ld a, a
    ld a, a
    cp a
    rst $20
    ccf
    di
    cpl
    cpl
    ld a, a
    rst $10
    ld a, a
    rst $08
    ld a, a
    rst $38
    rst $18
    rra
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    adc a
    rrca
    rra
    jr jr_0b0_5ef3

    jr c, @+$7e

    ld a, h
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fd
    inc bc
    ld bc, $0305
    add hl, bc
    rlca
    inc de
    rrca
    inc sp
    rrca
    daa
    rra
    ld c, a
    ccf
    sbc [hl]
    ld a, a
    dec e
    rst $38
    add hl, sp
    rst $38
    ld a, e
    cp $f3
    cp $e6
    db $fd
    xor $f9
    call $99fb
    rst $30
    ld a, [hl-]

jr_0b0_5ee1:
    rst $20
    ld [hl-], a
    rst $28
    inc [hl]
    adc $c8
    cp [hl]
    ret nz

    cp [hl]
    sub b
    ld a, l
    sub b
    ld a, c
    jr nz, jr_0b0_5ee1

    ld b, c
    di
    ld b, c

jr_0b0_5ef3:
    db $e3
    add e
    rst $20
    add d
    rst $00
    ld b, $cf
    ld b, $9f
    inc c
    sbc $0c
    cp $c0
    jp $f030


    inc c
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
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld c, $00
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
    ld b, b
    add b
    sub b
    ld h, b
    ld h, b
    jr jr_0b0_5f4b

    ld b, $0e
    ld bc, $0007
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

jr_0b0_5f4b:
    nop
    nop
    nop
    inc bc
    nop
    rla
    nop
    scf
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$c6]
    add c
    call nz, $8483
    inc bc
    add h
    inc bc
    inc b
    inc bc
    inc c
    inc bc
    ld [$0807], sp
    rlca
    ld c, $01
    jr jr_0b0_5f8b

    db $10
    rrca
    ld h, b
    rra
    jp $873f


jr_0b0_5f8b:
    ld a, a
    rst $18
    cpl
    sbc a
    rrca
    sbc a
    ld a, a
    ld c, $fe
    ld e, [hl]
    cp $fe
    cp $fe
    cp $fc
    db $fc
    db $fc
    db $fc
    sbc b
    sbc b
    cp c
    cp $fb
    db $fc
    inc sp
    db $fc
    adc l
    ld a, [c]
    ldh a, [rIE]
    db $e4
    ei
    add sp, -$09
    ret


    rst $30
    ld bc, $03ff
    rst $38
    rlca
    rra
    rrca
    rra
    rrca
    cp $7f
    cp $7f
    db $fc
    rst $38
    db $fc
    cp $f9
    db $fd
    db $d3
    cp $83
    cp $e3
    cp h
    and $74
    adc $68
    call c, $bcc8
    ret nc

    add hl, sp
    and c
    ld a, c
    and c
    ld [hl], e
    ld b, e
    rst $20
    ld b, d
    rst $20
    add [hl]
    rst $08
    add h
    adc $0c
    sbc [hl]
    jr @-$62

    jr jr_0b0_6020

    ld sp, $3038
    ld a, c
    ld h, d
    pop af
    ld b, d
    pop af
    add l

jr_0b0_5fed:
    ld a, [c]
    add c

jr_0b0_5fef:
    xor $8a
    push bc
    ld a, [bc]
    call nz, $8815
    dec d
    adc b
    dec h
    jr jr_0b0_6025

    ld de, $215b
    ld d, a
    ld hl, $42bf
    cp a
    ld b, d
    ld a, $05
    ld c, $05
    ret nz

    pop bc
    jr nz, jr_0b0_5fed

    jr nz, jr_0b0_5fef

    ld b, b
    jp $8300


    nop
    add e
    nop
    add e
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a

jr_0b0_6020:
    nop
    ld b, $00
    ld b, $00

jr_0b0_6025:
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $00
    ld b, $c0
    ld c, $30
    adc $c0
    ld a, $f0
    ld c, $30
    rrca
    db $10
    ld c, $00
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    ld b, b
    inc c
    ld [hl], b
    inc c
    sub b
    ld c, $b0
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    rlca
    ld [$1807], sp
    rlca
    jr jr_0b0_607e

    jr jr_0b0_6098

    jr jr_0b0_6082

    ccf
    nop
    ccf

jr_0b0_607e:
    nop
    ccf
    nop
    ccf

jr_0b0_6082:
    nop
    ld a, a
    nop

jr_0b0_6085:
    ld a, a
    nop
    ld a, a
    dec c
    ld [hl], d
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

jr_0b0_6098:
    rst $38
    nop
    rst $38
    nop
    di
    rrca
    rst $20
    rra
    rlca
    cp $0f
    cp $1f
    db $fd
    ccf
    db $fd
    dec a
    ei
    ld a, [hl]
    rst $30
    cp $e7
    db $fc
    xor $f8
    db $ec
    ld hl, sp-$63
    pop af
    cp c
    pop de
    dec sp
    db $e3
    ld [hl], e
    jp nz, Jump_0b0_46f7

    rst $20
    add [hl]
    rst $08
    adc h
    rst $08
    inc c
    sbc a
    jr jr_0b0_6085

    jr c, jr_0b0_60ff

    scf
    ld l, b
    ld h, b
    ld a, e
    ld [hl], b
    rst $00
    ld hl, sp-$39
    rst $38
    ld hl, sp-$0f
    rst $38
    ld bc, $019b
    sbc e
    ld bc, $0137
    scf
    ld [bc], a
    ld l, a
    ld [bc], a
    ld l, [hl]
    inc b
    xor $55
    adc l
    ld e, c
    adc l
    xor c
    dec de
    cp e
    dec de
    ld [hl], e
    rla
    ld d, e
    scf
    ld h, a
    daa
    scf
    rst $28
    ld b, $fe
    ld l, d
    sbc $ac
    rst $18
    call c, $dcbc
    cp h
    cp b
    ld a, b
    cp b

jr_0b0_60ff:
    ld a, b
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$e0]
    ldh [$e0], a
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
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    db $fc
    nop
    ld a, $00
    rrca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    call nz, Call_000_2400
    nop
    inc e
    nop
    ld c, $00
    add hl, bc
    nop
    ld [$0800], sp
    nop
    stop
    stop
    sub b
    nop
    ret nc

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp $80
    ld a, a
    and b
    ld e, a
    or b
    ld c, a
    cp h
    ld b, e
    cp a
    ld b, b
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $18
    nop
    db $db
    nop
    cp e
    nop
    cp a
    nop
    ldh [rP1], a
    rst $38
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
    add b
    ld a, a
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
    nop
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rlca
    ld hl, sp-$7d
    db $fc
    add hl, de
    cp $38
    rst $38
    jr c, @+$01

    ld a, h
    rst $38
    ld e, h
    rst $38
    ret z

    rst $38
    call z, $84f3
    di
    sub h
    db $e3
    ld c, $e3
    ld l, $c7
    ld c, $c7
    inc c
    rst $18
    inc c
    sbc a
    ld a, [bc]
    sbc a
    ld a, [de]
    ccf
    ld d, $3f
    inc [hl]
    ld a, a
    db $e4
    rra
    inc e
    inc hl

jr_0b0_61be:
    ld [bc], a
    add l
    inc b
    ei

jr_0b0_61c2:
    ld [c], a
    dec e

jr_0b0_61c4:
    db $fc
    db $e3
    ld a, b
    rst $38
    jr c, jr_0b0_61c2

    jr c, jr_0b0_61c4

    jr nc, jr_0b0_61be

    ldh a, [$f0]
    pop af
    rst $38
    db $ed
    rst $38
    jp $c3ff


    rst $38
    rst $00
    rst $38
    add a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    add e
    inc bc
    di
    inc bc
    rra
    nop
    rlca
    rrca
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rra
    inc bc
    inc de
    nop
    stop
    jr nz, jr_0b0_6209

jr_0b0_6209:
    jr nz, jr_0b0_620b

jr_0b0_620b:
    jr nz, jr_0b0_620d

jr_0b0_620d:
    jr nz, jr_0b0_620f

jr_0b0_620f:
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
    ldh [rP1], a
    ld hl, sp+$00
    ld a, [hl]
    nop
    rra
    nop
    rlca
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
    ld h, b
    nop
    jr jr_0b0_623d

jr_0b0_623d:
    ld b, $00
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
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    cp $80
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    rlca
    ld [bc], a
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
    jr jr_0b0_62be

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b0_62ce

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b0_62de

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b0_62ee

    ld [hl-], a

jr_0b0_62be:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b0_62fe

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc [hl]
    inc [hl]
    inc [hl]

jr_0b0_62ce:
    inc [hl]
    inc [hl]
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_0b0_62de:
    inc [hl]
    inc [hl]
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_0b0_62ee:
    inc [hl]
    inc [hl]
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]

jr_0b0_62fe:
    inc [hl]
    inc [hl]
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld d, c
    ld d, d
    ld d, e
    inc sp
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
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
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
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
    inc [hl]
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
    nop
    rlca
    ld [bc], a
    ld [bc], a
    add [hl]
    add a
    adc b
    ld a, [bc]
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ld de, $008f
    sub b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    sub c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    inc bc
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
    ld b, $01
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0607
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0007
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
    ld bc, $0707
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
    ld b, $06
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
    ld bc, $0101
    ld bc, $2101
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
    ld bc, $ffff
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
    nop
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
    rst $10
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    and l
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
    ld c, b
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
    xor d
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
    ld bc, $03fe
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
    db $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fa
    dec c
    ld a, [$fa0d]
    dec c
    ld a, [$fa0d]
    dec c
    ld a, [$fa0d]
    dec c
    ld a, [$fa0d]
    dec c
    ld a, [$fa0d]
    dec c
    ld a, [$0a0d]
    db $fd
    push af
    ei
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    push af
    dec de
    ld [$ea36], a
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $ea
    ld [hl], $d4
    ld l, h
    call nc, $d46c
    ld l, h
    call nc, $d46c
    ld l, h
    call nc, $d46c
    ld l, h
    call nc, $d46c
    ld l, h
    call nc, $d46c
    ld l, h
    call nc, $d46c
    ld l, h
    call nc, $a86c
    ret c

    xor b
    ret c

    xor b
    ret c

    xor b
    ret c

    xor b
    ret c

    xor b
    ret c

    xor b
    ret c

    cp a
    cp a
    cp b
    cp b
    sbc e
    sbc b
    adc e
    adc b
    adc e
    adc b
    ld b, a
    ld b, h
    ld b, a
    ld b, h
    ld b, a
    ld b, h
    ld b, a
    ld b, h
    ld b, a
    ld b, h
    ld b, a
    ld b, h
    rst $00
    push bc
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc a
    adc c
    adc [hl]
    adc e
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    ld e, $13
    inc a
    daa
    inc a
    daa
    inc a
    daa
    inc a
    daa
    inc a
    daa
    inc a
    daa
    inc a
    daa
    inc a
    daa
    jr c, jr_0b0_66b7

    jr c, jr_0b0_66b9

    jr c, jr_0b0_66bb

    jr c, jr_0b0_66bd

    jr c, jr_0b0_66bf

    jr c, jr_0b0_66c1

    ld a, b
    ld b, a
    ld a, b
    ld b, a
    ld a, b
    ld b, a
    ld a, b
    ld b, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], b
    ld c, a
    ld [hl], c
    ld c, [hl]
    ld [hl], c
    ld c, [hl]
    ld [hl], b
    ld c, a
    ld [hl], c
    ld c, [hl]
    ld [hl], c
    ld c, [hl]
    ld [hl], e
    ld c, h
    ld [hl], e
    ld c, h
    di

jr_0b0_66b7:
    adc h
    di

jr_0b0_66b9:
    adc h
    db $e3

jr_0b0_66bb:
    sbc h
    db $e3

jr_0b0_66bd:
    sbc h
    rst $20

jr_0b0_66bf:
    sbc b
    rst $20

jr_0b0_66c1:
    sbc b
    rst $20
    sbc b
    rst $00
    sbc b
    rst $20
    sbc b
    rst $08
    sub b
    rst $28
    sub b
    rst $08
    sub b
    rst $08
    sub b
    nop
    sbc a
    nop
    sbc a
    nop
    rra
    ld bc, $009e
    rra
    ld bc, $013e
    ld a, $02
    dec a
    inc bc
    inc a
    ld [bc], a
    dec a
    inc bc
    inc a
    inc bc
    inc a
    ld [bc], a
    dec a
    inc bc
    inc a
    dec b
    ld a, [hl-]
    inc bc
    inc a
    dec bc
    inc [hl]
    rrca
    jr nc, @+$09

    jr c, jr_0b0_6706

    jr nc, jr_0b0_6710

    jr z, jr_0b0_671a

    jr nz, jr_0b0_670c

    jr nc, jr_0b0_671e

    ld h, b
    rra
    ld h, b
    cpl
    ld d, b
    ccf
    ld b, b

jr_0b0_6706:
    rra
    ld h, b
    ld a, e
    nop
    ccf
    ld b, b

jr_0b0_670c:
    ld e, a
    jr nz, jr_0b0_678e

    nop

jr_0b0_6710:
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop

jr_0b0_671a:
    cp $00
    db $fc
    nop

jr_0b0_671e:
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    rst $38
    cp a
    ccf
    rst $38
    cp a
    ld a, a
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
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
    add b
    rst $38
    add b
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $00fe
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
    ld [bc], a
    db $fd
    ld bc, $02fe
    db $fd
    nop
    rst $38
    dec b
    ld a, [$fe01]
    dec b
    ld a, [$fb04]
    ld bc, $05fe
    ld a, [$e817]
    rra
    ldh [rIF], a
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$2e], a
    ret nc

    ld a, $c0
    ld e, $e0
    ld c, $f0

jr_0b0_678e:
    ld a, $c0
    ld e, [hl]
    and b
    inc e
    ldh [$5e], a
    and b
    inc e
    ldh [$5c], a
    and b
    cp h
    ld b, b
    inc a
    ret nz

    cp h
    ld b, b
    cp b
    ld b, b
    cp b
    ld b, b
    ld a, b
    add b
    cp b
    ld b, b
    ld a, b
    add b
    ld a, b
    add b
    or b
    ld b, b
    ld h, b
    add b
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [rNR34], a
    ldh [$3e], a
    ret nz

    rra
    ldh [$3e], a
    ret nz

    ccf
    ret nz

    ld a, $c0
    ld e, [hl]
    and b
    dec a
    ret nz

    ld a, a
    add b
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, $c0
    db $fd
    nop
    rst $38
    nop
    db $fc
    nop
    ei
    nop
    ld a, a
    add b
    ei
    nop
    db $fd
    nop
    ld a, a
    add b
    pop af
    nop
    rst $30
    nop
    rst $38
    nop
    xor $00
    rst $30
    nop
    db $fd
    nop
    sbc $00
    and $00
    db $fc
    nop
    db $fc
    nop
    cp b
    nop
    adc h
    nop
    cp b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    add b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [rIE]
    pop bc
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    dec b
    ld a, [$ab54]
    dec h
    jp c, $ea15

    dec h
    jp c, $bd42

    inc e
    db $e3
    ld a, c
    rst $38
    ldh a, [rIE]
    or a
    db $fc
    jp hl


    db $fc
    db $e3
    db $fc
    db $d3
    ld hl, sp-$11
    ld hl, sp+$67
    ld hl, sp-$49
    ld hl, sp+$27
    ld hl, sp-$73
    ldh a, [$9f]
    ldh [rVBK], a
    ldh a, [$9f]
    ldh [$9f], a
    ldh [$9f], a
    ldh [$af], a
    ret nc

    ccf
    ret nz

    dec [hl]
    ret nz

    ld a, [hl-]
    ret nz

    db $fd
    nop
    rst $28
    nop
    push de
    nop
    xor l
    nop
    rst $28
    nop
    cp l
    nop
    or [hl]
    nop
    rst $28
    nop
    cp a
    nop
    rst $10
    nop
    ret c

    nop
    cp $00
    xor d
    nop
    call c, $ae00
    nop
    ld a, [hl]
    nop
    db $ec
    nop
    add hl, sp
    nop
    call nc, $e600
    nop
    cp h
    nop
    ld a, [de]
    nop
    db $f4
    nop
    cp d
    nop
    db $ec
    nop
    xor b
    nop
    ld [hl], h
    nop
    sbc b
    nop
    ld [hl], h
    nop
    cp b
    nop
    db $f4
    nop
    ret nc

    nop
    xor b
    nop
    ldh [rP1], a
    and b
    nop
    sbc b
    nop
    ld a, b
    nop
    ld h, b
    nop
    ret c

    nop
    ldh a, [rP1]
    ld h, b
    nop
    ldh a, [rP1]
    and b
    nop
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    sub d
    dec l
    ld d, d
    xor l
    add hl, hl
    sub $92
    ld l, l
    xor c
    ld d, [hl]
    ld b, h
    cp e
    xor d
    ld d, l
    ret


    ld [hl], $aa
    rst $38
    jp c, Jump_0b0_6dff

    rst $38
    push de
    rst $38
    sub h
    rst $38
    ld a, [$4def]
    rst $20
    or e
    ldh [$59], a
    pop af
    xor $f8
    xor $3c
    ld [hl], l
    ld e, $cd
    dec bc
    db $e3
    ld bc, $00ff
    db $fc
    nop
    db $fc
    nop
    cp $00
    ld e, h
    nop
    sbc $00
    ld l, h
    nop
    or [hl]
    nop

jr_0b0_691c:
    db $ec
    nop
    ld h, h
    nop
    ret c

    nop
    jr nc, jr_0b0_6924

jr_0b0_6924:
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    and e
    db $fc
    cpl
    ld hl, sp-$71
    ldh a, [$5e]
    ldh a, [$9e]
    ldh [$5c], a
    ldh a, [$3e]
    ldh [$fc], a
    add b
    cp $80
    rst $38
    db $10
    cp $40
    rst $38
    nop
    db $fd
    add b
    cp $80
    db $fd
    nop
    cp $80
    ei
    nop
    db $fd
    nop
    ld a, $00
    add l
    nop
    ret nz

    nop
    jr nc, jr_0b0_691c

    adc d
    ld [hl], b
    dec b
    jr jr_0b0_6964

    nop
    nop
    nop

jr_0b0_6964:
    nop
    nop
    nop
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
    add b
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    dec hl
    nop
    halt
    xor e
    nop
    db $dd
    nop
    ld l, d
    nop
    or l
    nop
    sub $00
    ld l, e
    nop
    or l
    nop
    sub $00
    cp e
    nop
    ld e, l
    nop
    or [hl]
    nop
    xor e
    nop
    db $ed
    nop
    xor d
    nop
    ld [bc], a
    nop
    nop
    nop
    ld h, b
    nop
    ld e, b
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
    rlca
    nop
    inc bc

jr_0b0_69b3:
    nop
    ld bc, $0000
    nop
    ld h, b
    nop
    xor b
    nop
    call c, $aa00
    nop
    halt
    xor l
    nop
    ld e, d
    nop
    rst $10
    nop
    xor l
    nop
    ld e, d
    nop
    rst $10
    nop
    cp d
    nop
    ld [hl], l
    nop
    db $db
    nop
    xor d
    nop
    ld l, a
    nop
    xor d
    nop
    add b
    nop
    nop
    nop
    dec c
    nop
    dec [hl]
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
    adc e
    ld a, a
    jp hl


    ccf
    ld [c], a
    rra
    push af
    rra
    ld a, [c]
    rrca
    ld [hl], l
    rra
    ld sp, hl

jr_0b0_69fd:
    rrca
    ld a, [hl]
    inc bc
    cp $03
    cp $11
    rst $38
    dec b
    rst $38
    ld bc, $037e
    cp $03
    ld a, a
    ld bc, $02ff
    cp a
    ld bc, $007e
    ld hl, sp+$00
    ld b, e
    nop
    rlca
    ld bc, $0719
    and e
    inc e
    ld b, b
    jr nc, jr_0b0_69b3

    ld l, c
    sub l
    ld l, d
    jr z, jr_0b0_69fd

    sub d
    ld l, l
    ld a, [hl+]
    push de
    ld b, l
    cp d
    xor d
    ld d, l
    ld h, $d9
    xor e
    rst $38
    or [hl]
    rst $38
    ld l, l
    rst $38
    ld d, [hl]
    rst $38
    ld d, d
    rst $38
    cp [hl]
    rst $28
    ld h, l
    rst $08
    sbc e
    rrca
    dec [hl]
    rra
    xor $3f
    rst $28
    ld a, b
    ld e, l
    ldh a, [$67]
    and b
    adc a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld [hl], l
    nop
    rst $30
    nop
    ld l, l
    nop
    db $db
    nop
    ld l, a
    nop
    ld c, l
    nop
    scf
    nop
    add hl, de
    nop
    rlca
    nop
    ld b, $00
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0300
    nop
    ld bc, $0000
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
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    cp a
    ld d, h
    xor e
    ld c, b
    or a
    ld d, b
    xor a
    ld c, b
    or a
    add h
    ld a, e
    ld [hl], c
    adc [hl]
    dec a
    rst $38
    ld e, $ff
    db $db
    ld a, a
    ld l, $7f
    adc a
    ld a, a
    sub a
    ccf
    rst $28
    ccf
    call $db3f
    ccf
    ret


    ccf
    ld h, e
    rra
    ld a, [c]
    rrca
    push hl
    rra
    di
    rrca
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    ld [$f917], a
    rlca
    ld e, b
    rlca
    cp b
    rlca
    ld a, [hl]
    ld bc, $01ee
    ld d, [hl]
    ld bc, $016a
    xor $01
    ld a, d
    ld bc, $01da
    rst $28
    nop
    ei
    nop
    rst $10
    nop
    scf
    nop
    rst $38
    nop
    xor e
    nop
    ld [hl], a
    nop
    db $eb
    nop
    db $fd
    nop
    ld l, a
    nop
    add hl, sp
    nop
    ld d, a
    nop
    rst $08
    nop
    ld a, e
    nop
    or c
    nop
    ld e, a
    nop
    cp e
    nop
    ld l, a
    nop
    dec hl
    nop
    ld e, l
    nop
    inc sp
    nop
    ld e, l
    nop
    dec sp
    nop
    ld e, a
    nop
    ld d, $00
    ld a, [hl+]
    nop
    rrca
    nop
    ld a, [bc]
    nop
    inc sp
    nop
    inc a
    nop
    inc c
    nop
    scf
    nop
    rra
    nop
    inc c
    nop
    ld e, $00
    ld a, [bc]
    nop
    dec b
    nop
    rlca
    nop
    ld [bc], a
    nop
    rlca
    nop
    ld bc, $0700
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    ei
    ld hl, sp-$08
    ld sp, hl
    ld hl, sp+$7f
    cp $3f
    cp $1f
    cp $0f
    cp $0f
    cp $07
    cp $07
    cp $07
    cp $03
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
    ld bc, $81ff
    ld a, a
    ld bc, $81ff
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    ret nc

    cpl
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    add sp, $17
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ld hl, sp+$07
    db $f4
    dec bc
    ld [hl], b
    rrca
    db $f4
    dec bc
    ld [hl], b
    rrca
    ld [hl], h
    dec bc
    ld a, d
    dec b
    ld a, b
    rlca
    ld a, d
    dec b
    ld a, [hl-]
    dec b
    ld a, [hl-]
    dec b
    inc a
    inc bc
    ld a, [hl-]
    dec b
    dec a
    ld [bc], a
    dec a
    ld [bc], a
    ld a, [de]
    dec b
    dec c
    ld [bc], a
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    ld hl, sp+$07
    db $f4
    dec bc
    ld a, b
    rlca
    db $fc
    inc bc
    ld a, h
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, [hl]
    ld bc, $01fe
    ld a, [hl]
    ld bc, $01be
    db $fd
    ld [bc], a
    cp [hl]
    ld bc, $007f
    db $fd
    ld [bc], a
    ld e, $01
    rst $18
    nop
    cp $01
    rst $28
    nop
    rst $18
    nop
    ld a, [hl]
    ld bc, $00f7
    rst $08
    nop
    ld a, a
    nop
    ld a, a
    nop
    dec sp
    nop
    ld h, e
    nop
    dec sp
    nop
    rra
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
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
    ei
    ei
    dec sp
    dec sp
    or e
    inc sp
    and e
    inc hl
    and e
    inc hl
    call nz, $c444
    ld b, h
    call nz, $c444
    ld b, h
    call nz, $c444
    ld b, h
    rst $00
    ld b, a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a
    ld [c], a
    ld [hl+], a

jr_0b0_6c68:
    ld [c], a
    ld [hl+], a

jr_0b0_6c6a:
    ld [c], a
    ld [hl+], a

jr_0b0_6c6c:
    ld [c], a
    ld [hl+], a

jr_0b0_6c6e:
    ld [c], a
    ld [hl+], a

jr_0b0_6c70:
    ld [c], a
    ld [hl+], a

jr_0b0_6c72:
    ld [c], a
    and d
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af

Call_0b0_6c7f:
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    pop af
    sub c
    ld a, b
    ret z

    ld a, b
    ret z

    ld a, b
    ret z

    ld a, b
    ret z

    ld a, b
    ret z

    ld a, b
    ret z

    ld a, b
    ret z

    ld a, b
    ret z

    jr c, jr_0b0_6c68

    jr c, jr_0b0_6c6a

    jr c, jr_0b0_6c6c

    jr c, jr_0b0_6c6e

    jr c, jr_0b0_6c70

    jr c, jr_0b0_6c72

    inc a
    call nz, $c43c
    inc a
    call nz, $c43c
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    inc e
    db $e4
    sbc h
    ld h, h
    sbc h
    ld h, h
    sbc [hl]
    ld h, d
    sbc [hl]
    ld h, d
    adc [hl]
    ld [hl], d
    adc [hl]
    ld [hl], d
    adc $32
    adc $32
    adc $32
    adc $32
    adc $32
    xor $12
    xor $12
    xor $12
    xor $12
    rst $30
    ld bc, $01f7
    di
    ld bc, $01f3
    di
    ld bc, $01fb
    ei
    ld bc, $01f9
    ei
    ld bc, $01f9
    ld sp, hl
    ld bc, $01fb
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    nop
    ld sp, hl
    nop
    and b
    ld e, b
    ldh [rNR24], a
    ret nz

    jr c, @-$1e

    jr @-$2e

    add hl, hl
    ldh a, [$08]
    ldh [rNR23], a
    ldh a, [$0c]
    ldh a, [$0c]
    add sp, $14
    ld hl, sp+$04
    ldh a, [$0c]
    cp h
    nop
    ld hl, sp+$04
    db $f4
    ld [$00fc], sp
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
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, $00
    ld a, $00
    ld e, $00
    ld e, $00
    inc e
    nop
    ld c, $00
    ld e, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    and b
    ld a, a
    ld e, a
    cp a
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    ld e, a
    or b
    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    xor a
    ret c

    ld d, a
    ld l, h
    ld d, a
    ld l, h
    ld d, a
    ld l, h
    ld d, a
    ld l, h
    ld d, a
    ld l, h
    ld d, a
    ld l, h
    dec hl
    ld [hl], $2b
    ld [hl], $2b
    ld [hl], $2b
    ld [hl], $2b
    ld [hl], $2b
    ld [hl], $2b
    ld [hl], $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    dec h
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
    ld c, e
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_0b0_6dff:
    nop
    nop
    ld bc, $0302
    inc b
    dec b
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
    jr jr_0b0_6e34

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b0_6e44

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b0_6e54

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b0_6e64

    ld [hl-], a

jr_0b0_6e34:
    inc sp
    inc [hl]
    dec [hl]
    dec b
    ld [hl], $37
    jr c, jr_0b0_6e75

    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    ld a, $3f
    ccf

jr_0b0_6e44:
    ld b, b
    ld b, c
    dec h
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ccf
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_0b0_6e54:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, h
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    dec b
    dec b

jr_0b0_6e64:
    dec b
    ld e, d
    ccf
    ccf
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
    dec b
    ld h, [hl]

jr_0b0_6e75:
    ld h, a
    ccf
    ccf
    ccf
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
    ccf
    ccf
    ccf
    ccf
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
    nop
    ld d, h
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    nop
    nop
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    nop
    nop
    nop
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    dec b
    nop
    nop
    and d
    and e
    nop
    nop
    nop
    nop
    nop
    nop
    sbc l
    ccf
    ccf
    and h
    and l
    and [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc l
    ccf
    ccf
    ccf
    ccf
    and a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc l
    ccf
    ccf
    ccf
    ccf
    xor b
    nop
    xor c
    xor d
    xor d
    xor d
    xor d
    xor d
    xor e
    nop
    nop
    xor h
    ccf
    ccf
    ccf
    ccf
    xor l
    xor [hl]
    xor a
    ccf
    ccf
    ccf
    ccf
    ccf
    or b
    or c
    nop
    or d
    ccf
    ccf
    ccf
    ccf
    ccf
    or e
    ccf
    ccf
    ccf
    ccf
    ccf
    or h
    or l
    or [hl]
    or a
    cp b
    ccf
    ccf
    ccf
    ccf
    ccf
    add l
    ccf
    ccf
    ccf
    ccf
    ccf
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ccf
    ccf
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    nop
    nop
    ld b, $06
    ld b, $00
    ld b, $06
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
    nop
    nop
    jr nz, jr_0b0_6f88

jr_0b0_6f88:
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
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    nop
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
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0001
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0121
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    jr jr_0b0_70a5

    ld bc, $ff00
    nop
    call $f600

jr_0b0_70a5:
    nop
    reti


    nop
    rst $38
    nop
    add l
    nop
    pop bc
    nop
    rst $30
    nop
    rst $38
    nop
    ld sp, hl
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
    cp $01
    ld a, a
    nop
    ld e, $00
    rra
    nop
    rra
    nop
    ld c, a
    nop
    push hl
    nop
    db $ed
    nop
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    cp e
    rst $38
    cp a
    ld b, $8b
    ld d, d
    rlca
    ld d, d
    rlca
    ld d, d
    daa
    ld d, d
    rrca
    ld [de], a
    rst $38
    ld [bc], a
    rst $20
    ld [bc], a
    add a
    ld bc, $0385
    add l
    inc bc
    add l
    inc bc
    pop bc
    inc bc
    push bc
    inc bc
    add l
    inc bc
    add l
    inc bc
    add l
    inc bc
    cp l
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $03ff
    add b
    ld a, a
    db $10
    ld hl, sp+$70
    rst $38
    rst $30
    ld hl, sp-$10
    rst $38
    rst $30
    ld hl, sp-$0d
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp-$0e
    db $fd
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    cp $c3
    db $fc
    add [hl]
    ld hl, sp-$74
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rSB]
    ldh a, [$0e]
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    ldh a, [$e7]
    nop
    ld [$e007], sp
    rra
    cp h
    inc bc
    ld a, [$6045]
    sbc a
    pop de
    ccf
    and $7f
    call $9aff
    rst $38
    or l
    rst $38
    ld l, d
    rst $38
    ld d, l
    rst $38
    ld l, d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    push de
    rst $38
    ld [$f5ff], a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    jp $803f


    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    ld a, h
    inc bc
    db $fc
    inc bc
    cp [hl]
    ld bc, $006f
    ccf
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
    rst $38
    nop
    rrca
    ldh a, [$f8]
    nop
    ld a, [hl]
    nop
    cp a
    nop
    rst $38
    nop
    ei
    nop
    ld hl, sp+$00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    push de
    nop
    and l
    nop
    xor c
    nop
    and c
    nop
    pop bc
    nop
    pop bc
    nop
    ret nc

    nop
    ret nc

    nop
    jp nc, $d000

    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    pop bc
    nop
    db $d3
    nop
    di
    nop
    di
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ldh a, [rP1]
    rrca
    nop
    nop
    ldh [rIE], a
    nop
    ld a, [hl]
    add b
    ldh a, [rP1]
    ret nz

    rlca
    add b
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    pop hl
    db $fc
    rst $00
    ldh [$8c], a
    ret nz

    jr c, @-$7e

    ld [hl], b
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    rst $38
    nop
    di
    inc c
    rlca
    ld hl, sp-$01
    ld hl, sp+$0f
    ldh a, [rP1]
    ld hl, sp+$0f
    ldh a, [rIE]
    nop
    ld a, $01
    db $fc
    inc bc
    adc b
    ld [hl], a
    add b
    ld a, a
    rlca
    rst $38
    dec a
    rst $38
    db $eb
    cp $57
    cp $ab
    cp $57
    rst $38
    xor e
    rst $38
    ld d, a
    cp $ab
    cp $57
    cp $af
    sbc $77
    sbc $ef
    sbc $75
    adc $af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    xor [hl]
    rst $38
    ld a, a
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
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
    pop bc
    ccf
    pop bc
    ccf
    ld [hl], c
    rrca
    db $fd
    inc bc
    rst $38
    ld bc, $00f7
    ld a, e
    add b
    dec c
    ldh a, [$03]
    db $fc
    add c
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rst $38
    cp h
    ccf
    cp h
    ccf
    cp h
    ccf
    cp h
    ccf
    inc a
    ccf
    inc a
    ccf
    ld a, h
    ccf
    ld a, a
    ccf
    ld h, b
    rra
    ld b, b
    rra
    inc b
    dec de
    inc b
    dec de
    inc c
    inc de
    inc e
    inc bc
    inc e
    inc bc
    inc h
    dec de
    inc h
    dec de
    db $e4
    dec de
    ret nz

    ccf
    ret nz

    ccf
    db $db
    ccf
    ldh a, [rIE]
    ccf
    ld b, b
    cp a
    ld b, b
    ccf
    ld b, b
    cp a
    ld b, b
    rlca
    nop
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
    nop
    rst $38
    ld a, a
    nop
    pop af

jr_0b0_7329:
    nop
    stop
    ld de, $1100
    nop
    inc de
    nop
    rla
    nop
    rrca
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
    nop
    nop
    nop
    add b
    ccf
    jr nz, jr_0b0_7329

    nop
    rst $38
    rrca
    rst $38
    rst $30
    db $fd
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
    push de
    ld a, a
    xor d
    ld a, a
    rst $10
    ld a, a
    db $eb
    ccf
    rst $10
    ccf
    ld [$f53f], a
    rra
    ld [$551f], a
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
    ei
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [$f5ff]
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
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
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
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$1f], a
    pop af
    ld c, $58
    daa
    cp b
    rlca
    db $fc
    inc bc
    cp $01
    ld a, d
    add c
    ccf
    ret nz

    ccf
    ret nz

    dec e
    ldh [rNR33], a
    ldh [rNR34], a
    ldh [$0e], a
    ldh a, [$0e]
    ldh a, [$f0]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    pop af
    nop
    ld sp, hl
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    nop
    cp $fe
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld hl, sp+$06
    ld [hl-], a
    call z, Call_000_08f6
    ld a, [c]
    inc c
    ld a, [c]
    inc c
    di
    inc c
    or e
    ld c, h
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
    ld b, b
    ccf
    nop
    ccf
    jr nz, jr_0b0_743b

    db $10
    rrca
    db $10
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
    nop
    nop
    nop
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

jr_0b0_743b:
    rst $38
    rst $38
    rst $38
    push de
    ld a, a
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor [hl]
    ei
    ld e, l
    ei
    cp $fb
    rst $38
    ld sp, hl
    xor [hl]
    ei
    ld d, l
    rst $38
    xor e
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
    ld a, a
    rst $38
    cp a
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ld l, a
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
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    ccf
    nop
    ccf
    nop
    nop
    ccf
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, $01
    ccf

jr_0b0_74bd:
    nop
    ld a, $01
    ccf
    nop
    ld a, $01
    dec a
    ld [bc], a
    ld a, h
    inc bc
    nop
    ld a, a
    nop
    rst $38
    sbc b
    ld h, a
    db $f4
    dec bc
    or h
    ld c, e
    and h
    ld e, e
    xor d
    ld d, l
    xor b
    ld d, a
    and d
    ld e, l
    and b
    ld e, a
    jr nz, jr_0b0_74bd

    nop
    rst $38
    nop
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
    ld b, b
    ccf
    ld h, b
    rra
    jr nz, jr_0b0_7513

    jr nz, jr_0b0_7515

    ld sp, $8b8e
    db $76
    inc de
    rst $28
    dec b
    ei
    pop hl
    rst $38
    cp c
    rst $38
    ld e, a
    rst $38
    xor e
    rst $38
    ld e, l
    rst $38
    cp d
    rst $38
    ld [hl], l
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a

jr_0b0_7513:
    rst $38
    rst $38

jr_0b0_7515:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    cp $ff
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ei
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp+$60
    ld a, a
    jr nc, jr_0b0_757f

    ccf
    db $10
    ccf
    db $10
    ccf
    jr jr_0b0_7586

    ld [$083f], sp
    ccf
    inc c
    ccf
    inc b
    ccf
    inc b
    ccf
    ld b, $3f
    ld [bc], a
    ccf
    ld [hl+], a
    ccf
    ld [hl-], a
    ccf
    ld a, [hl-]
    ccf
    ld a, $3f
    ld a, $3f
    ld a, $3f

jr_0b0_7561:
    rst $38
    ld a, a

jr_0b0_7563:
    cp a
    ld a, a
    add b
    ld b, a
    add b
    ld c, a

jr_0b0_7569:
    add b
    rst $18
    nop
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08

jr_0b0_757f:
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop

jr_0b0_7586:
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    rst $08
    nop
    jr nc, jr_0b0_7561

    jr nc, jr_0b0_7563

    db $10
    rst $08
    db $10
    rst $08
    db $10
    rst $08
    db $10
    rst $08
    db $10
    rst $08
    db $10
    rst $08
    jr jr_0b0_7569

    sbc c
    add a
    add hl, de
    add a
    add hl, de
    add a
    add hl, de
    add a
    add hl, de
    add a
    dec e
    add a
    rrca
    add a
    rrca
    add a
    rra
    sub a
    rra
    add a
    rra
    add a
    rra
    add a
    rra
    sub a
    sbc a
    sub a
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
    db $fc
    ret nz

    add e
    add b
    add e
    rst $38
    rst $38
    rst $38
    add b
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
    ldh a, [$f0]
    ldh a, [$fa]
    ldh a, [$f8]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    ei
    db $fc
    ld hl, sp-$08
    ei
    db $fc
    ld hl, sp-$01
    cp e
    call nz, $ccb3
    and a
    call c, $8cf3
    ld [hl], l
    adc [hl]
    ld hl, sp+$07
    db $fc
    rlca
    db $fc
    rlca
    push af
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    rst $38
    nop

Call_0b0_7620:
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
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
    db $fc
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    ldh [$1f], a
    nop
    rra
    db $db
    call nz, $d0cf
    rst $08
    ret nc

    rst $08
    ret nc

    rst $08
    sub b
    call z, $c193
    sbc [hl]
    rst $08
    sub b
    rst $00
    sub b
    rst $00
    ret nc

    jp $c1d0


    ret nc

    ret nc

    ret nc

    ret nz

    ret nc

    ret nz

    ret nc

    ret nz

    ret nc

    pop de
    ret nc

    pop bc
    ret nc

    jp $c3d0


    ret nc

    rst $10
    ret nc

    rst $00
    ret nc

    call z, $ddd3
    db $d3
    dec c
    inc de
    sbc h
    ld d, e
    call c, $dcd3
    db $d3
    dec e
    db $d3
    db $dd
    db $d3
    push de
    db $db
    call nc, $d4db
    db $db
    rst $10
    rst $18
    jp c, $d3dd

    db $10
    ld [de], a
    ld de, $1051
    db $10
    ret nc

    ret nc

    ret nc

    add b
    ret nc

    add b
    ret nc

    add b
    ret nc

    add b
    ret nc

    rst $10
    db $10
    ld [$d010], sp
    db $10
    ld b, b
    sub b
    rst $18
    ccf
    ret nz

    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $28
    rra
    ld a, b
    add a
    sbc $e1
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc a
    ld a, a
    rrca
    nop
    nop
    nop
    nop
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
    ld hl, sp+$07
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
    add b
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    ld b, b
    cp a
    ldh [$1f], a
    db $fc
    inc bc
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, l
    nop
    ld bc, $0700
    nop
    ld h, c
    nop
    ld l, l
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    dec b
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    cp a
    rst $38
    db $eb
    db $f4
    rst $38
    nop
    ld a, a
    add b
    cp $01
    ld [hl], l
    adc d
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    jr jr_0b0_776f

    rst $20
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc

jr_0b0_776f:
    nop
    jr @-$17

    inc e
    db $e3
    rra
    ldh [rNR32], a
    db $e3
    ret c

    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    nop
    rst $38
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
    nop
    rst $38
    nop
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
    rrca
    rst $38
    ld a, a
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
    and c
    ld e, [hl]
    xor a
    ld d, b
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld [bc], a
    db $fd
    ld d, l
    cp $55
    cp $55
    cp $aa
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    ret z

    scf
    ld [hl], l
    adc d
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    cp $01
    ret nz

    ccf
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
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$2f]
    ld [hl], b
    cpl
    ldh a, [rVBK]
    ld [hl], b
    rst $08
    ld a, b
    rst $00
    ld [hl], b
    rst $08
    ld [hl], b
    rst $08
    ld a, b
    rst $00
    ld a, b
    rst $00
    ld a, b
    rst $00
    ld a, h
    jp $c17e


    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    ld [hl], e
    ret nz

    ld l, l
    call z, $dc5d
    ld e, e
    ret c

    ld h, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    rst $08
    ld a, a
    rst $38
    ld a, a
    rst $18
    ld a, e
    rst $18
    ld a, e
    rst $18
    ld a, a
    db $dd
    ld a, e
    call z, $cc7b
    ld a, a
    call z, $c97f
    ld a, a
    reti


    ld a, a
    db $db
    ld a, e
    rst $18
    ld a, a
    rst $18
    ld a, e
    rst $18
    ld a, a
    rst $18
    ld a, e
    rst $18
    ld a, a
    rst $18
    ld a, a
    db $db
    ld a, a
    db $db
    ld a, a
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    db $db
    rra
    ei
    rrca
    ei
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
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b0_78ed:
    nop
    rst $38
    nop
    ret nz

    ccf
    inc a
    jp Jump_000_01fe


    cp $01
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $81
    ld a, [hl]
    add b
    ld a, a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    jr nz, jr_0b0_78ed

    cp a
    ret nz

    rst $30
    ld hl, sp-$71
    ld a, a
    ldh a, [rIF]
    rst $38
    nop
    add b
    ld a, a
    jp $e13c


    ld e, $e1
    ld e, $f0
    rrca
    add b
    ld a, a
    ld [hl], b
    adc a
    ld a, b
    add a
    ld a, b
    add a
    inc a
    jp Jump_0b0_43bc


    cp [hl]
    ld b, c
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
    ld a, [hl]
    rst $38
    ld [hl], b
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
    ld c, h
    rst $38
    ld e, [hl]
    rst $38
    rst $18
    rst $38
    ret z

    ld a, a
    add $7f
    push bc
    ld a, a
    jp nc, $c37f

    ld a, a
    rst $10
    ld a, a
    rst $28
    ld a, a
    rst $28
    ld a, a
    rst $18
    ld a, a
    rst $28
    ld a, a
    rst $18
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

jr_0b0_7994:
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
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$0df7], sp
    ld a, [c]
    add [hl]
    ld a, c
    jp nz, $c23d

    dec a
    pop hl
    ld e, $f0
    rrca
    add h
    ld a, e
    ld a, l
    add d
    ld a, h
    add e
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$9f], a
    ld h, b
    adc a
    ld [hl], b
    rst $00
    jr c, jr_0b0_7994

    inc a
    db $e3
    inc e
    pop hl
    ld e, $f1
    ld c, $00
    rst $38
    nop
    rst $38
    inc a
    jp Jump_000_01fe


    cp $01
    rst $38
    ret nz

    ccf
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld bc, $fffe
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
    db $fd
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add hl, bc
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
    sbc a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $18
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
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    inc bc
    cp $01
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
    ldh [rTAC], a
    ld hl, sp-$20
    rst $38
    inc e
    rst $38
    ei
    rlca
    db $fc
    inc bc
    inc bc
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
    ld a, a
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
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ret nz

    ccf
    ldh a, [rIF]
    ret nz

    ccf
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    db $fc
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
    cp $01
    add b
    rst $38
    ld [hl], b
    rst $38
    adc h
    ld a, a
    add e
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
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
    ld [hl], b
    rst $38
    inc c
    rst $38
    dec sp
    rst $00
    ld e, $e1
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    cp $ff
    ld sp, hl
    rst $38
    and $ff
    sbc b
    rst $38
    pop hl
    rst $38
    add [hl]
    rst $38
    sbc b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $1f
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, c
    rst $38
    add [hl]
    rst $38
    jr @+$01

    ld h, b
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
    rlca
    rst $38
    nop
    rst $38
    nop
    ld a, [$fb00]
    nop
    ei
    ld bc, $00fb
    ei
    ld bc, $01fb
    ei
    ld bc, $00fb
    ei
    rlca
    rst $38
    rrca
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3a], a

Jump_0b0_7be5:
    ret nz

    ccf
    ret nz

    rst $20
    ld hl, sp-$01
    rra
    sbc a
    ld h, b
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

    ld a, a
    add b
    ld a, a
    nop
    rst $38
    ret nz

    ccf
    ldh a, [$8f]
    ld a, [hl]
    pop hl
    rra
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
    rst $38
    rst $38
    ld bc, $00ff

jr_0b0_7c1b:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [$fe]
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    ret c

    rlca
    ldh a, [rIF]
    jr nz, jr_0b0_7c1b

    ldh a, [rIE]
    rst $38
    rrca
    rst $38
    nop
    add a
    ld a, b
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld hl, sp+$07
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    jp nz, $fa3f

    add a
    ld a, [$1ef7]
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    nop
    push af
    inc b
    rst $30
    inc b
    di
    inc b
    di
    inc b
    di
    inc b
    rst $30
    ld bc, $07f7
    rst $30
    rlca
    di
    rlca
    inc sp
    rst $00

jr_0b0_7ca0:
    di
    rst $30
    di
    rlca
    di
    rlca

jr_0b0_7ca6:
    inc sp
    rst $00
    rlca
    rst $30
    inc b
    rst $30

jr_0b0_7cac:
    inc b
    db $fc
    add a
    db $fc
    pop af
    ld a, h
    jp nz, Jump_0b0_450f

    xor h
    ld b, l
    xor h
    ld c, a
    xor b
    ld c, b
    xor b
    ld c, e
    xor b
    sra b
    sra b
    add e
    add sp, -$55
    ret z

    inc hl
    ret z

    dec hl
    ret z

    dec sp
    ret c

    jr c, jr_0b0_7ca6

    jr c, jr_0b0_7ca0

    add sp, $10
    jr nc, jr_0b0_7cac

    ld sp, hl
    jp c, $d833

    inc a
    db $d3
    ccf
    ret nc

    ccf
    ret nc

    rst $38
    ret nc

    rst $18
    db $fc
    rst $00
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr @+$01

    inc c
    rst $38
    ld b, $ff
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
    nop
    nop
    nop
    nop
    nop
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $00
    nop
    nop
    nop
    nop
    nop
    rla
    jr jr_0b0_7d42

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b0_7d31

jr_0b0_7d31:
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_0b0_7d67

    ld a, [hl+]
    dec hl
    nop
    nop

jr_0b0_7d42:
    nop
    nop
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b0_7d7b

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    nop
    nop
    nop
    jr c, jr_0b0_7d8f

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
    ld b, h
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_0b0_7d67:
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_0b0_7d7b:
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld d, e
    ld d, e
    ld d, e
    ld d, e
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

jr_0b0_7d8f:
    ld l, d
    ld l, e
    ld l, h
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    nop
    db $76
    ld [hl], a
    ld a, b
    ld a, c
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
    nop
    add e
    add h
    add l
    add [hl]
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
    sub h
    sub l
    nop
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
    sbc l
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    nop
    nop
    nop
    nop
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

    ld d, e
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
    call z, $cce6
    rst $20
    add sp, -$17
    ld [$5353], a
    ld d, e
    ld d, e
    ld d, e
    db $eb
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    ld d, e
    or $f7
    ld hl, sp-$34
    call z, $faf9
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
    ld bc, $4101
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0701
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc bc
    nop
    inc bc
    ld bc, $0001
    inc bc
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    ld bc, $0101
    inc bc
    inc bc
    ld bc, $0001
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
    ld bc, $0100
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $00
    nop
    ld bc, $0101
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
    ld b, $00
    nop
    nop
    ld bc, $ff01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$e3], a
    ldh a, [$f1]
    ld hl, sp+$78
    db $fc
    cp h
    ld a, [hl]
    ld a, h
    cp [hl]
    inc a
    cp $3c
    cp $3c
    cp $3c
    cp $3c
    cp $3e
    cp $3e
    cp $3e
    cp $fe
    ld b, $1e
    ld b, $1e
    ld b, $1e
    ld b, $ee
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld hl, sp+$06
    adc h
    ld b, $8c
    ld b, $89
    ld b, $8d
    rlca
    adc l
    rlca
    adc l
    rlca
    db $fd
    rlca
    push af
    rrca
    push af
    rrca
    push hl
    rra
    push bc
    ccf
    add l
    ld a, a
    ld b, l
    cp a
    add l
    ld a, a
    dec b
    rst $38
    rst $38
    ld bc, $0301
    ld bc, $0103
    inc bc
    inc sp
    rrca
    ld h, e
    adc a
    inc bc
    rrca
    ld bc, $d10f
    ld hl, $0503
    nop
    rlca
    nop
    ld bc, $0108
    ret z

    ld bc, $c100
    jr nz, @-$3d
