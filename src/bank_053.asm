SECTION "ROM Bank $053", ROMX[$4000], BANK[$53]

    inc b
    jr c, jr_053_4003

jr_053_4003:
    jr c, jr_053_4005

jr_053_4005:
    jr nc, jr_053_4007

jr_053_4007:
    nop
    ld [$0410], sp
    jr c, jr_053_4011

    jr c, jr_053_400f

jr_053_400f:
    jr jr_053_4011

jr_053_4011:
    nop
    ld [$0430], sp
    jr c, jr_053_401b

    jr c, jr_053_4019

jr_053_4019:
    nop
    nop

jr_053_401b:
    nop
    nop
    nop
    nop
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
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    ld [bc], a
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    db $ec
    inc de
    rst $28
    db $10
    rst $38
    nop
    rlca
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
    nop
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    inc bc
    db $fc

jr_053_40ac:
    nop
    rst $38
    rst $38
    nop
    nop
    nop
    and h
    and h
    rst $38
    rst $38

jr_053_40b6:
    rst $38
    rst $38
    or e
    or e
    ld bc, $8239
    inc a
    add d
    inc a
    jp nz, $c618

    nop
    add e
    add hl, sp
    add e
    dec a
    add e
    ld a, l
    add e
    add hl, sp
    ei
    ld bc, $01ff
    rst $38
    ld bc, $81b1
    sub h
    sub h
    call nc, Call_000_20d4
    jr nz, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    db $10
    pop hl
    db $10
    db $e3
    nop
    inc bc
    jr nz, jr_053_40ea

jr_053_40ea:
    jr nz, jr_053_40ac

    db $10
    db $e3
    db $10
    db $e3
    nop
    inc bc
    nop
    nop
    jr nz, jr_053_40b6

    db $10
    db $e3
    db $10
    db $e3
    nop
    inc bc
    nop
    nop
    nop
    nop
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    ld [bc], a
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
    pop af
    ld c, $f3
    inc c
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    cp $01
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
    ldh [rTMA], a
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rst $18
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ret nz

    nop
    ldh a, [rP1]
    rrca
    ldh a, [rP1]
    rst $38
    ldh [$1f], a
    rst $38
    nop
    ld bc, $f0fe
    rrca
    nop
    nop
    ld b, b
    ld b, b
    ld d, $16
    ld hl, sp-$08
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    add b
    sbc b
    pop bc
    cp h
    pop bc
    sbc h
    jp $c798


    add b
    ld b, e
    jr c, jr_053_41cc

    inc e
    ld b, e
    inc a
    ld b, e
    jr jr_053_420e

    nop
    rst $38
    nop

jr_053_4192:
    ld a, [hl]
    nop
    cp b
    add b
    add h
    add h
    inc b
    inc b
    ld [$fd08], sp
    ld bc, $0004
    inc b
    nop
    ld h, h
    add b
    inc h
    ret nz

    inc h
    ret nz

    inc b
    nop
    inc b
    nop
    add h
    nop
    ld c, b
    add b
    ld c, b
    add c
    ld [$8800], sp
    nop
    adc b
    nop
    ld c, b
    add b
    ld c, b
    add c
    ld [$0800], sp
    nop
    nop
    nop
    add b
    add b
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_053_41cc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp a
    ld b, b
    sbc a
    ld h, b
    rst $38
    nop
    rst $28
    db $10
    ccf
    ret nz

    xor a
    ld d, b
    sbc a
    ld h, b
    rst $18
    jr nz, jr_053_4192

    ld d, b
    cp a
    ld b, b
    ld [hl], e
    adc h
    call c, $ec23
    inc de
    call c, Call_053_7423
    adc e
    or b
    ld c, a
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    nop
    rst $38

jr_053_420e:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    db $fd
    ld bc, $00fe
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
    ld hl, sp+$00
    inc c
    ldh a, [rTMA]
    ld hl, sp-$78
    ld [hl], b
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    add b
    add b
    add [hl]
    add b
    rst $18
    call c, Call_053_5c41
    ld b, c
    ld c, h
    ld h, c
    ld e, h
    db $e3
    ret c

    add e
    and b
    add c
    cp h
    add c
    cp h
    pop bc
    sbc h
    pop bc
    cp b
    rst $38
    add b
    cp $80
    ld a, [hl]
    nop
    inc e
    nop
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
    ld h, b
    nop
    db $10
    ret nz

    db $10
    ldh [rNR10], a
    ldh [$0b], a
    ld b, b
    db $eb
    nop
    ld de, $13c0
    ldh [$03], a
    ret nz

    inc bc
    nop
    ld bc, $0300
    nop
    ld a, a
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
    db $fd
    ld [bc], a
    ld a, [$f005]
    rrca
    and b
    ld e, a
    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
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
    pop af
    ld bc, $00fe
    rst $38
    nop
    nop
    nop
    nop

Jump_053_42c3:
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
    inc b
    ld hl, sp+$00
    cp $e0
    ld e, $f8
    inc b
    db $fc
    nop
    db $fc
    nop
    db $ec
    nop
    db $ec
    nop
    db $fc
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
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
    rrca
    ld bc, $010f
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
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ccf
    rlca
    ld a, a
    rrca
    ld a, a
    rrca
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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

jr_053_432d:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

Jump_053_433f:
    rst $38
    ld [$08f7], sp
    rst $30
    jr jr_053_432d

    db $10
    rst $28
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jr nz, jr_053_43a0

    ret nz

    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    ld c, h
    or e
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_053_43a0:
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
    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    dec b
    ld a, [$f708]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $02de
    db $fd
    ld bc, $03fe
    db $fc
    ld bc, $03fe
    db $fc
    inc bc

jr_053_43f1:
    db $fc
    inc bc

jr_053_43f3:
    db $fc
    inc bc

jr_053_43f5:
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld b, b
    cp a
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    jr nz, jr_053_43f1

    jr nz, jr_053_43f3

    jr nz, jr_053_43f5

    add b
    ld a, a
    ret nz

    ccf
    nop
    rst $38
    add b
    ld a, a
    and b
    ld e, a
    add b
    ld a, a
    and e
    ld e, h
    rst $00
    jr c, @+$09

    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$05
    ld a, [$fb04]
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
    ret nc

    cpl
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    and b
    ld e, a
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
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
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
    nop
    rst $38
    ld [bc], a
    db $fd
    inc b
    ei
    dec b
    ld a, [$fd02]
    inc b
    ei
    ld a, [bc]
    push af
    dec b
    ld a, [$fd02]
    ld [de], a
    db $ed
    dec bc
    db $f4
    ld [bc], a
    db $fd
    ld a, [bc]
    push af
    dec d
    ld [$ef10], a
    ld a, [bc]
    push af
    ld a, [hl+]
    push de
    ld [de], a
    db $ed
    ld d, c
    xor [hl]
    sub c
    ld l, [hl]
    dec [hl]
    jp z, $be41

    sub l
    ld l, d
    ld hl, $83de
    ld a, h
    ld hl, $93de
    ld l, h
    ld b, e
    cp h
    dec hl
    call nc, Call_053_48b7
    ld l, a
    sub b
    ld l, a
    sub b
    cp a
    ld b, b
    sbc a
    ld h, b
    ld a, a
    add b
    ccf
    ret nz

    ld l, a

Jump_053_44bb:
    sub b
    ld a, a
    add b
    ld a, a
    add b
    ld e, a
    and b
    ld a, a
    add b
    ld a, a
    add b
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
    xor $11
    xor $11
    push hl
    ld a, [de]
    push bc
    ld a, [hl-]
    pop bc
    ld a, $c5
    ld a, [hl-]
    add l
    ld a, d
    add e
    ld a, h
    add l
    ld a, d
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$06
    ld sp, hl
    ld c, $f1
    ld c, $f1
    ld e, $e1
    ld e, $e1
    inc e
    db $e3
    inc e
    db $e3
    ld a, b
    add a
    cp b
    ld b, a
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
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
    nop
    rst $38
    ld b, b
    cp a
    ld de, $80ee
    ld a, a
    ld bc, $80fe
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
    inc b
    ei
    ld [$00f7], sp
    rst $38
    db $10
    rst $28
    inc b
    ei
    nop
    rst $38
    inc d
    db $eb
    ld [$08f7], sp
    rst $30
    inc d
    db $eb
    ld [$0cf7], sp
    di
    db $10
    rst $28
    adc b
    ld [hl], a
    and c
    ld e, [hl]
    add hl, bc
    or $00
    rst $38
    adc c
    db $76
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
    add b
    ld a, a
    add b
    ld a, a
    inc hl
    call c, $d02f
    rst $08
    jr nc, jr_053_45c0

    or b
    sbc a
    ld h, b
    dec c
    ld a, [c]
    add hl, bc

jr_053_4577:
    or $09
    or $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

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
    cp $01
    db $fc
    inc bc
    cp h
    ld b, e
    ret c

    daa
    and b
    ld e, a
    ldh [$1f], a
    jr nc, jr_053_4577

    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    call nz, $c83b
    scf
    adc b
    ld [hl], a

jr_053_45c0:
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    sbc b
    ld h, a
    jr @-$17

    add hl, de
    and $09
    or $19
    and $03
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0b
    db $f4
    rlca
    ld hl, sp+$0b
    db $f4
    rla
    add sp, $1f
    ldh [$2f], a
    ret nc

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
    rla
    add sp, $16
    jp hl


    ld c, l
    or d
    sbc l
    ld h, d
    sbc d
    ld h, l
    ld d, l
    xor d
    dec [hl]
    jp z, $ea15

    dec sp
    call nz, $a45b
    ld h, e
    sbc h
    dec hl
    call nc, $cc33
    ld c, $f1
    daa
    ret c

    rrca
    ldh a, [rNR22]
    add sp, $1f
    ldh [$37], a
    ret z

    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
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
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
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
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    pop af
    ld c, $f1
    ld c, $e3
    inc e
    pop hl
    ld e, $ca
    dec [hl]
    call c, $fc23
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]
    ret nc

    cpl
    call c, $e823
    rla
    cp b
    ld b, a
    sub c
    ld l, [hl]
    sbc c
    ld h, [hl]
    adc b
    ld [hl], a
    add b
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld c, b
    or a
    ld a, b
    add a
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01

jr_053_46be:
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
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
    cp $01
    cp $01
    cp $01
    ld hl, sp+$07
    cp b
    ld b, a
    ld [hl], e
    adc h
    db $fc
    inc bc
    or $09
    cp $01
    cp $01
    sbc d
    ld h, l
    inc e
    db $e3
    inc d
    db $eb
    jr c, @-$37

    jr c, @-$37

    ld a, h
    add e
    ld a, b
    add a
    ld a, b
    add a
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    ld e, $c1
    ld a, $e1

jr_053_4717:
    ld e, $c0
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
    pop hl
    ld e, $e1
    ld e, $e3
    inc e
    db $e3
    inc e
    jp $c33c


    inc a
    rst $00
    jr c, jr_053_46be

    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    ld c, $f1
    inc c
    di
    ld [$38f7], sp
    rst $00
    ld d, b
    xor a
    jr nc, jr_053_4717

    ld h, b
    sbc a
    ret nz

    ccf
    add c
    ld a, [hl]
    nop
    rst $38
    inc bc
    db $fc
    ld bc, $07fe
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]

jr_053_4763:
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$87]
    ld a, b
    rrca
    ldh a, [$8f]
    ld [hl], b
    add a
    ld a, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$05
    ld a, [$f906]
    rlca

jr_053_477d:
    ld hl, sp+$0e
    pop af
    ld b, $f9
    inc c
    di
    ld b, $f9
    dec c
    ld a, [c]
    rrca
    ldh a, [rNR22]
    add sp, $1e
    pop hl
    rra
    ldh [rTMA], a
    ld sp, hl
    jr nc, jr_053_4763

    jr jr_053_477d

    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    ld bc, $1bfe
    db $e4
    rlca
    ld hl, sp+$1b
    db $e4
    dec d
    ld [$f20d], a
    dec bc
    db $f4
    ld bc, $01fe
    cp $03
    db $fc
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    dec b
    ld a, [$f906]
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    ld b, $f9
    rlca
    ld hl, sp+$04
    ei
    ld [bc], a
    db $fd
    nop
    rst $38
    ld b, d
    cp l
    inc bc
    db $fc
    add $39
    adc a
    ld [hl], b
    rlca
    ld hl, sp+$0b
    db $f4
    dec e
    ld [c], a
    ld e, $e1
    ld [hl], $c9
    ccf
    ret nz

    scf
    ret z

    db $76
    adc c
    db $f4
    dec bc
    ld [hl], l
    adc d
    ei
    inc b
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
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$10ef], sp
    cp c
    ld b, [hl]
    ld e, a
    and b
    ld e, [hl]
    and c
    rra
    ldh [$1f], a
    ldh [$5f], a
    and b
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38
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
    rst $28
    db $10
    sbc $21
    ld e, h
    and e
    xor [hl]
    ld d, c
    cp b
    ld b, a
    cp $01
    ld a, d
    add l
    db $76
    adc c
    ld a, [hl-]
    push bc
    ld a, h
    add e
    ld a, b
    add a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    ret c

    daa
    add sp, $17
    cp b
    ld b, a
    ldh [$1f], a
    ld hl, sp+$07
    or b
    ld c, a
    ld [c], a
    dec e
    ret nc

    cpl
    ldh [$1f], a
    ret nz

    ccf
    ld c, b
    or a
    add b
    ld a, a
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
    ld d, $07
    rla
    jr jr_053_48a4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_053_48b4

    ld [hl+], a
    inc hl
    inc h
    dec h
    rlca
    ld h, $27
    jr z, jr_053_48c5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_053_48d5

jr_053_48a4:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_053_48e5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_053_48b4:
    ld b, d
    ld b, e
    ld b, h

Call_053_48b7:
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

jr_053_48c5:
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

jr_053_48d5:
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

jr_053_48e5:
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
    sub b
    sub b
    sub b
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
    sub b
    sbc d
    sub b
    sub b
    sub b
    sub b
    sub b
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    sub b
    and h
    sub b
    sub b
    sub b
    sub b
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
    sub b
    sub b
    sub b
    sub b
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
    sub b
    cp e
    sub b
    sub b
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    sub b
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
    jr jr_053_49bc

    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_053_49d0

    ld [hl+], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0200

jr_053_49bc:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_053_49d0:
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0401
    inc b
    inc b
    ld bc, $0601
    nop
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
    ld bc, $0101
    ld bc, $0400
    ld b, $06
    ld b, $06
    ld b, $03
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld b, $06
    ld b, $06
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
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
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
    nop
    nop
    dec bc
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
    add hl, bc
    add hl, bc
    ld [$0808], sp
    dec bc
    dec bc
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    rrca
    dec bc
    add hl, bc
    add hl, bc
    ld [$4408], sp
    rst $38
    adc a
    ld a, [hl]
    add $3f
    db $f4
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
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
    rst $30
    ld [$02fd], sp
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    db $fc
    inc bc
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
    sbc a
    ld h, b
    pop de
    ld l, $de
    ld hl, $20df
    ld l, $d1
    nop
    rst $38
    ld bc, $1efe
    pop hl
    dec e
    ld [c], a
    nop
    rst $38
    jr nz, @-$1f

    rst $28
    db $10
    db $eb

jr_053_4b39:
    inc d
    ld b, c
    cp [hl]
    nop
    rst $38
    cp $01
    cp $01
    ld a, a
    add b
    ld a, [hl]
    add c
    nop
    rst $38
    or d
    ld c, l
    ld a, [$f805]
    rlca
    ret nz

    ccf
    rrca
    ldh a, [$7f]
    add b
    ld a, l
    add d
    inc d
    db $eb
    jr nz, jr_053_4b39

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

jr_053_4b67:
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$04
    ei
    ld bc, $00fe
    rst $38
    inc b
    ei
    inc b
    ei
    jr nz, jr_053_4b67

    nop
    rst $38
    ld [$15ff], sp
    rst $38
    ccf
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh [rP1], a
    ld [$c100], a
    nop
    rlc b
    ld e, $1e
    ld a, a
    ld a, a
    pop hl
    pop hl
    pop bc
    ret


    dec sp
    ccf
    cp $fe
    xor b
    add sp, $24
    inc h
    inc h
    inc [hl]
    ccf
    ccf
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $10
    rst $10
    sbc e
    cp e
    xor $ff
    ld [hl], b
    ld a, a
    rst $10
    rst $38
    pop de
    rst $38
    adc e
    rst $38
    rra
    rst $18
    inc b
    db $e4
    sub a
    rst $30
    or l
    or l
    ret nz

    pop bc
    rlca
    rlca
    adc l
    adc a
    ld sp, hl
    rst $38
    ld h, a
    ld a, a
    ld h, a
    ld h, a
    ld a, [$defe]
    cp $86
    rst $38
    add b
    rst $38
    ret nz

    cp $23
    ccf
    ld e, $1e
    add hl, sp
    add hl, sp
    jr nc, jr_053_4c1c

    ld [hl], b
    ld [hl], b
    db $fc
    db $fc
    db $fd
    rst $38
    di
    ld a, a
    rst $30
    rra
    rst $28
    sbc a
    rst $38
    rst $28
    cp $07
    cp $63
    ld a, a
    dec c
    sub $3f
    db $f4
    rrca
    db $fc
    rlca
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld a, [hl]
    add c
    sbc [hl]
    ld h, c
    rst $30
    ld [$20df], sp
    ld a, $c1
    rrca
    ldh a, [rTAC]
    ld hl, sp-$68
    ld h, a

jr_053_4c1c:
    sbc d
    ld h, l
    call nz, $f03b
    rrca
    or $09
    inc [hl]
    sla b
    rst $18
    inc a
    jp $c13e


    ld b, $f9
    add sp, $17
    rlca
    ld hl, sp-$79
    ld a, b
    ld bc, $c0fe
    ccf
    rst $18
    jr nz, @-$38

    add hl, sp
    nop
    rst $38
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
    inc a
    jp Jump_053_6798


    adc b
    ld [hl], a
    add d
    ld a, l
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
    ld a, a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $00fe
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld [bc], a
    rst $38
    ld b, $ff
    add hl, bc
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, [hl]
    ld h, [hl]
    dec sp
    ld a, a
    reti


    reti


    ld l, d
    ld a, e
    ld e, h
    ld e, a
    cp l
    cp a
    ld a, [hl+]
    cp d
    ld l, h
    ld l, h
    ld e, $1e
    ld c, a
    rst $08
    add a
    rst $00
    add e
    add e
    nop
    nop
    dec c
    dec e
    add hl, de
    rra
    db $10
    inc de
    inc e
    sbc h
    ld de, $849f
    add a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    inc bc
    inc bc
    add a
    add a
    add [hl]
    add [hl]
    dec bc
    dec bc
    adc c
    adc c
    add b
    ret nz

    ld a, b
    ld a, b
    db $eb
    rst $38
    and c
    cp l
    ccf
    cp a
    sbc l
    sbc a
    ret z

    call z, $ffff
    ld [hl], l
    db $fd
    inc e
    rst $38
    jp nz, $b2fb

    or d
    ld sp, hl
    ld sp, hl
    or $f6
    dec hl
    db $eb
    or h
    rst $30
    rst $08
    rst $28
    ld a, c
    ld a, c
    inc a
    inc a
    ld [hl], c
    ld a, l
    dec de
    rra
    rra
    rra
    cpl
    cp a
    or c
    or e
    ld l, b
    ld a, c
    ld b, b
    ld a, b
    ldh a, [$f8]
    ret c

    ret c

    jr jr_053_4d06

    ld [$c608], sp
    nop
    ld hl, sp-$60
    ld sp, hl
    ld h, b
    rst $38
    inc l
    cp $f8
    rst $38

jr_053_4cfb:
    xor e
    rst $38
    ld [$ebff], a
    ld bc, $81ff
    ld a, a
    add b
    ld a, a

jr_053_4d06:
    nop
    rst $38
    inc b
    ei
    ld [de], a
    db $ed
    ld a, [de]
    push hl
    inc c
    di
    and $19
    jr jr_053_4cfb

    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld b, $f9
    add b
    ld a, a
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

jr_053_4d29:
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, d
    cp l
    add b
    ld a, a
    inc b
    ei
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_053_4d29

    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    cp $ff
    ld a, [$f8ff]
    rst $38
    db $ed
    rst $38
    ret z

    rst $38
    ret nc

    rst $38
    add h
    rst $38
    add sp, -$01
    ld b, d
    rst $38
    sub a
    rst $38
    rrca
    rst $38
    add hl, de
    db $fd
    nop
    db $fc
    nop
    rst $38
    nop
    ld a, a
    nop
    inc d
    ld d, h
    jp nz, $49ca

    jp hl


    ld [hl], a
    ld [hl], a
    di
    ei
    ld l, c
    ld l, c
    dec [hl]
    dec a
    nop
    ld [bc], a
    rst $28
    nop
    db $e3
    nop
    rst $30
    nop
    ei
    nop
    adc a
    nop
    add a
    nop
    inc hl
    nop
    add hl, sp
    nop
    adc [hl]
    cp $26
    cp $1c
    db $fc
    add d
    or $e2
    cp $64
    ld h, h
    ld h, c
    ld h, c
    db $10
    db $10
    ldh [rP1], a
    db $fc
    nop
    or $00
    cp $00
    di
    nop
    rra
    nop
    ld a, a
    nop
    ld h, [hl]
    nop
    ld e, b
    ld e, b
    nop
    nop
    ld b, c
    ld b, c

jr_053_4db6:
    ld bc, $0181
    ld bc, $0000
    ldh [$e0], a
    add b
    add b
    sub $d6
    cp a
    rst $38
    jr nc, jr_053_4db6

    ld [hl], h
    ld [hl], h
    db $e4
    db $e4
    xor h
    xor h
    adc [hl]
    adc [hl]
    add a
    add a
    ld b, c
    ld b, c
    ld d, l
    ld e, l
    ccf
    rst $38
    dec de
    rst $38
    ld e, h
    cp $a6
    and [hl]
    add b
    add b
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    nop
    nop
    db $10
    jr nc, jr_053_4e1b

    inc a
    sub d
    sub e
    dec h
    daa
    ld h, [hl]
    daa
    sub b
    db $10
    rst $38
    and b
    rst $38
    ret nz

    ei
    ret nz

    rst $38
    jp z, $e0ff

    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
    rst $30
    ld a, [de]
    rst $38
    ld [$04ff], sp
    rst $38
    inc c
    rst $38
    ld b, $ff
    add [hl]
    ld a, a
    add h
    ld a, a
    dec b
    rst $38
    rst $38
    di
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38

jr_053_4e1b:
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    cp $ff
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
    ei
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    add l
    rst $38
    nop
    rst $38
    ld c, $ff
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    rst $00
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld h, e
    rst $38
    adc l
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rlca
    ld a, a
    inc c
    rst $38
    ld bc, $01ff
    cp a
    inc bc
    rra
    inc bc
    rst $38
    ld bc, $00fe
    add d
    sub d
    ldh a, [$f4]
    inc a
    ld a, h
    or b
    or b
    or h
    cp h
    ld d, h
    ld d, h
    add hl, sp
    add hl, sp
    add hl, bc
    dec de
    ld c, a
    ld c, a
    dec de
    rra
    adc c
    adc e
    dec de
    rra
    ccf
    ccf
    ld [hl], a
    ld a, a
    rla
    rra
    ld [bc], a
    ld e, $36
    ld a, $87
    sbc a
    add d
    cp [hl]
    ld c, $3e
    ld c, $6e
    inc c
    inc c
    ld b, b
    ld b, b
    ld b, h
    ld b, h
    adc a
    adc a
    and $e6
    add c
    add c
    ld h, a
    rst $20
    ld d, l
    push af
    ret z

    ret c

    ld h, l
    ld a, l
    di
    ld a, [c]
    cp $fe
    ldh a, [$fe]
    add b
    cp $be
    cp $08
    db $fc
    nop
    db $fc
    nop
    db $fc
    inc c
    db $fc
    ccf
    ccf
    ld e, a
    rra
    ld bc, $801f
    rrca
    add b
    inc bc
    ldh [rSB], a
    ldh [rP1], a
    ldh a, [rP1]
    scf
    ccf
    adc [hl]
    xor [hl]
    jp z, Jump_053_64ca

    ld h, h
    ld a, [c]
    or $d2
    jp nc, Jump_053_7c7c

    db $10
    ld de, $0001
    sbc d
    db $10
    ld a, e
    db $10
    cp [hl]

jr_053_4ef7:
    jr jr_053_4ef7

    jr @+$01

    rst $38
    rst $38
    ld [de], a
    rst $38
    rst $38
    dec bc
    db $f4
    rrca
    ldh a, [rTIMA]
    ld a, [$fc03]
    ld bc, $00fe
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add c
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    dec hl
    rst $38
    ld [hl], a
    rst $38
    and a
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    add d
    rst $38
    inc b
    rst $38
    inc e
    rst $38
    ld h, c
    rst $38
    inc de
    rst $38
    ld a, a
    rst $38
    db $fc
    ld [bc], a
    rst $38
    add b
    rst $38
    ld b, e
    db $fc
    add b
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    dec b
    rst $38
    ld d, $ff
    ld bc, $42fe
    cp l
    inc d
    rst $38
    rst $38
    ldh [rIE], a
    ret nz

    cp $00
    db $eb
    nop
    ldh [rP1], a
    ldh [rP1], a
    rst $38
    nop
    rra
    db $e4
    ld a, a
    rst $38
    db $f4
    ldh [$ef], a
    ldh [$fe], a
    ldh [rIE], a
    ldh [$a7], a
    ldh [rNR22], a
    ldh [$08], a
    ldh [rNR44], a
    ret nz

    rst $38
    rra
    scf
    db $e4
    ccf
    rst $10
    ld a, l
    pop af
    rst $30
    rla
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$81]
    ld a, a
    or a
    ret c

    ret nz

    ccf
    ld a, a
    add e
    cp $fd
    ret nz

    ld a, a
    rst $28
    stop
    rst $38
    ld [hl], a
    nop
    xor [hl]
    ld [bc], a
    rst $38
    nop
    ccf
    nop
    nop
    nop
    sbc a
    nop
    ld [de], a
    nop
    ld a, [hl]
    ld a, a
    rst $38
    rst $38
    rst $18
    rst $18
    add a
    add a
    ld hl, $3081
    ld bc, $00f8
    ld a, b
    nop
    ld a, [hl]
    nop
    ld b, b
    ld [hl], b
    add h
    cp h
    or d
    or [hl]
    ld c, c
    rst $28
    dec [hl]
    scf
    ld e, [hl]
    ld e, a
    ld l, c
    ld l, c
    ld bc, $fc01
    nop
    cp [hl]
    nop
    rst $38
    ld hl, $25ff
    rst $38
    daa
    rst $38
    ld a, e
    ei
    ld hl, $ffff
    jr nc, jr_053_5002

jr_053_5002:
    or b
    nop
    ld [hl], b
    nop
    and b
    nop
    and b
    nop
    ldh [rP1], a
    ret nz

    nop
    sub $00
    ldh a, [rP1]
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld e, [hl]
    add b
    ei
    nop
    ld a, [hl]
    add b
    rst $38
    nop
    rra
    ldh [$3f], a
    ret nz

jr_053_5024:
    ccf
    ret nz

    ccf
    ret nz

    dec a
    ret nz

    cp $01
    inc b
    ei
    rra
    ldh [rNR32], a
    db $e3
    ld b, $f9
    rlca

jr_053_5035:
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
    or d
    rst $38
    ld l, h
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    jr z, @+$01

    ld b, b
    rst $38
    ld c, $f1
    inc a
    jp $ff03


    or b
    ld a, a
    inc b
    rst $38
    ld [hl], e
    db $fc
    add hl, bc
    cp $08
    rst $38
    db $10
    rst $38
    nop
    rst $38
    db $fd
    ld [bc], a
    jr nc, jr_053_5035

    ld [bc], a
    db $fd
    ld d, b
    rst $38
    nop
    rst $38
    ld b, h
    ei
    nop
    rst $38
    ld b, b
    cp a
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ld h, h
    sbc e
    adc b
    ld [hl], a
    ld bc, $94fe
    rst $38
    rst $38
    ld a, [$18ff]
    rst $28
    db $10
    xor a
    db $10
    rst $08
    db $10

jr_053_508a:
    ld l, a
    db $10
    rst $28
    db $10
    ld l, a
    db $10
    adc a
    or b
    rst $08
    ld [hl], h
    adc a
    jr nc, jr_053_5024

    ret nc

    inc c
    ldh a, [$cc]
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$dd]
    ldh [$d8], a
    ldh [$d8], a
    ldh [$d8], a
    ldh [$df], a
    ldh [rIE], a
    ldh [$bf], a
    ldh [$3f], a
    ld h, b
    rra
    pop hl
    cp a
    ld h, b
    sbc a
    ld h, b
    ld e, a
    ldh [$df], a
    ld h, b
    db $fc
    ld b, b
    ld a, [hl]
    ret nz

    ld a, h
    ret nz

    ld a, b
    ret nz

    ld [hl], b
    ret nz

    inc l
    ret nz

    ld a, h
    ret nz

    jr nz, jr_053_508a

    sub b
    ret nz

    or b
    ret nz

    ld [hl+], a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [hl]
    nop
    ld a, b
    nop
    db $10
    add b
    nop
    inc bc
    nop
    rlca
    nop
    ld d, c
    nop
    ld h, c
    nop
    and b
    nop
    sbc a
    nop
    rst $38
    ld b, c
    rst $38
    ld sp, hl
    rst $38
    push hl
    rst $38
    rst $08
    rst $38

Jump_053_50ff:
    db $eb
    ld bc, $1000
    nop
    ccf
    nop
    ld [bc], a
    nop
    rrca
    nop
    nop
    nop
    ld bc, $8300
    nop
    nop
    nop
    ld de, $0100
    nop
    ld b, c
    nop
    ld h, b
    nop
    reti


    nop
    ld c, c

jr_053_511d:
    nop
    rlc b
    ret


    nop
    xor l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rrca
    ldh a, [$bf]
    ld b, b
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
    ld a, a
    add b
    jr nz, jr_053_511d

    nop
    rst $38
    rst $38
    rst $38
    rst $38
    jr z, @+$01

    ldh a, [rIE]
    rst $30
    rst $38
    cp l
    rst $38
    rst $10
    rst $38
    sub a
    rst $38
    jp $ff00


    rrca
    rst $38
    ld bc, $3dff
    jp $cf30


    ld a, [c]
    rrca
    ld d, b
    xor a
    nop
    rst $38
    and b
    ld a, a
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld d, [hl]
    ld sp, hl
    ld h, a
    ld hl, sp+$23
    db $fc
    ld [de], a
    rst $38
    inc e
    rst $38
    sbc [hl]
    ld a, a
    ld [hl], b
    rst $38
    ld bc, $10ff
    rst $28
    nop
    rst $38
    add [hl]
    rst $38
    rst $38
    set 7, a
    cp $ff

jr_053_5185:
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ld [bc], a
    db $fd
    db $10
    rst $28
    nop
    rst $38
    ld [bc], a
    db $fd
    ldh [$1f], a
    rst $38
    nop
    sbc a
    ld h, b
    rst $38
    nop
    rst $30
    ld [$04fb], sp
    di
    inc c
    ldh a, [rIF]
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    dec bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $78ff
    add a
    ld a, l
    add e
    ld hl, sp+$07
    jr c, jr_053_5185

    call nz, $f53f
    ld c, $e8
    rra
    add sp, $1f
    reti


    ld a, $b1
    ld a, [hl]
    ldh a, [$7f]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    add b
    ld hl, sp+$01
    ldh a, [rSB]
    ldh [$03], a
    pop bc
    ld b, a
    add c
    rrca
    add c
    inc [hl]
    db $fc
    inc b
    db $fc
    ld a, b
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$a0]
    ldh a, [rNR41]
    ldh a, [$f0]
    nop
    ldh a, [rSTAT]
    ldh a, [$c1]
    pop af
    db $e3
    pop af
    and a
    ld a, [c]
    ld h, a
    db $fc
    ld e, a
    db $e4
    rst $20
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
    inc bc
    rlca
    inc bc
    rlca
    ld bc, $0307
    rlca
    ld b, $07
    ld [bc], a
    rlca
    ld b, $07
    inc bc
    rlca
    rlca
    rlca
    inc bc
    rlca
    rlca
    rlca
    inc bc
    rlca
    ld [bc], a
    rlca
    inc bc
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    inc bc
    rlca
    inc b
    rlca
    inc b
    rlca
    dec b
    rlca
    dec b
    rlca
    db $fd
    rlca
    ei
    inc bc
    add c
    ld bc, $0040
    or h
    nop
    ldh [rP1], a
    db $e3
    nop
    rst $08
    nop
    ret


    nop
    ld h, c
    rst $38
    nop
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    add b
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, h
    cp a
    nop
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    jr nc, @+$01

    add b
    ld a, a
    db $fc
    inc bc
    add $39
    cp $01
    nop
    rst $38
    jr nc, @+$01

    and b
    rst $38
    rrca
    ldh a, [rIF]
    ldh a, [$4e]
    pop af
    jr nz, @+$01

    ld bc, $55ff
    rst $38
    ld a, b
    rst $38
    db $f4
    rst $38
    call nz, Call_000_21ff
    rst $18
    ld [hl], b
    adc a
    ld b, d
    cp a
    inc b
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld hl, $1cde
    db $e3
    db $fd

jr_053_529b:
    inc bc
    pop af
    rrca
    db $e3
    rra
    add $3f
    adc [hl]
    ld a, a
    inc c
    rst $38
    dec d
    cp $00
    rst $38
    inc c
    di
    inc b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [$20f7], sp
    rst $18
    jr nz, jr_053_529b

    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    add e
    ld a, h
    nop
    rst $38
    add c
    ld a, [hl]
    db $10
    rst $28
    sub b
    ld l, a
    sbc b
    ld h, a
    ld hl, $06de
    ret nz

    ld b, [hl]
    add b
    ld [bc], a
    add b
    adc d
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld a, [bc]
    nop
    ld c, $00
    dec de
    inc b
    ld c, $00
    inc de
    inc c
    inc de
    inc c
    dec hl
    inc d
    dec sp
    inc b
    ld e, e
    inc h
    cp e
    ld b, h
    inc b
    ret nz

    inc b
    ret nz

    inc b
    ret nz

    inc b
    ret nz

    inc b
    ret nz

    inc b
    ret nz

    inc b
    ret nz

    inc b
    ret nz

    inc b
    ret nz

    inc h
    ret nz

    inc h
    ret nz

    inc h
    ret nz

    inc h
    ret nz

    inc h
    ret nz

    inc h
    ret nz

    inc h
    ret nz

    inc h
    ret nz

    inc [hl]
    ret nz

    ld [hl], h
    ret nz

    ld [hl], h
    ldh [$74], a
    ldh [$bc], a
    ldh [$bc], a
    ldh [$bc], a
    ldh [$dc], a
    ldh [$bc], a
    ldh [$bc], a
    ldh [$3c], a
    ldh [$bc], a
    ldh [$bc], a
    ldh [$bc], a
    ldh [$7c], a
    ldh [$bc], a
    ldh [$3c], a
    ldh [$3c], a
    ldh [$3c], a
    ldh [$3c], a
    ldh [$3c], a
    ldh [$3c], a
    ldh [$7c], a
    ldh a, [$be]
    ldh a, [$3e]
    ldh a, [$3e]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ld hl, sp-$02
    ld a, b
    cp $fc
    rst $38
    ld b, c
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    add hl, bc
    rst $38
    rrca
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    db $fc
    ccf
    rst $38
    ld a, a
    rst $38
    jr @+$01

    inc d
    rst $38
    jr nz, @+$01

    rlca
    ld hl, sp+$27
    ld hl, sp+$63
    db $fc
    ldh a, [rIE]
    ccf
    rst $38
    add hl, de
    rst $38
    or e
    ld a, a
    inc bc
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    db $fc
    rst $38
    inc bc
    db $fc
    ccf
    ret nz

    ld a, a
    add b
    rlca
    ld hl, sp+$01
    cp $b1
    ld a, [hl]
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    xor h
    rst $38
    ld [c], a
    db $fd
    ld h, a
    ld hl, sp-$31
    ldh a, [$cf]
    ldh a, [rNR34]
    pop hl
    ld a, $c1
    ld a, e
    add h
    ld a, a
    add b
    rst $38
    nop
    ldh [$1f], a
    inc b
    ei
    ret nz

    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$2f]
    ret nc

    inc bc
    db $fc
    ld [bc], a
    db $fd
    inc c
    di
    inc c
    di
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rTAC], a
    ld hl, sp+$02
    db $fd
    inc de
    db $ec
    ld h, [hl]
    sbc c
    ld b, [hl]
    cp c
    rra
    pop hl
    add hl, sp
    rst $00
    ld [bc], a
    rst $38
    jr c, jr_053_53d2

jr_053_53d2:
    inc c
    nop
    jr c, jr_053_53d6

jr_053_53d6:
    jr c, jr_053_53d8

jr_053_53d8:
    jr c, jr_053_53da

jr_053_53da:
    stop
    jr c, jr_053_53de

jr_053_53de:
    jr jr_053_53e0

jr_053_53e0:
    db $fc
    nop
    xor a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld e, [hl]
    nop
    ld a, a
    nop
    cp $00
    ld sp, hl
    nop
    db $10
    rst $38
    db $e4
    rst $38
    or b
    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    rst $38
    rst $38
    dec b
    rst $38
    dec de
    rst $20
    add b
    rst $38
    sub c
    rst $38
    add hl, bc
    rst $38
    ld h, d
    sbc a
    db $ec
    rra
    xor $1f
    db $fc
    rra
    adc h
    ld a, a
    dec hl
    db $fc
    add e
    db $fc
    adc c
    cp $c0
    rst $38
    inc l
    rst $38
    jr nz, @+$01

    ld e, $ff
    ld a, a
    rst $38

jr_053_5440:
    nop
    rst $38
    rst $18
    jr nz, jr_053_5440

    inc b
    rst $38
    nop
    sbc b
    ld h, a
    ld hl, sp+$07
    ld [bc], a
    db $fd
    nop
    rst $38
    ret


    rst $38
    jr c, @+$01

    ld [$3cff], sp
    jp Jump_000_01fe


    cp $01
    ld a, [hl]
    add c
    cp $01
    cp l
    ld b, e
    ld sp, hl
    rlca
    add d
    ld a, a
    sbc e
    ld a, a
    rlca
    rst $38
    ld bc, $f1ff
    rrca
    db $fc
    inc bc
    db $fd
    inc bc
    ld a, [c]
    rrca
    ld [bc], a
    rst $38
    inc d
    rst $28
    inc c
    rst $38
    inc c
    rst $38
    adc l
    ld a, [hl]
    ret z

    ccf
    ldh [$7f], a
    ld h, b
    rst $38
    nop
    rst $38
    dec bc
    db $f4
    add a
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    ld bc, $00fe
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    inc e
    nop
    ld sp, $e400
    nop
    cp $01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    jp nz, Jump_000_05ff

    rst $38
    daa
    rst $38
    ld l, a
    nop
    rst $38
    inc bc
    db $fc
    ld b, b
    cp a
    ld [$08ff], sp
    rst $30
    nop
    rst $38
    nop
    rst $38
    rst $08
    ccf
    ret nc

    ccf
    ret z

    ccf
    call $0c3f
    rst $38
    add b
    rst $38
    ld a, b
    add a
    inc de
    rst $28
    rlca
    rst $38
    ld e, h
    cp a
    inc e
    rst $38
    cp b
    ld a, a
    jr c, @+$01

    ld a, b
    rst $38
    ld a, c
    rst $38
    ld [hl], a
    rst $38
    cp $ff
    rst $00
    rst $38
    sbc $ff
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld hl, sp+$7f
    ld a, l
    rst $38
    rst $20
    rst $38
    jp Jump_000_08ff


    rst $30
    ld [bc], a
    rst $38
    or b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    cpl
    ret nc

    rst $30
    adc b
    ld a, a
    add b
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, [$0f05]
    ldh a, [$d8]
    daa
    ld a, h
    add e
    ld d, b
    xor a
    ld hl, sp+$07
    db $f4
    dec bc
    ldh [$1f], a
    pop af
    ld c, $aa
    ld d, l
    nop
    nop
    ldh [rP1], a
    db $dd
    ld [hl+], a
    ld a, [$0005]
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
    ld b, $00
    inc bc
    nop
    ld bc, $1f00
    nop
    rlca
    nop
    rlca
    nop
    dec de
    nop
    inc sp
    nop
    ld l, e
    nop
    rrca
    nop
    ld b, b
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, c
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ld b, d
    rst $38
    nop
    db $fd
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    ld a, $ff
    rst $38
    rst $38
    ld b, $ff
    ld [$00f7], sp
    rst $38
    rst $38
    ld a, a
    rst $38
    adc $ff
    inc e
    rst $38

jr_053_5587:
    dec a
    rst $38
    cp [hl]
    rst $38
    add d
    rst $38
    ld c, $ff
    ld a, a
    nop
    rst $38
    ld b, a
    cp b
    ccf
    ret nz

    ld a, a
    add b
    ld a, h
    add e
    ld [hl], b
    adc a
    add c
    rst $38
    ld b, $ff
    add b
    rst $38
    ld bc, $1efe
    pop hl
    ld a, a
    add b
    rra
    ldh [$9f], a
    ldh [$80], a
    rst $38
    ldh [rIE], a
    ld l, e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $30
    sub b
    ld l, a
    ld bc, $09ff
    rst $30
    jr c, jr_053_5587

    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $30
    ld [$20df], sp
    rra
    ldh [$fb], a
    inc b
    inc bc
    db $fc
    jr nc, @+$01

    inc b
    rst $38
    ld h, b
    sbc a
    rrca
    ldh a, [$8f]
    ld [hl], b
    rra
    ldh [$3f], a
    pop bc
    nop
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
    ld b, $00
    ld a, d
    add l
    nop
    rst $38
    inc a
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
    ld bc, $0700
    nop
    add a
    nop
    ld b, a
    nop
    sub a
    nop
    cpl
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    and $19
    jp $c03c


    ccf
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ldh a, [rIE]
    daa
    rst $38
    daa
    rst $38
    cp b
    rst $38
    db $10
    rst $38
    ld a, a
    ld e, $e1
    ld a, e
    add h
    ld a, a
    add b
    ld a, a
    ldh [rSVBK], a
    rst $38
    ret z

    rst $38
    ld l, l
    rst $38
    rrca
    rst $38
    ld a, [hl]
    rst $38
    db $e3
    db $fc
    rra
    ldh [rP1], a
    rst $38
    add hl, bc
    rst $38
    dec a
    rst $38
    add b
    rst $38
    call c, Call_053_68e3
    rst $30
    scf
    ld hl, sp+$19
    cp $1c
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld hl, sp-$01
    ld [hl], e
    rst $38
    rst $38
    ld hl, sp-$01
    rst $18
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    sbc a
    add e
    rst $38
    ld b, $ff
    inc a
    rst $38
    ldh a, [rIE]
    set 7, h
    pop af
    xor $f9
    and $79
    or $73
    db $fc
    ld a, b
    rst $38
    ld c, b
    rst $38
    inc h
    rst $38
    call nz, $c73f
    ccf
    rst $00
    ccf
    rst $20
    rra
    rst $28
    rra
    dec de
    rst $38
    nop
    rst $38
    ld bc, $c7ff
    ccf
    ld a, [c]
    rrca
    ld hl, sp+$07
    db $fc
    inc bc
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    nop
    ld b, $00
    inc c
    nop
    rrca
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    sbc a
    ld h, b
    db $fc
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    sub c
    nop
    nop
    nop
    ld a, l
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    db $fd
    ld [bc], a
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc h
    rst $38
    pop af
    rst $38
    push af
    rst $38
    ret c

    rst $38
    inc bc
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    dec b
    rst $38
    add a
    rst $38
    rst $20
    rst $38
    ld sp, hl
    rst $38
    db $dd
    rst $38
    rra
    rst $38
    rra
    nop
    rst $38
    pop bc
    ccf
    rst $00
    ccf
    ccf
    rst $38
    sbc l
    rst $38
    dec e
    rst $38
    dec c
    rst $38
    db $ec
    rra
    ld [hl], b
    adc a
    rst $38
    nop
    cp [hl]
    ld b, c
    rst $38
    nop
    scf
    ret z

    rra
    ldh [rIF], a
    ldh a, [rTMA]
    ld sp, hl
    jr nz, @+$01

    ld sp, hl
    cp $f9
    cp $f0
    rst $38
    ld [hl], b
    rst $38
    ld a, e
    db $fc
    inc a
    rst $38
    adc [hl]
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    ld bc, $f8ff
    rlca
    cp $01
    ldh [$1f], a
    ei
    inc b
    cp $01
    inc b
    ei
    nop

jr_053_5755:
    rst $38
    ld bc, $03fe
    db $fc
    rrca
    ldh a, [rHDMA3]
    xor h
    rra
    ldh [$87], a
    ld hl, sp-$7f
    cp $08
    rst $38
    jr @+$01

    add d
    rst $38
    ld [de], a
    db $ed
    jr jr_053_5755

    ld a, $c1
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    ld b, b
    nop
    rst $38
    add b
    ld a, a
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
    ld bc, $0300
    nop
    rrca
    nop
    dec de
    nop
    ccf
    nop
    rrca
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    rst $18
    nop
    rst $38
    nop
    rlca
    nop
    or $00
    ldh a, [rP1]
    db $fd
    nop
    cp a
    nop
    db $e3
    inc e
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
    rlca
    nop
    adc a
    nop
    adc a
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    nop
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
    add b
    rst $38
    di
    rst $38
    ld h, c
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld h, b
    rlca
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ld bc, $04ff
    rst $38
    ret nz

    rst $38
    ld c, b
    rst $30
    nop
    rst $38
    ld d, l
    rst $38
    ld [hl], b
    rst $38
    ld a, [c]
    db $ed
    rst $38
    ldh [$f4], a
    ei
    ld a, [hl+]
    rst $38
    nop
    rst $38
    jr @+$01

    dec e
    cp $8c
    ld a, a
    call z, $ce3f
    ccf
    ld c, [hl]
    cp a
    adc [hl]
    ld a, a
    dec l
    sbc $08
    rst $38
    ld [$c4ff], sp
    ccf
    ld bc, $61ff
    sbc a
    ld de, $30ef
    rst $08
    inc e
    db $e3
    inc a
    jp $de21


    add b
    rst $38
    adc $f1
    ret nz

    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ld b, e
    cp a
    ret nz

    ccf
    inc b
    ei
    nop
    rst $38
    ld e, b
    and a
    cp $01
    db $ec
    inc de
    sbc b
    ld h, a
    ld [hl], e
    adc a
    di
    rrca
    add sp, $1f
    call z, Call_053_593f
    cp [hl]
    ld hl, $87fe
    ld hl, sp+$07
    ld hl, sp+$30
    rst $38
    ld bc, $03ff
    inc bc
    ld [bc], a
    inc bc
    ld b, $03
    ld b, $03
    ld b, $03
    ld b, e
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    add d
    rlca
    nop
    ld b, $01
    ld b, $0d
    ld b, $05
    cp $4f
    rst $38
    ld hl, sp+$07
    nop
    nop
    nop
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
    jr nz, jr_053_5892

jr_053_5892:
    jr nz, jr_053_5894

jr_053_5894:
    nop
    nop
    nop
    nop
    inc bc
    nop
    rlca
    nop
    inc bc
    nop
    ld [hl], a
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
    ld b, e
    nop
    ret


    nop
    add b
    nop
    cp b
    nop
    db $fc
    nop
    db $fc
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    jr nc, jr_053_58be

jr_053_58be:
    ldh a, [rP1]
    ld sp, hl
    nop
    di
    nop
    ei
    nop
    ei
    nop
    ld a, [$ff00]
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
    or b
    ld c, a
    ld hl, $9fdf
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
    ld bc, $80ff
    rst $38
    and b
    rst $38
    inc d
    rst $38
    nop
    rst $38
    xor a
    rst $38
    dec bc
    rst $38
    ld bc, $e0ff
    rst $38
    add b
    rst $38
    ccf
    rst $38
    ld a, [$a0ff]
    rst $38

Call_053_58ff:
    inc e
    ld c, $ff
    inc bc
    rst $38
    ld b, c
    cp a
    inc b
    ei
    ld bc, $30ff

jr_053_590b:
    rst $38
    nop
    rst $38
    ld d, c
    cp a
    nop
    rst $38
    ld a, a
    add b
    ld h, a
    sbc b
    ld a, a
    add b
    ld a, a
    add b
    rlca
    ld hl, sp-$30
    cpl
    ld b, b
    rst $38
    ld b, a
    ld hl, sp+$0f
    ldh a, [$9b]
    ld h, h
    rra
    ldh [rNR41], a
    rst $18
    and b
    rst $18
    adc b
    rst $30
    ld a, a
    ldh [$7f], a
    ldh a, [$7b]
    db $fc
    ld a, e
    db $fc
    add e
    cp $21
    rst $18
    jr nc, jr_053_590b

    nop
    rst $38
    nop

Call_053_593f:
    rst $38
    ld [bc], a
    db $fd
    inc hl
    db $fc
    ld hl, sp-$01
    jr nc, @+$01

    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    and b
    ld e, a
    and b
    ld e, a
    add b
    ld a, a
    add b
    ld a, a
    inc b
    ei
    inc b
    ei
    add b
    rst $38
    inc bc
    add b
    add b
    nop
    nop
    nop
    add b
    nop
    inc e
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
    cp $00
    ld hl, sp-$01
    ld a, a
    rst $38
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
    inc bc
    nop
    jr nz, jr_053_598e

jr_053_598e:
    nop
    nop
    nop
    nop
    ld c, $00
    dec hl
    nop
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
    nop
    rst $38
    nop
    db $db
    nop
    ld b, a
    nop
    jp $e000


    nop
    ldh [rP1], a
    and b
    nop
    ld [$0000], sp
    nop
    ld bc, $0e00
    nop
    dec a
    nop
    ld c, c
    nop
    ld sp, hl
    nop
    rst $38
    nop
    ld sp, hl
    nop
    di
    nop
    ei
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, [$fe05]
    ld bc, $7b84
    db $10
    rst $28
    inc bc
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
    jr nz, @+$01

    ld bc, $00ff
    rst $38
    inc b
    rst $38
    ld a, $ff
    add l
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    xor b
    rst $38
    nop
    rst $38
    jr nc, @+$01

jr_053_5a09:
    ld d, b
    rst $38
    ret nz

    rst $38
    inc c
    rst $38
    dec bc
    ld [hl], b
    rst $38
    sbc b
    ld a, a
    ld hl, sp+$0f
    db $f4
    rrca
    sub d
    ld l, a
    pop de
    cpl
    sub c
    ld l, a
    nop
    rst $38
    jr jr_053_5a09

    call c, $cc23
    inc sp
    ld a, [c]
    rrca
    nop
    rst $38
    nop
    rst $38

jr_053_5a2c:
    cp [hl]
    ld b, c
    rst $18
    jr nz, jr_053_5a48

    add sp, -$39
    jr c, jr_053_5a2c

    ld [$00ff], sp
    db $fd

jr_053_5a39:
    ld [bc], a
    rst $38
    add b
    sbc a
    ldh [$7e], a
    pop hl
    jr @+$01

    nop
    rst $38
    add b
    ld a, a
    ld [bc], a
    db $fd

jr_053_5a48:
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld h, c
    sbc [hl]
    nop
    rst $38
    jr jr_053_5a39

    rlca
    ld hl, sp+$00
    rst $38
    ld sp, $73ce
    adc h
    ldh a, [rIF]
    ret nz

    ccf
    ld h, d
    sbc l
    sbc a
    ld a, a
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
    inc b
    nop
    ccf
    ret nz

    rst $38
    rst $38
    add a
    ld a, a
    rrca
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    rrca
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $38
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rra
    nop
    rra
    nop
    rra
    nop
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
    ld hl, sp+$07
    ret nc

    cpl
    ret nz

    ccf
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    nop
    rst $38

jr_053_5adb:
    nop
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
    or b
    rst $38
    jr c, @+$01

    ld hl, $27ff
    rst $38
    add [hl]
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, e
    ld a, e
    add b
    add b
    ldh a, [$f0]
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ld a, e
    ld a, a
    ld e, $1f
    ld b, a
    rlca
    ld h, c
    ld bc, $0030
    ret z

    nop
    ld b, $ff
    jr c, jr_053_5adb

    inc a
    jp $d12e


    ccf
    ret nz

    ccf
    ret nz

    adc h
    di
    rst $00
    ld hl, sp-$20
    rst $38
    ld a, b
    rst $38
    cp $ff
    ldh a, [rIE]
    ldh [rIE], a
    ld [hl], l
    cp $71
    cp $19
    cp $9c
    ld a, a
    adc h
    ld a, a
    add [hl]
    ld a, a
    add e
    ld a, a
    sub c
    ld l, a
    add b
    ld a, a
    db $10
    rst $28
    ld [hl], d
    adc l
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [$03ff], sp
    rst $38
    add e
    ld a, a
    ld b, c
    cp a
    ld c, b
    or a
    inc e
    db $e3
    ld [$ccf7], sp
    ld [hl], e
    dec h
    jp c, $f30c

    rra
    ldh [$3f], a
    ldh [$4e], a
    or c
    nop
    rst $38
    db $fc
    rst $38
    sbc a
    ld a, a
    or d
    dec e
    inc [hl]
    jr jr_053_5b99

    jr @+$12

    jr c, @+$0a

    jr nc, jr_053_5baf

    jr nc, @+$0e

    jr nc, jr_053_5bad

    ld bc, $007b
    ld a, a
    nop
    ld a, a
    nop
    sbc $21
    ldh [rIE], a
    db $fd
    cp $c0
    ccf
    db $e3
    inc e
    db $e4
    dec de
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
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
    rst $38
    rlca
    rst $38

jr_053_5b99:
    rlca
    rst $38
    rlca
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
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $28

jr_053_5bad:
    rra
    rst $28

jr_053_5baf:
    rra
    rst $28
    rra
    rst $28
    rra
    rst $18
    ccf
    rra
    rst $38
    rra
    rst $38
    cp a
    ld e, a
    rst $18
    ccf
    rra
    rst $38
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
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
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
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld l, b
    jr nz, jr_053_5bf2

jr_053_5bf2:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], l
    ld [hl], l
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $fc
    db $fc
    ld a, a
    rst $38
    rst $18
    rst $38
    ld h, a
    rst $38
    reti


    rst $38
    db $76
    ld a, a
    dec e
    rra
    ld hl, sp-$01
    cp $ff
    rst $38
    ld a, e
    rst $38
    rra
    ld a, a
    ld bc, $031f
    rra
    nop
    rrca
    ld bc, $0ff0
    ld [hl], b
    adc a
    nop
    rst $38
    inc e
    rst $38
    ei
    rlca
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    ld a, [bc]
    rst $38
    ld a, [de]
    rst $38
    ld [$01ff], sp
    cp $06
    ld sp, hl
    inc h
    ei
    inc hl
    db $fc
    ldh a, [$7f]
    ld a, a

Call_053_5c41:
    rst $38
    ld a, e
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld sp, hl
    rst $38
    db $fd

jr_053_5c4b:
    rst $38
    ld a, $ff
    sbc [hl]
    ld a, a
    xor a
    ld e, a
    rst $08
    ccf
    adc [hl]
    ld a, a
    add sp, $1f
    ld [$a21f], a
    ld e, a
    rlca
    rst $38
    nop
    rst $38
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
    scf
    ret z

    add a
    ld a, b
    ld c, a
    or b
    ld d, [hl]
    xor b
    sub l
    ld l, b
    ld d, b
    rst $38
    cp d
    ld b, l
    nop
    rst $38
    jr c, jr_053_5c4b

    ld [de], a
    db $ed
    db $ed
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_053_5ca3:
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
    db $fc
    nop
    ld bc, $0603
    ld c, $04
    inc [hl]
    db $10
    jr nc, jr_053_5d25

    ld a, h
    ld h, $66
    ld e, d
    ld e, d
    rra
    rra
    rst $38
    ldh [rIE], a

jr_053_5cc3:
    ldh a, [rIE]
    db $e3
    rra
    ldh a, [rSC]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, l
    rst $38
    ld [$7cff], a
    ld a, a
    rrca
    rrca
    ld b, c
    ld bc, $0060
    inc b
    nop
    rlca
    nop
    ld [c], a
    db $fd
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    jr @+$01

    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_053_5cc3

    ld a, h
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
    inc b
    rst $38
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    cpl
    rst $38
    sbc l
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    db $e3
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ret nz

    nop
    ld bc, $0302
    inc b

jr_053_5d25:
    dec b
    ld b, $07
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    dec c
    rlca
    ld c, $0f
    db $10
    ld de, $1312
    rlca
    inc d
    dec d
    ld d, $17
    jr jr_053_5d57

    dec c
    dec c
    ld a, [de]
    dec de
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_053_5d6a

    ld [hl+], a
    inc hl
    inc h
    dec h
    dec c
    dec c
    dec c
    ld h, $27
    daa
    daa
    daa
    daa
    daa

jr_053_5d57:
    daa
    jr z, jr_053_5d83

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_053_5d93

    ld [hl-], a
    daa
    daa
    daa
    inc sp
    daa
    inc [hl]
    dec [hl]

jr_053_5d6a:
    ld [hl], $37
    daa
    jr c, jr_053_5da8

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    daa
    ld b, d
    daa
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_053_5d83:
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
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_053_5d93:
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
    ld e, c
    ld l, c
    dec c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]

jr_053_5da8:
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld e, c
    ld [hl], a
    dec c
    ld a, b
    ld e, c
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
    ld e, c
    add h
    dec c
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
    ld e, c
    sub d
    dec c
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
    dec c
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
    jp nc, $07d3

    call nc, $d6d5
    rst $10
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

jr_053_5e2a:
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    jr nz, jr_053_5e2a

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
    jr jr_053_5e76

    ld a, [de]
    dec de
    inc e
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101

jr_053_5e76:
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
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    rlca
    ld b, $01
    ld bc, $0202
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0204
    ld [bc], a
    rlca
    ld b, $01
    ld bc, $0202
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0204
    ld [bc], a
    rlca
    ld b, $01
    ld bc, $0200
    ld [bc], a
    inc b
    inc b
    ld b, c
    ld bc, $0101
    inc b
    ld [bc], a
    ld [bc], a
    rlca
    ld b, $01
    ld bc, $0000
    inc b
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    ld a, [bc]
    ld a, [bc]
    rrca
    ld c, $09
    add hl, bc
    ld [$0a0a], sp
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    ld a, [bc]
    ld a, [bc]
    rrca
    ld c, $09
    add hl, bc

Jump_053_5fa0:
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    cp a
    nop
    db $db
    nop
    rst $38
    nop
    ld e, a
    nop
    ld a, d
    nop
    xor l
    nop
    ld a, a
    nop
    ld e, a
    nop
    ld l, d
    nop
    dec h
    nop
    ld d, a
    nop
    ld [$7700], sp
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld h, c
    nop
    dec l
    nop
    dec h
    nop
    ld d, h
    nop
    ld a, [bc]
    nop
    inc hl
    nop
    ld [de], a
    nop
    ld c, d
    nop
    ld bc, $1e00
    nop
    dec d
    nop
    ld d, $00
    dec d
    nop
    ld l, c
    nop
    ld d, $00
    add hl, de
    nop
    ld b, [hl]
    nop
    scf
    nop
    ld e, [hl]
    nop
    ld l, e
    nop
    sub l
    nop
    push af

Call_053_5ff3:
    nop
    ld a, d
    nop
    db $eb
    nop
    xor e
    nop
    dec sp
    nop
    ld e, a
    nop
    ld d, a
    nop
    or [hl]
    nop
    rst $18
    nop
    rst $28
    nop
    ld e, e
    nop
    cp a
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
    cp $01
    rst $38
    nop
    cp $01
    cp a
    ld b, b
    jp c, $db25

    inc h
    ei
    inc b
    db $e4
    dec de
    inc [hl]
    res 5, [hl]
    ld d, c
    or c
    ld c, [hl]
    inc [hl]
    res 4, d
    ld e, l
    ld [hl], $c9
    ld a, [de]
    push hl
    inc [hl]
    rrc b
    rst $30
    ld l, d
    sub l
    ld h, d
    sbc l
    and b
    ld e, a
    jr nz, @-$1f

    ld b, b
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    nop
    rst $38
    nop
    ld e, [hl]
    nop
    rst $18
    nop
    ld l, a
    nop
    rst $28
    nop
    ld [hl], a
    nop
    xor [hl]
    nop
    push de
    nop
    ld l, a
    nop
    cp a
    nop
    rst $28
    nop
    ld e, e
    nop
    rst $18
    nop
    ld l, a
    nop
    cp a
    nop
    rst $18
    nop
    ld a, a
    nop
    rst $18
    nop
    ld l, a
    nop
    cp a
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
    cp a
    nop
    ld e, a
    nop
    xor a
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
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_053_60ed:
    nop
    rst $38
    nop
    rst $38

jr_053_60f1:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    db $fd
    ld [bc], a
    ei
    inc b

Call_053_60fc:
    ei
    inc b
    ld a, [c]
    dec c
    ldh a, [rIF]
    ldh [$1f], a
    add $39
    ld a, c
    add [hl]
    ld a, [$8405]
    ld a, e
    jr nz, jr_053_60ed

    inc e
    db $e3
    jr nz, jr_053_60f1

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
    ld b, b
    cp a
    and b
    ld e, a
    nop
    rst $38
    jr nz, @-$1f

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
    db $fc
    nop
    db $fc
    nop
    db $ec
    db $10
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
    cp h
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
    cp $00
    rst $38
    nop
    cp $00
    cp $00
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
    rst $38
    nop
    rst $38

jr_053_61a9:
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    rst $38

jr_053_61bf:
    nop
    db $eb
    inc d
    rst $18
    jr nz, jr_053_61bf

    dec b
    db $ed
    ld [de], a
    rst $28
    db $10
    jp c, $9425

    ld l, e
    or b
    ld c, a
    ld h, b
    sbc a
    ret nz

    ccf
    ld b, l
    cp d
    add h

jr_053_61d7:
    ld a, e
    jr nc, jr_053_61a9

    add b
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    db $10
    rst $28
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld d, b
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    add b
    ld a, a
    jr nz, jr_053_61d7

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    inc a
    nop
    ld a, $00
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    ld [bc], a
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

jr_053_622c:
    nop
    nop

jr_053_622e:
    add b
    nop

jr_053_6230:
    add b
    nop

jr_053_6232:
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

jr_053_6242:
    add b
    nop
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
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    jr c, jr_053_622c

    jr c, jr_053_622e

    jr nc, jr_053_6230

    jr nz, jr_053_6232

    nop
    ret nz

    inc bc
    ret nz

    inc hl
    ret nz

    ld sp, $3bc0
    ret nz

    ld a, $c0
    inc l
    ret nz

    jr jr_053_6242

    dec sp
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

    inc a
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

    ld e, $e1
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    inc b
    inc bc
    add h
    inc bc
    nop
    add e
    nop
    jp $e300


    db $10
    db $e3
    ld [$04f3], sp
    ld a, e
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop
    rlca
    inc b
    inc bc
    ld [bc], a
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
    nop
    nop
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
    ld c, $00
    inc c
    nop
    inc c
    nop
    inc c
    nop
    jr jr_053_62f6

jr_053_62f6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    jr nz, jr_053_6310

jr_053_6310:
    ld h, c
    nop
    push hl
    nop
    pop bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0100
    nop
    jp $8700


    nop
    adc a
    nop
    dec bc
    nop
    rrca
    nop
    sbc e
    nop
    xor a
    nop
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    cp $01
    rst $38
    ld bc, $03fd
    rst $38
    inc bc
    ei
    rlca
    cp $07
    db $76
    adc a
    db $fd
    rrca
    ld a, h
    adc a
    ld bc, $060e
    add hl, bc
    nop
    dec c
    dec b
    ld [$0c00], sp
    ld [$0804], sp
    inc b
    ld [$0004], sp
    inc c
    ld [$0804], sp
    inc b
    ld [$0804], sp
    inc b
    ld [$0804], sp
    add h
    ld [$28c4], sp
    call nz, $e418
    nop
    ld a, h
    nop
    inc a
    nop
    inc e
    ld [de], a
    inc c
    ld [$0006], sp
    rlca
    nop
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    stop
    stop
    nop
    nop
    stop
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
    nop
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
    nop
    nop
    nop
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
    nop
    add c
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
    ld bc, $0100
    nop
    ld b, c
    nop
    rst $08
    nop
    rst $08
    nop
    rst $18
    nop
    rst $18
    nop
    adc a
    nop
    sbc a
    nop
    sbc a
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    ld e, $01
    inc a
    inc bc
    inc a
    inc bc
    jr c, jr_053_6401

    jr c, jr_053_6403

    jr c, jr_053_6405

    add hl, sp
    rlca
    ld a, c

jr_053_6401:
    rlca
    dec sp

jr_053_6403:
    rlca
    ei

jr_053_6405:
    rlca
    ld a, e
    rlca
    cp $07
    or $0f
    db $fd
    ld c, $ed
    ld e, $fb
    ld e, $db
    inc a
    rst $30
    jr c, @-$47

    ld a, b
    rst $20
    ld a, b
    ld h, a
    ld hl, sp-$31
    rst $38
    ret


    rst $30
    cp [hl]
    push af
    cp a
    jp nz, $c07f

    ld a, a
    ret nz

    ld a, a
    add h
    ld a, a
    or d
    ccf
    ret nz

    ld a, [hl-]
    push bc
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

    cp a
    ldh a, [$bf]
    db $fc
    sbc a
    ld h, b
    ld a, a
    ld d, b
    ccf
    db $10
    ld e, a
    ld c, b
    rra
    jr jr_053_6499

    ld c, h
    rrca
    inc b
    ld c, a
    ld [bc], a
    ld c, a
    inc b
    ld c, e
    nop
    ld c, e
    ld [bc], a
    ld c, c
    ld [bc], a
    ld c, c
    inc bc
    ld c, b
    inc bc
    ld c, b
    ld b, d
    ld [$4802], sp
    dec bc
    ret z

    add e
    ret z

    ld [c], a
    ret z

    ld a, [$6a68]
    jr c, jr_053_64a5

    jr @+$0c

    inc e
    rlca
    inc c
    inc bc
    ld b, $02
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    jr nc, jr_053_647e

jr_053_647e:
    stop
    nop
    nop
    ld de, $0100
    nop
    add hl, de
    nop
    ld bc, $0100
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
    rlca
    nop
    rrca

jr_053_6499:
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

jr_053_64a5:
    nop
    ld a, $00
    ld a, $00
    ld a, $00
    ld a, [$ff00]
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    db $fd
    nop
    cp $00
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld l, a
    db $10
    ld l, a
    db $10

Jump_053_64ca:
    ld l, a
    db $10
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld l, a
    add b
    ld c, [hl]
    add c
    adc $01
    call c, $fd03
    inc bc
    ld sp, hl
    rlca
    ei
    rlca
    ei
    rlca
    cp $07
    rst $38
    ld b, $fc
    rrca
    db $ec
    rra
    add sp, $1f
    ld e, b
    cp a
    ld [hl], b
    cp a
    or b
    ld a, a
    or b
    ld a, a
    add sp, $77
    ld [hl], d
    db $ed
    jp $d3fc


    db $ec
    or b
    rst $08
    add e
    db $fc
    ld h, a
    sbc b
    ld c, a
    or b
    ld c, a
    or b
    inc bc
    db $fc
    inc bc
    db $fc
    db $e3
    inc e
    ld sp, hl
    ld b, $fc
    inc bc
    db $fd
    inc bc
    ei
    rlca
    db $f4
    rrca
    ld a, e
    db $fc
    db $fc
    di
    sub h
    db $eb
    ld l, d
    db $fd
    rst $38
    ld a, a
    ccf
    rst $38
    ld a, h
    add e
    ld [hl], a
    add b
    rst $38
    nop
    cp $c0
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
    add b
    rst $38
    add b
    rst $38
    ldh a, [rIE]
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
    cp a
    rst $38
    cp a
    rst $38
    cp a
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
    ld a, h
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $08
    ld a, b
    rst $00
    ld hl, sp-$09
    ld hl, sp+$57
    db $fc
    inc bc
    cp $a5
    ld a, [hl]
    pop de
    ld a, a
    ret nz

    ld a, a
    ret nz

    or a
    ld a, a
    sbc [hl]
    ld a, a
    sbc $3f
    rst $18
    ccf
    rst $28
    ccf
    sub $3f
    adc $3f
    xor $3f
    call z, $ee3f
    ccf
    call c, $8c3f
    ld a, a
    call c, $943f
    ld a, a
    db $dd
    ld a, $dc
    ccf
    db $dd
    ld a, $c4
    ccf
    call c, $cc3f
    ccf
    call z, $cc3f
    ccf
    db $ec
    ccf
    ld e, [hl]
    ccf
    sbc $3f
    sub $3f
    cp [hl]
    ld a, a
    sbc [hl]
    ld a, a
    rst $08
    ccf
    rst $18
    ccf
    cp a
    ld a, a
    sbc a
    ld a, a
    adc a
    ld a, a
    sbc $3f
    adc [hl]
    ld a, a
    xor [hl]
    ld a, a
    or h
    ld a, a
    sbc c
    ld a, a
    cp c
    ld a, a
    reti


    ld a, a
    rst $38
    and a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    ld e, $ff
    sbc a
    rst $38
    jr nc, @+$01

    ccf
    rst $38
    ld e, a
    sub b
    rst $38
    db $10
    rst $38
    add hl, bc
    rst $38
    rlca
    rst $38

jr_053_65e8:
    sbc b
    rst $28
    or b
    rst $38
    ld b, e
    db $fc
    add hl, sp
    cp $00
    rst $38
    ld a, [$6205]
    sbc l
    nop
    rst $38
    nop
    rst $38
    ld a, d
    add l
    rst $38
    nop
    rst $38
    jr nz, jr_053_65e8

    jr @-$3e

    ccf
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $28
    nop
    rst $38
    ld [bc], a
    ld h, d
    sbc l
    nop
    rst $38
    rst $38
    nop
    ld l, a
    sub b
    adc a
    ld [hl], b
    rra
    ldh [rBGP], a
    cp d
    add e
    ld a, h
    ld b, e
    cp h
    call c, $fee3
    rst $38
    dec c
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $28
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
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    ret nz

    ld a, a
    ldh [$7f], a
    ld sp, hl
    cp a
    rst $38
    cp a
    rst $38
    xor a
    ld e, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, h
    rst $38
    ld [hl], b
    rst $38
    and b
    ld a, a
    ldh [$7f], a
    ldh a, [$7f]
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld hl, sp+$7f
    ld e, b
    rst $38
    ld e, [hl]
    rst $38
    ld d, b
    rst $38
    ld e, h
    rst $38
    ccf
    rst $38
    ld l, $ff
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ret nz

    rst $38
    rst $00
    rst $38
    sbc e
    db $fc
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld b, [hl]
    cp a
    call c, Call_053_7923
    add a
    db $10
    rst $38
    ld de, $f9fe
    add $07
    ld hl, sp+$79
    rst $38
    ld a, b
    add a
    ld e, $e1
    inc bc
    db $fc
    nop
    rst $38
    ld l, l
    rst $38
    nop
    rst $38
    ld bc, $80ff
    rst $38
    rst $00
    ld hl, sp+$45
    ld a, [$fb04]
    ld a, [c]
    dec c
    or b
    ld c, a
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $76
    adc c
    cp $01
    nop
    rst $38
    add d
    ld a, l
    and $19
    adc d
    ld [hl], l
    ld h, b

jr_053_66e3:
    sbc a
    ldh a, [rVBK]
    ld sp, hl
    ld b, $7c
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    nop
    rst $38
    add hl, bc
    or $f9
    ld b, $f9
    ld b, $fb
    inc b
    db $eb
    dec d
    inc bc
    db $fc
    ld h, c
    sbc [hl]
    ldh a, [rIF]
    jr nz, jr_053_66e3

    ret nz

    ccf
    ld hl, sp-$01
    inc e
    rst $28
    add a
    ld a, a
    rst $20
    rra
    pop bc
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
    ldh a, [rIE]
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], e
    rst $38
    push af
    rst $38
    db $eb
    rst $38
    di
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
    ret nz

    rst $38
    add b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    ld bc, $baff
    ld a, a
    or $0f
    nop
    rst $38
    ld b, $ff
    push af
    ld [$f807], a
    rst $28
    ld hl, sp+$00
    rst $38
    xor c
    ld e, a
    ldh a, [rIF]
    ld h, l
    sbc [hl]
    adc [hl]
    pop af
    ld b, b
    rst $38
    inc l
    di
    inc bc
    db $fc
    nop
    rst $38
    add b
    rst $38
    dec b
    ld a, [$ffe0]
    jr nz, @+$01

    db $ed
    inc de

Jump_053_6798:
    sbc $23
    add d
    ld a, a
    inc e
    rst $38
    ld b, e
    db $fc
    add e
    db $fc
    nop
    rst $38
    db $10
    rst $28
    inc l
    db $d3
    inc b
    ld a, [$fc03]
    ld hl, $00de
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld a, l
    add d
    db $fc
    inc bc
    ld a, h
    add e
    ld e, $e9
    ld c, $f1
    cp $01
    ld a, a
    add b
    rst $28
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
    ld a, e
    add b
    ld a, a
    and b
    ccf
    ret nz

    sbc a
    ld h, b
    rra
    pop hl
    add hl, de
    and $00
    rst $38
    rst $38
    rst $38
    ret z

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
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
    ld a, [$c600]
    nop
    ret nz

    ld [bc], a
    add b
    inc de
    nop
    rlca
    add b
    ld d, $00
    ld bc, $9180
    add b
    xor a
    add e
    rst $38
    rst $00
    rst $38
    rst $30
    ld [$08f7], sp
    rst $30
    ld c, h
    di
    ld l, h
    di
    ld l, [hl]
    pop af
    cpl
    pop af
    ld l, [hl]
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    inc c
    di
    inc c
    di
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$58f7], sp
    rst $30
    ld hl, sp-$09
    ld hl, sp-$09
    cp c
    rst $38
    ld l, h
    rst $38
    ld b, $ff
    inc bc
    rst $38
    pop hl
    rst $38
    ret nz

    ccf
    ld h, c
    sbc a
    pop af
    ld a, a
    ld a, a
    pop hl
    ld c, e
    rst $30
    add $3f
    jr @+$01

    ld hl, $41ff
    rst $38
    add [hl]
    rst $38
    adc b
    ld a, a
    add a
    ld a, a
    inc h
    db $db
    ld bc, $19fe
    cp $c1
    cp $3c
    jp $e619


    rla
    add sp, -$40
    rst $38
    db $10
    rst $28
    ld e, a
    and b
    pop bc
    ld a, $c0
    ccf
    ret z

    scf
    db $fd
    nop
    sbc $21
    sub b
    ld l, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld l, a
    sub b
    cp $00
    rst $38
    nop
    or a
    ret z

    and e
    call c, $e897
    ld a, c
    and $7f
    rst $38
    cp a
    ld a, a
    xor $11
    rst $38
    ld [$017f], sp
    ld a, a
    nop
    rst $18
    nop
    call $ff00
    nop
    rst $38
    nop
    or e
    ld c, h
    adc c
    db $76
    and b
    ld e, a
    add b
    rst $38
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
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
    cp $fe
    db $fc
    db $fc
    inc e
    db $fc
    nop
    ld hl, sp+$02
    ld hl, sp+$04

Call_053_68e3:
    ret nz

    ld d, $c0
    ld [$7d00], sp
    nop
    rst $28
    nop
    sbc $00
    sbc c
    nop
    ld a, a
    add hl, bc
    ld a, a
    rrca
    rst $38
    dec de
    rst $38
    jr z, @+$01

    dec sp
    rst $38
    jp nc, $85ff

    rst $38
    call nc, $cdff
    rst $38
    rst $10
    rst $38
    ld l, l
    rst $38
    db $ec
    rst $38
    call nc, $c1ff
    rst $38
    call $caff
    rst $38
    push bc
    rst $38
    ld l, c
    rst $38
    push de
    rst $38
    and a
    rst $38
    ld [$92ff], a
    rst $38
    adc e
    rst $38
    pop af
    rst $38
    rst $20
    rst $38
    and c
    rst $38
    daa
    rst $38
    jp nc, Jump_000_12ff

    rst $38
    ld c, e
    rst $38
    jr nz, @+$01

    inc bc
    rst $38
    add hl, bc
    rst $38
    adc d
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$3e], a
    rst $38
    ld h, a
    rst $38
    ld b, a
    ei
    call Call_053_5ff3
    ldh [$03], a
    db $fc
    or b
    rst $38
    ld c, $ff
    di
    dec c
    ld [bc], a
    rst $38
    jr nz, @+$01

    inc d

jr_053_6957:
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    and b
    ld e, a
    inc e
    db $e3
    inc de
    db $fd
    call z, Call_000_003f
    rst $38
    inc b
    ei
    ld e, a
    and b
    pop bc
    ld a, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    cp $09
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $28
    nop
    rst $38
    nop
    or $00
    rra
    ldh [$80], a
    rst $38
    add sp, -$09
    ld a, a
    add b
    add sp, $00
    db $fc
    nop
    rst $38
    add b
    rst $38
    nop
    rst $18
    jr nz, jr_053_6957

    dec a
    ret nz

    ccf
    rst $28
    db $10
    rst $38
    ld hl, $b17f
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$02
    rst $30
    rrca
    rst $38
    rlca
    jp hl


    add hl, de
    add sp, $18
    ldh a, [$30]
    and d
    ld h, d
    ld [c], a
    ld [c], a
    ld h, c
    pop hl
    ld h, d
    ld h, d
    ldh [$e0], a
    rra
    nop
    dec bc
    nop
    dec sp
    nop
    ld l, a
    ld bc, $05ad
    cp a
    rlca
    ccf
    dec de
    cp a
    ld a, [de]
    rst $38
    ret


    rst $38
    ld c, h
    rst $38
    ld e, c
    rst $38
    xor h
    rst $38
    ld e, $ff
    pop af
    rst $38
    cpl
    rst $38
    sub [hl]
    rst $38
    ld hl, sp-$01
    ld l, c
    rst $38
    ld b, a
    rst $38
    adc d
    rst $38
    ld [de], a
    rst $38
    sbc a
    rst $38
    ld a, [hl-]
    rst $38
    ld [$7dff], a
    rst $38
    ld c, d
    rst $38
    call nc, $5eff
    rst $38
    ld d, d
    rst $38
    call nc, Call_053_58ff
    rst $38
    ld h, d
    rst $38
    ld a, h
    rst $38
    adc b
    rst $38
    ld [hl], b
    rst $38
    inc a
    rst $38
    add h
    rst $38
    ld d, b
    rst $38
    adc h
    rst $38
    ld [$18ff], sp
    rst $38
    add h
    rst $38
    inc b
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    xor b
    rst $38
    rst $38
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
    dec a
    rst $38
    ccf
    rst $38
    jp hl


    rst $38
    rlca
    rst $38
    add e
    rst $38
    ld bc, $30ff
    rst $38
    rst $08
    ccf
    ld [hl], b
    adc a
    rra
    ldh [$0d], a
    ld a, [c]
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    add c
    ld a, [hl]
    ld b, $f9
    ld [hl], d
    adc l
    ld a, a
    add d
    ld [hl], a
    adc b
    ld a, l
    add b
    ccf
    ret nz

    adc a
    ld [hl], b
    rst $38
    ld [$18ff], sp
    rst $38
    ld [de], a
    rst $30
    ld [$0ff0], sp
    ld c, c
    or [hl]
    ld c, a
    or b
    rst $38
    nop
    rst $38
    nop
    ld e, $01
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    ld d, a
    rrca
    ldh a, [rIE]
    ld [$07f8], sp
    ld hl, sp-$19
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
    inc bc
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp a
    ldh [$af], a
    xor b
    ld b, a
    add $df
    sbc $c0
    ret nz

    ld b, b
    ld b, b
    ld h, b
    nop
    sbc $df
    ret c

    rst $08
    ldh [$cf], a
    ld [c], a
    rst $08
    ldh [$ef], a
    rst $38
    ret z

    ld h, b
    rst $28
    and b
    rst $28
    ld l, a
    pop bc
    ld l, l
    rst $28
    db $ed
    rst $28
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    rst $38
    ret nz

    xor $d1
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

    sbc $e1
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

    cp $c1
    or $c9
    cp $c1
    ret nc

    rst $28
    rst $30
    ret z

    rst $38
    ret nz

    pop bc
    cp $f6
    ret


    rst $30
    adc b
    pop af
    adc [hl]
    sub b
    rst $28
    cp d
    push bc
    xor d
    push de
    ret nz

    cp a
    pop hl
    sbc [hl]
    ldh [$9f], a
    add b
    rst $38
    add d
    db $fd
    add c
    cp $80
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
    ldh [$9f], a
    ret nz

    cp a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    add c
    rst $38
    add c
    db $fc
    rst $00
    ld hl, sp-$31
    db $fd
    rst $28
    cp $ff
    ld hl, sp-$01
    ld a, c
    rra
    ld a, $0f
    cp $0f
    rst $38
    rst $38
    xor a
    inc hl
    rst $18
    ld bc, $00ff
    ld a, a
    nop

jr_053_6b5e:
    rst $30
    nop
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$71
    ld [hl], b
    rst $08
    inc sp
    rst $00
    dec sp
    rst $20
    jr jr_053_6b5e

    ld d, $7f
    add c
    ld [hl], a
    add b
    rst $38
    nop
    db $db
    nop
    rst $30
    nop
    rst $30
    nop
    ld a, a
    add c
    ld bc, $83fe
    ld a, h
    add c
    ld a, [hl]
    ldh [$9f], a
    ret nz

    cp a
    db $f4
    ld c, e
    ld a, [hl]
    and c
    ld a, a
    and b
    rst $38
    nop
    nop
    db $fc
    nop
    db $fc
    ld bc, $00f8
    ld hl, sp+$3c
    ld hl, sp-$04
    ld hl, sp-$0f
    ldh a, [$e0]
    ldh [$fb], a
    rra
    rst $38
    rra
    call nc, $e736
    daa
    pop de
    ld de, $00c0
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

    ld bc, $1fd9
    ret c

    ld e, h
    add e
    sbc e
    ld d, [hl]
    ld a, [hl]
    ld d, [hl]
    ld a, a
    or d
    or d
    ld [hl+], a
    ld [hl-], a
    rst $18
    rst $18
    ld a, a
    sbc a
    cp a
    sbc a
    cpl
    sbc a
    add hl, hl
    sbc a
    cp a
    nop
    rra
    cp a
    inc bc
    cp a
    cp a
    nop
    ccf
    cp a
    ld h, $bf
    nop
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
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    or $09
    rst $38
    nop
    rst $38
    nop
    ld b, e
    cp h
    rst $38
    nop
    rst $38
    nop
    add d
    ld a, l
    push af
    ld a, [bc]
    cp $01
    push hl
    ld a, [de]
    inc hl
    call c, Call_053_5ca3
    add b
    ld a, a
    nop
    rst $38
    rra
    ldh [$5f], a
    and b
    nop
    rst $38
    ld sp, hl
    ld b, $b8
    ld b, a
    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    jr nc, @-$2f

    rst $38
    inc bc
    db $fd
    dec b
    rst $30
    rlca
    ret c

    rra
    ldh a, [$3c]
    db $dd
    dec e
    rst $20
    ld a, a
    add $fe
    ld d, b
    ld [hl], e
    ld d, b
    ld a, d
    ld h, b
    ld [hl], e
    and c
    rst $20
    add l
    db $ed
    call nc, $c1ff
    rst $18
    dec sp
    dec sp
    rst $38
    rlca
    rst $38
    ld h, b
    rst $38
    adc d
    rst $38
    add [hl]
    rst $38
    db $ec
    cp $ff
    ld a, a
    ld a, a
    cp a
    cp a
    rst $20
    rst $18
    rst $30
    rst $28
    rra
    nop
    ccf
    nop
    cp $00
    rst $28
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    db $fd
    add b
    cp a
    ld b, b
    sbc a
    ld h, b
    add d
    ld a, l
    ldh a, [rIF]
    ldh a, [$8f]
    ld hl, sp+$07
    db $fc
    inc bc
    ei
    nop
    rst $38
    nop
    rst $30
    nop
    ld a, a
    add b
    ld a, $c0
    ld e, $e0
    rst $08
    jr nc, @-$50

    cp [hl]
    ld a, [c]
    cp $b3
    rst $38
    ld [c], a
    cp $6e
    cp $f2
    cp $f8
    cp $ef
    rst $38
    ld [hl], h
    ld [hl], a
    di
    rst $30
    ld [hl+], a
    ld [hl-], a
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld [hl], d
    ld d, h
    ld [hl], h
    ld l, b
    ld a, b
    nop
    nop
    add h
    add h
    inc b
    inc d
    ld d, c
    ld [hl], c
    pop bc
    pop hl
    nop
    add b
    ld [bc], a
    ld [bc], a
    dec sp
    dec sp
    ld sp, $ef01
    rst $08
    xor $cf
    sbc $cf
    sbc $9f
    sbc [hl]
    sbc a
    rst $38
    ld [bc], a
    rst $38
    sbc a
    adc h
    sbc a
    cp a
    ld [$9fad], sp
    ccf
    sbc a
    rla
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_053_6cde

jr_053_6cde:
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    inc a
    jp $10ef


    rst $28
    db $10
    and c
    ld e, [hl]
    rst $38
    nop
    rst $38
    nop
    dec h
    jp c, $08f7

    rst $38
    nop
    push hl
    ld a, [de]
    cp b
    ld b, a
    ld a, [$a805]
    ld d, a
    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    nop
    rst $38
    rst $38
    nop
    call c, $ff00
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    push af
    ld a, [bc]
    rst $30
    sub a
    ld de, $0011
    ld c, $04
    inc [hl]
    inc e
    ld a, h
    inc a
    ld a, h
    dec e
    dec a
    sbc a
    sbc a
    ld a, [de]
    ld e, $29
    ccf
    inc de
    ccf
    adc c
    ld sp, hl
    nop
    ld h, b
    inc de
    inc sp
    dec sp
    dec sp
    ld d, $1e
    rst $38
    push af
    rst $38
    dec a
    rst $38
    and d
    rst $38
    nop
    rst $38
    nop
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    jp nc, $82ff

    nop
    jp nz, Jump_053_7f00

    nop
    ccf
    nop
    cp $00
    add hl, bc
    nop
    rst $38
    inc c
    rst $38
    inc b
    ld a, a
    ld a, [bc]
    rst $38
    nop
    ei
    inc b
    add hl, hl
    sub $01
    cp $08
    rst $30
    add l
    ld a, d
    add l
    ld a, d
    ret nz

    ccf
    ldh a, [rIF]
    ei
    inc b
    rst $28
    ld [bc], a
    rst $38
    ld bc, $00ff
    ld a, l
    db $fd
    inc l
    ld a, l
    call z, $3acd
    ld a, $08
    ld c, $24
    ld [hl], $46
    ld b, [hl]
    sbc h
    sbc h
    ld b, b
    ret nz

    add e
    sub e
    ld d, b
    ld e, b
    adc b
    cp $4e
    ld a, a
    ld h, [hl]
    ld [hl], a
    sbc d
    sbc $6e
    ld l, [hl]
    pop af
    rst $38
    ld [bc], a
    rst $38
    ld e, d
    rst $38
    ret nz

    rst $38
    ld b, c
    rst $38
    adc e
    rst $38
    ld [hl], l
    cp $85
    ld hl, sp-$33
    db $fd
    set 7, c
    dec sp
    ei
    ld h, e
    ei
    rst $20
    di
    rst $30
    ld b, b
    sub [hl]
    rst $30
    ld b, $f7
    rst $30
    ld bc, $f763
    di
    rst $30
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
    rst $38
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
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    ld l, a
    sub b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $30
    ld [$00ff], sp
    cp $01
    dec sp
    call nz, Call_000_00ff
    rst $38
    nop
    ld [bc], a
    db $fd
    push af
    ld a, [bc]
    rst $28
    db $10
    ldh [$1f], a
    add e
    ld a, h
    ld h, e
    sbc h
    ld [bc], a
    db $fd
    ld d, l
    xor d
    sbc a
    ld h, b
    dec e
    ld [c], a
    db $10
    rst $28
    dec b
    nop
    ld c, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    cp c
    nop
    inc de
    call z, $ecef
    ld c, b
    ret z

    nop
    ld [hl-], a
    sbc e
    ei
    ld e, a
    rst $38
    ld a, e
    rst $38
    ld b, b
    ei
    inc bc
    ld a, e
    dec sp
    dec sp
    ld b, d
    ld [hl], e
    ld b, c
    ld c, a
    cp $fe
    ld a, [hl+]
    db $eb
    sbc [hl]
    rst $38
    call $b9ff
    cp c
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    inc e
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    add l
    nop
    rst $38
    nop
    and b
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    inc bc
    db $fc
    swap l
    cp $88
    rst $38
    jr c, @+$01

    db $10

jr_053_6e6a:
    rst $38
    add b
    rst $38
    ld [$8d7e], sp
    db $fc
    ld c, e
    rst $18
    jr nz, jr_053_6e84

    ldh a, [rIF]
    ldh a, [rIE]
    rrca
    rst $38
    inc bc
    rst $38
    add b
    ccf
    ret nz

    nop
    rst $38
    nop
    ld a, a

jr_053_6e84:
    nop
    ccf
    nop
    rra
    jr jr_053_6ea9

    inc de
    inc bc
    pop af
    ld bc, $0181
    xor a
    rst $38
    db $f4
    rst $38
    sbc a
    sbc a
    sbc d
    sbc e
    jp c, $b4da

    or h
    db $f4
    db $f4
    ld a, $3e
    rlca
    add a
    ld b, l
    rst $00
    ld l, d
    ld a, e
    or e
    or e
    ld b, d

jr_053_6ea9:
    ld l, [hl]
    ld c, b
    ld c, [hl]
    jr c, jr_053_6f26

    inc h
    jr nz, @+$01

    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    nop
    ld a, b
    cp $fc
    cp $fe
    ld [bc], a
    adc b
    cp $ec
    cp $f4
    nop
    nop
    nop
    nop
    nop
    ld b, c
    nop
    nop
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    or $09
    or $09
    rst $38
    nop
    ld l, a
    sub b
    ld e, l
    and d
    rst $20
    jr jr_053_6e6a

    ld a, b
    add c
    ld a, [hl]
    xor e
    ld d, h
    rst $28
    stop
    rst $38
    push hl
    ld a, [de]
    rst $30
    ld [$3fc0], sp
    call nc, $f82b
    rlca
    add b
    ld a, a
    nop
    rst $38
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    ld hl, sp+$00
    db $fd
    nop
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld b, e
    cp h
    ld a, [c]
    ld a, [c]
    add b
    sbc [hl]
    ld b, h
    ld h, a
    or e
    cp a
    cp h
    cp a
    set 7, a
    adc a
    adc a
    and l
    and a
    add e
    add e
    call $72cf
    ld [hl], e

jr_053_6f26:
    ld e, d
    ld a, [$fc04]
    sub b
    rst $38
    ld b, b
    ld a, a
    call c, $fffe
    ld a, [$d1ff]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fd
    ccf
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    daa
    rst $38
    ld [c], a
    ld hl, sp-$28
    nop
    ld l, [hl]
    ld l, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    adc a
    rst $38
    nop
    rst $38
    ld [$007f], sp
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rra
    ldh [rP1], a
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ei
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ccf
    rra
    rra
    sbc a
    rra
    rst $18
    rra
    rst $38
    rrca
    di
    inc bc
    sub a
    inc bc
    rlca
    db $fc
    ld c, a
    db $fc
    ld h, e
    rst $38
    xor $ff
    rst $38
    rst $38
    call c, $deff
    rst $10
    cp $9d
    cp [hl]
    cp a
    rst $38
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp $fc
    nop
    ld [$fcff], a
    rst $38
    rst $38
    nop
    db $fc
    rst $38
    db $fc
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    or $09
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    rst $38
    nop
    rst $38
    nop
    add d
    ld a, l
    rst $38
    nop
    rst $38
    nop
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
    rst $30
    ld [$18e7], sp
    rst $38
    nop
    rst $38
    nop
    ld b, b
    cp a
    db $ed
    ld [de], a
    db $e3
    inc e
    add b
    ld a, a
    ld [hl+], a
    db $dd
    ld b, a
    cp b
    nop
    rst $38
    ld bc, $1ffe
    ldh [rNR30], a
    push hl
    nop
    rst $38
    rrca
    nop
    ld a, a
    nop
    ld a, e
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    dec sp
    nop
    xor l
    ld [de], a
    dec h
    dec h
    scf
    scf
    ld b, c
    ld a, l
    dec c
    ld l, a
    inc d
    cp [hl]
    dec bc
    ei
    inc b
    dec h
    or e
    or e
    ld b, c
    pop bc
    ld d, a
    rst $10
    ld l, $ee
    ld d, $36
    or c
    cp l
    ld a, [hl]
    ld a, [hl]
    cp h
    cp h
    add c
    add c
    rst $38
    ld a, d
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld h, a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
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
    ld bc, $fe01
    ld bc, $03fc
    ret nz

    ccf
    ld hl, sp+$07
    rst $18
    nop
    rst $38
    nop
    cp e
    nop
    ei
    nop
    rst $38
    nop
    ld a, $c0
    rrca
    ldh a, [$e3]
    dec e
    sbc a
    ld bc, $00ff
    ei
    nop
    ld a, a
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
    rlca
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
    cp $03
    db $fc
    ld [bc], a
    ld sp, hl
    rlca
    ei
    rlca
    db $fd
    rlca
    di
    rrca
    rst $20
    rra
    dec sp
    ld a, e
    ld e, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    jr c, jr_053_711e

    ld [hl], b

jr_053_70a0:
    sub e
    ldh [$a6], a
    pop bc
    ld c, c
    add a
    sbc c
    rlca
    sub l
    rrca
    cp a
    nop
    inc e
    cp a
    sbc h
    cp a
    cp a
    nop
    ld a, $bf
    cp c
    cp a
    cp e
    nop
    ld bc, $0000
    nop
    ld a, [de]
    nop
    nop
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
    ei
    inc b
    and d
    ld e, l
    db $fd
    ld [bc], a
    rst $38
    nop
    db $f4
    dec bc
    rst $30
    ld [$00ff], sp
    sub a
    ld l, b
    adc c
    db $76
    rst $00
    jr c, jr_053_70ea

    ld hl, sp-$80
    ld a, a
    rst $20
    jr jr_053_70a0

    ld c, b

jr_053_70ea:
    add e
    ld a, h

jr_053_70ec:
    rst $20
    jr jr_053_70ec

    ld [bc], a
    ld b, b
    cp a
    ldh a, [rIF]
    db $f4
    dec bc
    nop
    rst $38
    pop bc
    ld a, $c0
    ccf
    add b
    ld a, a
    nop
    rst $38
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    cp a
    ld b, b
    rlca
    ld hl, sp+$03
    db $fc
    db $e3
    db $e3
    inc a
    ld a, [hl]
    or d
    cp d
    xor d
    ld [$2626], a
    and c
    rst $38
    or c
    or e

jr_053_711e:
    inc c
    inc e
    jr @+$1a

    cp l
    cp a
    ld [hl], c
    ld a, l
    push hl
    db $fd
    add [hl]
    cp $3e
    cp $64
    ld h, h
    inc d
    inc d
    rst $38
    sbc a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    nop
    rst $38
    cp $58
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld a, [de]
    nop
    rrca
    ld c, $01
    nop
    inc bc
    ld [bc], a
    db $fd
    db $fc
    sub d
    sub d
    add b
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld d, a
    xor b
    ld [bc], a
    db $fd
    ldh a, [rIF]
    ei
    inc b
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    ret nc

    rst $38
    jr nz, @+$01

    add b
    pop bc
    ld a, $f9
    ld b, $fe
    ld bc, $0100
    ld [bc], a
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
    dec d
    ld d, $17
    jr jr_053_71a3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_053_71b3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_053_71c3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_053_71d3

    ld [hl-], a

jr_053_71a3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_053_71e3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_053_71b3:
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

jr_053_71c3:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a

jr_053_71c8:
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

jr_053_71d3:
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
    jr nc, jr_053_7210

    ld l, [hl]
    ld l, a
    ld [hl], b

jr_053_71e3:
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

jr_053_7210:
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
    jr nc, jr_053_71c8

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

jr_053_724c:
    reti


    jp c, $dcdb

    jr nc, @+$32

    jr nc, jr_053_7284

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, $30
    jr nc, jr_053_724c

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

jr_053_7284:
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_053_72ac

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_053_72bc

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
    jr nc, jr_053_72dc

    ld [hl-], a

jr_053_72ac:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $02
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0204

jr_053_72bc:
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0205
    ld [bc], a
    ld bc, $0001
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    dec b

jr_053_72dc:
    dec b
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0204
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld [bc], a
    inc b
    inc b
    ld bc, $0201
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0306
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0306
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0601
    ld b, $06
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    add hl, bc
    add hl, bc
    ld a, [bc]
    inc c
    dec c
    ld a, [bc]
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc c
    dec c
    dec c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a0a], sp
    inc c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0a08], sp
    ld a, [bc]
    ld a, [bc]
    inc c
    dec c
    dec c
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld d, $fe
    add $fe
    sub b
    sbc h
    and b
    cp h
    cp l
    db $fd
    push bc
    push hl
    or b
    or b
    ld d, b
    ret c

    cp a
    nop
    dec e
    nop
    db $fd
    nop
    ld a, [c]
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld a, [$f900]
    nop
    dec d
    rra
    rlca
    add a
    ld a, [de]
    sbc $c4
    call nz, $e181
    db $dd
    db $fd
    inc [hl]
    inc a
    inc d
    inc e
    call Call_000_2500

Call_053_7423:
    nop
    sub c
    nop
    db $eb
    nop
    ld [hl], e
    nop
    inc e
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, h
    ld a, h
    ld a, [de]
    ld a, [hl-]
    ld a, [de]
    ld e, $01
    rlca
    push bc
    rst $00
    ldh [$e0], a
    and b
    ldh [$d0], a
    ldh a, [rNR41]
    jr nc, @+$0a

    jr @+$03

    ld bc, $0101
    ld a, [de]
    ld a, [de]
    ld d, $1e
    ld [hl], $3e
    ld a, $3e
    inc l
    db $ec
    add d
    db $e3
    ret z

    ld sp, hl
    adc h
    db $fc
    adc h
    db $fc
    call nz, Call_053_60fc
    ld a, h
    jr nc, jr_053_7490

    ret nz

    ret nz

    pop bc
    pop bc
    jp Jump_053_42c3


    ld b, e
    ld b, c
    ld b, c
    add hl, de
    add hl, de
    adc c
    adc c
    add b
    add b
    ld [hl], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    db $10
    ld a, a
    nop
    rra
    nop
    dec bc
    nop
    dec bc
    nop
    add c
    rra
    ld bc, $017f
    di
    ld de, $0093
    inc de
    nop
    adc c
    add b
    pop bc
    ret nz

    pop de
    add b

jr_053_7490:
    nop
    ldh [rNR41], a
    ldh [rP1], a
    ldh a, [rNR10]
    ldh a, [$28]
    ld hl, sp+$1c
    ld hl, sp+$18
    db $fc
    ld [hl-], a
    cp $df
    rst $18
    ld a, [$fffa]
    rst $38
    rst $30
    rst $30
    rst $38
    rst $38
    cp a
    rst $38
    ld a, b
    ei
    ret nc

    rst $10
    ret nz

    rst $38
    ld [hl], c
    rst $38
    ccf
    rst $38
    sbc e
    rst $38
    or [hl]
    rst $30
    adc b
    rst $28
    ldh [rIE], a
    cp a
    ld a, a
    ld sp, hl
    ld sp, hl
    rrca
    rst $30
    rst $10
    rst $10
    ld b, c
    pop bc
    ret nz

    ret nz

    ret c

    ld b, b
    xor l
    nop
    sbc a
    nop
    sbc $ff
    ld e, [hl]
    rst $38
    call c, $95ff
    rst $38
    or h
    rst $38
    ld b, c
    cp a
    rst $38
    nop
    add a
    ld a, b
    rra
    nop
    add b
    nop
    ld [hl-], a
    nop
    ld a, a
    nop
    or a
    nop
    ld hl, sp+$00
    cpl
    nop
    dec sp
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    inc bc
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    inc b
    sbc a
    rlca
    sbc a
    inc bc
    ld a, c
    ld a, b
    ld l, h
    ld a, h
    ld [hl], $3c
    db $10
    inc e
    sbc d
    sbc [hl]
    ld sp, $9df7
    rst $38
    ld c, c
    ld a, a
    pop af
    pop af
    cp b
    ld hl, sp-$6a
    cp $2f
    ccf
    call z, Call_000_0ffc
    rst $38
    ret c

    rst $38
    dec bc
    rrca
    rrca
    ld a, a
    dec bc
    dec sp
    rlca
    rra
    ld d, $1f
    inc d
    rra
    inc d
    rla
    xor $ef
    ld l, l
    ld a, a
    ld c, h
    ld a, a
    inc e
    rra
    rrca
    rrca
    dec b
    dec b
    nop
    nop
    nop
    nop
    pop bc
    pop bc
    ld b, c
    ld b, c
    ld c, $0f
    inc c
    rrca
    xor c
    xor a
    ld a, l
    rst $38
    sub b
    ld hl, sp-$58
    add sp, $47
    ld a, a
    and h
    and a
    ld h, $26
    ccf
    ccf
    ld c, l
    ld a, a
    ld h, c
    ld a, a
    inc a
    ccf
    jp c, $82df

    add a
    ld [bc], a
    ld [bc], a
    ret nz

    ret nz

    ei
    ei
    rst $38
    rst $38
    dec a
    rst $38
    ld sp, $def7
    cp $16
    cp $47
    ld a, a
    ld c, l
    ld a, l
    call c, $e7fc
    rst $38
    cp $fe
    ld l, e
    ld l, e
    add l
    add l
    call nz, Call_000_2ec4
    xor [hl]
    rrca
    rst $38
    ld c, a
    rst $38
    ld h, a
    rst $38
    ld h, e
    rst $38
    ld h, b
    rst $38
    jr nc, jr_053_75eb

    nop
    cp a
    ld [$e03f], sp
    rra
    db $f4
    rrca
    ld a, [c]
    rrca
    ld sp, $390f
    rlca
    inc c
    inc bc
    inc c
    inc bc
    adc [hl]
    ld bc, $00cf
    rst $00
    nop
    ldh [$80], a
    ld sp, hl
    ret nz

    ld sp, hl
    ldh [$bd], a
    ldh a, [$fe]
    ldh a, [$de]
    ld hl, sp-$21
    ld l, h
    db $db
    jp c, $d5ef

    db $fd
    ld a, e
    ld b, e
    sbc $7c
    ei
    cp b
    ld c, a
    di
    cp a
    rrca
    rst $38
    adc a
    di
    ld a, h
    ld a, l
    and $e7
    ld a, l
    ld a, l
    ld [hl], a
    nop
    rst $30
    nop
    ld [hl], a
    nop
    add h
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr c, @+$01

    jr @+$01

    inc c
    rst $38
    add b
    ld a, a
    rst $28
    db $10
    db $e3
    inc e
    ccf
    nop
    ld [bc], a
    nop
    jr nz, jr_053_75e8

jr_053_75e8:
    ldh a, [rP1]
    db $fc

jr_053_75eb:
    nop
    ld hl, sp+$00
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    cp b
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    inc bc
    rst $38
    ld bc, $81ff
    rst $38
    pop hl
    rst $38
    pop hl
    ld b, l
    ldh [$3e], a
    ldh [rNR34], a
    ldh [$a7], a
    ldh [$3b], a
    jr nc, jr_053_7672

    ld a, h
    di
    db $fc
    jp c, $7ffc

    ld a, h
    db $eb
    db $fc
    ld b, [hl]
    ret nz

    push af
    db $f4
    sub a
    ret nc

    ld h, a
    ld [hl], h
    rst $38
    ld hl, sp-$51
    cp h
    sbc c
    sbc l
    ld h, d
    ld [c], a
    pop af
    di
    sbc a
    sbc e
    and c
    xor a
    add sp, -$11
    call c, $82ff
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    inc e
    rst $38
    rst $28
    rst $38
    rst $18
    rst $10
    ret nz

    ret nz

    pop bc
    pop bc
    call nz, Call_000_04c4
    inc b
    rst $08
    rst $08
    ccf
    xor a
    ld [hl], h
    db $76
    pop bc
    rst $18
    rst $00
    di
    ld de, $d8f0
    ret z

    ld hl, sp-$04
    ld d, a
    sbc $ae
    cp a
    ccf
    ccf
    add a
    add a
    ld b, b
    ret nz

    ret nz

    ret nz

    db $f4
    db $e4
    cp $ee
    sbc [hl]
    cp [hl]
    ld a, $3e
    adc e
    db $fd

jr_053_7672:
    ret nc

    rst $28
    call c, $f4f3
    ld [$ecb0], a
    ret nz

    ld a, [c]
    ldh a, [$e0]
    db $f4
    ld hl, sp-$0e
    db $fd
    db $fc
    ei
    jr c, jr_053_7672

    nop
    db $fc
    ret z

    db $f4
    ld [hl+], a
    call c, $db24
    rra
    cp $82
    nop
    ld [$0100], sp
    ld bc, $00e0
    ld de, $a001
    and b
    add a
    rlca
    ld b, c
    ld bc, $7fdf
    db $d3
    ld a, a
    adc $3f
    db $fd
    ccf
    di
    ccf
    ld a, e
    rra
    jr c, jr_053_76bd

    ld a, h
    rrca
    ld a, $0f
    ld a, $03
    add a
    ld bc, $008f
    push bc
    add d
    db $e3
    add b
    di

jr_053_76bd:
    pop bc
    cp $ff
    ld l, a
    ei
    rst $38
    cp l
    inc sp
    di
    ld a, $be
    or a
    or a
    add b
    nop
    adc b
    nop
    sbc $00
    jr nz, @+$01

    call nc, $c87f
    ld a, a
    ld c, d
    rst $38
    ld [de], a
    rst $38
    ld d, d
    rst $38
    db $10
    rst $38
    db $f4
    dec bc
    cp l
    ld b, b
    db $e3
    inc e
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [hl], a
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    jp Jump_053_433f


    cp a
    ld b, l
    cp a
    inc l
    rst $18
    xor d
    rst $18
    rst $38
    ldh a, [rIE]
    or $ff
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ld sp, hl
    ld a, a
    ld a, d
    rlca
    inc b
    inc bc
    nop
    ld c, [hl]
    cp $46
    db $fc
    di
    cp $6b
    cp $9b
    rst $38
    db $ed
    rst $38
    pop af
    rst $38
    db $db
    rst $38
    ld sp, hl
    rst $38
    dec a
    ld l, a
    ld d, e
    ld a, l
    di
    rst $38
    rst $00
    rst $38
    db $fc
    rst $38
    ld [hl], d
    ld a, e
    sub e
    rst $18
    ld a, b
    ld a, h
    adc $6e
    ld l, e
    ld l, [hl]
    ld [bc], a
    ld bc, $353a
    ld [$213e], sp
    ccf
    sub e
    sub a
    rst $30
    rst $38
    ld a, [hl-]
    rst $30
    ld a, $ff
    rst $38
    or d
    db $fc
    ei
    sbc b
    rst $28
    adc h
    inc bc
    add b
    add c
    rst $30
    nop
    ei
    nop
    rst $38
    nop
    or [hl]
    nop
    xor c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    ld c, b
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
    ld [hl], h
    rst $18
    rst $38
    call $ffcb
    rst $38
    cp a
    cp $ff
    rra
    rst $38
    db $fd
    ld a, [c]
    ld [hl], e
    xor $eb
    rst $38
    cp [hl]
    ld a, a
    rst $38
    daa
    rst $38
    rst $18
    rst $28
    rst $28
    rst $38
    and $fe
    cp a
    sbc l
    ld de, $621e
    ld e, $7a
    ld [hl], h
    push hl
    sbc b
    sbc a
    ld a, a
    ei
    ld a, [$e8ff]
    ld a, a
    call nc, $a07e
    rst $38
    ldh a, [$ef]
    and b
    rst $28
    ldh [rNR51], a
    and b
    ccf
    ld b, b
    ld e, a
    nop
    ld a, a
    nop
    dec sp
    nop
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    di
    rst $38
    cp c
    rst $38
    cp l
    ld c, l
    inc de
    di
    inc c
    cp c
    ld b, $41
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc b
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
    ld a, a
    nop
    rst $38
    nop
    ccf
    ld bc, $e061
    pop hl
    ldh [$f9], a
    ldh a, [rSVBK]
    ldh a, [$fa]
    ld hl, sp-$04
    ldh a, [$d6]
    ldh [rIE], a
    ldh a, [$3f]
    ret nz

    rst $28
    ld d, b
    rst $38
    jp nz, $e0db

    rst $08
    ld [hl], c
    rst $00
    dec [hl]
    rlca
    pop af
    inc bc
    or $c3
    di
    add e
    pop af
    pop de
    pop hl
    pop bc
    reti


    ld sp, hl
    ld hl, sp-$0f
    ld sp, hl
    ld [hl], c
    pop af
    nop
    jr nz, @+$01

    nop
    ld e, d
    nop
    db $ed
    nop
    rst $18
    nop
    ld c, b
    nop
    rst $38
    nop
    sbc $01
    ldh [rP1], a
    cp b
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld [c], a
    db $10
    rst $38
    nop
    ldh a, [rIF]
    call nc, $bca0
    ld b, b
    sub [hl]
    ld h, b
    ld a, a
    add b
    ei
    ldh [$eb], a
    ldh [$ea], a
    ld h, b
    ld a, e
    ret nz

    ccf
    dec sp
    rrca
    rrca
    ld a, a
    rra
    rst $38
    ld l, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp c
    ld a, a
    ld a, l
    add b
    rst $38
    jp $81ff


    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    dec b
    ei
    inc h
    ei
    dec [hl]
    ei
    dec hl
    rst $38
    cpl
    rst $38
    inc bc
    rst $38
    ld [hl], a
    rst $38
    dec [hl]
    rst $38
    dec a
    rst $38
    dec e
    rst $38
    ld a, e
    sbc a
    ld c, a
    cp a
    ld e, e
    cp a
    ld c, h
    cp a
    db $76
    cp a
    sub l
    ld a, a
    db $10
    rst $38
    sbc h
    ld a, a
    cp $1f
    adc $0f
    ld c, $07
    inc bc
    rlca
    inc bc
    inc bc
    ld hl, $ff01
    dec c
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $06ff
    rst $38
    inc b
    rst $38
    jr @+$01

    inc e
    rst $38
    jr c, @+$01

    db $10
    rst $38
    jr nc, @+$01

    jr @+$01

    jr @+$01

    ld a, [de]
    rst $38
    cp b
    rst $38
    jr c, @+$01

    ld [hl], c
    rst $38
    ld h, c
    rst $38
    pop de
    rst $38
    ld e, e
    rst $38
    or c
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    ld h, l
    rst $38

Call_053_7923:
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld e, b
    rst $38
    ld [hl], h
    rst $38
    jr nz, @+$01

    ld l, b
    rst $38
    ld a, h
    rst $38
    cp b
    rst $38
    ld a, h
    rst $38
    call c, $b0ff
    rst $38
    or b
    rst $38
    ld d, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld c, h
    rst $38
    ld b, c
    rst $38
    add hl, de
    rst $38
    ld hl, $52ff
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    and a
    rst $38
    call $89ff
    rst $38
    adc e
    rst $38
    dec b
    rst $38
    adc c
    rst $38
    add e
    rst $38
    add e
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    inc bc
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ff6e
    rst $38
    ld a, a
    push bc
    ld a, a
    sub l
    ld a, a
    db $e3
    ccf
    db $e3
    ccf
    jp Jump_000_213f


    rra
    inc bc
    rra
    jp $ab1f


    rra
    ld a, [c]
    rrca
    or l
    ld c, $1d
    ld b, $fe
    dec b
    ld h, d
    sbc l
    inc c
    ld hl, sp+$4a
    db $fc
    inc bc
    db $fc
    rlca
    db $fc
    dec b
    cp $06
    rst $38
    add [hl]
    rst $38
    sub d
    rst $28
    rst $38
    ld a, l
    rst $38
    db $fc
    rst $38
    ld a, [$b4ff]
    rst $38
    ld hl, sp-$01
    ret nz

    rst $38
    ret z

    rst $38
    ld a, [c]
    rst $38
    reti


    rst $38
    ldh [rIE], a
    ld d, b
    rst $38
    ld e, b
    rst $38
    ld a, [hl+]
    rst $38
    add d
    rst $38
    ret nz

    rst $38
    jp nc, Jump_053_50ff

    rst $38
    db $10
    rst $38
    nop
    rst $38
    and b
    rst $38
    nop
    rst $38
    db $10
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
    ld [bc], a
    rst $38
    ld b, c
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    xor $ff
    add d
    rst $38
    ld b, $ff
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $01ff
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
    jr nz, @+$01

    ld b, b
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    or b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    ld l, b
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    jr z, @+$01

    jr z, @+$01

    db $10
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld d, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add e
    rst $38
    set 7, a
    xor e
    rst $38
    call z, $94ff
    rst $38
    sub b
    rst $38
    and e
    rst $38
    and b
    rst $38
    and d
    rst $38
    ld b, d
    rst $38
    jp nz, $ff3e

    ld a, d
    rst $38
    cp d
    rst $38
    or [hl]
    rst $38
    inc [hl]
    rst $38
    or l
    cp $74
    rst $38
    ld a, b
    rst $38
    ld [hl], h
    rst $38
    ld a, [c]
    rst $38
    push af
    ld a, [$f0ef]
    rst $28

jr_053_7a69:
    ldh a, [$ef]
    ldh a, [$e6]
    ld sp, hl
    ld d, [hl]
    jp hl


    sbc $e1
    call c, $b9e3
    rst $00
    cp c
    rst $00
    add d
    rst $38
    ld sp, hl
    cp $0f
    ldh a, [rTAC]
    ld hl, sp+$7f
    rst $28
    rst $38
    rst $38
    inc [hl]
    rst $38
    nop
    rst $38
    jr nz, jr_053_7a69

    ld a, a
    add b
    sbc a
    ld h, b
    ld l, [hl]
    sub c
    rra
    jr nz, jr_053_7a97

    nop
    ret nz

    nop
    db $db

jr_053_7a97:
    jr nz, jr_053_7a97

    nop
    rst $38
    nop
    rra
    ldh [$ef], a
    db $10
    rrca
    ldh a, [rNR32]
    db $e3
    rst $38
    add b
    ccf
    ret nz

    sub b
    rst $28
    sub b
    rst $28
    or a
    ret z

    ld c, h
    di
    rst $18
    ldh [$60], a
    rst $38
    ld h, c
    cp $e1
    cp $f0
    rst $38
    or b
    rst $38
    pop af
    cp $7c
    ei
    rst $38
    add a
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    ld b, b
    rst $38
    inc b
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
    ld b, b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    dec bc
    rst $38
    ld b, a
    rst $38
    rlca
    rst $38
    inc bc
    push af
    cp $f4
    rst $38
    rst $30
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $e4
    rst $38
    ret z

    rst $30
    ret nz

    rst $38
    jp nz, $86ff

    ei
    sub h
    db $eb
    add c
    rst $38
    ld c, $ff
    ld [hl-], a
    db $fd
    inc bc
    db $fd
    add hl, hl
    rst $10
    jr @-$0f

    ld a, b
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    nop
    rst $38

Jump_053_7b3c:
    ld b, c
    cp [hl]
    dec bc
    db $f4
    dec c
    di
    ld a, [de]
    push hl
    rst $00
    ld a, b
    ld c, [hl]
    ld sp, hl
    ld c, [hl]
    ld sp, hl
    adc d
    db $fd
    jp z, $ffbd

    adc h
    rst $30
    ld c, $f2
    adc a
    ld e, e

jr_053_7b55:
    and a
    ld c, b
    or a
    ld b, d
    cp l
    jp $ff3c


    nop
    rst $38
    ld d, b
    rst $38
    ldh a, [rIE]
    db $fc
    ld e, a
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    cp b
    ld b, a
    ld a, [$3c05]
    jp Jump_053_44bb


    ld d, [hl]
    ld [$000c], sp
    inc sp
    ret nz

    scf
    ret z

    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    di
    inc c
    rst $38
    nop
    rst $00
    jr c, jr_053_7b55

    ld sp, $708f
    ld b, [hl]
    cp c
    db $fc
    inc bc
    ld [bc], a
    db $fd
    sbc d
    ld h, l
    rrca
    ldh a, [rNR10]
    rst $28
    sub d
    ld l, l
    add [hl]
    ld a, c
    dec d
    ld [$ff00], a
    nop
    rst $38
    ld e, e
    and h
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld a, [hl-]
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    ld a, e
    rst $38
    ccf
    rst $38
    ld c, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld [hl], $ff
    cpl
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    rrca
    rst $38
    rrca
    ldh a, [rIE]
    ldh a, [rIE]
    db $e4
    ei
    db $e3
    rst $38
    ld [c], a
    rst $38
    add $ff
    call $cbfe
    db $fc
    rst $00
    ld hl, sp-$7d
    db $fc
    reti


    cp $c6

jr_053_7bf7:
    rst $38
    rst $00
    ld sp, hl
    db $e3
    db $fc
    pop af
    cp $c8
    rst $38
    add $ff
    pop bc
    rst $38
    sub b
    rst $28
    add d
    db $fd
    ld [$00f7], sp
    rst $38
    add c
    ld a, a
    ld e, $ff
    jr nz, @+$01

    ret nz

    rst $38
    db $10
    rst $28
    jr nz, jr_053_7bf7

    ld [hl], e
    adc a
    ld b, b
    cp a
    nop

jr_053_7c1d:
    rst $38
    ld [hl], c
    adc [hl]
    dec sp
    call nz, Call_000_01fe
    call c, Call_000_062f
    ld sp, hl
    ld a, [de]
    push hl

jr_053_7c2a:
    add hl, de
    and $f9
    add $39
    add $30
    rst $08
    dec l
    jp nc, $ce31

    db $fc
    inc bc
    rst $38
    rlca
    ld a, b
    add a
    inc a
    rst $08
    ld [$90ff], sp
    rst $38
    jr c, @-$1f

jr_053_7c44:
    cp [hl]
    ld b, a

jr_053_7c46:
    cp $03
    cp $01
    dec e
    ld [c], a

jr_053_7c4c:
    jr nc, jr_053_7c1d

    nop
    rst $38
    rst $00
    ccf
    jp c, Jump_000_223d

    db $fd
    rla
    ld hl, sp-$31
    jr c, jr_053_7c2a

    jr c, jr_053_7c4c

    jr jr_053_7c46

    jr jr_053_7c44

    inc e
    pop hl
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    nop
    rst $38
    add sp, $17
    cp b
    ld b, a
    sbc $21
    ld l, l
    db $10
    ld [$7500], sp
    nop
    db $db
    inc h
    db $ed
    ld [de], a

Jump_053_7c7c:
    sbc [hl]
    ld h, c
    rra
    ldh [$bf], a
    ld b, b
    rst $38
    nop
    cp [hl]
    ld b, c
    db $ec
    inc de
    cp $01
    rst $38
    nop
    rra
    ldh [$f7], a
    ld [$2ed1], sp
    jp Jump_053_7b3c


    add h
    ldh a, [rIF]
    ld bc, $01fe
    cp $2c
    db $d3
    ld a, b
    add a
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    inc b
    ei
    add b
    rst $38
    nop
    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    add b
    rst $38
    rst $38
    rra
    rst $38

jr_053_7cc3:
    ld a, a
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    inc a
    rst $38
    cp a
    jr c, @+$01

    ret z

    rst $38
    add sp, -$01
    xor $ff
    ld [c], a
    rst $38
    db $e3
    rst $38
    nop
    rst $38
    inc h
    rst $18
    jp nz, Jump_000_3b3d

    db $fc
    ccf
    ret nz

    rst $38
    ldh [rNR34], a
    rst $38
    ret c

    daa
    reti


    daa
    ld sp, hl
    rlca
    ld a, [$f207]
    rrca
    call z, $303f
    rst $38
    add b
    rst $38
    jr c, jr_053_7cc3

    db $eb
    inc d
    ld a, c
    add [hl]
    db $10
    rst $28
    inc c
    rst $38
    add [hl]
    ld sp, hl
    add b
    rst $38
    ld b, [hl]
    ld sp, hl
    ld d, [hl]
    ld sp, hl
    ld b, b
    rst $38
    jr @+$01

    inc b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    sub c
    xor $00
    rst $38
    daa
    ret c

    rst $20
    jr jr_053_7d4e

    ret nc

    ccf
    ret nz

    ld a, [bc]
    push af
    ld b, b
    cp a
    xor c
    ld d, a
    ldh [$1f], a
    cp a
    ld b, b
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    ld e, a
    and b
    ccf
    ret nz

    ccf
    ret nz

    ld e, a
    and b
    ret nc

    rst $28
    ld c, e
    rst $38
    jr c, @+$01

    ld h, b
    rst $38
    ld b, b
    rst $38
    push bc
    cp d
    ld a, a
    add b
    rst $38
    nop
    cp a
    ret nz

    sbc l
    ld [c], a

jr_053_7d4e:
    dec e
    db $e3
    ld h, h
    rst $38
    sbc h
    ld a, a
    dec h
    sbc $d7
    inc l
    rst $38
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    rst $38
    inc b
    rst $38
    sbc [hl]
    cp $ff
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld d, c
    rst $38
    nop
    rst $38
    rla
    add sp, $1f
    ldh [$be], a
    ld b, c
    ld b, a
    nop
    inc bc
    nop
    pop af
    nop
    ld [hl], a
    add b
    rst $38
    nop
    db $fc
    inc bc
    inc bc
    nop
    ld [$0a03], sp
    inc bc
    ld bc, $c202
    inc bc
    add e
    inc bc
    and b
    inc bc
    jr nz, jr_053_7d93

    dec de
    rlca
    ld [hl], a

jr_053_7d93:
    rrca
    rst $38
    rrca
    rst $30
    rrca
    ld a, $0f
    ld de, $0d0f
    rrca
    ld l, a
    rrca
    rst $38
    rra
    db $e3
    rra
    xor a
    rra
    rst $38
    rra
    rst $38
    rra
    rst $28
    rra
    rst $20
    rra
    ldh [$1f], a
    cp $1f
    db $fd
    rra
    cp $1f
    db $fd
    rra
    rst $38
    rra
    db $fc
    rra
    rst $38
    rra
    cp $1f
    rst $38
    rra
    ld a, a
    rra
    rst $38
    rra
    rst $30
    rla
    di
    inc bc
    ccf
    rrca
    rst $38
    rrca
    rst $38
    rrca
    ld a, h
    add e
    ld hl, sp+$07
    add b
    ld a, a
    ld [bc], a
    rst $38
    ld b, $f9
    adc a
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    ld d, e
    xor h
    cp b
    ld b, a
    cp l
    ld b, d
    ld a, l
    add d
    ccf
    ret nz

    ccf
    ret nz

    sub b
    rst $28
    adc a
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$1f]
    ldh [rDMA], a
    cp c
    ld b, $f9
    inc b
    ei
    inc c
    di
    dec l
    db $d3
    ld b, $f9
    ld [hl], a
    ld hl, sp+$00
    rst $38
    ret


    scf
    ld l, d
    sbc l
    dec de
    db $fc
    ld d, a
    cp b
    rla
    ld hl, sp+$17
    ld hl, sp-$10
    rst $38
    db $10

jr_053_7e15:
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld a, h
    add e
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rra

jr_053_7e23:
    ldh [$2f], a
    ret nc

    rst $00
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    sbc e
    ld a, h
    dec bc
    db $fc
    call nc, $e32f
    inc e
    di
    inc c
    rst $38
    nop
    ld a, e
    add h
    nop
    rst $38
    rst $38
    rst $38
    nop

jr_053_7e3f:
    rst $38
    nop
    rst $38
    jr nz, jr_053_7e23

    jr nc, jr_053_7e15

    ld a, [$7607]
    adc a
    db $ec
    rra
    ret nc

    ccf
    xor h
    di
    rrca
    ldh a, [rIF]
    ldh a, [$9f]
    ld [hl], b
    srl h
    cpl
    db $d3
    sbc a
    ld h, b
    jp $e13c


    ld e, $ff
    nop
    cp a
    ld b, b
    inc e
    db $e3
    ld hl, $3fff
    rst $38
    inc a
    rst $38
    adc b
    rst $38
    jr c, jr_053_7e3f

    push af
    ld a, [bc]
    ld a, e
    add h
    cp e
    ld b, h
    ld a, e
    add h
    rst $38
    nop
    dec a
    jp nz, $df20

    rra
    rst $38
    add b
    nop
    and b
    add b
    ldh [rNR41], a
    ldh [rNR41], a
    add sp, -$18
    inc a
    inc a
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_053_7ea8

    ld l, b
    ld a, b
    jr jr_053_7eb4

    nop
    nop
    add b
    add b
    nop
    add b
    add b
    add b
    sub b
    sub b
    nop
    add b

jr_053_7ea8:
    add b
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

jr_053_7eb4:
    nop
    nop
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ld e, e
    db $db
    xor [hl]
    rst $38
    rst $28
    db $10
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [$f8]
    rst $38
    ld hl, sp+$0f
    rst $30
    ld c, $fb
    rlca
    rst $38
    nop
    ld a, l
    add d
    ld a, b
    add a
    ld l, c
    sub [hl]
    ld [hl], e
    adc h
    ld a, e
    add h
    ld a, c
    add [hl]
    ld [$82f7], sp
    db $fd
    ld d, d
    db $ed
    add d
    ld a, a
    sub a
    ld a, b
    rst $28
    jr jr_053_7f65

    adc l
    inc b
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    ld bc, $f5fe
    ld a, [$e51a]
    sbc b
    ld h, a
    cp [hl]
    ld b, c
    cp $01

Jump_053_7f00:
    cp [hl]
    ld b, c
    ld a, $c1
    nop
    rst $38
    nop
    rst $38
    rst $00
    rst $38
    jr @+$01

    ld [$c8ff], sp
    ccf
    ret c

    ccf
    ldh a, [$1f]
    ld a, [c]
    dec e
    di
    inc c
    db $e3
    inc e
    ret nz

    ccf
    adc a
    ld a, a
    ld sp, $97de
    ld hl, sp-$61
    ld [hl], b
    rst $00
    jr c, @-$17

    jr @+$01

    nop
    inc hl
    call c, $fe01
    ld [hl], h
    ei
    ld l, $f1
    ld e, l
    ld [c], a
    cp a
    ret nz

    cp b
    ld b, a
    ld [bc], a
    rst $38
    dec a
    rst $38
    ld e, $e1
    ld e, $e1
    cp a
    ld b, b
    cp [hl]
    ld b, c
    sbc [hl]
    ld h, c
    add b
    ld a, a
    ret nz

    rst $38
    ld b, l
    rst $38
    db $e4
    rra
    ld [$ed17], a
    inc de
    rst $38
    ld bc, $3fc1
    dec c
    rst $38
    db $fd
    rst $38
    add d
    rst $38
    nop
    rst $38
    db $10
    rst $28
    rlca
    nop
    add a
    nop
    rlca

jr_053_7f65:
    nop
    rrca
    rlca
    rrca
    rlca
    dec b
    rrca
    db $dd
    rrca
    and c
    rst $38
    ld [de], a
    ld e, $0e
    ld c, $08
    ld [$3030], sp
    db $10
    stop
    nop
    nop
    nop
    ld c, $0e
    rrca
    rrca
    ld c, $0f
    ld [$130f], sp
    rra
    inc c
    inc e
    jr c, jr_053_7fc4

    jr nc, jr_053_7fbe

    inc bc
    inc bc
    ld c, $0f
    inc e
    rra
    jr jr_053_7fb5

    inc e
    rra
    ld c, $0f
    daa
    daa
    jr nz, jr_053_7fbe

    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_053_7fbe

    jr jr_053_7fc0

    nop
    nop
    jr nz, jr_053_7fcc

    ld h, b
    ld h, b
    ld l, a
    ld l, a
    ld h, d
    ld h, d
    ld h, b
    ld h, b
    nop

jr_053_7fb5:
    nop
    nop
    nop
    nop
    nop
    xor l
    xor l
    rst $38
    rst $38

jr_053_7fbe:
    rst $18
    rst $38

jr_053_7fc0:
    db $fc
    inc bc
    cp a
    ld c, a

jr_053_7fc4:
    db $eb
    inc e
    srl h
    db $fc
    inc bc
    cp $01

jr_053_7fcc:
    dec l
    jp nc, Jump_053_5fa0

    rst $28
    rra
    pop hl
    ld e, $15
    ld [$01fe], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    db $76
    adc c
    ei
    inc b
    cp [hl]
    pop bc
    call z, $ea33
    dec e
    ldh [$1f], a
    ret nz

    rst $38
    ld c, e
    db $f4
    dec sp
    db $fc
    rrca
    rst $38
    call nc, $fc2b
    inc bc
    sbc b
    ld h, a
    ld bc, $41ff
    rst $38
    ld b, c
    rst $38
