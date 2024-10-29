SECTION "ROM Bank $03f", ROMX[$4000], BANK[$3f]

    adc a
    ld a, a
    rst $00
    ccf
    db $eb
    rla
    pop hl
    rra
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    db $fc
    inc bc
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
    inc bc
    db $fc
    inc e
    ldh [$e0], a
    nop
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
    ld bc, $0f01
    inc b
    inc a
    nop
    ldh [rP1], a
    nop
    nop
    ld bc, $0700
    ld bc, $273d
    rst $20
    ccf
    ccf
    rst $38
    rst $38
    db $fd
    ld [bc], a
    rst $38
    nop
    db $dd
    ld [hl+], a
    ld [$f515], a
    ld a, [bc]
    cp d
    ld b, l
    push de
    ld a, [hl+]
    xor b
    ld d, a
    xor [hl]
    nop
    ld e, a
    nop
    cp a
    nop
    rst $38
    nop
    db $e3

jr_03f_4069:
    inc e
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    jr nc, @-$2f

    jr nz, jr_03f_4069

    ld a, h
    add e
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh a, [$f7]
    db $fc
    db $ec
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
    db $fd
    dec a
    ld a, [$0b1a]
    ei
    ld a, e
    di
    dec hl
    di
    sbc c
    ld h, a
    ldh a, [rIF]
    ret nz

    ccf
    ld h, b
    sbc a
    nop
    rst $38
    nop
    ld sp, hl
    ld [hl], b
    adc b
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

Call_03f_40cc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f08
    inc b
    inc a
    nop
    ldh [rP1], a
    nop
    nop
    ld bc, $0f00
    ld [$6438], sp
    db $e4
    ld a, [hl]
    ld a, [hl]
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
    cp $01
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    ld a, [$fd05]
    ld [bc], a
    xor d
    ld d, l
    db $f4
    dec bc
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
    ld [hl], b
    adc a
    add sp, $17
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

jr_03f_4121:
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
    ldh [$e7], a
    ld hl, sp+$1f
    jr jr_03f_4121

    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$08
    ld hl, sp-$3a
    ld a, $f9
    rlca
    ret nz

    ccf
    add b
    ld a, a
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
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, b
    add a
    rlca
    ld hl, sp+$04
    ei
    db $db
    db $e4
    ldh [rIE], a
    db $fc
    rst $38
    rst $18
    cp $dd
    rst $38
    call c, $bdff
    rst $38
    cp l
    rst $38
    dec a
    rst $38
    dec a
    ccf
    db $db
    rst $18
    jr c, @+$26

    jr jr_03f_4184

    inc c
    ld [$888c], sp
    ld e, h
    ret nc

    ld a, [hl+]
    jp nc, $4282

    rlca
    rlca
    inc b
    rlca
    inc b
    rlca

jr_03f_4184:
    inc b
    rlca
    inc b
    rlca
    dec b
    rlca
    rlca
    rlca
    inc b
    rlca
    ld b, $07
    dec c
    rrca
    add hl, bc
    ccf
    ld bc, $01e7
    rlca
    ld bc, $040f
    rrca
    ld b, b
    ld a, a
    nop
    rst $28
    ld [$0f0f], sp
    rrca
    rrca
    rrca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $fe
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
    rst $38
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    ld d, b
    xor a
    or b
    ld c, a
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, a
    call nc, $a82b
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, a
    call nc, $a82b
    ld d, a
    ret nc

    cpl
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ret nc

    cpl
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ret nz

    ccf
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
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra

jr_03f_423d:
    rst $38
    ccf
    ccf
    inc a
    rst $38
    inc bc
    rst $38
    inc b
    ei
    ld hl, sp+$07
    ldh [$1f], a
    cp $01
    ldh a, [rIF]
    cp $01
    ld bc, $4efe
    or c
    ld de, $06ee
    ld sp, hl
    add b
    ld a, a
    ld hl, sp+$07
    jr nz, jr_03f_423d

    nop
    rst $38
    rst $38
    nop
    ccf
    ret nz

    rst $18
    ldh [$e0], a
    cp $e9
    ld sp, hl
    rst $30
    rst $30
    rst $30
    rst $30
    rst $20
    rst $20
    nop
    ld [hl], $40
    inc hl
    ret nz

    jr nz, jr_03f_4277

jr_03f_4277:
    stop
    inc b
    nop
    ld [bc], a
    nop
    nop
    add b
    add b
    ld h, b
    ldh [$b8], a
    ld hl, sp+$78
    ld hl, sp-$02
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld [hl-], a
    ld a, [c]
    ld a, a
    rst $38
    ld a, [$fffa]
    rst $38
    cp $fe
    or $f6
    db $76
    db $76
    cp [hl]
    cp [hl]
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
    rst $38
    rst $38
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl
    ldh [$e0], a
    xor [hl]
    xor [hl]
    cp $fe
    db $fd
    db $fd
    ld a, [$fcfa]
    db $fc
    di
    di
    db $ec
    db $ec
    daa
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    cp $0f
    cp $07
    cp $0f
    cp $17
    cp $2f
    cp $1f
    cp $2f
    cp $0f
    cp $2f
    cp $1f
    cp $3f
    cp $1f
    db $fc
    ccf
    db $fc
    rra
    db $fc
    ccf
    db $fc
    rra
    db $fc
    ccf
    db $fc
    ld e, a
    db $fc
    ccf
    db $fc
    ld a, a
    db $fc
    cp a
    db $fc
    ld a, a
    db $fc
    cp a
    ld hl, sp+$7f
    ld hl, sp-$01
    ld hl, sp+$7f
    ld hl, sp-$01
    ld hl, sp+$7f
    ld hl, sp-$01
    ld hl, sp+$7f
    ld hl, sp-$08
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $f4
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    ld a, [$f4ff]
    rst $38
    ld a, [$f4ff]
    rst $38
    ld [$f5ff], a
    rst $38
    ld [$ffff], a
    push af
    rst $38
    ld [$757f], a
    rrca
    adc d
    inc bc
    pop af
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    jr nc, @-$2f

    ld hl, sp+$07
    ld a, b
    add a
    ld [hl], b
    adc a
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    adc $01
    jr nc, jr_03f_4398

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
    add b
    nop
    ret nz

    nop
    ld [hl], b
    nop
    jr c, jr_03f_437b

jr_03f_437b:
    inc c
    nop
    add b
    nop
    ret nz

    nop
    jr nc, jr_03f_4383

jr_03f_4383:
    jr jr_03f_4385

jr_03f_4385:
    inc b
    nop
    nop
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    ldh a, [$f0]
    ret nz

    ret nz

    db $f4
    db $f4
    db $fc
    db $fc
    ld sp, hl
    ld sp, hl

jr_03f_4398:
    rst $38
    rst $38
    ldh a, [$f0]
    nop
    nop
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    ret nc

    and b
    and b
    ld d, d
    ld d, d
    xor h
    xor h
    ld a, [$f4fa]
    db $f4
    db $ec
    db $ec
    ldh a, [$f0]
    ldh [$e0], a
    xor [hl]
    xor [hl]
    ld a, a
    ld a, a
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    jr nz, @+$22

    ld [$2808], sp
    jr z, jr_03f_440f

    ld b, h
    inc b
    inc b
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
    rrca
    rrca
    ld [$080f], sp
    inc c
    ld [$100c], sp
    jr jr_03f_43f7

    jr jr_03f_43fa

    jr jr_03f_43fe

    jr jr_03f_441c

    jr nc, jr_03f_441e

    jr nc, jr_03f_4411

    ccf
    ccf
    ccf
    nop
    nop
    nop

jr_03f_43f7:
    nop
    nop
    nop

jr_03f_43fa:
    inc a
    inc a
    ld a, a
    ld b, e

jr_03f_43fe:
    ld b, e
    ld b, b
    ld [hl], e
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38

jr_03f_440f:
    nop
    nop

jr_03f_4411:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_03f_4417:
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_03f_441c:
    nop
    rst $38

jr_03f_441e:
    and b
    rst $38
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    inc b
    rst $38
    and d
    rst $38
    dec b
    ld a, a
    ld [hl+], a
    rrca
    add b
    inc bc
    ldh a, [$03]
    rst $38
    adc b
    ld [hl], a
    ldh a, [rIF]
    jr nz, jr_03f_4417

    nop
    rst $38
    scf
    ret z

    pop bc
    ld a, $00
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    add b
    add b
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
    ld de, $001f
    nop
    nop
    nop
    nop
    nop
    ld bc, $2403
    inc a
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    ld b, b
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
    db $10
    db $10
    db $10
    jr nc, jr_03f_44c3

    jr nz, jr_03f_44c5

    ld h, b
    jr nz, jr_03f_4508

    jr nz, jr_03f_450a

    and b
    ld h, b
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $c101
    pop bc
    pop bc
    ld b, c
    pop bc
    ld b, c
    pop bc

jr_03f_44c3:
    ld b, c
    add a

jr_03f_44c5:
    add c
    cp [hl]
    add e
    cp $83
    cp $83
    rst $38
    inc bc
    rst $38
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
    ld b, b
    rst $38

jr_03f_44de:
    and b
    rst $38
    nop
    nop
    ldh [$e0], a
    jr jr_03f_44de

    rlca
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$38
    ret nz

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

jr_03f_4508:
    ld [bc], a
    ld [bc], a

jr_03f_450a:
    jr z, jr_03f_4534

    and b
    ldh [rP1], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    db $10
    add b
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
    nop
    nop
    ccf
    ccf
    jr nz, jr_03f_456f

    jr nz, jr_03f_4562

    ld b, b
    ld [hl], b

jr_03f_4534:
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    ld b, h
    ld h, b
    ld b, b
    ld h, b
    ld b, h
    ld h, b
    add b
    ldh [$82], a
    ret nz

jr_03f_4542:
    adc b
    ret nz

    sub c
    ret nz

    cp e
    ret nz

    and a
    ret nz

    dec hl
    add b
    cpl
    add b
    ld e, a
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
    ccf
    ret nz

    pop bc
    cp $fe
    rst $38
    rst $38
    ccf

jr_03f_4562:
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

jr_03f_456f:
    nop
    rst $38
    nop
    rst $38
    nop
    di
    inc c
    ret nz

    inc sp
    nop
    ld b, b
    nop
    add b
    nop
    ldh a, [rTMA]
    ld sp, hl
    jr c, jr_03f_4542

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
    ld [$8008], sp
    add b
    nop
    nop
    nop
    nop
    db $10
    stop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld e, a
    and b
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
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    db $fd
    inc bc
    dec c
    di
    pop af
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
    nop
    rst $38
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
    ldh [$1f], a
    jr nz, jr_03f_461c

    ldh [$1f], a
    jr nz, jr_03f_4622

    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_03f_461c:
    nop
    nop
    ld h, d
    ld h, d
    set 1, e

jr_03f_4622:
    ld l, [hl]
    ld l, [hl]
    ld c, [hl]
    ld c, [hl]
    inc h
    inc h
    inc d
    inc d
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
    cp $0f
    cp $0f
    ld e, $0f
    inc e
    rra
    inc a
    rra
    inc a
    rra
    inc a
    rra
    jr c, jr_03f_46ac

    jr c, jr_03f_468e

    ld a, b
    cp a
    ld a, b
    cp a
    ld a, b
    cp a
    ld [hl], b
    cp a
    ld [hl], b
    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
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

    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $02ff
    rst $38
    ld de, $0aff
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38

jr_03f_468e:
    xor b
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec b
    ccf
    ld [bc], a
    rlca
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
    ld bc, $0f01
    rrca

jr_03f_46ac:
    or e
    or e
    ld [hl], h
    ld [hl], h
    ld b, d
    ld b, d
    sbc d
    sbc d
    call nz, $85c4
    add l
    dec e
    dec e
    dec a
    dec a
    ld e, $1e
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    rra
    rra
    ld a, [hl]
    ld a, [hl]
    ld a, d
    ld a, d
    ld h, b
    ld h, b
    inc e
    inc e
    inc a
    inc a
    inc de
    inc de
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
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
    inc bc
    inc b
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    nop
    nop
    nop
    db $10
    ld de, $1312
    inc de
    inc de
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_03f_474a

    ld a, [de]
    dec de
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03f_475b

    ld [hl+], a
    dec d
    ld d, $16
    inc hl
    inc h
    inc de
    inc de
    inc de
    dec h
    ld h, $27
    jr z, jr_03f_4771

    ld a, [hl+]
    dec hl

jr_03f_474a:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03f_4781

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03f_4791

    ld a, [hl-]
    dec sp
    inc a

jr_03f_475b:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    nop
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

jr_03f_4771:
    ld d, d
    ld d, e
    ld d, h
    daa
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

jr_03f_4781:
    ld h, c
    ld d, e
    nop
    nop
    ld h, d
    ld h, e
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop

jr_03f_4791:
    nop
    nop
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld d, $72
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    nop
    nop
    nop
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    rrca
    rrca
    ld a, a
    add b
    rrca
    add c
    nop
    nop
    nop
    add d
    add e
    inc de
    inc de
    add h
    add l
    add [hl]
    add a
    rrca
    adc b
    adc c
    adc d
    rrca
    nop
    nop
    adc e
    adc h
    adc l
    inc de
    inc de
    inc de
    inc de
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    nop
    sub l
    sub [hl]
    sub a
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
    and c
    and d
    and e
    and h
    and l
    inc de
    inc de
    inc de
    inc de
    inc de
    and [hl]
    and a
    xor b
    xor c
    inc de
    inc de
    xor d
    xor e
    xor h
    inc de
    inc de
    inc de
    inc de
    inc de
    inc de
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
    inc de
    inc de
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

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld b, $06
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
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $02
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
    ld b, $05
    ld b, $06
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
    ld b, $05
    dec b
    ld b, $06
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
    nop
    ld b, [hl]
    dec b
    dec b
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec h
    nop
    nop
    dec b
    dec b
    nop
    ld b, $06
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
    dec b
    dec b
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
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
    rst $38
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
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    dec de
    dec de
    dec e
    dec e
    rlca
    rlca
    add a
    add a
    ld b, e
    ld b, e
    ld e, c
    ld e, c
    inc h
    inc h
    ld d, b
    ld d, b
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
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    cp $01
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    ld a, [$fc05]
    inc bc
    ld hl, sp+$07
    db $f4
    dec bc
    ld hl, sp+$07
    db $f4
    dec bc
    ld hl, sp+$07
    db $f4
    dec bc
    add sp, $17
    db $fc
    inc bc
    add sp, $17
    ldh a, [rIF]
    add sp, $17
    ldh a, [rIF]
    add sp, $17
    ldh a, [rIF]
    add sp, $17
    ret nc

    cpl
    ldh [$1f], a
    ret nc

    cpl
    ldh [$1f], a
    ret nc

    cpl
    and b
    ld e, a
    ret nz

    ccf
    and b
    ld e, a
    ret nz

    ccf
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ret nz

    ld a, $80
    ld a, h
    nop
    ld hl, sp-$80
    ld [hl], b
    nop
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld d, $16
    rrca
    rrca
    daa
    daa
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
    nop
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
    rlca
    jr jr_03f_4a8f

    jr nz, jr_03f_4ab1

    jr nc, jr_03f_4ab3

    inc a
    rra
    ld a, a
    rrca
    ccf
    rrca
    ld a, a
    ld b, $3f
    ld [bc], a
    ld a, a
    ld [bc], a
    ld b, b
    cp l
    add d
    ld a, a
    ret nz

    ld a, $80
    ld a, [hl]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop

jr_03f_4a8f:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_03f_4ab1:
    ld hl, sp+$00

jr_03f_4ab3:
    ldh a, [rP1]
    ldh [rP1], a
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

    ldh [$e0], a
    ret c

    ld hl, sp-$04
    db $fc
    or $fe
    ei
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    call $e9ff
    rst $38
    xor d
    rst $38
    ret nc

    rst $38
    db $e4
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
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
    cp $01
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
    rst $38
    nop
    rst $38
    nop
    ld bc, $0601
    rlca
    ld [$300f], sp
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
    cp $00
    ld hl, sp-$80
    ldh a, [$f0]
    db $fc
    db $fc
    ccf
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
    ret nz

    rst $38
    ldh a, [$7f]
    ld e, h
    dec e
    inc e
    ld h, a
    ld b, l
    cp e
    dec bc
    cp a
    rlca
    cp a
    cpl
    rst $18
    ld c, a
    sbc a
    rra
    rst $18
    rra
    rst $38
    ccf
    rst $18
    rra
    rst $28
    rrca
    rst $28
    rrca
    rst $20
    rlca
    rst $28
    rrca
    rst $20
    rlca
    rst $30
    rlca
    di
    inc bc
    di
    inc bc
    di
    inc bc
    ei
    inc bc
    ld sp, hl
    ld bc, $01f9
    ld sp, hl
    ld bc, $01f9
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    ld [$0c08], sp
    inc c
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    cp l
    cp l
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    rst $38
    nop
    rst $38
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
    ld c, a
    ld [hl], b
    add e
    db $fc
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
    ldh a, [rP1]
    ldh [rP1], a
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
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp+$38
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    cp $00
    db $fc
    nop
    sub b
    nop
    ret nz

    add b
    ldh a, [$60]
    db $fc
    sbc b
    rst $38
    and $ff
    add hl, sp
    rst $38
    sbc h
    rst $38
    ei
    sbc a
    sub b
    cp a
    cp b
    adc a
    adc a
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    db $fd
    push af
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld sp, hl
    rst $18
    call c, $c6c7
    pop bc
    pop bc
    ret nz

    ret nz

    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    ld a, h
    ld l, h
    ld a, [hl]
    ld b, d
    rst $38
    pop hl
    ld a, a
    ld a, b
    ccf
    inc a
    rrca
    rrca
    rlca
    rlca
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
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    db $10
    db $10
    ld l, [hl]
    ld l, [hl]
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    ld l, a
    ld l, a
    ld [hl], a
    ld [hl], a
    ccf
    ccf
    ccf
    ccf
    cp a
    cp a
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
    ld e, l
    and d
    xor e
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, l
    xor d
    dec hl
    call nc, $aa55
    dec hl
    call nc, $aa55
    ld a, [hl+]
    push de
    dec d
    ld [$d52a], a
    dec d
    ld [$f50a], a
    dec b
    ld a, [$f50a]
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
    ld bc, $08fe
    rst $30
    ld de, $2bee
    call nc, Call_000_00a8
    ld [hl], h
    add b
    nop
    ldh a, [rP1]
    adc h
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
    cp $00
    db $fc
    nop
    cp $00
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    ld a, h
    inc a
    db $fc
    inc a
    ld a, h
    ld h, h
    ld a, h
    inc a
    db $fc
    inc a
    db $fc
    ld a, h
    cp h
    inc e
    rst $38
    call nz, $919f
    rrca
    inc c
    dec bc
    dec bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld bc, $8101
    add c
    sbc c
    sbc c
    db $fd
    ld l, l
    db $fd
    dec c
    cp $0e
    cp $ce
    ld a, [$fb7a]
    adc e
    cp $5e
    db $fd
    call $353d
    dec c
    dec c
    ld bc, $0001
    nop
    nop
    nop
    ret nz

    ld b, b
    ldh [rNR41], a
    ld hl, sp+$18
    cp $86
    cp $e2
    cp $b0
    ld a, [hl]
    ld e, d
    ld e, $1e
    ld a, $3a
    ccf
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    rst $38
    db $fd
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
    nop
    rst $38
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
    cp a
    ld b, b
    ld e, a
    and b
    xor a
    ld d, b
    ld d, l
    xor d
    xor a
    ld d, b
    ld d, l
    xor d
    adc d
    ld [hl], l
    ld d, l
    xor d
    xor a
    ld d, b
    ld e, a
    and b
    xor a
    ld d, b
    ld e, a
    and b
    cp a
    ld b, b
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
    add b
    nop
    ld [hl], b
    nop
    inc c
    nop
    inc bc
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
    nop
    nop
    add b
    nop
    ldh [rP1], a
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
    ret nz

    ret nz

    ldh a, [$f0]
    inc a
    inc a
    rrca
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
    add b
    nop
    ldh [rLCDC], a
    ld hl, sp+$10
    db $fc
    adc h
    rst $30
    ld h, d
    db $fd
    jr c, @+$01

    cp $87
    add c
    rlca
    inc b
    inc bc
    ld [bc], a
    add c
    add b
    add b
    add b
    add b
    add b
    sub b
    sub b
    jp $ef82


    adc b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    cp $ff
    rst $38
    ld a, a
    ld a, a
    ld e, a
    ld e, a
    ld b, a
    ld b, a
    ld b, c
    ld b, c
    nop
    nop
    nop
    nop
    nop
    nop
    jr c, jr_03f_4e56

    inc e
    nop
    cp a
    and c
    rst $38
    ldh [$7f], a
    ld d, b
    rst $38
    db $fc
    rst $38
    ei
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
    cp $ff
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
    rst $28
    rst $38
    rst $30
    rst $38

jr_03f_4e56:
    ld sp, hl
    rst $38
    pop af
    rst $38
    call c, $f4ff
    rst $38
    ld hl, sp-$01
    inc a
    rst $38
    db $10
    rst $38
    ld b, $ff
    ld bc, $00ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
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
    db $fc
    inc bc
    ei
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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
    adc a
    ld [hl], b
    di
    inc c
    inc e

jr_03f_4eb5:
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f0]
    inc a
    inc a
    rrca
    rrca
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
    ret nz

    ret nz

    ld [hl], b
    ld [hl], b
    call c, $ff88
    ld [c], a
    rst $38
    jr nc, jr_03f_4eb5

    inc c
    adc a
    rlca
    rst $38
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add e
    cp $e2
    rst $38
    ld hl, sp-$01
    db $fc
    di
    di
    pop hl
    pop hl
    ld bc, $0101
    ld bc, $0001
    inc bc
    ld [bc], a
    ld b, a
    ld b, l
    rst $20
    inc hl
    cp $1a
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    or b
    rst $38
    db $ec
    rst $38
    or $ff
    ld sp, hl
    rst $08
    cp $4b
    rst $38
    add c
    rst $38
    ldh [rIE], a
    add b
    rst $38
    sub b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
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
    add e
    ld a, h
    pop bc
    ld a, $c1
    ld a, $41
    cp [hl]
    inc b
    ei
    inc b
    ei
    ld h, h
    sbc e
    add h
    dec de
    inc d
    dec bc
    db $10
    rrca
    ld de, $130e
    inc c
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ld h, b
    inc hl
    inc e
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
    cp $00
    add b
    add b
    ld [hl], b
    ld [hl], b
    inc e
    inc e
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    cp $1e
    ld a, [$fa1a]
    ld a, [bc]
    ld a, [$fa0a]
    ld a, [de]
    sbc [hl]
    sbc [hl]
    inc e
    inc e
    db $fc
    call c, Call_000_1cfc
    db $fc
    inc c
    db $fc
    inc e
    db $fc
    call c, Call_000_34f4
    ld hl, sp+$18
    db $f4
    inc [hl]
    call z, Call_000_1c4c
    inc e
    inc b
    inc b
    db $e4
    db $e4
    ld [hl], h
    ld [hl], h
    db $e4
    db $e4
    ldh [$e0], a
    ret nz

    ld b, b
    ldh [rNR41], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$80], a
    pop hl
    ld h, c
    pop hl
    ld hl, $83e3
    ld a, $e7
    ld a, $ff
    dec bc
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
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
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    cp $01
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
    ld a, a
    add b
    sbc a
    ld h, b
    inc hl
    inc e
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
    ld bc, $0f00
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
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
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0007
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
    inc b
    inc b
    ld [$0608], sp
    ld b, $93
    sub e
    set 1, e
    rst $20
    rst $20
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    scf
    rst $38
    dec e
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    cpl
    rst $38
    daa
    rst $38
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
    ld a, [$5505]
    xor d
    ld a, [bc]
    push af
    ld d, l
    xor d
    adc d
    ld [hl], l
    ld b, b
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, h
    xor e
    ld [$d415], a
    dec hl
    ld [$f515], a
    ld a, [bc]
    ld hl, sp+$07
    db $fd
    ld [bc], a
    inc e
    db $e3
    ldh [$1f], a
    db $fc
    rlca
    db $f4
    rlca
    and $07
    call z, $8a0f
    rrca
    adc l
    rrca
    ld e, $1f
    rra
    rra
    ld e, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, $1f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
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
    ld a, a
    ld a, a
    ld a, a
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
    rra
    rst $38
    rrca
    ccf
    inc bc
    rrca
    nop
    rlca
    nop
    ld bc, $8080
    db $10
    db $10
    adc b
    adc b
    ld bc, $1001
    db $10
    ld b, b
    ld b, b
    jr nc, jr_03f_519e

    db $db
    db $db
    rst $38
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    xor a
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
    ld [$5515], a
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
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
    nop
    rst $38

jr_03f_519e:
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    add sp, -$01
    ret nc

    rst $38
    xor b
    rst $38
    call nc, $aaff
    rst $38
    call nc, $eaff
    rst $38
    push af
    rst $38
    ld [$f5ff], a
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$fdff]
    rst $38
    ld a, [$fdff]
    rst $38
    cp $ff
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
    ccf
    rst $38
    rra
    ld a, a
    rlca
    ccf
    ld bc, $000f
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    ld c, h
    sub d
    sub d
    ret z

    ret z

    ldh a, [$f0]
    ld hl, sp-$08
    cp $fe
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
    cp $01
    db $fd
    ld [bc], a
    ld [$f515], a
    ld a, [bc]
    cp d
    ld b, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, b
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
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and b
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
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    push de
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld [$f5ff], a
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$fdff]
    rst $38
    ld a, [$fdff]
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
    ccf
    rst $38
    rrca
    ld a, a
    rlca
    rra
    ld bc, $0307
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh a, [$f0]
    ldh a, [$f0]
    db $e4
    db $e4
    ret nz

    ret nz

    ret nc

    ret nc

    ret nz

    ret nz

    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
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
    db $fd
    ld [bc], a
    ld a, [$fd05]
    ld [bc], a
    ld a, [$f505]
    ld a, [bc]
    ld [$d515], a
    ld a, [hl+]
    xor d
    ld d, l
    ld e, l
    and d
    cp d
    ld b, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, b
    xor a
    and b
    ld e, a
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
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and b
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
    push de
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld [$d4ff], a
    rst $38
    ld [$f5ff], a
    rst $38
    ld [$74ff], a
    rst $38
    ld a, [de]
    rst $38
    dec b
    ccf
    inc bc
    rrca
    nop
    rlca
    nop
    ld bc, $0000
    nop
    nop
    inc c
    inc c
    ld de, $0411
    inc b
    daa
    daa
    inc sp
    inc sp
    ld a, c
    ld a, c
    ld a, l
    ld a, l
    ld a, a
    ld a, a
    rst $18
    jr nz, @-$14

    dec d
    db $dd
    ld [hl+], a
    ld [$d515], a
    ld a, [hl+]
    ld [$5515], a
    xor d
    ld a, [$5505]
    xor d
    ld [$5515], a
    xor d
    ld [$5515], a
    xor d
    ld [$d515], a
    ld a, [hl+]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor b
    ld d, a
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, b
    xor a
    and b
    ld e, a
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    adc b
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    inc d
    rst $38
    jr z, @+$01

    dec d
    rst $38
    nop
    rst $38
    ld bc, $007f
    rra
    rrca
    nop
    inc bc
    nop
    add b
    add b
    ldh [$e0], a
    db $10
    db $10
    and b
    and b
    ld d, b
    ld d, b
    jp hl


    jp hl


    ld d, b
    xor a
    ld [$5415], a
    xor e
    xor b
    ld d, a
    ld d, h
    xor e
    xor b
    ld d, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld b, b
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
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
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    nop
    rst $38
    dec b
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$10ff], sp
    rst $38
    ld [$10ff], sp
    rst $38
    nop
    rst $38
    dec d
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld [bc], a
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
    db $10
    rst $38
    adc b
    rst $38
    nop
    rst $38
    adc b
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ld b, l
    rst $38
    and b
    rst $38
    dec b
    rst $38
    and d
    rst $38
    ld d, l
    rst $38
    and d
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    dec b
    rst $38
    jr z, @+$01

    inc b
    rst $38
    nop
    ld a, a
    nop
    rra
    nop
    rlca
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    rst $38
    nop
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

    inc d
    rst $38
    jr nz, @+$01

    dec d
    rst $38
    jr z, @+$01

    ld de, $2aff
    rst $38
    ld d, c
    rst $38
    ld a, [hl+]
    rst $38
    ld d, c
    rst $38
    jr z, @+$01

    ld d, c
    rst $38
    and b
    rst $38
    ld de, $a0ff
    rst $38
    ld d, c
    rst $38
    jr nz, @+$01

    ld d, c
    rst $38
    and b
    rst $38
    ld de, $82ff
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    inc d
    rst $38
    nop
    rst $38
    inc d
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$10ff], sp
    rst $38
    ld [$10ff], sp
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    dec d
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld [hl+], a
    rst $38
    dec b
    rst $38
    ld [hl+], a
    rst $38
    dec d
    rst $38
    ld [hl+], a
    rst $38
    inc d
    rst $38
    and d
    rst $38
    inc d
    rst $38
    xor d
    rst $38
    ld b, l
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    add b
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    ld [$14ff], sp
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    inc b
    rst $38
    ld a, [hl+]
    rst $38
    ld d, h
    rst $38
    ld a, [hl+]
    rst $38
    inc d
    rst $38
    ld a, [hl+]
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $0aff
    rst $38
    ld b, c
    rst $38
    ld [$41ff], sp
    rst $38
    adc b
    rst $38
    ld b, c
    rst $38
    adc b
    rst $38
    ld b, l
    rst $38
    adc b
    rst $38
    ld d, l
    rst $38
    ld [$45ff], sp
    rst $38
    xor b
    rst $38
    ld b, l
    rst $38
    adc d
    rst $38
    ld b, l
    rst $38
    ld a, [bc]
    rst $38
    ld b, l
    rst $38
    adc d
    rst $38
    ld b, l
    rst $38
    xor d
    rst $38
    dec b
    rst $38
    ld a, [hl+]
    rst $38
    dec b
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    ld b, l
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    ld [bc], a
    rst $38
    ld d, l
    rst $38
    ld [bc], a
    rst $38
    ld d, l
    rst $38
    ld [bc], a
    rst $38
    ld d, h
    rst $38
    ld [bc], a
    rst $38
    ld d, b
    rst $38
    ld [hl+], a
    rst $38
    ld d, b
    rst $38
    and d
    rst $38
    db $10
    rst $38
    ld [hl+], a
    rst $38
    inc d
    rst $38
    ld [bc], a
    rst $38
    inc d
    rst $38
    add d
    rst $38
    nop
    rst $38
    adc d
    rst $38
    ld b, b
    rst $38
    ld a, [hl+]
    rst $38
    ld b, h
    rst $38
    ld a, [hl+]
    rst $38
    ld b, h
    rst $38
    ld a, [hl+]
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    ld d, c
    rst $38
    adc d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    inc b
    rst $38
    adc d
    rst $38
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
    inc bc
    inc b
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
    nop
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    rrca
    db $10
    ld de, $0000
    nop
    ld [de], a
    inc de
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    jr jr_03f_5613

    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03f_5624

    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    inc hl
    inc h
    dec h
    nop
    ld h, $27
    jr z, jr_03f_5638

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_03f_5613:
    ld l, $2f
    cpl
    cpl
    jr nc, jr_03f_564a

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03f_565a

    nop
    nop
    nop

jr_03f_5624:
    nop
    nop
    nop
    ld a, [hl-]
    dec sp
    nop
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

jr_03f_5638:
    ld c, d
    ld c, e
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
    nop
    nop
    nop
    nop
    ld d, h
    nop

jr_03f_564a:
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    nop
    ld e, e
    ld e, h
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_03f_565a:
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    nop
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
    ld [hl], h
    ld [hl], l
    nop
    nop
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
    nop
    nop
    nop
    sub c
    sub c
    sub c
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    nop
    nop
    nop
    nop
    sub a
    adc a
    sbc b
    nop
    nop
    sbc c
    sbc d
    sbc e
    nop
    nop
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
    sbc l
    sbc [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    nop
    nop
    nop
    sbc a
    and b
    and c
    and c
    and c
    and d
    and e
    and h
    and l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor d
    xor d
    xor e
    xor h
    xor l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0501
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    dec b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0404
    ld bc, $0101
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
    ld bc, $0404
    inc b
    ld bc, $0502
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
    ld bc, $0405
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
    ld [bc], a
    dec b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, HeaderLogo
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0201
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0501
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld bc, $0001
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    inc b
    inc b
    nop
    nop
    ld bc, $0001
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    dec b
    inc b
    inc b
    nop
    nop
    ld bc, $0001
    ld b, $04
    ld b, $04
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    dec b
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
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
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
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    inc bc
    nop
    rra
    nop
    ccf
    nop
    ld hl, sp+$05
    ldh [$0c], a
    nop
    ret nz

    rst $30
    rst $30
    rst $38
    rst $38
    cpl
    cpl
    cp h
    cp h
    ld [hl], c
    ld [hl], c
    rst $08
    rst $08
    adc a
    adc a
    ld a, a
    ld a, a
    db $fd
    db $fd
    jp c, $f0da

    ldh a, [$e0]
    ldh [$83], a
    add e
    di
    di
    rst $30
    rst $30
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    rra
    nop
    cp $00
    ldh a, [rP1]
    ret nz

    stop
    add c
    nop
    dec b
    nop
    inc c
    nop
    pop af
    ld hl, sp-$08
    ldh a, [$f0]
    sub e
    sub e
    cp e
    cp e
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld sp, hl
    ld sp, hl
    ldh a, [$f0]
    di
    di
    db $e3
    db $e3
    adc a
    adc a
    nop
    rst $38
    nop
    rst $38
    add b
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
    ccf
    nop
    ld hl, sp+$00
    ldh [$08], a
    add b
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
    jr jr_03f_58fd

jr_03f_58fd:
    ld h, b
    nop
    add b
    ld a, a
    ld a, a
    rst $38
    rst $38
    pop af
    pop af
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], $36
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
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
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    dec a
    dec a
    rst $30
    rst $30
    cp a
    cp a
    sbc a
    sbc a
    ld e, [hl]
    ld e, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    ldh a, [$f0]
    pop hl
    pop hl
    ld a, c
    ld a, c
    rst $38
    rst $38
    rst $18
    rst $18
    rst $08
    rst $08
    rst $08
    rst $08
    rst $28
    rst $28
    ld a, a
    ld a, a
    rst $08
    rst $08
    rlca
    rlca
    rra
    rra
    ld a, a
    ld a, a
    ld a, a
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
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    call nz, $e0c4
    ldh [$80], a
    add b
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    ld a, l
    ld a, l
    jr c, jr_03f_59ea

    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    add hl, sp
    add hl, sp
    ld a, c
    ld a, c
    ld [hl], d
    ld [hl], d
    ld a, d
    ld a, d
    ld a, [hl]
    ld a, [hl]
    db $fc
    db $fc
    db $fc
    db $fc
    db $fd
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
    nop
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
    ld hl, sp+$06
    ldh [rNR10], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_03f_59ea:
    nop
    inc b
    nop
    jr jr_03f_59ef

jr_03f_59ef:
    sub b
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    inc a
    inc a
    cp h
    cp h
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    ld [hl], a
    ldh [$e0], a
    pop af
    pop af
    push hl
    push hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    cp [hl]
    ld a, a
    ld a, a
    rlca
    rlca
    rst $18
    rst $18
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    cp $f1
    cp $f0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    db $e4
    ei
    and $f9
    db $e3
    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    db $e3
    db $fc
    pop hl
    cp $e1
    cp $e0
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    sbc a
    ldh [$6f], a
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    ld [hl], l
    ld bc, $6101
    ld h, c
    ld hl, $2121
    ld hl, $0101
    ld de, $1911
    add hl, de
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec de
    dec de
    rst $38
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
    rlca
    nop
    ld a, $01
    ld hl, sp+$07
    ret nz

    dec sp
    nop
    rst $00
    cp b
    cp b
    ld [hl], e
    ld [hl], e
    rst $28
    rst $28
    ld a, $3e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp h
    cp h
    cp $fe
    rst $38
    rst $38
    cp $fe
    db $fd
    db $fd
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    cp $fe
    cp d
    cp d
    ld hl, sp-$08
    ldh a, [$f0]
    ld [c], a
    ld [c], a
    ld a, [$fffa]
    rst $38
    rst $30
    rst $30
    ei
    ei
    db $fd
    db $fd
    rst $38
    rst $38
    rst $28
    rst $28
    add sp, -$18
    ldh [$e0], a
    pop hl
    pop hl
    rst $08
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
    add e
    ld a, a
    jp $c13f


    ccf
    pop hl
    rra
    pop hl
    rra
    ld [hl], c
    adc a
    pop bc
    rrca
    ret z

    rlca
    adc b
    rlca
    add $01
    ldh [rSTAT], a
    ld hl, sp+$71
    xor c
    ld d, b
    and [hl]
    ld e, c
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
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
    nop
    rlca
    nop
    rrca
    rrca
    rra
    rra
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    scf
    rlca
    rlca
    rla
    rla
    scf
    scf
    dec a
    dec a
    dec [hl]
    dec [hl]
    cp a
    cp a
    cp e
    cp e
    cp e
    cp e
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ei
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
    ld bc, $000f
    ld a, $01
    ldh a, [$0d]
    ret nz

    dec sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push hl
    jr nc, jr_03f_5bb2

    ld h, h
    ld h, h
    ld a, a
    ld a, a
    dec sp
    dec sp
    ld sp, hl
    ld sp, hl
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld [hl-], a
    ld [hl-], a
    ld [hl], c
    ld [hl], c
    rst $38
    rst $38
    db $fd
    db $fd
    ld a, a
    ld a, a
    dec sp
    dec sp
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    dec sp
    dec sp
    ld [hl], c
    ld [hl], c
    ld hl, sp-$08
    ld hl, sp-$08
    rst $30
    rst $30
    rst $38
    rst $38

jr_03f_5bb2:
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $30
    rst $30
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    ld bc, $0700
    nop
    inc a
    inc bc
    ldh [$1f], a
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld hl, sp+$00
    push af
    nop
    rst $38
    nop
    ld a, l
    nop
    rst $38
    nop
    ld l, a
    dec b
    dec b
    adc h
    adc h
    set 1, e
    jp $c6c3


    add $ef
    rst $28
    and $e6
    and c
    and c
    db $e3
    db $e3
    rst $30
    rst $30
    di
    di
    di
    di
    push de
    push de
    ldh a, [$f0]
    ldh a, [$f0]
    cp $fe
    ld a, [$fcfa]
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    ld [hl], l
    ld [hl], l
    ld a, h
    ld a, h
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp e
    cp e
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
    ld a, b
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld e, $ff
    ld c, $ff
    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $f4
    ld bc, $01f6
    or $00
    rst $30
    nop
    rst $20
    rst $00
    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp $c1ff


    rst $38
    adc c
    rst $30
    adc c
    rst $30
    adc l
    di
    adc [hl]
    pop af
    add b
    ld sp, hl
    ret nz

    ld hl, sp-$30
    db $ec
    ret c

    rst $20
    call c, $cce3
    di
    call z, $ccf3
    di
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

    rst $38
    ret nz

    pop bc
    ret nz

    add e
    add e
    jp $ffc3


    rst $38
    rst $18
    rst $18
    rst $10
    rst $10
    ld d, a
    ld d, a
    rst $10
    rst $10
    scf
    scf
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0e00
    ld bc, $0538
    ldh [rNR11], a
    nop
    ld c, $00
    ei
    nop
    cp $01
    ld bc, $8484
    ld [hl+], a
    ld [hl+], a
    dec hl
    dec hl
    db $10
    db $10
    ld d, l
    ld d, l
    ld b, h
    ld b, h
    ld h, [hl]
    ld h, [hl]
    nop
    nop
    ld h, c
    ld h, c
    add hl, sp
    add hl, sp
    ld e, b
    ld e, b
    ld [$0008], sp
    nop
    sbc d
    sbc d
    or c
    or c
    add b
    add b
    nop
    nop
    or b
    or b
    rst $20
    rst $20
    ld a, [hl]
    ld a, [hl]
    ld h, d
    ld h, d
    ldh a, [$f0]
    ldh [$e0], a
    ei
    ei
    xor $ee
    cp $fe
    ld a, a
    ld a, a
    rra
    rra
    inc e
    inc e
    ld a, $3e
    rst $18
    rst $18
    sbc $de
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    cp a
    rst $18
    rst $18
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    and [hl]
    and [hl]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, jr_03f_5d9c

    ret nz

    ccf
    nop
    db $fd
    nop
    ld hl, sp+$00
    sub b
    nop
    stop
    ld [hl-], a
    nop
    jp c, Jump_000_3232

    call z, Call_000_3ecc
    ld a, $f7
    rst $30
    adc a
    adc a
    db $ed
    db $ed

jr_03f_5d9c:
    ld h, d
    ld h, d
    inc hl
    inc hl
    ld l, c
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
    nop
    ld h, b
    ld h, b
    nop
    nop
    nop
    nop
    ld [$c408], sp
    call nz, $cece
    ld [c], a
    ld [c], a
    jr nz, jr_03f_5ddc

    or b
    or b
    ret nz

    ret nz

    ld [$fd08], sp
    db $fd
    cp $fe
    sbc $de
    ei
    ei
    pop bc
    pop bc
    rrca
    rrca
    rra
    rra
    inc l
    inc l
    ei
    ei
    or $f6
    rst $20
    rst $20
    rst $28
    rst $28
    rst $18
    rst $18

jr_03f_5ddc:
    cp a
    cp a
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
    rst $38
    rst $38
    rst $38
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
    cp $7e
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    db $fd
    ld a, [hl]
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $7e
    cp $fe
    cp $fe
    cp $e9
    jp hl


    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    ld a, [$fefa]
    cp $fe
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    rst $38
    rst $38
    ld hl, sp-$08
    sub e
    sub e
    or l
    or l
    ld [hl], a
    ld [hl], a
    or $f6
    ldh [$e0], a
    sub c
    sub c
    ld d, d
    ld d, d
    ld l, h
    ld l, h
    ei
    ei
    rst $38
    rst $38
    rst $30
    rst $30
    rst $28
    rst $28
    sbc $de
    call nc, $08d4
    ld [$ff00], sp
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    jr c, @+$01

    add hl, sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $30
    nop
    rst $20
    nop
    cp a
    nop
    ld a, a
    ld b, b
    ld b, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    jr nc, jr_03f_5ec8

    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, [hl]
    ld b, [hl]
    add a
    add a
    add l
    add l
    inc h
    inc h
    inc c
    inc c
    rrca
    rrca
    call Call_000_00cd
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03f_5ec8:
    ldh [rIE], a
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    rlca
    ld hl, sp-$40
    ret nz

    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    add sp, -$18
    ld hl, sp-$08
    ld hl, sp-$08
    ld e, b
    ld e, b
    ret z

    ret z

    add sp, -$18
    add sp, -$18
    ret nz

    ret nz

    ld b, d
    ld b, d
    ret z

    ret z

    call z, Call_03f_40cc
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld d, b
    ld d, b
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    nop
    nop
    add b
    add b
    jp hl


    jp hl


    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld [hl], b
    ld [hl], b
    db $e4
    db $e4
    db $ed
    db $ed
    push hl
    push hl
    ldh [$e0], a
    di
    di
    xor d
    xor d
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    jp c, Jump_000_20da

    jr nz, jr_03f_5f4b

    stop
    nop
    ld b, b
    ld b, b
    adc b
    adc b
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    cp e
    cp e
    ei
    ei
    ld [c], a

jr_03f_5f4b:
    ld [c], a
    ldh a, [$f0]
    ld b, b
    ld b, b
    nop
    cp a
    nop
    rst $38
    ld [hl], b
    rst $38
    scf
    rst $38
    ld [hl], a
    rst $38
    cp $ff
    xor $ff
    rst $28
    rst $38
    rst $20
    rst $38
    ret c

    rst $38
    ret c

    rst $38
    add l
    rst $38
    adc l
    rst $38
    nop
    rst $38
    ld bc, $00ff
    ei
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    inc e
    inc e
    jr jr_03f_5f9a

    nop
    nop
    add b
    add b
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0301
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

jr_03f_5f9a:
    nop
    rst $38
    rst $38
    cp $fe
    db $fc
    cp $fc
    cp $fc
    rst $38
    cp $fe
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
    rst $38
    pop bc
    rst $38
    nop
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
    db $e3
    db $fc
    inc bc
    inc a
    nop
    ccf
    ld bc, HeaderManufacturerCode
    ccf
    inc bc
    ccf
    rlca
    ccf
    rra
    ccf
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    ld b, b
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    ld b, b
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cp a
    cp a
    cp a
    ccf
    ccf
    ld a, $00
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    add a
    add a
    rst $08

jr_03f_6007:
    rst $08
    rra
    rra
    rst $18
    rst $18
    ld a, a
    ld a, a
    add a
    add a
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    jr nz, @+$09

    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    add sp, $07
    add sp, $07
    xor b
    rlca
    ret z

    rlca
    jr z, @+$09

    ld hl, sp+$07
    ld a, b
    rlca
    ld hl, sp+$07

jr_03f_6033:
    ld hl, sp+$07

jr_03f_6035:
    ld hl, sp-$61

jr_03f_6037:
    ld hl, sp-$71

jr_03f_6039:
    db $fc
    rst $18

jr_03f_603b:
    db $fc
    rst $38

jr_03f_603d:
    db $fc
    sbc a

jr_03f_603f:
    db $fc
    sbc a

jr_03f_6041:
    db $fc
    ld d, e

jr_03f_6043:
    db $fc
    ld d, e

jr_03f_6045:
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc

jr_03f_6058:
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
    cp h
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp h
    inc bc
    cp h
    inc bc
    inc a
    ret nz

    jr nc, jr_03f_6033

    jr nc, jr_03f_6035

    jr nc, jr_03f_6037

    jr nc, jr_03f_6039

    jr nc, jr_03f_603b

    jr nc, jr_03f_603d

    jr nc, jr_03f_603f

    jr c, jr_03f_6041

    jr c, jr_03f_6043

    jr c, jr_03f_6045

    jr c, jr_03f_6007

    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld a, b
    add b
    jr c, jr_03f_6058

    cp b
    rst $20
    sbc b
    rst $20
    sbc b
    and $99
    and $99
    ld h, [hl]
    add hl, de
    daa
    jr @+$68

    add hl, de
    ld e, b
    ccf
    ld e, c
    ccf
    sbc c
    ld a, a
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    add hl, sp
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    cp b
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ld a, b
    rst $38
    ld a, b
    rst $38
    add a
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, b
    add [hl]
    ld a, b
    add h
    ld a, b
    add [hl]
    ld a, d
    add [hl]
    ld a, [hl]
    add [hl]
    ld a, [hl]
    adc a
    ld a, a
    adc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    cp a
    ld a, a
    cp [hl]
    ld a, [hl]
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    db $fc
    db $fc
    db $fc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $fcfc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    nop
    ld [bc], a
    add b
    ld [bc], a
    add b
    ld [bc], a
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
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
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
    cp $ff
    cp $ff
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
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ld bc, $013e
    ld a, $03
    inc a
    inc bc
    inc a
    rlca
    jr c, @+$09

    jr c, jr_03f_6172

    jr nc, jr_03f_6174

    jr nc, jr_03f_6186

    jr nz, jr_03f_6188

    jr nz, jr_03f_61aa

    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    ld a, a

jr_03f_6172:
    rst $38
    rst $38

jr_03f_6174:
    cp a
    cp a
    ccf
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_03f_6186:
    rst $18
    rst $18

jr_03f_6188:
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld c, a
    ld c, a
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    xor a
    xor a
    rst $18
    rst $18
    rst $38
    rst $38
    rst $18
    rst $18
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

jr_03f_61aa:
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
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
    rst $38
    ld bc, $03ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    ld hl, sp-$08
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
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
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
    sbc $de
    adc $ce
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    cp $fe
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
    ld a, a
    ld a, a
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
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
    rra
    rra
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rrca
    rrca
    rst $38
    rst $38
    ld a, a
    ld a, a
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
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rla
    rla
    rrca
    rrca
    rlca
    rlca
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    nop
    nop
    ld bc, $0302
    inc bc
    inc b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0309], sp
    inc bc
    inc bc
    inc bc
    ld a, [bc]
    dec bc
    inc c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec c
    ld b, $0e
    rrca
    rrca
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_03f_6360

    ld a, [de]
    dec de
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $1f
    jr nz, jr_03f_6376

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03f_635d

jr_03f_635d:
    nop
    nop
    nop

jr_03f_6360:
    add hl, hl
    add hl, hl
    add hl, hl
    ld a, [hl+]
    dec hl
    nop
    inc l
    inc l
    dec l
    ld l, $2f
    ld b, $00
    nop
    jr nc, jr_03f_63a1

    ld [hl-], a
    inc sp
    inc sp
    inc sp
    inc sp
    inc [hl]

jr_03f_6376:
    dec [hl]
    ld [hl], $37
    jr c, jr_03f_637b

jr_03f_637b:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    nop
    dec a
    ld a, $33
    ccf
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
    nop
    nop
    nop
    ld c, h
    ld c, l
    ld c, [hl]
    inc sp
    inc sp
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    nop

jr_03f_63a1:
    nop
    nop
    ld c, h
    ld c, l
    nop
    nop
    nop
    ld d, a
    nop
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
    nop
    nop
    ld e, [hl]
    ld e, a
    nop
    nop
    nop
    ld d, a
    nop
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    nop
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    nop
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
    nop
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
    nop
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
    sub c
    nop
    nop
    nop
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    sub a
    sbc b
    nop
    nop
    nop
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    nop
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    and a
    xor b
    xor c
    xor d
    xor e
    nop
    xor h
    xor l
    xor [hl]
    xor a
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    or b
    or c
    or d
    or e
    nop
    nop
    or h
    or l
    or [hl]
    or a
    dec e
    dec e
    dec e
    dec e
    dec e
    dec e
    cp b
    cp c
    cp d
    cp e
    ld b, $00
    nop
    cp h
    cp l
    cp [hl]
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
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
    inc b
    inc b
    ld bc, $0101
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0404
    inc b
    inc b
    inc b
    inc h
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    jr nz, jr_03f_64c8

    inc bc
    nop
    nop
    ld [bc], a

jr_03f_64c8:
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
    ld bc, $0001
    jr nz, jr_03f_64f8

    inc b
    inc b
    inc b
    dec b
    dec b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0401
    dec b
    dec b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop

jr_03f_64f8:
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld [bc], a
    inc b
    ld bc, $0402
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0402
    inc b
    inc b
    inc b
    inc b
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0201
    dec b
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
    ld bc, $0101
    ld bc, $0405
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0501
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
    ld bc, $0401
    inc b
    inc b
    ld [bc], a
    dec b
    inc b
    inc b
    inc b
    jr nz, jr_03f_6582

    jr nz, jr_03f_6584

    jr nz, jr_03f_6586

    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld bc, $0405
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
    inc b
    ld bc, $0501
    dec b
    inc b
    inc b
    nop
    nop

jr_03f_6582:
    nop
    nop

jr_03f_6584:
    nop
    nop

jr_03f_6586:
    inc b
    inc b
    inc b
    inc b
    inc h
    ld bc, $0501
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    pop af
    ld hl, sp-$08
    cp $fe
    ld hl, sp-$08
    or $f6
    ld a, b
    ld a, b
    jr jr_03f_65c8

    ld b, $06
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
    nop
    nop
    nop

jr_03f_65c8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    sbc a
    sbc a
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $8181
    pop hl
    pop hl
    ld sp, $0931
    add hl, bc
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
    pop bc
    pop bc
    pop bc
    pop bc
    jp nz, $c3c2

    jp $c2c2


    jp $cfc3


    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $de
    sbc $de
    cp $fe
    cp $fe
    ld a, [$fcfa]
    db $fc
    cp $fe
    dec a
    dec a
    rra
    rra
    dec de
    dec de

jr_03f_6676:
    ld de, $0111
    ld bc, $2121
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc de
    inc de
    inc sp
    inc sp
    ld [hl], a
    ld [hl], a
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld a, [$feff]
    ei
    ei
    ei
    ei
    ei
    ei
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    pop af
    pop af
    pop af
    pop af
    ld sp, $2131
    ld hl, $1111
    ld de, $1111
    ld de, $0000
    nop
    nop
    nop
    nop
    ld bc, $2001
    jr nz, jr_03f_6676

    add c
    pop hl
    pop hl
    pop hl
    pop hl
    pop af
    pop af
    pop af
    pop af
    ei
    ei
    db $fd
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
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    rst $30
    rst $30
    or $f6
    or $f6
    db $f4
    db $f4
    db $fc
    db $fc
    db $f4
    db $f4
    db $f4
    db $f4
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
    db $e4
    db $e4
    db $f4
    db $f4
    db $fc
    db $fc
    db $f4
    db $f4

jr_03f_6746:
    db $fc
    db $fc
    db $fd
    db $fd
    db $fc
    db $fc
    db $fd
    db $fd
    db $fc
    db $fc
    db $ed
    db $ed
    db $fc
    db $fc
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    db $fd
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

    ld a, a
    ld b, b
    cp a
    and b
    cp a
    and b
    cp a
    or b
    cp a
    cp b
    ccf
    jr c, jr_03f_6746

    cp h
    ccf
    inc a
    ccf
    ld a, $3f
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    cp a
    cp a
    ccf
    ccf
    cp a
    cp a
    cp a
    cp a
    ccf
    ccf
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ld a, $3e
    cp h
    cp h
    cp h
    cp h
    cp h
    cp h
    cp [hl]
    cp [hl]
    inc a
    inc a
    inc a
    inc a
    inc a
    ld a, h
    inc a
    ld a, h
    inc a
    ld a, h
    inc a
    ld a, h
    inc a
    inc a
    inc a
    inc a
    inc a
    ld a, h
    inc a
    dec a
    ld a, $7e
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    ld a, $3e
    inc a
    inc a
    inc a
    inc a
    inc a
    dec a
    inc a
    inc a
    jr c, jr_03f_682c

    inc a
    inc a
    jr c, jr_03f_6830

    jr c, @+$3a

    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38

jr_03f_682c:
    ld bc, $01ff
    rst $38

jr_03f_6830:
    nop
    ld bc, $0180
    add b
    ld bc, $01c0
    ret nz

    ld bc, $01e0
    ldh [rSB], a
    ldh a, [rSB]
    ldh a, [rSB]
    ld hl, sp+$01
    ld hl, sp+$01
    db $fc
    ld bc, $01fc
    cp $01
    cp $01
    rst $38
    nop
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
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    rra
    rra
    ld e, a
    ld e, a
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
    ld a, $3e
    cp [hl]
    cp [hl]
    cp [hl]
    cp [hl]
    ccf
    ccf
    cp a
    cp a
    ccf
    ccf
    cp a
    cp a
    ccf
    ccf
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
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
    ld bc, $01ff
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
    rrca
    rst $38
    rrca
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    nop
    cp $80
    ld a, [hl]
    add b
    ld a, [hl]
    ret nz

    ld a, $c0
    ld a, $e0
    ld e, $e0
    ld e, $e0
    ld e, $f0
    ld c, $f0
    ld c, $f8
    ld b, $f8
    ld b, $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    cp $00
    cp $fe
    rst $38
    rst $38
    ld a, [hl]
    ld a, [hl]
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
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
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
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
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
    rst $38
    rst $38
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
    rrca
    sbc a
    rrca
    adc a
    rlca
    adc a
    rlca
    sbc a
    rrca
    sbc a
    rrca
    adc a
    rrca
    ld c, a
    adc a
    ld e, a
    add a
    ccf
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
    adc a
    ld l, a
    adc a

jr_03f_698d:
    ld l, a
    sbc a
    ld h, a
    sbc a
    ld h, a
    sub a
    ld h, e
    sub h
    ld h, e
    sbc h
    ld h, e
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld a, a
    rst $38
    ld h, e
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $28
    ld l, b
    rst $20
    ld [hl], b

jr_03f_69af:
    rst $28
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
    ld h, b
    rst $38
    ld h, b
    rst $38
    nop
    ld h, b
    nop
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    ret nz

    jr nz, jr_03f_698d

    jr nz, jr_03f_69af

    nop
    rst $28
    ldh [$ee], a
    xor $e9
    jp hl


    pop hl
    pop hl
    pop af
    pop af
    db $e3
    db $e3
    rst $20
    rst $20
    push af
    push af
    rst $30
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
    ldh [$e0], a
    nop
    inc c
    inc e
    inc bc
    inc e
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    ld [bc], a
    inc a
    nop
    ld a, h
    ld [bc], a
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
    ld [bc], a
    db $fc
    inc bc
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
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
    inc bc
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
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
    nop
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
    nop
    rst $38
    nop
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    add b
    ld a, a
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    cp a
    cp a
    add hl, bc
    add hl, bc
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
    nop
    inc h
    nop
    cp $0f
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    ld a, a
    nop
    db $fd
    nop
    and $00
    ld a, [hl]
    nop
    sbc h
    nop
    ld h, b
    nop
    ld [hl+], a
    nop
    ld e, $61
    ld h, c
    rst $38
    rst $38
    ld e, a
    ld e, a
    ld a, a
    ld a, a
    cp $fe
    db $fd
    db $fd
    or $f6
    ld a, a
    ld a, a
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld [hl], e
    ld [hl], e
    ld a, c
    ld a, c
    ld l, b
    ld l, b
    ld e, c
    ld e, c
    jr c, jr_03f_6b26

    ld h, l
    ld h, l
    ld h, e
    ld h, e
    ld h, a
    ld h, a
    jr nz, jr_03f_6b16

    ld h, b
    ld h, b
    jr c, jr_03f_6b32

    jr z, @+$2a

    jr nz, jr_03f_6b1e

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
    ld hl, sp-$08
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_03f_6b16:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_03f_6b1e:
    rst $38
    rst $38
    nop
    ld c, b
    nop
    or $00
    rst $38

jr_03f_6b26:
    ldh [rIE], a
    add b
    rst $38
    add b
    db $fd
    nop
    cp e
    add b
    xor $80
    sub b

jr_03f_6b32:
    add b
    jp nz, $e000

    nop
    ret nz

    nop
    ret nz

    nop
    ld h, b
    nop
    ld b, b
    nop
    ld b, b
    rst $08
    rst $08
    set 1, e
    ld d, a
    ld d, a
    rst $18
    rst $18
    rst $28
    rst $28
    rst $28
    rst $28
    ei
    ei
    db $f4
    db $f4
    or a
    or a
    or l
    or l
    ld a, b
    ld a, b
    ld a, d
    ld a, d
    ld l, b
    ld l, b
    dec a
    dec a
    inc c
    inc c
    call nz, $c4c4
    call nz, $e6e6
    add d
    add d
    ld e, $1e
    dec bc
    dec bc
    inc bc
    inc bc
    ld bc, $0501
    dec b
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
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
    nop
    jp hl


    jp hl


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    ld d, a
    ld d, a
    ld b, [hl]
    ld b, [hl]
    inc de
    inc de
    rlca
    rlca
    cp a
    cp a
    sbc h
    sbc h
    rst $38
    rst $38
    rst $30
    rst $30
    rst $30
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fe
    ld hl, sp-$08
    cp d
    cp d
    rst $30
    rst $30
    db $fd
    db $fd
    di
    di
    rst $10
    rst $10
    ld d, a
    ld d, a
    rrca
    rrca
    rrca
    rrca
    add [hl]
    add [hl]
    add hl, bc
    add hl, bc
    ld d, a
    ld d, a
    ld [$0e08], sp
    ld c, $2f
    cpl
    add a
    add a
    rlca
    rlca
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
    rra
    rst $38
    rra
    rst $38
    ld a, $ff
    inc a
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

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
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    ld l, a
    sbc a
    adc a
    ccf
    rrca
    ccf
    adc a
    ld a, a
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
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
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
    rrca
    inc bc
    inc c
    jp $c303


    jp $cfcf


    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $10
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
    rst $38
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    sbc e
    sbc e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    sbc h
    sbc h
    rst $38
    rst $38
    db $fd
    db $fd
    ei
    ei
    pop af
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    adc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    cp e
    ld a, [$7dfa]
    ld a, l
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    rst $38
    rst $38
    adc a
    adc a
    add [hl]
    add [hl]
    add b
    add b
    adc h
    adc h
    xor a
    xor a
    db $fd
    db $fd
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    adc a
    adc a
    db $d3
    db $d3
    db $ed
    db $ed
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
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
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
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    inc bc
    db $fc
    ld b, $f8
    add hl, bc
    pop af
    rlca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    dec c
    push hl
    rrca
    rst $20
    dec c
    push hl
    rrca
    rst $20
    dec c
    push hl
    dec bc
    db $e3
    rrca
    rst $20
    dec c
    push hl
    rrca
    rst $20
    dec c
    push hl
    rrca
    rst $20
    dec c
    push hl
    rrca
    rst $20
    dec c
    push hl
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    rrca
    rst $20
    ld l, a
    rst $20
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
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
    inc bc
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
    db $eb
    db $eb
    rst $38
    rst $38
    cp e
    cp e
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld h, a
    ld h, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $3e
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    sbc h
    sbc h
    ei
    ei
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    cp $fe
    ld a, [$81fa]
    add c
    ldh [$e0], a
    ldh [$e0], a
    ld h, b
    ld h, b
    db $ed
    db $ed
    db $ed
    db $ed
    db $eb
    db $eb
    rst $20
    rst $20
    db $db
    db $db
    db $db
    db $db
    db $d3
    db $d3
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rst $30
    rra
    rst $20
    rra
    rst $20
    ccf
    rst $00
    ld [hl], a
    add a
    rst $28
    rrca
    rst $10
    rla
    or a
    scf
    ld l, e
    ld l, e
    rst $20
    rst $20
    db $e3
    db $e3
    jp $c7c3


    rst $00
    add e
    add e
    add e
    add e
    add a
    add e
    add a
    add e
    add e
    add e
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
    add a
    add e
    add a
    add e
    rlca
    inc bc
    add a
    add e
    rlca
    inc bc
    add e
    add e
    add e
    add e
    add a
    add a
    adc a
    adc a
    rst $30
    rst $30
    rst $38
    rst $38
    di
    di
    db $eb
    db $eb
    di
    di
    rst $38
    rst $20
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
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
    ldh [$3c], a
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    jr nc, jr_03f_6e5f

jr_03f_6e5f:
    nop
    db $dd
    db $dd
    adc e
    adc e
    rst $38
    rst $38
    db $dd
    db $dd
    inc e
    inc e
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp e
    cp e
    inc a
    inc a
    dec e
    dec e
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, e
    ld a, e
    pop af
    pop af
    ld a, b
    ld a, b
    dec hl
    dec hl
    rst $38
    rst $38
    db $fd
    db $fd
    rst $28
    rst $28
    rst $28
    rst $28
    db $e3
    db $e3
    ldh a, [$f0]
    add sp, -$18
    ld l, d
    ld l, d
    ld e, e
    ld e, e
    rst $30
    rst $30
    db $e3
    db $e3
    db $fc
    db $fc
    sbc [hl]
    sbc [hl]
    rst $18
    rst $18
    sub l
    sub l
    ld b, d
    ld b, d
    nop
    rst $38
    inc bc
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
    nop
    nop
    nop
    nop
    ldh [rP1], a
    inc e
    nop
    rlca
    nop
    nop
    jr nz, jr_03f_6ebd

jr_03f_6ebd:
    ld b, b
    nop
    rla
    ld [c], a
    ld [c], a
    ei
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $30
    db $fd
    db $fd
    ei
    ei
    jp hl


    jp hl


    or b
    or b
    ld a, [$fafa]
    ld a, [$fafa]
    db $fc
    db $fc
    ld hl, sp-$08
    inc e
    inc e
    db $fd
    db $fd
    db $fd
    db $fd
    db $fc
    db $fc
    ld a, l
    ld a, l
    xor $ee
    ret nc

    ret nc

    call c, Call_000_1cdc
    inc e
    adc $ce
    cp $fe
    xor $ee
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    rst $30
    rst $30
    db $d3
    db $d3
    ldh [$e0], a
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rP1], a
    ld e, $20
    inc bc
    inc d
    ld a, l
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
    cp a
    cp a
    add l
    add l
    jp nz, $efc2

    rst $28
    rst $38
    rst $38
    rst $18
    rst $18
    pop hl
    pop hl
    ldh a, [$f0]
    jr nz, jr_03f_6f6e

    ld l, e
    ld l, e
    ld a, b
    ld a, b
    ld [hl], a
    ld [hl], a
    ld sp, $2031
    jr nz, jr_03f_6f95

    inc a
    jr jr_03f_6f74

    nop
    nop
    sub l
    sub l
    call c, $dbdc
    db $db
    jr jr_03f_6f7e

    inc e
    inc e
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    inc c
    inc c

jr_03f_6f6e:
    ld c, $0e
    nop
    rst $38
    nop
    rst $38

jr_03f_6f74:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $3fff
    rst $38

jr_03f_6f7e:
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
    rst $38
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
    rst $18

jr_03f_6f95:
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

jr_03f_6fb5:
    nop
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

    ldh a, [rP1]
    ld e, $20
    rrca
    nop
    ld bc, $0000
    stop
    inc c
    nop
    ld [hl], e
    nop
    ld a, a
    ret nz

    ret nz

    ldh [$e0], a
    db $e3
    db $e3
    or c
    or c
    ld hl, $3021
    jr nc, jr_03f_6fb5

    ret c

    sbc l
    sbc l
    cp $fe
    ld c, $0e
    ldh [$e0], a
    jr nz, jr_03f_7008

    ld b, $06
    ld bc, $1901
    add hl, de
    dec a
    dec a
    ld a, b
    ld a, b
    ld e, $1e
    pop hl
    pop hl
    ld hl, sp-$08
    ld l, $2e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add c
    add c
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b

jr_03f_7008:
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp h
    cp h
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc [hl]
    sbc $de
    sbc $de
    xor $ee
    or $f6
    ld a, [c]
    ld a, [c]
    or $f6
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld a, [c]
    cp $fe
    cp $fe
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
    ret nz

    nop
    ld hl, sp+$00
    ld a, $80
    rlca
    jr z, @+$03

    ld c, $00
    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    nop
    nop
    inc bc
    inc bc
    jr z, jr_03f_7098

    ld h, e
    ld h, e
    sub b
    sub b
    db $10
    db $10
    ld a, [bc]
    ld a, [bc]
    ld b, $06
    nop
    nop
    sub b
    sub b
    jp c, $e1da

    pop hl
    pop hl
    pop hl
    ldh a, [$f0]
    ld [hl], d
    ld [hl], d
    jr jr_03f_70a2

    nop
    nop
    ld b, b
    ld b, b
    jr c, jr_03f_70c8

    rst $38
    nop
    rst $38
    nop
    cp $02
    ldh a, [$f0]

jr_03f_7098:
    ldh [$e0], a
    ldh [$e0], a
    db $f4
    db $f4
    db $fc
    db $fc
    ldh a, [$f0]

jr_03f_70a2:
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    xor $ee
    db $f4
    db $f4
    db $fc
    db $fc
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fc
    db $fc
    db $fd
    db $fc
    db $fd
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
    cp $fe
    cp $fe

jr_03f_70c8:
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    nop
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
    ld hl, sp+$00
    ccf
    add b
    rrca
    ldh a, [rSB]
    cp $00
    rst $38
    nop
    rst $38
    nop
    pop af
    nop
    rst $38
    nop
    ld a, e
    nop
    ccf
    sbc b
    sbc b
    ld h, b
    ld h, b
    db $10
    db $10
    ld bc, $0001
    nop
    ld b, $06
    ld c, $0e
    add a
    add a
    add hl, hl
    add hl, hl
    adc [hl]
    adc [hl]
    rst $20
    rst $20
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    inc h
    inc h
    ld a, $3e
    ld c, $0e
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
    nop
    nop
    nop
    nop
    ld a, [bc]
    ld a, [bc]
    db $fc
    db $fc
    db $ec
    db $ec
    inc b
    inc b
    ld l, h
    ld l, h
    inc b
    inc b
    ld h, h
    ld h, h
    inc b
    inc b
    inc b
    add h
    inc b
    inc b
    ld b, h
    ld b, h
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    inc b
    inc b
    ld b, $06
    ld h, $26
    ld h, [hl]
    ld h, [hl]
    db $76
    db $76
    db $76
    db $76
    db $76

jr_03f_714b:
    db $76
    ld a, [hl]
    ld a, [hl]
    ld e, $1e
    ret nz

    jr nz, jr_03f_714b

    nop
    cp a
    ld b, b
    rra
    ldh [$03], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    db $10
    ld [$0008], sp
    nop
    add b
    add b
    ldh [$e0], a
    ld h, l
    ld h, l
    or $f6
    ccf
    ccf
    cp $fe
    ld l, $2e
    rst $38
    rst $38
    ld [hl], c
    ld [hl], c
    ld a, [de]
    ld a, [de]
    dec e
    dec e
    ld bc, $8001
    add b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    inc c
    dec c
    ld c, $0e
    ld c, $0e
    ld c, $0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    rrca
    db $10
    db $10
    ld de, $0b0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    inc e
    dec e
    ld e, $1f
    dec bc
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_03f_7212

    add hl, hl
    db $10
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_03f_7225

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03f_7235

    ld a, [hl-]
    dec sp
    inc a
    dec a
    dec bc
    dec bc
    ld a, $0b
    ccf
    dec bc
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    dec bc
    dec bc

jr_03f_7212:
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
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    dec bc
    ld d, a
    ld e, b
    ld e, c
    ld e, d

jr_03f_7225:
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
    inc c
    ld l, c

jr_03f_7235:
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
    dec bc
    dec bc
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    dec bc
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    dec bc
    add e
    add h
    add l
    add [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add a
    adc b
    adc c
    dec bc
    adc d
    adc e
    adc h
    adc l
    dec bc
    adc [hl]
    adc a
    sub b
    sub c
    ld [bc], a
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    dec bc
    dec bc
    sub a
    sbc b
    dec bc
    dec bc
    dec bc
    dec bc
    db $10
    db $10
    dec bc
    sbc c
    dec bc
    dec bc
    dec bc
    sbc d
    sbc e
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    sbc h
    sbc l
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    add hl, hl
    sbc [hl]
    sbc a
    and b
    and c
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and d
    and e
    and h
    and l
    and [hl]
    and a
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    and h
    xor b
    xor c
    ld hl, $0b0b
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
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
    inc b
    inc b
    ld bc, $0101
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
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0505
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    inc b
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
    inc b
    inc b
    nop
    ld bc, $0004
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0502
    dec b
    dec b
    inc b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc b
    ld bc, $0502
    dec b
    ld bc, $0200
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    nop
    ld hl, $0021
    ld bc, $0000
    nop
    inc b
    inc b
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
    ld bc, HeaderLogo
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $01ff
    rst $38
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
    ccf
    rst $38
    ccf
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
    db $fd
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld a, [c]
    db $fd
    di
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    ld a, $c0
    ld a, [hl]
    ret nz

    ld a, [hl]
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

    rst $30
    ret nz

    rst $30
    add b
    di
    add b
    pop af
    add b
    pop af
    add b
    pop af
    add b
    pop hl
    add b
    pop hl
    add b
    pop hl
    add b
    pop hl
    add b
    pop hl
    add b
    pop af
    add b

jr_03f_756a:
    pop af
    add b

jr_03f_756c:
    pop af
    add b
    ld a, [c]
    add c
    ldh a, [$83]
    ldh a, [$83]
    ldh a, [$83]
    ld hl, sp-$7d
    ld hl, sp-$7d
    ld a, [$fa81]
    add c
    ld hl, sp-$7f
    ld hl, sp-$7f
    ld sp, hl
    add b
    ld hl, sp-$80
    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fd
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

    ld a, a
    ldh [$7f], a
    ldh [$60], a
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    jr nz, jr_03f_756a

    jr nz, jr_03f_756c

    nop
    ldh [rP1], a
    ldh a, [$f0]
    rst $38
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
    rst $38
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
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    ld e, a
    cp a
    ld e, a
    cp a
    ld e, a
    cp a
    ld a, a
    sbc a
    ccf
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    cpl
    rst $18
    rra
    rst $28
    rra
    rst $28
    rla
    rst $28
    rla
    rst $28
    rst $20
    rst $38
    rst $38
    pop hl
    pop hl
    ret nz

    ret nz

    add b
    add b
    nop
    add b
    nop
    ret nz

    add b
    ret nz

    add b
    ret nz

    add b
    pop bc
    add b
    ld a, a
    add c
    rra
    rst $30
    ccf
    rst $30
    rra
    rst $30
    sbc a
    ld [hl], a
    sbc a
    ld [hl], a
    sub a
    ld a, e
    sub a
    ld a, e
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
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    cp $01
    cp $01
    cp $01
    cp $00
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01fd
    db $fd
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
    ei
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
    rst $30
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
    rst $28
    rrca
    rst $38
    rra
    rst $38
    rra
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr c, @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc c
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    call $cdff
    rst $38
    call $cdff
    rst $38
    call $cdff
    cp $ce
    db $fc
    adc $f8
    set 6, b
    db $d3
    pop hl
    db $d3
    pop hl
    call $c5f3
    ld a, a
    push hl
    ld a, a
    push hl
    ld a, a
    ld h, l
    ccf
    ld h, [hl]
    ccf
    and $7f
    and $7f
    and $ff
    and $ff
    nop
    and $00
    and $00
    and $00
    and $01
    and $01
    ld [c], a
    ld bc, $03e2
    ldh [$03], a
    ldh [$03], a
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [rTAC]
    ldh a, [rTAC]
    pop af
    rlca
    pop af
    rlca
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
    rra
    pop hl
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    jp $c33f


    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add a
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
    rra
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
    nop
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
    ret nz

    nop
    ret nz

    nop
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

    inc a
    ret nz

    jr c, @+$01

    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38

jr_03f_7837:
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

jr_03f_7841:
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    inc b
    ret nz

    rlca
    ret nz

    rrca
    ret nz

    dec a
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

    dec [hl]
    ret nz

    scf
    ret nz

    dec l
    ret nz

    add hl, hl
    ret nz

    ld hl, $00c0
    ret nz

    nop
    ret nz

    nop
    ret nz

    dec h
    ret nz

    nop
    ret nz

    jr nz, jr_03f_7837

    nop
    ret nz

    inc h
    ret nz

    inc h
    ret nz

    inc l
    ret nz

    jr z, jr_03f_7841

    ld a, [hl+]
    ret nz

    add hl, bc
    ret nz

    ld a, [hl+]
    ret nz

    ld h, $c0
    ld [hl], $c0
    ld a, $c0
    ld a, $c0
    scf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    or $f6
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
    cp $ff
    db $fc
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld hl, sp-$08
    ld a, a
    ld a, a
    dec c
    dec c
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
    add b
    add b
    ret c

    ret c

    db $fc
    db $fc
    db $fc
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
    xor a
    xor a
    rst $38
    rst $38
    xor l
    xor l
    sbc a
    sbc a
    dec c
    dec c
    inc de
    inc de
    dec c
    dec c
    nop
    nop
    rlca
    rlca
    add h
    add h
    nop
    nop
    ld bc, $1601
    ld d, $01
    ld bc, $0101
    ld a, [bc]
    ld a, [bc]
    ld b, [hl]
    ld b, [hl]
    nop
    nop
    add h
    add h
    sbc e
    sbc e
    ld e, d
    ld e, d
    sub d
    sub d
    sub d
    sub d
    db $fd
    db $fd
    rst $38
    rst $38
    ei
    ei
    db $db
    db $db
    db $dd
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, l
    ld l, l
    ld l, h
    ld l, h
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, e
    ld a, e
    ld a, [hl]
    ld a, [hl]
    ld [hl], h
    ld [hl], h

jr_03f_7960:
    ld h, [hl]
    ld h, [hl]
    ld hl, $7b21
    ld a, e
    ld l, a
    ld l, a
    ld a, l
    ld a, l
    ld d, a
    ld d, a
    ld [hl-], a
    ld [hl-], a
    inc sp
    inc sp
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
    rra
    rst $38
    ld e, $fe
    inc e
    rra
    ld hl, sp-$01
    ldh a, [$f7]
    pop af
    cp $01
    cp $fe
    rst $38
    call c, $9cff
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    add hl, sp
    sbc $7d
    sbc d
    rst $38

jr_03f_79a3:
    jr jr_03f_7960

jr_03f_79a5:
    add hl, de

jr_03f_79a6:
    ei

jr_03f_79a7:
    add hl, de

jr_03f_79a8:
    cp $19
    ld a, e
    sbc h
    dec sp
    call c, $fc1b
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    nop
    jr jr_03f_79a3

    jr jr_03f_79a5

    jr jr_03f_79a7

    jr @-$1e

    jr @-$0e

    ld [$00f8], sp
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
    ldh [$60], a
    nop
    ld [hl], b
    nop
    jr nc, jr_03f_79a6

    jr c, jr_03f_79a8

    jr @-$1e

    inc e
    ldh [rNR32], a
    ldh [$0e], a
    ldh a, [rTMA]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    inc e
    ld bc, $0112
    nop
    ld bc, $0000
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    xor a
    rst $38
    rst $38
    db $dd
    db $dd
    dec c
    dec c
    rst $18
    rst $18
    cp [hl]
    cp [hl]
    ld [$1908], sp
    add hl, de
    ld [hl], a
    ld [hl], a
    dec h
    dec h
    and b
    and b
    ld l, e
    ld l, e
    push hl
    push hl
    sub d
    sub d
    ld d, b
    ld d, b
    add $c6
    cp $fe
    ld a, [$41fa]
    ld b, c
    ld h, b
    ld h, b
    inc e
    inc e
    ld a, [$fafa]
    ld a, [$a0a0]
    sub b
    sub b
    sub b
    sub b
    db $fd
    db $fd
    ld h, [hl]
    ld h, [hl]
    and d
    and d
    xor c
    xor c
    ld c, b
    ld c, b
    ld c, b
    ld c, b
    ld b, c
    ld b, c
    push de
    push de
    xor c
    xor c
    xor e
    xor e
    add h
    add h
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    nop
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
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    ccf
    ld b, b
    rst $38
    ccf
    ld a, a
    sbc a
    ld a, a
    adc a
    ld a, a
    and a
    ld a, a
    or a
    ld a, a
    or a
    ld a, a
    xor a
    ld a, a
    and l
    ld a, a
    and a
    ld a, a
    and a
    ld a, a
    and a
    ld a, a
    xor a
    ld a, a
    xor a
    ld a, a
    and a
    ld a, a
    cp c
    ld a, a
    or e
    ld a, a
    or d
    ld a, a
    and d
    ld a, a
    or e
    ld a, a
    or d
    ld e, e
    db $db
    ld e, a
    rst $18
    pop de
    pop de
    ret


    pop bc
    call z, $ccc0
    ret nz

    db $ec
    ldh [$d8], a
    ret nc

    rst $38
    inc hl
    rst $38
    add hl, hl
    rst $38
    ld [$00ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    jr c, @+$01

    jr @+$01

    ld [$28ff], sp
    rst $38
    ld [hl+], a
    rst $38
    add e
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    ret z

    rst $38
    add sp, $60
    nop
    ld [hl], d
    nop
    ld [hl-], a
    ld b, b
    add hl, sp
    nop
    ld a, [hl-]
    nop
    inc e
    nop
    inc e
    nop
    ld c, $00
    ld c, $00
    rlca
    nop
    rlca
    add b
    inc bc
    ld b, b
    inc bc
    db $10
    ld bc, $0132
    inc [hl]
    ld bc, $eab6
    ld [$a0a0], a
    ld [hl+], a
    ld [hl+], a
    nop
    nop
    jr nc, jr_03f_7b4a

    jr nz, jr_03f_7b3c

    nop
    nop
    nop
    nop
    jr nc, jr_03f_7b52

    ld d, b
    ld d, b
    jr nz, jr_03f_7b46

    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    jr nz, jr_03f_7b4e

    add b
    add b
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop

jr_03f_7b3c:
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    nop
    nop

jr_03f_7b46:
    db $10
    stop
    nop

jr_03f_7b4a:
    nop
    nop
    ld b, b
    ld b, b

jr_03f_7b4e:
    inc b
    inc b
    rrca
    rst $38

jr_03f_7b52:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    db $fc
    add e
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    ei
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$49
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$49
    ld hl, sp-$59
    ld hl, sp-$19
    ldh a, [$af]
    ldh a, [$af]
    ldh a, [$2f]
    ldh a, [$2e]
    ldh a, [$ae]
    ldh a, [$ae]
    ldh a, [$ae]
    ldh a, [$ee]
    ldh a, [$ee]
    ldh a, [$ee]
    ldh a, [$ee]
    ldh a, [$ee]
    ldh a, [$6e]
    ldh a, [$2e]
    ldh a, [$0e]
    ldh a, [$0e]
    ldh a, [$0e]
    ld hl, sp+$06
    db $fc
    ld [bc], a
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [$f8]
    nop
    ld hl, sp+$00
    ld a, h
    add b
    ld a, h
    add b
    ld a, $c0
    ld a, $c0
    rra
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    jr nz, jr_03f_7c36

    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ld [$ff08], sp
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
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

jr_03f_7c36:
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, [$f4fd]
    ei
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    pop bc
    cp $c1
    cp $c3
    db $fc
    jp $87fc


    ld hl, sp-$79
    ld hl, sp-$6f
    xor $8f
    ldh [$a1], a
    ret nz

    ret nz

    add b
    sbc c
    ldh [$87], a
    ld hl, sp-$7d
    db $fc
    add a
    ld hl, sp-$79
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
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
    cp a
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$11
    db $ec
    rst $30
    or $e1
    pop hl
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    ld sp, hl
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$08
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, [hl]
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
    ld hl, sp+$07
    cp b
    inc bc
    cp h
    inc bc
    db $fc
    inc bc
    db $f4
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
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, @+$21

    db $10
    rrca
    ld [$0407], sp
    inc bc
    db $fc
    rlca
    cp $03
    cp $03
    ld a, a
    ld bc, HeaderManufacturerCode
    ccf
    ld bc, $011f
    rrca
    ld bc, $0ff0
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
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
    nop
    nop
    nop
    nop
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
    ld bc, $0200
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    cp $03
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    add a
    cp h
    add a
    ld e, b
    ld b, a
    jr z, jr_03f_7d89

    jr c, jr_03f_7d9b

    ret nc

    rst $10
    ld hl, sp-$05
    db $fc
    db $fd
    cp $fe
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

jr_03f_7d89:
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp+$00
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

jr_03f_7d9b:
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
    add b
    cp a
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp-$01
    db $fc
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$f7]
    ld hl, sp-$05
    db $fc
    rst $38
    cp $ff
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc bc
    inc bc
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
    inc b
    dec b
    ld b, $07
    ld [$0303], sp
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
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    rlca
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
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
    ld de, $0012
    nop
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
    inc d
    dec d
    nop
    nop
    ld d, $17
    nop
    nop
    jr jr_03f_7f1e

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_03f_7f0d

jr_03f_7f0d:
    ld hl, $2322
    inc h
    nop
    nop
    dec h
    ld h, $27
    inc bc
    inc bc
    inc bc
    jr z, jr_03f_7f44

    ld a, [hl+]
    dec hl
    inc l

jr_03f_7f1e:
    dec l
    ld l, $2f
    jr nc, jr_03f_7f23

jr_03f_7f23:
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_03f_7f65

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
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
    ld sp, $004d
    ld c, [hl]

jr_03f_7f44:
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
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    nop
    ld e, a
    ld h, b
    nop
    nop
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    nop
    ld h, a
    nop
    ld l, b
    nop

jr_03f_7f65:
    nop
    ld l, c
    nop
    nop
    nop
    ld l, d
    ld c, c
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    ld l, a
    nop
    inc b
    ld [hl], b
    nop
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, b
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
    ld [$8a00], sp
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    ld a, [bc]
    sub e
    sub h
    sub l
    dec de
    dec de
    dec de
    dec de
    sub [hl]
    sub d
    sub a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
