SECTION "ROM Bank $076", ROMX[$4000], BANK[$76]

    db $ec
    inc de
    ld a, [$4805]
    or a
    xor $11
    reti


    ld h, $fc
    inc hl
    pop af
    ld l, $d4
    dec hl
    pop af
    cpl
    sbc l
    ld h, a
    dec h
    rst $38
    and l
    ld a, a
    dec [hl]
    rst $28
    rlca
    rst $38
    rlca
    rst $38
    daa
    rst $38
    rlca
    rst $38
    daa
    rst $38
    cpl
    rst $38
    rst $18
    rst $38
    ld l, a
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
    db $fd
    ei
    db $d3
    rst $38
    call c, $877f
    rst $38
    pop hl
    rst $38
    jp Jump_076_6fff


    rst $38
    rst $38
    rst $38
    sub $00
    nop
    nop
    ld b, b

jr_076_404f:
    nop
    ld a, [c]
    db $ed
    or $cb
    adc e
    rst $30
    xor [hl]
    rst $18
    db $76
    adc a
    db $e4
    inc bc
    sbc d
    push hl
    call c, $8de3
    ld [hl], d
    push de
    ld [c], a
    db $fc
    di
    ld a, c
    rst $30
    add $39
    sub l
    ld a, [bc]
    and l
    jp z, $e040

    add b
    ld b, b
    ld c, b
    ldh a, [$c0]
    rst $38
    ld [c], a
    rst $38
    ld [hl], a
    rst $38
    rlca
    rst $38
    inc d
    rst $28
    ld a, a
    add c
    add b
    rst $38
    dec b
    jp $fdf2


    ld d, c
    cp $00
    rst $38
    ld b, a
    rst $38
    add $ff
    ret nc

    rst $38
    add hl, bc
    rst $30
    ld b, c
    rst $38
    rlca
    ld a, a
    ld h, a
    sbc a
    ld [hl], b
    rst $38
    rst $38
    db $fc
    db $fd
    cp $ff
    rst $38
    adc h
    ld [hl], a
    dec b
    cp $20
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    inc b
    rst $38
    ld [hl], c
    rst $38
    ldh a, [$f0]
    sub b
    ldh a, [$90]
    ld [hl], b
    or b
    ld [hl], b
    ret nc

    jr nc, @-$6e

    ld [hl], b
    ret nc

    jr nc, jr_076_404f

    ld [hl], b
    sbc b
    ld a, b
    jp nc, $d432

    inc [hl]
    sbc b
    ld a, b
    db $db
    dec sp
    sub b
    ld [hl], b
    reti


    ld a, c
    ld d, b
    ldh a, [$d1]
    ld sp, $36d6
    sbc h
    ld a, h
    sbc b
    ld a, b
    ld de, $9af1
    ld a, d
    db $10
    ldh a, [rNR32]
    db $fc
    rla
    ldh a, [rNR11]
    ldh a, [rNR14]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$90]
    ldh a, [$80]
    ldh [$80], a
    ldh [rP1], a
    ldh [$90], a
    ldh [$90], a
    ldh [$82], a
    ldh [$80], a
    ld h, b
    add c
    ld h, c
    add b
    ld h, b
    ld [$00e8], sp
    ldh [$50], a
    or b
    ld [bc], a
    ld [c], a
    add h
    ld h, h
    inc a
    db $e4
    scf
    ldh [$3f], a
    ld [c], a
    sbc a
    ldh [$8f], a
    ldh [$8e], a
    ldh [$bf], a
    ldh [$df], a
    pop hl
    rst $38
    db $e3
    or a
    pop hl
    jp c, $cfe0

    ldh [$df], a
    push hl
    adc $ee
    adc $c0
    call nz, $c6c0
    ret nz

    add b
    ret nz

    add d
    ret nz

    add c
    ret nz

    add b
    ret nz

    sub b
    ret nz

    ld a, a
    call nz, $c007
    add h
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    inc e
    ret nz

    db $fc
    ret nz

    ld bc, $0000
    nop
    jr nz, jr_076_4150

jr_076_4150:
    ld h, b
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    dec sp
    rst $38
    ld a, a
    rst $38
    ld [$b1f7], sp
    ret nz

    ld h, c
    sbc h
    jr c, jr_076_41e1

    ld a, c
    ccf
    ld sp, $450f
    add e
    ld h, c
    add e
    ld a, c

jr_076_416b:
    add a
    dec c
    di
    ld h, h
    inc bc
    ld bc, $6001
    nop
    rra
    ldh [$e5], a
    cp $f0
    rst $28
    rst $30
    ldh [$f0], a
    ldh [$bb], a
    ldh [$be], a
    ld b, c
    jr jr_076_416b

    or a
    ld c, a
    ld [hl], a
    rrca
    adc [hl]
    rrca
    rst $28
    rlca
    dec hl
    rlca
    db $fd
    inc bc
    pop de
    xor a
    add c
    rst $38
    adc d
    rst $38
    cp b
    rst $38
    ld e, $fc
    adc d
    ld a, h
    rst $00
    jr c, jr_076_41f5

    add c
    inc d
    ei
    inc bc
    rst $38
    ld b, e
    cp a
    rlca
    rst $38
    inc hl
    sbc a
    db $db
    rlca
    and l
    rst $18
    dec c
    rst $38
    ld b, b
    xor e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_076_41b9:
    rst $38
    nop
    rst $38
    inc c
    rst $30
    rrca
    rst $38
    db $e4
    dec de
    db $e4
    dec de
    pop af
    ld c, $20
    rst $18
    ld b, e
    cp l
    inc [hl]
    bit 7, a
    add a
    or a
    ld c, h
    xor e
    ld d, l
    nop
    rst $38
    add l
    ld a, d
    ld [bc], a
    db $fd
    jr nz, jr_076_41b9

    ret z

    scf
    adc c
    db $76
    or d
    ld e, l
    dec b

jr_076_41e1:
    ei
    add sp, $17
    db $fc
    inc bc
    ld a, l
    add d
    or $01
    or $09
    ld a, [c]
    dec c
    ld sp, hl
    ld b, $ff
    nop
    db $fc
    inc bc
    push af

jr_076_41f5:
    ld a, [bc]
    push af
    ld a, [bc]
    jp $c43c


    dec sp
    ld h, d
    sbc l
    dec hl
    call nc, $fc83
    add l
    ld a, [$e01f]
    ld e, a
    and b
    rst $00
    cp b
    db $fc
    xor e
    ld [$6ff7], sp
    cp h
    swap l
    cp c
    ld b, a
    adc h
    ld a, a
    add sp, $57
    push de
    ld l, a
    ld a, e
    or a
    pop de
    xor [hl]
    add h
    ld a, e
    jp z, $9afd

    db $ed
    cp b
    rst $38
    dec a
    rst $38
    adc d
    ld a, l
    ld [$2fff], sp
    rst $18
    adc d
    ld a, a
    xor [hl]
    ld a, e
    ld e, l
    ld a, [$7cd1]
    ld d, [hl]
    add sp, $0d
    ldh a, [$b6]
    ld c, c
    ld e, b
    rst $20
    ld l, d
    sub l
    db $db
    ld a, $fc
    dec de
    pop af
    rrca
    adc l
    ld [hl], a
    xor c
    ld a, a
    inc a
    db $eb
    add d
    ld a, a
    adc e
    ld a, a
    ei
    rst $38
    rst $18
    cp $db
    rst $38
    dec a
    rst $18
    ld [hl], $cd
    scf
    rst $08
    db $fd
    inc bc
    sbc [hl]
    ld h, c
    ld e, b
    rst $38
    add $ff
    ld [hl], h
    rst $38
    or [hl]
    ld hl, sp+$28
    ldh a, [$e5]
    ld a, [$f8f1]
    add a

jr_076_426f:
    ld hl, sp+$4d
    or d
    or a
    ld a, b
    ret c

    jr nz, jr_076_426f

    nop
    push af
    ld a, [bc]
    pop hl
    rra
    adc $31
    sbc [hl]
    ld [hl], c
    add hl, de
    and $39
    ret nz

    db $76
    adc b
    db $ec
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $00
    add c
    rst $38
    db $fc
    rst $38
    rst $38
    rst $18
    ld l, a
    sbc a
    ld d, a
    rrca
    or l
    ld c, a
    ld c, a
    rst $30
    jr nc, @+$01

    ld b, a
    ldh a, [$1f]
    ldh [$2e], a
    pop bc
    cp e
    ld b, b
    call c, $fd03
    inc bc
    sub h
    dec bc
    cp $01
    ld a, c
    add [hl]
    ld b, d
    db $fd
    sub d
    ld l, a
    cp b
    ld e, a
    inc d
    db $eb
    xor $17
    db $e4
    dec de
    inc a
    rst $38
    inc b
    ei
    ld c, l
    or a
    jp $6abf


    sub l
    and b
    ld e, a
    rlca
    ld sp, hl
    ld [$4ef7], sp
    or c
    and l
    ld e, d
    ld c, d
    or l
    sbc d
    ld a, l
    dec de
    db $ec
    dec a
    db $db
    ld [$02f7], sp
    db $fd
    add d
    ld a, a
    and d
    ld a, l
    inc h
    ei
    rst $08
    or b
    adc h
    ld [hl], b
    or e
    ld c, h
    di
    inc c
    cp e
    ld b, h
    rst $18
    nop
    rst $28
    db $10
    rst $28
    db $10
    rrca
    ldh a, [$59]
    cp [hl]
    daa
    ret c

    ld a, a
    add b
    rst $38
    nop
    cp $01

Jump_076_4300:
    db $fc
    inc bc
    db $ed
    ld [de], a
    ld a, [$ff05]
    nop
    rst $18
    jr nz, @-$04

    inc b
    ld [hl], e
    adc h
    push hl
    rra
    add hl, sp
    rst $00
    and e
    call c, Call_076_7ed1
    ld e, b
    rst $28
    jr nz, @+$01

    sbc d
    rst $28
    inc c
    rst $30
    adc d
    push af
    ld a, b
    add a
    ei
    inc b
    dec sp
    call nz, $6996
    add d
    ld a, l
    sub l
    xor $a4
    rst $18
    sub h
    ei
    ld de, $5eef
    pop hl
    ld sp, $aec6
    ld d, c
    ld a, [hl]
    ld bc, $00ef
    rra
    ldh [$fb], a
    ld l, h
    push hl
    ld e, d
    ld l, c
    cp $08
    rst $38
    and b
    ld e, a
    inc h
    db $db
    ld e, b
    rst $20
    inc sp
    adc $15
    jp z, $ef12

    ld c, d
    rst $38
    ld c, b
    rst $38
    inc d
    db $eb
    and h
    ld e, e
    ld l, h
    ei
    ld a, $ff
    xor h
    rst $38
    ld sp, $87ff
    ld a, a
    dec h
    ld a, [de]
    rst $08
    ccf
    db $ec
    ld a, a
    ld e, b
    cp $68
    rst $38
    inc c
    rst $38
    or b
    rrca
    ld c, a
    nop
    ld a, $00
    ld a, a
    ld h, b
    ld [hl], e
    nop
    rst $20
    nop
    or [hl]
    ld c, a
    ld l, [hl]
    sbc a
    cp a
    rra
    rst $28
    rra
    jp $9a3f


    rlca
    ld e, b
    add a
    ld a, a
    ret nz

    ld hl, sp-$39
    db $fc
    db $e3
    db $fc
    di
    ld h, b
    rst $38
    adc b

jr_076_4395:
    rst $38
    rrca
    ldh [$e6], a
    ld hl, sp+$7e
    db $fc
    or e
    ld a, h
    rst $18
    jr nz, jr_076_43a1

jr_076_43a1:
    rst $38
    nop
    rst $38
    inc c
    rst $30
    ld b, [hl]
    cp a
    ld d, $ff
    ld hl, sp-$01
    or b
    rst $38
    jr z, @+$01

    add d
    ld a, h
    add h

jr_076_43b3:
    ld a, [hl]
    ld l, h
    sbc e
    ld a, c
    rlca
    db $fd
    inc bc
    and d
    ld e, l
    sub b
    ld a, a
    add b
    rst $38
    ld hl, $20de
    rst $18
    jr nc, jr_076_4395

    ld [de], a
    db $ed
    ld e, $e1
    jr c, jr_076_43b3

    ld h, b
    cp a
    jp hl


    ld d, $64
    sbc a
    dec hl
    call nc, $9d6a
    ld a, [hl+]
    db $fd
    nop
    rst $38
    adc b

jr_076_43db:
    rst $30
    and l
    ld a, [$bd42]
    jr z, @+$01

    inc d
    rst $38
    ld d, l
    rst $38
    jr nc, @+$01

    ld de, $a0ff
    rst $38
    ld hl, sp-$01
    add c
    cp $59
    and [hl]
    sbc [hl]
    ld h, c
    rst $28
    ld de, $1de2
    ret nz

    ld a, a
    pop bc
    ccf
    add hl, bc
    or $7a

Jump_076_43ff:
    sub l
    add a
    rst $38
    add e
    rst $38
    inc c
    rst $38
    ld d, $ff
    inc b
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld d, b
    rst $38
    ld [hl], c
    adc a
    jr c, jr_076_43db

    ld d, h
    xor a
    adc b
    rst $30
    rra
    ldh [$b4], a
    ld c, e
    ld [hl+], a
    db $dd
    nop
    rst $38
    nop
    rst $38
    adc a
    ld a, a
    sbc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    dec [hl]
    rst $38
    add b
    ld a, a
    ld c, $f1
    add c
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld a, d
    rst $38
    ld b, d
    rst $38
    ld l, l
    rst $38
    daa
    rst $18
    ld a, c
    add a
    ld hl, sp-$09
    xor a
    ldh a, [$c6]
    ld sp, hl
    reti


    and $c0
    rst $38
    ld [c], a
    sbc l
    sub b
    rrca
    db $10
    rrca
    ld a, e
    inc b
    call $ce32
    ld sp, $7d82
    ld h, l
    cp $46
    cp a
    ldh a, [rIE]
    ld sp, hl
    rst $38
    inc sp
    db $fc
    nop
    ldh a, [$c3]
    add b
    call z, Call_000_1903
    rlca
    add l
    rrca
    ld b, b
    and a
    rst $38
    nop
    xor b
    ld [hl], a
    ret nz

    ccf
    sbc e
    rst $20
    dec [hl]
    db $e3
    adc [hl]
    ld [hl], c
    xor h
    ld [hl], e
    ld l, $11
    or b
    pop bc
    jp hl


    ldh a, [$e3]
    db $fc
    rla
    ld hl, sp-$3f
    ld a, $97
    ld l, b
    rst $30
    ld a, b
    db $fc
    ei
    ld a, [hl]
    rst $38
    xor h
    rst $38
    ld e, $ff
    ld c, h
    cp a
    jp hl


    ld e, $e8
    rra
    sbc c
    ld b, $c0
    nop
    ld c, c

jr_076_44a1:
    rst $38
    ld b, e
    rst $38
    adc c
    rst $38
    add c
    rst $38
    add c
    rst $38
    nop
    rst $38
    inc h
    ei
    ld h, c
    sbc $bf
    nop
    ld a, c
    nop
    rst $38
    nop
    db $f4
    rrca
    ld c, $ff
    ld [bc], a

jr_076_44bb:
    db $fd
    pop af
    ld c, $79
    add [hl]
    add hl, bc
    or $01
    cp $5e
    db $eb
    ld b, $ff
    ld h, [hl]
    sbc a
    rlca
    rst $38
    ld [de], a
    db $fd
    adc c
    ld [hl], a
    ld [de], a
    db $fd
    db $76
    db $fd
    ld e, b
    xor a
    and b
    ld a, a
    cp l
    jp nz, Jump_000_00ff

    ld a, a
    add b
    ld a, [hl]
    add c
    ld sp, hl
    ld b, $fe
    ld bc, $53ac
    ld h, [hl]
    sbc e
    and $1b
    jr nc, jr_076_44bb

    jp nz, $ec3f

    inc de
    and e
    ld e, h
    or d
    ld e, l
    ld h, b
    rst $38
    add c
    ld a, [hl]
    ld a, [bc]
    push af
    ld b, b
    cp a
    push de
    dec hl
    ld d, [hl]

Call_076_44ff:
    adc c
    rst $30
    ld [$21de], sp
    call nc, $ee2b
    ld de, $1fe0
    add c
    ld a, [hl]
    db $ed
    ld [de], a
    xor c
    ld d, [hl]
    sbc c
    and $7e
    add c
    ld a, [hl]
    add c
    rst $18
    jr nz, jr_076_44a1

    ld [hl], a
    jp hl


    rra
    ld a, [c]
    dec c
    and b
    ld e, a
    ld h, b
    rst $38
    db $ec
    rst $38
    cp $ff
    cp $ff
    cp a
    rst $38
    ccf
    rst $38
    ld bc, $0bff
    db $f4
    nop
    rst $38
    nop
    rst $38
    jp nz, $803d

    ld a, a
    add h
    ld a, e
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld e, a
    cp a
    cp a
    ld e, a
    cp a
    ld e, a
    sbc a
    ld a, a
    ccf
    rra
    cp a
    rra
    inc [hl]
    dec bc
    pop af
    rrca
    ld a, [$bf05]
    ld b, b
    and e
    ld e, h
    db $eb
    inc d
    or a
    ld l, b
    inc bc
    db $fc
    db $fc
    nop
    inc sp
    call z, Call_000_1fe2
    ld d, b
    ccf
    ldh [$1f], a
    nop
    rst $38
    sub b
    rst $38
    cp $ff
    db $fc
    rst $38
    ld d, l
    ld a, [hl-]
    ld c, b
    or a
    add hl, de
    ldh [rSTAT], a
    cp [hl]
    ret nz

    rst $38
    inc c
    rst $38
    ld e, h
    adc a
    pop af
    rst $08
    jp c, $92e5

    db $fd
    ld [hl], $f9
    ld a, $f1
    ld h, b
    pop af
    sbc [hl]
    ld h, b
    pop bc
    ld a, $e8
    rra
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ld l, d
    add c
    ld [$38f0], sp
    db $fc
    sbc h
    ld a, [hl]
    dec d
    ld c, $06
    ld sp, hl
    inc c
    di
    ld c, l
    or d
    ld b, c
    cp [hl]
    ret c

    daa
    ld a, b
    rlca
    db $ed
    ld e, $e4
    rra
    ldh a, [rIF]
    ld e, c
    ld h, $60
    rra
    ld a, c
    adc a
    ld de, $f9ef
    ld d, $3f
    ret nz

    dec h
    jp c, Jump_076_5fb8

    db $ec
    rra
    add hl, bc
    or $c9
    ld [hl], $2f
    ldh a, [$7f]
    cp b
    ld d, a
    cp b
    rlca
    ld hl, sp+$6f
    ret c

    ld l, h
    sub c
    xor e
    db $f4
    adc c
    ld a, [hl]
    ld [hl-], a
    rst $18
    dec de
    db $fd
    ld a, [de]
    rst $28
    add hl, sp
    sbc $23
    db $fc
    ld b, e
    cp h
    ccf
    ldh [$5f], a
    and b
    cp $01
    rst $28
    ld bc, $03d8
    ld a, a
    add b
    cp a
    ld b, d
    ld b, [hl]
    db $fd
    ld c, [hl]
    cp a
    ld b, $ff
    add $7f
    ld d, b
    cp a
    nop
    rst $38
    ld e, a
    xor l
    add h
    ld a, e
    inc d
    rst $38
    adc e
    ld a, h
    ld l, [hl]
    cp l
    sbc h
    ld h, a
    add sp, $17
    call c, Call_076_7e23
    add c
    cp h
    ld b, e
    ret nc

    cpl
    ld bc, $55ff
    ei
    add hl, bc
    rst $30
    ccf
    pop bc
    inc hl
    rst $18
    add a
    ld a, a
    inc bc
    rst $38
    rra
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
    ld c, h
    cp a
    inc b
    ei
    dec l
    sub $21
    sbc $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp $feff


    rst $38
    db $fd
    cp $ff
    db $fc
    ei
    db $fc
    ldh a, [rIE]
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $20
    ld a, a
    ld b, e
    inc a
    sbc a
    ld h, b
    add h

jr_076_465b:
    ld b, e
    rrca
    nop
    ld a, l
    ld [bc], a
    adc a
    ld a, a
    cp a
    rst $38
    ld e, a
    cp a
    ld b, c
    rst $38
    jp nz, Jump_076_49fd

    cp $cc
    ccf
    ld a, $cf
    adc d
    ld a, a
    rra
    rst $38
    ld l, $df
    ld sp, hl
    db $fc
    ld a, b
    rst $38
    jr nz, jr_076_465b

    or d
    ld b, c
    rst $08
    rlca
    add a
    rrca
    jp Jump_000_2307


    rst $00
    sub d
    pop hl
    pop hl
    ldh a, [$a3]
    ld a, b
    db $e3
    nop
    call c, $bde3
    di
    ld e, b
    cp a
    jp $d9bf


    rst $20
    ld c, l
    di
    sbc [hl]
    ld h, c
    ld e, a
    jr nz, jr_076_46b0

    ld c, $00
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f

jr_076_46b0:
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_076_46d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_076_46e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_076_46f3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_076_4703

    ld [hl-], a

jr_076_46d3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_076_4713

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_076_46e3:
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

jr_076_46f3:
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

jr_076_4703:
    ld h, e
    db $10
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

jr_076_4713:
    ld [hl], d
    db $10
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
    ld a, [bc]
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    db $10
    push hl
    ld a, [bc]
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $11
    rst $28
    ldh a, [$f1]
    ld a, [c]
    di
    ld a, [bc]
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $10
    db $fd
    cp $ff
    nop
    ld bc, $020a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_076_47e0

    ld a, [de]
    dec de
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    inc e
    dec e
    ld e, $1f
    jr nz, jr_076_47f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_076_4803

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_076_47e0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_076_47f3:
    nop
    nop
    nop
    nop
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

jr_076_4803:
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0200
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld b, $01
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld b, $01
    nop
    ld bc, $0501
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0101
    ld bc, $0602
    ld b, $01
    nop
    ld bc, $0001
    inc bc
    inc bc
    inc bc
    nop
    ld bc, $0101
    ld bc, $0606
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0100
    ld bc, $0101
    nop
    nop
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
    ld bc, $0101
    ld bc, $0303
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
    ld bc, $0101
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
    ld bc, $0501
    inc bc
    ld b, e
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    dec bc
    nop
    ld [$0808], sp
    ld [$0908], sp
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
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    dec bc
    dec bc
    dec bc
    dec bc
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$8808], sp
    rst $38
    xor b
    rst $38
    ldh [rIE], a
    call nz, $84ff
    rst $38
    add h
    rst $38
    add h
    rst $38
    ld c, [hl]
    rst $38
    ld b, $ff
    add [hl]
    rst $38
    add $ff
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    ld d, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [$18ff], sp
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    cp b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret c

    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    push af
    rst $38
    di
    rst $38
    set 7, a
    sbc a
    rst $38
    sbc a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld [hl], e
    rst $38
    ld a, [de]
    rst $38
    sbc e
    rst $38
    inc de
    rst $38
    dec de
    rst $38
    dec c
    rst $38
    inc c
    rst $38
    nop
    rst $38
    ld [$0cff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    inc c
    rst $38
    jr @+$01

    db $10
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add a
    rst $38
    add [hl]
    rst $38
    add [hl]
    rst $38
    add a
    rst $38
    ld b, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    sbc a
    rst $38
    db $fd
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
    push af
    rst $38
    adc d
    rst $38
    call $e7ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp e
    rst $38
    or a
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc

Jump_076_49fd:
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $f4
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    pop hl
    rst $38
    add sp, -$09
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_076_4a3c:
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
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $40ff
    rst $38
    nop
    rst $38
    ld c, c
    rst $38
    ld c, c
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    jp nz, $c0ff

    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    ld a, h
    rst $38
    db $fc
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
    ccf
    rst $38
    ccf
    rst $38
    inc sp
    rst $38
    ld sp, $31ff
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    push hl
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    ld [hl], d
    rst $38
    ld [hl], d
    rst $38
    ld [hl], c
    rst $38
    ld a, c
    rst $38
    ld a, e
    rst $38
    ld a, d
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    db $fd
    rst $38
    call c, Call_076_7cff
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    rrca
    rst $38
    ld c, a
    cp a
    adc $3f
    ld c, [hl]
    cp a
    inc c
    rst $38
    adc l
    ld a, [hl]
    adc b
    ld a, a
    add e
    ld a, h
    ld b, e
    cp h
    add d
    ld a, l
    srl h
    dec bc
    db $fc
    ld bc, $01fe
    cp $07
    ld hl, sp+$05
    ld a, [$fc23]
    dec bc
    db $f4
    nop
    ld a, $00
    cp [hl]
    inc bc
    cp h
    inc bc
    db $fc
    ld [bc], a
    cp h
    rlca
    ld hl, sp+$0f
    or b
    rra
    ldh [$3e], a
    pop bc
    ld h, $d9
    ld [hl], h
    adc e
    ld [hl], h
    adc e
    ld hl, sp+$07
    cp b
    rlca
    sbc b
    daa
    adc h
    inc sp
    ld [bc], a
    add hl, sp
    inc b
    add hl, sp
    ld b, $29
    rlca
    jr c, @+$03

    ld l, $01
    ld l, $02
    dec l
    ld [bc], a

jr_076_4b4f:
    dec l
    rlca
    inc a
    rlca
    or h
    rlca
    xor h
    inc bc
    cp h
    add hl, bc
    xor h
    ld bc, $00ec
    db $ec
    nop
    cp h
    rlca
    db $fc
    rlca
    db $fc
    ld l, c
    cp [hl]
    ld a, [hl-]
    rst $38
    ld e, b
    cp a
    dec c
    cp $0e
    rst $38
    jr nz, jr_076_4b4f

    inc b
    pop af
    nop
    or b
    nop
    ldh a, [rP1]
    ld hl, sp+$40
    ld hl, sp+$50
    ld hl, sp-$20
    cp $f8
    rst $38
    ld a, [$fbfd]
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $fb
    db $fc
    ld a, [$f8fd]
    rst $38
    db $fc
    rst $38
    cp $fd
    cp $fd
    rst $30
    db $fc
    db $fd
    cp $fd
    cp $f8
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    pop hl
    rst $38
    jp hl


    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ld h, l
    ld a, [$fee1]
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    ldh [rIE], a
    ld e, h
    rst $38
    db $e4
    rst $38
    or c
    rst $38
    di
    rst $38
    pop hl
    rst $38
    di
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    add hl, de
    rst $38
    dec l
    rst $38
    dec b
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $38
    ld bc, $03ff
    db $fd
    ld bc, $11ff
    rst $38
    ld de, $11ff
    rst $38
    ld bc, $01ff

jr_076_4be9:
    rst $38
    add c
    rst $38
    sub c
    rst $38
    jr nc, @+$01

    inc d
    rst $38
    dec d
    cp $1c
    rst $38
    inc e

jr_076_4bf7:
    rst $38
    ld e, a
    db $fc
    sbc l
    cp $1f
    db $fc
    dec e
    cp $0e
    rst $38
    inc h
    rst $38
    dec h
    rst $38
    add b
    ld a, a

jr_076_4c08:
    ld [hl], c
    adc [hl]
    db $e3
    inc e
    ld bc, $10fe
    rst $28

jr_076_4c10:
    sbc c
    ld h, a

jr_076_4c12:
    db $fc
    inc bc
    db $fc
    inc bc
    ldh [$1f], a
    push hl
    rra
    ld [c], a
    rra
    or $0f
    add [hl]
    ld a, a
    stop
    inc a
    nop
    ld l, $00
    ld l, e
    nop
    ld a, [c]
    nop
    and $00
    cp $00
    ld c, h
    or b
    inc c
    ldh a, [$0d]
    ldh a, [rNR33]

jr_076_4c35:
    ldh [$09], a
    ldh a, [$28]
    ret nc

    add hl, hl
    ret nc

    dec bc
    or b
    sub d
    jr nz, jr_076_4c50

    jr nz, jr_076_4c08

    jr nz, jr_076_4be9

    ld b, b
    sbc l
    ld b, b
    sbc b
    ld b, b
    ld c, b
    add b
    ld b, b
    add b
    jr nz, jr_076_4c10

jr_076_4c50:
    jr nc, jr_076_4c12

    or b
    ld b, b
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, b
    nop
    add sp, $00
    jr c, jr_076_4c9e

    db $10
    jr z, jr_076_4c61

jr_076_4c61:
    dec a
    nop
    ld e, $80
    ld e, $04
    ld e, $04
    ld d, $04
    adc [hl]
    nop
    rlca
    jr nz, jr_076_4bf7

    jr nz, jr_076_4c35

    nop
    jp nz, Jump_076_4300

    adc h
    nop
    ld l, b
    nop
    ld [$0005], sp
    ldh [rP1], a
    ld a, [c]
    db $10
    cp d
    ld [$08bd], sp
    cp h
    nop
    cp [hl]
    nop
    cp [hl]
    add b
    dec hl
    nop
    rrca
    nop
    dec c
    nop
    ld b, c
    nop
    ld c, c
    nop
    adc b
    nop
    adc c
    nop
    adc b
    nop
    ret c

    ld [bc], a
    ret z

jr_076_4c9e:
    nop
    ret nz

    nop
    call nc, $fc14
    ld e, c
    cp $00
    cp $1b
    rst $38
    inc bc
    cp a
    inc bc
    or a
    inc bc
    or e
    ld h, l
    cp e
    rst $10
    dec sp
    cp $33
    push af
    dec sp
    or l
    ld a, e
    jr nc, @+$01

    add sp, -$01
    sbc b
    rst $28
    db $d3
    rst $28
    push af
    rst $28
    add l
    rst $38
    add h
    rst $38
    add d
    rst $38
    add b
    rst $38
    add d
    db $fd
    adc d
    push af
    add b
    push af
    nop
    push hl
    nop
    db $f4
    nop
    db $e4
    inc b
    db $e4
    nop
    rst $20
    ld b, $ef
    rrca
    cp $15
    ld a, [$f0ae]
    cp $e0
    db $db
    rst $20
    call z, $91f3
    xor $d0
    xor a
    ld e, a
    add b
    rrca
    ldh a, [rPCM34]
    ld [$807f], sp
    cp b
    rst $38
    adc [hl]
    ld a, a
    and $1f
    add [hl]
    ld a, a
    ld [hl], $cf
    xor $1f
    rrca
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rrca
    rra
    rrca
    rra
    rra
    ccf
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld [hl], $ff
    rst $38
    ld hl, sp-$02
    ld sp, hl
    ei
    ld sp, hl
    db $fc
    ei
    cp $7b
    ld hl, sp-$01
    db $fc
    rst $38
    db $f4
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    db $fc
    ei
    cp $f1
    ld hl, sp-$09
    ld a, [$ebb5]
    cp l
    ei
    sbc a
    xor e
    rst $18
    sub a
    rst $28
    rla
    rst $28
    ld d, e
    xor a
    sbc e
    ld h, a
    ld sp, hl
    rlca
    inc de
    rst $28
    rst $18
    rst $28
    rlca
    ld [$2c00], sp
    ld [bc], a
    inc l
    ld b, e
    inc e
    inc bc
    inc d
    nop
    inc de
    nop
    inc de
    nop
    rla
    db $fc
    inc bc
    add sp, $17
    jp hl


    ld d, $f0
    rrca
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    dec sp
    ld b, b
    dec sp
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    cp a
    nop
    cp a
    add b
    rst $38
    ld bc, $83fe
    db $fc
    inc bc
    db $fc
    adc e
    db $f4
    rra
    ldh [rTMA], a
    ld e, b
    ld c, $70
    ld c, $70
    ld c, $70
    ld c, $70
    inc b
    ld hl, sp+$07
    ld hl, sp-$29
    ld hl, sp+$15
    ld a, [$7c03]
    dec l
    ld a, d
    inc h
    ei
    dec a
    ld a, [c]
    inc e
    ld a, [c]
    ld bc, $07fe
    ld hl, sp+$37
    ld hl, sp+$75
    ld hl, sp+$36
    ld sp, hl
    or a
    ld hl, sp-$4d
    db $fc
    dec sp
    db $fc
    cp b
    db $fc
    dec hl
    db $fc
    ld l, [hl]
    rst $38
    ld c, c
    cp $7b
    db $fc
    ei
    db $fc
    ld hl, sp-$01
    ld a, [$a0ff]
    cp $a0
    cp $a0
    db $fd
    dec a
    rst $38
    ld [de], a

jr_076_4dcf:
    rst $38
    db $10
    rst $38
    ld h, e
    rst $38
    inc bc
    rst $38
    jr nz, @+$01

    ld [hl], d
    rst $38
    inc bc
    cp $c7
    ccf
    ld b, $79
    jp c, $4931

    jr nc, jr_076_4e44

    jr nz, @+$1a

    db $fc
    ld h, h
    sbc b
    add $38
    dec de
    db $e4
    sbc l
    ld h, d
    push bc
    ld a, [hl-]
    jp hl


    ld e, $21
    sbc $0c
    rst $38
    nop
    rst $38
    inc c
    di
    jr c, @-$37

    jr nc, jr_076_4dcf

    ld b, b
    cp a
    ret nz

    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld [$fcff], a
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $e4
    rst $38
    cp b
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld h, $ff
    add $f9
    ld d, h
    ei
    inc d
    ei
    add sp, -$29
    ld [hl-], a
    pop bc
    ld bc, $0cf0
    ldh a, [$4c]
    ldh a, [$bc]
    ld b, b
    ld a, h
    add b
    jr nc, @-$3e

    inc d
    ldh [$94], a
    ldh [$98], a

jr_076_4e3b:
    ldh [$8c], a

jr_076_4e3d:
    ldh a, [$c7]
    ld hl, sp+$7f
    add b
    ccf
    ret nz

jr_076_4e44:
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rP1]
    rst $18
    nop
    ld a, a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $10
    jr z, jr_076_4e98

    ret nz

    inc e
    ld h, e
    ld c, $71
    nop
    rst $38
    nop
    ld a, a
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $db
    nop
    rst $38
    ld b, $f9
    dec e
    db $e3
    jr c, jr_076_4e3b

    jr c, jr_076_4e3d

    cpl
    ret nz

    daa
    ret nz

    daa
    ret nz

    inc b
    ret nz

    call z, $9300
    rst $28
    adc a
    rst $38
    ld [bc], a
    db $fd
    ld [hl], $c9
    ld a, [c]
    dec c
    rst $00
    ld bc, $01c6
    push hl
    inc bc
    scf
    jp $df23


    and a
    rst $18
    sbc a
    rst $38

jr_076_4e98:
    rrca
    rst $38
    ld l, a
    sbc a
    ld h, a
    sbc a
    ld c, l
    cp e
    dec c
    ld bc, $0901
    cpl
    ld bc, $01fb
    ld c, l
    inc hl
    ld d, l
    inc bc
    sub c
    inc bc
    reti


    inc hl
    cp a
    rra
    rst $38
    rra
    or e
    rra
    ld c, l
    inc sp
    ret


    scf
    ei
    rra
    rst $18
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    inc bc
    ld a, a
    inc sp
    ld a, a
    inc hl
    cp a
    ld hl, $00bf
    sbc a
    nop
    xor $02
    rst $28
    ld [bc], a
    rst $38
    add e
    rst $38
    nop
    rst $38
    add b
    ld a, a
    pop af
    rrca
    ld a, a
    add c
    ld a, $c1
    ld a, h
    add e
    and $01
    add hl, sp
    ret nz

    ld l, a
    db $10
    dec de
    nop
    ld b, a
    nop
    rla
    nop
    ld b, $00
    rst $18
    nop
    rra
    ldh [$75], a
    adc d
    inc a
    jp $08f7


    inc a
    jp $f10e


    ld h, [hl]
    ld sp, hl
    inc bc
    db $fc
    ld bc, $0ffe
    ldh a, [rNR10]
    ldh [$8c], a
    ldh a, [$f3]
    db $fc
    ld a, c
    cp $81
    ld a, [hl]
    rst $28
    db $10
    push af

jr_076_4f13:
    ld a, [bc]
    ld [hl], c
    adc [hl]
    inc de
    db $ec
    ld c, $f1
    ld [$00f7], sp
    rst $18
    nop
    cp a
    db $eb
    rst $30
    ld c, $f3
    sub d
    ld l, a
    db $ec
    inc de
    add h
    dec de
    ld b, $19
    ld a, [de]
    ld bc, $0106
    ld c, $01
    ld c, $01
    ld b, $01
    ld b, $01
    ld c, $01
    ld c, $01
    inc b
    inc bc
    cp h

jr_076_4f3f:
    inc bc
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    cp $01
    add sp, $17
    jr c, jr_076_4f13

    nop
    add c
    nop
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld b, c
    inc e
    db $e3
    nop
    rst $38
    nop
    cp $00
    rst $38
    inc c
    di
    add hl, de
    rst $20
    xor h
    ld d, e
    rst $28
    db $10
    cp b
    nop
    add hl, bc
    ldh [$2f], a
    nop
    ld c, e
    daa
    add e
    ld b, b
    rst $18
    nop
    pop bc
    jr c, jr_076_4f3f

jr_076_4f77:
    jr c, @-$7b

    jr c, jr_076_4f98

    ld [bc], a
    ld h, l
    nop
    dec h
    nop
    ld bc, $1800

jr_076_4f83:
    nop
    ld [$0200], sp
    nop
    inc bc

jr_076_4f89:
    nop
    ld b, $00
    rrca
    rst $38
    ld bc, $81ff
    ld a, [hl]
    adc [hl]
    ld [hl], c
    cp a
    ld b, b
    cp a
    ld b, b

jr_076_4f98:
    rst $38
    nop
    cp $01
    ld a, h
    add e
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, b
    add a
    jr nc, jr_076_4f77

    jr nz, jr_076_4f89

    jr z, jr_076_4f83

    and b
    rst $18
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    rst $00
    rst $38
    rst $38
    rst $38
    dec a
    dec a
    inc l
    inc l
    nop
    rst $38
    inc bc
    db $fc
    ret


    cp $20
    rst $38
    nop
    rst $38
    pop hl
    rst $38
    ei
    rst $38
    ld a, $ff
    jr nc, jr_076_5051

    inc h
    ei
    db $fc
    inc bc
    sbc [hl]
    ld h, c
    rst $30
    ld [$e01f], sp
    ld l, [hl]
    ldh a, [$63]
    inc e
    cpl
    rst $18
    ld c, [hl]
    ccf
    db $dd
    ld c, $fe
    rrca
    rst $38
    rrca
    ld hl, $00df
    rst $38
    db $fc
    inc bc
    cp c
    inc bc
    ld [hl], l
    inc bc
    db $ed
    inc bc
    ld hl, sp+$07
    ld a, e
    rlca
    ret nz

    ccf
    inc de
    db $fc
    rst $18
    nop
    add $01
    rst $10
    nop
    rst $30
    nop
    db $fc
    inc bc
    db $10
    rst $28
    nop
    ei
    nop
    pop bc
    nop
    ld bc, $efd2
    call c, $80ef
    rst $38
    sub b
    rst $28
    adc c
    rst $38
    inc d
    ei
    add hl, hl
    rst $30
    db $e3
    rst $38
    cpl
    ret nz

    rra
    ldh [$3c], a

jr_076_5025:
    jp $fc03


    rlca
    ld hl, sp+$47
    add b
    ld l, a
    add b
    cp $00
    ret nz

    ld hl, $7080
    add b
    ld a, a
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    and e
    ld e, h
    ld a, a
    add b
    jr nz, jr_076_5025

    nop
    rst $38
    nop
    add a
    nop
    db $e3
    nop
    rst $38
    nop
    rst $38
    and b

jr_076_5051:
    rst $18
    add hl, sp
    add $78
    add a
    ld a, [hl]
    add c
    ld [hl], h
    add e
    ld l, d
    add a
    db $e4
    dec bc
    ld d, h
    dec bc
    and h
    add hl, de
    ld b, c
    inc a
    ld a, a
    nop
    ld a, [bc]
    ld de, $03f0
    ld [hl], b
    rlca
    and c
    ld b, e
    pop bc
    inc hl
    ld a, h
    add e
    or h
    ld c, e
    push bc
    dec sp
    db $dd
    inc hl
    ld c, e
    or a
    rst $00
    ccf
    rst $38
    rst $38
    cp $ff
    ld a, [c]
    ld c, $1a
    and $fa
    ld b, $cb
    scf
    adc b
    ld [hl], h
    ld [$0af4], sp
    or $08
    db $f4
    ld [$09f4], sp
    push af
    ld [$04f4], sp
    db $fc
    ld b, $fe
    ld b, $fe
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    pop hl
    pop hl
    ld [$04f7], sp
    ei
    dec b
    cp $c0
    ccf
    ld [$84ff], sp
    rst $38
    and $ff
    add hl, bc
    rst $38
    ld h, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    daa

jr_076_50c7:
    ld [$0168], sp
    cp $01
    adc $01
    xor [hl]
    ld d, c
    cp $f9
    or $ff
    ccf
    rst $38
    rrca
    rst $38
    sbc h
    db $e3
    di
    db $fc
    rra
    rst $38
    jr jr_076_50c7

    set 6, h
    pop hl
    cp $08
    rst $30
    xor a
    ldh a, [rIF]
    ldh a, [$5f]
    and b
    cp $01
    db $fd
    inc bc
    ld h, c
    sbc a
    rlca
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    db $dd
    nop
    ld sp, hl
    nop
    db $fc
    ld hl, sp+$3c
    ld hl, sp+$15
    ld [hl], b
    adc b
    ret nc

    jr z, @-$3e

    ld hl, $01c0
    nop
    jp $8402


    ld [bc], a
    dec b
    nop
    add a
    jp nz, Jump_000_2234

    call nc, Call_076_7c82
    nop
    rst $28
    nop
    ld a, [c]
    nop
    or e
    inc e
    inc bc
    jr nc, jr_076_5133

    pop hl
    ld e, $80
    ld a, a
    db $db
    inc h
    or c
    ld c, [hl]
    and $19
    db $e4
    dec de
    call nz, $9c3b

jr_076_5133:
    ld h, e
    ld d, b
    xor a
    nop
    rst $38
    ld b, e
    cp h
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
    jr @+$01

    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    nop
    rst $38
    ld b, e
    cp a
    ld c, [hl]
    cp a
    sub b
    ld l, a
    push af
    dec bc
    inc bc
    db $fc
    inc e
    rst $38
    jr @-$17

    ld c, [hl]
    or e
    ld bc, $e8fe
    rla
    and $19
    ld c, a
    or b
    rst $30
    ld hl, sp+$07
    ld hl, sp-$0a
    add hl, bc
    db $e4
    dec de
    nop
    rst $38
    call z, $e0ff
    rst $38
    ldh [rIE], a
    ld [c], a
    rst $38
    ld [hl], $ff
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    call c, $8323
    ld a, a
    add c
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38
    ld d, b
    cp a
    sub [hl]
    rst $38
    inc b
    rst $38
    add h
    ld a, a
    inc l
    rst $38
    db $fd
    rst $38
    sbc a
    rst $38
    sbc l
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    adc l
    rst $38
    sbc h
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    ld bc, $0cff
    rst $38
    dec c
    cp $18
    rst $38
    ld d, c
    cp a
    nop
    rst $38
    db $10
    rst $38
    ld e, [hl]
    cp a
    db $f4
    rrca
    inc a
    jp $c1be


    ld b, h
    ei
    inc b
    rst $38
    ld l, e
    sub b
    inc hl
    ret nz

    add e
    db $fc
    pop bc
    cp $f0
    rst $38
    sbc b
    ld h, a
    add c
    cp $07
    rst $38
    ld c, [hl]
    ld bc, $00ff
    rst $20
    nop
    ld a, a
    add b
    rst $38
    nop
    add e
    ld a, h
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_076_51f3:
    rst $38
    db $e3
    rst $38
    ld h, b
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    db $e4
    inc de
    rst $08
    nop
    pop bc
    nop
    rst $38
    nop
    ccf
    nop
    sbc h
    inc bc
    ei
    inc b
    ld a, [de]
    inc b
    ld a, l
    nop
    rst $28
    nop
    rlca

jr_076_5215:
    ld [$0807], sp
    ld a, h
    inc bc
    ld [hl], $c1
    adc a
    ld b, b
    rst $30
    nop
    add $38
    ld l, h
    inc de
    pop af
    nop
    inc bc
    ldh [$bd], a
    ld b, d
    jr c, jr_076_51f3

    jr jr_076_5215

    nop
    rst $38
    ret nz

    ccf
    ld a, h
    add e
    nop
    rst $38
    inc h
    rst $38
    add h
    ld a, h
    nop
    cp $00
    rst $38
    jr @+$01

    jr c, @+$01

    ld a, [hl]
    rst $38
    rrca
    rst $38
    ld h, c
    rst $38
    rlca
    rst $38
    ld d, a
    rst $38
    cp $ff
    rst $38
    rst $38
    add [hl]
    rst $38
    rlca

jr_076_5253:
    rst $38
    ld b, $ff
    nop
    rst $38
    ld de, $85ff
    rst $38
    ld [bc], a
    rst $38
    jr c, @-$1f

    ld d, b
    cp a
    jr nc, jr_076_5253

    ld d, b
    rst $28
    db $e3
    ld e, a
    rlca
    rst $18
    sbc l
    ld c, a
    add c
    ld a, a
    add d
    ld a, a
    ld [bc], a
    rst $38
    and e
    ld a, a
    di
    ccf
    add c
    ld a, a
    nop
    rst $38
    add c
    rst $38
    ld hl, $23ff
    rst $38
    and e
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld l, b
    sbc a
    jp hl


    rra
    db $eb
    rra
    rst $20
    rra
    pop hl
    rra
    ldh [$1f], a
    ld de, $1fff
    rst $38
    sbc a
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    sub a
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    ld c, b
    rst $38
    add hl, bc
    rst $38
    ld l, e
    rst $38
    ld a, c
    rst $38
    ld d, h
    rst $38
    ret nz

    rst $38
    ld [hl+], a
    db $fd
    jr nz, @+$01

    pop bc
    rst $38
    add a
    rst $38
    db $10
    rst $38
    add $3f
    sub b
    ld a, a
    ret nz

jr_076_52bf:
    rst $38
    nop
    rst $38
    jr nz, jr_076_52bf

    ld bc, $04ff
    rst $38
    xor a
    ld a, a
    ret nc

    cpl
    inc e
    db $e3
    and $01
    add h
    inc bc
    or c
    inc bc
    cp c
    inc bc
    db $fd
    inc bc
    rst $38
    nop
    rlca
    ld hl, sp-$04
    inc bc
    dec d
    ld [$ff30], a
    jp c, $fb3d

    inc e
    inc a
    rst $18
    ld c, c
    rst $38
    and a
    ld a, b
    pop af
    cp $f3
    ei
    db $eb
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    sbc b
    rst $20
    rst $28
    ldh a, [$86]
    ld sp, hl
    ld [$f0ff], sp
    add hl, sp
    ld c, b
    db $fc
    ld d, e
    db $fc
    ld [bc], a
    rst $38
    rst $10
    ld a, $2a
    sub $28
    ld d, $10
    ld c, $06
    nop
    add e
    nop
    sbc b
    ld h, b
    adc h
    ld [hl], b
    sbc [hl]
    nop
    ld [hl], l
    add d
    adc a
    ld [hl], b
    rst $30
    ld [$629d], sp
    ld a, b
    add a
    cp $01
    or d
    ld c, l
    ldh [$1f], a
    ret nz

    ld sp, $78a0
    db $ec
    ccf
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld c, $ff
    inc b
    rst $38
    ld b, [hl]
    rst $38
    inc bc
    rst $38
    dec a
    rst $38
    ld [hl], c
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld h, c
    rst $38
    cp c
    rst $38
    sbc b
    rst $38
    pop de
    rst $38
    pop bc
    rst $38
    inc h
    rst $38
    push af
    rst $38
    di
    rst $38
    push hl
    rst $38
    and a
    rst $38
    rla
    rst $38
    sbc l
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    ld hl, sp-$01
    cp h
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    push hl
    rst $38
    db $e4
    rst $38
    or a
    rst $38
    cp c
    rst $38
    ld sp, hl
    rst $38
    rst $08
    rst $38
    db $dd
    rst $38
    dec c
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    sub a
    rst $38
    db $fd
    rst $38
    push de
    rst $38
    call nz, $cdff
    rst $38
    rst $18
    rst $38
    cp $ff
    call c, $bcff
    rst $38
    inc e
    rst $38
    sbc h
    rst $38
    rst $28
    rst $38
    cp $ff
    db $ec
    rst $38
    call z, $c8ff
    rst $38
    call z, $e5ff
    rst $38
    daa
    rst $38
    ld h, h
    rst $38
    ld [bc], a
    db $fd
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld [$34ff], sp
    rst $38
    jr nc, @+$01

    ld [$00ff], sp
    rst $30
    nop
    rst $00
    nop
    ei
    sbc b
    rst $20
    ld [bc], a
    db $fd
    dec d
    add sp, -$24
    ld h, b
    jp c, $f925

    rst $20
    adc a
    rst $30
    ldh [rIE], a
    db $10
    rst $38
    ld [bc], a
    rst $38
    jp $e03f


    rra
    ld a, h
    add b
    ld h, b
    rst $38
    ld c, $ff
    rrca
    rst $38
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld c, a
    or b
    call nz, $e6ff
    rst $38
    db $fd
    di
    rst $30
    ld hl, sp-$09
    ld hl, sp+$7b
    db $fc
    add d
    ld a, l
    add hl, de
    rst $20
    jp z, Jump_000_3335

    call z, $048b
    ld c, h
    add c
    ld l, c
    nop
    inc l
    db $10
    ld b, $00
    inc de
    ld bc, $0112
    ld sp, hl
    inc bc
    jp $5f3f


    ccf
    ld e, a
    ccf
    rst $18
    ccf
    rst $28
    rra
    sbc [hl]
    ld a, a
    ldh [$71], a
    ld [hl], b
    cp $bc
    rst $38
    rlca
    rst $38
    ld bc, $40d7
    ld h, c
    ld h, b
    rst $28
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    inc a
    rst $38
    ld bc, $63ff
    rst $38
    rst $28
    rst $38
    ccf
    rst $38
    and [hl]
    rst $38
    jp nz, $b2ff

    rst $38
    di
    cp $b2
    rst $38
    rla
    rst $38
    dec d
    rst $38
    dec a
    rst $38
    ld a, l
    rst $38
    ld e, c
    rst $38
    db $fd
    rst $38
    push af
    rst $38
    pop af
    rst $38
    di
    rst $38
    xor e
    rst $38
    sub [hl]
    rst $38
    cp [hl]
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    and a
    rst $38
    add a
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    ld a, [$fcff]
    rst $38
    rst $38
    rst $38
    db $db
    rst $38
    pop de
    rst $38
    ld de, $15ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ldh a, [rIE]
    ld l, [hl]
    rst $38
    ld c, h
    rst $38
    ld c, [hl]
    rst $38
    set 7, a
    di
    rst $38
    ld a, c
    rst $38
    ld a, h
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp a
    rst $38
    xor h
    rst $38
    db $e4
    rst $38
    xor b
    rst $38
    ld [$88ff], sp
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld [$43ff], sp
    rst $38
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ld e, b

jr_076_54b9:
    rst $20
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    add b
    rst $38
    ldh a, [$f8]
    jr nz, jr_076_54b9

    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    pop bc
    inc sp
    add $3f
    ld a, a
    db $fc
    or a
    ld hl, sp+$5f
    ldh [$1f], a
    ldh [rNR11], a
    cp $02
    rst $38
    dec e
    db $e3
    dec b
    ei
    add c
    ld e, a
    nop
    db $fd

jr_076_54e4:
    jr jr_076_54e4

    add d
    rst $38
    xor $ff
    ld a, $ff
    rst $20
    rra
    ret nz

    inc sp
    ld h, b
    sub c
    add c
    di
    ld bc, $00ff
    ei
    nop
    ld a, h
    db $10
    rst $38
    cp $ff
    cp $ff
    ld c, h
    di
    add hl, de
    and $01
    cp $10
    rst $28
    dec hl
    call nc, $057a
    ld a, $01
    ld a, [hl]
    add c
    ld a, a
    ldh a, [rNR13]
    db $fc
    rrca
    ldh a, [$87]
    ret z

    add [hl]
    ld sp, hl
    pop bc
    rst $20
    rst $38
    rst $38
    cp c
    rst $38
    xor $1f
    ldh a, [rIF]
    ld d, b
    xor a
    sub d
    rst $28
    ldh a, [rIE]
    ld l, a
    ld hl, sp+$17
    add sp, $0e
    pop af
    ld d, d
    xor l
    ld b, h
    cp e
    ld d, $ef
    ld l, b
    rst $30
    rst $20
    ld sp, hl
    sub d
    db $ed
    and l
    sbc $82
    rst $38
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    pop bc
    jp $c3c3


    rst $08
    rst $08
    rst $28
    rst $28
    rst $28
    rst $28
    cp $ff
    cp $ff
    sbc [hl]
    sbc a
    sbc [hl]
    sbc a
    sbc $df
    sbc $df
    ld a, [hl]
    ld a, a
    ld l, [hl]
    ld l, a
    ld l, [hl]
    ld l, a
    ld l, e
    ld l, [hl]
    di
    cp $ef
    ld [$faf7], a
    ld c, $0b
    ld a, [$faff]
    rst $38
    jp c, $dadf

    rst $18
    jp c, $dadf

    rst $18
    jp c, $dadf

    rst $18
    ld e, [hl]
    ld e, a
    ld c, [hl]
    ld c, a
    ld c, a
    ld c, a
    ld h, a
    ld h, a
    ld l, a
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    add a
    rst $38
    or a
    rst $38
    sub a
    rst $38
    rlca
    rst $38
    ld e, $ff
    ld a, [de]
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    rlca

jr_076_55c1:
    rst $38
    rst $30
    rrca
    call nz, Call_076_623f
    db $fd
    ld sp, $71fe
    cp $c8
    rst $38
    ld h, h
    sbc e
    ldh [$1f], a
    sub b
    ld a, a
    and b
    ld a, a
    ld bc, $92ff
    ld l, a
    ld l, l
    cp $c1
    cp $a6
    reti


    jr nz, jr_076_55c1

    inc bc
    rst $38
    add $3f
    ld e, h
    and e
    inc bc
    db $fc
    pop af
    ld c, $6a
    sub a
    and e
    rst $18
    nop
    rst $38
    inc [hl]
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    rla
    rst $38

jr_076_55fa:
    adc h
    di
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$7f]
    add b
    ld a, [hl]
    add c
    ld a, h
    add e
    call c, $bf03
    ld b, c
    dec c
    db $e3
    sbc a
    ld h, e
    adc e
    ld a, a
    pop bc
    ld a, $01
    cp $3c
    jp nz, $8778

    add h
    ei
    sbc [hl]
    pop hl
    ld a, $c1
    sub a
    ld h, c
    add a
    ld [hl], c
    rst $20
    add hl, de
    sbc c
    rlca
    db $d3
    rrca
    add hl, hl
    rst $18
    push af
    ld hl, sp+$7c
    ld hl, sp+$7a
    db $fd
    inc a
    rst $38
    dec e
    cp $0e
    ld e, a
    rrca
    rst $18
    ld c, $9f
    jr jr_076_55fa

    ld [$0078], sp
    nop
    add b
    add c
    ld bc, $0703
    rrca
    rrca
    rra
    ld a, $7f
    db $fc
    rst $38
    di
    rst $38
    db $e4
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    add sp, -$01
    add sp, -$01
    ld a, [c]
    rst $38
    db $fc
    rst $38
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
    jr @+$01

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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld c, b
    rst $38
    ld c, $ff
    db $10
    rst $38
    nop
    rst $38
    inc b
    ei
    add c
    rst $38
    ld [hl], $cf
    add hl, sp
    rst $00
    dec sp
    rst $00
    rst $20
    rra
    sbc a
    ld a, a
    rra
    rst $38
    rst $20

jr_076_56c1:
    rra
    ld bc, $7dff
    rst $38
    ret nz

    rst $38
    ld h, b
    sbc a
    add e
    ld a, a
    sbc d
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, b
    rst $38
    jr nc, @+$01

    xor $11
    pop bc
    ccf
    dec a
    cp $fc
    rst $38
    rst $00
    rst $38
    inc de
    rst $28
    or a
    rst $08
    add e
    rst $38
    ret nz

    rst $38
    jp Jump_076_58fc


    rst $20
    ret nc

    ld l, a
    ld [hl], a
    rst $38
    nop
    rst $38
    ld a, $c1
    sbc h
    db $e3
    ld [$b4f7], a
    rst $38
    or e
    db $fc
    add e
    ldh a, [rTAC]
    ldh a, [$b7]
    ld c, b
    and h
    ld c, e
    ld [hl], e
    adc h
    and $18
    daa
    jr jr_076_56c1

    dec bc
    adc h
    inc bc
    db $e4
    inc bc
    inc c
    di
    inc a
    jp $c0bf


    rst $38
    ret nz

    cp $e1
    ld l, [hl]
    pop af
    jr nc, @+$01

    jr jr_076_573a

    ld [$0c08], sp
    inc c
    inc b
    inc b
    nop
    ld bc, $0701
    rlca
    rra
    ld c, a
    ld a, a
    cp [hl]
    ld a, a
    ld hl, sp-$01
    pop af
    rst $38
    ldh [rIE], a
    add b
    rst $38

jr_076_573a:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $02
    db $fd
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $10fe
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld a, a
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    rrca
    rst $38
    dec [hl]
    rst $08
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    add h
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    db $10
    rst $38

jr_076_57a8:
    ld hl, sp-$01
    sbc l
    cp $1e
    rst $38
    ld hl, sp-$01
    or $f9
    ld [$33f7], sp
    rst $08
    ld b, a
    cp a
    rra
    rst $38
    ldh a, [rIE]
    add c
    ld a, [hl]
    nop
    rst $38
    inc bc
    rst $38
    add b
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
    ret nz

    ccf
    rst $38
    rst $38
    rst $20
    rst $38
    ret nc

    rst $28
    ld c, $81
    and h
    inc bc
    xor c
    rlca
    cp c
    rlca
    ld [hl], c
    rrca
    di
    rrca
    rst $28
    rra
    rst $08
    ccf
    adc h
    ld a, a
    ld d, b
    rst $28
    inc sp
    rst $08
    ld c, l
    add [hl]
    ld l, c
    add [hl]
    ld c, $00

jr_076_57f2:
    or e
    nop
    or e
    nop
    ld [c], a
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    or c
    inc bc
    ld bc, $0707
    rra
    rrca
    ccf
    ld a, $ff
    ld a, b
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    rst $18
    jr nz, jr_076_57f2

    jr z, jr_076_57a8

    ld [hl], h
    ld bc, $00fe
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ldh [$1f], a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    adc c
    db $76
    ld a, [hl-]
    push bc
    add hl, hl
    sub $56
    xor c
    dec hl
    call nc, $ab54
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jp $81ff


    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $20
    rra
    cpl
    rst $18
    rrca
    rst $38
    db $fd
    rst $38
    dec de
    rst $38
    ld b, $ff
    nop
    rst $38
    ld h, b
    sbc a
    ld l, b
    sub a
    ld b, b
    cp a
    sub b
    ld l, a
    ld [bc], a
    db $fd
    ld h, e
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld h, h
    ei
    daa
    rst $18
    rra
    rst $38
    ld a, h
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    add d
    db $fd
    call nc, $c0eb
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
    ei
    rst $38
    and $ff
    ld c, [hl]
    cp a
    rst $18
    ccf
    db $e3
    rra
    ld bc, $0301
    inc bc
    inc b
    rlca
    ld bc, $070f
    ccf
    inc e
    ld a, a
    jr c, @+$01

    add sp, -$01
    ldh a, [rIE]
    ret nz

    rst $38
    nop

jr_076_58e5:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a

Jump_076_58fc:
    ret nz

    ccf
    ldh [$1f], a
    and b
    ld e, a
    ld b, b
    cp a
    jr nz, jr_076_58e5

    nop
    rst $38
    ld b, $ff
    ld c, $ff
    ld h, $df
    dec hl
    rst $18
    ld [bc], a
    rst $38
    ld [$00ff], sp
    rst $38
    inc c
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    rrca
    rst $38
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
    rra
    rst $38
    rra
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
    rst $38
    rst $38
    sbc a
    rst $38
    and b
    rst $18
    pop bc
    rst $38
    pop hl
    rst $38
    add b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret


    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    call c, Call_000_07ff
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    db $fc
    rst $38
    ld bc, $03fe
    db $fc
    inc a
    jp $ff00


    ld bc, $03ff
    rst $38
    nop
    rst $38
    inc b
    ei
    jp c, Jump_000_3fe5

    ret nz

    ret nz

    ccf
    nop
    rst $38
    jr nc, @+$01

    ld a, [$f8ff]
    rst $38
    ldh [rIE], a
    ld d, h
    ld bc, $006e
    nop
    inc bc
    rlca
    rrca
    jr @+$01

    ld [hl], b
    rst $38
    ld h, b
    rst $30
    inc h
    rst $38
    or a
    or a
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    dec b
    inc bc
    rrca
    inc bc
    dec sp
    rlca
    and c
    rst $18
    ld sp, $f1ff
    rst $38
    sub c
    rst $38
    ld sp, $11ff
    rst $38
    ld de, $09ff
    rst $38
    adc c
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld [$49ff], sp
    cp a
    add hl, hl
    rst $18
    ld c, b
    cp a
    adc b
    ld a, a
    ld [$0fff], sp
    ld hl, sp+$4f
    cp b
    rlca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    dec bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
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

jr_076_59f7:
    db $fc
    dec b
    cp $05
    cp $4d
    cp $2d
    cp $c7
    cp $e6
    rst $38
    and $ff
    xor $ff
    xor $ff
    and $ff
    or $ff
    cp $ff
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $83ff
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $24ff
    rst $18
    sbc c
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    jr c, jr_076_59f7

    pop hl
    rra
    pop bc
    ccf
    rlca
    rst $38
    ld l, a
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    adc [hl]
    ld a, a
    inc bc
    rst $38
    ld c, $ff
    ld de, $03fe
    db $fc
    rrca
    ldh a, [$1f]
    ldh [$39], a
    cp $fd
    cp $f9
    cp $fd
    cp $79
    cp $7d
    cp $79
    cp $f9
    cp $f9
    cp $f9
    cp $fc
    rst $38
    ld hl, sp-$01
    xor h
    rst $18
    xor h
    rst $18
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    or $ff
    or $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fd
    rst $38
    ld a, [$f9ff]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, a
    rst $38
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, [hl]
    cp $ff
    ld a, a
    rst $38
    ld a, a
    cp $7e
    cp $7e
    cp $7e
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ld [bc], a
    db $fd
    pop de
    rst $28
    dec c
    di
    ld [hl-], a
    rst $38
    ld b, l
    cp $01
    cp $20
    rst $38
    ld hl, sp-$01
    cp $ff
    cp $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ld sp, hl
    cp $f8
    rst $30
    ld a, b
    rst $38
    cp $ff
    cp a
    rst $38
    rra
    rst $38
    inc b
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    cpl
    rst $38
    add a
    ld a, a
    add a
    ld a, a
    add e
    ld a, a
    rst $00
    ccf
    ret nz

    ccf
    ret nz

    ccf
    db $e3
    rra
    db $eb
    rra
    srl a
    dec bc
    rst $38
    dec bc
    rst $38
    add hl, bc
    rst $38
    ld bc, $02ff
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    or [hl]
    rst $38
    or [hl]
    rst $38
    and [hl]
    rst $38
    add [hl]
    rst $38
    ld h, $ff
    cpl
    rst $38
    xor e
    rst $38
    add hl, de
    rst $38
    dec de
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld h, e
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    pop hl
    cp $60
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    jr nz, @+$01

    inc de
    rst $38
    ld bc, $3fff
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add [hl]
    rst $38
    call nz, $f8ff
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add c
    rst $38
    add e
    rst $38
    add a
    rst $38
    add a
    rst $38
    adc [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    ldh a, [rIE]
    db $f4
    rst $38
    ld l, e
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rla
    rst $38
    rst $38
    rst $38
    dec e
    rst $38
    ld a, a
    rst $38
    ld a, [c]
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [c]
    rst $38
    or $ff
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_076_5be1:
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    jr @+$01

    add b
    rst $38
    nop
    rst $38
    add d
    ld a, l
    and $19
    inc c

jr_076_5bf1:
    di
    db $10
    rst $38
    ld b, $ff
    nop
    rst $38
    ld [$85f7], sp
    rst $38
    rst $38
    rst $38
    rst $38

Jump_076_5bff:
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    add b
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    jr nz, jr_076_5bf1

    dec d
    cp $e2
    rst $38
    add b
    rst $38
    jr c, jr_076_5be1

    ld hl, sp+$07
    cp b
    ld b, a
    cp $01
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
    jr jr_076_5c53

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_076_5c63

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_076_5c73

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_076_5c83

    ld [hl-], a

jr_076_5c53:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_076_5c93

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_076_5c63:
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

jr_076_5c73:
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

jr_076_5c83:
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

jr_076_5c93:
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
    jr jr_076_5d53

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_076_5d63

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_076_5d73

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_076_5d83

    ld [hl-], a

jr_076_5d53:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_076_5d93

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld bc, $0000

jr_076_5d63:
    nop
    nop
    nop
    nop
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

jr_076_5d73:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_076_5d83:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_076_5d93:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    ld b, $06
    ld b, $01
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0206
    ld b, $06
    ld b, $01
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0601
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
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
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$00c0], sp
    adc $00
    or [hl]
    nop
    db $ec
    nop
    db $e4
    nop
    ld bc, $0000
    nop
    nop
    ldh [rSCY], a
    cp l
    add hl, bc
    rst $38
    dec c
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    rra
    rst $38
    ld c, $ff
    inc c
    rst $38
    add hl, de
    rst $38
    inc [hl]
    rst $38
    ld [de], a
    rst $38
    ld a, $ff
    inc l
    rst $38
    inc e
    rst $38
    add hl, bc
    cp $09
    cp $c3
    inc a
    inc bc
    db $fc
    ld d, $f9
    ld b, $f9
    rrca
    pop af
    rra
    pop hl
    rrca
    pop af
    inc c
    di
    dec a
    jp $c33e


    rrca
    di
    dec bc
    rst $30
    rla
    rst $28
    rlca
    rst $38
    scf
    rst $08
    ld [hl], $cf
    scf
    rst $08
    ld d, $ef
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    db $dd
    rst $38
    ld e, c
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
    ldh [rIE], a
    ldh [rIE], a
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, h
    ei
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    inc b
    ei
    rrca
    ldh a, [rIF]
    ldh a, [$0e]
    pop af
    ld c, $f1
    ld [hl], $c9
    ld a, $c1
    inc sp
    call $cd33
    inc hl
    db $dd
    add e
    db $fd
    ld bc, $01ff
    rst $38
    ld b, b

jr_076_5f4d:
    cp a
    add b
    ld a, a
    ld b, $fb
    ld bc, $04ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    call nz, $8cfb
    di
    jr nz, jr_076_5f4d

    ld [hl], c
    adc a
    ld hl, $01df
    rst $38
    ld bc, $69ff
    sub a
    jr z, @-$27

    jr z, @-$27

    nop
    rst $38
    ret z

    scf
    ld d, b
    xor a
    ld b, b
    cp a
    ret nc

    cpl
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld h, b
    sbc a
    ret nc

    cpl
    ld hl, $3bdf
    rst $00
    dec sp
    rst $00
    ld a, [hl-]
    rst $00
    ld sp, hl
    rlca
    cp $07
    ld [hl], a
    adc a
    adc a
    ld a, a
    nop
    jp $6701


    inc bc
    scf
    rlca
    rra
    rlca
    rra
    adc a
    rra
    ld [$183f], sp
    ld e, a
    dec l
    ei
    inc [hl]
    ei
    push af
    ei
    di
    rst $38

Jump_076_5fb8:
    db $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ld d, a
    rst $28
    scf
    rst $08
    cpl
    rst $18
    ld l, a
    sbc a
    ld e, a
    cp a
    ld [hl], e
    cp a
    ld a, a
    cp a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc $ff
    cp a
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
    cp $ff
    ei
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    db $ec
    rst $38
    call z, $f4ff
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld [$08ff], sp
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    ld [$08ff], sp
    rst $38
    jr @+$01

    jr @+$01

    jr nc, @+$01

    ld a, b
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld a, [c]
    rst $38
    ei
    or $f8
    rst $30
    add sp, -$09
    cp b
    rst $20
    ld [hl-], a
    rst $28
    ret nc

    rst $28
    and d
    rst $18
    ldh [$df], a
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    inc b
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    inc c
    rst $38
    ld [$11ff], sp
    cp $83
    db $fc
    db $10
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    ld a, h
    add e
    ld a, b
    add a
    ld a, b
    add a
    cp b
    rst $00
    sbc b
    rst $20
    ret nc

    rst $28
    pop de
    rst $28
    ret nz

    rst $38
    ld h, b
    rst $38
    ld h, c
    rst $38
    inc hl
    rst $38
    dec sp
    rst $38
    ld a, $ff
    ld a, $ff
    inc e
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld e, $ff
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
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    add b
    rst $38
    push bc
    ei
    add b
    rst $38
    ldh [rIE], a
    db $e4
    ei
    ld h, b
    rst $38
    ld h, h
    ei
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
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
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    db $e3
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $e3
    rst $38
    di
    rst $38
    di
    rst $38
    and e
    rst $38
    pop hl
    rst $38
    ld h, e
    rst $38
    ld hl, $23ff
    rst $38
    inc bc
    rst $38
    ld h, e
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    jp Jump_076_43ff


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
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    ld c, e
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld c, $ff
    ld e, $ff
    ld a, $ff
    ld e, h
    cp a
    ld a, h
    cp a
    ld a, b
    cp a
    inc a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld e, h
    rst $38
    ld a, b
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    add hl, de
    rst $38
    jr @+$01

    jr c, @+$01

    add hl, sp
    cp $23
    db $fc
    ld hl, $42fe
    db $fd
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld [$a7ff], sp
    rst $18
    dec sp
    rst $00
    ld [bc], a
    rst $38
    add [hl]
    rst $38
    ld c, [hl]
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    ld bc, $01ff
    rst $38
    add h
    ld a, e
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ld b, $ff
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b

jr_076_6197:
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    ld hl, $32de
    call $ff40
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $30
    sbc d
    rst $20
    ld e, b
    rst $20
    jr jr_076_6197

    ld bc, $40fe
    rst $38
    ld b, b
    rst $38
    ld b, c
    cp $41
    cp $41
    cp $42
    db $fd
    ld b, d
    db $fd
    ld b, b
    rst $38
    ld b, c
    rst $38
    ld bc, $01ff
    rst $38
    ld b, c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    db $e3
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
    ld sp, hl
    rst $38
    ld a, [c]
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add sp, -$09
    adc $f1
    call nz, $84fb
    ei
    adc h
    di
    adc [hl]
    pop af
    add h
    ei
    adc [hl]
    pop af
    adc [hl]
    pop af
    rst $08
    ldh a, [$cf]
    ldh a, [$c0]
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
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    sub a
    rst $38
    ld bc, $87ff
    rst $38
    jp $c6ff


    rst $38
    add $ff
    and [hl]
    rst $38
    and b
    rst $38
    call c, $dcff
    rst $38
    ret c

    rst $38
    add sp, -$01
    xor b
    rst $38
    cp l
    rst $38
    ld a, $ff
    inc a
    rst $38
    jr nc, @+$01

    ld [hl], b

Call_076_623f:
    rst $38
    ld h, b
    rst $38
    ld b, h
    ei
    ld b, h
    ei
    ret nz

    rst $38
    ret nz

    rst $38
    jp nc, $f2ff

    rst $38
    ldh [rIE], a
    call nz, Call_076_44ff
    cp a
    ld b, d
    cp a
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    sbc c
    ld l, a
    dec c
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    add l
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    cp $ff
    ld a, [$a3ff]
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add b
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    and c
    rst $38
    add c
    rst $38
    sub c
    rst $38
    inc sp
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    inc de
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    and b
    rst $18
    nop
    rst $38
    inc hl
    rst $18
    ld l, a
    sbc a
    ld l, a
    cp a
    cpl

jr_076_62af:
    rst $18
    ld e, a

jr_076_62b1:
    cp a
    ld d, l
    cp a
    and l
    ld a, a
    and c
    ld a, a
    ld h, c
    rst $38
    ld b, b
    rst $38
    add h
    rst $38
    adc h
    rst $30
    inc b
    rst $38
    inc b
    rst $38
    add h
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld a, [de]
    rst $28
    ld a, $cf
    jr z, jr_076_62af

    jr z, jr_076_62b1

    inc l
    rst $18
    ld l, l
    sbc a
    ld a, l
    sbc a
    add hl, sp
    rst $18
    cp c
    rst $18
    or b
    rst $18
    and b
    rst $18
    and b
    rst $18
    add b
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld de, $11ff
    rst $38
    add a
    ld a, a
    jr nz, @+$01

    jr nz, @+$01

    and b
    ld a, a
    and b
    ld a, a
    and b
    ld a, a
    ld hl, $21ff
    rst $38
    ld h, c
    rst $38
    ld hl, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    db $ec
    rst $38
    db $ed
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc c
    rst $38
    inc a
    rst $38
    inc [hl]
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $ff
    daa
    rst $38
    ld h, $ff
    ld a, $ff
    ld c, a
    rst $38
    add d
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld [c], a
    rst $38
    ld b, [hl]
    rst $38
    rrca
    rst $38
    ld [hl], $ff
    ld [de], a
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    and d
    rst $38
    ld h, d
    rst $38
    ld h, e
    rst $38
    jp nz, $c3ff

    rst $38
    jp Jump_076_73ff


    rst $38
    ld [hl], e
    rst $38
    di
    rst $38
    db $d3
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sub b
    rst $38
    ret c

    rst $38
    sbc c
    rst $38
    sbc c
    rst $38
    sub e
    rst $38
    add e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, a
    rst $38
    ld d, e
    rst $38
    ld d, a
    rst $38
    ld d, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ccf
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
    ld [hl], c
    rst $38
    pop af
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    db $e4
    ei
    ldh [rIE], a
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ld [$e2ff], a
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cpl
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
    ld b, $ff
    ld b, $ff
    ld b, $ff
    inc b
    rst $38
    inc b
    rst $38
    add h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc e
    rst $38
    ld [hl], b
    rst $38
    and d
    rst $38
    db $e3
    rst $38
    di
    rst $38
    rst $30
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld [hl], d
    rst $38
    ld [hl], e
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    jp hl


    rst $38
    jp hl


    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    dec sp
    rst $38
    jp c, $d2ff

    rst $38
    jp nc, $94ff

    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    jr @+$01

    jr c, @+$01

    jr nc, @+$01

    ld sp, $6bff
    rst $38
    ld l, e
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    cp $ff
    jp c, $82ff

    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld c, b
    rst $38
    ld b, b
    rst $38
    ld b, e
    rst $38
    ret nz

    rst $38
    jp Jump_076_5bff


    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    and $ff
    and $ff
    db $ec
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    adc l
    rst $38
    ld [$0fff], sp
    rst $38
    dec c
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    sbc a
    rst $38
    dec de
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    db $e3
    rst $38
    db $db
    rst $38
    jp $e3ff


    rst $38
    db $e4
    rst $38
    and l
    rst $38
    add a
    rst $38
    add [hl]
    rst $38
    add e
    rst $38
    add l
    rst $38
    add b
    rst $38
    ret z

    rst $38
    reti


    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
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
    ld a, b
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    ld b, a
    rst $38
    add c
    rst $38
    ret nz

    rst $38
    db $ec
    rst $38
    jp $c2ff


    rst $38
    call nz, $d4ff
    rst $38
    sub $ff
    add h
    rst $38
    call z, $ecff
    rst $38
    rst $08
    rst $38
    ld c, l
    rst $38
    ld e, l
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    ld l, e
    rst $38
    ld h, e
    rst $38
    ld b, e
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
    jr nz, @+$01

    ld b, b
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr z, @+$01

    ld l, b
    rst $38
    ld h, b
    rst $38
    pop af
    cp $e0
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add d
    rst $38
    add d
    rst $38
    ld b, b
    rst $38
    cp b
    db $fd
    sub b
    rst $38
    add d
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc bc
    cp h
    daa
    cp b
    daa
    cp b
    ld d, $bb
    ld [hl-], a
    cp a
    inc sp
    ld a, [hl]
    ld a, b
    or $ce
    ldh a, [$86]
    ld hl, sp-$7b
    ld hl, sp-$33
    ldh a, [$c7]
    ld hl, sp+$45
    ei
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld c, b
    rst $30
    ld c, e
    db $f4
    db $ed
    ld a, [c]
    rst $20
    ld hl, sp-$19
    ld hl, sp+$66
    ld sp, hl
    jp $c1fc


    cp $81
    cp $00
    rst $38
    ld a, [hl+]
    rst $38
    ld a, [hl+]
    rst $38
    adc a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    cp h
    rst $38
    dec l
    rst $38
    cpl
    rst $38
    rst $28
    rst $38
    call $c5ff
    rst $38
    add l
    rst $38
    xor l
    rst $38
    xor h
    rst $38
    adc b
    rst $38
    cp d
    rst $38
    cp b
    rst $38
    or b
    rst $38
    or b
    rst $38
    pop af
    rst $38
    or b
    rst $38
    cp b
    rst $30
    call nc, Call_000_16fb
    ld sp, hl
    ld [bc], a
    db $fd
    nop
    rst $38
    ld b, h
    rst $38
    add e
    db $fc
    and d
    db $dd
    or d
    db $dd
    inc a
    db $d3
    inc c
    di
    nop
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld c, h
    rst $38
    and c
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    add b
    rst $38
    ld bc, $0bff
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    ld bc, $00ff
    rst $38
    inc c
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
    rst $38
    rst $38
    ld h, b
    rst $38
    inc e
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$1cff], sp
    rst $38
    dec e
    cp $00
    db $fd
    ld [bc], a
    jr nz, jr_076_65d5

jr_076_65d5:
    rst $38
    ld b, b
    ld [c], a
    ld [bc], a
    ldh [rSTAT], a
    db $ec
    nop
    xor $02
    db $fc
    inc bc
    db $fc
    inc de
    db $fc
    inc bc
    db $fc
    ld bc, $01f8
    ldh [rDIV], a
    ldh [rDIV], a
    and b
    dec c
    and b
    inc b
    rrca
    dec d
    rrca

jr_076_65f4:
    dec e
    rrca
    cpl
    rrca
    dec bc
    rrca
    ld a, [de]
    dec c
    ld [de], a
    dec c
    ld a, [de]
    dec b
    sbc [hl]
    add hl, de
    or a
    jr jr_076_65f4

    db $10
    ld l, $11
    ld a, a
    ld bc, $014f
    rst $38
    ld bc, $01f6
    ld de, $23e2
    ret c

    ld hl, $138a
    jp hl


    inc de
    jp hl


    nop
    ld [hl], c
    ld bc, $295b
    jp nc, Jump_076_7689

    xor b
    ld d, a
    add h
    ld l, e
    nop
    db $ec
    inc de
    ld l, h
    inc de
    db $ec
    db $10
    rst $28
    db $10
    ld h, a
    ld l, [hl]
    sub b
    db $ec
    db $10
    ld hl, sp+$10
    call c, $d433
    ccf
    add b
    ld a, h
    add b
    db $76
    ldh [rNR10], a
    ld h, h
    sub b
    ldh [$92], a
    jr nc, @-$2f

    sbc l
    and $79
    and $0b
    db $f4
    rlca
    db $fc
    rlca
    db $fc
    ld [bc], a
    db $fd
    sbc a
    pop hl
    sub a
    pop hl
    sub c
    db $e3
    sbc b
    rst $20
    ld d, b
    and e
    push bc
    jr nz, @+$05

    db $fc
    db $db
    jr nz, jr_076_66c8

    add d
    ccf
    ret nz

    inc [hl]
    cp $7c

jr_076_6669:
    db $fc
    inc b
    db $fc
    nop
    ccf
    inc c
    cp [hl]
    call z, $dc3f
    ccf
    ld e, h
    cp a
    ld e, $ff
    ld h, a
    rst $38
    ld d, b
    rst $28
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add [hl]

jr_076_6683:
    rst $38
    add [hl]
    rst $38
    inc b
    rst $38
    ld b, a
    rst $38
    ld b, b
    rst $38
    ret nc

    rst $28
    ldh a, [$cf]
    ld hl, sp-$39
    ret c

    rst $20
    call nz, $c6fb
    ld sp, hl
    jr nc, jr_076_6669

    jr jr_076_6683

    inc b
    ei
    sbc h
    db $e3
    rst $18
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $18
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
    add b
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld bc, $80ff
    rst $38
    rst $38
    rst $38
    push af
    rst $38

jr_076_66c0:
    sub b
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38

jr_076_66c8:
    rrca
    rst $38
    jp Jump_000_10ff


    rst $28
    rst $28
    rra
    ld c, $ff
    ld c, $ff
    ld [$00fe], sp
    ld hl, sp+$11
    nop
    ldh a, [$03]
    ld [c], a
    nop
    daa
    nop
    add a
    nop
    ld hl, sp+$00
    jr nc, jr_076_66e6

jr_076_66e6:
    rrca
    add e
    ld b, e
    adc a
    inc bc
    rst $08
    db $d3
    rst $28
    db $db
    rst $28
    sbc a
    jr nc, jr_076_66c0

    jr nc, jr_076_6738

    nop
    jp nz, $8201

    ld bc, $0182
    jp nz, $8601

    ld bc, $ff7c
    ld h, b
    cp $42
    db $fc
    ldh [$fc], a
    ldh a, [$fc]
    db $f4
    ld hl, sp-$10
    ld hl, sp-$08
    ldh a, [rNR32]
    ldh a, [$f4]
    ld d, b
    inc a
    ret nc

    ld e, b
    or b
    xor d
    ld d, b
    ld a, [$4400]
    adc b
    call c, $f78a
    ld [hl], b
    rst $20
    ld hl, sp-$5b
    ld c, d
    ld a, [bc]
    nop
    ld b, b
    add b
    inc l
    ret nz

    ld [$3020], sp
    ret nz

    ld e, b
    inc e
    add h
    ld e, b
    add b
    add hl, de
    ret z

    rra

jr_076_6738:
    ld c, b
    rra
    rst $08
    rra
    adc a
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    dec a
    ld a, a
    db $10
    rst $38
    nop
    ld sp, hl
    ret nc

    ccf
    cp b
    ld e, a
    ldh [$1f], a
    ldh a, [rNR31]
    pop bc
    ld a, $a9
    add $86
    ldh [rDMA], a
    add c
    ld b, [hl]
    add c
    cp l
    nop
    rst $20
    nop
    cp $01
    ret c

    ld b, $70
    ld b, $ca
    rlca
    ld h, e
    rra
    ld bc, $040f
    rlca
    nop
    rst $38
    nop
    add hl, sp
    inc sp
    ret


    or l
    ld c, e
    ld a, h
    add e
    ld a, b
    add a
    call nc, $c18b
    rst $38
    add c
    ld a, a
    rst $08
    jr nc, jr_076_67fb

    adc a
    ld d, [hl]
    xor a
    nop
    rst $38
    db $10
    rst $38
    ldh [rIE], a
    nop
    rst $38
    jr nz, @+$01

    jr @+$01

    ld e, $ff
    db $d3
    ccf
    jp hl


    rra
    jr @+$01

    add [hl]
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
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
    rrca
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38

jr_076_67b4:
    cp $ff
    ld sp, hl
    rst $38
    pop af
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    ldh a, [rIE]
    xor b
    rst $30
    nop
    rst $38
    add a
    ld hl, sp-$80
    pop af
    nop
    adc h
    nop
    ld h, e

jr_076_67d6:
    jr nz, @-$72

    ldh [$08], a
    dec b
    ret nc

    ld [$e330], sp
    ld [$00c7], sp
    rrca
    ld h, b
    nop
    dec bc
    nop
    ccf
    nop
    cpl
    db $10
    daa
    nop
    rlca
    rrca
    nop
    cp b
    rra

jr_076_67f2:
    db $fc
    rra
    cp $1f
    cp $0f
    db $fc
    ld c, $e0

jr_076_67fb:
    ld bc, $02e4
    or $0e
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0d00
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $18
    jr nz, jr_076_67f2

    jr nz, jr_076_67b4

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    cp a
    ld b, b
    cp a
    ld b, b
    xor a
    ld [hl], b
    rst $28
    jr nc, jr_076_67d6

    ld [hl], b
    xor a
    ldh a, [$af]
    ldh a, [$6f]
    ldh a, [$67]
    ld hl, sp+$66
    ld sp, hl
    ld h, c
    cp $66
    ld sp, hl
    ld h, h
    ei
    push hl
    ld a, [$fff0]
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    ld a, a
    ld [hl], h
    ld a, a
    ld a, h
    ld a, a
    ld a, h

jr_076_684b:
    ld a, a
    ld a, h
    ld a, a
    ld a, [hl]
    ld a, a
    xor e
    ld [hl], a
    ei
    rlca
    ret nz

    add hl, sp
    ldh [$f8], a
    ld c, b
    cp e
    call z, Call_076_7803
    inc b
    ld a, [$0c07]
    inc bc
    ld de, $000e
    rst $38
    rst $08
    ldh a, [$e3]
    db $fc
    ld sp, $fbfe

jr_076_686d:
    ld b, $ac
    ld b, a
    ld a, l
    add e
    jr c, jr_076_67fb

    ld e, c
    add [hl]
    sbc l
    ld [c], a
    ld a, [c]
    rst $38
    rst $38
    cp $ff
    cp $7e
    rst $38
    ld h, $df
    jr c, jr_076_684b

    jr jr_076_686d

    inc d
    db $eb
    ld b, $f9
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    ld a, a
    ld c, b
    cp a
    ld a, b
    add a
    inc a
    jp $fb04


    dec b
    ei
    ld bc, $f9ff
    rst $38
    cp $ff
    ret nc

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add c
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    ld bc, $82ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    cp a
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    jr @+$01

    jr nz, @+$01

    inc c
    rst $38
    db $fc
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, $ff
    ld a, $ff
    jr c, @+$01

    nop
    ld c, [hl]
    nop
    ld [$06f8], a
    ldh a, [rTMA]
    ld hl, sp+$02
    inc bc
    ld hl, sp+$7a
    db $fc
    db $d3
    db $10
    ld c, a
    nop
    ld a, h
    add b
    rst $38
    add b
    rst $38
    add b
    ld [hl], b
    add b
    rrca
    sub b
    ld l, $10
    or b
    nop
    and b
    nop
    cp h
    nop
    or b
    ld [$0a30], sp
    ld h, $89
    ld h, l
    nop
    ld h, h

Call_076_68ff:
    add b
    nop
    nop
    sbc h
    nop
    inc e
    nop
    jr nc, jr_076_6908

jr_076_6908:
    ld [hl], b
    nop
    rlca
    rst $38
    rrca
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
    ld hl, sp+$07
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
    db $f4
    dec bc
    db $fc
    inc bc
    db $f4
    dec bc
    ret nz

    ccf
    and h
    ld e, e
    ld b, b
    cp a
    nop
    rst $38
    sub b
    ld l, a
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
    rla
    rst $38
    ld bc, $01ff
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    db $e3
    rst $38
    inc bc
    ld a, a
    nop
    ccf
    nop
    dec de
    ld l, b
    sub c
    ld [hl-], a
    add h
    nop
    ld l, c
    jr nz, jr_076_69d7

    db $10
    ld sp, hl
    ld bc, $000f
    inc hl
    nop
    inc sp
    and b
    rlca
    nop
    dec de
    ccf
    jp $fb05


    db $db
    daa
    rst $30
    ld bc, $718e
    adc [hl]
    ld [hl], c
    add [hl]
    ld a, c
    inc bc
    db $fc
    add h
    ei
    inc bc
    rst $38
    ld hl, $90df
    rst $28
    rst $08
    ldh a, [$c0]
    rst $38
    ld b, a
    rst $38
    rra
    rst $38
    adc d
    push af
    sbc e
    db $e4
    rlca
    ld hl, sp+$7f
    add b
    ld bc, $81fe
    cp $c0
    rst $38
    or $f9
    rra
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    pop bc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld [bc], a
    rst $38
    inc e
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    inc c
    rst $38
    nop
    rst $38
    jp nc, $0fff

    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    add sp, -$01
    jp Jump_000_20bf


    rst $18
    ld hl, sp+$07
    ld h, b
    inc bc
    nop
    ld hl, $8004
    ld b, h

jr_076_69d7:
    ld bc, $0311
    jr nc, @+$47

    nop
    inc e
    ld h, c
    ld e, $c8
    inc e
    jr nc, @+$50

    nop
    ld [$20c7], sp
    ld c, d
    db $10
    ld bc, $c197
    inc bc
    ld a, h
    ld bc, $8500
    ld [bc], a
    pop bc
    inc c
    ld bc, $0378
    ldh a, [rTIMA]
    nop
    ld [$f006], sp
    ld c, $41
    ld e, $1e
    ld hl, $4021
    ld b, b
    adc l
    adc l
    cp a
    cp a
    ld a, a
    rst $38
    rrca
    ei
    push af
    dec bc
    db $fd
    inc bc
    push af
    dec bc
    push af
    dec bc
    or h
    ld c, d
    push hl
    dec de
    inc d
    ld [$fa04], a
    inc b
    ld a, [$fa04]
    inc b
    ld a, [$fa04]
    inc b
    ld a, [$fe00]
    nop
    cp $02
    cp $00
    cp $02
    cp $03
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    dec bc
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
    rla
    rst $38
    rla
    rst $38
    or $fe
    or $fe
    cp $fe
    cp $ff
    jr nc, @+$01

    ldh a, [rIE]
    ld b, b
    rst $30
    nop
    di
    nop
    pop hl
    inc c
    ldh [rDMA], a
    ldh [$88], a
    rst $30
    ld l, [hl]
    sbc a
    ld a, [hl]
    cp a
    ld b, b
    cp a
    rst $00

jr_076_6a69:
    jr c, jr_076_6aab

    cp a
    ld h, a
    sbc b
    ld a, e
    add h
    db $e3
    db $fc
    inc bc
    db $fc
    adc b
    rst $30
    ld [bc], a
    rst $38
    ld e, [hl]
    cp a
    ld h, a
    sbc a
    rlca
    rst $38
    ld b, b
    cp a
    jr jr_076_6a69

    ld b, b
    rst $38
    add sp, -$09
    add hl, hl
    rst $30
    inc h
    ei
    ldh a, [rIE]
    db $eb
    rst $30
    ld hl, sp-$09
    ld a, b
    rst $30
    sbc h
    ld a, a
    xor $1f
    rst $28
    rra
    db $ed
    rra
    ld l, h
    sbc a
    ld l, [hl]
    sbc a
    rrca
    rst $38
    inc c
    rst $38
    ld [$8cff], sp
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    inc e

jr_076_6aab:
    rst $38
    jr @+$01

    dec sp
    rst $38
    di
    rst $38
    rst $00
    rst $38
    add b
    rst $38
    and b
    rst $18
    ld a, [de]

jr_076_6ab9:
    rst $38
    ld a, [hl-]
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    rst $38
    inc b
    ei
    ld [hl], d
    db $fd
    ld a, $ff
    dec bc
    rst $38
    ld a, c
    add a
    dec bc
    db $f4
    jr jr_076_6ab9

    nop
    rst $38
    ld [c], a
    dec e
    adc l
    ld a, [c]
    rst $08
    ldh a, [rP1]
    rst $38
    inc bc
    rst $38
    ret z

    scf
    add b
    ld a, [hl-]
    add b

jr_076_6ae3:
    inc sp
    nop
    ccf
    nop
    and e
    nop
    add e
    nop
    jp $ffc7


    rst $38
    rst $38
    db $fc
    rst $38
    ret nz

    ld sp, hl
    add b
    ldh [rNR10], a
    add c
    ld [$8081], sp
    cp $80
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    cp $fe
    rst $38
    ld a, [$feff]
    rst $38
    rlca
    rst $38
    ld b, $ff
    add [hl]
    rst $38
    ld b, a
    cp a
    ld d, d
    xor l
    dec sp
    call nz, $cc33
    adc b
    rst $30
    jr c, jr_076_6ae3

    ld hl, $00de
    rst $38
    nop
    rst $38
    ld [$20ff], sp
    rst $18
    ld bc, $28ff
    rst $30
    jr z, @-$07

    ld [$0cf7], sp
    di
    ld h, h
    sbc e
    ld [hl], b
    adc a
    ld h, b
    sbc a
    add a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    db $e3
    rst $38
    pop bc
    rst $38
    push hl
    ei
    add c
    rst $38
    add b

jr_076_6b45:
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    ld [$07ff], sp
    db $fc
    inc b
    rst $38
    ld b, $ff
    nop
    rst $38
    ld hl, sp-$79
    or $09
    sbc [hl]
    ld h, c
    ld e, [hl]
    pop hl
    ld c, $f1
    jr nz, jr_076_6b45

    or $0f
    inc d
    rst $28
    inc a
    rst $00
    ret nz

    ccf
    nop
    rst $38
    ld hl, sp+$07
    ret nz

    ccf
    inc b
    ei
    inc a
    jp $07f8


    nop
    rst $38
    sub [hl]
    jp hl


    inc e
    db $e3
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld bc, $a0ff
    rst $18
    sbc b
    rst $20
    sbc a
    ldh [$7c], a
    add e
    ld bc, $07ff
    rst $38
    ld e, e
    cp a
    ccf
    rst $38
    ccf
    rst $38
    ld c, $ff
    scf
    call z, $9669
    inc bc
    rst $38
    ld b, a
    rst $38
    dec b
    rst $38
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
    add b
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld bc, $03ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    ld b, e
    rst $38
    add d
    rst $38
    add [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    cp a
    ld h, b
    sbc a
    inc de
    db $fc
    db $fc
    rst $38
    ld l, $ff
    inc bc
    adc a
    ld [bc], a
    rst $20
    nop
    cp $02
    xor [hl]
    ld a, [bc]
    and [hl]
    ld a, [bc]
    and a
    adc b
    add e
    sbc d
    ret nz

    ld [de], a
    ldh [rNR14], a
    ret nz

    ld bc, $2840
    ld b, [hl]
    nop
    rst $00
    ld b, $ef
    ld b, $de
    ld [c], a
    xor $03
    ld [$0a02], a
    nop
    ld a, a
    ld bc, $39ff
    rst $38
    jr nc, @+$01

    jr @+$01

    ld [$08ff], sp
    rst $38
    ld [$e8ff], sp
    rra
    add sp, $1f
    jr @+$01

    ret nz

    ccf
    pop bc
    ld a, $05
    ld a, [$ff00]
    db $10
    rst $28
    ld bc, $21ff
    rst $38
    ld bc, $01ff

jr_076_6c2b:
    rst $38
    jr c, @+$01

    ld [hl+], a
    rst $38
    inc b
    rst $38
    ld hl, $21ff
    rst $38
    pop af
    rst $38
    di
    rst $38
    db $e3
    rst $38
    db $eb
    rst $38
    set 7, a
    set 7, a
    jp z, $dbff

    rst $38
    ei
    rst $38
    add sp, -$01
    call nz, $e4ff
    rst $38
    nop
    rst $38
    or b
    ld c, a
    cp h
    ld b, e
    ld l, b
    sub a
    dec hl
    rst $10
    jr nc, @-$2f

    jr nc, jr_076_6c2b

    ld bc, $1cff
    db $e3
    add b
    ld a, a
    ldh [$1f], a
    rlca
    ld hl, sp+$43
    db $fc
    db $e3
    db $fc
    ld [bc], a
    db $fd
    ld [c], a
    dec e
    sub b
    ld l, a
    pop bc
    ccf
    ld b, b
    cp a
    ld h, b
    sbc a
    add hl, sp

jr_076_6c77:
    rst $00
    adc a
    rst $38
    sbc $ff
    ld hl, sp-$01
    rst $30
    ld hl, sp+$1f
    ldh [rDIV], a
    ei
    inc bc
    rst $38
    cp $ff
    add hl, sp
    cp $08
    rst $38
    ldh [$1f], a
    rrca
    rst $38
    rst $08
    rst $38
    cp a
    rst $38
    ldh a, [rIE]
    call z, Call_076_78f3
    add a
    ld hl, sp+$07
    ldh a, [rIF]
    di
    rrca
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    rlca
    rst $38
    jr @+$01

    ld [bc], a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    nop
    rst $38
    add b
    rst $38
    push hl
    rst $38
    ei
    rst $38
    cp $ff
    rst $08
    rst $38
    adc a
    rst $38
    pop bc
    rst $38
    ld b, c
    rst $38
    ld h, c
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    jr z, @+$01

    ld [hl+], a
    rst $38
    rst $38
    rst $38
    or $ff
    ret nz

    rst $38
    nop
    rst $38
    ld a, h
    rst $38
    push hl
    rra
    add d
    ld a, l
    ld [hl+], a
    db $fd
    nop
    or h
    adc b
    and $06
    ld a, a
    ld a, $ff
    inc e
    ld a, $18
    ld a, $08
    db $fc
    nop
    ld a, b
    ld b, $78
    add [hl]
    jr jr_076_6c77

    ld e, b
    nop
    ld a, [hl]
    inc b
    ld a, a
    ld b, $77
    rlca
    ld l, a
    rlca
    ccf
    rst $20
    rra
    rst $20
    rra
    ld b, $ff
    rlca
    rst $38
    cp b
    rst $38
    db $10
    rst $38
    ld b, e
    cp a
    ld e, c
    cp a
    inc e
    inc e
    inc c
    inc c
    dec c
    dec c
    ld l, l
    ld l, l
    inc b
    inc b
    inc de
    inc de
    nop
    nop
    ldh [rP1], a
    ld a, [$f807]
    rlca
    ld a, [$f005]
    rrca
    ld hl, sp+$07
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    ld hl, sp+$07
    ld a, $01
    inc b
    ld [bc], a
    add c
    add c
    adc $ce
    ld c, $0e
    ld b, $06
    daa
    daa
    add e
    rst $38
    add e
    rst $38
    ld b, e
    rst $38
    rst $30
    rst $38
    ld l, a
    rst $38
    ld l, [hl]
    rst $38
    ld l, [hl]
    rst $38
    ld c, a
    rst $38
    ld b, b
    rst $38
    ld c, c
    rst $38
    ld [$81ff], sp
    rst $38
    ld a, c
    rst $38
    ld e, b
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld [hl], b
    rst $38
    ld hl, sp-$01
    dec a
    rst $38
    ld e, $ff
    and c
    ld e, a
    add hl, bc
    rst $30
    nop
    rst $38
    add [hl]
    ld sp, hl
    ret nz

    rst $38
    inc a
    rst $38
    ld a, l
    cp $fc
    rst $38
    di
    db $fc
    ld hl, sp-$01
    inc c
    rst $38
    rst $08
    ld a, $9e
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    add b
    ld a, a
    dec b
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    add e
    db $fc
    add e
    db $fc
    and a
    ld hl, sp+$44
    ei
    ld h, e
    rst $38
    ld e, a
    rst $38
    reti


    rst $38
    dec b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $18
    rst $38
    jp Jump_000_00ff


    rst $38
    cp b
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rra
    rst $38
    rlca
    rst $38
    nop
    rst $38
    push hl
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
    db $e3
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    ld a, b
    rst $38
    nop
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    ld hl, sp-$01
    jr nc, @+$01

    nop
    rst $38
    ld d, b
    rst $28
    ld [bc], a
    rst $38
    and d
    rst $38
    and [hl]
    rst $38
    and d
    rst $38
    and d
    rst $38
    ld h, d
    sbc a
    ldh [$1f], a
    and $19
    ld a, [c]
    dec c
    xor h
    ld e, a
    adc h
    ld a, a
    ld e, $ef
    ccf
    rst $38
    rst $00
    ccf
    rlca
    rst $38
    sub e
    rst $28
    inc de
    rst $28
    jp $c53f


    dec sp
    ld l, l
    sub e
    ld bc, $afff
    rst $38
    rst $30
    rst $38
    inc de
    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    inc c
    ei
    add hl, bc
    rst $38
    add hl, de
    rst $28
    ret c

    rst $28
    rst $00
    cp a
    ld b, a
    cp a
    rlca
    rst $38
    adc b
    rst $30
    ret nz

    rst $38
    ret nz

    rst $38
    call z, $ccf3
    di
    add b
    rst $38
    add b
    rst $38
    and a
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    ld [hl], b
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld h, a
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    db $e4
    rst $38
    and h

jr_076_6e5d:
    rst $38
    and l
    rst $38
    and h
    rst $38
    ld [c], a

jr_076_6e63:
    rst $38
    pop bc
    rst $38
    db $10
    rst $38
    dec h
    rst $38
    db $e4
    rst $38
    db $ed
    rst $38
    ld [hl], c
    rst $38
    add c
    rst $38
    nop
    rst $38
    sbc [hl]
    ld a, a
    cp [hl]
    ld a, a
    jr nz, @+$01

    jr jr_076_6e63

    jr nz, jr_076_6e5d

    ld bc, $00ff
    rst $38
    cp b
    rst $00
    ld l, b
    sub a
    add c
    ld a, [hl]
    ld hl, sp-$01
    ld hl, sp-$01
    add b
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    sub b
    ld a, a
    ld e, b
    rst $38
    db $ec
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [$ffff]
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld b, c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
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
    sbc a
    rst $38
    ld a, $ff
    ld e, a
    rst $38
    ccf
    rst $38
    ld a, d
    rst $38
    ld d, b
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    daa
    rst $38
    cpl
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rra
    rst $38
    add hl, sp
    rst $38
    ld hl, $00ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    add e
    rst $38
    add hl, de
    rst $38
    dec de
    rst $38
    ld a, l
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    cp l
    rst $38
    sbc a
    rst $38
    dec e
    rst $38
    dec e
    rst $38
    adc h
    rst $38
    xor h
    rst $18
    adc h
    rst $38
    call z, $cfff
    rst $38
    rst $00
    rst $38
    ld h, a
    rst $38
    ld l, [hl]
    rst $38
    ld b, [hl]
    rst $38
    daa
    rst $38
    ld a, $ff
    scf
    rst $38
    or [hl]
    rst $38
    xor b
    rst $38
    cp b
    rst $38
    sbc c
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    xor l
    rst $38
    inc de
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    add c
    rst $38
    ld de, $9eff
    rst $38
    cp $ff
    ei
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    push af
    rst $38
    ld [hl], e
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    add hl, de
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    and $ff
    rst $20
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    ldh [rIE], a
    ld h, c
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    ret z

    rst $38
    xor [hl]
    rst $38
    adc [hl]
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, $ff
    inc e
    rst $38
    ld b, $ff
    db $10
    rst $38
    ld b, b
    cp a
    add c
    rst $38
    jr nc, @+$01

    add $3f
    db $fd
    ccf
    ld l, $ff
    rla
    rst $28
    daa
    rst $18
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld [hl], b
    adc a
    dec a
    jp $c739


    add hl, de
    rst $20
    add hl, bc
    rst $30
    ld b, l
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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
    pop hl
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    ld bc, $90ff
    rst $38
    db $10
    rst $38
    inc sp
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
    inc sp
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ret nz

    rst $38
    ld a, [c]
    rst $38
    di
    rst $38
    add l
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    add e
    rst $38
    db $e3

Jump_076_6fff:
    rst $38
    add c
    rst $38
    add c
    rst $38
    reti


    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, c
    rst $38
    ld [hl], c
    rst $38
    ld a, d
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld e, $ff
    rra
    rst $38
    cp $ff
    xor h
    rst $38
    ld [$9aff], sp
    rst $38
    and $ff
    rlca
    rst $38
    ld bc, $85ff
    rst $38
    push bc
    rst $38
    dec b
    rst $38
    rrca
    rst $38
    xor l
    rst $38
    push hl
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    sbc e
    rst $38
    sbc e
    rst $38
    sbc d
    rst $38
    ld a, [de]
    rst $38
    inc d
    rst $38
    inc c
    rst $38
    jr @+$01

    add hl, sp
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld e, $ff
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    ld sp, $31ff
    rst $38
    ld [hl], e
    rst $38
    ld [hl], d
    rst $38
    ld [hl], b
    rst $38
    pop af
    rst $38
    jp z, $cdff

    rst $38
    pop bc
    rst $38
    push bc
    rst $38
    ld b, l
    rst $38
    ld l, h
    rst $38
    jr c, @+$01

    nop
    rst $38
    add d
    rst $38
    ret c

    rst $38
    or $f9
    cp $f9
    ld a, [$fefd]
    db $fd
    db $fc
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    add e
    rst $38
    pop af
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
    db $fd
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $d3
    rst $38
    rst $00
    rst $38
    add a
    rst $38
    ldh [rIE], a
    cp $ff
    add b
    rst $38
    jp nz, $e1ff

    rst $38
    pop bc
    rst $38
    ld l, e
    rst $38
    add sp, -$01
    ld h, b
    rst $38
    jr c, @+$01

    db $fc
    rst $38
    cp $ff
    rst $28
    rst $38
    ei
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    jr c, @+$01

    inc e
    rst $38
    inc e
    rst $38
    ld e, [hl]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $83ff


    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    db $eb
    rst $38
    dec hl
    rst $38
    dec h
    rst $38
    dec b
    rst $38
    rlca
    rst $38
    inc de
    rst $38
    ld sp, hl
    rst $38
    ld l, a
    rst $38
    inc sp
    rst $38
    ld sp, $24ff
    rst $38
    jr c, @+$01

    db $fc
    rst $38
    ld a, [c]
    rst $38
    jp $dbff


    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld [hl], h
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    jr c, @+$01

    jr c, @+$01

    add hl, sp
    rst $38
    ld h, c
    rst $38
    ld l, c
    rst $38
    db $e3
    rst $38
    jp $83ff


    rst $38
    add d
    rst $38
    adc [hl]
    rst $38
    sbc [hl]
    rst $38
    cp $ff
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
    rst $08
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    set 7, a
    rst $08
    rst $38
    ld e, h
    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    jr @+$01

    jr c, @+$01

    ld a, h
    rst $38
    ld a, h
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    jr nc, @+$01

    jp $e0ff


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
    adc a
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    set 7, a
    ld c, e
    rst $38
    ld l, e
    rst $38
    db $f4
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    or b
    rst $38
    sbc b
    rst $38
    jr @+$01

    jr @+$01

    ld a, b
    rst $38
    jr nc, @+$01

    ld hl, sp-$01
    ret c

    rst $38
    ret c

    rst $38
    ldh a, [rIE]
    ld l, c
    rst $38
    add hl, de
    rst $38
    ld bc, $13ff
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    dec de
    rst $38
    ccf
    rst $38
    ld d, a
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
    add b
    rst $38
    sbc d
    rst $38
    sbc d
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    ld c, [hl]
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add a
    rst $38
    jp $c3ff


    rst $38
    jp $c3ff


    rst $38
    jp $e3ff


    rst $38
    pop hl
    rst $38
    add hl, bc
    rst $38
    rrca
    rst $38
    ld bc, $30ff
    rst $38
    jr nc, @+$01

    dec sp
    rst $38
    cpl
    rst $38
    daa
    rst $38
    ld b, a
    rst $38
    ld b, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    pop hl
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld b, a
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    jp nc, $dfff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp b
    rst $38
    inc e
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
    adc b
    rst $38
    db $ec
    rst $38
    cp $ff
    cp $ff
    sbc e
    rst $38
    cp b
    rst $38
    ld a, [de]
    rst $38
    dec bc
    rst $38
    ld [bc], a
    rst $38
    ld [$10ff], sp
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
    and b
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
    jr @+$1b

    ld a, [bc]
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_076_72e4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_076_72d5

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_076_7305

    ld [hl-], a

jr_076_72d5:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $0a
    ld a, [bc]
    scf
    jr c, jr_076_7317

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_076_72e4:
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

jr_076_7305:
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

jr_076_7317:
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
    or b
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_076_73e8

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_076_73f8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_076_73e1

    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_076_7419

    inc bc

jr_076_73e1:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_076_73e8:
    inc bc
    inc bc
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

jr_076_73f8:
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop

Jump_076_73ff:
    nop
    ld bc, $0305
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
    ld bc, $0300
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_076_7419:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
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
    nop
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
    ld bc, $0001
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
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld bc, $0001
    nop
    ld b, $01
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0001
    nop
    ld [bc], a
    ld b, $00
    nop
    nop
    ld bc, $0606
    ld bc, $0001
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld b, $00
    nop
    nop
    ld bc, $0602
    ld bc, $0001
    nop
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0601
    ld b, $06
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0800], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$6808], sp
    ld l, b
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    nop
    ld b, b
    add b
    and b
    ret nz

    ldh [$f0], a
    push af
    ld sp, hl
    cp d
    db $fd
    ld a, [hl]
    rst $38
    scf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld b, c
    rst $38
    ld bc, $0cff
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$c8ff], sp
    ccf
    ldh [$1f], a
    or $09
    rst $30
    ld [$18e7], sp
    rst $20
    jr @-$0f

    db $10
    rst $28
    db $10
    ld [$ee15], a
    ld de, $15ea
    ld [$cd15], a
    ld [hl-], a
    jp Jump_076_4a3c


    or l
    sbc $21
    adc d
    ld [hl], l
    jp c, $da25

    dec h
    ld e, d
    and l
    sub d
    db $ed
    sub [hl]
    jp hl


    sub d
    db $ed
    sub d
    db $ed
    sub h
    db $eb
    ld d, $e9
    ld a, [de]
    push hl
    ld [de], a
    db $ed
    db $10
    rst $28
    ld a, [de]
    push hl
    ld [de], a
    db $ed
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ret z

    rst $38
    jp z, $caff

    rst $38
    adc c
    rst $38
    db $db
    rst $38
    ei
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld c, a
    cp a
    rrca
    rst $38
    inc d
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld a, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    adc a
    ld a, a
    rlca
    rst $38
    ld a, a
    rst $38
    add sp, -$01
    cp h
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld d, c
    xor a
    inc a
    jp $e01f


    rlca
    ld hl, sp+$03
    db $fc
    ld [hl], b
    rst $38
    ret nc

    ccf
    ld e, e
    or h
    dec sp
    db $f4
    ld [hl], a
    ld hl, sp+$79
    cp $fe
    rst $38
    rst $08
    rst $38
    adc $ff
    adc $ce
    inc c
    adc h
    inc c
    db $ec
    ret z

    ld hl, sp-$20
    ld hl, sp-$08
    db $fc
    db $fd
    cp $3f
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld sp, $08ff
    rst $38
    inc b
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
    ld a, a
    ld b, b
    cp a
    ldh a, [rIF]
    ld hl, sp+$07
    ld e, h
    and e
    xor h
    ld d, e
    sub b
    ld l, a
    ret nz

    ccf
    ld h, b
    sbc a
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    db $ec
    inc de
    ld a, h
    add e
    ld e, b
    and a
    ld a, h
    add e
    ld a, [hl]
    add c
    ld l, [hl]
    sub c
    inc c
    di
    inc h
    ei
    sub b

Jump_076_7689:
    ld l, a
    adc b
    ld [hl], a
    add b
    ld a, a
    sub e
    ld l, h
    add [hl]
    ld a, c
    ld [bc], a
    db $fd
    ld d, h
    xor e
    ld b, b
    cp a
    inc b
    ei
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
    jr nz, @+$01

    jr nz, @+$01

    ld b, h
    rst $38
    jp hl


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
    rst $38
    rst $38
    cp $ff
    add d
    rst $38
    ld h, e
    sbc a
    add a
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    ld b, b
    cp a
    inc e
    db $e3
    inc bc
    db $fc
    ret z

    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    add a
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $f4
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ei
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    sbc [hl]
    rst $38
    nop
    rst $38
    add e
    db $fc
    ld de, $83ee
    db $fc
    and a
    ret c

    ld d, $e9
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr nz, @-$0e

    jr z, jr_076_7790

    ld [$109e], sp
    rrca
    jr jr_076_771d

    dec e
    add c
    dec c

jr_076_771d:
    jp $e301


    inc sp
    nop
    ld e, a
    nop
    rra
    nop
    rrca
    nop
    cp [hl]
    nop
    cp [hl]
    nop
    push hl
    nop
    ld h, a
    add b
    add b
    ret nz

    ret nc

    ldh [$f0], a
    ld hl, sp-$08
    db $fc
    ld a, [hl]
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $08
    rst $38
    inc sp
    rst $38
    add hl, de
    rst $38
    ld b, $ff
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
    dec b
    rst $38
    dec b
    rst $38
    ld bc, $00ff
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
    ld b, e
    cp a
    add e
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38

jr_076_7790:
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
    rra
    rst $38
    ccf
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ld [hl], a
    rst $38
    ld [hl], e
    rst $38
    db $e3
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
    ldh [rIE], a
    or b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    rrca
    rst $38
    ld [hl], a
    rst $38
    ld bc, $06ff
    ld sp, hl
    ld bc, $00fe
    rst $38
    nop
    rst $38
    pop af
    rst $08
    cp h
    jp $807f


    rst $38
    nop
    rra
    ldh [$81], a
    ld a, [hl]
    ld bc, $01ff
    rst $38
    ld e, $e1
    ld a, h
    add e
    ld sp, hl
    rlca
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    rla
    rlca
    dec sp

Call_076_7803:
    rlca
    rra
    daa
    rlca
    add a
    inc bc
    rst $20
    add e
    rst $38
    jp $ffff


    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [$f0]
    add c
    add c
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    add d
    jp $e3e3


    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld e, e
    rst $38
    ld c, e
    rst $38
    ld e, e
    rst $38
    ld e, e
    rst $38
    ld a, e
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
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    ld a, [c]
    rst $38
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    or $ff
    rst $30
    cp $f6
    rst $38
    or $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38

jr_076_7889:
    rst $38
    rst $38
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
    ld bc, $01ff
    rst $38
    and c
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld bc, $01fe
    cp $04
    ei
    ld b, d
    cp l
    ld [bc], a
    db $fd
    call $f0f2
    rst $38
    sbc $ff
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rlca
    ld hl, sp-$7c
    ei
    db $eb
    db $fc
    ld a, h
    rst $38
    adc c
    ld a, a
    pop af
    rrca
    ret nz

    ccf
    ld [$18f7], sp
    rst $20
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    pop hl
    rst $38
    jp c, $fcff

    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc c
    rst $38
    ld b, $fb
    inc d
    db $eb
    ld [bc], a
    ld hl, sp+$02

Call_076_78f3:
    and c
    sub b
    pop bc
    ret nz

    ld [$f860], a

jr_076_78fa:
    jr nz, jr_076_78fa

    nop
    db $ec
    nop
    call $8500
    jr nz, jr_076_7889

    nop
    ret


    add b
    jp c, $fa00

    db $10
    ld hl, sp-$80
    ld hl, sp-$68
    db $fd
    rra
    rra
    rra
    rra
    ld a, $fe
    cp h
    db $fc
    ld hl, sp-$08
    add hl, sp
    ld sp, hl
    ld sp, $31f1
    pop af
    inc sp
    di
    inc hl
    db $e3
    inc hl
    db $e3
    daa
    rst $20
    inc hl
    db $e3
    daa
    rst $20
    daa
    rst $20
    inc h
    db $e4
    ld h, h
    db $e4
    ld c, h
    call z, $78f8
    and c
    ld h, c
    xor c
    ld l, c
    cp l
    ld a, l
    cp c
    ld a, c
    ei
    ld a, e
    rst $38
    ld a, a
    rst $08
    ld c, a
    jp $d343


    ld d, e
    jp nc, $d252

    ld d, d
    ld hl, sp+$78
    ldh a, [rSVBK]
    rst $18
    ld e, a
    rst $18
    ld e, a
    ld a, a
    rst $38
    ld e, a
    rst $18
    ld e, a
    rst $18
    ld a, c
    ld sp, hl
    ld a, b
    ld hl, sp-$10
    ldh a, [$f0]
    rst $38
    cp d
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
    cp a
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    di
    rst $38
    cp c
    rst $38
    cp c
    rst $38
    sbc e
    rst $38
    sbc l
    rst $38
    sub [hl]
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    cp b
    rst $38
    cp d
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    or c
    rst $38
    db $10
    rst $38
    ret z

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld bc, $83ff
    ld a, a
    ld b, $ff
    ld b, b
    rst $38
    rrca
    rst $38
    rst $08
    ccf
    di
    rrca
    inc a

jr_076_79ab:
    jp $ff00


    inc a
    rst $38
    ld a, $ff
    ld [hl], $ff
    nop
    rst $38
    ld l, h
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    and e
    rst $38
    dec bc
    rst $30
    ld a, b
    add a
    jr jr_076_79ab

    inc bc
    db $fc
    add b
    ld a, a
    ldh a, [rIF]
    jr nz, jr_076_79ab

    ret nz

    rst $38
    and b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    or $f9
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld a, h
    add a
    ld a, e
    add a
    ld b, b
    cp a
    ld hl, $09de
    or $39
    add $f1
    ld c, $e1
    rra
    rlca
    rst $38
    add c
    ld a, a
    sub b
    ld l, a
    ld bc, $83fe
    ld a, h
    ld b, $f9
    ld bc, $4cff
    or e
    ld l, b
    or a
    jr z, @-$07

    and c
    ld a, a
    add l
    ld a, a
    and l
    ld e, a
    scf

jr_076_7a0b:
    rst $08
    ld [hl], c
    adc a
    db $76
    adc c
    ld c, d
    or l
    jr z, jr_076_7a0b

    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    db $ec
    rst $38
    cp $ff
    or $ff
    db $e4
    rst $38
    call $81ff
    rst $38
    add b
    rst $38
    add e
    rst $38
    db $e4
    rst $38
    push af
    rst $38
    call nz, $ccff
    rst $38
    rra
    rst $38
    ld b, a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld c, $ff
    call z, $fcff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld [hl], e
    rst $38
    cp h
    rst $38
    ld c, $ff
    rra
    rst $38
    xor $ff
    cp $ff
    cp $ff
    cp $ff
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    jp z, $b8ff

    rst $38
    ld l, b
    rst $38
    jp hl


    rst $38
    xor e
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    rst $38
    ld h, a
    rst $38
    inc bc
    rst $38
    ld bc, $f1ff
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld [hl-], a
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    ld hl, $21ff
    rst $38
    ld [hl], $ff
    ld [hl], $ff
    inc b
    rst $38
    ld [hl], b
    rst $38
    inc c
    di
    add b
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld [bc], a
    db $fd
    and c
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $20
    push hl
    ei
    inc l
    rst $38
    ret nz

    ccf
    nop
    rst $08
    ld b, b
    ld [c], a
    nop
    ld hl, sp+$00
    cp $00
    rst $08
    adc b
    pop bc
    ret nz

    ret nc

    pop hl
    db $fc
    ldh a, [rIE]
    ld a, c
    rst $38
    ld [de], a
    rst $38
    nop
    pop af
    ld bc, $30f0
    ld hl, sp+$00
    ld hl, sp+$00
    ld sp, hl
    db $76
    adc c
    ld a, l
    add e
    ld a, [hl]
    add a
    ld [hl], h
    adc a
    dec sp
    call z, $d837
    rra
    ldh a, [$2f]
    ldh a, [$cf]
    jr nc, jr_076_7b47

    sbc e
    ret nz

    ccf
    xor $11
    cp $01
    ld sp, hl
    rlca
    inc c
    rst $38
    pop af
    cp $e7
    ld hl, sp-$21
    ldh [rP1], a
    rst $38
    inc a
    rst $38
    dec a
    rst $38
    ld a, h
    rst $38
    ld sp, hl
    cp $f2
    db $fd
    inc c
    rst $38
    inc c
    rst $38
    add b
    rst $38
    add c
    rst $38
    add d
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld b, b
    rst $38
    dec de
    rst $38
    ld c, a
    rst $38
    ld b, $ff
    ld h, b
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    jr @+$01

    add sp, -$01
    add sp, -$01
    ret c

    rst $38
    inc e
    rst $38
    inc a
    rst $38
    ld a, $ff
    ccf
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld l, h
    rst $38
    ld l, a
    rst $38
    ld [hl], e
    rst $38
    sbc e
    rst $38
    add a
    rst $38
    call nz, $84ff

jr_076_7b47:
    rst $38
    push hl
    rst $38
    dec a
    rst $38
    ld l, a
    rst $38
    adc $ff
    rst $20
    rst $38
    di
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp [hl]
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    ld c, a
    rst $38
    ld e, e
    rst $38
    inc a
    rst $38
    sub h
    rst $38
    db $f4
    rst $38
    ld sp, hl
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ret c

    rst $38
    call nz, $d1ff
    rst $38
    pop de
    rst $38
    sbc a
    rst $38
    sbc l
    rst $38
    db $dd
    rst $38
    ld e, c
    rst $38
    jr @+$01

    jr @+$01

    ret c

    rst $38
    sbc c
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    dec sp
    rst $38
    ld b, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    cp $ff
    ccf
    rst $38
    adc a
    rst $38
    ldh [rIE], a
    ld c, $ff
    inc c
    rst $38
    ld [$0eff], sp
    pop af
    sbc a
    ldh [rSCX], a
    db $fc
    nop
    rst $38
    ld bc, $00ff
    ld hl, $0f00
    ld h, d
    ld c, $c0
    rrca
    ld b, b
    ld [$9b10], sp
    ld sp, $207f
    ld a, l
    ld b, b
    ldh [$c1], a
    ld hl, sp-$80
    ld hl, sp+$00
    db $fc
    nop
    db $dd
    nop
    ld e, $00
    cp a
    add b
    rst $30
    ret z

    rst $38
    add b
    ret nz

    stop
    nop
    rst $00
    nop
    rra
    nop
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0300
    add b
    inc b
    add b
    nop
    rst $18

jr_076_7be8:
    jr nz, jr_076_7be8

    nop
    pop af
    nop
    add b
    nop
    nop
    cp $01
    inc bc
    db $fc
    dec bc
    db $fc
    dec de
    db $fc
    and b
    rst $38
    ld [hl], h
    adc a
    pop hl
    ld e, $3b
    call nz, $e718
    inc [hl]
    rlc d
    db $fd
    add d
    db $fd
    ld [hl+], a
    db $fd
    ld h, b
    rst $38
    ld h, b
    rst $38
    add e
    rst $38
    rst $28
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [$f0ff], sp
    rst $38
    di
    rst $38
    pop hl
    rst $38
    inc sp
    rst $38
    nop
    rst $38
    add d
    rst $38
    add b
    rst $38
    add l
    rst $38
    and e
    rst $38
    ld [c], a
    rst $38
    ld [hl], b
    rst $38
    ld a, c
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, h
    rst $38
    ld [hl], c
    rst $38
    rst $30
    rst $38
    jp nc, $d0ff

    rst $38
    ld d, l
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    cp $ff
    ei
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ld sp, hl
    rst $38
    inc sp
    rst $38
    ld d, e
    rst $38
    ld l, l
    rst $38
    db $dd
    rst $38
    db $fd
    rst $38
    xor c
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    xor c
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld l, e
    rst $38
    rst $28

jr_076_7c6d:
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc e
    rst $38
    ld [$7bff], a
    rst $38
    cp e
    rst $38
    push bc
    rst $38
    sbc h
    rst $38
    inc e
    rst $38

Call_076_7c82:
    ld [hl], h
    rst $38
    ld [hl], d
    rst $38
    ldh a, [rIE]
    ld bc, $c0ff
    rst $38
    jr nz, jr_076_7c6d

    ld bc, $01ff
    rst $38
    inc de
    rst $28
    dec c
    di
    dec b
    ei
    nop
    rst $38
    nop
    rst $38
    sub b
    rst $38
    jp nz, $01fd

    cp $40
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    sbc h
    ld a, a
    ld b, [hl]
    cp a
    inc bc
    cp $60
    rst $38
    ld bc, $00fb
    ei
    nop
    rst $08
    ld [bc], a
    rst $08
    nop
    rst $30
    ret z

    ldh [$80], a
    ret nz

    inc bc
    xor a
    rst $30
    ld a, a
    ld [hl], a
    ld a, a
    nop
    ld a, a
    ld bc, $0800
    nop
    ld bc, $0007
    rst $38
    nop
    ldh a, [$7e]
    add c
    ld sp, hl
    rlca
    rrca
    rst $38
    or a
    rst $38
    adc l
    rst $38
    nop
    rst $38
    ld bc, $96ff
    ld l, a
    pop de

jr_076_7ce1:
    nop
    add b
    ld e, $01
    add sp, $10
    add b
    nop
    inc b
    nop
    inc b
    nop
    ld b, b
    nop
    stop
    ldh [rP1], a
    nop
    nop
    rra
    nop
    inc hl
    nop
    add e
    db $10
    ld [bc], a
    jr nz, jr_076_7d02

    nop

Call_076_7cff:
    db $10
    jr nz, jr_076_7ce1

jr_076_7d02:
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ldh [rIE], a
    and b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr c, @+$01

    inc c
    rst $38
    db $fc
    rst $38
    pop af
    rst $38
    ret nz

    rst $38
    ld bc, $40ff
    rst $38
    ld h, b
    rst $38
    ld a, [bc]
    rst $38
    sub a
    rst $38
    rst $00
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, h
    rst $38
    inc [hl]
    rst $38
    ld e, $ff
    jp nz, $90ff

    rst $38
    xor b
    rst $38
    cp h
    rst $38
    sbc [hl]
    rst $38
    sbc h
    rst $38
    cp h
    rst $38
    ret c

    rst $38
    ld [hl], b
    rst $38
    jr c, @+$01

    rst $38
    rst $38
    and $ff
    db $e4
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    ld a, h
    rst $38
    cp [hl]
    rst $38
    nop
    rst $38
    call z, $58ff
    rst $38
    cp b
    rst $38
    ld [hl], b
    rst $38
    jr nz, @+$01

    add b
    rst $38
    and b
    rst $38
    db $f4
    rst $38
    ld a, a
    rst $38
    scf
    rst $38
    inc sp
    rst $38
    ld [hl-], a
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    dec de
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld h, h
    rst $38
    and b
    rst $38
    add b
    rst $38
    add b

jr_076_7d89:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    jr @+$01

    inc b
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    inc a
    jp $03fc


    cp b
    ld b, a
    add b
    ld a, a
    nop
    rst $38
    pop bc
    ld a, $26
    ld sp, hl
    ld b, $f9
    rla
    add sp, -$51
    ld d, b
    rra
    ldh [$80], a
    and $3f
    add b
    ld a, a
    nop
    ld a, a
    nop
    ld a, $80
    ld b, b
    pop hl
    ld h, b
    db $fd
    ldh a, [$fc]
    ldh [rIE], a
    rst $00
    ld hl, sp+$0e
    pop af
    call nz, $6d3b
    di
    rst $18
    db $e3
    di
    rrca
    rst $38
    rrca
    ld e, c
    cp a
    db $db
    rst $38
    ld hl, sp-$21
    jp $c1bc


    cp $87
    ld hl, sp+$64
    ei
    nop
    rst $38
    add b
    inc a
    rlca
    ld b, b
    sub a
    nop
    add e
    nop
    add c
    nop
    ret nz

    db $10
    ld b, c
    ld [$0013], sp
    add hl, bc
    add b
    nop
    ld b, b
    ld bc, $11c0
    ret nz

    ld bc, $00c0
    ld [hl+], a
    nop
    scf
    nop
    add h
    jr nz, jr_076_7d89

    nop
    rst $00
    nop
    pop af
    nop
    di
    nop
    ei
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    ld [hl], d
    adc l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Call_076_7e23:
    rst $38
    add h
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    ld bc, $a0ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [hl], b

jr_076_7e35:
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    ld bc, $20fe
    rst $18
    ld b, d
    rst $38
    ld [$3cf7], sp
    jp $c639


    ld a, h
    add a
    jr jr_076_7e35

    inc de
    db $ec
    nop
    nop
    nop
    nop
    add hl, bc
    add hl, bc
    add sp, -$18
    ld a, b
    ld a, b
    ld a, e
    ld a, e
    ret


    ld sp, hl
    adc b
    ld hl, sp-$78
    ld hl, sp-$78
    ld hl, sp-$63
    db $fd
    sbc b
    ld hl, sp-$68
    ld hl, sp-$68
    ld hl, sp-$30
    ldh a, [$90]
    ldh a, [$9c]
    db $fc
    ret c

    ld hl, sp-$02
    cp $fe
    cp $f0
    ldh a, [$f0]
    ldh a, [$f7]
    rst $30
    db $f4
    db $f4
    ld [hl], h
    rst $38
    ldh a, [rIE]
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr @+$01

    inc h
    rst $38
    jr nz, @+$01

    dec e
    cp $02
    rst $38
    nop
    rst $38
    rst $20
    rra
    ld d, b
    xor a
    add c
    cp $83
    db $fc
    nop
    rst $38
    ld [$00f8], sp
    ld sp, hl
    nop
    rst $38
    ld b, $ff
    sbc b
    cp $00
    ldh a, [rP1]
    inc hl
    dec c
    inc bc
    ld a, h
    inc bc
    add b
    ld b, $fc
    nop
    adc l
    db $10
    ld l, c
    ldh a, [rBCPD]
    ldh a, [$e1]
    ldh a, [$62]
    ldh a, [$9f]
    ld h, b
    add b
    ld a, a
    ld l, [hl]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    rra
    rst $38
    adc a
    rst $38
    cpl
    rst $38
    cp a

Call_076_7ed1:
    rst $38
    add e
    db $fc
    ld a, a
    add b
    rst $38
    nop
    cp $01
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    inc bc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld b, e
    cp h
    rst $30
    nop
    add b
    ld [bc], a
    ld h, h
    ld [bc], a
    rra
    nop
    add d
    nop
    ret nz

    nop
    jp nz, $d000

    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    nop

Call_076_7eff:
    nop
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    inc bc
    db $fc
    ccf
    ret nz

    rlca
    ld hl, sp+$1e
    pop hl
    rra
    ldh [rTAC], a
    ld hl, sp+$02
    db $fd
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
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
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    inc de
    db $fc
    dec bc
    db $f4
    rra
    ldh [$87], a
    ld a, b
    ccf
    ret nz

    nop
    jp nz, Jump_000_2600

    nop
    ld b, $00
    call nz, $9a00
    nop
    sub d
    ld bc, $0592
    add b
    ld [bc], a
    ldh [$60], a
    rst $38
    ld [hl], e
    ei
    ld [hl], c
    ld a, e
    ld sp, $e1fb
    ei
    sub c
    rst $38
    db $10
    ld sp, hl
    ld a, $d1
    dec bc

jr_076_7f63:
    db $f4
    add d
    db $fd
    ld b, e
    cp h
    sub e
    ld l, h
    dec de
    db $e4
    call nz, Call_076_7eff
    rst $38
    ld h, d
    db $fd
    ret c

    rst $20
    ld b, b
    rst $38
    ld [hl], h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    call z, Call_076_68ff

jr_076_7f81:
    rst $38
    ld h, b
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    jr z, jr_076_7f63

    ld a, h
    adc a
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0eff
    rst $38
    sub e
    ld a, a
    adc a
    di
    nop
    rst $38
    nop
    cp $10
    ld hl, sp+$00
    ld [hl], b
    ld [$7161], sp
    inc bc
    ld [$8fbf], sp
    ldh a, [$be]
    add b
    ld a, h
    nop
    ld hl, sp+$03
    ldh a, [rDIV]
    db $eb
    nop
    ret


    nop
    jp Boot


    inc e
    add b
    ld a, a
    ret nz

    rst $38
    and b
    rst $38
    ldh [rIE], a
    ld a, [c]
    rst $38
    cp $ff
    ld hl, sp-$01
    ld sp, hl
    rst $38
    dec h
    rst $38
    add l
    ld a, a
    cp a
    ld a, a
    db $f4
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    add b
    ld a, b
    add b
    ld a, h
    add b
    ld c, $f0
    rst $00
    ld hl, sp-$7f
    cp $e0
    rst $38
    ldh a, [rIE]
    ld a, b
    rlca
    ld a, [hl]
    ld bc, $3cc3
    ld [hl], l
    ld a, [bc]
    ld e, a
    nop
    inc bc
    ld b, b
    dec d
    ld h, d
    ld e, a
    db $20
