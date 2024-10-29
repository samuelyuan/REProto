SECTION "ROM Bank $05d", ROMX[$4000], BANK[$5d]

Call_05d_4000:
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
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop

Jump_05d_401d:
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
    nop
    nop
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
    stop
    nop
    nop
    nop

Jump_05d_403f:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    inc b
    nop
    inc c
    nop
    inc h
    nop
    inc c
    nop
    sub [hl]
    nop
    cp a
    nop
    ld d, [hl]
    nop
    sbc [hl]
    nop
    ld d, $00
    ld a, a
    nop
    cp $00
    rst $28
    nop
    halt
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

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
    nop
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
    ld [$0000], sp
    nop
    jr jr_05d_40a4

jr_05d_40a4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, b
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ld c, $00
    ld bc, $8300
    nop
    ld bc, $0300
    nop
    ld [$0100], sp
    nop
    inc bc
    nop
    inc b
    nop
    dec h
    nop
    ld d, d
    nop
    ld b, c
    nop
    ld a, [hl+]
    nop
    add c
    nop
    inc bc
    nop
    dec bc
    nop
    rrca
    nop
    rla
    nop
    rra
    nop
    rra
    nop
    or a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    di
    inc c
    pop af
    ld c, $fc
    inc bc
    cp $01
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ret nz

    nop
    add b
    nop
    add b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
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
    ld hl, sp+$00
    ldh [rP1], a
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
    stop
    nop
    nop
    ld bc, $1800
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0300
    nop
    ld bc, $8200
    nop
    ld bc, $5200
    nop
    rlca
    nop
    ld de, $1a00
    nop
    dec de
    nop
    ld c, $00
    ld e, a
    nop
    dec c
    nop
    sbc l
    nop
    rra
    nop
    rla
    nop
    rrca
    nop
    rlca
    nop
    adc l
    nop
    rla
    nop
    sbc a
    nop
    sub l
    nop
    rst $10
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    rst $20
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$cc], a
    jr nc, jr_05d_41e7

    jr jr_05d_41f7

    inc c
    inc b
    inc bc
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    rst $38
    dec b
    ld a, [$ff00]
    add b
    rst $38
    ret nz

    rst $38
    db $f4
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_05d_41e7:
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
    ret nz

    nop
    ld bc, $0100
    nop
    nop

jr_05d_41f7:
    nop
    nop
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    stop
    ld [de], a
    nop
    inc de
    nop
    ld [$0500], sp
    nop
    add c
    nop
    add $00
    inc b
    nop
    ld h, $00
    rlca
    nop
    rlca
    nop
    daa
    nop
    ld b, $00
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
    ld b, b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    stop
    inc bc
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    ld [$0900], sp
    nop
    dec h
    nop
    inc h
    nop
    stop
    inc d
    nop
    jr z, jr_05d_424e

jr_05d_424e:
    dec a
    nop
    add a
    nop
    dec b
    nop
    ccf
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    xor a
    nop
    ld c, l
    nop
    rst $18
    nop
    cp a
    nop
    ld e, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    ldh [rP1], a
    add c
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [$8f], a
    ld [hl], b
    ld b, e
    inc a
    rra
    rst $38
    ld c, a
    cp a
    inc bc
    rst $38
    dec a
    jp Jump_000_00ff


    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTMA]
    ld sp, hl
    inc bc
    db $fc
    add a
    ld hl, sp-$21
    ldh [$cf], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    add c
    cp $00
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_05d_42c8

jr_05d_42c8:
    ld h, b
    nop
    ret z

    nop
    ret z

    nop
    add b
    nop
    rst $30
    nop
    rst $18
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
    sub e
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    jp $0f00


    nop
    dec bc
    nop
    rra
    nop
    ld b, e
    nop
    add l
    nop
    rla
    nop
    rra
    nop
    ld [de], a
    nop
    ld b, l
    nop
    rla
    nop
    dec bc
    nop
    rra
    nop
    dec c
    nop
    ccf
    nop
    ld l, a
    nop
    rst $18
    nop
    ld h, a
    nop
    xor e
    nop
    xor l
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
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
    nop
    cp a
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
    rst $38
    db $fc
    rst $38
    add sp, -$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    db $f4
    ei
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ldh [rIE], a
    call nc, $c8eb
    rst $30
    add h
    ei
    cp a
    ret nz

    ccf
    ret nz

    ld a, [hl]
    add c
    cp b
    rst $00
    ret nz

    rst $38
    ldh a, [rIE]
    ld a, b
    rst $38
    cp [hl]
    ld a, a
    sbc a
    ld a, a
    scf
    rst $08
    ld a, e
    add a
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
    ld a, a
    add b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    rra
    ldh [$c4], a
    rst $38
    ld b, d
    cp l
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38

jr_05d_43a4:
    nop
    rst $38
    rrca
    ldh a, [$5f]
    and b
    ld a, a
    add b
    cpl
    ret nc

    rrca
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$8f]
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b

jr_05d_43d4:
    adc a
    ld [hl], b

jr_05d_43d6:
    add a
    ld a, b

jr_05d_43d8:
    adc a
    ld [hl], b

jr_05d_43da:
    add a
    ld a, b

jr_05d_43dc:
    add a
    ld a, b

jr_05d_43de:
    add a
    ld a, b

jr_05d_43e0:
    adc a
    ld [hl], b

jr_05d_43e2:
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b

jr_05d_43e8:
    add a
    ld a, b

jr_05d_43ea:
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    rst $00
    jr c, jr_05d_43d4

    jr c, jr_05d_43d6

    jr c, jr_05d_43d8

    jr c, jr_05d_43da

    jr c, jr_05d_43dc

    jr c, jr_05d_43de

    jr c, jr_05d_43e0

    jr c, jr_05d_43e2

    jr c, jr_05d_43a4

    ld a, b
    rst $00
    jr c, jr_05d_43e8

    jr c, jr_05d_43ea

    jr c, jr_05d_442c

    ld hl, sp-$39
    jr c, @-$07

    ld [$00ff], sp

jr_05d_442c:
    ld sp, hl
    nop
    ldh [rP1], a
    nop
    nop
    ld bc, $0f00
    nop
    rra
    nop
    ccf
    nop
    rra

Call_05d_443b:
    nop
    rra
    nop
    ccf

Call_05d_443f:
    nop
    ccf
    rst $38
    ccf
    rst $38
    ld a, $ff
    ld a, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld bc, $01fe
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
    add e
    db $fc
    rst $00
    ld hl, sp-$19
    ld hl, sp-$05
    db $fc
    ld a, l
    cp $bf
    ld a, [hl]
    rst $18
    ccf
    ei
    rlca
    db $fd
    inc bc
    rst $38
    ld bc, $01fe
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
    db $10
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [$08]
    ldh a, [rP1]
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld e, $e0
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, $00
    ld e, $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    sub e
    rst $28
    jr nz, @-$1f

    ld [hl], b
    adc a
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
    ldh [$1f], a
    ldh a, [rIF]
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ld [hl], b
    adc a
    or b
    rst $08
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rrca
    rst $38
    ld l, a
    sbc a
    scf
    rst $08
    dec a
    jp $c13e


    rra
    ldh [rLCDC], a
    ccf
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
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    ccf
    nop
    ccf
    ld bc, $013e
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $c1
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $40
    ccf
    add h
    ccf
    ld b, b
    ccf
    call nz, Call_05d_443f
    ccf
    call nz, $843f
    ccf
    call nz, $c43f
    ccf
    call nz, $c03f
    ccf
    call nz, $c43f
    ccf
    db $e4
    ccf
    call nz, $d43f
    ccf
    call nz, $c43f
    ccf
    call nz, $c43f
    ccf
    call nc, $ed3f
    ccf
    push de
    ccf
    rst $08
    ccf
    rst $20
    ccf
    rst $30
    ccf
    rst $10
    ccf
    rst $18
    ccf
    rst $10
    ccf
    rst $38
    ccf
    rst $28
    ccf
    rst $10
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $28
    ccf
    rst $38
    ccf
    rst $10
    ccf
    rst $08
    ccf
    rst $20
    ccf
    rst $30
    ccf
    rst $18
    ccf
    rst $38
    ccf
    rst $28
    ccf
    cp $3f
    xor a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    or [hl]
    ld a, a
    xor a
    ld a, a
    sbc a
    ld a, a
    ld hl, $80ff
    rst $38
    pop hl
    cp $fb
    db $fc
    db $f4
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    inc c
    nop
    nop
    nop
    stop
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
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$67
    ld hl, sp-$49
    ld hl, sp-$39
    ld hl, sp-$11
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp+$3d
    cp $ff
    rst $38
    ret nz

    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    ld [$80f7], sp
    ld a, a
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    ld [$84f7], sp
    ld a, a
    inc b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld a, b
    add a
    call nc, Call_05d_5ca3
    and e
    ld d, $e9
    ldh a, [$8d]
    rst $30
    adc b
    ld a, a
    add b
    db $d3
    and h
    rla
    add sp, -$49
    ret z

    push af
    adc b
    rst $10
    xor b
    db $db
    and h
    db $db
    and h
    sub a
    add sp, -$59
    ret c

    and [hl]
    reti


    push de
    xor d
    reti


    and [hl]
    reti


    and [hl]
    and l
    jp c, $d9a7

    and $99
    db $db
    and h
    sbc c
    and $99
    and $e6
    reti


    and [hl]
    reti


    sub [hl]
    jp hl


    sbc c
    and $9d
    and $a6
    reti


    add [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    ld a, [de]
    push hl
    add hl, de
    and $a9
    sub $96
    jp hl


    add h
    ei
    adc d
    push af
    sub b
    rst $28
    adc c
    or $82
    db $fd
    add h
    ei
    adc b
    rst $30
    sub d
    db $ed
    add c
    cp $82
    db $fd
    sub h
    db $eb
    add h
    ei
    sub b
    rst $28
    add c
    cp $05
    cp $85
    ld a, [$fb85]
    sub e
    rst $28
    add a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    rst $08
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    call c, $feff
    rst $38
    ld [hl], c
    rst $38
    call z, $fb3f
    rlca
    cp $01
    ccf
    ret nz

    ld c, a
    ldh a, [rNR22]
    ld hl, sp+$01
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
    ldh [rIE], a
    ld bc, $48ff
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

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ccf
    ret nz

    inc bc
    rst $38
    db $e3
    db $fc
    ld a, a
    add b
    nop
    rst $38
    ccf
    ret nz

    xor c
    nop
    cp e
    nop
    dec [hl]
    nop
    add [hl]
    nop
    ld l, [hl]
    add b
    ld c, l
    add b
    dec d
    ret nz

    dec hl
    ret nz

    dec de
    ldh [$15], a
    ldh [$0e], a
    ldh a, [rTMA]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    rra
    ld [hl], b

Jump_05d_473d:
    adc a
    ret nc

    cpl
    ld l, b
    rla
    ret c

    daa
    ld [hl], h
    adc e
    jp c, Jump_05d_7705

    adc c
    db $dd
    inc hl
    add c
    ld [hl], a
    ld e, l
    and e
    ld h, l
    sbc e
    ld h, c
    sbc l
    ld d, a
    xor c
    sub l
    ld l, e
    sub c
    ld h, a
    ld e, a
    and e
    ld h, l
    sbc e
    ld l, c
    sbc l
    sub a
    ld l, c
    sbc e
    ld h, a
    sbc e
    ld h, l
    ld h, c
    sbc a
    ld l, l
    sbc e
    ld h, a
    sbc c
    add l
    ld a, e
    sbc c
    ld h, a
    sbc c
    ld h, a
    ld h, e
    sbc a
    ld b, l
    cp e
    and a
    ld e, c
    add hl, bc
    rst $30
    rra
    push hl
    xor a
    ld d, a
    ld b, e
    cp a
    sub l
    ld a, e
    inc hl
    rst $18
    ld d, $ee
    sbc a
    ld l, a
    ld e, a
    cp a
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
    cp $ff
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [$df], a
    ldh [$bf], a
    ret nz

    ld a, a
    add b
    rra
    ldh [$c7], a
    ld hl, sp-$37
    cp $0c
    rst $38
    call $d03e
    rst $28
    ld h, h
    ei
    inc c
    rst $38
    ld b, e
    rst $38
    sub d
    ld a, l
    db $f4
    rrca
    db $fd
    inc bc
    rst $38
    nop
    ld a, a
    add b
    rra
    ldh [rNR22], a
    ld hl, sp-$7b
    cp $01
    rst $38
    inc bc
    rst $38
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    rlca
    nop
    ld b, $00
    nop
    nop
    jr nz, @+$01

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
    ld b, $f9
    rlca
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp-$39
    ccf
    adc a
    ldh a, [rIE]
    nop
    ld hl, sp+$07
    rra
    ldh [$ec], a
    nop
    sbc [hl]
    nop
    adc l
    nop
    xor e
    nop
    ld [hl], e
    nop
    ld [hl], e
    nop
    ld l, a
    nop
    sbc h
    nop
    sbc h
    nop
    cp a
    nop
    ld l, e
    nop
    rst $30
    nop
    ld l, c
    ld [bc], a
    ld a, a
    nop
    sbc h
    nop
    sbc h
    nop
    ei
    nop
    add h
    ld h, e
    db $d3
    daa
    ld a, l
    add d
    ld [hl], $c8
    dec e
    ldh [$1f], a
    ldh [$0d], a
    ld a, [c]
    inc c
    di
    inc b
    ei
    ld b, $f8
    db $fd
    nop
    cp $00
    add b
    nop
    ei
    inc b
    ld [hl], b
    ld a, a
    ldh [$7f], a
    pop bc
    ld a, a
    add e
    ld a, a
    add a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    sbc a
    ld a, a
    cp [hl]
    ld a, a
    db $fc
    ld a, a
    db $fc
    ccf
    rst $38
    nop
    rra
    nop
    inc h
    nop
    jr nz, jr_05d_4866

jr_05d_4866:
    jr nz, jr_05d_4868

jr_05d_4868:
    inc l
    nop
    ld a, [hl+]
    inc b
    jr nz, jr_05d_486e

jr_05d_486e:
    jr nz, jr_05d_4870

jr_05d_4870:
    rst $18
    jr nz, @-$3b

    inc a
    db $fc
    inc bc
    add e
    db $fc
    add e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    ld hl, sp-$1d
    db $fc
    add $f9
    push de
    ld [$e718], a
    db $e4
    dec de
    push af
    ld a, [bc]
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
    db $fc
    inc bc
    ei
    inc b
    db $eb
    db $10
    adc $f0
    set 6, h
    ld d, h
    rst $28
    add [hl]
    ld a, a
    ld h, a
    sbc [hl]
    ld [$bbf5], a
    ld a, h
    and [hl]
    rst $18
    ld l, l
    di
    db $db
    inc a
    or $0f
    cp h
    inc bc
    ld sp, hl
    nop
    ld h, a
    add b
    rst $38
    ldh [$fb], a
    db $fc
    inc c
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, $ff
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
    ld [$06ff], sp
    rst $38
    add h
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    sub l
    ld [$0cf3], a
    push af
    ld a, [bc]
    ld d, $e9
    rst $30
    nop
    or d
    ld b, c
    or e
    ld b, b
    ld l, l
    nop
    sbc d
    inc b
    ld d, $88
    or h
    add hl, bc
    ld l, d
    ld bc, $8275
    ld d, b
    and e
    ld l, [hl]
    ld bc, $1c80
    inc l
    sub b
    ld d, [hl]
    add hl, bc
    add sp, $03
    ld b, [hl]
    and c
    ld h, h
    add e
    sub d
    ld c, c
    cp c
    inc e
    sbc c
    inc a
    ret nz

    dec de
    ld a, h
    add e
    nop
    rst $20
    ld [hl], b
    add a
    db $ec
    inc de
    inc b
    add hl, sp
    inc b
    add hl, sp
    db $ec
    inc de
    ld b, a
    nop
    rst $00
    nop
    nop
    nop
    add sp, $00
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    pop bc
    rst $38
    add e
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rlca
    ld hl, sp+$00
    rra
    nop
    ld [$0000], sp
    nop
    nop
    nop
    and h
    nop
    or e
    inc b
    daa
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$c0], a
    ccf
    cp $81
    rst $20
    ld hl, sp-$80
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, h
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    ccf
    rst $18
    rra
    rst $28
    rra
    rst $28
    xor a
    ld e, a
    sbc $2f
    ld l, [hl]
    sbc a
    cp [hl]
    ld c, a
    xor $1f
    cp $0f
    xor $1f
    cp $0f
    rst $38
    ld c, $ef
    ld e, $af
    ld e, [hl]
    rst $28
    ld e, $cf
    ld a, $cf
    ld e, $7f
    ld e, $ef
    inc e
    ld a, h
    sbc [hl]
    ld e, l
    cp [hl]
    db $fd
    ld a, [hl]
    ld a, h
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    push bc
    rst $38
    ld [hl], d
    db $ed
    call $bb3e
    rst $00
    xor [hl]
    ld [hl], c
    db $ed
    ld e, $fb
    rlca
    and $01
    sbc a
    nop
    ld a, c
    add b
    rra
    ldh [rTMA], a
    ld hl, sp+$07
    cp $11
    rst $38
    db $10
    rst $38
    jr nz, jr_05d_49e2

jr_05d_49e2:
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $03fe
    db $fc
    nop
    rst $38
    cp a
    ld c, b
    db $76
    add hl, bc
    ld a, [c]
    inc c
    pop af
    ld c, $f2
    dec c
    db $e3
    inc e
    ld h, d
    sbc h
    db $ed
    db $10
    ldh [rNR24], a
    db $ed
    db $10
    ld [c], a
    inc e
    pop hl
    ld e, $61
    sbc [hl]
    ld h, d
    sbc h
    ld l, h
    sub c
    ld a, e
    sub b
    ld c, d
    or c
    ld b, c
    cp h
    ld b, [hl]

jr_05d_4a25:
    cp b
    ld d, b
    cp [hl]
    ld e, a
    xor b
    ld b, h
    cp c
    ld c, b
    or e
    ld b, h
    or e
    ld [de], a
    jp hl


    dec b
    ld hl, sp+$22
    db $fc
    ld sp, $02fc
    ld sp, hl
    inc a
    db $e3
    jr nc, jr_05d_4a25

    inc e
    db $e3
    ld hl, sp+$00
    call z, Call_05d_7020
    nop
    nop
    nop
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add c
    rst $38
    add e
    rst $38
    adc a
    ld [hl], a
    rrca
    ldh a, [$c1]
    ld a, $fe
    ld bc, $00ff
    rst $38
    nop
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc e
    ld h, h
    rst $38
    nop
    rst $38
    nop
    cp $01
    dec b
    ld a, [$1ce3]
    rst $38
    ldh [$f8], a

jr_05d_4a7f:
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
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
    rlca
    rst $38
    ld b, b
    ccf
    db $10
    rlca
    ld [hl-], a
    ld bc, $01bc
    ld c, c
    nop
    ld b, $00
    rst $20
    jr jr_05d_4a7f

    inc hl
    rst $30
    ld [$205f], sp
    ld l, a
    add b
    dec sp
    nop
    db $fd
    ld [bc], a
    pop af
    ld [$20df], sp
    adc $00

Jump_05d_4ab4:
    ld a, a
    nop
    rst $30
    nop
    ld a, e
    add h
    ld sp, hl
    nop
    rst $28
    nop
    ld a, $c0
    cp a
    ret nz

    ld [$9c9d], a
    ld a, a
    call Call_05d_723e
    adc l
    call $bbf3
    ld a, h
    ld l, [hl]
    sbc a
    db $dd
    db $e3
    sub a
    ld a, b
    push hl
    ld e, $9d
    inc bc

jr_05d_4ad8:
    ld a, a
    nop
    and [hl]
    nop
    cp $80
    add hl, de
    ldh [$08], a
    db $fc
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

jr_05d_4aee:
    nop
    rst $38
    inc c
    di
    ld c, $f1
    rra
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    ldh [$1f], a
    rlca
    ld hl, sp-$24
    nop
    ld a, $00
    inc h
    jr jr_05d_4ad8

    db $10
    sbc e
    ld b, b
    daa
    ret nz

    ld h, e
    add b
    sbc e
    ld b, b
    xor h
    db $10
    inc l
    db $10
    inc l
    db $10
    dec hl
    sub b
    sub a
    ld b, b
    ld h, a
    add b
    ld d, a
    add b
    inc sp
    add b
    ret c

    jr nz, jr_05d_4b43

    ld h, b
    ld [hl], b
    ld a, [bc]
    inc bc
    or h
    ret z

    rlca
    ld b, b
    adc a
    or a
    nop
    ld d, [hl]
    jr nz, jr_05d_4aee

    ld b, b
    ld a, [de]
    ld h, c

Call_05d_4b38:
    ld d, h
    inc hl
    xor b
    rlca
    db $10
    adc a
    or b
    rrca
    ld a, a
    nop
    rst $38

jr_05d_4b43:
    nop
    rst $38
    nop
    ld bc, $e000
    ld hl, sp-$40
    db $fc
    add b
    db $ec
    nop
    db $fc

jr_05d_4b50:
    nop
    db $fc
    ld [$18fc], sp
    db $fc
    jr nc, jr_05d_4b50

    ld [hl], b
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld [$08f0], sp
    ldh a, [$08]
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    ld l, c
    sub b
    ld l, c
    sub b
    sub h
    ei
    sub h
    ei
    sub a
    ld hl, sp+$12
    db $fd
    dec de
    db $f4
    ld de, $10fe
    rst $38
    sub b
    rst $38

Jump_05d_4b80:
    ld l, $d0
    inc l
    ret nc

    ld e, l
    ldh [$dd], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [$de], a
    ldh [rHDMA3], a
    ld l, h
    add e
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
    ld a, a
    rst $38
    cp a
    ld a, a
    ld a, a
    cp a
    rst $18
    ccf
    cp a
    ld e, a
    ld l, a
    sbc a
    ld [hl], a
    rrca
    rst $08

jr_05d_4baf:
    rlca
    db $d3
    rrca
    ld d, a
    inc hl
    ld l, l
    add e
    add hl, sp
    ld bc, $0172
    call $9c02
    nop
    ld b, a
    jr nc, jr_05d_4baf

    ld bc, $04fa
    ld [hl], c
    adc b
    cp a
    ld h, b
    ld l, c
    or $f1
    ld a, [hl]
    ld l, a
    or c
    di
    dec c
    sbc b
    rst $20
    ld h, a
    ld hl, sp-$28
    ccf
    scf
    rst $08
    ld l, h
    di
    db $db
    inc a
    ld [hl], $0f
    db $fd
    inc bc
    rlc b
    call nz, $7f00
    add b
    ld c, c
    ldh a, [$3b]
    db $fc
    nop
    rst $38
    inc de
    db $fc
    ld bc, $01fe
    cp $01
    cp $00
    rst $38
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
    rrca
    ldh a, [$b9]
    nop
    inc a
    nop
    ld a, h
    nop
    dec sp
    nop
    or a
    nop
    rst $00
    nop
    rst $08
    nop
    add a
    nop
    ld [hl-], a
    nop
    ld a, b
    nop
    ld hl, sp+$00
    ld [hl], d
    nop
    ld h, $00
    adc a
    nop
    adc l
    nop
    cpl
    nop
    ld h, l
    nop
    ld a, [c]
    ld bc, $03f4
    sbc b
    ld h, a
    jr nc, jr_05d_4c7b

    add b
    rra
    and b
    rra
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

Call_05d_4c3b:
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
    ld [$1eff], sp
    ld sp, hl
    ld [hl-], a
    db $fc
    ld a, a
    ldh [$7c], a
    jp $87ff


    pop hl
    ld c, $ff
    nop
    call $fe00
    nop
    db $fd

jr_05d_4c5d:
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $17
    ld hl, sp-$71
    ld [hl], b
    db $d3
    inc l
    ld h, c
    sbc [hl]
    pop hl
    ld e, $91
    ld l, [hl]
    dec de
    db $e4
    ld c, $f1
    inc e

jr_05d_4c7b:
    db $e3
    or [hl]
    ld c, c
    db $e3
    inc e
    pop hl
    ld e, $23
    call c, $e916
    inc e
    db $e3
    inc a
    jp Jump_000_1be4


    add $39
    ld b, e
    cp h
    ld h, e
    sbc h
    xor [hl]
    ld d, c
    jr c, jr_05d_4c5d

    ld a, [hl]
    add c
    dec sp
    call nz, $d1ae
    sbc e
    db $e4
    rst $00
    ld hl, sp-$17
    or $e3
    db $fc
    ldh a, [rIE]
    ei
    db $fc
    ei
    db $fc
    db $fd
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    ccf
    rra
    ccf
    sbc a
    ld a, a
    rst $28
    rra
    rst $38
    rrca
    ld [hl], a
    adc a
    cp e
    rst $00
    db $e3
    rst $18
    rst $18
    db $e3
    ccf
    add $db
    scf
    scf
    set 3, h
    db $e3
    cp e
    ld a, h
    xor $1f
    sbc e
    rst $20
    ld [hl], $f9
    db $ed
    ld e, $f3
    rrca
    cp [hl]
    ld bc, $00ff
    rst $38
    nop
    ccf
    ret nz

    rst $08
    jr nc, @-$0b

    inc c
    db $fc
    inc bc
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

    dec sp
    ret nz

    cp b
    nop
    ld l, b
    nop
    ret nc

    nop
    ld d, b
    nop
    jr nz, jr_05d_4d0a

jr_05d_4d0a:
    add b
    nop
    add b
    nop
    add c

jr_05d_4d0f:
    nop
    inc hl
    nop
    rlca
    nop
    adc [hl]
    ld bc, $0699
    inc [hl]
    dec bc
    jr z, @+$19

    ld d, b
    cpl
    add c
    ld a, [hl]
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
    ld bc, $03ff
    cp $06
    db $fc
    ld c, $f8
    ld e, $f0
    ld [hl], $e0
    ld b, [hl]
    ldh [$ad], a
    ret nz

    ld a, [hl]
    add b
    rst $28
    nop
    jr c, jr_05d_4d0f

    ld l, h
    sub e
    call z, $9733
    ld l, b
    db $fc
    nop
    cp $00
    ei
    ld b, $ff
    inc c
    rst $28
    nop
    ldh [rSB], a
    inc bc
    nop
    ld bc, $b100
    nop
    ldh [rP1], a

jr_05d_4d62:
    ld [$9800], a
    inc bc
    jp $ed03


    ld [bc], a
    db $fd
    jr nz, jr_05d_4d90

    ldh a, [$0a]
    pop hl
    or c
    ld c, h
    db $e3
    inc e
    call z, $6232
    sbc h
    dec [hl]
    ret z

    ld a, [bc]
    pop hl
    inc h
    jp $934c


    add $39
    add c
    ld a, h
    ld b, d
    cp h
    ld h, a
    sbc b
    inc a
    jp $c728


    ld a, [$ec05]
    inc de

jr_05d_4d90:
    or a
    ld c, b
    call z, $fa30
    nop
    db $fd
    ld [bc], a
    ret nc

    rrca
    rst $30
    ld [$6699], sp
    ld a, a
    add b
    rst $18
    jr nz, jr_05d_4d62

    ld b, b
    rst $38
    nop
    xor l
    ld [de], a
    jp hl


    ld e, $fc
    inc bc
    sbc a
    ld h, b
    ld e, a
    add b
    ld a, a
    add b
    ld a, $c1
    cp e
    call nz, $f887
    db $d3
    ldh [$cf], a
    ldh a, [$ee]
    ldh a, [$f4]
    ld hl, sp-$0b
    ld hl, sp-$04
    ei
    ld hl, sp-$01
    db $fd
    cp $ff
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    db $ec
    rst $30
    cp $ff
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    sbc a
    ld l, a
    ld e, a
    cp a
    jp $98ff


    ld a, a
    db $e4
    rra
    ld sp, hl
    rlca
    cp $01
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    xor a
    ld [hl], b
    srl h
    ld [c], a
    rra
    ldh [$1f], a
    ldh a, [rIF]
    ld b, $01
    adc b
    rlca
    inc d
    dec bc
    jr nc, jr_05d_4e17

    inc [hl]
    dec bc
    call nz, $be3b
    ld b, c
    or h
    ld c, e
    ld [hl], l
    adc d
    ld e, d
    and l
    ld c, h
    or e
    ld d, b

jr_05d_4e17:
    xor a
    xor b
    ld d, a
    sub b
    ld l, a
    db $10
    rst $28
    nop
    rst $38
    ld bc, $02ff
    rst $38
    inc b
    cp $0d
    db $fc
    dec bc
    db $fc
    ld e, $f0
    ccf
    ldh [$7f], a
    ret nz

    jp nz, $8080

    nop
    nop
    nop
    inc h
    nop
    nop
    nop
    jr nz, jr_05d_4e3c

jr_05d_4e3c:
    nop
    nop
    nop
    nop
    ld b, b
    nop
    and b
    nop
    ret nc

    nop
    dec hl
    call nz, $8473
    call nc, $fb23
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld [hl], e
    nop
    xor a
    nop
    sbc a
    nop
    adc a
    nop
    rst $28
    nop
    or $00
    ld sp, hl
    nop
    pop af
    nop
    and $00
    ld e, [hl]
    nop
    ccf
    nop
    rst $18
    nop
    sbc $00
    dec l
    ret nz

    or d
    ld b, c
    db $eb
    nop
    ld d, l
    adc b
    cp l
    nop
    ld a, d
    inc b
    cp b
    ld b, $e5
    jr jr_05d_4ef7

    add c
    dec h
    jp nz, Jump_000_02d5

    ret z

    inc sp
    add [hl]
    ld a, c
    and c
    ld e, h
    call nz, Call_05d_4b38
    or b
    ld a, h
    add e
    ret nz

    rrca
    ld a, d
    dec b
    call nz, Call_000_3733
    ret z

    jp hl


    db $10
    ld e, [hl]
    ld hl, $01fe
    sbc h
    inc bc
    ld a, [c]
    dec c
    ei
    ld bc, $6798
    ld a, a
    add c
    pop af
    inc bc
    cp c
    ld b, a
    pop af
    rrca
    jp $ba3f


    ld b, a
    rst $30
    adc e
    or e
    rrca
    di
    rlca
    ei
    rlca
    ei
    rlca
    rst $10
    rrca
    ld h, a
    rra
    ld a, a
    rlca
    ccf
    rst $00
    ld [hl], a
    adc a
    rst $30
    rrca
    rst $00
    ccf
    sub a
    ld l, a
    adc a
    ld c, a
    rst $18
    rrca
    ccf
    rst $08
    rst $08
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    adc a
    rst $38
    jp $87ff


    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    adc a
    rst $18
    rra
    rst $38
    adc a
    rst $38
    ld l, a
    rst $38
    rst $18
    ccf
    rst $38
    rrca
    rst $38
    rrca
    rst $38

jr_05d_4ef7:
    rrca
    rst $28
    rra
    rst $28
    rra
    ccf
    rst $08
    rlca
    rst $38

Jump_05d_4f00:
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
    jr jr_05d_4f33

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05d_4f43

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05d_4f53

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05d_4f63

Call_05d_4f32:
    ld [hl-], a

jr_05d_4f33:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05d_4f73

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_05d_4f43:
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

jr_05d_4f53:
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

jr_05d_4f63:
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

jr_05d_4f73:
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
    jr jr_05d_5033

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05d_5043

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05d_5053

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05d_5063

    ld [hl-], a

jr_05d_5033:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05d_5073

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc b
    inc b
    inc b

jr_05d_5043:
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
    inc b
    inc b
    inc b

jr_05d_5053:
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
    inc b
    inc b
    nop
    inc b
    inc b
    inc b

jr_05d_5063:
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
    inc b
    ld bc, $0404

jr_05d_5073:
    inc b
    inc b
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
    inc b
    ld bc, $0604
    inc b
    ld b, $04
    inc b
    ld b, $04
    inc b
    inc b
    inc b
    ld b, $04
    nop
    nop
    ld bc, $0604
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
    nop
    nop
    ld bc, $0406
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
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
    inc b
    inc b
    nop
    nop
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
    inc b
    inc b
    nop
    nop
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
    ld b, $04
    nop
    nop
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
    inc b
    ld b, $04
    inc b
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
    inc b
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0604
    inc b
    ld bc, $0404
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    ld b, $04
    ld b, $04
    dec b
    ld bc, $0707
    rlca
    rlca
    rlca
    rlca
    dec b
    ld b, $04
    inc b
    ld c, $0e
    ld c, $0c
    ld [$0f08], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    ld [$0c08], sp
    inc c
    ld c, $0e
    inc c
    ld [$0f08], sp
    rrca
    rrca
    rrca
    rrca
    rrca

jr_05d_515b:
    rrca
    ld [$0c08], sp
    inc c
    add hl, bc
    ld c, $08

jr_05d_5163:
    ld [$0f08], sp
    rrca

jr_05d_5167:
    rrca
    rrca

jr_05d_5169:
    rrca
    rrca
    rrca
    ld [$0808], sp
    inc c
    add hl, bc

jr_05d_5171:
    ld c, $08
    inc c
    ld c, $09
    add hl, bc
    add hl, bc
    rrca
    add hl, bc
    add hl, bc
    ld c, $08
    ld [$0c08], sp
    sbc e
    ld h, b
    dec de
    add sp, -$75
    ld [hl], b
    adc e
    ld [hl], b
    adc e

jr_05d_5189:
    ld [hl], h
    sbc c
    ld h, [hl]
    db $10
    db $eb
    sub b
    ld l, a
    ld [hl], b
    add a
    jr nc, jr_05d_515b

    db $10
    rst $30
    db $10
    ld a, a
    jr nc, jr_05d_5171

    jr nc, jr_05d_5163

    jr nc, @-$27

    jr nc, jr_05d_5167

    jr nc, jr_05d_5169

    ld [hl], b
    add a
    jr nc, @-$2f

    db $e4
    jr jr_05d_5189

    rra
    db $e4
    ld [hl+], a
    ldh [rTAC], a
    ldh [$03], a
    ldh [$03], a
    ldh [rP1], a
    ret nz

    jr nz, @+$42

    and b
    ld b, b
    add b
    nop
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    ld b, b
    nop
    nop
    ld b, b
    nop
    ret nz

    nop

jr_05d_51c9:
    ret nz

    nop
    adc b
    nop
    jp nz, $8000

    add b
    ld [$0380], sp
    add b
    ld bc, $8100
    nop
    add b
    nop
    add c
    ld bc, $0180
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0200
    nop

jr_05d_51ef:
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0200
    nop
    ld h, e
    inc e
    pop hl
    call nc, $c429
    dec sp
    add l
    ld a, d
    inc b
    ei
    inc b
    ei
    inc b
    ld a, [$f904]
    ld b, h
    cp e
    add a
    ld l, b
    add h
    ld a, e

jr_05d_5210:
    nop
    db $fd
    adc b
    ld [hl], l
    ld [$08f5], sp
    pop af
    ld [$08f1], sp

jr_05d_521b:
    or $c8
    inc sp
    or b
    ld c, h
    jr jr_05d_51c9

    db $10
    xor c
    db $10
    db $ec
    jr nc, jr_05d_51ef

    jr nc, @-$3b

    ld [hl], b
    add c
    ld [hl], b
    adc c
    jr nc, @-$25

    ld a, [hl-]
    push bc
    db $10
    or $30
    swap b
    call nz, $d720
    jr nz, jr_05d_5210

    ld h, b
    add [hl]
    ld h, b
    cp [hl]
    ldh [$2b], a
    ldh [$28], a
    ldh [$0a], a
    ldh [$29], a
    ld h, b
    sbc c
    jr nz, jr_05d_521b

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    ccf
    ld b, c
    ld a, $4f
    ld sp, $0f7f
    ld a, a
    nop
    ld a, a
    ret nz

    ld a, a
    pop bc
    ld a, a
    ret


jr_05d_5262:
    rst $38
    ld c, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38

jr_05d_5269:
    inc de
    swap a
    jp nz, $f0bc

    adc l
    adc c
    or $00

jr_05d_5273:
    ld bc, $3c03

jr_05d_5276:
    rlca
    ld hl, sp+$1e
    pop hl
    nop
    ld e, $04
    dec sp
    dec e
    ld [c], a
    rst $18
    jr nz, jr_05d_5262

    jr nz, jr_05d_52a0

    db $f4
    sbc a
    ld [hl], b
    or [hl]
    ld e, c
    sub a
    ld a, b
    or c
    ld c, [hl]
    ld [hl], b
    adc a
    jr nz, @+$01

    jr nz, jr_05d_5273

    jr nz, @-$1f

    ldh [$0d], a
    ldh [rNR33], a
    ld h, b
    adc a
    ld h, b
    add e
    jr nz, jr_05d_5269

jr_05d_52a0:
    jr nz, @-$28

    jr nz, jr_05d_5276

    jr nz, @-$32

    ld b, b
    xor e
    ld b, b
    adc l
    ld b, b
    add e
    ld b, b
    add e
    ld b, b
    sub c
    ld b, b
    or c
    ld bc, $40c0
    and c
    nop
    ld l, d
    nop
    inc hl
    nop
    ld b, b
    nop
    ld b, d
    nop
    ld b, d
    nop
    ld [bc], a
    nop
    add d
    nop
    jp nz, $f200

    add b
    ld a, [de]
    add h
    ld e, d
    add b
    ld e, h
    add b
    db $76
    add b
    ld [hl], $00
    dec c
    nop
    and h
    inc b
    inc de
    inc b
    inc bc
    inc b
    dec bc
    inc b
    nop
    inc b
    ld [bc], a
    inc b
    ld b, c
    inc b
    ld b, c
    inc b
    stop
    call c, $b448
    nop
    ld e, h
    nop
    ld d, l
    nop
    ld b, $08
    rla
    nop
    rrca
    inc b
    dec bc
    ld [$0827], sp
    ld d, a
    ld [bc], a
    ld e, l
    ld bc, $011e
    ld a, [$ef10]
    add d
    ld [hl], l
    inc bc
    call nc, $d807
    rlca
    ld a, b
    inc bc
    inc [hl]
    ld bc, $21e6
    ld e, [hl]
    ld bc, $0036
    or a
    nop
    db $dd
    nop
    cp l
    nop
    dec l
    nop
    ld l, l
    nop
    xor a
    nop
    ld l, c
    cpl
    cpl
    and b
    and b
    and c
    and c
    ld h, b
    ld h, b
    ld h, c
    ld h, c
    and l
    and l
    jp hl


    jp hl


    push bc
    push bc
    ret nz

    ld hl, $8841
    ld b, b
    sbc c
    ld b, b
    sub a
    ld b, b
    sub e
    ld [bc], a
    push de
    nop
    rst $18
    ld [bc], a
    db $fd
    add d
    inc e
    ld c, $f1
    ld [bc], a
    db $fd
    sub [hl]
    ld l, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, b
    cp [hl]
    ld b, c
    cp [hl]
    pop bc
    cp a
    ld b, d
    cp [hl]
    ld b, l
    cp [hl]
    ld b, c
    ld a, $c1
    inc a
    jp $c73c


    inc a
    push bc
    ld a, h
    add a
    ld a, h
    add a
    ld a, h
    inc bc
    ld l, h
    sub e
    jr c, jr_05d_53bc

    ldh [$1f], a
    nop
    ld [$ff00], a
    nop
    sbc a
    xor a
    xor a
    ld a, [hl]
    ld a, [hl]
    jp nz, $84c2

    add h
    nop
    nop
    rst $18
    rst $18
    ld e, l
    ld e, l
    ld bc, $fe01
    ld e, a
    rst $38
    ld e, [hl]
    rst $38
    ld e, $ff
    ld d, $fe
    dec de
    ld a, a
    sub [hl]
    cp a
    ld e, [hl]
    cp a
    ld e, h
    cp a
    ld e, h
    cp a
    ld c, h
    cp a
    ld b, l
    cp a
    ld b, h
    cp a
    ld b, h
    cpl
    call nc, $502f
    dec c
    ld a, [c]
    cpl
    ret nc

    dec c
    or d
    ld [$00b7], sp
    rra
    nop
    dec bc
    nop
    rlca
    nop
    xor e
    nop
    ld c, $09
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, $0e
    dec hl
    dec hl
    add hl, bc
    add hl, bc
    dec bc
    dec bc

jr_05d_53bc:
    ld e, c
    ld e, c
    ld l, c
    ld l, c
    nop
    sub b
    nop
    jr nc, jr_05d_53c5

jr_05d_53c5:
    stop
    or c
    db $10
    ld hl, $b001
    ld bc, $01b0
    jr nc, jr_05d_53d1

jr_05d_53d1:
    ld [hl], c
    db $10
    ld b, e
    nop
    and l
    nop
    sub e
    nop
    sub c
    nop
    ld hl, $a100
    nop
    ld sp, $b000
    nop
    ld hl, $3100
    nop
    ld sp, $0100
    nop
    ld [hl+], a
    ld [bc], a
    jr nz, jr_05d_53f1

    ret nz

    nop

jr_05d_53f1:
    db $e3
    nop
    db $eb
    ld b, b
    sub c
    ret nz

    inc hl
    ret nz

    inc bc
    ld b, b
    add l
    nop
    push bc
    ld b, b
    adc l
    ld b, b
    sub l
    add h
    ld h, d
    call nz, $8439
    ld a, e
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld e, a
    add b
    ld c, a
    ret nc

    cpl
    adc b
    db $76
    add h
    dec bc
    add b
    rlca
    nop
    xor a
    nop
    cp a
    ld [$00b3], sp
    cp a
    nop
    rst $18
    nop
    xor h
    nop
    ld c, d
    ld [$08e1], sp
    or e
    ld [$0073], sp
    xor e
    nop
    or a
    nop
    inc a
    nop
    ld a, d
    db $10
    ld c, e
    db $10
    ld c, a
    db $10
    rst $08
    db $10
    rst $00
    ld de, $17ae
    ld hl, $711f
    ccf
    add l
    ccf
    ret nz

    ccf
    pop bc
    ccf
    ret nz

    rra
    pop hl
    ccf
    pop bc
    rst $38
    ld hl, $41bf
    ccf
    jp $e11f


    ccf
    ret


    ccf
    jp z, $c03f

    ccf
    add $38
    push af
    jr nz, @-$1f

    nop
    rst $18
    nop
    di
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    cp a
    nop
    rst $38
    nop
    dec sp
    nop
    ld [hl], a
    dec c
    jp nc, Jump_000_2f10

    jr nz, @+$61

    nop
    sub a
    add b
    ld [hl], a
    nop
    db $d3
    nop
    ld a, $c3
    ccf
    jp z, $c827

    daa
    pop bc
    ld h, $e5
    ld [bc], a
    ld h, l
    ld [bc], a
    ld h, l
    ld [bc], a
    ld h, e
    nop
    rst $20
    nop
    rst $00
    ld [hl], b
    rst $00
    ld l, b
    rst $00
    ld l, b
    push bc
    ld l, d
    db $e4
    dec de
    pop af
    ld c, $fc
    inc bc
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld hl, sp+$07
    ld a, b
    add a
    jp hl


    ld d, $ed
    ld [de], a
    dec c
    ld a, [c]
    rrca
    ldh a, [$0b]
    ld [hl], l
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    add hl, bc
    sub $8d
    ld [de], a
    adc c
    ld [hl], $0f
    db $10
    ld bc, $0a8e
    add l
    add hl, bc
    sub [hl]
    add hl, bc
    or [hl]
    ld b, $c9
    ld [bc], a
    db $dd
    ld bc, $02ae
    ld sp, hl
    ld b, d
    cp l
    ld [hl], d
    adc l
    dec hl
    call nc, Call_05d_443b
    ld e, $61
    ld e, $61
    ld e, $61
    ld e, $60
    ld e, $20
    inc e
    and d
    nop
    db $fc
    db $10
    and $00
    or a
    nop
    or [hl]
    jr nz, jr_05d_553a

    nop
    ld a, l
    nop
    xor l
    or a
    or a
    db $ed
    db $ed
    db $f4
    db $f4
    push af
    push af
    db $f4
    db $f4
    adc b
    adc b
    xor h
    xor h
    add h
    add h
    nop
    add h
    nop
    inc c
    nop
    ld c, [hl]
    nop
    ld c, b
    ld b, b
    cpl
    ld b, e
    adc h
    add a
    ld c, b
    ld b, a
    adc b
    inc bc
    db $ec
    ld c, e
    or h
    ld e, e
    inc h
    ld c, e
    or h
    ld c, e
    or h
    ld b, a
    cp b
    ld b, a
    xor b
    rst $08
    jr nc, jr_05d_5548

    ret c

    dec hl
    call nc, $d827
    daa
    ret c

    or a
    ld c, b
    scf
    ret z

    or a
    ld c, b
    rst $30
    ld [$c936], sp
    sub [hl]
    ld l, c
    sub [hl]
    ld a, e
    ld a, $d3
    sbc $33

jr_05d_553a:
    cp $15
    or $09
    ldh a, [$6f]
    pop af

jr_05d_5541:
    ld l, [hl]
    pop af
    ld l, $f1
    xor $e3
    push af

jr_05d_5548:
    db $e3
    db $fc
    rst $20
    ei
    rst $20
    cp e
    rst $28
    ld [hl-], a
    rst $28
    ld [de], a
    xor $31
    rst $28
    inc d
    rst $28
    jr nc, jr_05d_5541

    rla
    xor e
    ld d, h
    rla
    add sp, $08
    db $76
    ld b, h
    cp e
    nop
    add $00
    ld l, a
    ccf
    ret nz

    ld a, h
    add e
    ret nz

    inc sp
    nop
    cp $00
    add sp, $00
    jp nc, $be41

    nop
    ld a, c
    nop
    ld [$5000], sp
    db $10
    rst $28
    jr @-$58

    db $10
    ld l, h
    and h
    db $db
    xor l
    jp nc, $d02f

    ld a, l
    add d
    db $dd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, h
    add e
    rst $38
    nop
    rst $38
    ld a, [de]
    rst $38
    dec de
    rst $38
    ld e, $bf
    ld e, [hl]
    cp a
    ld e, h
    sbc a
    rst $28
    cp a
    ld d, a
    cp a
    ld b, l
    ld b, b
    dec b
    jr nz, jr_05d_55b8

    ld bc, $411c
    inc e
    ld b, h
    ld c, $40
    inc b
    nop
    ld b, h
    nop
    ld h, h
    rst $38
    ld h, [hl]
    rst $38
    db $76
    rst $38
    ld a, h
    rst $38
    ld e, h

jr_05d_55b8:
    rst $38
    ld l, $fe
    daa
    cp $11
    cp $0f
    dec b
    ld b, $01
    ld b, $80
    ld b, $00
    nop
    and b
    ld [bc], a
    or b
    ld b, $10
    ld b, $11
    ld [bc], a
    cp $03
    ld c, h
    or e
    call z, $cc33
    ld [hl-], a
    call z, Call_05d_4c3b
    cp [hl]
    inc c
    ei
    dec c
    jp nc, $710e

    inc e
    ld h, e
    inc e
    db $eb
    ld l, h
    inc de
    ld a, h
    inc bc
    ld a, h
    add b
    ld a, h
    add l

jr_05d_55ee:
    ld a, h
    add [hl]

jr_05d_55f0:
    dec hl
    inc b
    jp hl


    inc b
    db $eb
    inc b
    rst $20
    inc b
    and l
    inc b
    push bc
    inc b
    inc de
    inc b
    add e
    inc b
    adc h
    ld [hl], e
    cp h
    ld b, e
    or b
    ld c, l
    or b
    ld e, h
    or b
    ld c, d
    ldh a, [$38]
    ld hl, sp+$30
    ld hl, sp+$16
    ld a, [$f005]
    ld l, $f3
    inc c
    di
    inc l
    di

jr_05d_5619:
    inc l
    or $2b
    ld a, d
    sub l
    ld a, b
    or a
    ld e, b
    cp d
    jr c, jr_05d_55f0

    jr c, jr_05d_55ee

    ld e, b
    xor h
    jr jr_05d_5619

    call c, $fc2b
    inc de
    ld e, c
    sbc a
    ld a, c
    sbc a
    ld a, c
    sub a
    ld a, e
    add h
    ld a, a
    sub e
    ld a, [hl]
    sbc a
    ld a, [hl]
    sbc l
    ld a, h
    sub a
    db $fc
    dec b
    inc bc
    inc b
    inc bc
    ld c, h
    inc bc
    ld [$8883], sp
    inc bc
    xor h
    inc c
    rst $38
    ld a, [bc]
    xor a
    nop
    adc a
    adc $b1
    or $89
    ld [bc], a
    db $fd
    add b
    ld l, a
    nop
    ei
    nop
    ei
    nop
    rst $10
    nop
    inc e
    ld e, a
    ld e, a
    add sp, -$18
    ldh [$e0], a
    pop hl
    pop hl
    ld bc, $0001
    nop
    inc bc
    inc bc
    nop
    ld d, b
    ld [bc], a
    ld [hl+], a
    ld a, [bc]
    ld a, [bc]
    nop
    ld [bc], a
    nop
    jp nz, Jump_05d_4f00

    ld e, d
    ld e, d
    add b
    add b
    db $10
    ld de, $01fe
    rst $38
    nop
    di
    nop
    rst $30
    nop
    cp $00
    ldh [rNR34], a
    rst $10
    inc c
    cp a
    nop
    xor a
    ret nc

    rst $30
    adc b
    rst $28
    sub [hl]
    cp $81
    db $fc
    and e
    push af
    adc d
    ei
    add h
    rst $38
    ld [bc], a
    nop
    ld b, $02
    ld c, $61
    nop
    ld h, c
    inc b
    ld h, e
    inc b
    db $e3
    inc b
    ld b, a
    nop
    rrca
    nop
    pop bc
    ld a, $27
    ret c

    rst $28
    db $10
    cp $05
    cp [hl]
    ld e, b
    ld e, $e1
    rrca
    ldh a, [rNR22]
    xor b
    ld c, $f1
    inc e
    db $e3
    db $10
    rst $28
    ret nz

    scf
    add [hl]
    ld l, c
    inc h

jr_05d_56cb:
    jp z, Jump_05d_4ab4

    cp h
    ld b, b
    inc a
    ret z

jr_05d_56d2:
    inc a
    jp $b008


    ld [$3830], sp
    ret nz

    db $10
    add sp, $00
    db $fc
    nop
    db $ec
    nop
    ret c

    nop
    ld e, h
    add b
    ld a, b
    ld [hl], b
    adc b
    ld [hl], b
    adc b
    db $10
    add sp, $00
    jr jr_05d_56ef

jr_05d_56ef:
    ld e, b
    nop
    inc a
    ld [$0070], sp
    or b
    nop
    ret nc

    nop
    cp h
    nop
    ld l, h
    ld [$6854], sp
    sub h
    jr c, jr_05d_56d2

    jr c, jr_05d_56cb

    ld [$00b7], sp
    ld a, h
    nop
    scf
    nop
    ld e, a
    nop
    db $fd
    nop
    or $00
    sbc l
    nop

jr_05d_5713:
    ld a, a
    nop
    scf
    nop
    ld sp, hl
    nop
    ld a, [$d160]
    add b
    ld [hl], c
    nop
    dec sp
    nop
    add hl, de
    nop
    ccf
    nop
    ld a, [hl]
    db $10
    ld l, c
    nop
    ld a, [$7e00]
    nop
    and a
    nop
    scf
    and b
    ld d, e
    sub b
    ld l, l
    ldh [rNR34], a
    ldh a, [$08]
    ld h, b
    sbc e
    jr nz, jr_05d_5713

    nop
    db $fd
    nop
    ld a, a
    inc bc
    inc a
    rlca
    ld a, [hl-]
    db $10
    ld l, a
    ld [$3f77], sp
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $fc
    ld [bc], a
    ld hl, sp+$06
    call c, $3c23
    jp $fd00


    nop
    rst $38
    add b
    ld c, e
    nop
    ld c, $6e
    ld l, [hl]
    ld [$0008], sp
    nop
    sub d
    sub d
    pop bc
    pop bc
    rlca
    rlca
    jr jr_05d_5786

    db $10
    db $10
    inc bc
    inc bc
    rla
    rla
    inc c
    ld c, h
    add hl, bc
    add hl, hl
    ld [$f8e8], sp
    ld hl, sp+$11
    ld de, $1010
    ld a, h
    add e
    db $fc
    inc bc
    ld c, l
    ld [bc], a

jr_05d_5786:
    db $ed

jr_05d_5787:
    ld [bc], a
    ccf
    nop
    ld a, e
    nop
    rst $30
    ld bc, $03f5
    reti


    inc bc
    ld [hl], $01
    jr nc, jr_05d_5796

jr_05d_5796:
    add c
    ld [bc], a
    add c
    ld [de], a
    ret


    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld sp, hl
    ld b, $0c
    ldh a, [rNR23]
    db $e4
    ret nz

    jr c, jr_05d_5787

    jr jr_05d_57a9

jr_05d_57a9:
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [$c0]
    inc a
    add b
    ldh [$c0], a
    jr nc, @-$1e

    stop
    adc b
    nop
    inc bc
    ld bc, $000e
    ld c, a
    nop
    rst $38
    ld e, l
    ld e, l
    ld a, a
    ld a, a
    db $fd
    db $fd
    ret z

    ret z

    ld l, b
    ld l, b
    ld h, b
    ld h, b
    jr nz, @+$22

    ld b, c
    ld b, c
    ld d, e
    ld d, e
    rst $38
    rst $38
    pop af
    pop af
    nop
    ld b, $01
    reti


    ld c, a
    ld c, a
    ccf
    ccf
    dec bc
    ld l, e
    ld a, [bc]
    ld a, [hl+]
    ccf
    cp a
    ld a, e
    ld a, e
    db $fd
    db $fd
    rst $00
    rst $08
    add d
    and d
    ld bc, $1a41
    ld e, d
    inc c
    call z, $c404
    inc c
    db $fc
    ld [$00f8], sp
    ldh [rDIV], a
    ld [hl], h
    ld [$00ea], sp
    ld a, [c]
    nop
    inc b
    nop
    db $fc
    ld [$0070], sp
    ret z

    nop
    pop bc
    nop
    ldh [rP1], a
    pop hl
    nop
    call $cac8
    ret z

    jp z, $cbc9

    add sp, -$16
    add hl, bc
    adc a
    adc c
    adc e
    sub b
    sub d
    ret z

    jp z, $9e9c

    sbc a
    sbc a
    sbc a
    sbc a
    ld e, $1f
    inc c
    ld c, $08
    ld a, [bc]
    jr c, jr_05d_586c

    ld hl, sp-$05
    ld hl, sp-$07
    sbc b
    sbc b
    jr jr_05d_5850

    dec a
    dec a
    ldh a, [rIE]
    ldh [$ef], a
    rst $38
    rst $38
    rst $38
    rst $38
    jr nz, @-$1f

    ret nz

    rst $30
    ret nz

    jr z, jr_05d_5847

jr_05d_5847:
    db $f4
    ld b, b
    and l
    ret nz

    rst $28
    rst $38
    jp $98ff


jr_05d_5850:
    rst $38
    inc c
    ld a, a

jr_05d_5853:
    add b
    nop
    cp a
    nop
    push hl
    nop
    ret z

    add b
    ld l, b
    nop
    call nz, Call_05d_4000
    add h
    add h
    ld b, d
    ld b, d
    jr jr_05d_587e

    ld sp, hl
    ld sp, hl
    db $f4
    db $f4
    ld b, b
    ld b, b

jr_05d_586c:
    ret nz

    pop bc
    ld b, b
    ld b, d
    add b
    add b
    ld e, d
    ld e, d
    inc h
    inc h
    ld hl, $0021
    nop
    rst $18
    rst $18
    and l
    and l

jr_05d_587e:
    add c
    add c

jr_05d_5880:
    ld a, a
    and b
    ld a, a
    and b
    ld a, l
    cp d
    ld a, l
    ld a, [$fd38]
    jr c, jr_05d_5853

    ld a, b
    and a
    rst $28
    sub e
    add b
    push hl

jr_05d_5892:
    nop
    rst $38
    nop
    rst $38
    nop
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
    dec a
    nop
    rra
    nop
    jr jr_05d_58a7

jr_05d_58a7:
    rra
    inc c

jr_05d_58a9:
    inc de
    rrca
    db $10
    rrca
    jr nc, jr_05d_58eb

    ld a, [bc]
    inc e
    jr nz, jr_05d_58e7

    ret nz

    jr nz, jr_05d_5892

    jr nc, jr_05d_5880

    ldh [rNR23], a
    ldh a, [$0e]
    adc h
    ld [hl], e
    nop
    rst $38
    dec b
    sub d
    inc b
    adc e
    inc c
    inc de
    ld [bc], a
    add hl, de
    nop
    rra
    nop
    rra
    ld [$00e7], sp
    xor $c0
    ld [hl], $80
    ld a, [hl]
    db $10
    ret nz

    nop
    ld a, c
    nop
    call c, Call_05d_7e00
    jr nc, jr_05d_58a9

    jr nz, jr_05d_587e

    db $ed
    db $ed
    cp e
    cp e
    cp l
    cp l
    rst $38

jr_05d_58e7:
    rst $38
    reti


    reti


    ret


jr_05d_58eb:
    ret


    db $dd
    db $dd
    xor l
    xor l
    ld [hl], h
    ld [hl], h
    db $d3
    db $d3
    ld [hl], c
    ld [hl], c
    ld c, a
    ld c, a
    ld b, h
    ld b, h
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    ld [bc], a
    nop
    ld b, $00
    nop
    dec b
    dec b
    nop
    nop
    inc b
    ld b, h
    nop
    ld b, b
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    adc b
    or b
    cp b
    ldh [$e8], a
    ld h, b
    ld a, [hl]
    ld h, b
    ld a, [hl]
    add b
    sbc [hl]
    jr c, jr_05d_595c

    inc b
    db $f4
    nop
    rst $38
    nop
    db $db
    nop
    rst $10
    nop
    rra
    nop
    nop
    nop
    jr c, jr_05d_5933

jr_05d_5933:
    jr z, jr_05d_5935

jr_05d_5935:
    jr nz, jr_05d_5937

jr_05d_5937:
    ld a, b
    add h
    and h
    add c
    and c
    ld a, a
    ld a, a
    rst $08
    rst $08
    ld [$04d6], sp
    jp c, $df00

    add b
    ld e, a
    ld b, b
    cp [hl]
    db $e3
    dec e
    rst $38
    rst $38
    rst $38
    ld d, b
    rst $38
    ld h, b
    cp $21
    db $10
    xor $20
    rst $18
    nop
    scf
    nop
    dec h

jr_05d_595c:
    nop
    push de
    nop
    nop
    add d
    add d
    nop
    ld h, $00
    inc c
    nop
    jr nz, jr_05d_5969

jr_05d_5969:
    ldh a, [rP1]
    ld hl, sp+$00
    stop
    ldh a, [rP1]
    ld hl, sp-$80
    add b
    add b
    cp b
    nop
    jr c, jr_05d_5979

jr_05d_5979:
    rst $38
    or $f6
    ret nc

    ret nc

    ldh [$e0], a
    rst $38
    ld bc, $00ff
    rst $38
    jr nz, @+$01

    ld b, d
    rst $38
    inc bc
    ld a, a
    add e
    ld a, a
    add c
    rst $38
    inc bc
    ccf
    nop
    ld bc, $01bf
    xor [hl]
    ld bc, $00be
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    cp h
    nop
    adc b
    nop
    ld l, b
    ld [$0016], sp
    db $fc
    add b
    ld h, b
    nop
    inc b
    nop
    dec b
    dec b
    ld a, [bc]
    dec b
    ld a, [bc]
    dec c
    ld [bc], a
    inc b
    dec de
    rrca
    ldh a, [$c8]
    scf
    and b
    ld e, l
    nop
    xor h
    ld h, b
    sub b
    ld a, h
    db $e3
    cp a
    ld b, h
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld bc, $017e
    cp $01
    cp $01
    ld a, [hl]
    nop
    ccf
    nop
    rra
    nop
    ld [hl], $00
    sub a
    ld bc, $970e
    sub a
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, l
    add sp, -$15
    jr nc, @+$35

    ret nz

    rst $08
    ldh a, [$f6]
    and b
    and h
    add b
    add e
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    ld [$0409], sp
    ld b, l
    nop
    ld bc, $4300
    nop
    nop
    nop
    nop
    ld b, b
    ld h, b
    nop
    ld bc, $0100
    nop
    ld b, c
    nop
    nop
    nop
    nop
    nop
    jr jr_05d_5a21

    add h
    ld b, $06
    ld [bc], a

jr_05d_5a21:
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld b, $06
    inc bc
    add e
    inc bc
    add a
    ld [bc], a
    cp $02
    or a
    ld [bc], a
    ei
    nop
    nop
    nop
    ret nc

    nop
    ld a, c
    ld [bc], a
    ld h, e
    ld [hl+], a
    inc hl
    ei
    ei
    cp $ff
    ld a, l
    ld a, l
    nop
    dec l
    nop
    add h
    inc b
    adc d
    ld [bc], a
    dec e
    ld e, a
    and d
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld b, h
    nop
    cp b
    nop
    inc d
    nop
    rst $18
    nop
    ret


    nop
    ld b, b
    jr nz, @+$4a

    nop
    ld a, b
    nop
    ld b, b
    sbc b
    sbc b
    nop
    jr nc, jr_05d_5a65

jr_05d_5a65:
    ld h, b
    ld [bc], a
    ld [bc], a
    ld bc, $2401
    inc h
    adc b
    adc b
    ld bc, $1141
    ld de, $0303
    nop
    ret c

    inc bc
    rst $00
    ld bc, $5afd
    ld e, d
    jr nz, jr_05d_5a9e

    nop
    dec e
    ld [hl], b
    adc a
    ld h, h
    db $db
    call nz, $80bb
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
    rst $10
    jr z, jr_05d_5b14

    rst $18
    nop
    ld a, a
    nop
    db $f4
    nop
    ret nc

    nop
    pop af

jr_05d_5a9e:
    nop
    ld l, b
    nop
    ld h, l
    ld bc, $01c8
    ld c, d
    nop
    db $e3
    nop
    rlca
    nop
    ld h, $04
    inc bc
    inc c
    ld [hl], c
    ld a, b
    add a
    ld hl, sp+$17
    ld hl, sp+$05
    db $fc
    ld bc, $03fc
    ld hl, sp+$06
    db $fc
    ld [bc], a
    and b
    ld e, [hl]
    nop
    add b
    nop
    ld b, b
    ld b, b
    add c
    ret nz

    ld b, b
    ret nz

    add b
    add b
    nop
    add b
    ld c, b
    add b
    ret nz

    ldh a, [$f2]
    cp b
    ld hl, sp-$6c
    sub h
    ld c, a
    ld c, a
    xor h
    xor h
    xor b
    xor b
    db $fd
    db $fd
    db $fd
    db $fd
    rst $30
    rst $30
    cp $fe
    call c, $cedd
    xor $86
    cp $03
    rst $38
    ld [bc], a
    cp $02
    cp $02
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $02
    cp $00
    ld b, b
    ld bc, $00c1
    ret nz

    nop
    add l

jr_05d_5b14:
    nop
    ld bc, $3300
    nop
    ld d, [hl]
    nop
    jr nz, jr_05d_5b1d

jr_05d_5b1d:
    and h
    nop
    ld [hl], e
    nop
    jr nz, jr_05d_5b23

jr_05d_5b23:
    ld b, b
    nop
    nop
    nop
    ld b, b
    ld [bc], a
    ld [bc], a
    rst $08
    rst $08
    ld a, $3e
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    add b
    rst $38
    nop
    ld [hl], a
    and b
    cp a
    ldh a, [$f6]
    ld a, a
    ld e, [hl]
    ei
    ei
    nop
    push af
    nop
    call nc, $f400
    nop
    db $fd
    ldh [$2d], a
    ldh [$ef], a
    rst $38
    pop hl
    rst $38
    add a
    rrca
    daa
    rlca
    ld [hl], b
    nop
    db $fc
    jr nz, jr_05d_5b77

    nop
    rla
    nop
    add hl, bc
    nop
    dec e
    nop
    ld h, b
    db $10
    db $10
    or b
    or b
    nop
    nop
    ld hl, sp-$06
    ret nc

    db $d3
    add b
    add a
    nop
    nop
    nop
    ld [bc], a
    jr nz, jr_05d_5b92

    and l
    and l
    ld hl, $0821

jr_05d_5b77:
    ld [$0000], sp
    dec sp
    dec sp
    and b
    and b
    add hl, bc
    add hl, bc
    ld h, b
    sbc a
    ld l, h
    or e
    ld l, d
    or l
    ld h, b
    sbc a
    ld l, d
    push af
    ld l, a
    or b
    ld l, l
    sub d
    ld l, a
    or b
    ld l, a
    sub b

jr_05d_5b92:
    rst $28
    ld [hl], b
    jp hl


    sub $60
    rst $38
    ld a, [hl]
    add c
    ld bc, $00fe
    rst $38
    add l
    ld a, d
    add a
    ret c

    ld b, $f1
    rlca
    xor b
    inc bc
    inc c
    rlca
    ret c

    ld c, $f1
    ld [bc], a
    db $fd
    dec bc
    ld [hl], h
    dec c
    ld d, d
    ld c, $31
    nop
    rrca
    nop
    rst $08
    nop
    rrca
    inc c

jr_05d_5bbb:
    inc bc
    inc bc
    inc c
    nop
    adc a
    inc c
    db $d3
    rlca
    cp b
    nop
    rlca
    ld [bc], a
    dec b
    rlca
    nop
    nop
    rlca
    nop
    ld [bc], a
    nop
    inc b
    ld b, $06
    adc e
    adc e
    adc a
    xor a
    rlca
    daa

jr_05d_5bd8:
    rlca
    xor a
    rlca
    ld h, a
    rrca
    ld e, a
    ld bc, $0571
    ld a, l
    nop
    ldh [rNR13], a
    db $d3
    scf
    or a
    ld [hl], a
    ld [hl], a
    push bc
    push bc
    inc bc
    adc a
    ld bc, $019d
    xor c
    ld bc, $00ef
    xor $00
    rst $28
    nop
    rst $28
    nop
    db $e3
    nop
    rst $28
    db $10
    db $f4
    db $10
    rst $38
    db $10
    rst $18
    jr nc, @+$01

    jr nc, @+$01

    db $10
    rst $18
    jr nz, jr_05d_5bbb

    nop
    sbc a
    add b
    sbc a
    ldh [rIE], a
    ld h, b
    ld a, a
    jr nz, jr_05d_5c45

    ld h, b
    rst $28
    jr nc, jr_05d_5bd8

    nop
    adc e
    ld h, b
    rst $28
    jr nz, jr_05d_5c4f

    db $10
    sbc a
    jr nc, jr_05d_5c63

    db $10
    add hl, de
    db $10
    db $10
    pop hl
    jp hl


    db $e3
    db $e3
    ldh a, [$fe]
    ld h, b
    add sp, $7f
    ld a, h
    ld d, b
    ld d, d
    and b
    and h
    add c
    sub c
    pop bc
    pop bc
    pop bc
    pop bc
    ccf
    ld a, $cf
    call Call_000_00fa
    ld sp, hl
    nop
    ei

jr_05d_5c45:
    nop
    rst $18
    nop
    rst $18
    nop
    ret z

    db $10
    ld [bc], a
    rst $38
    nop

jr_05d_5c4f:
    inc de
    rst $38
    sbc b
    cp a
    ld b, d
    nop
    sbc a
    nop
    ld c, l
    nop
    ret nz

    db $10
    xor e
    nop
    cp $00
    inc [hl]
    ld [hl-], a
    ld [hl-], a
    nop

jr_05d_5c63:
    ld b, b
    nop
    jp nz, Jump_000_1111

    inc b
    ld b, h
    nop
    and b
    ld [bc], a
    ld [bc], a
    nop
    ldh a, [rSB]
    ld [hl], c
    ld h, b
    ld h, b
    nop
    ld b, $50
    ld e, [hl]
    jr nz, jr_05d_5ca9

    cp $fe
    rst $18
    rst $18
    rrca
    rrca
    rst $38
    jr @+$01

    jr c, @+$01

    inc l
    rst $38
    ld e, h
    rst $38
    ld d, $bf
    ld e, h
    cp [hl]
    ld a, l
    cp $3f
    cp $9f
    cp $ff
    cp $3d
    ld a, a
    sbc h
    ld a, [hl]
    adc l
    ld a, [hl]
    sbc c
    ld a, [hl]
    xor l
    ld l, a
    sub h
    ld c, a
    or c
    ld c, a

Call_05d_5ca3:
    or d
    rst $18
    add hl, sp
    rst $38
    ld [de], a
    rst $38

jr_05d_5ca9:
    ld [hl], d
    ld a, a
    sub d
    cp a
    ld h, d
    ld a, a
    sub d
    rst $38

jr_05d_5cb1:
    jr jr_05d_5d2e

    sbc h
    ld a, c
    sbc [hl]
    cp l
    ld d, d
    db $fd
    ld [de], a
    db $fc
    inc de
    db $fc
    inc de
    cp $31
    inc a
    di
    ld a, [hl]
    sub c
    ld e, h
    and e
    cp l
    ld b, d
    jr jr_05d_5cb1

    add hl, sp
    adc $0c
    di
    inc c
    ld [hl], e
    dec l
    jp c, $e41f

    ccf
    call nz, $ef1f
    rrca
    pop af
    ld b, c
    xor a
    inc bc
    db $fc
    ld [bc], a
    dec [hl]
    nop
    dec sp
    nop
    ld [hl], a
    ld [$0f77], sp
    ldh a, [rTAC]
    cp b
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $fffc
    cp a
    rst $08
    rst $08
    rst $08
    bit 5, l
    ld l, h
    ld [hl-], a
    ld [hl-], a
    dec [hl]
    dec [hl]
    dec bc
    db $eb
    inc bc
    di
    rlca
    rst $30
    rlca
    rst $30
    dec b
    push af
    rrca
    rst $38
    add hl, bc
    jp hl


    rrca
    rst $28
    ld de, $08d1
    jp z, $f230

jr_05d_5d12:
    jr nc, jr_05d_5d12

    db $10
    call c, $ba3a
    jr c, jr_05d_5d59

    db $10
    rst $30
    db $10
    push af
    ld [$18af], sp
    sbc l
    nop

jr_05d_5d23:
    ld [c], a
    nop
    ret nz

jr_05d_5d26:
    inc c
    inc c
    inc c
    inc l
    ld [$0c09], sp
    adc l

jr_05d_5d2e:
    rst $38
    rst $38
    rst $20
    ld e, b
    inc bc
    ld h, $06
    dec hl
    nop
    add h
    nop
    ret z

    ld b, b
    cp e
    jr jr_05d_5d23

    jr jr_05d_5d26

    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld bc, $a10b
    rst $38
    nop
    db $db
    ld a, a

jr_05d_5d51:
    sbc d
    ei
    inc b
    jr nc, jr_05d_5d23

    ld a, [hl+]
    push de
    nop

jr_05d_5d59:
    ld a, $00
    adc e
    nop
    rrca
    nop
    dec c
    nop
    rra
    nop
    dec h
    nop
    dec e
    rlca
    ret c

    ld bc, $001e
    ccf
    nop
    sbc e
    nop
    add b
    nop
    nop
    ld b, c
    ld b, c
    nop
    jr nc, jr_05d_5d77

jr_05d_5d77:
    stop

jr_05d_5d79:
    sbc [hl]
    xor c
    xor c
    ld b, d
    ld b, d
    nop
    nop
    nop
    di
    add d
    ld a, l
    ld b, d
    cp l
    jp z, $e835

    rla
    ld hl, sp+$06
    ld a, b
    add l
    ld e, b

jr_05d_5d8f:
    and a

jr_05d_5d90:
    jr jr_05d_5d79

    jr jr_05d_5d77

    ld bc, $51fa
    xor b
    ret nc

    jr z, jr_05d_5ddb

    cp [hl]
    ret nz

    dec sp
    ret nz

    dec sp
    ret nc

    dec hl
    sbc b
    ld h, l
    or a
    ld c, b
    jr jr_05d_5d8f

    jr jr_05d_5d51

    jr jr_05d_5e13

    ld [de], a
    ld c, l
    rra
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
    cp a
    ld b, b
    ccf
    ret z

    xor a
    ld d, b
    ld b, b
    cp a
    ld b, a
    cp b
    ld a, a
    inc bc
    ld bc, $0306
    inc d
    rlca
    jr nz, jr_05d_5dcb

    ei
    nop
    cp a
    rst $08

jr_05d_5dcb:
    jr nc, jr_05d_5ddc

    db $f4
    ccf
    rst $08
    rst $38
    rra
    rst $38
    ld a, [de]
    rst $38
    ld a, [hl]
    db $fc
    adc e
    sbc h
    db $e3
    add d

jr_05d_5ddb:
    ld a, l

jr_05d_5ddc:
    add b
    ccf
    inc bc
    sub b
    ld bc, $03fe
    sub h
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
    rst $18
    jr nz, jr_05d_5d90

    ld h, b
    ccf
    ret nz

    scf
    ret z

    ld l, a
    db $10
    rrca
    ldh a, [rVBK]
    or b
    adc e
    ld d, h
    add hl, hl
    sub $a7

Call_05d_5e01:
    ld e, b
    rla
    add sp, $00
    rst $18

jr_05d_5e06:
    nop
    call $8000
    add b
    inc d
    add b
    rra
    add b
    nop
    nop
    adc h
    nop

jr_05d_5e13:
    call z, Call_05d_6780
    nop
    rst $00
    ld b, b
    add e
    ld b, b
    xor l
    ld b, b
    xor a
    nop
    ld e, a
    nop
    rst $08
    nop
    ld e, a
    ld b, b
    cpl
    nop
    ld l, a
    nop
    ld e, l
    nop
    call $f300
    add b
    ld a, a
    add b
    ld a, a
    db $fd
    ld [bc], a
    nop
    sbc $00
    ld bc, $0000
    jr nc, jr_05d_5e06

    dec sp
    call nc, $4639
    add h
    nop
    sbc a
    nop
    rst $08
    nop
    xor a
    nop
    dec c
    nop
    adc [hl]
    ldh a, [$d0]
    ei
    cp b
    rst $38
    rst $38
    ld bc, $70ff
    db $10
    xor a
    nop
    rst $08
    nop
    ld a, [$f30c]
    rlca
    jr jr_05d_5e5f

jr_05d_5e5f:
    rlca
    ld [bc], a
    dec b
    nop
    nop
    nop
    jr nz, jr_05d_5e67

jr_05d_5e67:
    db $e3
    nop
    ret nc

    nop
    jr nz, jr_05d_5e6d

jr_05d_5e6d:
    pop hl
    nop
    add c
    nop
    db $e4
    add b
    ld a, a
    nop
    ld [hl], h
    nop
    ld a, a
    nop
    ld a, $00
    ld a, [hl]
    nop
    ld c, $00
    dec b
    add b
    ld e, d
    nop
    call c, $f600
    nop
    jp hl


    ld a, a
    add h
    ld h, b
    sbc a
    ld b, b
    cp a
    add b
    ld h, h
    add b
    ld l, e
    add b
    inc l
    sub b
    ld l, a
    rst $38
    add b
    nop
    rst $38
    nop
    reti


    ld bc, $035e
    ld c, b
    rlca
    ei
    rlca
    cp $ff
    inc bc
    ccf
    ret nz

    rra
    db $e4
    ccf
    ret nz

    rst $38
    nop
    cp $81
    rst $38

jr_05d_5eb1:
    nop
    and d
    ld e, l
    jp $013c


    cp $fb
    inc b
    rst $38
    nop
    rst $38
    nop
    di
    inc c
    rst $38
    nop
    rst $38
    ld b, b

jr_05d_5ec4:
    rst $38
    ld [bc], a
    rst $38

jr_05d_5ec7:
    ld a, [bc]
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc d
    nop
    cp e
    nop
    nop
    nop
    rst $00
    sub b
    rra
    ret nz

    dec de
    add b
    nop
    add d
    nop
    rst $28
    nop
    jr nc, jr_05d_5eb1

    pop af
    ld c, $d1
    ld l, $c3
    inc a
    rst $20
    jr @+$01

    inc b
    rst $38
    nop
    rst $38
    inc d
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $20
    jr jr_05d_5ec7

    ld sp, $54ab
    ei
    inc b
    rst $20
    jr @+$01

    db $10
    ld a, a
    add b
    ld [hl], b
    adc a
    nop
    sub h
    nop
    nop
    nop
    sub c
    nop
    add hl, de
    nop
    cpl
    inc bc
    ld a, h
    inc bc
    cp h
    ld hl, $03de
    db $fc
    ld bc, $00fe
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    sbc a
    nop
    sbc a
    ldh a, [rIF]
    ccf
    call z, Call_000_0007
    ld bc, $0102
    jr c, jr_05d_5ec4

    ld a, c
    jp Jump_000_1c3d


    ld [bc], a
    ret c

    ld [bc], a
    add sp, $00
    ret z

    nop
    ld b, b
    nop
    add b
    inc c
    ld b, $ff
    ld d, h
    rst $38
    rst $38
    rst $38
    rst $38
    sub d
    ldh a, [rIF]
    ccf
    ret nz

    nop
    rst $38
    nop
    cp e
    ld bc, $00e6
    pop bc
    nop
    rst $38
    nop
    ld c, [hl]
    nop
    xor l
    nop
    ld l, a
    nop
    rst $30
    nop
    dec a
    ld bc, $0046
    inc bc
    nop
    add e
    ld [$00f2], sp
    xor b
    nop
    sub [hl]
    nop
    call z, $d40b
    nop
    db $eb
    nop
    ld a, [hl]
    rrca
    ret nc

    dec de
    ld h, h
    rra
    and b
    ccf
    add b
    rst $38
    ccf
    ld bc, $00fe
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    ld bc, $1b7e
    push hl
    rst $38
    inc bc
    ei
    add h
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $baff
    rst $38
    nop
    ld sp, hl
    ld b, $fa
    dec b
    rst $38
    ld b, b
    rst $38
    nop
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    rst $38
    nop
    db $fc
    inc bc
    cp l
    ld b, d
    db $d3
    inc l
    db $fd
    ld [bc], a
    ld bc, $c1fe
    ld a, $ff
    nop
    rst $38
    jr @+$01

    db $10
    rst $38
    ccf
    rst $38
    ld b, $ff
    xor l
    rst $38
    nop
    rst $38
    ld bc, $07ff
    cp $1f
    cp $07
    rst $20
    ld [bc], a
    xor $03
    ld c, a
    inc bc
    add e
    inc bc
    add e
    inc bc
    add d
    dec bc
    ld bc, $0903
    inc bc
    rst $18
    nop
    cp a
    nop
    ld a, a
    nop
    add b
    ld a, c
    nop
    sbc a
    nop
    rst $18
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    add b
    ld a, e
    add b
    ld a, a
    nop
    rst $38
    ret nz

    ccf
    ccf
    ld b, e
    ccf
    call z, $e47f
    rra
    ldh [$1f], a
    ldh [$df], a

jr_05d_600f:
    ld hl, $957f
    xor a
    ld d, a
    ld l, a
    sbc c
    rst $28
    inc d
    rst $38
    ld [bc], a
    ld [hl], $c9
    and b
    ld e, a
    ld h, $d9
    inc de
    db $ec
    ld c, a
    or b
    ld b, l
    cp d
    ld b, b
    cp a
    rrca
    ldh a, [rNR22]
    add sp, $0a
    push af
    jr nz, jr_05d_600f

    ld c, $f1
    inc bc
    db $fc
    dec bc
    db $f4
    pop bc
    ld a, $f1
    ld c, $fe
    add hl, bc
    rst $18
    and b
    cp a

jr_05d_603f:
    ret nz

    ld [hl], l
    nop
    ld d, h
    nop
    and b
    nop
    ld h, b
    nop
    ld b, b
    nop
    scf
    ld a, a
    db $eb
    rst $38
    ld bc, $fff7
    cp a
    rst $38
    or l
    ccf
    ret nz

    ld b, h
    cp e
    nop
    rst $38
    ld [hl], a
    adc b
    jp $803c


    ld a, c
    add b
    ld a, l
    jr nz, jr_05d_603f

    ld [$7ef7], sp
    add c
    ld a, [hl]
    add c
    ld [hl], h
    adc d
    ld [bc], a
    db $fd
    nop
    cp e
    nop
    db $eb
    nop
    push af
    nop
    ld [hl+], a
    nop
    inc d
    nop
    nop
    sub b
    ld l, a
    ld h, b
    sbc b
    ld e, b
    and [hl]
    nop
    ld h, b
    nop
    ldh [rP1], a
    and b
    nop
    nop
    or l
    rst $38
    nop
    ld [hl], l
    ldh [rP1], a
    stop
    res 6, h
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld e, a
    and a
    ld e, b
    ei
    inc b
    rst $38
    adc b
    rst $38
    nop
    nop
    inc bc
    nop
    ccf
    ld bc, $8c11
    nop
    ld [$f900], sp
    nop
    xor d
    ld [bc], a
    inc e
    nop
    nop
    rst $38
    dec b
    ld a, [$f807]
    rst $38
    rlca
    ret nz

    ccf
    and c
    ld e, a
    rst $30
    dec bc
    cp $6f
    inc b
    rst $30
    ld [$110f], sp
    ld d, $03
    inc c
    inc bc
    inc e
    ld b, a
    ld a, b
    ld c, e
    ld d, h
    set 2, h
    ret nz

    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [rNR41], a
    ret nz

    rra
    jp hl


    ld b, b
    rst $38
    ld a, [hl]
    rst $38
    cp $3f
    ld a, h
    ccf
    ld a, h
    ccf
    ld d, h
    ccf
    db $10
    ccf
    inc d
    ccf
    call nc, Call_000_163f
    ccf
    ld c, $3f
    ld e, $3f
    inc c
    ccf
    sub b
    ccf
    jr nz, jr_05d_6121

    call nz, $d63f
    ccf
    adc a
    ccf
    adc $3f
    db $ed
    rra
    rst $38
    rra
    rst $18
    ccf
    rst $18
    ccf
    xor $1f
    ld [$6a1f], a
    rra
    add sp, $1f
    ld l, [hl]
    rra
    cpl
    rra
    rst $28
    rra
    ld h, a

jr_05d_6121:
    rra
    xor a
    rra
    and $1f
    ld b, c
    rra
    ld b, h
    rra
    rst $28
    rra
    ld h, a
    rra
    cpl
    rra
    ccf
    rrca
    dec e
    rrca
    ld c, a
    ld bc, $01e0
    add $38
    ld hl, sp-$48
    ld hl, sp-$48
    ld hl, sp-$08
    ld a, e
    ld a, h
    ld l, e
    ld l, h
    jp $53c4


    ld d, h
    ld l, e
    ld l, h
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, h
    rra
    ld a, b
    dec bc
    xor b
    inc bc
    inc b
    ld b, b
    db $10
    ldh a, [rP1]
    ld l, [hl]
    nop
    rrca
    nop
    ld l, a
    nop
    ld a, b
    add a
    nop
    ld l, $00
    rst $38
    inc bc
    sbc h
    nop

jr_05d_6169:
    db $db
    nop
    reti


    add c
    db $76
    add b
    ld h, c
    sub b
    ld l, a
    ld a, a
    add b
    ld a, [de]
    push hl
    rrca
    ld d, b
    nop
    rlca
    inc bc
    db $fc
    nop
    ld a, [c]
    nop
    inc l
    nop
    nop
    ld bc, $0200
    nop
    dec b
    jr z, jr_05d_6169

    rst $38
    nop
    ld e, [hl]
    nop
    nop
    nop
    ld [hl], b
    nop
    ld [hl+], a
    nop
    add hl, bc
    nop
    inc bc
    ld b, $b7
    jr c, jr_05d_619a

jr_05d_619a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    ld bc, $80ff
    add sp, $3f
    nop
    ei
    nop

jr_05d_61aa:
    ld e, [hl]
    nop
    ld bc, $0300
    nop
    jr jr_05d_61aa

    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b

jr_05d_61bb:
    add b
    nop
    nop
    nop
    nop
    nop
    add hl, de
    nop
    inc sp
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld [hl], a
    nop
    ei
    nop
    rst $00
    nop
    sbc [hl]
    nop

jr_05d_61d1:
    db $fc
    nop
    ldh a, [rP1]
    ldh [$03], a
    jp nz, $0407

    rra
    inc e
    ccf
    jr z, @+$01

    add b
    cp b
    ld de, $fdfe
    adc $f1
    inc e
    db $e3
    ld a, [hl-]
    push af
    ld h, $d9
    ld e, a
    ldh a, [$7f]
    ret nz

    ld a, $cf
    jr c, jr_05d_61bb

    ld hl, $0fff
    db $fc
    ld a, a
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, $c1
    jr nc, jr_05d_61d1

    ld b, a
    cp $1f
    pop af
    db $10
    rst $28
    nop
    rst $38
    ld b, a
    rst $38
    ld a, a
    db $fc
    rra
    ldh [$1f], a
    ldh [rNR32], a
    db $e3
    nop
    rst $38
    ld bc, $3fff
    ld hl, sp+$1f
    db $e3
    rra
    ld [c], a
    nop
    rst $38
    add b
    rst $38
    ccf
    cp $0f
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$80
    rst $38
    cp h
    rst $38
    rst $08
    pop af
    rst $08
    ld hl, sp+$4f
    cp $9f
    db $fd
    ldh a, [rIE]
    rla
    jr nz, jr_05d_623b

jr_05d_623b:
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    nop
    rra
    nop
    inc bc
    nop
    ld b, b
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    add b
    sub e
    ldh [$e3], a
    ld hl, sp-$06
    inc a
    inc a
    rrca
    rrca
    inc b
    ret nz

    ld l, $d0
    rla
    add sp, $5f
    and b
    ld b, c
    cp [hl]
    inc bc
    db $ec
    rrca
    or b
    inc bc
    inc d
    nop
    ld a, a
    db $fc
    inc bc
    nop
    rst $38
    ldh [$1f], a
    nop
    db $ed
    ld [$10f7], sp
    rst $28
    db $10
    ld l, l
    ld [hl-], a
    nop
    ld h, [hl]
    nop
    ld l, h
    nop
    or c
    nop
    ld bc, $00df
    ldh [$80], a
    jr nz, jr_05d_628f

jr_05d_628f:
    ld b, b
    nop
    add b
    nop
    ld bc, $1700
    rrca
    rst $38
    nop
    cp a
    dec c
    nop
    inc bc
    ld [hl], b
    nop
    ld h, b
    ret nz

    rst $38
    ret nz

    call nz, $ec80
    add b

jr_05d_62a7:
    add sp, -$80
    ld hl, sp+$00
    or b
    nop
    ld d, b
    nop
    ld d, b
    ret nc

    ldh a, [$90]
    or b
    ld [$0819], sp
    jr c, jr_05d_62c1

    cp b
    ld [$04f8], sp
    db $f4
    inc b
    db $f4
    nop

jr_05d_62c1:
    ldh a, [rSB]
    pop af
    inc b
    db $f4
    rlca
    rst $30
    rrca
    rst $08
    ld [bc], a
    add d
    inc bc
    inc bc
    rrca
    rrca
    nop
    nop
    nop
    nop
    ldh [rLCDC], a
    ld hl, sp-$39
    inc h
    jp $815f


    ld a, $c1
    jr c, jr_05d_62a7

    daa
    ret c

    rrca
    pop af
    ld a, a
    pop af
    ccf
    ld a, [$d83f]
    ld a, [hl]

jr_05d_62eb:
    ret


    ld [hl], b
    rst $08

jr_05d_62ee:
    inc bc
    rst $38
    rra
    db $fc
    rra
    ld hl, sp+$1f
    db $fc
    rra
    rst $30
    ld e, $ef
    jr nc, jr_05d_62eb

    ld bc, $0fff
    cp $1f
    ldh a, [rNR23]
    rst $28

jr_05d_6304:
    nop
    rst $38
    inc bc
    rst $38
    rra
    db $fd
    sbc a
    ldh [$9f], a
    ld h, b
    rra
    ldh [$90], a
    ld l, a
    nop
    rst $38
    rlca
    rst $38
    sbc a
    ldh a, [$8f]
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld a, b
    nop
    rst $38
    sbc a
    rst $38
    rst $18
    jr nc, jr_05d_62ee

    inc a
    rst $08
    ld a, [hl-]
    rrca
    ld hl, sp+$01
    cp $c8
    rst $38
    rst $08
    ccf
    rst $00
    jr c, jr_05d_6304

    jr c, jr_05d_633e

    ld hl, sp-$0d
    ccf
    ccf
    dec c
    nop
    nop

jr_05d_633e:
    nop
    nop
    nop
    rst $18
    nop
    ld sp, hl
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

jr_05d_635b:
    ld a, a
    nop
    ld a, a
    add b
    cp a
    nop
    ret nz

    add b
    ld a, b
    ld hl, sp+$06
    inc e
    ld [c], a
    adc a
    ld [hl], b
    db $dd
    ld [hl+], a
    rst $38
    nop
    add hl, de
    and $81
    ld a, [hl]
    jr jr_05d_635b

    nop
    db $dd
    add b
    ld c, a
    nop
    or $ff
    nop
    ld c, a
    or b
    and e
    ld e, h
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    rst $38
    rlca
    ld h, $ff
    inc a
    jp Jump_05d_7f9b


    sub d
    ld a, a
    rlca
    rst $38
    ld c, $ff
    jr c, @+$01

    ld a, [$04ff]
    jp Jump_000_00fd


    ld [hl], b
    nop
    jr nz, jr_05d_63a1

    nop

jr_05d_63a1:
    nop
    nop
    inc bc
    nop
    add a
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    ld c, a
    nop
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $3301
    inc sp
    ld a, a
    ld a, a
    db $fd
    db $fd
    ld a, a
    ld a, a

jr_05d_63c8:
    ld a, e
    ld a, e

jr_05d_63ca:
    ld [hl], e
    ld [hl], e
    rst $38
    db $fc
    rst $38
    ldh a, [$1f]
    ld de, $607f
    rst $38
    add b
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    rst $30
    rst $08
    jr nc, jr_05d_63c8

    jr jr_05d_63ca

    jr @-$07

    adc h
    db $e3
    cp $83
    ld a, h
    ld bc, $73fe
    cp $f9
    sub [hl]
    rst $38
    ld [de], a
    ei
    rla

jr_05d_63f4:
    di
    ld e, a
    add d
    rst $38
    rrca
    rst $38
    ld a, l
    di
    rst $38
    adc e
    di
    rrca
    add c
    ld a, a
    dec b
    rst $38
    dec a
    ei
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld h, c
    rst $38
    rlca
    pop hl
    rra
    ld bc, $17ff
    db $fd
    rst $38
    add c
    rst $38
    ld bc, $05ff
    db $fd
    dec de
    rst $38
    rlca
    db $fd
    inc bc
    ld bc, $83ff
    rst $38
    rst $38
    ccf
    ei
    ld b, $ff
    ld b, $ff
    ld b, $f7
    rrca
    rrca
    rst $38
    adc a
    ld sp, hl
    rst $18
    jr nc, jr_05d_63f4

    ld [hl], b
    ld a, a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rra
    nop
    nop
    nop
    nop
    db $ed
    nop
    db $fc
    nop
    rst $30
    nop
    db $f4
    nop
    ret c

    nop
    add sp, $00
    ret nz

    nop
    ret z

    nop
    ret nc

    nop
    ret z

    nop
    ret nz

    nop
    ret nz

    nop
    ld b, b
    nop
    ret nz

    nop
    ret nc

    nop
    ret nc

    nop
    ldh [$08], a
    add sp, $00
    ldh [$08], a
    ld l, h
    add b
    and b
    add b
    and b
    add b
    and b
    ret nz

    ret nz

    ld hl, sp+$07
    ld a, a
    sub h
    rrca
    ldh a, [$03]
    ld [hl], h
    nop
    db $ed
    ei
    inc b
    pop bc
    ld a, $e0
    rra
    add b
    rst $38
    call nz, Call_000_00ff
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld [$f0ff], sp
    rst $38
    db $e3
    db $fc
    ret nz

    ldh a, [$80]
    ld a, [$da00]
    nop
    rst $38
    nop
    rra
    ld b, a
    nop
    inc b
    nop
    ld a, b
    nop
    inc bc
    db $eb
    ld bc, $07e1
    rst $00
    rrca
    rrca
    rra
    sbc a
    ccf
    cp a
    ccf
    ccf
    rra
    rra
    ld bc, $011f
    ld e, $00
    dec a
    nop
    ld c, a
    nop
    rlca
    nop
    dec de
    nop
    rra
    nop
    rla
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc h
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    ld bc, $c0fe
    rst $38
    adc b
    ld [hl], a
    nop
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    db $db
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rla
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    add b
    rst $38
    add b
    ld a, a
    add b
    add b
    rst $38
    sub b
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
    ld bc, $00ff
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
    rst $38
    ld b, b
    rst $38
    jr nc, @+$01

    inc b
    rst $38
    nop
    rst $38
    nop
    and b
    nop
    adc d
    rst $38
    nop
    nop
    jr nz, jr_05d_6543

jr_05d_6543:
    and b
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
    ld [$000b], sp

jr_05d_6551:
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
    rra
    ld b, b
    ld c, a
    ld b, b
    ld b, a
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
    rrca
    rrca
    sub e
    sub e
    jr nz, jr_05d_6551

    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    nop
    ld l, b
    sub a
    rst $38
    nop
    inc bc
    db $fc
    nop
    db $eb
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
    jr jr_05d_65b3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05d_65c3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05d_65d3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05d_65e3

    ld [hl-], a

jr_05d_65b3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05d_65f3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_05d_65c3:
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

jr_05d_65d3:
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

jr_05d_65e3:
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

jr_05d_65f3:
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
    jr jr_05d_66b4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05d_66c4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05d_66d4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05d_66e4

    ld [hl-], a

jr_05d_66b4:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05d_66f4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $00
    inc b
    inc b
    inc b

jr_05d_66c4:
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b

jr_05d_66d4:
    inc b
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
    inc b
    inc b
    inc b

jr_05d_66e4:
    inc b
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
    inc b
    inc b
    inc b

jr_05d_66f4:
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
    nop
    nop

Jump_05d_6700:
    ld b, $04
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    ld b, $04
    inc b
    nop
    nop
    nop
    nop
    ld bc, $0606
    ld b, $06
    ld b, $01
    ld b, $06
    ld b, $04
    inc b
    nop
    nop
    inc b
    nop
    inc b
    ld b, $06
    ld b, $06
    ld b, $01
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld b, $01
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld b, $01
    ld b, $01
    ld bc, $0606
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0106
    ld bc, $0106
    inc b
    inc b
    ld bc, $0404
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0106
    ld bc, $0101
    ld b, $04
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop

Call_05d_6780:
    ld bc, $0101
    ld bc, $0601
    ld b, $04
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    ld b, $01
    ld b, $06
    ld b, $04
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    inc b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc c
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    ld c, $0c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    inc c
    inc c
    inc c
    ld c, $0c
    ld c, $09
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld c, $0c
    inc c
    add hl, bc
    inc c
    ld c, $0c
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    ld c, $0c
    inc c
    inc c
    ld c, $0e
    inc c
    ld c, $09
    ld c, $0e
    inc c
    inc c
    inc c
    inc c
    dec b
    push bc
    ld bc, $01c1
    ld bc, $0505
    ld bc, $0101
    ld bc, $0101
    ld bc, $0041
    ld bc, $8100
    pop af
    ld [$f40b], sp
    nop
    ld bc, $0000
    nop
    ld b, b
    nop
    ld b, b
    nop
    ret nz

    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    ld b, b
    jr nz, jr_05d_682b

jr_05d_682b:
    ldh [rNR41], a
    ld b, h
    ld h, b
    ld [de], a
    ldh [$1f], a
    adc a
    ld [hl], b
    nop
    nop
    nop
    nop
    nop
    stop
    ld [bc], a
    nop
    sub b
    nop
    ld d, d
    nop
    ld b, b
    nop
    or c
    nop
    ld h, h
    nop
    ld h, $00
    adc $00
    sbc a
    nop
    ld l, l
    ld a, a
    add b
    db $fc
    inc bc
    nop
    xor b
    nop
    nop
    nop
    ld [bc], a
    nop

jr_05d_6859:
    inc b
    nop
    inc b

jr_05d_685c:
    nop
    inc b
    nop
    dec b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    rlca
    rlca
    ld [$231c], sp
    db $10
    add sp, -$38
    ret z

    add b
    add b
    ld [hl], b
    ld [hl], b
    ld a, [c]
    ld a, [c]
    pop hl
    pop hl
    ret nc

    ret nc

    jp $c3c3


    jp $8400


    nop
    add a
    ld bc, $0f16
    ret nc

    rra
    ldh [$1f], a
    ldh [rNR11], a
    xor $01
    cp [hl]
    ld bc, $0116
    ld a, [bc]
    ld bc, $0106
    ld b, [hl]
    ld bc, $0126
    ld a, [bc]
    nop
    dec bc
    add c
    sub [hl]
    ld bc, $0756
    jr c, jr_05d_68c3

    and c
    jr @-$1a

    db $10
    ldh [rP1], a
    rst $20
    nop
    rlc b
    dec hl
    nop
    ld l, b
    nop
    ld e, h
    nop
    ld a, l
    nop
    rst $38
    jr nz, jr_05d_6859

    nop
    dec [hl]
    db $10
    cpl
    inc de
    add l
    rra
    add [hl]
    rra

jr_05d_68c3:
    cp b
    dec sp
    ld d, h
    di
    ld l, h
    pop bc
    cp [hl]
    add e
    inc [hl]
    rlca
    ld sp, hl
    ld b, a
    cp b
    add c
    ld a, [hl]
    add a
    jr c, jr_05d_685c

    ld e, b
    sub a
    ld l, c
    cp a
    ld b, h
    cp l
    ld b, d
    sbc b
    ld h, a
    or l
    ld c, d
    ld [c], a
    ld d, l
    nop
    ld d, a
    nop
    inc d
    nop
    ld b, a
    ld [bc], a
    ld d, h
    nop
    ld c, e
    nop
    ld e, l
    rla

jr_05d_68ef:
    add sp, -$7f
    ld a, [hl]
    nop
    cp e
    nop
    dec hl
    nop
    sbc a
    nop
    db $ed
    jr c, jr_05d_68c3

    ld a, [$f705]
    ld [$a000], sp
    ret nz

    ld a, [de]
    nop
    push de
    nop
    cp a
    add b
    ld e, l
    nop
    add $00
    adc d
    nop
    jp Jump_05d_4b80


    jr nz, jr_05d_68ef

    pop af
    ld a, [bc]
    rst $38
    nop
    ccf
    ld b, b
    rlca
    ld [$0300], sp
    nop
    ld bc, $2300
    nop
    inc bc
    nop
    ld bc, $0500
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc bc
    and b
    rlca
    cp b
    cp $01

jr_05d_6934:
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    stop
    ret nz

    nop
    ld d, b
    nop
    ld d, b
    nop
    ld bc, $e000
    nop
    jp z, $0600

    nop
    inc l
    rlca
    ld hl, sp-$01
    nop
    ldh [$f7], a
    nop
    jr nz, jr_05d_6955

jr_05d_6955:
    nop
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
    nop
    nop
    nop
    ld e, h
    ld sp, $3f46
    ret nz

    db $fc
    inc bc
    ldh a, [rP1]
    nop
    jr nz, @+$62

    sbc c
    jr nc, jr_05d_6934

    db $10
    xor l
    jr jr_05d_69da

    jr jr_05d_69d8

    jr c, @+$47

    ld a, b
    add l
    ld a, b
    add h
    jr c, @-$39

    ccf
    ret


    ld a, [$e005]
    dec de
    call nc, Call_05d_7c2b
    add e
    ld hl, sp+$07
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $877f
    ld a, h
    sbc [hl]
    ld a, b
    pop af

jr_05d_69a0:
    ld b, c
    ldh a, [rSB]
    ld [bc], a
    ld bc, $010e
    ld a, [de]
    ld bc, $011a
    ld a, [bc]
    ld bc, $0128
    ld [hl+], a
    ld bc, $01de
    ld d, l
    ld [bc], a
    ld [hl], l
    inc c
    db $d3
    db $10
    db $ed
    ld h, b
    dec sp
    ret nz

    db $fc
    ldh [rNR34], a
    jr nz, jr_05d_69a0

    ld h, b
    sbc [hl]
    ldh [$3f], a
    db $e3
    inc e
    ldh [$3e], a
    db $f4
    jr z, @-$0a

    ld a, [hl+]
    ld hl, sp+$06
    or b
    ld a, b
    ldh [$36], a
    db $ec
    sub d
    ret nz

    or [hl]

jr_05d_69d8:
    ld [bc], a
    pop hl

jr_05d_69da:
    db $10

jr_05d_69db:
    adc $9e
    ld hl, $255a
    rra
    and e
    ld a, a
    add e
    rrca
    ldh a, [rBGP]
    cp b
    ld b, $b9
    rla
    add sp, -$11
    db $10
    ret nz

    cp a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    ld a, [hl]
    jr nz, jr_05d_69db

    inc c
    pop af
    nop
    rst $08
    rst $38
    ld [hl], b
    rra
    dec h
    inc bc
    add l
    nop
    db $fc
    inc e
    db $e3
    ccf
    ret nz

    rra
    ldh [$1f], a

jr_05d_6a0f:
    ldh [$93], a
    ld l, h
    db $d3
    inc c
    sub c
    ld l, [hl]
    pop af
    ld c, $fd
    ld [bc], a
    rst $38
    jr nz, jr_05d_6a24

    ld a, e
    ld bc, $0106
    ld e, [hl]
    nop
    ld c, a

jr_05d_6a24:
    nop
    ld b, a
    nop
    ld bc, $a300
    nop
    sub e
    nop
    dec de
    inc b
    dec bc
    nop
    rst $20
    rst $30
    ld [$6c13], sp
    nop
    nop
    inc bc
    inc b
    inc bc
    inc c
    inc bc
    inc b
    ld [bc], a
    dec c
    nop
    cpl
    nop
    rrca
    nop
    rlca
    ld bc, $0606
    ld bc, $5807
    rst $38
    jr jr_05d_6a0f

    jr z, jr_05d_6a58

    rlca
    daa
    daa
    dec d
    dec d
    ret nc

    ret nc

jr_05d_6a58:
    ld [hl], c
    ld [hl], c
    jr c, jr_05d_6a94

    ld [hl], l
    ld [hl], l
    ld c, a
    ld c, a
    ld bc, $07ae
    cp c
    cp $15
    add b
    ld d, c
    nop
    dec b
    nop
    ld bc, $1500
    nop
    rst $00
    nop
    sub e
    nop
    xor c
    nop
    push de
    nop
    adc l
    ld bc, $0342
    sub h
    rra
    xor [hl]
    ld hl, sp+$77
    add c
    db $76
    dec b
    ld a, [hl-]
    inc de
    inc l
    rla
    ld l, b
    ld d, $69
    add hl, de
    and [hl]
    db $10
    xor a
    add hl, de
    and $1f
    and e
    cp [hl]
    ld b, c

jr_05d_6a94:
    ldh a, [$3f]
    db $e3
    ld a, b
    jp $8f9c


    jr nc, @+$05

    db $fc
    rst $30
    ld [$50af], sp
    xor a
    ld d, b
    adc a
    ld [hl], b
    sub a
    ld l, e
    xor a
    ld d, [hl]
    db $fc
    rlca
    db $fc
    dec de
    db $f4
    ld l, e
    add $a9
    inc b
    xor e
    inc b
    dec hl
    inc b
    ld a, e
    dec b
    jp c, $db04

    inc c
    ld a, [c]
    add hl, bc
    or [hl]
    db $10
    ld l, h
    ld hl, $a35e
    ld e, h
    inc hl
    call c, $7c03
    nop
    ld c, l
    nop
    ld [bc], a
    ld [bc], a
    add c
    ld bc, $001e
    ccf
    nop
    cp $00
    and e
    nop
    ld c, $04
    dec sp
    inc a
    ld b, d
    inc c
    ldh a, [$f0]
    ld [$8070], sp
    ldh [rP1], a
    add b
    ld b, b
    nop
    add b
    nop
    rst $38
    add b
    ld a, [hl]
    nop
    rst $08
    sbc l
    sbc l
    ret c

    ret c

    ld [$feea], a
    cp $7f
    ld a, a
    push af
    push af
    db $ed
    db $ed
    db $e4
    db $e4
    ld b, c
    or [hl]
    pop bc
    ld a, $ff
    ret nz

    ld a, a
    ld sp, hl
    ccf
    rrca
    ldh [rNR22], a
    ldh [$37], a
    ldh a, [rIF]
    ldh a, [$27]
    ldh a, [rTAC]
    ldh a, [$0b]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc de
    ldh a, [rIE]
    rst $38
    cp [hl]
    rst $10
    dec l
    cp $01
    cp h
    ld b, e
    db $fc
    inc bc
    ld sp, hl
    ld b, $bf
    ld b, b
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [$57bf], sp
    inc bc
    or l
    rst $38
    ld bc, $07ff
    rst $38
    ld a, [de]
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec e
    rst $38
    dec a
    rst $38
    rra
    rst $38
    dec a
    ei
    inc h
    ccf
    ret nz

    cp $01
    ld a, [hl]
    add c
    ld a, $c1
    cpl
    ret nc

    ccf
    ret nz

    cpl
    ret nc

    ccf
    ret nz

    cp a
    ld h, e
    cp $29
    ldh [$cf], a
    ld c, $70
    ld a, $c1
    ld a, $c1
    ld l, [hl]
    sub c
    ld e, $e1
    rra
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    ld a, $cf
    ld hl, sp+$3d
    ldh a, [$cf]
    ret nz

    cp a
    jr z, @-$2b

    add sp, $15
    xor b
    ld d, e
    adc d
    ld [hl], l
    dec sp
    add h
    ccf
    pop bc
    cp a
    ld b, a
    ld a, [hl]
    adc c
    di
    ld l, l
    rst $00
    cp e
    sbc a
    inc hl
    ccf
    ld b, c
    rst $38
    ld bc, $07ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    ld b, $ff
    dec e
    rst $38
    ld [hl], l
    rst $28
    ld d, l
    sbc a
    pop hl
    ld a, a
    add c
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    inc b
    cp a
    ld b, b
    cp [hl]
    ld b, c
    ld [hl-], a
    call $b500
    nop
    ld d, e
    ld bc, $06e6

jr_05d_6bbd:
    sbc c
    nop
    cp d
    nop
    rst $08
    nop
    rst $08
    adc a
    ld d, b
    cp $41
    db $fc
    ld l, e
    ld hl, sp+$06
    db $10
    add sp, $70
    add b
    ldh a, [$f5]
    ldh a, [$fc]
    ldh [$ef], a
    ld b, b
    ld a, e
    add b
    cp a
    nop
    ld [hl-], a
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    inc bc
    nop
    rst $08
    nop
    sbc $00
    ld e, $00
    rlca
    cp b
    cp d
    ld a, a
    ld a, a
    cp a
    cp a
    rst $20
    rst $20
    dec c
    dec c
    ld de, $cc11
    call z, Call_000_0505
    add d
    add d
    db $fd

jr_05d_6bfd:
    db $fd
    ld a, e
    ld a, e
    add b
    rlca
    add b
    rlca
    jp nz, $c003

    inc bc
    ld bc, $4103
    jp Jump_000_3f91


    push hl
    rrca
    ld bc, $10d7
    rst $28
    jr jr_05d_6bfd

    ld e, h
    and e
    dec e
    ld [c], a
    rra
    ldh [$1f], a
    ld h, b
    adc h
    ld [hl], e
    jp Jump_000_06f8


    rra
    jr nz, jr_05d_6c26

jr_05d_6c26:
    ld [$1080], sp
    add b
    db $10
    ld b, b
    db $10
    ld bc, $0000
    nop
    ld [bc], a
    ld [$326d], sp
    rst $38
    rla
    db $10
    ld d, $00
    jr nz, jr_05d_6bbd

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
    sub a
    nop
    rst $38
    cp a
    ret nz

    ccf
    nop
    sub [hl]
    nop
    xor [hl]
    nop
    inc b
    nop
    add d
    nop
    add [hl]
    nop
    ld [bc], a
    nop
    ld [$001f], sp
    ld a, h
    ld hl, sp-$7f
    rlca
    ld e, e
    rlca
    ld a, [hl+]
    rlca
    ld e, b
    rlca
    adc b
    rlca
    xor b
    rlca
    dec hl
    rlca
    adc a
    rrca
    sbc a
    ld a, a
    ldh a, [rIE]
    add b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    rra
    ld h, b
    ccf
    jp $9e7f


    ld a, h
    xor e
    db $e3
    ld a, b
    jp Jump_000_03bc


    db $fc
    ld e, a
    and b
    dec a
    jp $c03f


    ld h, e
    ld bc, $031a
    inc b
    adc h
    ld d, b
    jr jr_05d_6cb9

    xor b
    add b
    call z, $0c00
    nop
    adc [hl]
    rst $38
    adc h
    rst $38
    adc b
    rst $38
    add b
    push af
    adc d
    ret nz

    rst $38
    ret nz

    cp a
    add c
    ld a, [hl]
    ldh [$1f], a
    db $10
    db $eb
    ld [hl], e
    adc h
    rst $38
    ld [$09ff], sp
    ld e, [hl]

jr_05d_6cb9:
    ld hl, $a478
    and b
    ld e, a
    ld b, b
    ld hl, $a2a2
    add b
    sub b
    add sp, -$18
    add b
    add c
    nop
    jr c, jr_05d_6ccc

    add hl, de

jr_05d_6ccc:
    rra
    sbc a
    ccf
    ccf
    ld [$4009], sp
    ld b, b
    inc bc
    inc bc
    dec bc
    db $eb
    ld bc, $0181
    add l
    inc bc
    db $db
    ld [bc], a
    jp nz, $8000

    add hl, bc
    ld c, c
    inc h
    inc h
    nop
    add e
    db $10
    sub b
    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    ld c, c
    ld c, c
    add hl, de
    add hl, de
    ld [$0208], sp
    ld [bc], a
    cp h
    cp h
    ret nc

    ret nc

    ldh [$e0], a
    rra
    ldh a, [$7b]
    adc [hl]
    ld a, l
    add e
    ld l, a
    sub b
    ld a, e
    add h
    ld [hl], a
    adc b
    cp a
    ret nz

    rst $10
    add sp, -$20
    ld sp, hl
    sub b
    ccf
    xor b
    inc bc
    ld bc, $0060
    ld [hl-], a
    nop
    ld h, e
    nop
    ld b, a
    nop
    ld l, [hl]
    nop
    ld a, a
    inc l
    ld a, a
    sbc [hl]
    ccf
    ldh a, [rSB]
    nop
    nop
    nop
    ld [$0020], sp
    ld b, b
    nop
    nop
    nop
    nop
    add hl, bc
    ld d, b
    rst $38
    adc b
    nop
    inc a
    nop
    ld bc, $00c1
    add c
    nop
    pop hl
    nop
    add b
    ld [bc], a
    ret nz

    ld bc, $6af1
    rst $38
    nop
    nop
    db $10
    ld bc, $8000
    nop
    nop
    db $10
    add b
    nop
    add b
    nop
    jr z, jr_05d_6d7f

    ccf
    ld h, h
    ldh a, [rP1]
    and b
    nop
    jr nz, jr_05d_6d7f

    ld hl, $30ef
    xor a
    ld [hl], b
    cpl
    ldh a, [$89]
    ld [hl], a
    cp c
    ld a, [hl]
    sub $e9
    xor b
    rst $30
    ld h, b
    rst $38
    ld h, b
    di
    ld h, b
    ld a, [c]
    ld h, b
    rst $38
    inc [hl]
    ld a, [hl]
    ld a, b
    db $fc
    ld [hl], b
    ld sp, hl
    db $10
    rst $20
    ld l, b

jr_05d_6d7f:
    adc a
    ret nz

    rrca
    nop
    dec bc
    ld b, c
    rrca
    ld [bc], a
    rrca
    inc c
    ld c, $24
    ld [$2000], sp
    ld d, b
    ret nz

    add b
    add b
    nop
    ld [c], a
    nop
    ld [c], a
    nop
    db $e4
    add b
    ldh [rP1], a
    ld h, b
    ld a, [bc]
    nop
    jr c, jr_05d_6da0

jr_05d_6da0:
    sbc a
    ld h, b
    ld b, b
    cp a
    xor $01
    cp $25
    ld a, a
    sub h
    cp a
    ld c, b
    or $09
    inc l
    sub e
    nop
    rst $38
    ret z

    scf
    ldh [$1f], a
    ret nz

    ld sp, $4500
    nop
    inc b
    nop
    or l
    nop
    ld [hl], a
    nop
    ld bc, $0000
    dec bc
    dec bc
    dec bc
    sra l
    xor l

jr_05d_6dca:
    rst $38
    rst $38

jr_05d_6dcc:
    db $fd
    db $fd
    rst $38
    rst $38
    rrca
    cpl
    dec e
    dec e
    rst $00
    rst $00
    add e
    add e
    jp nz, $e4c2

    db $e4
    call z, $01cc
    ld bc, $0e01
    nop
    ld [bc], a
    nop
    nop
    nop
    ld [de], a
    nop
    nop
    nop
    ld bc, $c000
    nop
    jr z, jr_05d_6df5

    inc b
    ld [$0108], sp

jr_05d_6df5:
    ld bc, $3131
    ld [hl], b
    ld [hl], b
    ld h, c
    ld h, c
    dec h
    dec h
    dec b
    dec b
    rst $00
    jr z, jr_05d_6dca

    jr z, jr_05d_6dcc

    cp b
    db $e3
    call c, Call_000_10ff
    sbc a
    ld l, a
    adc a
    ld [hl], e
    sbc a
    ld h, c
    jr nz, @+$03

    ld bc, $8081

jr_05d_6e15:
    pop bc

jr_05d_6e16:
    ld b, c
    pop af
    nop
    dec c
    ld a, c
    jp $c04f


    nop
    ret nz

    ld bc, $00c0
    ldh [rP1], a
    ldh [$c0], a
    ldh a, [$0a]
    rst $38
    nop
    pop af
    jr nz, jr_05d_6e16

    nop
    db $ed

jr_05d_6e30:
    nop
    jp hl


    jr nz, jr_05d_6e15

    jr nz, @+$01

    ld d, $ff
    ld bc, $781c
    ld a, [$fa78]
    ld a, b
    ld a, [$f878]
    ld l, b
    rst $38
    ld a, h
    rst $38
    ld h, c
    ld hl, sp+$00
    ld [hl], b
    jr nz, jr_05d_6e30

    nop
    ld [hl], h
    nop
    ld [hl], b
    nop
    ld [hl], b
    ld d, $ff
    inc [hl]
    ld sp, hl
    inc c
    pop bc
    inc l
    ld sp, $602c
    inc c
    ldh [$0c], a
    ld hl, $37ca
    sub e
    ld a, h
    rst $18
    ldh [$3f], a
    ret nz

    cp a
    ld b, b
    ld a, a
    add b
    ld a, c
    add a
    pop af
    ld c, $16
    ld a, b
    ld c, b
    ldh [rP1], a
    sub b

jr_05d_6e76:
    db $10
    jr nc, jr_05d_6e99

    ldh a, [rNR10]
    ld sp, hl

jr_05d_6e7c:
    nop
    or $18
    db $fc
    jr nc, jr_05d_6e7c

    ret nz

    ld a, [$ba00]
    ld [bc], a
    ld a, [hl-]
    nop
    ld a, $00
    ld [$0012], sp
    nop
    nop
    cp $01
    rst $38
    rrca
    rst $08
    inc sp
    rst $38
    ld [bc], a
    db $d3

jr_05d_6e99:
    inc l
    db $fc
    inc bc
    db $fc
    ei
    ld hl, sp+$07
    ldh [$9f], a
    add d
    ld a, l
    nop
    rst $38
    jr nc, jr_05d_6e76

    ld hl, sp+$04
    nop
    or $00
    ld b, b
    nop
    ld b, e
    nop
    sbc e
    nop
    di
    nop
    add hl, sp
    nop
    ld b, b
    nop
    add b
    nop
    add hl, de
    ld bc, $074e
    db $fc
    nop
    ld [bc], a
    nop
    dec bc
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    or a
    jr nz, jr_05d_6f27

    nop
    rst $38
    nop
    rst $38
    add b
    ld a, e
    add b
    ld d, c
    nop
    rst $00
    nop
    xor h
    nop
    ld a, e
    nop
    db $fc
    nop
    pop af
    ld d, d
    ld d, d
    ld h, e
    ld h, e
    dec b
    dec b
    ld c, b
    ld c, b
    nop
    nop
    nop
    nop
    sub b
    sub b
    ld [$1808], sp
    jr jr_05d_6f53

    ld h, b
    ld bc, $7e01
    ld a, [hl]
    ld a, c
    ld a, c
    scf
    scf
    ldh [$e0], a
    jp Jump_000_11c3


    ret


    ld b, b
    add hl, bc
    ld h, b
    dec c
    ld hl, $2187
    add e
    ld [bc], a
    add l
    and d
    add l
    ld [bc], a
    ld b, h
    ld [hl+], a
    cp b
    inc b
    adc h
    nop
    and c
    ld [bc], a
    sub b
    add d
    add b
    ret nz

    ldh [$60], a
    ld a, b
    and h
    rrca
    add b
    ld b, b
    ld bc, $004c
    inc e
    nop

jr_05d_6f27:
    ld d, h
    ld b, b
    ld [hl], h
    db $10
    ld a, $20
    rlca
    nop
    ld b, $40
    inc bc
    nop
    ld [bc], a
    nop
    ld [hl+], a
    nop
    rst $38
    jr nc, jr_05d_6f3b

    inc de

jr_05d_6f3b:
    adc a
    ld [bc], a
    adc a
    ld [bc], a
    add a
    inc de
    adc a
    rlca
    rst $08
    nop
    add a
    jr nz, jr_05d_6f4a

    nop
    add d

jr_05d_6f4a:
    jr nz, @+$04

    nop
    ld b, $00
    ld c, [hl]
    ld b, c
    ldh [$31], a

jr_05d_6f53:
    add h
    ld bc, $0142
    jp nz, Jump_05d_6700

    inc b
    add $50
    ld hl, sp-$7f
    ldh [$c0], a
    add sp, -$40
    push bc
    ld b, b
    sub $41
    db $fc
    ld h, b
    ld [hl], d
    ld b, b
    and $40
    ld c, $c0
    dec bc
    ld [bc], a
    ld c, $08
    ld a, $10
    ld [hl-], a
    nop
    ld [bc], a
    nop
    add d
    add b
    add b
    ld bc, $0040
    add b
    db $db
    and h
    db $fd
    ld [bc], a
    rst $38
    inc c
    xor $13
    xor $11
    db $fc
    ld c, e
    db $fc
    dec sp
    rst $38
    ld b, l
    rst $38
    inc b
    rst $38
    add b
    sbc e
    ld h, h
    rst $38
    nop
    call Call_05d_4f32
    or b
    dec sp
    push hl
    rrca
    or $70
    adc h
    nop
    ldh [rP1], a
    add b

jr_05d_6fa6:
    nop
    nop
    nop
    ld bc, $0300
    inc b
    ld l, e
    dec e
    ld h, d
    ld b, b
    ccf
    nop
    ret nz

    nop
    add c
    nop
    ld bc, $0300
    nop
    ld a, e
    and b
    ld e, d
    nop
    rst $28
    ld [$00f3], sp
    ld a, [hl]
    nop
    db $db
    jr nz, jr_05d_6fa6

    ld h, b
    sub e
    nop
    rst $30
    nop
    rst $38
    nop
    rst $30
    rst $28
    rst $28
    rst $00
    rst $00
    adc a
    adc a
    ldh a, [$f0]
    db $d3
    db $d3
    ld h, a
    ld h, a
    ld d, [hl]
    ld d, [hl]
    ld d, l
    ld d, l
    ld a, a
    ld a, a
    db $ec
    db $ec
    ld c, $0e
    jr jr_05d_7000

    ld d, $16
    add e
    add e
    ld b, b
    ld b, b
    jr nz, @+$22

    nop
    nop
    nop
    nop
    and d
    and d
    inc d
    inc d
    inc b
    inc b
    add c
    add c
    add b
    add b
    nop
    nop

jr_05d_7000:
    add e
    db $fc
    dec b
    ld a, [$fc43]
    di
    db $fc
    db $e3
    db $fc
    db $f4
    rst $38
    ld h, e
    db $fc
    ld b, l
    ld a, [$f817]
    sub e
    db $fc
    ret z

    rst $38
    rrca
    ldh a, [$03]
    db $fc
    inc bc
    db $fc
    dec b
    cp $88
    ld a, a

Call_05d_7020:
    ldh a, [rIF]
    db $ec
    inc de
    ret nz

    ccf
    nop
    rst $38
    add d
    ld a, l

jr_05d_702a:
    ld d, b
    rst $38
    ld b, b
    rst $38
    ld a, a
    rst $38
    jr nz, jr_05d_702a

    ld b, b
    ld a, [$f840]
    ret nz

    cp $00
    or $80
    db $fc
    ldh a, [$fc]
    pop af
    db $fc
    db $f4
    rst $38
    ld b, l
    ld a, [$f847]
    rlca
    ld hl, sp-$40
    rst $38
    add e
    ld a, h
    and e
    ld a, h
    add c
    ld a, [hl]
    nop
    cp $10
    ccf
    add b
    rla
    nop
    inc de
    nop
    rst $38
    nop
    ld sp, hl
    ld [$407f], sp
    ld a, a
    ld b, b
    ld a, a
    jr nc, @+$01

    ld b, b
    db $fc
    nop
    nop
    nop
    nop
    ld c, a
    nop
    rrca
    nop
    nop
    or d
    db $fc
    inc bc
    rst $38
    nop
    rst $30
    ld [$0cff], sp
    cp $01
    rst $38
    nop
    db $fc
    dec de
    db $fc
    inc bc
    ldh [$fb], a
    add b
    ld a, a
    inc bc
    db $fc
    dec sp
    call nz, $f807
    inc bc
    cp $06
    ld sp, hl

jr_05d_708e:
    rst $38
    jr @+$01

    jr jr_05d_708e

    dec d
    rst $20
    ld a, e
    rst $20
    dec de
    db $fc
    db $e3
    ret nz

    ccf
    nop
    rst $38
    nop
    cp h
    nop
    ccf
    nop
    rrca
    inc b
    dec de
    rrca
    ld [hl], b
    ld a, h
    add e
    call nz, $8038
    ld a, b
    ret nz

    jr nc, jr_05d_70e9

    call nz, $cb10
    ld [de], a
    db $ed
    ld [$00d7], sp
    ld l, a
    nop
    rst $38
    nop
    ld [hl], a
    nop
    rst $20
    rlca
    rlca
    inc bc
    inc bc
    dec b
    dec b
    jp nz, $88c2

    adc b
    add b
    add b
    pop bc
    pop bc
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
    or $f6
    rst $38
    rst $38
    sbc $de
    db $ec
    db $ec
    db $fc
    db $fc
    adc $ce
    ld a, h
    ld a, h
    ld hl, sp-$08
    db $d3

jr_05d_70e9:
    db $d3
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    rst $20
    rst $20
    rrca
    rrca
    add a
    add a
    cp a
    cp a
    rst $08
    rst $08
    rla
    rla
    jp z, $38ca

    add hl, sp
    ld b, b
    ld b, b
    ld b, c
    rst $38
    nop
    nop
    nop
    rlca
    nop
    rrca
    nop
    rrca
    inc bc
    ccf
    db $10
    ld bc, $0100
    cp $01
    sub b
    ld l, a
    nop
    rst $38
    ld hl, sp+$07
    db $f4
    rrca
    db $f4
    rrca
    rst $10
    cpl
    inc bc
    rst $38
    rrca
    rst $18
    rlca
    rst $18
    rrca
    rst $38
    db $10
    cp $03
    stop
    ld hl, sp+$00
    ld hl, sp-$48
    ld hl, sp-$42
    ld b, c
    cp [hl]
    ld b, c
    cp $01
    adc b
    ld [hl], a
    db $fd
    ld [bc], a
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ld bc, $feff
    ld bc, $01fe
    cp $01
    inc b
    rst $38
    ld hl, sp+$07
    db $fc
    rlca
    db $f4
    rrca
    inc b
    rrca
    add l
    rst $38
    rlca
    rst $28
    inc bc
    rst $18
    rlca
    rst $38
    nop
    rst $38
    ld [bc], a
    ld [hl], b
    nop
    ld hl, sp-$80
    ld hl, sp+$40
    ld sp, hl
    nop
    ld b, c
    nop
    ld b, b
    nop
    nop
    db $e3
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $fffe
    nop
    cp $03
    inc [hl]
    rlc b
    cp $00
    ei
    rlca
    reti


    nop
    rst $38
    ld b, c
    cp [hl]
    rra
    ld hl, sp-$01
    rlca
    rst $38
    daa
    rst $38
    ld l, [hl]
    rst $38
    dec sp
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld b, h
    rst $28
    sub b
    add a
    ld hl, sp+$23
    call c, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
    nop
    add l
    add b
    ld [hl], e
    nop
    ld b, b
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $00da
    pop af
    nop
    di
    ld hl, sp+$17
    rrca
    ldh a, [rP1]
    rst $38
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
    xor a
    nop
    ld e, e
    nop
    ccf
    add hl, bc
    db $76
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    db $fc
    db $fc
    ld hl, sp-$07
    ret nz

    rst $00
    nop
    rrca
    nop
    cp [hl]
    nop
    dec e
    inc b
    dec h
    ld [$800b], sp
    add a
    nop
    ld bc, $0f00
    sub b
    sbc a
    ld b, b
    ld c, a
    nop
    rrca
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    cp a
    nop
    ccf
    nop
    ld a, a
    ldh [rIE], a
    ld [hl], a
    rst $38
    pop hl
    rra
    daa
    db $db
    dec bc
    rst $30
    inc hl
    rst $18
    inc hl
    rst $38
    db $fc

jr_05d_720d:
    inc bc
    ld sp, hl
    ld b, $00
    ld [bc], a
    nop
    rra
    nop
    ld a, [$e003]
    inc bc
    ldh [rTMA], a
    ldh [$e0], a
    db $fd
    nop
    or $2b
    call nc, $c03f
    jr jr_05d_720d

    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub [hl]
    ld l, c
    ld c, b
    rst $30
    dec [hl]
    adc $35
    adc $84
    rst $38
    db $d3
    ccf
    jp hl


    rla
    dec bc
    rst $30

Call_05d_723e:
    inc bc
    rst $38
    rra
    rst $38
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld b, $08
    sbc a
    nop
    ldh [rTAC], a
    ldh [rTMA], a
    ldh [$5f], a
    ldh [$c1], a
    cp $4f
    or b
    ld a, e
    add h
    add hl, de
    and $00
    rst $38
    rst $38
    nop
    rst $18
    jr nz, @+$01

    jr nz, @+$01

    rst $38
    rst $38
    rst $08
    rst $38
    add h
    rst $38
    nop
    inc bc
    db $fc
    ccf
    call nz, Call_000_10ff
    rst $38
    nop
    rst $38
    nop
    ld [hl], e
    adc h
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ret nz

    ld h, $ff
    jr nz, @+$01

    nop

jr_05d_7282:
    rst $38
    nop
    ld a, a
    add b
    ld e, e
    and h
    jp nz, Jump_05d_473d

    cp b
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    ld bc, $04ff
    rst $38
    dec b
    rst $38
    ld b, $ef
    ld [de], a
    ld [bc], a
    db $fd
    nop
    cp $00
    db $fd
    nop
    db $fd
    nop
    pop bc
    nop
    pop bc
    nop
    ld b, b
    nop
    ld b, e
    ld b, a
    sbc b
    add d
    ld a, l
    ld b, l
    cp d
    rlca
    sbc b

jr_05d_72b4:
    nop
    adc h
    nop
    add [hl]
    add $3a
    inc e
    ld [c], a
    jr c, jr_05d_7282

    jr c, jr_05d_72b4

    ld [hl], b
    adc d
    ld h, b
    sub c
    nop
    db $e3
    nop
    ld h, c
    nop
    ld h, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    db $fc
    rst $18
    rst $18
    ret nz

    rst $08
    nop
    cp a
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
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc

jr_05d_72f9:
    rst $38
    db $fc
    rst $38
    jr nz, @+$01

    and e
    ld a, h
    nop
    cp $68
    rst $38
    nop
    rst $30
    sub b
    ld a, [hl]
    db $10
    ld a, a
    sub b
    ld a, a
    ld e, e
    ld a, a
    nop
    rrca
    ld hl, sp+$07
    di
    inc c
    ret nz

    ccf
    add c
    ld a, [hl]
    ret nz

    ccf
    xor d
    ld a, a
    and c
    ld a, a
    db $fd
    ld a, a
    ld a, [hl+]
    db $fd
    ld [c], a
    ld a, l
    inc hl
    db $fc
    ld l, c
    cp $89
    or $a1
    cp $f8
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld bc, $22fe
    db $fd
    inc bc
    db $fc
    ret z

    rst $38
    add d
    ld a, l
    or c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    adc l
    ld a, a
    ld hl, sp+$07
    db $f4
    dec bc
    jp nz, $013d

    rst $38
    rst $10
    jr z, jr_05d_72f9

    ld a, a
    ld h, b
    ld a, a
    ld [hl], d
    rst $38
    ld [$00fc], sp
    jp hl


    nop
    nop
    nop
    nop
    ld bc, $0304
    ret nz

    ld hl, sp+$05
    ld hl, sp+$07
    ld a, [$5c15]
    and e
    nop
    db $fc
    nop
    cp $7f
    add b
    sbc a
    ld h, b
    ld hl, sp+$0e
    ld [hl], b
    cp a
    rst $20
    jr @+$01

    ldh [$c0], a
    ccf
    nop
    ldh [$80], a
    ld [hl], l
    add b
    ld c, l
    nop
    add b
    add b
    ccf
    ld a, [de]
    push hl
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    or a
    ld c, b
    nop
    adc a
    nop
    and b
    nop
    call nz, RST_00
    nop
    ld bc, $0f00
    nop
    rst $38
    ldh a, [$08]
    ld [hl], b
    adc h
    cp $fe
    cp $fe
    inc [hl]
    inc [hl]
    nop
    inc hl
    nop
    db $e3
    nop
    ld [hl], $00
    dec de
    nop
    pop bc
    nop
    daa
    or b
    or c
    ld de, $9a15
    sbc d
    ld [$7908], sp
    ld a, c
    ld a, [c]
    ld a, [c]
    jp $bec3


    cp a
    ld hl, sp-$07
    ld hl, sp-$07
    ld e, $de
    ld e, $fe
    rrca
    rst $28
    inc c
    db $ed
    inc e
    rst $38
    inc e
    rst $38
    inc c
    db $ed
    inc c
    db $fd
    inc c
    rst $28
    inc b
    rst $30
    inc b
    rst $20
    inc c
    rst $38
    inc c
    cp $08
    ei
    ld [$08fb], sp
    rst $38
    ld [$08ff], sp
    ei
    ld [$08ff], sp
    rst $38
    ld [$30ef], sp
    rst $08
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ld [bc], a
    db $fd
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    inc bc
    rst $38
    ld a, [hl]
    add c
    db $fc
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    inc bc
    rst $38
    add hl, de
    rst $20
    dec bc
    rst $30
    add hl, bc
    rst $30
    daa
    rst $38
    ld h, b
    sbc a
    inc hl
    call c, $fc07
    ld bc, $fdfe
    cp $df
    jr nz, jr_05d_7482

    and b
    rst $38
    nop
    call nz, $fe3b
    ld bc, $03fc
    ld hl, sp+$07
    ld hl, sp+$07
    ld h, e
    sbc a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld hl, sp+$07

jr_05d_743c:
    cp $03
    ld a, [$0207]
    rlca
    inc bc
    rst $38
    inc bc
    rst $28
    inc hl
    rst $30
    inc bc
    rst $38
    rrca
    rst $38
    ld bc, $0088
    db $fc
    nop
    db $fc
    ret c

    db $fc
    nop
    ld b, b
    nop
    nop
    ld b, c
    nop
    db $f4
    nop
    inc a
    nop
    sbc h
    nop
    inc hl
    call c, $da25
    cp d
    ld c, l
    rra
    ldh [$09], a
    or [hl]
    nop
    rst $28
    add c
    ld e, [hl]
    add c
    ld a, [hl]
    ld bc, $00ba
    push af
    ret nz

    scf
    pop bc
    ld h, $c7
    jr c, jr_05d_743c

    ld a, $01
    adc $02
    push af
    ld b, $f9

jr_05d_7482:
    call z, $fd33
    nop
    dec e
    ld [c], a
    dec e
    ld [$f60d], a
    db $fd
    ld [bc], a
    inc e
    ei
    db $10
    ld l, a
    nop
    ld a, a
    nop
    di
    nop
    add c
    nop
    inc hl
    nop
    rst $08
    nop
    sub a
    nop
    ld bc, $8080
    nop
    jr nz, jr_05d_74a5

jr_05d_74a5:
    ld bc, $0000
    dec b
    dec b
    nop
    ld [$cd00], sp
    ld [$400d], sp
    ld b, b
    nop
    nop
    ret nz

    ret nz

    add c
    add l
    nop
    dec l
    nop
    inc a
    add b
    cp c
    nop
    dec e
    nop
    rra
    nop
    cp $03
    db $e3
    inc bc
    jp $efef


    db $fd
    db $fd
    inc b
    db $e4
    nop
    add b
    nop
    ld a, [c]
    nop
    and $00
    cp $00
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    ld bc, $0075
    db $fc
    nop
    ld hl, sp+$06
    ld c, $07
    rst $20
    rlca
    rst $38
    rlca
    rst $30
    ld l, e
    sub h
    rla
    add sp, $07
    ld hl, sp+$43
    db $fc
    ld b, e
    db $fc
    dec de
    db $e4
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld b, e
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$17
    ld hl, sp-$05
    db $fc
    add $f9
    ret nz

    ld a, [c]
    ret nz

    db $f4
    and b
    ld sp, hl
    nop
    xor b
    add b
    nop
    nop
    add hl, bc
    nop
    ld a, [bc]
    ld [$007c], sp
    ld [hl], b
    nop
    ld [hl], b
    ld b, b
    ld [hl], b
    ld d, b
    ld a, a
    ld bc, $0040
    and b
    nop
    ld a, [c]
    add b
    add sp, -$5f
    cp $7c
    add e
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rla
    ld hl, sp+$0b
    db $f4
    dec c
    ld a, [c]
    nop
    ld sp, hl
    ldh a, [$f0]
    add b
    ld hl, sp-$80
    call z, $e880
    sub b
    ld a, [$0a80]
    add b
    add hl, bc
    nop
    inc d
    nop
    ld [hl-], a
    ld b, b
    ld a, [c]
    nop
    ld [c], a
    nop
    jr nc, jr_05d_759b

    ld bc, $0400
    nop
    inc b
    add b
    inc b
    ld b, b
    ld [$0800], sp
    and b
    ld [$0000], sp
    nop
    dec b
    ld b, b
    ld bc, $0b42
    rst $08
    ld sp, $01ff
    xor a
    ld d, a
    rst $38
    nop
    rst $38
    ld bc, $43bf
    xor a
    ld d, c
    rst $38
    nop
    rst $38
    inc b
    ld c, a
    or c
    ld d, a
    xor c
    db $fc
    inc bc
    rst $38
    nop
    rst $28
    ld de, $3ec1
    ld b, c
    cp [hl]
    ld a, l
    add d
    ld a, e
    inc b
    ld a, e
    inc b
    dec sp
    call nz, $13ec
    and h

jr_05d_759b:
    ld e, e
    nop
    rst $38
    add sp, $17
    add h
    ld e, e
    ret nz

    dec sp
    ldh [$5e], a
    pop bc
    ld a, [hl]
    ld hl, sp+$07
    jr nz, jr_05d_75b3

    nop
    jr nz, jr_05d_75af

jr_05d_75af:
    inc a
    rra
    rra
    ccf

jr_05d_75b3:
    ccf
    dec de
    dec de
    ccf
    ccf
    inc sp
    di
    dec b
    push bc
    inc [hl]
    or h
    ld [hl], h
    ld [hl], h
    inc b
    ld b, h
    ccf
    rst $38
    cp a
    cp a
    or a
    or a
    ld b, a
    ld b, a
    ld e, a
    ld e, a
    adc $ce
    ld bc, $00c5
    adc h
    ld bc, $0001
    ld a, e
    nop
    db $dd
    nop
    ld e, a
    nop
    rst $38
    ret nz

    call nz, $c5c5
    nop
    rst $38
    nop
    ld a, d
    add b
    adc e
    add b
    add [hl]
    add b
    cp a
    add b
    cp a
    add b
    cp a
    nop
    ccf
    nop
    inc c
    nop
    xor h
    ld b, b
    ld [$1800], sp
    ld b, b
    add hl, sp
    add hl, bc
    dec hl
    nop
    sbc e

jr_05d_75fe:
    nop
    jp c, $9d0a

    ld b, b
    sbc c
    inc d
    ld sp, $a128
    ld [$0040], sp
    add c
    ret nz

    and b
    nop
    inc hl
    add c
    inc hl
    inc b
    ld [hl], $88
    ld a, [hl]
    jr nz, jr_05d_767a

    ld d, b
    ld b, d
    nop
    add $00
    ld b, d
    nop
    nop
    nop
    add $00
    ld e, [hl]
    ld c, $ff
    add c
    call z, $8c21
    ld b, $ce
    inc b
    sbc $04
    adc [hl]
    inc b
    sub h
    add l
    sbc [hl]
    dec b
    sbc $1d
    ld a, $06
    adc [hl]
    nop
    add a
    ld bc, $0084
    add h
    ld bc, $0084
    add h
    nop
    ld h, h
    ld b, c
    inc l
    ld de, $011c
    xor h
    inc b
    inc h
    ld [$00a3], sp
    and l
    inc bc
    inc h
    ld d, c
    ld h, h
    inc sp
    jr nz, jr_05d_767a

    inc h
    inc bc
    ldh a, [$03]
    ld hl, sp+$01
    xor b
    dec b
    ld h, h
    ld b, c
    ld h, h
    nop
    ld [c], a
    nop
    add c
    nop
    ld hl, $9000
    jr nz, jr_05d_75fe

    nop
    sbc b
    db $10
    adc b
    nop
    inc b
    nop
    inc b
    nop
    ld c, $00
    ld a, [bc]

jr_05d_767a:
    nop
    dec de
    ld bc, $0039
    cp c
    db $10
    sbc b
    ld bc, $0998
    ld a, b
    add hl, bc
    db $fc
    ld bc, $017c
    db $fc
    ld bc, HeaderTitle
    ld [hl-], a
    sbc [hl]
    ld [hl], e
    cp d
    ld d, l
    db $fc
    inc de
    db $fd
    ld [hl-], a
    ei
    inc b
    db $fd
    ld [bc], a
    ld a, a
    adc b
    ccf
    ret z

    ld a, a
    adc b
    ld a, a
    sbc h
    ccf

jr_05d_76a5:
    ld e, h
    cpl
    pop de
    rra
    ldh [rIF], a
    pop af
    inc bc
    ld h, l
    add hl, bc
    ld [hl], a
    dec c
    di
    rlca
    ld a, b
    ld bc, $61ff
    sbc a
    db $10
    rst $28
    nop
    ld c, $00
    inc bc
    nop
    add a
    nop
    nop
    nop
    add e
    jr nz, jr_05d_76a5

    ccf
    ret nz

    dec b
    ld a, [$da01]
    nop
    and e
    nop
    rst $38
    ld [hl], b
    ld [hl], b
    cp [hl]
    cp [hl]
    cp $fe
    ld a, a
    ld a, a
    ld a, d
    ld a, [$d212]
    ld de, $d2f1
    jp nc, $fd01

    nop
    rst $38
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
    rst $38
    ldh a, [rNR32]
    ldh a, [$36]
    ldh [$39], a
    ret nz

    xor l
    add b
    or $60
    sbc a
    ld h, b
    sub a
    ldh [rNR14], a
    ldh [$94], a
    ldh [$9c], a
    pop hl

Jump_05d_7705:
jr_05d_7705:
    rrca
    rst $20
    dec de
    rst $28
    inc d
    ld sp, hl
    xor [hl]
    jp hl


    sub $c9
    sub $01
    cp $49
    or [hl]
    adc e
    ld [hl], b
    sbc e
    ld h, h
    sub d
    ld l, c
    ld de, $1ace
    and l
    sbc d
    ld h, l
    rst $18
    jr nz, @+$01

    ld h, b
    rst $00
    jr c, jr_05d_7727

jr_05d_7727:
    db $eb
    inc hl
    ret c

    inc hl
    ret nc

    ld hl, $6bde
    sub h
    dec hl
    ret nc

    ld h, c
    sbc [hl]
    ld h, c
    sbc [hl]
    db $e3
    jr jr_05d_779c

    sbc h
    rst $30
    adc b
    rst $38
    ld [hl], b
    rra
    rst $28
    rlca
    jp $e502


    nop
    xor $02
    push de
    ld b, $e9
    ld b, $71
    ld b, [hl]
    and c
    add h
    ld b, e
    call nz, $c6ab
    adc c
    ld b, h
    ei
    db $fd
    ld [hl+], a
    db $fd
    ld a, [de]
    rst $28
    dec d
    ldh [rTAC], a
    ldh [rNR10], a
    ldh [rP1], a
    ret nz

    jr nc, jr_05d_7705

    ld b, b
    ldh [rP1], a
    ldh [$80], a
    ret nz

    and d
    ret nz

    ld h, b
    ldh [$c0], a
    ldh [$b0], a
    ldh [$b3], a
    cp a
    jp $ec9f


    adc b
    or $90
    db $ed
    sbc b
    ld h, [hl]
    sbc b
    ld b, d
    sub b
    ld [$afd0], a
    ret nc

    dec b
    ld d, b
    adc e
    ld e, h
    and e
    ccf
    ret z

    ccf
    ld c, e
    rrca
    or a
    ld bc, $00c4
    rst $28
    add b
    ld e, d
    add b
    ld a, a
    nop
    rst $38
    add b
    ccf

jr_05d_779c:
    adc b
    scf
    add b
    rst $38
    add d
    ld a, l
    jp nz, Jump_05d_401d

    rst $38
    rst $38
    inc [hl]
    cp a
    ld a, a
    ld l, a
    sub b
    ld a, e
    add h
    ei
    inc b
    db $fd
    ld h, d
    rst $38
    and b
    rst $38
    jr nz, @+$01

    ld bc, $bb07
    dec c
    di
    dec b
    xor d
    add b
    rrca
    ld b, b
    or a
    ld a, e
    inc h
    ld e, $e1
    rst $30
    ld [$40bf], sp
    ld e, l
    and d
    inc c
    di
    ld [bc], a
    ld l, l
    pop bc
    ld h, $00
    ld a, h
    nop
    xor l
    nop
    dec e
    inc bc
    inc e
    nop
    dec de
    nop
    sbc b
    nop
    ldh [$d0], a
    ret nc

    dec l
    xor l
    rrca
    rst $28
    ld bc, $02f1
    ld a, [c]
    ld bc, $00bd
    db $fc
    nop
    rst $38
    nop
    ld d, d
    nop
    sub d
    nop
    ld e, h
    nop
    ld l, c
    nop
    ld d, e
    nop
    call Call_000_3502
    ld bc, $0066
    ld d, a
    inc d
    xor e
    rst $38
    cp a
    rst $38
    ei
    inc bc
    db $fc
    ld bc, $00be
    rlc b
    di
    add b
    ld [hl], a
    add b
    ld a, a
    nop
    rst $28
    ld bc, $81ee
    ld a, [hl]
    inc bc
    db $ec
    ld b, e
    cp h
    ld h, a
    sbc b
    ld a, a
    ret nz

    rst $38
    cp $fc
    inc sp
    ld a, a
    add b
    rst $38
    ld [de], a
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    sbc $21
    cp $01
    nop
    rst $38
    rst $38
    db $fd
    cp $01
    rlca
    ld hl, sp+$01
    cp [hl]
    inc bc
    call z, Call_05d_5e01
    ld bc, $03fe
    db $fc
    dec b
    ld a, [$b00f]
    adc a
    ld [hl], b
    sbc a
    ld h, b
    rst $18
    ld [hl+], a
    rst $38
    ld e, a
    ld a, a
    sub c
    nop
    rla
    ld bc, $0106
    ld [bc], a
    inc bc
    inc b
    inc bc
    inc d
    inc bc
    inc c
    ld b, $a9
    ld b, $61
    dec b
    ld [bc], a
    rlca
    ld [$7407], sp
    rst $38
    rst $08
    rst $38
    inc bc
    nop
    or a
    nop
    ld a, l
    nop
    ld l, a
    nop
    dec bc

jr_05d_7880:
    nop
    jp z, $3900

    nop
    ret


    nop

jr_05d_7887:
    ld h, a
    nop
    rst $38
    or c
    ld c, [hl]
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    sub a
    nop
    rst $08
    rlca
    jp hl


    rlca
    ei
    rlca
    ei
    rlca
    rst $38
    rrca
    di
    rrca
    rst $38
    ld h, b
    rrca
    jr nz, jr_05d_78b3

    ld l, b
    ld c, $78
    rrca
    rst $08
    rst $38
    nop
    ld b, c
    nop
    ld [bc], a
    nop
    ld e, $ff
    rlca
    rst $38

jr_05d_78b3:
    rrca
    rst $38
    rlca
    rst $18
    jr nz, jr_05d_7880

    cp b
    ret nz

    add hl, sp
    ld b, b
    add c
    nop
    ld l, c
    nop
    reti


    ldh [rTAC], a
    ld a, e
    add h
    ld a, b
    add a
    ld sp, hl
    ld [hl], $ff
    nop
    ld d, e
    xor h
    add a
    ld l, b
    ld b, $fd
    cpl
    ret nc

    ld c, $f1
    adc b
    ld [hl], a

jr_05d_78d8:
    ld h, h
    sbc e
    nop
    ld e, a
    sub b
    dec bc
    nop
    add l
    nop
    add hl, de
    add hl, bc
    inc [hl]
    dec d
    adc d
    ld d, $e9
    jr nz, jr_05d_7935

    jr nz, jr_05d_7887

    nop
    rst $00
    ld [bc], a
    cp c
    rra
    ld [bc], a
    rra
    sub e
    rra
    sub b
    rra
    jr nc, jr_05d_7918

    or b
    rra
    ld [hl], b
    rra
    ld [hl], b
    ccf
    ret nc

    ccf
    ld d, b
    ccf
    sbc a
    rst $38
    rst $38
    rst $18
    jr nz, jr_05d_78d8

    jr nc, @+$01

    nop
    rst $38
    ld [$807f], sp
    ccf
    ret z

    ld a, a
    add b
    cp a
    ld b, b
    cp a
    ld b, b

jr_05d_7918:
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $ff
    db $ec
    rst $38
    rst $38
    ld b, c
    xor [hl]
    nop
    ei
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    rrca
    rst $38
    rra
    ret nz

    ccf
    ldh [$1f], a
    pop af

jr_05d_7935:
    ld c, $c3
    inc a
    ret nc

    cpl
    add b
    ld a, a
    ret nz

    ccf
    nop
    rst $38
    rst $38
    rst $38
    ccf
    ret nz

    cp $01
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    db $10
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, [$2dfe]
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    stop
    nop
    nop
    nop
    nop
    cp d
    ld c, e
    rst $38
    ld [c], a
    inc bc
    ld sp, hl
    nop
    cp $00
    ld hl, sp+$00
    rlca
    db $ec
    ld c, $f1
    ld b, $8f
    rlca
    xor $77
    adc h
    rst $38
    dec b
    rst $38
    add l
    rst $38
    rst $38
    add c
    rst $38
    rst $38
    nop
    dec bc
    nop
    add b
    sub h
    nop
    xor a
    nop
    sbc a
    nop
    cp a
    nop
    cp [hl]
    inc hl
    call c, $906f
    cp a
    ld b, b
    rrca
    ldh a, [$f0]
    rst $38
    rra
    rst $38
    ld h, e
    sbc h
    ld [hl], $c9
    rst $38
    jr @+$01

    or b
    rst $38
    sub b
    rst $38
    nop
    ldh a, [rIF]
    ld [$00f7], sp
    add [hl]
    inc bc
    call c, Call_000_2f00
    add d
    dec c
    ld [c], a
    dec e
    sbc a
    ld h, b
    ld c, a
    or b
    rst $38
    nop
    adc a
    ld [hl], b
    rst $18
    jr nz, @+$01

    nop
    ld a, l
    add d
    ccf
    ret nz

    ccf
    ret nz

    dec l
    jp nc, Jump_05d_403f

    cp h
    ld b, e
    add hl, sp
    add $13
    call nz, Call_000_3ac5
    ld bc, $001c
    jp hl


    ld b, b
    xor l
    ld h, [hl]
    sbc c
    ld b, [hl]
    cp c
    nop
    rst $38
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

jr_05d_79ff:
    nop
    nop
    nop
    nop
    or l
    ld [bc], a
    rst $38
    nop
    inc a
    ld b, h
    db $10
    jr nz, jr_05d_7a1c

    jr nz, jr_05d_7a1e

    nop
    db $10
    cp $01
    cp $01
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    cp e
    ld b, h

jr_05d_7a1c:
    ld a, e
    or h

jr_05d_7a1e:
    cp a
    ld [hl], b
    rst $38
    ld sp, $dfbf
    nop
    cp a
    nop
    ld a, a
    rst $38
    inc b
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
    ld a, a
    add b
    rra
    ldh [$7f], a
    add b
    ld b, $f9
    rst $38
    rst $38
    add sp, -$29
    rst $38
    nop
    rst $38
    add b
    db $fd
    add d
    ld a, [$fa85]
    add l
    db $fc
    add e
    inc bc
    add b
    ld bc, $0080
    add b
    nop
    add b
    nop
    ret nz

    nop
    rst $08
    jr jr_05d_7add

    adc a
    nop
    ret nz

    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $03
    nop
    ld [bc], a
    nop
    nop
    nop
    sbc $ff
    rst $38
    ld b, $ff
    add b
    nop
    nop
    jr nz, jr_05d_79ff

    ld bc, $0180
    add b
    nop
    or h
    ld bc, $000a
    nop
    inc b
    ld [$1020], sp
    add h
    ld c, $fe
    add a
    rst $38
    ld hl, sp+$00
    rst $38
    nop
    nop
    nop
    nop
    or $00
    cp $00
    ld d, [hl]
    nop
    inc c
    nop
    inc c
    nop
    inc c
    inc b
    inc b
    inc b
    rrca
    inc c
    rst $38
    rst $20
    rst $38
    jr c, jr_05d_7aae

jr_05d_7aae:
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add a
    cpl
    ld d, a
    rra
    pop hl

jr_05d_7abe:
    adc c
    db $76
    jp nz, $f93d

    ld [hl], $bf
    ld c, c
    ei
    inc b
    rst $38
    db $10
    rst $38
    nop
    cp $01
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
    rst $30
    ld [$00ff], sp
    rst $38

jr_05d_7add:
    nop
    rst $18
    jr nz, jr_05d_7abe

    ld [hl+], a
    rst $38
    nop
    cp $01
    rst $18
    jr nz, @+$34

    adc l
    cp [hl]
    ld b, c
    ld [hl], $09
    inc b
    ld a, d
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
    nop
    ld b, $06
    ld a, a
    or c
    rst $38
    ccf
    nop
    cp e
    nop
    nop
    nop
    nop
    nop
    ld d, b
    nop
    ld c, a
    or b
    adc e
    ld [hl], h
    ld d, c
    xor [hl]
    db $10
    rst $28
    ld c, b
    or a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    rst $38
    ld b, b
    rst $38
    rst $18
    inc b
    ld e, e
    nop
    rst $38
    db $f4
    dec bc
    ld hl, sp+$06
    add sp, $16
    ld [$ec1d], a
    inc de
    add sp, $1d
    add sp, $15
    add sp, $15
    ld hl, sp+$03
    ld hl, sp+$04
    ld hl, sp+$17
    rst $38
    ei
    cpl
    rst $08
    rst $38
    nop
    rrca
    nop
    ld [bc], a
    nop
    ld b, d
    nop
    ld bc, $8300
    nop
    ld [hl], a
    nop
    ld a, a
    nop
    cp a
    nop
    ccf
    nop
    ccf
    nop
    dec sp
    nop
    nop
    ld [de], a
    rst $38
    rst $38
    adc c
    nop
    nop
    db $fd
    jr nc, @-$2f

    and b
    ld e, a
    and b
    ld e, a
    ret nc

    cpl
    ld h, c
    sbc [hl]
    pop de
    ld l, $d1
    ld l, $2f
    nop
    inc de
    nop
    dec a
    add b
    nop
    db $e4
    ld a, a
    rst $38
    nop
    inc bc
    add c
    nop
    nop
    nop
    ld e, a
    and b
    ld [hl], l
    adc d
    push af
    ld a, [bc]
    rst $30
    ld [$02fd], sp
    cp $01
    rst $38
    ld bc, $03fd
    db $fd
    rst $38
    ld bc, $ff81
    nop
    nop
    nop
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
    nop
    ld a, b
    nop
    ld a, b
    nop
    db $fc
    db $10
    rst $38
    rst $38
    rst $38
    rrca
    ld a, a
    pop af
    ld b, $ff
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    db $fd
    ld [bc], a
    ei
    inc b
    inc hl
    call c, $2bc0
    ld h, b
    sbc a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$13
    cp $11
    inc hl
    ld e, h
    add d
    ld l, l
    ldh [$15], a
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    inc [hl]
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $30
    ld [$00fe], sp
    rst $38
    inc de
    rst $38
    nop
    rst $38
    ld b, $7f
    add d
    ld l, a
    sub e
    daa
    reti


    xor $11
    or a
    ld c, b
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
    jr jr_05d_7c23

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05d_7c33

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05d_7c43

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05d_7c53

    ld [hl-], a

jr_05d_7c23:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05d_7c63

    ld a, [hl-]

Call_05d_7c2b:
    dec sp
    inc a

Jump_05d_7c2d:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_05d_7c33:
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

jr_05d_7c43:
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

jr_05d_7c53:
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

jr_05d_7c63:
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
    jr jr_05d_7d23

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_05d_7d33

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_05d_7d43

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_05d_7d53

    ld [hl-], a

jr_05d_7d23:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_05d_7d63

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc b
    ld b, $04

jr_05d_7d33:
    ld b, $06
    nop
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b

jr_05d_7d43:
    ld b, $04
    nop
    dec b
    dec b
    inc b
    ld b, $06
    ld b, $04
    inc b
    nop
    inc b
    inc b
    inc b
    inc b

jr_05d_7d53:
    inc b
    inc b
    inc b
    dec b
    dec b
    dec b
    inc b
    ld b, $06
    inc b
    inc b
    nop
    nop
    nop
    inc b
    inc b

jr_05d_7d63:
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $04
    ld b, $04
    inc b
    inc b
    nop
    nop
    nop
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
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
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld b, $04
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
    nop
    nop
    nop
    ld bc, $0106
    ld bc, $0404
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
    ld bc, $0101
    ld b, $06
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
    ld bc, $0101
    ld b, $06
    inc b
    ld b, $04
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0404
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
    ld b, $01
    ld b, $01
    ld b, $04
    inc b
    ld b, $04
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
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

Call_05d_7e00:
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0406
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld b, $04
    ld b, $06
    ld b, $06
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
    ld [$0808], sp
    ld [$0c0c], sp
    inc c
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    inc c
    inc c
    inc c
    ld [$0c08], sp
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    inc c
    ld [$0c0c], sp
    inc c
    inc c
    inc c
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0c08], sp
    inc c
    inc c
    rst $38
    ret nz

    nop
    rst $38
    inc a
    jp $956a


    ld a, e
    add h
    ld a, l
    add d
    cp l
    ld b, d
    cp [hl]
    pop bc
    ld b, d
    add b
    inc d
    add b
    ld b, l
    ld b, b
    inc bc
    ld b, b
    call nc, $f0df
    jp Jump_000_00ff


    cp $00
    jp nc, Jump_05d_7c2d

    add e
    sub $29
    jp hl


    ld d, $b9
    ld b, [hl]
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $08
    jr nc, jr_05d_7ee1

    inc b
    nop
    ld d, $fa
    rst $38
    ld bc, $f73c
    nop
    rst $30
    nop
    rst $30
    nop
    di
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    and e
    inc b
    dec b
    inc c
    ld b, d
    db $e4
    rlca
    jr nz, jr_05d_7ec1

jr_05d_7ec1:
    nop
    xor a
    xor a
    db $f4
    db $f4
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    nop
    rla
    nop
    rrca
    cp $fe
    nop
    nop
    ld a, a
    add b
    inc c
    di
    ld [hl+], a
    db $dd
    or h
    ld c, e
    ld h, b

jr_05d_7ee1:
    sbc a
    call nz, Call_000_003b
    rst $38
    nop
    ld l, e
    nop
    ld [$ffff], sp
    add b
    adc e
    ld [$7f77], sp
    nop
    rra
    add b
    dec bc
    ret nz

    inc bc
    ret nz

    ld a, [bc]
    ldh [$0d], a
    ldh [$2f], a
    ldh [$e0], a
    ldh a, [rDMA]
    rst $28
    ld bc, $8080
    ld hl, sp+$20
    ldh a, [rNR41]
    ld hl, sp+$01
    ldh a, [$80]
    ld hl, sp-$20
    db $fc
    ldh a, [rIE]
    rst $38
    rst $38

jr_05d_7f14:
    pop hl
    rst $38
    rst $38
    nop
    db $fc
    ld bc, $03fc
    db $f4
    inc bc
    ld [hl], b
    ld bc, HeaderTitle
    ld [hl], b
    ld bc, $01e5
    ld bc, $4fe3
    nop
    ld h, h
    nop
    ld [bc], a
    add b
    add c
    add b
    add e
    add b
    add b
    add b
    add b
    ret nz

    rla
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, h
    ld bc, $11ef
    di
    adc [hl]
    rst $38
    ld [hl], b
    ret nz

    ccf
    ld a, h
    add e
    cp h
    ld b, e
    cp b
    ld b, a
    jr nc, jr_05d_7f14

    ld [hl], b
    adc [hl]
    nop
    ld a, [hl]
    nop
    cp $08
    push af
    inc b
    ei
    ld a, [bc]
    sub l
    ld bc, $02fe
    db $dd
    dec de
    and h
    rrca
    add b
    rla
    xor b
    rlca
    ld e, b
    rrca
    ld [hl], b
    rrca
    ldh [$0e], a
    ret nc

    sbc b
    ld h, c
    db $fc
    inc bc
    ld hl, $eb9e
    inc d
    ld hl, sp+$07
    ld hl, sp-$79
    ldh [rNR34], a
    ldh [rNR11], a
    ret nz

    ld l, $68
    sub a
    ret


    ld [hl], $08
    push af
    ld e, [hl]
    cp l
    rst $38
    rst $38
    rst $38
    ldh a, [rP1]
    nop
    nop
    rst $30
    rra
    ldh [$1f], a
    ldh [$9f], a
    ld l, b
    ld c, a
    cp b
    adc a
    ld [hl], b
    push bc

Jump_05d_7f9b:
    ld a, $c6
    add hl, sp
    sub $29
    ld bc, $0004
    and [hl]
    ld h, b
    rst $38
    cp a
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    cp a
    nop
    ld hl, sp+$00
    cp c
    nop
    xor e
    nop
    ld b, a
    nop
    push af
    rst $38
    and b
    inc c
    di
    inc bc
    inc bc
    rst $30
    rst $30
    ld e, d
    ld e, d
    dec de
    dec de
    xor c
    xor c
    ld d, [hl]
    ld d, [hl]
    pop de
    pop de
    jr z, jr_05d_7ff8

    or e
    ld c, h
    add b
    ld a, a
    ld a, a
    ld a, a
    ld b, h
    ld a, e
    ret c

    daa
    ld b, b
    cp a
    and b
    ld e, a
    add b
    ccf
    ld [bc], a
    cp l
    sub b
    ld c, a
    ld [bc], a
    db $dd
    ld b, l
    sbc d
    nop
    ld b, l
    rst $28
    rst $38
    db $10
    rst $28
    ld c, [hl]
    or c
    nop
    db $ed
    nop
    db $f4
    nop
    ld a, [$ff00]

jr_05d_7ff8:
    nop
    rst $30
    add b
    ld [hl], h
    nop
    cp e
    rst $38
    ld b, b
