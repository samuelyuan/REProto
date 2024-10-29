SECTION "ROM Bank $051", ROMX[$4000], BANK[$51]

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    cp $fe
    cp $fe
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ld b, b
    ldh [rNR41], a
    sbc b
    ld [$041c], sp
    ld d, $02
    ld sp, hl
    ld sp, hl
    db $fc
    db $fc
    cp $ff
    add sp, -$02
    cp $ff
    ret nz

    ret nz

    add sp, -$18
    ldh [$e0], a
    rrca
    ld bc, $0117
    ld e, a
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    inc bc
    inc bc
    inc bc
    inc bc
    ld b, $06
    inc c
    inc c
    inc c
    inc c
    jr jr_051_4074

    jr nc, jr_051_408e

    ld h, b
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
    ld [bc], a
    ld [bc], a

jr_051_4074:
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec d
    dec d
    ld d, l
    ld d, l
    ld l, $2e
    ld l, l
    ld l, l
    ld e, l
    ld e, l
    or l
    or h
    and a
    and b
    db $d3
    ret nc

    cp $e9
    rst $38
    ldh a, [rIE]
    ld h, b

jr_051_408e:
    rst $38
    add b
    db $fd
    nop
    ei
    nop
    cp $00
    call c, $c000
    nop
    add b
    nop
    nop
    nop
    jr jr_051_40b8

    and l
    dec a
    ld b, e
    ld a, a
    ld b, c
    ld a, a
    ret nz

    ld a, [hl]
    ld h, d
    ld a, [hl]
    cp [hl]
    ld a, $40
    nop
    push hl
    nop
    dec b
    rst $38
    ld c, a
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_051_40b8:
    rlca
    ld hl, sp-$73
    ld [hl], b
    nop
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
    ld b, c
    nop
    ld b, a
    nop
    jp $f020


    nop
    ldh [rP1], a
    pop hl
    nop
    ei
    nop
    rst $38
    nop
    ld [bc], a
    ld bc, $0003
    nop
    nop
    nop
    nop
    ld bc, $0500
    ld [bc], a
    dec bc
    inc b
    dec a
    nop
    or l
    nop
    nop
    nop
    nop
    nop
    add b
    nop
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
    rst $38
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
    cp a
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc e
    rst $18
    ld de, $0fff
    ld a, a
    rrca
    rrca
    dec d
    dec d
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
    ld b, b
    ld b, b
    jr nz, @+$22

    db $10
    db $10
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

Call_051_413c:
    dec b
    dec b
    inc bc
    ld [bc], a
    ld bc, $aa01
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, h
    ld a, a

jr_051_414b:
    ld d, l
    cp a
    xor b
    db $fd
    ld b, d
    ret z

    nop
    ld h, b
    nop
    add c
    ld bc, $0787
    inc c
    rrca
    jr jr_051_417b

    db $10
    rra
    db $10
    rra
    sub b
    rra
    inc c
    rrca
    inc bc
    inc bc
    nop
    nop
    xor [hl]
    nop
    ld d, l
    nop
    cpl
    nop
    ld c, $00
    ld a, a
    add b
    scf
    ret z

    inc hl
    call c, $8679
    dec e
    ld [c], a
    sbc a

jr_051_417b:
    ld h, b
    rst $38
    nop
    rst $38
    ld d, b
    or b
    rst $38
    ld hl, $01fe
    cp $49
    or [hl]
    ld d, a
    xor b
    inc de
    inc l
    nop
    ccf
    ld d, l
    ccf
    ld a, [bc]
    ccf
    ld c, c
    ld a, $52
    dec l
    di
    inc c
    rst $20
    jr jr_051_414b

    ld b, c
    inc bc
    ld bc, $0110
    ld [hl], e
    nop
    add [hl]

jr_051_41a3:
    ld b, c
    ld a, [hl]
    add c
    rst $38
    nop
    rst $18
    jr nz, jr_051_41a3

    rlca
    cp $01
    ld a, a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $4e4e
    ld a, c
    ld a, c
    cp a
    cp a
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    rst $38
    ei
    ei
    ldh a, [$f0]
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
    cp l
    rst $38
    and d
    rst $38
    db $f4
    rst $38
    push de
    push de
    nop
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
    ld d, b
    xor b
    xor b
    xor b
    xor b
    xor b
    xor b
    ld d, b
    ld d, b
    ld d, c
    ld d, c
    ld d, l
    ld d, l
    ld l, d
    ld a, [hl+]
    xor d
    xor d
    xor e

jr_051_41f9:
    and c
    xor c
    xor c
    ld d, l
    ld d, h
    rst $38
    xor e
    xor a
    dec c
    xor d
    xor d
    ld d, l

jr_051_4205:
    ld d, l
    xor d
    xor d
    ei
    xor d
    rst $28
    ld b, a
    rst $38
    dec l
    ld a, l
    adc b

jr_051_4210:
    ld e, h
    nop
    dec l

jr_051_4213:
    nop
    ld [de], a
    nop

jr_051_4216:
    jp nz, $68c0

jr_051_4219:
    ld hl, sp+$04
    db $fc
    jr jr_051_4216

    jr nc, jr_051_4210

    ld a, b
    ld hl, sp-$20

jr_051_4223:
    ldh [$e0], a
    ldh [$2a], a
    nop
    jp c, $be00

    nop
    cp $00
    sbc [hl]
    nop
    add b
    ld a, a
    db $fc
    inc bc
    ccf
    ret nz

    cp a
    ld b, b
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    cp a
    nop
    jr jr_051_4223

    jr nz, jr_051_4205

    ld a, [hl-]
    rst $00
    or b
    ld c, a
    jr nc, jr_051_4219

    jr c, jr_051_4213

    swap h
    ld b, $f8
    and c
    ld e, $d8
    rlca
    reti


    ld b, $90
    ld c, a
    jr nz, jr_051_41f9

    add d
    ld a, l
    ld sp, $43ce
    cp h
    inc bc
    db $fc
    ld b, l
    cp b
    ccf
    ret nz

    cp [hl]
    ld b, b
    cp [hl]
    ld b, b
    ld [hl], b
    add b
    ldh a, [rP1]
    ldh a, [rP1]
    or $01
    ld [hl], a
    ld [$08f5], sp
    dec e
    nop
    ld sp, $4200
    nop
    add $00
    ldh [rP1], a
    rst $18
    rst $18
    rra
    rra
    rra
    rra
    dec de
    dec de
    ld a, c
    ld a, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    cp $19
    ld sp, hl
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
    nop
    jr nz, jr_051_42ce

    ld b, h
    ld b, h
    ld l, b
    ld l, b
    ld a, h
    ld a, h
    cp b
    cp b
    or b
    or b
    ld a, b
    ld a, b
    ld [hl], b
    ld [hl], b
    add sp, -$18
    ret c

    ret c

    ld d, l
    ld d, l
    rst $38
    rst $38
    ld a, a
    ld a, a
    or a
    or a
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    or a

jr_051_42ce:
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    rst $38
    rst $38
    rst $38

jr_051_42db:
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
    rrca
    ldh a, [$7f]
    add b
    db $fd
    nop

jr_051_42f0:
    ld a, e
    add b
    ld a, a
    add b
    ld l, a
    sub b
    push hl
    jr jr_051_42f0

    ld [$1fe0], sp
    ret nz

    nop
    rst $18
    nop

Jump_051_4300:
    inc bc
    db $fc
    jr z, jr_051_42db

    ld b, $f9
    ld c, a
    or b
    ld [de], a
    db $ed
    add l
    ld e, d
    jp nc, $0e0d

    ld bc, $142b
    add a
    ld [hl], b
    ld h, [hl]
    add c
    ld e, a
    and b
    cp [hl]
    ld b, c
    ld a, $c0
    db $ed
    nop
    dec l
    ret nz

    db $fd
    nop
    rst $38
    nop
    cp $01
    sbc a
    nop
    rra
    nop
    add hl, bc
    nop
    dec hl
    nop
    inc [hl]
    ld b, b
    inc l
    ret nc

    dec d
    jp nz, Jump_000_0007

    dec e
    nop
    sbc [hl]
    ld bc, $009f
    ccf
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
    dec h
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    db $10
    rra
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
    jr nz, jr_051_438c

    nop
    nop
    nop
    nop
    ld bc, $ff01
    rst $28
    db $fc
    db $fc
    db $fc
    cp h
    ld hl, sp-$18
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $fe
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, e
    ld [bc], a
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38

jr_051_438c:
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    ld bc, $ff00
    inc b
    rst $38
    ld [bc], a
    rst $38
    rst $18
    ccf
    and a
    daa
    sub h
    inc d
    sbc $1e
    jr nz, @+$01

    inc b
    db $fc
    sbc [hl]
    add b
    halt
    ld a, c
    nop
    ei
    ld b, c
    sbc e
    ld bc, $010d
    ld b, $02
    inc de
    ld [de], a
    rst $38
    ld bc, $00b7
    rst $28
    inc b
    rst $38
    nop
    ldh a, [rP1]
    pop hl
    nop
    jp $8f00


    nop
    call c, $5c00
    nop
    sbc a
    ld h, b
    rra
    ldh [$5f], a
    and b
    xor e
    ld d, h
    rst $38
    nop
    db $fd
    nop
    ld sp, hl
    nop
    ld sp, hl
    inc b
    inc d
    add sp, $40
    or b
    ld h, e
    nop
    db $e4
    inc bc
    push de
    dec hl
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
    cp $ff
    db $fc
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    ld hl, sp+$00
    db $fc
    nop
    nop
    nop
    ld [$2600], sp
    nop
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
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    ld bc, $0801
    ld [$9d9d], sp
    rst $38
    rst $38
    ccf
    ccf
    rlca
    rlca
    cpl
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rla
    rla
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    add b
    nop
    nop
    nop
    jr nz, jr_051_445f

jr_051_445f:
    jr nz, jr_051_4461

jr_051_4461:
    jr nz, jr_051_4463

jr_051_4463:
    ld h, b
    nop
    ld h, b
    nop
    ld h, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$a8ff], sp
    xor b
    add c
    add c
    rla
    rla
    dec [hl]
    scf
    add hl, bc
    rst $38
    jp hl


    ld bc, $0080
    add b
    add b
    ld h, h
    nop
    db $eb
    ld b, b
    db $ed
    ret nz

jr_051_4486:
    db $fd
    ld b, b

jr_051_4488:
    db $eb
    add b
    dec sp
    nop
    rra
    nop
    dec a
    db $10
    ld c, [hl]
    or c
    add a
    ld [hl], b
    rst $30
    nop
    ld a, l
    add d
    ld a, [$f104]
    ld c, $be
    ld b, c
    rst $28
    ld [de], a
    rst $28
    db $10
    jp c, $e725

    jr jr_051_4486

    jr nz, jr_051_4488

    nop
    call nc, Call_000_2d0b
    jp nc, Jump_000_02e1

    call z, $9a03
    rlca
    rst $10
    cpl
    ld a, [de]
    push af
    ld e, a
    ldh a, [$df]
    jr nz, jr_051_452c

    sub b
    rst $38
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ret nz

    ret nz

    ret nz

    ret nz

    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    ldh [$e0], a
    ret nz

    ldh [$e0], a
    ldh [$b0], a
    ldh a, [rNR23]
    sbc c
    nop
    adc h
    nop
    ld b, b
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
    ld c, c
    nop
    sub d
    nop
    inc h
    nop
    add d
    nop
    ld c, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_051_452c:
    inc d
    inc d
    ld a, l
    ld a, l
    db $fd
    db $fd
    rst $38
    rst $38
    ld a, a
    ld a, a
    dec [hl]
    dec [hl]
    ccf
    ccf
    rra
    rra
    xor a
    xor a
    ld l, a
    ld l, a
    rrca
    rrca
    rst $18
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    rrca
    cp $07
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rra
    ld bc, $083f
    ld a, a
    nop
    cp a
    nop
    ld a, a
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
    ld l, a
    ld l, a
    di
    di
    ei
    ei
    ld e, a
    rst $38
    rst $30
    rst $30
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    ret nz

    nop
    ld h, d
    ld [bc], a
    ldh a, [rP1]
    nop
    nop
    ld a, l
    dec e
    or h
    inc d
    and $00
    ld h, h
    sbc e
    add b
    ld a, a
    rst $30
    dec sp
    ld e, d
    ccf
    xor d
    ld a, l
    ld d, $f9
    db $fc
    ld [hl], e
    ld a, [$fd05]
    ld [bc], a
    cp $07
    ld e, l
    and d
    cp a
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, @+$01

    jr nc, jr_051_4625

    ld [hl], h
    db $e4
    db $e4
    jr jr_051_45ce

    call nc, Call_000_2000
    nop
    add b
    add b
    ld a, [bc]
    ld a, [bc]
    inc bc
    inc bc
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

jr_051_45ce:
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    ld [hl+], a
    nop
    stop
    ld c, d
    nop
    jr nz, jr_051_45f1

jr_051_45f1:
    adc e
    nop
    add b
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

Jump_051_4600:
    nop
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
    sub b
    sub b
    ld l, b
    ld l, b
    sub b
    sub b
    ld c, b
    ld c, b
    rst $10
    rst $10
    ccf
    ccf
    rst $38
    rst $38
    rst $28
    rst $28
    db $fc
    db $fc
    ei
    ei
    nop
    rst $38
    ld b, b
    and $f9

jr_051_4625:
    ld sp, hl
    ld hl, sp-$03
    db $fc
    rst $38
    cp $be
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    cp $ff
    or [hl]
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    rst $18
    rst $18
    rst $38
    rst $38
    db $fc
    cp $fe
    cp $fc
    db $fc
    db $fc
    db $fc
    ldh a, [$f0]
    add $c6
    and e
    and e
    dec bc
    dec bc
    rlca
    rlca
    rst $38
    dec e
    rst $38
    ld a, [$08ff]
    pop af
    adc [hl]
    db $fd
    ld [bc], a
    pop hl
    add b
    add c
    ret nz

    ld b, b
    add b
    ld e, l
    and b
    ld hl, $ffff
    ei
    dec a
    di
    ld sp, hl
    ld [hl], a
    ld a, [c]
    dec c
    adc a
    ld [hl], b
    sbc e
    ld h, h
    ld de, $0f11
    rrca
    ld [bc], a
    ld [bc], a
    inc sp
    inc sp
    rlca
    rlca
    ld l, $2e
    inc de
    inc de
    ld d, [hl]
    ld d, [hl]
    rst $18
    rst $18
    push af
    db $f4
    nop
    nop
    ld [de], a
    ld [de], a
    nop
    nop
    nop
    nop
    jr nz, jr_051_46be

    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    pop hl
    pop hl
    ld b, a
    ld b, a
    inc bc
    inc bc
    inc b
    inc b
    ld b, $06
    rlca
    rlca
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

jr_051_46be:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    nop
    nop
    ld bc, $0a00
    nop
    ld a, [bc]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    ld c, b
    nop
    sub d
    nop
    inc h
    nop
    adc c
    nop
    ld [hl+], a
    nop
    inc d
    nop
    ld a, [bc]
    nop
    ld b, b
    nop
    stop
    jr nz, jr_051_46ed

jr_051_46ed:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    xor b
    ld bc, $4001
    ld b, b
    ld b, b
    ld b, b
    adc c
    adc c
    rst $38
    rst $38
    rst $18
    rst $18
    ld a, a
    ld a, a
    rst $30
    rst $30
    ei
    ei
    nop
    rst $38
    nop
    db $eb
    ld [hl-], a
    ld [hl-], a
    nop
    ld d, l
    nop
    or [hl]
    nop
    db $db
    inc b
    inc b
    rst $38
    rst $38
    db $db
    db $db
    adc l
    adc l
    adc a
    adc a
    inc bc
    inc hl
    nop
    ld a, [$6f00]
    ld b, b
    ld l, h
    nop
    xor h
    nop
    call c, $f703
    nop
    ld [$f202], a
    inc bc
    di
    inc bc
    di
    inc bc
    di
    nop
    ld hl, sp+$00
    db $fc
    nop
    ld sp, hl
    ld [$00fe], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    rst $38
    ld [hl], a
    rst $38
    rlca
    rst $38
    rst $18
    or a
    db $dd
    and a
    ld e, e
    di
    rrca
    or c
    rrca
    ld l, a
    rra
    ld e, $1e
    cp $ee
    rst $28
    rst $08
    rst $28
    rst $28
    sbc e
    dec de
    ld l, a
    rrca
    dec sp
    dec de
    dec sp
    dec sp
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    push af
    push af
    rst $38
    rst $38
    di
    di
    rst $28
    xor $fc
    db $f4
    db $fc
    and b
    ret c

    ret nz

    inc d
    nop
    ld d, c
    ld d, b
    stop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld a, h
    ld a, h
    cp h
    cp h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec h
    dec h
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    and b
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
    ld bc, $0001
    db $76
    ld bc, $00ff
    db $fd
    ld bc, $0047
    ld l, l
    nop
    dec de
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    ld b, c
    nop
    sub b
    nop
    inc h
    nop
    adc b
    nop
    jr nz, jr_051_47d1

jr_051_47d1:
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
    add hl, hl
    add hl, hl
    pop de
    pop de
    dec a
    dec a
    rst $28
    rst $28
    ld a, [hl]
    ld a, [hl]
    rst $28
    rst $28
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    rst $38
    nop
    rst $38
    nop
    or h
    db $ed
    db $ed
    nop
    ld b, d
    nop
    call nc, $9900
    dec e
    dec e
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld [hl], $36
    ld a, $3e
    ld e, $1e
    ld b, $e6
    ld bc, $0155
    ld bc, $e707
    rlca
    sub a
    inc hl
    and e
    rlca
    rst $10
    rrca
    rst $28
    ld c, a
    rst $18
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld c, e
    rlc b
    ld [hl], b
    nop
    xor b
    ld bc, $20b7
    cp $0a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    cp $fe
    push hl
    push hl
    adc a
    adc a
    sub a
    sub a
    ld c, a
    ld c, a
    ld e, a
    ld e, a
    db $fc
    db $fc
    ld d, c
    ld d, b
    ld h, a
    ld h, [hl]
    rst $10
    rst $10
    ld l, $2e
    ld a, $1e
    rst $18
    ldh [$d9], a
    ld h, [hl]
    ld a, [c]
    dec c
    cp $e1
    jp z, $a9b1

    db $d3
    adc h
    di
    inc de
    db $fc
    ret c

    jr jr_051_4893

    jr nz, jr_051_48d7

    ld h, d
    ld b, $06
    sub $46
    rla
    rla
    rla
    rla
    inc bc
    inc bc
    ld a, a
    ld a, a
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
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca

jr_051_4893:
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
    rrca
    rrca
    rlca
    rlca
    dec bc
    dec bc
    rrca
    rrca
    dec bc
    dec bc
    rra
    rra
    rrca
    rrca
    inc de
    inc de
    ld b, c
    ld b, c
    ld [$2208], sp
    ld [hl+], a
    ld l, d
    ld l, d
    ld a, [hl]
    ld a, [hl]
    ld d, d
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
    ld e, a
    db $10
    rra
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_051_48d7:
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld [bc], a
    ld [bc], a
    adc a
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
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    nop
    rst $38
    rst $38
    nop
    nop
    db $10
    or h
    nop
    ld de, $bbbb
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, b
    ld h, b
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    db $ed
    db $ed
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    rlca
    nop
    rra
    nop
    ld e, a
    nop
    rra
    nop
    rra
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    ld a, a
    ld a, e
    rst $18
    db $db
    sbc h
    rst $38
    inc c
    rst $38
    inc c
    rst $30
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    db $fc
    db $fc
    ld e, a
    ld e, a
    rla
    rla
    ld e, a
    ld c, $bd
    ld sp, $65ff
    ccf
    ld sp, $003f
    ld [hl], e
    adc h
    ld a, a
    add b
    ld [hl-], a
    push bc
    sub [hl]
    ld a, a
    ld a, h
    rst $18
    dec a
    jp c, $05fa

    ld a, a
    ldh [rP1], a
    nop
    sub a
    sub a
    rst $10
    rst $10
    ei
    ei
    ld h, e
    ld h, e
    add l
    add l
    ld bc, $0701
    rlca
    rst $38
    rst $38
    ei
    ei
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
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ld e, $bf
    ld e, $ff
    db $10
    rst $38
    ld [$00ef], sp
    rst $38
    nop
    rst $30
    nop
    rst $00
    nop
    db $e4
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    ld [$0200], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_051_49de

    ld bc, $8401
    add h
    ret nz

    ret nz

    ld [c], a
    ld [c], a
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    nop
    rst $18
    nop
    rra
    ldh [$ef], a
    nop
    rrca
    nop
    rla
    nop
    add b
    add hl, hl
    add hl, hl

jr_051_49de:
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    ld a, [$f3fa]
    di
    ldh [$f8], a
    ld hl, sp-$03
    add sp, -$16
    db $fc
    rst $38
    cp $fe
    cp $fe
    rst $38
    rst $38
    cp $7e
    cp $7e
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    call c, Call_000_00ff
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    rst $28
    db $10
    ei
    nop
    rst $38
    nop
    and b
    rst $38
    rst $08
    ld [hl], a
    ld a, [bc]
    rst $38
    xor c
    ld e, a
    and h
    ld e, e
    ld de, $baee
    ld l, h
    ld [c], a
    ld a, h
    ld d, h
    db $eb

jr_051_4a34:
    sub a
    add sp, $7f
    add b
    rst $18
    jr nz, jr_051_4a34

    ld b, $d2
    dec a
    ei
    inc h
    ld b, h
    ld b, h
    ret nc

    ret nc

    add sp, -$18

jr_051_4a46:
    ret c

    ret c

    and c
    and c
    ret nz

    ret nz

    ld b, b
    ld b, b
    ld c, d
    ld c, d
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    ret nz

    rst $30
    nop
    db $fd
    nop
    ldh a, [rP1]
    add sp, $00
    ldh a, [rP1]
    add b
    nop
    ret nz

    nop
    ld b, b
    nop
    nop
    nop
    rlca
    nop
    dec bc
    nop
    ld b, h
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_051_4a79:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld d, b
    ld d, b
    ld hl, $0021
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld b, h
    ld b, h
    ld b, h
    ld b, h
    adc d
    adc d
    jr z, jr_051_4a46

    ld [hl], c
    pop af
    nop
    rst $38
    nop
    ld a, [c]
    ld a, $fe
    nop
    rlc b
    db $ed
    nop
    ld d, a
    nop
    ld b, $ff
    rst $38
    ld hl, sp-$08
    ret


    ret


    ld hl, sp-$08
    ld hl, sp-$04
    ldh a, [$f3]
    ld d, b
    ld d, e
    ld [$04ab], sp
    ld [hl], a
    nop
    xor a
    nop
    ld e, a
    nop
    rst $38
    nop
    rra
    jr nz, jr_051_4a79

    nop
    rst $10
    add b
    rst $18
    or b
    cp a
    rra
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    xor $ee
    rst $30
    jp $cfff


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    res 0, c
    add c
    ld e, a
    inc d
    cp a
    ld a, $08
    nop
    sbc d
    nop
    rra
    nop
    ld d, $00
    rrca
    nop
    ld b, l
    nop
    add b
    nop
    rst $28
    add b
    reti


    nop
    pop hl
    nop
    adc b
    nop
    inc de
    nop
    cp h
    inc bc
    push af
    ld [bc], a
    ld a, [hl]
    nop
    rst $28
    nop
    or $00
    ld h, e
    add b
    cp a
    ld b, b
    rst $38
    nop
    nop
    nop
    dec b
    nop
    nop
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    jr nz, jr_051_4b40

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ld a, a
    ccf
    rst $38
    sbc a
    rst $38
    rlca
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    ld [bc], a
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38

jr_051_4b40:
    ld a, $3f
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    rrca
    rrca
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
    jr nz, jr_051_4b7c

    nop
    nop
    ld de, $0011
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ld b, b
    ld c, b
    ld c, b
    ld h, b
    ld h, b
    ld d, b
    ld d, b
    nop
    rst $38
    nop
    or a
    and b
    and b
    nop
    xor a
    nop
    cp a
    nop
    rst $38

jr_051_4b7c:
    nop

jr_051_4b7d:
    sbc a
    ldh [$e0], a
    nop
    inc bc
    sub b
    sub h
    ret nz

    adc $c0
    rst $08
    nop
    cpl
    nop
    adc a
    nop
    sbc a
    nop
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ld [hl], b
    ld [hl], b
    ldh [$e0], a
    push bc
    push bc
    db $e3
    ld [c], a
    jp $a3c0


    and b
    rst $38
    nop
    rst $38
    add b
    db $fc
    ld h, e
    ld a, [$f4c5]
    set 5, h
    di
    ld a, [c]
    db $ed
    db $e4
    ret c

    db $ec
    ret nc

    ld l, b
    sub b
    cp [hl]
    ld b, b
    jp nz, Jump_000_0300

    add b
    daa
    add b
    push hl
    ld a, [bc]
    ei
    inc b
    rst $10
    jr z, jr_051_4b7d

    ld b, b
    cp h
    ld b, b
    ld l, $c0
    jp $c404


    inc bc
    adc l
    ld [bc], a
    add hl, bc
    ld b, $87
    ld [$009e], sp
    ld c, $00
    ld a, $00
    rst $38
    nop
    cp h
    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    cp b
    cp b
    call c, $bcdc
    cp h
    sbc h
    sbc h
    sbc $de
    db $76
    db $76
    cp $fe
    rst $38
    rst $38
    rst $38

jr_051_4c0d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp e
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    nop
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
    ld hl, sp-$01
    inc e
    rra
    ccf
    ccf
    add b
    nop
    add b
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    xor l
    ld d, d
    rst $38
    nop
    rst $38
    nop
    jr nz, jr_051_4c42

jr_051_4c42:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a

jr_051_4c4a:
    ld [$0400], sp
    inc b
    adc a
    add a
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ret nz

    add b
    add b
    ld b, b
    ld b, b
    ld [de], a
    ld [de], a
    ld e, d
    ld e, d
    dec sp
    rst $38
    ld e, [hl]
    cp $fb
    ei
    ld a, [$c8fa]
    ret z

    add hl, de
    add hl, de

jr_051_4c6a:
    ld d, d
    db $10
    ld l, c
    add hl, bc
    ld a, d
    jr z, jr_051_4c4a

    ld h, $fd
    ld [bc], a
    ld h, [hl]
    sbc b
    rst $20
    sub b

jr_051_4c78:
    rlca
    ldh [$5a], a
    and l
    and b
    ld a, a
    add e
    ld a, h
    ld bc, $adfe
    ld d, d
    pop hl
    ld b, $e1
    ld e, $75
    adc d
    jr nc, jr_051_4c0d

    ld bc, $0500
    ld [bc], a
    nop
    inc bc
    dec b
    ld [bc], a
    inc b
    nop
    inc b
    nop
    nop
    nop
    add c
    nop
    or e
    nop
    add e
    nop
    add b
    nop
    inc bc
    nop
    inc bc
    nop
    ld d, a
    jr nz, jr_051_4c78

    jr nc, jr_051_4c6a

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
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    nop
    ld bc, $0201
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0109], sp
    ld bc, $010a
    ld bc, $0c0b
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $01
    ld bc, $0117
    dec bc
    dec bc
    jr jr_051_4cfd

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_051_4d0d

    ld bc, $0101
    ld [hl+], a
    inc hl
    inc h
    dec bc
    dec bc
    dec h
    ld h, $27
    jr z, jr_051_4d22

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_051_4cfd:
    ld bc, $2e01
    cpl
    jr nc, jr_051_4d34

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_051_4d44

    ld a, [hl-]
    dec sp

jr_051_4d0d:
    inc a
    ld bc, $0b01
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
    ld bc, $4b0b

jr_051_4d22:
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
    ld e, h
    ld e, l

jr_051_4d34:
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
    ld l, e
    ld l, h
    ld l, l

jr_051_4d44:
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
    jr jr_051_4d59

    add b

jr_051_4d59:
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
    ld bc, $8f01
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
    ld bc, $0101
    ld bc, $019b
    ld bc, $9c01
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    ld bc, $0101
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
    ld bc, $b101
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
    or b
    ld bc, $bc01
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ld bc, $cac9
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
    ld de, $120b
    inc de
    inc d
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    dec b
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    dec b
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0000
    nop
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld b, e
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
    ld [bc], a
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
    nop
    inc bc
    inc bc
    ld bc, $0303
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
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    ld bc, $0000
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
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [$0808], sp
    ld [$0a0b], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld [$0808], sp
    ld [$0808], sp
    ld [$0900], sp
    dec bc
    dec bc
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    scf
    nop
    nop
    sbc a
    nop
    ld a, c
    nop
    jr jr_051_4f77

jr_051_4f77:
    rrca
    nop
    inc bc
    nop
    ret nz

    nop
    ld e, h
    nop
    and h
    nop
    cp [hl]
    nop
    rst $38
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
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a

jr_051_4fa2:
    nop
    dec sp
    nop
    add hl, bc
    nop
    ld [hl], $00
    adc a
    nop
    ret z

    nop
    ld [hl], b
    nop
    jr jr_051_4fa2

    nop
    cp $00
    ld a, a
    nop
    ld a, [hl]
    ld bc, $00bf
    rst $38
    nop
    ld e, a
    nop
    ld d, d
    nop
    nop
    db $fc
    nop
    cp $00
    cp $00
    ld a, $00
    dec de
    nop
    dec bc
    nop
    dec b
    nop
    ld bc, $0000
    ret nz

    nop
    ldh [rP1], a
    db $fc
    nop
    cp $80
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $00
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
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
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
    nop
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
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rst $00
    nop
    ld l, l
    nop
    add hl, de
    nop
    nop
    inc c

jr_051_5042:
    nop
    rra
    nop
    jp hl


    nop
    ld a, [$f800]
    nop
    db $fc
    nop
    ld sp, hl
    nop
    ldh a, [rP1]
    db $fc
    nop
    ld a, [hl]

jr_051_5054:
    nop
    push de
    nop
    and $00
    di
    nop
    rst $38
    nop
    rst $00
    nop
    add c
    nop
    add c
    nop
    ld b, b
    nop
    stop
    ld [$0000], sp
    nop
    adc b
    nop
    ld d, h
    nop
    jr c, jr_051_5054

    nop
    db $f4
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    add b
    xor a
    ld d, b
    ld d, a
    xor b
    xor l
    ld d, b
    rst $08
    jr nc, jr_051_5042

    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    ld a, a
    nop
    sbc [hl]
    ld bc, $01ce
    jr @+$01

    add hl, bc
    cp $03
    db $fc
    rlca
    ld hl, sp+$0e
    ldh a, [$9c]
    ldh a, [$fd]
    ldh a, [$f9]
    ld hl, sp-$01
    rst $38
    ld a, a
    rst $38
    ccf
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
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
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
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $c1fe
    cp $e0
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or b
    nop
    db $ec
    nop
    inc [hl]
    nop
    ld a, [de]
    nop
    rst $00
    nop
    ei
    nop
    ld hl, sp+$00
    cp l
    ld [bc], a
    sbc $01
    ccf
    nop
    ccf
    nop
    rra
    nop
    adc [hl]
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    cp $00

jr_051_5113:
    ld hl, sp+$00
    ld a, [de]
    nop
    ld e, $00
    rla
    nop
    add hl, de
    nop
    db $f4
    nop
    jr c, jr_051_5113

    nop
    ld sp, hl
    nop
    ld a, [hl]
    nop
    sbc l
    nop
    pop hl
    nop
    cp $00
    rst $30
    ld [$29d6], sp
    inc de
    db $ec
    dec de
    db $e4
    rlca
    ld hl, sp+$6e
    sub b
    ld e, h
    and b
    cp c
    ld b, b
    ld [hl], e
    add b
    ld h, a
    add c
    rst $28
    inc bc
    rst $08
    rlca
    sbc a
    ld c, $3f
    inc c
    ld a, l
    ld a, [de]
    ei
    inc a
    db $fd
    ld a, d
    ld sp, hl
    cp $fc
    nop
    rst $08
    nop
    rst $00
    nop
    ei
    nop
    ld sp, hl
    nop
    cp $c0
    rst $38
    ldh a, [rIE]
    db $fc
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rlca
    rst $20
    rlca
    di
    inc bc
    di
    inc bc
    ld sp, hl
    ld bc, $01f9
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
    nop
    rst $38

jr_051_518b:
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
    ld bc, $0300
    add b
    rlca
    add b
    rrca
    ret nz

    rra
    jp nz, Jump_000_00ff

    call nz, $ec00
    nop
    xor $00
    db $ec
    nop
    ld [hl], b
    nop
    stop
    ld b, $00
    add l
    db $fd
    ld [bc], a
    ld a, $c1
    ld c, a
    or b
    and e
    ld e, h
    jp $f63c


    add hl, bc
    cp $01
    db $fd
    ld [bc], a
    ld a, h
    inc bc
    sbc a
    nop
    rst $28
    nop
    ld a, [c]
    ld bc, $00fb
    ld e, a
    jr nz, jr_051_518b

    ld bc, $03cc
    add a
    ld hl, sp+$0e
    ldh a, [$8c]
    ldh a, [$5d]
    ldh [$3b], a
    ret nz

    ld [hl], e
    add c
    rst $20
    inc bc
    rst $08
    rlca
    sbc a
    ld c, $bf
    ld c, $7f
    dec e
    ld a, a
    inc a
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    add e
    nop
    ld a, [hl]
    nop
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
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rra
    inc bc
    nop
    ret nz

    nop
    ldh [rP1], a
    jr nz, jr_051_5210

jr_051_5210:
    add c
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
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
    rst $28
    db $ec
    rst $28
    db $ec
    rst $30
    or $f7
    or $f7
    or $fb
    ei
    ei
    ei
    ei
    ei
    db $fd
    db $fd
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, $3e
    ld a, $3e
    cp [hl]
    ld a, $9f
    rra
    sbc a
    rra
    adc $0e
    call $e70d
    rlca
    rst $20
    rlca
    rst $20
    rlca
    di
    inc bc
    di
    inc bc
    ld sp, hl
    ld bc, $01f9
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    pop af
    ld bc, $03e3
    push bc
    dec b
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
    nop
    nop
    nop
    ld bc, $07f8
    push af
    ld a, [bc]
    db $e3
    inc e
    xor $11
    push bc
    ld a, [hl-]
    swap h
    call nc, $f729
    ld [$05ba], sp
    db $ed
    nop
    ld e, [hl]
    and b
    xor e
    ld d, h
    jp z, $e435

    dec de
    cp h
    ld b, e
    ld l, b
    sub a
    rst $28
    db $10
    db $dd
    jr nz, @-$43

    ld b, b
    ld [hl], a
    add c
    ld h, a
    add e
    rst $28
    ld b, $df
    ld c, $9e
    rrca
    inc a
    rra
    ld a, [hl]
    ccf
    rst $38
    ld a, a
    rst $20
    rst $38
    jp $e3ff


    sbc a
    jp hl


    sub a
    call nc, $112b
    xor [hl]
    nop
    ld [hl], c
    nop
    rst $18
    nop
    rst $38
    nop
    rst $10
    ld bc, $00fe
    ld a, a
    nop
    rra
    nop
    rra
    nop
    rrca
    nop
    jp $c001


    ld bc, $03e0
    ldh [rIF], a
    ldh a, [$0b]
    db $f4
    ld [$10f6], sp
    db $ec
    inc h
    ret c

    ld e, b
    and c
    ld [hl], d
    add c
    ldh [$03], a
    and b
    rlca
    ld [$1807], sp
    rlca
    db $10
    rrca
    xor b
    ld d, $ef
    db $10
    ld sp, hl
    ld b, $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ld h, b
    ld a, a
    ld h, b
    rst $38
    ldh [$fe], a
    ldh a, [$fc]
    ldh a, [$f8]
    ldh a, [$f9]
    ld sp, hl
    di
    di
    db $e3
    db $e3
    rst $00
    rst $00
    adc [hl]
    adc [hl]
    inc a
    inc a
    ld a, b
    ld a, b
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    add b

jr_051_533f:
    add b
    jp c, $f505

    ld a, [bc]
    rst $30
    ld [$35ca], sp
    call nc, $ae23
    ld d, c
    ld e, b
    add e
    ld d, d
    xor l
    sub b
    ld l, e
    jr nz, @-$67

    dec b
    ld a, [c]
    add d
    ld a, c
    add h
    ld [hl], e
    ld [$90f7], sp
    ld l, a
    jr nz, jr_051_533f

    ld h, b
    sbc a
    ld b, b
    cp [hl]
    add b
    ld a, h
    nop
    ld sp, hl
    ld [bc], a
    pop af
    ld [bc], a
    pop af
    ld [bc], a
    pop hl
    ld [bc], a
    pop bc
    ld a, [bc]
    sub c
    dec b
    jr @+$27

    jr jr_051_538f

    ld h, h
    inc b
    cp b
    inc b
    ld hl, sp+$40
    cp [hl]
    inc b
    ei
    ld h, b
    sbc a
    ldh a, [rIF]
    ld a, [$7205]

jr_051_5387:
    dec c
    ld [hl], h
    dec bc
    ld [hl+], a
    dec d
    cpl
    db $10
    inc b

jr_051_538f:
    dec de
    or $f9
    cp d
    ld a, l
    ld a, h
    cp [hl]
    call c, $d83c
    ld a, $70
    adc [hl]
    pop hl
    ld de, $23c1
    jp nz, $8527

    ld c, [hl]
    rrca
    adc h
    rra

jr_051_53a7:
    jr jr_051_53c0

    jr c, jr_051_53d2

    ld hl, sp+$79
    and $fe
    pop bc
    nop
    ld a, a
    nop
    ld a, a
    ld b, b
    cp a
    jr nc, jr_051_5387

    ld [$06f7], sp
    ld sp, hl
    ld bc, $00fe
    rst $38

jr_051_53c0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_051_53a7

    ret z

    scf
    xor h
    inc de
    ld e, a
    add b
    rst $08
    nop
    ld a, b
    nop

jr_051_53d2:
    ld a, $00
    rra
    nop
    rlca
    nop
    nop
    nop
    add c
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38

jr_051_53ea:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    pop af
    ld bc, $03e3
    add $06
    adc h
    inc c
    jr jr_051_541a

    jr nc, jr_051_5435

    ld h, b
    ld h, b
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    sub h
    ld c, e
    cp b
    rlca
    ldh a, [rIF]
    and b
    ld e, a
    and b
    ld e, a

jr_051_541a:
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    cp $01
    db $fd
    ld [bc], a
    ei
    inc b
    ei
    inc b
    or $08
    db $ed
    db $10
    db $dd
    jr nz, jr_051_53ea

    ld b, c
    ld [hl], a
    add e
    ld a, a
    add [hl]
    rst $38

jr_051_5435:
    inc c
    ei
    inc c
    ei
    inc e
    di
    inc a
    rst $30
    ld a, b
    rst $10
    ld hl, sp+$04
    inc hl
    ld b, $71
    ld b, $f1
    ld [bc], a
    pop de
    ld bc, $09f8
    ret nc

    ld de, $10e8
    db $ec
    add b
    ld a, h
    ld b, b
    cp h
    jp nz, $b03c

    ld c, [hl]
    adc h
    ld [hl], d
    ld b, c
    ld a, $45
    ld a, [hl-]
    dec bc
    inc [hl]
    ret z

    rst $30
    ld b, h

jr_051_5463:
    rst $38
    ld h, [hl]
    rst $38
    ld l, a
    rst $38
    ld [hl], a
    rst $38
    jp $8737


    ld b, a
    inc bc
    adc l
    rrca
    jr jr_051_548a

    jr @+$29

    jr c, jr_051_54b0

    ld h, [hl]
    ld a, [hl]
    pop bc
    cp a
    ret nz

    cp a
    ret nz

    adc $31
    ld l, h
    sub e
    ld [bc], a
    db $fd
    ld bc, $00fe
    ld a, a
    nop
    rst $38

jr_051_548a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    jr nc, jr_051_5463

    ld [$06f7], sp
    ld sp, hl
    ld bc, $07fa
    ld hl, sp+$07
    ld hl, sp-$3d
    inc a
    ld hl, $18de
    rst $20
    inc c
    di
    add e
    ld a, h
    ld bc, $00fe
    rst $38
    ld [c], a
    dec e
    or h
    dec bc

jr_051_54b0:
    db $fc
    inc bc
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    adc l
    nop
    ld c, e
    nop
    jp $e100


    nop
    rrca
    nop
    ld b, l
    nop
    ld de, $8800
    add b
    call z, $e3c0
    ldh [$fb], a
    ld hl, sp-$03
    db $fc
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
    db $10
    ld de, $2320
    ld b, b
    ld b, [hl]
    ret nz

    call z, $8080
    nop
    stop
    jr nc, jr_051_54ff

jr_051_54ff:
    nop
    ld a, a
    nop
    rst $28
    db $10
    rst $38
    nop
    ld e, c
    and [hl]
    and e
    ld e, h
    dec e
    ld h, d
    dec [hl]
    jp z, $d629

    reti


    ld h, $fb
    inc l
    db $76
    adc b
    db $ed
    db $10
    sbc l
    ld h, b
    db $db
    ld hl, $c3b7
    ld l, a
    add [hl]
    rst $18
    inc c
    rst $18
    ld [$12bf], sp
    ld a, [hl]
    add hl, sp
    rst $28
    ld [hl], d
    db $fd
    ld a, [c]
    rst $28
    or b
    rst $28
    or d
    ld de, $00c6
    rst $20
    ld bc, $08e6
    rst $20
    add hl, bc
    and $0c
    db $e3
    inc c
    db $e3
    inc b
    di
    ei
    inc c
    ei
    inc c
    cp $0d
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    ld b, $fc
    ld b, $54
    xor l
    ld [hl+], a
    db $d3
    ld bc, $83e3
    rst $20
    adc a
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    ld a, $ff
    ret nz

    nop
    ret nz

    nop
    pop bc
    nop
    inc bc

jr_051_5567:
    nop
    inc bc
    nop
    inc b
    inc bc
    ld b, $01
    rrca
    nop
    sub a
    ld [$5da2], sp
    sub d
    ld l, l
    ld [hl], c
    adc [hl]
    ret


    ld [hl], $a6
    add hl, de
    ld e, a
    add b
    cpl
    ret nz

    rst $08
    nop
    ldh [rP1], a
    ld [c], a
    nop
    ei
    nop
    ld a, a
    add b
    rla
    ldh [$1f], a
    ldh [rDIV], a
    ld hl, sp+$07
    ld hl, sp+$0b
    db $f4
    ld h, $d8
    ld a, $40
    ret c

    jr nz, jr_051_5567

jr_051_559b:
    jr nc, jr_051_559b

    nop
    ei
    inc b
    cpl
    ret nz

    add hl, de
    ldh [$ac], a
    ld d, b
    ld e, [hl]
    and b
    rst $28
    db $10
    ld a, a
    add b
    sbc a
    ld b, b
    scf
    add b
    nop
    inc b
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld b, b
    nop
    adc b
    nop
    ld b, $00
    ld bc, $c000
    nop
    ldh [rP1], a
    db $fd
    nop
    ld a, [hl]
    nop
    ld e, $00
    adc a
    nop
    and $79
    nop
    cp h
    add b
    sbc $c0
    rst $20
    ldh [$f3], a
    ldh a, [$f9]
    ld hl, sp-$02
    db $fc
    rst $38
    rst $38
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    ld c, $00
    inc e
    nop
    jr c, jr_051_55ed

jr_051_55ed:
    ld a, c
    nop
    push af
    ld c, d
    nop
    xor [hl]
    nop
    call c, $d800
    nop
    ld hl, sp+$00
    pop af
    nop
    ld a, [c]
    ld bc, $0364
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [rNR34], a
    ret nz

    inc a
    add b
    ld a, b
    add d
    ld [hl], b
    inc b
    ld a, [c]
    pop af
    rra
    ld h, e
    dec a
    db $eb
    ld [hl], l
    db $fd
    db $e3
    cp e
    push bc
    cp c
    rst $00
    or l
    res 7, h
    db $d3
    dec l
    ld [de], a
    cpl
    db $10
    xor e
    inc d
    dec l
    add b
    inc hl
    jr jr_051_565a

    sub b
    cpl
    sub b
    cp a
    nop
    sbc a
    nop
    sub [hl]
    add hl, bc
    inc d
    adc e
    push de
    ld a, [bc]
    ret


    ld b, $4b
    add h
    inc c
    ret nz

    inc c
    ret nz

    jr nc, jr_051_5649

    ld [hl], b
    rlca
    ldh [rIF], a
    ret nz

    rrca
    ret nz

jr_051_5649:
    rra
    nop
    ccf
    nop
    ld e, a
    nop
    ccf
    jr nc, jr_051_5652

jr_051_5652:
    ld b, h
    nop
    adc b
    nop
    jr jr_051_5658

jr_051_5658:
    jr nc, jr_051_565a

jr_051_565a:
    jr z, jr_051_566c

    and $18
    jp $cb3c


    inc [hl]
    sbc e
    ld h, h
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    db $dd
    nop

jr_051_566c:
    cp d
    ld b, b
    ld [hl], c
    add b
    ld hl, sp+$00
    ld a, l
    add b
    cpl
    ret nz

    ld d, a
    and b
    sub a
    ld l, b

jr_051_567a:
    adc e
    ld [hl], h
    call nz, $f03b
    rrca
    ld a, l
    ld [bc], a
    rst $38
    nop
    ld a, $00
    dec e
    nop
    rst $08
    nop
    db $e3
    nop
    pop af
    nop
    or $00
    nop
    push bc
    nop
    ld h, d
    nop
    add hl, sp
    nop
    sbc h
    nop
    rst $10
    nop
    ei
    nop
    ei
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    db $d3
    nop
    rst $18
    nop
    cpl
    nop
    inc de
    nop
    adc h
    nop
    ld [de], a
    nop
    add hl, bc
    nop
    add a
    nop
    and $00
    ld [hl], $00
    inc e
    nop
    ld b, $00
    inc bc
    nop
    add e
    nop
    ret nz

    nop
    ld [hl], b
    nop
    jr c, jr_051_56c9

jr_051_56c9:
    ld a, [hl]
    nop
    cp e
    nop
    db $fd
    nop
    xor $00
    ld a, [hl]
    nop
    ei
    nop
    ld e, a
    nop
    ccf
    nop
    sbc a
    nop
    rst $20
    nop
    ld [hl], e
    nop
    add hl, sp
    or a
    nop
    ei
    nop
    di
    nop
    and e
    nop
    ld c, e
    nop
    add [hl]
    ld bc, $0384
    ld [$5007], sp
    rrca
    jr nz, jr_051_5712

    jr nz, jr_051_5712

    ld b, c
    jr c, jr_051_567a

    ld [hl], d
    nop
    or $03
    db $e4
    inc bc
    call z, $841a
    add hl, sp
    inc b
    ld a, e
    inc b
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld [hl], d
    add h
    ld [hl], e
    add h
    adc d
    add d

jr_051_5712:
    adc d
    add d
    add d
    add d
    adc d
    add d
    adc d
    add d
    adc d
    add d
    jp z, $cac2

    ld b, d
    bit 0, d
    jp nc, $e042

    ld b, b
    jp nz, $cc41

    ld b, e
    ret z

    ld b, e
    ret nz

    ld b, a
    pop de
    ld c, [hl]
    jp $035c


    inc e
    rlca
    jr c, jr_051_5746

    ld [hl], b
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    nop
    ld a, a
    nop
    rra
    nop

jr_051_5745:
    rrca

jr_051_5746:
    nop
    rrca
    nop
    rrca
    nop
    ld a, a
    nop
    cp a
    nop
    cpl
    nop
    jp Jump_051_6400


    nop
    ld e, $00
    rrca
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, b
    nop
    ld de, $0800
    nop
    ld b, $00
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [$0400], sp
    nop
    add c
    nop
    ldh [rP1], a
    ld [hl], b
    nop
    ld a, h
    nop
    rla
    nop
    rrca
    nop
    add $00
    rst $20
    nop
    ei
    nop
    rst $38
    nop
    rst $20
    nop
    jp $c300


    nop
    pop bc
    nop
    add sp, $00
    pop af
    nop
    cp $00
    ei
    nop
    or a
    nop
    sbc $00
    rst $30
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    rst $00
    nop
    db $e3
    nop
    pop af
    nop
    jr jr_051_57a7

jr_051_57a7:
    inc c
    nop
    add a
    nop
    jp $e000


    nop
    ret nz

    nop
    ret nc

    nop
    ld hl, sp+$00
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
    ldh [rNR32], a
    ret nz

    jr c, jr_051_5745

    ld [hl], c

jr_051_57c6:
    nop
    di
    ld [bc], a
    push hl
    ld c, $c1
    ld c, $91
    ld e, $21
    ld e, $21
    ld e, $61
    ld d, [hl]
    ld hl, $2146
    ld c, [hl]
    ld hl, $22c5
    call nz, $c422
    ld [hl+], a
    ld [hl+], a
    ld [hl+], a
    ld a, [hl+]
    ld [hl+], a
    ld a, [hl+]
    ld [hl+], a
    ld a, [hl-]
    ld [hl+], a
    cp d
    ld [hl+], a
    ei
    ld [hl+], a
    ld [hl], c
    jr nz, jr_051_584f

    jr nz, jr_051_57ff

    ld bc, $03cc
    jr z, jr_051_5819

    jr nz, jr_051_581f

    ld sp, $032e
    inc e
    rst $00
    jr jr_051_57c6

jr_051_57ff:
    jr c, @-$6f

    ld [hl], b
    rra
    ld h, b
    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    ld bc, $00fd
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_051_5819:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30

jr_051_581f:
    nop
    nop
    rst $20
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
    cp $00
    rst $38
    nop
    ld a, [hl]
    nop
    dec sp
    nop
    ld l, e
    nop
    ld d, $00
    sbc a
    nop
    ret c

    nop
    jr c, jr_051_584b

jr_051_584b:
    dec c
    nop
    ld b, a
    nop

jr_051_584f:
    rlca
    nop
    add c
    nop
    pop af
    nop
    ld a, c
    nop
    rst $30
    nop
    rst $30

jr_051_585a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_051_5866:
    nop
    rst $38
    nop

jr_051_5869:
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    dec hl
    nop
    xor a
    nop
    pop de
    nop
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $18
    nop
    db $fd
    nop
    ld hl, sp+$00
    sbc $00
    daa
    nop
    dec de
    nop
    jp c, Jump_051_7600

    nop
    add hl, sp

jr_051_5890:
    nop
    inc e
    nop
    inc c
    nop
    rrca
    nop
    dec d
    nop
    sub h
    nop
    ld a, [$fe00]
    nop
    db $fd
    inc l
    ld d, c
    inc l
    sub c
    ld l, h
    sub c
    ld l, [hl]
    ld de, $11e8
    add sp, $11
    jp z, $c011

    ld sp, $31f9
    xor e
    ld hl, $20e9
    and l
    jr nz, jr_051_5866

    jr nz, jr_051_5869

    ld hl, $21ac
    xor b
    inc hl
    jr c, jr_051_58e9

    ld sp, $e32e
    inc c
    rst $00
    jr jr_051_5890

    jr c, jr_051_585a

    ld [hl], b
    rra
    ld h, b
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
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    cp $0e

jr_051_58e2:
    cp $0e
    db $fc
    inc e
    db $dd
    inc e
    cp e

jr_051_58e9:
    jr c, jr_051_58e2

    ld [hl], b
    ld e, a
    ld b, b
    cp a
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
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
    nop
    rst $30
    nop
    ld sp, hl
    nop
    cp $00
    rst $38

jr_051_590a:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_051_5914:
    nop
    rst $08
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, a
    nop
    rra

Call_051_5920:
    nop
    rst $20
    nop
    inc hl
    nop
    add hl, de
    nop
    adc l
    nop
    db $e3
    nop
    ld [hl], c
    nop
    ld a, h
    nop

jr_051_592f:
    inc e
    ld [hl], l
    inc h
    rst $20
    inc h
    ld [c], a
    jr nz, jr_051_592f

    ld hl, $23b8
    add hl, sp
    ld h, $39
    ld b, $a3
    inc c
    rst $20
    jr jr_051_590a

    jr c, jr_051_5914

    jr nc, jr_051_5966

    ld h, b
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38

jr_051_5966:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, $3e
    jr jr_051_598a

    dec d
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_051_598a:
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    pop hl
    nop
    di
    nop
    ei
    nop
    ld a, [$fe00]
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
    ld bc, $0100
    nop
    ld [bc], a
    ld bc, $0102
    ld c, $00
    rrca
    nop
    rra
    nop
    sbc a
    nop
    ccf
    nop
    sbc a
    nop
    ccf
    nop
    nop
    add sp, $00
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    sbc a
    nop
    reti


    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ei
    nop
    cp $00
    rst $38
    nop
    rst $18
    nop
    ld c, a
    nop
    dec sp
    nop
    db $fc
    nop
    ld a, a
    nop
    ld l, a
    rra
    ld l, a
    ccf
    jp $c03f


    ld a, a
    add b
    cp $01
    cp $03
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    pop hl
    ccf
    pop bc
    ld a, a
    db $e3
    rst $38
    jp $c7ff


    rst $38
    add $fe
    call z, $8ffc
    cp $9f
    cp $3f
    db $fc
    dec sp
    ld hl, sp-$41
    ld hl, sp+$77
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$df], a
    ret nz

    rst $38
    ret nz

    sbc a
    add b
    ld a, a
    nop
    cp a
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0003
    ld [bc], a
    nop
    add a
    nop
    rlca
    nop
    ld c, $01
    ld c, $01
    ld e, $01
    jr jr_051_5a75

    inc a
    inc bc
    jr jr_051_5a79

    ld e, c
    ld b, $70

jr_051_5a75:
    ld c, $30
    ld c, $b1

jr_051_5a79:
    inc c
    and c
    inc e
    jp $e718


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
    add b
    nop
    sbc b
    nop
    ret nz

    nop
    ret nc

    ccf
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    rst $28

jr_051_5a99:
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rst $08
    jr nc, jr_051_5b20

    add b
    xor a
    ld d, b
    daa
    jr jr_051_5a99

    dec c
    sbc $21
    rst $28
    db $10
    ld a, [hl-]
    call nz, Call_000_00ff
    rst $30
    ld [$00ff], sp
    cp $01
    rst $38
    nop
    ld [hl], a
    nop
    rlca
    nop
    ld b, l
    nop
    inc sp
    nop
    nop
    or $00
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop

jr_051_5acd:
    rra
    nop
    cpl
    nop
    rlca
    nop
    rrca
    nop
    db $eb
    nop
    ld [c], a
    nop
    reti


    nop
    ld a, [hl]
    nop
    ld l, a
    nop
    ld a, e
    ldh a, [rIE]
    sbc $ff
    pop hl
    rst $38
    ld b, b
    rst $38
    and [hl]
    rst $38
    add e
    db $fd
    ccf
    ldh a, [$7f]
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    cp a
    add b
    cp a
    add b
    ccf
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
    ld bc, $0100
    ld bc, $0302
    nop
    ld b, $01
    inc b
    inc bc
    inc c
    inc bc
    ld [$0807], sp
    rla
    ld d, b
    rrca

jr_051_5b20:
    rst $28
    ret nc

    ld e, a
    ldh [$dd], a
    and c
    sbc e
    pop hl
    ld a, [hl-]
    jp $e316


    db $e4
    add a
    ld l, [hl]
    add l
    db $ed
    ld c, $dc
    dec bc
    jr jr_051_5acd

    or [hl]
    dec de
    or b
    cpl
    jr nc, jr_051_5bab

    ret nz

    ld a, a
    ret nz

    ld a, a
    ld a, a
    nop
    ld a, l
    nop
    cp $01
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $30
    ld [$09f6], sp
    ld a, [c]
    dec c
    or $09
    or $09
    db $ed
    ld [de], a
    rst $28
    db $10
    ei
    inc b

jr_051_5b62:
    rst $18
    jr nz, jr_051_5b62

    nop
    rst $38
    nop
    ld sp, hl

jr_051_5b69:
    nop
    rst $38
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
    ld a, a
    add b
    dec e
    ld [c], a
    ld b, a
    cp b
    adc b
    db $76
    and e
    inc e
    ret


    ld b, $8d
    ld [hl], d
    rst $10
    jr z, jr_051_5b69

    inc e
    push af
    ld a, [bc]
    db $fd
    ld [bc], a
    ei
    inc b
    db $fc
    inc bc
    nop
    ld d, d
    nop
    call c, $fd00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_051_5bab:
    rst $38
    nop
    rrca
    nop
    adc a
    ccf
    ldh [rIF], a
    ldh a, [rTAC]
    cp $a1
    rst $38
    ld e, $ff
    add c
    rst $38
    ldh [$7f], a
    db $fc
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc b
    rlca
    nop
    dec b
    ld a, [bc]
    ld c, $01
    add hl, de
    ld b, $11
    ld c, $31
    ld c, $12
    inc l
    ld h, d
    inc e

jr_051_5bf8:
    ld b, c
    inc a
    dec b
    ld hl, sp-$75
    ld [hl], b
    dec bc
    ldh a, [$03]
    ldh a, [rTMA]
    ldh a, [rP1]
    ldh [rSB], a
    ldh [$03], a
    ret nz

    rlca
    ret nz

    rlca
    add b
    rlca
    add b
    daa
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $18
    nop

jr_051_5c18:
    rst $38
    nop
    cp a
    nop
    rst $18
    jr nz, jr_051_5c18

    inc b
    cp a
    ld b, b
    ld a, [hl]
    add c

jr_051_5c24:
    db $fd
    ld [bc], a

jr_051_5c26:
    db $fc
    ld bc, $01fc
    ld a, [$fb05]
    inc b
    rst $30
    ld [$8a31], sp
    ld [hl], e
    adc h
    ld h, e
    sbc h
    ld [hl], a
    adc b
    ld d, e
    xor b
    rst $10
    jr z, jr_051_5c24

    jr jr_051_5c26

    jr jr_051_5bf8

    ld c, b
    ld a, [hl-]
    push bc
    ld l, d
    sub l
    ld l, h
    sub e
    ld a, b
    add a
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $f9
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$04fb], sp
    ccf
    nop
    and l
    ld [bc], a
    rl b
    db $76
    adc b
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    add b

jr_051_5c7c:
    ld d, a
    and b
    sub a
    ld l, b
    db $76
    adc b
    push de
    jr z, jr_051_5c7c

    ld [$005f], sp
    ld b, e
    nop
    ld c, c
    nop
    ld h, l
    nop
    daa
    nop
    nop
    rst $38
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $38

jr_051_5c9a:
    nop
    rst $08
    nop
    or $00

jr_051_5c9f:
    ld sp, hl
    ret nz

    nop
    jp z, $9e00

    nop
    rst $08
    ret nz

    jr nc, jr_051_5c9a

    sbc [hl]
    db $fc
    ld h, e
    rst $38
    jr @+$01

    rlca

jr_051_5cb1:
    rst $38
    pop hl
    ld a, a
    db $fd
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
    nop
    nop
    nop
    nop
    ld [bc], a
    nop

jr_051_5cc6:
    ld bc, $0300
    nop
    inc bc
    nop
    dec b
    ld [bc], a
    rlca
    nop
    dec c
    ld [bc], a
    ld d, $08
    ld [hl], $08
    inc h
    jr jr_051_5d4d

    ld [$0078], sp
    ret c

    jr nz, jr_051_5c9f

    jr nc, jr_051_5cb1

    jr nz, jr_051_5d23

    and b
    and b
    ld b, b
    ret nz

    nop
    ld b, b
    add b
    add b
    nop
    add b
    nop
    nop
    nop
    nop
    or b
    nop
    or h
    nop
    inc h
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    add b
    ld a, a
    nop
    rst $38
    nop

jr_051_5d04:
    rst $38
    nop
    rst $18
    jr nz, jr_051_5cc6

    ld b, d
    db $db
    inc h
    sbc a
    ld h, b
    or a
    ld c, b
    or a
    ld c, b
    rst $10
    jr z, jr_051_5d04

    db $10
    or $01
    rst $38
    nop
    db $fc
    inc bc
    ld a, [$f505]
    ld a, [bc]
    add sp, $16
    db $ec

jr_051_5d23:
    inc de
    ld b, [hl]
    xor c
    ld b, e
    xor h
    ld c, d
    or l
    ld bc, $95de
    ld l, d
    cp b
    ld b, e
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rTAC]
    ld [hl], b
    adc a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a

jr_051_5d3e:
    pop hl
    ld e, $e1
    ld e, $e1
    ld e, $22
    db $dd
    ld [hl+], a
    db $dd
    ld b, h
    cp e
    ld b, h
    cp e
    db $e4

jr_051_5d4d:
    dec de
    add sp, $17
    add sp, $15
    ld a, [$fa01]
    ld bc, $01fe
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    sbc [hl]
    ld h, c
    cp $01
    db $fc
    inc bc
    db $fd
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
    ld a, a
    add b
    db $fd
    ld [bc], a
    sbc a
    nop
    ret nz

    nop
    db $e4
    nop

jr_051_5d7c:
    ei
    nop
    cp $00
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_051_5d87

jr_051_5d87:
    ld [$0e00], sp
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_051_5d93

jr_051_5d93:
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fc
    ld [c], a
    db $10
    call nz, $9c30
    ld h, b
    reti


    jr nz, jr_051_5d7c

    jr nz, jr_051_5d3e

    ld h, b
    ld [hl-], a
    pop bc
    ld [bc], a
    ld hl, $4300
    dec b
    ld [bc], a

jr_051_5db4:
    inc b
    ld [bc], a
    ld a, [bc]
    inc b
    dec e
    nop
    dec d
    ld [$100b], sp
    ld [hl], d
    nop
    scf
    nop
    rst $10
    jr nz, jr_051_5db4

    nop
    dec bc
    nop
    sbc a
    nop
    call c, $bc03
    inc bc
    cp b
    rlca
    ld l, h
    inc bc
    ld l, h
    inc bc
    ld e, a
    nop
    dec de
    inc b
    dec sp
    inc b
    dec sp
    inc b
    ccf
    nop
    scf
    ld [$c000], sp

jr_051_5de2:
    nop
    pop bc
    nop
    jp $8b00


    nop
    add e
    nop
    dec de
    nop
    rst $10
    nop
    dec l

jr_051_5df0:
    nop
    dec d
    nop
    rrca
    nop
    dec c
    nop
    dec de

jr_051_5df8:
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rla
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ld sp, hl
    nop
    db $fd
    nop
    push af
    ld [$10ed], sp
    rst $10
    jr z, jr_051_5df0

jr_051_5e11:
    jr nz, jr_051_5de2

jr_051_5e13:
    jr nc, jr_051_5df8

jr_051_5e15:
    db $10
    ld a, b
    add b
    and c
    ld b, b
    ld [hl], e
    add b
    cp a
    ld b, b
    ccf
    ret nz

    cp a
    ld b, b
    rst $38
    nop
    xor a
    ld d, b
    xor d
    ld d, l
    sbc b
    ld h, a
    ld e, h
    and e
    db $10
    db $ed
    db $10
    xor e
    jr nz, jr_051_5e11

    jr nz, jr_051_5e13

jr_051_5e34:
    jr nz, jr_051_5e15

    ld b, b
    cp a
    ld b, b
    cp a
    add b
    ld a, a
    add c
    ld a, [hl]
    ld bc, $01fe
    cp $02
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    dec b
    ld a, [$f807]
    rlca
    ld hl, sp+$0b
    db $f4
    dec bc
    db $f4
    rra
    ldh [rNR34], a
    pop hl
    ld d, $e9
    daa
    ret c

    ld h, l
    sub d
    ld h, h
    sub c
    ld l, a
    db $10
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

jr_051_5e6a:
    rst $38
    nop
    rst $38
    nop
    xor a
    db $10
    or a
    ld [$00bf], sp
    cp a
    nop
    cp e
    inc b
    ld a, e
    inc b
    ld a, a
    nop
    rrca
    nop
    rst $18
    nop
    pop af
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld [$ff10], a
    nop
    rst $30
    nop
    ld a, l
    ld [bc], a
    rst $08
    nop
    rst $30
    nop
    ei
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    ld b, l

jr_051_5ea1:
    jr nc, jr_051_5e6a

    jr nc, jr_051_5e34

    ld h, b
    adc l
    ld h, d
    inc e
    jp $c21d


    inc a

jr_051_5ead:
    add e
    cp b
    rlca
    add hl, de
    ld b, $31
    inc c
    ld [hl], $09
    ld a, [c]
    dec c
    ld [c], a
    dec e
    push hl
    ld a, [de]
    call nz, $c839
    dec [hl]

jr_051_5ec0:
    ret


    ld [hl], $91
    ld l, [hl]
    or [hl]
    ld c, c
    and d
    ld e, l
    db $76
    adc c
    ld l, [hl]
    sub c
    rst $00
    jr c, jr_051_5ead

    jr nz, jr_051_5ec0

    db $10
    rst $28
    db $10
    db $ed
    db $10
    ld a, $c0
    db $fd
    ld [bc], a
    ld a, d
    add l
    ld sp, hl
    ld b, $ff
    nop
    or $08
    inc a
    nop
    ld a, h
    nop
    ld a, b
    nop
    jr nc, jr_051_5eea

jr_051_5eea:
    jr nc, jr_051_5eec

jr_051_5eec:
    jr nz, jr_051_5eee

jr_051_5eee:
    nop
    nop
    nop
    rst $38
    nop
    cp $00
    cp $00
    db $ed
    nop
    db $fd
    nop
    db $dd

jr_051_5efc:
    nop
    db $db
    nop
    cp e
    nop
    or b
    nop
    jr nc, jr_051_5f05

jr_051_5f05:
    jr nz, jr_051_5f07

jr_051_5f07:
    jr nz, jr_051_5f09

jr_051_5f09:
    jr nz, jr_051_5f0b

jr_051_5f0b:
    nop
    nop
    ld b, b
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $10
    jr z, jr_051_5eea

    jr nc, jr_051_5ea1

    ld a, e
    dec l
    jp nc, $b24d

    cpl
    ret nc

    add hl, de
    and $1b
    db $e4
    rla
    add sp, $1f
    ldh [$2d], a
    jp nc, $da25

    ld l, $d1
    ld d, l
    xor d
    ld a, l
    add b
    ld l, d
    sub l
    rst $38
    nop

jr_051_5f3a:
    rst $18
    jr nz, jr_051_5efc

    ld b, b
    ld a, a
    add b
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    ld c, $0e
    ld c, $0e
    ld e, $1e
    inc a
    inc a
    inc [hl]
    inc [hl]
    jr z, jr_051_5f88

    jr z, jr_051_5f8a

    ld h, b
    ld h, b
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    ld b, c
    ld b, b
    jp $83c0


    add b
    add e
    add b
    add e
    add h
    rlca
    ld [$0807], sp
    rlca
    ld [$100f], sp
    rrca
    db $10
    rrca
    db $10
    rra
    jr nz, jr_051_5fc0

    rra
    rrca
    rrca
    add e
    inc bc
    ldh [rP1], a

jr_051_5f88:
    ldh [rP1], a

jr_051_5f8a:
    jr nc, jr_051_5f8c

jr_051_5f8c:
    ld c, b
    nop
    ld [hl-], a
    nop
    cp [hl]
    ld b, b
    db $fc
    nop
    db $fc
    nop
    ccf
    nop
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rst $38
    inc a
    db $fd
    nop
    push de
    jr z, @+$71

    sub b
    ld l, a
    sub b
    ld l, [hl]
    sub b
    ld b, l
    cp d
    rst $10
    jr z, jr_051_5f3a

    ld [hl], h
    and d
    ld e, l
    ld [$00f7], sp
    ld l, a
    add b
    ld l, a
    nop
    rst $38
    add b
    ld a, a
    ld [bc], a
    db $fd
    add b
    ld a, a

jr_051_5fc0:
    inc b
    reti


    ld d, b
    xor l
    ld l, b
    sub c
    ldh a, [$0b]
    ret nz

    ccf
    ret nc

    cpl
    pop hl
    ld e, $e1
    ld e, $e2
    dec e
    jp z, $cc35

    inc sp
    and h
    ld e, e
    cp h
    ld b, e
    db $fc
    inc bc
    ld sp, hl
    ld b, $ff
    nop
    db $dd
    ld [bc], a
    ccf
    nop
    ld a, $00
    ccf
    nop
    ld a, l
    nop
    ld a, a
    nop
    sbc a
    nop
    sbc e
    nop
    nop
    ld b, c
    nop
    rlc b
    jp $8700


    nop
    sub e
    nop
    adc a
    nop
    db $e3
    nop
    xor [hl]
    nop
    rrca
    nop
    ld d, a
    nop
    ld c, l
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    rra
    nop
    ld c, $00
    ld a, [bc]
    nop
    ld c, $00
    adc h
    nop
    ld d, h
    nop
    db $10
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc b
    inc b
    inc c
    inc c
    inc e
    inc e
    jr jr_051_6046

    jr jr_051_6048

    add hl, sp
    jr c, jr_051_60ac

    ld a, b
    ld [hl], e
    ld [hl], b
    ld [hl], e
    ld [hl], b
    rst $30
    ldh a, [$e7]
    ldh [$ef], a
    pop hl
    rst $28
    rst $20
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18

jr_051_6046:
    rst $38
    rst $38

jr_051_6048:
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld a, l
    db $e3
    db $e4
    rrca
    db $10
    ccf
    ld b, b
    ccf
    ld b, b
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
    ld a, a
    ld a, a
    rra
    rra
    rlca
    rlca
    ld bc, $8001
    nop
    and b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    inc e
    nop
    rla
    db $10
    ld bc, $4200
    ld b, d
    nop
    ld bc, $0302
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    ld bc, $0d01
    ld bc, $0201
    ld c, $0f
    db $10
    ld de, $1204
    inc de
    inc d

jr_051_60ac:
    dec d
    ld d, $17
    jr jr_051_60ca

    ld a, [de]
    dec de
    ld bc, $0101
    inc e
    dec e
    ld e, $1f
    jr nz, jr_051_60dd

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_051_60ed

    ld a, [hl+]
    dec hl
    inc l
    ld bc, $0101

jr_051_60ca:
    ld bc, $2e2d
    cpl
    jr nc, jr_051_6101

    ld [hl-], a
    ld [hl-], a
    inc sp
    ld [hl-], a
    ld [hl-], a
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_051_6114

    ld a, [hl-]
    dec sp

jr_051_60dd:
    inc a
    dec a
    ld a, $32
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld [hl-], a
    ld b, h

jr_051_60ed:
    ld b, l
    ld b, [hl]
    ld b, a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld [hl-], a
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld [hl-], a

jr_051_6101:
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
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
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a

jr_051_6114:
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
    ld [hl-], a
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
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
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

    ld bc, $dad9
    ld [hl-], a
    db $db
    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    ld bc, $e501
    and $32
    ld [hl-], a
    ld [hl-], a
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    ld [hl-], a
    ld [hl-], a
    xor $ef
    ldh a, [$32]
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    pop af
    ld a, [c]
    di
    db $f4
    push af
    or $32
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    rst $30
    ld hl, sp-$07
    ld a, [$00fb]
    nop
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    inc b
    nop
    nop
    nop
    ld b, $06
    ld bc, $0006
    nop
    nop
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
    ld bc, $0601
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0303
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    inc bc
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    inc b
    nop
    dec b
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0301
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    rlca
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    inc b
    inc b
    nop
    nop
    rlca
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    rlca
    inc b
    ld bc, $0001
    ld bc, $0101
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0301
    inc bc
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    nop
    rrca
    nop
    inc bc
    nop
    rlca
    nop
    rlca
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    inc l
    nop
    ld b, e
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
    ret nc

    nop
    ld d, b
    add b
    ld l, b
    add b
    add sp, $00
    ld h, l
    add b
    ld [hl], $c0
    db $10
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
    ccf
    cp a
    ccf
    cp a
    rra
    rst $18
    rra
    rst $18
    rrca
    rst $28
    adc a
    ld l, a
    adc a
    ld l, a
    rst $00
    scf
    rst $00
    scf
    db $e3
    dec de
    pop hl
    add hl, de
    pop af
    add hl, bc
    ldh a, [$0c]
    ldh a, [$0c]
    ld hl, sp+$04
    ld hl, sp+$06
    db $fc
    ld [bc], a
    db $fc
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    rrca
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
    nop
    ccf
    nop
    rra
    nop
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

Jump_051_6400:
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
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
    nop
    nop
    nop
    add b
    nop
    ld h, b
    nop
    inc e
    nop
    inc b
    nop
    ld [$0800], sp
    nop
    stop
    jr nz, jr_051_6428

jr_051_6428:
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
    cp $ff
    rst $38
    rst $18
    rst $18
    rst $18
    rst $18
    rst $38
    rst $38
    ld c, a
    ld c, a
    ld [hl], a
    ld [hl], a
    ld l, e
    ld l, e
    ld sp, $3031
    ld sp, $3d3c
    inc e
    sbc h
    inc e
    sbc h
    ld c, $ce
    adc [hl]
    ld c, [hl]
    add [hl]
    ld b, [hl]
    add a
    ld h, a
    jp $c323


    inc sp
    db $e3
    inc de
    pop hl
    add hl, de
    pop hl
    add hl, de
    ldh a, [$0c]
    ldh a, [$0c]
    ld hl, sp+$04
    ld hl, sp+$06
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    nop
    ld hl, sp+$70
    adc b
    ldh a, [$08]
    ld hl, sp+$04
    ld sp, hl
    dec b
    ld sp, hl
    dec b
    ld sp, hl
    dec b
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
    nop
    ld a, a
    nop
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
    ccf
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
    nop
    rra
    nop
    rra
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
    add b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    ret nz

    ccf
    and b
    ccf
    ldh [$1f], a
    ret nz

    rra
    ret nc

    rra
    ld [hl], b
    rrca
    ld h, b
    rrca
    ld l, b
    rrca
    jr c, jr_051_655a

    inc [hl]
    add a
    sub h
    add a
    sbc h
    add e
    sbc d

jr_051_655a:
    jp $d3ca


    jp c, Jump_051_7f73

    ld h, c
    ld h, l
    ld [hl], c
    ld [hl], l
    ld [hl], c
    ld [hl], c
    ld [hl], c
    ld [hl], c
    inc sp
    inc sp
    inc de
    inc de
    inc de
    sub e
    inc de
    sub e
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh a, [$cf]
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    db $76
    adc c
    ld a, b
    add b
    ld a, b
    add b
    cp h
    ld b, b
    cp b
    ld b, h
    cp e
    ld b, h
    sbc h
    ld h, e
    sbc h
    ld h, e
    call c, $dc33
    inc sp
    adc $31
    adc $39
    xor $19
    xor $19
    rst $28
    inc e
    rst $28
    inc e
    rst $20
    inc d
    rst $30
    ld c, $f7
    ld c, $f7
    ld c, $f7
    ld c, $f3
    ld a, [bc]
    ei
    rlca
    ei
    rlca
    ld sp, hl
    dec b
    ld sp, hl
    dec b
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
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]

jr_051_660a:
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR10], a
    ldh [rNR10], a
    ret nz

    ld sp, $35c4
    call nz, $c435
    dec [hl]
    call nz, $cc25
    xor l
    adc h
    db $ed
    adc h
    xor $8c
    xor $dc
    cp $d8
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
    rst $38
    nop
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
    ld b, b
    ccf
    add b
    ld a, a
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
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    jr nz, @+$22

    jr nz, @+$22

    jr nz, jr_051_660a

    db $10
    sbc a
    db $10
    sbc a
    db $10
    sbc a
    db $10
    adc a
    ld [$88cf], sp
    rst $08
    adc b
    rst $08
    adc b
    call $c788
    add b
    pop hl
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$c0]
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    pop hl
    ret nz

    ldh [$80], a
    jp $c180


    add b
    push bc
    add b
    push bc
    add b
    rst $00
    add b
    rst $08
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    nop
    adc a
    nop
    adc a
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
    ccf
    nop
    ccf
    nop
    ld a, a

jr_051_66d0:
    nop
    ld a, a
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld a, a
    nop
    ld a, l
    nop
    push af
    nop
    push af
    nop
    jp hl


    nop
    pop af
    nop
    or c
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    or b
    nop
    jr nz, jr_051_66d0

    nop
    db $db
    inc b
    rst $18
    nop
    sbc $01
    ld [$a415], a
    ld e, e
    ldh a, [rIF]
    and b
    ld e, a
    rst $38
    rst $38
    rst $38
    add b
    ret nz

    nop
    nop
    nop
    rlca
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
    ld a, a
    nop
    rst $38
    nop
    rst $30
    nop
    db $d3
    ld a, $00
    cp $00
    rst $30
    ld [$24db], sp
    and b
    ld e, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $81fe
    ld a, [hl]
    add b
    ld a, a
    ld bc, $c1fe
    ld a, $62
    inc e
    ld h, d
    inc e
    sbc $20
    nop
    inc bc
    nop
    inc hl
    nop
    ld h, a
    nop
    db $db
    nop
    db $db
    nop
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
    cp a

jr_051_675a:
    nop
    cp a
    nop
    sbc a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    sub a
    nop
    rlca
    nop
    ld b, $00
    ld b, $00
    ld b, $fd
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    db $db
    jr nz, jr_051_675a

    jr nz, jr_051_67fc

    add b
    ld a, e
    add b
    dec de
    ldh [rNR31], a
    ldh [$37], a
    ret z

    ccf
    ret nz

    inc [hl]
    rl a
    add sp, -$01
    ldh a, [$f0]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    ld a, e
    nop
    cp $00
    call z, $cc00
    ld a, a
    nop
    ld a, a
    nop
    xor a
    ld d, b
    sbc a
    ld h, b
    ccf
    ret nz

    ld a, l
    add d
    ld a, e
    add b
    ld a, a
    add b
    ld l, a
    add b
    rst $28
    nop
    cp a
    nop
    ld sp, hl
    nop
    cp l
    nop
    ld a, a
    nop
    ld [hl], l
    nop
    ld a, l
    nop
    nop
    adc b
    nop
    rst $10
    nop
    db $dd
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
    rst $28
    nop
    rst $38
    nop
    rst $08
    nop
    rst $08
    nop
    ld c, [hl]
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, [hl]

jr_051_67fc:
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld e, e
    nop
    ld e, a
    nop
    ld e, l
    nop
    ld e, b
    nop
    ld e, b
    nop
    ld c, h
    nop
    ld c, h
    nop
    ld c, h
    or e
    nop
    ld a, [hl+]
    add c
    cp e
    nop
    ei
    nop
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    push bc
    ld a, [hl-]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$fb], a
    ldh [$e3], a
    ret nz

    rst $28
    ldh [$ef], a
    ldh [$e7], a
    ldh [$e3], a
    ldh [$e1], a
    ldh [$e1], a
    ldh [$e0], a
    ldh [rP1], a
    call nc, Call_000_1800
    nop
    inc b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    or h
    nop
    db $fc
    nop
    db $fd
    nop
    ld a, l
    nop
    ld a, h
    nop
    ccf
    pop bc
    nop
    pop de
    nop
    jp hl


    nop
    ld hl, sp+$00
    cp h
    ld b, b
    db $f4
    nop
    db $f4
    nop
    db $e4
    nop
    sub b
    ld b, b
    and b
    ld b, b
    ldh [rP1], a
    ldh [rP1], a
    and b
    ld b, b
    ret nc

    nop
    ld [hl], b
    nop
    jr nz, @+$42

    nop
    sbc a
    nop
    sub a
    nop
    ld c, a
    nop
    ld e, a
    nop
    rst $18
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
    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    or a
    nop
    cp a
    nop
    or a
    nop
    and d
    nop
    ld a, [c]
    nop
    ld [c], a
    nop
    ld d, d
    nop
    stop
    ld d, b
    nop
    sub d
    nop
    stop
    ld de, $006f
    ld l, [hl]
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    halt
    ld a, a
    nop
    ld sp, hl
    ld b, $7d
    ld [bc], a
    ld a, l
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, [$fa05]
    dec b
    ld a, [$3d05]
    add d
    cp l
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
    ret nz

    rst $38
    ret nz

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
    rst $38
    rst $38
    nop
    ret nz

    nop
    push af
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
    nop
    ld a, a
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
    cp a
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    inc bc
    ld a, h
    inc bc
    cp a
    ld [bc], a
    sbc a
    nop
    sbc a
    nop
    nop
    cp a
    nop
    rra
    nop
    rst $18
    nop
    rst $18
    nop
    rlc b
    add a
    nop
    jp $e700


    ld a, [de]
    nop
    jr c, jr_051_6944

jr_051_6944:
    inc a
    nop
    rla
    ld [$001f], sp
    dec e
    nop
    rra
    nop
    rrca
    nop
    rrca
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
    ld bc, $1300
    nop
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
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld l, [hl]
    nop
    ld a, a
    nop
    rst $38
    nop
    ld [hl], a
    nop
    ld l, a
    nop
    or a
    nop
    or a
    nop
    ld [hl], $00
    ld a, $00
    ld a, [$3e00]
    nop
    ccf
    ret nz

    nop
    add sp, $00
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
    ld h, b
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
    ld bc, $03fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$f8], a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    ret


    rst $38
    inc bc
    cp $ff
    nop
    rst $38
    nop
    rst $38

jr_051_6a2f:
    nop
    ld a, [$00ff]
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
    ret nz

    rst $38
    rst $38
    jr nz, @+$01

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
    rra
    nop
    ret nc

    nop
    ld [hl], b

jr_051_6a53:
    add b
    ld [hl], b
    add b
    and b
    ld b, b
    or b
    ld b, b
    or b
    ld b, b
    ld d, b
    and b
    ld b, b
    or b
    ld e, a
    and b
    ld e, [hl]
    and b
    rst $18
    jr nz, @+$01

    nop
    ld hl, sp+$00
    add b
    nop
    add b
    jr nz, jr_051_6a2f

    jr nz, @-$3e

    jr nz, jr_051_6a53

    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    or b
    nop
    jr nc, jr_051_6a80

jr_051_6a80:
    jr nc, jr_051_6a82

jr_051_6a82:
    jr c, jr_051_6a84

jr_051_6a84:
    jr c, jr_051_6a86

jr_051_6a86:
    ld a, b
    nop
    ld [hl], b
    ld [$0874], sp
    jr nz, jr_051_6a9a

    inc l
    ld [bc], a
    ret z

    ld b, $82
    nop
    add b
    nop
    add b
    nop
    ret nz

    nop

jr_051_6a9a:
    ld b, c
    nop
    ld d, b
    rrca
    ld b, c
    ld e, $fb
    inc bc
    db $e3
    inc bc
    jp $8303


    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    inc bc
    ldh a, [$03]
    ldh [$03], a
    ldh [$03], a
    pop bc
    ld [bc], a
    pop bc
    ld [bc], a
    pop bc
    ld [bc], a
    pop bc
    ld [bc], a
    ret nz

    inc bc
    ldh [$03], a
    ldh [$03], a
    ldh a, [$03]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    ei
    inc bc
    ld sp, hl
    ld bc, $00f8
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rDIV]
    ldh a, [$0a]
    ldh a, [rIF]
    ldh a, [$0d]
    ldh a, [rIF]
    ldh a, [$0c]
    ldh a, [rIF]
    ldh a, [$0e]
    ldh a, [rTMA]
    ldh a, [rTAC]
    ldh a, [rTIMA]
    ldh a, [rSB]
    ldh a, [rP1]
    nop
    adc $00
    rlca
    nop
    cp a
    nop
    rst $18
    nop
    rrca
    nop
    rrca
    nop
    sbc a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $08
    nop
    sub a
    nop
    rst $30
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $7f
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    ldh [rP1], a
    dec bc
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    sbc a
    nop
    rst $18
    jr nz, jr_051_6b62

jr_051_6b62:
    nop
    jr nz, jr_051_6b65

jr_051_6b65:
    jr nz, @+$22

    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ld [hl], b
    nop

jr_051_6b6e:
    ld h, b
    db $10

jr_051_6b70:
    ld b, b
    db $10
    jr nc, jr_051_6b74

jr_051_6b74:
    jr nz, jr_051_6b76

jr_051_6b76:
    jr nc, jr_051_6b78

jr_051_6b78:
    jr nz, jr_051_6b8a

    ld b, b
    db $10
    ld b, b
    db $10
    ld b, b
    db $10
    ld c, b
    db $10
    ld l, b
    db $10
    ld a, b
    nop
    stop
    nop
    nop

jr_051_6b8a:
    cp h
    nop
    jr jr_051_6b6e

    ret nz

    nop
    rst $30
    ldh a, [$f3]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$30]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rP1]
    ldh a, [$03]
    ldh a, [$03]
    ldh a, [rSTAT]
    or b
    and c
    db $10
    ld de, $1100
    nop
    ld b, c
    jr nc, jr_051_6b70

    jr nc, @+$05

    ldh [$03], a
    ldh [rTAC], a
    ldh [rIF], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$9f], a
    add b
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
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$80], a
    ld h, b
    ld b, b
    and b
    ldh [$80], a
    or b
    ret nz

    rlca
    jr nz, @+$05

    db $10
    ld bc, $0048
    ld b, h
    nop
    ld d, d
    nop
    ld d, h
    nop
    ld d, h
    nop
    dec d
    ld a, [hl]
    nop
    cpl
    ld d, b
    ld l, $50
    ld l, d
    inc d
    dec hl
    ld d, h
    ld a, [hl+]
    ld d, l
    ld l, d
    dec d
    ld l, d
    dec d
    ld a, [hl+]
    dec d
    ld a, [hl-]
    dec b
    ld a, [de]
    dec b
    ld a, [bc]
    dec b
    ld l, $01
    ld c, $01
    ld [bc], a
    ld bc, $0003
    db $fc
    jr @+$01

    ld [$0cf7], sp
    ei
    ld b, $fb
    ld b, $fd
    ld [bc], a
    db $fd
    inc bc
    cp $01
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
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
    nop
    rst $38
    db $10
    rst $38
    ld hl, sp-$01
    ld b, b
    rst $38
    nop
    cp $00
    or d
    nop
    or $00
    nop
    rst $38
    nop
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
    db $fd
    ld c, $00
    ld b, $00
    ld b, $00
    rlca
    nop
    rlca
    nop
    rlca
    nop
    dec b
    ld [bc], a
    rlca
    nop
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc c
    ld [bc], a
    ld [$0d02], sp
    ld [bc], a
    dec c
    ld [bc], a
    inc c
    ld [bc], a
    nop
    nop
    nop
    rlca
    ld a, [bc]
    inc b
    nop
    nop
    ld bc, $0400
    nop
    ld b, b
    nop
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
    ldh a, [rIF]
    ldh a, [rIF]
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
    db $fc
    inc bc
    db $fc
    inc bc
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
    ld a, a
    ccf
    ccf
    sbc a
    nop
    ld c, a
    nop
    sbc $00
    adc h
    nop
    or [hl]
    nop
    or e
    nop
    cp b
    ld bc, $00bc
    xor $00
    xor $00
    db $ed
    nop
    db $ed
    nop
    dec [hl]
    ld c, b
    or a
    ld c, b
    or a
    ld c, b
    or a
    ld c, b
    or a
    ld c, b
    and [hl]
    ld c, c
    or h
    ld c, e
    or a
    ld c, b
    add $19
    ld h, [hl]
    add hl, de
    dec h
    ld a, [de]

jr_051_6d1a:
    dec b
    ld a, [de]
    dec e
    ld [bc], a
    dec c
    ld [bc], a
    ld a, b
    ret nz

    ld a, c
    ldh [$b9], a
    ld [hl], b
    cp a
    ld [hl], b
    rst $18
    jr c, jr_051_6d1a

    inc e
    rst $28
    ld e, $f7
    ld c, $f7
    rrca
    ei
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    cp $01
    cp $81
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    nop
    pop de
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
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
    cp $00
    cp $00
    rst $38
    ld bc, $0000
    nop
    nop
    nop
    inc b
    inc bc
    jr nz, jr_051_6da9

    and b
    ld d, b
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff

jr_051_6da9:
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
    rrca
    rst $38
    ld a, a
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
    add c
    nop
    ld b, c
    add b
    ld hl, $3140
    nop
    sbc c
    nop
    adc $00
    db $e3
    nop
    pop de
    nop
    ldh a, [rP1]
    cp h
    ld b, b
    db $fc
    nop
    db $fc

jr_051_6ddf:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_051_6e48

    jr nz, jr_051_6e49

    jr nz, jr_051_6e5b

    nop
    ld h, [hl]
    nop
    ld l, [hl]
    nop
    xor d
    ld b, h
    and d
    ld b, h
    and [hl]
    ld b, b
    xor b
    ld b, h
    add sp, $04
    ret z

    inc b
    ld b, h
    ld [$0cef], sp
    rst $28
    adc h
    ei
    adc b
    rst $30
    ret nz

    or $e0
    cp $e0
    cp $f0
    cp $78
    cp $78
    cp $3c
    rst $38
    inc a
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $18
    inc bc
    rst $08
    ld bc, $01cf
    rst $08
    nop
    rst $08
    add b
    rst $08
    ret nz

    adc a
    add b
    sbc a
    add b
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld b, b
    jr nz, jr_051_6e79

    jr nz, jr_051_6e7b

    jr nz, jr_051_6e7d

    jr nz, jr_051_6ddf

    ld b, b
    and b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    add b
    ld b, b

jr_051_6e48:
    add b

jr_051_6e49:
    ld b, b
    ld b, b
    add b
    ret nz

    nop
    nop
    nop
    ret nz

    nop
    ld [bc], a
    ld bc, $3f40
    inc b
    ld hl, sp+$40
    add b
    nop

jr_051_6e5b:
    nop
    nop
    nop
    nop
    nop
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    dec a
    cp $3d
    cp $3b
    db $fc
    dec sp
    db $fc
    ccf
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f

jr_051_6e79:
    ld hl, sp+$3f

jr_051_6e7b:
    ldh a, [$3f]

jr_051_6e7d:
    ldh a, [$7f]
    ldh a, [$7e]
    ldh a, [$7e]
    ldh a, [$7e]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
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

    ld a, $c0
    ld a, $c0
    ld a, $c0
    ld a, $c0
    ld a, $c0
    inc a
    ret nz

    inc a
    ret nz

    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    rst $20
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    db $fc
    rrca
    db $fc
    adc a
    ld hl, sp-$31
    rlca
    rlca
    rlca
    rlca
    ld a, [de]
    ld a, [de]
    inc e
    inc e
    ld c, $0f
    rlca
    add a
    inc bc
    jp $e000


    rlca
    ld [$0086], sp
    pop bc
    ld [bc], a
    ld [c], a
    ld bc, $00d1
    jr jr_051_6eec

jr_051_6eec:
    jr c, jr_051_6eee

jr_051_6eee:
    jr c, jr_051_6ef0

jr_051_6ef0:
    inc h
    nop
    jr nz, jr_051_6ef4

jr_051_6ef4:
    ldh [rP1], a
    ld h, c
    nop
    ld h, c
    nop
    jr nz, jr_051_6f3c

    jr nz, jr_051_6f3e

    ld [bc], a
    ld b, b
    ld b, d
    nop
    add $00
    add $00
    ld b, [hl]
    add b
    ld b, d
    add h
    ld b, [hl]
    add b
    call nz, $8800
    inc b
    ld a, e
    ld [$0073], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    add h
    db $e3
    ret nz

    ei
    ret nz

    ld a, [$fae0]
    ldh a, [$f2]
    ldh a, [$f6]
    ldh a, [$f6]
    ld [hl], b
    rst $30
    jr nc, @-$09

    jr nc, jr_051_6f4c

    nop
    add hl, de
    nop
    dec d
    ld [$0810], sp
    db $10
    ld [$0018], sp

jr_051_6f3c:
    jr nc, jr_051_6f3e

jr_051_6f3e:
    jr nz, jr_051_6f50

    jr nc, jr_051_6f42

jr_051_6f42:
    jr nc, jr_051_6f44

jr_051_6f44:
    db $10
    jr nz, jr_051_6f57

    jr nz, jr_051_6f6a

    nop
    nop
    nop

jr_051_6f4c:
    nop
    nop
    nop
    nop

jr_051_6f50:
    rra
    nop
    inc [hl]
    ret nz

    nop
    nop
    nop

jr_051_6f57:
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    rst $08
    rrca
    adc a
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca

jr_051_6f6a:
    rrca
    rrca
    dec b
    rrca
    dec c
    rrca
    pop af
    rrca
    ld sp, hl
    rrca
    jp hl


    rra
    jp hl


    rra
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    add c
    rra
    nop
    rrca
    ld [$1007], sp
    rlca
    db $10
    rlca
    ret nz

    ld h, $c0
    ld l, $c0
    ld a, $c0
    ld a, $c2
    ld a, $c4
    inc a
    call nz, $c47c
    ld a, h
    rst $00
    ld a, h
    rst $00
    ld a, h
    rst $08
    ld a, h
    rst $08
    ld a, b
    scf
    jr nc, @+$79

    ld [hl], b
    ld h, a
    ld h, b
    ld h, a
    ld h, b
    ld l, a
    ld h, b
    cpl
    jr nz, jr_051_6fdc

    jr nz, jr_051_6fbe

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
    rra
    nop

jr_051_6fbe:
    ccf
    nop
    ret nz

    ret nz

    ret nz

    ret nz

    rst $00
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
    ld a, a

jr_051_6fdc:
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    add a
    ld bc, $0041
    ld h, b
    nop
    stop
    cp h
    nop
    sbc $00
    nop
    rst $20
    nop
    db $e3
    nop
    di
    nop
    add hl, sp
    nop
    db $fc
    nop
    cp $00
    rst $30
    nop
    rst $38
    nop
    db $fd
    nop
    db $fc
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    adc [hl]
    ccf
    nop
    add h
    nop
    dec b
    nop
    ld c, $01
    nop
    ld bc, $0063
    dec h
    ld b, b
    and e
    ld b, b
    and [hl]
    ld b, b
    ld h, b
    add d
    ld h, b
    add d
    db $e4
    ld [bc], a
    ld [c], a
    inc b
    ret nz

    inc b
    adc d
    inc b
    inc h
    ld a, [bc]
    dec e
    ld [bc], a
    ld e, $01
    sub d
    dec c
    sbc d
    dec b
    ld d, d
    dec b
    ld a, b
    inc b
    inc h
    ld [$0827], sp
    ld [hl], c
    ld [$0830], sp
    inc bc
    nop
    daa
    nop
    ldh [rP1], a
    nop
    nop
    inc bc
    nop
    or a
    nop
    nop
    ld c, b
    nop
    and h
    nop
    ld a, [c]
    nop
    di
    nop
    ld sp, hl
    nop
    add sp, $00
    ld [hl], h
    nop
    ld d, [hl]
    rst $28
    ldh [$e7], a
    ldh [$e3], a
    ldh [$e1], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

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
    cp a
    add b
    rra
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
    rrca
    nop
    rrca
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
    rst $38
    nop
    db $fc
    inc bc
    ldh a, [rIF]
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
    ccf
    rrca
    rra
    rlca
    rrca
    inc bc
    add a
    ld bc, $00c3
    pop hl
    nop
    ldh a, [rP1]
    ld a, b
    nop
    inc a
    nop
    sbc [hl]
    nop
    jr nz, jr_051_70f2

    db $10
    ld [$0498], sp
    ld c, [hl]
    nop
    dec h
    ld [bc], a
    inc bc
    jr nc, jr_051_70f6

    ld [hl], b
    db $fd
    ld [bc], a
    db $fc
    inc bc

jr_051_70f2:
    ldh a, [rIF]
    ld [bc], a
    db $fc

jr_051_70f6:
    add b
    nop
    nop
    add b
    ld [$0480], sp
    nop
    ld [de], a
    nop
    dec de
    nop
    ld e, l
    nop
    ld e, $40
    rra
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    sbc h
    inc bc
    sbc $01
    rst $28
    nop
    scf
    nop
    rra
    nop
    ld a, e
    nop
    ld a, h
    nop
    ld a, [hl]
    nop
    cp a
    nop
    nop
    jr nz, jr_051_7123

jr_051_7123:
    stop
    jr jr_051_7127

jr_051_7127:
    ld a, b
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, $00
    ld e, $00
    rra
    nop
    add hl, de
    nop
    dec l
    nop
    dec h
    nop
    ld e, $00
    add d
    nop
    add c
    nop
    ret nz

    nop
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
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
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
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
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
    rrca
    ccf
    rlca
    rrca
    inc bc
    rlca
    ld bc, $0083
    pop bc
    nop

jr_051_7196:
    ldh [rP1], a
    ldh a, [rP1]
    ld a, b
    nop
    inc a
    nop
    ld e, $00
    nop
    ldh a, [$08]
    ldh a, [$0e]
    nop
    ld a, a
    nop
    dec sp
    nop
    rra
    nop
    ld c, $00
    add a
    nop
    nop
    sbc h
    nop
    ld e, d
    nop
    jr z, jr_051_71b7

jr_051_71b7:
    nop
    nop
    nop
    nop
    ld b, c
    nop
    inc h
    nop
    db $10
    ld a, a
    add b

jr_051_71c2:
    ld a, a
    add b
    ld e, a
    and b
    sbc a
    ld h, b
    rst $08
    jr nc, jr_051_71c2

    ld [$1ce3], sp
    ld [hl], a
    ld [$06b9], sp
    cp c
    ld b, $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    cp l
    ld [bc], a
    rst $38
    nop
    sbc $21
    rst $38
    nop
    ld a, a
    nop
    ld e, a
    jr nz, jr_051_7196

    db $10
    sub a
    ld [$00ff], sp
    ldh a, [rP1]
    ld [hl], b
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    ld a, a
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    inc bc
    rlca
    ld bc, $0083
    pop bc
    nop
    ld h, b

jr_051_7237:
    nop
    jr nc, jr_051_723a

jr_051_723a:
    jr jr_051_723c

jr_051_723c:
    inc c
    nop
    inc b
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    db $fd
    ld [bc], a
    add sp, $17
    call nz, $a03b
    ld e, a
    add sp, $17
    call nc, $802b
    ld a, a
    ret nz

    ccf
    and b
    ld e, a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    ld hl, sp+$07
    xor h
    ld d, e
    jr nc, jr_051_7237

    ld b, b
    cp a
    and b
    ld e, a
    pop bc
    ld a, $50
    xor a
    and b
    ld e, a
    or c
    ld c, [hl]
    db $f4
    dec bc
    xor $01
    db $dd
    ld [hl+], a
    rst $28
    db $10
    ccf
    nop
    ld e, a
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    ccf
    rrca
    rra
    rlca
    rrca
    inc bc
    rlca
    ld bc, $00fc
    cp $00
    ld a, a
    nop
    cp a
    nop
    rst $18
    nop
    ld l, a
    add b
    scf
    ret nz

    dec bc
    ldh a, [$c2]
    rrca
    reti


    rlca
    xor h
    inc bc
    rst $28
    nop
    ld [hl], a
    nop
    cp $00
    rst $38
    nop
    ei
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
    cp $01
    cp $01
    rst $30
    ld [$e51a], sp
    ld a, $c1
    cp d
    ld b, h
    cp a
    ld b, b
    ld a, a
    add b
    ccf
    ret nz

    cp a
    ld b, b
    rst $28
    stop
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
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $02
    ld [bc], a
    ld [bc], a
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_051_730d

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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr z, jr_051_7330

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_051_730d:
    jr nc, jr_051_7340

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    scf
    jr c, jr_051_7351

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    inc sp
    ld b, c
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    inc sp
    ld c, c

jr_051_7330:
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
    ld d, a
    ld e, b
    ld e, c

jr_051_7340:
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    ld e, d
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

jr_051_7351:
    ld h, l
    ld h, [hl]
    ld h, a
    inc sp
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
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
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
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
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
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    and d
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    inc sp
    or d
    or e
    or h
    or l
    or [hl]
    or a
    ld e, $02
    inc sp
    inc sp
    inc sp
    inc sp
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc sp
    inc sp
    inc sp
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add $c7
    ret z

    ret


    jp z, Jump_000_02cb

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
    inc bc
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
    dec b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld bc, $0101
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
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0003
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    inc bc
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0003
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_051_7520

jr_051_7520:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0606
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
    ld bc, $0707
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
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$01
    ld hl, sp+$06
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
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh [$03], a
    add b
    rlca
    ldh a, [rP1]
    jp nz, Jump_000_0001

    rlca
    db $10
    inc c
    ld [hl+], a
    jr jr_051_75a4

    ld [hl], b
    inc d
    add sp, $68
    db $10
    ld c, b
    jr nz, @-$46

    nop

jr_051_75a4:
    jr jr_051_75a6

jr_051_75a6:
    inc e
    nop
    ld a, [de]
    inc b
    ld [$0d06], sp
    ld [bc], a
    inc c
    inc bc
    inc b
    inc bc
    ld b, $01
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    nop
    nop
    ld bc, $0000
    cp $00
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rrca
    ld bc, $070f
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    ld e, $01
    ldh [$09], a
    ld [$0808], sp

jr_051_75ee:
    inc h
    inc h

jr_051_75f0:
    inc [hl]
    inc [hl]
    ld a, h
    ld a, h
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

Jump_051_7600:
    ret nz

    rst $38
    ret nz

    ld a, a

jr_051_7604:
    ret nz

    ld a, [hl]
    ret nz

    ld a, h
    ld [c], a
    inc [hl]
    ld [c], a
    jr nc, jr_051_75ee

    jr c, jr_051_75f0

    inc a
    ldh a, [rNR32]
    ldh a, [rNR32]
    ldh a, [rNR34]
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    rlca
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $00fe
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    nop
    rrca
    inc bc
    rra
    rlca
    ld a, a
    rrca
    cp $3b
    db $fc
    or $f9
    rst $38
    ldh [$be], a
    ret


    rlca
    ret nz

    dec de
    add b
    ld sp, $ed00
    nop
    ret nc

    nop
    inc h
    nop
    ld c, b
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
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld sp, hl
    adc h
    nop
    jr c, jr_051_7604

    ld b, b
    add b
    ret nz

    nop
    ret nz

    nop
    and b
    ld b, b
    sub b
    ld h, b
    add b
    ld [hl], b
    adc b
    ld [hl], b
    call nz, $cc38
    jr nc, @-$02

    nop
    ld a, h
    nop
    inc a
    nop
    ld [$1000], sp
    nop
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $03ff
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
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    ccf
    ret nz

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
    rrca
    nop
    rra
    nop
    rst $08
    jr nc, jr_051_76f2

    jr nc, @+$09

    ld a, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc

jr_051_76ef:
    db $fc
    rst $38
    db $fc

jr_051_76f2:
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $fb
    ld a, [$fbfb]
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $fd
    ld a, l
    ld a, l
    ld a, l
    ld a, l
    ld a, [hl]
    ld a, [hl]
    cp d
    ld a, [hl-]
    xor d
    ld a, [hl+]
    or d
    ld [hl-], a
    or e
    inc sp
    jp c, $da1a

    ld a, [de]
    ret c

    jr jr_051_76f2

    add hl, de
    db $ed
    dec c
    rst $28
    rrca
    rst $28
    rrca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    rst $30
    rlca
    ei
    inc bc
    ei
    inc bc
    ei
    inc bc
    db $fd
    ld bc, $01fd
    db $fd
    ld bc, $01fd
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    rrca
    ld bc, $031f
    ld a, a
    dec c
    cp $3b
    db $fc
    inc d
    add hl, bc
    dec c
    jr nc, jr_051_76ef

    ld h, h
    ld a, [hl]
    add b
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld a, [$f900]
    nop
    ld h, c
    nop
    db $d3
    nop
    ei
    nop
    push hl
    nop
    ld b, c
    add b
    add c
    ld b, b
    and e
    ld b, b
    ld e, $60
    call c, Call_051_5920
    jr nz, jr_051_77ed

    nop
    inc l
    db $10
    adc b
    jr nc, jr_051_77a1

    jr jr_051_7783

    jr jr_051_7793

    inc c
    ld a, [de]

jr_051_7783:
    inc b
    ld e, $00
    ld e, $00
    rrca
    nop
    ld b, $00
    inc b
    nop
    nop
    nop
    cp $01
    db $fc

jr_051_7793:
    inc bc
    ld sp, hl
    rlca
    rst $30
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rlca

jr_051_77a1:
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
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
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
    ret nz

    rst $38
    ret nz

    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ccf
    jr nz, jr_051_782a

    jr nz, jr_051_782c

jr_051_77ed:
    jr nc, jr_051_782e

    jr nc, jr_051_7850

    ld d, b
    sbc a
    sub b
    rst $18
    ret c

    rst $18
    ret c

    rst $28
    add sp, -$11
    add sp, -$11
    add sp, -$61
    sbc h
    ld a, a
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fe
    cp $fc
    db $fc
    ldh a, [$f0]
    ld h, b
    ld h, b
    pop af
    ld [$30c1], sp
    adc h
    ld b, b
    sbc [hl]
    nop
    ld a, [hl]
    nop
    cp $00
    cp $00
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
    nop

jr_051_782a:
    ld a, a
    nop

jr_051_782c:
    ccf
    ld b, b

jr_051_782e:
    ld a, e
    nop
    rra
    jr nz, jr_051_7852

    jr nz, jr_051_7844

    jr nc, @+$2f

    db $10
    cp a
    nop
    rst $08
    db $10
    sub $08
    sub h
    ld [$0cc3], sp
    rlc h

jr_051_7844:
    ld [bc], a
    inc c
    ld b, h
    ld a, [bc]
    add e
    inc b
    daa
    nop
    add [hl]
    nop
    inc b
    nop

jr_051_7850:
    cp $01

jr_051_7852:
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    add e
    ld a, a
    rlca
    rst $38
    rra
    cp $3f
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
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
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]

jr_051_78aa:
    ldh a, [rIF]

jr_051_78ac:
    ld hl, sp+$07
    ld hl, sp+$07

jr_051_78b0:
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc

jr_051_78b9:
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
    ld bc, $00fc
    ldh a, [rSB]
    ldh [$03], a
    add b
    ld c, $00
    inc e
    nop
    ld [hl], $00
    jp nz, $8200

    db $fc
    ld bc, $00fe
    cp $00
    cp $00
    ld a, [hl]
    add b
    ld a, [hl]
    nop
    ld a, $40
    ccf
    ld b, b
    ld a, a
    nop
    ld a, a
    nop
    rra
    ld h, b
    rra
    jr nz, jr_051_7938

    jr nz, jr_051_78aa

    jr nc, jr_051_78ac

    jr nc, jr_051_78ac

    jr nc, jr_051_78b0

    db $10
    add h
    jr jr_051_78b9

    ld [$18c7], sp
    add e
    inc e
    dec bc
    inc d
    inc bc
    inc c
    ld b, $00
    jp Jump_051_4600


    ld bc, $038c
    db $10
    rrca

jr_051_7938:
    jr nz, jr_051_7959

    ret nz

    ccf
    add b
    ld a, a
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    rst $38
    rlca
    rst $38
    rrca
    rst $38

jr_051_7959:
    rra
    rst $28
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rra
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fc
    db $fc

jr_051_7978:
    pop af
    ldh a, [$c7]
    ret nz

    adc h
    add b
    add hl, sp
    nop
    rlca
    add b
    daa
    nop
    ld d, e
    inc b
    ld a, [c]
    inc b
    ld a, e
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ld a, [$7a01]
    add c
    db $fc
    ld bc, $01fc
    db $fd
    nop
    cp h
    ld b, c
    add hl, sp
    call nz, Call_051_413c
    ld e, $60
    ld e, $60
    ld e, [hl]
    jr nz, jr_051_79c5

    ld h, b
    rra
    ld h, b
    adc [hl]
    jr nc, @-$72

    jr nc, jr_051_79d3

    jr jr_051_7978

    nop
    ld h, a
    nop
    ld l, $01
    jr c, jr_051_79bf

    ld [hl], b
    rrca
    ld h, b
    rra
    ret nz

    ccf
    add c

jr_051_79bf:
    ld a, [hl]
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f

jr_051_79c5:
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    ld bc, $03ff
    db $fc

jr_051_79d3:
    rlca
    db $fd
    rrca
    rst $30
    rra
    rst $30
    ccf
    rst $18
    ld a, a
    rst $08
    rst $38
    ld e, a
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
    rst $38
    rst $38
    rst $38
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
    rra
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
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fe], a
    ret nz

    db $fd
    ret nz

    ldh a, [$80]
    ccf
    nop
    ld a, [hl]
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ld a, b
    add b
    rrca
    ldh a, [rSCX]
    inc a
    ld hl, sp+$07
    rst $30
    ld [$0018], sp
    ld c, b
    nop
    add b
    ld [$0804], sp
    dec a
    nop
    sub $08
    di
    inc c
    ei
    inc b
    ld a, [$fa04]
    inc b
    cp $00
    ld a, [$7904]
    add [hl]
    ld a, l
    add d
    ld a, l
    add d
    ld [hl], l
    add d
    ld h, l
    add d
    ld [hl], a
    add b
    rst $30
    ld [$0ff0], sp
    ld b, b
    rrca
    nop
    rrca
    nop
    inc bc
    sbc a
    ld l, h
    rra
    rst $20
    rrca
    pop af
    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    db $f4
    rrca
    db $f4
    rra
    ld [$dd3f], a
    ld a, a
    cp h
    rst $38
    ld [hl], d
    rst $38
    ld [$f5ff], a
    rst $38
    ld hl, sp-$01
    ld a, [$fdff]
    rst $38
    or $ff
    ei
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $03ff
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
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    call c, $f800
    nop
    cp b
    ld [$ff00], sp
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
    add hl, sp
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
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
    rrca
    rlca
    ldh a, [$71]
    ld c, $3e
    ld bc, $1068
    ld hl, sp+$00
    ldh a, [rP1]
    ret c

    nop
    cp b
    nop
    ld e, b
    nop
    jr jr_051_7b24

jr_051_7b24:
    ld [de], a
    ld [$0877], sp
    db $76
    ld [$08d6], sp
    rst $30
    ld [$0877], sp
    push af
    ld [$08f5], sp
    pop af
    inc c
    sub e
    inc c
    rlca
    ld [$806c], sp
    ld e, $e0
    inc c
    ldh a, [rIE]
    cp $ff
    rra
    rst $38
    rst $20
    rst $38
    ld a, b
    rst $38
    ld a, a
    sbc a
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
    add b
    rst $38
    ld bc, $81fe
    cp $03
    db $fc
    and a
    ld hl, sp+$4f
    ldh a, [$3f]
    ldh [$bd], a
    ret nz

    ld a, a
    ret nz

    ei
    add b
    or $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld [$08fc], sp
    db $fc

jr_051_7b7d:
    jr @-$02

    jr c, jr_051_7b7d

    ld a, b
    db $fd
    ld a, c
    db $fd
    ld sp, hl
    db $fd
    pop hl
    db $fd
    pop bc
    db $ed
    add c
    cp $00
    cp $00
    rst $38
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
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
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
    ld a, a
    nop
    nop
    nop
    nop
    ret nz

    nop
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
    nop
    ld c, b
    nop
    ccf
    ret nz

    rst $00
    jr c, @+$7a

    rlca
    ld a, a
    nop
    inc a
    nop
    jr c, jr_051_7c10

jr_051_7c10:
    jr nc, jr_051_7c12

jr_051_7c12:
    jr c, jr_051_7c14

jr_051_7c14:
    add sp, $10
    cp b
    nop
    xor b
    db $10
    add sp, $10
    xor b
    db $10
    jr z, jr_051_7c30

    ld [$0810], sp
    db $10
    ret z

    db $10
    xor d
    db $10
    jr z, @+$12

    inc l
    db $10
    inc l
    db $10
    inc l
    db $10

jr_051_7c30:
    rst $20
    nop
    rst $20
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld e, $ff
    and $ff
    ld hl, sp-$02
    db $fc
    ld a, $f8
    inc c
    ldh a, [rNR23]
    ldh [rNR23], a
    ldh [$32], a
    ret nz

    ld h, c
    add b
    jp nz, $cc00

    nop
    ret c

    nop
    cp b
    nop
    inc [hl]
    ld [$1864], sp
    call nz, $c238
    ld a, $82
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, d
    ld b, $7a
    inc b
    ld [hl], b
    dec b
    ld [hl], c
    dec c
    ld h, c
    dec e
    ld b, c
    dec e
    ld b, c
    add hl, sp
    ld bc, $017d
    dec a
    ld bc, $013d
    jr c, jr_051_7c78

jr_051_7c78:
    ld [hl-], a
    nop
    scf
    nop
    ld l, a
    nop
    ccf
    nop
    ldh [rIE], a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rlca
    nop
    rlca
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    cp $00
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
    ldh [rP1], a
    db $fc
    nop
    rra
    ldh [rSTAT], a
    ld a, $42
    dec a
    ld c, b
    jr nc, jr_051_7ce3

    db $10
    stop
    ld hl, $3910
    nop
    jr z, jr_051_7cdc

    jr z, @+$12

    jr jr_051_7cf0

    ld [$1830], sp
    jr nz, jr_051_7d2d

    jr nz, jr_051_7d0f

    nop
    inc bc
    jr nc, @+$2b

    db $10

jr_051_7cdc:
    ld a, [bc]
    ld sp, $3186
    ld h, c
    ld [bc], a
    dec hl

jr_051_7ce3:
    inc b
    ld [de], a
    inc c
    inc d
    ld [$100c], sp
    ld a, [de]
    jr nz, jr_051_7d5f

    nop
    and h
    ld b, b

jr_051_7cf0:
    ld e, b
    nop
    inc sp
    inc bc
    ld [hl], e
    inc hl
    di
    ld h, e
    or e
    ld h, e
    inc de
    db $e3
    ld de, $11e0
    ldh [rNR11], a
    ldh [rNR13], a
    ldh [$33], a
    ret nz

    ld sp, $6140
    nop
    ld h, c
    db $10
    ld h, c
    db $10
    ld h, c

jr_051_7d0f:
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    nop
    add e
    nop
    add e
    nop
    add a
    nop
    adc [hl]
    ld bc, $028d
    ret c

    ld [bc], a
    ret nc

    ld b, $e8
    inc b
    and l
    ld [$0890], sp
    ld [$2010], sp

jr_051_7d2d:
    db $10
    ld bc, $ff20
    ld a, a
    ld a, a
    rlca
    rrca
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    cp $00
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
    add b
    nop
    ldh a, [rP1]
    ccf
    ret nz

    rst $00
    jr c, jr_051_7dc4

    ld c, $3e
    ld bc, $03bc
    inc e
    inc bc
    inc e
    inc bc
    add hl, de
    ld b, $32

jr_051_7d5f:
    inc c
    ld [hl], $08
    push hl
    jr jr_051_7d2d

    ld sp, $21d2
    sub d
    ld h, c
    ld h, c
    adc d
    reti


    ld [bc], a
    sbc c
    ld [bc], a
    sbc c
    ld [bc], a
    ld c, c
    ld [de], a
    dec bc
    ld d, b
    ld c, e
    db $10
    dec bc
    ld d, b
    inc de
    ld b, b
    db $db
    nop
    jp c, Jump_000_2401

    nop
    and h
    add b
    db $e4
    ret nz

    db $e4
    ret nz

    db $ec
    ret nz

    db $ec
    ret nz

    db $ec
    ret nz

    and c
    add c
    sbc $01
    db $dd
    ld [bc], a
    call c, Call_000_1a02
    inc b
    add hl, sp
    inc b
    dec [hl]
    ld [$2853], sp
    rst $20
    db $10
    rst $10
    jr nz, jr_051_7df1

    and b

jr_051_7da4:
    xor h
    ld b, b

jr_051_7da6:
    sbc l
    ld b, b
    ld e, c
    add b
    inc sp
    add b
    inc sp
    nop
    ld [hl], a
    nop
    rst $30
    nop
    rst $28
    nop
    rrca
    nop
    ld e, [hl]
    ld bc, $00df
    rra
    nop
    sbc a
    nop
    daa
    nop
    rst $38
    rst $38
    rst $38
    rst $38

jr_051_7dc4:
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
    ret nz

    nop
    nop
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
    rst $38
    nop
    rst $38
    ld b, b
    and b
    jr nc, jr_051_7da4

    jr nz, jr_051_7da6

    ld b, b
    add b
    ld b, c
    add b
    add b
    nop
    ld b, h
    nop
    adc h
    nop
    nop

jr_051_7df1:
    ld h, a
    nop
    rst $20
    nop
    ld a, e
    nop
    inc sp
    nop
    inc hl
    nop
    ld h, [hl]
    nop
    ld b, a
    nop
    ld c, a
    nop
    dec de
    nop
    rrca
    nop
    sbc a
    nop
    ld c, a
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    ld [bc], a
    cp a
    nop
    pop af
    nop
    ldh a, [rP1]
    ld h, c
    nop
    pop hl
    nop
    jp Jump_051_4300


    add b
    add e
    nop
    inc sp
    nop
    ld h, [hl]
    ld bc, $016e
    adc $01
    sbc h
    inc bc
    sbc h
    inc bc
    add hl, sp
    ld b, $fc
    inc bc
    ld a, e
    inc b
    ei
    inc b
    cp $01
    ld a, [c]
    dec c
    rst $18

jr_051_7e39:
    jr nz, jr_051_7e39

    ld bc, $01fe
    cp d
    ld b, l
    ld l, d
    add l
    ld l, l
    add d
    di
    inc c
    cp e
    ld b, h
    rst $28
    db $10
    cp a
    nop
    call nc, $f32a
    inc c
    rst $38
    rst $38
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
    nop
    ld bc, $0000
    nop
    nop
    ret nz

    nop
    ld hl, sp+$00
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
    rst $28
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $30
    nop
    rst $28
    nop
    db $e4
    scf
    nop
    daa
    nop
    ld l, a
    nop
    rst $28
    nop
    rst $18
    nop
    db $dd
    ld [bc], a
    rst $38
    nop
    cp a
    nop
    or a
    ld [$047b], sp
    or $09
    push de
    ld a, [hl+]
    xor $11
    db $db
    inc h
    cp h
    ld b, e
    ld d, h
    xor e
    ld e, b
    and a
    ld l, a
    sub b
    or c
    ld c, d
    ld l, [hl]
    sub c
    sub $29
    ld e, d
    and l
    xor c
    ld d, [hl]
    db $dd
    ld [hl+], a
    sub e
    ld l, h
    ld [hl], e
    adc h
    and a
    ld e, b
    sub a
    ld c, b
    ld l, a
    sub b
    ld [c], a
    add hl, de
    adc [hl]
    ld sp, $10ef
    cp a
    nop
    cp a
    nop
    ld l, c
    ld b, $3f
    ld b, b
    ld a, [de]
    ld b, l
    ld a, [$fc05]
    inc bc
    cp [hl]
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
    ldh [rIE], a
    rra
    ld bc, $0001
    nop
    nop
    add b
    nop
    ld hl, sp+$00
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
    nop
    ei
    nop
    ld a, [$e600]
    nop
    push hl
    nop
    rst $00
    nop
    rlc b
    add c
    nop
    add e
    nop
    and d
    reti


    nop
    ld a, [$fb00]
    nop
    ld a, [c]
    nop
    ld hl, sp+$00
    push af
    nop
    push af
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $18
    jr nz, @-$53

    ld d, h
    and c
    ld e, [hl]
    ld a, [hl+]

jr_051_7f39:
    push de
    ld b, c
    cp [hl]
    add c
    ld a, [hl]
    ld b, c
    cp [hl]
    ld h, h
    sbc e
    ld bc, $4bfe
    or h
    inc bc
    db $fc
    add l
    ld a, d
    sbc d
    ld h, l
    inc d
    db $eb
    rla
    add sp, -$43
    ld b, d
    and l
    ld e, d
    or $09
    or $09
    ld b, d
    cp l
    call nz, $cc3b
    inc sp
    sbc l
    ld h, d
    xor b
    ld d, a
    ld [$1cf7], sp
    db $e3
    db $10
    rst $28
    jr nc, jr_051_7f39

    ld d, b
    adc a
    ld l, b
    sub a
    ld h, b
    sbc a
    rst $38
    rst $38
    rst $38

Jump_051_7f73:
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
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
    rst $28
    nop
    rst $28
    nop
    rst $08
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    or $00
    push hl
    nop
    and h
    nop
    add h
    nop
    ld c, b
    nop
    ld [$00ff], sp
    cp $01
    ld a, [$5905]
    and [hl]
    ld d, l
    xor d
    ld e, l
    and d
    reti


    ld h, $38
    rst $00
    and b
    ld e, a
    ldh [$1f], a
    ret nz

    ccf
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    add c
    ld a, [hl]
    add d
    ld a, l
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    inc b
    ei
    inc b
    ei
    dec b
    ld a, [$fb04]
    ld a, [bc]
    push af
    add hl, bc
    or $0a
    push af
    ld a, [bc]
    push af
    rla
    add sp, $13
    db $ec
    ld d, $e8
    rra
    ldh [$2f], a
    ret nc

    or a
    ld c, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
