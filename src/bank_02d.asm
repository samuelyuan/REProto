SECTION "ROM Bank $02d", ROMX[$4000], BANK[$2d]

    ld d, e
    xor h
    db $10
    rst $28
    ld c, b
    or a
    and b
    ld e, a
    db $10
    rst $28
    add d
    ld a, l
    add b
    ld a, a
    ld d, b
    xor a
    and d
    ld e, l
    db $20, $df
    ld [bc], a
    db $fd
    and b
    ld e, a
    ldh [$5f], a
    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp e
    inc b
    ei
    db $10
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr nz, @+$01

    add b
    ld a, a
    call nz, $f03f
    rst $08
    db $fd
    db $e3
    db $76
    ld sp, hl
    sbc l
    cp $cf
    rst $38
    ld [hl], e
    ld a, a
    ccf
    dec a
    ld a, $3f
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld [hl], a
    ld h, a
    rst $20
    rst $00
    rst $10
    add a
    ld [hl], h
    ld h, a
    rst $20
    add b
    sbc a
    ld c, $3f
    ld e, $7e
    jr jr_02d_40bd

    ld h, b
    ld sp, hl
    ld b, c
    di
    pop bc
    ld h, e
    add e
    jp $8383


    ld [bc], a
    add [hl]
    ld [bc], a
    ld bc, $0600
    nop
    ld b, $00
    adc l
    nop
    call c, $fdc0
    ldh a, [$39]
    ldh a, [$71]
    ldh a, [$7f]
    ld sp, hl
    ld a, a
    rst $38
    ccf
    rst $30
    ccf
    pop hl
    ld a, a
    pop hl
    ld a, a
    pop hl
    ld a, a
    pop hl
    ld a, a
    pop hl
    ld a, a
    db $e3
    ld a, a
    jp $c3ff


    rst $38
    jp $c7fb


    rst $38
    rst $00
    rst $38
    rst $00
    nop
    nop
    ret nz

    nop
    rst $38
    nop
    rst $38

jr_02d_4097:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    and b
    nop
    ld a, h
    add b
    rst $28
    ld hl, sp-$01
    rst $38
    sbc a
    ld a, a
    ei
    rlca
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    rla
    add sp, -$7d
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    sbc [hl]

jr_02d_40bd:
    ld h, c
    ei
    inc b
    rst $28
    db $10
    cp a
    ld b, b
    cp l
    ld b, d
    sbc e
    ld h, h
    adc e
    ld [hl], h
    adc [hl]
    ld [hl], c
    sub d
    ld l, l
    jr c, jr_02d_4097

    ld c, $f1
    adc h
    ld [hl], e
    inc d
    db $eb
    ld b, b
    cp a
    daa
    jp c, $ff00

    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld bc, $02ff
    rst $38
    ld [hl+], a
    rst $18
    ld a, [bc]
    rst $38
    ld bc, $04ff
    ei
    ld b, b
    cp a
    add hl, bc
    rst $38
    ld e, b
    rst $38
    dec c
    rst $38
    ld de, $c8ff
    ccf
    and d
    rst $18
    db $ed
    di
    ld [hl], l
    ei
    rra
    rst $38
    rst $08
    rst $38
    db $eb
    rst $30
    push af
    ei
    db $fd
    cp $9e
    rst $38
    ccf
    ccf
    ccf
    ccf
    ld e, [hl]
    ccf
    ld l, c
    add hl, sp
    rst $38
    pop af
    rst $38
    pop hl
    rst $38
    pop bc
    ld sp, hl
    ld bc, $01e3
    rst $38
    rlca
    db $e3
    db $e3
    rst $20
    rst $20
    rst $20
    rst $20
    rst $08
    rst $08
    jp $86c3


    add a
    adc h
    adc a
    inc e
    rra
    add hl, sp
    ccf
    ld a, d
    ld a, a
    ld a, c
    ld a, a
    ld a, d
    ld a, [hl]
    ld [hl], d
    ld a, [hl]
    ld [hl], h
    ld a, h
    add hl, de
    add hl, de
    inc b
    dec b
    nop
    inc bc
    jr nc, jr_02d_4177

    ld [hl-], a
    inc sp
    inc sp
    inc sp
    ld [hl], d
    ld [hl], d
    ld h, d
    ld h, d
    ld h, d
    ld h, d
    ld l, e
    ld l, e
    nop
    nop
    nop
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
    rst $38
    nop
    push hl
    nop
    nop
    nop
    add b
    nop
    ld [hl], d
    add b
    db $e3
    db $fc
    rst $38
    rst $38
    ccf
    rst $38
    cp e
    ld b, a
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    ccf

jr_02d_4177:
    ret nz

    ld c, [hl]

jr_02d_4179:
    pop af
    ld c, a
    ldh a, [$5f]
    ldh [$35], a
    jp z, Jump_02d_42bd

    ld a, l
    add d
    ld l, l
    sub d
    ld e, l

jr_02d_4187:
    and d
    ld e, l
    and d
    ld e, l
    and d
    db $fd
    ld [bc], a
    cp l
    ld b, d
    cp c
    ld b, [hl]
    cp c
    ld b, [hl]
    ld a, c
    add [hl]
    ld a, c
    add [hl]
    ld [hl], c
    adc [hl]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    or b
    rst $08
    sub b
    rst $28
    jr nz, jr_02d_4187

    jr c, jr_02d_4179

    ld h, b
    sbc a
    ld [$34ff], sp
    rst $18
    inc a
    rst $18
    inc e
    rst $38
    inc e
    rst $38
    ld e, $ff
    sbc [hl]
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_02d_4214

    ld a, b
    ld a, b
    ldh a, [$f0]
    ldh a, [$f0]
    ld a, [$fefb]
    cp $fc
    db $fc
    ld sp, $05b1
    add a
    adc e
    adc a
    rst $00
    rst $38
    inc bc
    ld a, a
    add d
    cp $86
    cp $18
    ld hl, sp+$31
    pop af
    pop af
    pop af
    or e
    di
    dec de
    ei
    inc sp
    di
    ld [hl], c
    pop af
    ld b, c
    pop hl
    add a
    rst $00
    rlca
    rlca
    rlca
    rlca
    add a
    add a
    add a
    add a
    nop
    nop
    nop
    nop

jr_02d_4214:
    nop
    nop
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
    ld [bc], a
    nop
    nop
    nop
    nop

jr_02d_4225:
    nop
    nop
    nop
    add b
    nop
    ld [hl], b
    add b
    cp c
    ret nz

    ei
    add b
    ld a, b
    add b
    ld a, [$fe00]
    nop
    ld a, [$f900]
    nop
    cp l
    ld b, b
    cp l
    ld b, b
    db $fd
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    db $10
    xor $11
    xor $11
    xor $11
    sbc $21
    ld e, [hl]
    and c
    call c, $9c23
    ld h, e
    cp h
    ld b, e
    cp b
    ld b, a
    cp b
    ld b, a
    ld hl, sp+$47
    jr c, jr_02d_4225

    ld [hl], b
    adc a
    ld [hl], c
    adc [hl]
    ld [hl], c
    adc [hl]
    ld d, c
    xor [hl]
    ld hl, $a1de
    ld e, [hl]
    jr nz, @-$1f

    nop
    rst $38
    nop
    rst $38
    ld de, $10ff
    rst $38
    ld hl, $21ff
    rst $38
    inc hl
    rst $38
    ld h, [hl]
    rst $38
    db $76
    rst $38
    rst $38
    cp $fd
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    db $fc
    db $e3
    rst $30
    ld hl, sp-$41
    ld a, h
    rst $28
    sbc a
    rst $10
    rst $28
    rst $38
    di
    ld a, [$fffd]
    cp $ff
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$e0]
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld bc, $87fe
    ld a, b
    add [hl]
    ld a, c
    add h

Jump_02d_42bd:
    ld a, e
    sub h
    ld a, d
    ld a, c
    cp $8b
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    cp e
    nop
    inc bc
    nop
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
    or b
    nop
    ld a, e
    inc a
    ccf
    ld a, a
    rra
    ld a, a
    or c
    ld c, a
    or a
    ld c, b
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ld [hl], a
    adc b
    ld [hl], b
    adc a
    ld h, b
    sbc a
    add b
    ld a, a
    push hl
    dec sp
    rst $28
    ld sp, $b16e
    cp [hl]
    ld h, c
    inc a
    db $e3
    inc e
    db $e3
    inc d
    db $eb
    inc d
    db $eb
    dec a
    jp nz, $d728

    add hl, hl
    sub $29
    sub $69
    sub [hl]
    ld h, a
    sbc b
    ld h, l
    sbc d
    ld de, $31ee
    xor $40
    rst $38
    ld b, e
    db $fc
    pop bc
    cp $91
    cp $8a
    db $fd
    add d
    db $fd
    rlca
    ld hl, sp+$52
    db $fd
    ld d, b
    rst $38
    ld d, $fb
    dec h
    ld a, [$9d62]
    daa
    ld hl, sp+$0a
    push af
    ld h, c
    cp $e2
    rst $38
    ld l, c
    rst $30
    jp nz, $92fd

    db $fd
    ret nz

    rst $38
    add h
    ld a, a
    ld h, b
    sbc a
    or b
    rst $08
    db $e4
    di
    rst $30
    ld hl, sp-$42
    ld a, h
    rra
    rst $38
    rst $00
    rst $38
    pop hl
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    ccf
    cp a
    ccf
    ccf
    ccf
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, b
    or a
    ld h, b
    inc bc
    ret nz

    ld bc, $3180
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    ld bc, $8100
    nop
    adc b
    nop
    ld [$0300], sp
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
    ldh a, [rP1]
    rst $38
    nop
    rst $38
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
    nop
    or b
    ret nz

    ei
    db $fc
    rst $38
    rst $38
    cp a
    ld a, a
    jp $9f3f


    ld h, b
    cp a
    ld b, b
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    adc a
    ldh a, [$81]
    cp $00
    rst $38
    nop
    rst $38
    ld b, e
    cp h
    rst $38

jr_02d_43d1:
    nop
    ei
    inc b
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    rst $30

jr_02d_43db:
    ld [$609f], sp
    cp [hl]
    ld b, c
    rst $38
    nop
    xor b
    ld d, a
    or c
    ld c, [hl]
    cp e

jr_02d_43e7:
    ld b, h
    cp d
    ld b, l
    call nz, $863b
    ld a, c
    ld b, e
    cp h
    ld c, c
    or [hl]
    ld d, a
    xor b
    ld d, $e9
    cp h
    ld b, e
    inc l
    db $d3
    ld c, b
    rst $30
    add b
    ld a, a
    ld d, b
    xor a
    jr nc, jr_02d_43d1

    jr z, jr_02d_43db

    nop
    rst $38
    ld de, $20ee
    rst $18
    inc bc
    db $fc
    ld hl, $01de
    cp $00
    rst $38
    ld b, c
    cp [hl]
    ld [hl], d
    adc l
    jr nc, jr_02d_43e7

    ld [$03f7], sp
    db $fc
    ld bc, $40fe
    ccf
    and e
    rra
    cp b
    rst $00
    or $e1
    push af
    ld hl, sp-$43
    ld a, [hl]
    rst $18
    ccf
    or a
    rst $08
    ei
    rst $20
    pop af
    rst $38
    db $fc
    rst $38
    ld a, $3f
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld [hl], b
    ld a, [hl]
    nop
    cp h
    nop
    ld a, [hl]
    nop
    db $f4
    nop
    db $ec
    nop
    ld hl, sp+$00
    jr nc, jr_02d_4450

jr_02d_4450:
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0404], sp
    inc b
    inc b
    inc b
    inc b
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    dec c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec d
    ld d, $0d
    dec c
    dec c
    dec c
    dec c
    rla
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    jr jr_02d_4494

    dec c
    dec c
    dec c
    dec c
    add hl, de
    dec c
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc

jr_02d_4494:
    add hl, bc
    ld a, [de]
    dec de
    dec c
    dec c
    dec c
    dec c
    inc e
    dec e
    dec c
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld e, $1f
    jr nz, jr_02d_44ca

    ld [hl+], a
    inc hl
    inc h
    dec h
    dec c
    dec c
    dec c
    ld h, $09
    add hl, bc
    add hl, bc
    daa
    jr z, jr_02d_44e0

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_02d_44f0

    ld [hl-], a
    inc sp
    add hl, bc
    add hl, bc
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02d_4502

    ld a, [hl-]

jr_02d_44ca:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    inc b
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
    dec c

jr_02d_44e0:
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
    dec c

jr_02d_44f0:
    inc b
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
    dec c
    dec c
    dec c
    dec c
    inc b
    ld e, [hl]

jr_02d_4502:
    ld e, a
    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ld l, c
    add hl, bc
    add hl, bc
    ld l, d
    ld l, e
    ld l, h
    dec a
    dec a
    dec a
    inc b
    ld l, l
    ld l, [hl]
    ld h, b
    ld h, b
    ld h, b
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    dec c
    dec c
    inc b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    add hl, bc
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    dec c
    dec c
    inc b
    ld [hl], a
    add e
    add hl, bc
    add hl, bc
    nop
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
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    dec c
    dec c
    sbc e
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    sbc h
    sbc l
    inc b
    sbc [hl]
    sbc a
    and b
    and c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    and d
    and e
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    and h
    and l
    and [hl]
    and a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    xor b
    xor c
    xor d
    xor e
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
    nop
    nop
    nop
    ld b, $00
    nop
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
    nop
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    ld b, $00
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
    nop
    nop
    ld b, $00
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
    dec b
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    ld bc, $0103
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    ld b, $01
    ld bc, $0101
    nop
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
    ld b, $01
    ld bc, $0101
    nop
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
    ld bc, $0601
    ld b, $06
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
    inc b
    inc b
    inc b
    nop
    ld b, $05
    dec b
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
    nop
    dec b
    dec b
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
    dec b
    dec b
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
    jr nz, jr_02d_4677

jr_02d_4677:
    inc b
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
    ld b, $05
    ld b, $01
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
    nop
    nop
    jr nz, jr_02d_46ab

jr_02d_46ab:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rIF], a
    ldh a, [rIF]
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
    db $fc
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
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
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    ld bc, $01ff
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
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
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
    inc bc
    ld hl, sp+$07
    rst $38
    rrca
    rst $38
    rrca
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
    nop
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
    rra
    ldh [$03], a
    db $fc
    rst $38
    nop
    rst $38
    nop
    add b
    ld a, a
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
    ldh [$1f], a
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
    nop
    ldh [$1f], a
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
    ret nz

    rst $38
    inc bc
    nop
    rst $38
    nop
    dec hl
    call nc, $ff00
    db $ec
    rst $38
    cp $ff
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
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    nop
    jp $ff3f


    ccf
    db $fc
    ccf
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    nop
    rst $38
    ld l, h
    sbc a
    dec [hl]
    sbc $38
    rst $18
    ld a, [bc]
    db $fd
    xor b
    rst $18
    ld de, $b1fe
    sbc $58
    rst $38
    sbc d
    db $fd
    db $fd
    jp c, $fe89

    sbc b
    rst $38
    ld a, [$98df]
    rst $38
    adc b
    rst $38
    adc $ff
    call z, $ceff
    rst $38
    adc $ff
    adc $ff
    adc $ff
    db $ec
    rst $38
    db $ec
    rst $38
    xor $ff
    xor $ff
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    cp $f1
    rst $18
    ldh [$03], a
    db $fc
    rlca
    ld hl, sp+$0e
    pop af
    ld e, $e1
    ld b, h
    add e
    ld [hl], a
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0f00
    nop
    nop
    rst $38
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $08
    ccf
    db $fc
    rst $38
    call $fef2
    ld bc, $51ae
    ld b, c
    cp [hl]
    ld b, h
    rst $38
    ld l, h
    rst $38
    adc h
    rst $38
    ld h, h
    cp a
    ld b, h
    cp a
    inc b
    rst $38
    sub h
    ld l, a
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc d
    rst $28
    dec b
    cp $06
    rst $38
    inc b
    rst $38
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    adc e
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, l
    cp e
    ld c, [hl]
    rst $30
    cp h
    rst $08
    ld e, c
    cp a
    rst $30
    ld a, a
    inc de
    inc de
    ld b, a
    ld b, a
    ld c, a
    ld c, a
    dec de
    rra
    jr nz, jr_02d_49e9

    ld l, a
    ld a, a
    adc a
    rst $38
    rst $18
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    add c
    rst $38
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
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
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
    dec bc
    dec bc
    ld bc, $0101

jr_02d_49e9:
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
    rra
    rra
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
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
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
    jp nc, Jump_000_003f

    rst $38
    nop
    nop
    ld a, l
    ld [bc], a
    dec e
    cp $d5
    ld [$807f], a
    cp a
    ld b, b
    dec h
    sbc $03
    cp $02
    rst $38
    ld a, [hl-]
    rst $00
    sbc d
    ld h, a
    db $d3
    ld l, $28
    rst $10
    xor e
    ld d, [hl]
    adc a
    ld [hl], d
    sbc d
    ld h, a
    ld d, d
    xor a
    ld [bc], a
    rst $38
    ld [de], a
    rst $28
    rst $00
    ccf
    rlca
    rst $38
    add a
    rst $38
    add e
    rst $38
    add e
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    add a
    rst $38
    add e
    rst $38
    add c
    rst $38
    add l
    ei
    sbc a
    rst $20
    xor a
    db $dd
    sbc d
    rst $38
    db $e4
    rst $38
    ret


    cp $96
    ld hl, sp+$70
    ldh [$fc], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $28
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    xor $ff
    ld l, a
    rst $38
    add a
    rst $38
    and l
    rst $38
    ld h, a
    rst $38
    inc sp
    rst $38
    dec e
    rst $38
    rlca
    rst $38
    add l
    rst $38
    ld h, d
    ld a, [hl]
    inc [hl]
    inc a
    jr jr_02d_4ab6

    ldh [$e0], a
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08

jr_02d_4ab6:
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    inc l
    inc l
    nop
    nop
    ld bc, $0701
    rlca
    rlca
    rlca
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
    ld a, a
    ld a, a
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
    rst $38
    rst $38
    ccf
    ccf
    rst $08
    rrca
    di
    add e
    ld a, h
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
    rst $38
    nop
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
    cp a

jr_02d_4b1d:
    rst $38
    nop

jr_02d_4b1f:
    rst $38
    ld a, e
    rlca
    and a
    ld a, b
    rst $38
    nop
    cp $01
    ld [c], a
    dec e
    jp $ff3c


    nop
    xor d
    ld d, l
    or a
    ld c, b
    rst $38
    nop
    xor l
    ld d, d
    sbc e
    ld h, h
    ld [hl-], a
    call z, $ef10
    jr nz, jr_02d_4b1d

    jr nz, jr_02d_4b1f

    ld [hl+], a
    rst $18
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld b, d
    rst $38
    ld d, d
    rst $28
    rst $00
    ei
    db $dd
    and $fb
    call $fed3
    db $e4
    rst $38
    ret c

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    pop af
    rst $38
    ccf
    rst $38
    jp $7c3f


    add e
    db $fd
    ld [bc], a
    inc bc
    inc b
    rlca
    nop
    add hl, bc
    nop
    nop
    ret nz

    rst $38
    ldh [$fe], a
    ld hl, sp+$7e
    cp $5c
    db $fc
    ld c, b
    ld hl, sp-$18
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$28
    ret c

    adc b
    adc b
    adc b
    adc b
    ld [$0808], sp
    ld [$0c0c], sp
    ld [$0808], sp
    ld [$0c0c], sp
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
    ld b, $06
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
    nop
    ld a, [hl]
    ld a, [hl]
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
    add b
    ld a, a
    ret nz

    cp a
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

    ccf
    ccf
    ret nz

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
    ret nz

    nop
    ret nz

    nop

jr_02d_4c07:
    ret nz

    nop
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ret nz

    ei
    inc b
    di
    inc c
    scf
    ret z

    cp e
    ld b, h
    jp c, $ea25

    dec d
    ld sp, hl
    ld b, $6d
    sub d
    or b
    ld c, a
    ld h, b
    sbc a
    jr nz, jr_02d_4c07

    ld hl, $01df
    rst $38
    ld b, c
    rst $38
    db $10
    rst $38
    jr @+$01

    jr @+$01

    inc [hl]
    rst $38
    dec sp
    db $fc
    inc d
    ld hl, sp+$18
    ldh a, [$b3]
    ret nz

    ld c, a
    add b
    rst $28
    add b
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $83
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    jp $e7ff


    ld a, a
    ld [hl], a
    ld a, a
    ccf
    ccf
    ld a, a
    rra
    rst $38
    rra
    add b
    add b
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    db $e3
    db $e3
    db $e3
    db $e3
    and e
    and e
    jp $e3c3


    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    jp $c3c3


    jp $8383


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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
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
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $fe
    ldh a, [$fe]
    ld [c], a
    sbc h
    ld l, b
    sub [hl]
    xor b
    ld d, [hl]
    ld a, [de]
    db $e4
    ld a, [hl+]
    call nc, $b44a
    ld e, h
    and d
    add b
    ld a, [hl]

jr_02d_4cfe:
    call nz, $803e
    ld a, [hl]
    inc b
    cp $26
    cp $62
    cp $26
    cp $2c
    db $fc
    jr nc, jr_02d_4cfe

    ld l, h
    ld a, [c]
    cp $fe
    cp $fe
    cp $fe
    ld c, $fe
    adc $3e
    ld [c], a
    ld e, $33
    adc $9b
    ld h, [hl]
    or $02
    and $0e
    or $0e
    or $1e
    or $3e
    or $7e
    or $fe
    or [hl]
    cp $f6
    cp $fe
    cp $fe
    cp $f6
    cp $f6
    cp $f4
    cp $fe
    cp $f6
    cp $fe
    cp $fe
    cp $fe
    cp $be
    cp $be
    cp $de
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $ff01
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
    ld bc, $0300
    nop
    rlca
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
    ldh a, [rIE]
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
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
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
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
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
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
    rst $38
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
    ld bc, $0200
    ld bc, $0201
    ld bc, $0102
    ld [bc], a
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
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    rst $38
    inc bc
    cp $02
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ei
    ei
    rst $38
    ld hl, sp-$02
    ld sp, hl
    cp $f9
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
    rst $38
    db $fc
    jp $80ff


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
    rst $30
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld l, a
    db $10
    ld a, $41
    ld a, $40
    ld h, $58
    ld e, $60
    jr jr_02d_4f02

    jr nz, jr_02d_4efc

    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $07ff
    ld hl, sp+$08
    pop hl
    ld bc, $0784
    ld bc, $031f
    ld a, a
    inc b
    db $fc
    ld bc, $01f1
    add c
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ld [$011f], sp
    rst $38
    rlca
    ld hl, sp+$1f
    add b
    ld a, a
    nop
    ld hl, sp+$00
    ret nz

    nop
    add c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

jr_02d_4efc:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02d_4f02:
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $01
    nop
    rst $38
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld [hl], b
    ld c, a
    ld c, h
    ld [hl], e
    ld b, d
    ld a, l
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld hl, sp+$07
    ld a, $c1
    jr nz, jr_02d_4f7b

    inc a
    inc hl
    ccf
    jr nc, jr_02d_4f7d

    ccf
    ld [hl+], a
    inc hl
    jr nc, jr_02d_4f76

    inc h
    inc a
    jr nc, jr_02d_4f89

    jr c, jr_02d_4f8b

    inc h
    daa
    jr nc, jr_02d_4f81

    jr nc, jr_02d_4f82

    jr c, jr_02d_4f8c

    jr c, jr_02d_4f8e

    inc a
    inc a
    ld a, $22
    ccf
    jr nc, jr_02d_4f9c

    inc a
    inc hl
    ccf
    jr nz, jr_02d_4fa1

    inc a
    inc hl
    ccf
    jr nz, jr_02d_4f96

    jr nc, jr_02d_4f89

    ccf
    jr nz, jr_02d_4fab

    jr nz, jr_02d_4fad

    jr nz, jr_02d_4faf

    jr nz, jr_02d_4fb1

    jr nz, jr_02d_4fb3

    ldh a, [rIF]

jr_02d_4f76:
    rst $38
    nop
    cp l
    ld b, d
    ld e, a

jr_02d_4f7b:
    and b
    ld e, a

jr_02d_4f7d:
    and b
    db $db
    inc h
    nop

jr_02d_4f81:
    rst $38

jr_02d_4f82:
    add b
    rst $38
    rst $38
    rst $38
    cp a
    sbc a
    ccf

jr_02d_4f89:
    rra
    ccf

jr_02d_4f8b:
    rra

jr_02d_4f8c:
    ccf
    rra

jr_02d_4f8e:
    ccf
    rra
    cp a
    rra
    cp a
    rra
    cp a
    rra

jr_02d_4f96:
    cp a
    rra
    cp a
    rra
    cp a
    rra

jr_02d_4f9c:
    cp a
    rra
    cp a
    rra
    xor a

jr_02d_4fa1:
    rra
    xor a
    rra
    xor a
    rra
    xor a
    rra
    xor a
    rra
    xor a

jr_02d_4fab:
    rra
    xor a

jr_02d_4fad:
    rra
    xor a

jr_02d_4faf:
    rra
    rrca

jr_02d_4fb1:
    rst $30
    rrca

jr_02d_4fb3:
    rst $30
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ld a, a
    cp a
    ld a, a
    cp [hl]
    rst $38
    ld a, h
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
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
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
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
    ret nz

    rra
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$f0]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$20
    jr @-$0e

    ld [$08f0], sp
    jr c, jr_02d_5038

jr_02d_5038:
    jr jr_02d_503a

jr_02d_503a:
    ld [$08c0], sp
    ldh [$08], a
    ldh a, [rP1]
    ld a, b

jr_02d_5042:
    ld b, $1c
    rlca
    inc c
    rlca
    inc c
    rlca
    ld b, $07
    ld b, $07
    and $07
    cp $3f
    rst $00
    rrca
    di
    adc a
    ld [hl], e
    rst $00
    dec sp
    ld h, e
    sbc a
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
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $20
    jr jr_02d_5042

    inc l
    add d
    ld a, l
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
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    ld bc, $01fe
    cp $01
    cp $01
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
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    rst $38
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
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0302
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
    dec b
    ld b, $07
    ld [$0000], sp
    nop
    nop
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $09
    nop
    nop
    nop
    rrca
    stop
    nop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_02d_51cc

jr_02d_51cc:
    add hl, de
    ld a, [de]
    dec de
    inc e
    nop
    nop
    dec e
    ld e, $1f
    jr nz, jr_02d_51f7

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_02d_5209

    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    jr nz, jr_02d_5215

    cpl
    jr nc, jr_02d_521b

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    nop
    jr c, jr_02d_522c

    ld a, [hl-]
    dec sp
    jr nz, jr_02d_5233

jr_02d_51f7:
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    ld b, [hl]
    ld b, a
    jr nz, jr_02d_524d

    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_02d_5209:
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    scf
    ld d, c
    scf
    nop
    nop
    ld d, d
    ld d, e
    ld d, h

jr_02d_5215:
    ld d, l
    ld d, [hl]

jr_02d_5217:
    ld b, l
    ld d, a
    ld e, b
    ld e, c

jr_02d_521b:
    scf
    scf
    scf
    scf
    scf
    nop
    nop
    nop
    ld de, $5b5a
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    scf
    ld h, b

jr_02d_522c:
    ld h, c
    scf
    scf
    scf
    nop
    nop
    nop

jr_02d_5233:
    nop
    nop
    nop
    ld h, d
    jr nz, jr_02d_529c

    scf
    scf
    ld h, h
    ld h, l
    scf
    scf
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, a
    jr nz, @+$6a

    ld l, c
    scf
    ld l, d
    ld l, e

jr_02d_524d:
    ld l, h
    ld l, l
    ld l, [hl]
    nop
    nop
    nop
    nop
    nop
    ld l, a
    jr nz, jr_02d_52c8

    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    nop
    nop
    nop
    nop
    add hl, bc
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
    nop
    nop
    nop
    nop
    add h
    jr nz, jr_02d_5297

    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    nop
    nop
    add hl, bc
    adc [hl]
    jr nz, jr_02d_52a6

    jr nz, jr_02d_5217

    sub b
    sub c
    sub d
    sub e
    jr nz, jr_02d_52ae

    jr nz, jr_02d_52b0

    nop
    sub h
    sub l
    jr nz, jr_02d_52b5

    jr nz, jr_02d_52b7

jr_02d_5297:
    jr nz, jr_02d_52b9

    sub [hl]
    sub a
    sbc b

jr_02d_529c:
    sbc c
    sbc d
    sbc d
    sbc e
    sbc h
    sbc l
    jr nz, jr_02d_52c4

    jr nz, jr_02d_52c6

jr_02d_52a6:
    sbc [hl]
    sbc a
    and b
    nop
    nop
    nop
    nop
    nop

jr_02d_52ae:
    nop
    nop

jr_02d_52b0:
    jr nz, jr_02d_52d2

    jr nz, jr_02d_52d4

    and c

jr_02d_52b5:
    and d
    and e

jr_02d_52b7:
    nop
    nop

jr_02d_52b9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_02d_52e2

    and h
    and l

jr_02d_52c4:
    and [hl]
    nop

jr_02d_52c6:
    nop
    nop

jr_02d_52c8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02d_52d2:
    nop
    nop

jr_02d_52d4:
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    nop
    nop

jr_02d_52e2:
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    inc b
    inc b
    ld bc, $0101
    ld b, c
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0601
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    ld bc, $0006
    nop
    inc b
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    dec b
    dec b
    dec b
    nop
    ld b, $00
    nop
    nop
    inc b
    ld bc, $0101
    ld bc, $0321
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
    inc h
    inc b
    inc b
    nop
    nop
    nop
    ld bc, $0300
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
    dec b
    nop
    nop
    inc bc
    inc bc
    nop
    nop
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
    nop
    inc bc
    inc bc
    nop
    ld b, $06
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
    nop
    nop
    ld b, $00
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc bc
    ld [bc], a
    dec b
    rlca
    ld [$1807], sp
    rrca
    db $10
    rra
    jr nz, jr_02d_5474

    ld b, b
    ccf
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $00
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0300
    ld bc, $0003
    rlca

jr_02d_5474:
    ld [bc], a
    rrca
    rlca
    rrca
    inc bc
    rra
    nop
    ccf
    db $10
    ccf
    nop
    ld a, a
    nop
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    inc a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ret nc

    cpl
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
    cp a
    nop
    rst $00
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
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    inc bc
    ld bc, $0306
    inc b
    rlca
    ld [$1807], sp
    rlca
    jr jr_02d_54c8

    inc a
    nop
    ld a, a

jr_02d_54c8:
    inc d
    ld l, e
    ld a, a
    add b
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    add b
    rst $38
    pop bc
    cp $30
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$01
    cp $09
    or $0f
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $80
    ld a, a
    inc a
    jp Jump_000_30cf


    rst $38
    nop
    rst $38
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
    nop
    ld bc, $0100
    ld bc, $0103
    ld [bc], a
    inc bc
    rlca
    ld [bc], a
    inc b
    rlca
    inc c
    rlca
    jr jr_02d_551f

    inc e
    rrca
    ccf
    rra
    inc sp
    rra
    ld l, a
    inc sp
    ld a, e
    daa
    rst $08
    ld [hl], a
    rst $20
    ld a, a
    and e

jr_02d_551f:
    rst $18
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0103
    rlca
    ld [bc], a
    rrca
    nop
    rrca
    nop
    rra
    nop
    ccf
    nop
    ld a, a
    ld bc, $3f7e
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
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    xor $00
    ld a, l
    add b
    rra
    ldh [$ef], a
    db $10
    ld a, a
    add b
    rla
    add sp, $03
    db $fc
    pop bc
    ld a, $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a

jr_02d_557d:
    ld b, b
    rra
    ldh [$c7], a
    jr c, jr_02d_557d

    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0100
    ld bc, $0102
    ld [bc], a
    inc bc
    ld b, $03
    inc b
    rlca
    ld c, $05
    dec bc
    rrca
    add hl, de
    rrca
    ld de, $331f
    rra
    ld a, [hl-]
    daa
    ld l, e
    scf
    ld e, a
    ld l, a
    or $4f
    sbc e
    rst $28
    ld sp, hl
    adc a
    dec d
    rst $38
    cp [hl]
    ld e, a
    rst $00
    ccf
    ld b, a
    rst $38
    rst $08
    ld a, a
    rst $00
    ld a, a
    or e
    rst $38
    adc a
    rst $38
    sub a
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
    rlca
    ld [bc], a
    rrca
    ld bc, $000f
    rra
    nop
    ccf
    db $10
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    sub b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ld c, a
    or b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rlca
    nop
    add b
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
    ccf
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    and c
    nop
    nop
    ld bc, $0103
    nop
    inc bc
    ld b, $03
    dec b
    ld b, $0c
    rlca
    dec bc
    dec c
    jr jr_02d_5671

    ld bc, $3f1f
    inc de
    rrca
    inc sp
    ld a, l
    inc hl
    ld d, d
    ld l, l
    add sp, $77
    sub c
    rst $38
    jp hl


jr_02d_5671:
    sbc a
    sub [hl]
    ld l, a
    db $e3
    rra
    push de
    cpl
    and d
    rst $38
    ld [hl], a
    cp $7f
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    sbc e
    rst $38
    cpl
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
    rst $18
    rst $38
    rst $38
    cp $fe
    cp $fd
    cp $ff
    db $fc
    cp $f9
    rst $38
    ld sp, hl
    db $fd
    ei
    rst $38
    di
    ld a, e
    rst $30
    rst $38
    rst $20
    rst $30
    rst $28
    rst $38
    rst $28
    rst $28
    reti


    ret


    ret nc

    pop af
    sub b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $02
    rra
    inc b
    dec de
    ld c, $3f
    rra
    ld a, a
    jr c, jr_02d_5743

    jr c, @+$01

    ld h, b
    rst $38
    ldh a, [rIE]
    and b
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
    ld [bc], a
    db $fd
    inc bc
    db $fc
    rrca
    ldh a, [$6f]
    sub b
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $e4
    dec de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    cp $00
    add l
    nop
    ret nz

    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    dec b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ldh a, [rP1]
    cp $00
    db $fd
    nop
    rst $38
    ld bc, $03f9
    cp $03
    ld a, [c]
    rlca
    or $05
    db $e3
    inc c
    rst $18
    dec c
    rst $00
    rra
    or d
    rra
    xor d
    scf
    ld a, e
    daa
    dec d
    ld l, a
    ld a, [$e24f]
    sbc a
    pop hl
    sbc a
    ld a, e
    sbc a
    xor a
    ld a, a
    xor a
    ld a, a
    daa
    rst $38
    ld e, e
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    sbc a

jr_02d_5743:
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $ff
    cp $bd
    sbc $3e
    sbc l
    cp c
    db $dd
    ei
    db $fd
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fc
    db $fd
    db $fc
    cp $fc
    rst $38
    ret z

    rst $18
    call c, $bfdf
    rst $28
    cp [hl]
    db $e3
    ccf
    ld [hl-], a
    ld sp, hl
    ld b, b
    adc $63
    pop hl
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld a, h
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rLCDC], a
    cp a
    cp $01
    xor a
    ret nc

    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    nop
    rst $38
    dec c
    ld a, [c]
    rst $30
    ld [$e01f], sp
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $01ff
    cp $03
    scf
    ld [bc], a
    ld c, l
    ld b, $9e
    dec b
    ld c, $0d
    inc e
    rrca
    rst $18
    inc de
    rst $30
    dec de
    ld b, e
    ccf
    ld c, d
    scf
    ld h, e
    rra
    ld l, e
    rra
    ld a, e
    rrca
    db $db
    cpl
    db $eb
    rra
    rst $30
    rra
    ld [hl], a
    sbc a
    rst $28
    sbc a
    ld a, a
    rst $08
    ld l, a
    rst $18
    ld [hl], a
    rst $28
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
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
    ei
    rst $38
    di
    cp $f6
    db $fc
    db $e4
    db $fc
    db $ec
    ld hl, sp-$32
    ld hl, sp-$24
    ld hl, sp-$68
    db $fc
    sbc h
    db $76
    cp [hl]
    cp $3f
    pop af
    ld [hl], e
    ldh [$78], a
    ret z

    call $efc4
    add e
    add e
    add c
    add c
    add b
    add b
    add b
    add b
    ret c

    ret c

    rst $28
    rst $28
    rst $38
    rra
    rst $38
    rlca
    ld e, a
    inc bc
    push af
    inc bc
    di
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    rlc a
    push af
    inc bc
    cp $01
    rst $38
    inc b
    rst $38
    ld b, $ff
    di
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    rrca
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$5f
    and b
    cp a
    ld b, b
    rst $38
    nop
    ccf
    ret nz

    cp $01
    rst $38
    ld bc, $03fd
    rst $38
    inc bc
    ld a, [$fc07]
    rlca
    cp $05
    ld hl, sp+$0f
    rst $28
    add hl, de
    or $1d
    db $f4
    rra
    db $f4
    ccf
    db $f4
    ccf
    jp $d17f


    ld a, a
    sub e
    rst $38
    sbc [hl]
    ei
    dec sp
    rst $38
    ei
    ld a, [hl]
    cp l
    ld a, [hl]
    ld a, [hl]
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
    cp $ff
    rst $38
    cp $fc
    rst $38
    rst $38
    db $fd
    ei
    db $fd
    dec b
    dec b
    dec c
    dec c
    dec bc
    dec bc
    dec bc
    dec bc
    ld a, [de]
    ld a, [de]
    ld [de], a
    ld [de], a
    jr c, jr_02d_5916

    ld [hl+], a
    ld l, $70
    ld a, a
    ld [de], a
    rra
    ld e, $1f
    dec [hl]
    dec a
    ld hl, $403f
    ld a, a
    nop
    ccf
    ld l, h
    ld l, a
    and d
    rst $38
    cp l
    db $e3
    ld l, h
    or e
    ld c, b
    or a
    pop de
    rst $38
    ld b, e
    ld a, a
    inc bc
    ld b, a
    inc bc
    inc bc
    inc bc
    inc hl
    inc hl
    ld h, a
    dec c
    rra
    dec c
    rrca
    rrca
    ld e, a
    rrca
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    ccf
    ccf
    cp a
    ld a, a
    rst $38

jr_02d_5916:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    cp a
    nop
    add b
    add b
    ld a, b
    ld hl, sp+$07
    cp $01
    ld a, [hl]
    add c
    cp $01
    ld a, [$fa0d]
    dec c
    xor $1d
    db $fc
    rra
    cp $3d
    ei
    dec a
    cp c
    ld a, a
    rst $28
    ld a, l
    ld e, l
    rst $38
    sbc c
    rst $38
    cp c
    rst $38
    ld a, c
    rst $38
    ld a, c
    rst $38
    ld a, l
    rst $38
    db $fd
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
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    ld a, [$3dff]
    or $ff
    inc [hl]

jr_02d_5974:
    ld a, a
    add sp, $7e
    jp hl


    reti


    rst $38
    ld sp, hl
    rst $18
    reti


    rst $38
    rst $38
    rst $38
    ret nz

    ret nz

    and b
    and b
    cp b
    cp b
    db $fc
    db $fc
    db $fc
    db $fc
    ld [hl], b
    ld [hl], b
    jr c, jr_02d_59c6

    jr nc, jr_02d_59c0

    add b
    add b
    jr nz, jr_02d_5974

    nop
    ldh [rNR41], a
    ldh [$c0], a
    ret nz

    nop
    add b
    ld b, b
    ret nz

    ld b, b
    ret nz

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
    add b
    add b

jr_02d_59c0:
    add b
    add b
    add b
    add b
    add b
    add b

jr_02d_59c6:
    nop
    add b
    nop
    add b
    nop
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    cp $c0
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
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
    nop
    nop
    nop
    nop
    inc bc
    inc bc
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
    rrca
    rrca
    rrca
    rrca
    rra
    rra
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
    ldh a, [$f0]
    cp $fe
    ei
    rst $38
    nop
    nop
    ldh a, [$f0]
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
    ld a, a
    ld a, a
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    or $fb
    nop
    nop
    rlca
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
    ret nz

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
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld b, b
    ld b, b
    add b
    add b
    add b
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    jp $cdff


    di
    db $ed
    di
    rst $30
    ei
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $00
    ld hl, sp-$3c
    rst $38
    rst $18
    rst $18
    cp a
    ld a, a
    cp a
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
    ld a, a
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
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    ld [bc], a
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
    ld c, $f8
    inc e
    ld hl, sp+$1c
    ld a, [$fa3c]
    dec a
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
    rst $08
    rst $38
    rst $38
    adc a
    rst $38
    rst $08
    db $fd
    rst $38
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ld a, a
    cp a
    rst $38
    rst $38
    rst $38
    ld a, [c]
    rst $38
    ld a, [hl]
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
    rst $28
    ld a, a
    cp $ff
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
    cp l
    rst $38
    pop de
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    db $fc
    rst $38
    cp $ff
    cp $76
    cp $40
    ldh a, [$f8]
    cp $f6
    ld hl, sp-$0a
    ld hl, sp-$0a
    ld hl, sp-$02
    ldh a, [$fd]
    db $fc
    ld sp, hl
    db $fc
    ld sp, hl
    db $fc
    inc bc
    nop
    rrca
    nop
    rra
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
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ld [hl], b
    sub a
    rst $38
    rlca
    rst $38
    ld b, e
    cp a
    ret nc

    cpl
    ld hl, sp+$07
    xor $01
    add hl, de
    ldh [$3b], a
    db $fc
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
    rla
    dec sp
    rlca
    inc bc
    inc b
    inc bc
    nop
    inc hl
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$08
    ld sp, hl
    ldh a, [rIE]
    ld sp, hl
    cp $fe
    cp $fc
    cp $f8
    ld a, [$f8fa]
    ld a, [c]
    db $fc
    xor l
    ld hl, sp-$1b
    ldh [$e1], a
    db $f4
    pop hl
    db $f4
    push af
    ldh [$f3], a
    pop hl
    ei
    pop hl
    ei
    pop af
    dec de
    pop hl
    xor e
    pop de
    and l
    db $d3
    rst $00
    di
    rst $20
    db $d3
    rst $20
    db $d3
    rst $20
    db $d3
    rst $30
    db $e3
    rst $08
    rst $20
    adc a
    ld h, a
    rrca
    rst $20
    rrca
    rst $20
    xor a
    ld b, a
    rst $18
    rrca
    rst $18
    rrca
    rra
    rst $08
    sbc a
    rst $08
    rst $18
    adc a
    ccf
    rra
    ccf
    sbc a
    ccf
    sbc a
    cp a
    rra
    cp a
    rra
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
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [$f0]
    ld a, [hl]
    cp $3f
    rst $38
    inc d
    rst $38
    sub b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    adc [hl]
    pop af
    sbc a
    rst $08
    sbc a
    rst $08
    sbc a
    rst $08
    cp a
    sbc a
    ccf
    sbc a
    ccf
    sbc a
    cpl
    sbc a
    inc hl
    adc a
    ld l, b
    rlca
    ld h, e
    nop
    ld h, b
    nop
    ld a, l
    jr nc, jr_02d_5d08

    inc a
    ld a, [hl]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    inc bc
    nop
    rlca
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
    nop
    nop
    nop
    nop
    ldh [$e0], a
    cp $fe

jr_02d_5d08:
    ld a, a
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    and $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    ldh [rIE], a
    ld h, b
    cp a
    ld h, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, jr_02d_5dac

    ret nz

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
    add b
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
    nop
    rst $38
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
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rlca
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
    cp $00
    cp $00
    cp $00
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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

    nop
    ret nz

    nop
    ret nz

    nop

jr_02d_5dac:
    ret nz

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
    nop
    ccf
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
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
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
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
    ld bc, $0002
    inc bc
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0404
    inc b
    inc b
    inc b
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    inc b
    jr @+$1b

    ld a, [de]
    dec de
    inc b
    inc b
    inc b
    inc b
    inc b
    inc e
    dec e
    ld e, $1f
    jr nz, jr_02d_5ed1

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $04
    inc b
    inc b
    inc b
    inc b
    daa
    jr z, jr_02d_5ee6

    ld a, [hl+]
    ld hl, $2c2b
    dec l
    ld l, $2f
    jr nc, jr_02d_5eca

    ld sp, $3332
    inc [hl]

jr_02d_5eca:
    dec [hl]
    ld [hl], $1f
    scf
    jr c, jr_02d_5f09

    ld a, [hl-]

jr_02d_5ed1:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld hl, $4342
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld hl, $4a49
    ld c, e
    ld c, h
    ld c, l

jr_02d_5ee6:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    inc b
    ld hl, $5857
    ld e, c
    ld e, d
    ld e, d
    ld e, e
    ld e, h
    inc d
    ld e, l
    ld e, [hl]
    ld e, a
    ld hl, $6160
    inc b
    ld hl, $6362
    ld h, h
    ld h, l
    ld h, l
    ld h, l
    ld h, [hl]
    ld h, a

jr_02d_5f09:
    ld l, b
    ld l, c
    ld l, d
    ld hl, $046b
    inc b
    ld hl, $6d6c
    ld l, [hl]
    ld hl, $706f
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld hl, $7776
    inc b
    ld hl, $7978
    ld a, d
    ld a, e
    ld a, h
    inc b
    inc b
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    ld hl, $8281
    add e
    ld hl, $8584
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
    ld hl, $9190
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
    ld hl, $a4a3
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
    cp b
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    inc d
    cp a
    ld hl, $21c0
    pop bc
    jp nz, $c204

    jp $c5c4


    add $14
    inc d
    rst $00
    inc d
    ret z

    ret


    jp z, Jump_000_2121

    ld hl, $2121
    ld hl, $cb21
    call z, $1414
    call $8514
    adc $cf
    ld hl, $2121
    ld hl, $2121
    ld hl, $d1d0
    jp nc, $d314

    inc d
    ld hl, $d5d4
    ld hl, $2121
    ld hl, $d621
    rst $10
    ret c

    reti


    jp c, $db14

    cp e
    call c, Call_02d_65dd
    sbc $de
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, $00
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
    inc b
    inc bc
    nop
    nop
    nop
    nop
    nop
    dec b
    inc b
    dec b
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    dec b
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
    ld b, $07
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
    nop
    nop
    ld b, $06
    nop
    ld b, $06
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0303
    ld bc, $0302
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $01
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld b, $01
    inc bc
    inc bc
    inc bc
    inc bc
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
    ld b, $05
    dec b
    dec b
    dec b
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $02
    inc bc
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_02d_60f4

jr_02d_60f4:
    nop
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $c1c1
    ld sp, hl
    ld sp, hl
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
    ld bc, $0101
    ld bc, $0101
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
    db $10
    ldh a, [$78]
    ld a, b
    jr c, jr_02d_619c

    nop
    db $fc
    nop
    db $fc
    add b
    ld a, [hl]
    ret nz

    ld a, $e0
    ld e, $e0
    rra
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ei
    rlca
    rst $28
    rrca
    rrca
    rrca
    ld c, $0f
    nop
    rra
    jr c, jr_02d_6189

    jr jr_02d_618b

    add hl, sp
    rlca
    ld [hl], c
    rrca
    ld [hl], c

jr_02d_6189:
    rrca
    di

jr_02d_618b:
    rrca
    db $e3
    rra
    add a
    ld a, a
    db $fc
    inc c
    ld hl, sp+$78
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_02d_619c:
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
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$d52a]
    ld d, l
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
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, a
    xor b
    xor a
    ld d, b
    ld e, a
    and b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rrca
    ld bc, $0001
    nop
    jr nz, jr_02d_6226

    add sp, -$10
    add sp, -$10
    add sp, -$10
    xor $f0
    rst $28
    or $e7
    rst $30
    ldh [$f7], a
    ldh [$f7], a
    ldh [$f7], a
    db $e3
    rst $30
    db $e3
    rst $30
    db $e3
    rst $30
    pop hl
    pop af
    rst $28
    or $e9
    rst $30
    add sp, -$0f
    ldh [$f0], a
    ret nz

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

jr_02d_6226:
    nop
    nop
    nop
    ldh [rSB], a
    pop af
    rrca
    rst $38
    rrca
    rst $38
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld sp, hl
    ld bc, $8efe
    ldh a, [$f0]
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
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$d52a]
    ld d, l
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
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, a
    xor b
    xor a
    ld d, b
    ld e, a
    and b
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
    nop
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
    ldh a, [$f0]
    cp $fe
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
    nop
    nop
    nop
    ldh [rP1], a
    cp $e0
    ld a, a
    cp $07
    ccf
    nop
    add e
    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    push hl
    ldh a, [rIF]
    rst $38
    ldh a, [rIF]
    rst $38
    nop
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
    rrca
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
    inc bc
    rst $38
    inc e
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
    ld bc, $0afe
    push af
    dec d
    ld [$d52a], a
    ld d, l
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
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, a
    xor b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ccf
    rra
    rra
    rra
    rra
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    ld e, $1e
    sbc $de
    cp $fe
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rrca
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    cp $e0
    ld a, a
    cp $03
    ccf
    nop
    inc bc
    nop
    nop
    nop
    add b
    nop
    ret nz

    add b
    ld b, b
    cp $80
    ld a, a
    cp $01
    ld a, a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0f00
    ld bc, $7f7c
    add b
    rst $38
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
    ld bc, $0afe
    push af
    dec d
    ld [$55aa], a
    ld d, l
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
    ld d, l
    xor d
    xor e
    ld d, h
    ld e, a
    and b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ld a, [$f500]
    nop
    ld [$d500], a
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    ld a, a
    ld a, a
    rra
    ccf
    rlca
    rra
    ld bc, $000f
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
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    add b
    add b
    ldh a, [$f0]
    cp $fe
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
    nop
    ldh [rP1], a
    cp $e0
    ccf
    cp $07
    ccf
    nop
    inc bc
    nop
    jr nc, jr_02d_6403

jr_02d_6403:
    ld h, b
    nop
    ret nz

    ldh a, [rTIMA]
    rst $38
    ldh a, [rIF]
    rst $38
    nop
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0300
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
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
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
    ld [bc], a
    db $fd
    dec d
    ld [$50af], a
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
    cp $00
    db $fd
    nop
    ld a, [$f500]
    nop
    ld [$5500], a
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, b
    nop
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    cp $39
    rst $38
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    rst $38
    ld a, a
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rra
    ldh [$e1], a
    rst $38
    cp $7f
    rrca
    rrca
    inc bc
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    rst $18
    inc bc
    add e
    rst $38
    ld a, h
    rst $38
    inc bc
    ld a, a
    rst $30
    dec bc
    rst $30
    dec bc
    rst $30
    ld a, [bc]
    rst $30
    ld [$08f7], sp
    rst $30
    ld a, [hl+]
    rst $38
    inc a
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rlca
    db $fd
    ld b, $fe
    inc bc
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
    nop
    db $fc
    inc bc
    ldh a, [rIF]
    rst $20
    rra
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
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
    ld a, [bc]
    push af
    ld d, l
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
    ld d, l
    xor d
    xor a
    ld d, b
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
    db $fd
    nop
    ld a, [$f500]
    nop
    ld [$5500], a
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, h
    nop
    xor b
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
    nop
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    cp a
    ld a, a
    rst $18
    ccf
    rst $20
    rra
    di
    rrca
    di
    rrca
    di
    rrca
    ei
    rlca
    ei
    rlca
    ei
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
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    cp a
    ret nz

    cp a
    ret nz

    ccf
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
    ret nz

    ccf
    ret nz

    cp a
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
    nop
    rst $38

Call_02d_65dd:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$df], a
    ld h, b
    cp a
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
    cp a
    ret nz

    cp a
    ret nz

    add b
    ret nz

    add c
    ret nz

    add c
    ret nz

    add c
    ret nz

    add e
    ret nz

    add e
    ret nz

    add e
    ret nz

    add a
    ret nz

    ld b, a
    ld h, b
    ld c, a
    ld h, b
    ld c, a
    ld h, b
    ld e, a
    ld h, b
    rst $08
    ld h, b
    ld h, a
    ld h, b
    scf
    scf
    ld d, a
    ld d, a
    ld d, e
    ld d, e
    xor e
    xor e
    xor e
    xor e
    xor e
    xor e
    and b
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
    ld a, [bc]
    push af
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, a
    xor b
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
    ld a, [$d500]
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, h
    nop
    xor b
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
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $81ff
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    pop bc
    cp a
    pop af
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    ld a, a
    pop bc
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
    ld bc, $03ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor e
    ld d, h
    ld e, a
    and b
    rst $38
    nop
    push af
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor b
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
    ld bc, $1fff
    rst $38
    rst $38
    db $fc
    rst $38
    pop hl
    cp $e3
    db $fc
    db $e3
    db $fc
    rst $20
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$7f]
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
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp-$7d
    db $fc
    pop bc
    cp $e0
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
    ld e, a
    and b
    rst $38
    nop
    rst $38
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
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
    inc bc
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    ld hl, sp-$41
    ld hl, sp-$01
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
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
    cp $00
    cp $00
    cp $00
    cp $00
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
    cp $00
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
    ccf
    ret nz

    rrca
    ldh a, [$e0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    jr c, @-$3e

    db $fc
    ldh [$fe], a
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    and b
    ld e, a
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld a, [$ff05]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    cp $ff
    ldh a, [rIE]
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
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    ld hl, sp+$00
    ldh [rP1], a
    add b
    nop
    nop
    rlca
    jr c, @+$01

    pop hl
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    ld b, b
    cp [hl]
    ld d, b
    xor h
    ld d, b
    xor h
    ret nc

    inc l
    ret nc

    jr z, @-$2e

    inc l
    ldh a, [$0c]
    ldh a, [$08]
    ldh a, [$08]
    ret nc

    inc l
    ldh a, [$0c]
    ret nc

    ld l, $1f
    rst $28
    ccf
    rst $28
    rra
    rst $28
    ccf
    rst $28
    ccf
    rst $28
    rra
    rst $28
    ccf
    rst $28
    rra
    rst $28
    ldh [rIF], a
    add b
    ld l, a
    ret nc

    cpl
    or b
    ld c, a
    ldh a, [rIF]
    cp b
    ld c, a
    sbc [hl]
    ld l, a
    ld c, $ff
    rlca
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld e, a
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
    rst $38
    ld b, b
    cp a
    xor b
    ld d, a
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld [$f515], a
    ld a, [bc]
    ld a, [$fd05]
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
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, a
    nop
    cp a
    nop
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
    ld bc, $0fff
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    ld h, a
    ld hl, sp-$3d
    ccf
    rst $38
    rst $38
    add e
    db $fc
    rlca
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
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    jr nc, jr_02d_6a91

jr_02d_6a91:
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    inc d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$ef00], sp
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
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    inc d
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    cp a
    cp a
    rlca
    rlca
    dec b
    dec b
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
    and b
    ld e, a
    ld d, h
    xor e
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
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    push de
    ld a, [hl+]
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld [$f515], a
    ld a, [bc]
    ld [$f515], a
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ld a, [$f505]
    ld a, [bc]
    ei
    dec b
    push af
    dec bc
    db $eb
    rla
    rst $30
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $1fff
    rst $38
    rst $38
    rst $38
    db $fc
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
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
    rrca
    nop
    rst $38
    rst $20
    rra
    pop af
    rst $38
    cp d
    push bc
    xor [hl]
    ld e, a
    cp $ff
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$02
    pop de
    inc bc
    ld b, b
    inc bc
    add b
    ld [bc], a
    ld bc, $0003
    ld [bc], a
    ld bc, $0003
    nop
    rlca
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    nop
    ld bc, $0302
    nop
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    ld [hl], b
    inc de
    jr nz, jr_02d_6ba8

    ld b, b
    inc de
    ld b, b
    inc bc
    jr nz, jr_02d_6b9a

    inc b
    rlca
    inc b
    rst $18
    call c, $fcff

jr_02d_6b9a:
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc

jr_02d_6ba8:
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    db $fd
    db $fc
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    rst $18
    rst $38
    db $fd
    rst $38
    rst $38
    ccf
    ccf
    ld bc, $0001
    rst $38
    nop
    rst $38
    nop
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
    and b
    ld e, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, l
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
    ld d, l
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
    ld d, l
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
    ld d, l
    xor e
    xor a
    ld d, a
    ld e, a
    xor a
    cp a
    ld e, a
    ld a, [hl]
    cp a
    db $fc
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
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
    ld a, a
    nop
    rra
    nop
    ld b, a
    ldh [$03], a
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rLCDC], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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
    ret nz

    nop
    ret nz

    ld bc, $01c0
    ret nz

    inc bc
    ret nz

    rlca
    ret nz

    rrca
    ret nz

    ld e, a
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, h
    xor e
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
    ld d, l
    xor d
    xor d
    ld d, l
    ld e, a
    xor a
    rst $38
    ld a, a
    cp $ff
    ldh a, [rIE]
    ret nz

    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
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
    rrca
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    nop
    rlca
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
    ccf
    rst $38
    dec bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld e, a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
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
    sbc a
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    db $fc
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
    add c
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $fe
    cp $ff
    cp $fe
    cp $fe
    db $fc
    cp $fd
    rrca
    inc c
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
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
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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

jr_02d_6e6c:
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld b, $f3
    inc c
    di
    inc c
    di
    inc c
    rst $20
    jr jr_02d_6e6c

    jr @+$01

    jr @+$01

jr_02d_6e89:
    jr c, jr_02d_6e89

    ld sp, hl
    cp $ff
    cp $ff
    rst $38
    inc a
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    cp e
    nop
    rst $30
    nop
    db $dd
    nop
    ld d, d
    and b
    db $e3
    inc e
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
    rra
    and b
    nop
    nop
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
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f9
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
    inc b
    inc bc
    inc b
    inc bc
    inc b
    rlca
    ld [$0807], sp
    rlca
    jr @+$09

    db $10
    rlca
    db $10
    rlca
    jr nc, jr_02d_6f16

    jr nz, jr_02d_6f18

    ld h, b
    rlca
    ld h, b
    rlca
    ld b, b

jr_02d_6f16:
    rlca
    ret nz

jr_02d_6f18:
    dec b
    jp nz, $8205

    dec b
    add d
    inc bc
    add h
    inc bc
    inc b
    inc bc
    inc c
    rlca
    ld [$1807], sp
    rlca
    db $10
    rlca
    db $10
    rlca
    jr nc, jr_02d_6f36

    jr nz, jr_02d_6f38

    ld h, b
    rrca
    ld b, b
    rrca
    ret nz

jr_02d_6f36:
    rrca
    add h

jr_02d_6f38:
    rrca
    add h
    rrca
    adc h
    rst $38
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc
    ld hl, sp+$38
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ff01
    pop bc
    ccf
    ei
    rlca
    cp e
    ld b, a
    swap a
    jp $3b3f


    rlca
    rst $00
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    pop bc
    rst $38
    pop af
    rst $38
    db $fd
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
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
    ld bc, $0302
    inc b
    dec b
    nop
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
    db $10
    ld de, $1211
    inc de
    inc d
    dec d
    ld d, $17
    ld c, $0e
    jr jr_02d_6fd0

    add hl, de
    ld c, $0e
    rrca
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld c, $0e
    ld c, $0e

jr_02d_6fd0:
    jr nz, jr_02d_6ff3

    ld [hl+], a
    inc hl
    inc h
    nop
    nop
    nop
    dec h
    ld h, $27
    jr z, jr_02d_6feb

    ld c, $0e
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_02d_7019

    ld [hl-], a
    inc sp
    inc [hl]

jr_02d_6feb:
    ld c, $0e
    dec [hl]
    ld [hl], $37
    jr c, jr_02d_702b

    ld a, [hl-]

jr_02d_6ff3:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld c, $35
    ld b, e
    scf
    scf
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, $0e
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, $4d
    scf
    ld c, [hl]
    ld c, a
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld c, $54
    ld d, l
    ld d, [hl]

jr_02d_7019:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld c, [hl]
    ld e, e
    ld e, h
    nop
    ld e, l
    ld e, e
    ld e, [hl]
    ld e, a
    ld c, $60
    ld h, c
    ld h, d
    ld h, e
    ld h, h

jr_02d_702b:
    ld h, l
    scf
    ld h, [hl]
    ld h, a
    ld l, b
    nop
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
    nop
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
    scf
    sub c
    sub d
    sub e
    nop
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    nop
    nop
    sbc c
    sbc d
    sbc e
    ld c, $9c
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
    ld c, $aa
    xor e
    xor h
    xor l
    sub h
    xor [hl]
    xor a
    or b
    or c
    or d
    add [hl]
    add [hl]
    add [hl]
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    nop
    cp e
    cp h
    cp l
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    cp [hl]
    cp a
    ld c, $c0
    pop bc
    cp b
    jp nz, $c4c3

    push bc
    add $86
    add [hl]
    add [hl]
    add [hl]
    add [hl]
    rst $00
    ret z

    ld c, $0e
    ret


    pop bc
    nop
    jp z, $cccb

    call $86ce
    add [hl]
    add [hl]
    add [hl]
    rst $08
    ret nc

    pop de
    ld c, $0e
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    add [hl]
    add [hl]
    add [hl]
    add [hl]
    reti


    jp c, $0edb

    ld c, $0e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    jr nz, jr_02d_7107

jr_02d_7107:
    nop
    inc bc
    inc b
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
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
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
    ld [bc], a
    ld bc, $0101
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
    ld bc, $0101
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
    jr nz, jr_02d_7164

jr_02d_7164:
    ld bc, $0101
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
    ld [bc], a
    ld bc, $0301
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
    rlca
    ld b, $06
    ld b, $00
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
    rlca
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $00
    nop
    ld b, $06
    inc bc
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $20
    rra
    db $e3
    rra
    di
    rrca
    di
    rrca
    rst $30
    rrca
    pop af
    rrca
    ld sp, hl
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
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
    cp $1f
    cp $3f
    cp $3f
    cp $3f
    cp $7f
    cp $7f
    db $fc
    ld a, a
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f8]
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
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
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
    pop bc
    ccf
    rst $00
    ccf
    rst $08
    ccf
    rst $18
    ccf
    rst $18
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
    rst $28
    ld a, a
    rst $20
    rst $38
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
    add b
    rst $38
    add b
    rst $38
    add b
    add b
    add b
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
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    ccf
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
    ld bc, $01ff
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    rst $38
    db $e3
    ld a, a
    add a
    rst $38
    cp $fd
    ld hl, sp-$63
    ldh [$de], a
    ldh [$8e], a
    ldh a, [$ce]
    pop af
    add h
    ei
    ret z

    rst $30
    rst $38
    pop af
    jp $e3c3


    db $e3
    jp $ffc2


    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add c
    rst $38
    add a
    rst $38
    rst $38
    db $fc
    db $fc
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
    ldh a, [rIE]
    rst $38
    rst $38
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38

jr_02d_7436:
    rra
    rst $38

jr_02d_7438:
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b

jr_02d_745a:
    ld a, a
    add b
    ld a, a
    add b
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
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$9f], a
    ldh [$60], a
    add b
    ld [hl], b
    add b
    jr nc, jr_02d_7436

    jr c, jr_02d_7438

    jr jr_02d_745a

    inc e
    ldh [rNR34], a
    ldh [$7e], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    add b
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
    ld hl, sp+$78
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
    nop
    nop
    ld bc, $00fe
    rst $38
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$fd02]
    dec b
    ld a, [$f50a]
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
    rst $38
    rst $38
    rst $38
    adc a
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
    add c
    cp $83
    db $fc
    add a
    ld hl, sp-$71
    ldh a, [$8f]
    ldh a, [rIE]
    ld hl, sp-$01
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
    ei
    ccf
    rst $38
    ccf
    rst $38
    ccf
    cp $3f
    rst $30
    ccf
    di
    ccf
    pop hl
    ccf
    ldh [$3f], a
    ld [c], a
    ccf
    ldh [$3f], a
    add sp, $3f
    db $ec
    ccf
    ld [c], a
    ccf
    pop hl
    ccf
    pop hl
    ccf
    ld [c], a
    ccf
    ld [$e23f], a
    ccf
    db $eb
    ccf
    db $eb
    ccf
    db $e3
    ccf
    db $eb
    ccf
    db $eb
    ccf
    db $e3
    ccf
    jp hl


    ccf
    db $e3
    ccf
    db $eb
    ccf
    db $e3
    ccf
    db $e3
    ccf
    db $eb
    ccf
    db $eb
    ccf
    jp hl


    ccf
    db $eb
    ccf
    db $e3
    ccf
    jp hl


    ccf
    jp hl


    ccf
    db $eb
    ccf
    db $eb
    ccf
    rst $28
    ccf
    rst $28
    ccf
    rst $28
    ccf
    rst $28
    ccf
    rst $28
    ccf
    cpl
    ccf
    xor a
    ccf
    rst $28
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
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02fe
    db $fd
    dec b
    ld a, [$f50a]
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld d, l
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
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    rst $38
    nop
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
    ld hl, sp-$01
    rst $38
    ld a, a
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
    rst $28
    ld a, a
    adc a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    xor $ff
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $f4
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add b
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld e, a
    and b
    rra
    ldh [$1f], a
    ldh [$3f], a
    add b
    ccf
    add b
    scf
    ld [$1807], sp
    add a
    jr jr_02d_7613

    sbc l
    ld [bc], a

jr_02d_7613:
    sbc l
    ld b, d
    add hl, de
    ld [bc], a
    add hl, de
    ld b, b
    add hl, hl
    ld [bc], a
    add c
    nop
    inc bc
    nop
    nop
    nop
    add b
    db $10
    add b
    nop
    add b
    inc b
    ld bc, $8100
    nop
    add c
    nop
    add c
    nop
    add e
    nop
    add e
    nop
    add e
    nop
    add b
    nop
    add d
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    dec b
    ld a, [$f50a]
    dec d
    ld [$d52a], a
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp a
    rst $38
    add c
    rst $38
    sbc a
    ldh [rIE], a
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
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    ld a, [hl]
    rst $38
    cp $ff
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld [hl], b
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
    inc b
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ret z

    rst $38
    db $e4
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
    ei
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
    nop
    cp $00
    ld a, a
    ld b, b
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$f50a]
    dec d
    ld [$55aa], a
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, a
    xor b
    xor a
    ld d, b
    ld e, a
    and b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
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
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    cp $ff
    rst $38
    rst $38
    rra
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    dec [hl]
    rst $38
    dec [hl]
    rst $38
    ld de, $11ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

jr_02d_775c:
    nop
    rst $38
    db $10
    rst $38
    rst $28
    db $10
    xor $10
    db $ed
    db $10
    rst $28
    db $10
    xor [hl]
    ld b, b
    xor h
    ld d, b
    ld l, h
    sub b
    db $fc
    nop
    push af
    ld [$d822], sp
    add d
    ld a, h
    db $10
    db $ec
    add h
    ld l, b
    jr jr_02d_775c

    inc d
    add sp, $11
    db $ec
    ld [$10e4], sp
    db $e4
    ld de, $00e4
    db $e4
    ld bc, $01e4
    db $fc
    nop
    db $fc
    add d
    ld h, h
    nop
    ld [hl], h
    nop
    ld [hl], $00
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    ld [bc], a
    db $fd
    dec d

jr_02d_77b1:
    ld [$55aa], a
    ld d, l
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
    cp $00
    db $fd
    nop
    cp $00
    db $fd
    nop
    ld a, [$fd00]
    nop
    ld a, [$f500]
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
    rst $38
    rst $08
    ccf
    ld hl, sp+$07
    rst $38
    nop
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
    rst $00
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    add a
    rst $38
    add a
    rst $38
    ld [bc], a
    rst $38

jr_02d_780c:
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
    ld hl, sp+$07
    ret c

    daa
    cp b
    ld b, e
    ld hl, sp+$03
    jr z, jr_02d_77b1

    ld [$e043], sp
    rrca
    jp nz, $a419

    inc de
    inc a
    inc bc
    ld e, $01
    and [hl]
    ld bc, $01ce
    call nz, $e601
    nop
    adc d
    ld b, b
    add b
    ld b, b
    nop
    ret nz

    nop
    ret nz

    ld b, h
    add b
    db $10
    ret nz

    jr jr_02d_780c

    nop
    ldh [rNR41], a
    ret nz

    nop
    pop af
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    ld [bc], a
    db $fd
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, a
    xor b
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
    ld a, [$f500]
    nop
    ld [$d500], a
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    rst $38
    nop
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
    rst $30
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$09
    db $fc
    di
    cp $f1
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld a, a
    rst $38
    rst $38
    ld bc, $ff1f
    rrca
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    ld b, c
    cp a
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
    ld b, $ff
    rlca
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    scf
    rst $38
    scf
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [de], a
    db $ed
    nop
    db $e3
    nop
    pop hl
    inc b
    ldh [rNR10], a
    pop bc
    inc b
    ret nz

    nop
    pop hl
    nop
    ldh [rP1], a
    ldh [rP1], a
    pop hl
    nop
    ret nz

    add b
    ld bc, $0040
    ld bc, $0100
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
    ld bc, $0900
    nop
    cpl
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    push af
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, b
    nop
    and b
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
    ld hl, sp-$01
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    ld e, $ff
    sbc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    sbc $3f
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    ldh [$a3], a
    ldh [$a1], a
    ldh [$a1], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$a0], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$9f], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$9f], a
    ldh [$bf], a
    ldh [rIE], a
    ldh [$df], a
    ldh [$bf], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$7f], a
    ldh [rIE], a
    ldh [$7e], a
    pop hl
    cp $e1
    ld a, h
    db $e3
    db $fc
    db $e3
    ld a, b
    rst $20
    ld hl, sp-$19
    ldh a, [$ef]
    ld h, b
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rra
    rst $38
    nop
    call c, RST_00
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
    xor b
    ld d, a
    ld d, l
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
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
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
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
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
    nop
    nop
    nop
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
    add b
    rst $38
    ld hl, sp-$01
    rst $38
    rra
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
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    rlca
    rra
    db $10
    ccf
    jr nz, jr_02d_7b6c

    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld a, b
    ld a, a
    ld a, a
    ld a, a
    ld c, a
    ld a, a
    ld b, b
    rst $38
    ret nz

    rst $38
    db $e3
    rst $38
    di
    ldh [rIE], a
    rst $38
    rst $38
    ld a, [bc]
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
    rst $38
    nop
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
    xor d
    ld d, l
    push af
    ld a, [bc]
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
    cp a
    nop
    ld d, a
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
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
    rra
    db $fc
    ld a, a
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38

jr_02d_7b6c:
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    pop bc
    cp $c1
    cp $c3
    db $fc
    jp $dfff


    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$39

jr_02d_7b81:
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
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
    ldh a, [rSVBK]
    rst $38
    ldh a, [$67]
    rst $38
    ld b, e
    rst $38
    ld b, c
    rst $38
    jr nc, jr_02d_7b81

    ld a, b
    add a
    ld hl, sp-$39
    call c, $cde3
    di
    add hl, de
    rst $20
    sbc b
    rst $20
    adc b
    rst $30
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ei
    ld a, a
    ld a, a
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    cp a
    xor b
    ld d, a
    ld d, l
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
    ld d, l
    xor d
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld [$fd15], a
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
    ld a, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    db $fc
    ld a, a
    pop af
    cp $f3
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    di
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fc
    cp $e0
    db $fc
    ld bc, $01f8
    ld hl, sp+$01
    ldh a, [rSB]
    ldh a, [rSB]
    ldh [rSB], a
    ldh [rSB], a
    ldh [rSB], a
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $01c1
    ret nz

    nop
    ret nz

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
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    ldh [$3e], a
    ldh a, [rNR34]
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp+$7f
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ccf
    db $fc
    ld a, a
    rst $38
    add b
    ld a, b
    nop
    ld hl, sp+$00
    ld hl, sp+$70
    ld hl, sp-$14
    db $fc
    inc bc
    inc bc
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
    add b
    ld a, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, l
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
    ld d, l
    xor d
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld [$f515], a
    ld a, [bc]
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
    nop
    cp a
    nop
    ld e, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $18
    rst $38
    ccf
    rst $18
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
    rst $38
    cp $fe
    ldh a, [$f0]
    add b
    add b
    nop
    nop
    nop
    nop
    add e
    add b
    rst $38
    jp Jump_000_3fff


    ld hl, sp-$04
    ldh [$f0], a
    ldh [$fd], a
    ldh [$fc], a
    ldh [$fc], a
    rst $38
    ldh [rIE], a
    rra
    ldh [rIE], a
    ldh [$f0], a
    ldh [$f0], a
    jr nz, jr_02d_7d68

    nop
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
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    db $fc
    nop
    cp $e0
    rra
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    ld c, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_02d_7d68:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    xor b
    ld d, a
    ld d, h
    xor e
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
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld [$f515], a
    ld a, [bc]
    ld a, [$fd05]
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
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    db $fd
    ld a, [hl]
    rst $30
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0fff
    rst $38
    ccf
    rst $38
    rst $38
    db $fc
    db $fc
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ccf
    inc bc
    cp $3f
    ldh a, [$fe]
    nop
    ldh [rP1], a
    ld b, $00
    add e
    nop
    add c
    rlca
    db $10
    rst $38
    rlca
    ld hl, sp-$01
    nop
    ld hl, sp+$00
    nop
    nop
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
    add b
    rst $38
    ld [hl], b
    rst $38
    ld c, $ff
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
    and b
    ld e, a
    ld d, b
    xor a
    xor b
    ld d, a
    ld d, h
    xor e
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
    ld d, l
    xor d
    xor d
    ld d, l
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $7f
    cp [hl]
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
    ld a, $ff
    ld a, $ff
    ld a, $ff
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    cp $fe
    ldh a, [$f0]
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ccf
    inc bc
    rst $38
    ccf
    add sp, -$02
    add b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld bc, $0100
    ccf
    add b
    rst $38
    ccf
    ret nz

    rst $38
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
    ret nz

    rst $38
    jr c, @+$01

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
    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    xor b
    ld d, a
    rst $38
    nop
    rst $38
    nop
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
    rra
    rst $38
    rst $38
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
    inc bc
    nop
    ccf
    inc bc
    rst $38
    ccf
    ldh a, [$fe]
    nop
    ldh [rSB], a
    ld bc, $0101
    ld bc, $0101
    db $d3
    rlca
    ld hl, sp-$01
    rlca
    ld hl, sp-$01
    nop
    ld hl, sp+$00
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
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
    ldh [rIE], a
    jr @+$01

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

jr_02d_7f36:
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    and b
    ld e, a
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
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh [$e0], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld b, $0b
    rlca
    dec bc
    rlca
    dec bc
    rlca
    dec sp
    rlca
    ei
    scf
    ei
    rst $30
    dec bc
    rst $00
    dec bc
    rlca
    dec bc
    rst $20
    ld l, e
    rst $30
    ld l, e
    rst $30
    ld l, e
    rst $30
    ld a, e
    rst $00
    ei
    scf
    set 6, a
    dec bc
    rst $00
    inc bc
    add a
    ld bc, $0083
    add c
    nop
    add b
    nop
    add b
    nop
    add b
    jr nz, jr_02d_7f36

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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ld a, b
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
    rst $38
    nop
    rst $38
    ldh [rIE], a
    inc e
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
    nop
    nop
    ld [$0202], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $00
    rrca
    db $10
    ld de, $1312
    inc d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec d
    ld d, $17
    jr @+$1b
