SECTION "ROM Bank $0b7", ROMX[$4000], BANK[$b7]

    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    ld hl, sp+$07
    rst $38
    nop
    pop af
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
    cp $00
    xor e
    ld d, h
    db $fd
    ld [bc], a
    ld [$d515], a
    ld a, [hl+]
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor b
    ld d, a
    dec d
    db $eb
    add e
    ld a, a
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, $ff
    cp $1f
    rst $38
    ccf
    cp $3f
    ld hl, sp+$7c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [bc], a
    rst $38
    and c
    rst $38
    ld a, [$afff]
    rst $38
    db $dd
    rst $38
    pop bc
    rst $38
    ccf
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ld sp, hl
    ld bc, $4339
    cp l
    ld b, e
    cp a

Jump_0b7_4083:
    ld b, c
    rst $38
    ld bc, $03fd
    cp l
    ld b, e
    cp l
    ld b, e
    db $fd
    inc bc
    rst $38
    ld bc, $01fd
    cp l
    ld bc, $01bd
    cp l
    ld bc, $01fd
    db $fd
    ld bc, $07f3
    sub e
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    cp e
    ld b, a
    cp e
    ld b, a
    cp e
    ld b, a
    cp e
    rlca
    or e
    ld b, a
    or e
    rlca
    or a
    rlca
    or a
    rlca
    or a
    rrca
    or a
    rrca
    or e
    ld c, a
    dec sp
    ld b, a
    ld a, a
    rlca
    ld [hl], e
    rlca
    rst $38
    rlca
    or a
    rlca
    or a
    rlca
    or a
    rlca
    or a
    rlca
    or a
    rlca
    or a
    ld b, a
    or a
    rrca
    or a
    rrca
    cp a
    rrca
    adc a
    rrca
    adc a
    cpl
    add a
    ld c, a
    rlca
    ld c, a
    cpl
    ld c, a
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
    ld bc, $ffff
    nop
    ld a, a
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rst $38
    nop
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor e
    xor c
    ld d, a
    ld d, a
    xor e
    xor [hl]
    ld d, a
    ld d, [hl]
    xor a
    xor [hl]
    ld e, a
    ld c, h
    cp a
    cp h
    ld e, a
    ld a, h
    cp a
    cp a
    ld a, a
    ld a, l
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    ldh a, [$ec]
    db $f4
    ldh [$f8], a
    db $e4
    and h
    ret z

    call z, $fcf8
    ld hl, sp-$04
    ld hl, sp+$7c
    ld hl, sp+$3c
    jr c, jr_0b7_416f

    jr c, jr_0b7_4171

    ld a, b
    ld a, h
    ld a, b
    ld a, b
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
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    ei
    rst $38
    ld hl, sp-$01
    ld hl, sp-$05
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
    jp $b7ff


    rst $38
    rst $38

jr_0b7_416f:
    rst $38
    nop

jr_0b7_4171:
    rst $38
    nop
    rst $38
    ld bc, $3cff
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$02
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ldh a, [$f7]
    ld hl, sp-$09
    ldh a, [$f7]
    ldh a, [$f7]
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$0d
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$0a
    ld sp, hl
    or $f9
    rst $30
    ld hl, sp-$09
    ld hl, sp-$0c
    ei
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$09
    ld a, [c]
    rst $38
    ldh a, [rIE]
    pop af
    cp $f3
    rst $38
    db $fc
    di
    ei
    db $fd
    rst $38
    ld sp, hl
    ei
    db $f4
    rst $38
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
    rra
    rst $38
    inc bc
    ei
    rlca
    rst $30
    rrca
    rst $30
    rrca
    rst $38
    rrca
    rst $28
    rra
    ld a, [$fa1f]
    rra
    ld [hl-], a
    rst $38
    ld [c], a
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, d
    rst $38
    ld h, [hl]
    rst $38
    ld h, a
    rst $38
    db $db
    ld h, [hl]
    db $db
    ld h, [hl]
    ei
    ld h, [hl]
    cp e
    ld h, [hl]
    rst $38
    ld h, [hl]
    ld h, a
    cp $de
    ld h, a
    rst $38
    ld b, e
    ld h, d
    ld b, a
    ld h, [hl]
    ld b, a
    ld l, [hl]
    ld b, a
    ld h, a
    ld c, a
    ld l, d
    ld c, a
    ld c, h
    ld c, a
    ld e, d
    ld c, a
    ld e, c
    ld e, [hl]
    ld a, [hl]
    ld e, [hl]
    ld e, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, h
    ld a, h
    db $fc
    ld a, h
    ld hl, sp-$04
    db $ec
    ld hl, sp-$08
    ld hl, sp-$04
    cp $fd
    cp $fd
    cp $ff
    db $fc
    ei
    db $fc
    ei
    db $fc
    db $db
    db $fc
    dec de
    db $fc
    ld a, [$7c07]
    add e
    rst $38
    nop
    or $09
    ld [hl], a
    adc b
    ld a, d
    add l
    ld a, a
    add b
    ld e, a
    and b
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld bc, $80ff
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    ld b, $ff
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    stop
    stop
    rla
    add sp, $17
    db $fc
    inc bc
    db $fc
    inc bc
    xor h
    ld d, e
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $e4
    dec de
    rst $38
    nop
    rst $38
    nop
    db $ed
    ld [de], a
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
    cp $01
    rst $38
    nop
    or a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc $21
    ld hl, sp+$07
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    cp $01
    ld a, [hl]
    add c
    ld l, a
    sub b
    nop
    nop
    nop
    nop
    ld c, b
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp-$48
    ld b, b
    ld [$08f8], sp
    ld hl, sp+$78
    ldh [$98], a
    ld hl, sp-$08
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    adc l
    rst $38
    adc c
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, a
    add b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    adc b
    rst $30
    ld e, [hl]
    pop hl
    ld e, $e1
    ld e, [hl]
    pop hl
    rst $38
    pop bc
    cp $c1
    inc a
    jp $837c


    db $fc
    add e
    ld e, $03
    rst $20
    nop
    ld b, $00
    ld b, d
    nop
    ld c, $00
    add $00
    rst $08
    nop
    sbc a
    nop
    sbc a
    ld [$04ff], sp
    rlca
    db $e4
    inc c
    rst $38

jr_0b7_4336:
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
    ld l, a
    sbc b
    rst $08
    ld hl, sp-$79
    ld a, b
    cp $01
    ld d, e
    xor h
    inc bc
    db $fc
    sub a
    ld l, b
    db $fc
    inc bc
    ld bc, $caff
    rst $38
    dec de
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $10
    rst $38
    inc de
    rst $38
    add d
    rst $38
    ld d, e
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
    nop
    nop
    ld [bc], a
    nop
    and [hl]
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    inc d
    db $eb
    rra
    ldh [$0e], a
    pop af
    nop
    rst $38
    ld c, $f1
    add e
    ld a, h
    nop
    rst $38
    jp nz, $c03d

    ccf
    nop
    rst $38
    add b
    ld a, a
    add c
    ld a, [hl]
    add b
    ld a, a
    nop
    rst $38
    ld [bc], a
    db $fd
    ld hl, $31de
    adc $73
    adc h
    ld [hl], e
    adc h
    ld [c], a
    dec e
    or e
    ld c, h
    ld bc, $0100
    jr nz, jr_0b7_4336

    nop
    add b
    nop
    nop

jr_0b7_43b9:
    ld a, [bc]
    nop
    nop
    jr nc, jr_0b7_43be

jr_0b7_43be:
    nop
    ld [bc], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld b, b
    nop
    add sp, $00
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0003
    ld bc, $0300
    nop
    ld a, [hl]
    add c
    jr nz, jr_0b7_43b9

    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    rst $38
    rst $38
    sbc $ff
    set 7, a
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
    inc b
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    adc b
    rst $38
    add h
    rst $38
    add h
    rst $38
    nop
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
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    rst $38
    inc bc
    rst $08
    nop
    ld b, l
    nop
    call $ed00
    nop
    db $fd
    nop
    rst $38
    nop
    or a
    add b
    di
    ld [$c00e], sp
    nop
    db $fd
    inc b
    rst $38
    ld e, $ff
    ld c, $ff
    ld hl, $00ff
    rst $38
    inc b
    rst $38
    inc h
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld sp, $6cff
    rst $38
    add sp, $17
    ld b, a
    cp c
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, d
    rst $38
    daa
    rst $38
    scf
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
    nop
    db $fd
    nop
    jr jr_0b7_447d

jr_0b7_447d:
    jr jr_0b7_447f

jr_0b7_447f:
    ld a, [$708f]
    rst $00
    jr c, @+$07

    ld a, [$f807]
    rlca
    ld hl, sp+$05
    ld a, [$f20d]
    ccf
    ret nz

    ld [hl], a
    adc b
    ld bc, $79fe
    add [hl]
    ld c, b
    or a
    nop
    rst $38
    ld hl, sp+$07
    db $fc
    inc bc
    ld b, b
    cp a
    add sp, $17
    ld hl, sp+$07
    db $ec
    inc de
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld [hl], b
    adc a
    ld hl, sp+$07
    ldh [$1f], a
    ld b, b
    cp a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    sub b
    ld l, a
    db $10
    rst $28
    jr c, jr_0b7_44c2

jr_0b7_44c2:
    ld de, $0100
    nop
    ld bc, $1100
    nop
    ld bc, $0100
    add b
    ld bc, $0100
    add b
    ld bc, $0180
    add h
    ld bc, $fdfc
    db $fc
    db $fc
    cp $fc
    cp $fe
    cp $00
    cp $f0
    ld c, $75
    adc d
    db $dd
    ld [hl+], a
    cp [hl]
    ld b, c
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    nop
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
    nop
    rst $38
    ld [hl-], a
    rst $38
    ld b, l
    rst $38
    ld l, e
    rst $38
    ld h, c
    rst $38
    dec bc
    rst $38
    ld b, $ff
    sbc d
    rst $38
    rst $28
    db $10
    rst $38
    nop
    ld a, a
    add b
    ld sp, hl
    add [hl]
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $30
    adc b
    ld a, [$7385]
    adc h
    ld a, c
    add [hl]
    pop af
    ld c, $ff
    nop
    ld a, a
    add b
    ld a, e
    add h
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
    rra
    rst $38
    daa
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add [hl]
    rst $38
    ld c, $fe
    cp $ff
    db $fd
    cp $ff
    db $fc
    ld a, [$fafd]
    db $fd
    rst $30
    ld hl, sp-$0f
    cp $e9
    or $eb
    db $f4
    or $e9
    call $cdf2
    ld a, [c]
    dec bc
    db $f4
    dec b
    ld a, [$f906]
    dec b
    ld a, [$00e2]
    add sp, $00
    ld a, b
    add b
    ldh a, [rP1]
    ld [c], a
    nop
    and $00
    ld [hl], b
    add b
    ld h, b
    add b
    ldh [rP1], a
    ld hl, $cb80
    inc b
    db $fc
    nop
    ld h, b
    add b
    and b
    nop
    and b
    nop
    db $e4
    nop
    dec bc
    db $f4
    ld e, e
    and h
    rra
    ldh [$1f], a
    ldh [$03], a
    db $fc
    inc sp
    call z, $e01f
    scf
    ret z

    rra
    ldh [$27], a
    ret c

    scf
    ret z

    dec [hl]
    jp z, $e21d

    rla
    add sp, $07
    ld hl, sp+$27
    ret c

    inc de
    db $ec
    ld de, $05ee
    ld a, [$f20d]
    daa
    ret c

    rlca
    ld hl, sp+$27
    ret c

    dec bc
    db $f4
    db $fc
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld sp, hl
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    db $f4
    nop
    ld [hl], c
    add b
    di
    nop
    di
    nop
    ld a, c
    add b
    ld a, c
    add b
    ld [hl], l
    add b
    dec [hl]
    ret nz

    inc [hl]
    ret nz

    ld [hl], $c0
    ccf
    add b
    rra
    add b
    rra
    add b
    rra
    add b
    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ldh [rIF], a
    ldh [$8f], a
    ldh [rBGP], a
    ldh [rBGP], a
    ldh [rNR44], a
    ldh a, [$63]
    ldh a, [$83]
    ldh a, [rNR13]
    ldh a, [rNR11]
    ld hl, sp+$21
    ld hl, sp+$41
    ld hl, sp+$00
    db $fc
    ld b, b
    db $fc
    nop
    db $fc
    nop
    db $fc
    call nz, $dafe
    inc h
    add sp, $16
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $dd
    ld [hl+], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sub c
    rst $38
    push bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    jr z, @+$01

    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, $ff
    ldh [$e0], a
    ldh [$e0], a
    ldh [$c0], a
    ret z

    ret nz

    ret z

    add b
    sub b
    add b
    jr nz, jr_0b7_464e

jr_0b7_464e:
    jr nz, jr_0b7_4650

jr_0b7_4650:
    sbc a
    ld h, b
    cp a
    ld b, b
    inc sp
    ret z

    db $fd
    nop
    ei
    nop
    ei
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $30
    ld [$08d2], sp
    ld a, [$f800]
    nop
    cp b
    ld b, b
    ld a, b
    add b
    ei
    nop
    sbc $00
    or h
    ld [$10e8], sp
    ld hl, sp+$00
    ld hl, sp+$00
    cp b
    nop
    cp b
    nop
    ld a, b
    ld bc, $0fb0
    ld b, h
    jr c, jr_0b7_46bb

    ret nz

    cp b
    nop
    cp b
    nop
    ld sp, hl
    nop
    cp c
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    sbc $21
    ld sp, hl
    nop
    ld a, c
    nop
    ld [hl], c
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ei
    nop
    sbc c
    ld h, b
    rst $38
    nop
    db $76
    ld bc, $00f1
    ld a, [c]
    nop
    ld a, [c]
    nop
    or $00
    or a
    ld b, b
    rst $18
    jr nz, @+$01

    nop
    ei
    inc b
    push af
    ld [bc], a
    or $01
    rst $38
    nop
    ccf

jr_0b7_46bb:
    ret nz

    cp a
    ld b, b
    rra
    ldh [$2f], a
    ret nc

    ld [hl], a
    adc b
    inc sp
    call z, $847b
    ld a, c
    add [hl]
    dec [hl]
    jp z, $c03f

    ccf
    ret nz

    ld a, a
    add b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld a, a
    add b
    ld a, e
    add h
    ld a, a
    add b
    ccf
    ret nz

    ld e, a
    and b
    ld e, a
    and b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld [hl], a
    adc b
    ccf
    ret nz

    cp e
    ld b, h
    dec a
    jp nz, $a25d

    ld e, [hl]
    and c
    ld e, [hl]
    and c
    ld l, [hl]
    sub c
    cpl
    ret nc

    ld l, $d1
    ld h, a
    sbc b
    ld [hl], $c9
    ld a, [hl-]
    push bc
    ld a, [hl-]
    push bc
    ld a, [de]
    push hl
    add hl, bc
    or $15
    ld [$db24], a
    ld e, c
    add b
    ld e, c
    add b
    reti


    nop
    ld hl, sp+$00
    ld a, b
    add b
    inc a
    ret nz

    inc e
    ldh [rNR34], a
    ldh [$1f], a
    add b
    rra
    add b
    rrca
    add b
    rrca
    ret nz

    adc a
    ret nz

    adc a
    ret nz

    rst $00
    ldh [rBGP], a
    ldh [rBGP], a
    ldh [rSCX], a
    add sp, $43
    ldh [$03], a
    ldh [$03], a
    ldh a, [$63]
    ldh a, [rNR42]
    ldh a, [rP1]
    ldh a, [$e9]
    db $10
    ld a, c
    nop
    ldh a, [rP1]
    pop af
    nop
    pop hl
    nop
    ldh a, [rSB]
    db $e3
    nop
    push hl
    nop
    db $eb
    nop
    ld [hl], c
    nop
    pop af
    nop
    ld d, b
    nop
    ret nz

    nop
    ret nz

    nop
    add c
    nop
    ld bc, $8200
    ld bc, $0007
    dec c
    nop
    ld sp, $4100
    nop
    add c
    nop
    nop
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
    ld bc, $0f00
    ld b, [hl]
    jr c, jr_0b7_479e

    ret nz

    add c
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    add c
    nop
    add c
    nop
    add b
    ld bc, $0196
    ldh a, [rIF]
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

jr_0b7_479e:
    dec c
    ld [bc], a
    rrca
    nop
    adc a
    nop
    rst $38
    nop
    inc hl
    inc e
    db $10
    rrca
    ld e, $01
    sbc a
    nop
    sbc a
    nop
    rra
    nop
    sbc a
    nop
    rra
    nop
    sbc a
    nop
    rst $18
    nop
    ccf
    ld b, b
    cpl
    db $10
    daa
    jr jr_0b7_47fa

    ld b, $3d
    ld [bc], a
    inc a
    inc bc
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    ld b, b
    nop
    ld [hl-], a
    nop
    inc [hl]
    nop
    ld d, $00
    ld e, $00
    ld a, [de]
    inc b
    ld e, $00
    ld a, $00
    dec a
    nop
    ld a, $00
    cp [hl]
    nop
    cp $00
    cp $00
    cp $00
    sbc [hl]
    jr nz, jr_0b7_481b

    db $10
    xor h
    db $10
    db $f4
    ld [$007c], sp
    ld a, b
    inc b
    cp $00

jr_0b7_47fa:
    cp $00
    rst $30
    nop
    db $fd
    nop
    db $fc
    nop
    add sp, $04
    ld hl, sp+$04
    db $ec
    nop
    or h
    ld [$0834], sp
    inc [hl]
    ld [$0814], sp
    inc h
    ld [$003c], sp
    sbc h
    nop
    sbc [hl]
    nop
    sbc $00
    ld e, a

jr_0b7_481b:
    nop
    ld e, l
    nop
    ld a, l
    nop
    inc a
    nop
    inc a
    nop
    xor h
    db $10
    xor l
    db $10
    xor l
    db $10
    xor h
    db $10
    or l
    ld [$00be], sp
    cp e
    inc b
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    db $ed
    db $10
    call $9c30
    ld h, b
    cp h
    ld b, b
    ld e, h
    and b

jr_0b7_484a:
    db $dd
    jr nz, jr_0b7_484a

    nop
    reti


    jr nz, @+$01

    nop
    db $fd
    nop
    ld a, [$fb01]
    inc b
    rst $30
    ld [$30cb], sp
    sbc e
    ld h, b
    dec sp
    ret nz

    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    di
    nop
    rst $38
    nop
    rst $30
    nop
    db $fc
    nop
    or $01
    ldh a, [rIF]
    add e
    ld a, h
    ld e, $e0
    ld a, [hl]
    add b
    cp $00
    db $fd
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
    nop
    rst $38
    nop
    cp a
    ld b, b
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, [$fa01]
    ld bc, $01fe
    cp $01

jr_0b7_489e:
    cp $01
    rst $38
    nop
    cp $01
    db $dd
    ld [hl+], a
    call c, $fc23
    inc bc
    inc e
    db $e3
    add h
    ld a, e
    ldh a, [rIF]
    cp $01
    rst $38
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    rst $38
    nop

jr_0b7_48c4:
    ld a, a
    add b
    ccf
    ret nz

    sbc a
    ld h, b
    rst $08
    jr nc, jr_0b7_48c4

    ld [$06f9], sp
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, jr_0b7_489e

    ld b, b
    ret nz

    nop
    ld b, b
    add b
    and h
    ld b, b
    ld l, h
    nop
    jr c, jr_0b7_48ea

jr_0b7_48ea:
    jr jr_0b7_48ec

jr_0b7_48ec:
    ld bc, $0d08
    nop
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, h
    add e
    ld a, h
    add e
    db $ec
    inc de
    ld a, b
    add a
    sub a
    nop
    sub a
    nop
    ld d, a
    nop
    ld l, [hl]
    nop
    ld a, $00
    ld l, $10
    ld l, $10
    ld [hl], $08
    ld a, $00
    jr c, jr_0b7_4918

    ld l, [hl]
    nop
    sbc $00

jr_0b7_4918:
    call $dd00
    nop
    call c, $d800
    nop
    ret z

    nop
    ret c

    nop
    ret c

    nop
    ret c

    nop
    xor b
    nop
    cp b
    nop

jr_0b7_492c:
    or b
    nop
    add b
    db $10
    rst $28
    db $10
    rst $20
    jr jr_0b7_492c

    ld [$14eb], sp
    ld [$fc15], a
    inc bc
    db $ec
    inc de
    sbc $21
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
    jr jr_0b7_4973

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b7_4983

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b7_4993

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b7_49a3

    ld [hl-], a

jr_0b7_4973:
    inc sp
    inc [hl]
    dec [hl]
    inc d
    ld [hl], $37
    jr c, jr_0b7_49b4

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_0b7_4983:
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

jr_0b7_4993:
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
    ld h, c

jr_0b7_49a3:
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

jr_0b7_49b4:
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
    sbc d
    sbc d
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
    sbc d
    sbc d
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


    sbc d
    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    sbc d
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
    jr jr_0b7_4a7a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b7_4a8a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0b7_4a9a

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b7_4aaa

    ld [hl-], a

jr_0b7_4a7a:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b7_4a83

    ld [bc], a
    ld [bc], a

jr_0b7_4a83:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201

jr_0b7_4a8a:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_0b7_4a9a:
    ld [bc], a
    ld [bc], a
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

jr_0b7_4aaa:
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
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    ld [bc], a
    ld bc, $0101
    ld bc, $0502
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0201
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    dec b
    inc b
    inc b
    ld [bc], a
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    dec c
    dec c
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0808], sp
    ld [$080d], sp
    dec c
    ld [$0d0d], sp
    ld [$0d0d], sp
    ld [$0d0d], sp
    dec c
    dec c
    ld [$0808], sp
    ld [$0d08], sp
    ld [$0d0d], sp
    dec c
    ld [$080d], sp
    dec c
    ld [$0d0d], sp
    ld [$0808], sp

jr_0b7_4bbb:
    ld [$0808], sp
    ld [$0008], sp
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld [hl+], a
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    jr nz, jr_0b7_4bbb

    dec b
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
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    add b
    rst $38
    ret nz

    cp a
    add b
    rst $38
    add b
    rst $38
    ld b, a
    rst $38
    sbc $ff
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [$08ff], sp
    rst $38
    ld c, $fd
    inc b
    rst $38
    inc d
    rst $28
    sbc h
    ld h, a
    ld [hl+], a
    rst $18
    dec bc
    or $16
    db $eb
    ld l, h
    sub e
    ld sp, $2bcf
    push de
    dec de
    rst $20
    inc c
    rst $38
    scf
    ld hl, sp+$5d
    ld [c], a
    ld a, a
    add b
    xor d
    ld d, l
    ld d, c
    rst $38
    inc h
    rst $38
    sub c
    rst $38
    adc c
    rst $38
    adc d
    rst $38
    ret


    rst $38
    ld c, h
    rst $38
    ld d, d
    rst $38
    ld b, c
    rst $38
    jr nz, @+$01

    ld bc, $70ff
    rst $38
    ld hl, $21ff
    rst $38
    nop
    rst $38
    ld sp, $fbff
    rlca
    and $1f
    db $dd
    ld a, $3f
    ld hl, sp-$12
    pop af
    db $fd
    jp nz, $817e

    cp h
    ld b, e
    ld [hl], h
    adc e
    ld a, b
    add a
    and [hl]
    reti


    ld sp, $e9ce
    ld d, [hl]
    pop de
    ld l, [hl]
    adc c
    db $76
    pop af
    ld l, $c9
    ld [hl], $c4
    dec sp
    ld hl, sp+$17
    ldh [$1f], a
    db $f4
    dec bc
    ld sp, hl
    rrca
    ld a, [c]
    rrca
    cp $05
    db $fc
    rlca
    ld hl, sp+$07
    rst $38
    ld [bc], a
    db $fc
    inc bc
    cp $01
    rst $28
    ld de, $01fe
    rst $38
    nop
    inc h
    rst $38
    ld b, $ff
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
    inc bc
    rst $38
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    jr c, @+$09

    ld a, b
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ld a, b
    rlca
    ld hl, sp+$07
    or b
    rrca
    jr nc, jr_0b7_4cc7

    jr nc, jr_0b7_4cc9

    jr nc, jr_0b7_4ccb

    jr nz, jr_0b7_4cdd

    ld b, b
    rra
    ld h, b
    rst $38
    ld l, b
    rst $38
    rst $38
    rst $38
    rst $38

jr_0b7_4cc7:
    rst $38
    ld [hl], b

jr_0b7_4cc9:
    rst $38
    ld [hl], c

jr_0b7_4ccb:
    rst $38
    ld [hl], b
    rst $38
    ld [hl], e
    rst $38
    ld a, c
    rst $38
    ld a, d
    rst $38
    ld [$6dff], a
    rst $38
    db $ed
    rst $38
    dec a
    rst $38
    dec h

jr_0b7_4cdd:
    rst $38
    dec h
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld [de], a
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    rrca
    rst $38
    ld a, h
    rst $38
    ret nz

    rst $38
    ld b, b

jr_0b7_4cf9:
    cp a
    nop
    rst $38
    nop

jr_0b7_4cfd:
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
    add b
    ld a, a
    ld d, b
    xor a
    jr nz, jr_0b7_4cf9

    ld c, b
    or a
    xor c
    ld d, a
    and [hl]
    ld e, a
    cp d
    ld a, l
    ld c, b
    rst $30
    jr z, jr_0b7_4cfd

    ret nz

    cp a
    ret nz

    cp a
    sub h
    db $eb
    db $10
    rst $28
    ld l, b
    rst $10
    ret z

    ld [hl], a
    ret nc

    ld l, a
    or b
    ld l, a
    or h
    ld l, e
    ld h, b
    cp a
    ld c, b
    or a
    ld d, b

jr_0b7_4d3d:
    cp a
    ld [hl], b
    sbc a
    ldh a, [$1f]
    ld l, b
    sbc a
    jp hl


    rra
    sbc e
    ld l, a
    xor [hl]
    ld e, a
    sbc [hl]
    ld a, l
    ld [hl], h
    rst $38
    ld hl, sp-$19
    and d
    rst $18
    ld [$a217], a
    ld e, a
    ld d, c
    xor a
    add c
    ld a, a
    and c
    ld e, a
    jr nz, jr_0b7_4d3d

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
    ld b, $f9
    ld [bc], a
    db $fd
    dec b
    ei
    add d
    ld a, a
    rla
    db $ec
    adc a

jr_0b7_4d73:
    ld a, b
    cp l
    ld [hl], d
    ld e, e
    db $e4
    or l
    jp z, $aa55

    sbc [hl]
    ld h, c
    and l

jr_0b7_4d7f:
    ld e, d
    inc de

jr_0b7_4d81:
    rst $38
    inc de
    rst $38
    and c
    rst $38
    sub [hl]
    rst $38
    sub l
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    cp [hl]
    rst $38
    and c
    rst $18
    jr nz, jr_0b7_4d73

    db $ed

jr_0b7_4d95:
    ld d, [hl]
    add d
    ld a, l
    ld b, h
    cp e
    ld l, b
    or a
    ld c, b
    or a
    jr nc, jr_0b7_4d7f

    jr nz, jr_0b7_4d81

    nop
    rst $38
    jr jr_0b7_4d95

    db $10
    rst $28
    nop
    rst $38
    inc c
    rst $30
    ld [$06f7], sp
    ei
    ld b, $fb
    ld bc, $01ff
    rst $38
    inc bc
    db $fd
    nop
    rst $38
    ld bc, $01fe
    cp $00
    rst $38
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld hl, $31ff
    rst $38
    sub d
    rst $38
    sub b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    add b
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1fff
    rst $38
    db $fc
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

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    add hl, bc
    rst $38
    ld c, $ff
    inc e
    rst $38
    ld h, b
    rst $38
    add h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
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
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    inc c
    rst $38
    jr c, @+$01

    ld [hl], b
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
    add b
    rst $38
    add c
    rst $38
    add d
    rst $38
    ld c, h
    rst $38
    ld c, b
    rst $38
    ret nc

    ld a, a
    ret nz

    ld a, a
    ret nz

    rst $38
    ld h, b
    cp a
    ldh [$3f], a
    db $10
    rst $38
    sub b
    ld a, a
    or b
    ld e, a
    ld d, b
    cp a
    ld c, b
    cp a
    adc b
    ld a, a
    ld [$0dff], sp
    rst $38
    dec c
    rst $38
    ld b, $ff
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ld [de], a
    rst $38
    ld [hl+], a
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    ld b, c
    cp a
    add c
    ld a, a
    or c
    ld c, a
    ld h, b
    sbc a
    ld b, b
    cp a
    ld b, b
    cp a
    nop

jr_0b7_4e9d:
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a

jr_0b7_4ea3:
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr c, jr_0b7_4ea3

    jr nc, jr_0b7_4e9d

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
    add b
    rst $38
    nop
    rst $38
    ld e, l
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    or b
    rst $38
    ret nz

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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ccf
    rst $38
    db $fc
    rst $38
    ret nc

    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld e, $ff
    jr nc, @+$01

    add c
    rst $38
    ld b, c
    cp a
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld b, $ff
    inc e
    rst $38
    jr nc, @+$01

    ldh [rIE], a
    and b
    rst $18
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    ld de, $12ff
    rst $38
    inc d
    rst $38
    jr @+$01

    db $10
    rst $38
    ld l, b
    rst $38
    ret z

    rst $38
    adc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $0dff
    ei
    db $10
    rst $38
    jr nz, @+$01

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
    ld bc, $02ff
    rst $38
    inc b
    rst $38
    adc h
    rst $38
    adc h
    ei
    ret nc

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr nc, @+$01

    jr nc, @+$01

    dec a
    rst $38
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    jr @+$01

    jr @+$01

    db $10
    rst $38
    inc h
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    jr z, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nc, @+$01

    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    jr z, @+$01

    ccf
    rst $38
    ld hl, sp-$01
    add sp, -$01
    ld a, [bc]
    rst $38
    adc h
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld c, $ff
    add hl, sp
    rst $38
    pop bc
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
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    inc bc
    rst $38
    ld c, $ff
    ld e, b
    rst $38
    ld [hl], b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    inc b
    rst $38
    ld [$18ff], sp
    rst $38
    ld l, b
    rst $38
    ld c, b
    rst $38
    ret nz

    cp a
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    jr @+$01

    add hl, bc
    rst $30
    ld hl, $61ff
    rst $18
    add b
    rst $38
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
    add b
    rst $38
    add d
    rst $38
    add h
    rst $38
    adc b
    rst $38
    ret nc

    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ldh [rIE], a
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    ld e, $ff
    ld e, $ff
    inc e
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    cp $ff
    cp h
    rst $38
    rrca
    rst $38
    dec b
    rst $38
    rrca
    rst $38
    ld a, [bc]
    rst $38
    ld b, $ff
    ld c, $ff
    add hl, bc
    rst $38
    ld de, $01ff
    rst $38
    ld bc, $40ff
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    rst $38
    rst $38
    pop de
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld bc, $01ff
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld hl, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld de, $11ff
    rst $38
    ld de, $1fff
    rst $38
    ld sp, hl
    rst $38
    sub d
    rst $38
    dec bc
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    add hl, bc
    rst $38
    ld [$09ff], sp
    rst $38
    add hl, bc
    rst $38
    dec c
    rst $38
    inc c
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    dec e
    rst $38
    rst $20
    rst $38
    add a
    rst $38
    inc bc
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
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add e
    rst $38
    add a
    rst $38
    adc a
    rst $38
    cp c
    rst $38
    ld h, c
    rst $38
    push bc
    rst $38
    ld b, c
    rst $38
    ld b, l
    rst $38
    ld b, d
    rst $38
    ld b, e
    rst $38
    ld h, e
    rst $38
    daa
    rst $38
    ld hl, $39ff
    rst $38
    daa
    rst $38
    ld h, $ff
    inc a
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld d, b
    rst $38
    sub b
    rst $38
    inc d
    rst $38
    inc e
    rst $38
    ld a, [de]
    rst $38
    dec de
    rst $38
    ld e, $ff
    dec c
    rst $38
    ld a, [bc]
    rst $38
    inc c
    rst $38
    ld [$18ff], sp
    rst $38
    jr nz, @+$01

    ld b, h
    rst $38
    add h
    rst $38
    inc b
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
    ld [bc], a
    rst $38
    ld b, $ff
    ld [$10ff], sp
    rst $38
    and c
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld bc, $03ff
    rst $38
    ld b, e
    rst $38
    ld b, d
    rst $38
    ld b, h
    rst $38
    ld l, b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    ld b, b
    rst $38
    sub b
    rst $38
    ld de, $12ff
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    ld [$08ff], sp
    rst $38
    jr @+$01

    jr c, @+$01

    inc a
    rst $38
    ld a, [hl]
    rst $38
    add a
    rst $38
    add [hl]
    rst $38
    ld b, $ff
    inc b
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    ld a, [de]
    rst $38
    ld [de], a
    rst $38
    ld a, [bc]
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    add e
    rst $38
    rst $28
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
    db $fc
    rst $38
    ld a, l
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    ld d, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    add sp, -$01
    add sp, -$01
    ld hl, sp-$01
    ld l, c
    rst $38
    ld l, [hl]
    rst $38
    ld a, h
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    cp b
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp l
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $10
    rst $38
    rst $10
    rst $38
    rst $20
    rst $38
    jp hl


    rst $38
    pop af
    rst $38
    ld h, c
    rst $38
    pop hl
    rst $38
    and c
    rst $38
    and c
    rst $38
    ld sp, $31ff
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    inc a
    rst $38
    jr c, @+$01

    jr nc, @+$01

    add hl, sp
    rst $38
    ld a, e
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld l, a
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
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [$f7ff]
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld [hl], l
    rst $38
    ld [hl], b
    rst $38
    ld sp, hl
    rst $38
    ld [hl], c
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    db $f4
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    di
    rst $38
    or c
    rst $38
    ld [$eeff], a
    rst $38
    adc $ff
    adc [hl]
    rst $38
    adc $ff
    rst $08
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    and d
    rst $38
    and d
    rst $38
    and d
    rst $38
    sub d
    rst $38
    and d
    rst $38
    jr nc, @+$01

    ld de, $30ff
    rst $38
    or c
    rst $38
    sbc b
    rst $38
    ld de, $9fff
    rst $38
    ei
    rst $38
    sub c
    rst $38
    add hl, de
    rst $38
    sbc b
    rst $38
    ld de, $19ff
    rst $38
    ld de, $15ff
    rst $38
    ld [$09ff], sp
    rst $38
    dec bc
    rst $38
    inc e
    rst $38
    ld a, b
    rst $38
    ret z

    rst $38
    adc b
    rst $38
    adc b
    rst $38
    add b
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    add e
    rst $38
    add $ff
    ld e, h
    rst $38
    ld [hl], b
    rst $38
    call nz, $c0ff
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    dec b
    rst $38
    ld b, d
    rst $38
    inc b
    rst $38
    ld a, [de]
    rst $38
    inc [hl]
    rst $38
    ld b, b
    rst $38
    and d
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    inc hl
    rst $38
    inc hl
    rst $38
    ld [hl+], a
    rst $38
    ld h, $ff
    ld a, [hl+]
    rst $38
    or b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    sub b
    rst $38
    add b
    rst $38
    sub c
    rst $38
    jp nz, $d5ff

    rst $38
    ret z

    rst $38
    pop de
    rst $38
    pop af
    rst $38
    add sp, -$01
    ld c, b
    rst $38
    add c
    rst $38
    adc e
    rst $38
    adc [hl]
    rst $38
    adc l
    rst $38
    sbc h
    rst $38
    sbc b
    rst $38
    cp b
    rst $38
    xor c
    rst $38
    jp hl


    rst $38
    call $ebff
    rst $38
    db $ec
    rst $38
    db $e4
    rst $38
    jp hl


    rst $38
    db $e4
    rst $38
    ldh a, [rIE]
    push hl
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    push af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    db $eb
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    xor e
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
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
    cp $ff
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    ld a, a
    ld hl, sp-$21
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$c0], a
    rst $38
    ret nz

    rst $38
    rst $18
    ldh [$df], a
    ldh [$d9], a
    and $d9
    and $df
    ldh [$db], a
    db $e4
    ret nz

    rst $38
    rst $18
    ldh [$df], a
    ldh [$dd], a
    ld [c], a
    db $dd
    ld [c], a
    db $dd
    ld [c], a
    db $fd
    ld [c], a
    db $fc
    db $e3
    rst $38
    ldh [rIE], a
    ldh [$fd], a
    ld [c], a
    db $fc
    db $e3
    db $ec
    di
    ldh [rIE], a
    db $ec
    di
    rst $38
    ldh [$ef], a
    ldh a, [$ef]
    ldh a, [$ed]
    ld a, [c]
    db $ed
    ld a, [c]
    db $ec
    di
    db $e3
    db $fc
    pop hl
    cp $e3
    db $fc
    and b
    ldh [$e0], a
    ldh [$c0], a
    ldh [rP1], a
    ldh [$c0], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    ldh a, [$50]
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh a, [$d0]
    ldh a, [$50]
    ei
    db $10
    ldh a, [rNR10]
    ldh a, [$50]
    ldh a, [$50]
    ldh a, [$50]
    cp $70
    ldh a, [rSVBK]
    ldh a, [$50]
    ldh a, [$d0]
    ldh a, [rNR10]
    ld hl, sp+$10
    ld hl, sp+$30
    ld hl, sp+$30
    ld hl, sp+$30
    ld hl, sp+$28
    ld hl, sp+$64
    cp $ef
    rst $38
    cp a
    rst $38
    ld c, h
    rst $38
    ld l, l
    cp $2f
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cpl
    db $fc
    ld a, $ff
    sbc a
    rst $38
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ldh [$fd], a
    jp nz, $c0ff

    rst $38
    inc hl
    rst $38
    ld h, e
    sbc b
    rst $38
    cp h
    rst $38
    sbc h
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fd
    cp $bd
    cp $bf
    db $fc
    cp a
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $ff
    cp $ff
    cp $fd
    cp $ff
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [$df], a
    ldh [rIE], a
    ret nz

    cp a
    ret nz

    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    inc bc
    db $fc
    rlca
    ld hl, sp-$03
    nop
    db $fc
    nop
    cp l
    ld b, b
    ld a, l
    add b
    ccf
    ret nz

    ld [hl], a
    adc b
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    ld bc, $b7fe
    ld c, b
    rst $30
    ld [$08f7], sp
    cp a
    ld b, b
    ccf
    ret nz

    rra
    ldh [rSC], a
    db $fd
    ld a, $c0
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$03], a
    db $fc
    sub a
    ld l, b
    or a
    ld c, b
    cp a
    ld b, b
    rst $30
    ld [$08f7], sp
    rla
    add sp, -$09
    ld [$08f4], sp
    db $fc
    nop
    cp [hl]
    ld b, b
    or a
    ld c, b
    inc bc
    db $fc
    rst $30
    ld [$48b7], sp
    sbc a
    ld h, b
    sbc a
    ld h, b
    rra
    ldh [rNR10], a
    rst $28
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rNR31], a
    db $e4
    ld [bc], a
    db $fd
    inc de
    db $ec
    inc sp
    call z, $ec13
    sub b
    ld l, a
    nop
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
    rst $38
    inc bc
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld a, [$ffff]
    rra
    ld a, a
    add b
    db $fc
    inc bc
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    cp $01
    cp $2b
    cp $0b
    rst $38
    nop
    db $fc
    inc bc
    db $fc
    jp $ffff


    scf
    ret z

    rst $38
    nop
    rst $38
    nop
    sbc a
    ld h, b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $28
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
    ld hl, sp+$07
    db $fc
    inc bc
    rla
    nop
    inc de
    nop
    inc sp
    nop
    ld a, [hl-]
    nop
    dec sp
    nop
    ld a, e
    nop
    rst $38
    nop
    cp [hl]
    nop
    ld [de], a
    nop
    cp d
    nop
    sbc [hl]
    nop
    ld [de], a
    nop
    rla
    nop
    db $fd
    ld [bc], a
    sbc a
    nop
    rla
    nop
    ld [hl], e
    nop
    ld a, e
    nop
    ld a, a
    nop
    rst $38
    nop
    ld b, b
    cp a
    ccf
    nop

jr_0b7_55c0:
    ret


    ld [hl], $89
    db $76
    adc c
    db $76
    adc c
    halt
    rst $38
    nop
    rst $38
    adc c
    db $76
    adc d
    ld [hl], l
    adc l
    ld [hl], d
    add c
    ld a, [hl]
    adc c
    halt
    rst $38
    adc l
    ld [hl], d

jr_0b7_55da:
    adc a
    ld [hl], b
    adc e
    ld [hl], h
    adc c
    db $76
    or $00
    rst $18
    jr nz, jr_0b7_565c

    nop
    ld a, a
    nop
    rst $30
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
    jr nz, @-$1f

    jr nz, jr_0b7_55c0

    jr c, jr_0b7_55da

    jr nz, @+$01

    nop
    rra
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
    ldh [$e0], a
    ld a, a
    add e
    add c
    cp $00
    rst $38
    ld a, b
    rst $38
    rst $38
    ccf
    rrca
    pop af
    nop
    rst $38
    dec b
    ld a, [$3ffe]
    db $fd
    inc bc
    inc b
    ei
    nop
    rst $38
    pop hl
    ld e, $ff
    inc bc
    rst $38
    nop
    ld l, a
    sub b
    ei
    add h
    rlca
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
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38

jr_0b7_5652:
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b7_565c:
    nop
    rst $38
    nop
    rst $38
    ld e, a
    jr nz, @+$01

    nop

jr_0b7_5664:
    rst $38
    nop
    rst $38
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
    jr nz, jr_0b7_5652

    jr nz, jr_0b7_5664

    nop
    ld a, a
    nop
    rst $38
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    sbc e
    ld h, h
    ei
    inc b
    ld sp, hl
    inc b
    ld a, [hl]
    nop
    cp $00
    ld a, l
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

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
    adc a
    ld [hl], b
    db $fc
    inc bc
    and d
    ld e, l
    or d
    ld c, l
    and b
    ld e, a
    sub h
    ld l, e
    inc h
    db $db
    nop
    rst $38

jr_0b7_56ac:
    add b
    ld a, a
    and b
    ld e, a
    ld [de], a
    db $ed
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld a, $c1
    inc a
    jp $cf30


    rst $38
    nop
    rst $38
    nop
    cp $01
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    inc l
    db $d3
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_0b7_5766

    add b
    ccf
    ret nz

    ccf
    ret nz

    inc bc
    db $fc
    add b
    rst $38
    db $fc
    nop
    inc c
    ld hl, sp+$0c
    ld hl, sp-$04
    db $fc
    db $fc
    db $f4
    ld a, h
    add b
    db $f4
    inc c
    ld a, h
    adc h
    db $fc
    db $f4
    db $fc
    inc b
    ld c, h
    or h
    adc h
    ld [hl], h
    ld l, h
    sub h
    rst $38
    rlca
    rst $38
    rlca
    ld a, a
    sub a
    xor $f9
    rst $00
    jr c, jr_0b7_56ac

    ld l, b
    push af
    ld a, [bc]
    ldh a, [rIF]
    ld a, [$ff05]
    nop
    rst $38
    nop
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld [$01ff], sp
    rst $38
    jr nc, @+$01

    inc b
    rst $38
    inc b
    rst $38
    nop
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
    db $10
    rst $38
    ld de, $00ff
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

jr_0b7_5751:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, l
    rst $38
    ld c, $ff
    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0b7_5766:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld bc, $00fe
    rst $38
    sbc d
    ld h, l
    sbc e
    ld h, h
    cp d
    ld b, l
    cp d
    ld b, l
    cp d
    ld b, l
    cp d
    ld b, l
    jr nc, jr_0b7_5751

    add b
    ld a, a
    sbc [hl]
    ld h, c
    or [hl]
    ld c, c
    or h
    ld c, e
    push af
    ld a, [bc]
    rst $30
    ld [$807f], sp
    jr nz, @-$1f

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld h, [hl]
    sbc c
    nop
    rst $38
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    ldh [$1f], a
    db $fc
    inc bc
    db $fc
    inc bc
    add sp, $17
    pop hl
    ld e, $e5
    ld a, [de]
    pop hl
    ld e, $7d
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$04fb], sp
    db $d3
    inc l
    ld a, e
    inc b
    ld a, a
    nop
    ei
    inc b
    ei
    inc b
    db $d3
    inc l
    nop
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, [$fe05]
    ld bc, $07f8
    ret nz

    ccf
    ld a, [c]
    dec c
    ld d, d
    dec l
    or $09
    or $09
    sub $29
    db $f4
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [$e4]
    dec de
    db $fd
    ld [bc], a
    ld l, l
    sub d
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    dec c
    ld a, [c]
    dec b
    ld a, [$fc03]
    add b
    rst $38
    add b
    rst $38
    adc b
    rst $30
    ret nz

    rst $38
    call nz, $feff
    rst $38
    rst $00
    rst $38
    ld b, d
    rst $38
    ld [hl], b
    rst $38
    db $10
    rst $38
    sbc b
    rst $38
    jr @+$01

    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rst $20
    rst $38
    ld [hl], e
    rst $38
    nop
    rst $38
    db $10
    rst $38
    rra
    rst $38
    inc a
    rst $38
    ldh [rIE], a
    nop
    rst $38
    inc bc
    rst $38
    ld b, $ff
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    dec bc
    rst $38
    ld e, $ff
    ld b, $ff
    ld [bc], a
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    jr nz, @+$01

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
    cp e
    ld b, h
    nop
    rst $38
    cp a
    ld b, b
    cp a
    ld b, b
    or a
    ld c, b
    scf
    ret z

    rla
    add sp, $17
    add sp, $07
    ld hl, sp+$00
    rst $38
    scf
    ret z

    cpl
    ret nc

    ld l, a
    sub b
    ld l, [hl]
    sub c
    ld l, [hl]
    sub c
    ld a, [hl+]
    push de
    nop
    rst $38
    ld b, b
    cp a
    ld h, d
    sbc l
    ld h, [hl]
    sbc c
    inc l
    db $d3
    dec c
    ld a, [c]
    dec b
    ld a, [$ff00]
    add b
    ld a, a
    sbc l
    ld h, d
    dec e
    ld [c], a
    dec e
    ld [c], a
    add hl, de
    and $1b
    db $e4
    nop
    rst $38
    ld d, b
    xor a
    ld d, c
    xor [hl]
    sub e
    ld l, h
    or e
    ld c, h
    di
    inc c
    ei
    inc b
    ldh [$1f], a
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    and b
    ld e, a
    ld a, [c]
    dec c
    di
    inc c
    ldh [$1f], a
    ld h, b
    sbc a
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
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ret z

    scf
    ret c

    daa
    add b
    ld a, a
    ret z

    scf
    ret c

    daa
    ld hl, sp+$07
    ret c

    daa
    nop
    rst $38
    add b
    ld a, a
    cp $01
    cp $01
    sub h
    ld l, e
    nop
    rst $38
    nop
    rst $38
    inc h
    db $db
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    inc de
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld c, $ff
    ccf
    rst $38
    xor [hl]
    rst $38
    sbc $ff
    sbc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld e, l
    rst $38
    ld l, $ff
    inc bc
    rst $38
    ld hl, $30ff
    rst $38
    ld sp, $04ff
    rst $38
    ret nz

    rst $38
    ld l, b
    rst $38
    ld a, [hl]
    rst $38
    xor h
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    jr nc, @+$01

    jr nc, @+$01

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
    xor d
    ld d, l
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $f4
    dec bc
    db $fc
    inc bc
    or $09
    ld [hl], b
    adc a
    nop
    rst $38
    or $09
    cp $01
    db $ec
    inc de
    xor $11
    xor $11
    cp $01
    ld a, [bc]
    push af
    inc b
    ei
    cp $01
    db $fd
    ld [bc], a
    ld e, l
    and d
    reti


    ld h, $d1
    ld l, $51
    xor [hl]
    nop
    rst $38
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
    ccf
    ret nz

    ld [bc], a
    db $fd
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop

jr_0b7_599a:
    ld a, a
    add b
    rst $38

jr_0b7_599d:
    nop
    rst $38
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
    jr jr_0b7_599a

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld e, h
    and e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld e, $e1
    nop
    rst $38
    ld [hl], e
    adc h
    scf
    ret z

    or a
    ld c, b
    scf
    ret z

    ld [hl+], a
    db $dd
    jr nc, jr_0b7_599d

    dec hl
    call nc, $fc03
    add hl, bc
    or $01
    cp $00
    rst $38
    ld bc, $11fe
    xor $01
    cp $01
    cp $e4
    rst $38
    add d
    db $fd
    add d
    db $fd
    add c
    cp $c0
    rst $38
    ret nz

    rst $38
    add h
    ei
    add h
    ei
    nop
    add c
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    jr z, @-$27

    inc b
    ei
    add h
    ld a, e
    add b
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    reti


    rst $38
    pop af
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    inc e
    rst $38
    db $10
    rst $38
    ld a, [hl-]
    rst $38
    rra
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec sp
    rst $38
    ld b, $ff
    nop
    rst $38
    inc d
    rst $38
    dec b
    rst $38
    add hl, bc
    rst $38
    ld [de], a
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $48ff
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    or c
    ld c, [hl]

jr_0b7_5a56:
    inc sp
    call z, $8c73

jr_0b7_5a5a:
    ld e, [hl]
    and c
    ld [hl], $c9
    ld [hl], a
    adc b
    ld [hl], $c9
    nop
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    cp $01
    xor $11
    add b
    ld a, a
    rst $18
    jr nz, jr_0b7_5a56

    jr nz, jr_0b7_5a56

    ld [hl+], a
    rst $18
    jr nz, jr_0b7_5a5a

    ld [hl+], a
    ret nc

    cpl
    nop
    rst $38
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
    daa
    ret c

    or $09
    rst $38
    nop
    rst $38
    nop
    cp $01
    xor $11
    cp $01
    rst $28
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
    cp $01
    ret c

    daa
    rst $38
    nop
    ei
    inc b
    cp e
    ld b, h
    or b
    ld c, a
    ld [bc], a
    db $fd
    nop
    rst $38
    ld h, d
    sbc l
    ld h, [hl]
    sbc c
    ld h, [hl]
    sbc c
    ld h, [hl]
    sbc c
    nop
    rst $38
    ret nz

    ccf
    db $e4
    dec de
    push hl
    ld a, [de]
    db $ed
    ld [de], a
    call $8d32
    ld [hl], d
    ldh a, [rIF]
    cp $01
    ld a, [$f205]
    dec c
    add d
    ld a, l
    add b
    ld a, a
    or c
    ld c, [hl]
    sub a
    ld l, b
    dec b
    ld a, [$f807]
    inc bc
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld b, $f9
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fc
    and a
    ld hl, sp-$0d
    db $fc
    rst $30
    ld hl, sp-$19
    ld hl, sp-$1b
    ld a, [$f8e7]
    push af
    ld a, [$fef1]
    di
    db $fc
    di
    db $fc
    di
    db $fc

jr_0b7_5b08:
    di
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$05
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$05
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $f8
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $fd
    ld hl, sp-$01

jr_0b7_5b40:
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fc
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $1d
    ld [c], a
    ld bc, $fbfe
    inc b
    ei
    inc b

jr_0b7_5b58:
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld b, a
    cp b
    rst $30
    ld [$10ed], sp
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    nop
    rst $38
    cp $01
    rst $18
    jr nz, jr_0b7_5b58

    jr nz, jr_0b7_5b08

    ld [hl], d
    dec b
    ld a, [$fe01]
    ld bc, $80fe
    ld a, a
    add d
    ld a, l
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    ld b, a
    cp b
    rlca
    ld hl, sp+$03
    db $fc
    ld h, l
    sbc d
    ld l, l
    sub d
    db $ed
    ld [de], a
    rst $28
    db $10
    rst $28
    db $10
    ld e, e
    and h
    add a
    ld a, b

jr_0b7_5ba0:
    rst $10
    jr z, @-$27

    jr z, jr_0b7_5b40

    ld h, h
    sbc e
    ld h, h
    rra
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
    cp a
    ld b, b
    cp l
    ld b, b
    dec a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    dec a
    ret nz

    ld a, a
    add b
    ld e, a
    and b
    rst $18
    jr nz, jr_0b7_5ba0

    jr nz, jr_0b7_5be2

    ldh [rNR31], a
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

    ld a, $c0
    db $76
    adc b
    ld a, [c]
    inc c
    ld a, d
    add h
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b

jr_0b7_5be2:
    cp $00
    ld a, [$fe00]
    nop
    ei
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    db $fd
    nop
    ld b, $f9
    dec bc
    db $f4
    dec c
    ld a, [c]
    nop
    rst $38
    db $10
    rst $28
    jr @-$17

    db $10
    rst $28
    ld [$fff7], sp
    nop
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    cp $01
    sbc $01
    sbc [hl]
    ld b, c
    or $09
    rst $30
    ld [$08f7], sp
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp e
    ld b, h
    cp e
    ld b, h
    rst $38
    nop
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    rst $10
    jr z, jr_0b7_5c62

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
    rst $30
    nop

jr_0b7_5c62:
    rrca
    ldh a, [$bf]
    ld b, b
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38

jr_0b7_5c6f:
    nop
    db $ed
    nop
    cp d
    ld b, b
    cp d
    ld b, b
    ld a, [c]
    nop
    ld a, [$fe00]
    nop
    or $00
    rst $30
    nop
    push hl
    nop
    db $e4
    nop
    ld h, h
    add b
    ld b, h
    add b
    nop
    ret nz

    and b
    ld b, b
    ret z

    jr nz, jr_0b7_5c6f

    db $10
    adc b
    db $10
    ret nc

    ld [$0488], sp
    sub d
    inc b
    db $10
    ld [bc], a
    sub d
    ld bc, $0190
    ldh a, [rP1]
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    ld c, [hl]
    or c
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rrca
    ldh a, [$37]
    ret z

    scf
    ret z

    dec sp
    call nz, $c43b
    add hl, sp
    add $3d
    jp nz, $c33c

    cp h
    ld b, e
    cp [hl]
    ld b, c
    ld e, d
    and l
    jp c, $da25

    dec h
    ld h, b
    sbc a
    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld b, b
    cp a
    add h
    ld a, e
    add h
    ld a, e
    add h
    ld a, e
    adc h
    ld [hl], e
    ld [hl], a
    nop
    ld l, l
    nop
    ld [hl], a
    nop
    ld a, l
    nop
    ld e, l
    nop
    db $dd
    nop
    ld e, d
    nop
    jp nc, Jump_000_2508

    jp c, $fc03

    inc bc
    db $fc
    inc bc
    db $fc
    dec bc
    db $f4
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    or d
    ld b, b
    di
    nop
    db $e3
    nop
    ldh a, [rP1]
    db $ec
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    daa
    ret c

    daa
    ret c

    ld h, $d9
    ld b, $f9
    dec h
    jp c, $ee11

    ld e, c
    and [hl]
    add hl, de
    and $e6
    nop
    add $00
    ld c, [hl]
    nop
    ld c, d
    nop
    ld c, e
    nop
    ld b, e
    nop
    ld [hl-], a
    ld bc, $0132
    ld [hl], $01
    inc a
    inc bc
    inc a
    inc bc
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ld b, a
    cp b
    ld b, a
    cp b
    ld b, a
    cp b
    rlca
    ld hl, sp+$56
    xor c
    ld e, $e1
    rla
    add sp, $39

jr_0b7_5d4f:
    add $f0
    nop
    rst $08
    jr nc, jr_0b7_5d4f

    nop
    ld a, [$f200]
    nop
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    pop bc
    nop
    pop bc
    nop
    jp $8300


    nop
    ld h, e
    add b
    di
    nop
    rst $38
    nop
    ld h, h
    inc bc
    cp b
    ld b, a
    cp b
    ld b, a
    db $fc
    inc bc
    ld hl, sp+$07
    db $fc
    inc bc
    db $f4
    dec bc
    ld hl, sp+$07
    ld hl, sp+$07
    add a
    nop
    rst $00
    nop
    ld h, a
    nop
    ccf
    nop
    rra
    nop
    dec bc
    inc b
    dec e
    ld [bc], a
    rla
    nop
    rla
    nop
    rrca
    nop
    rrca
    nop
    cpl
    nop
    rrca
    nop
    rrca
    nop
    adc [hl]
    nop
    ld c, [hl]
    add b
    sbc [hl]
    ld b, b
    ld a, $40
    ld a, [de]
    jr nz, jr_0b7_5dd3

    db $10
    jr nz, jr_0b7_5dc2

    inc [hl]
    ld [$0428], sp
    ld a, b
    ld b, $79
    ld [bc], a
    ld e, d
    ld bc, $0178
    ld hl, sp+$00
    ld a, [c]
    nop
    ld a, [c]
    nop
    db $f4
    nop
    ld [hl], h
    add b
    dec bc
    db $f4

jr_0b7_5dc2:
    rlca
    ld hl, sp+$07
    ld hl, sp-$69
    ld l, b
    rlca
    ld hl, sp+$0f
    ldh a, [rBGP]
    cp b

jr_0b7_5dce:
    daa
    ret c

    rla
    add sp, -$65

jr_0b7_5dd3:
    ld h, h
    ld e, e
    and h
    dec e
    ld [c], a
    dec a
    jp nz, $c13e

    ld a, $c1

jr_0b7_5dde:
    ccf
    ret nz

jr_0b7_5de0:
    ccf
    ret nz

    ld a, $c1
    cpl
    ret nc

    rra
    ldh [$9f], a
    ld h, b
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_0b7_5dce

    jr nz, jr_0b7_5de0

    db $10
    rst $28
    db $10
    rst $28
    db $10
    ld [hl], a
    adc b
    rst $30
    ld [$08f7], sp
    ei
    inc b
    ld a, [$fa05]
    dec b
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp l
    ld b, d
    cp d
    ld b, l
    ld a, [hl-]
    push bc

jr_0b7_5e0c:
    ld a, e
    add h
    ld a, a
    add b
    ld c, b
    nop
    ld c, b
    nop
    ld e, b
    nop
    inc a
    nop
    inc [hl]
    nop
    db $10
    jr nz, jr_0b7_5e25

    jr nz, jr_0b7_5e58

    nop
    and [hl]
    ld e, c
    and l
    ld e, d
    or l

jr_0b7_5e25:
    ld c, d
    ld [hl], c
    adc [hl]
    ld [hl], c
    adc [hl]
    ld [hl], e
    adc h
    inc sp
    call z, $9c63
    cp h
    nop
    or b
    nop
    ld a, [c]
    nop
    di
    nop
    db $d3
    jr nz, jr_0b7_5e0c

    jr nz, jr_0b7_5dde

    ld b, b
    and c
    ld b, b
    and c
    ld b, b
    add c
    ld b, b
    jp nz, $c200

    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    jr nz, @+$1a

    ld [hl], b
    nop
    sbc a
    ld h, b
    rst $38
    nop
    db $e4
    nop

jr_0b7_5e58:
    ldh [rP1], a
    ldh [rP1], a
    add sp, $00
    add sp, $00
    rla
    add sp, $0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR41], a
    ret nz

    ret c

jr_0b7_5e73:
    jr nz, jr_0b7_5e73

    nop
    rst $00
    nop
    pop bc
    nop
    pop bc
    nop
    jp $c200


    nop
    inc a
    jp $837c


    ld e, a
    and b
    ei
    inc b
    ld a, e
    add h
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld [$c480], sp
    nop
    or b
    nop
    jr c, jr_0b7_5e98

jr_0b7_5e98:
    jr jr_0b7_5e9a

jr_0b7_5e9a:
    ld h, $00
    ld [hl+], a
    nop
    ld hl, $ff00
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    nop
    nop
    ld bc, $0000
    add b

jr_0b7_5eb6:
    ld b, b
    add b
    add d
    ld b, b
    jr nz, jr_0b7_5efc

    db $10
    jr nz, jr_0b7_5ee3

    stop
    jr jr_0b7_5ec7

    ld [$0408], sp
    nop

jr_0b7_5ec7:
    ld b, $01
    ld [bc], a
    ld [de], a
    ld bc, $0100
    ld bc, $de00
    ld hl, $01fe
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $7b
    add h
    ld a, e
    add h
    ld [hl], e
    adc h
    or e

jr_0b7_5ee3:
    ld c, h
    or e
    ld c, h
    jp $c33c


    inc a
    jp $c73c


    jr c, jr_0b7_5eb6

    jr c, @-$3b

    inc a
    add d

jr_0b7_5ef3:
    ld a, l
    add d
    ld a, l
    add hl, hl
    sub $2d
    jp nc, $926d

jr_0b7_5efc:
    ld a, [hl]
    add c
    jp c, $ff25

    nop
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    sbc a
    ld h, b
    cp a
    ld b, b
    sbc a
    ld h, b
    ld e, [hl]
    and c
    sbc $21
    db $fd
    ld [bc], a
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    ei
    inc b
    di
    inc c
    rst $30
    ld [$0cf3], sp
    di
    inc c
    rst $28
    db $10
    db $ed
    ld [de], a
    db $dd
    ld [hl+], a
    rst $18
    jr nz, jr_0b7_5ef3

    ld b, c
    cp [hl]
    ld b, c
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    cp $01
    rst $38
    nop
    ld a, l
    add d
    rst $38
    nop
    ei
    inc b
    cp a
    ld b, b
    or a
    ld c, b
    di
    ld [$0100], sp
    ld [bc], a
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
    ld [$0009], sp
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld de, $1312
    inc d
    nop
    dec d
    ld d, $17
    jr jr_0b7_5f94

    ld a, [de]
    nop
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0b7_5fa8

    nop
    nop
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    daa
    jr z, jr_0b7_5fbc

    ld a, [hl+]

jr_0b7_5f94:
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0b7_5fd0

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0b7_5fc7

    nop

jr_0b7_5fa8:
    nop
    nop
    nop
    nop
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    nop
    nop
    nop
    ld b, h
    ld b, l

jr_0b7_5fbc:
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
    nop

jr_0b7_5fc7:
    dec sp
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, h
    ld d, l
    ld d, h

jr_0b7_5fd0:
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
    ld d, h
    ld d, h
    ld d, h
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
    ld d, h
    ld d, h
    ld d, h
    ld d, h
    ld d, h
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
    ld d, h
    ld d, h
    ld d, h
    ld [hl], a
    ld d, h
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
    ld d, h
    ld d, h
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
    ld d, h
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
    ld b, $00
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

Call_0b7_609f:
    nop
    inc b
    ld [bc], a
    nop
    nop
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
    inc b
    ld [bc], a
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
    ld [bc], a
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
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
    inc bc
    inc b
    inc bc
    inc bc
    inc bc
    ld [bc], a
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc b
    nop
    inc hl
    inc b
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0102
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0303
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    dec b
    ld [$0d0d], sp
    dec c
    dec c
    dec c
    dec c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    ld a, a
    ld a, a
    ccf
    rst $38
    ccf
    sbc a
    ccf
    ccf

Jump_0b7_61f7:
    rra
    rrca
    rra
    rra
    rrca
    rra
    rrca
    ld b, a
    rrca
    rra
    rlca
    dec hl
    rlca
    ld e, a
    inc bc
    scf
    inc bc
    ld a, l
    inc bc
    ld d, a
    ld bc, $0157
    or [hl]
    ld bc, $003f
    ld d, [hl]
    ld [$106e], sp
    cp e
    ld b, b
    ld a, l
    add b
    ei
    nop
    cp $00
    ld a, l
    add b
    rst $38
    add b
    ccf
    ret nz

    rst $38
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$ef], a
    ldh a, [$df]
    ldh a, [$f6]
    ld sp, hl
    db $e4
    ei
    ld hl, sp-$01
    db $f4
    rst $38
    db $fc
    rst $38
    ld a, [$faff]
    rst $38
    db $fc
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
    xor $11
    cp $01
    ld a, [$f805]
    rlca
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $fffe
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ccf
    ld a, a
    ccf
    rst $18
    ccf
    sbc a
    ccf
    rst $38
    rra
    rst $28
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $20
    rra
    sbc a
    ld h, a
    dec sp
    rst $00
    rst $38
    add e
    dec a
    jp $c33d


    ccf
    pop bc
    ld a, [hl]
    add c
    ld l, [hl]
    sub c
    push af
    ld a, [bc]
    rst $38
    nop
    cp $01
    ld l, h
    sub e
    ld sp, hl
    add [hl]
    and c
    sbc $e3
    call c, $f9c6
    or e
    db $ec
    rst $20
    ld hl, sp-$31
    ldh a, [$d7]

jr_0b7_62b1:
    ld hl, sp-$19
    ld hl, sp-$11
    ld hl, sp-$06
    db $fd
    rst $30
    db $fc
    db $fc
    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    db $fd
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
    jr nz, jr_0b7_62b1

    inc bc
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
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fc
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
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $38
    rra
    rst $28
    rra
    rst $28
    rra
    rst $38
    rrca
    rst $20
    rra
    rst $20
    rra
    sbc a
    ld h, a
    dec sp
    rst $00
    inc sp
    rst $08
    ld e, l
    and e
    db $fd
    inc bc
    rst $28
    ld de, $03fc
    ld [hl], h
    adc e
    cp c
    add $93
    db $ec
    inc sp
    call z, $fa45
    add a
    ld hl, sp-$15
    db $f4
    db $eb
    db $f4
    push de
    ld a, [$fdf2]
    db $fd
    ld a, [$fff8]
    push af
    rst $38
    or $ff
    ld a, [$feff]
    rst $38
    db $fc
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    rst $38
    jr c, @+$01

    jr c, @+$01

    inc a
    rst $38
    inc a
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld c, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    cp a
    rst $18
    ld a, a
    cpl
    rst $18
    adc a
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
    ld bc, $01ff
    rst $38
    add c
    rst $38
    ld bc, $40ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld sp, hl
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld a, [$feff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    nop
    rst $38
    ld [$0cff], sp
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    adc h
    rst $38
    adc [hl]
    rst $38
    adc [hl]
    rst $38
    add $ff
    add $ff
    rst $00
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl], e
    rst $38
    ld [hl], c
    rst $38
    ld sp, $39ff
    rst $38
    add hl, sp
    rst $38
    jr c, @+$01

    jr @+$01

    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld e, $ff
    ld d, $ff
    and a
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
    rst $30
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
    nop
    rst $38
    ld [bc], a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    ld c, c
    rst $38
    push bc
    rst $38
    and c
    rst $38
    ldh a, [rIE]
    ld a, [c]
    rst $38
    ei
    rst $38
    push af
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    db $fc
    rst $38
    cp $fd
    and $ff
    call nz, $c4ff
    rst $38
    db $e4
    rst $38
    and $fe
    db $e3
    cp $e3
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    di
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    ld b, $ff
    add [hl]
    rst $38
    add [hl]
    rst $38
    adc a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    db $db
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    db $fd
    rst $38
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add $ff
    add $bf
    add $ff
    ld b, $ff
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $08
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
    db $fc
    rst $38
    cp $01
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    rst $38
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
    rst $38
    rst $38
    rst $38
    cp a
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
    cp [hl]
    ld sp, hl
    rst $38
    ldh [rIE], a
    ldh [$f9], a
    ld h, [hl]
    rst $28
    ld [hl], b
    rst $28
    ld [hl], b
    rst $28
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
    ld [hl], b
    rst $38
    jr nc, @+$01

    jr nc, @-$01

    ld [hl-], a
    rst $38
    jr nc, @+$01

    adc b
    ld a, a
    rst $38
    ld e, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ld a, e
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    or e
    rst $38
    sub e
    rst $38
    di
    rst $38
    pop af
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    reti


    rst $38
    ret


    rst $38
    reti


    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
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
    cp $ff
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
    db $fd
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $f4
    rst $38
    cp $01
    ld a, [$f305]
    inc c
    ld a, [c]
    dec c
    ld a, [$f105]
    rrca
    cp c
    ld b, a
    xor c
    ld d, a
    ret


    cp $c9
    cp $8f
    db $fc
    or a
    db $fc
    add a
    db $fc
    add a
    db $fc
    add a
    db $fc
    rst $18
    ldh a, [rBGP]
    ld hl, sp+$4f
    ldh a, [rVBK]
    ldh a, [$6f]
    ldh a, [$3f]
    ldh [$3f], a
    ldh [$3f], a
    ret nz

    cp a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
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
    cp a
    ret nz

    db $fd
    jp nz, $c0ff

    rst $38
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld a, a
    add b
    cp [hl]
    ld b, d
    cp [hl]
    ld b, d
    cp [hl]
    ld b, d
    cp $02
    rst $38
    ld bc, $02fe
    cp [hl]
    ld b, b
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ld a, a
    add c
    rst $38
    ld bc, $01ff
    rst $18
    jr nz, @+$01

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
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $18
    jr nz, @+$01

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
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    cp $01
    ei
    inc b
    rst $18
    jr nz, @+$01

    ld bc, $11ef
    rst $20
    cp $ff
    db $fc
    and a
    db $fc
    rst $20
    db $fc
    and a
    db $fc
    cp a
    ld hl, sp-$01
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [rIE]
    ldh [$7f], a
    ldh [$7f], a
    ldh [$7f], a
    ret nz

    ccf
    ldh [$3f], a
    ldh [$7f], a
    add b
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [$0dff], sp
    rst $38
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    nop
    ld [$0000], sp
    nop
    adc b
    nop
    ld bc, $00fe
    nop
    nop
    nop
    ld b, b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    ld b, h
    nop
    db $fc
    nop
    ld b, h
    nop
    ld [$4400], sp
    nop
    inc c
    nop
    ld c, h
    nop
    ld e, h
    nop
    db $fc
    nop
    db $fd
    nop
    cp h
    nop
    db $ec
    nop
    cp $00
    cp [hl]
    nop
    ld [hl], a
    adc [hl]
    ld a, $cb
    ld a, d
    adc c
    ld [hl], b
    adc a
    db $76
    adc a
    or $8f
    or $8f
    db $fc
    add e
    db $ec
    sub e
    db $fd
    add d
    rst $38
    add b
    db $fd
    add d
    xor l
    jp nc, $c0bf

    and c
    sbc $bd
    jp nz, $cef1

    push af
    jp z, $dee1

    pop bc
    cp $e0
    rst $18
    ret nc

    rst $28
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    add sp, -$01
    db $e4
    rst $38
    rst $28
    rst $38
    xor $ff
    and $ff
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
    rst $38
    rst $38
    xor $f1
    rst $28
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    sbc a
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ld b, $ff
    ld b, $ff
    ld b, $ff
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld bc, $04ff
    rst $38
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
    dec l
    jp nc, Jump_000_0015

    nop
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
    ld a, l
    nop
    dec c
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    db $e4
    nop
    rst $38
    nop
    ld b, [hl]
    nop
    halt
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp l
    ld b, d
    ei
    inc b
    db $e3
    inc b
    xor a
    ld b, b

jr_0b7_683c:
    ld a, a
    nop
    ld e, a
    jr nz, jr_0b7_683c

    inc b
    sub l
    ld l, [hl]
    pop af
    ld c, $f9
    ld b, $fb
    inc b
    pop af
    ld c, $fd
    ld [bc], a
    ld [hl], b
    adc a
    ld b, $ff
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, l
    rst $38
    ld hl, $04ff
    rst $38
    sbc $21
    ld a, d
    add l
    inc b
    rst $38
    ld [hl], b
    adc a
    ld a, h
    add e
    ld a, h
    add e
    ld e, h
    and e
    nop
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
    db $10
    rst $38
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    and d
    rst $38
    ld b, d
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
    ld e, a
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
    inc b
    nop
    adc a
    nop
    nop
    nop
    inc b
    nop
    ld b, $00
    ld b, $00
    inc b
    nop
    rlca
    nop
    rst $38
    nop
    rlca
    nop
    inc b
    nop
    ld b, c
    nop
    dec c
    nop
    ld b, l
    nop
    db $eb
    nop
    rst $38
    nop
    xor $01
    ld l, a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    or a
    ld c, b
    ld sp, hl
    ld b, $f8
    rlca
    db $eb

jr_0b7_68f7:
    inc b
    ei
    inc b
    cp l
    ld b, d
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], h
    adc a
    ldh a, [rIF]
    db $e3
    inc e
    db $d3
    inc l
    or e
    ld c, h
    ld [bc], a
    db $fd
    db $e3
    inc e
    rst $20
    jr jr_0b7_68f7

    add hl, de
    add $39
    nop
    rst $38
    nop
    rst $38
    sbc $21
    sbc a
    ld h, b
    ld [de], a
    db $ed
    ld b, b
    rst $38
    ld c, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    ld h, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
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
    ld d, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rrca
    rst $38
    rlca
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
    jr nz, @+$01

    jr nz, @+$01

    ld bc, $02ff
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    ld c, b
    nop
    cp $00
    nop
    rst $38
    ld e, b
    nop
    ld a, h
    nop
    inc e
    nop
    inc e
    nop
    ld e, h
    nop
    ld e, h
    nop
    call z, $ff00
    nop
    ld e, [hl]
    nop
    ld e, h
    nop
    sbc $00
    ld e, [hl]
    nop
    sbc $00
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    xor $00
    xor $00
    adc $00
    xor $00
    cp a
    ld b, b
    rst $30
    ld [$00fe], sp
    cp $00
    cp $00
    ld [$20ff], sp
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ret nc

    rst $38
    ret c

    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr c, @+$01

    jr @+$01

    sbc c
    rst $38
    cp a
    rst $38
    db $10
    rst $38
    sbc b
    rst $38
    db $10
    rst $38
    sub d
    rst $38
    ei
    rst $38
    ld [hl], a
    rst $38
    ld [hl], e
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    jr nz, @+$01

    ld [hl+], a
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld hl, $65ff
    rst $38
    ld h, l
    rst $38
    ld h, d
    rst $38
    ld h, [hl]
    rst $38
    ld l, [hl]
    rst $38
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
    nop
    rst $38
    ret nz

    rst $38
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
    inc b
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
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    ld a, [$ff0f]
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $20
    rra
    rst $10
    cpl
    ld [hl], a
    adc a
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
    jr nc, jr_0b7_6a5a

jr_0b7_6a5a:
    nop
    rst $38
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    nop
    nop
    ld [hl+], a
    nop
    jr nz, jr_0b7_6a66

jr_0b7_6a66:
    ld [bc], a
    nop
    ld [bc], a
    nop
    rst $38
    nop
    rlca
    nop
    dec b
    nop
    inc b
    nop
    ld b, $00
    inc b
    nop
    ld b, $00
    add a
    nop
    rst $38
    nop
    ld l, a
    nop
    ld l, a
    nop
    cp a
    nop
    cp a
    nop
    cp a
    nop
    cp $01
    cp l
    ld b, d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    sub d
    rst $38
    add b
    rst $38
    ld bc, $00ff

jr_0b7_6a99:
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    dec b
    rst $38
    ld sp, $3fff
    rst $38
    inc sp
    rst $38
    or e
    rst $38
    inc hl
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr jr_0b7_6a99

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    cp $45
    cp $1f
    cp $05
    cp $0e
    cp $0c
    cp $fc
    cp $fc
    cp $fe
    db $fc
    cp $fc
    db $fc
    db $fc
    inc c
    db $fc
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp a
    ld b, b
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    db $fd
    ld [bc], a
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
    cp a
    ld b, b
    add a
    ld a, b
    rst $38
    nop
    di
    inc c
    push af
    ld c, $fe
    rrca
    rst $38
    rra
    rst $28
    rra
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
    or a
    rst $38
    cp a
    ld b, b
    rst $38
    nop
    rst $30
    ld [$48b7], sp
    or a
    ld c, b
    or a
    ret z

    or e

jr_0b7_6b4d:
    ld c, h
    or e

jr_0b7_6b4f:
    ld c, h
    nop
    nop
    stop
    ld [de], a
    nop
    inc d
    nop
    stop
    nop
    cp $7e
    nop
    jr jr_0b7_6b60

jr_0b7_6b60:
    jr z, jr_0b7_6b62

jr_0b7_6b62:
    inc l
    nop
    inc l
    nop
    inc l
    nop
    inc a
    nop
    db $fc
    nop
    ret c

    inc h
    ld hl, sp+$00
    ld a, b
    nop
    ld a, b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ret nz

    jr nz, jr_0b7_6b4d

    jr nz, jr_0b7_6b4f

    jr nz, jr_0b7_6b91

jr_0b7_6b91:
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    ret nz

    cp $c1
    cp $c6
    ld sp, hl
    sbc $e1
    and h

jr_0b7_6ba9:
    db $db
    xor b

jr_0b7_6bab:
    rst $10
    sub b
    rst $28
    ret nz

    cp a
    ld l, d
    sub l
    ld h, c
    sbc [hl]
    ld c, d
    or l
    dec b
    ld a, [$f20d]
    inc de
    db $ec
    jp nc, $de2d

    ld hl, $c13e
    ccf
    ret nz

    ccf
    ret nz

    dec a
    jp nz, $c639

    add hl, sp
    add $39
    add $39
    add $78
    add a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    jr nc, @-$2f

    jr nc, jr_0b7_6ba9

    jr nc, jr_0b7_6bab

    ld hl, $20de
    rst $18
    ld [hl+], a
    db $dd
    ld [hl+], a

jr_0b7_6be3:
    db $dd
    inc hl
    call c, $dc23
    inc bc
    db $fc
    dec bc
    db $f4
    ld a, [bc]
    push af
    ld c, d
    or l
    ld a, [bc]
    push af
    inc de
    db $ec
    inc de
    db $ec
    inc de
    db $ec
    dec d
    ld [$ea15], a
    rla
    add sp, $05
    ld a, [$f807]
    rlca
    ld hl, sp+$05
    ld a, [$d22d]
    inc h
    db $db
    jr z, jr_0b7_6be3

    ld a, [bc]
    push af
    ld [bc], a
    db $fd
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc c
    di
    ld a, [bc]
    push af
    ld a, [bc]
    push af
    add hl, bc
    or $e9
    or $e0
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    and b
    ret nz

    and b

jr_0b7_6c2b:
    ret nc

    ldh [$90], a
    ldh [$90], a
    ld [hl], b
    sub b
    ld [hl], b
    sub b
    ldh a, [$90]
    ldh a, [$80]
    ldh a, [$80]
    ret nc

    ldh [$f0], a
    ret nz

    ret nc

    ld h, b
    or b
    ld c, b
    or b
    ld c, b
    ldh a, [rOBP0]
    ldh a, [rOBP0]
    ld hl, sp+$48
    sbc b
    ld l, b
    ld hl, sp+$48
    ld hl, sp+$00
    ld e, $e1
    ld c, $f1
    ld c, h
    or e
    inc l
    db $d3
    ld l, h
    sub e
    jr nc, jr_0b7_6c2b

    jr nc, @-$2f

    jr nc, @-$2f

    rst $00
    nop
    ld h, a
    add b
    db $ed
    ld [bc], a
    db $ed
    ld [bc], a
    cp $01
    ld a, [hl]
    ld bc, $00ff
    cp $01
    and h
    dec de
    inc h
    dec de
    or l
    ld a, [bc]
    dec c
    sub d
    db $10
    adc a
    inc e
    add e
    inc d
    adc e
    or b
    rrca
    dec sp
    add h
    ld a, e
    add h
    ld sp, hl
    ld b, $b9
    ld b, [hl]
    ld a, l
    add d
    dec a
    jp nz, $e31c

    ld e, $e1
    ld a, $c1
    ld e, [hl]
    and c
    ld l, a
    sub b
    cpl
    ret nc

    ld l, a
    sub b
    ld l, a
    sub b
    xor a
    ld d, b
    cp a
    ld b, b
    ld d, a
    xor b
    rst $30
    ld [$8877], sp
    ld [hl], a
    adc b
    ei
    inc b
    ld a, e
    add h
    ld a, e
    add h
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    db $dd
    ld [hl+], a
    rst $18

jr_0b7_6cb7:
    jr nz, jr_0b7_6cb7

    ld bc, $01fe
    cp $01
    cp $01
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
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
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $28
    db $10
    ld l, a
    sub b
    ld l, [hl]
    sub c
    ld l, [hl]
    sub c
    ld l, [hl]
    sub c

jr_0b7_6ce2:
    ld l, [hl]
    sub c

jr_0b7_6ce4:
    ld e, a
    and b
    cpl
    ret nc

    cp a
    ld b, b
    xor a
    ld d, b
    scf
    ret z

    ld [hl], $c8
    ld d, $e8
    ld d, $e8
    ld d, $e8
    dec d
    add sp, $3c
    ret nz

    ld a, $c0
    cp h
    ld b, b
    db $fc
    nop
    db $fd
    nop
    ld e, a
    and b
    rst $10
    jr nz, jr_0b7_6ce2

    jr nz, jr_0b7_6ce4

    jr nz, @-$03

    nop
    ei
    nop
    ld l, e
    sub b
    ld a, e
    add b
    ld l, e
    sub b
    ld a, a
    add b
    ld [hl], a
    add b
    ld a, l
    add b
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp l
    ld b, b
    ld sp, hl
    inc b
    ld [hl], a
    adc b
    rst $30
    ld [$20df], sp
    cp a
    ld b, b
    cp a
    ld b, b
    ccf
    ret nz

    cp a
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ld a, e
    add h
    ld a, a
    add b
    xor [hl]
    ld d, c
    dec a
    jp nz, $827d

    adc [hl]
    ld [hl], c
    xor $11
    ld [hl], a
    adc b

jr_0b7_6d46:
    ld [hl], e
    adc h

jr_0b7_6d48:
    ld a, c
    add [hl]
    db $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    cp $01
    cp $01

jr_0b7_6d5a:
    cp $01
    ld a, a
    add b
    ld a, a
    add b
    ld a, l
    add d
    cp a
    ld b, b
    rst $18
    jr nz, jr_0b7_6d46

    jr nz, jr_0b7_6d48

    jr nz, jr_0b7_6d5a

    db $10
    rst $28
    db $10
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$04fb], sp
    ei
    inc b
    cp l
    ld b, d
    db $fd
    ld [bc], a
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, l
    add d
    ld a, a
    add b
    cp l
    ld b, d
    cp a
    ld b, b
    adc e
    ld [hl], h
    db $db
    inc h
    db $db
    inc h
    db $d3
    inc l
    jp $e13c


    ld e, $e1
    ld e, $e1
    ld e, $f1
    ld c, $f1
    ld c, $f3
    inc c
    di
    inc c
    di
    inc c
    db $e3
    inc e
    ldh [$1f], a
    push hl
    ld a, [de]
    push hl
    ld a, [de]
    db $e4
    dec de
    ld l, [hl]
    sub c
    ld c, [hl]
    or c
    ld c, [hl]
    or c
    rrca
    ldh a, [$8e]
    ld [hl], b
    adc [hl]
    ld [hl], b
    sbc [hl]
    ld h, b
    sbc [hl]
    ld h, b
    sbc l
    ld h, b
    sbc l
    ld h, b
    ld e, l
    and b
    sbc $20
    ld l, d
    sub b
    jp z, $ec30

    db $10
    db $e4
    db $10
    db $fd
    nop
    ld a, [$e900]
    nop
    ld l, e
    add b
    rst $38
    nop
    rst $10
    nop
    rst $10
    nop
    jr @-$17

    ld d, b
    xor a
    ld d, c
    xor [hl]
    ld d, b
    xor a
    jr nz, @-$1f

    ld h, b
    sbc a
    ld b, b
    cp a
    ld b, b
    cp a
    add d
    ld a, l
    add h
    ld a, e
    add d
    ld a, l
    add [hl]
    ld a, c
    add [hl]
    ld a, c
    inc b
    ei
    sbc l
    ld h, d
    dec e
    ld [c], a
    add hl, de
    and $0b
    db $f4
    inc hl
    call c, $9c63
    ld h, a
    sbc b
    ld h, l
    sbc d
    xor $11
    db $e4
    dec de
    dec l
    nop
    cpl
    nop
    ld l, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    rst $00
    nop
    jp $8f04


    nop
    rlc h
    sbc a
    nop
    rst $18
    nop
    cp $00
    ld a, [$f200]
    nop
    or $00
    xor c
    ld b, b
    pop af
    nop
    sub c
    ld b, b
    pop hl
    nop
    di
    nop
    rst $30
    nop
    db $f4
    nop
    cp h
    nop
    ld hl, sp+$00
    cp $01
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a

jr_0b7_6e4a:
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, l
    add d
    ld a, e
    add h
    dec sp
    call nz, Call_0b7_609f
    sub $29
    add $39
    and $19
    or $09
    pop af
    ld c, $e9
    ld d, $fd
    ld [bc], a
    db $fc
    inc bc
    cp $01
    rst $18
    jr nz, jr_0b7_6e4a

    jr nz, @+$01

jr_0b7_6e6d:
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38

jr_0b7_6e73:
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b

jr_0b7_6e7c:
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, a
    add b
    dec sp
    call nz, $c43b
    cp a
    ld b, b
    or [hl]
    ld c, b
    sub [hl]
    ld l, b
    ld d, [hl]
    xor b
    ld c, a
    or b
    ld l, l
    sub b
    push hl
    jr jr_0b7_6e7c

    jr jr_0b7_6e6d

    jr z, jr_0b7_6e73

    inc h
    ld a, [$b604]
    ld b, b
    or h
    ld b, d
    or a
    ld b, b
    ld hl, sp+$01
    jp hl


    nop
    add sp, $00
    ld hl, sp+$00
    ret nc

    nop
    ret nc

    nop
    push af
    nop
    and c
    nop
    xor a
    nop
    db $eb
    nop
    sbc $00
    ld e, [hl]
    add b
    ld e, [hl]
    add b
    sbc [hl]
    ld b, b
    cp [hl]
    ld b, b
    or [hl]
    ld c, b
    inc [hl]
    ld c, b
    ld e, h
    jr nz, jr_0b7_6ed4

    jr nc, jr_0b7_6ed8

    jr nc, jr_0b7_6efa

    db $10
    dec l
    db $10
    cpl
    db $10
    ld [hl], a
    ld [$0877], sp

jr_0b7_6ed4:
    rst $20
    ld [$06e9], sp

jr_0b7_6ed8:
    xor c
    ld b, $d3
    inc b
    add hl, hl
    ld b, $29
    ld [bc], a
    sbc c
    ld [bc], a
    ld d, c
    ld [bc], a
    or d
    ld bc, $0170
    ld h, b
    ld bc, $00e1
    ret nz

    nop
    ld b, c
    nop
    ld a, $c1
    ld a, h
    add e
    ld a, l
    add d
    ld a, l
    add d
    ld a, c
    add [hl]

jr_0b7_6efa:
    dec sp
    call nz, $dc23
    rla
    add sp, $58
    nop
    ld [hl], b
    nop
    ld sp, hl
    nop

jr_0b7_6f06:
    add d
    jr nz, @-$5e

    nop
    ld d, h
    jr nz, jr_0b7_6f06

    nop
    ld a, [$6a00]
    sub l
    ld h, h
    sbc e
    ld b, h
    cp e
    ld b, h
    cp e
    ld b, c
    cp [hl]
    ld d, b
    xor a
    ld d, e
    xor h
    ld [hl], d
    adc l
    ld e, l
    nop
    cp l
    nop

jr_0b7_6f24:
    halt

jr_0b7_6f26:
    ld [hl], a
    nop
    or $00
    ld a, c
    ld [bc], a
    db $eb
    nop
    db $eb
    nop
    db $eb
    nop
    ld l, d
    ld bc, $007b
    ei
    nop
    rst $30
    nop
    or a
    nop
    rst $28
    nop
    xor [hl]
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_0b7_6f24

    jr nz, jr_0b7_6f26

    jr nz, @+$01

    nop
    cp a

jr_0b7_6f4b:
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    ld a, a
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    cp $00

jr_0b7_6f58:
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fd

jr_0b7_6f5f:
    nop
    ld sp, hl
    nop
    reti


    jr nz, jr_0b7_6f5f

    nop
    ld a, [hl-]
    ret nz

    ld a, [hl-]
    ret nz

    ld [hl], $c0
    sub h
    ld h, b
    call nc, $cc20
    jr nc, jr_0b7_6f58

    jr jr_0b7_6f4b

    ld [$0cd2], sp
    ld hl, sp+$06
    reti


    ld [bc], a
    ld a, [$a101]
    nop
    or c
    nop
    pop hl
    nop
    ld h, e
    nop
    ld c, e
    nop
    ret nz

    ld [bc], a

jr_0b7_6f8a:
    adc $00
    add a
    nop
    sub [hl]
    nop
    ld a, [$f105]
    ld c, $f3
    inc c
    push hl
    ld a, [de]
    push hl
    ld a, [de]
    jp hl


    ld d, $c9
    ld [hl], $d2
    dec l
    dec h
    nop
    ld h, c
    nop
    push bc
    nop
    ld b, c
    add b
    rst $00
    nop
    adc d
    ld b, b
    xor d
    ld b, b
    xor $00
    sbc h
    jr nz, jr_0b7_6f5f

    db $10
    ld l, $10
    dec b
    jr jr_0b7_6ff0

jr_0b7_6fb9:
    ld [$0837], sp
    ld l, c
    inc d
    ld a, e
    inc b
    ld e, l
    ld [hl+], a
    ld sp, hl
    ld [bc], a
    ld hl, sp+$03
    ld a, [$f001]
    ld bc, $00f1
    di
    nop
    di
    nop
    jr jr_0b7_6fb9

    add hl, de
    and $29
    sub $23
    call c, $fe01
    ld b, $f9
    ld b, $f9
    ld b, $f9
    db $fd
    nop
    rst $20
    nop
    rst $28
    nop
    cp a
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

jr_0b7_6ff0:
    cp a
    ld b, b
    ld l, $51
    ld c, $71
    ld e, [hl]
    ld hl, $225d
    dec de
    inc h
    dec bc
    inc [hl]
    daa
    jr jr_0b7_7008

    jr jr_0b7_6f8a

    jr jr_0b7_707c

    ld [$08b7], sp

jr_0b7_7008:
    db $e3
    inc c
    ld l, e
    inc b
    rlc h
    jp $8d04


    ld [bc], a
    adc l
    ld [bc], a
    db $10
    inc bc
    ld l, $01
    ld d, [hl]
    ld bc, $015e
    xor $01
    ld a, [hl]
    ld bc, $007f
    db $fd
    ld [bc], a
    ei
    inc b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $28
    db $10
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
    ld a, [hl]
    add b
    ld a, l
    add b
    db $fd
    nop
    ld [c], a
    inc e
    pop bc
    ld c, $c4
    inc bc
    sub b
    ld bc, $0090
    add b
    nop
    jr nz, jr_0b7_704e

jr_0b7_704e:
    jr nz, jr_0b7_7050

jr_0b7_7050:
    cp $01
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    cp [hl]
    ld b, c
    db $fc
    inc bc
    ld a, l
    add d
    ld a, l
    add d
    cp c
    ld b, [hl]
    cp e
    ld b, h
    and e
    ld e, h
    db $e3
    inc e
    and e
    ld e, h
    push bc
    ld a, [hl-]
    and h
    ld e, e
    xor c
    ld d, [hl]
    add c
    ld a, [hl]
    db $f4
    nop
    xor h
    nop
    db $fc
    nop

jr_0b7_7076:
    ld l, b
    nop
    ldh [rP1], a
    pop de
    nop

jr_0b7_707c:
    push af
    nop
    ld sp, $7780
    add b

jr_0b7_7082:
    xor e
    ld b, b
    rla
    ld h, b
    rst $08
    jr nc, jr_0b7_7076

    db $10
    and l
    jr @-$6b

    inc c
    ld a, d
    inc b
    ld e, l
    ld [bc], a
    sub b
    inc bc
    ld [hl], d
    ld bc, $00a1
    pop hl
    nop
    ld h, c
    nop
    ld b, l
    nop
    rlc b

jr_0b7_70a0:
    rst $00
    nop
    adc e
    nop
    adc e
    nop
    ld [de], a
    ld bc, $0116
    daa
    nop
    dec d
    ld [bc], a
    ld l, $00
    ld a, [de]
    inc b
    sbc c
    inc b
    ld [hl], $08

jr_0b7_70b6:
    ld [hl], $08
    ld l, a
    db $10
    xor $10
    rst $38
    nop
    rst $18
    jr nz, jr_0b7_70a0

    jr nz, jr_0b7_7082

    ld b, b
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

    ccf
    ret nz

    cp a
    ld b, b
    sbc a
    ld h, b
    ld e, [hl]
    ld hl, $308f
    ld l, l
    ld [de], a
    ld h, [hl]
    jr jr_0b7_714f

    inc c
    or h
    ld [$0cc1], sp
    ei
    inc b
    db $db
    inc b
    push af
    ld [bc], a
    add sp, $03
    ld [c], a
    ld bc, $41b4
    ld l, e
    add b
    ld [hl], l
    add b
    ld a, e
    add b
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
    nop
    ld a, a
    add b
    cp $01
    db $fd
    ld [bc], a

jr_0b7_7108:
    db $fd
    ld [bc], a
    ei
    inc b
    di
    inc c
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_0b7_70b6

    ld h, b
    cp a
    ld b, b
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

    cp a
    ld b, b
    cp a
    ld b, b
    sbc a
    ld h, b
    rst $08
    jr nc, jr_0b7_7108

    inc h
    call $e932
    ld d, $e9
    ld d, $e0
    rra
    call nz, $d41b
    dec bc
    pop de
    ld c, $53
    inc c
    or e
    inc c
    ccf
    nop
    cp a
    nop
    ld e, a
    and b
    rra

jr_0b7_7147:
    ldh [rIF], a
    ldh a, [$87]
    ld a, b
    ldh [$1f], a
    adc b

jr_0b7_714f:
    rlca
    adc l
    inc bc
    adc [hl]
    ld bc, $010e
    ld c, $01
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    dec bc
    inc b
    dec sp
    inc b
    dec de
    inc b
    scf
    ld [$0817], sp
    rra
    nop
    ccf
    nop
    ld [hl], $00
    ld [hl], h
    nop
    ld l, c
    nop
    sbc [hl]
    ld h, c
    sbc d
    ld h, l
    sub h
    ld l, e
    jr nc, jr_0b7_7147

    ld [hl], c
    adc [hl]
    ld h, b
    sbc a
    ld b, b
    cp a
    ld b, b
    cp a
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $00

jr_0b7_718c:
    ld a, d
    inc b
    ld a, [$f604]
    ld [$08f4], sp
    ld l, h
    sub b
    ld a, [hl+]
    ret nc

    add hl, bc
    ldh a, [$95]
    ld h, b
    add e
    ld [hl], b
    adc a
    ld [hl], b
    and a
    ld e, b
    ld [hl], e
    adc h
    ld d, e
    adc h
    xor c
    ld b, $9c
    inc bc
    cp h
    inc bc
    ld e, [hl]
    ld bc, $01be
    rst $38
    nop
    ld a, a
    nop
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    ld a, [$f504]
    ld [$00fa], sp
    add sp, $10
    db $f4
    nop
    db $f4
    nop

jr_0b7_71ca:
    add sp, $00
    db $e4
    nop
    jp c, Jump_000_2700

    ret c

    ld h, a
    sbc b
    ld h, l
    sbc d
    push de
    ld a, [hl+]
    ld c, d
    or l
    ld e, c
    and [hl]
    nop
    rst $38
    inc b
    ei
    ei
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
    ld a, c
    add [hl]
    inc sp
    call z, $cc33
    add a
    ld a, b
    add a
    ld a, b
    rst $08
    jr nc, jr_0b7_71ca

    jr nc, jr_0b7_718c

    ld [hl], b
    xor a
    ld d, b
    ld h, a
    sbc b
    ld [hl], a
    adc b
    di
    inc c
    ei
    inc b
    ld sp, hl
    ld b, $fd
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

jr_0b7_721c:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f3
    inc c
    rst $20
    jr jr_0b7_721c

    db $10
    rst $08
    jr nc, @-$5f

    ld h, b
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
    nop
    nop
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
    rlca
    ld [$0a09], sp
    dec bc
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
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0b7_7281

jr_0b7_7281:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_0b7_72d8

    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b7_72c1

jr_0b7_72c1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b7_72d8:
    nop
    nop
    scf
    jr c, jr_0b7_7316

    ld a, [hl-]
    dec sp
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
    dec a
    ld a, $3f
    ld b, b
    ld b, c
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
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
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
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b7_7316:
    nop
    nop
    nop
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
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
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
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
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
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
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
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
    nop
    ld bc, $0202
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
    ld bc, $0201
    ld bc, $0303
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld [bc], a
    ld bc, $0505
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
    ld [bc], a
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [$7000]
    nop
    jp Jump_0b7_4083


    ld b, b
    ld b, b
    ld b, b
    ld [$0808], sp
    ld [$0000], sp
    inc d
    inc d
    and a
    and a
    ld e, e
    ld e, e
    rst $38
    rst $20
    rst $38
    sbc a
    rst $38
    ld l, [hl]
    rst $38
    rst $10
    rst $38
    ret z

    cp $11
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add c
    rlca
    rlca
    ld [$8708], sp
    add a
    ld b, h
    ld b, h
    ld a, [hl+]
    ld a, [hl+]
    pop bc
    pop bc
    dec a
    dec a
    ld l, e
    ld l, e
    ei
    ei
    dec sp
    dec sp
    inc sp
    inc sp
    inc sp
    inc sp
    add a
    add a
    rst $30
    rst $30
    db $dd
    db $dd
    rst $38
    rst $38
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [de], a
    ld [de], a
    ld [$0008], sp
    nop
    ld [$0508], sp
    dec b
    rst $38
    sbc [hl]
    ld a, [$ff60]
    add b
    rst $38
    rst $38
    rst $38
    sub e
    rst $38
    rst $20
    rst $38
    and h
    rst $30
    ld h, h
    ei
    ld [c], a
    db $fd
    or c
    ld a, [$fff0]
    inc c
    add e
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [rIE], a
    add b
    rst $38
    inc bc
    rst $38
    dec c
    rst $38
    dec e
    rst $38
    ld [hl], l
    rst $38
    push af
    rst $38
    rst $38
    db $dd
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
    rst $18
    adc e
    rst $28
    ld b, a
    db $fd
    ld [hl], b
    rst $38
    ld e, b
    rst $38
    ld d, a
    rst $38
    ld d, l
    rst $38
    ld d, h
    rst $38
    dec d
    rst $38
    db $db
    nop
    nop
    ld c, b
    ld c, b
    inc b
    inc b
    ret nz

    ret nz

    jr nz, jr_0b7_75ba

    db $10
    db $10
    add c
    add c
    ld hl, sp-$08
    ld d, a
    rlca
    ld a, [$ff00]
    ld [hl], b
    rst $38
    xor $ff
    pop bc
    ld hl, sp-$79
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIE]
    adc a
    rst $38
    rst $38
    ld a, [hl]
    ld d, l
    ld bc, $80ea

jr_0b7_75ba:
    ld a, l
    ldh a, [rIE]
    inc c
    rst $38
    ld a, [bc]
    rst $38
    rra
    rst $38
    ld l, e
    rst $38
    rst $28
    rst $38
    xor e
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    rst $38
    db $fd
    cp h
    ldh [$ea], a
    nop
    ld a, a
    rlca
    rst $38
    ld sp, hl
    cp $fe
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
    rst $38
    xor d
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    xor d
    rst $38
    ld a, [hl+]
    rst $38
    add hl, sp
    ld [$0708], sp
    rlca
    inc de
    inc de
    ld c, a
    ld c, a
    xor e
    xor e
    nop
    nop
    jr nc, jr_0b7_762e

    nop
    nop
    rst $38
    rlca
    rst $38
    rst $38
    ld d, l
    nop
    ld [$ff00], a
    cp $03
    db $fd
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    sbc e
    rst $38
    ld a, e
    ld e, a
    rra
    xor a
    rrca
    rst $10
    rlca
    rlca
    xor a
    rlca
    rst $10
    add a
    rst $28
    add a
    rst $30
    add a
    rst $28
    rst $38
    sbc [hl]
    rst $38
    rst $38

jr_0b7_762e:
    nop
    ld d, l
    nop
    ei
    ld a, l
    rst $38
    cp $82
    db $fc
    dec [hl]
    ld [$f8fa], sp
    db $fd
    pop af
    ei
    pop hl
    rst $30
    rst $28
    jp Jump_000_075f


    rst $38
    rrca
    rst $38
    inc sp
    rst $38
    call z, $85ff
    rst $38
    ret


    rst $38
    set 7, a
    rst $18
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld b, c
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    add b
    rst $38
    cp $ff
    ld [hl], c
    ld a, a
    xor a
    inc c
    rst $10
    ld [bc], a
    db $eb
    add c
    push af
    ld b, c
    ld a, [$fd60]
    ldh a, [$fa]
    ld [hl], b
    db $fd
    ld d, b
    cp $f8
    db $fd
    ld a, b
    cp $f8
    db $fd
    ld hl, sp-$02
    ldh a, [$f0]
    db $dd
    ld sp, hl
    ccf
    rst $38
    xor a
    rst $38
    ld sp, hl
    cp $6e
    ld hl, sp-$63
    ldh [$2b], a
    pop bc
    rst $10
    add a
    xor a
    ld [$105d], sp
    cp $3e
    ld a, a
    ld a, a
    rst $00
    rst $38
    cp a
    rlca
    ei
    ld hl, sp-$01
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
    add e
    add e
    or h
    or h
    cp d
    cp d
    rst $38
    rrca
    rst $28
    rra
    add a
    ld a, a
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $06ff
    rst $38
    ld [$f8ff], sp
    rst $38
    and a
    ld a, a
    ld hl, sp+$05
    ldh a, [rSB]
    db $e3
    ld h, h
    rst $00
    ret z

    rst $08
    call z, $c9df
    rst $38
    db $e3
    rst $38
    rst $20
    ld a, a
    ld [hl], a
    rst $38
    ld a, e
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp a
    ret nz

    push de
    nop
    xor d
    nop
    ld a, a
    ccf
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    rst $20
    rra
    cp a
    inc bc
    rst $10
    ret nz

    ld a, [$3ff0]
    db $fc
    rst $18
    cp $7f
    add a
    add a
    ld hl, sp-$08
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
    ld b, c
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
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld hl, sp-$01
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$02
    ldh a, [rIE]
    ret nz

    rst $38
    ld b, l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    xor $7f
    ccf
    xor a
    rlca
    ld d, l
    ld bc, $80fa
    db $fd
    ldh [$fe], a
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ccf
    rst $38
    jp $fcfc


    rst $38
    rst $38
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
    ldh [rIE], a
    ret nz

    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $c2ff
    ccf
    add h
    ld a, a
    rst $38
    rst $38
    sub b
    ld a, a
    and b
    ld a, a
    ldh a, [rIF]
    rrca
    nop
    rlca
    nop
    rlca
    nop
    ccf
    ld bc, $017d
    ld sp, hl
    add hl, bc
    di
    ld [hl], c
    rst $20
    jp $cf87


    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    ld a, a
    ld hl, sp+$3f
    ld a, b
    rra
    cp b
    rrca
    ld e, b
    rlca
    xor h
    add e
    sub $c3
    ld [$f5c1], a
    ldh [$fa], a
    ldh a, [$fd]
    or c
    rst $18
    rst $18
    ld l, $8f
    ld [hl], b
    db $10
    rst $28
    pop hl
    cp $9e
    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38

jr_0b7_77d6:
    ld [$10ff], sp
    rst $38
    rst $38
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38

jr_0b7_77e4:
    nop
    rst $38
    nop
    rst $38
    add b
    cp $7e
    cp $01
    db $fd
    ld [bc], a
    ei
    call nz, $ef3f
    jr jr_0b7_77e4

    jr jr_0b7_77d6

    or b
    rst $18
    cp $df
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    ccf
    rst $18
    jr nc, @+$01

jr_0b7_7805:
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    pop af
    ld c, $e7
    add hl, de
    add a
    ld a, c
    jp $f13c


    ld c, $fa
    dec b
    call c, $8f23
    ld [hl], b
    jp $e1bc


    sbc [hl]
    ret nz

    ccf
    add [hl]
    ld a, c
    ld de, $40ee
    cp a
    ld hl, sp+$07
    rrca
    ldh a, [$f0]
    rst $38
    rrca
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    cp $00
    cp $01
    db $fd
    ld [c], a
    ei
    rla
    rst $30
    ld [$08ef], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_0b7_7805

    ld b, b
    ld a, a
    add b
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    cp $03
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cp $fc

jr_0b7_7861:
    cp $f8
    db $fd
    ldh a, [rNR30]
    ldh [$35], a
    pop bc
    ld l, e
    jp $8356


    xor [hl]
    dec b
    ld e, [hl]
    ld [$8ebf], sp
    ld sp, hl
    db $fc
    ld [hl], e
    ld sp, hl

jr_0b7_7877:
    ld b, $c3
    inc a
    inc h
    db $db
    rst $38
    ld bc, $37ce
    sbc b
    ld l, d
    ld d, b
    or l
    jr nc, jr_0b7_7861

    ldh [$37], a
    ld h, b
    cp a
    jr nc, @-$1f

    rst $08
    ccf
    jr jr_0b7_7877

    jr nz, @-$3f

    ld a, a
    ld a, a
    add b
    rst $38
    add c
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    db $fc
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    rrca
    cp $1c
    push af
    ld h, b
    xor d
    add b
    ld e, a
    ld bc, $bf07
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp a
    ld sp, hl
    rlca
    add $3b
    ld c, $f2
    adc [hl]
    ld [hl], e
    ld c, [hl]
    or e
    inc hl
    db $dd
    ld [hl], c

jr_0b7_78d5:
    adc [hl]
    sbc [hl]
    ld h, c
    ld a, a
    add e
    db $fc
    dec a
    ret nz

    ld [$5500], a
    ld bc, $1fbf
    rst $38
    ld a, a
    pop hl
    or l
    res 1, h
    di
    adc h
    di
    jr jr_0b7_78d5

    ld a, b
    add a
    ld b, b
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
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
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    xor e
    nop
    ld d, l
    nop
    cp $00
    rst $38
    db $fc
    rst $38
    ei
    rst $38
    cp $fa
    ld hl, sp-$2b
    ret nz

    xor a
    ld bc, $065f
    cp a
    jr jr_0b7_79ae

    jr nz, @+$01

    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
    rst $38
    rst $38
    pop bc
    pop bc
    ld a, [hl]
    ld a, [hl]
    rst $08
    rst $08
    ccf
    ccf
    inc bc
    inc bc
    dec b
    dec b
    rlca
    rlca
    jr nz, @+$01

    ldh [rIE], a
    ccf
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
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
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld e, b
    rra
    xor [hl]
    rlca
    push af
    ld bc, $80fa
    ld a, l
    ld h, b
    cp $18
    rst $38
    ld a, $fd
    rst $38
    ldh a, [$3f]
    ldh a, [$3f]
    ldh a, [$7f]
    rst $38
    ld a, a
    ldh a, [$7f]
    ldh a, [$7f]
    ldh a, [rIE]
    ld hl, sp-$01
    ld d, a
    rlca
    xor d
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$19
    cp a
    cp $bf
    pop hl
    ccf
    ldh [$3f], a
    ldh [$7f], a
    ldh [$bf], a

jr_0b7_79ae:
    ldh [rIE], a
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
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
    ld [c], a
    rst $38
    rra
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld a, a
    rst $38
    xor d
    add b
    rst $38
    ld b, b
    ld a, a
    ccf
    cp [hl]
    rra
    db $dd
    rrca
    db $ec
    rlca
    db $f4
    add a
    ld l, d
    jp $e135


    ld a, [$1de0]
    ldh a, [rIF]
    ld hl, sp+$0f
    cp $09
    rst $38
    add sp, -$01
    cp h
    rra
    ld d, a
    inc bc
    ld a, [$fd00]
    db $fc
    dec bc
    rst $38
    db $fc
    rst $38
    dec bc
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$00ff], sp
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
    db $fc
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
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    cp b
    ccf
    rst $10
    rlca
    cp $c0
    ccf
    ld hl, sp-$01
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
    ld d, l
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    xor a
    rrca
    ld d, l
    nop
    rst $38
    add b
    ld a, a
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    db $f4
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $ffff
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$1fff], sp
    rst $30
    ccf
    ld a, [c]
    rst $38
    jp nc, Jump_000_13bf

    or $33
    rst $38
    di
    ld a, $e3
    inc l
    rst $20
    ld a, h
    rst $00
    ret c

    adc a
    or b
    rra
    ld h, b
    ccf
    rst $38
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
    ldh a, [rIE]
    ld e, a
    rrca
    ld [$ff00], a
    ldh [$1f], a
    rst $38
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    ld bc, $00fe
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
    ldh a, [rIE]
    rrca
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38

jr_0b7_7af7:
    rst $38
    rst $38
    jr nz, jr_0b7_7af7

    inc hl
    db $fc
    and e
    ld a, [hl]
    ld d, c
    cp $91
    cp $11
    rst $38
    db $10
    rst $38
    ld hl, sp+$2f
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    ld de, $11ff
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ret


    rst $38
    add hl, sp
    ccf
    rlca
    rlca
    ldh [$e0], a
    sbc h
    ld a, h
    adc d
    cp $89
    ld a, a
    rst $38
    sbc [hl]
    rst $38
    ld l, $ff
    ld e, $ff
    add a
    ld a, a
    adc e
    ccf
    adc $3f
    add $1f
    pop hl
    ld [c], a
    ld [bc], a
    di
    inc bc
    ldh a, [$f0]
    ld sp, hl
    ld bc, $07f8
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
    ret nz

    rst $38
    ccf
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld de, $11ff
    rst $38
    ld de, $90ff
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    ld hl, $21ff
    rst $38
    ld de, $11ff
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    ld c, b
    ld a, a
    jr z, jr_0b7_7bcd

    ret z

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
    ld bc, $0302
    inc b
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
    rlca
    ld [$0a09], sp
    dec bc
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
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc de
    inc d
    dec d

jr_0b7_7bcd:
    ld d, $17
    jr jr_0b7_7bd1

jr_0b7_7bd1:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_0b7_7c28

    ld a, [hl+]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0b7_7c11

jr_0b7_7c11:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b7_7c28:
    nop
    nop
    scf
    jr c, jr_0b7_7c66

    ld a, [hl-]
    dec sp
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
    dec a
    ld a, $3f
    ld b, b
    ld b, c
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
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    nop
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
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    nop
    nop
    nop
    nop
    nop
    nop

jr_0b7_7c66:
    nop
    nop
    nop
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
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
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, e
    ld e, h
    ld d, l
    ld e, l
    ld e, [hl]
    ld e, a
    nop
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
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
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
    nop
    nop
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
    ld bc, $0202
    ld [bc], a
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
    nop
    ld bc, $0202
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
    ld bc, $0201
    ld bc, $0303
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0201
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
    ld bc, $0101
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
    ld [bc], a
    ld bc, $0505
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
    ld [bc], a
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, [$7000]
    nop
    jp Jump_0b7_4083


    ld b, b
    ld b, b
    ld b, b
    ld [$0808], sp
    ld [$0000], sp
    inc d
    inc d
    and a
    and a
    ld e, e
    ld e, e
    rst $38
    rst $20
    rst $38
    sbc a
    rst $38
    ld [hl], e
    db $fd
    ret c

    rst $38
    rst $08
    rst $38
    inc de
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIE]
    rrca
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$7f], a
    add c
    rst $38
    rst $00
    rst $38
    cp a
    rst $28
    add a
    push af
    ld h, b
    cp $38
    rst $38
    rst $10
    rst $38
    ccf
    rst $38
    ld l, e
    ei
    ei
    dec sp
    dec sp
    inc sp
    inc sp
    inc sp
    inc sp
    add a
    add a
    rst $30
    rst $30
    db $dd
    db $dd
    rst $38
    rst $38
    rst $38
    ld b, $ff
    ld [bc], a
    cp $02
    rst $38
    ld de, $09ff
    rst $38
    nop
    rst $38
    ld [$04ff], sp
    add c
    add c
    jr nz, @+$22

    add hl, bc
    add hl, bc
    ld h, $26
    adc l
    adc l
    db $db
    db $db
    cp h
    cp h
    ld h, b
    ld h, b
    rst $38
    ldh a, [$fe]
    add c
    rst $38
    ld sp, hl
    ld e, a
    ld e, $ea
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$5f
    ldh [rIE], a
    and b
    rst $38
    and e
    rst $38
    xor l
    rst $38
    sbc l
    rst $38
    sub l
    rst $28
    adc l
    rst $38
    rst $00
    db $fd
    ldh [rIE], a
    ld hl, sp-$01
    rst $38
    xor e
    inc bc

jr_0b7_7eca:
    push af
    nop
    rst $38
    ldh [rIE], a
    sbc b
    ld b, a
    ld b, a
    ld [hl], b
    ld [hl], b
    ld e, b
    ld e, b
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, h
    ld d, h
    dec d
    dec d
    db $db
    db $db
    rst $38
    add b
    rst $38
    adc b
    rst $38
    ld b, h
    ld a, a
    ld b, b
    cp a
    jr nz, jr_0b7_7eca

    sub b
    rst $28
    adc c
    rst $10
    ld b, a
    db $eb
    and c
    push af
    ldh a, [$fe]
    db $fc
    rst $38
    and e
    cp $41
    ld hl, sp-$79
    ldh a, [rIF]
    ret nz

    ccf
    ldh a, [rIE]
    rrca
    rst $38
    rst $38
    rst $38
    ld d, l
    nop
    xor d
    nop
    rst $38
    ld a, h
    rst $38
    add e
    rst $38
    add hl, bc
    rst $38
    rra
    rst $38
    ld l, e
    rst $38
    rst $28
    rst $38
    xor e
    rst $38
    rst $28
    rst $38
    xor a
    cp $fe
    db $fd
    cp b
    db $eb
    ret nz

    ld e, a
    ld bc, $0fff
    rst $38
    di
    cp $fc
    ld d, l
    nop
    xor e
    nop
    rst $38
    inc bc
    ccf
    ccf
    rst $00
    rst $00
    ld d, b
    ld d, b
    ld d, [hl]
    ld d, [hl]
    xor d
    xor d
    xor d
    xor d
    ld a, [hl+]
    ld a, [hl+]
    add hl, sp
    add hl, sp
    ld [$0708], sp
    rlca
    inc de
    inc de
    ld c, a
    ld c, a
    xor e
    xor e
    nop
    nop
    jr nc, jr_0b7_7f7e

    add a
    add a
    ld a, [$55f8]
    nop
    cp a
    rlca
    ld hl, sp-$01
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    db $db
    cp a
    dec sp
    ld e, a
    rrca
    xor a
    rlca
    rst $10
    add e
    db $eb
    jp Jump_0b7_61f7


    ei
    pop hl
    db $fd
    pop hl
    rst $38
    rst $38
    push de
    add b
    xor d
    nop

jr_0b7_7f7e:
    ld a, a
    ld bc, $7efe
    db $fd
    ld hl, sp-$15
    ldh [$57], a
    nop
    cp a
    ld bc, $067f
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    inc sp
    inc sp
    call z, $85cc
    add l
    ret


    ret


    set 1, e
    rst $38
    rst $18
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld b, c
    ld hl, sp+$07
    ldh a, [rIF]
    ret nz

    ccf
    ldh [rIE], a
    cp b
    rra
    ld d, h
    rlca
    db $eb
    inc bc
    push af
    pop bc
    ei
    ld hl, $10fd
    ld a, [$fd10]
    ld [hl], b
    ld a, [$fdd0]
    ld [hl], b
    cp $50
    db $fd
    ldh a, [$fe]
    ld a, b
    rst $38
    ld hl, sp-$02
    ld hl, sp-$01
    ld hl, sp-$08
    rst $08
    ld sp, hl
    ccf
    rst $38
    sbc a
    rst $38
    pop af
    cp $06
    ld hl, sp-$03
    ld h, b
    ld [$d780], a
    inc bc
    xor a
    inc c
    ld a, l
    ld a, $f2
    ld a, a
    ret


    rst $38
    or e
    ld a, a
    adc [hl]
    add a
    ld sp, hl
    ld hl, sp-$01
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
    add e
    add e
    or h
    or h
    cp d
    cp d
