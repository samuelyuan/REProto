SECTION "ROM Bank $094", ROMX[$4000], BANK[$94]

Jump_094_4000:
    ld h, [hl]
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    inc b
    rst $38
    ld de, $21ff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld a, [de]
    rst $38
    ld a, [de]
    rst $38
    add hl, sp
    rst $38
    ld [$25ff], sp
    rst $38
    ei
    ld b, $f8
    rlca
    jp c, $df27

    inc hl
    ldh a, [rIF]
    rst $30
    ld [$00ff], sp
    cp c
    ld b, [hl]
    sbc $21
    sbc $23
    ld e, h
    and e
    db $f4
    dec bc
    or d
    ld c, l
    cp d
    ld b, l
    add hl, sp

jr_094_403d:
    add $b7
    ld c, b
    ld b, d
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld d, e
    rst $38
    ld [$e3ff], a
    rst $38
    rst $30
    rst $38
    ld [c], a
    rst $38
    rrca
    ldh a, [$2d]
    ld a, [c]
    cpl
    ldh a, [$8f]
    ldh a, [$af]
    ret nc

    xor a
    ret nc

    xor e
    call nc, $f50a
    ld [$38f7], sp
    rst $00
    jr z, jr_094_403d

    inc b
    ei
    ld [$00ff], sp
    rst $38
    ldh [$1f], a
    ld [hl], h
    adc e
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
    jr jr_094_40a3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_094_40b3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_094_40c3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_094_40d3

    ld [hl-], a

jr_094_40a3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_094_40e3

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_094_40b3:
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
    ld b, d
    ld d, c

jr_094_40c3:
    ld d, d
    ld d, e
    ld b, d
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld b, d
    ld e, l
    ld e, [hl]
    ld e, a

jr_094_40d3:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld b, d
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

jr_094_40e3:
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
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    ld l, l
    ld b, d
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    sub b
    sub c
    sub d
    sub e
    sub h
    ld b, d
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld b, d
    ld b, d
    ld b, d
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    sbc h
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
    nop
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_094_41b3

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
    inc l
    dec l
    ld l, $2f
    inc bc
    inc bc
    inc bc

jr_094_41b3:
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
    dec b
    ld bc, $0605
    ld b, $06
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    nop
    ld bc, $0303
    nop
    nop
    inc bc
    ld bc, $0202
    ld bc, $0000
    ld bc, $0101
    nop
    ld bc, $0003
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld bc, $0000
    ld bc, $0101
    nop
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0500
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0600
    inc bc
    ld b, $06
    ld b, $00
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0100
    ld bc, $0501
    nop
    nop
    nop
    nop
    nop
    dec b
    ld bc, $0002
    nop
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2001
    nop
    ld bc, $0100
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0000
    ld bc, $0501
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
    dec b
    nop
    ld b, b
    ld bc, $0305
    nop
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
    ld bc, $0100
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    ld bc, $0100
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0303
    nop
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
    inc bc
    inc bc
    ld bc, $0303
    inc bc
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
    inc bc
    inc bc
    add hl, bc
    ld [$0b08], sp
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
    add hl, bc
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
    ld [$0b0b], sp
    dec bc
    dec bc
    ld [$0b0b], sp
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld [$0b08], sp
    dec bc
    ei
    nop
    ld sp, hl
    ld [bc], a
    ld hl, sp+$00
    db $fc
    nop
    inc a
    nop
    ldh a, [rDIV]
    db $f4

Jump_094_42fd:
    nop
    cp $00
    push af
    nop
    or [hl]
    ld b, b
    ld a, [$c800]
    ld bc, $00eb
    rst $30
    nop
    cp $00
    rst $18
    jr nz, @+$01

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
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $30
    nop
    ld h, a
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    or [hl]
    nop
    ld l, a
    nop
    rst $30
    nop
    ld e, [hl]
    nop
    sbc $00
    sbc $00
    xor [hl]
    nop
    xor [hl]
    nop
    adc [hl]
    nop
    ld h, $00
    ld e, b
    nop
    sbc d
    nop
    ld [hl], $00
    inc d
    nop
    ld d, $00
    ld a, $00
    ld d, $00
    inc e
    nop
    ld a, h
    nop
    inc d
    nop
    jr c, jr_094_4356

jr_094_4356:
    ld a, b
    nop
    inc a
    nop
    ld e, h
    nop
    inc e
    nop
    jr jr_094_4360

jr_094_4360:
    ld c, b
    nop
    ld d, b
    nop
    ld e, b
    nop
    sbc b
    nop
    sbc b
    nop
    ld a, b
    nop
    ret nc

    nop
    stop
    cp b
    nop
    or b
    nop
    ret nc

    nop
    ret c

    nop
    ldh a, [rP1]
    ret nc

    nop
    ret nc

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ld [hl], b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    pop af
    nop
    ld hl, sp+$01
    ld hl, sp+$01
    ld sp, hl
    nop
    ld hl, sp+$01
    ld hl, sp+$01
    pop af
    ld bc, $01f1
    ld sp, hl
    ld bc, $01f1
    jp hl


    ld bc, $21d1
    pop af
    ld bc, $41bb
    pop af
    inc bc
    reti


    inc hl
    pop de
    inc hl
    or c
    ld c, e
    cp c
    ld b, e
    ld a, c
    add e
    ld [hl], c
    add e
    and e
    ld e, e
    dec hl
    db $d3
    inc sp
    bit 0, e
    cp e
    ld h, e
    sbc e
    rrca
    di
    rrca
    di
    rlca
    ei
    rrca
    di
    sbc a
    db $e3
    rra
    db $e3
    ccf
    jp $c7ff


    and a
    rst $38
    rst $00
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $18
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $ff
    cp $ff
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
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    ccf
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
    rra
    db $fc
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
    cp $1f
    ld a, [$fe1f]
    rra
    cp $1f
    cp $1e
    cp $1e
    db $fc
    ld e, $fc
    ld e, $fc
    ld e, $fc
    ld e, $fc
    inc a
    db $fc
    inc a
    db $fc
    dec a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    dec a
    db $fc
    dec a
    db $fc
    dec a
    db $fc
    dec a
    db $fc
    dec a
    db $fc
    dec a
    db $fc
    dec a
    db $fc
    dec a
    db $fc
    dec a
    ld sp, hl
    dec a

jr_094_444d:
    ld sp, hl
    dec a
    ld sp, hl
    inc a
    ld sp, hl
    jr c, jr_094_444d

    ld a, b
    ld sp, hl
    ld a, d
    ld sp, hl
    ld a, d
    ld sp, hl
    ld a, d
    ld sp, hl
    ld a, d
    ld sp, hl
    ld a, b
    ei
    ld a, b
    ei
    ld a, b
    ei
    ld a, b
    ei
    ld a, b
    ei
    ld a, b
    ei
    ld a, b
    ei
    ld a, b
    ei
    ld a, b
    di
    ld a, b
    di
    ld a, b
    di
    ld a, b
    di
    ld hl, sp-$0d
    ldh a, [$f3]
    ldh a, [$f3]
    db $f4
    di
    db $f4
    di
    db $f4
    di
    db $f4
    di
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$e7]
    pop af
    rst $20
    rst $30
    rst $20
    rst $30
    rst $20
    rst $28
    rst $20
    rst $28
    rst $20
    rst $30
    rst $28
    rst $30
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    ldh a, [$ef]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$fe], a
    ldh [$fc], a
    ldh [$cc], a
    ld hl, sp-$34
    ld hl, sp-$34
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$08
    ld hl, sp-$38
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [$fa]
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
    jr nz, jr_094_44e2

jr_094_44e2:
    ld [hl], b
    nop
    db $e4
    nop
    db $fd
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
    rst $38
    nop
    rst $38
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
    daa
    ret c

    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp [hl]
    ret nz

    rst $38
    add b
    db $fc
    ret nz

    rst $38
    add b
    db $fd
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
    nop
    rst $38
    nop
    ld [$f600], sp
    nop
    rst $38
    nop
    ei
    nop
    ld sp, hl
    nop
    ld c, c
    nop
    add c
    nop
    ld b, b
    nop
    sbc a
    ld h, b
    cp a
    ld b, b
    ld a, a
    add b
    add hl, bc
    or $00
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    jp nc, $e23f

    rra
    ld sp, hl
    ld c, $fd
    ld [bc], a
    rst $30
    ld [$00ff], sp
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $18
    jr nz, @+$01

    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    sub d
    rst $38
    ld d, [hl]
    rst $38
    add hl, bc
    or $a0
    rst $18
    add hl, hl
    rst $38
    ld l, b
    rst $38
    ld e, h
    rst $38
    cp h
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
    nop
    rst $38
    inc hl
    call c, Call_000_00ff
    add hl, bc
    or $07
    ld hl, sp+$7f
    add b
    sbc a
    ld h, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ret nz

    nop
    add b
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
    nop
    nop
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
    di
    nop
    ccf
    nop
    rst $38
    nop
    ei
    nop
    cp $00
    rst $38
    nop
    ld a, [hl]
    nop
    rst $38
    nop
    or l
    nop
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    nop
    sbc b
    nop
    ret nc

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
    add b
    nop
    nop
    nop
    add b
    nop
    and b
    nop
    ret nc

    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    add b
    nop
    call nz, $ff00
    nop
    ld a, a
    nop
    rla
    nop
    dec d
    nop
    inc b
    nop
    db $dd
    ld [hl+], a
    rst $38
    nop
    cp $01
    rst $38
    nop
    ld c, a
    or b
    nop
    rst $38
    ld d, b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    or l
    rst $38
    sub l
    rst $38
    ld [bc], a
    rst $38
    jr @+$01

    jp hl


    ld [hl], $0b
    rst $38
    dec e
    rst $38
    add b
    rst $38
    ld [$84ff], sp
    rst $38
    add b
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
    cp $00
    cp $00
    db $fc
    nop
    cp $00
    db $ec
    nop
    call c, $ba00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    ld a, a
    add b
    rst $38
    nop
    rst $18
    jr nz, jr_094_4714

    add b
    ccf
    ret nz

    dec de
    db $e4
    inc d
    db $eb
    sub b
    rst $28
    jr z, @+$01

    rst $38
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
    rst $38
    nop
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
    sub b
    nop
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    ld [$ff00], a
    nop
    rst $38
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
    ld [$0000], sp
    nop
    nop
    nop
    xor c
    nop
    or $00
    ldh a, [rP1]
    inc bc
    nop
    and d
    nop
    or b
    nop
    add $00
    dec b
    nop
    adc b
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
    dec sp
    nop
    nop
    nop
    nop
    nop

jr_094_4714:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
    nop
    nop
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
    dec c
    nop
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
    rrca
    ldh a, [$c1]
    cp $ff
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    add c
    cp $99
    and $7d
    add d
    ld a, a
    add b
    rst $38
    nop
    rst $28
    db $10
    ei
    nop
    cp $00
    ld sp, hl
    nop
    db $fd
    nop
    db $f4
    nop
    ldh [rP1], a
    ld hl, sp+$00
    and b
    nop
    and b
    nop
    nop
    nop
    add b
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
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    ld [$b800], sp
    nop
    db $fc
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, a
    or b
    ld e, d
    and l
    ld [bc], a
    db $fd
    nop
    rst $38
    sub b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add d
    db $fd
    rst $38
    nop
    jp z, $0700

    nop
    rst $38
    nop
    nop
    nop
    pop af
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    and [hl]
    nop
    pop de
    nop
    rst $10
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
    jr nc, jr_094_47ec

jr_094_47ec:
    nop
    nop
    ld [$0400], sp
    nop
    ld [$0000], sp
    nop
    nop
    nop
    add e
    nop
    ld b, b
    nop
    ld [bc], a
    nop
    nop
    nop

Call_094_4800:
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    db $fc
    inc b
    ld hl, sp+$08
    pop af
    ld de, $12f2
    ld [c], a
    ld [hl+], a
    call nz, $c844
    ld c, b
    adc c
    adc b
    sub c
    sub b
    di
    db $10
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld [bc], a
    db $fd
    add b
    ld a, a
    rrca
    ldh a, [$f9]
    add c
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
    cp $00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    ld b, b
    nop
    and b
    nop
    add b
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
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    sub b
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, [$7e00]
    add b
    ld a, a
    add b
    nop
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, $40
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ccf
    nop
    di
    nop
    jr nz, jr_094_4898

jr_094_4898:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    ei
    inc b
    adc e
    nop
    or e
    nop
    add b
    nop
    call nz, $b500
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    nop
    inc bc
    nop
    nop
    nop
    or b
    nop
    ld h, h
    nop
    or [hl]
    nop
    inc e
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld c, b
    or a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ldh [$9f], a
    add b
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
    jp c, $8125

    ld a, [hl]
    and b
    ld e, a
    ld l, a
    nop
    rrca
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
    ret nz

    ret nz

    rst $38
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $02
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
    db $fc
    inc bc
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $e3
    inc e
    rst $20
    jr @+$01

    nop
    rst $38
    nop
    ld l, $00
    rlca
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
    rlca
    nop
    ld a, a
    nop
    ldh a, [rIF]
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
    nop
    nop
    nop
    nop
    dec b
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    rlca
    sbc b
    ld h, a
    cp l
    ld b, d
    rst $38
    nop
    rst $38
    nop
    or $09
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cpl
    nop
    rra
    nop
    rrca
    nop
    ld bc, $0100
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
    rrca
    nop
    scf
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    inc bc
    pop hl
    rra
    jp $073f


    rst $38
    rrca
    rst $38
    cp $3f
    db $fc
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    jr nc, jr_094_4a48

    nop
    ld e, $00
    ld e, $10
    ld e, $00
    ld e, $00
    ld e, $a0
    ld e, $a0
    ld e, $80
    ld e, $80
    ld e, $80
    ld e, $80
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
    ld e, $00
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

jr_094_4a48:
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    nop
    inc a
    ld [bc], a
    inc a
    ld [bc], a
    inc a
    ld [bc], a
    inc a
    ld [bc], a
    inc a
    ld [bc], a
    inc a
    ld [bc], a
    inc a
    ld [bc], a
    inc a
    ld [hl-], a
    inc a
    ld a, [c]
    inc a
    ld a, [c]
    inc a
    ld [hl-], a
    inc a
    ld [hl-], a
    inc a
    ld a, [hl-]
    inc a
    ld a, [hl]
    ld a, h
    cp $fe
    ld a, a
    ld a, $1c
    rrca
    dec b
    inc bc
    dec b
    inc bc
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $18
    nop
    ld a, a
    nop
    ld a, a
    nop
    sub a
    ld l, b
    cp $01
    inc c
    di
    ld [$20ff], sp
    nop
    ld d, l
    nop
    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
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
    nop
    nop
    ld b, b
    nop
    nop
    nop
    rst $30
    ld hl, sp+$7e
    rst $38
    rrca
    rst $38
    pop hl
    rra
    ld hl, sp+$07
    rst $38
    nop
    db $fd
    ld [bc], a
    cp a
    ld b, b
    inc bc
    nop
    ld bc, $0000
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
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    rst $18
    nop
    cp a
    nop
    ld a, l
    inc bc
    ei
    rlca
    rst $38
    rlca
    xor $1f
    db $dd
    ld a, $ff
    ld a, b
    db $eb
    ldh a, [$da]
    ldh [$ae], a
    ret nz

    xor e
    nop
    rst $38
    nop
    db $d3
    nop
    add a
    nop
    inc bc
    nop
    add b
    nop
    ld bc, $4100
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $4000
    nop
    ld bc, $1000
    nop
    nop
    nop
    ld b, e
    nop
    nop
    nop
    ld d, b
    nop
    inc d
    nop
    add hl, bc
    nop
    add c
    nop
    add c
    nop
    jr nz, jr_094_4b28

jr_094_4b28:
    jr nz, jr_094_4b2a

jr_094_4b2a:
    ld bc, $0200
    nop
    add b
    nop
    add l
    nop
    and e
    nop
    ld hl, $8300
    nop
    inc bc
    nop
    ld [bc], a
    nop
    add d
    nop
    add b
    nop
    nop
    nop
    add d
    nop
    add d
    nop
    add b
    nop
    nop
    nop
    ld bc, $0000
    nop
    add c
    nop
    ld h, e
    nop
    and d
    nop
    ld de, $0100
    nop
    nop
    nop
    add b
    nop
    adc c
    nop
    nop
    nop
    add b
    nop
    db $ec
    nop
    di
    nop
    reti


    nop
    rst $38
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
    rst $18
    ldh [$f3], a
    db $fc
    ld a, [hl]
    rst $38
    ld a, a
    rra
    ld e, $0f
    ld c, $03
    inc bc
    nop
    rlca
    nop
    rra
    nop
    rra
    nop
    ccf
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
    rst $08
    ldh a, [$f0]
    rst $38
    ld e, $ff
    ld b, a
    cp a
    ld d, c
    xor a
    db $e4
    dec de
    ld a, [bc]
    nop
    rra
    nop
    adc l
    nop
    jp Jump_000_3f00


    nop
    ld c, a
    nop
    rst $18
    nop
    ld a, a
    nop
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    pop af
    rrca
    rlca
    inc bc
    ld a, $07
    dec a
    ccf
    rst $38
    ccf
    cp $ff
    ld hl, sp-$61
    sbc b
    rra
    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr c, @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr jr_094_4c19

    jr c, @+$21

    jr c, jr_094_4c1d

    jr c, jr_094_4c1f

    jr jr_094_4c21

    jr c, jr_094_4c23

    jr c, @+$21

    jr jr_094_4c27

    jr c, jr_094_4c29

    jr c, jr_094_4c2b

    jr c, jr_094_4c2d

    jr c, jr_094_4c2f

    jr c, jr_094_4c31

    jr c, @+$21

    jr c, jr_094_4c35

    jr c, jr_094_4c37

    cp b

jr_094_4c19:
    rra
    ld hl, sp+$1f
    rst $38

jr_094_4c1d:
    rst $38
    rst $38

jr_094_4c1f:
    ld a, a
    ld a, a

jr_094_4c21:
    rst $38
    cp e

jr_094_4c23:
    ld b, a
    cp $01
    rst $38

jr_094_4c27:
    nop
    rst $38

jr_094_4c29:
    nop
    rst $38

jr_094_4c2b:
    nop
    rst $38

jr_094_4c2d:
    nop
    ei

jr_094_4c2f:
    inc b
    inc bc

jr_094_4c31:
    nop
    ld bc, $0000

jr_094_4c35:
    nop
    nop

jr_094_4c37:
    nop
    nop
    nop
    inc e
    nop
    jr jr_094_4c3e

jr_094_4c3e:
    nop
    nop
    db $fc
    inc bc
    ldh [$1f], a
    jp nz, $c43d

    dec sp
    ld b, b
    cp a
    ret nz

    rst $38

Call_094_4c4c:
    db $fc
    rst $38
    ccf
    rst $38
    add a
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0bff
    rst $38
    rrca
    rst $38
    rst $38
    rlca
    rst $38
    rrca
    cp $7f
    db $fc
    ccf
    pop af
    ld a, a
    db $e3
    rst $38
    add $ff
    sbc h
    rst $38
    ld [hl], a
    jr c, jr_094_4cec

    and $bb
    call nz, Call_000_01be
    cpl
    nop
    rla
    nop
    dec [hl]
    nop
    ld [hl], a
    nop
    ld d, $00
    rlca
    nop
    ld a, [bc]
    nop
    inc bc
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
    inc b
    nop
    nop
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
    inc b
    nop
    nop
    nop
    ld bc, $1300
    nop
    ld bc, $0700
    nop
    ld b, $00
    rlca
    nop
    adc a
    nop
    ccf
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
    rst $38
    nop
    ld a, [$fce5]
    rst $38
    cp a
    rst $38
    rst $20
    rst $38
    ld sp, hl
    ccf
    ld a, $0f
    rlca
    inc bc

jr_094_4cec:
    inc bc
    nop
    ld b, e
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    ld [hl+], a
    nop
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    adc a
    ld a, a
    rra
    rst $38
    inc a
    rst $38
    ld a, b
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld a, a
    cp $7f
    ld sp, hl
    ld a, a
    di
    rst $38
    rst $20
    rst $38
    cp a
    rst $08
    cp $1d
    cp b
    ld a, a
    ldh [rIE], a
    jp nz, Jump_000_04fd

    ei
    nop
    rst $38
    cp l
    ld b, d
    db $10
    rst $38
    jr nz, @+$01

    nop
    rst $38
    db $10
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld sp, hl
    ld b, $ff
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
    nop
    sbc a
    nop
    cp a
    nop
    ccf
    nop
    dec de
    nop
    rlca
    nop
    rla
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld b, e
    nop
    inc bc
    nop
    ld b, $00
    ld b, b
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0900
    nop
    nop
    nop
    nop
    nop
    ld [$0c00], sp
    nop
    ld d, l
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
    ld bc, $0200
    nop
    nop
    nop
    ld bc, $0900
    nop
    ld bc, $0700
    nop
    rlca
    nop
    ld b, $00
    add a
    nop
    rrca
    nop
    rla
    nop
    ld e, a
    nop
    ld e, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $08
    db $10
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, e
    inc b
    ld a, [hl]
    ld bc, $245b
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    call z, $a833
    ld d, a
    xor e
    ld d, a
    pop hl
    rra
    add l
    ld a, a
    ld [hl], d
    sbc a
    ld a, [bc]
    rst $38
    rst $08
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
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    ret nz

    ccf
    inc de
    nop
    ld bc, $0000
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
    pop af
    rst $38
    rst $20
    rst $38
    push bc
    rst $38
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
    cp a
    rst $38
    ccf
    rst $38
    ld a, e
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    add d
    rst $38
    adc d
    ld [hl], a
    db $10
    rst $28
    add h
    ld a, e
    ld e, b
    and a
    nop
    rst $38
    add b
    ld a, a
    add hl, bc
    rst $30
    ld c, c
    or a
    add l
    rst $38
    pop de
    rst $38
    ld d, h
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc h
    rst $38
    ld b, h
    rst $38
    ld l, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld c, $ff
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$ffff], sp
    nop
    rst $38
    nop
    ei
    nop
    rst $30
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
    ld a, a
    nop
    ld a, [hl]
    nop
    ld a, l
    nop
    ld e, a
    nop
    ld e, a
    nop
    dec hl
    nop
    rra
    nop
    dec c
    nop
    inc e
    nop
    dec c
    nop
    dec l
    nop
    sbc [hl]
    nop
    ccf
    nop
    xor [hl]
    nop
    ld e, a
    nop
    sbc l
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ld a, l
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    ld bc, $00ff
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add c
    rst $38
    inc b
    rst $38
    ld e, c
    rst $38
    ld e, c
    rst $38
    cp c
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    adc h
    ld a, e
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    sbc c
    rst $38
    db $eb
    db $fd
    db $fd
    rst $38
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    jp c, Jump_094_4000

    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    sbc a
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    ld c, e
    rst $38
    jp z, $dbff

    rst $38
    ld a, [bc]
    db $fd
    jp Jump_094_42fd


    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld sp, $33ce
    call z, $ce31
    inc h
    db $db
    ld [hl], c
    adc [hl]
    ld [de], a
    rst $38
    sub d
    rst $38
    ld [de], a
    rst $38
    ld a, [bc]
    rst $38
    ret nc

    rst $38
    ld sp, $00ff
    rst $38
    db $10
    rst $38
    ei
    inc b
    jp c, $ff25

    nop
    rst $38
    nop
    sbc a
    ld h, b
    rst $30
    ld [$00ff], sp
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, l
    nop
    ld e, a
    nop
    cp e
    nop
    rst $28
    nop
    ld h, e
    nop
    add sp, $00
    or $00
    rst $30
    nop
    rst $28
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    di
    nop
    ei
    nop
    ld h, a
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    halt
    ld d, $20
    ld l, [hl]
    nop
    ld a, [$1a00]
    jr nz, @+$01

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
    rst $30
    ld [$ff00], sp
    nop
    rst $38
    nop
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
    or b
    rst $38
    ld hl, sp-$01
    sub b
    rst $38
    or h
    rst $38
    ld [c], a
    rst $38
    rst $20
    rst $38
    jp nc, Jump_000_1dff

    db $e3
    xor b
    rst $10
    nop
    rst $38
    ld d, b
    xor a
    ld [de], a
    rst $28
    add hl, bc
    rst $30
    pop hl
    rst $38
    ld b, $ff
    add [hl]
    rst $38
    ldh [rIE], a
    or b
    rst $38
    call z, $acff
    rst $38
    db $fc
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
    add c
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    pop af
    ld c, $00
    rst $38
    nop
    rst $38
    ld e, c
    and [hl]
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    or $ff
    ld a, [$daff]
    rst $38
    add sp, -$01
    sub b
    rst $38
    ret nz

    rst $38
    inc bc
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld bc, $08fe
    rst $30
    nop
    rst $38
    ld a, [hl+]
    db $dd
    ld c, d
    cp l
    ld e, e
    cp h
    db $db
    inc a
    add $39
    db $e3
    inc e
    db $e3
    inc e
    ld e, $ff
    sbc $ff
    ld c, b
    rst $38
    ld h, l
    rst $38
    ld hl, $20ff
    rst $38
    jr nz, @+$01

    ldh [rIE], a
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
    ld a, a
    nop
    rst $38
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    rst $28
    nop
    sbc a
    nop
    cp $00
    rst $38
    nop
    sbc a
    nop
    sbc $00
    adc $00
    adc [hl]
    nop
    ld h, a
    nop
    db $ed
    nop
    ld a, e
    nop
    ld [hl], e
    nop
    call nc, Call_000_3800
    nop
    add hl, sp
    nop
    pop af
    nop
    ld e, d

jr_094_5077:
    jr nz, jr_094_5077

    nop
    xor d
    nop
    cp [hl]
    nop
    dec l
    nop
    dec bc
    nop
    ld d, l
    nop
    sub a
    nop
    add hl, hl
    nop
    ld a, c
    nop
    ld c, a
    nop
    ld e, a
    nop
    ld a, l
    nop
    rst $18
    nop
    ei
    nop
    or e
    nop
    cp a
    nop
    cp l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00fe], sp
    rst $20
    jr @+$01

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
    add b
    rst $38
    add b
    rst $38
    inc c
    rst $38
    add h
    rst $38
    nop
    rst $38
    call nz, Call_094_58ff
    rst $38
    ld [$b5ff], a
    ld c, d
    ld [hl], h
    adc e
    add hl, bc
    or $3d
    jp nz, $ef10

    db $10
    rst $28
    ld [bc], a
    rst $38
    ld de, $a0ee
    rst $18
    inc b
    rst $38
    ld b, c
    rst $38
    ld l, d
    rst $38
    sbc b
    rst $38
    ld b, d
    rst $38
    ret nc

    rst $38
    ld l, b
    rst $38
    ld [c], a
    rst $38
    rst $18
    rst $38
    or $ff
    or $ff
    rst $38
    rst $38
    rst $38
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
    rra
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add hl, bc
    or $4f
    or b
    ldh a, [rIE]
    and h
    rst $38

jr_094_5104:
    jr nz, @+$01

    sbc b
    rst $38
    ld c, d
    db $fd
    ld e, c
    cp $8d
    ld a, [$ff09]
    inc b
    ei
    ld [hl], b
    adc a
    ld h, c
    sbc [hl]
    or d
    call $c43b
    rst $00
    jr c, jr_094_5104

    jr jr_094_5145

    reti


    ld a, b
    rst $38
    ld a, [c]
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    inc d
    rst $38
    ld [bc], a
    rst $38
    ld d, $ff
    ld [bc], a
    rst $38
    sub a
    ld l, b
    rst $38
    ld [bc], a
    cp $03
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    xor $10
    xor $10
    xor $10
    rst $38

jr_094_5145:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    nop
    call $ee00
    nop
    rst $30
    nop
    ld l, [hl]
    nop
    rra
    nop
    rlca
    nop
    rst $00
    nop
    dec bc
    nop
    add e
    nop
    inc b
    nop
    add c
    nop
    add b
    nop
    add a
    nop
    add l
    nop
    rla

Jump_094_517d:
    nop
    and [hl]
    nop
    daa
    nop
    ld e, a
    nop
    dec sp
    nop
    ld l, e
    nop
    db $dd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
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
    ld [$08ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld bc, $49ff
    rst $38
    sub b
    rst $38
    dec bc
    rst $38
    and a
    rst $38
    ld d, d
    rst $38
    di
    rst $38
    ld a, c
    rst $38
    sbc c
    rst $38
    inc hl
    call c, $ff00
    ld [bc], a
    db $fd
    ld b, b
    rst $38
    ld h, [hl]
    db $fd
    ldh [rIE], a
    push bc
    cp $c2
    rst $38
    ld hl, $24ff
    rst $38
    dec hl
    rst $30
    or d
    rst $38
    ld d, a
    rst $38
    adc $ff
    sbc a
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $28
    rra
    rrca
    ldh a, [$1f]
    ldh [rNR13], a
    db $ec
    ld a, [bc]
    push af
    ld h, $d9
    daa
    ld hl, sp+$17
    ld hl, sp+$3f
    ret nc

    dec h
    jp c, Jump_000_10ff

    ld l, a
    sub b
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    rst $30
    ld [$827d], sp
    ld a, [hl]
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
    cp a
    ld b, b
    ld a, a
    ret nz

    ld a, $41
    rst $18
    jr nz, @+$01

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
    cp a
    nop
    or a
    nop
    rst $30
    nop
    db $fd
    nop
    ld a, l
    nop
    dec a
    nop
    di
    ld [$007a], sp
    ld a, [$ff00]
    nop
    db $fd
    nop
    rst $38
    nop
    rst $30
    nop
    ld [hl], e
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld c, a
    nop
    adc a
    nop
    rst $08
    nop
    rst $28
    nop
    or a
    nop
    cp e
    nop
    dec de
    nop
    cp e
    nop
    and e
    nop
    and l
    nop
    ld b, a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    adc b
    nop
    ld a, [$a400]
    nop
    db $ec
    nop
    rlc b
    rst $28
    nop
    xor $00
    rst $38
    nop
    ld a, [c]
    nop
    ld [hl], h
    nop
    or a
    nop

jr_094_5294:
    cp e
    inc b
    xor a
    nop
    rst $20
    nop
    rst $08
    nop
    db $eb
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $18
    jr nz, jr_094_5294

    ld [hl-], a
    rst $18
    jr nz, @+$01

    nop
    rst $18
    jr nz, @+$01

    nop
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [hl-], a
    rst $38
    add e
    rst $38
    ld b, $ff
    rlca
    rst $38
    add a
    rst $38
    adc e
    rst $38
    set 7, a
    adc e
    rst $38
    cp a
    rst $38
    ld h, c
    sbc a
    sub c
    ld l, a
    sub b
    ld l, a
    inc h
    rst $18
    and $df
    ld a, [hl-]
    rst $08
    adc h
    rst $38
    add d
    rst $38
    add $ff
    pop bc
    rst $38
    rst $10
    rst $38
    adc $ff
    rst $20
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
    rst $38
    rst $38
    rst $38
    rst $38
    add d
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
    jr nz, @+$01

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
    jr nz, @+$01

    nop
    rst $38
    rst $38
    nop
    cp e
    ld b, h
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ei
    inc b
    cp a
    ld b, b
    ld a, l
    add b
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    rst $38
    nop
    rst $18
    nop
    and $18
    rst $18
    nop
    rst $10
    ld [$00fe], sp
    rst $38
    nop
    rst $18
    nop
    ld [hl], a
    adc b
    ei
    inc b
    cp a
    nop
    rst $38
    nop
    sbc [hl]
    nop
    db $fc
    nop
    xor d
    nop
    ld a, [$f600]
    nop
    db $e3
    nop
    ld a, [c]
    nop
    pop af
    nop
    ld sp, hl
    nop
    db $eb
    nop
    ei
    nop
    ei
    nop
    or a
    nop
    rst $38
    nop
    cp $00
    ld sp, hl
    nop
    cp b
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    rst $38
    nop
    cp a
    ld b, b
    ld sp, hl
    nop
    ld [hl], a
    nop
    ld [hl], l
    nop
    db $e3
    nop
    rst $30
    nop
    db $f4
    nop
    ld a, [$fb00]
    nop
    ld a, [$fe00]
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    cp e
    ld b, h
    rst $38
    nop
    ld sp, hl
    ld b, $bf
    ld b, b
    rst $38
    nop
    cp a
    ld b, b

jr_094_53aa:
    cp $41
    rst $38
    ld b, b
    db $db
    ld h, h
    rst $18
    jr nz, @+$01

jr_094_53b3:
    nop
    rst $28
    db $10
    db $e3
    inc e
    rst $20
    jr jr_094_53aa

    db $10
    ld l, l
    sub d
    ld [hl], b
    sbc a
    ld a, [hl]
    sbc c
    xor l
    ld d, d
    and [hl]
    ld e, c
    inc de
    db $ec
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$04
    ei
    ld b, $f9
    inc b
    ei
    jr nz, jr_094_53b3

    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    jr nz, @+$01

    or b
    rst $38
    ld [de], a
    rst $38
    or e
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld c, d
    rst $38
    dec hl
    rst $38
    sbc c
    rst $38
    db $db
    rst $38
    ld a, e
    rst $38
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ld [hl], h
    adc d
    or h
    ld c, d
    db $fd
    ld [bc], a
    db $fc
    inc bc
    rst $38
    ld [bc], a
    db $fc
    inc bc
    ld a, h
    inc bc
    cp $01
    db $fc
    inc bc
    cp $09
    rst $38
    ld [$28c7], sp
    db $fd
    nop
    rst $38
    nop
    di
    nop
    or l
    nop
    ldh a, [rP1]
    ld sp, hl
    nop
    ld [c], a
    nop
    jp z, $c600

    nop
    jp $c300


    nop
    jp nz, $8200

    nop
    ld a, [de]
    nop
    inc e
    nop
    xor b
    nop
    xor b
    nop
    stop
    ld e, b
    nop
    sbc b
    nop
    ld l, $00
    jr nz, jr_094_5440

jr_094_5440:
    inc c
    nop
    and b
    nop
    ld h, d
    nop
    ld c, c
    nop
    ld [bc], a
    ld bc, $01a0
    pop bc
    nop
    call nc, $e400
    nop
    ld h, h
    nop
    ld b, c
    jr nz, jr_094_547c

    nop
    cpl
    nop
    ld h, e
    nop
    ld [hl], $20
    ld b, b
    jr nz, jr_094_54d1

    nop
    ld [hl], b
    nop

jr_094_5464:
    ld [hl], c
    nop
    ld [hl], b
    nop
    jr nz, jr_094_546a

jr_094_546a:
    and b
    nop
    adc b
    nop
    add b
    nop
    ret nz

    nop
    pop bc
    nop
    jp nz, RST_00

    nop
    ld b, d
    nop
    ld h, d
    nop

jr_094_547c:
    ld b, h
    nop
    ld h, h
    nop
    add $00
    ld b, h
    nop
    sub [hl]
    nop
    db $e4
    nop
    add sp, $00
    xor d
    nop
    rst $38
    nop
    ld a, [$bf00]
    nop
    sbc a
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    nop
    db $fd
    ld [bc], a
    rst $28
    nop
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add h
    rst $38
    ld c, $ff
    ld b, l
    rst $38
    and b
    rst $38
    rst $38
    nop
    rst $08
    jr nc, jr_094_5464

    ld d, b
    add hl, de
    and $19
    and $08
    rst $30
    and b
    ld a, a
    adc [hl]
    ld [hl], c
    dec b
    ld a, [$f95e]
    ld [hl], b
    rst $38
    add b
    rst $38
    ret z

    rst $38
    ld b, b
    rst $38
    ret z

    rst $38
    jr z, @+$01

    ret z

jr_094_54d1:
    rst $38
    reti


    rst $38
    ret z

    rst $38
    db $f4
    rst $38
    sbc l
    rst $38
    sbc a
    rst $38
    rst $10
    rst $38
    rst $18
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
    jr nz, @+$01

    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    db $e4
    nop
    ld h, c
    nop
    db $e3
    nop
    rlc b
    or e
    nop
    add hl, hl
    nop
    sbc c
    nop
    or b
    nop
    or h
    nop
    ld h, h
    nop
    xor d
    nop
    cp [hl]
    nop
    ld l, $00
    cp b
    nop
    cp b
    nop
    ld a, [hl-]
    nop
    ld b, $00
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    nop
    ld b, h
    nop
    stop
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
    ld [bc], a
    nop
    nop
    nop
    stop
    stop
    stop
    nop
    nop
    ld bc, $0100
    nop
    ld h, c
    nop
    and b
    nop
    add b
    nop
    ld b, c
    add b
    pop bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    ld [bc], a
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    ld b, b
    nop
    ret nz

    nop
    ld b, b
    nop
    ret z

    nop
    ret nc

    nop
    ret z

    nop
    sub b
    nop
    ld sp, hl
    nop
    ld hl, sp+$00
    dec a
    nop
    ld a, c
    inc b
    ld a, h

jr_094_5595:
    nop
    db $dd
    jr nz, jr_094_5595

    nop
    cp $00
    xor $00
    rst $38
    nop
    db $fc
    ld [bc], a
    rst $38
    nop
    db $dd
    ld [hl+], a
    rst $38
    nop
    rst $28
    db $10
    ld a, [$bb05]
    ld b, h
    rst $38
    nop
    ld a, [bc]
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    call nz, $84ff
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    ld h, c
    rst $38
    and d
    rst $38
    sub b
    rst $38
    ldh [rIE], a
    db $e4
    rst $38
    ld [c], a
    rst $38
    inc h
    db $db
    inc sp
    call z, $ed12
    add d
    db $fd
    ld [bc], a
    db $fd
    ld b, c
    rst $38
    ld b, b
    rst $38
    and l
    rst $38
    adc [hl]
    rst $38
    call nz, $c6ff
    rst $38
    jp nc, $e8ff

    rst $38
    db $ed
    rst $38
    or $ff
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
    jr jr_094_5623

    ld a, [de]
    dec de
    inc e
    rrca
    dec e
    ld e, $1f
    jr nz, jr_094_5634

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_094_5644

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_094_5654

jr_094_5623:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_094_563a

    rrca
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_094_5634:
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    rrca

jr_094_563a:
    rrca
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]

jr_094_5644:
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    rrca
    rrca
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h

jr_094_5654:
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    rrca
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
    rrca
    rrca
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
    rrca
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    rrca
    rrca
    adc c
    adc d
    adc e
    adc h
    adc l
    rrca
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
    rrca
    rrca
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, Jump_000_0fcb

    rrca
    rrca
    call z, $0fcd
    adc $ce
    rst $08
    rst $08
    ret nc

    pop de
    jp nc, $d4d3

    push de
    rrca
    rrca
    rrca
    sub $d7
    ret c

    reti


    jp c, $0fdb

    rrca
    call c, $dedd
    rst $18
    ldh [rIF], a
    rrca
    rrca
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $0f
    rrca
    rst $20
    add sp, -$17
    ld [$0feb], a
    rrca
    rrca
    db $ec
    db $ed
    xor $ef
    ldh a, [$88]
    rrca
    rrca
    pop af
    ld a, [c]
    di
    db $f4
    push af
    rrca
    rrca
    rrca
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0f02
    rrca
    rrca
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0f
    rrca
    db $10
    ld de, $0112
    ld bc, $0101
    ld b, $06
    ld b, $03
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0500
    nop
    nop
    ld bc, $0101
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    nop
    nop
    nop
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0501
    ld b, $06
    ld b, $05
    dec b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0301
    inc bc
    inc bc
    nop
    ld bc, $0001
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    ld bc, $0002
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0102
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    ld bc, $0202
    ld bc, $0101
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
    ld bc, $0201
    ld [bc], a
    ld bc, $0601
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
    dec b
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0600
    ld b, $06
    ld b, $06
    nop
    nop
    dec b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc hl
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec c
    add hl, bc
    ld a, [bc]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec bc
    dec c
    add hl, bc
    ld a, [bc]
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    rst $38
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
    nop
    ld l, a
    nop
    or a
    nop
    rst $18
    nop
    ld a, a
    nop
    xor e
    nop
    ld l, e
    nop
    inc d
    nop
    ld [hl], l
    nop
    ld d, d
    nop
    add hl, bc
    nop
    ld b, $00
    ld [hl+], a
    nop
    inc hl
    nop
    add h
    nop
    ld hl, $0780
    add b
    ld de, $f280
    add b
    cp c
    ret nz

    xor b
    ret nz

    ld [hl+], a
    ret nz

    sbc h
    ret nz

    or a
    ret nz

    sbc d
    ldh [$ee], a
    ldh [$e0], a
    ldh [$60], a
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh a, [rSVBK]
    ldh a, [$38]
    ldh a, [$38]
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$1c
    ld hl, sp+$1c
    db $fc
    inc e
    db $fc
    ld e, $fc
    ld e, $fc
    ld c, $fe
    ld c, $fe
    ld c, $fe
    rlca
    cp $07
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
    ld bc, $1303
    ld bc, $0101
    ld bc, $0001
    ld bc, $0020
    ld bc, $0400
    nop
    dec b
    nop
    dec bc
    nop
    ld d, e
    nop
    ld hl, $5d00
    nop
    ccf
    nop
    sbc a
    nop
    rra

Call_094_58ff:
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    rst $28
    db $10
    db $ed
    ld [de], a
    cp d
    ld b, l
    push af
    ld a, [bc]
    ld bc, $01ff
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
    cp $7f
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [$df]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    ei
    nop
    cp $00
    cp $00
    db $fc
    nop
    add sp, $00
    add sp, $00
    ret c

    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    call nz, $e400
    nop
    jp nc, $ec00

    nop
    rst $38
    nop
    ld a, [c]
    nop
    db $f4
    nop
    db $fc
    nop
    push af
    nop
    ei
    nop
    or $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rIF]
    nop
    rrca
    nop
    rrca
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
    inc bc
    nop
    inc bc
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
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld [hl], a
    nop
    ld e, $00
    ld e, a
    nop
    dec c
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld c, b
    nop
    add hl, hl
    nop
    add hl, de
    nop
    and l
    nop
    and l
    nop
    or c
    nop
    sbc $00
    inc de
    nop
    and c
    nop
    ld [$a000], sp
    nop
    push af
    nop
    ldh [rP1], a
    db $e4
    nop
    ld hl, sp+$00
    rst $38
    nop
    cp l
    nop
    db $fd
    nop
    rst $28
    nop
    call c, $ff00
    nop
    ld [hl], a
    add b
    db $ed
    add b
    rst $28
    add b
    cp e
    ret nz

    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $18
    ldh [rIE], a
    ldh [$f7], a
    add sp, -$09
    add sp, $70
    ldh [rSVBK], a
    ldh a, [$71]
    ldh a, [$79]
    ldh a, [$38]
    ldh a, [$38]
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$1f
    db $fc
    rra
    db $fc
    rra
    db $fd
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld hl, sp-$10
    db $fd
    ldh a, [$fe]
    ldh [$e4], a
    ret nz

    add h
    ret nz

    ld [hl], b
    add b
    ret nz

    nop
    ret nz

    nop
    jr nc, jr_094_5a20

jr_094_5a20:
    jr nz, jr_094_5a22

jr_094_5a22:
    add b
    nop
    jr nz, jr_094_5a26

jr_094_5a26:
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    ld d, b
    nop
    scf
    nop
    reti


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
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    rst $28
    rra
    cpl
    rst $18
    rst $10
    cpl
    push hl
    rra
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, [$f807]
    rlca
    db $fc
    inc bc
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld bc, $7d01
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    db $e3
    rra
    rst $30
    rrca
    rst $08
    ccf
    adc $3f
    ld e, l
    cp [hl]
    cp a
    ld a, h
    ld a, a
    ld hl, sp+$74
    ld hl, sp-$02
    ldh a, [$fc]
    ldh [$d0], a
    ldh [$a0], a
    ret nz

    ld h, b
    add b
    ret nz

    nop
    nop
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    nop
    nop
    add b
    nop
    ret c

    nop
    ld hl, sp+$00
    rst $28
    nop
    jp z, $a400

    nop
    ret z

    nop
    ret nz

    nop
    sbc b
    nop
    call z, $fc00
    nop
    db $fd
    nop
    cp $00
    cp $00
    cp $00
    cp $00
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
    nop
    nop
    nop
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
    ld b, $00
    ld d, l
    nop
    ei
    nop
    ld l, [hl]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld sp, hl
    cp $fd
    cp $fe
    db $fc
    db $fd
    cp $ff
    db $fc
    ei
    db $fc
    ld sp, hl
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$27
    cp $ff
    ld hl, sp-$15
    db $fc
    cp e
    db $fc
    dec hl
    db $fc
    dec sp
    db $fc
    ld a, [hl-]
    db $fc
    ld c, e
    db $fc
    add l
    ld a, [hl]
    dec b
    cp $35
    sbc $15
    xor $41
    cp $01
    cp $68
    cp a
    ret nz

    ccf
    sub [hl]
    ld a, a
    adc c
    ld a, a
    db $dd
    ccf
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
    cp a
    ld a, a
    sbc a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $18
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
    ld a, a
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
    pop af
    cp $e7
    ld hl, sp-$31
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    cp a
    ret nz

    ld hl, sp-$80
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    add b
    nop
    nop
    nop
    ei
    nop
    db $ec
    nop
    ret c

    nop
    add sp, $00
    ldh a, [rP1]
    and b
    nop
    add b
    nop
    nop
    nop
    ld [$0000], sp
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $6100
    nop
    push hl
    nop
    rst $38
    nop
    ei
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$1000], sp
    nop
    db $ed
    nop
    ld e, d
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38

jr_094_5c39:
    nop
    rst $38

jr_094_5c3b:
    nop
    rst $38

jr_094_5c3d:
    nop
    rst $38

jr_094_5c3f:
    nop
    rst $38

jr_094_5c41:
    rst $38
    rst $38

jr_094_5c43:
    rst $38
    rst $38

jr_094_5c45:
    rst $38
    rst $38

jr_094_5c47:
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ldh a, [$fb]
    ldh [$f3], a
    ld h, b
    jp $c360


    jr nz, jr_094_5c39

    jr nz, jr_094_5c3b

    jr nz, jr_094_5c3b

    jr nz, jr_094_5c3d

    jr nz, jr_094_5c3f

    jr nc, jr_094_5c41

    jr nc, jr_094_5c43

    jr nc, jr_094_5c45

    jr nc, jr_094_5c47

    db $10
    pop af
    db $10
    ldh a, [rNR10]
    ldh a, [rNR23]
    ldh a, [rNR23]
    ldh a, [$08]
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$0c
    ld hl, sp+$0c
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    ld b, $fc
    ld b, $fc
    add [hl]
    db $fc
    add $fe
    rst $20
    cp $e3
    cp $f3
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $fc
    rst $38
    ld hl, sp-$08
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    or b
    nop
    ldh [rP1], a
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
    ld [bc], a
    nop
    nop
    nop
    add b
    nop
    or b
    nop
    cp h
    nop
    jr nc, jr_094_5cea

jr_094_5cea:
    cp h
    nop
    cp [hl]
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
    ld b, $00
    dec b
    nop
    or h
    nop
    ld a, d
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rra
    sbc $21
    ccf
    nop
    ld l, a
    nop
    rrca
    nop
    rrca
    nop
    inc b
    nop
    inc bc
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
    ld a, [bc]
    nop
    dec hl
    nop
    ld [hl], $00
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
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    nop
    ret nz

    nop
    ret nz

    nop
    and d
    ld b, b
    cp [hl]
    ld h, b
    cp a
    ld h, b
    cp [hl]
    ld h, b
    ld a, b
    ldh [$f0], a
    ret nz

    sub b
    ret nz

    ld a, h
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ret nz

    nop
    ld sp, hl
    nop
    cp $00
    ei
    nop
    db $ec
    nop
    ldh a, [rP1]
    and b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    call nc, $8000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ei
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld a, [$2000]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    ld b, $00
    nop
    nop
    nop
    nop
    inc sp
    nop
    dec de
    nop
    rra
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
    ccf
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
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    jr nz, jr_094_5dea

jr_094_5dea:
    add h
    nop
    ld c, l
    nop
    ld [hl], a
    nop
    dec hl
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    sbc a
    cp a
    ld c, a
    db $ed
    rra
    rst $28
    rla
    ld e, h
    inc bc
    inc l
    inc bc
    rrca
    nop
    ld e, $01
    daa
    nop
    ccf
    nop
    dec hl
    nop
    ld c, a
    nop
    xor e
    nop
    rst $30
    nop
    rst $18
    nop
    rst $38
    nop
    cp $01
    cp $01
    ei
    dec c
    db $fd
    rrca
    rst $38
    cpl
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
    ld e, a
    nop
    inc bc
    nop
    rlca
    nop
    ld b, c
    nop
    add b
    nop
    rst $38
    nop
    ld hl, sp+$00
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_094_5e5d

jr_094_5e5d:
    rst $38
    nop
    rst $38
    nop
    nop
    ld e, a
    nop
    cp l
    nop
    ld [c], a
    nop
    ld d, h
    nop
    and c
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
    rla
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, a
    nop
    rst $10
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $1000
    nop
    ldh a, [rP1]
    add c
    nop
    ld bc, $0000
    nop
    nop
    nop
    add $00
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
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_094_5edc

jr_094_5edc:
    jr nc, jr_094_5ede

jr_094_5ede:
    cp l
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
    rst $38
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $7f
    cp $ff
    ld a, [hl]
    ld a, a
    cp $bf
    cp $5f
    cp $9f
    ld a, [hl]
    rst $38
    ld e, $9f
    ld a, [hl]
    rst $18
    ld a, $df
    ccf
    sbc a
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
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
    add c
    ld a, a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    rst $38
    nop
    ld e, a
    nop
    ld hl, sp+$07
    rst $38
    nop
    ld a, a
    nop
    db $fc
    inc bc
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $f1ff
    rrca
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
    ret nz

    ccf
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    cp $01
    ccf
    nop
    rrca
    nop
    rlca
    nop
    db $f4
    dec bc
    db $fc
    inc bc
    ld a, b
    rlca
    ld a, [hl]
    ld bc, $007f
    ld e, $01
    rra
    nop
    ld c, $01
    rrca
    nop
    ld c, $01
    ld c, $01
    ld b, $01
    dec b
    ld [bc], a
    ld c, $01
    ld c, $01
    rla
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    scf
    nop
    ld a, a
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
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    ei
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    ld b, b
    nop
    ld [hl], b
    nop
    pop af
    nop
    ret nz

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
    rst $38
    nop
    rst $30
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
    db $fd
    ccf
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    dec [hl]
    jr z, @+$36

    ld [$102e], sp
    or l
    nop
    ld [hl], c
    nop
    ld l, d
    jr nz, jr_094_6060

    nop
    ld a, a
    nop
    ld a, l
    nop
    ld l, l
    nop
    ld a, h
    nop
    cp c
    nop
    sub c
    nop
    ld de, $1000
    nop
    ldh a, [rP1]
    or b
    nop
    ret nc

    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [$80], a
    ld [hl], b
    add b
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ldh a, [$80]
    ld hl, sp-$80
    ld hl, sp-$80
    ld a, [$fa80]
    add b
    ld a, [$fce0]
    ret nc

    ld a, [$f080]
    or b
    cp $b0
    db $fc
    or b
    db $fc
    or b
    db $fd
    or b
    rst $38
    or b
    cp $b0
    jr nc, @+$81

    jr c, @+$81

    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a
    ld a, b
    ld a, a

jr_094_6060:
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, l
    ld a, a
    ld a, a
    ld a, a
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
    cp a
    rrca
    rst $38
    rrca
    ld a, a
    rrca
    ccf
    nop
    ld a, [hl+]
    nop
    rlca
    nop
    inc bc
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
    and c
    nop
    ld de, $fb00
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
    ld bc, $8e00
    nop
    add h
    nop
    ld l, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [bc], a
    db $fd
    ldh a, [rP1]
    db $f4
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    add b
    ld h, b
    cp b
    ld h, b
    ret c

    jr nz, @-$0e

    nop
    ldh a, [rP1]
    pop af
    nop
    ldh [rP1], a
    call nz, $c400
    nop
    add h
    nop
    add h
    nop
    dec b
    nop
    add c
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
    ld d, b
    nop
    or b
    nop
    inc e
    nop
    db $fc
    nop
    and [hl]
    nop
    ld c, [hl]
    nop
    cp a
    nop
    ld [$f700], a
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ld hl, sp-$01
    ld sp, hl
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
    nop
    rra
    nop
    ld de, $0000
    nop
    ld hl, sp+$00
    rst $38
    nop
    adc a
    nop
    jp c, $fb00

    nop
    cp [hl]
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
    rst $30
    nop
    db $fd
    nop
    rst $38
    nop
    rst $30
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
    ld h, b
    nop
    ldh [rP1], a
    ld h, e
    nop
    ld l, d
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    ei
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
    inc bc
    cp $03
    cp $03
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
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    nop
    db $fc
    ld [bc], a
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
    inc b
    ld hl, sp+$00
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
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    inc b
    ld hl, sp+$00
    db $fc
    inc b
    ld hl, sp+$06
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    inc b
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    inc b
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$47
    ld hl, sp+$2f
    ld hl, sp-$01
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ld hl, sp-$10
    rra
    rst $38
    nop
    ld a, a
    nop
    rst $18
    nop
    add hl, bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, a
    nop
    db $fd
    nop
    ret nz

    nop
    ret nz

    nop
    nop
    nop
    add b
    nop
    cp b
    nop
    db $fc
    nop
    nop
    nop
    ld b, d
    nop
    nop
    nop
    inc b
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
    nop
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    jp z, $dd00

    nop
    cp $00
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
    rla
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
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp h
    nop
    ld hl, sp+$00
    ret z

    nop
    call nc, Call_094_4800
    nop
    ret z

    nop
    jr nz, jr_094_62d0

jr_094_62d0:
    ldh [rP1], a
    jr z, jr_094_62d4

jr_094_62d4:
    ret z

    nop
    ret nz

    nop
    ld b, b
    nop
    jr nz, jr_094_62dc

jr_094_62dc:
    nop
    nop
    jr z, jr_094_62e0

jr_094_62e0:
    ret nz

    nop
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ld c, b
    nop
    ld [hl], h
    nop
    xor [hl]
    nop
    add h
    nop
    ldh a, [rP1]
    ld h, b
    nop
    ld [hl], h
    nop
    and b
    nop
    cp d
    nop
    call $ad00
    nop
    ld a, [hl]
    nop
    ld e, a
    nop
    jp nz, Jump_094_7300

    nop
    db $e3
    nop
    ld c, l
    nop
    ld [hl], d
    nop
    ret nc

    nop
    ret


    nop
    push af
    nop
    or [hl]
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
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ret z

    nop
    db $ec
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    add b
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
    rst $38
    nop
    rst $38
    nop
    add sp, $00
    or b
    nop
    and b
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_094_635c

jr_094_635c:
    nop
    nop
    jr nz, jr_094_6360

jr_094_6360:
    nop
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_094_6368

jr_094_6368:
    stop
    nop
    nop
    ldh [rP1], a
    ldh [rP1], a
    pop bc
    nop
    push de
    nop
    ld [hl], l
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
    nop
    nop
    nop
    nop
    nop
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
    sbc $00
    xor l
    nop
    rst $38
    nop
    cp a
    nop
    cp $00
    ld a, l
    nop
    rst $38
    nop
    ld a, l
    nop
    ld sp, $1500
    nop
    add h
    nop
    ld [$8000], sp
    nop
    adc c
    nop
    and b
    nop
    ld hl, $1000
    nop
    jr nz, jr_094_63c2

jr_094_63c2:
    ld [$0000], sp
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    jr nz, jr_094_63d0

jr_094_63d0:
    stop
    nop
    nop
    ld d, b
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
    jr nz, jr_094_63e4

jr_094_63e4:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add d
    nop
    ld b, h
    nop
    adc l
    nop
    db $dd
    nop
    ld a, $00
    ld [$dd00], a
    nop
    dec a
    nop
    cp $00
    db $fd
    nop
    ei
    nop
    rst $30
    nop
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $30
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
    inc b
    nop
    inc b
    nop
    xor l
    nop
    xor $00
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $e3
    rra
    ld bc, $d1fe
    nop
    ld [hl], b
    nop
    ld [$ff00], sp
    nop
    rst $38
    nop
    rst $38
    nop
    ld d, c
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ret nz

    nop
    ldh [rP1], a
    ld hl, sp+$00
    ld hl, sp+$00
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
    cp a
    db $fc
    rst $38
    nop
    ld a, a
    nop
    ld c, [hl]
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, l
    nop
    dec e
    nop
    cp a
    nop
    or e
    nop
    adc d
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    adc e
    nop
    rra
    nop
    ld e, a
    nop
    dec c
    nop
    rst $28
    nop
    push bc
    nop
    ld b, c
    nop
    ld l, c
    nop
    ld l, [hl]
    nop
    push bc
    nop
    ld [hl], c
    nop
    ld h, l
    nop
    inc [hl]
    nop
    ret


    nop
    ld a, [hl+]
    nop
    sbc c
    nop
    cp c
    nop
    or l
    nop
    cp [hl]
    nop
    inc a
    nop
    ld e, b
    nop
    inc d
    nop
    inc bc
    nop
    inc bc
    nop
    cpl
    nop
    dec hl
    nop
    rra
    nop
    inc sp
    nop
    ld d, c
    nop
    ld b, b
    nop
    ld [de], a
    nop
    inc sp
    nop
    ld a, $00
    ld a, l
    nop
    db $db
    nop
    rst $30
    nop
    cp e
    nop
    ld a, a
    nop
    ld [hl+], a
    nop
    ld c, d
    nop
    sbc l
    nop
    cp e
    nop
    ld a, a
    nop
    cp a
    nop
    ld l, e
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld e, a
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
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld [$4900], sp
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    db $fc
    rst $38
    db $f4
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and h
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
    rst $38
    rst $38
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
    nop
    ld bc, $0100
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
    db $10
    rrca
    jr nz, jr_094_65b7

    sub b
    rrca
    ret nz

    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp+$04

jr_094_65b7:
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    rst $08
    nop
    pop hl
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
    add b
    nop
    call nz, $fd00
    nop
    cp $00
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
    or e
    add b
    ld hl, $a380
    nop
    add e
    nop
    ld b, a
    nop
    inc bc
    ret nz

    rlca
    nop
    scf
    nop
    rst $00
    add b
    and a
    ret nz

    and a
    jr nz, jr_094_6650

    nop
    ld l, a
    nop
    ld c, e
    nop
    rlca
    nop
    dec c
    nop
    ld c, $00
    inc bc
    nop
    dec c
    nop
    inc bc
    nop
    add hl, bc
    nop
    ld hl, $0000
    nop
    ld [$0000], sp
    nop
    ld bc, $0000
    nop
    ld bc, $3000
    nop
    nop
    nop
    nop
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
    and b
    nop
    jr z, jr_094_6636

jr_094_6636:
    call c, $de00
    nop
    ld e, [hl]
    nop
    ld a, [$e200]
    nop
    di
    nop
    cpl
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

jr_094_6650:
    rst $38
    nop
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
    rst $38
    nop
    cp a
    nop
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
    ld bc, $8000
    nop
    ldh [rP1], a
    ldh a, [rP1]
    jr nz, jr_094_667a

jr_094_667a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_094_668a

jr_094_668a:
    ld b, b
    nop
    push bc
    nop
    ld a, [$ff00]
    rst $38
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
    db $fd
    nop
    jp c, $fb00

    nop
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    ld [$d700], a
    nop
    rst $20
    nop
    jp $c300


    nop
    sub $00
    ld a, h
    nop
    stop
    ret nc

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
    nop
    nop
    nop
    nop
    ld de, $0100
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
    stop
    sub $00
    rst $30
    nop
    ei
    nop
    cp [hl]
    nop
    ret


    nop
    call nz, Call_000_1800
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
    rst $38
    nop
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
    push bc
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ld l, a
    nop
    ld l, b
    nop
    ld h, b
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
    jr nz, jr_094_673e

jr_094_673e:
    and c
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
    add hl, sp
    nop
    ld a, [bc]
    nop
    rst $38
    nop
    ld e, e
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp l
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    scf
    nop
    sbc a
    nop
    ld [hl], d
    nop
    ld l, a
    nop
    ld l, c
    nop
    pop af
    nop
    jr c, jr_094_6772

jr_094_6772:
    inc l
    nop
    jr z, jr_094_6776

jr_094_6776:
    jr c, jr_094_6778

jr_094_6778:
    inc h
    nop
    jr nz, jr_094_677c

jr_094_677c:
    jr nz, jr_094_677e

jr_094_677e:
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $2300
    nop
    jr nc, jr_094_678a

jr_094_678a:
    add a
    nop
    ccf
    nop
    rst $08
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
    ld e, d
    nop
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
    ld c, a
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
    nop
    ld d, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    call Call_000_1600
    nop
    rla
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
    ld [bc], a
    nop
    rlca
    nop
    rra
    nop
    cp a
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
    db $dd
    nop
    db $ed
    nop
    xor $00
    ld a, [$fc00]
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    db $fc
    nop
    cp $00
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
    jp c, $bf00

    nop
    add hl, bc
    nop
    dec h
    nop
    or c
    nop
    add e
    nop
    stop
    stop
    ld de, $2000
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0900], sp
    nop
    ld bc, $0100
    nop
    ld bc, $0000
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
    ld bc, $0100
    nop
    ld b, c
    nop
    dec b
    nop
    add e
    nop
    dec de
    nop
    ld [hl], a
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
    rst $20
    nop
    db $d3
    nop
    sub c
    nop
    ld a, h
    nop
    ld a, d
    nop
    db $fd
    nop
    rst $38
    nop
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    nop
    rst $08
    nop
    rlca
    nop
    rlca
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
    ld bc, $0400
    nop
    sub a
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
    cp $01
    add h
    nop
    and h
    nop
    or b
    nop
    ld a, d
    nop
    ld e, e
    nop
    dec a
    nop
    rst $18
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
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, e
    nop
    sub l
    nop
    dec hl
    nop
    inc bc
    nop
    rrca
    nop
    inc de
    nop
    rlca
    nop
    ld b, $00
    sub a
    nop
    rrca
    nop
    ld c, $00
    dec de
    nop
    dec b
    nop
    nop
    nop
    ld bc, $0200
    nop
    ld d, $00
    inc b
    nop
    or h
    nop
    sub l
    nop
    add l
    nop
    add l
    nop
    rrca
    nop
    ld [hl], $00
    inc c
    nop
    inc c
    nop
    ld c, $00
    dec hl
    nop
    inc a
    nop
    rst $38
    nop
    rlc b
    rst $28
    nop
    cp $00
    rst $38
    nop
    rst $18
    nop
    and a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], e
    nop
    db $fd
    nop
    and $00
    jp nc, Jump_094_7600

    nop
    ld a, [hl-]
    nop
    cp e
    nop
    ei
    nop
    ld a, a
    nop
    cp $03
    jr nz, @+$01

    rlca
    rst $38
    sbc a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    dec a
    nop
    and a
    nop
    ld [hl], b
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    dec e
    nop
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0f00], sp
    nop
    rlca
    nop
    inc bc
    nop
    rlca
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
    sub b
    nop
    add c
    nop
    sbc l
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
    jr jr_094_69d3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_094_69e3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    ld de, $2928
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_094_6a04

jr_094_69d3:
    ld [hl-], a
    ld de, $3433
    dec [hl]
    ld [hl], $37
    jr c, jr_094_6a15

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_094_69e3:
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
    ld c, h
    ld a, [hl-]
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, c
    ld d, c
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld c, h
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_094_6a04:
    ld a, [hl-]
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
    ld l, c
    ld l, d
    ld l, e

jr_094_6a15:
    ld l, h
    ld l, l
    ld l, [hl]
    ld de, $706f
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
    ld c, h
    adc l
    adc [hl]
    adc a
    sub b
    ld c, h
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
    ld c, h
    ld c, h
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    ld c, h
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
    or l
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
    ld de, $c3c2
    call nz, Call_094_4c4c
    push bc
    add $c7
    ret z

    ret


    jp z, $cb4c

    call z, $cd11
    adc $cf
    ret nc

    pop de
    ld c, h
    jp nc, Jump_000_11d3

    call nc, $d6d5
    rst $10
    ret c

    ld de, $d911
    jp c, $dcdb

    db $dd
    sbc $df
    ldh [rNR11], a
    ld de, $e2e1
    db $e3
    db $e4
    push hl
    ld de, $e657
    rst $20
    add sp, -$17
    ld [$eceb], a
    ld de, $ed11
    xor $ef
    ldh a, [$f1]
    ld de, $1111
    ld a, [c]
    di
    db $f4
    push af
    ld de, $1111
    ld de, $f7f6
    ld hl, sp-$07
    ld a, [$1111]
    ld de, $11fb
    ld de, $1111
    ld de, $fc11
    db $fd
    cp $ff
    nop
    ld bc, $1111
    ld de, $0302
    ld de, $1111
    ld de, $041a
    dec b
    ld b, $3a
    rlca
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
    dec b
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
    inc bc
    nop
    inc bc
    inc bc
    dec b
    nop
    nop
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
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0303
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0303
    inc bc
    inc bc
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld b, $06
    ld b, $06
    inc bc
    nop
    inc bc
    inc bc
    nop
    dec b
    ld bc, $0202
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    dec b
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0500
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    ld bc, $0606
    ld b, $06
    ld b, $06
    dec b
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld bc, $0505
    dec b
    dec b
    ld b, $06
    ld b, $06
    ld b, $05
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0003
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    dec b
    ld bc, $0101
    nop
    nop
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
    inc bc
    ld bc, $0001
    inc bc
    nop
    ld b, e
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    inc bc
    dec b
    ld bc, $0000
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
    nop
    inc bc
    inc bc
    ld bc, $0000
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
    inc bc
    inc bc
    ld bc, $0b09
    nop
    nop
    nop
    dec bc
    ld [$0000], sp
    nop
    nop
    jr nz, jr_094_6c27

    dec bc
    dec bc
    ld bc, $7f09
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a

jr_094_6c27:
    nop
    rst $28
    nop
    ld l, a
    nop
    ld l, a
    nop
    rst $28
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    or a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $20
    nop
    rst $08
    nop
    rst $00
    nop
    db $d3
    nop
    add a
    nop
    and e
    nop
    di
    nop
    ld b, e
    nop
    ld b, a
    nop
    rlca
    nop
    dec b
    nop
    ld b, a
    nop
    add d
    nop
    jp nz, $a000

    nop
    add b
    nop
    jr nz, jr_094_6c74

jr_094_6c74:
    ld b, b
    nop
    stop
    ld [bc], a
    nop
    stop
    nop
    nop
    ld bc, $0900
    nop
    ld [$0800], sp
    nop
    add h
    nop
    inc c
    nop
    ld l, h
    nop
    ld d, l
    nop
    jr nz, jr_094_6c90

jr_094_6c90:
    ld [hl], b
    nop
    ld bc, $0100
    nop
    ld b, h
    nop
    dec c
    nop
    jr z, jr_094_6c9c

jr_094_6c9c:
    jr c, jr_094_6c9e

jr_094_6c9e:
    ld de, $0b00
    nop
    rlca
    nop
    dec e
    nop
    adc a
    nop
    rrca
    nop
    xor [hl]
    nop
    adc c
    nop
    add [hl]
    nop
    ld b, e
    add b
    and a
    nop
    add l
    nop
    dec l
    nop
    ld a, $00
    ld a, a
    nop
    ld e, a
    nop
    ccf
    nop
    ld [hl], a
    nop
    scf
    nop
    ld e, e
    nop
    push de
    nop
    db $d3
    nop
    xor e
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
    cp $01
    rst $38
    ld bc, $00ff
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
    ld b, $ff
    inc de
    rst $38
    daa
    rst $38
    cp a
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    inc bc
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
    cp $00
    rst $38
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    rst $30
    nop
    rst $38
    nop
    ei
    nop
    rst $30
    nop
    rlca
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    ld bc, $00ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $00
    rst $38
    nop
    rst $28
    nop
    di
    nop
    rst $38
    nop
    cp a
    nop
    ld e, l
    nop
    db $ec
    nop
    call nc, $d000
    nop
    ld h, b
    nop
    jp z, $df00

    nop
    sbc e
    nop
    or a
    nop
    db $d3
    nop
    or a
    nop
    ld d, a
    nop
    dec c
    nop
    inc c
    nop
    add l
    nop
    add hl, de
    nop
    ld l, l
    nop
    db $dd
    nop
    db $dd
    nop
    rst $08
    nop
    xor [hl]
    nop
    sbc a
    nop
    scf
    ld [$001e], sp
    ld e, [hl]
    nop
    ld a, h
    nop
    adc c
    nop
    ld d, e
    nop
    ld d, h
    nop
    xor d
    nop
    ld [hl], l
    nop
    inc d
    nop
    add hl, hl
    nop
    ld a, [hl+]
    nop
    inc sp
    nop
    xor e
    nop
    rrca
    nop
    jp c, $df00

    nop
    sbc a
    nop
    sbc a
    nop
    cpl
    nop
    sub a
    nop
    rst $18
    nop
    rst $28
    nop
    ld e, a
    nop
    rst $28
    nop
    rst $28
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    add b
    cp $81
    db $fd
    ld [bc], a
    rst $38
    add b
    db $fd
    add d
    or $0f
    rst $38
    ld [bc], a
    rst $38
    dec bc
    rst $30
    rrca
    ld a, a
    adc a
    rst $28
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
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$02
    nop
    ldh [rP1], a
    jp nz, $8800

    nop
    nop
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ld hl, $4000
    nop
    add c
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    ccf
    rst $38
    ccf
    ld hl, sp+$07
    db $fd
    ld [bc], a
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    ld bc, $0ff3
    rst $38
    inc bc
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    rst $18
    jr nz, @+$01

    nop
    rst $28
    db $10
    rst $18
    jr nz, @+$01

    nop
    rst $28
    db $10
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
    ld a, a
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
    rst $38
    nop
    sbc a
    nop
    or a
    nop
    rst $30
    nop
    ccf
    ld b, b
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
    rst $18
    jr nz, @+$01

    nop
    rst $18
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
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    rst $38
    nop
    rst $30
    ld [$906f], sp
    or $09
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp l
    ld b, e
    add sp, $17
    and $1f
    xor $17
    rst $28
    rra
    ei
    rra
    ei
    ld e, a
    rst $18
    cp a
    ld [hl], a
    cp a
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rrca
    ldh a, [$7f]
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
    nop
    nop
    nop
    nop
    pop bc
    nop
    db $e3
    nop
    rst $38
    nop
    rst $18
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
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    push hl
    dec de
    db $eb
    inc d
    db $d3
    inc l
    cp $01
    cp a
    ld b, b
    db $10
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add d
    rst $38
    ld b, $ff
    inc bc
    rst $38
    add hl, bc
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    sub b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld [$01ff], sp
    rst $38
    ld bc, $00ff
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
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$ffff], sp
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    di
    inc c
    rst $38
    nop
    cp $01
    rst $38
    ld [$42bd], sp
    ld h, d
    sbc l
    ld a, e
    and h
    reti


    ld h, $32
    rst $08
    res 7, a
    sub a
    db $eb
    cp e
    rst $20
    adc a
    ei
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
    rst $38
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
    dec b
    ld a, [$00ff]
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
    add b
    nop
    add b
    nop
    nop
    nop
    ret nz

    nop
    ldh a, [rP1]
    add sp, $00
    ldh [rP1], a
    ret nz

    nop
    add b
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
    ccf
    rst $18
    ccf
    rst $28
    rra
    rst $08
    ccf
    rst $10
    cpl
    rst $30
    rrca
    db $eb
    rla
    ei
    rlca
    db $fd
    inc bc
    rst $38
    ld bc, $0df3
    di
    dec c
    or $0d
    ld a, [c]
    dec c
    or $09
    di
    inc c
    or [hl]
    ld [$08b4], sp
    di
    inc c
    xor b
    inc d
    or [hl]
    ld [$1ca2], sp
    xor d
    inc d
    ld [hl], $08
    or d
    inc c
    xor e
    inc d
    and b
    inc e
    adc h
    db $10
    sub d
    inc c
    add d
    inc e
    ld c, $10
    xor h
    db $10
    add h
    jr @-$72

    db $10
    cp [hl]
    nop
    sub b
    inc c
    ld [hl-], a
    inc c
    add d
    inc e
    adc d
    inc e
    ld [bc], a
    inc e
    ld [bc], a
    inc e
    add d
    inc e
    ld [hl+], a
    inc e
    ld [bc], a
    inc e
    ld a, [hl+]
    inc e
    ld [hl+], a
    inc e
    xor d
    inc e
    adc d
    inc e
    adc [hl]
    inc e
    and d
    inc e
    add d
    inc e
    add d
    inc e
    add d
    inc e
    sub d
    inc e
    add d
    inc e
    add d
    inc e
    add d
    inc e
    add d
    inc e
    add d
    inc e
    sub d
    inc e
    adc d
    inc e
    sub [hl]
    inc e
    sub [hl]
    inc e
    sbc [hl]
    inc e
    sbc h
    ld e, $9c
    ld e, $98
    ld e, $9c
    ld e, $9c
    ld e, $bf
    ld e, $9f
    ld e, $9f
    ld e, $9f
    ld e, $bf
    ld e, $3f
    sbc [hl]
    ccf
    sbc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    sbc [hl]
    ld a, a
    sbc [hl]
    rst $38
    sbc [hl]
    ld a, [hl]
    sbc a
    ld a, [hl]
    sbc a
    cp $9f
    cp $9f
    ld a, a
    sbc a
    rst $38
    sbc a
    rst $18
    cp a
    rst $18
    cp a
    cp a
    rst $38
    cp a
    rst $38
    cp e
    db $fc
    rst $38
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$1f]
    ldh [$7f], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $ff
    cp $ff
    db $fd
    cp $f9
    cp $f9
    cp $f9
    cp $fa
    db $fc
    ld a, [c]
    db $fc
    ld a, [c]
    ld hl, sp-$0a
    ld hl, sp-$0e
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$0a
    ld sp, hl
    di
    ld hl, sp-$0d
    db $fc
    di
    db $fc
    ldh a, [rIE]
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, b
    rst $38
    ld [hl], c
    cp $70
    rst $38
    ld [hl], c
    cp $00
    rst $38
    inc bc
    db $fc
    ld c, a
    ldh a, [$df]
    ldh [$df], a
    ldh [$df], a
    ldh [rIE], a
    ret nz

    cp $c0
    ld hl, sp-$40
    sbc b
    ret nz

    sub b
    ret nz

    ldh [$80], a
    ldh a, [$80]
    ldh a, [$80]
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret z

    nop
    ret z

    nop
    db $fc
    nop
    rst $38
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ei
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ccf
    ld a, a
    ccf
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
    cp [hl]
    ld a, a
    cp [hl]
    ld a, a
    db $fc
    ld a, a
    ld a, h
    ld a, [hl]
    ld a, b
    ld a, [hl]
    ld hl, sp+$7c
    ld hl, sp+$7c
    ld hl, sp+$7c
    ld a, b
    ld hl, sp+$70
    ld hl, sp+$70
    rst $38
    db $10
    rst $38
    ld b, b
    rst $38
    pop hl
    cp $f9
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    cp $fe
    db $fd
    ldh a, [rIE]
    call nz, $b1fb
    adc $b1
    cp $07
    ld hl, sp-$29
    ld hl, sp+$07
    ld hl, sp-$78
    rst $30
    ld e, a
    and b
    sub e
    rst $38
    ld l, a
    ldh a, [$d0]
    rst $38
    ld e, e
    cp h
    rst $18
    ldh [$67], a
    cp b
    add a
    ld hl, sp+$1f
    and $8f
    db $fc
    and e
    db $fc
    inc hl
    db $dd
    ld h, h
    ei
    rst $20
    sbc $f9
    or $e3
    db $fd
    ldh [rIE], a
    ei
    db $fc
    or $fd
    rst $38
    rst $38
    rst $38
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
    rlca
    ld hl, sp+$7f
    add b
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
    ldh a, [rP1]
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    cp $00
    db $fc
    nop
    db $fc
    nop
    db $ec
    nop
    ret nz

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    db $f4
    nop
    cp $00
    rst $38
    nop
    rra
    ldh [$f8], a
    nop
    cp b
    nop
    ldh [rP1], a
    ld a, [c]
    nop
    ld hl, sp+$00
    xor b
    nop
    ld [hl], b
    nop
    ret nc

    nop
    jr nz, jr_094_7272

jr_094_7272:
    db $e4
    nop
    call c, $f800
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    rst $00
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ldh a, [$fc]
    ldh a, [$f8]
    ldh a, [$f8]
    ldh [$f8], a
    ret nz

    ldh a, [$c0]
    ldh a, [$c0]
    ldh a, [$80]
    ldh a, [$80]
    ldh [$81], a
    pop hl
    ld bc, $01e1
    pop bc
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    ld a, d
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
    rst $30
    add sp, -$5c
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
    rst $38
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
    nop

Jump_094_7300:
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
    cp $00
    rst $38
    nop
    nop
    rst $38
    and b
    rst $38
    add sp, -$01
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    ret nz

    nop
    db $fc
    nop
    ld b, $00
    nop
    nop
    rst $38
    nop
    ld hl, sp+$00
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
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    cp $00
    rst $38
    nop
    cp $00
    ld a, e
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
    nop
    nop
    nop
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
    ld c, [hl]
    nop
    rst $18
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $28
    db $10
    ld c, a
    or b
    rra
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
    ld hl, sp+$07
    ldh [$1f], a
    ldh [rNR12], a
    ld h, $e4
    inc h
    db $e4
    ld c, h
    ret z

    ld c, b
    ret z

    ld c, c
    ret z

    sub e
    sub b
    sub e
    sub b
    daa
    jr nz, jr_094_73c8

    jr nz, jr_094_740d

    dec h
    or b
    ld c, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld e, c
    rst $38
    db $f4
    nop
    or $00
    add hl, hl
    nop
    and h
    nop
    db $f4
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp c, $ffff

    rst $38
    rst $38
    rst $38
    rst $38

jr_094_73c8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    db $fd
    nop
    db $e4
    nop
    ret c

    nop
    db $d3
    nop
    and [hl]
    nop
    ret nz

    nop
    ret nc

    nop
    stop
    nop
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    jr nz, jr_094_73f4

jr_094_73f4:
    nop
    nop
    ret nz

    nop
    add b
    nop
    ld b, b
    nop
    ret nz

    nop
    ldh [rP1], a
    or h
    nop
    db $ec
    nop
    db $fc
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    rst $38

jr_094_740d:
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    rst $38
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
    nop
    add hl, sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    db $e4
    nop
    sub [hl]
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    jp nz, $fb00

    nop
    jp hl


    nop
    or $00
    or $00
    rst $38
    nop
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
    ld a, a
    add b
    nop
    nop
    add b
    nop
    ld [c], a
    nop
    ld [c], a
    nop
    pop hl
    nop
    pop af
    nop
    rst $20
    nop
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
    dec b
    add b
    dec b
    nop
    ld a, l
    ld [bc], a
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
    inc bc
    nop
    ld c, a
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
    cp a
    nop
    cp a
    nop
    rra
    nop
    rst $18
    nop
    ld c, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, h
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    db $f4
    nop
    db $e4
    nop
    pop hl
    nop
    adc b
    nop
    ld de, $c000
    nop
    inc d
    nop
    jr nz, jr_094_74e2

jr_094_74e2:
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
    pop de
    nop
    sub $00
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
    rst $38
    rst $38
    rst $38
    add b
    nop
    nop
    nop
    nop
    cp a
    nop
    nop
    nop
    reti


    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    push af
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    rlc b
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
    add b
    nop
    ld h, b
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
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
    ld [$0000], sp
    nop
    nop
    nop
    add b
    nop
    or b
    nop
    db $fc
    nop
    ccf
    nop
    ccf
    nop
    dec c
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
    ld a, a
    nop
    rra
    nop
    rra
    nop
    ccf
    nop
    rrca
    nop
    rra
    nop
    ld e, a
    nop
    ccf
    nop
    cp a
    nop
    rst $38
    nop
    cp $01
    db $fd
    inc bc
    or e
    ld c, a
    add e
    ld a, a
    inc bc
    rst $38
    add a
    ld a, a
    rst $38
    rlca
    rst $38
    rlca
    db $fc

jr_094_7595:
    rlca
    ldh a, [$03]
    ret nz

    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    ret nz

    inc bc
    ld hl, sp+$03
    db $fc
    db $e3
    db $fc
    di
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $e3
    db $fc
    db $e3
    jr jr_094_7595

    nop
    db $e3
    nop
    db $e3
    db $10
    db $e3
    db $10
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    db $10
    db $e3
    nop
    db $e3
    nop
    db $e3
    db $10
    db $e3
    db $10
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    nop
    db $e3
    db $10
    db $e3
    db $10
    db $e3
    db $10
    db $e3
    db $10
    db $e3
    db $10
    db $e3
    db $10
    db $e3
    db $10
    di
    db $10
    di
    inc e
    db $e3
    inc e
    di
    db $fc
    add a
    ldh a, [$03]
    nop
    inc bc
    nop
    inc bc

Jump_094_7600:
    ld bc, $0303
    rlca
    rrca
    rlca
    rrca
    rlca
    dec b
    inc bc
    db $fd
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    add sp, $17
    ld sp, hl
    ld b, $be
    ld bc, $001f
    ccf
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $8000
    nop
    ldh [rP1], a
    ld a, [$ff00]
    nop
    rst $38
    nop
    stop
    nop
    nop
    nop
    nop
    ld b, $00
    rra
    nop
    daa
    nop
    ld l, a
    nop
    cp [hl]
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    rra
    nop
    rla
    nop
    inc bc
    nop
    ld bc, $fe00
    ld bc, $01fe
    rst $38
    ld bc, $03fd
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    rst $18
    ld a, $bf
    ld a, h
    ld a, a
    ld hl, sp-$11
    ldh a, [rIE]
    ldh [$be], a
    ret nz

    ld a, [hl]
    add b
    cp $00
    cp $00
    cp $00
    db $ec
    nop
    ld [c], a
    nop
    db $ec
    nop
    db $fc
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    jp nz, $c400

    nop
    jp $c000


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
    add b
    nop
    add b
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
    nop
    nop
    ld h, b
    nop
    ld b, b
    nop
    add b
    nop
    jr nz, jr_094_76b4

jr_094_76b4:
    jr nc, jr_094_76b6

jr_094_76b6:
    ld b, b
    nop
    ret nz

    nop
    jr c, jr_094_76bc

jr_094_76bc:
    ld d, e
    nop
    sbc $00
    push af
    nop
    ei
    nop
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
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$8a], a
    push af
    and $f9
    ld hl, sp-$01
    ld a, [hl]
    rst $38
    sbc a
    ld a, a
    rst $28
    rra
    ld a, e
    rlca
    dec e
    inc bc
    rrca
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    ld c, $00
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ld bc, $0400
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
    rlca
    nop
    rra
    nop
    ccf
    nop
    rlca
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    jr nc, jr_094_7741

    nop
    ld b, b
    nop
    ld bc, $8000
    nop
    add b
    nop
    ld [hl+], a
    nop
    add d
    nop
    xor b
    nop
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
    rrca
    cp $1f
    rst $38

jr_094_7741:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $18
    ret c

    add a
    sbc b
    rlca
    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$11

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr jr_094_7767

    jr jr_094_7769

    jr @+$09

    jr @+$09

    ld e, b

jr_094_7767:
    ld b, a
    ld e, b

jr_094_7769:
    rlca
    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$19

    jr @+$09

    jr @+$21

    jr @+$19

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$09

    jr @+$11

    jr @+$09

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr @+$21

    jr jr_094_77cb

    jr jr_094_77cd

    jr jr_094_77cf

    jr c, @+$21

    jr c, jr_094_77d3

    jr c, jr_094_77d5

    jr c, jr_094_77d7

    jr jr_094_77d9

    jr jr_094_77db

    jr jr_094_77dd

    jr c, jr_094_77df

    jr c, jr_094_77e1

    jr c, jr_094_77e3

    jr c, @+$21

    jr c, @+$21

    jr c, jr_094_77e9

    cp b

jr_094_77cb:
    rra
    cp b

jr_094_77cd:
    rra
    cp b

jr_094_77cf:
    rra
    ld hl, sp-$61
    db $fc

jr_094_77d3:
    rst $38
    rst $38

jr_094_77d5:
    rst $38
    rst $38

jr_094_77d7:
    rst $38
    rst $38

jr_094_77d9:
    ld a, a
    ld [hl], a

jr_094_77db:
    inc bc
    inc bc

jr_094_77dd:
    nop
    nop

jr_094_77df:
    nop
    ret nc

jr_094_77e1:
    cpl
    db $e4

jr_094_77e3:
    dec de
    ld hl, sp+$07
    cp $01
    ld a, [hl]

jr_094_77e9:
    ld bc, $00ff
    rst $38
    nop
    ld a, e
    nop
    ld a, a
    nop
    ld l, a
    nop
    ccf
    nop
    ld b, a
    nop
    rra
    nop
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld b, b
    nop
    ld bc, $0700
    nop
    inc bc
    nop
    add c
    nop
    ld b, l
    nop
    add l
    nop
    rst $38
    db $fc
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $20
    rst $38
    adc $fb
    sbc h
    or a
    ld a, b
    ld a, a
    ldh [$df], a
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
    db $fd
    nop
    rst $38
    nop
    ld a, a
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $28
    nop
    and $00
    jp RST_00


    nop
    ld b, b
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
    ld [bc], a
    nop
    nop
    nop
    dec h
    nop
    inc l
    nop
    dec [hl]
    nop
    ld a, a
    nop
    sbc $00
    ld a, [$9100]
    nop
    push hl
    nop
    ld [hl], a
    nop
    rst $30
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
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38
    ld a, a
    rst $18
    ccf
    rst $28
    rra
    ei
    rlca
    db $fc
    inc bc
    cp a
    nop
    rra
    nop
    rrca
    nop
    dec bc
    nop
    inc hl
    nop
    dec b
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
    ld h, b
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    rst $30
    nop
    cpl
    nop
    xor l
    nop
    ld [bc], a
    nop
    rst $38
    ldh [$df], a
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
    rst $38
    nop
    ei
    nop
    ei
    nop
    cp $00
    ccf
    nop
    cp a
    nop
    ld a, a
    nop
    cpl
    nop
    rst $18
    nop
    db $ed
    nop
    rst $28
    nop
    ld h, $00
    push de
    nop
    sub l
    nop
    ld [bc], a
    nop
    nop
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
    inc b
    nop
    inc b
    nop
    ld [bc], a
    nop
    inc bc
    nop
    nop
    nop
    and c
    nop
    ld e, [hl]
    nop
    inc c
    nop
    ld c, c
    nop
    dec b
    nop
    cpl
    nop
    rla
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
    add b
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    rra
    rra
    rlca
    rlca
    inc bc
    ld a, [hl]
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    dec b
    nop
    ld hl, $2300
    nop
    jr jr_094_7994

jr_094_7994:
    ld a, [hl]
    nop
    rra
    nop
    ld a, a
    nop
    ccf
    nop
    inc b
    nop
    ld bc, $1f00
    nop
    ld a, [hl-]
    nop
    push af
    nop
    or a
    nop
    ld b, a
    nop
    add e
    nop
    adc c
    nop
    call nz, $ff00
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
    cp a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    rra
    nop
    cp l
    nop
    ld c, a
    nop
    ld c, l
    nop
    dec c
    nop
    ccf
    nop
    dec c
    nop
    dec bc
    nop
    dec c
    nop
    dec bc
    nop
    inc c
    nop
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld d, b
    nop
    ld c, d
    nop
    inc bc
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld b, h
    nop
    rlca
    nop
    rlca
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    ld bc, $0b00
    nop
    ld bc, $0700
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld e, $00
    rlca
    nop
    ld c, a
    nop
    rrca
    nop
    dec d
    nop
    ld d, d
    nop
    ld e, a
    nop
    ld e, a
    nop
    rst $38
    nop
    ccf
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
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$05
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $00
    ccf
    ld sp, hl
    rlca
    cp $01
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    ld a, l
    ld [bc], a
    rst $38
    nop
    cp $01
    rst $38
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    jr nz, jr_094_7a6a

jr_094_7a6a:
    ld [hl-], a
    nop
    inc de
    nop
    rra
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $38
    db $10
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
    db $fd
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
    db $dd
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    nop
    ld a, a
    nop
    rst $18
    nop
    xor a
    nop
    rst $28
    nop
    ld l, [hl]
    nop
    ld h, e
    nop
    or e
    nop
    di
    nop
    ld a, e
    nop
    inc hl
    nop
    ld c, d
    nop
    dec l
    nop
    ld l, e
    nop
    ld b, e
    nop
    ld b, c
    nop
    di
    nop
    and c
    nop
    ldh [rP1], a
    ld bc, $8100
    nop
    inc bc
    nop
    add e
    nop
    dec de
    nop
    ld e, e
    nop
    ld l, a
    nop
    rrca
    nop
    xor [hl]
    nop
    halt
    ld a, [$c100]
    nop
    xor l
    nop
    rst $38
    nop
    xor [hl]
    nop
    cp e
    nop
    rst $38
    nop
    rst $10
    nop
    rst $38
    nop
    rst $18
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
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $18
    and b
    or [hl]
    call $ffec
    db $fd
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
    rrca
    rst $00
    ccf
    pop hl
    rra
    ldh [$1f], a
    push af
    ld a, [bc]
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $18
    jr nz, jr_094_7b23

    nop
    ld b, d

jr_094_7b23:
    nop
    db $eb
    nop
    rst $38
    nop
    rst $10
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $38
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

Call_094_7b3f:
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
    nop
    rst $38
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
    push af
    nop

jr_094_7b5c:
    ld [hl], l
    nop
    rst $30
    nop
    rst $38
    nop
    ld e, a
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
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30

jr_094_7b77:
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $30
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
    jr nz, jr_094_7b5c

    inc l
    rst $18
    jr nz, @+$01

    nop
    rst $10
    jr z, @-$07

    ret z

    db $db
    db $ec
    or $ed
    call $fcfe
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
    ld a, a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add e
    ld a, a
    and c
    ld e, a
    jr c, jr_094_7b77

    ld [hl], e
    nop
    sbc [hl]
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
    ld [bc], a
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
    rst $38
    nop
    rst $38
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
    nop
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
    ld bc, $feff
    ld bc, $01ff
    rst $38
    ld bc, $619e
    rst $08
    ld [hl], d
    sub [hl]
    ld l, e
    rst $28
    inc sp
    xor d
    ld a, l
    sbc b
    ld a, a
    ld a, [$3055]
    rst $28
    xor c
    ld a, a
    call c, Call_094_7b3f
    rst $30
    cp a
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
    ld a, a
    rst $38
    rra
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
    rst $38
    ld b, $ff
    ld b, $f9
    ld b, $fb
    ld b, $ff
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
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    rst $38
    nop
    ld a, [$ff05]
    nop
    and $19
    db $f4
    dec bc
    sbc $29
    cp $01
    db $fd
    ld [bc], a
    ld a, l
    add d
    call c, $7fa3
    and c
    sub a
    ld l, c
    jp nz, Jump_094_517d

    xor $61
    cp $39
    rst $38
    sbc h
    rst $38
    db $fd
    rst $18
    db $fd
    rst $18
    sbc a
    rst $38
    sbc $ff
    cp l
    rst $28
    rst $28
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
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
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
    jr jr_094_7cd3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_094_7ce3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_094_7cf3

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_094_7d03

    ld [hl-], a

jr_094_7cd3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_094_7d13

    ld a, [hl-]
    dec l
    dec l
    dec sp
    inc a
    dec a
    dec l
    ld a, $3f

jr_094_7ce3:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    dec l
    dec l
    dec l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    dec l
    ld c, d
    ld c, e

jr_094_7cf3:
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
    dec l
    ld e, d

jr_094_7d03:
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
    dec a
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c

jr_094_7d13:
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
    dec a
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
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
    dec a
    dec a
    dec a
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
    dec a
    dec a
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
    dec a
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
    dec a
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    dec l
    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp+$2d
    dec l
    ld sp, hl
    dec a
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    dec l
    dec l
    dec l
    dec l
    inc b
    dec b
    dec l
    ld b, $07
    ld [$2d09], sp
    ld a, [bc]
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec bc
    inc c
    dec c
    dec l
    dec l
    ld c, $0f
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    dec l
    db $10
    ld de, $0303
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
    dec b
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0300
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
    ld bc, $0001
    inc bc
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    nop
    nop
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0001
    ld bc, $0101
    inc bc
    ld b, $06
    ld b, $06
    ld b, $03
    inc bc
    inc bc
    dec b
    ld bc, $0001
    ld bc, $0101
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    dec b
    inc bc
    ld b, $06
    ld b, $06
    ld b, $06
    ld bc, $0101
    nop
    ld bc, $0101
    nop
    ld bc, $0306
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld bc, $0303
    inc bc
    inc bc
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    ld bc, $0001
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    nop
    ld bc, $0303
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
    ld bc, $0000
    inc bc
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    ld bc, $0303
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
    ld bc, $0101
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec bc
    dec bc
    dec bc
    dec bc
    ld bc, $0101
    ld bc, $0809
    ld bc, $0b0b
    dec bc
    dec bc
    ld bc, $010b
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    ld [$010b], sp
    ld bc, $0b0b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    add hl, bc
    cp $00
    ld a, [hl]
    nop
    ld a, a
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
    ei
    nop
    ld a, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    cp a
    nop
    rst $30
    nop
    rst $10
    nop
    rst $10
    nop
    ld [hl], a
    nop
    or a
    nop
    sub a
    nop
    add a
    nop
    adc a
    nop
    rst $30
    nop
    ld d, a
    nop
    ld e, a
    nop
    rst $20
    nop
    xor e
    nop
    rst $08
    nop
    ld a, e
    nop
    dec sp
    nop
    ld a, [hl-]
    nop
    dec hl
    nop
    ld [hl+], a
    nop
    ld bc, $0000
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    stop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    ld bc, $0000
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc b
    nop
    inc bc
    nop
    dec bc
    nop
    add hl, de
    nop
    jr nc, jr_094_7fc2

jr_094_7fc2:
    dec c
    nop
    dec b
    nop
    dec b
    nop
    ld bc, $1500
    nop
    adc a
    nop
    dec hl
    nop
    ld l, a
    nop
    rst $18
    nop
    cp a
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
    rst $30
    ld [$04ff], sp
    rst $38
    inc b

jr_094_7fee:
    rst $38
    inc b
    rst $08
    jr c, jr_094_7fee

    inc d
    rst $38
    inc b
    rst $30
    ld a, [bc]
    rst $38
    inc b
    db $db
    inc h
    ld a, [$fb0f]
    rrca
