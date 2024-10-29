SECTION "ROM Bank $043", ROMX[$4000], BANK[$43]

Jump_043_4000:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_043_4012:
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $30
    rst $30
    sbc [hl]
    add a
    ld e, a
    rlca
    and e
    inc bc
    rst $38
    rra
    ei
    inc c
    ld l, c
    cp [hl]
    dec d
    cp $f5
    ld a, [$f8b7]
    db $db
    db $e4
    ld a, [$0004]
    inc b
    ld h, b
    ld bc, $00fb
    add hl, de
    ld h, [hl]
    nop
    dec c
    ld e, h
    add b
    inc b
    ld [$0b00], a
    jr c, jr_043_4012

    dec sp
    nop
    inc de
    rrca
    cp c
    ld b, a
    db $fc
    inc bc
    ld l, b
    rla
    jr nc, jr_043_406d

    ld h, [hl]
    add hl, de
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, [$ff05]
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld sp, hl
    rlca
    ld hl, sp+$17
    ld [$f81f], a

jr_043_406d:
    rrca
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
    db $ed
    nop
    call z, $ca00
    nop
    call c, $ba00
    nop
    jp nz, $c000

    nop
    ld [hl], h
    nop
    inc a
    nop
    ldh a, [rP1]
    ld c, e
    add b
    jp nz, Jump_000_3c00

    ret nz

    db $10
    ret nz

    ld a, b
    ret nz

    ld [$03f0], a
    db $fc
    di
    inc e
    db $fd
    ld [bc], a
    jp hl


    inc de
    rst $38
    ld bc, $03fc
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld e, [hl]
    and c
    dec de
    db $e4
    and a
    ld hl, sp-$7b
    ld a, [$fc03]
    add b
    rst $38
    add b
    rst $38
    ld b, c
    cp $80
    rst $38
    add b
    rst $38
    ld [de], a
    cp $94
    db $fd
    adc b
    rst $38
    sbc b
    rst $38
    sbc $ff
    db $fc
    rst $38
    cp $ff
    ei
    rst $38
    ld a, [$f8ff]
    rst $38
    db $fc
    rst $38
    ld a, [hl]
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
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $38
    rst $38
    rst $10
    rst $38
    ld d, e
    ldh a, [$8f]
    ld a, a
    sbc a
    ld l, a
    or [hl]
    rrca
    dec c
    sub h
    dec sp
    add h
    ld [hl], e
    add d
    add d
    sub e
    rst $38
    rst $38
    rst $38
    rst $38
    db $d3
    cpl
    db $db
    ld h, $b4
    ld a, a
    ld [hl], e
    ccf
    xor c
    ld a, a
    or c
    ld a, [hl]
    jp nc, Jump_000_183f

    ld h, c
    ccf
    add b
    add e
    ld a, h
    ld a, [de]
    add l
    ld [$4016], sp
    cp a
    add a
    ld [hl], b
    ld [bc], a
    dec e
    ld [hl-], a
    rra
    sbc b
    ld h, a
    ld d, a
    cp b
    rra
    ldh a, [$8e]
    pop af
    ld c, a
    pop af
    ld h, [hl]
    sbc c
    adc c
    cp $01
    rst $38
    ld b, b
    cp a
    ld d, b
    xor a
    ld d, $e9
    sbc d
    ld h, l
    adc [hl]
    ld [hl], c
    db $fc
    rlca
    db $f4
    rrca
    pop af
    rrca
    add hl, hl
    rst $18
    dec c
    rst $38
    ld b, h
    rst $38
    or d
    call $c4bb
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
    add c
    nop
    sub e
    nop
    rst $10
    nop
    rst $18
    nop
    pop af
    nop
    call Call_043_6500
    nop
    inc c
    nop
    inc d
    nop
    nop
    nop
    ld sp, $1000
    nop
    sub b
    nop
    ret nc

    nop
    jr nz, jr_043_4196

jr_043_4196:
    ld b, b
    nop
    ld [$9000], sp
    nop
    ld [c], a
    nop
    ld h, b
    add b
    ld h, e
    add b
    add e
    ld b, b
    xor l
    ld b, b
    ei
    nop
    rst $38
    nop
    push af
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
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    jp c, $ca25

    dec [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    db $fd
    sub l
    rst $10
    ld [bc], a
    ld e, $34
    call z, $f1ff
    rst $38
    ld a, [hl-]
    rst $38
    db $76
    rst $38
    dec a
    rst $38
    cp a
    rst $38
    db $eb
    rst $38
    jr z, @+$01

    nop
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$f5ff], a
    rst $38
    rst $38
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
    rst $38
    rst $38
    ld [$94ff], a

jr_043_41ff:
    dec hl
    rst $30

jr_043_4201:
    rst $38
    rst $30
    rst $38
    sub l
    ei
    ei
    cp c
    ld a, d
    call $0c30
    dec a
    rst $38
    rst $38
    rst $38
    jp hl


    ld d, $c0
    jr c, jr_043_4245

    rrca
    jr jr_043_41ff

    ld l, $d1
    sbc h
    ld h, d
    ld a, b
    add a
    ld e, a
    and b
    add c
    ld a, [hl]
    jr nz, jr_043_4201

    ld b, b
    cp a
    ld d, h
    xor e
    dec h
    jp c, $c738

    ld bc, $04dc
    res 7, b
    rst $28
    inc h
    rst $38
    ld hl, sp+$07
    adc d
    inc bc
    pop af
    adc $dc
    rst $38
    ld d, e
    rst $28
    db $ec
    scf
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $38

jr_043_4245:
    rst $38
    ld a, a
    rst $38
    inc e
    rst $38
    jr c, @+$01

    jr c, @+$01

    ld a, c
    cp $fd
    cp $c4
    rst $38
    inc d
    rst $38
    cp l
    rst $38
    cp $7f
    push hl
    ld a, a
    sub a
    ld l, a
    xor b
    ld [hl], a
    ret z

    scf
    db $e4
    dec de
    and $1b
    db $fd
    rrca
    rst $20
    rra
    cp a
    rrca
    ei
    rrca
    rst $30
    rrca
    db $db
    rlca
    ld d, d
    dec b
    add l
    inc bc
    cpl
    inc bc
    ld c, l
    inc bc
    ld b, a
    nop
    ld c, a
    nop
    rrca
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    dec d
    nop
    ld [hl], a
    nop
    ld h, a
    nop
    rst $08
    nop
    rst $00
    nop
    db $ed
    nop
    db $eb
    nop
    ld l, e
    nop
    rst $10
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp h
    ld b, e
    or h
    ld c, e
    ret c

    daa
    db $d3
    inc l
    pop hl
    ld e, $50
    xor a
    add b
    ld a, a
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    ret nz

    ld a, a
    ld [hl], b
    ccf
    ret c

    cpl
    ld h, $5f
    set 7, a
    db $d3
    rst $38
    db $d3
    rst $38
    or e
    rst $38
    db $e3
    rst $38
    add c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $51ff
    rst $38
    xor c
    rst $38
    ld d, l
    rst $38
    db $fd
    rst $38
    ld bc, $ffff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld bc, $7fff
    rst $38
    ei
    rst $38
    and $d8
    rst $38
    ret c

    rst $20
    jr jr_043_432e

    rla
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    add b
    inc b
    add d
    add l
    ld [hl-], a
    and b
    ld e, a
    nop
    rst $38
    ld d, b
    xor c
    ld d, b
    and c
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    ld b, b
    cp [hl]
    ld h, b
    sbc e
    ldh [rNR21], a
    ldh [rTAC], a

jr_043_432e:
    ret nz

    dec sp
    db $eb
    rst $38
    pop af
    rst $38
    rlca
    ld hl, sp-$4f
    nop
    ld sp, $8700
    ld a, b
    db $e4
    dec de
    call nz, $f97b
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $38
    add c
    rst $38

jr_043_4348:
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    add c
    ld a, a
    ld b, $ff
    ld b, $ff
    ld h, $df
    adc e
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    ei
    rst $38

jr_043_4366:
    or [hl]
    rst $38
    jr c, @+$01

    jp c, $7eff

    rst $38
    ld e, [hl]
    rst $38
    ld e, $ff
    dec c
    cp $5d
    cp $3d
    cp $fb
    db $fc
    ei
    db $fc
    rlca
    ld hl, sp-$39
    jr c, jr_043_4348

    jr c, jr_043_4366

    inc e
    ld [hl], a
    ld [$0ef1], sp
    rst $30
    ld [$08f7], sp
    or $09
    ld a, [c]
    dec c
    rst $30
    ld [$0cf3], sp
    di
    inc c
    push af
    ld a, [bc]
    di
    inc c
    pop af
    ld c, $f0
    rrca
    ldh a, [rIF]
    rrca
    rrca
    adc a
    adc a
    db $ed
    rst $28
    adc l
    adc a
    ret


    rst $08
    db $ed
    rst $28
    jp hl


    rst $28
    add sp, -$11
    db $10
    add sp, $00
    db $fc
    inc b
    db $f4
    db $10
    add sp, $40
    cp b
    ld [de], a
    rst $28
    ld [bc], a
    ld a, [$fa00]
    ld [bc], a
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
    add hl, de
    rst $38
    add hl, de
    rst $38
    add hl, de
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
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38

Jump_043_43eb:
    rst $38
    ld c, e
    rst $38
    ldh [rIE], a
    ei
    db $fc
    db $fc
    rst $38
    ld a, a
    rst $38
    or a
    ld a, a
    ld e, e
    ld d, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    inc l

jr_043_4402:
    cpl
    ret nc

jr_043_4404:
    add hl, sp
    add $de
    ld hl, $2bd4
    pop hl
    ld e, $79
    add [hl]
    inc b
    db $d3
    ret nz

    cpl
    nop
    cp $00
    di
    add b
    ld a, e
    adc b
    ld [hl], a
    ld c, b
    or e
    nop
    db $ec
    db $10
    ld h, b
    daa
    ld hl, sp+$2f
    ldh a, [rIE]
    ret nz

    ld [hl], h
    add d
    pop hl
    nop
    sub c
    ld h, b
    dec bc
    db $f4
    dec b
    rst $38
    ld l, b
    ldh a, [$c8]
    ldh a, [$98]
    ldh [$38], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [$38], a
    ret nz

    jr c, jr_043_4402

    jr nz, jr_043_4404

    jr nz, @-$3e

    jr nc, @-$3e

    and b
    ret nz

    ldh a, [$80]
    ldh a, [$80]
    ldh [rP1], a
    ld l, b
    add b
    ld [hl], b
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ret nc

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    db $f4
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    db $f4
    nop
    push af
    nop
    ldh a, [rP1]
    db $fc
    nop
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    ld sp, hl
    nop
    ld a, l
    add b
    db $fd
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld a, [hl]
    add b
    db $fd
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    rst $28
    db $10
    ld l, a
    sub b

jr_043_449e:
    cp a
    ld b, b
    nop
    add b
    ld b, b
    ret nz

    ret z

    ret z

    adc b
    adc b
    and b
    and b
    ld hl, sp-$08
    push de
    push de
    db $fc
    db $fc
    add hl, bc
    or $00
    ld sp, hl
    nop
    db $fc
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    jr nz, jr_043_449e

    nop
    ret nz

    adc b
    ret z

    ret nz

    ret z

    and b
    ldh [$4c], a
    db $ec
    adc b

jr_043_44c9:
    call c, $fede
    rst $38

Call_043_44cd:
    rst $38
    db $f4
    rst $38
    cp $ff
    sbc $ff
    rst $38
    rst $38
    pop af
    rst $38
    db $ed
    rst $38
    db $fd
    rst $38
    xor $ff
    sbc $ff
    ei
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38

jr_043_44e9:
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    cpl
    rst $18
    ld sp, $16cf
    ret


    and a
    ld e, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr c, jr_043_44c9

    ld [de], a
    db $ed
    db $76
    adc c
    ld c, [hl]
    or c
    rla
    add sp, $2a

jr_043_450b:
    push de
    add b
    ld a, a
    ld a, a
    add b
    daa
    ret c

    jr z, jr_043_44e9

    ret z

    scf
    ld b, e
    cp h
    pop bc

jr_043_4519:
    ld a, $90
    cpl
    cp b
    ld b, d
    ld e, b
    and e
    rlca
    rst $38
    jr jr_043_450b

    ret z

    scf
    ld [hl], a
    jr c, jr_043_4519

    ld a, a
    and c
    ld e, a
    ld [hl], h
    adc a
    inc [hl]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld bc, $0205
    nop
    rlca
    dec b
    ld [bc], a
    dec c
    ld [de], a
    inc bc
    jr @+$03

    ld [$0800], sp
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, d
    nop
    and b
    nop
    and d
    nop
    xor h
    nop
    add h
    nop
    pop bc
    nop
    ldh [rP1], a
    di
    nop
    ei
    nop
    rst $28
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
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    di
    inc c
    ld sp, hl
    ld b, $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$5c], a
    ld b, e
    ld bc, $113e
    ld [hl], $20
    daa
    nop
    rrca
    ld b, d
    dec c
    ld b, $21
    ld a, [bc]
    add c
    nop
    nop
    nop
    nop
    db $10
    db $10
    add b
    add b
    ret nc

    and b
    and $f8
    xor l
    db $fc
    cp $fe
    ld hl, sp-$02
    ld sp, hl
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, [hl]
    rst $38
    ld l, [hl]
    rst $38
    or d
    rst $38
    and $ff
    or a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    cp h
    ld a, a
    ldh a, [rIE]
    db $eb
    rst $38
    ld h, a
    ld h, a
    inc sp
    inc sp
    ld c, c
    or [hl]
    sbc c
    ld h, [hl]
    sub h
    ld l, e
    inc b
    ei
    ld d, b
    xor [hl]
    call nc, $0c2a
    di
    inc c
    di
    and [hl]
    ld e, c
    db $10
    rst $28
    ld [$00f7], sp
    rst $28
    nop
    rst $10
    inc b
    ei
    nop
    rst $30
    db $10
    add sp, $04
    ei
    dec b
    jp c, $df00

    inc bc
    ld a, h
    nop

jr_043_4619:
    ld h, a
    nop
    cp $14
    rlc e
    inc b
    nop
    nop
    ld bc, $0000
    ld bc, $0103
    inc bc
    nop
    inc bc
    nop
    dec b
    nop
    ld c, $00
    ld [bc], a
    inc c
    add hl, de
    ld c, $04
    ld a, [de]
    ld e, $10
    ld h, d
    db $10
    jp nc, Jump_043_4000

    add b
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    ret nz

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
    jr nz, jr_043_4654

jr_043_4654:
    nop
    nop
    nop
    nop
    ld h, c
    nop
    and e
    nop
    scf
    nop
    scf
    nop
    ld sp, hl
    nop
    ccf

jr_043_4663:
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    sbc $01
    cp $01
    cp $01
    ld bc, $0000
    ld bc, $0001
    nop
    ld bc, $0100
    nop
    inc bc
    ld [bc], a
    ld b, $04
    ld b, $fd
    inc b
    ld sp, hl
    nop
    push de
    inc l
    pop af
    ld [$04f5], sp
    pop hl
    nop
    add b
    ld h, b
    and h
    ld b, b
    sub b
    ld h, b
    add b
    ld b, b
    add b
    ld b, b
    and b
    jr nz, jr_043_4619

    add b
    nop
    nop
    inc b
    inc b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld de, $00fe
    jr nz, jr_043_4663

    ldh a, [rSVBK]
    ld a, [$fefa]
    ei
    rst $38
    rst $38
    rst $38
    ld a, c
    rst $38
    db $fd
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    rst $08
    rst $38
    ld d, a
    rst $38
    rlca
    rst $38
    inc sp
    rst $38
    ccf
    rst $38
    ld [hl], l
    ld [hl], l
    or $09
    ld d, a
    xor b
    sub [hl]
    ld l, c
    db $10
    rst $28
    ld d, h
    dec hl

jr_043_46da:
    nop
    ld a, a
    ld bc, $00be
    rst $38
    nop
    rst $30
    sub c
    ld l, [hl]
    pop hl
    ld e, $e0
    rlca
    ld h, b
    sbc l
    inc a
    jp $6c90


    nop
    cp h
    ld c, b
    or a
    ld c, h
    or e
    ld [hl], b
    adc a
    inc b
    ld a, [$7681]
    add b
    ld [hl], e
    jr nz, jr_043_46da

    nop
    rst $38
    jp $9370


    ldh [$60], a
    add d
    ld b, d
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
    inc b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_043_471c

jr_043_471c:
    ld [hl-], a
    nop
    jr jr_043_4720

jr_043_4720:
    ld h, b
    nop
    ld h, [hl]
    nop
    ld h, [hl]
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$3f]
    ret c

    ccf
    sub b

jr_043_4735:
    ld a, a
    db $10

jr_043_4737:
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fd
    ld [bc], a
    ld [hl], b
    adc a
    ld [hl], c
    adc [hl]
    ld a, [bc]
    add l
    dec bc
    add h
    dec bc
    inc c
    ld b, $09
    rrca
    ld [$1b0c], sp
    inc bc
    inc e
    inc de
    inc e
    rla
    jr c, @+$31

    jr nc, jr_043_478d

    dec hl
    inc [hl]
    ld l, e
    ld [bc], a
    db $fd
    jr nz, @+$01

    jr nc, jr_043_4735

    jr nc, jr_043_4737

    ld c, $f3
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    ld [$201f], sp
    rrca
    jr nc, @+$11

    db $10
    rra
    nop
    rra
    nop
    adc e
    or h
    nop
    rrca
    ld [bc], a
    dec c
    add b
    dec b
    ld bc, $8302
    ld b, h
    nop
    jp $c787


    rst $00

jr_043_478d:
    rst $08
    add a
    rst $08
    rst $00
    rst $08
    inc bc
    rst $28
    add hl, de
    rst $38
    ld a, l
    rst $38
    db $76
    rst $38
    db $76
    rst $38
    ld [hl], e
    rst $38
    ld [c], a
    rst $38
    ld b, b
    ld b, a
    jr c, jr_043_47dd

    dec e
    dec e
    add a
    add a
    dec c
    dec b
    cpl
    cpl
    ld [$0e08], sp
    ld [$d835], sp
    add e
    cp $51
    xor $82
    ld a, l

Jump_043_47b8:
    ld c, a
    or b
    ld d, c
    ldh [rPCM12], a
    nop
    ld e, c
    ld b, $f1
    ld c, $6e
    sub b
    scf
    ret z

    scf
    add sp, $0e
    ld hl, sp+$09
    cp $64
    rst $38
    inc b
    rst $38
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

jr_043_47dd:
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld b, $00
    inc c
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ld [$0100], sp
    nop
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
    ld b, $00
    ld b, $00
    ld b, d
    nop
    jr jr_043_480c

jr_043_480c:
    jr c, jr_043_480e

jr_043_480e:
    inc hl
    nop
    ld hl, $4f00
    nop
    rlca
    nop
    rra
    nop
    cpl
    nop
    rrca
    nop
    rra
    nop
    ld l, l
    inc bc
    ld a, a
    ld [bc], a
    rla
    ld a, $38
    ld a, a
    jp z, $c775

    ld hl, sp-$79

Call_043_482b:
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rP1]
    rst $38
    rlca
    rst $38
    ld bc, $80ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret z

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, d
    rst $38
    ldh [rIE], a
    jp $8bff


    rst $38
    db $76
    rst $38
    db $fc
    rst $38
    xor b
    rst $38
    nop
    rst $38
    rst $38
    nop
    sub $28
    call nc, Call_000_382a
    call nz, Call_000_18e0
    ldh a, [rP1]
    ld h, c
    add c
    add b
    ldh [$80], a
    ld b, b
    nop
    nop
    add hl, bc
    add hl, bc
    rra
    rra
    dec b
    dec b
    rlca
    rlca
    ld b, e
    ld b, e
    ld b, e
    ld b, e
    ld a, [hl]
    add c
    cp $01
    adc h
    ld [hl], e
    ld a, c
    rst $00
    ld d, a
    rst $28
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld e, $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    jr @+$01

    jr @+$01

    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ccf
    or b
    or e
    adc [hl]
    adc a
    ld b, d
    ld b, d
    ld hl, $6320
    nop
    xor e
    db $10
    sbc $30
    ld a, [hl]
    ld bc, $01e4
    ld c, [hl]
    add c
    ld [hl+], a
    ld bc, $019e
    ld a, d
    dec c
    inc c
    nop
    jr c, jr_043_48c4

jr_043_48c4:
    rra
    ld h, b
    ld [hl], a
    nop
    ccf
    ld bc, $0f1f
    ld a, [bc]
    rlca
    ld c, c
    add [hl]
    ld [hl], b
    nop
    jr nz, jr_043_48d4

jr_043_48d4:
    inc sp
    nop
    ld [hl], $01
    dec d
    inc bc
    ld c, a
    inc bc
    rlca
    inc bc
    ld b, $07
    ld b, h
    rlca
    add l
    rlca
    dec c
    rlca
    inc c
    rrca
    ld [$101f], sp
    ccf
    ld [hl], b
    ccf
    ld h, e
    ld a, a
    ret nz

    ld a, a
    ld b, b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    ld a, a
    ret nz

    rra
    nop
    rra
    ld de, $110e
    ld c, $17
    ld [$001f], sp
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc b
    db $10
    stop
    nop
    dec b
    inc b
    ld bc, $0000
    ld bc, $0102
    db $e3
    ld bc, $80c5
    call c, $fe23
    ld bc, $619f
    db $fc
    inc bc
    ld a, [$fe07]
    rlca
    rst $38
    rrca
    db $fc
    rra
    ld d, h
    dec hl
    ld h, c
    rra
    pop bc
    ld a, $0f
    ldh a, [rIF]
    ldh a, [$3f]
    ret nz

    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $28
    db $10
    xor $11
    ld [hl], l
    adc d
    ld b, b
    cp a
    pop af
    rrca
    ldh [$1f], a
    add b
    ld a, a
    ldh a, [$1f]
    inc c
    di
    inc de
    db $ec
    ld [hl], b
    adc a
    db $fc
    inc bc
    rst $38
    nop
    xor $11
    rst $38
    nop
    ld a, $c1
    db $10
    cpl
    nop

jr_043_4965:
    inc sp
    ld b, c
    ld b, $00
    rlca
    nop
    add e
    add c
    add d
    ld c, b
    ld c, c
    ld d, b
    ld d, c
    ld l, l
    ld l, l
    ld h, $26
    and c
    and c
    ret nc

    ret nc

    and c
    and c
    sub b
    sub b
    ld c, c
    ld c, c
    ld c, $f1
    ld h, c
    sbc [hl]
    jr nz, jr_043_4965

    sub e
    ld a, h
    sbc b
    ld a, a
    jr @+$01

    jp c, $f0fd

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [$ef]
    ld h, b
    rst $38
    ld [hl], b
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
    add b
    rst $38
    add b
    rlca
    ret nc

    ld b, c
    ld c, b
    or h
    ld [hl], $49
    ld e, c
    and [hl]
    inc l
    db $d3
    ld h, h
    add e
    db $e3
    jr jr_043_49be

    ld e, [hl]

jr_043_49be:
    inc bc

jr_043_49bf:
    jr nz, jr_043_49bf

    ld bc, $e03f
    ld l, h
    inc de
    cp h
    ld b, e
    ld [hl], $ff
    sbc a
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    add c
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [$9f], a
    ldh [rIF], a
    ldh [rVBK], a
    ldh [rNR31], a
    ldh [$37], a
    ldh [rNR22], a
    ldh [$6f], a
    ldh a, [$ef]
    ldh a, [$2f]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$5f]
    and b
    ld a, a
    add b
    rst $38
    nop
    ei
    inc b
    inc b
    nop
    ld c, $04
    rlca
    inc b
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    sub b
    db $10
    push de
    dec d
    ld hl, $93a1
    inc de
    rst $10
    rla
    ld l, [hl]
    adc $1f
    db $ec
    xor $16
    ld a, e
    add h
    add c
    rst $38
    rlca
    rst $38
    inc c
    rst $38
    ld [$11ff], sp
    rst $38
    dec bc
    rst $38
    rst $18
    rst $38
    add sp, -$01
    add e
    rst $38
    ld b, $ff
    inc b
    rst $38
    dec sp
    rst $38
    inc e
    rst $38
    add hl, bc
    rst $38
    add hl, de
    rst $38
    rrca
    rst $38
    ret z

    scf
    ret z

    scf
    ldh [$1f], a
    ld b, e
    cp h
    inc bc
    db $fc
    and e
    call c, $f807
    ld [hl], $c9
    sbc e
    rst $38
    rst $30
    rst $38
    and e
    rst $38
    add e
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    nop
    nop
    inc c
    nop
    jr jr_043_4a6c

    db $10
    ld c, $18
    rlca
    inc d
    rrca

jr_043_4a6c:
    add hl, de
    ld b, $3c
    inc bc
    ld hl, $525e
    dec l
    ret z

    ccf
    ld c, h
    or e
    ld d, b
    xor a
    add b
    ld a, a
    db $10
    rst $28
    ld b, b
    cp a
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
    add b
    ld a, a
    db $10
    rst $28
    ld [bc], a
    db $fd
    inc b
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
    add b
    ld a, a
    ld l, b
    rla
    db $f4
    add h
    ld a, a
    rlca
    pop hl
    nop
    inc sp
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    adc l
    add c
    jr c, jr_043_4aea

    add a
    inc b
    db $fd
    inc a
    cp $fe
    cp a
    add b
    jp nz, Jump_000_04c1

    inc bc
    ld [hl], b
    sub e
    ld a, a
    add b
    ld a, a
    add b
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
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    ret nz

    add b
    ret nz

    add b
    ld h, b
    add b
    ldh [$80], a

jr_043_4aea:
    or $9e
    and c
    rst $18
    ret nc

    rst $28
    rst $10
    db $eb
    cp $e7
    rst $30
    rst $28
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
    rst $20
    rst $38
    rst $00
    rst $38
    adc a
    rst $30
    rla
    rst $28
    ld c, a
    or e
    scf
    set 4, c
    sbc a
    pop de
    xor a
    ld b, h
    cp e
    jr nz, @-$1f

    ld [$08f7], sp
    rst $30
    nop
    rst $38
    nop

jr_043_4b1b:
    rst $38
    nop
    rst $38
    ld b, h
    ei
    db $e3
    rst $38
    add e
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    ld b, b
    cp a
    ld d, h
    db $eb
    db $10

jr_043_4b35:
    rst $28
    ld c, h
    cp a
    ld a, h
    sbc a
    jr c, jr_043_4b1b

    jr c, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    ldh a, [$33]
    ld e, b
    cp a
    jr nz, jr_043_4b35

    jr nz, @+$01

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
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    ld [hl], b
    rra
    inc c
    nop
    inc e
    ld [bc], a
    ld d, h
    ld d, c
    ld l, h
    ret nz

    ld a, h
    add b
    ld a, b
    cp c
    ld a, b
    ld hl, sp+$58
    dec de
    inc b
    inc bc
    ld b, h
    add e
    ld c, h
    adc a
    rst $38
    nop
    rst $38
    nop
    ld a, [$f505]
    ld a, [bc]
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
    xor $11
    sbc $21
    cp [hl]
    ld b, c
    sub $e9
    jp nz, $ffff

    ld a, a
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    cp h
    rst $38
    call z, Call_000_08ff
    rst $38
    add b
    rst $38
    sub b
    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    ld [$10ff], sp
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
    ld a, $ff
    ld a, [hl]
    rst $38
    db $e3
    rst $38
    inc d
    rst $28
    add b
    ld a, a
    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    ld bc, $0001
    add b
    jp $e304


    adc [hl]
    ld a, c
    ld a, [bc]
    db $fd
    push bc
    ld a, $0c
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
    inc b
    rst $38
    db $10
    rst $38
    ld d, b
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    ld b, $ff
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
    rst $38
    ret nz

    rst $38
    jr nz, @+$21

    xor a
    and a
    dec c
    nop
    ret nc

    ret nc

    adc a
    adc a
    rst $38
    ld bc, $803f
    ccf
    ret nz

    rrca
    ldh a, [rP1]
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0e
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld c, $1a
    dec de
    ld c, $0e
    inc e
    dec e
    ld e, $1f
    jr nz, jr_043_4ca7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_043_4cb7

    ld a, [hl+]
    ld c, $2b
    inc l
    dec l
    ld l, $2f
    jr nc, jr_043_4cc8

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_043_4cd8

    ld a, [hl-]
    dec sp
    inc a
    dec e
    dec a
    ld a, $3f
    ld b, b

jr_043_4ca7:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld c, $46
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_043_4cb7:
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
    ld h, b

jr_043_4cc8:
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

jr_043_4cd8:
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
    ld a, [hl+]
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
    ld c, $1d
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_043_4d9c

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    dec e
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
    jr nc, @+$33

jr_043_4d9c:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld bc, $0203
    inc bc
    inc bc
    ld b, $03
    nop
    ld b, $07
    ld bc, $0101
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $03
    ld b, $06
    ld b, $07
    ld b, $01
    nop
    ld bc, $0001
    nop
    ld bc, $0200
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0202
    inc bc
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    rlca
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    ld b, $03
    inc bc
    rlca
    ld b, $06
    nop
    rlca
    ld b, $00
    ld bc, $0101
    ld bc, $0303
    ld b, $06
    ld b, $06
    ld b, $07
    nop
    ld b, $07
    ld bc, $0101
    ld bc, $0202
    ld b, $02
    ld b, $06
    ld b, $01
    ld bc, $0100
    rlca
    ld bc, $0101
    ld bc, $0303
    ld [bc], a
    nop
    ld b, $06
    rlca
    ld bc, $0601
    ld b, $06
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $07
    ld bc, $0101
    ld bc, $0007
    rlca
    ld bc, $0101
    ld b, $01
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    rlca
    ld b, $07
    nop
    rlca
    ld bc, $0601
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    ld bc, $0701
    rlca
    rlca
    ld bc, $0101
    ld bc, $0701
    inc b
    inc b
    rlca
    rlca
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $07
    inc b
    rlca
    rlca
    rlca
    inc b
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld hl, $0006
    inc b
    inc b
    rlca
    rlca
    rlca
    inc b
    nop
    rlca
    rlca
    ld bc, $0701
    rlca
    nop
    ld bc, $0703
    rlca
    rlca
    rlca
    inc b
    rlca
    nop
    rlca
    nop
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0706
    nop
    rlca
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    nop
    ld b, $07
    rlca
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld c, $0e
    ld c, $0a
    ld a, [bc]
    add hl, bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a0a], sp
    add hl, bc
    ld a, [bc]
    ld a, [bc]

jr_043_4ec6:
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    dec bc
    ld a, [bc]
    nop
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    add hl, bc
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    ld a, [bc]
    dec bc
    dec bc
    ld a, [bc]
    ld a, [bc]
    push af
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
    ld a, a
    add b
    add b
    add b
    ret nz

    ret nz

    add h
    add b
    ld e, $00
    sub d
    add b
    add d
    add b
    ld de, $0500
    nop
    db $fc
    inc bc
    db $fd
    ld [bc], a
    rst $28
    db $10
    rst $18
    jr nz, jr_043_4ec6

    ld b, d
    rst $38
    nop
    rst $38
    nop
    di
    inc c
    inc e
    nop
    ld b, b
    nop
    ld h, c
    ld b, b
    ld d, b
    nop
    ld [hl], b
    nop
    ld sp, hl
    add b
    cp c
    add c
    and c
    add b
    ret


    add b
    add c
    add b
    ld b, b
    nop
    ld [$5000], sp
    nop
    cp a
    db $10
    ld a, a

jr_043_4f2d:
    nop
    pop af
    add b
    inc hl
    nop
    ld [hl+], a
    nop
    ld sp, $2ac4
    ld sp, hl
    ld [hl], c

jr_043_4f39:
    ld a, c
    ldh [$e1], a
    add b
    add h
    add b
    add b
    db $e4
    ld a, e
    ldh [$7f], a
    ld hl, sp-$69
    rst $30
    jr jr_043_4f39

    rra
    ldh a, [$bf]
    pop af
    ld a, a
    push hl
    ld a, a
    ld d, c
    xor [hl]
    ld h, a
    sbc b
    rst $08
    jr nc, jr_043_4f2d

    add hl, hl
    or [hl]
    ld c, c
    ld b, b
    cp a
    ret nz

    ccf

jr_043_4f5e:
    ld h, b
    sbc a
    jr nz, jr_043_4f5e

    ld a, [de]
    cp $06
    cp $03
    rst $38
    ld bc, $01ff
    rst $38
    jp $f3ff


    rst $38
    ei
    rst $38
    jp z, $fcee

    db $fc
    ld a, h
    db $fd
    cp [hl]
    ld a, a
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    rra
    rst $38
    xor a
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
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    push hl
    rst $38
    and $ff
    adc [hl]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_043_4fd2:
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
    rst $30
    ld [$01fe], sp
    rst $28
    db $10
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, @-$03

    inc b
    di
    inc c
    ld a, [$3d05]
    jp nz, Jump_000_00ff

    cp a
    nop
    cp $00
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    add b
    cpl
    ldh a, [rIF]
    jr nc, @-$0f

    sub d
    cp c
    rst $00
    ld c, c
    ccf
    add hl, sp
    ld l, $23
    inc b
    ld [bc], a
    inc bc
    and d
    ld bc, $0164
    ldh a, [rSB]
    ld h, b
    add hl, de
    add c
    ld h, c
    ld h, d
    di
    ld b, d
    xor $00
    add d
    nop
    ld [bc], a
    db $10
    db $10
    jr nz, jr_043_4fd2

    ld [bc], a
    ld b, $04
    inc c
    inc c
    inc c
    ld [$8008], sp
    and b
    ret nz

    ldh [rP1], a
    ld b, b
    nop
    nop
    ld bc, $0081
    add b
    nop
    jr nz, jr_043_5049

jr_043_5049:
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc bc
    ld [bc], a
    ld b, $04
    rlca
    dec e
    ld e, $65
    ld h, e
    pop bc
    db $eb
    add b
    sub c
    pop bc
    db $e3
    and c
    rst $28
    rst $20
    rst $38
    sbc $ff
    sbc a
    rst $38
    ccf
    rst $38
    ld a, d
    rst $38
    db $f4
    rst $38
    push af
    rst $38
    adc d
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    rst $00
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ld l, d
    rst $38
    dec d
    rst $38
    ld [hl], a
    rst $38
    cp [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    nop
    db $fd
    nop
    push af
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld [$0800], sp
    nop
    nop
    nop
    ld a, [de]
    db $10
    rst $30
    ld a, e
    rst $00
    rst $38
    and b
    ld e, a
    adc b
    ld a, a
    ld b, b
    cp a
    ld h, $df
    ld d, b
    cp a
    or $99
    ld a, [bc]
    push af
    ld b, $f9
    adc l
    ld a, [c]
    ld [bc], a
    db $fd
    ld b, $f9
    adc b
    rst $30
    add b
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    cp $2d
    sbc $3c
    rst $18
    ld sp, $0fde
    cpl
    rra
    ccf
    dec e
    dec e
    rrca
    rra
    ld c, $1e
    ld c, $3f
    inc b
    or [hl]
    inc b
    xor $04
    cp a
    dec bc
    ld e, a
    ccf
    rst $38
    ld l, [hl]
    rst $38
    db $fc
    rst $38
    ld a, [$f7ff]
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    ld a, [$3bff]
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    ld a, [$74ff]
    rst $38
    rst $38
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
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ld e, a
    rst $38
    ld a, [$79ff]
    rst $38
    ld a, a
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
    ld a, a
    nop
    rst $30
    nop
    rst $30
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
    ei
    inc b
    ei
    inc b
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
    reti


    ld h, $23
    nop
    ld b, b
    nop
    nop

jr_043_51c5:
    nop
    ld [$0000], sp
    nop
    add h
    nop
    ld h, $00
    rst $10
    ldh a, [$f9]
    pop af
    ld c, $fb
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld h, b
    sbc a
    ret nz

    ccf
    jr nz, @+$01

    ld b, c
    cp $00
    rst $38
    jr nz, jr_043_51c5

    ld b, b
    cp a
    ld bc, $00fe
    rst $38
    ld bc, $80fe
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $7f2b
    ld a, a
    ld b, [hl]
    ld c, a
    rst $10
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, $fe
    ld a, $7e
    ld a, c
    ld a, c
    ld a, c
    db $fd
    db $fc
    db $fc
    ld [hl], e
    ld [hl], e
    ld l, c
    jp hl


    di
    di
    db $fd
    rst $38
    sbc $ff
    ld e, $ff
    cp e
    rst $38
    rst $28
    db $fc
    sbc a
    ld hl, sp-$51
    ldh a, [rIE]
    ldh [$f5], a
    cp $5a
    cp $bd
    cp $bb
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    pop hl
    rst $38
    and $ff
    cp $ff
    sbc l
    rst $38
    sbc b
    rst $38
    ld a, [$98ff]
    rst $38
    or $ff
    db $db
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ccf
    rst $38
    or l
    rst $38
    ld h, b
    rst $38
    dec [hl]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $20
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    nop
    ld a, c
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
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
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
    ei
    nop
    and e
    nop
    db $e3
    ld [$30b1], sp
    jp nz, $83c8

    db $fd
    ld bc, $40ff
    cp a
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld b, a
    ld sp, hl
    sbc b
    ld h, a
    add hl, bc
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld b, $ff
    inc b
    rst $38
    ld [bc], a
    db $fd
    ld de, $0610
    rla
    ld c, $1f
    ld a, [$ebff]
    rst $38
    and l
    rst $28
    rrca
    ccf
    ld c, a
    rst $28
    rst $38
    rst $38
    sbc $fe
    ld a, [hl]
    cp $7d
    ld a, a
    dec c
    dec c
    ld bc, $0703
    ld b, a
    call z, $7dee
    ld a, a
    ei
    ei
    rst $20
    rst $28
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    add b
    cp $ff
    db $fc
    db $fc
    pop af
    ldh a, [$f4]
    pop af
    ret nc

    add [hl]
    add b
    sub d
    ld h, l
    ld bc, $011d
    jp nz, $a183

    and c
    ldh a, [rSB]
    db $fc
    ld h, e
    or $85

jr_043_532a:
    sbc a
    add b
    ld c, [hl]
    add $27
    ldh [$90], a
    cp $90
    rst $38
    ld [$0cff], sp
    rst $38
    ld a, [hl+]
    rst $38
    di
    db $fd
    ld a, e
    db $fd
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, a
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
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp $ff
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
    add sp, $68
    xor b
    ld a, h
    cp b
    inc h
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld h, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $030f
    rst $38
    ld [bc], a
    ld hl, sp+$00
    ldh [rP1], a
    di
    jr nc, jr_043_532a

    nop
    db $e3
    ld h, b
    ld b, e
    ld b, b
    ld b, e
    ret nz

    add c
    add b
    inc bc
    add b
    inc b
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc c
    dec c
    dec c
    db $10
    ld de, $1711
    inc bc
    rra
    inc c
    rra
    dec b
    rra
    rra
    ld a, a
    scf
    rst $38
    ld c, $ff
    ld l, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    ei
    rst $38
    xor e
    rst $28
    rlca
    scf
    dec bc
    rrca
    ld d, a
    rst $18
    rlca
    ld e, a
    ld c, a
    rst $38
    ld a, [hl]
    rst $38
    ld e, a
    rst $38
    rst $18
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
    sbc a
    rrca
    ld d, b
    inc l
    nop
    add d
    inc b
    ld a, [bc]
    db $10
    ld b, b
    sbc b
    jr jr_043_548a

    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$5d85]
    ld [c], a
    xor a
    ld hl, sp+$15
    rst $38
    ld [bc], a
    rst $38
    ld bc, $501f
    ld e, a
    jr z, jr_043_544f

    db $fc
    inc bc
    ld a, [hl+]
    ret


    inc c
    ldh a, [rTAC]
    db $fc
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    call nc, $eaff
    rst $38
    push bc
    rst $38
    ld a, [c]
    rst $38
    db $ec
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_043_544f:
    rst $38
    rst $18
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
    ei
    rst $38
    inc d
    rst $38
    cp l
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
    rst $38
    nop
    rst $38
    nop

jr_043_548a:
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, h
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, b
    inc b
    ld e, b
    nop
    add hl, de
    ld bc, $e31f
    inc de
    rst $28
    ld e, d
    rst $20
    dec c
    rst $38
    sbc d
    ld a, a
    ld e, a
    cp a
    cp l
    ld a, a
    rst $08
    ccf
    nop
    ld b, d
    ld [bc], a
    ld [bc], a
    ld b, b
    ret nz

    ld b, b
    ld b, b
    nop
    nop
    nop
    ld c, b
    nop
    ld b, b
    inc [hl]
    inc a
    ld a, h
    db $fc
    rst $08
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    cp [hl]
    cp $dc
    call c, $bcbc
    dec a
    db $fd
    ld a, e
    ei
    ld [$e7ea], a
    rst $30
    cp $ff
    xor $fe
    cp c
    cp a
    rra
    ccf
    ccf
    cp a
    ld a, a
    rst $38
    ei
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
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fd
    cp $ff
    db $fc
    ei
    db $fc
    adc c
    cp $8e
    pop af
    rst $38
    rra
    rra
    rra
    rlca
    ld h, [hl]
    ld [$3920], sp
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$5515], a
    xor d
    xor d
    ld d, l
    rst $38
    nop
    cp e
    call nz, $f857
    dec hl
    cp $05
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
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
    ld b, h
    rst $38
    add d
    rst $38
    ld d, h
    rst $38
    ld a, [hl+]
    rst $38
    sub l
    rst $38
    ld [$79ff], a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    and e
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $dd
    rst $38
    rst $18
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
    cp $ff
    cp $ff
    cp [hl]
    rst $38
    inc e
    nop
    inc e
    nop
    jr jr_043_5576

jr_043_5576:
    ld [$a000], sp
    jr nz, @+$22

    jr nz, jr_043_559d

    ld h, b
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    ld d, b
    ld h, b
    db $10
    ld h, b
    ld d, c
    ld h, b
    ld b, c
    ld [hl], c
    ld b, e
    ld [hl], c
    inc h
    db $db
    ldh [$1f], a
    ld a, a
    rst $38
    ld a, e
    rst $38
    ld [hl-], a
    rst $38
    ld l, l
    rst $38
    and $ff
    ld l, $ff
    ld a, a

jr_043_559d:
    rst $38
    rst $38
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
    ld b, $f9
    ld b, [hl]
    cp c
    nop
    cp $00
    nop
    ld bc, $0707
    rlca
    inc bc
    rlca
    dec b
    rlca
    add hl, hl
    ccf
    ld a, e
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $10
    rst $10
    ret


    call $c9c1
    ld c, c
    rst $08
    ld a, [bc]
    rrca
    ld c, d
    ld c, e
    ld a, [bc]
    ccf
    and c
    sbc a
    ld c, c
    cp a
    ld c, e
    cp a
    or e
    ld c, a
    ld l, l
    rst $18
    or $df
    rst $30
    rst $08
    cp a
    db $e4
    adc a
    ldh a, [$9f]
    ldh [$97], a
    ld hl, sp-$55
    call c, $e3fc
    rst $28
    pop de
    cp a
    jp $c3be


    dec l
    rst $30
    rst $28
    rra
    ld sp, hl
    rrca
    push af
    rra
    db $eb
    ccf
    pop hl
    ccf
    ld d, c
    rst $38
    and e
    cp $93
    cp $46
    db $fd
    add [hl]
    db $fd
    adc l
    dec sp
    call z, $f60b
    rlca
    ld sp, hl
    ld de, $42a2
    ld h, b
    add b
    or h
    ld b, b
    ld a, [hl]
    add b
    cp l
    ld b, c
    ld d, l
    xor c
    xor $10
    db $fd
    ld [bc], a
    cp d
    add l
    dec l
    and d
    inc bc
    ret nz

    ld de, $00d0
    ld hl, sp+$02
    cp $00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    and d
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$b5ff], a
    rst $38
    cp $ff
    cp [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    ld a, [c]
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
    db $db
    rst $38
    ei
    rst $38
    ei
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
    ld [bc], a
    nop
    ld b, b
    ld b, c
    inc l
    add e
    nop
    add [hl]
    nop
    adc l
    nop
    ld c, $10
    dec bc
    jr nz, jr_043_5697

    db $10
    rrca
    add b
    dec c
    ld b, b
    ld d, e
    ldh [rIE], a
    add b
    adc a
    nop
    rra
    nop
    ccf
    nop

jr_043_5697:
    ccf
    nop
    ld a, a
    nop
    ld a, [hl]
    ld bc, $057d
    rst $38
    dec b
    ld a, a
    ld b, l
    ld [hl], a
    dec c
    rrca
    dec bc
    rra
    rra
    rra
    ld c, $1f
    inc b
    rra
    ld bc, $b91f
    cp a
    cp b
    cp h
    and l
    db $fd
    ld h, a
    rst $30
    xor $ef
    call $f5ed
    rst $30
    ld hl, $63f1
    db $e3
    rst $30
    rst $38
    ei
    rst $38
    di
    rst $38
    db $fd
    ei
    ld e, d
    rst $38
    ld a, h
    rst $38
    adc $ff
    ld e, a
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    ld h, l
    rst $18
    db $fc
    add e
    rst $38
    nop
    ei
    inc b
    ld a, a
    adc h
    inc de
    rst $38
    db $ec
    ccf
    pop hl

jr_043_56e5:
    ccf
    db $d3
    ld a, a
    and a
    db $fc
    add [hl]
    db $fd
    ld c, l
    ei
    inc c
    ei
    sbc d
    rst $30
    inc [hl]
    rst $28
    jr nc, jr_043_56e5

    ld l, b
    rst $18
    ld h, b
    rst $18
    ret nc

    cp a

jr_043_56fc:
    ret nz

    rst $38
    or b
    ld a, a
    ld c, b
    rst $38
    ld [$8cff], sp
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    push bc
    rst $38
    di
    ccf
    rst $38
    rra
    ld a, a
    ld b, a
    rst $38
    add hl, de
    rst $18
    adc d
    ld [hl], a
    ld d, c
    and a
    inc b
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, [hl]
    ld a, [hl]
    ld a, h
    dec e
    jr @+$0a

    add sp, $07
    ld [hl], a
    add [hl]
    dec e
    pop hl
    ld [bc], a
    ldh a, [rSB]
    ld hl, sp-$80
    db $fc
    ld bc, $80fe
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    and d
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    push af
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [c]

jr_043_5755:
    rst $38
    cp d
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call c, $feff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    ld sp, hl
    rst $38
    nop
    jr c, jr_043_56fc

    ld [hl], e
    adc b
    ld [hl], e
    nop
    rst $20
    db $10
    and a
    nop
    rst $30
    jr nz, jr_043_5755

    ld b, b
    cp a
    nop
    rst $38
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
    jr nz, @+$01

    nop
    ccf
    ldh [rIE], a
    ret nz

    cp $e0
    rst $38
    ldh [rIE], a
    add e
    db $fc
    add a
    pop af
    inc b
    ldh a, [$0a]
    add $0b
    ret nz

    inc c
    add l
    ld b, c
    pop bc
    add l
    rst $00
    ld c, $0e
    rst $10
    db $d3
    jp nc, $d5d3

    rst $18
    add h
    adc h
    dec hl
    dec hl
    cp [hl]
    cp h
    rla
    rla
    dec e
    dec a
    xor b
    ld l, h
    ld h, [hl]
    ld h, [hl]
    ld [c], a
    add $f6
    rrca
    push hl
    ld a, a
    ld a, [$7bed]
    push hl
    db $e3
    rst $38
    inc hl
    rst $38
    ld b, l
    rst $38
    db $fd
    rst $38
    call nz, $c4ff
    rst $38
    or [hl]
    ld a, a
    rst $20
    rra

jr_043_57de:
    ld [$6f17], a
    db $10
    cp $e0
    jr jr_043_57de

    daa
    rst $38
    ret z

    rst $38
    pop af
    ccf
    ld a, $cf
    ld c, a
    pop af
    ld de, $02fe
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, d
    db $fd
    call nz, Call_000_00ff
    rst $38
    nop
    rst $38
    add b
    db $fd
    add b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    pop de
    rst $38
    dec h
    ccf
    or e
    cp [hl]
    ei
    ld c, a
    cp $23
    rst $38
    dec e
    ld a, a
    ld [hl+], a
    rst $18
    ld d, e
    ld e, a
    inc c
    ld [hl], e
    db $10
    ld [$9188], a
    ld bc, $2707
    cp a
    ccf
    ld a, a
    ccf
    ccf
    ld e, [hl]
    rra
    xor [hl]
    rrca
    call nz, Call_000_2007
    rla
    add a
    rrca
    rst $10
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    ld c, [hl]
    rst $38
    adc h
    cp $4e
    db $fc
    ld l, $fc
    ret z

    db $fc
    ld l, a
    ld hl, sp-$05
    db $fc
    db $fc
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    inc b
    ld e, a
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
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc b
    db $fd
    inc b
    db $fd
    dec c
    rst $38
    nop
    cp $15
    cp $11
    cp $37
    call c, $ac0f
    ld c, h
    or e
    jp z, $9d39

    ld a, e
    inc d
    ld l, a
    and $6a
    sbc e
    rst $30
    sbc $b1
    xor e
    db $10
    push hl
    ld a, [de]
    or b
    ld c, a
    add hl, de
    rst $20
    ld b, d
    db $fd
    ld [$24ff], sp
    inc l
    set 1, d
    db $e4
    ret nz

    push bc
    pop bc
    ld c, l
    push bc
    inc bc
    inc bc
    inc de
    inc de
    ld d, d
    ld d, b
    ld h, c
    ld b, e
    ld d, a
    rla
    ld b, $06
    push hl
    dec h
    db $e4
    inc h
    ld a, [$ff7a]
    ld h, [hl]
    rst $30
    rst $08
    cp a
    rst $38
    ld a, a
    rst $38
    rst $28
    pop af
    adc a
    ldh a, [$72]
    adc a
    sub a
    add sp, -$4d
    db $ec
    rst $28
    db $fc
    push hl
    ld a, a
    cp a
    ld c, a
    reti


    rlca
    ld d, h
    add e
    push hl
    ld [c], a
    dec e
    ld a, [$ff27]
    adc b
    rst $38
    pop af
    ld a, a
    ld a, h
    adc a
    adc a
    di
    inc de
    db $fc
    inc b
    rst $38
    ld bc, $05ff
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    ld b, $f7
    adc d
    ld h, e
    inc e
    rst $20
    sbc h
    rst $10
    cp b
    ld b, l
    dec a
    push bc
    ld a, $b0
    sbc a
    jp nc, $f967

    ld h, [hl]
    db $fd
    jp $c0fd


    rst $38
    ld [c], a
    rst $38
    sbc l
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    sub a
    rst $38
    rlca
    rst $38
    sub a
    rst $38
    adc $3f
    xor $3f
    sbc $7c
    call c, $bc7c
    db $fc
    cp b
    ld hl, sp-$48
    ld hl, sp+$74
    ld hl, sp+$7b
    db $f4
    ld l, l
    db $e3
    pop hl
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    pop de
    ret nz

    reti


    add b
    cp a
    ret nz

    xor [hl]
    ld [hl], c
    rst $28
    dec e
    adc e
    rlca
    ld h, l
    inc bc
    ld bc, $bf03
    inc bc
    cp e
    rlca
    rst $38
    rlca
    or a
    ld c, a
    sbc a
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $20
    ld d, b
    pop hl
    pop af
    ldh [$e3], a
    ldh a, [$e9]
    ldh a, [$e1]
    ld hl, sp-$26
    pop hl
    rst $28
    ret nc

    rst $00
    add sp, $63
    sbc h
    sbc a
    ld [hl], b
    jp nz, Jump_000_3a75

    rlca
    ld a, [bc]
    dec b
    sub l
    dec b
    jp z, $e903

    rla
    jp nc, Jump_000_123f

    rst $38
    sbc h
    rst $20
    add $fd
    ld b, l
    cp a
    db $ed
    ld [de], a
    sub a
    ld b, b
    ld l, c
    db $10
    sub d
    ld bc, $409d
    rlca
    db $fc
    ld b, d
    cp a
    ld [bc], a
    rst $38
    ld b, h
    rst $38
    ld c, b
    rst $38
    dec d
    dec d
    sub h
    sub h
    ld b, e
    jp nz, $ca8a

    ld c, l
    rst $08
    inc bc
    ld b, e
    pop de
    pop de
    pop de
    pop de
    adc b
    xor b
    jr jr_043_59cc

    add $c6
    ld e, d
    ld e, [hl]
    inc c
    inc c
    sbc [hl]
    sbc [hl]

jr_043_59cc:
    sub [hl]
    cp $e8
    db $fd
    ld h, c
    rst $38
    db $e4
    inc sp
    xor e
    db $10
    ld e, c
    or b
    rst $10
    cp b
    ld [hl], c
    adc [hl]
    ld de, $30ee
    rst $18
    ld d, b
    rst $38
    xor e
    rst $38
    rst $18
    rst $38
    sbc h
    ld a, a
    ld c, l
    ccf

jr_043_59ea:
    ld a, d
    rlca
    add $09
    pop de
    ret z

    jr c, jr_043_59ea

    ld b, [hl]
    cp $09
    rst $38
    jp nz, $c1ff

    rst $38
    add l
    rst $38
    add e
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rla
    rst $38
    cpl
    rst $38
    ld c, $ff
    ld l, $fe
    ld e, [hl]
    db $fc
    ld e, h
    db $fc
    inc a
    ld hl, sp-$44
    ld hl, sp+$3e
    db $fc
    ld [hl], d
    pop af
    ld [hl], c
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$d8], a
    ldh [$ea], a
    call c, $878a
    add e
    add c
    ld bc, $0301
    ld bc, $0301
    ld e, a
    add e
    ret c

    ld h, a
    ccf
    rra
    rla
    rrca
    rla
    rrca
    dec e
    ld c, $1a
    rrca
    ld b, e
    rra
    dec a
    rra
    ld a, a
    sbc a
    ld a, a
    rst $38
    ld a, a
    ccf
    ccf
    ld a, a
    rst $38
    ld a, a
    ld a, c
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $28
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
    db $ed
    rst $38
    ret c

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
    cp l
    jp $831f


    inc de
    rst $00
    ld a, [bc]
    ld [hl], a
    nop
    ld [bc], a
    ld [bc], a
    rlca
    nop
    rra
    ld [hl], h
    ld a, [hl]
    rst $20
    inc d
    adc e
    db $76
    di
    inc l
    inc de
    ld l, b
    dec e
    ret nz

    ld a, [bc]
    db $fd
    ld b, l
    call c, $f006
    di
    adc h
    ld [$d1d5], a
    ld l, a
    nop
    rst $38
    pop af
    ld c, $50
    xor a
    db $e4
    sbc e
    and b
    rra
    ret c

    db $10
    adc h
    ld [$3aba], sp
    ld a, [de]
    ld a, [hl-]
    sbc b
    adc b
    ld [c], a
    jp $1131


    add a
    rlca
    nop
    nop
    inc a
    inc a
    ld hl, $4d61
    ld e, c
    nop
    ld [$8081], sp
    ld [bc], a
    ld [bc], a
    ld b, b
    ld b, d
    ld h, d
    ld c, b
    ld h, h
    ld h, b
    ld h, c
    ld h, e
    sub b
    add c
    add b
    add b
    jr z, jr_043_5b34

    ld e, b
    ld e, b
    add e
    jp $ff07


    add d
    ld a, a
    sub c
    ld a, a
    add hl, sp
    rst $38

jr_043_5ad8:
    ld a, [hl]
    rst $18
    db $76
    adc l
    ld a, d
    add h
    push af
    cp $fe
    cp $19
    add hl, de
    sbc l
    db $dd
    ld a, $be
    push af
    push af
    ld a, [c]
    cp $f5
    db $fd
    db $ec
    inc a
    inc a
    rlca
    rlca
    jr nz, jr_043_5ad8

    add b
    add sp, -$40
    jp nz, $e1c0

    ret nz

    and h
    sbc c
    sbc e
    add a
    ld bc, $0003
    inc bc
    inc b
    inc bc
    ld b, l
    add e
    sbc a
    ld h, a
    dec sp
    rrca
    inc [hl]
    dec bc
    dec a
    dec bc
    add hl, de
    ld b, $08
    rra
    ld h, b
    sbc a
    or d
    ld l, a
    dec bc
    scf
    ld c, a
    inc sp
    dec bc
    ld a, a
    or $7f
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    reti


    rst $38

jr_043_5b34:
    ld e, c
    rst $38
    ld e, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    rst $30
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38

jr_043_5b55:
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
    inc b
    rst $18
    ld bc, $4fe4
    add sp, $0b
    inc l
    inc bc
    inc a
    ld bc, $8002
    inc de
    nop
    add $20
    call z, $e001
    nop
    add c
    nop
    set 6, l
    ld c, $28
    rst $10
    jr nc, jr_043_5b55

    rst $30
    adc d
    sbc b
    rlca
    dec l
    sub d
    ld b, [hl]
    cp c
    sub [hl]
    ld sp, hl
    ld [hl], e
    add $8c
    rst $30
    add e
    ld a, h
    pop de
    ld l, [hl]
    inc a
    db $e3
    inc e
    db $e3
    ccf
    ret nz

    xor a
    ld d, h
    push de
    dec d
    ld bc, $0303
    inc bc
    ld a, [bc]
    add d
    add [hl]
    adc [hl]
    jr jr_043_5bc5

    sub b
    db $10
    ld bc, $6401
    ld h, h
    db $e3
    db $e3
    and d
    and d
    ld a, [c]
    ld a, [c]
    ldh a, [$f0]
    daa
    inc [hl]
    db $e4
    db $f4
    ret c

    ldh a, [$a1]
    pop af
    sub a
    or a
    inc de

jr_043_5bc5:
    inc de

jr_043_5bc6:
    inc sp
    or d
    ld a, l
    inc a
    db $eb
    inc a
    cp e
    ld a, h
    ld e, a
    ld l, b
    sbc h
    set 7, a
    add b
    inc e
    db $e3
    cp l
    ld a, [c]
    call z, Call_043_7eb3
    jp $c7bb


    add e
    db $fc
    db $10
    ld [$e810], a
    nop
    ld [hl], b
    nop
    ld [hl], b
    ld e, b
    and b
    adc h
    ld [hl], d
    ret z

    dec [hl]
    jr nz, jr_043_5bc6

    jp z, $9cf4

    pop hl
    cp b
    call nz, $807f
    xor c
    ld a, [hl]
    sub [hl]
    ld a, [hl]
    ld a, [c]
    rlca
    di
    rra
    db $db
    ccf
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $dd
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    sbc l
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    ei
    rst $38
    and $ff
    rst $20
    rst $38
    or $ff
    db $fc
    rst $38
    cp $ff
    sbc $ff
    call c, $d9ff
    rst $38
    ei
    rst $38
    ld sp, $63ff
    rst $38
    ld h, l
    rst $38
    push bc
    rst $38
    adc e
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    cp $3e
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    cp $e7
    db $fc
    ld a, [c]
    ld hl, sp-$0c
    ld hl, sp-$10
    ld hl, sp-$04
    db $fd
    db $fc
    db $fc
    ld a, b
    db $fc

jr_043_5c50:
    cp b
    ld b, a
    ldh a, [rIF]
    ldh a, [$0e]
    ldh a, [$0e]
    ldh [rNR33], a
    ldh [$1f], a
    ret nz

    dec a
    ldh [rNR31], a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    adc [hl]
    pop af
    ld a, b
    add a
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld [bc], a
    ld [bc], a
    ld c, $0e
    inc a
    ld a, $f3
    rst $38
    nop
    rst $38
    ld b, $ff

jr_043_5c7c:
    inc b
    rst $38
    ld e, $ff
    xor h
    ld c, $80
    ld a, [hl]
    jr c, jr_043_5c7c

    jr jr_043_5d00

    sub b
    nop
    and c
    ld hl, $43c1
    nop
    ld b, c
    ld a, [de]
    jr c, jr_043_5c50

    inc a
    ld [hl], $32
    inc c

jr_043_5c97:
    ld [$2262], sp
    ld h, b
    jr nz, jr_043_5caf

    ld a, [de]
    jp nc, $c832

    inc e
    ld a, $08
    ld e, h
    ld b, b
    ld l, l
    ld h, l
    ld b, e
    ld bc, $b8b7
    sub a
    and b
    db $10

jr_043_5caf:
    inc bc
    dec hl
    xor [hl]
    dec a
    xor e
    sbc c
    adc d
    cp a
    cp $de
    sbc $53
    ld c, a
    ld a, e
    ld b, e
    ld l, e
    ld d, $6a
    sub h
    rst $38
    nop
    sbc $21
    cp b
    ld b, a
    rst $28
    rra
    ld c, $ff
    cp a
    ld a, a
    cp a
    ld a, a
    db $fc
    cp $45
    cp $6d
    xor [hl]
    ld a, $f8
    ld hl, sp-$02
    ld e, l
    cp a
    xor [hl]
    ld c, $a4
    inc a
    inc bc
    inc b
    inc b
    inc bc
    inc b
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    rra

jr_043_5cee:
    nop
    rra
    ld bc, $4300
    nop
    ld b, e
    nop
    add [hl]
    ld bc, $0187
    call nz, $0103
    inc bc
    adc c
    add d

jr_043_5d00:
    add d
    ld [hl], h
    ld b, h
    cp d
    db $ed
    db $10
    jp hl


    ld [de], a
    db $e3
    jr jr_043_5cee

    db $10
    jp $c72c


    jr jr_043_5c97

    rst $38
    and [hl]
    rst $18
    adc [hl]
    rst $30
    adc a
    or $41
    cp $73
    db $fc
    rst $30
    ld hl, sp-$19
    ld hl, sp-$1d
    db $fc
    rst $20
    ld hl, sp-$15
    db $f4
    db $e3
    db $fc
    rst $08
    ldh a, [$cf]
    ldh a, [$9f]
    ldh [$9f], a
    ldh [$fc], a
    ret nz

    ld a, c
    add b
    ei
    nop

jr_043_5d36:
    rst $38
    nop
    ei
    ld b, d
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    nop
    di
    nop
    di
    ld b, d
    di
    ret nz

    rst $30
    add b
    ei
    nop
    ei
    ld bc, $32f7
    cp $12

jr_043_5d52:
    or $04
    rst $20
    jr nz, jr_043_5d52

    nop
    rst $38
    nop
    rst $30
    nop
    ld a, [$fa00]
    nop
    ld a, a
    rst $38
    cp a
    ld a, a
    ld e, a
    cp a
    ccf
    rst $38
    ld a, e
    cp a
    reti


    ld sp, $7099
    adc b
    ld a, b
    adc a
    ld a, b
    srl h
    rst $18
    inc a
    dec de
    db $fc
    ret nz

    jp hl


    dec b
    dec b
    dec b
    dec d
    jr jr_043_5d99

    rst $00
    inc bc
    ld h, d
    ld b, d
    adc e
    ld [bc], a
    sub c
    db $10
    ld b, c
    ld b, b
    ld [$020a], sp
    nop
    adc b
    add h
    ld [bc], a
    ld hl, sp+$20
    adc $10
    ld [$9d20], a
    add b

jr_043_5d99:
    ld a, e
    ld b, b
    cp b
    jr nz, jr_043_5d36

    nop
    ld b, a
    ld a, l
    add hl, bc
    ld [hl], c
    add hl, bc
    inc e
    ld hl, $03bc
    db $fc
    inc bc
    call z, $f80f
    rrca
    dec [hl]
    add a
    nop
    ld d, d
    nop
    ld a, e
    nop
    ld sp, hl
    nop
    sbc $00
    dec d
    nop
    scf
    nop
    cpl
    nop
    ccf
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
    adc a
    ld a, a
    ld l, a
    sbc a
    sbc a
    ld a, a
    sbc a
    ld a, a
    ld a, a
    cp a
    ccf
    rst $38
    dec sp
    rst $38
    ld a, a
    rst $38
    ld a, e
    add h
    ld l, a
    sub b
    ld e, a
    and b
    cp h
    ld b, e
    ld a, d
    add a
    ld [hl], d
    adc a
    ld h, [hl]
    sbc a
    db $ed
    ld e, $fd
    ld a, $bd
    ld a, [hl]
    ld a, l
    cp $7b
    db $fc
    ld [hl], d
    db $fd
    ld hl, sp-$01
    sbc d
    db $fd
    rst $30
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ret nz

    add b
    ret nz

    nop
    ld bc, $8100
    nop
    or a
    ld de, $20fe
    ld e, [hl]
    ld [$00c8], sp
    add b
    nop
    add c
    nop
    ld [bc], a
    nop
    inc b
    nop
    nop

Jump_043_5e21:
    nop
    jr nc, jr_043_5e24

jr_043_5e24:
    jr z, jr_043_5e26

jr_043_5e26:
    ld b, b
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    ld [bc], a
    add [hl]
    nop
    inc e
    nop
    ld e, l
    nop
    db $eb
    ld b, b
    ei
    ld b, b
    ei
    ld b, b
    db $fd
    db $10
    db $fc
    ld b, b
    db $d3
    ld b, b
    rst $10
    ld [bc], a
    rst $08
    ld [bc], a
    rst $08
    nop
    push hl
    nop
    pop hl
    ld b, b
    jp $8300


    nop
    cp $01
    ld e, [hl]
    and c
    ld d, a
    xor b
    rst $18
    jr nz, @+$01

    nop
    di
    inc c
    db $d3
    inc l
    dec a
    jp nz, Jump_000_00ff

    rst $38
    nop
    rst $38
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
    cp a
    ld a, a
    rst $18
    ccf
    rst $38
    rra
    add [hl]
    ld h, a
    or $f7
    or $ff
    db $f4
    rst $30
    inc b
    rrca
    ld a, l
    ld c, $19
    ld c, $03
    inc c
    inc hl
    inc e
    ld [hl-], a
    inc e
    db $10
    sbc h
    ld b, h
    ld a, b
    ld b, b
    sbc c
    ld b, [hl]
    or c
    call nz, $cc31
    ld [hl-], a
    adc b
    ld h, h
    add b
    ld h, h
    nop
    add sp, $00
    ld hl, sp+$50
    sub b

jr_043_5ea0:
    ret nc

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp $c0
    cp $80
    db $fc
    add b
    db $fc
    nop
    ld hl, sp+$03
    rst $38
    inc bc
    rst $38
    rla
    rst $28
    rla
    rst $28
    ld e, a
    xor a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld e, a
    cp a
    ccf
    ret nz

    ld a, a
    add b

jr_043_5ec4:
    rst $38
    nop

jr_043_5ec6:
    rst $28
    db $10
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    xor $11
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $fb
    inc b
    ld a, e
    add h
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
    rst $08
    jr nc, jr_043_5ec4

    jr nc, jr_043_5ec6

    jr nc, @+$01

    nop
    rst $38
    nop

jr_043_5efc:
    rst $38
    nop
    rst $18
    jr nz, jr_043_5ea0

    ld h, b
    ccf
    ret nz

    ccf
    ret nz

    cp a

jr_043_5f07:
    ld b, b

jr_043_5f08:
    and a
    ld e, b
    ld l, a
    sub b
    ei
    inc b
    scf
    ret z

    or $09
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    cp $01
    cp $01
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld [hl], e
    adc h
    sbc c
    nop
    ld b, b
    nop
    add b
    nop
    ld [hl-], a
    nop
    sub $00
    sbc h
    nop
    db $e4
    nop
    ldh a, [$80]
    ldh a, [rP1]
    ld hl, sp+$70
    ld sp, hl
    ld b, b
    db $fc
    add b
    ld hl, sp-$80
    ldh a, [$c0]
    db $e4
    nop
    ld a, h
    nop
    daa
    ret c

    cpl
    ret nc

    dec hl
    call nc, $d827
    ld de, $39ee
    add $b3
    ld c, h
    ldh a, [rIF]
    di
    ld hl, sp-$1d
    ld hl, sp-$1d

jr_043_5f65:
    ld hl, sp-$19
    ldh a, [$ef]
    ldh a, [$cf]
    ldh a, [$8f]
    ldh [$8e], a
    ret nz

    sbc [hl]
    pop bc
    inc e
    pop bc
    ld e, $c2
    jr c, jr_043_5efc

    inc a
    add h
    jr nc, jr_043_5f08

    jr z, @+$0a

    jr nz, jr_043_5f88

    ldh a, [rP1]
    ret nc

    jr nz, jr_043_5f65

    jr nz, jr_043_5f07

    ld b, b

jr_043_5f88:
    ldh [rLCDC], a
    ld b, c
    add b
    ld b, c
    add b
    ld b, e
    ld b, b
    db $e3
    ld a, h
    rst $08
    ld a, b
    add a
    ld hl, sp-$61
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$7f], a
    ret nz

    ld a, $c0
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_043_5fac:
    cp $00
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

jr_043_5fc4:
    rst $38
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
    rst $38
    nop
    rst $18
    jr nz, jr_043_5fc4

    ld [de], a
    db $eb
    inc d
    rst $20
    jr jr_043_5fac

    jr nc, @+$01

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
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    nop
    nop
    jr nz, jr_043_5ff4

jr_043_5ff4:
    jr nz, jr_043_5ff6

jr_043_5ff6:
    ld e, h
    nop
    jr nc, jr_043_5ffa

jr_043_5ffa:
    jr nc, jr_043_5ffc

jr_043_5ffc:
    ldh [rP1], a
    add b
    add b
    and b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    add b
    nop
    add b
    nop
    call z, $dc80
    nop
    stop
    rst $38
    nop
    cp $01
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
    db $fd
    ld [bc], a
    rst $38

jr_043_6025:
    nop
    sbc a
    ld h, b
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
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $28
    db $10
    sbc a
    ld h, b
    cp a
    ld b, b
    add hl, sp
    add $7f
    add b
    rst $38
    nop
    rst $08
    jr nc, jr_043_6025

    inc hl
    db $fc
    inc bc
    add hl, sp
    add $39
    add $e6
    rst $38
    adc [hl]
    rst $38
    sub d
    rst $38
    or h
    rst $38
    xor b
    rst $38
    ld [hl], c
    rst $38
    ld b, e
    rst $38
    rst $00
    rst $38
    db $eb
    ld [hl], h
    call nz, $c478
    ld hl, sp-$54
    ret nc

    ld [$18f0], sp
    ldh [rHDMA1], a
    and b
    ld bc, $b7e0
    ld b, b
    ld h, $c0
    dec e
    add b
    adc h
    nop

jr_043_6078:
    cp c
    nop
    ld a, c
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $28
    nop
    rst $18
    nop
    rst $10
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $30
    ld [$50af], sp
    db $db
    jr nz, jr_043_6078

    jr nz, jr_043_611a

    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
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
    cp $00
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
    ld bc, $0b00
    ld bc, $0013
    stop
    jr nz, jr_043_60e6

jr_043_60e6:
    jr nz, jr_043_60e8

jr_043_60e8:
    ld bc, $1300
    nop
    inc de
    ld [bc], a
    ld [hl], $02
    db $76
    jr nz, jr_043_6153

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
    rst $38
    nop

jr_043_6102:
    cp $01

jr_043_6104:
    cp $01
    rst $38
    nop
    rst $38
    nop
    xor $10
    rst $20
    jr @-$2f

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$08f7], sp

jr_043_611a:
    rst $38
    nop
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    di
    inc c
    db $e3
    inc e
    rst $20
    jr jr_043_611a

    db $10
    rst $28
    db $10
    rst $28
    db $10
    stop
    jr nc, jr_043_6134

jr_043_6134:
    jr nc, jr_043_6136

jr_043_6136:
    ldh a, [rNR41]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    jr c, jr_043_6102

    jr c, jr_043_6104

    ld a, b
    add b
    ld a, c
    add b
    push de
    nop
    ei
    nop
    inc sp
    nop
    ld [hl], a
    nop
    ld a, e
    nop
    ld a, a

jr_043_6153:
    nop
    dec sp
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    or $00
    rst $20
    nop
    cp $00
    db $fc
    nop
    ld l, c
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ei
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
    rst $38
    nop
    rst $30
    ld [$00ff], sp
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
    swap h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld b, b
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
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    jr nz, jr_043_61c4

jr_043_61c4:
    nop
    nop
    nop
    nop
    ld b, $00
    adc h
    add b
    adc b
    add b
    ld de, $fc00
    inc bc
    ld sp, hl
    ld b, $fb
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    ld [bc], a
    rrca
    inc b
    ld b, $00
    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    rst $38
    nop
    rst $30
    ld [$0010], sp
    nop
    nop
    nop
    nop
    inc bc
    nop
    inc bc

jr_043_6209:
    nop
    inc bc

jr_043_620b:
    nop
    rst $00
    ld bc, $01c3
    rst $00
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    ld [$080f], sp
    sbc a
    nop
    rst $00
    nop
    jr jr_043_6209

    jr jr_043_620b

    db $10
    rst $28
    ld [hl], b
    adc a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
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
    jr jr_043_6273

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_043_6283

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_043_6293

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_043_62a3

    ld [hl-], a

jr_043_6273:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $33
    scf
    jr c, jr_043_62b4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_043_6283:
    inc sp
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    inc sp
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a

jr_043_6293:
    inc sp
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

jr_043_62a3:
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

jr_043_62b4:
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
    inc sp
    inc sp
    ld a, [de]
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    inc sp
    inc sp
    xor e
    xor h
    inc sp
    inc sp
    sub h
    xor l
    xor [hl]
    xor a
    or b
    and [hl]
    or c
    or d
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    add hl, sp
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

    sbc e
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
    ld bc, $022b
    inc sp
    inc bc
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
    inc sp
    dec d
    add hl, sp
    inc sp
    ld d, $17
    jr jr_043_6387

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
    dec hl
    ld bc, $0601
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a

jr_043_6387:
    ld bc, $0302
    inc bc
    ld bc, $0303
    ld bc, $0103
    ld bc, $0702
    nop
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0202
    ld bc, $0606
    ld b, $01
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0606
    ld b, $01
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld bc, $0606
    ld b, $01
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0602
    ld b, $03
    ld b, $06
    ld b, $01
    ld bc, $0201
    ld [bc], a
    nop
    rlca
    nop
    ld bc, $0102
    ld bc, $0603
    ld b, $06
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld b, $00
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
    ld [bc], a
    inc bc
    inc bc
    ld b, $06
    ld b, $01
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld b, $03
    ld [bc], a
    ld [bc], a
    ld bc, $0603
    ld b, $01
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
    ld hl, $0106
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0106
    ld [bc], a
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $03
    ld b, $06
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $06
    ld b, $06
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    inc bc
    ld b, $06
    ld b, $06
    ld b, $0e
    dec bc
    ld bc, $0009
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    ld c, $0e
    dec bc
    ld c, $0e
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    ld hl, $0900
    ld c, $0e
    ld c, $0e
    ld c, $09
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    cp $00

jr_043_64c2:
    cp a
    nop

jr_043_64c4:
    adc a
    nop
    rra
    nop
    cpl
    nop
    ld a, a

jr_043_64cb:
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $28
    nop
    cp a
    nop
    xor $00
    rst $38
    nop
    db $eb
    inc d
    db $d3
    inc [hl]
    rst $30
    jr nc, jr_043_64c4

    jr c, jr_043_64c2

    inc a
    db $db
    jr c, jr_043_64cb

    rlca
    ld hl, sp+$04
    ld hl, sp+$00
    rlca
    inc c
    rlca
    inc c
    dec b
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    ld a, $5f
    ld c, $9f

Call_043_6500:
    ld c, $0f
    dec c
    rrca

jr_043_6504:
    inc c
    inc c
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a

jr_043_6511:
    nop
    rst $18
    jr nz, jr_043_6504

    db $10
    ld a, a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $18
    nop
    cp $00
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, a
    add b

jr_043_652e:
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $ed
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00

jr_043_6542:
    rst $38
    nop
    rst $20
    jr jr_043_6542

    inc b
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_043_652e

    jr nz, jr_043_6551

jr_043_6551:
    nop
    jr nz, jr_043_6574

    nop
    nop
    jr nz, jr_043_6578

    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    and b
    ld h, b
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    jr nz, jr_043_658e

    nop
    nop
    rst $38
    nop
    ld hl, sp+$07

jr_043_6574:
    ldh a, [rIF]
    rst $38
    nop

jr_043_6578:
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
    ret nz

    nop
    add b
    nop
    ld b, b
    nop

jr_043_658e:
    or b
    jr nc, jr_043_6511

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
    stop
    nop
    nop
    nop
    rst $28
    db $10
    rst $38
    nop
    db $ed
    ld [de], a
    rst $38
    nop
    rst $28
    db $10
    di
    inc c
    rst $30
    ld [$08f7], sp
    dec bc
    dec bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld h, $26
    add a
    rlca
    xor a
    cpl
    sbc a
    rra
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    and b
    nop
    ldh [rP1], a
    db $ec
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    db $fd
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec [hl]
    jp z, $ff00

    ld e, d
    cp $9c
    ld e, [hl]
    rla
    ldh [$83], a
    ld a, h
    inc de
    add sp, $2f
    db $ec
    daa
    db $f4
    daa
    rst $18
    rst $38
    ld hl, sp-$09
    ldh a, [$f7]
    ld hl, sp-$19
    ld hl, sp-$0d
    db $fc
    db $f4
    ei
    ldh a, [$fe]
    pop af
    rst $38
    pop af
    ld c, $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    sbc $00
    rst $18
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ld a, e
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
    di
    inc c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    stop
    nop
    ld b, b
    ld b, b
    ldh [$e0], a
    ld h, b
    ld h, b
    nop
    db $10

jr_043_667a:
    jr @+$1a

    nop
    nop

jr_043_667e:
    nop
    nop
    rst $38
    nop
    rst $30
    ld [$20df], sp
    sbc a
    ld h, b
    rst $08
    jr nc, jr_043_667a

    db $10
    rst $08
    jr nc, jr_043_667e

    db $10
    jp $c93c


    ld [hl], $bc

jr_043_6695:
    ld b, e
    sbc $21
    ld a, a
    add b
    ld e, [hl]
    and c
    cp $01
    ld hl, sp+$07
    ret c

    daa
    ld [$4015], a
    cp a
    nop
    rst $38
    ld b, l
    cp d
    sub b
    ld l, a
    sub b
    ld l, a
    ld b, [hl]
    cp c
    push hl
    ld a, [de]
    ld a, [hl+]
    push de
    jr nz, jr_043_6695

    inc c
    di
    nop
    rst $38
    add h
    ld a, e
    ld b, b
    cp a
    ld b, b
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld b, c
    nop
    jp nz, $c200

    nop
    ld l, d
    nop
    ei
    nop
    adc $00
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    daa
    daa
    rlca
    rla
    rlca
    ld b, a
    rrca
    ld l, a
    nop
    ld b, d
    ld d, d
    nop
    ld a, [c]
    ld bc, $00ff
    rst $38
    nop
    cp d
    ld b, l
    or c
    ld c, a
    ld [hl], l
    push bc
    or a
    rst $00
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $28
    rst $20
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
    rst $30
    nop
    rst $10
    nop
    rst $38
    nop
    rst $28
    nop
    rst $18
    nop
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    adc a
    nop
    rst $28
    nop
    call c, $dc00
    nop
    db $fc
    nop
    db $fd
    nop
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    ld [hl+], a
    or $09
    pop af
    ld c, $d5
    ld a, [hl+]
    db $db
    inc h
    ld a, e
    add h
    ld hl, sp+$07
    ld d, a
    xor a
    adc l
    ld a, l
    sub b
    ld d, b
    pop de
    ld sp, $b454
    ld [$08fc], sp
    ld hl, sp+$08
    ld hl, sp+$10
    ldh a, [rNR10]
    ldh a, [rNR10]
    ret nc

    db $10
    ldh a, [rNR10]
    ldh a, [$a0]
    ld h, b
    or b
    ld [hl], b
    nop
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [rBCPS], a
    add sp, $40
    ret nz

    ld b, b
    ld b, b
    inc b
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
    nop
    nop
    nop
    nop
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
    ld c, $00
    sbc a
    nop
    xor a
    nop
    rst $28
    nop
    db $ed
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
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    call Call_043_44cd
    ld b, h
    ld [bc], a
    ld a, [c]
    xor c
    rst $10
    db $fd
    pop bc
    db $fc
    ret nz

    xor $d2
    call nz, $f4f8
    ld hl, sp-$08
    cp $fe
    db $fd
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$fcfd]
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    nop
    db $e3
    nop
    db $e3
    nop
    ld [hl], c
    nop
    or $00
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_043_684b:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_043_6862:
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
    rst $08
    jr nc, jr_043_6862

    db $10
    rst $38
    nop
    rst $18
    jr nz, jr_043_6898

    ldh [$dd], a
    ld [hl+], a
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    jr c, jr_043_684b

    add hl, sp
    rst $00
    cp e
    rst $00
    ld b, l
    ld a, a
    ld sp, hl
    ld sp, hl
    ld l, b
    ld a, b
    ld h, b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    jr nc, jr_043_68c8

jr_043_6898:
    db $10
    jr nc, jr_043_68bb

    inc h
    ld h, b
    ld h, b
    jr nz, jr_043_68c0

    nop
    nop
    ld [hl+], a
    ld [hl+], a
    inc bc
    inc hl
    ld b, $06
    nop
    ld bc, $8888
    jr jr_043_68c6

    db $fc
    db $fc
    jr nz, jr_043_68b2

jr_043_68b2:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_043_68bb:
    nop
    nop
    nop
    nop
    nop

jr_043_68c0:
    nop
    nop
    nop
    nop
    nop
    nop

jr_043_68c6:
    nop
    nop

jr_043_68c8:
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld [hl-], a
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    rst $20
    nop
    rst $28
    nop
    rst $38
    nop

jr_043_68de:
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
    ld a, [hl]

Call_043_68eb:
    ld a, [hl]
    jr nc, jr_043_68de

    ld d, b
    sub d
    ld h, d
    inc c
    ld l, d
    db $10
    add hl, de
    ld [hl+], a
    dec c
    ld [hl-], a
    ld d, l
    ld [$f867], a
    rst $20
    add sp, -$09
    ld hl, sp-$07
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
    nop
    rst $38
    nop
    rst $38
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
    rst $18
    nop
    rst $38
    nop
    cp $00
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
    db $eb
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
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_043_6953:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ld a, [$fa05]
    dec b
    ld sp, hl
    ld b, $c4
    dec sp
    pop de
    rra
    jr z, jr_043_6953

    db $e4
    rst $20
    ret nz

    jp $8780


    inc b
    inc bc
    inc b
    dec bc
    ld b, $09
    inc b
    dec bc
    ld b, $09
    inc d
    dec bc
    add hl, bc
    rlca
    inc b
    ld a, [bc]
    inc de
    dec de
    rrca
    rrca
    dec bc
    dec bc
    ld [bc], a
    ld [bc], a
    nop
    nop
    jr nz, jr_043_69aa

    nop
    inc b
    ld b, b
    ld b, b
    add b
    sub b
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
    ld [bc], a
    nop

jr_043_69aa:
    rlca
    nop
    dec e
    nop
    rst $20
    nop
    jr nz, jr_043_69b2

jr_043_69b2:
    ld sp, $fb00
    nop
    rst $38
    nop
    rst $20
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    sbc a
    sbc a
    xor a
    xor a
    inc bc
    rlca
    add e
    inc bc
    nop
    adc b
    ld b, b
    add hl, hl
    ldh a, [rNR12]

jr_043_69dc:
    ldh a, [rNR14]
    ldh [rNR10], a
    nop
    ld a, [c]
    nop
    xor $80
    db $eb
    ldh [$e8], a
    ldh [$fa], a
    jr nz, @-$0b

    jr nz, @-$05

    ret nz

    db $ec
    cp b
    rst $30
    rra
    ldh a, [$cf]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$05
    db $fc
    db $fd
    cp $fc
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$fd00]
    nop
    cp $00
    db $fd
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
    cp $00
    rst $18
    jr nz, jr_043_69dc

    ld b, d
    db $fc
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    ld hl, sp+$00
    db $ec
    inc c
    ldh a, [rNR10]
    ret nz

    ld bc, $4081
    call nz, $e325
    ld a, [bc]
    ld [c], a
    rra
    ldh a, [$0d]
    ld [c], a
    dec d
    ldh [rNR33], a
    ldh [$15], a
    ldh [rTIMA], a
    rra
    rra
    inc de
    inc de
    rla
    rla
    rra
    rra
    scf
    scf
    ld a, [hl]
    ld a, a
    ei
    ei
    rst $30
    rst $30
    nop
    rst $38
    nop
    or $00
    sub $00
    rst $38
    jr @+$01

    ld [$10ef], sp
    rst $30
    ld d, b
    or e
    nop
    db $e3
    ld bc, $07e3
    rst $20
    ld b, l
    rst $00
    ld d, d
    ld d, d
    or [hl]
    or [hl]
    db $ec
    db $ec
    jp z, Jump_043_43eb

    ld b, e
    ld b, $07
    rra
    rra
    dec bc
    dec bc
    rla
    rla
    ld c, $0f
    ld c, $0e
    add hl, hl
    dec hl
    rrca
    nop
    add a
    nop
    add e
    nop
    inc sp
    nop
    dec sp
    nop
    ld e, e
    nop
    ld [hl], e
    nop
    ld b, a
    nop
    ld de, $6700
    nop
    rst $38
    nop
    sbc [hl]
    nop
    adc a
    nop
    dec l
    nop
    ccf
    nop
    or [hl]
    nop
    add $00
    or $00
    push af
    nop
    rst $30
    nop
    ei
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
    ei
    inc b
    ld sp, hl
    ld b, $f8
    rlca
    ld hl, sp+$07
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
    cp $ff
    cp $ff
    ld a, $bf
    sbc [hl]
    rra
    jr jr_043_6af3

    nop
    inc de
    ld [bc], a
    inc bc
    nop
    ldh a, [$a9]
    ld d, $f5
    ld l, $fa
    daa
    rst $30
    jr nz, @-$74

    ld e, l
    add sp, $07
    jp $e907


    dec e
    ld bc, $06fe

jr_043_6af3:
    ld sp, hl
    ld h, l
    sbc e
    di
    rrca
    di
    rrca
    rst $30
    rrca
    rst $18
    cpl
    adc a
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_043_6b05:
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
    rst $18
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
    cp $01
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
    ld a, a
    add b
    rst $28
    db $10
    rst $38
    nop
    xor $11
    rst $28
    db $10
    db $ec
    inc de
    or h
    ld c, e
    inc [hl]
    set 3, b
    daa
    jr c, jr_043_6b05

    or b
    ld c, a
    ccf
    ccf
    cp e
    cp e
    rst $30
    rst $30
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
    nop
    ld a, a
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ld [hl], c
    ld a, a
    ld a, a
    ld a, a
    ld a, c
    ld a, a
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, h
    ld a, a
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    ld a, a
    ld hl, sp-$08
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
    cp $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ldh a, [$f0]
    db $e4
    db $e4
    ldh [$e0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$e4], a
    ldh a, [$f0]
    db $f4
    db $f4
    db $f4
    push af
    db $fc
    cp $fb
    ei
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    cp $fe
    cp $ff
    cp $fe
    cp $fe
    ld a, [hl]
    cp $de
    pop hl
    rst $18
    ldh [$bf], a
    ldh [$2f], a
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [rIE]
    ldh a, [$bf]
    ldh a, [$3f]
    ldh a, [$2f]
    ldh a, [rIF]
    ld hl, sp+$1f
    db $fc
    rrca
    db $fc
    ld c, a
    cp $07
    cp $43
    cp $00
    ld e, a
    nop
    rst $00
    nop
    ld l, a
    nop
    and e
    nop
    inc sp
    nop
    ld e, e
    add b
    rra
    ret nz

    ccf
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    ld a, a
    jr nc, jr_043_6c79

    jr c, jr_043_6c3b

    jr c, jr_043_6c3d

    ld c, $0f
    ldh a, [$0e]
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$0f
    or $0f
    rst $38
    rlca
    cp $07
    cp d
    db $fd
    ei
    db $fc
    push hl
    cp $d5
    cp $f1
    cp $90
    rst $38
    cp h
    rst $38
    ld de, $08ff
    rst $30
    ld h, b
    sbc a
    ret z

    scf
    ldh [$1f], a
    ret nz

    ccf
    and b
    ld e, a
    adc b
    ld [hl], a
    ld h, b
    sbc a
    and b
    ld e, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop

jr_043_6c3b:
    rst $38
    nop

jr_043_6c3d:
    rst $38
    nop
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
    db $10
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    dec bc
    rst $38
    ld e, $ff
    rrca
    rst $38
    ld e, $ff
    rra
    rst $38
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    xor a
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38

jr_043_6c79:
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    jr nz, jr_043_6ca2

    nop
    ld c, $00

jr_043_6c86:
    nop
    ld c, b
    nop
    ld bc, $0000

jr_043_6c8c:
    ld b, b
    ld b, b
    ld [$1010], sp
    inc b
    ld [$1011], sp
    ld [$1500], sp
    inc b
    dec bc
    ld bc, $0d02
    ld [bc], a
    ld [$1002], sp
    dec h

jr_043_6ca2:
    inc de
    ld [$2413], sp
    ccf
    nop
    ld [$14d7], sp
    ld b, c
    nop
    ld [hl], a
    or d
    adc l
    and h
    pop de
    call c, $fec3
    ldh [$7c], a
    ld h, e
    ld l, c
    db $76
    ld [hl+], a
    cp l
    jr c, jr_043_6cfc

    cpl
    ccf
    rlca
    rrca
    scf
    ccf
    ccf
    ccf
    rrca

jr_043_6cc7:
    ld a, a
    inc d
    inc a
    jr c, jr_043_6c86

    jr nc, jr_043_6c8c

    and b
    and d
    and b
    db $db
    di
    add h
    or b
    res 3, b
    and $80
    db $fd
    pop hl
    sbc $b0
    add l
    ret c

    db $e3
    push bc
    ld a, [c]
    or $c1
    ld l, a
    ret nc

    ld a, e
    add h
    ld [hl-], a
    ret


    jr nz, jr_043_6cc7

    ld b, b
    cp e
    inc h
    jp nc, $c328

    ld a, e
    add b
    ld a, a
    add b
    ld a, [hl]
    add c
    inc a
    jp $c33d


jr_043_6cfc:
    ld c, e
    rst $20
    ld a, a
    rst $38
    rst $30
    adc b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld l, l
    sub d
    ld a, a
    add b
    rst $38
    add b
    adc b
    adc b
    add b
    add b
    ret nz

    ret nz

    ld b, b
    ret nz

    and b
    and b
    and b
    and b
    add c
    add c
    and b
    and b
    add b
    add b
    add b
    add b
    add b
    add b
    db $dd
    db $dd
    ld [hl], a
    ld [hl], a
    or e
    or e
    ld sp, hl
    ei
    db $fd
    rst $38
    nop
    rst $38
    nop
    halt
    rst $20
    nop
    db $e3
    dec b
    and $20
    db $e3
    inc a
    rst $38
    nop
    pop bc
    nop
    jp $cb48


    ld b, h
    push bc

jr_043_6d46:
    ld c, $cf
    dec h
    push hl
    inc sp
    or e
    jr c, jr_043_6d46

    ld sp, $2df1
    db $ed
    dec sp
    ei
    ld a, $ff
    ld c, [hl]
    rst $28
    ld l, [hl]
    rst $38
    ld l, h
    db $fd
    inc a
    db $fd
    inc l
    rst $38
    inc l
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, c
    rst $38
    ld d, b
    rst $38
    ld de, $a0ff
    rst $38
    db $eb
    rst $38
    call $c7ff
    rst $38
    rst $20
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
    nop
    ld hl, sp+$06
    ld c, b
    stop
    add h
    inc b
    sbc b
    add hl, bc
    nop
    ld [$0c53], sp
    db $10
    dec b
    ld b, d
    inc b
    inc bc
    ret z

    inc d
    sbc b
    ld b, e
    ldh [rNR23], a
    adc b
    dec b
    dec c
    ldh a, [rLYC]
    or d
    ld de, HeaderDestinationCode
    add b
    inc c
    pop de
    ld h, e
    sub h
    add h
    ld d, c
    inc de
    nop
    ld a, [hl+]
    ld de, $9c63
    dec a
    ld [bc], a
    jr z, jr_043_6d46

    jr nz, jr_043_6d46

    dec h
    jp nz, Jump_043_5e21

    ld l, c
    ld b, $08
    and a
    jr nz, jr_043_6dd8

    inc c
    jp nz, $8758

    ld a, $c0
    xor h
    sub c
    inc sp
    ld c, b
    dec bc
    ldh a, [$4c]
    sub e
    ld a, $41
    ld a, $c1
    ld [de], a
    ld a, l
    db $db
    add hl, sp
    dec [hl]
    ei

jr_043_6dd8:
    ccf
    di
    inc hl

jr_043_6ddb:
    rst $38
    ld h, e
    rst $38
    rst $30
    ld l, a
    ld d, a
    ld a, b
    rst $08
    ldh [rVBK], a
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$df], a
    ret nz

    rst $18
    ldh [$7f], a
    ret nz

    ld b, b
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $30

jr_043_6e1b:
    ld [$807f], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    ld d, b
    rst $38
    nop
    ld [hl], a
    adc b
    sbc e
    ld h, h
    sbc a
    ld h, b
    rst $10
    jr z, jr_043_6ddb

    xor d
    call c, $b4dc
    or h
    ld e, l
    ld e, l
    ld e, d
    ld e, d
    ld d, [hl]
    ld d, [hl]
    ld [hl], d
    ld a, d
    rst $18
    rst $38
    ld [bc], a
    db $fd
    dec b
    ld a, [$fe01]
    nop
    cp a
    nop
    rst $38
    nop
    ld a, a
    add b
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
    db $10
    rst $38
    nop
    rst $38
    ld [$09ff], sp
    rst $38
    inc l
    rst $38
    add hl, sp
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    ld e, a
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
    rst $38
    nop
    rst $38
    nop
    ld a, [$4004]
    inc h
    ld b, b
    jr nz, jr_043_6ea7

    nop
    ld b, b
    add l
    inc b
    ld b, b
    jr nz, jr_043_6e8e

jr_043_6e8e:
    nop
    stop
    inc bc
    inc c
    sub c
    jr c, jr_043_6e1b

    ld a, [bc]
    ld sp, $411f
    ld e, a
    ld bc, $ab55
    rrca
    ccf
    rrca
    cp a
    ld e, a
    cp a
    sbc a
    ld a, a
    cp a

jr_043_6ea7:
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    cp a
    cp a
    ld a, a
    ccf
    ccf
    ccf
    ld a, a
    cp a
    ld a, a
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
    rrca
    rrca
    rlca
    rra
    jp $c30f


    scf
    ld b, e
    adc a
    ld c, h
    and b
    add hl, de
    ld h, [hl]
    ld b, l
    db $fc
    xor $fe
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_043_6ef3:
    nop
    ld a, a
    add b
    ld a, a
    add b
    db $dd
    ld [hl+], a
    rst $30
    ld [$20df], sp
    db $db
    inc h
    db $db
    inc h
    ld a, c
    add [hl]
    db $e3
    inc e
    and l
    ld e, d
    swap h
    jr jr_043_6ef3

    add hl, de
    and $28
    rst $10
    inc b
    ei
    dec h
    jp c, $fb04

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
    ccf
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    inc e
    inc e
    cpl
    rrca
    ld [hl], b
    adc b
    ld [hl-], a
    ld b, b
    cp d
    ld a, l
    ld a, e
    rst $38
    ld a, e
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rrca
    rra
    xor a
    rrca
    ld [$88da], sp
    dec l
    ld b, c
    cp h
    add e
    db $fc
    add sp, -$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    reti


    daa
    reti


    dec b
    xor c
    ld c, e
    ld a, b
    ccf
    scf
    cp b
    ld a, a
    cp b
    inc de
    ld [hl], h
    ld d, e
    xor h
    xor a
    ld d, b
    ei
    inc b
    and a
    ld e, b
    or a
    ld c, b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $30
    ld [$09f6], sp
    or h
    ld c, e
    or $09
    rrca
    ldh a, [rDMA]
    cp c
    ld [hl], d
    adc l
    ld d, b
    xor a
    or e
    ld c, h
    xor b
    ld d, a
    adc b
    ld [hl], a
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
    add b
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ld h, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [hl-], a
    rst $38
    inc sp
    rst $38
    cp e
    rst $38
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
    ld hl, sp+$07
    db $f4
    ld c, $c8
    ld a, $b8
    ld a, a
    ld [hl], b
    cp $ee
    ld [hl], d
    cp $02
    ldh a, [$0e]
    ld a, [hl-]
    call nz, $f0de
    add $78
    or [hl]
    ld l, b
    sub $28
    cp $00
    or $09
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
    db $f4
    dec bc
    cp $01
    ei
    inc b
    cp $01
    ld sp, hl
    ld b, $fb
    inc b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp a
    ld b, b
    rst $38
    nop
    or $09
    or e
    ld c, h
    cp a
    ld b, b
    push af
    ld a, [bc]
    rst $38
    nop
    ld c, a
    or b
    ei
    inc b
    db $d3
    inc l
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    or a
    ret z

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
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, [$f005]
    rrca
    pop af
    rrca
    ldh [rNR31], a
    adc $3e
    rst $08
    ccf
    rst $38
    ccf
    cp $7e
    cp h
    ccf
    add b
    cpl
    inc a
    ld b, b
    jr c, jr_043_70bc

    jr nc, jr_043_7086

    ld a, [hl-]
    push bc
    add hl, sp
    add $39
    add $79
    add [hl]
    ld a, e

jr_043_7083:
    add h
    ld a, [c]
    dec c

jr_043_7086:
    cp d
    ld b, l
    cp d
    ld b, l
    or e
    ld c, h
    add d
    ld a, l
    and a
    ld e, b
    rst $10

jr_043_7091:
    jr z, jr_043_7091

    ld bc, $22dd
    ld [hl], c
    adc [hl]
    call nc, Call_043_482b
    or a
    dec h
    jp c, $ff00

    nop
    rst $38
    jr nz, jr_043_7083

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38

jr_043_70bc:
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_043_70c5:
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38

jr_043_70d2:
    rst $00
    rst $38

jr_043_70d4:
    rst $08

jr_043_70d5:
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38

jr_043_70da:
    rst $18
    rst $38
    rst $38
    rst $38

jr_043_70de:
    rst $38
    rst $38
    nop
    nop

jr_043_70e2:
    ld bc, $0180
    add b
    nop
    add c
    nop
    add c
    nop
    ld bc, $0001
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
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop

jr_043_710b:
    ret nz

    nop
    ret nz

    add b

jr_043_710f:
    ld b, b
    jr nz, jr_043_70d2

    jr nz, jr_043_70d4

    nop

jr_043_7115:
    ret nz

    and b

jr_043_7117:
    ld b, b
    jr nz, jr_043_70da

    and b
    ld b, b
    jr nz, jr_043_70de

    ldh [rP1], a
    jr nz, jr_043_70e2

    ret nz

    jr nz, jr_043_70c5

    ld b, b
    and b
    ld b, b
    add b
    ld h, b
    and b
    ld b, b
    and b
    ld b, b
    sub b
    ld h, b

jr_043_7130:
    add b
    ld h, b
    add b
    ld h, b
    call nc, $8820
    ld [hl], b
    ret nc

    jr nz, jr_043_710b

    jr nz, jr_043_70d5

    ld h, b
    adc [hl]
    ld [hl], b
    call nz, $e23a
    inc e
    jp nz, $c63c

    jr c, jr_043_7117

    jr nc, jr_043_7115

    jr nc, jr_043_710f

    jr c, jr_043_7130

    ld a, [de]
    call $c532
    ld a, [hl-]
    push de
    ld a, [hl-]
    ret nz

    dec sp
    push af
    ld b, $90
    ld h, a
    ld hl, $80ec
    ld e, a
    jr nc, @-$0f

    ld [hl], b
    xor $18
    push hl
    ldh [$ef], a
    ld h, b
    rst $38
    jr nc, @-$09

    ld h, b
    rst $28
    ld hl, sp-$29
    ret nc

jr_043_7171:
    rst $30
    ld hl, sp-$01
    db $fc
    ei
    ld a, b
    ld a, a
    jr nc, jr_043_7171

    nop
    db $fc
    ld [hl], b
    adc [hl]
    ld b, b
    cp [hl]
    and [hl]
    and [hl]
    adc a
    adc a
    xor $ef
    cp [hl]
    cp a
    sbc $df
    cp $ff
    ld a, h
    ld a, a
    or $ff
    nop
    cp $14
    xor $30
    rst $00
    inc c
    rst $38
    ld e, h
    cp a
    dec e
    rst $18
    dec e
    rst $38
    ld c, c
    xor e
    ld bc, $00f3
    ei
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    rst $38
    or $ff
    rst $30
    rst $38
    rst $28
    rst $38
    db $d3
    rst $38
    jp $c3ff


    rst $38
    rst $00
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
    nop
    add b
    add b
    nop
    add b
    nop
    ret nz

    nop
    ld b, b
    add b
    ret nz

    nop
    ld b, b
    add b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    ret nz

    nop
    nop
    nop
    nop
    nop
    jr nz, jr_043_71f6

jr_043_71f6:
    nop
    jr nz, jr_043_71f9

jr_043_71f9:
    jr nz, jr_043_71fb

jr_043_71fb:
    jr nc, @+$22

    db $10
    jr nz, @+$12

    jr nc, jr_043_7202

jr_043_7202:
    stop
    stop
    stop
    jr @+$22

    jr nz, @+$1a

    jr nc, jr_043_7216

    inc [hl]
    ld [$002c], sp
    inc b
    ld [$0c02], sp

jr_043_7216:
    ld [bc], a
    inc c
    ld [$0e06], sp
    inc b
    ld b, $0c
    inc c
    ld b, $06
    ld b, $07
    ld b, $01
    ld b, $01
    ld b, $03
    ld b, $02
    rlca
    ld b, $03
    ld c, $03
    add hl, bc
    inc bc
    inc e
    inc bc
    nop
    rlca
    inc b
    inc bc
    inc b
    ld bc, $0409
    ld bc, $1104
    rlca
    dec b
    inc bc
    ld b, l
    inc bc
    ld e, a
    ld bc, $0304
    dec c
    ld [bc], a
    dec b
    ld [bc], a
    ld h, b
    inc bc
    ld h, c
    inc bc
    sbc c
    inc bc
    cp c
    inc bc
    sub e
    ld bc, $01d6
    push de
    inc bc
    push bc
    inc bc
    rst $30
    ld bc, $01e7
    ld a, a
    add c
    ld a, [$ee04]
    db $10
    cp $00
    rst $28
    nop
    ld l, [hl]
    add c
    ld c, [hl]
    and c
    rrca
    ldh [rTAC], a
    ldh [rTAC], a
    ldh a, [$67]
    nop
    rlca
    ld [hl], b
    dec bc
    inc a
    rlca
    jr nz, @+$29

    db $10
    scf
    nop
    daa
    ld [$006f], sp
    dec bc
    inc [hl]
    dec bc
    inc [hl]
    dec bc
    inc d
    ld b, $39
    ld c, a
    ld [hl], b
    daa
    cp b
    ld b, l
    ld e, d
    rrca
    db $10
    ld c, l
    ld d, d
    and l
    cp d
    push bc
    jp c, $bda2

    ld h, b
    ld a, a
    and e
    cp h
    add e
    cp h
    ld h, c
    cp $62
    db $fd
    ld h, b
    rst $38
    ld [c], a
    db $fd
    ld h, c
    cp $e0
    rst $38
    ldh [rIE], a
    and d
    db $fd
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$01
    nop
    nop
    nop
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
    stop
    jr jr_043_72ea

jr_043_72ea:
    nop
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
    nop
    ld [$0400], sp
    nop
    ld bc, $0400
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld [bc], a
    nop
    ld b, $00
    ld b, $00
    ld bc, $0000
    nop
    inc b
    nop
    ld [bc], a
    nop
    inc bc
    nop
    add hl, bc
    nop
    ld [$0000], sp
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [$8900], sp
    nop
    dec bc
    nop
    rlca
    nop
    sub a
    nop
    rra
    add b
    sbc a
    nop
    ld a, [$9e00]
    nop
    sbc $00
    ld a, h
    add b
    db $fc
    add b
    ld a, [$e100]
    nop
    db $e4
    nop
    push de
    nop
    sub h
    ld h, b
    inc [hl]
    ret nz

    ld d, h
    ldh [rPCM34], a
    ret nz

    cpl
    ret nc

    rst $08
    ld [hl], b
    ld [hl], a
    ld hl, sp-$09
    ret c

    sbc $e8
    db $db
    db $ec
    add a
    ld hl, sp-$51
    ld d, b
    rst $38
    ld d, b
    sbc a
    ld [hl], b
    scf
    ret c

    di
    call c, $d0a7
    and e
    db $ec
    ret


    xor $8d
    ld a, [$9ef9]
    sbc l
    sbc [hl]
    set 5, h
    set 7, h
    ld [$6efd], a
    db $eb
    ld h, [hl]
    di
    ld h, l
    di
    add sp, $6f
    cp h
    dec a
    cp a
    ld a, l
    cp l
    ld a, $a3
    ld a, [hl]
    cp h
    ld a, a
    cp [hl]
    ld a, a
    and d
    ld l, a
    rst $10
    dec sp
    reti


    dec sp
    rst $08
    cpl
    db $eb
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $30
    rrca
    or $0f
    rst $30
    ld c, $75
    adc [hl]
    ld a, d
    add a
    ei
    rlca
    ld a, e
    add a
    ld a, l
    add e
    add hl, sp
    rst $00
    jp hl


    rla
    add hl, bc
    rst $30
    dec a
    jp $e916


    inc h
    db $db
    adc c
    db $76
    add hl, bc
    or $0d
    ld a, [c]
    inc b
    ei
    ld bc, $43fe
    cp h
    inc bc
    db $fc
    dec b
    ld a, [$fc03]
    ld c, b
    or a
    nop
    rst $38
    ld [$03f7], sp
    db $fc
    ld bc, $00fe
    rst $38
    dec bc
    nop
    inc hl
    nop
    rla
    nop
    rra
    nop
    rra
    nop
    ld b, e
    nop
    inc bc
    nop
    dec bc
    nop
    rlca
    nop
    daa
    nop
    dec hl
    nop
    add hl, de
    nop
    add hl, sp
    nop
    dec sp
    nop
    dec de
    nop
    add hl, de
    nop
    jr jr_043_73f2

jr_043_73f2:
    ld sp, $3300
    nop
    dec a
    nop
    db $ed
    nop
    db $e3
    nop
    ld h, c
    nop
    ld [hl], c
    nop
    db $e3
    nop
    db $e3
    nop
    ld [hl], e
    nop
    ld h, e
    nop
    ld l, a
    nop
    cpl
    nop
    ld l, a
    nop
    ld [hl], a
    nop
    ld d, a
    nop
    ld c, a
    nop
    ld a, e
    nop
    ld a, a
    nop
    ld [hl], a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf

jr_043_7423:
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    cp a
    nop
    ccf
    nop
    or a
    nop
    sbc a
    nop
    ei
    inc b
    rst $30
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
    db $fc
    inc bc
    ld a, [$fd05]
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    ld a, [$fe05]
    ld bc, $06f9
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ei
    inc bc
    ld a, [$f806]
    inc b
    dec b
    rlca
    dec c
    rrca
    ld d, $1f
    ld b, $0f
    inc b
    rlca
    rra
    rra
    inc e
    rra
    rra
    rra
    ldh [$1f], a
    ldh a, [$0b]
    ldh a, [$0e]
    ldh a, [rIF]
    ld [hl], b
    adc [hl]
    ldh [rNR34], a
    jr nz, @-$1f

    and b
    rst $18
    and b
    rst $18
    jr nz, jr_043_7423

    ld [$8073], sp
    ld a, a
    nop
    ei
    ldh a, [$cb]
    ld d, b
    db $eb
    call c, Call_043_68eb
    jp z, $80c0

    or b
    db $eb
    ldh a, [$e8]
    ldh a, [$e8]
    ld d, b
    ld h, h
    ldh a, [$61]
    sub b
    ld l, b
    ret c

    ret nz

    sub b
    add sp, -$80
    or b
    xor b
    db $f4
    ldh [$f4], a
    call z, $a0f0
    ld hl, sp-$04
    ldh a, [$f5]
    ld hl, sp-$26
    ld [hl], b
    ld c, b
    ret nc

    ld [hl], h
    ld h, b
    ld h, b
    db $ec
    ld h, h
    ldh a, [$7f]
    di
    ld [hl], e
    ei

jr_043_74c0:
    ld [hl], d
    cp $76
    ld a, [$f874]
    ld [hl], l

jr_043_74c7:
    ld sp, hl
    push af
    ld a, c
    ld [hl], b
    ld hl, sp+$79
    rst $38
    add hl, sp
    rst $38
    ld a, d
    ld a, [hl]
    ld a, [hl-]
    ld a, $3a
    ld a, $16
    ld e, $08
    inc c
    ld [$040c], sp
    inc b

jr_043_74de:
    inc b
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
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    ld b, h
    ei
    inc b
    di
    inc c
    di
    inc c
    ei
    inc b
    rst $38
    nop
    rst $18
    jr nz, jr_043_74de

    jr nz, jr_043_74c0

    ld b, b
    rst $38
    nop
    rst $38
    nop

jr_043_7506:
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld e, a
    and b
    ld a, a
    add b
    rst $38
    nop
    rst $28
    db $10
    rst $20
    jr jr_043_7506

    db $10
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld a, a
    add b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_043_74c7

    ld h, c
    sbc a
    ld h, b
    rrca
    ldh a, [$27]
    ret c

    ld d, [hl]
    jp hl


    ld e, d
    push hl
    ld d, e
    db $ec
    ld hl, $21be
    cp [hl]
    jr nz, jr_043_757b

    ld a, [bc]
    dec d
    jr nz, @+$41

    add hl, de
    sub $01
    adc [hl]
    ld de, $119c
    ld d, $10
    rla
    nop
    inc bc
    add c
    ld h, $40
    add a
    nop
    rla
    ld a, [bc]
    ld de, $3f84
    db $10
    dec hl
    nop
    ld c, e
    ld [$0811], sp
    inc de
    nop
    add hl, bc
    ld hl, $1009
    ld [$0901], sp
    nop
    nop
    ld b, c
    ld bc, $2101
    ld bc, $002d
    ld h, $97
    rst $38
    dec d
    rst $38
    add hl, de
    rst $38
    db $10
    rst $38
    ld de, $08ff

jr_043_757b:
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    nop
    ld hl, $2121
    ld hl, $2121
    ld [de], a
    ld [de], a
    ld [de], a
    ld d, $02
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0808
    nop
    nop
    add b
    nop
    db $10
    sub b
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    jp nz, $d23d

    dec l
    jp nc, $c22d

    dec a
    swap h
    db $eb
    inc d
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
    rst $38
    nop
    ld c, a
    or b
    rst $18
    jr nz, @-$3f

    ld b, b
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
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$08f7], sp
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
    db $76
    adc c
    ld l, a
    sub b
    ld a, [hl]
    add c
    ld a, $c1
    ld a, $c1
    ccf
    ret nz

    ld a, a
    add b
    cp l
    ld b, d
    cp l
    ld b, d
    dec a
    jp nz, $827d

    ld a, h
    add e
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld l, [hl]
    sub c
    ld l, [hl]
    ld de, $d0af
    cp a
    ret nz

    cp [hl]
    pop bc
    ld a, d
    ld b, l
    ld a, [de]
    ld h, l
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ld h, b
    ld e, h
    ld b, e
    ld e, a
    ld h, b
    rst $18
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$e7]
    ld hl, sp-$01
    ldh a, [$f7]
    ld hl, sp-$4d
    cp h
    sbc e
    sbc h
    dec de
    jr jr_043_7684

    jr jr_043_768a

    inc e
    dec e
    ld e, $19
    ld e, $0d
    ld c, $0c
    rrca
    inc c
    dec c
    inc c
    dec c
    dec bc
    ld c, $8d
    adc a
    ld b, l
    ld b, l
    rlca
    rlca
    rst $38
    nop
    ld a, a
    add b

jr_043_7684:
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop

jr_043_768a:
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
    cp a
    ld b, b
    di
    inc c
    or e
    ld c, h
    ld e, a
    ld e, h
    rst $38
    db $fc
    adc $cc
    ld l, [hl]
    ld l, h
    ld b, a
    ld b, h
    ld b, a
    ld b, a
    dec b
    dec b
    add h
    add h
    ld a, [$7805]

jr_043_76b3:
    add a
    ld [hl], h
    adc e
    ld h, [hl]
    sbc c
    ld h, [hl]
    sbc c
    or $09
    rst $30
    ld [$28d7], sp
    ei
    inc b
    rst $08
    jr nc, jr_043_76b3

    ld de, $17e8
    ldh [$1f], a
    ldh [$1f], a
    push af
    ld a, [bc]
    rst $38
    nop
    cp $01
    ld [c], a
    dec e
    push af
    ld a, [bc]
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop

jr_043_76de:
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc h
    adc [hl]
    ld [hl], c
    adc a
    ld [hl], b
    and a
    ld e, b
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

jr_043_7700:
    rst $38
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
    cp a
    ld b, b
    rst $38
    nop

jr_043_7712:
    rst $28
    db $10
    rst $00
    jr c, jr_043_76de

    jr c, jr_043_7700

jr_043_7719:
    jr jr_043_7712

    ld [$10ef], sp

jr_043_771e:
    rst $38
    nop

jr_043_7720:
    ccf
    ret nz

    ccf
    ret nz

    ld e, a
    and b
    ld a, a
    add b
    ccf
    ret nz

    ld a, [hl]
    add c
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    jr z, jr_043_771e

    jr jr_043_7720

    jr jr_043_7719

    ld hl, $1ce3
    jp nz, Jump_000_083d

    ld [$0000], sp
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc bc
    inc bc
    dec bc
    dec bc
    add hl, bc
    dec bc
    rrca
    rrca
    ld a, [hl-]
    push bc
    cp a
    ld b, b
    dec [hl]
    jp z, Jump_043_47b8

    sbc d
    ld h, l
    cp [hl]
    ld b, c
    sbc e
    ld h, h
    jp c, $d825

    daa
    db $dd
    ld [hl+], a
    db $dd
    ld [hl+], a
    db $fd
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
    db $f4
    dec bc
    or $09
    and $19
    or $09
    ld a, d
    add l
    db $76
    adc c
    rst $20
    sbc b
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
    jr jr_043_77b3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_043_77c3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_043_77d3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_043_77e3

    ld [hl-], a

jr_043_77b3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_043_77f3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_043_77c3:
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

jr_043_77d3:
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

jr_043_77e3:
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

jr_043_77f3:
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

    call $cea0
    rst $08
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
    ld [hl], c
    ld [hl], c
    ld [hl], c
    inc d
    dec d
    ld d, $16
    rla
    jr jr_043_78b8

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_043_78c7

    jr nz, jr_043_78ca

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_043_78da

    ld a, [hl+]
    dec hl
    inc l
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c

jr_043_78b8:
    dec l
    ld l, $2f
    cpl
    jr nc, jr_043_78ef

    ld [hl-], a
    inc sp
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b

jr_043_78c7:
    inc b
    inc b
    inc b

jr_043_78ca:
    inc b
    ld bc, $0404
    ld bc, $0504
    dec b
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b

jr_043_78da:
    inc b
    inc b
    inc b
    rlca
    rlca
    rlca
    ld b, $06
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca

jr_043_78ef:
    rlca
    ld b, $06
    ld b, $05
    dec b
    nop
    inc b
    inc b
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld b, $05
    dec b
    dec b
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    inc b
    nop
    nop
    inc b
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    inc b
    nop
    inc b
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $06
    dec b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $05
    dec b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $05
    dec b
    inc b
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $05
    dec b
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    daa
    rlca
    ld b, $06
    ld b, $05
    inc b
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $05
    inc b
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $06
    ld b, $04
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    ld b, $0e
    dec c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c0c], sp
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    dec c
    ld [$0008], sp
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    ld c, $0d
    inc c
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    ld c, $0d
    ld [$0008], sp
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    rrca
    rrca
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$7f]
    ldh a, [$6f]
    ldh a, [$6f]
    ldh a, [$ef]
    ldh a, [$ef]
    pop af
    pop hl
    pop af
    ld h, c
    pop af
    ld h, c
    pop af
    pop hl
    pop af
    pop hl
    pop af
    pop hl
    pop af
    pop af
    pop hl
    pop af
    pop hl
    pop af
    pop hl
    ld h, c
    pop af
    pop af
    ld h, c
    ld [hl], c
    pop hl
    ld [hl], c
    pop hl
    ld h, c
    pop af
    ld d, c
    pop hl
    pop af
    pop hl
    ld [hl], c
    pop hl
    pop af
    pop hl
    ld d, c
    pop hl
    ld [hl], c
    pop hl
    pop de
    pop hl
    pop de
    pop hl
    pop de
    pop hl
    ld d, c
    pop hl
    ld b, c
    pop hl
    pop af
    pop bc
    pop hl
    pop bc
    pop af
    pop bc
    ld b, c
    pop hl
    ld d, c
    pop hl
    ld h, c
    pop bc
    ld [hl], c
    pop bc
    ld hl, $31c1
    pop bc
    and c
    ld b, c
    ld [hl], c
    pop bc
    ld hl, $71c1
    pop bc
    ld h, c
    pop bc
    ld h, c
    pop bc
    ld hl, $11c1
    pop bc
    ld hl, $a1c1
    ld b, c
    ld hl, $71c1
    pop bc
    pop hl
    pop bc
    pop af
    pop bc
    ld b, c
    pop hl
    ld [hl], c
    pop bc
    and c
    ld b, c
    or c
    ld b, c
    pop af
    ld bc, $6191
    sub c
    ld h, c
    ld sp, $41c1
    pop hl
    pop de
    pop hl
    ld b, c
    pop hl
    ld de, $51e1
    pop hl
    ld d, c
    pop hl
    sub b
    ld h, b
    ld [hl], b
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$60], a
    ldh a, [$60]
    ldh a, [rSVBK]
    ldh [$60], a
    ldh a, [$e0]
    ldh a, [rNR41]
    ldh a, [$a0]
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    or b
    ld [hl], b
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$f0]
    ldh a, [$b0]
    ld [hl], b
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [$f0]
    jr nc, @-$0d

    ldh a, [$f1]
    pop af
    di
    pop af
    di
    di
    or $f3
    rst $30
    rst $30
    rst $30
    rst $30
    db $fd
    rst $30
    rst $38
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, l
    cp a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    rst $38
    ei
    di
    rst $38
    ei
    rst $38
    rst $30
    ei
    ld a, b
    ldh a, [$78]
    ldh a, [$78]
    ldh a, [$38]
    ld hl, sp+$38
    ld hl, sp+$3c
    ld hl, sp+$3c
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fd
    db $fc
    rst $38
    db $fc
    cp $fc
    cp $fe
    cp $fe
    cp $fe
    rst $28
    cp $ee
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    xor $ef
    rst $28
    xor $ed
    and $ec
    and $ea
    and $e8
    and $e8
    and $e8
    and $e2
    db $e4
    ld [c], a
    db $e4
    ldh [$e6], a
    ld [c], a
    db $e4
    and $e0
    and $e0
    and $e0
    ld [c], a
    ldh [$e6], a
    ldh [$e2], a
    ldh [$e4], a
    ld [c], a
    ldh [$e2], a
    and $e0
    ldh [$e2], a
    db $e4
    ld [c], a
    db $e4
    ld [c], a
    db $e4
    ld [c], a
    db $e4
    ld [c], a
    db $e4
    ld [c], a
    and $e2
    ldh [$e6], a
    ld [$e2e6], a
    and $ea
    and $e2
    and $ee
    and $e6
    xor $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $b0
    jp nz, $0200

    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld b, $02
    inc bc
    ld [bc], a
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [$0702], sp
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    dec bc
    rlca
    rla
    rlca
    rlca
    rrca
    rrca
    rrca
    rra
    rrca
    rra
    rra
    ccf
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
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
    ld a, [$fdff]
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
    cp $ff
    ret nc

    rst $38
    and b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    dec d
    rst $38
    cp e
    rst $38
    rst $38
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
    and b
    rst $28
    db $10
    ld a, a
    add b
    xor [hl]
    ld d, c
    dec e
    ld [c], a
    ld l, h
    db $d3
    inc b
    ei
    ld l, $d1
    inc [hl]
    rr d
    push hl
    dec d
    ld [$f54a], a
    inc b
    ei
    ld a, [bc]
    push af
    add h
    ei
    add b
    rst $38
    and b
    nop
    jr z, jr_043_7c24

jr_043_7c24:
    jr nz, jr_043_7c26

jr_043_7c26:
    ret nc

    nop
    ld b, b
    add b
    ld b, b
    add b
    call $c880
    add b
    db $ec
    add b
    or b
    ret nz

    ldh a, [$c0]
    db $fd
    ret nz

    push af
    ret nz

    db $db
    ldh [$df], a
    ldh [$7f], a
    db $fc
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    ld a, b
    ccf
    ld a, h
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld [hl], c
    ld a, $71
    ld a, $71
    ld a, $71
    ld a, $71
    ld a, $73
    inc a
    ld [hl], c
    ld a, $71
    ld a, $71
    ld a, $71
    ld a, $71
    ld a, $71
    ld a, $71
    ld a, $71
    ld a, $71
    ld a, $70
    ccf
    ld [hl], c
    ld a, $70
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld [hl], b
    ccf
    ld a, b
    ccf
    ld a, h
    ccf
    inc [hl]
    ld a, a
    cp $3f
    ld a, a
    ccf
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    ccf
    ld a, a
    cp l
    ld a, a
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
    ldh [rIE], a
    push bc
    rst $38
    ld a, [$c0ff]
    rst $38
    add b
    rst $38
    add l
    rst $38
    ld [$fdff], a
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$54ff]
    rst $38
    and d
    rst $38
    ld d, h
    rst $38
    and b
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, [$f4ff]
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
    ld bc, $aaff
    rst $38
    push de
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
    push af
    rst $38
    db $fd
    nop
    db $fc
    ld bc, $807d
    cp $01
    ld a, [hl]
    add c
    cp $01
    ld e, [hl]
    and c
    sbc $01
    ld [hl], b
    adc e
    cp [hl]
    ld b, c
    ld d, h
    xor e
    cp h
    ld b, e
    call nc, $bc2b
    ld b, e
    ld d, h
    xor e
    inc l
    db $d3
    ld [hl], h
    adc e
    ld [$40f7], sp
    cp a
    ld [$40f7], sp
    cp a
    rrca
    rst $30
    rlca
    rst $38
    rrca
    rst $30
    rlca
    nop
    rlca
    nop
    add a
    nop
    ld [hl], $00
    sbc $00
    call c, $fe00
    nop
    cp $00
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
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$d4ff], a
    rst $38
    add sp, -$01
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
    cp $07
    cp $07
    db $fc
    rlca
    cp $07
    db $fc
    rlca
    cp $07
    cp $07
    db $fc
    rlca
    db $fc
    rlca
    cp $07
    cp $07
    cp $07
    cp $07
    ld a, [hl]
    add a
    ld a, a
    add a
    ld a, e
    add a
    nop
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rst $38
    ldh [rIE], a
    ld bc, $00fe
    rst $38
    rlca
    ld hl, sp-$7d
    db $fc
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
    ld e, a
    rst $38
    ld [$5fff], sp
    ldh [$80], a
    rst $38
    dec d
    rst $38
    nop
    rst $38
    ld c, a
    ldh a, [$a8]
    rst $30
    ld d, l
    rst $38
    adc d
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    push af
    rst $38
    adc [hl]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    jr nz, @+$01

    ld d, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    xor d
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
    ld [bc], a
    rst $38
    inc b
    rst $38
    ld [$50ff], sp
    rst $38
    xor b
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
    xor b
    rst $38
    ld d, h
    rst $38
    ld h, h
    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld bc, $00fe
    rst $38
    nop
    nop
    nop
    nop
    jr jr_043_7e26

jr_043_7e26:
    add b
    nop
    nop
    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fd
    nop
    rst $18
    nop
    nop
    nop
    ld b, b
    nop
    jr z, jr_043_7e3e

jr_043_7e3e:
    ld h, b
    nop
    add sp, $00
    rst $30
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
    add c
    cp $02
    db $fd
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$f50a]
    dec d
    ld [$f50a], a
    cp $ff
    rst $38
    rst $38
    inc b
    ei
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    ld e, [hl]
    and b
    rst $38
    nop
    cp $00
    xor l
    ld d, b
    ld a, a
    add b
    ld [$fff7], sp
    rst $38
    rst $38
    rst $38
    dec d
    ld [$fd02], a
    dec b
    ld a, [$fd02]
    ld bc, $02fe
    db $fd
    nop
    rst $38
    nop
    rst $38
    cp a
    ld b, b
    inc bc
    db $fc
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    ld c, a
    ldh a, [$0a]
    rst $38
    ldh a, [rIF]
    and d
    ld hl, sp+$44

Call_043_7eb3:
    ei
    ld a, h
    add e
    db $fc
    inc bc
    nop
    cp $41
    cp $a9
    cp $40
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
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
    ld d, h
    rst $38
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
    ld bc, $03fe
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    ld bc, $07ff
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$2f], a
    ret nc

    rra
    ldh [$af], a
    ld d, b
    dec d
    ld [$d42b], a
    ld b, a
    cp b
    dec bc
    db $f4
    ld d, a
    xor b
    xor a
    ld d, b
    ld a, a
    add b
    cp h
    ld b, e
    ld e, a
    and b
    cpl
    ret nc

    rra
    ldh [$2f], a
    ret nc

    rra
    ldh [rIF], a
    ldh a, [rNR22]
    add sp, $2b
    call nc, $fa05
    ld [bc], a
    db $fd
    pop bc
    cp $a2
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
    nop
    add b
    nop
    and $f8
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc d
    ld [hl], l
    dec d
    ld [$f40b], a
    ld d, l
    xor d
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rra
    ldh [rIE], a
    rst $38
    dec bc
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ld a, a
    ld bc, $01bf
    ld d, a
    ld bc, $01bb
    ld d, a
    ld bc, $03bd
    jp hl


    rla
    rst $38
    rst $38
    or $ff
    rst $38
    nop
    cp a
    ld b, b
    ld d, a
    xor b
    xor a
    ld d, b
    ld e, a
    and b
    xor a
    ld d, b
    ld e, a
    and b
    ccf
    ret nz

    ldh [rP1], a
    push de
    nop
    xor d
    nop
    ld d, l
    nop
    cp $00
    db $fd
    nop
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
    db $dd
    rst $38
    ld a, [bc]
    rst $38
    rrca
    ldh a, [$a3]
    ld hl, sp-$0c
    inc bc
    xor e
    nop
    inc bc
    db $fc
    rlca
    ld hl, sp-$0c
    nop
    add b
    nop
    ld b, c
    nop
    rst $38
    nop
    rrca
    ldh a, [rSB]
    cp $07
    ld hl, sp-$79
    ld hl, sp+$43
    db $fc
    add a
    ld hl, sp+$40
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$03f7], sp
    db $fc
    ld hl, $41fe
    cp $a0
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld d, h
    rst $38
    and c
    cp $07
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld e, a
    and b
    rrca
    ldh a, [$3f]
    ret nz

    cp a
    ld b, b
    rra
    ldh [$bc], a
    ld b, e
    ld b, b
    cp a
    jr nz, @+$01

    ld b, b
    rst $38
