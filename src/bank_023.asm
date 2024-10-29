SECTION "ROM Bank $023", ROMX[$4000], BANK[$23]

    ret z

    scf
    ret z

    scf
    ret z

    scf
    add sp, $17
    add sp, $17
    ld l, b
    sub a
    ld e, b
    and a
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Call_023_4020:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$04ff], sp
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

jr_023_4045:
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    inc de
    rst $38
    ld d, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $28
    rst $38
    rst $00
    rst $38
    xor a
    cp $5e
    db $fc
    db $fc
    ld hl, sp-$05
    db $e3
    rst $08
    rst $30
    cp [hl]
    rst $08
    ld a, b
    sbc a
    ldh a, [$3f]
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
    ld bc, $02ff
    rst $38
    rlca
    rst $38
    ld [$0cff], sp
    rst $38
    db $10
    rst $38
    jr z, @+$01

    ld [hl], c
    cp $c3
    db $fc
    jp nz, $84fd

    ei
    dec c
    ld a, [c]
    add hl, de
    and $33
    call z, $aa55
    ld h, a
    sbc b
    rst $08
    jr nc, jr_023_4045

    ld l, c
    sbc [hl]
    ld h, c
    dec l
    jp nc, $c23d

    ld a, e
    add h
    cp e
    ld b, h
    rst $30
    ld [$8877], sp
    rst $28
    db $10
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
    ld d, l
    rst $38
    xor d
    rst $38
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    cp $7d
    cp $7d
    cp $3d
    cp $bd
    cp $bd
    cp $3d
    cp $3d
    cp $3d
    cp $3d
    cp $39
    cp $39
    cp $39
    cp $39
    cp $39
    cp $39
    cp $39
    cp $79
    cp $79
    cp $79
    cp $71
    cp $71
    cp $71
    cp $71
    cp $f1
    cp $b1
    cp $f1
    cp $f1
    cp $f1
    cp $71
    cp $31
    cp $31
    cp $31
    cp $71
    cp $71
    cp $71
    cp $f1
    cp $71
    cp $51
    cp $51
    cp $51
    cp $d1
    cp $b1
    cp $b1
    cp $b1
    cp $33
    db $fc
    ld [hl], c
    cp $f3
    db $fc
    pop af
    cp $39
    cp $7b
    db $fc
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
    db $fd
    cp $fe
    db $fc
    di
    db $fd
    rst $28
    di
    rst $18
    rst $28
    cp a
    rst $18
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    add a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $ff
    dec b
    rst $38
    ld a, [bc]
    rst $38
    add hl, bc
    rst $38
    inc de
    rst $38
    jr z, @+$01

    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    ld [bc], a
    db $fd
    add h
    ei
    nop
    rst $38
    ld hl, $49de
    or [hl]
    ld b, e
    cp h
    adc e
    ld [hl], h
    rla
    add sp, $56
    xor c
    xor [hl]
    ld d, c
    xor $11
    call c, $dc23
    inc hl
    cp c
    ld b, [hl]
    cp h
    ld b, d
    ld a, h
    add d
    ld a, c
    add h
    ld sp, hl
    inc b
    ld hl, sp+$04
    db $f4
    ld [$08f0], sp
    jp hl


    db $10
    jp hl


    db $10
    push hl
    db $10
    sla b
    db $db
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
    ld hl, sp-$01
    ldh [rIE], a
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
    add e
    db $fc
    add a
    ld hl, sp-$71
    ldh a, [$cf]
    ldh a, [$df]
    ldh [$7f], a
    ld h, b
    ld a, a
    ld h, b
    ccf
    jr nc, @+$41

    jr nc, jr_023_420c

    db $10
    rra
    jr @+$01

    rrca
    rst $38
    rrca
    rst $20
    rra
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
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $18

jr_023_420c:
    ld a, b
    rst $08
    ld a, h
    rst $00
    ld l, h
    jp $c37c


    ld l, h
    jp $c37c


    ld [hl], h
    jp $c374


    ld [hl], h
    jp $c374


    ld [hl], h
    jp $c374


    ld [hl], h
    jp $c374


    ld [hl], h
    jp $c374


    ld [hl], h
    jp $c374


    ld h, h
    jp $c364


    ld h, h
    jp $c364


    ld h, h
    jp $c3e4


    call nz, $c4c3
    jp $c3c4


    call nz, $c4c3
    jp $c3cc


    call c, $dcc7
    rst $00
    call c, $fcc7
    rst $00
    db $fc
    rst $20
    db $fc
    rst $28
    db $fc
    rst $08
    rst $38
    call z, $cfff
    rst $38
    rst $08
    rst $38
    rst $18
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nc

jr_023_426f:
    rst $38
    ret nz

jr_023_4271:
    rst $38
    sub c
    xor $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc d
    db $eb
    ld bc, $02fe
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    jr nz, @-$1f

    jr nz, jr_023_426f

jr_023_4290:
    ld b, b
    cp a
    ld b, b
    cp a
    and h
    ld e, e
    and h
    ld e, e
    jr z, jr_023_4271

    ld [$10f7], sp
    rst $28
    db $10
    rst $28
    ld h, c
    sbc [hl]
    pop af
    ld c, $f1
    ld c, $a1
    ld e, $a1
    ld a, [de]
    ld h, e
    jr jr_023_4310

    jr jr_023_4310

    jr jr_023_430a

    jr nz, jr_023_4290

    jr nz, @-$24

Jump_023_42b5:
    ld hl, $21da
    jp nc, $b221

    ld b, c
    and [hl]

Call_023_42bd:
Jump_023_42bd:
    ld b, c
    and d
    ld b, c
    rst $38
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

jr_023_42e6:
    rst $38
    nop
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$1f
    ldh [rIF], a
    ldh a, [$0b]
    db $f4
    scf
    ret z

    rrca

Jump_023_4303:
    ldh a, [$5e]
    and b
    ccf
    ret nz

    xor a
    ld d, b

jr_023_430a:
    cpl
    ret nc

    adc a
    ld [hl], b
    ld e, l
    and b

jr_023_4310:
    ld e, a
    and b
    ld e, [hl]
    and b
    ld a, h
    add b
    add hl, sp
    ret nz

    ld a, [hl-]
    ret nz

    rst $38
    nop
    cp $00
    cp d
    ld b, b
    cp d
    ld b, b
    or [hl]
    ld b, b
    ld a, [hl]
    add b
    ld e, $e0
    sbc $20
    ld e, [hl]
    and b
    ld a, h
    add b
    cp a
    ld b, b
    dec a
    ret nz

    ld a, a
    add b
    dec a
    ret nz

    ld a, h
    add b
    db $fd
    nop
    dec a
    ret nz

    dec e
    ldh [$1f], a
    ldh [$7c], a
    add b
    rst $38
    nop
    rst $18
    jr nz, jr_023_42e6

    ld h, b
    rst $08
    jr nc, jr_023_43ca

    add b
    cpl
    ret nc

    ld a, a

jr_023_434f:
    add b
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_023_434f

    dec b
    ld a, [$ba45]
    dec b
    ld a, [$bf40]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$1cf7], sp
    db $e3
    inc a
    jp $c33c


    inc [hl]
    jp $c33c


    dec a
    jp nz, Jump_023_42b5

    cp l
    ld b, d
    or l
    ld b, d
    or l
    ld b, d
    ld a, c
    add d
    ld a, b
    add d
    add hl, sp
    add d
    ld h, c
    add d
    ld h, b
    add d
    ld h, c
    add d
    ld h, c
    add d
    nop
    add d
    nop
    add d
    ld b, b
    add d
    call nz, $c402
    ld [bc], a
    add h
    ld [bc], a
    ld b, h
    ld [bc], a
    ld b, l
    ld [bc], a
    push de
    ld [bc], a
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_023_43ca:
    ret nz

    ccf
    ldh [$1f], a
    ld hl, sp+$07
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
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    ldh [$3d], a
    jp nz, Jump_023_609f

    rst $18
    jr nz, jr_023_446e

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
    dec b
    ld hl, sp+$00
    ld hl, sp+$05
    ld hl, sp+$7f
    add e
    ld a, a
    add c
    rst $38
    nop
    rst $38
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
    cp a
    ld b, b
    cp a

jr_023_4417:
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
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
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    sbc a
    ld h, b
    xor a
    ld d, b
    rst $38
    nop
    cpl
    ret nc

    cpl
    ret nc

    sbc a
    ld h, b
    inc bc
    db $fc
    jr z, jr_023_4417

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
    nop
    rst $38
    nop
    rst $38
    and a
    ld e, c
    rlca
    ld sp, hl
    and [hl]
    ld e, c
    ld [bc], a
    db $fd
    add [hl]
    ld a, c
    sub c
    ld l, [hl]
    sub c
    ld l, [hl]
    nop
    rst $38
    inc b
    ei
    inc d
    db $eb
    add b
    ld a, a
    add b
    ld a, a
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38

jr_023_446e:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld l, $d1
    ld l, $d1
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    rst $28
    db $10
    rst $20
    db $10
    rst $08
    db $10
    rst $08
    db $10
    rst $28
    db $10
    db $eb
    db $10
    xor a
    db $10
    xor a
    db $10
    or a
    ld [$0825], sp
    daa
    ld [$0823], sp
    ld [hl-], a
    ld [$0814], sp
    or h
    ld [$0814], sp
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
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
    ret nz

    cp a
    ret nz

    cp a
    ldh [$9f], a
    and b
    sbc a
    and b
    sbc a
    jr nz, @+$21

    jr nc, jr_023_44e1

    jr nc, @+$11

    jr nc, @+$11

    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10

jr_023_44e1:
    rrca
    jr @+$09

    jr @+$09

    jr @+$09

    jr jr_023_44f1

    jr jr_023_44f3

    jr jr_023_44f5

    jr @+$09

    sbc b

jr_023_44f1:
    add a
    sbc b

jr_023_44f3:
    add a
    sbc b

jr_023_44f5:
    add a
    jr @+$09

    jr @+$09

    jr jr_023_4503

    jr jr_023_4505

    jr jr_023_4507

    jr jr_023_4509

    db $10

jr_023_4503:
    rrca
    db $10

jr_023_4505:
    rrca
    db $10

jr_023_4507:
    rrca
    db $10

jr_023_4509:
    rrca
    db $10
    rrca
    db $10
    rrca
    jr nc, jr_023_451f

    jr nc, jr_023_4521

    jr nz, jr_023_4533

    jr nz, jr_023_4535

    ld h, b
    rra
    ld h, b
    rra
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

jr_023_451f:
    ccf
    add b

jr_023_4521:
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

jr_023_4533:
    rst $38
    nop

jr_023_4535:
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ld b, b
    ccf
    ld b, b
    ccf
    and b
    rra
    and b
    rra
    ret nc

    ld c, a
    ret nc

    ld c, a
    ret nc

    ld c, a
    add sp, $27
    add sp, $27
    db $f4
    sub e
    db $f4
    sub e
    ld a, [$fa49]
    ld c, c
    db $fd
    call nz, $a4fd
    db $fd
    ld h, h
    cp $52
    cp $72
    rst $38
    ld sp, $ff29
    jr @+$01

    jr z, @+$01

    inc d
    rst $38
    inc d
    rst $38
    ld a, [bc]
    rst $38
    add [hl]
    ld a, a
    add d
    ld a, a
    add l
    ld a, a
    ld b, e
    cp a
    ld b, d
    cp a
    ld b, d
    cp a
    pop bc
    ccf
    pop bc
    ccf
    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh [$1f], a
    add sp, $17
    ld hl, sp+$07
    db $f4
    dec bc
    or h
    ld c, e
    db $f4
    dec bc
    jp c, $da25

    dec h
    jp c, $d925

    ld h, $cd
    ld [hl-], a
    db $ed
    ld [de], a
    ld l, [hl]
    ld de, $116e
    ld h, a
    jr jr_023_4606

    jr @+$21

    ldh [$1f], a
    ldh [rNR32], a
    db $e3
    dec e
    ld [c], a
    rra
    ldh [rNR33], a
    ld [c], a
    dec e
    ld [c], a
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR24], a
    and $19
    and $19
    and $19
    and $1a
    push hl
    ld a, [de]
    push hl
    ld d, $e9
    ld d, $e9
    ld d, $e9
    ld e, $e1
    ld e, $e1
    ld e, $e1
    dec e
    ld [c], a
    dec d
    ld [$ec13], a
    inc de
    db $ec
    rla
    add sp, $1f
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
    ldh [rLCDC], a
    ccf
    and b
    sbc a
    and b
    sbc a
    ret nz

    ld e, a
    rst $18
    ld b, b
    ldh [rNR41], a
    rst $38
    rra
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38

jr_023_4606:
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ld a, a
    rst $38
    dec [hl]
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    call c, $dc23
    inc hl
    ld e, h
    and e
    dec c
    ld a, [c]
    adc l
    ld [hl], d
    ld [hl], l
    adc d
    ld e, a
    and b
    ld d, a

Jump_023_463f:
    xor b
    db $d3
    inc l
    di
    inc c
    or [hl]
    ld c, c
    xor $11
    xor $11
    db $fc
    inc bc
    inc a
    jp $c33c


    cp h
    ld b, e
    dec a
    jp nz, $817e

    ld a, e
    add h
    rst $30
    ld [$0cf3], sp
    di
    inc c
    di
    inc c
    rst $30
    ld [$08f7], sp
    ld a, [$fa05]
    dec b
    ld a, [$ff05]
    nop
    ld [$e915], a
    ld d, $f7
    ld [$03fc], sp
    ei
    inc b
    ei
    inc b
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    db $ed
    ld [de], a
    rst $28
    db $10
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
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
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
    rst $38
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

jr_023_46cf:
    nop
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
    inc bc
    nop
    db $fc
    db $fc
    rst $38
    inc bc
    ldh [rIE], a
    ld e, a
    rst $38
    ld [$1fff], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_023_46cf

    inc [hl]
    swap [hl]
    ret


    ld [hl-], a
    call $cd32
    ld [hl-], a
    call $cd32
    inc de
    db $ec
    db $d3
    inc l
    cp c
    ld b, [hl]
    and a
    ld e, b
    di
    inc c
    db $fd
    ld [bc], a
    inc sp
    call z, $e41b
    rra
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    dec de
    db $e4
    dec sp
    call nz, $c03f
    rst $28
    db $10
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    ld a, a
    add b
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    push af
    ld a, [bc]
    ld l, l
    sub d
    ld l, l
    sub d
    ld a, c
    add [hl]
    cp [hl]
    ld b, c
    sbc a
    ld h, b
    sub a
    ld l, b
    cp l
    ld b, d
    xor a
    ld d, b
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
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
    cp $01
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
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    sub l

jr_023_4795:
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
    ret nz

    ccf
    ld a, b
    add a
    ret z

    scf
    jp hl


    ld d, $a9
    ld d, [hl]
    or c
    ld c, [hl]
    or [hl]
    ld c, c
    or [hl]
    ld c, c
    xor a
    ld d, b
    rst $28
    db $10
    or $09
    ccf
    ret nz

    rst $10
    jr z, jr_023_4795

    dec h
    adc e
    ld [hl], h
    adc $31
    adc [hl]
    ld [hl], c
    jp c, $b625

    ld c, c
    and [hl]
    ld e, c
    xor $11
    xor [hl]
    ld d, c
    sbc d
    ld h, l
    ld a, [$9f05]
    ld h, b
    rst $10
    jr z, @+$01

    nop
    rst $28
    db $10
    ld [hl], l
    adc d
    rst $30
    ld [$20df], sp
    rst $28
    db $10
    db $fd
    ld [bc], a
    cp a
    ld b, b
    rst $38
    nop
    di
    inc c
    cp a
    ld b, b
    rst $30
    ld [$10ef], sp
    ei
    inc b
    ei
    inc b
    db $fd
    ld [bc], a
    ld [hl], c
    adc [hl]
    ld a, l
    add d
    db $fd
    ld [bc], a
    ld a, a
    add b
    ei
    inc b
    ld a, a
    add b
    ld a, a
    add b
    ld e, e
    and h
    ld c, a
    or b
    ld c, l
    or d
    swap h

jr_023_480a:
    rst $18
    jr nz, jr_023_480a

    ld [bc], a
    cp a
    ld b, b
    db $ed
    ld [de], a
    ei
    inc b

jr_023_4814:
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    xor $11
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    sbc $21
    sbc $21
    rst $10
    jr z, jr_023_4814

    inc d
    rst $38
    nop
    cp $01
    rst $38
    nop
    nop
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    xor l
    rst $38
    ld a, a
    rst $38
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
    inc a
    jp Jump_023_42bd


    adc h
    ld [hl], e
    sbc a
    ld h, b
    and l
    ld e, d
    pop bc
    ld a, $83
    ld a, h
    add l
    ld a, d
    adc [hl]
    ld [hl], c
    db $76
    adc c
    ld [hl-], a
    call $10ef
    rlca
    ld hl, sp+$54
    xor e
    inc a
    jp $ff00


    sbc h
    ld h, e
    ld sp, hl
    ld b, $fa
    dec b
    ld a, [$6d05]
    sub d
    dec l
    jp nc, $d12e

    db $ec
    inc de
    rst $28
    db $10
    ld a, $c1
    dec c
    ld a, [c]
    sub a
    ld l, b
    adc $31
    ei
    inc b
    rst $20

jr_023_4881:
    jr jr_023_4881

    ld bc, $19e6
    rst $28
    db $10
    xor $11
    rst $38
    nop
    xor $11
    ei
    inc b
    ei
    inc b
    ei
    inc b

jr_023_4894:
    ld a, e
    add h
    dec sp
    call nz, Call_023_42bd
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    rst $28
    db $10
    rst $18
    jr nz, jr_023_4894

    inc d
    rst $38
    nop
    cp e
    ld b, h
    ei
    inc b
    ei
    inc b
    rst $38
    nop
    ld a, e
    add h
    ld [hl], e
    adc h
    ld [hl], c
    adc [hl]
    rst $38
    nop
    or $09
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$0af5], sp
    db $ed
    ld [de], a
    rst $28

jr_023_48cb:
    db $10
    rst $38
    nop
    cp a
    ld b, b
    sbc a
    ld h, b
    rst $20
    jr jr_023_48cb

    add hl, bc
    rst $38
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
    ldh a, [rIF]
    rrca
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    or h
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
    db $fc
    dec de
    db $e4
    and e
    ld e, h
    add e
    ld a, h
    inc sp
    call z, $fc03
    inc de
    db $ec
    ld b, e
    cp h
    ld b, [hl]
    cp c
    ld c, [hl]
    or c
    ld [de], a
    db $ed
    dec h
    jp c, $38c7

    dec l
    jp nc, $05fa

    or d
    ld c, l
    ld a, [c]
    dec c
    ld h, d
    sbc l
    ld b, [hl]
    cp c
    add $39
    call nz, $c83b
    scf
    ld a, [$fb05]
    inc b
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
    cp a
    ld b, b
    db $e3
    inc e
    db $fc
    inc bc
    cp $01
    sbc $21
    db $fd
    ld [bc], a
    ld a, l
    add d
    ld e, l
    and d
    db $dd
    ld [hl+], a
    rst $18
    jr nz, @+$01

    nop
    sbc a
    ld h, b
    or a
    ld c, b
    sbc l
    ld h, d
    rst $38
    nop
    ld a, [$9305]
    ld l, h
    rst $38
    nop
    ld a, [c]
    dec c
    and d
    ld e, l
    ld [hl+], a
    db $dd
    ld a, [bc]
    push af
    sbc d
    ld h, l
    rst $38
    nop
    sbc e
    ld h, h
    ld l, a
    sub b
    push af
    ld a, [bc]
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    di
    inc c
    sub e
    ld l, h
    db $db
    inc h
    db $fd
    ld [bc], a
    cp l
    ld b, d
    cp l
    ld b, d
    cp e
    ld b, h
    ei
    inc b
    rst $38
    nop
    rst $10
    jr z, @+$01

    nop
    ld a, a
    add b
    or a
    ld c, b
    or a
    ld c, b
    cp c
    ld b, [hl]
    cp h
    ld b, e
    scf
    ret z

    rst $38
    nop
    db $fd
    ld [bc], a
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
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld c, l
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    ld c, $0e
    rrca
    db $10
    db $10
    db $10
    db $10
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_023_4a18

    ld c, $1a
    stop
    dec de
    inc e
    dec e
    db $10
    ld e, $1e
    rra
    jr nz, jr_023_4a2d

    ld [hl+], a
    inc hl
    ld c, $0e
    inc h
    dec h
    ld h, $27
    jr z, jr_023_4a3f

    ld a, [hl+]
    dec hl

jr_023_4a18:
    inc l
    dec l
    db $10
    ld l, $2f
    jr nc, jr_023_4a2d

    ld sp, $3332
    ld c, $34
    dec [hl]
    ld [hl], $37
    jr c, jr_023_4a62

    ld a, [hl-]
    dec sp
    db $10
    inc a

jr_023_4a2d:
    dec a
    ld a, $3f
    inc sp
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

jr_023_4a3f:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld b, e
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld c, $5c
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

jr_023_4a62:
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
    db $10
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
    rrca
    db $10
    db $10
    db $10
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
    db $10
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


    jp c, $10db

    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$1010], a
    db $10
    or [hl]
    db $10
    db $eb
    db $ec
    db $ed
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $10
    rst $30
    ld hl, sp+$10
    ld sp, hl
    ld a, [$fcfb]
    db $fd
    db $10
    cp $10
    db $10
    db $10
    rst $38
    nop
    ld bc, $1002
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    db $10
    inc bc
    inc b
    dec b
    ld b, $10
    db $10
    db $10
    db $10
    db $10
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
    inc b
    inc h
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, h
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
    nop
    inc b
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    ld b, $04
    ld b, $06
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
    dec b
    dec b
    dec b
    dec b
    dec b
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $00
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
    inc b
    inc b
    inc b
    ld b, $00
    nop
    nop
    nop
    jr nz, jr_023_4bbe

jr_023_4bbe:
    nop
    nop
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc bc
    inc b
    inc b
    inc b
    inc b
    ld b, $00
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    inc bc
    inc bc
    ld bc, $0403
    inc b
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
    inc b
    ld bc, $0401
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, h
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
    inc c
    inc c
    inc c
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
    inc c
    inc c
    inc c
    inc c
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
    rst $38
    and b
    rst $38
    jr nz, @+$01

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
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
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
    db $10
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    inc a
    rst $38
    ld a, [hl]
    rst $38
    xor $ff
    ld l, h
    rst $38
    ld d, h
    rst $38
    sub h
    ld a, a
    add h
    ld a, a
    adc b
    ld a, a
    pop bc
    ccf
    inc h
    db $db
    sub b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    and e
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ld h, c
    rst $38
    ld h, e
    rst $38
    or e
    rst $38
    sub a
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
    inc bc
    rst $38
    inc bc
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
    rst $38
    add c
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    or $ff
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $10
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop

jr_023_4d87:
    rst $38
    nop
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    and b
    rst $18
    and b
    rst $18
    or b
    rst $08
    db $10
    rst $28
    jr jr_023_4d87

    ld c, $f1
    add e
    db $fc
    add e
    db $fc
    pop bc
    cp $c3
    db $fc
    pop hl
    cp $f0
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    scf
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, bc
    rst $30
    ld bc, $03ff
    rst $38
    add hl, bc
    rst $30
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    pop af
    cp $90
    rst $38
    call nc, $ffff
    rst $38
    cp a
    rst $38
    ld a, a
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
    cp a
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$01
    cp $09
    or $02
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop

jr_023_4e3b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b

jr_023_4e55:
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ld b, b
    cp a
    ld h, b
    sbc a
    ld b, b
    cp a
    ld [hl], b
    adc a
    ld a, b
    add a
    ld a, b
    add a
    jr nc, jr_023_4e3b

    jr jr_023_4e55

    adc h
    di
    adc [hl]
    pop af
    adc $f1
    and $f9
    db $eb
    db $f4
    di
    db $fc
    pop bc
    cp $e1
    cp $20
    rst $38
    ld h, b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    db $f4
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld a, a
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    rra
    pop hl
    ccf
    jp $f70f


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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $f4
    ei
    db $ec
    di
    add sp, -$19
    ld hl, sp-$19
    ldh a, [$ef]
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    cp $fb
    db $fc
    ei
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
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $18
    rrca
    rst $38
    rra
    rst $28
    rlca
    rst $38
    rrca
    rst $30
    sbc e
    ld h, a
    sbc a
    ld h, e
    adc l
    ld [hl], e
    adc l

jr_023_4f1f:
    ld [hl], e
    dec c
    di
    ld a, [de]
    push hl
    ld [$15f7], sp
    ld [$f40b], a
    ld c, $f1
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    di
    ld [$01f7], sp
    cp $01
    cp $00

jr_023_4f41:
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
    add b
    ld a, a
    add b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    sbc a
    jr c, jr_023_4f1f

    jr jr_023_4f41

    inc c
    di
    adc h
    di
    inc b
    ei
    add [hl]
    ld sp, hl
    jp nz, $f3fd

    db $fc
    ld sp, hl
    cp $f9
    cp $fd
    cp $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp l
    ld b, d
    push af

jr_023_4f83:
    ld a, [bc]
    ld h, l

jr_023_4f85:
    sbc d
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    cp $01
    rst $38
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    rrca
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
    rst $38
    rst $38
    cp $ff
    db $fd

jr_023_4fa7:
    rst $38
    ld a, d
    rst $38
    inc [hl]
    rst $38
    dec e
    ld a, [$f01f]
    ccf
    ldh [$7f], a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    rrca
    ret nz

    rlca
    ret nz

    add e
    ld b, b
    ret nz

    jr nz, jr_023_4f83

    jr nz, jr_023_4f85

    jr nz, jr_023_4fa7

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [rDIV]
    ret nz

    add h
    ret nz

    add h
    add b
    jp nz, $c280

    ldh [$c2], a
    ret nz

    pop bc
    ret nz

    pop hl
    ldh [$e1], a
    ldh a, [$e0]
    ldh [$f0], a
    ldh a, [$f0]
    ld hl, sp-$10
    ldh a, [$f8]
    db $fc
    ld hl, sp-$08
    ld hl, sp-$04
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    ld a, [hl]
    cp $7e
    cp $7f
    cp $3f
    rst $38
    cp a
    ld a, a
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
    ld bc, $01ff
    rst $38
    ld bc, $21ff
    rst $38
    rla
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    add c
    ld a, a
    adc c
    ld a, a
    call z, Call_023_6c3f
    sbc a
    add b
    rst $38
    call nc, $caef
    rst $30
    set 6, a
    add l
    ei
    push bc
    ei
    ret nz

    rst $38
    add $fd
    add $ff
    or [hl]
    rst $38
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sub a
    rst $38
    rst $00
    rst $38
    rst $00
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
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ld [hl], d
    rst $38
    db $e4
    rst $38
    ret z

    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld b, c
    cp $83
    db $fc
    dec bc
    db $f4
    ld e, a
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
    nop
    rst $38
    nop
    rst $38
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
    dec a
    nop
    nop
    nop

jr_023_50a6:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_023_50b4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    nop
    ld a, a
    add b
    ld a, a
    add b

jr_023_50c8:
    ld a, a
    add b
    ccf
    ld b, b
    ccf
    ld b, b
    scf
    ld c, b
    rla
    ld l, b
    rst $18
    jr nz, jr_023_50b4

    jr nz, jr_023_50a6

    jr nc, jr_023_50c8

    db $10
    rst $20
    jr jr_023_5144

    sbc b
    ld h, a
    sbc b
    sub a
    ld l, b
    rlca
    ld hl, sp-$7d
    db $fc
    add e
    db $fc
    add e
    db $fc
    pop bc
    cp $c1
    cp $c1
    cp $e0
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    ld hl, sp+$7f
    db $fc
    ld a, a
    db $fc
    ld a, a
    cp $3f
    cp $3f
    cp $3f
    cp $3f
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    cp a
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    ld a, a
    db $fd
    ld a, a
    pop hl
    ld a, a
    ld sp, hl
    rst $38
    jp hl


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a

jr_023_5144:
    ccf
    rst $38
    ld a, a
    cp a
    sbc a
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
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    or b
    rst $38
    or h
    rst $38
    xor h
    rst $30
    sbc h
    rst $20
    sbc d
    db $eb
    ld [de], a
    di
    ld [hl+], a
    di
    ld b, d
    di
    add d
    ei
    ld [bc], a
    ei
    ld bc, $21f9
    db $dd
    ld d, c
    xor l
    pop hl
    dec e
    pop af
    dec c
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rla
    nop
    cpl
    nop
    rrca
    nop
    rlca
    nop
    dec bc
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
    rlca
    nop
    ld c, $01
    ld d, [hl]
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
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, [$d007]
    cpl
    db $f4
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    and b
    ld e, a
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
    jr c, @-$1f

    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    jr z, @+$01

    jr nc, @+$01

    db $10
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    pop de
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    pop hl
    cp $e3
    cp $f1
    cp $f2
    db $fd
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$bf]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [$1f]
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    rrca
    db $fc
    rrca
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    adc a
    db $fc
    add a
    db $f4
    add a
    db $f4
    add a
    ld a, h
    ld b, a
    db $76
    ld b, a
    db $76
    ld b, a
    db $76
    ld b, a
    db $76
    ld b, a
    ld a, d
    ld b, e
    ld a, [hl-]
    inc hl
    ld a, [hl-]
    inc hl
    cp d
    inc hl
    cp d
    inc hl
    cp d
    inc hl
    cp e
    inc hl
    sbc c
    ld de, $1159
    ld e, l
    ld de, $115f
    or c
    ld e, a
    or c
    ld e, a
    xor c
    ld e, a
    cp c
    ld c, a
    cp b
    ld c, a
    ret c

    cpl
    ret c

    cpl
    ret c

    cpl
    call z, $cc37
    scf
    db $fc
    rlca
    db $f4
    rrca
    db $f4
    rrca
    db $e4
    rra
    ld [c], a
    rra
    ld [c], a
    rra
    ld [c], a
    rra
    and $1f
    ld [c], a
    rra
    ld [c], a
    rra
    pop bc
    ccf
    pop bc
    ccf
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add e
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld bc, $01ff
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
    cpl
    ld hl, sp+$0e
    ld sp, hl
    ld l, $d9
    ld c, [hl]
    ld sp, hl
    ld e, $f1
    inc e
    di
    ld d, h
    or e
    inc [hl]
    db $e3
    inc [hl]
    db $e3
    and b
    ld h, a
    ld l, b
    rst $00
    ld c, b
    rst $00
    ld d, b
    rst $08
    db $10
    adc a
    sub b
    adc a
    and b
    sbc a
    jr nz, jr_023_5329

    jr nz, jr_023_532b

    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    ld [$08ff], sp
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

jr_023_5329:
    rst $38
    nop

jr_023_532b:
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret nz

    ccf
    ld b, b
    cp a
    ret nz

    ccf
    ld h, b
    sbc a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld h, b
    sbc a
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

    ccf
    add b
    ld a, a
    ret nz

    ccf
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
    ret nz

    ccf
    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld b, b
    cp a
    ld h, d
    sbc a
    inc hl
    rst $18
    dec h
    rst $18
    inc hl
    rst $18
    inc hl
    rst $18
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
    add a
    rst $38
    add a
    rst $38
    adc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp b
    rst $38
    or b
    rst $38
    or b
    rst $38
    db $fc
    di
    pop hl
    cp $e1
    cp $e1
    cp $e0
    rst $38
    add b
    rst $38
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
    add h
    ld a, e
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ret c

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
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
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    nop
    rst $38
    ld bc, $03fe
    db $fc
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc h
    rst $38
    inc l
    rst $38
    ld l, h
    rst $38
    adc h
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $f4
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
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ld d, a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    sub d
    rst $38
    db $fd
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
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld h, b
    sbc a
    add b
    ld a, a
    pop bc
    ld a, $81
    ld a, [hl]
    add c
    ld a, [hl]
    ld bc, $01fe
    cp $41
    cp $41
    cp $04
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [rIF], a
    ldh a, [$af]
    ld d, b
    ld a, a
    add b
    ld e, a
    and b
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop

jr_023_54f0:
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [$1ce3], sp
    rst $20
    jr jr_023_54f0

    inc d
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$10ef], sp
    cp $00
    rst $28
    db $10
    rst $30
    ld [$38c7], sp
    xor $11
    or $09
    and $19
    ld l, [hl]
    sub c
    ld h, [hl]

jr_023_5523:
    sbc c
    ld h, d

jr_023_5525:
    sbc l
    ld h, d

jr_023_5527:
    sbc l
    ld [c], a

jr_023_5529:
    dec e
    ld b, b

jr_023_552b:
    cp a
    ld [hl], b

jr_023_552d:
    adc a
    ld b, b
    cp a
    ld h, b
    sbc a
    ld h, h
    sbc e
    ld h, b
    sbc a
    ldh [$1f], a
    jr nc, @-$6f

    ld d, b
    adc a
    ld l, b
    add a
    ld [hl], b
    adc a
    jr nc, @-$2f

    jr nz, jr_023_5523

    jr nz, jr_023_5525

    jr nz, jr_023_5527

    jr nz, jr_023_5529

    jr nz, jr_023_552b

    jr nz, jr_023_552d

    nop
    rst $38
    nop
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
    rst $38
    inc bc
    rst $38
    ld a, [$ffff]
    rst $18
    rst $38
    db $fc
    rst $38
    dec b
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38

jr_023_556d:
    rst $38
    rst $38

jr_023_556f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rlca
    rst $38
    db $10
    rst $28
    ldh [$1f], a
    ldh a, [rIF]
    sub b
    ld l, a
    ret nz

    ccf
    ret nc

    cpl
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    jr nz, jr_023_556d

    jr nz, jr_023_556f

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
    pop bc
    ccf
    add b
    ld a, a
    add d
    ld a, l
    db $10
    rst $28
    add b
    ld a, a
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
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    xor c
    ld b, [hl]
    rst $28
    nop
    xor e
    ld b, h
    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    cp a
    ld b, b
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

jr_023_55e8:
    rst $38
    nop

jr_023_55ea:
    rst $28
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_023_55f1

jr_023_55f1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
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
    rst $18
    jr nz, jr_023_55e8

    jr nz, jr_023_55ea

    jr nz, jr_023_562c

    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    ld l, a
    sub b
    db $e3
    inc e

jr_023_562c:
    rst $20
    jr jr_023_5696

    jr @-$17

    jr @-$17

    jr @-$3b

    inc a
    jp $413c


    cp [hl]
    pop bc
    ld a, $80
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
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    inc bc
    cp $ff
    rst $38
    rst $38
    xor a
    rst $38
    or $ff
    rrca
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
    dec e
    rst $38
    dec b
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $30
    ld [$09f7], sp
    rst $30
    ld bc, $01ff
    rst $38
    ld sp, $31cf
    rst $08
    add hl, sp
    rst $00
    add hl, sp
    rst $00
    ld de, $0bef
    rst $30
    dec bc
    rst $30
    ld bc, $01ff
    rst $38
    dec hl
    rst $10
    rst $18
    inc bc
    rst $08
    inc bc
    sbc $03

jr_023_5696:
    cp $03
    cp $03
    cp $03
    cp $07
    xor $07
    xor $07
    sbc $07
    adc [hl]
    rlca
    cp h
    rlca
    ld e, h
    rlca
    ld e, h
    rlca
    cp h
    rlca
    call c, $dc07
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
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$0f
    inc e
    db $e3
    inc e
    db $e3
    ld e, $e1
    ld a, $c1
    ld a, $c1
    inc a
    jp $c13e


    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    dec a
    jp nz, $a25d

    ld l, l
    sub d
    ccf
    ret nz

    inc sp
    call z, $f708
    ld b, b
    cp a
    ld bc, $12fe
    db $ec
    nop
    db $fc
    db $10
    db $ec
    nop
    db $fc
    ld [bc], a
    db $fc
    or d
    ld c, h
    ret c

    daa
    ld [hl], l
    adc [hl]
    ld h, h
    sbc a
    ld [hl], a
    adc e
    db $76
    adc c
    dec h
    jp c, $d827

    rst $18
    ld bc, $01dd
    call $ad01
    ld bc, $01f3
    di
    ld bc, $813b
    inc sp
    add e
    cp e
    inc bc
    rst $30

jr_023_5723:
    inc bc
    rst $38
    inc bc
    cp $03
    cp e
    rlca
    ld a, d
    rlca
    ld a, [hl]
    rlca
    ld a, [hl]
    rlca
    cp $07
    cp $07
    db $fc
    rlca
    or $0f
    db $f4
    rrca
    db $fc
    rrca
    cp h
    ld c, a
    db $fc
    rrca
    ld a, h
    adc a
    jr z, jr_023_5723

    inc c
    rst $38
    inc c
    rst $38
    jr @+$01

    inc e
    rst $38
    jr @+$01

    ld hl, sp-$01
    ld hl, sp+$7f
    add sp, -$01
    ld hl, sp-$01
    ld hl, sp-$01
    add sp, -$01
    pop de
    rst $38
    reti


    rst $38
    reti


    rst $38
    reti


    rst $38
    db $db
    rst $38
    reti


    rst $38
    sub e
    rst $38
    sbc e
    rst $38
    sub e
    rst $38
    sbc e
    rst $38
    sub a
    rst $38
    sub a
    rst $38
    sbc a
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    sbc [hl]
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    add hl, sp
    cp $79
    cp $30
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    ld a, a
    ld b, b
    rst $38
    ret nz

    ld a, a
    nop
    rst $38
    add d
    ld a, a
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
    ld hl, sp+$0f
    ld a, b
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld hl, sp+$1f
    ld a, h
    rra
    ld a, b
    rra
    ld a, h
    rra
    db $fc
    rra
    db $fc
    rra
    ld a, [$f81f]
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    ld a, [hl]
    dec sp
    ld a, d
    ccf
    ld a, [hl-]
    rst $38
    ld a, [hl-]
    rst $38
    ld a, [hl+]
    rra
    ld [de], a
    rrca
    inc bc
    rrca
    inc bc
    rrca
    ld bc, $1f0f
    rrca
    dec l
    rra
    rst $00
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sub a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $08
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    rst $08
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    rst $08
    ccf
    rst $08
    ccf
    adc [hl]
    ld a, a
    adc [hl]
    ld a, a
    adc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    sbc h
    ld a, a
    sbc h
    ld a, a
    cp h
    ld a, a
    inc e
    rst $38
    cp b
    ld a, a
    jr c, @+$01

    jr c, @+$01

    ld a, b
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    ld h, h
    ei
    ld h, h
    ei
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    call nz, $c4fb
    ei
    call nz, $ccfb
    di
    add h
    ei
    add h
    ei
    add h
    ei
    add h
    ei
    ld [$00f7], sp
    rst $38
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
    nop
    rst $38
    ld e, b
    rst $38
    ld e, h
    rst $38
    ld e, h
    rst $38
    ld d, h
    rst $38
    inc d
    rst $38
    ld e, h
    rst $38
    ld d, h
    rst $38
    ld e, b
    rst $38
    ld [hl-], a
    rst $38
    inc a
    rst $38
    inc l
    rst $38
    ld l, b
    rst $38
    ld d, b
    rst $38
    ld [de], a
    rst $38
    ld e, e
    rst $38
    ld e, e
    rst $38
    dec de
    rst $38
    ld a, [de]
    rst $38
    ld a, d
    rst $38
    ld a, [$78ff]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
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
    ld h, b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    ldh [rIE], a
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
    ld b, b
    cp a
    ret nz

    cp a
    add b
    rst $38
    add b
    rst $38
    ret nz

    cp a
    or b
    rst $18
    and b
    rst $18
    and b
    rst $18
    ldh [$df], a
    xor b
    rst $18
    and b
    rst $18
    ld h, b
    rst $18
    ldh [$df], a
    ld h, b
    rst $18
    ldh [$df], a
    ldh [$df], a
    ld b, b
    rst $38
    ld h, b
    rst $18
    ld e, b
    rst $28
    ret nz

    rst $38
    ret nc

    rst $28
    ret nc

    rst $28
    ld d, b
    rst $28
    jr nc, @-$0f

    or b
    rst $28
    ldh a, [$ef]
    or b

jr_023_595b:
    rst $28
    or b

jr_023_595d:
    rst $28
    ld h, b
    rst $38
    jr nz, @+$01

    jr z, jr_023_595b

    jr z, jr_023_595d

    ld h, b

jr_023_5967:
    cp a
    ld l, b

jr_023_5969:
    or a
    ld e, b

jr_023_596b:
    or a
    ret c

    or a
    jr jr_023_5967

    jr c, jr_023_5969

    jr c, jr_023_596b

    sbc b
    rst $30
    jr @-$07

    jr @-$07

    jr @-$07

    dec de
    rst $30
    add hl, de
    rst $30
    rla
    ei
    ld [hl], l
    db $db
    dec d
    ei
    dec e
    ei
    dec e
    ei
    inc e
    ei
    inc e
    ei
    inc e
    ei
    ld e, [hl]
    ld sp, hl
    ld a, [de]
    db $fd
    ld e, $f9
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    ld c, $fd
    ld c, [hl]
    db $fd
    ld c, [hl]
    db $fd
    ld c, [hl]
    db $fd
    ld c, [hl]
    db $fd
    ld c, h
    rst $38
    ld c, l
    cp $6d
    cp $4d
    cp $ad
    cp $7d
    xor $ed
    cp $2f
    cp $6d
    cp $6f
    cp $6d
    cp $6f
    cp $6d
    cp $6f
    cp $6f
    cp $6f
    cp $6f
    cp $66
    rst $38
    db $76
    rst $28
    ld h, [hl]
    rst $38
    add [hl]
    rst $38
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    cp [hl]
    ld bc, $00fe
    rst $38
    ld bc, $02fe
    db $fd
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$f807]
    rlca
    ld hl, sp+$04
    ei
    inc d
    db $eb
    inc bc
    db $fc
    dec b
    ld a, [$f40b]
    add hl, bc
    or $01
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld b, $f9
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld bc, $05fe
    ld a, [$fe01]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    rst $38
    ld a, [de]
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    ld d, $ff
    ld d, $ff
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    ld e, $ff
    rra
    rst $38
    ld c, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, [hl]
    cp a
    ld a, [de]
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $ff
    inc c
    rst $38
    ld c, $ff
    rrca
    rst $38
    adc h
    rst $38
    ld h, $df
    ld b, $ff
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, d
    rst $38
    inc c
    rst $38
    add d
    rst $38
    ld b, $ff
    add l
    rst $38
    add l
    rst $38
    ld b, l
    rst $38
    db $e3
    rst $38
    push hl
    rst $38
    pop hl
    rst $38
    ld hl, sp-$09
    add sp, -$09
    xor b
    rst $30
    ld a, b
    rst $30
    ld h, b
    rst $38
    ld a, b
    rst $30
    ld [hl], c
    rst $38
    add sp, -$01
    ld a, c
    rst $38
    ld hl, sp-$01
    or $ff
    ld [hl], h
    rst $38
    or [hl]
    rst $38
    or d
    rst $38
    jp nc, $f0ff

    rst $38
    ret c

    rst $38
    add sp, -$01
    ld h, b
    rst $38
    ldh [rIE], a
    ld d, b
    rst $38
    ld l, b
    rst $38
    jr z, @+$01

    ld [hl-], a
    rst $38
    sub c
    rst $38
    add hl, de
    rst $38
    ld e, b
    rst $38
    pop af
    ld a, a
    pop af
    ld a, a
    pop af
    ld a, a
    pop af
    ld a, a
    pop af
    ld a, a
    jp hl


    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld [bc], a
    db $fd
    dec b
    ld a, [$ff00]
    inc b
    ei
    and b
    ld a, a
    pop hl
    ld a, $e1
    ld a, $c0
    ccf
    ret nc

    ccf
    sub b
    ld a, a
    ret z

    ccf
    adc h
    ld a, a
    adc h
    ld a, a
    adc h
    ld a, a
    inc b
    rst $38
    add h
    ld a, a
    add d
    ld a, a
    ld [bc], a
    rst $38
    add c
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
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    add c
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
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, $b8ff
    rst $38
    sbc b
    rst $38
    cp b
    rst $38
    sbc c
    rst $38
    db $db
    rst $38
    sbc b
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    inc c
    di
    inc c
    di
    ld a, [bc]

jr_023_5b6d:
    push af
    add d
    ld a, l
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    and b
    ld e, a
    and b
    ld e, a
    inc h
    db $db
    inc b
    ei
    ld c, b
    or a
    jr jr_023_5b6d

    inc c
    di
    inc e
    db $e3
    ld l, d
    sub l
    ld de, $11ee
    xor $03
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    jr @+$01

    jr @+$01

    jr @+$01

    inc e
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld b, $ff
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    jr @+$01

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
    ld [bc], a
    rst $38
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld h, b
    rst $38
    ld l, b
    rst $38
    ld [hl], b
    rst $38
    ld c, b
    rst $38
    ld c, h
    rst $38
    ld c, $ff
    inc c
    rst $38
    ld c, $ff
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    sub [hl]
    rst $38
    inc d
    rst $38
    ld b, $ff
    inc b
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld sp, $39ff
    rst $38
    jr c, @+$01

    jr @+$01

    inc e
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld b, $ff
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
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
    rst $38
    add b
    rst $38
    ret nz

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
    ld h, b
    rst $38
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr @+$01

    jr @+$01

    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, $ff
    ld c, $ff
    ld b, $ff
    rlca
    rst $38
    ld [bc], a
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
    ld bc, $0302
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
    nop
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    rla
    rla
    rla
    jr jr_023_5d20

    add hl, de
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_023_5d32

    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_023_5d47

    ld a, [hl+]
    dec hl

jr_023_5d20:
    inc l
    dec l
    ld l, $2f
    jr nc, jr_023_5d57

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_023_5d67

    add hl, sp
    add hl, sp
    nop
    nop

jr_023_5d32:
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    inc bc
    ld b, c
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    nop
    nop
    nop
    ld b, d
    ld b, e
    ld b, e
    ld b, h

jr_023_5d47:
    ld b, l
    ld b, l
    ld b, [hl]
    ld b, a
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    nop
    nop
    ld c, b
    ld c, c
    ld b, e
    ld b, e
    ld c, d

jr_023_5d57:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    nop
    ld c, a
    ld d, b
    ld d, c
    ld b, e
    ld b, e
    ld d, d

jr_023_5d67:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    nop
    nop
    nop
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    nop
    nop
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
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    nop
    ld l, d
    ld l, e
    nop
    nop
    nop
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    add hl, sp
    add hl, sp
    ld [hl], h
    ld [hl], l
    nop
    nop
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
    add hl, sp
    add hl, sp
    ld [hl], l
    nop
    nop
    nop
    ld a, [hl]
    ld a, a
    inc bc
    add b
    add c
    add d
    add hl, sp
    add hl, sp
    add e
    add h
    add l
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc d
    adc d
    adc e
    adc h
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    adc l
    adc [hl]
    inc a
    adc a
    sub b
    add hl, sp
    add hl, sp
    add hl, sp
    sub c
    sub d
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc b
    sbc b
    sbc c
    sbc d
    add hl, sp
    nop
    nop
    nop
    sbc e
    sbc h
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    sbc l
    sbc [hl]
    add hl, sp
    nop
    nop
    nop
    sbc a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    and b
    and c
    and d
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
    inc b
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0401
    ld b, $06
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
    ld bc, $0604
    ld b, $01
    ld bc, $0106
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    inc b
    inc b
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    ld b, $01
    ld bc, $0101
    ld bc, $0106
    inc b
    inc b
    inc b
    inc b
    inc b
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
    ld bc, $0404
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0404
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    nop
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
    inc b
    inc b
    ld [bc], a
    inc bc
    inc bc
    nop
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
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop
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
    nop
    nop
    jr nz, jr_023_5f19

jr_023_5f19:
    ld [bc], a
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
    rlca
    rlca
    rlca
    rlca
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
    nop
    nop
    ld bc, $0404
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0401
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $1f00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr c, @+$01

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
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$18e7], sp
    add a
    ld b, b
    inc bc
    adc h
    ld c, $01
    ld a, [bc]
    dec d
    di
    nop
    rst $20
    nop
    rst $20
    nop
    rst $08
    nop
    rst $08
    nop
    xor a
    nop
    ld c, a
    nop
    ld e, [hl]
    ld b, b
    db $dd
    pop bc
    rst $18
    pop bc
    rst $18
    add c
    cp e
    add e
    cp e
    add e
    cp e
    add e
    dec sp
    inc bc
    dec sp
    inc bc
    ld a, a
    inc bc
    ld a, e
    inc bc
    ei
    inc bc
    db $f4
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
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
    rrca
    nop
    rst $38
    nop
    rst $38
    ld bc, $0eff
    rst $38
    ld [hl], b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld [bc], a
    ldh a, [$0c]
    ldh [rNR21], a
    db $e3
    inc c
    ld a, [hl-]
    ld [bc], a
    cp a
    rlca
    ld [hl], a
    rlca
    ld l, a
    rrca
    ld e, a
    ld e, $fe
    ld e, $fe
    ld e, $fe
    ld a, $be
    ld e, $de
    ld e, $cf
    ld c, $de
    inc c
    inc e
    inc c
    xor h
    inc c
    db $ec
    adc h
    call c, $c8c4
    ret z

    jp z, $d6c0

    ld b, b
    rst $18
    ret nz

    rst $38
    ldh [$fd], a
    ldh [$f9], a
    ldh [$d6], a
    call nz, $c6d7
    call c, $ccc8
    adc h
    xor h
    add h
    ld a, [hl+]
    ld [$08aa], sp
    ld e, e
    ld [$084b], sp
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    ld a, a
    nop
    rst $38
    rlca
    rst $38
    jr c, @+$01

    ret nz

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
    db $fc
    inc bc
    ld b, $00
    ld c, $00
    ld c, $00
    adc [hl]
    nop
    adc [hl]
    nop
    jp $eb00


    nop
    db $ed
    inc c
    ld a, a
    inc b
    db $76
    ld b, $7a
    ld [bc], a
    db $fd
    nop
    dec de
    ld bc, $01ab
    ld l, a
    ld h, e
    ld l, e
    ld h, e
    ld l, e
    sbc l
    add sp, -$61
    db $ed
    rra
    rst $28
    rra
    rst $08
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    sbc $ff
    ld c, h
    rst $38
    ld l, h
    rst $18
    xor l
    rst $18
    xor $dd
    ld l, d
    sbc l
    ld l, d

Jump_023_609f:
    sbc l
    ld l, d
    ld h, d
    reti


    ld b, b
    reti


    ret nz

    sbc c
    add b
    pop de
    ld b, b
    dec sp
    nop
    dec sp
    nop
    ld [hl-], a
    nop
    ld bc, $0002
    inc bc
    ld bc, $0002
    inc bc
    ld bc, $0002
    inc bc
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    ld [bc], a
    dec b
    nop
    ccf
    ld bc, $0eff
    rst $38
    ld [hl], b
    rst $38
    add b
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
    ld [de], a
    rst $38
    jr nc, @+$01

    db $76
    db $fd
    ld a, [de]
    db $fd
    ld a, [bc]
    ld [bc], a
    adc d
    ld [bc], a
    ld a, [de]
    nop
    inc h
    nop
    inc h
    nop
    ld h, b
    jr nz, jr_023_614f

    nop
    dec a
    nop
    ld d, b
    nop
    inc [hl]
    nop
    ld d, b
    ld b, b

jr_023_6126:
    ld e, d
    nop
    ld e, h
    ld b, b

jr_023_612a:
    ld d, h
    ld b, b
    ld de, $3300
    nop
    adc h
    ld h, e
    inc c
    db $e3
    adc b
    ld b, a
    adc d
    ld d, l
    adc d
    ld d, l
    add d
    ld a, c
    ld [c], a
    dec d
    db $e3
    db $10
    and e
    ld d, h
    db $e3
    inc d
    and d
    ld b, h
    ld h, d
    sub h
    ld h, b
    sub b
    ld [hl], b
    add b
    jr nc, jr_023_6196

    ld [hl], b

jr_023_614f:
    ld [$ffcf], sp
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a

jr_023_6157:
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    nop
    ret nz

    nop
    ret nz

    jr nz, jr_023_6126

    and b
    ld b, b
    jr nz, jr_023_612a

    add b
    ld h, b
    ld b, b
    and b
    and b
    ld b, b
    ld b, b
    and b
    and b
    ld b, b
    ret nz

    jr nz, jr_023_6157

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$e0], a
    nop
    ldh [rP1], a
    ldh [rP1], a

jr_023_6196:
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$1f], a
    ld hl, sp+$00
    rst $00
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    add sp, $17
    db $e4
    dec de
    add l
    ld a, d
    add l
    ld a, [hl-]
    and l
    ld e, d
    rra
    ldh [$5f], a
    and b
    ld e, [hl]
    and c
    ld c, h
    or e
    ld a, h
    add c
    db $f4
    dec bc
    or [hl]
    ld c, c
    or a
    ld c, b
    xor l
    ld d, d
    adc b
    ld h, a
    adc b
    inc hl
    ld hl, $0188
    xor h
    or h
    ld b, d
    or b
    ld b, h
    or b
    ld b, h
    or b
    ld c, h
    call nc, Call_023_4020
    or b
    nop
    ldh a, [rP1]
    ret nc

    ld b, b
    jr nc, jr_023_6203

    ld b, b
    ld hl, $01c1
    ld b, c
    ld bc, $0341
    add e
    inc bc
    add e
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
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf

jr_023_6203:
    ccf
    ccf
    ccf
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
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    jr c, jr_023_621f

    jr c, jr_023_6221

    jr c, jr_023_6223

    inc a
    inc bc
    inc a

jr_023_621f:
    inc bc
    inc e

jr_023_6221:
    inc bc
    inc e

jr_023_6223:
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    inc c
    inc bc
    ld c, $01
    ld b, $01
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    inc bc
    cp $03
    cp $03
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    add c
    cp a
    add c
    cp a
    add c
    cp a
    add c
    ld b, b
    add c
    ld b, b
    add e
    ld b, b
    add e
    ld b, b
    add e
    ld b, b
    add d
    ld b, b
    add d
    ld b, b
    add d
    ld b, b
    add d
    ld b, b
    add d
    ld b, b
    add [hl]
    ld b, b
    add [hl]
    ld b, b
    add [hl]
    ld b, b
    add [hl]
    ld b, b
    add [hl]
    ld b, b
    add [hl]
    ld b, b
    ld b, $c0
    add [hl]
    ld b, b
    ld c, $c0
    adc [hl]
    ld b, b
    adc a
    ld b, b
    adc a
    ld b, b
    adc a
    ld b, b
    adc a
    ld b, b
    adc a
    ld b, b
    adc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    sbc a
    ld b, b
    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rrca
    db $fc
    ld [hl], e
    db $fc
    add e
    inc bc
    dec bc
    inc bc
    dec de
    inc bc
    ld d, a
    inc bc
    jp Jump_023_4303


    inc bc
    ccf
    inc de
    dec sp
    inc hl
    ld c, e
    cp h
    dec bc
    db $fc
    ld c, e
    db $fc
    cpl
    db $fc
    ld e, a
    db $fc
    ld e, a
    cp a
    rra
    rst $38
    rra
    db $fc
    inc bc
    db $e3
    add a
    ld h, a
    add a
    ld b, a
    rst $00
    rlca
    adc a
    rrca
    rrca
    adc a
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    add b
    rrca
    ldh a, [rSB]
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
    ret nz

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
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
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
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rrca
    ccf
    rrca
    ccf

Jump_023_639c:
    rrca
    ccf
    rrca
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
    ld bc, $070f
    rrca
    rlca
    rrca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    ld [bc], a
    db $eb
    ld b, $ea
    rlca
    db $e4
    dec bc
    db $e4
    dec bc
    rst $28
    ld de, $ffc0
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
    nop
    nop
    nop
    nop
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
    rst $08
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld [$48ff], sp
    rst $38
    ld c, b
    rst $38
    ld [$48ff], sp
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    rst $08
    rst $38
    nop
    rst $38
    add b
    rst $38
    cp h
    rst $38
    sbc b
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    ret z

    rst $38
    add sp, -$01
    add sp, -$01
    add sp, -$01
    rst $28
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    add b
    add b
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
    and b
    dec de
    ldh [$2b], a
    ldh a, [rNR13]
    add sp, $33
    ret z

    ei
    call nz, $ff00
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
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    cp b
    rst $20
    cp b
    rst $20
    cp b
    rst $20
    ld hl, sp-$1a
    ld sp, hl
    add b
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$3f], a
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $1fff
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
    nop
    inc bc
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
    ld a, a
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rlca
    nop
    rlca
    ld hl, sp-$01
    ld sp, hl
    db $fd
    ld sp, hl
    rst $38
    ld sp, hl
    cp $ff
    db $fc
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
    db $fc
    rrca
    ld hl, sp+$1f
    ldh a, [$7f]
    ldh [$c0], a
    rst $38
    add c
    cp $03
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
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
    add hl, bc
    cp $1d
    cp $1d
    cp $3e
    db $e3
    ld [$08f7], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    scf
    rst $38
    add a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    rlca
    rst $38
    add a
    rst $38
    nop
    ld hl, sp-$80
    rst $38
    ldh [rIE], a
    ldh a, [rIF]
    pop af
    ld c, $f1
    ld c, $f3
    call z, $fcf3
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
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
    pop af
    nop
    pop af
    nop
    pop hl
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

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
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    ret nz

    inc bc
    ldh a, [$03]
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    nop
    rst $38
    ld bc, $03fe
    db $fc
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
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    ld a, b
    rlca
    rst $38
    rst $38
    cp $ff
    inc bc
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    dec a
    jr nc, jr_023_6759

    ld a, b
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, a
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
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38

jr_023_6731:
    nop
    rst $38
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
    ld [$1ce3], sp
    pop bc
    ld a, $c1
    ld a, $81
    ld a, [hl]
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

jr_023_6759:
    rst $38
    jr c, @+$01

    jr c, @+$01

    ld a, h
    rst $38
    ld a, h
    rst $38
    cp $ff
    cp $ff
    ld b, h
    add e
    jr c, jr_023_6731

    db $10
    rst $38
    db $10
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_023_678a:
    nop
    rst $38

jr_023_678c:
    nop
    rst $38

jr_023_678e:
    add b
    ld a, a

jr_023_6790:
    ldh [$1f], a

jr_023_6792:
    ldh a, [rIF]

jr_023_6794:
    db $fc
    inc bc

jr_023_6796:
    db $fc
    inc bc

jr_023_6798:
    db $fc
    inc bc

jr_023_679a:
    db $fc
    inc bc

jr_023_679c:
    cp $01

jr_023_679e:
    cp $81
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, h
    add b
    ld a, b
    add b
    jr c, jr_023_678a

    jr c, jr_023_678c

    jr c, jr_023_678e

    jr c, jr_023_6790

    jr c, jr_023_6792

    jr c, jr_023_6794

    jr nc, jr_023_6796

    jr nc, jr_023_6798

    jr nc, jr_023_679a

    jr nc, jr_023_679c

    jr nc, jr_023_679e

    rst $38
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
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
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
    rst $18
    nop
    adc a
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
    nop
    rst $38
    ldh [rP1], a
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
    ld hl, sp-$01
    nop
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $f8
    cp $00
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    rra
    add b
    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rst $38
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
    ld hl, sp+$07
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
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
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
    add b
    add b
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIE]
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
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
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
    ld bc, $0302
    inc bc
    inc bc
    inc b
    dec b
    ld b, $06
    ld b, $06
    ld b, $07
    nop
    nop
    nop
    nop
    nop
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0e
    rrca
    db $10
    ld de, $0000
    nop
    ld [de], a
    inc de
    inc d
    inc d
    inc d
    dec d
    ld d, $06
    ld b, $06
    ld b, $17
    jr jr_023_69b1

jr_023_69b1:
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld b, $06
    ld b, $20
    ld hl, $2206
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_023_69d6

    add hl, hl
    ld a, [hl+]
    nop
    nop
    nop
    nop

jr_023_69d6:
    nop
    nop
    dec hl
    inc l
    inc d
    dec l
    ld l, $06
    ld b, $06
    cpl
    jr nc, jr_023_6a14

    nop
    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    inc d
    inc d
    ld [hl], $37
    ld b, $06
    ld b, $00
    jr c, @+$3b

    ld a, [hl-]
    nop
    dec hl
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, $06
    ld b, $06
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
    ld b, $06
    ld b, $06
    ld c, l
    ld c, [hl]
    ld c, a
    nop

jr_023_6a14:
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld b, $06
    ld b, $06
    nop
    nop
    nop
    nop
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    ld h, [hl]
    ld h, a
    nop
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld b, $06
    ld b, $06
    ld b, $6c
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
    ld b, $06
    ld b, $79
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, l
    ld a, l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc l
    adc l
    adc l
    adc l
    adc l
    adc l
    adc l
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    inc d
    sub l
    sub [hl]
    inc d
    inc d
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc e
    sbc h
    sbc l
    sbc [hl]
    dec e
    sbc a
    and b
    and c
    and d
    and e
    inc d
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
    inc d
    xor a
    or b
    or c
    inc d
    inc d
    or d
    or e
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
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
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
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
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
    rlca
    inc b
    inc b
    inc b
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
    ld bc, $0404
    inc b
    inc b
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
    ld bc, $0404
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    jr nz, jr_023_6b37

jr_023_6b37:
    nop
    nop
    rlca
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld [bc], a
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
    nop
    nop
    nop
    ld b, $04
    inc b
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
    nop
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
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
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    ld bc, $0404
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
    ld bc, $0401
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
    ld bc, $0101
    ld bc, HeaderLogo
    ld b, $01
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

Call_023_6c3f:
    nop
    rrca
    nop
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
    db $fc
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
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
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
    dec de
    db $fc
    ccf
    cp $7f
    cp $7f
    rst $38
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
    ld bc, $03c0
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
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
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
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
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
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
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
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
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    nop
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
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
    rst $38
    rst $38
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

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
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
    ld bc, $01fe
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
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
    rst $38
    nop
    rst $38
    ld [$3eff], sp
    rst $38
    cp $ff
    cp $0f
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
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
    cp $01
    ld a, a
    add b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp-$1d
    db $fc
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rTAC], a
    rst $20
    rra
    rst $38
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rSB], a
    pop hl
    rlca
    rst $20
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $fc
    ld a, a
    cp $3f
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $ff00
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
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
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld bc, $0701
    rlca
    rra
    rra
    ld a, a
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
    ldh [$f8], a
    rst $38
    cp $7f
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $7f81
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
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
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [$7f], a
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

jr_023_6f80:
    rst $38
    nop

jr_023_6f82:
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [rP1]
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
    rra
    rst $38
    rrca
    rst $38
    rlca
    cp $03
    add c
    ld a, a
    ret nz

    ccf

jr_023_6fa4:
    ldh [$1f], a

jr_023_6fa6:
    ld hl, sp+$07

jr_023_6fa8:
    db $fc
    inc bc

jr_023_6faa:
    cp $01
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

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    dec a
    ret nz

    jr c, jr_023_6f80

    jr c, jr_023_6f82

    jr jr_023_6fa4

    jr jr_023_6fa6

    jr jr_023_6fa8

    jr jr_023_6faa

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [$1f], a
    rst $38
    nop
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    ld h, b
    ld a, a
    nop
    inc e
    nop
    jr @+$05

    jr jr_023_700e

    jr jr_023_7088

    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38

jr_023_700e:
    rst $38
    rst $38
    cp $00
    sbc $01
    rst $18
    nop
    ret c

    rlca
    rst $10
    ld [$10cf], sp
    rst $08
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
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
    ld bc, $1ffe
    ldh [$3f], a
    ret nz

    rst $38
    nop
    nop
    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ldh [$3f], a
    ldh a, [$1f]
    ld hl, sp+$0f
    db $fc
    rlca
    ld a, h
    inc bc
    inc a
    inc bc
    inc e
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
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, [hl]
    nop
    ld a, a
    nop

jr_023_7088:
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
    ld b, $3f
    ld b, $3f
    rrca
    add hl, sp
    nop
    ccf
    ld b, $ff
    rst $38
    inc bc
    rst $38
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
    ld a, [$02ff]
    rst $38
    ld bc, $f11f
    ld c, $f9
    ld b, $f9
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $40
    ld a, [hl]
    ret nz

    ld e, $e0
    ld [bc], a
    db $fc
    cp h
    ld [c], a
    cp h
    ld h, e
    cp a
    ld h, b
    sbc a
    ld h, b
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
    rst $38
    nop
    rra
    ldh [rIF], a
    ldh a, [$3f]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$00
    dec b
    ld a, [bc]
    rlca
    ld hl, sp+$07
    cp b
    ld b, $f9
    rlca
    cp b
    inc b
    cp e
    dec b
    cp d
    ld b, $b9
    ld b, $b9
    nop
    or b
    nop
    or b
    rrca
    rst $38
    rrca
    cp a
    rrca
    rst $38
    rrca
    rst $18
    rst $08
    rst $18
    rst $08
    rst $38
    rst $28
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
    nop
    ei
    ld [bc], a
    ld a, [$fa03]
    inc bc
    ld hl, sp+$03
    ei
    dec b
    rst $38
    nop
    ldh [$1f], a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    nop
    rra
    nop
    rra
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
    inc c
    inc c
    ld [de], a
    ld e, $21
    dec a
    ld b, d
    jr jr_023_7209

    inc c
    ld [hl], e
    dec c
    ld [hl], d
    ccf
    ld b, b
    ccf
    ld b, b
    dec de
    ld h, h
    dec de
    ld h, h
    ld e, $61
    jr jr_023_7219

    daa
    ld e, b
    ccf
    ld b, b
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
    ld [c], a
    dec e
    sbc $21
    db $ed

jr_023_71c5:
    ld [de], a
    rst $00
    jr c, jr_023_71c9

jr_023_71c9:
    rst $38
    ld c, l
    or d
    ld [$0295], sp
    push af
    ld b, [hl]
    cp c
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
    cp a
    add b
    or a
    add b
    scf
    add b
    rla
    and b
    daa
    ret nc

    rst $30
    ret z

    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38

jr_023_7209:
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

jr_023_7219:
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    nop

jr_023_7221:
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
    ld bc, $0780
    add b
    jr jr_023_71c5

    nop
    rst $38
    jr nz, jr_023_7221

    inc c
    di
    sub h
    ld l, e
    ld [hl-], a
    adc l
    inc h
    dec de
    nop
    cp l
    add b
    ld c, h
    nop
    ld e, h
    nop
    cp c
    nop
    nop
    nop
    nop
    ldh a, [$f0]
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
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ldh a, [rIF]
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
    nop
    rst $38
    ccf
    rst $38
    inc b
    stop
    ret nc

    nop
    ld l, b
    jr nz, jr_023_72b4

    nop
    stop
    inc h
    nop
    ld h, h
    nop
    ld b, b
    jr jr_023_72b6

    nop
    nop

jr_023_72b4:
    nop
    nop

jr_023_72b6:
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$06
    ld hl, sp+$06

jr_023_72dd:
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$06
    ld hl, sp+$0e
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [rNR32]
    ldh a, [rNR32]
    ldh a, [rNR32]
    ldh a, [rNR32]
    ldh a, [$38]
    ldh a, [$38]
    ldh a, [$38]
    ldh a, [$78]
    ldh a, [$78]
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [rTAC], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$09
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $20
    jr @-$17

    jr @-$37

    jr c, @-$37

    jr c, @-$37

    jr c, jr_023_72b4

    ld a, b
    add a
    ld a, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    nop
    ld hl, sp-$25
    rst $38
    rlca
    nop
    rlca
    jr z, jr_023_735c

    jr c, jr_023_72dd

    add hl, bc
    rlca
    jr nz, jr_023_7360

    add d

jr_023_735c:
    inc b
    dec hl
    dec b
    ld [de], a

jr_023_7360:
    ld bc, $0786
    ld c, b
    ld [bc], a
    ld bc, $0102
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ld hl, sp-$08
    ld hl, sp-$08
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
    cp $fe
    cp $fe
    cp $fe
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
    add b
    nop
    add b
    nop
    adc b
    nop
    ld [$0000], sp
    ld [$0800], sp
    nop
    ld [$0804], sp
    inc b
    ld [$0804], sp
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    ld [bc], a
    inc c
    nop
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $00
    ld c, $c0
    adc $07
    nop
    ret nz

    nop
    ldh a, [rP1]
    db $fc
    nop
    ld a, a
    add b
    ccf
    ret nz

    cp a
    ld b, b
    rra
    ldh [rIE], a
    nop
    db $e3
    inc e
    dec l
    jp nc, Jump_023_639c

    ld [hl], $c9
    ld a, e
    inc b
    ld e, c
    ld h, $58
    daa
    ld e, h
    and e
    ld b, [hl]
    cp c
    ld b, [hl]
    cp c
    inc b
    ld a, e
    dec de
    inc h
    dec sp
    ld b, h
    dec sp
    inc b
    scf
    ld [$2215], sp
    dec d
    nop
    dec d
    ld [bc], a
    inc d
    dec bc
    inc b
    dec bc
    inc b
    dec bc
    ld b, $09
    inc bc
    inc b
    add e
    add h
    add e
    add b
    add e
    add h
    add e
    add b
    jp nz, $c0c1

    jp $c1c0


    ret nz

    pop bc
    pop hl
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]

jr_023_744f:
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    nop
    nop
    nop
    nop
    ldh [$e0], a
    db $fc
    db $fc
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld e, a
    and b
    ld e, a
    and b
    rrca
    ld d, b
    rlca
    cp b
    add hl, hl
    sub [hl]
    and b
    ld e, l
    jr nc, @-$32

    jr nc, jr_023_744f

    ld [hl], b
    add h
    ld [hl], b
    add l
    ld [hl], b
    add [hl]
    ldh [rNR21], a
    ld [hl], d
    adc h
    ld l, d
    sub b
    ld a, d
    dec b
    ld a, d
    dec b
    ld l, a
    db $10
    rra
    ld h, b
    add hl, de
    ld h, [hl]
    ld e, c
    ld h, $7d
    add b
    ld a, c
    add h
    ld [hl], c
    adc [hl]
    pop af
    ld [bc], a
    pop af
    ld [bc], a
    pop hl
    inc e
    dec e
    ldh [$0d], a
    ret nc

    adc h
    ld de, $018c
    adc h
    nop
    inc c
    nop
    inc c
    db $10
    inc e
    nop
    inc d
    ld [$2c10], sp
    jr nc, @+$0a

    jr nc, jr_023_74c6

jr_023_74c6:
    db $10
    ld bc, $1001
    ld bc, $0110
    nop
    ld bc, $f002
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    adc a
    add b
    pop af
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
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
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    rst $10
    ld [$00c7], sp
    ld b, e
    or b
    ld b, c
    or b

jr_023_7516:
    ld [hl], b
    add b
    jr nz, jr_023_756a

    ld h, b
    ld de, $5120
    nop
    ld h, c
    nop
    rst $28
    ld [bc], a
    db $dd
    ld c, $d1
    sub [hl]
    ld l, c
    sbc [hl]
    ld b, b
    sbc [hl]
    ld h, b
    call z, $ec32
    ld [de], a
    cp h
    ld b, b
    call c, $b822
    ld b, h
    ldh [rNR32], a
    ld a, b
    add h
    ld a, b
    inc b
    inc a
    ret nz

    inc a
    ld b, d
    jr c, jr_023_7588

    jr jr_023_75a9

    ld e, b
    and e
    ld e, b
    and b
    ld c, b
    or b
    add b
    ld h, c
    ldh [rP1], a
    ret nz

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
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    pop af
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38

jr_023_756a:
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    rst $20
    jr jr_023_7516

    ld d, h
    inc bc
    ldh [rP1], a
    ld b, c
    nop
    nop
    nop
    nop
    nop
    dec c
    nop
    rra
    di
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01

jr_023_7588:
    sub $f9
    add a
    db $fd
    add a
    ld hl, sp+$27
    db $fc
    ld l, e
    ld h, d
    ld l, e
    ld h, e
    ld l, c
    ld h, c
    ld e, c
    ld d, c
    push af
    ld [hl], c
    ld [hl], e
    ld sp, $6165
    dec [hl]
    ld sp, $609f
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    adc e

jr_023_75a9:
    ld [hl], h
    add a
    ld a, b
    add a
    ld a, b
    adc a
    ld [hl], b
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
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc [hl]
    ld [hl], c
    sbc h
    ld h, e
    sbc h
    ld h, e
    sbc b
    ld h, a
    add c
    ld a, a
    add a
    ld a, a
    adc h
    ld a, a
    sbc b
    ld a, a
    cp b
    ld [hl], a
    sbc b
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld h, a
    sub b
    ld l, a
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
    sub b
    ld l, a
    sub b
    ld l, a
    adc b
    ld [hl], a
    sbc b
    ld h, a
    sbc b
    ld h, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
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
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
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
    ld a, a
    rst $38
    rra
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
    ldh [rVBK], a
    add b
    jr c, @+$01

    inc a
    rst $38
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $08
    ccf
    rst $20
    rra
    rst $30
    rrca
    ei
    rrca
    ei
    daa
    db $fd
    rlca
    ld sp, hl
    rrca
    ei
    rlca
    pop af
    ld c, a
    add b
    ld a, a
    add d
    ld a, l
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, [hl]
    add b
    ld a, a
    ret nz

    ccf
    pop bc
    ld a, $c0
    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld a, [c]
    dec c
    pop af
    ld c, $f0
    rrca
    pop af
    ld c, $f0
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    ld c, $f8
    rlca
    ld a, [$f805]
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    pop hl
    rra
    jp Jump_023_463f


    cp a
    sbc h
    ld a, a
    jr nc, @+$01

    ld h, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$00ff], sp
    rst $38
    inc l
    rst $38
    jr @+$01

    ld e, b
    rst $38
    jr @+$01

    ld e, d
    rst $38
    cp b
    rst $38
    ld e, h
    rst $38
    ld a, [hl-]
    rst $38
    inc e
    rst $38
    ld d, b
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    db $10
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
    rra
    rst $38
    db $e3
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_023_7713:
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
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ld b, b
    ccf
    ld b, b
    rra
    jr nz, @+$11

    jr nc, jr_023_7748

    jr nc, jr_023_7742

    jr jr_023_7744

    sbc b
    rlca
    ret z

    nop
    nop

jr_023_7742:
    nop
    nop

jr_023_7744:
    ld bc, $0302
    inc b

jr_023_7748:
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
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
    nop
    nop
    nop
    db $10
    ld de, $0712
    inc de
    inc d
    dec d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, $17
    nop
    nop
    jr jr_023_779f

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_023_77af

    ld [hl+], a
    inc hl
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_023_77c0

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_023_77d0

jr_023_779f:
    ld [hl-], a
    nop
    nop
    inc sp
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_023_77e3

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp

jr_023_77af:
    add hl, sp
    nop
    nop
    ld a, [hl-]
    dec sp
    nop
    inc a
    dec a
    ld a, $3f
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp

jr_023_77c0:
    nop
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp

jr_023_77d0:
    nop
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    nop
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld d, c
    ld d, d
    ld d, e

jr_023_77e3:
    ld d, h
    ld d, l
    nop
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    nop
    ld e, e
    ld e, h
    nop
    nop
    nop
    ld e, l
    ld e, [hl]
    ld e, a
    ld c, a
    ld h, b
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    nop
    ld h, c
    ld h, d
    nop
    nop
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    inc bc
    ld h, a
    ld l, b
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld l, c
    ld l, d
    nop
    nop
    nop
    ld l, e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld l, h
    ld l, l
    ld l, [hl]
    add hl, sp
    add hl, sp
    ld l, a
    ld [hl], b
    nop
    nop
    nop
    nop
    ld [hl], c
    ld de, $7372
    ld [hl], h
    inc bc
    ld l, h
    ld [hl], l
    ld l, [hl]
    add hl, sp
    db $76
    ld h, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], a
    inc bc
    inc bc
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, h
    inc bc
    inc bc
    ld a, l
    ld a, [hl]
    add hl, sp
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
    ld a, a
    inc bc
    inc bc
    add b
    add c
    add hl, sp
    add d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add e
    add h
    inc bc
    inc bc
    inc bc
    add l
    add [hl]
    add a
    nop
    nop
    nop
    nop
    nop
    nop
    adc b
    adc c
    rrca
    inc bc
    inc bc
    adc d
    adc e
    adc h
    add hl, sp
    adc l
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0606
    ld [bc], a
    inc bc
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0701
    rlca
    ld bc, $0107
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    nop
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
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc bc
    nop
    nop
    nop
    ld bc, $0206
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc bc
    nop
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
    inc b
    inc b
    inc b
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
    ld bc, $0404
    inc b
    inc b
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
    ld bc, $0404
    inc b
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
    ld bc, $0404
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
    rlca
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
    nop
    nop
    rlca
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_023_79ba

jr_023_79ba:
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jp z, $aa35

    ld d, l
    db $eb
    inc d
    ld l, a
    sub b
    ld e, a
    and b
    ld e, a
    and b
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

    ccf
    ret nz

    rra
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
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
    ld bc, $01fe
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
    nop
    nop
    nop
    nop
    nop
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rOBP0]
    or b
    add sp, $10
    xor b
    ld d, b
    xor b
    ld d, b
    db $ec
    db $10
    db $fc
    nop
    db $fc
    nop
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $00
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

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
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
    ld hl, sp+$0f
    ld hl, sp+$0f
    ld a, h
    rlca
    ld a, h
    rlca
    inc a
    rlca
    ld a, $03
    ld e, $03
    rra
    ld bc, $0ff1
    pop af
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    nop
    ld b, b
    nop
    ld b, b
    jr nz, @+$42

    jr nz, @+$42

    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    nop
    ld h, b
    db $10
    ld h, b
    db $10
    ld h, b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld [hl], b
    ld c, b
    jr nc, jr_023_7bbb

    jr nc, jr_023_7bbd

    jr nc, jr_023_7bbf

    jr nc, @+$4a

    jr nc, jr_023_7bc3

    jr nc, jr_023_7bbd

    jr c, jr_023_7b7f

jr_023_7b7f:
    jr c, jr_023_7b81

jr_023_7b81:
    jr c, jr_023_7b83

jr_023_7b83:
    jr c, jr_023_7b85

jr_023_7b85:
    jr c, jr_023_7b87

jr_023_7b87:
    jr c, jr_023_7b89

jr_023_7b89:
    jr c, jr_023_7b8b

jr_023_7b8b:
    jr c, jr_023_7bad

    jr jr_023_7baf

    jr jr_023_7bb5

    jr jr_023_7bb7

    jr jr_023_7bb9

    jr jr_023_7bbb

    jr jr_023_7b99

jr_023_7b99:
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    nop
    inc e
    db $10
    inc c
    db $10
    inc c
    db $10

jr_023_7bad:
    inc c
    db $10

jr_023_7baf:
    inc c
    nop
    inc c
    nop
    ld c, $00

jr_023_7bb5:
    ld c, $00

jr_023_7bb7:
    ld c, $00

jr_023_7bb9:
    ld c, $00

jr_023_7bbb:
    ld c, $00

jr_023_7bbd:
    ld c, $01

jr_023_7bbf:
    rrca
    ld bc, $010f

jr_023_7bc3:
    rrca
    ld bc, $090f
    rlca
    ld bc, $0107
    rlca
    ld bc, $0107
    rlca
    ld bc, $0207
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    rlca
    ld [bc], a
    inc bc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$05
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$05
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$08
    ldh a, [$08]
    ldh a, [$09]
    ldh a, [$09]
    ldh a, [$0a]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ldh [$7f], a
    ldh [$7f], a
    rst $38
    ccf
    ccf
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
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
    pop hl
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e0
    rra
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
    ld [$0707], sp
    rrca
    rlca
    rrca
    dec b
    rrca
    inc b
    rrca
    inc bc
    rrca
    dec b
    rrca
    dec b
    rrca
    dec b
    rrca
    ld b, $0f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    jr jr_023_7c96

    jr jr_023_7cb8

    jr c, jr_023_7caa

    jr c, jr_023_7cac

    jr c, jr_023_7cae

    jr c, jr_023_7cc0

    jr c, @+$41

    jr c, @+$41

    jr c, @+$41

    jr c, @+$41

    jr c, @+$61

    ld a, b
    ld e, a
    ld a, b
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], b

jr_023_7c96:
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], b
    ld e, a
    ld [hl], b
    sbc a
    ldh a, [$9f]
    ldh a, [$b0]
    ldh a, [$f0]
    or b
    ldh a, [$b0]
    ldh a, [$b0]
    ldh a, [$b0]

jr_023_7caa:
    ldh a, [$b0]

jr_023_7cac:
    ldh a, [$b0]

jr_023_7cae:
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]

jr_023_7cb8:
    or b
    ld [hl], b
    or b
    ld [hl], b
    ldh a, [$30]
    ldh a, [$30]

jr_023_7cc0:
    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [$7f]
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ldh [$60], a
    ld h, b
    ldh [$e0], a
    ld h, b
    ld h, b
    ldh [$60], a
    ldh [$60], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
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
    rst $38
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
    db $fc
    rst $38
    ei
    rst $38
    nop
    ld [hl], a
    sub e
    ld c, h
    adc d
    ld d, l
    ret nz

    inc b
    rl h
    ld de, $060a
    ld c, b
    adc l
    ld d, d
    nop
    ld [$4936], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $30
    ld bc, $03f7
    rst $30
    dec b
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

jr_023_7d7f:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_023_7d89:
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
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
    ld bc, $bfff
    rst $38
    jr jr_023_7d89

    ld a, [hl]
    ld bc, $057a
    ld a, [hl]
    nop
    ld [$0872], sp
    inc de
    ld [bc], a
    sbc h
    jr nz, jr_023_7d7f

    ld [$3f00], sp
    jp $ffff


    rst $38
    rst $38
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

jr_023_7dcd:
    nop
    rst $38
    add b
    nop
    ld a, a
    ld a, b
    ld a, a
    ld a, a
    ld a, a
    rst $38
    nop
    ld a, a
    nop
    ld [hl], a
    ld b, b
    ld [hl], a
    ld h, b
    ld [hl], a
    ld d, b
    ld hl, sp-$78
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    jr jr_023_7e0f

    inc h
    inc a
    ld b, d
    ld a, d
    add l
    jr nc, jr_023_7dcd

    jr @-$17

    ld a, [de]
    push hl
    ld a, [hl]

jr_023_7e03:
    add c
    ld a, [hl]
    add c
    ld [hl], $c9
    ld [hl], $c9
    inc a
    jp $cf30


    ld c, [hl]

jr_023_7e0f:
    or c
    ld a, [hl]
    add c
    nop
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
    rst $38
    call z, $f7ff
    ld [$00fb], sp
    inc hl
    ld d, h
    ld [hl], e
    adc h
    ret c

    ld [hl+], a
    jr z, jr_023_7e03

    ld a, d
    add l
    add hl, bc
    or $2f
    ret nc

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret c

    rlca
    rst $10
    ld [$ff30], sp
    nop
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    nop
    nop
    rst $38
    inc c
    rst $38
    and b
    ld a, a
    ld a, [$f705]
    ld [$a857], sp
    and a
    ld e, b
    call z, Call_023_7713
    adc b
    ld l, [hl]
    sub c
    cp $01
    cp $01
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
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @-$07

    jr nz, @-$07

    jr nz, @-$07

    jr nz, @-$07

    and b
    rst $10
    and b
    add a
    ldh a, [rSB]
    or $84
    ei
    ld c, a
    ld c, h
    adc a
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh a, [rP1]
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
    ccf
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
    ldh a, [rP1]
    db $10
    ldh [$c0], a
    ldh a, [$90]
    ldh [rNR10], a
    rra
    db $10
    rra
    db $10
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    rst $38
    nop
    rst $38
    nop
    ld b, b
    rst $38
    jr nz, @+$01

    db $10
    rst $38
    ld c, e
    rst $38
    nop
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    inc bc
    rst $38
    ld b, e
    rst $38
    ld b, b
    ld a, h
    ldh [rNR32], a
    ldh [$9f], a
    ldh a, [$cf]
    pop af
    adc $f3
    db $ec
    di
    db $fc
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    cp a
    rlca
    cp a
    rra
    cp b
    cp a
    and b
    cp a
    nop
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$7f]
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
    db $fd
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [$c0], a
    ldh [$e0], a
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $fc
    rst $38
    nop
    rst $38
    cp $ff
    cp $ff
    cp $ff
    nop
    ld bc, $0100
    nop
    rst $38
    ld [hl], b
    adc a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rra
    ld hl, sp-$01
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$3f
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
