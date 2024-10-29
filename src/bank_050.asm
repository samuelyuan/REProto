SECTION "ROM Bank $050", ROMX[$4000], BANK[$50]

    ld d, $eb
    inc b
    ei
    sbc b
    rst $20
    add hl, bc
    rst $30
    db $38, $c7
    cp b
    add $18
    pop hl
    add l
    jp Jump_000_00f3


    pop af
    nop
    pop af
    inc bc
    rst $20
    rra
    adc l
    ld a, [hl]
    ld c, h
    cp [hl]
    ret nz

    cp h
    xor h
    db $d3
    ret nz

    rst $38
    jp $e0ff


    rst $38
    di
    db $fd
    rst $30
    ld hl, sp+$75
    ld hl, sp+$26
    ld hl, sp-$49
    ld hl, sp-$6d
    db $fc
    or e
    db $fc
    sbc c
    cp $5f
    cp $1f
    cp $4e
    rst $38
    xor a
    rst $38
    sbc l
    rst $38
    ld b, $ff
    ld d, $ff
    inc bc
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rra
    rst $38
    cpl
    rst $38
    rla
    rst $38
    adc a
    rst $38
    add a
    rst $38
    ld a, e
    rst $38
    ld e, h
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    cpl
    rst $38
    ld h, d
    add c
    add e
    ld b, b
    and e
    ld b, b
    ld h, a
    nop
    ld [c], a
    nop
    ld h, d
    nop
    halt
    or b
    nop
    or b
    nop
    ret nc

    nop
    ld [hl], d
    nop
    sbc e
    nop
    ld c, e
    nop
    ld d, e
    nop
    reti


    nop
    add hl, hl
    nop
    add hl, hl
    nop
    add hl, bc
    nop
    add hl, hl
    nop
    jr nz, jr_050_40a8

jr_050_40a8:
    stop
    nop
    nop
    jr nc, jr_050_40ae

jr_050_40ae:
    inc d
    nop
    rrca
    inc bc
    db $10
    rra
    ldh [rIE], a
    sub b
    rst $38
    jr @+$01

    nop
    rst $38
    ld bc, $01ff
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
    cp a
    rst $38
    cp a
    rst $38
    sub a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    db $fc
    rst $08
    ldh a, [$61]
    add a
    rrca
    rra
    ld a, b
    rst $38
    add e
    rst $38
    cp h
    rrca
    ldh a, [$7f]
    add b
    rst $38
    ld b, c
    cp $0f
    db $f4
    ld [hl], d
    db $fd
    call c, Call_000_21e3
    jp nc, $ffe9

    db $ed
    rst $38
    db $ec
    rst $38
    ld [hl], $ff
    inc h
    rst $38
    ld [hl+], a
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    ld bc, $00ff
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $08
    inc b
    ccf
    add hl, de
    rst $20
    rrca
    rst $38
    adc $3f
    ld h, c
    db $fc
    ret nz

    ldh [$67], a
    add b
    cp e
    nop
    ld de, $8623
    ccf
    ret c

    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add b
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
    ret nz

    ccf
    ldh [$9f], a
    ldh [$9f], a
    ldh a, [$8f]
    pop hl
    rst $08
    rst $08
    adc $ff
    pop bc
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $30
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    ei
    rst $38
    ei
    rst $38
    db $fc
    rst $38
    cp $ff
    db $e3
    rst $38
    di
    rst $38
    push af
    ei
    push af
    ei
    ld hl, sp-$01
    ld a, [$fafd]

jr_050_416d:
    db $fd
    ld a, [$02fd]
    db $fc
    ld b, $fc
    ld [bc], a
    db $fc
    ld bc, $03fe
    cp $01
    cp $00
    rst $38
    ld bc, $61ff
    nop
    ld [hl], c
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    or b
    ld [$102c], sp
    inc e
    jr nz, jr_050_41cb

    nop
    or [hl]
    nop
    db $fd
    nop
    rst $28
    nop
    ld e, l
    nop
    jp nc, $d600

    nop
    sub $00
    sub h
    nop
    ld [hl], $00
    jr nc, jr_050_41a4

jr_050_41a4:
    ld h, b
    nop
    ldh a, [rP1]
    ldh [rP1], a
    ld h, c
    nop
    ld h, l
    rlca
    dec l
    ld a, a
    ld hl, $20ff
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
    nop
    rst $38
    inc b
    ei
    ld [de], a
    db $fd
    ld bc, $07fe
    ld hl, sp+$1f

jr_050_41cb:
    ldh [$3f], a
    ret nz

    ld h, d
    sbc h
    ld [hl], b

jr_050_41d1:
    add b
    ld bc, $1f00
    nop
    db $e3
    inc e
    scf
    pop bc
    ld a, [hl]
    adc a
    db $f4
    ld a, a
    add b
    rst $38
    inc bc
    db $fd
    inc c
    di
    ld a, h
    pop de
    and l
    jr jr_050_416d

    jr c, jr_050_41d1

    jr @-$6c

    ld l, h
    rra
    ldh [$0a], a
    rst $30
    ld d, h
    xor e
    adc h
    di
    scf
    pop bc
    inc d
    db $e3
    inc e
    db $e3
    ld d, $e1
    ld [$f0f0], sp
    nop
    add c
    nop
    db $fc
    nop
    ld a, [$f000]
    inc c
    sbc b
    ld a, h
    db $ed
    ldh a, [$a7]
    ret nz

    ld a, c
    add [hl]
    inc a
    jp $ef1f


    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    ld hl, sp-$20
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
    db $fc
    nop
    ldh a, [rP1]
    ret nc

    nop
    add sp, $00
    add c
    nop
    add c
    nop
    rrca
    nop
    sbc h
    inc bc
    ld bc, $0ff0
    jp $8f9f


    rst $38
    ccf
    rst $38
    cp $fd
    ld hl, sp-$0f
    ldh [$f4], a
    ret nz

    ld a, b
    add h
    or [hl]
    ret z

    sub [hl]
    add sp, -$64
    ld [c], a
    sbc e
    db $e4
    dec a
    ldh [$6e], a
    or b
    xor $30
    ld c, [hl]
    or b
    adc a
    ld [hl], b
    ld c, a
    ldh a, [$a7]
    ld hl, sp-$39
    ld hl, sp-$29
    ld hl, sp-$1e
    db $fd
    db $f4
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld e, a
    cp a
    ld e, a
    cp a
    rst $28
    nop
    and $00
    jp $f704


    nop
    rst $20
    nop
    xor $00
    ld h, a
    nop
    and a
    nop
    ld h, a
    nop
    rla
    nop
    rla
    nop
    ld b, $00
    ld d, $00

jr_050_429a:
    ld b, $00
    ld [bc], a
    nop
    nop
    nop
    stop
    ld [bc], a
    nop
    nop
    nop
    dec de
    ld bc, $1f39
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld b, b
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
    rst $20
    rst $38
    di
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld sp, hl

jr_050_42c9:
    cp $7f
    ldh [$7e], a
    add c
    adc [hl]
    rra
    ld e, a
    jr nz, jr_050_429a

    ld hl, $0f3f
    ld a, [c]
    ld a, a
    and b
    rst $38
    nop
    db $fc
    ld c, $f4
    ld [hl], a
    ld a, [$f689]
    inc [hl]

jr_050_42e3:
    jp $fa0d


    inc [hl]
    swap d
    call $6699
    jp c, Jump_050_5e25

    ld hl, $bf50
    db $10
    rst $38
    ld [$30ff], sp
    rst $08
    jr nc, jr_050_42c9

    jr jr_050_42e3

    ld [bc], a
    db $fd
    add hl, de
    rst $20
    di
    rrca
    ld c, d
    ccf
    db $10
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add b
    ld a, a
    add h
    ld a, a
    add e
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    ccf
    rra
    rra
    rra
    rra
    sbc a
    rrca
    ld a, a
    adc a
    ccf
    rst $08
    rst $08
    ccf
    rst $20
    rra
    rst $30
    rrca
    di
    rrca
    reti


    rlca
    pop hl
    rlca
    add h
    inc bc
    nop
    ld bc, $0300
    inc b
    inc bc
    ld c, $07
    jr c, @+$11

    ld h, c
    rra
    add a
    ld a, a
    rra
    rst $38
    ld a, a
    rst $38
    ret nz

    rst $38
    adc d
    pop af
    cp l
    jp nz, $df00

    ld c, $71
    ld c, d
    ld hl, $2003
    ld de, $d220
    add hl, sp
    rst $10
    jr c, @+$01

    jr @+$01

    ld [$0cdb], sp
    rst $08
    inc b
    push af
    ld b, $04
    add d
    ld [hl], a
    add d
    ret nz

    inc bc
    ld [$4801], a
    add c
    ld c, b
    and c
    nop
    ldh [rNR32], a
    ldh [rHDMA1], a
    ldh [$30], a
    add b
    ld h, b
    add b
    ldh a, [rLCDC]
    ld hl, sp-$80
    cp b
    ldh [$f8], a
    and b
    db $fc
    ret nc

    db $fc
    db $e4
    xor d
    dec b
    adc $01
    xor l
    ld [bc], a
    xor h
    inc bc
    adc $01
    xor a
    nop
    ld c, [hl]
    ld bc, $0520
    and c
    inc b
    ld h, a
    nop
    daa
    nop
    ld l, a
    nop
    ld l, [hl]
    nop
    dec b
    nop
    rrca
    nop
    rlca
    nop
    dec c
    ld bc, $0f3c
    ld h, b
    ccf
    ld b, b
    rst $38
    jr nz, @+$01

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
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    ld [$06f7], sp
    ld hl, sp+$18
    ldh [$c2], a
    ld bc, $0700
    rst $20
    jr jr_050_440c

    pop bc
    rst $38
    rrca

jr_050_43d0:
    cp $7f
    ldh a, [rIE]
    add e
    rst $38
    inc e
    rst $30
    ld a, b
    rst $00
    sub h
    ld h, e
    ld e, b
    inc hl
    jp z, $fa31

    db $fd
    add c
    cp $00
    rst $38
    cp b
    ld b, a
    ld a, b
    add a
    ld c, b
    add a
    inc b
    jp $c334


    ldh [rP1], a
    pop af
    nop
    jp $fd00


    nop
    pop hl
    inc bc
    rst $30
    rrca
    rst $18
    ccf
    jp $87ff


    rst $38
    ld h, a
    rst $38
    set 7, a
    ld l, a
    rst $38
    rst $20
    rst $38
    ld h, [hl]
    rst $38

jr_050_440c:
    pop af
    cp $ea
    push af
    rst $38
    rst $38

jr_050_4412:
    db $fc
    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    add sp, -$01
    db $f4
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    cp $df
    ld a, h
    rst $38
    sbc l
    rst $28
    inc l
    rst $30
    ld [$16f7], sp
    ld sp, hl
    dec b
    ld a, [$7c83]
    inc bc
    ld a, h
    inc bc
    ld a, h
    add c
    ld a, [hl]
    pop bc
    cp $c0
    rst $38
    add $f9
    pop de
    ldh [$e1], a
    ldh [$e0], a
    ldh [$e8], a
    ldh a, [$e0]
    ldh a, [$f0]
    ld h, b
    ret c

    nop
    sbc h
    nop
    or $00
    jr z, jr_050_43d0

    and $18
    cp b
    rst $00
    ld a, d
    push bc
    ret nc

    ld l, a
    di
    inc l
    db $fd
    ld [bc], a
    db $e3
    inc d
    ld e, e
    jr nc, @+$61

    jr nz, jr_050_44be

    jr z, @-$14

    dec d
    db $ed
    db $10
    db $ed
    db $10
    ld [hl], h
    adc d
    ld e, b
    add d
    ret c

    ld b, c
    ccf
    ld b, b
    rrca
    jr nz, jr_050_448b

    jr z, jr_050_4412

    jr nz, jr_050_44c3

    db $10
    xor [hl]
    ld de, $0916
    rrca
    ld [$13e4], sp
    ld e, h
    inc hl
    call c, $fe23
    ld bc, $03fc
    db $ec

jr_050_448b:
    inc de
    ld a, l
    ld [bc], a
    ld e, b
    inc hl
    call Call_050_5832
    daa
    ld e, l
    ld [hl+], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, h
    inc bc
    ld a, d
    rlca
    ld a, b
    rra
    db $ec
    rst $38
    xor [hl]
    rst $38
    ld a, [bc]
    rst $38
    ld de, $08ff
    rst $38
    ld [$04ff], sp
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
    db $f4
    rst $38
    pop bc
    rst $38
    adc $ff

jr_050_44be:
    rst $10
    ld hl, sp+$43
    add b
    add a

jr_050_44c3:
    nop
    db $e3
    inc e
    ld a, a
    add c
    ld a, a
    adc a
    cp $3f
    ldh a, [rIE]
    add e
    rst $38
    ld e, $f1
    and $d9
    ret nz

    cp a
    ldh [$1f], a
    ld [hl], c
    adc [hl]
    ld b, a
    cp b
    ld b, d
    cp l

jr_050_44de:
    ld [hl+], a
    call c, $ff5e
    ld b, [hl]
    rst $38
    ld hl, $20ff
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    jr nz, @-$1f

    ld [hl-], a
    rst $08
    ld a, $01
    db $db
    rlca
    rst $08
    ccf
    ld d, e
    rst $38
    adc e
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    ld e, $ff
    ccf
    rst $38
    ld a, $ff
    inc a
    rst $38
    ld h, b
    rst $38
    jr @-$17

    ld [hl], e
    adc h
    rst $08
    jr nc, jr_050_454e

    ret nz

    ld [hl], b
    adc a
    or b
    rrca
    ld h, b
    rra
    ld bc, $11fe
    xor $04
    ei
    inc d
    db $eb
    ld [de], a
    db $ed
    push bc
    rst $38
    pop af
    rst $38
    call z, $a2fb
    db $fd
    ld b, e
    db $fc
    ret nz

    cp $c9
    or $20
    rst $38
    ret


    jr nc, jr_050_44de

    ld d, b
    ld h, l
    jr jr_050_455a

    ld c, h
    ld a, c
    ld b, $91
    ld h, $5d
    and d
    jr z, jr_050_4593

    ld h, e
    rst $38
    ld c, c
    cp a
    rra
    rst $38
    rra
    ld a, a
    sbc a
    ld a, a
    rst $38
    rra
    ld c, a
    cp a

jr_050_454e:
    rst $08
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $30
    rrca
    ld a, e
    add a
    ld c, [hl]
    sub e

jr_050_455a:
    ccf
    add c
    inc sp
    ret


    xor $40
    add d
    ld h, c
    sub h
    ld h, e
    jp z, $d837

    daa
    adc c
    ld a, a
    db $dd
    cpl
    adc $3f
    ld a, [hl]
    rla
    inc bc
    ld e, a
    ld l, e
    dec de
    sub e
    cpl
    or a
    ld b, c
    sbc a
    ld h, c
    rst $28
    db $10
    call nc, $e23a
    inc e
    adc a
    ld a, e
    adc c
    ld a, [hl]
    ret


    ld a, $81
    ld a, [hl]
    add l
    ld a, d
    adc [hl]
    ld [hl], h
    adc a
    ld [hl], h
    adc l
    db $76
    sbc e
    ld [hl], h
    adc d

jr_050_4593:
    db $76
    add a
    ld a, h
    sbc e
    ld [hl], l
    sbc h
    ld a, a
    ld l, e
    rst $38
    ld h, l

jr_050_459d:
    rst $38
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [c]
    rst $38
    add e
    rst $38
    db $db
    ccf
    inc a
    rst $38
    ccf
    jp $9f7f


    rst $38
    ld a, a
    cp $ff
    ld hl, sp-$01
    jr nz, @+$01

    db $e3
    db $fc
    ret nz

    ccf
    ld [c], a
    rra
    ld [hl], b
    adc a
    jr c, jr_050_459d

    inc e
    db $e3
    call c, Call_050_6e23
    ld de, $013e
    cp a
    nop
    ld h, e
    sbc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    add hl, de
    rst $20
    ld a, [bc]
    sbc a
    nop
    rst $08
    dec c
    rst $28
    ld a, [hl]
    rst $38
    db $ec
    rst $38
    adc c
    rst $38
    add e
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    sbc a

jr_050_45fb:
    rst $38
    sbc a
    rst $38
    add c
    rst $38
    adc a
    pop af
    add a
    ld hl, sp+$03
    db $fc
    dec bc
    db $f4
    xor c
    ld d, [hl]
    and $19
    db $f4
    dec bc
    ei
    inc b
    dec b
    rst $38
    ld b, d
    cp a
    add l
    ld a, e
    ld b, b
    cp a
    nop
    rst $38
    and b
    ld e, a
    ret nc

    cpl
    ld d, b
    xor a
    ld l, b
    sub a
    jr z, jr_050_45fb

    or [hl]
    ld c, c
    sbc b
    ld h, l
    sub e
    inc h
    xor b
    rla
    ld b, e
    inc e
    ld b, [hl]
    ld [$2cd7], sp
    ld a, l
    add [hl]
    inc sp
    adc $3f
    jp $e31c


    inc a
    pop bc
    inc h
    ret nc

    add hl, sp
    ret nz

    db $10
    add sp, $1c
    ldh [$8e], a
    ldh a, [$87]
    ld hl, sp-$3e
    db $fc
    jp nz, $e0fd

    rst $38
    db $ec
    rst $38
    rrca
    ldh a, [$8f]
    ldh a, [$a7]
    ld e, b
    or a
    ld c, b
    ld a, [$fa04]
    inc b
    db $fd
    ld [bc], a
    ld e, l
    add d
    pop bc
    rst $38
    ld d, c
    rst $38
    ld h, b
    rst $38
    inc l
    di
    ld a, h
    or e
    sub d
    ld sp, hl
    db $10
    ld sp, hl
    inc c
    ld sp, hl
    dec c
    db $fc
    rlca
    db $fc
    dec b
    cp $83
    cp $a2
    rst $38
    pop bc
    rst $38
    ld de, $c1ff
    ld a, a
    ld a, [c]
    rrca
    pop hl
    rra
    db $e3
    ld e, $e3
    rra
    ld h, a
    dec e
    reti


    scf
    rst $00
    dec a
    rst $10
    cpl
    push af
    rra
    db $dd
    ccf
    ld [hl], a
    cp a
    cp a
    rst $38
    dec bc
    rst $38
    inc b
    rst $38
    and b
    rst $38
    ld h, b
    rst $38
    or b
    rst $38
    ld b, e
    rst $38
    ld c, a
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
    nop
    rst $38
    jr nz, @+$01

    ret nz

    ccf
    nop
    rst $38
    db $10
    rst $38
    ld bc, $08f7
    di
    call z, $e2f1
    db $fc
    db $d3
    cp $68
    rst $18
    ld a, [bc]
    db $fd
    ld e, $fd
    ld e, [hl]
    ld a, [c]
    cp a
    ld b, e
    ld [hl], a
    adc a
    inc c
    rst $38
    jr nz, @+$01

    inc bc
    rst $38
    daa
    rst $18
    inc c
    rst $30
    ldh a, [$1f]
    add b
    ld a, a
    sbc $ff
    dec a
    rst $38
    ld [hl], c
    rst $38
    add h
    rst $38
    ld b, $f9
    ld [de], a
    rst $28
    add hl, sp
    add $46
    cp b
    ldh [rP1], a
    add a
    nop

jr_050_46f4:
    cpl
    add b
    sub a
    ret z

    adc b
    ret nz

    ld e, b
    db $e4
    ld c, $f0
    di
    ld hl, sp-$5f
    cp $2b
    db $fc
    dec c
    cp $d9
    ld a, [hl]

jr_050_4708:
    jp c, $cb3f

    ccf
    ei
    rra
    ld a, d
    adc a
    or a
    ld c, a
    cp a
    ld b, a
    db $dd
    inc hl
    xor $11
    xor $11

jr_050_471a:
    ld [hl], a
    adc b
    and e
    ld e, h
    pop af
    ld c, $52
    xor a
    ld bc, $0cff
    di
    ld b, $f9
    ld [hl-], a
    call $fc01
    jr c, jr_050_46f4

    sbc d
    ld h, l
    pop hl
    ld a, a
    ld [c], a
    ccf
    pop af
    ccf
    call c, Call_050_6c33
    sbc e
    ld [c], a
    sbc l
    or b

Jump_050_473d:
    rst $08
    ld a, e
    ld b, [hl]
    sbc b
    ld h, a
    xor e
    dec [hl]
    db $ed
    ld [de], a
    inc a
    inc de
    ld d, $09
    ld b, a
    ld [$004f], sp
    cp l
    ld [bc], a
    add c
    ld [bc], a
    ret nc

    ld bc, $c120
    dec h
    ret nz

    jr nc, jr_050_471a

    ld [$c2f0], sp
    ld sp, $12e9
    ret


    inc [hl]
    ret


    or [hl]

jr_050_4764:
    sbc a
    ldh [rIE], a
    ret nz

    ld l, a
    ret nc

    dec sp
    db $e4
    cp $20
    rst $00
    jr nc, jr_050_4708

    ld [hl], b
    rst $18
    jr c, jr_050_4764

    jr jr_050_4785

    ld e, l
    ld e, [hl]
    inc l
    and e
    ld e, $57
    adc h
    ei
    add l
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38

jr_050_4785:
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
    rst $38
    rst $38
    ei
    ld a, a
    ei
    ld a, a
    pop af
    cp a
    pop af
    sbc a
    pop af
    ld c, a
    ld sp, hl
    rlca
    cp $1f
    rst $38
    rst $38
    rst $38
    call nc, Call_000_00ff
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
    ld [$14ff], sp
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    cpl
    ld a, a
    rrca
    cp a
    xor e
    sbc a
    ld d, b
    adc a
    adc d
    rst $20
    and c
    ld [hl], a
    add d
    cp c
    ld d, l
    ret z

    xor $e0
    push af
    ld [c], a
    sbc b
    di
    db $ed

jr_050_47db:
    jr jr_050_47db

    inc b
    and [hl]
    jr jr_050_4847

    rst $38
    ret c

    rst $38
    jr c, @+$01

    or e
    ld a, h
    adc a
    ldh a, [$3d]
    jp $0fb0


    nop
    ccf
    add e
    ld a, h
    inc bc
    db $fc
    ld c, $f1
    ld [hl], b
    adc a
    add b
    ld a, a
    pop bc
    ccf
    ld b, $ff
    ld h, b
    rst $38
    rst $20
    nop
    sbc a
    nop
    rst $38
    nop
    ld e, a
    nop
    rst $38
    nop
    add hl, hl
    add b
    or e
    ret nz

    or e
    ret nz

    rst $28
    ldh [$d5], a
    ldh [$5e], a
    ldh a, [$37]
    ld hl, sp-$6f
    db $fc
    adc d
    db $fc
    ld e, b
    cp $59
    rst $38
    db $f4
    ccf
    di
    rra
    ld [hl], c
    sbc a
    db $76
    adc a
    cp [hl]
    ld b, a
    reti


    daa
    call c, Call_050_6f23
    ld de, $0fb9
    cp b
    rrca
    db $fd
    ld b, $be
    ld b, e
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    ei
    nop
    adc [hl]
    ld a, c
    rlca
    ld a, h
    ret nz

    ccf
    daa

jr_050_4847:
    rst $18
    add a
    ld e, a
    ld d, e
    xor a
    jp nz, $ed3f

    inc de
    ret nc

    cpl
    ld [hl], b
    adc a
    ldh [rIF], a
    ld d, $cb
    ld [hl], l
    adc e
    and a
    ld c, c
    inc a
    pop bc
    sub b
    ld h, l
    ret z

    ld [hl-], a
    ld l, e
    db $10
    db $fd
    nop
    cp h
    ld [$0458], sp
    jr z, jr_050_4872

    jr c, @+$08

    sub d
    rlca
    adc e
    ld b, e

jr_050_4872:
    ld [$8801], a
    jr nz, jr_050_48e8

    nop
    ld sp, $4a00
    nop
    add hl, hl
    nop
    ret nc

    inc b
    rst $38
    ei
    ei
    di
    rst $38
    db $d3
    rst $38
    rst $20
    cp $b7
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    sub $ff
    ld a, l
    rst $38
    cp l
    rst $38
    sbc a
    rst $38
    sbc l
    rst $38
    cp e
    rst $38
    ld e, a
    rst $38
    push af
    ccf
    or $df
    db $f4
    adc a
    ld a, [$fe07]
    rlca
    cp $03
    cp $05
    rst $38
    ld a, a
    rst $38
    ld a, c
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
    db $10
    rst $38
    jr @+$01

    inc bc
    rst $38
    add [hl]
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld a, a
    jr nc, jr_050_4959

    and c
    sbc a
    rla
    rst $08
    ld h, a
    ld l, a
    ld b, a
    rst $30
    ld b, b
    cp a
    jp hl


    rra
    xor l
    ld e, a

jr_050_48e8:
    adc $ff
    ld [$2cf7], sp
    rst $18
    cp $0f
    ei
    rlca
    rst $08
    ccf
    ld a, a
    rst $38
    rst $18
    rst $38
    dec a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    cp $1f
    cp $03
    cp $00
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld a, [bc]
    db $fd
    ld hl, sp+$00
    xor $00
    add h
    inc bc
    nop
    rlca
    ld de, $0b1f
    ccf
    dec de
    ccf
    rra
    rst $38
    ld c, a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    add e
    rst $38
    jp nz, $c0ff

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $18
    ccf
    rst $18
    cp a
    rst $28
    sbc a
    rst $38
    ld b, a
    cp a
    ld h, e
    ccf
    db $e3
    rra
    pop af
    rra
    ld hl, sp+$1f
    ld hl, sp+$07
    db $fc
    add e
    ld a, [hl]
    inc bc
    cp $49
    or a
    ld b, c
    ccf
    ldh [$1f], a
    or d

jr_050_4959:
    dec c
    xor h

jr_050_495b:
    ld b, a
    inc h
    jp $8360


    ld c, a
    di
    jr z, jr_050_495b

    pop af
    ccf
    ld a, h
    sub e
    ld h, $99
    ld e, a
    ld [$0c63], sp
    adc [hl]
    dec h
    cp h
    inc bc
    ldh a, [$8b]
    push de
    adc c
    xor l
    ld b, b
    ld [c], a
    ld b, h
    ld l, h
    ld [hl+], a
    sub a
    ld hl, $161e
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    push af
    rst $38
    ld a, h
    rst $38
    cp e
    rst $38
    di
    rst $38
    di
    rst $38
    push af
    rst $38
    ld a, [c]
    rst $38
    db $e3
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    set 7, a
    adc $ff
    sbc e
    rst $38
    dec bc
    rst $38
    cpl
    rst $38
    inc a
    rst $38
    ld [hl], h
    rst $38
    ld a, [hl]
    rst $38
    inc a
    rst $38
    inc l
    rst $38
    ld a, h
    rst $38
    ret z

    rst $38
    pop de
    sbc a
    pop hl
    rrca
    ldh a, [rTAC]
    ld hl, sp+$03
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    jr nc, @+$01

    ret nc

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    dec de
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
    cp a
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ld e, a
    cp a
    xor a
    ld e, a
    call c, $c923
    scf
    add l
    ld a, a
    ld sp, hl
    rra
    xor e
    ld a, a
    ld d, d
    cp a
    cp $1f
    cp h
    rrca
    inc c
    rlca
    inc c
    inc bc
    ld a, $01
    rst $38
    nop
    and a
    ld c, b
    and a
    jr jr_050_4a59

    inc sp
    jr nz, jr_050_4a2f

    ld b, b
    ccf
    ld [$20ff], sp
    rst $38
    jr nz, @+$01

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
    nop
    rst $38
    ld [bc], a
    db $fd
    and b
    rst $38
    and b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop

jr_050_4a2f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    adc a
    rst $38
    adc a
    ld a, a
    rst $00
    ld a, a
    db $e3
    ld a, a
    and e
    sbc a
    ld [hl], c
    cp a
    ld e, b
    ld c, a
    cp h
    cpl
    call c, $de2f
    and a

jr_050_4a59:
    ld e, a
    rst $00
    ccf
    inc hl
    rra
    add e
    inc e
    ld a, [hl-]
    call c, $e89d
    rlca
    db $fc
    ld e, $e5
    dec de
    and $d2
    rst $28
    db $f4
    db $eb
    inc h
    ei
    cp $bc
    cp $78
    cp $58
    rst $38
    ld hl, sp-$07
    ldh a, [$fb]
    add sp, -$01
    ldh a, [rIE]
    ldh [$f7], a
    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $28
    jp nz, $c1df

    rst $18
    add c
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    rla
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    ld l, [hl]
    rst $38
    ld l, $df
    rra
    rst $38
    sbc [hl]
    rst $38
    ld a, [$38ff]
    rst $38
    jr c, @+$01

    ld hl, sp-$01
    ld [hl], b
    rst $38
    pop af
    rst $30
    or c
    ei
    db $e3
    ld a, a
    jp $e7bf


    ccf

Call_050_4ab5:
    rst $30
    adc a
    rst $38
    rlca
    cp $01
    cp $06
    rst $38
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rra
    di
    ld h, a
    jp $81ff


    cp $8c
    rst $38
    adc h
    cp $10
    cp $18
    cp $00
    rst $38
    nop
    ld [hl], b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ret nc

    rst $38
    ret z

    rst $38
    or b
    rst $38
    ld hl, sp-$01
    ld e, c
    rst $38
    rlca
    ld hl, sp+$4e
    or c
    cp $05
    ld a, h
    adc e
    cp b
    ld b, a
    jr nz, @-$1f

    nop
    rst $38
    ld b, b
    cp a
    ld a, a
    rst $38
    cp $ff
    cp $ff
    ei
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
    cp $ff
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
    inc d
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
    rst $38
    ccf
    rst $38
    rra
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    ld b, a
    ccf
    ld h, e
    ld e, a
    ld sp, $113f
    adc a
    jr @+$09

    inc c
    ld c, a
    inc b
    dec bc
    ld b, $7f
    ld b, $ef
    daa
    ld l, a
    daa
    ld a, a
    ld c, a
    rst $18
    ld c, a
    rst $38
    sbc a
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ld l, $ff
    ld e, a
    rst $38
    db $db
    rst $38
    db $f4
    rst $38
    ld l, [hl]
    rst $38
    jr nc, @+$01

    ld d, c
    rst $38
    pop hl
    rst $38
    pop bc
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc [hl]
    rst $38
    cp [hl]
    rst $38
    dec a
    rst $38
    ld [hl], a
    rst $38

jr_050_4ba7:
    ld l, e
    rst $38
    ld h, e
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    db $ec
    rst $38
    adc h
    rst $38
    adc h
    db $fc
    ret c

    db $fc
    ld hl, sp-$03
    cp b
    db $fd
    ld [hl], b
    or $70
    ld a, e
    ldh a, [$37]
    ld [c], a
    rla
    di
    rra
    ld sp, hl
    rrca
    db $fd
    inc bc
    cp $09
    rst $38
    ld a, [hl]
    rst $38
    jp hl


    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    cp $f6
    rst $38
    cp $ff
    ld a, h
    ld a, l

jr_050_4be7:
    jr c, jr_050_4ba7

    jr jr_050_4be7

    ld [$08fc], sp
    ei
    nop
    rst $30
    nop
    ld l, e
    add b
    sbc e
    ld b, b
    ld c, c
    add [hl]
    sbc c
    ld b, $f2
    dec c
    add h
    ld a, e
    sub h
    ld l, e
    ld a, [$feff]
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    xor $ff
    ld c, a
    rst $38
    add e
    ld a, b
    dec bc
    db $f4
    ld d, $e8
    ld l, $d0
    ld c, e
    or b
    cp $00
    ld [hl], l
    adc b
    ld l, a
    sub b
    push af
    rst $38
    ld l, l
    rst $38
    adc a
    rst $38
    cp a
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
    push af
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $18
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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [$40ff], sp
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    cp h
    rst $38
    ld h, b
    rst $38
    ld d, b
    ld a, a
    ld b, b
    ld a, a
    nop
    ccf
    rst $38
    sbc $ff
    ei
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $20
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
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    xor $ff
    xor $ff
    db $ec
    cp $dc
    db $fd
    cp b
    rst $38
    cp b
    db $fd
    add sp, -$0a
    ld h, b
    ld a, [$edfa]
    db $ec
    db $fd
    call nz, $81dd
    db $eb
    adc c
    cp e
    add e
    rst $38
    add e
    rst $38
    rlca
    rst $38
    ld c, $ff
    rrca
    ld a, a

jr_050_4cb3:
    jr jr_050_4cb3

    jr @-$01

    db $10
    db $fd
    ld h, b
    ei
    add b
    or $c0
    ld a, [c]
    ret nz

    ldh [rP1], a
    ld hl, sp-$80
    ldh a, [rLCDC]
    ret nc

    nop
    ldh [rP1], a
    add b
    nop
    and b
    nop
    ldh [$80], a
    ret


    nop
    db $fc
    add b
    db $fc
    add b
    db $f4
    add b
    and $c0
    rst $08
    ret nz

    sbc [hl]
    adc b
    db $dd
    add b
    di
    nop
    ld b, e
    nop
    adc a
    nop
    sbc a
    nop
    rra
    nop
    dec de
    nop
    ccf
    nop
    ld l, a
    ld bc, $50d6
    db $fd
    nop
    cp b
    ld b, c
    sbc [hl]
    ld h, c
    inc e
    db $e3
    jr c, @-$37

    ld a, e
    add h
    and $19
    push hl
    ld a, [de]
    ret nz

    ld a, $85
    ld a, b
    ld c, $f0
    ld c, [hl]
    or b
    daa
    ret nz

    ld l, h
    add b
    ld sp, hl
    nop
    ld a, d
    nop
    or [hl]
    nop
    scf
    ld b, b
    cp $01
    call z, $c213
    dec a
    ld c, a
    or b
    ld d, c
    xor [hl]
    adc c
    db $76
    sub [hl]
    ld l, c
    ld sp, $53ce
    xor h
    dec c
    ld a, [c]
    adc h
    ld [hl], c
    xor $11
    ret nc

    cpl
    rst $18
    rst $38
    sub a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    cp l
    rst $38
    db $ed
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    and $ff
    rst $20
    rst $38
    ret


    rst $28
    db $eb
    rst $38
    adc e
    rst $38
    rla
    rst $38
    cpl
    rst $38
    dec h
    rst $38
    ld e, e
    rst $38
    ld e, [hl]
    rst $38
    sbc [hl]
    rst $38
    cp a
    rst $38
    ld e, $7f
    ld a, $7f
    ld [hl], h
    rst $38

jr_050_4d8f:
    ld d, b
    rst $38
    ldh [rIE], a
    call nz, Call_050_58df
    rst $38
    nop
    db $fd
    ld sp, $20ff
    rst $38
    ld [$80df], sp
    cp [hl]
    jr nz, jr_050_4d8f

    nop
    db $ec
    nop
    ret c

    nop
    sbc h
    nop
    jr nc, jr_050_4dac

jr_050_4dac:
    adc b
    nop
    jr jr_050_4db0

jr_050_4db0:
    jr nc, jr_050_4db2

jr_050_4db2:
    dec c
    nop
    ld b, h
    nop
    inc b
    nop
    dec b
    nop
    ld b, d
    nop
    adc h
    nop
    adc c
    nop
    ld l, e
    nop
    add a
    nop
    adc a
    ld [bc], a
    dec c
    nop
    dec a
    ld bc, $027f
    rst $38
    inc b
    rst $38
    dec b
    cp $0e
    rst $38
    inc e
    ld a, [hl]
    ld a, [hl-]
    rst $38
    jr nc, @+$01

    add hl, hl
    rst $38
    ld a, [hl-]
    rst $28
    inc c
    rst $38
    rrca
    rst $38
    inc sp
    or $60
    rst $38
    ld h, b
    ld a, e
    add b
    ld sp, $eac0
    nop
    xor [hl]
    nop
    or h
    nop
    xor b
    ld b, b
    db $dd
    nop
    dec h
    nop
    ld a, [c]
    ld bc, $005f
    rst $30
    nop
    db $fd

jr_050_4dfd:
    ld [bc], a
    rst $38
    nop
    jr c, @+$01

    jr z, @+$01

    ld [hl], h
    rst $38
    jr nz, @+$01

    ld l, h
    rst $38
    adc l
    rst $38
    cp d
    rst $38
    ldh a, [rIE]
    dec hl
    call nc, Call_050_4ab5
    ld hl, sp+$07
    db $fc
    inc bc
    jr c, jr_050_4e61

    cp c
    ld b, [hl]
    jr nz, jr_050_4dfd

    add c
    ld a, [hl]
    rlca
    ld hl, sp+$00
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    ld c, a
    or b
    ld [hl], e
    add h
    cp b
    rlca
    ld b, a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ldh a, [rIE]
    ld a, [$abff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $20
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
    or $ff
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
    nop

jr_050_4e61:
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
    jr jr_050_4e93

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_050_4ea3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_050_4eb3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_050_4ec3

    ld [hl-], a

jr_050_4e93:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_050_4ed3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc sp
    ld b, b
    ld b, c

jr_050_4ea3:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    scf
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

jr_050_4eb3:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    scf
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

jr_050_4ec3:
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

jr_050_4ed3:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    inc sp
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
    inc sp
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
    ldh [$d2], a
    pop hl
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
    cp $d2
    jp nc, Jump_000_00ff

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
    jr jr_050_4f8b

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

jr_050_4f8b:
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
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    rlca
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0107
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    rlca
    ld bc, $0101
    rlca
    rlca
    ld bc, $0101
    ld bc, $0100
    ld bc, $0700
    rlca
    ld bc, $0101
    ld bc, $0701
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    rlca
    rlca
    rlca
    ld bc, $0107
    ld bc, $0107
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
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    rlca
    rlca
    rlca
    rlca

Call_050_5067:
    rlca
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    ld bc, $0100
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
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [$0908], sp
    add hl, bc
    add hl, bc
    ld [$0809], sp
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
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
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add [hl]
    ei
    ld l, a
    sbc l
    cp e
    call z, Call_050_759f
    cp a
    ld [hl], c
    sbc d
    push af
    ei
    ld b, $60
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    ret c

    rst $38
    rst $38
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
    rst $28
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
    ld a, a
    rst $38
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
    ccf
    ccf
    ccf
    ccf
    rra
    ccf
    rra
    rra
    rra
    sbc a
    adc a
    sbc a
    sbc a
    adc a
    adc a
    adc a
    ld c, a
    rst $08
    ld b, a
    rst $08
    ld b, a
    rst $00
    rlca
    rst $20
    rst $20
    and a
    and e
    rst $20
    or b
    ldh [$d0], a
    ld [hl], b
    ld d, c
    ld [hl], e
    ld a, h
    ld a, a
    ld [hl], b
    ld hl, sp-$80
    ret nz

    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ld hl, sp+$00
    reti


    nop
    cp [hl]
    nop
    ldh [rP1], a
    jp $9700


    nop
    ld a, c
    nop
    rst $38
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
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    or d
    ld bc, $078b
    rra
    rrca
    ld a, a
    ccf
    db $fd
    cp $f7
    ld hl, sp-$17
    or $af
    ret nz

    db $eb
    nop
    rst $10
    nop
    ld b, c
    cp a
    ld [bc], a
    rst $38
    add b
    rst $38
    ld sp, $06ff
    rst $38
    ld a, h
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    rst $38
    nop
    db $fd
    add d
    sbc $61
    rst $38
    jr nc, @-$10

    add hl, de
    db $fd
    ld b, $fe
    inc bc
    rst $38

jr_050_51bf:
    ld bc, $fd42
    inc bc
    rst $38
    inc b
    rst $38
    jr c, @+$01

    jr nz, @+$01

    ld b, d
    rst $38
    add d
    rst $38
    nop
    rst $38
    ld [hl+], a
    db $dd
    inc b
    ei
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, jr_050_51bf

    sbc e
    and $ca
    scf
    or l
    ld a, [bc]
    ld l, c
    sub [hl]
    rlca
    ld sp, hl
    dec a
    jp $f906


    jp hl


    db $10
    rst $38
    rst $38
    rrca
    ld bc, $0101
    inc c
    pop af
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
    cp $ff
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
    cp a
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
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f4
    ld hl, sp-$19
    add c
    ccf
    rrca
    rst $38
    ld a, b
    jp c, $c4e0

    nop
    ld b, a
    nop
    rla
    nop
    adc e
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, l
    nop
    ld a, [$f800]
    nop
    ld sp, hl
    nop
    rst $20
    nop
    rst $38
    nop
    rst $18
    nop
    cp l
    nop
    dec a
    nop
    ld a, a
    nop
    or l
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0703
    rra
    rrca
    ld a, a
    ccf
    db $fd
    cp $f6
    ld hl, sp-$21
    ldh [$fc], a
    add e
    add sp, $17
    ld h, h
    sbc e
    push af
    ld c, $bd
    ld b, e
    ld e, [hl]
    and c
    sbc c
    ld h, [hl]
    ld e, b
    rst $38
    ld sp, $c0ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    cp $01
    rst $38
    nop
    rst $30
    ld [$01fe], sp
    jp hl


    ld d, $f7
    ld [$30cf], sp
    cp h
    ret nz

    db $eb
    ret nz

    rst $28
    jr nc, @+$01

    jr @-$09

    ld c, $f6
    inc bc
    ld a, d
    add c
    ld a, [$fd00]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld b, c
    db $fc
    inc bc
    cp $04
    rst $38
    ld [$ffcb], sp
    ld [hl], l
    rst $28
    ld a, [$d3a5]
    inc l
    ld a, l
    ld a, [c]
    dec l
    or $39
    rst $28
    sbc b
    dec c
    ld a, [c]
    rst $38
    push bc
    rst $38
    ret nz

    ret nz

    call nz, $afc0
    rst $08
    adc a
    rst $28
    xor a
    rst $20
    daa
    rst $20
    rst $20
    ld h, a
    ld [hl], e
    ld h, a
    inc hl
    ld [hl], a
    rla
    ld [hl], e
    ld [hl], e
    inc sp
    inc hl
    inc sp
    add hl, hl
    inc sp
    ld bc, $8b3b
    add hl, sp
    xor c
    sbc c
    sub c

jr_050_5315:
    sbc c
    sub h
    sbc c
    call nz, $859d
    call c, $cccc
    ret z

    call z, $ccca
    ldh [$ce], a
    ld [$e2e6], a
    and $e4
    and $f4
    rst $20
    ldh [$f7], a
    or l
    di
    di
    di
    di
    di
    ld a, [$f0f3]
    ei
    ld a, [$f9f9]
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $fc
    ld sp, hl
    ld hl, sp-$03
    db $fd
    db $fc
    db $fc
    db $fc
    cp $fc
    db $fc
    cp $fc
    db $fc
    ret nz

    ldh [rTAC], a
    inc bc
    db $fd
    ld a, $ef
    ldh a, [$7f]
    add b
    rst $28
    nop
    cp e

jr_050_5359:
    nop
    ei
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
    cp a
    nop
    ld [bc], a
    db $fd
    ld l, l
    sub d
    ld h, b
    sbc a
    nop
    rst $38
    jr nz, jr_050_5359

    ld b, b
    cp a
    nop
    cp $00
    ld hl, sp+$1f
    rra
    ld a, [hl]
    ld a, a
    ld hl, sp-$01
    rst $28
    ldh a, [$fe]
    pop bc
    db $fd
    ld [bc], a
    cp [hl]
    ld bc, $25da
    rst $20
    jr jr_050_5315

    ld a, l
    adc b
    ld [hl], a
    jp nz, Jump_050_473d

    cp b
    cp a
    ld b, b
    dec a
    jp nz, Jump_050_77a8

    ld [$7b1d], a
    add [hl]
    or a
    ld b, c
    rst $38
    nop
    rst $28

Call_050_53a9:
    db $10
    cp $01
    ld sp, hl
    ld b, $f3
    inc c
    db $10
    rst $38
    jr nz, @+$01

    add b
    rst $38
    db $10
    rst $38
    nop
    rst $38

jr_050_53ba:
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    cp [hl]
    ld b, c
    cp $01
    rst $28
    nop
    cp $01
    rst $38
    add b
    ld a, [hl]
    pop bc
    pop hl
    ld [hl], $ff
    jr jr_050_53ba

    inc e
    ld a, [$bf27]
    ld b, c
    ld a, $80
    ld a, a
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld [bc], a
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
    ld a, a
    rst $38
    ld a, a
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
    ccf
    ccf
    ccf
    ccf
    ccf
    cp a
    ccf
    rra
    cp a
    cp a
    sbc a
    sbc a
    sbc a
    rra
    sbc a
    ld e, a
    sbc a
    ld e, a
    rst $18
    rst $08
    rst $18
    rst $08
    adc $c8
    ret nz

    db $e3
    pop bc
    ld a, a
    xor $f8
    ldh a, [$c0]
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
    inc bc
    ld bc, $070f
    rra
    rra
    ld a, a
    ld a, [hl]
    ei
    db $fc
    db $ed
    ldh a, [$fd]
    add d
    ld a, [c]
    dec c
    ret nz

    ccf
    nop
    rst $38
    ldh a, [$1f]
    push hl
    ld e, $31
    rst $08
    adc a
    ld [hl], b
    ld l, a
    rst $38
    adc c
    rst $38
    add c
    rst $38
    ld [hl], c
    rst $38
    ld de, $0aff

jr_050_549b:
    rst $38
    jp z, $e9ff

    rst $38
    db $f4
    dec bc
    di
    inc c
    ld h, a

jr_050_54a5:
    sbc b
    rst $18
    ld h, b
    sbc a
    ld [hl], b
    ld a, e
    adc h
    cp $03
    cp $01
    pop bc
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    rst $38
    nop
    rst $38
    ld hl, $fdff
    ld [bc], a
    or e
    ld c, h
    rst $20

jr_050_54c5:
    jr jr_050_54a5

    ld hl, $40ff
    ld e, [hl]
    and b
    ld a, [$df00]
    nop
    rst $28
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a
    cp $81
    ld e, a
    ldh [$67], a
    jr nc, jr_050_549b

    jr jr_050_54c5

    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    cp $0d
    inc c
    inc c
    db $ec
    db $ed
    and $ed
    rst $30
    db $ec
    db $fc
    and $e6
    or $f6
    or $f6
    or $f6
    or $f2
    or $f3
    or $fe
    di
    ld a, [c]
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ld sp, hl
    ei
    ei
    ld sp, hl
    db $fd
    ld sp, hl
    ld sp, hl
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fc
    db $fd
    db $fd
    db $fc
    cp $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $ff
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
    ld a, [$c1fc]
    ldh [$0e], a
    rlca
    ld [hl], h
    jr c, @-$1e

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
    ld bc, $0703
    rrca
    ccf
    rra
    rst $38
    ld a, a
    rst $30
    ei
    rst $18
    pop hl
    add b
    rst $38
    pop hl
    ld e, $c0
    inc sp
    jr nz, jr_050_5578

    add hl, de
    and $83
    ld c, h
    ld a, $91
    add c
    ld l, [hl]
    ld h, b
    add c
    ret nc

    ld l, $00
    sbc a
    ld d, d
    db $ed
    ld d, d
    cp l
    ld [hl], l
    adc [hl]
    xor l
    ld d, e
    sbc c
    ld h, [hl]

jr_050_5578:
    and a
    ld e, b
    adc $31
    cp a
    ld b, b
    rst $38
    add b
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $20
    jr jr_050_55a5

    db $e3
    ret c

    daa
    ld a, [$dd05]
    and d
    rst $38
    ld h, c
    rst $30
    ld a, [de]
    rst $30
    inc c
    rst $30
    dec bc
    adc $31
    ccf
    ret nz

    cp a
    ret nz

    or e
    ld c, h
    ld b, b
    cp a
    nop
    rst $38
    nop

jr_050_55a5:
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld a, [$f900]
    nop
    ei
    nop
    db $eb
    nop
    rst $08
    nop
    rrca
    ld bc, $021d
    dec sp
    inc b
    inc bc
    db $fc
    pop bc
    rst $38
    ld a, [c]
    rst $38
    cp $f7
    rst $30
    rst $30
    db $fc
    di
    cp $f3
    di
    rst $38
    rst $30
    ei
    ld hl, sp-$01
    cpl
    rst $38
    nop
    nop
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, $7f
    rst $38
    ccf
    rst $38
    ccf
    ccf
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    sbc a
    cp a
    rst $38
    sbc a
    sbc a
    rst $18
    sbc a
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    ld e, a
    rst $18
    rst $08
    ld e, a
    ld a, a
    ld c, a
    ld c, a
    ld l, a
    ld c, [hl]
    ld l, a
    ld l, b
    ld h, b
    ld h, l
    ld h, e
    ld a, $7c
    ldh a, [$e0]
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
    inc bc
    inc bc
    rlca
    rrca
    rra
    ccf
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
    ld h, b
    ld h, b
    inc a
    inc a
    rra
    sbc a
    rrca
    rst $08
    inc bc
    db $e3
    rra
    rra
    dec bc
    rst $30
    add a
    ld a, c
    rlca
    ei
    rlca
    rst $38
    ld c, a
    or a
    rra
    rst $28
    add hl, sp
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, d
    rst $38
    rst $38
    rst $30
    adc $3f
    cp d
    ld e, a
    db $ed
    inc de
    pop hl
    ld e, $c7
    jr c, jr_050_5697

    db $db
    rst $08
    ld [hl-], a
    cp a
    ld b, h
    or a
    ld c, b
    rst $38
    db $10
    sbc b
    ld h, a
    cp a
    ret nz

    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $30
    ld [$d3ac], sp
    db $ed
    ld [hl-], a
    xor $19
    rst $38
    ld b, $7f
    add c
    rst $38
    nop
    rst $18
    jr nz, @+$01

jr_050_5697:
    nop
    rst $38
    nop

jr_050_569a:
    db $fc
    inc bc
    ld sp, hl
    ld b, $7f
    inc b
    rst $38
    ld [$10fb], sp
    rst $38
    jr nz, jr_050_5726

    ld b, b
    rst $38
    add b
    db $fd
    nop
    db $eb
    nop
    rst $38
    nop
    add b
    ld a, a
    add b
    add b
    pop bc
    add b
    ld hl, $a1c0
    ldh [rNR44], a
    ldh a, [rIF]
    ldh a, [rNR12]
    db $ed
    ld h, d
    db $fd
    call nc, $fe38
    rst $38
    db $10
    db $10
    jr nc, jr_050_569a

    ldh a, [$d0]
    ldh [$d0], a
    ret nz

    ldh a, [$c0]
    ldh a, [$f0]
    ldh [$f8], a
    ldh [$f8], a
    ldh [$e0], a
    add sp, -$20
    add sp, -$18
    add sp, -$08
    add sp, -$08
    add sp, -$05
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ld a, b
    ld b, c
    dec h
    nop
    db $76
    jr nz, jr_050_575e

    jr nc, jr_050_5751

    jr c, jr_050_5712

    inc a
    rra
    ld h, $06
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    ld b, b
    ccf
    ld a, a

jr_050_5712:
    ld a, a
    ccf
    ld a, a
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
    ld a, $1e
    ld sp, $3011
    db $10

jr_050_5726:
    jr nc, jr_050_5744

    ld de, $101f
    rra
    db $10
    rra
    db $10
    ld a, [de]
    ld a, a
    jr nc, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
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

jr_050_5744:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $fc
    db $fc
    rst $38

jr_050_5751:
    rst $38
    rra
    rra
    rlca
    rlca

jr_050_5756:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_050_575e:
    nop
    nop
    rst $38
    rst $38
    rst $28
    rst $38
    jp c, Jump_000_3fff

    rst $38
    xor l
    ld a, a
    adc a
    ld a, a
    rst $08
    or a
    cp $67
    daa
    rst $18
    ld a, a
    adc a
    rst $38
    ld c, $8f
    ld a, h
    rst $28
    rra
    ld e, a
    ei
    db $fc
    rst $38
    ei
    db $fc
    db $dd
    ld [c], a
    db $dd
    ld [hl+], a
    ld a, l
    add d
    ld e, a
    and b
    cp $01
    db $fc
    inc bc
    push hl
    ld a, [de]
    ei
    inc b
    ld h, a
    sbc b
    ld c, a
    ldh a, [rIE]
    jr nc, jr_050_5756

    ld c, h
    ld a, d
    add a
    cp $01
    cp a
    nop
    rst $38
    nop
    jr nc, @+$01

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
    nop
    rst $38
    ld bc, $78ff

jr_050_57b1:
    add b
    ret nz

    jr jr_050_57b1

    dec de
    rst $18
    ccf
    ld a, a
    cp a
    ld e, a
    cp a
    rst $38
    ccf
    cp a
    ld a, a
    ccf
    rst $38
    cp h
    ld a, a
    push bc
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
    rst $38
    nop
    ld a, [$fd00]
    nop
    cp $00
    cp $00
    or h
    nop
    ld d, c
    nop
    ld e, c
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0201
    inc bc
    nop
    ld bc, $0100
    ld h, b
    ld h, c
    nop
    ld bc, $5f5e
    cp $ff
    ld a, [hl]
    ld a, a
    dec bc
    dec bc
    nop
    nop
    ld d, c
    ld d, c
    ld d, $16
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
    db $eb
    db $eb
    ld a, [$fffa]
    rst $38
    rst $38
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
    ld a, a
    and $07
    ld hl, sp+$03
    or c
    nop
    rst $20
    jr nz, jr_050_5861

    ld [hl], e
    ei
    rra
    rst $38
    inc bc
    rst $30
    nop
    db $fd
    ld b, b
    ld a, a

Call_050_5832:
    ret nz

    ld a, $fd
    ld a, [$fffe]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    add b
    ldh a, [$f0]
    cp $fe
    rst $38
    rst $38
    rra
    rra
    rlca
    rlca
    nop
    ld [$0800], sp
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $10
    rst $30
    or a
    rst $30
    scf
    rst $30
    rst $38
    rst $38
    rst $38

jr_050_5861:
    rst $20
    rst $38
    di
    rst $38
    ld a, $ff
    dec de
    rst $38
    rst $38
    ld a, a
    adc a
    ld [hl], e
    adc a
    ld d, e
    xor l
    ld a, a
    sub e
    rst $28
    inc sp
    cp a
    ld b, e
    ld a, a
    add e
    ld a, a
    add e
    and a
    ld e, c
    rst $38
    ld bc, $01ff
    rst $38
    nop
    db $fd
    ld [bc], a
    di
    inc c
    rst $28
    db $10
    or e
    ld c, h
    cp e
    call nz, Call_050_64fb
    push af
    ld a, [de]
    rst $20
    inc c
    rst $38
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0bf6
    cpl
    rra
    ld e, a
    ccf
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
    db $fc
    rst $38
    db $ed
    nop
    push bc
    nop
    xor c
    nop
    sub c
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop

jr_050_58ca:
    nop
    nop
    add b
    nop
    add b
    nop
    ccf
    ret nz

    ld bc, $00fe
    inc bc
    nop
    nop
    jr nc, jr_050_58ca

    nop
    ldh a, [rP1]
    ldh a, [rP1]

Call_050_58df:
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$08]
    ld hl, sp-$40
    ldh a, [$80]
    add b
    ldh a, [$f0]
    ldh a, [$f0]
    ld a, b
    ld a, b
    jr c, jr_050_592c

    ld e, b
    ld e, b
    jr z, jr_050_5920

    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    add a
    add a
    db $f4
    db $f4
    or h
    db $f4
    inc b
    db $fc
    rlca
    rst $38
    rlca
    rst $30
    rst $00
    rst $20
    rst $38
    rst $38
    jr nc, jr_050_5942

    ld hl, sp-$08
    jr c, jr_050_594e

    jr jr_050_5930

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_050_5920:
    ld a, a
    rst $00
    rst $38
    ld a, e
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_050_592c:
    rst $38
    rst $38
    rst $38
    rst $38

jr_050_5930:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    jr c, @+$3a

    db $fd
    rst $38

jr_050_5942:
    cp a
    rst $38
    sbc a
    rst $38
    daa
    rst $38
    rst $28
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38

jr_050_594e:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_050_5953:
    rst $38
    rst $20
    rst $38
    pop bc
    rst $38
    add c
    cp $80
    rst $38
    add d
    rst $38
    cp [hl]
    db $fd
    rst $08
    db $fc
    db $dd
    di
    or a
    add sp, $1b
    db $e4
    sbc e
    db $e4
    rst $00
    cp b
    adc a
    ldh a, [$97]
    add sp, $7f
    add b
    ccf
    ld b, b
    cp $00
    db $dd
    jr nz, jr_050_5953

    ld hl, $22dd
    xor a
    ld d, h
    sub $29
    or a
    ld c, b
    rst $38
    db $10
    cp a
    ldh [$ef], a
    ld [hl], b
    cp a
    ld e, b
    push af
    adc [hl]
    db $fd
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    db $ed
    db $f4
    db $ec
    rst $30
    db $ec
    ld a, [c]
    di
    ldh a, [$fb]
    ldh a, [$f0]
    ld a, [$fdfa]
    cp $fd
    rst $38
    rst $38
    inc b
    ei
    db $fd
    nop
    ld a, [$d200]
    nop
    ld e, d
    nop
    ld e, d
    nop
    sub [hl]
    nop
    ld c, b
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
    nop
    nop
    jr nz, @-$3e

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$c0], a
    ld [c], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ld a, [c]
    ret nz

    ldh [$c0], a
    ldh a, [$c0]
    ldh a, [$c0]
    ldh [$d0], a
    ld sp, hl
    ret nz

    cp $c8
    db $fc
    ret c

    db $fc
    ret z

    ld [$e8c8], a
    ret z

    add sp, -$38
    db $fd
    ld a, [$ffff]
    ccf
    rst $38
    add b
    jp $e2f1


    pop bc
    db $e3
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$e0]
    rst $38
    rst $38
    rst $38
    cp a
    db $db
    rst $20
    add $ed
    db $ec
    call nz, $ecc4
    adc $ec
    add $ec
    call z, $ece4
    xor $fc
    db $fc
    cp $ff
    rst $38
    rst $38
    db $d3
    rst $38
    rst $00
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
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    ld a, [$e7ff]
    rst $38
    db $db
    rst $38
    adc [hl]
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    cp h
    rst $38
    ret nc

    rst $38
    ld b, h
    ei
    adc b
    rst $30
    ldh [rIE], a
    dec c
    cp $21
    rst $38
    sub e
    db $fc
    cp h
    ld [hl], a
    db $f4
    rst $38
    ld a, [c]
    db $fd
    ld c, b
    rst $30
    ld h, l
    sbc d
    ld a, h
    add e
    and a
    ld e, d
    ld a, a
    adc b
    ld b, e
    cp l
    inc [hl]
    set 7, a

jr_050_5a65:
    jp nz, $34df

    rst $38
    inc c
    db $fc

jr_050_5a6b:
    dec bc
    ld l, a
    sub b
    or a
    ld h, b
    cp a
    ld b, b
    db $fc
    ld b, e
    sbc $81
    rst $38
    nop
    rst $38
    nop
    add a
    ld a, b
    ret


    ld [hl], $fa
    dec b
    di
    inc c
    pop de
    ld l, $f0
    rrca
    ld h, b
    sbc a
    ret nz

    ccf
    jr nz, jr_050_5a6b

    jr z, jr_050_5a65

    pop bc
    cp $c5
    cp $af
    ld b, b
    db $db
    ld d, b
    ld c, a
    ldh a, [$2e]
    add b
    ld c, l
    and d
    ld a, e
    ret nc

    db $eb
    ld d, b
    pop hl
    ld e, $ff
    rst $38
    ld a, a
    add b
    add a
    nop
    xor d
    nop
    stop
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
    ld [$7800], sp
    nop
    cp $00
    db $fc
    nop
    stop
    nop
    nop
    ld bc, $0000
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    add hl, bc
    nop
    dec b
    nop
    dec b
    nop
    ld bc, $0100
    nop
    dec d
    nop
    add c
    nop
    ret


    ldh a, [$f9]
    pop af
    pop af
    pop af
    pop af
    pop af
    pop bc
    or c
    add c
    or c
    or c
    and c
    ld sp, hl
    and c
    pop bc
    add c
    pop bc
    pop bc
    and c
    and c
    add c
    add c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $8101
    ld bc, $f129
    db $d3
    rst $28
    ld [hl], a
    ei
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $00

jr_050_5b27:
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ld c, e
    rst $38
    dec d
    rst $38
    and b
    rst $38
    ld hl, sp-$01
    and b

jr_050_5b35:
    rst $38
    add b
    rst $38
    push hl
    rst $38
    jr @+$01

    adc c
    rst $30
    ld bc, $00fe
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    jr nz, jr_050_5b27

    ld bc, $22fe
    db $dd
    ld bc, $77ff
    ld [$3dce], a
    scf
    rst $08
    jr z, jr_050_5b35

    dec e
    ld a, [c]
    db $e4
    dec sp
    inc d
    db $eb
    ld a, e
    call nz, $b8c7
    ldh [$1f], a
    cp $01
    ei
    inc b
    ld a, [$eb05]

jr_050_5b69:
    inc d
    ld d, d
    xor l
    ld b, l
    ei
    sbc h
    ld a, e
    ld e, $e7
    dec a
    jp $8e71


    ld [hl], c
    adc [hl]
    di
    inc c
    jp nc, $ee2d

    ld de, $718e
    xor b
    rst $30
    db $ec
    rst $30
    or h
    rst $28
    inc d
    rst $28
    jr nz, jr_050_5b69

    ld [hl], h
    sbc a
    push af
    ld a, $a9
    ld a, a
    ld h, h
    db $db
    ld h, a
    sbc h
    inc l
    call z, Call_050_53a9
    nop
    inc sp
    or e
    ld c, h
    ld l, l
    call z, $b61b
    xor b
    ld e, a
    rst $38
    rst $38
    rst $38
    nop
    ldh [rP1], a
    ld [c], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    ccf
    ret nz

    cp a
    ld b, b
    ld e, a
    and b
    nop
    nop
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld h, b
    ld h, b
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld l, [hl]
    ld e, h
    ld e, h
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    ld e, l
    call Call_050_71cd
    pop af
    rst $38
    ld a, a
    ld a, a
    rst $38
    pop bc
    pop bc
    db $dd
    db $dd
    db $dd
    db $dd

Jump_050_5c00:
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    sbc e
    sbc e
    db $e3
    db $e3
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    inc hl
    rst $38
    ld [$13ff], sp
    rst $38
    inc bc
    rst $38
    add d
    ld a, a
    rla
    rst $38
    ld [$28ff], sp
    rst $38
    ld a, h
    sbc a
    dec h
    rst $38
    ld h, b
    rst $38
    ld b, d
    rst $38
    add b
    rst $38
    ld [de], a
    db $fd
    add b
    ld a, a
    ld d, h
    xor e
    ld c, h
    or e
    ldh a, [rIF]
    inc hl
    rst $18
    ret c

    ccf
    ld h, e
    sbc a
    ld c, d
    or l
    pop hl
    ld e, $d2
    dec l
    ld [c], a
    dec e
    ld h, h
    sbc e
    add h
    ld a, e
    ld [$d8f7], sp
    and a
    ld de, $31ee
    adc $63
    sbc h
    ld [hl], c
    adc a
    inc hl
    db $dd
    xor [hl]
    ld [hl], e
    jp Jump_050_7e3e


    add a
    cp $05
    ld a, b
    adc a
    cp [hl]
    ld c, c
    rst $30
    jr @+$01

    db $10
    xor $31
    ld a, [hl]
    and c
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $28
    sub b
    db $e3
    sbc h
    cp $41
    ld e, c
    add e
    and h
    db $db
    jp z, Jump_050_5c00

    ld [bc], a
    adc a
    pop de
    rla
    pop bc
    xor h
    ld d, b
    ld c, e
    cp a
    rst $38
    rst $38
    cp $00
    nop
    nop
    sub b
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    nop
    ld [bc], a
    nop
    add hl, hl
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    pop bc
    pop bc
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    db $dd
    call c, $dcdc
    call c, $dcdc
    call c, $dcdc
    call c, $bcbc
    cp d
    cp d
    cp d
    cp d
    cp d
    cp d
    cp d
    cp d
    cp d
    cp d
    cp d
    cp d
    cp d
    cp d
    sbc d
    sbc d
    ldh [$e1], a
    db $fd
    db $fc
    db $fd
    db $fc
    dec b
    inc b
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld [hl], l
    ld [hl], h
    ld l, l
    ld l, h
    ld l, b
    ld l, e
    ld l, b
    ld l, e
    ld l, b
    ld l, e
    ld l, b
    ld l, e
    ld l, b
    ld l, e
    add hl, bc
    ld a, [bc]
    ld hl, sp-$05
    ld hl, sp-$05
    jr jr_050_5d3c

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_050_5d2f:
    nop
    ret nz

jr_050_5d31:
    rst $38
    ei
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38

jr_050_5d3c:
    nop
    rst $38
    ld bc, $20fe
    rst $38
    adc b
    rst $38
    jr nc, @+$01

    ld [bc], a
    rst $38
    add hl, hl
    rst $30
    ld [$10f7], sp
    rst $28
    jr nz, jr_050_5d2f

    jr nz, jr_050_5d31

    ld b, c
    cp a
    ld h, b
    cp a
    ld [bc], a
    rst $38
    add h
    ld a, a
    ld b, h
    rst $38
    inc a
    ei
    dec a
    adc $21
    rst $18
    dec [hl]
    jp c, $b26d

    db $f4
    dec hl
    add sp, $57
    ei
    ld b, h
    add a
    ld hl, sp-$80
    rst $38
    ld a, e
    add h
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    xor $11
    cp h
    jp Jump_050_7ca3


    add sp, $1f
    db $eb
    rla
    adc a
    ld [hl], b
    rla
    add sp, -$69
    ld l, b
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    cp $01
    jp c, $ed65

    ld h, d
    and b
    ld [hl], d
    ld h, $08
    db $76
    and b
    ld [c], a
    ld l, l
    db $fd
    ld d, e
    rlca
    jr @+$01

    rst $38
    db $fd
    rst $38
    add hl, bc
    nop
    ld bc, $f200
    nop
    ld hl, sp+$00
    ld a, [c]
    nop
    and b
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc d
    nop
    dec b
    nop
    inc b
    nop
    ld [bc], a
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
    ld a, a
    add b
    ccf
    ld b, b
    ld a, a
    nop
    ld a, a
    nop
    ld a, e
    inc b
    ld a, c
    ld b, $7c
    inc bc
    ld [hl], l
    ld a, [bc]
    ld h, c
    ld e, $00
    rst $38
    nop
    rst $38
    ld c, c
    or [hl]
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
    ld b, b
    nop
    ld d, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    dec h
    nop
    ld c, d
    nop
    sub l
    nop
    db $e4
    nop
    push af
    nop
    cp d
    nop
    nop
    nop
    nop
    nop
    ret nc

Jump_050_5e25:
    ldh [$78], a
    cp $f5
    rst $38
    cp [hl]
    rst $38
    ld [hl-], a
    rst $38
    sub d
    rst $38
    xor c
    rst $38
    db $ed
    rst $38
    jp nc, $82ff

    rst $38
    ld e, [hl]
    cp a
    dec b
    rst $38
    ld [$88ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    pop hl
    cp $62
    db $fd
    nop
    rst $38
    push bc
    cp d
    sbc $ff
    ld l, h
    rst $38
    db $ec
    rst $38
    ld hl, sp-$01
    ld [hl], l
    rst $38
    or b
    rst $38
    or [hl]
    rst $38
    db $fd
    rst $38
    and c
    sbc $32
    db $fd
    ld hl, $0ede
    pop af
    daa
    ret c

    db $eb
    inc d
    rst $38
    nop
    ld a, a
    add b

jr_050_5e70:
    ld h, b
    rst $38
    ld hl, $08ff
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ld [hl], d
    rst $38
    ld a, [c]
    rst $38
    ld hl, $dcff
    inc hl
    or a
    ret z

    rst $20
    jr c, jr_050_5e70

    ld e, $fa
    rlca
    db $fd
    ld [bc], a
    cp a
    ld b, b
    rst $20
    jr @+$01

    cp a
    ld h, e
    cp a
    cpl
    ld a, a
    di
    ccf
    ld d, l
    ld a, a
    dec [hl]
    rst $38
    sub $7f
    ld d, c
    ld a, a
    rst $38
    rst $38
    pop hl
    rst $38
    add l
    nop
    ld e, c
    nop
    ld d, l
    nop
    and l
    nop
    and c
    nop
    ld c, d
    nop
    daa
    nop
    add hl, bc
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
    nop
    nop
    nop
    nop
    add b
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    and b
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
    ld c, $00
    ld a, $00
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_050_5ef8

jr_050_5ef8:
    nop
    nop
    rla
    nop
    rlca
    nop
    nop
    nop
    dec de
    nop
    rrca
    nop
    dec bc
    nop
    add c
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_050_5f0e

jr_050_5f0e:
    dec sp
    nop
    rra
    nop
    ld d, a
    nop
    pop af
    nop
    call c, $df00
    ldh [$fd], a
    cp $ff
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    cp $05
    ld a, [$ff00]
    nop
    rst $38
    add b
    rst $38
    jr nz, @+$01

    add hl, bc
    rst $30
    push af
    rst $38
    xor e
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    ld h, l
    rst $38
    db $ed
    rst $38
    dec d
    rst $38
    db $eb
    rst $38
    ld l, d
    sbc l
    cp [hl]
    ld b, e
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    and d
    ld e, l
    ei
    inc b
    di
    inc c
    ld a, [c]
    dec c
    add $39
    db $eb
    dec d
    di
    dec c
    inc a
    jp Jump_050_738e


    jp $f93e


    rlca
    ld e, c
    and [hl]
    sbc $25
    cp a
    ld b, h
    or e
    ld c, h
    ld d, a
    adc b
    ld [hl], a
    adc b
    ld a, a
    adc b
    ld h, a
    sbc b
    or $19
    ld a, [$bf15]
    ld d, b

jr_050_5f74:
    call $bf32
    jr nz, jr_050_5f74

    inc h
    ld e, a
    ldh [$be], a
    ld [hl], c
    pop hl
    ld e, [hl]
    jp z, $bfff

    rst $38
    xor $ff
    db $ed
    rst $38
    ld [hl], h
    rst $38
    cp [hl]
    rst $38
    jr nz, @+$01

    push bc
    rst $38
    rst $38
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    rra
    nop
    ld e, a
    nop
    sbc a
    nop
    ld a, a
    nop
    cpl
    nop
    ld e, a
    nop
    ld a, $00
    ccf
    nop
    ccf
    nop
    rra
    nop
    ld a, $00
    ei
    nop
    ld c, l
    nop
    jr nz, jr_050_5fb4

jr_050_5fb4:
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rlca
    nop
    cp a
    nop
    rst $18
    nop
    rrca
    nop
    xor a
    nop
    rst $00
    nop
    jp $c300


    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld b, c
    nop
    add sp, $00
    inc a
    nop
    xor h
    nop
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $18
    ldh [$fd], a

jr_050_601f:
    cp $87
    rst $38
    add b
    ld a, a
    inc bc
    rst $38
    nop
    rst $38
    ld b, $fd
    inc b
    rst $38
    inc b
    rst $38
    jr jr_050_601f

    ld c, l
    ld a, [$dd2a]
    db $f4
    dec bc
    jr @-$07

    add hl, de
    rst $30
    ld [$6df7], sp
    or d
    jr nc, @-$0f

    or b
    ld l, a
    add b
    ld a, a
    ld c, [hl]
    pop af
    ret z

    ld a, a
    ld hl, $b4df
    set 2, c
    xor [hl]
    rst $28
    sub b
    ld a, a
    add b
    ld [bc], a
    db $fd
    adc c
    db $76
    rst $38
    nop
    xor a
    ld d, b
    rst $38
    nop
    ld a, h
    add e
    ld e, h
    db $e3
    ret c

    ccf
    di
    rrca
    sub d
    ld l, l
    add l
    ld a, d
    push hl
    ld a, [de]
    db $fc
    inc bc
    cp $01
    ld a, [hl]
    add c
    ld h, h
    rst $38
    rlca
    rst $38
    ld b, $ff
    ld [hl], $ff
    ld a, [$ffff]
    rst $38
    ccf
    rst $38
    ld a, $ff
    sub l
    rst $38
    ld [hl], l
    rst $38
    ld c, l
    rst $38
    rst $10
    rst $38
    adc l
    rst $38
    db $fc
    rst $38
    adc b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    cp a
    ld b, b
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
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $20
    nop
    ld d, a
    nop
    ld e, $00
    adc e
    nop
    daa
    nop
    ld c, e
    nop
    rlca
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
    nop
    nop
    nop
    nop
    nop
    stop
    add b
    nop
    jp nz, $8c00

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    and b
    nop
    sub b
    nop
    ret c

    nop
    ld a, [c]
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    ld a, d
    nop
    rst $30
    nop
    ld [hl], e
    nop
    ccf
    nop
    dec b
    nop
    add b
    nop
    push bc
    nop
    ldh a, [rP1]
    ret nz

    ret nz

    cp h
    db $fc
    add a
    rst $38
    ld a, [hl-]
    rst $38
    ld c, e
    rst $38
    ld bc, $01ff
    rst $38
    ld [$00ff], sp
    rst $38
    ld bc, $24ff
    rst $38
    sbc d
    ld a, a
    inc de
    rst $28
    ld h, b
    sbc a
    ld h, d
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
    add b
    rst $38
    jr nz, @+$01

    and h
    ld e, a
    ld [hl], l
    adc e
    rra
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    db $d3
    rst $38
    jp hl


    rst $38
    rst $38
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ret nz

    rst $38
    ret c

    ccf
    ld b, [hl]
    cp a
    and c
    ld e, a
    add b
    ld a, a
    and b
    ld e, a
    db $fd
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    ld h, a
    rst $38
    ld e, l
    rst $38
    dec e
    rst $38
    ld a, e
    rst $38
    cp e
    rst $38
    ldh a, [rIE]
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
    ei
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
    db $fd
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
    nop
    cpl
    nop
    daa
    nop
    rlca
    nop
    daa
    nop
    rla
    nop
    inc bc
    nop
    dec c
    nop
    dec d
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
    nop
    nop
    nop
    nop
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
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [de], a
    nop
    add b
    nop
    ld [bc], a
    nop
    ld [$0000], sp
    nop
    dec b
    nop
    ld [de], a
    nop
    dec h
    nop
    dec d
    nop
    ld [$1100], sp
    nop
    ld [hl+], a
    nop
    ld a, [bc]
    nop
    add h
    nop
    pop bc
    nop
    jp nz, $c000

    nop
    ld b, l
    nop
    add hl, bc
    nop
    rla
    nop
    dec bc
    nop
    ld b, l
    nop
    nop
    nop
    nop
    nop
    ret nz

    add b
    ld [hl], h
    ld hl, sp-$48
    db $fc
    jr c, @-$02

jr_050_620c:
    ld a, h
    sbc b
    inc e
    ld hl, sp+$7c
    ret c

    jr jr_050_620c

    ld e, b
    ld hl, sp+$18
    ld hl, sp+$18
    ld hl, sp-$28
    ld hl, sp+$18
    ld hl, sp-$48
    ld hl, sp-$48
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp-$48
    ld hl, sp+$18
    ld hl, sp+$38
    ld hl, sp-$50
    ld hl, sp+$30
    ld hl, sp+$30
    ld hl, sp+$30
    ld hl, sp-$48
    ldh a, [$38]
    ldh a, [$38]
    ldh a, [$30]
    ldh a, [$b0]
    ld [hl], b
    ld [hl], b
    ldh a, [$b0]
    ld [hl], b
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ldh a, [$f0]
    ld [hl], b
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$60]
    ldh a, [$e0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh a, [$d7]
    ld [$e8c4], a
    pop de
    add $da
    rst $20
    pop hl
    rst $38
    cp e
    add sp, -$02
    add b
    ld [hl], h
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
    ccf
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
    xor a
    nop
    ld e, a
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
    db $fd
    nop
    rst $30
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    ld b, $00
    ld c, c
    nop
    ld b, c
    nop
    ld hl, $4101
    ld bc, HeaderCGBFlag
    inc bc
    ld bc, $0313
    inc bc
    inc bc
    rlca
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rrca
    rlca
    rrca
    rlca
    rlca
    rrca
    xor a
    rrca
    rra
    rrca
    ccf
    rrca
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    ccf
    dec b
    ccf
    dec b
    ccf
    ld bc, $033f
    ccf
    rlca
    ccf
    inc bc
    ccf
    rlca
    ccf
    rrca
    ccf
    dec b
    ccf
    rrca
    ccf
    dec bc
    ccf
    ld c, $3f
    rra
    ccf
    ld a, $3f
    ccf
    ccf
    dec a
    ccf
    ld a, $3f
    ccf
    ccf
    ld a, $3b
    dec a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra

jr_050_630f:
    ccf
    rra
    ccf
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rra
    ccf
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld a, $1e
    ld e, $1e
    rra
    ld e, $00
    ldh [rP1], a
    ldh [$80], a
    ld h, b
    nop
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
    ldh [$c0], a

jr_050_634d:
    jr nz, jr_050_630f

    jr nz, jr_050_634d

    ld [bc], a
    jp hl


    ld b, $d5
    ld a, [hl+]
    ld h, e
    sbc d
    sub $0b
    ld hl, $7f5d
    nop
    cp a
    rst $38
    ldh a, [rIE]
    nop
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
    ld bc, $0301
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ld e, $1f
    rra
    rra
    ccf
    rra
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rla
    ld a, a
    sbc l
    ld a, a
    rra
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, [hl+]
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    db $fc
    rst $38
    ld a, [$b9ff]
    rst $38
    db $fd
    rst $38
    ld [hl], l
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp a
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
    db $fd
    rst $38
    db $fd
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
    rst $30
    rst $38
    rst $28
    rst $38
    rst $18
    rst $28
    call $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc e
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $38
    rst $28
    rst $18
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [$0907], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_050_6489

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_050_6499

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_050_64a9

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_050_64b9

    ld [hl-], a

jr_050_6489:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_050_64c9

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3e
    ld a, $3f
    ld b, b

jr_050_6499:
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

jr_050_64a9:
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld a, $5a
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_050_64b9:
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

jr_050_64c9:
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
    rlca
    ld [hl], a
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
    rlca
    rlca
    ld [hl], a
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

Call_050_64fb:
    sbc l
    sbc [hl]
    sbc a
    ld h, c
    rlca
    ld [hl], a
    ld [hl], a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    rlca
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

    ld a, $3e
    ld a, $c1
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
    ld a, $18
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_050_65ab

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
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

jr_050_65ab:
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
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0000
    nop

Call_050_65ff:
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0001
    ld bc, $0001
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
    nop
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
    ld bc, $0101
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0909], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    ld [$0808], sp
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    ld [$0808], sp
    inc c
    add hl, hl
    rst $38
    ld c, b
    rst $38
    ld b, b
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
    ldh [rIE], a
    call nz, Call_000_05ff
    rst $38
    and $ff
    rst $20
    rst $38
    rst $30
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    ld a, [$f4ff]
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, c
    rst $38
    inc a
    rst $38
    db $dd
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld h, a
    rst $38
    ld d, b
    rst $38
    ld a, [de]
    rst $38
    sbc e
    rst $38
    sbc $ff
    sub $ff
    ld [c], a
    rst $38
    di
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    db $fd
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
    ld a, a
    ld a, a
    rra
    ccf
    rrca
    rra
    rrca
    rlca
    rlca
    inc bc
    ld bc, $0001
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
    cp $00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $5e01
    rst $38
    ld c, $ff
    ld c, [hl]
    rst $38
    inc e
    rst $38
    ld a, [bc]
    rst $38
    ld c, d
    rst $38
    ld e, $ff
    inc e
    rst $38
    sbc [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld e, [hl]
    rst $38
    db $dd
    rst $38
    ld a, a
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ccf
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
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp e
    rst $38
    ld l, e
    rst $38
    cp e
    rst $38
    ld a, [hl-]
    rst $38
    ld a, l
    rst $38
    cp e
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    scf
    rst $38
    cp e
    rst $38
    call Call_050_65ff
    rst $38
    or a
    rst $38
    ld c, e
    rst $38
    inc hl
    ld a, a
    rst $38
    ccf
    rst $28
    rra
    rst $38
    rlca
    rst $28
    inc bc
    rst $20
    ld bc, $0093
    ldh a, [rP1]
    ret nz

    nop
    ldh a, [rP1]
    pop hl
    nop
    and c
    nop
    call $ed00
    nop
    db $fd
    nop
    ret c

    nop
    cp h
    nop
    db $f4
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp [hl]
    nop
    cp $00
    rst $38
    nop
    cp $00
    db $fc
    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $ec
    nop
    db $ec
    nop
    db $ec
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $ec
    nop
    call c, $dc00
    nop
    reti


    nop
    add sp, $00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    call nz, $e500
    nop
    pop hl
    ld bc, $01db
    db $eb
    ld bc, $03e3
    rst $30
    inc bc
    di
    rlca
    nop
    rlca
    ld bc, $0307
    rrca
    ld bc, $150f
    rrca
    dec b
    rra
    dec b
    rra
    dec c
    ccf
    inc l
    ccf
    ld l, d
    ccf
    ld h, [hl]
    ld a, a
    ld d, [hl]
    ld a, a
    ld d, h
    rst $38
    ld d, h
    rst $38
    xor b
    rst $38
    sbc h
    rst $38
    rst $18
    rst $38
    daa
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    inc de
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc de
    rst $38
    ld d, e
    rst $38
    scf
    rst $38
    ld d, a
    rst $38
    cp c
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    or l
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    or $ff
    push af
    rst $38
    push af
    rst $38
    db $fd
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
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    sbc c
    rst $38
    cp c
    rst $38
    ld d, c
    rst $38
    sub e
    rst $38
    cp e
    rst $38
    sbc e
    rst $38
    sbc c
    rst $38
    sbc e
    rst $38
    sub e
    rst $38
    sub d
    rst $38
    sub h
    rst $38
    sub d
    rst $38
    sub d
    rst $38
    inc d
    rst $38
    or h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld e, a
    ccf
    ld e, $0f
    rrca
    rlca
    ld b, $03
    add e
    nop
    ld [bc], a
    ld bc, $0205
    rlca
    nop
    nop
    inc bc
    inc b
    inc bc
    inc b
    inc bc
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
    rlca
    nop
    inc bc
    inc b
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    inc b
    rlca
    nop
    inc c
    inc bc
    rlca
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rra
    inc a
    rra
    inc e
    ccf
    inc a
    ccf
    ld a, h
    ccf
    ld a, [hl-]
    ld a, a
    db $fc
    ld a, a
    ld hl, sp+$7f
    add hl, de
    or $07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$7f]
    ldh [$5f], a
    ldh [$dd], a
    ld [c], a
    ldh a, [$cf]
    rst $08
    ldh a, [$94]
    db $eb
    add b
    rst $38
    pop bc
    cp [hl]
    pop bc
    cp [hl]
    ld d, b
    xor a
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld hl, sp-$01
    sub e
    rst $38
    ld a, a
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
    db $fc
    ld hl, sp-$21
    rst $38
    and a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    inc a
    rst $38
    ccf
    rst $38
    dec bc
    rst $38
    sub b
    rst $38
    add b
    rst $38
    add d
    rst $38
    add b
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    add h
    rst $38
    ret nz

    rst $38
    sbc a
    rst $38
    adc b
    add a
    or b
    or b
    ccf
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra
    cp a
    sbc a
    ccf
    ccf
    cp a
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
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
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
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
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, d
    dec b
    nop
    nop
    rst $38
    rst $38
    ld a, c
    add [hl]
    rla
    nop
    inc sp
    nop
    sub e
    nop
    db $fd
    nop
    ldh a, [rP1]
    inc d
    db $eb
    ld [hl], b
    adc a
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
    cp $01
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
    nop
    nop
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    ld bc, $92ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    add sp, -$01
    nop
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
    db $ed
    rst $38
    ld a, [hl]
    rst $38
    call z, $aaff
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    add hl, bc
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp $ff
    ld d, [hl]
    rst $38
    ld de, $00ff
    nop
    ldh [$80], a
    or $f8
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
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    ld d, a
    rst $38
    ld c, a
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    sub a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    ld h, a
    rra
    ld [bc], a
    add c
    ldh a, [$fc]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    nop
    nop
    ldh a, [rIE]
    ld b, b
    cp a
    ld l, a
    nop
    db $fc
    ld [bc], a
    cp $00
    rst $38
    nop
    ld l, [hl]
    ld bc, $2fd0
    ld [de], a
    db $ed
    ld a, e
    add h
    ld sp, hl
    ld b, $f0
    rrca
    db $e4
    rra
    ret nz

    ccf
    ret z

    ccf
    add a
    ld a, b
    swap h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $00ff
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    cp b
    rlca
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec sp
    call nz, $bf40
    ld [bc], a
    rst $38
    ld b, d
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    xor [hl]
    rst $38
    ld [c], a
    db $fd
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
    ld e, $ff
    inc a
    rst $38
    or b
    rst $38
    sbc a
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    add c
    cp $40
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
    ld b, b
    add b
    cp $f0
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add hl, de
    rlca
    pop bc
    db $e3
    ld sp, hl
    ei
    ld sp, hl
    ei
    ld sp, hl
    ei
    ld sp, hl
    ei
    ld sp, hl
    ei
    ld sp, hl
    ei
    ld sp, hl
    ei
    ld sp, hl
    ei
    pop af
    ei
    pop af
    ei
    pop af
    ei
    pop af
    ei
    pop af
    ei
    pop af
    ei
    pop af
    ei
    pop af
    ei
    di
    ei
    di
    ei
    di
    ei
    rst $30
    di
    push af
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30

jr_050_6bc3:
    di
    rst $30
    di
    rst $30
    di
    rst $30

jr_050_6bc9:
    di
    rst $30
    di
    rst $30
    di
    daa
    di
    rlca
    inc bc
    inc bc
    rst $38
    ld b, c
    rst $38
    ld e, a
    nop
    ld c, $01
    rst $38
    nop
    cp $01
    ld a, e
    add b
    jr jr_050_6bc9

    jr nc, jr_050_6bc3

    add d
    ld a, l
    add [hl]
    ld a, c
    ld c, $f1
    cpl
    ret nc

    dec b
    ld a, [$ed12]
    db $fd
    ld [bc], a
    ld h, e
    sbc h
    rst $38
    nop
    rst $38
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
    ld bc, $0700
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    rst $38
    nop
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
    add b
    rst $38
    adc b
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    ldh [$7f], a
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    inc d
    ei
    add hl, bc
    cp $0c

Call_050_6c33:
    ei
    inc b
    rst $38
    dec b
    cp $05
    cp $02
    rst $38
    ld a, [hl+]
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec bc
    db $f4
    ld a, [de]
    push hl
    ld [de], a
    db $ed
    rrca
    inc bc
    rrca
    rlca
    rrca
    rlca
    rra
    rlca
    rra
    rrca
    rst $18
    rrca
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
    ret nz

    rst $38
    db $fc
    rst $38
    rst $38
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
    cp $ff
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
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld a, [$fbfc]
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld a, [$f8fc]
    db $fc
    ei
    db $fc
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    adc l
    ld b, b
    ld a, [hl-]
    push bc
    db $fd
    ld [bc], a
    db $eb
    inc d
    ld [de], a
    rst $38
    inc d
    rst $38
    daa
    db $fc
    sub d
    db $fd
    ld b, h
    cp e
    ld b, l
    cp d
    rrca
    ldh a, [$3f]
    ret nz

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
    nop
    nop
    nop
    nop
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    ei
    inc b
    db $fd
    ld [bc], a
    ld de, $80ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, d
    cp l
    nop
    rst $38
    dec b
    ld a, [$be41]
    add c
    ld a, [hl]
    ld [$61f7], sp
    sbc [hl]
    pop de
    xor [hl]
    xor l
    jp nc, $d02f

    ld l, $d1
    db $db
    ld h, h
    sub d
    ld l, l
    ldh a, [$f8]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    add b
    ret c

    ldh [rIE], a
    db $fc
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
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$f8ff]
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add c
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add l
    ld a, [$f00f]
    rra
    ldh [$2f], a
    ret nc

    ld e, a
    and b
    ld d, b
    rst $38
    ldh [rIE], a
    add b
    rst $38
    sub b
    rst $38
    nop
    rst $38
    nop
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
    dec [hl]
    jp z, $e916

    dec de
    db $e4
    ld [hl], d
    adc l
    add b
    ld a, a
    db $fc
    inc bc
    ld d, b
    xor a
    ld [bc], a
    db $fd
    add a
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$0d
    ldh a, [$75]
    add b
    ld a, a
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, h
    inc bc
    add e
    nop
    add a
    nop
    ld b, e
    nop
    inc hl
    inc b
    inc c
    di
    ld [hl+], a
    db $dd
    nop
    rst $38
    ld [bc], a
    db $fd
    inc b
    ei
    nop
    rst $38
    xor c
    ld d, [hl]
    inc c
    di
    ld a, $c1
    ld a, [hl]
    add c
    rst $38
    ld bc, $4fb0
    db $fc
    inc bc
    ld hl, sp+$07
    ld sp, hl
    rlca
    cp $01
    ld [$3b00], sp
    nop
    cp a

jr_050_6df5:
    rst $38
    rst $38
    rst $38
    ld a, [$5bff]
    and b
    ld sp, hl
    nop
    rst $38
    nop
    adc b
    rst $30
    add b
    rst $38
    ld bc, $30fe
    rst $38
    ld [$04ff], sp
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld a, [bc]
    push af
    ld c, b
    or a
    dec b
    ld a, [$c23d]
    ret nc

    cpl
    ld l, c

Call_050_6e23:
    sub [hl]
    jr nc, jr_050_6df5

    nop
    rst $38
    dec c
    ld a, [c]
    add a
    ld a, b
    ld b, l
    cp d
    cp a
    ld b, b
    xor a
    ld d, b
    ld a, a
    add b
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    rst $18
    jr nz, jr_050_6ebc

    add b
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
    ldh a, [$c0]
    ei
    db $fc
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
    ldh [rIE], a
    cp [hl]
    rst $38
    rrca
    rst $38
    nop
    rst $38
    inc [hl]
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    nop
    rst $38
    ldh [rIE], a
    cp $ff
    rst $38
    rst $38
    ccf
    rst $38
    cp d
    ld a, l
    cp a
    ld a, b
    ccf
    ld hl, sp-$44
    ld a, b
    cp l
    ld a, b
    cp l
    ld a, b
    cp h
    ld a, b
    cp h
    ld a, b
    ld a, $78
    cp a
    ld a, b
    cp a
    ld a, b
    cp e
    ld a, h
    cp [hl]
    ld a, c
    cp d
    ld a, l
    cp e
    ld a, h
    cp a
    ld a, b
    cp a

jr_050_6e9f:
    ld a, b
    cp a
    ld a, b
    cp e
    ld a, h
    cp a
    ld a, b
    ccf
    ld a, b
    ld a, $78
    add hl, sp
    ld a, b
    ld a, $78
    cp e
    ld a, h
    ld a, e

jr_050_6eb1:
    db $fc
    rst $38
    ld a, b
    rst $38
    ld a, b
    ld a, e
    ld a, b
    ld a, c
    ld a, b
    ld a, a
    ld a, b

jr_050_6ebc:
    cp a
    ld a, b
    ld a, a
    ld a, b
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    ld d, c
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    jr nz, jr_050_6e9f

    nop
    ld c, a
    or b
    add h
    ei
    ld a, [hl]
    add c
    ld d, b
    xor a
    jr z, jr_050_6eb1

    ld a, [hl-]

jr_050_6edb:
    push bc
    ld bc, $87fe
    ld a, b
    ld h, $f9
    adc [hl]
    ld [hl], c
    inc c
    di
    adc b
    ld [hl], a
    nop
    rst $38
    rlca
    ld hl, sp-$71
    ldh a, [$f8]
    rlca
    ld bc, $9700
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    db $fc
    rst $38
    nop
    ei
    inc b
    cp $01
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    jr nc, jr_050_6edb

    inc c
    di
    rlca
    ld hl, sp-$3d
    cp h
    ld b, l
    ld a, [$fc03]
    rrca
    ldh a, [$97]
    ld l, b
    ld a, c
    add [hl]
    rst $38
    nop
    rra
    ldh [$7f], a
    add b
    ld a, [hl]

Call_050_6f23:
    add c
    rra
    ldh [rIE], a
    nop
    ld a, a
    add b
    ld a, a
    add b
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
    ldh [$80], a
    or $f8
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
    ldh [rIE], a
    cp $ff
    daa
    rst $38
    ld bc, $26ff
    rst $38
    adc b
    rst $38
    ld hl, $06ff
    rst $38
    add b
    rst $38
    ld hl, sp-$01
    rst $30
    rst $38
    rst $38
    rst $38
    di
    rrca
    ld a, l
    ld [bc], a
    sbc $01
    dec bc
    nop
    nop
    nop
    nop

jr_050_6f6b:
    nop
    nop
    nop
    add b
    nop
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld a, $c1
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld b, b

jr_050_6f89:
    cp a
    sub h
    ld l, e
    ld c, b
    or a
    xor l
    ld d, d
    ld e, [hl]
    and c
    jr z, jr_050_6f6b

    nop
    rst $38
    nop
    rst $38
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    sbc l
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    ld b, $00
    inc e
    nop
    jr z, jr_050_6f89

    jr nz, @-$1f

    db $10
    rst $28
    ld [bc], a
    db $fd
    ldh a, [rIF]
    ld a, d
    add l
    ld hl, sp+$07
    ld hl, sp+$07
    cp b
    ld b, a
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_050_701a

    db $fc
    pop bc
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    cp $ff
    nop
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    ld b, b
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld b, d
    cp l
    rla
    add sp, -$05
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
    nop
    nop
    nop
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
    db $fc
    ldh a, [rSB]
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_050_701a:
    nop
    rst $38
    ldh a, [rIE]
    ld a, a
    rst $38
    inc bc
    rst $38
    ret nz

    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $80ff
    rst $38
    cp $ff
    rst $38
    rst $38
    rrca
    rst $38
    adc [hl]
    ld a, a
    xor $1f
    sbc $2f
    xor $1f
    cp [hl]
    rrca
    cp [hl]
    rrca
    ld e, $0f
    rrca
    ld c, $df
    ld c, $ff
    ld c, $de
    cpl
    xor [hl]
    ld e, a
    xor $1f
    cp $0f
    cp $0f
    cp [hl]
    rrca
    ld a, [hl]
    rrca
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    cp $0f
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $ff
    ld c, $0e
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop
    ld a, [hl-]
    nop
    daa
    jr jr_050_70b1

    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    dec a
    jp nz, $807f

    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    pop de
    nop
    nop

jr_050_70b1:
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
    ld a, b
    add a
    ld hl, sp+$07
    jp hl


    ld d, $ff
    nop
    cp $01
    db $fc
    inc bc
    rst $38
    nop
    sbc $21
    rst $38
    nop
    ret nz

    nop
    db $ec
    ldh a, [$fd]
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
    ldh a, [rIE]
    ld a, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    sub a
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld de, $10ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    add b
    ld a, a
    pop bc
    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    inc h
    db $db
    ld c, b
    or a
    and b
    ld e, a
    inc bc
    rst $38
    ld bc, $7dff
    rst $38
    ld c, l
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    cp e
    rst $38
    rst $28
    rst $38
    and c
    ld e, a
    add c
    ld a, a
    ret nc

    cpl
    db $e4
    dec de
    ld hl, sp+$07
    add sp, $17
    ret nz

    ccf
    cp c
    ld b, a
    add b
    ld a, a
    ld [bc], a
    rst $38
    inc bc
    db $fc
    nop
    ld hl, sp+$78
    nop
    inc b
    nop
    add h
    inc bc
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    nop

jr_050_7147:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $e3
    rra
    rst $38
    rst $38
    cp $ff
    rrca
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $05ff
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    db $10
    rst $38
    jr nc, jr_050_7147

    and a
    ld e, a
    db $10
    rst $38
    nop
    rst $38
    inc d
    db $eb
    ret nz

    ccf
    ld [hl], b
    adc a
    sub b
    ld l, a
    adc b
    ld [hl], a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    call z, $f133
    rrca
    add b
    ld a, a
    add h
    ld a, e
    ldh a, [rIF]
    or b
    ld c, a
    add d
    ld a, a
    rlca
    nop
    nop
    rlca
    ld [$0707], sp
    ld [$000f], sp
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
    ld bc, $0307
    rrca
    rlca
    rra
    rra
    ld a, a
    ccf
    db $fc
    ld a, [hl]
    db $fc
    ld hl, sp-$03
    cp $ff
    rst $38
    rst $38

Call_050_71cd:
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ei
    db $fc
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    ei
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    or $ff
    ld e, a
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rrca
    ccf
    ld e, a
    ccf
    ccf
    rst $38
    ld c, $01
    pop bc
    ccf
    rst $28
    ld de, $09f6
    srl h
    rst $20
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    dec c
    nop
    dec c
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld [$ff07], sp
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    xor $01
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    db $fc
    inc bc
    ei
    rlca
    ei
    rlca
    ld a, e
    add a
    ld a, a
    rst $00
    rst $20
    rst $18
    rst $08
    rst $38
    cp $ff
    ld a, e
    db $fc
    ld a, e
    rst $38
    inc de
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld [$c0ff], a
    rst $38
    dec [hl]
    rst $38
    ld a, [bc]
    rst $38
    rlca
    rst $38
    ld sp, $00ff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    db $e3
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    rst $18
    rrca
    rst $08
    inc bc
    ld b, e
    add b
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0703
    rrca
    rrca
    ld e, $1f
    ld a, a
    ccf
    ld a, h
    cp $f8
    db $fc
    ld hl, sp-$10
    ldh [$e0], a
    ret nz

    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $f800
    ret nz

    ei
    db $fc
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
    ldh a, [rIE]
    rst $38
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld [hl], b
    rst $38
    and $1f
    cp $e1
    rst $38
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    ld [hl], a
    adc a
    jp $c507


    inc bc
    ld d, c
    ld bc, $01f3
    ld [hl], c
    inc bc
    ld [hl], c
    inc bc
    ld de, $1103
    inc bc
    adc e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc sp
    inc bc
    rst $38
    inc bc
    dec c
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    db $fd
    inc bc
    db $fd
    inc bc
    pop af
    rrca
    di
    rrca
    ei
    rlca
    ld l, c
    sub a
    add hl, de
    rst $38
    jp $fbff


    db $fc
    rst $18
    ld hl, sp-$60
    db $dd
    ld sp, hl
    add a
    ld a, [hl]
    add c
    add a
    ld a, b
    ldh a, [rIF]
    jp $f3ff


    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    db $f4
    rst $38
    cp e
    rst $38
    rst $00
    rst $38
    ld [hl], c
    rst $38
    inc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, $ff
    ret nz

    rst $38
    ld b, b
    rst $38
    ld [c], a
    rst $38
    db $f4
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld a, l
    rst $38
    cp $ff
    jp nz, Jump_000_01c1

    add e
    add hl, bc
    rlca
    rra
    rrca
    ccf
    rra
    ccf
    ld a, a
    rst $38
    cp $f8
    db $fc
    cp b
    ldh a, [$e0]
    ldh [$c1], a
    add b
    add d
    nop
    ld a, [de]
    nop
    ld [hl+], a
    nop
    ld b, b
    nop
    jr nz, jr_050_7380

jr_050_7380:
    jr c, jr_050_7382

jr_050_7382:
    ld b, b
    nop
    ld b, b
    nop
    ld bc, $0700
    inc bc
    rlca
    rrca
    inc a
    rra

Jump_050_738e:
    ldh a, [rIE]
    dec sp
    call nz, $807f
    ld a, h
    add e
    ccf
    rst $00
    ld l, l
    sbc a
    ld sp, $d6ff
    jp hl


    add a
    ld sp, hl
    dec [hl]
    bit 6, e
    adc l
    add hl, de
    rst $20
    ld [$00fc], sp
    pop af
    ld b, e
    rst $00
    sub d
    ld e, a
    pop bc
    ld e, a
    ret nc

    ld e, a
    jp nc, $c95f

    ld e, a
    call nc, $d25f
    ld e, a
    push bc
    ld e, a
    push de
    ld e, a
    jp z, $da5f

    ld e, a
    call z, $d05f
    ld e, a
    ret nc

    ld e, a
    ret z

    ld e, a
    call nz, $d05f
    ld e, a
    call c, Call_050_7f5f
    rst $18
    ld a, a
    rst $18
    ld a, [hl]
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
    rst $18
    ld a, a
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
    ldh [rIE], a
    add b
    cp $ff
    ld hl, sp-$04
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f0]
    ld hl, sp-$05
    db $fc
    rst $38
    rst $38
    ld sp, hl
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$07
    or $f9
    cp $bf
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    push af
    ld a, [$f8e7]
    jp $c0fc


    rst $38
    ret nc

    rst $28
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    rrca
    rst $38
    cp $ff
    ld [$bbff], a
    rst $38
    cp a
    rst $38
    cpl
    rst $38
    ld hl, $57ff
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    adc a
    rst $38
    cp a
    ld c, [hl]
    ld a, [hl]
    cp h
    ld a, b
    ldh a, [$f0]
    ldh [$a0], a
    ret nz

    add b
    nop
    nop
    nop
    ld b, $00
    dec e
    nop
    scf
    nop
    inc e
    nop
    db $ec
    nop
    or b
    nop
    ld [$2100], sp
    nop
    ld bc, $0f03
    rlca
    inc a
    rra
    ld [hl-], a
    ld a, a
    ldh [rIE], a
    sub b
    rst $28
    db $10
    rst $28
    add e
    rst $38
    ld l, a
    rst $38
    rst $38
    rra
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
    cp $ff
    ld a, [$c2ff]
    db $e3
    add d
    inc bc
    ld e, d
    inc sp
    jp nz, Jump_000_02fb

    ei
    db $10
    ei
    ld [bc], a
    ei
    ld a, [hl+]
    ei
    ld [de], a
    ei
    ld [de], a
    ei
    ld a, [bc]
    ei
    ld b, d
    ei
    ld [bc], a
    ei
    nop
    ei
    ld a, [bc]
    ei
    add b
    ei
    nop
    ei
    ld [de], a
    jp hl


    ld a, b
    add e
    ld [hl], b
    adc e
    ld sp, $3aca
    pop bc
    ld a, e
    add b
    db $fd
    ei
    sbc l
    ei
    inc c
    ei
    db $f4
    ei
    db $dd
    ei
    call nc, Call_050_7dfb
    ei
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38

jr_050_74e3:
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
    jr nz, jr_050_74fc

jr_050_74fc:
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
    ret nz

    nop
    rst $30
    ld hl, sp-$11
    rst $38
    adc a
    ld a, a
    db $fc
    inc bc
    db $db
    jr nz, @-$3c

    dec a
    ld a, a
    add b
    rst $38
    nop
    rst $18
    jr nz, jr_050_74e3

    db $fd
    db $fd
    cp $fd
    cp $3d
    cp $3d
    cp $df
    ld a, $7e
    sbc a
    rst $08
    ccf
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    and a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0200
    nop
    dec de
    nop
    ld h, [hl]
    nop
    cpl
    nop
    and l
    nop
    xor [hl]
    nop
    cp [hl]
    nop
    add c
    nop
    add e
    ld bc, $070b
    ld e, $0f
    ld e, h
    ccf
    ld [hl], c
    rst $38
    ret nz

    rst $38
    ld e, d
    and h
    ld d, a
    xor b
    db $ed
    inc bc
    rst $30
    rrca
    rst $08
    ccf
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
    db $fd
    cp $f0
    ld hl, sp-$20
    pop bc
    nop

Call_050_759f:
    rrca
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
    ld e, [hl]
    ld a, a
    ld d, a
    ld a, a
    ld e, [hl]
    ld a, a
    ld e, a
    ld a, a
    ccf
    ld a, a
    ld a, e
    ld a, a
    db $76
    ld a, a
    ld h, a
    ld a, h
    ld c, e
    ld a, a
    rrca
    ld [hl], h
    ld b, l
    ld a, d
    inc de
    ld l, h
    rlca
    ld a, b
    dec bc
    ld [hl], h
    ccf
    ld b, b
    ld c, a
    jr nc, jr_050_763e

    db $10
    ld e, a
    jr nz, jr_050_7652

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
    and e
    db $fc
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$02
    ld a, [c]
    db $fc
    add b
    db $fc
    nop
    ld hl, sp+$00
    nop
    inc e
    nop
    dec e
    nop
    add hl, sp
    nop
    add hl, de
    nop
    ld [de], a
    nop
    stop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    ret nz

    db $ec
    rst $38
    dec l
    rst $38
    and l
    ld e, e
    rst $38
    nop
    ld e, e
    and h
    reti


    ld h, $c1
    ld a, $fb
    inc b
    sbc a
    ld h, b
    ld [$ff15], a
    nop
    ld a, a
    add b
    sub b
    ld l, a
    ld de, $58fe
    cp a
    ret c

    rst $38
    ld hl, sp-$01
    ei
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_050_763e:
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    db $eb
    rst $38
    db $f4
    rst $38
    ld sp, hl
    rst $38
    inc a
    rst $38
    reti


    rst $38

jr_050_7652:
    db $dd
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
    ld a, a
    nop
    ld d, [hl]
    nop
    push af
    nop
    ld e, e
    nop
    xor h
    nop
    ld [hl], e
    nop
    or a
    inc bc
    adc a
    rrca
    ld e, $3f
    ld sp, hl
    ld a, a
    ldh [rIE], a
    sbc h
    rst $38
    add hl, bc
    rst $38
    dec d
    ei
    sbc e
    rst $38
    rrca
    rst $38
    ld e, h
    cp a
    ld [hl], b
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    jp z, Jump_000_1e75

    rst $20
    ld a, [hl]
    add e
    ld h, d
    sbc l
    rst $20
    rst $38
    db $fd
    rst $38
    db $f4
    ld hl, sp-$1e
    ret nz

    sbc [hl]
    inc e
    ld a, [hl]
    ld a, h
    cp $fc
    cp $fc
    cp $fc
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fa
    cp $b6
    cp $62
    cp $86
    cp $96
    cp $76
    cp $7e
    cp $9a
    cp $1a
    cp $2f
    or $7d
    add d

jr_050_76c0:
    rst $18
    jr nz, jr_050_76c0

    ld [bc], a
    cp l
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    ret nz

    ret nz

    ret nz

    rst $38
    rst $38
    rst $38
    nop
    db $eb
    nop
    ld c, a
    nop
    sbc l
    nop
    ld a, [hl]
    nop
    ld b, a
    nop
    or e
    nop
    cp a
    nop
    rst $30
    nop
    rst $30
    nop
    rst $38
    nop
    rrca
    nop
    rst $10
    nop
    add e
    nop
    add d
    nop
    ld b, e
    nop
    rra
    nop
    rrca
    nop
    rra
    nop
    cpl
    nop
    dec de
    nop
    ld [de], a
    nop
    cp [hl]
    ret nz

    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    ld a, [$bdff]
    rst $38
    rlca
    rst $38
    jr nz, @+$01

    ld d, h
    rst $38
    ld l, e
    rst $38
    ld a, [hl]
    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    or l
    rst $38
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

jr_050_7747:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
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
    cp c
    nop
    rst $30
    ld bc, $07df
    cp a
    rra
    inc a
    ld a, a
    ld a, [c]
    rst $38
    db $e3
    rst $38
    jr nz, @+$01

    xor $11
    jp nc, $cd29

    inc sp
    ld [hl], a
    rrca
    sbc $3f
    ld a, c
    cp $c4
    ei
    jr c, jr_050_7747

    and [hl]
    ld e, c
    cp b
    jp $ce31


    db $10
    ld l, a
    inc [hl]
    swap d
    rst $08
    ret c

    inc a
    ld h, b
    ldh a, [$cf]
    rst $00
    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    rst $08
    rst $08
    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    rst $08
    rst $28
    db $ed
    rst $28
    db $eb
    rst $28
    rst $28
    rst $28

Jump_050_77a8:
    db $e3
    rst $28
    db $e3
    rst $28
    db $e3
    rst $28
    rst $20
    rst $28
    db $e3
    rst $28
    rst $28
    rst $20
    ld l, h
    rst $20
    xor $67
    call Call_050_5067
    ld h, a
    jr nc, jr_050_7825

    ld [hl], d
    ld b, a
    ld sp, $7046
    ld b, a
    inc d
    ld h, e
    ld [hl], d
    ld b, l
    ld h, a
    db $10
    dec h
    ld d, d
    ld h, a
    db $10
    ld h, a
    db $10
    ld h, a
    db $10
    ld h, a
    db $10
    ld h, a
    db $10
    ld b, a
    jr nc, jr_050_7820

    jr nc, jr_050_7852

    db $10
    ld b, a
    jr nc, jr_050_7826

    jr nc, @+$42

    jr nc, @+$73

    ld a, a
    ldh [rIE], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ld [hl], e
    nop
    rst $38
    nop
    ld bc, $5b00
    nop
    rst $38
    nop
    rst $08
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld sp, hl
    nop
    di
    nop
    di

jr_050_7807:
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
    ld [c], a
    db $fc
    rst $38
    rst $38
    ld a, a
    rst $38
    pop hl
    rra
    ld a, a
    add b

jr_050_7820:
    ldh a, [rIE]
    db $fd
    rst $38
    rst $18

jr_050_7825:
    rst $38

jr_050_7826:
    ld a, [hl]
    rst $38
    ld b, a
    rst $38
    rst $30
    rst $38
    rra
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    ldh a, [rIE]
    ld a, [$feff]
    rst $38
    rst $28
    rst $38
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
    db $76
    ld sp, hl

jr_050_7852:
    call c, Call_050_78e1

jr_050_7855:
    add a
    rst $10
    jr z, jr_050_7807

    ld d, c
    or [hl]
    ld c, c
    xor l
    ld d, e
    rst $10
    cpl
    sbc $3f
    ld a, c
    cp $e0
    rst $38
    add l
    ld a, [$ff18]
    ld l, b
    sub a
    jr jr_050_7855

    add hl, bc
    cp $91
    ld e, [hl]
    ld e, c
    and a
    adc [hl]
    ld a, a
    or h
    ld a, b
    add c
    ldh [$83], a
    inc bc
    rra
    rra
    ld l, a
    rst $38
    rst $38
    rst $38
    and $ff
    ld c, l
    rst $38
    daa
    rst $38
    sub e
    rst $38
    ld h, d
    rst $38
    ld [bc], a
    rst $38
    add e
    rst $38
    inc [hl]
    rst $38
    db $10
    rst $38
    ld hl, $08ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    ld a, a
    ld de, $fcee
    rst $38
    add hl, sp
    rst $38
    ld a, a
    rst $38
    cp $ff
    add hl, bc
    rst $38
    or e
    rst $38
    ld [de], a
    rst $38
    ld e, $ff
    ld h, $ff
    dec h
    rst $38
    add hl, hl
    rst $18
    ld d, c
    xor a
    or b
    ld c, a
    ld d, l
    xor d
    ld c, b
    cp a
    cp d
    ld b, l
    ldh a, [rIF]
    ret nc

    cpl
    ld h, h
    sbc e
    pop hl
    rra
    ret nz

    ccf
    pop bc
    ccf
    ld bc, $ffff
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    nop
    dec d
    nop
    inc b
    nop
    ld bc, $1f00
    nop
    rst $38
    nop
    rst $28

Call_050_78e1:
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
    db $db
    nop
    rst $10
    nop
    inc hl
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ld a, [$d500]
    nop
    sub [hl]
    nop
    ld a, [$0000]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc h
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    daa
    rst $38
    cp $ff
    db $dd
    rst $38
    ld c, a
    rst $38
    sub e
    rst $38
    xor $ff
    rst $38
    rst $38
    db $fd
    rst $38
    rst $08
    rst $38
    di
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
    rra
    rst $38
    add a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    cp [hl]
    rst $38
    ei
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
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
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
    ld [bc], a
    ld de, $1312
    inc d
    ld [bc], a
    dec d
    ld [bc], a
    ld d, $17
    jr jr_050_7986

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld [bc], a
    jr nz, jr_050_7997

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_050_79a7

    ld a, [hl+]
    dec hl
    inc l
    ld [bc], a
    ld [bc], a
    dec l
    ld l, $2f

jr_050_7986:
    ld [bc], a
    ld [bc], a
    jr nc, jr_050_79bb

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_050_79cb

    ld [bc], a
    ld a, [hl-]
    ld [bc], a
    dec sp
    ld [bc], a

jr_050_7997:
    ld [bc], a
    ld [bc], a
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld [bc], a
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_050_79a7:
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
    ld [bc], a
    ld [bc], a
    ld d, e
    ld d, h
    ld d, l
    ld [bc], a
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_050_79bb:
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld h, b
    ld [bc], a
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l

jr_050_79cb:
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, h
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl], a
    ld a, b
    ld [bc], a
    ld [bc], a
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
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
    ld [bc], a
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    ld [bc], a
    jp c, $db02

    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    ld [bc], a
    ld [bc], a
    ld [bc], a
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0202
    inc bc
    ld [bc], a
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $02
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
    ld b, $06
    ld b, $06
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld b, $06
    inc b
    inc b
    inc b
    ld b, $04
    inc b
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    ld b, $04
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    inc b
    nop
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld b, $02
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    ld [bc], a
    dec b
    dec b
    dec b
    inc bc
    dec b
    dec b
    ld [bc], a
    ld b, $02
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $02
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $02
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    ld b, $06
    ld b, $0e
    inc c
    inc b
    inc c
    inc c
    inc b
    inc c
    inc c
    ld c, $0a
    ld a, [bc]
    ld a, [bc]
    ld c, $0e
    ld c, $0e
    inc c
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
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
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
    or b
    or b
    ldh a, [$f0]
    pop af
    pop af
    di
    di
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
    add b
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    add e
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    xor $ee
    ld hl, sp-$08
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    add sp, -$18
    ldh a, [$f0]
    ldh [$e0], a
    ld h, b
    ld h, b
    nop
    nop
    ld b, h
    ld b, h
    add $c6
    ld [c], a
    ld [c], a
    or $f6
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    add hl, bc
    ld b, $07
    ld [$0007], sp
    inc b
    nop
    ld [hl+], a
    nop

jr_050_7c90:
    ld d, d
    jr nz, @-$1e

    nop
    ret nc

    nop
    rla
    nop
    add c
    nop
    ld de, $1100
    nop
    nop
    nop
    db $10
    jr nz, jr_050_7c90

Jump_050_7ca3:
    nop
    adc d
    ld b, c
    ret nz

    nop
    pop bc
    nop
    db $ec
    nop
    ret nz

    ccf
    jr nc, jr_050_7cbf

    ld de, $022e
    dec a
    sbc b
    inc b
    or b
    nop
    jr nz, jr_050_7cba

jr_050_7cba:
    nop
    nop
    nop
    nop
    sub b

jr_050_7cbf:
    nop
    rla
    rla
    inc de
    inc de
    call $9ccd
    sbc h
    ld a, l
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ret nz

    ret nz

    add c
    add c
    ld e, $1e
    rst $38
    rst $38
    ld hl, sp-$08
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
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    reti


    rst $38
    inc bc
    rst $38
    rlca
    rst $38
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
    cp $fe
    db $fc
    db $fc
    db $f4
    db $f4
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
    inc h
    nop
    stop
    stop
    ld h, h
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, c
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
    rst $38
    nop
    db $ed
    ld [de], a
    adc a
    ld [hl], b
    sub c
    ld h, b
    pop bc
    nop
    ld bc, $9f00
    nop
    ei
    inc b
    xor e
    inc b
    ret


    nop
    db $fd
    nop
    jp z, Jump_000_1935

    add $0f
    add b
    adc [hl]
    nop
    ret c

    nop
    ld e, h
    nop
    ld c, $00
    ld h, d
    ld bc, $4eb1
    add l
    ld a, d
    dec de
    db $e4
    ccf
    ret nz

    ld e, a
    add b
    call c, $fc00
    nop
    jr c, jr_050_7d86

jr_050_7d86:
    stop
    jr jr_050_7d8a

jr_050_7d8a:
    nop
    nop
    ld bc, $0600
    ld bc, $fafa
    db $fd
    db $fd
    rst $38
    rst $38
    ld a, a
    ld a, a
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    inc bc
    inc bc
    rlca
    rlca
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
    db $e3
    rst $30
    ld h, e
    db $e3
    db $e3
    db $e3
    call nz, $c1c4
    pop bc
    pop hl
    pop hl
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $e4

Call_050_7dfb:
    db $e4
    ret nz

    ret nz

    add b
    add b
    ret nz

    ret nz

    jp nz, $c2c2

    jp nz, $c0c0

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
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld c, h
    inc c
    dec b
    dec b
    nop
    nop
    jr z, jr_050_7e34

jr_050_7e34:
    stop
    adc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_050_7e3e:
    adc b
    nop
    rst $28
    db $10
    ld a, [hl-]
    add l
    ccf
    nop
    ld a, [c]
    ld bc, $d12e
    xor a
    ld d, b
    pop af
    ld e, $b0
    ld e, a
    ld c, e
    cp a
    ld h, l
    sbc [hl]
    rra
    cp $48
    rst $38
    or l
    ld c, d

jr_050_7e5a:
    ld d, d
    xor h
    dec hl
    ld b, h
    ld l, h
    inc de
    ld e, e
    daa
    or d
    ld c, a
    ld hl, sp+$07
    dec [hl]
    ld a, [bc]
    rst $20
    jr jr_050_7e5a

    db $10
    rst $28
    db $10
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, $01
    rra
    nop
    rra
    nop
    add hl, sp
    nop
    xor b
    nop
    ld sp, $e700
    rst $20
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $18
    rst $18
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
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
    pop bc
    rst $38
    add a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    ei
    ld h, a
    ld h, a
    ld a, a
    ld a, a
    cpl
    cpl
    ld l, a
    ld l, a
    cpl
    cpl
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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    and a
    and a
    dec c
    dec c
    inc bc
    inc bc
    inc b
    inc b
    nop
    nop
    ld bc, $0301
    inc bc
    ld d, h
    ld d, h
    ret c

    ret c

    rst $38
    ld b, b
    rst $38
    inc bc
    rst $38
    inc [hl]
    push af
    ld c, d
    db $eb
    inc d
    xor a
    ld d, e
    db $fc
    rst $20
    jp z, Jump_000_35b4

    ret nz

    ld b, c
    and d
    db $d3
    cp $3f
    cp $f4
    ld a, a
    ld b, e
    db $fc
    sbc a
    ld h, b
    rst $30

jr_050_7f1f:
    ld hl, sp-$10
    and b
    ldh a, [rNR41]
    ret nz

    ld b, b
    add c
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld a, l
    add d
    cp $03
    rst $30
    ld [$00ff], sp
    inc hl
    inc b
    ld e, d
    inc b
    ld e, a
    jr nz, jr_050_7f1f

    jr nz, @-$1e

    nop
    ld b, e
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    call nz, $e200
    nop
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
    rst $08
    rst $08
    rst $20
    rst $20
    pop hl

Call_050_7f5f:
    pop hl
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
    rst $38
    rst $38
    rst $38
    nop
    nop
    jr jr_050_7f7c

    rla
    ld bc, $000e
    ld [bc], a
    nop
    nop
    nop

jr_050_7f7c:
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp a
    cp a
    ld a, a
    ld a, a
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh [$e0], a
    add b
    add b
    nop
    nop
    ld a, c
    ld a, c
    rst $38
    rst $38

jr_050_7f96:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ef
    db $ec
    sbc a
    sbc [hl]
    cp a
    or h
    rst $38
    db $fc
    rst $38
    ldh a, [$3e]
    ld hl, $c1fe
    cp $c1
    db $fc
    ld h, e
    cp $e1
    rst $38
    ldh a, [rIE]

jr_050_7fb9:
    ret nz

    rst $38
    ld b, b
    rst $38
    jr nc, @+$81

    db $10
    jr c, @+$81

    ld a, b
    rst $38
    db $fc
    rst $28
    ret c

    rst $28
    or [hl]
    ld e, b
    cp $00
    db $e4
    nop
    ld [hl], h
    add b
    or b
    ld b, b
    ret nz

    jr nz, jr_050_7fb9

    nop
    db $db
    inc b
    or a
    ld [$fe09], sp
    rst $20
    jr jr_050_7f96

    ld c, b
    rst $28
    db $10
    ld a, a
    add b
    ld [hl], c
    add b
    cp $01
    ld sp, hl
    ld [bc], a
    ld b, e
    nop
    ld [bc], a
    nop
    ld [bc], a
    add h
    adc h
    ld b, b
    ld a, b
    nop
    ld hl, sp+$00
    ld h, c
    nop
    rst $30
    nop
    rst $20
    nop
    ld b, [hl]
    nop
    dec hl
    inc b
