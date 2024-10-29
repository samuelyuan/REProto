SECTION "ROM Bank $014", ROMX[$4000], BANK[$14]

    cp $20
    db $fc
    jr nz, @-$02

    jr nz, @+$01

    ld b, a
    rst $38
    ld b, a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
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
    nop
    nop
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
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ccf
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    db $f4
    nop
    ld e, a
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld l, a
    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $07
    nop
    nop
    nop
    nop
    ld [$0505], sp
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    add hl, bc
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec b
    dec d
    ld a, [bc]
    ld d, $17
    jr jr_014_4094

jr_014_4094:
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    dec b
    ld e, $1f
    dec b
    jr nz, jr_014_40c0

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_014_40d0

    ld a, [hl+]
    dec hl
    dec b
    inc l
    dec b
    dec l
    ld l, $2f
    jr nc, jr_014_40e2

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_014_40f2

    dec b
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_014_40c0:
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

jr_014_40d0:
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
    ld h, c

jr_014_40e2:
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld e, e
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_014_40f2:
    ld [hl], c
    nop
    nop
    nop
    ld [hl], d

Jump_014_40f7:
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
    nop
    nop
    nop
    ld a, a
    add b
    add c
    add d
    add e
    ld a, [bc]
    add h
    add l
    add [hl]
    ld a, $87
    adc b
    adc c
    nop
    nop
    adc d
    adc d
    adc e
    adc h
    adc l
    add e
    ld a, [bc]
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
    dec b
    ld a, [bc]
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and e
    and h
    and l
    and [hl]
    and a
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    and e
    and e
    xor [hl]
    xor a
    or b
    dec b
    dec b
    dec b
    ld a, [bc]
    ld a, [bc]
    or c
    ld a, $3e
    or d
    or e
    nop
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    dec b
    ld a, [bc]
    ld a, [bc]
    cp e
    cp h
    ld a, $bd
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ld a, [bc]
    ld a, [bc]
    ret


    jp z, $a3cb

    and e
    and e
    and e
    and e
    and e
    and e
    call z, $cecd
    rst $08
    ret nc

    pop de
    ld a, [bc]
    jp nc, $d4d3

    push de
    sub $00
    rst $10
    ret c

    reti


    and e
    and e
    jp c, $dcdb

    db $dd
    sbc $df
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [$a3], a
    and e
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    and $01
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
    inc bc
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $0101
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld bc, $0101
    ld bc, $0401
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    ld bc, $0101
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, $02
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0001
    nop
    inc bc
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    nop
    inc b
    ld bc, $0101
    rlca
    inc b
    dec b
    ld b, $06
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    dec b
    ld bc, $0101
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    ld [bc], a
    dec b
    ld bc, $0101
    dec b
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
    ld [bc], a
    dec b
    nop
    ld bc, $0501
    ld b, $06
    ld b, $00
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld e, a
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
    rrca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rrca
    rst $38
    cpl
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
    rst $38
    cp a
    rst $38
    ld a, [bc]
    push af
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
    jr nz, @+$01

    ld [$b8ff], sp
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
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
    nop
    nop
    ld c, b
    or a
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    ldh [$e5], a
    ld a, [$ffff]
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
    inc bc
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
    nop
    nop
    nop
    ld a, [hl-]
    ret nz

    ret nz

    ret nz

    call c, $cfc0
    rst $18
    rst $28
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $28
    jp c, $dfe5

    ldh [$db], a
    db $e4
    rst $18
    ldh [$d4], a
    db $eb
    push de
    ld [$eaf5], a
    ld [c], a
    db $ed
    ld a, [c]
    db $ed
    ldh a, [$ef]
    or $ef
    push af
    ei
    push af
    db $eb
    pop af
    xor $f9
    or $fe
    rst $30
    or $ff
    rst $38
    or $f7
    cp $f5
    cp $f8
    rst $30
    rst $30
    rst $38
    rst $30
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
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $38
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
    ei
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
    ret nz

    push de
    db $eb
    rst $38
    cp $ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld [hl], b
    ccf
    jr jr_014_4457

    ld c, $07
    inc bc
    ld bc, $0005
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a

jr_014_4457:
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0200
    nop
    ld bc, $0200
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
    nop
    nop
    xor d
    nop
    db $fc
    nop
    ld h, b
    sbc a
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
    dec bc
    db $f4
    ret nc

    cpl
    push bc
    ld a, [hl-]
    and c
    ld e, [hl]
    and b
    ld e, a
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    ld b, $f9
    ld a, [bc]
    push af
    ld [$c6f7], sp
    ld sp, hl
    cp d
    ld h, l
    or b
    ld l, a
    db $10
    rst $38
    jr nc, @+$01

    or b
    ld a, a
    inc e
    rst $30
    ccf
    rst $30
    rra
    rst $38
    dec a
    cp $f7
    ld hl, sp-$0e
    rst $38
    rst $00
    rst $38
    ei
    rst $38
    di
    rst $38
    adc d
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $28
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
    db $f4
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld a, a
    ld a, a
    cp a
    cp a
    ld a, l
    ld a, a
    ld a, h
    ld a, a
    ld [hl], h
    ld a, a
    ret nz

    rst $38
    ld [hl], b
    adc a
    rst $08
    ldh a, [$37]
    ret z

    rla
    add sp, $01
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
    ld [hl], a
    rst $38
    dec de
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    ldh [$7f], a
    cp b
    rra
    ld e, h
    rrca
    rst $38
    inc bc
    ld a, a
    ld bc, $00bf
    ld e, a
    nop
    xor a
    nop
    ld d, a
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
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor d
    nop
    nop
    nop
    nop
    ld hl, sp+$00
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
    ld bc, $81ff
    ld a, a
    ld bc, $41ff
    cp a
    nop
    rst $38
    add c
    ld a, a
    ld bc, $a1ff
    ld e, a
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld c, $ff
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld sp, hl
    cp $9f
    ldh [$fd], a
    inc bc
    rst $18
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
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
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
    ld [bc], a
    db $fd
    inc bc
    db $fc
    ldh [rIE], a
    ld [c], a
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rra
    ldh [rP1], a
    rst $38
    add b
    rst $38
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
    pop bc
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
    ccf
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    rrca
    rlca
    rlca
    ld bc, $ff01
    nop
    rst $38
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
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
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
    ld a, a
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    add [hl]
    cp $e7
    rst $38
    db $e3
    rst $38
    ld [c], a
    cp $f3
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    db $f4
    cp $f4
    rst $38
    ld hl, sp-$01
    cp $ff
    cp $ff
    cp $ff
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    add b
    rst $38
    rst $30
    rrca
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
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
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    ld hl, sp-$01
    add b
    rst $38
    add b
    rst $38
    ld [$10f7], sp
    rst $28
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ret nz

    ccf
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    add sp, -$01
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $00
    rst $38
    nop
    rst $38
    add b
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
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    ld a, a
    rra
    rra
    rra
    nop
    jr jr_014_4708

jr_014_4708:
    inc e
    nop
    jr jr_014_470c

jr_014_470c:
    inc e
    nop
    jr jr_014_4710

jr_014_4710:
    jr jr_014_4712

jr_014_4712:
    jr jr_014_4714

jr_014_4714:
    jr jr_014_4716

jr_014_4716:
    jr jr_014_4718

jr_014_4718:
    inc e
    nop
    jr jr_014_471c

jr_014_471c:
    inc e
    nop
    jr jr_014_4720

jr_014_4720:
    jr jr_014_4722

jr_014_4722:
    inc e
    nop
    jr jr_014_4726

jr_014_4726:
    jr jr_014_4728

jr_014_4728:
    jr jr_014_472a

jr_014_472a:
    jr jr_014_472c

jr_014_472c:
    inc e
    nop
    jr jr_014_4730

jr_014_4730:
    jr jr_014_4732

jr_014_4732:
    inc e
    nop
    ld [$0c00], sp
    nop
    ld [$1c00], sp
    nop
    ld a, [de]
    nop
    inc e
    nop
    ld a, [de]
    nop
    inc e
    nop
    ld a, $00
    dec a
    nop
    ld a, $00
    dec a
    nop
    ld a, $10
    ccf
    db $10
    ld a, $10
    ld a, a
    jr jr_014_47d4

    jr @+$01

    jr @+$01

    inc e
    ld a, a
    sbc h
    ld a, a
    sbc h
    ld a, a
    cp [hl]
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
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$5b
    and h
    db $10
    rst $38
    ld [$80ff], sp
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $02
    db $fd
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    dec b
    ld a, [$f20d]
    dec e
    ld [c], a
    dec bc
    db $f4
    ccf
    ret nz

    di
    inc c

jr_014_47d4:
    ccf
    ret nz

    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    nop
    nop
    add sp, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
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
    nop
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    ld bc, $f0fe
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fd
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    nop
    cp $00
    db $fd
    nop
    cp $00
    db $fd
    nop
    cp $00
    db $fd
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    nop
    cp $00
    db $fd
    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    add b
    nop
    ld d, b
    nop
    and b
    nop
    call nc, $e800
    nop
    push af
    nop
    ld a, [$fd00]
    nop
    cp $00
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    cp $ff
    inc bc
    db $fc
    add sp, -$09
    or [hl]
    cp $f0
    rst $38
    ldh [rIE], a
    and b
    rst $38
    add b
    rst $38
    jp Jump_000_00f3


    ei
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
    cp b
    rst $38
    add b
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
    nop
    rst $38
    ld b, $f9
    or a
    ld c, b
    rst $38
    nop
    rst $38
    nop
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
    ld hl, $4ade
    or l
    ld e, e
    and h
    ei
    inc b
    db $dd
    ld [hl+], a
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
    ei
    inc b
    and $19
    rra
    ldh [rSC], a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
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
    jp nz, $ffff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld bc, $ffff
    cp $eb
    inc d
    rst $38
    nop
    daa
    ret c

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
    ld a, [$f500]
    nop
    ld [$5500], a
    nop
    xor d
    nop
    ld d, h
    nop
    xor b
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
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
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
    push de
    nop
    ld [$f500], a
    nop
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
    cp a
    ld b, b
    and b
    nop
    ld d, b
    nop
    xor d
    nop
    db $fd
    add b
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
    rst $38
    ld bc, $c700
    rst $20
    nop
    ld a, a
    add b
    ccf
    nop
    ld a, [hl]
    add c
    ld [hl], $c1
    ld l, l
    add d
    rst $30
    ld [$c13e], sp
    inc e
    db $e3
    inc a
    add e
    ld a, h
    add e
    inc h
    db $db
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], h
    adc e
    ld [hl], a
    adc b
    rst $18
    jr nz, @+$01

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
    inc bc
    db $fc
    cp a
    ld b, b
    cp a
    ld b, b
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
    rra
    ldh [$80], a
    rst $38
    cp b
    rst $38
    ld a, b
    rst $38
    nop
    nop
    nop
    nop
    xor [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, l
    and d
    rst $38
    rst $38
    or a
    ld c, b
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
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
    add b
    nop
    ld b, b
    nop
    xor b
    nop
    ld d, h
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
    push de
    nop
    ld a, [$fd00]
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    rra
    ld hl, sp+$78
    ld hl, sp-$10
    ld hl, sp-$10
    db $fc
    ldh a, [$fa]
    ldh a, [$fd]
    ldh a, [$fa]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ldh [rIE], a
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
    inc [hl]
    bit 7, l
    add d
    ld a, a
    add b
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
    ld a, [hl+]
    push af
    xor [hl]
    pop af
    ld e, h
    and e
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
    db $ec
    inc de
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
    dec b
    ld a, [$f30c]
    ld [$03f7], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ef
    ld de, $feff
    rst $38
    nop
    rst $38
    nop
    db $eb
    nop
    rra
    nop
    rst $38
    rst $38
    cp $00
    push de
    nop
    xor d
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
    add b
    nop
    ld d, h
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
    push af
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
    cp $ff
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    xor b
    nop
    ld d, l
    nop
    xor d
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    cpl
    db $f4
    dec bc
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
    sub h
    rst $28
    or b
    rst $08
    ld l, d
    sub l
    rst $28
    db $10
    xor a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    db $eb
    inc d
    ei
    inc b
    rst $28
    db $10
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    xor [hl]
    nop
    rst $38
    rst $38
    db $fd
    nop
    rst $38
    nop
    cp $00
    sub d
    nop
    rst $38
    rst $38
    rst $38
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    dec d
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $ab00
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
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
    ld d, h
    nop
    xor d
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
    ei
    inc b
    ld a, [$ff05]
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
    ld b, b
    rst $38
    inc b
    ei
    xor h
    ld [hl], e
    adc h
    ld [hl], e
    xor l
    ld d, d
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    db $eb
    inc d
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    ld sp, hl
    cp $17
    rst $28
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    jr nz, @-$1f

    adc a
    ld [hl], a
    ld hl, sp-$08
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
    ld d, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld a, h
    inc bc
    ld a, b
    rlca
    ld a, a
    rra
    ld [hl], b
    rra
    ld a, a
    db $10
    dec [hl]
    ld e, e
    ld de, $117f
    ld a, a
    inc de
    ld a, a
    scf
    ld e, a
    ld d, a
    ccf
    ld d, a
    ccf
    rra
    ld a, a
    rra
    ld a, a
    ld d, c
    ccf
    ld d, c
    ccf
    ld d, c
    ccf
    ld d, c
    ccf
    ld d, e
    ccf
    inc de
    ld a, a
    inc de
    ld a, a
    ld d, d
    ccf
    inc de
    ld a, a
    inc de
    ld a, a
    rra
    ld a, a
    sub d
    ld [hl], a
    sub d
    ld a, a
    sbc a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    cp a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$5cf7], sp
    and e
    ld a, d
    add l
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    add b
    ld a, a
    ld h, d
    sbc l
    and $19
    and $19
    xor $11
    cp $01
    cp $01
    cp $01
    xor $11
    db $fc
    inc bc
    ld c, h
    or e
    sbc $21
    ld a, [hl]
    add c
    ld a, h
    add e
    sbc a
    ld h, b
    rst $38
    ld a, [de]
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    add c
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$ff05]
    rst $38
    or [hl]
    ld c, c
    rst $38
    nop
    ld a, a
    add b
    ei
    inc b
    rst $38
    rst $38
    nop
    nop
    rst $38
    nop
    cp a
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
    nop
    nop
    nop
    nop
    ld l, $d1
    inc b
    rst $38
    rst $38
    rst $38
    ld bc, $e8ff
    ld a, a
    ldh a, [rIE]
    rst $28
    pop af
    rra
    pop hl
    ccf
    pop bc
    ld a, c
    add a
    db $ed
    inc de
    jp hl


    rla
    pop bc
    ccf
    pop bc
    ld a, a
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ccf

jr_014_4d4f:
    rst $38
    ccf

jr_014_4d51:
    rst $38
    rst $38

jr_014_4d53:
    rst $38
    ccf
    rst $38
    rst $38

jr_014_4d57:
    rst $38
    ld a, a

jr_014_4d59:
    rst $38
    rst $38

jr_014_4d5b:
    rst $38
    rst $38

jr_014_4d5d:
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sub e
    rst $38
    inc bc

jr_014_4d65:
    rst $38
    inc bc
    rst $38
    ld de, $00ff
    rst $38
    nop
    rst $38
    jr nz, jr_014_4d4f

    jr nz, jr_014_4d51

    jr nz, jr_014_4d53

    nop
    rst $38
    jr nz, jr_014_4d57

    jr nz, jr_014_4d59

    jr nz, jr_014_4d5b

    jr nz, jr_014_4d5d

    ld h, b
    sbc a
    ld b, b
    cp a
    ld h, b
    sbc a
    jr nz, jr_014_4d65

    ld h, b
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
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
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    cp a
    ld a, a
    ret nz

    rst $38
    nop
    rst $38
    call nc, $fe2b
    ld bc, $bf7f
    ret nz

    ret nz

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
    ld e, a
    nop
    xor e
    nop
    ld d, l
    nop
    xor d
    nop
    nop
    nop
    nop
    rrca
    rst $38
    nop
    cp $25
    rst $38
    rst $38
    ld bc, $c1ff
    ccf
    add c
    ld a, a
    pop af
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld b, $ff
    rlca
    rst $38
    ld b, $ff
    ld l, $ff
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$03
    db $fc
    ld b, a
    cp b
    ld [hl], e
    adc h
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
    ld hl, sp-$01
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
    xor b
    ld d, a
    rst $38
    rst $38
    nop
    nop
    nop
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
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    nop
    nop
    nop
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e0]
    ldh a, [$e1]
    ldh a, [$e1]
    ldh a, [$63]
    ldh a, [$3f]
    ldh [$37], a
    ldh [$3f], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [rIE], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
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
    add b
    ld a, a
    add b
    ld a, a
    ret z

    scf
    add sp, $17
    db $ec
    inc de
    db $ec
    inc de
    db $f4
    dec bc
    or $09
    ei
    inc b
    cp $01
    rst $38
    nop
    ei
    inc b
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
    rra
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rrca
    cp $0f
    cp $0e
    db $fc
    ld c, $f8
    cp $f8
    ld b, $00
    ld c, $00
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
    ld [$0c00], sp
    nop
    ld [$0800], sp
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc c
    nop
    ld [$0c00], sp
    nop
    ld [$0800], sp
    nop
    ld [$1800], sp
    nop
    jr jr_014_4efa

jr_014_4efa:
    ld [$0c00], sp
    nop
    jr jr_014_4f00

jr_014_4f00:
    jr jr_014_4f02

jr_014_4f02:
    jr jr_014_4f04

jr_014_4f04:
    jr jr_014_4f06

jr_014_4f06:
    jr jr_014_4f08

jr_014_4f08:
    inc e
    nop
    jr jr_014_4f0c

jr_014_4f0c:
    jr jr_014_4f0e

jr_014_4f0e:
    jr c, jr_014_4f10

jr_014_4f10:
    jr c, jr_014_4f12

jr_014_4f12:
    jr c, jr_014_4f14

jr_014_4f14:
    ld a, b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    cp $10
    db $fc
    db $10
    cp $10
    db $fc
    db $10
    db $fc
    db $10
    cp $30
    cp $30
    cp $30
    cp $70
    cp $f8
    cp $f8
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
    rrca
    rst $38
    rlca
    rst $38
    inc bc
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
    ldh [$1f], a
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    pop af
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIE]
    cp $fe
    db $fc
    db $fd
    ld hl, sp-$06
    ldh a, [$f5]
    ldh a, [$ea]
    ldh [$d5], a
    ret nz

    xor d
    add b
    ld d, l
    nop
    xor d
    nop
    push af
    nop
    ld a, [$f500]
    nop
    ld a, [$f500]
    nop
    ld a, [$f500]
    nop
    ld a, [$7d00]
    add b
    cp [hl]
    ret nz

    db $fd
    ldh [$fe], a
    ldh a, [$fd]
    ld hl, sp+$7f
    cp $ff
    ccf
    rst $38
    rra
    rst $08
    rrca
    rst $20
    rlca
    db $e3
    inc bc
    pop af
    ld bc, $00f0
    ldh a, [$80]
    ldh a, [$80]
    ld hl, sp-$80
    ld hl, sp-$80
    db $fc
    add b
    db $fc
    ret nz

    cp $c0
    cp $c0
    ld a, [hl]
    ldh [$3f], a
    ldh [$3f], a
    ldh a, [$1f]
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    inc bc
    cp $03
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
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    add b
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    ld d, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
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
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
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
    push de
    nop
    ld [$f580], a
    ldh [$fa], a
    ldh a, [$fd]
    ld hl, sp-$02
    db $fc
    rst $38
    ld a, a
    rst $38
    ccf
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
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    add b
    rst $38
    add b
    ld a, [hl]
    ret nz

    ccf
    ldh [$3f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$0f
    ld hl, sp+$07
    db $fc
    inc bc
    cp $03
    cp $01
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
    ld bc, $00ff
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
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    ld [$f580], a
    ldh [$fa], a
    ldh a, [$fd]
    ld sp, hl
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
    rrca
    rrca
    rlca
    rlca
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
    nop
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ldh [rP1], a
    jp hl


    nop
    ld a, [$fd00]
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
    ld a, a
    ret nz

    ret nz

    rst $18
    ret nz

    rst $18
    ldh [$6f], a
    ldh a, [$f7]
    ldh a, [$f7]
    ld hl, sp-$06
    db $fc
    db $fc
    db $fc
    db $fd
    nop
    ld bc, $0202
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
    jr jr_014_5185

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_014_5195

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_014_51a5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_014_51b5

    ld [hl-], a

jr_014_5185:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, @+$3b

    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld a, [hl-]
    dec sp
    ld [bc], a
    inc a
    dec a

jr_014_5195:
    ld a, $3f
    ld b, b
    ld b, c
    add hl, sp
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    add hl, sp
    add hl, sp
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d

jr_014_51a5:
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    add hl, sp
    add hl, sp
    add hl, sp
    ld d, e
    ld l, $2e
    ld l, $2e

jr_014_51b5:
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    add hl, sp
    add hl, sp
    ld l, $2e
    jr nc, jr_014_51f2

    ld l, $2e
    ld d, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    add hl, sp
    add hl, sp
    add hl, sp
    ld h, d
    ld h, e
    ld h, h
    ld [bc], a
    ld h, l
    ld h, [hl]
    ld l, $2e
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    add hl, sp
    add hl, sp
    ld l, h
    ld l, l
    ld l, [hl]
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld l, a
    ld [hl], b
    ld l, $71
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    add hl, sp
    db $76
    add hl, sp
    ld [hl], a
    ld a, b
    ld [bc], a

jr_014_51f2:
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld a, c
    ld l, $2e
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    add e
    ld l, $2e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    inc [hl]
    adc e
    adc h
    ld [bc], a
    adc l
    adc [hl]
    ld l, $2e
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    inc [hl]
    sub a
    ld l, $2e
    ld l, $2e
    ld l, $2e
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    add hl, sp
    add hl, sp
    sbc l
    inc [hl]
    sbc [hl]
    ld l, $2e
    ld l, $2e
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    add hl, sp
    add hl, sp
    and [hl]
    inc [hl]
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
    add hl, sp
    add hl, sp
    or e
    inc [hl]
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
    add hl, sp
    add hl, sp
    ret nz

    inc [hl]
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ld l, $c8
    ret


    jp z, Jump_000_39cb

    add hl, sp
    call z, $cecd
    ld l, $2e
    rst $08
    ret nc

    pop de
    ld [bc], a
    jp nc, $d4d3

    push de
    sub $39
    add hl, sp
    add hl, sp
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    add hl, sp
    db $e4
    add hl, sp
    push hl
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld b, $06
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld b, $06
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, $00
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld b, $06
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    nop
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0200
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
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
    rst $38
    nop
    ld a, a
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0200
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    ld bc, $01af
    ld e, a
    inc bc
    cp a
    rlca
    ld a, a
    rlca
    rst $38
    rrca
    ld a, a
    rra
    rst $38
    rra
    rst $38
    ccf
    cp $7c
    db $fd
    ld a, h
    cp $fc
    db $fd
    ld hl, sp-$06
    ldh a, [$f5]
    ldh a, [$ea]
    ldh [$d4], a
    pop bc
    add sp, -$3d
    ret nc

    add a
    xor b
    inc bc
    ld d, b
    rlca
    and b
    rrca
    ld b, b
    rra
    add b
    ccf
    ld b, b
    rra
    add b
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    db $fd
    ld [bc], a
    ld a, [$bd05]
    ld [bc], a
    ld a, [hl]
    ld bc, $02bd
    ld a, [hl]
    ld bc, $02bd
    ld a, [hl]
    ld bc, $02bd
    ld e, a
    nop
    cp a
    nop
    ld e, [hl]
    ld bc, $00af
    ld e, [hl]
    ld bc, $002f
    ld e, [hl]
    ld bc, $002f
    ld e, [hl]
    ld bc, $002f
    rra
    nop
    cpl
    nop
    ld d, $01
    rrca
    nop
    ld d, $01
    rrca
    nop
    ld d, $01
    rrca
    nop
    ld d, $01
    rrca
    nop
    ld d, $01
    rrca
    nop
    ld d, $01
    rrca
    nop
    ld d, $01
    rrca
    nop
    ld e, $01
    rrca
    nop
    ld d, $01
    cpl
    nop
    ld d, $01
    cpl
    nop
    ld d, a
    nop
    cpl
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, [hl]
    ld bc, $00bf
    ld e, [hl]
    ld bc, $00bf
    ld e, [hl]
    ld bc, $00bf
    ld a, [hl]
    ld bc, $02fd
    ld a, [hl]
    ld bc, $02fd
    ld a, [$0305]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
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
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
    ld bc, $03bf
    ld e, a
    inc bc
    cp a
    rlca
    ld a, a
    rrca
    cp a
    rrca
    ld a, a
    rra
    rst $38
    ccf
    ld a, a
    ccf
    rst $38
    ld a, [hl]
    db $fd
    ld a, h
    cp $fc
    db $fc
    ld sp, hl
    ld hl, sp-$0d
    db $f4
    pop af
    add sp, -$1d
    ret nc

    rst $00
    ldh [$cf], a
    ret nc

    add a
    and b
    rrca
    ld b, b
    rra
    add b
    ccf
    ld b, b
    rra
    add b
    ccf
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
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $03ff
    cp $07
    db $fd
    inc bc
    cp $07
    db $fd
    rrca
    ld a, [$08fe]
    ld a, l
    ld [$08be], sp
    ld a, a
    ld [$08be], sp
    ld a, a
    ld [$08be], sp
    ld a, a
    ld [$08be], sp
    ld a, a
    inc b
    cp [hl]
    inc b
    ld a, a
    inc b
    cp a
    inc b
    ld a, a
    inc b
    cp a
    inc b
    ld a, a
    inc b
    cp a
    inc b
    ld a, a
    inc b
    cp a
    inc b
    ld a, a
    inc b
    cp a
    inc b
    ld a, a
    inc b
    cp a
    inc b
    ld a, a
    inc b
    cp a
    inc b
    ld a, a
    inc b
    cp a
    inc b
    ld a, a
    ld [bc], a
    cp a
    ld [bc], a
    ld a, a
    ld [bc], a
    cp a
    ld [bc], a
    ld a, a
    ld [bc], a
    cp a
    ld [bc], a
    ld a, a
    ld [bc], a
    cp a
    ld [bc], a
    ld a, a
    ld [bc], a
    cp a
    ld [bc], a
    ld a, a
    ld [bc], a
    cp a
    ld [bc], a
    ld a, a
    ld [bc], a
    cp a
    ld [bc], a
    ld a, a
    ld [bc], a
    cp a
    ld [bc], a
    ld a, a
    ld [bc], a
    cp a
    ld [bc], a
    ld a, a
    ld bc, $01bf
    ld a, a
    ld bc, $01ff
    ld a, a
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01bf
    rst $38
    ld bc, $01bf
    ld a, a
    ld bc, $01ff
    ld a, a
    ld bc, $01ff
    ld a, a
    ld bc, $01ff
    ld a, a
    nop
    rst $38
    ld bc, $027f
    rst $38
    ld bc, $027f
    rst $38
    ld bc, $02ff
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    db $fd
    db $fd
    ei
    ld sp, hl
    rst $38
    ld sp, hl
    ei
    pop af
    rst $30
    pop af
    rst $28
    pop hl
    rst $18
    jp $c5ff


    rst $18
    add e
    cp a
    dec b
    ld a, a
    ld [bc], a
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    dec b
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    cpl
    rst $38
    rla
    rst $38
    cpl
    rst $38
    ld d, a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
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
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
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
    push de
    nop
    ld [$d500], a
    nop
    ld [$d500], a
    nop
    ld [$d500], a
    nop
    ld [$f500], a
    nop
    ld a, [$f500]
    nop
    ld a, [$f500]
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
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
    add b
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ret nc

    rst $38
    xor b
    rst $38
    ret nc

    rst $38
    xor d
    rst $38
    push de
    rst $38
    xor d
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, b
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
    ld b, b
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
    add b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
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
    push de

Jump_014_57c3:
    nop
    ld [$d500], a
    nop
    ld [$f500], a
    nop
    ld a, [$f500]
    nop
    ld a, [$fd00]
    nop
    cp $00
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    xor b
    ld a, [$7aff]
    push af
    push af
    ld [$f5ca], a
    sub l
    ld [$fd82], a
    add l
    ld a, [$ff80]
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
    ldh [rIE], a
    db $e3
    rst $38
    db $e3
    rst $38
    rst $20
    db $fd
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
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
    cp $00
    rst $38
    nop
    ld a, [$fd00]
    nop
    ld a, [$f500]
    nop
    ld [$f500], a
    nop
    ld [$d500], a
    nop
    ld [$d500], a
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    ld [$d500], a
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld a, [$fd00]
    nop
    cp $00
    db $fd
    nop
    cp $00

jr_014_5886:
    rst $38
    nop
    cp $00
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
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
    push af
    nop
    ld a, [$fd00]
    nop
    cp $00
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    rrca
    rst $38
    rlca
    cp $05
    cp $f9
    cp $f8
    rst $38
    ldh a, [rIE]
    db $eb
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    cp d
    rst $38
    nop
    rst $18
    jr nz, jr_014_5886

    ld d, b
    ld d, l
    xor d
    xor [hl]
    ld d, c
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [bc]
    push af
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc e
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
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
    rst $38
    rst $38
    nop
    db $fd
    nop
    ld a, [$d500]
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
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    ld [$f500], a
    nop
    ld a, [$fd00]
    nop
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
    add b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    nop
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    db $fd
    rst $38
    or a
    rst $38
    ld bc, $07ff
    ld d, b
    rrca
    and c
    rst $38
    ld bc, $e3ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    db $ec
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $18
    cpl
    rst $38
    rrca
    rst $18
    cpl
    xor a
    ld e, a
    ld e, a
    xor a
    xor a
    ld e, a
    ld e, a
    xor a
    cp a
    ld e, a
    ld e, a
    cp a
    ccf
    rst $18
    rra
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld [$fd00], a
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
    nop
    ccf
    ld b, b
    ld e, a
    and b
    cpl
    ret nc

    ld d, l
    ld [$d5aa], a
    push de
    ld [$ffbf], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    ld [$f5e0], a
    ldh [$fa], a
    ret nz

    rst $38
    nop
    rrca
    nop
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    db $f4
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$f5ff]
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
    cp $ff
    cp $ff
    rst $30
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
    ld d, b
    nop
    and b
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
    add b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
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
    ld [$fd00], a
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
    nop
    ld b, b

jr_014_5a5b:
    nop
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    nop
    rst $38
    ccf
    rst $38
    ret nz

    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld e, c
    rst $38
    ld e, b
    rst $38
    jr z, @+$01

    ld b, b
    rst $38
    jr nz, jr_014_5a5b

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    xor b
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
    ld d, l
    nop
    ld [$f500], a
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    ld d, l
    rst $38
    rst $38
    add b
    nop
    and b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    rrca
    rst $38
    ld c, $ff
    dec c
    rst $38
    ld a, $ff
    ld e, a
    rst $38
    xor a
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
    db $fc
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ld [hl], b
    xor d
    nop
    ld d, l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $aa00
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
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    ld a, [hl+]
    rst $38
    rst $38
    ld e, a
    ld hl, sp-$20
    nop
    nop
    nop
    nop
    nop
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    rst $10
    nop
    rst $38
    ccf
    rst $38
    push de
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    add d
    rst $38
    add b
    rst $38
    ret nz

    cp $e0
    push af
    ldh [$fa], a
    ldh a, [$f5]
    ldh a, [$fe]
    ldh a, [rIE]
    ldh a, [rIE]
    push af
    rst $38
    rst $38
    db $fd
    ldh a, [$fa]
    ldh a, [rIE]
    ld hl, sp-$01
    di
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
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
    cp $ff
    db $fc
    rst $38
    db $f4
    rst $38
    ld [c], a
    rst $38
    and b
    rst $38
    or b
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
    xor d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
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
    ld d, l
    nop
    xor e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ld [$55ff], a
    rst $38
    xor d
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, l
    nop
    xor d
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld a, [$55ff]
    rst $38
    xor d
    rst $38
    ld d, b
    rst $38
    add b
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
    push de
    nop
    rst $38
    nop
    rst $38
    ld a, [hl+]
    rst $38
    ld a, a
    ld a, [$5580]
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
    ret nz

    rst $38
    ret z

    rst $38
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor [hl]
    rst $38
    ld b, $ff
    ld [bc], a
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
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0200
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
    ld bc, $0000
    nop
    ld bc, $0200
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
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
    xor e
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, a
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
    rst $38
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    rst $38
    db $fd
    add b
    ld [bc], a
    nop
    ld d, l
    nop
    xor d
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
    rst $38
    rst $38
    xor d
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    nop
    rst $30
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$7f00], a
    nop
    rst $38
    ld d, l
    rst $38
    rst $38
    db $fd
    add b
    xor d
    nop
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    add a
    rst $38
    jp $c1ff


    rst $38
    or b
    rst $38
    add sp, -$01
    add sp, -$01
    sub h
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
    xor e
    nop
    ld d, a
    nop
    xor a
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
    nop
    nop
    dec d
    nop
    xor e
    nop
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    xor a
    rst $38
    ld a, a
    rst $38
    rst $38
    ld d, l
    nop
    xor a
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
    dec d
    rst $38
    rst $38
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    ld d, l
    nop
    xor e
    nop
    rst $30
    nop
    cp a
    nop
    rst $38
    ld a, [hl+]
    rst $38
    ld a, a
    ld a, [$5f80]
    nop
    rst $38
    rlca
    rst $38
    sbc a
    rst $38
    adc $ff
    ld b, [hl]
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
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    xor a
    nop
    ld e, a
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
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
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
    nop
    nop
    ld bc, $0200
    nop
    dec b
    nop
    ld [bc], a
    nop
    dec d
    nop
    xor e
    nop
    ld e, a
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    rrca
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
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    dec d
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    ld [$55ff], a
    rst $38
    ld a, [hl+]
    rst $38
    ld bc, $80ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    ld [$5700], a
    ld [bc], a
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $30
    add b
    cp a
    nop
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    dec de
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    nop
    xor d
    nop
    inc d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
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
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    xor a
    nop
    ld e, a
    nop
    cp a
    nop
    ld e, [hl]
    ld bc, $00bf
    ld e, [hl]
    ld bc, $00bf
    ld e, [hl]
    ld bc, $00bf
    ld a, [hl]
    ld bc, $00bf
    ld a, [hl]
    ld bc, $00ff
    ld a, [hl]
    ld bc, $00ff
    ld a, [hl]
    ld bc, $02fd
    cp $01
    db $fd
    ld [bc], a
    ld a, [$fd05]
    ld [bc], a
    ld a, [$0a05]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    dec hl
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, a
    nop
    cp a
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec bc
    rst $38
    rla
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call c, $afff
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    cp a
    ld bc, $aaff
    rst $38
    ld e, a
    rst $38
    ret nz

    ld a, a
    nop
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
    ld a, [hl]
    rst $38
    adc c
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    xor d
    nop
    ld e, l
    nop
    xor d
    nop
    ld e, l
    nop
    xor d
    nop
    ld e, l
    nop
    xor d
    nop
    ld e, l
    nop
    xor d
    nop
    ld e, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp d
    nop
    ld d, l
    nop
    cp d
    nop
    ld d, l
    nop
    cp d
    nop
    ld d, l
    nop
    cp d
    nop
    ld d, l
    nop
    cp d
    nop
    ld d, l
    nop
    cp d
    nop
    ld d, l
    nop
    cp d
    nop
    ld d, l
    nop
    ld a, [hl-]
    nop
    ld d, l
    nop
    cp d
    nop
    ld a, l
    nop
    xor d
    nop
    ld [hl], l
    nop
    xor d
    nop
    ld [hl], l
    nop
    cp d
    nop
    ld [hl], l
    nop
    cp d
    nop
    ld [hl], l
    nop

jr_014_5f60:
    ld a, [$7500]

jr_014_5f63:
    nop

jr_014_5f64:
    ld a, [$7520]

jr_014_5f67:
    jr nz, jr_014_5f63

    jr nz, jr_014_5f60

jr_014_5f6b:
    jr nz, jr_014_5f67

    jr nz, jr_014_5f64

jr_014_5f6f:
    jr nz, jr_014_5f6b

    jr nz, @-$09

jr_014_5f73:
    jr nz, jr_014_5f6f

    jr nz, @-$09

jr_014_5f77:
    jr nz, jr_014_5f73

    jr nz, @-$01

    jr nz, jr_014_5f77

    ld b, b
    db $fd
    ld b, b
    cp $40
    db $fd
    ld h, b
    cp $40
    rst $38
    ld h, b
    cp $d0
    rst $38
    ldh [rIE], a
    ret nc

    rst $38
    add sp, -$01
    ldh a, [rIE]
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
    push de
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    sbc l
    rst $38
    rlca
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld a, a
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    dec b
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor a
    rst $38
    ret nz

    rst $38
    ld bc, $3fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc hl
    rst $38
    ld [$00ff], sp
    xor b
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, h
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
    push de
    nop
    ld a, [$fd00]
    nop
    cp $e0
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
    ld d, a
    rst $38
    ld d, l
    rst $38
    ld d, l
    rst $38
    push de
    rst $38
    push de
    rst $38
    push de
    rst $38
    dec [hl]
    rst $38
    ld a, l
    rst $38
    push af
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld a, a
    rst $38
    pop bc
    rst $38
    rlca
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
    cp a
    rst $38
    sbc e
    rst $38
    ld b, $ff
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
    ld a, [$f500]
    nop
    ld a, [$f500]
    nop
    ld [$d500], a
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    ld [$d500], a
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld a, [$f500]
    nop
    ld a, [$fd00]
    nop
    cp $00
    db $fd
    nop
    cp $00
    rst $38
    nop
    cp $00
    rst $38
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    xor d
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, a
    inc bc
    rst $28
    add $fe
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    jp Jump_014_40f7


    ld a, [$fd60]
    ld h, b
    cp $60
    rst $38
    ld h, b
    cp $60
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    db $fc
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    ld d, a
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
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
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, h
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
    ld d, l
    nop
    xor d
    ld bc, $0154
    xor d
    ld bc, $0154
    xor d
    ld bc, $0154
    xor e
    ld bc, $0155
    xor e
    ld bc, $0154
    xor b
    inc bc
    ld d, l
    inc bc
    xor b
    inc bc
    ld d, h
    inc bc
    xor c
    inc bc
    sub $03
    jp hl


    inc bc
    push de
    inc bc
    jp hl


    inc bc
    push af
    inc bc
    ld hl, sp+$07
    push af
    inc bc
    ld hl, sp+$03
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    pop af
    rrca
    pop af
    rrca
    rrca
    ld bc, $000f
    sbc a
    nop
    ld a, a
    jr c, @+$01

    db $e3
    adc a
    add e
    ld c, a
    inc bc
    xor a
    inc bc
    rst $18
    set 7, a
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    cp a
    rrca
    ld e, a
    rrca
    cp a
    rrca
    ld e, a
    rrca
    cp a
    rra
    rst $38
    rra
    cp a
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
    ccf
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
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    cpl
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    inc b
    inc b
    inc b
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    jr @+$1b

    ld a, [de]
    inc b
    inc b
    inc b
    inc b
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_014_6280

    ld [hl+], a
    inc hl
    inc h
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec h
    ld h, $27
    jr z, jr_014_6296

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_014_62a6

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_014_62b6

    ld a, [hl-]
    dec sp
    inc a

jr_014_6280:
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
    ld c, e
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d

jr_014_6296:
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l

jr_014_62a6:
    ld e, [hl]
    ld e, a
    ld h, b
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld h, c
    ld h, d
    ld h, e
    ld e, [hl]
    ld e, [hl]
    ld h, h

jr_014_62b6:
    ld h, l
    ld h, [hl]
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld h, a
    ld d, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld l, l
    ld e, [hl]
    ld l, [hl]
    ld l, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld a, d
    ld a, e
    ld a, h
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    nop
    add e
    add h
    add l
    add [hl]
    add a
    ld d, $88
    adc c
    adc d
    ld [hl+], a
    adc e
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    adc h
    adc l
    nop
    nop
    nop
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    ld d, a
    ld d, a
    ld d, a
    ld d, a
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    nop
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    ld d, a
    ld d, a
    ld d, a
    inc b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    nop
    and a
    xor b
    ld d, $a9
    xor d
    ld d, a
    ld d, a
    ld d, a
    xor e
    inc b
    inc b
    inc b
    inc b
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    ld d, $b2
    or e
    ld d, a
    ld d, a
    nop
    or h
    or l
    inc b
    inc b
    inc b
    or [hl]
    or a
    cp b
    cp c
    nop
    cp d
    ld d, $bb
    ld d, a
    ld d, a
    nop
    nop
    nop
    cp h
    inc b
    inc b
    inc b
    inc b
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, Jump_014_57c3

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
    nop
    nop
    nop
    nop
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
    nop
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
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $06
    ld b, $06
    ld b, $00
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [hl+], a
    ld [hl+], a
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
    ld [bc], a
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
    ld b, $06
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
    nop
    nop
    jr nz, jr_014_6442

jr_014_6442:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_014_6474

    jr nz, jr_014_6456

jr_014_6456:
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
    nop
    nop
    jr nz, jr_014_6468

jr_014_6468:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_014_6474:
    nop
    nop
    nop
    jr nz, jr_014_6479

jr_014_6479:
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_014_649c

jr_014_649c:
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
    ld d, l
    nop
    xor d
    nop
    ld [hl], a
    nop
    cp d
    nop
    ld [hl], a
    nop
    cp d
    nop
    ld a, a
    nop
    cp $00
    ld a, l
    nop
    cp a
    nop
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    rst $38
    nop
    rst $18
    nop
    cp $00
    rst $18
    nop
    cp $00
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
    ld [bc], a
    nop
    nop
    nop
    ld [$4400], sp
    nop
    ld [hl+], a
    nop
    inc b
    nop
    ld [hl+], a
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    ld a, [bc]
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
    xor a
    rlca
    ld a, a
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
    db $fd
    db $fc
    ld a, [$d5f0]
    ret nz

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
    ld e, a
    nop
    cp a
    nop
    ld d, l
    nop
    xor a
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
    dec b
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
    rst $38
    xor d
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
    ld d, l
    nop
    cp e
    nop
    ld e, l
    nop
    xor d
    nop
    ld [hl], l
    nop
    ei
    nop
    push af
    nop
    ei
    nop
    rst $18
    nop
    xor a
    nop
    db $fd
    nop
    xor a
    nop
    db $dd
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
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    ld a, [bc]
    nop
    ld b, c
    nop
    jr z, jr_014_65ca

jr_014_65ca:
    ld b, h
    nop
    add d
    nop
    ld b, c
    nop
    nop
    nop
    ld b, c
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
    ld d, a
    inc bc
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$f5f8]
    ldh [$aa], a
    add b
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
    ld d, l
    nop
    xor a
    nop
    ld d, l
    nop
    xor e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0aff
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
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    cp e
    nop
    ld d, a
    nop
    cp e
    nop
    ld d, a
    nop
    cp a
    nop
    ld e, l
    nop
    ei
    nop
    rst $38
    nop
    xor a
    nop
    ld a, a
    nop
    rst $38
    nop
    ld [hl], l
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    nop
    rst $28
    nop
    db $fd
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
    ld [$0400], sp
    nop
    add b
    nop
    stop
    xor d
    nop
    ld bc, $0800
    nop
    ld bc, $8200
    nop
    ld d, b
    nop
    ld [hl+], a
    nop
    stop
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    inc bc
    ld e, a
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
    rst $38
    rst $38
    rst $38
    cp $fe
    push af
    ldh a, [$ea]
    ret nz

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
    xor e
    nop
    ld e, a
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
    ld [bc], a
    rst $38
    dec d
    rst $38
    ld a, [hl+]
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
    xor d
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
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
    ld bc, $0000
    nop
    nop
    nop
    ld [$0400], sp
    nop
    ld [bc], a
    nop
    inc b
    nop
    adc d
    nop
    ld b, l
    nop
    jr nz, jr_014_671a

jr_014_671a:
    ld d, c
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld d, l
    ld bc, $0f2f
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
    db $fd
    db $fc
    ld [$d5e0], a
    add b
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
    ld e, a
    nop
    cp a
    nop
    ld d, a
    nop
    xor a
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
    dec b
    rst $38
    ld a, [bc]
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
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld a, [hl]
    rst $38
    ei
    ld l, $31
    ld a, $21
    ld l, $31
    ccf
    ld hl, $312e
    ccf
    ld sp, $313e
    rla
    jr jr_014_67b0

    db $10
    rla
    jr jr_014_67ac

    jr @+$21

    db $10
    rla
    jr @+$21

    db $10
    rla
    jr jr_014_67be

    jr jr_014_67b0

    ld [$0c0b], sp
    rrca
    ld [$0c0b], sp
    rrca
    ld [$080f], sp

jr_014_67ac:
    dec bc
    inc c
    dec bc
    inc c

jr_014_67b0:
    rrca
    inc c
    rlca
    inc b
    dec b
    ld b, $07
    inc b
    dec b
    ld b, $05
    ld b, $07
    inc b

jr_014_67be:
    dec b
    ld b, $07
    inc b
    dec b
    ld b, $07
    ld b, $02
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld bc, $0101
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_014_67fa

jr_014_67fa:
    nop
    nop
    ld [$5000], sp
    nop
    ld [bc], a
    nop
    inc d
    nop
    ld [$0400], sp
    nop
    adc b
    nop
    ld b, l
    nop
    ld [hl+], a
    nop
    dec d
    nop
    ld a, [hl+]
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
    ld d, a
    rlca
    cp a
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
    cp $fa
    ld hl, sp-$2b
    ret nz

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
    xor e
    nop
    ld a, a
    nop
    cp a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld a, [bc]
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
    xor e
    rst $38
    ld e, a
    rst $38
    cp a

jr_014_6874:
    rst $38
    ld a, l
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
    rrca
    cp a
    ld b, a
    rst $38
    rlca
    db $fc
    inc bc
    cp h
    ld b, e
    db $fc
    inc bc
    ld a, h
    add e
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
    ld a, [$d605]
    add hl, hl
    ld a, d
    add l
    ld h, [hl]
    sbc c
    ld a, [$d605]
    add hl, hl
    or $09
    ld [$de15], a
    ld hl, $552a
    ld l, [hl]
    ld de, $2956
    ld l, d
    dec d
    ld [hl], $49
    ld l, d
    dec d
    ld d, [hl]
    add hl, hl
    ld l, d
    dec d
    ld [hl], l
    ld a, [bc]
    ld d, a
    jr z, jr_014_692c

    ld [de], a
    ld e, e
    inc h
    ld l, a
    db $10
    ld [hl], a
    ld [$102f], sp
    ccf
    nop
    ccf
    nop
    cpl
    db $10
    ccf
    nop
    ccf
    nop
    rra
    jr nz, jr_014_6874

    jr nz, jr_014_6874

    ld [hl+], a
    adc l
    ld [hl-], a
    add l
    ld a, [hl-]
    add b
    ccf
    add b
    ccf
    add b
    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    and b
    sbc a
    ldh [$9f], a
    ldh [$9f], a
    and b
    sbc a
    ret nz

    sbc a
    and b
    sbc a
    add b
    sbc a
    ld b, b
    ld c, a
    ret nz

    ld c, a
    ld b, b
    ld c, a
    ret nz

    ld c, a
    ld b, b
    ld c, a
    ret nz

    ld c, a
    ld b, b
    ld c, a
    ret nz

    ld c, a
    ld b, b
    ld c, a
    and b
    cpl
    ld h, b
    cpl
    and b
    cpl
    ld h, d
    daa
    and b
    daa
    ld h, d
    daa
    ld [c], a
    rst $20
    ld [c], a
    rst $20
    ld [c], a
    rst $20
    ld a, [c]
    rst $30
    pop af
    rst $30
    pop af
    rst $30
    pop af
    rst $30
    pop af
    rst $30

jr_014_692c:
    pop af
    sub a
    ld [hl], c
    inc de
    cp c
    dec de
    ld e, c
    dec de
    cp c
    dec de
    ld e, c
    dec de
    cp c
    dec bc
    ld sp, hl
    dec bc
    ld sp, hl
    rrca
    ld sp, hl
    rrca
    db $fd
    rrca
    db $fd
    rrca
    db $fc
    rrca
    db $fd
    rrca
    db $fc
    rrca
    db $fd
    rlca
    db $fd
    rlca
    rst $38
    ld b, $ff
    ld b, $ff
    rrca
    rst $38
    rla
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $30
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
    cp $ff
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
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
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld c, $ff
    ld c, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    rlca
    rst $38
    ld b, $ff
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
    add a
    ld a, a
    rst $08
    ld a, a
    sbc a
    ld a, a
    sbc a
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
    cp a
    ld a, a
    cp a
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, c
    cp a
    ld [hl], c
    cp a
    ld [hl], c
    cp a
    ccf
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp a
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
    rst $38
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
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
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
    nop
    rst $38
    db $fd
    rst $38
    rst $38
    cp $ff
    db $fc
    ld a, e
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    ld b, $f9
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    inc b
    ei
    dec b
    ei
    inc b
    ei
    ld bc, $00ff
    rst $38
    ld [bc], a
    rst $38
    ld [$0cff], sp
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    inc a
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    add a
    rst $38
    sbc a
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
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
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
    ccf
    rst $38
    ccf
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
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
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
    nop
    rst $38
    ret nz

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
    db $fc
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
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fc
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
    db $fd
    rst $38
    db $fd
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
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld a, [$feff]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $10
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ld d, b
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    pop de
    cp $d0
    rst $38
    pop de
    cp $d1
    cp $d1
    cp $d1
    cp $d1
    cp $d3
    db $fc
    db $d3
    db $fc
    db $d3
    db $fc
    sub a
    ld hl, sp-$41
    ldh [$f7], a
    add sp, -$41
    ldh [$b7], a
    add sp, -$01
    ldh [$bf], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [$bf], a
    ldh [rIE], a
    ldh [$bf], a
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
    ret nz

    rst $38
    pop bc
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
    ld a, [$f5ff]
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d5ff], a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    ld hl, sp+$0f
    ld hl, sp+$0e
    ld hl, sp+$1f
    add sp, $0e
    ld hl, sp+$1f
    add sp, $3e
    ret z

    ccf
    ret z

    ld e, $e8
    cp a
    ld c, b
    ccf
    ret z

    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld b, b
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    rst $38
    rst $38
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
    db $eb
    rst $38
    ld d, l
    rst $38
    ld [$55ff], a
    rst $38
    ld [$55ff], a
    rst $38
    ld [$55ff], a
    rst $38
    ld [$55ff], a
    rst $38
    ld [$55ff], a
    rst $38
    ld [$aaff], a
    rst $38
    xor d
    rst $38
    push de
    rst $38
    xor d
    rst $38
    push de
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
    xor d
    nop
    push af
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push af
    nop
    xor d
    nop
    push af
    nop

Jump_014_6d00:
    ld [$d500], a
    nop
    ld [$d500], a
    nop
    ld [$f500], a
    nop
    ld [$d500], a
    nop
    ld [$f500], a
    nop
    ld a, [$fd00]
    nop
    ld a, [$f500]
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
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
    ld a, a
    rst $38
    xor e
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, h
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
    xor d
    rst $38
    xor d
    rst $38
    xor d
    rst $38
    push af
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
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, c
    nop
    xor b
    nop
    ld d, h
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
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
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
    push de
    nop
    ld [$d500], a
    nop
    xor d
    nop
    push de
    nop
    ld [$f500], a
    nop
    cp $00
    push af
    ld a, [bc]
    cp $00
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
    ld a, a
    rst $38
    rrca
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
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    or b
    rst $38
    xor b
    rst $38
    ld d, h
    rst $38
    xor b
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
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$f5ff], a
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    nop
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    nop
    nop
    and b
    nop
    ld d, b
    nop
    adc b
    nop
    ld b, b
    nop
    jr nz, jr_014_6e1a

jr_014_6e1a:
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld [$0000], sp
    nop
    add b
    nop
    ld d, b
    nop
    add b
    nop
    inc d
    nop
    adc b
    nop
    ld b, h
    nop
    add b
    nop
    ld b, b
    nop
    adc b
    nop
    ld b, h
    nop
    xor b
    nop
    ld d, h
    nop
    xor b
    nop
    inc b
    nop
    add d
    nop
    ld d, l
    nop
    xor b
    nop
    ld d, c
    nop
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    xor b
    nop
    ld d, h
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
    push de
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$fd00], a
    nop
    ld a, [$fff0]
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38
    nop
    rst $38
    and b
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
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$fdff], a
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
    inc b
    nop
    nop
    nop
    nop
    nop
    and d
    nop
    ld de, $a000
    nop
    ld d, b
    nop
    nop
    nop
    ld b, h
    nop
    ld [hl+], a
    nop
    ld b, h
    nop
    and b
    nop
    stop
    adc b
    nop
    ld b, h
    nop
    and d
    nop
    ld d, b
    nop
    xor b
    nop
    ld d, b
    nop
    xor b
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
    ld d, l
    nop
    ld a, [$fff8]
    rst $38
    rst $38
    rst $38
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
    inc bc
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
    ld b, b
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    add sp, -$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    nop
    cp $00
    db $fd
    nop
    cp $00
    rst $38
    nop
    cp $00
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
    ld b, h
    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_014_6f86

jr_014_6f86:
    stop
    adc b
    nop
    inc b
    nop
    adc b
    nop
    inc b
    nop
    adc b
    nop
    ld b, l
    nop
    and d
    nop
    ld d, c
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
    push de
    add b
    ld a, [$fff8]
    rst $38
    rst $38
    rst $38
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
    cp a
    rlca
    ld d, a
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    ld a, [$f500]
    nop
    ld a, [$fd00]
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
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    xor d
    nop
    push de
    nop
    ld [$f500], a
    nop
    ld a, [$fd00]
    nop
    cp $00
    db $fd
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
    ld [$0000], sp
    nop
    nop
    nop
    inc b
    nop
    adc b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    adc b
    nop
    ld b, h
    nop
    adc d
    nop
    ld b, c
    nop
    xor b
    nop
    ld d, b
    nop
    xor d
    nop
    call nc, $fa80
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
    cp a
    rra
    ld d, l
    ld bc, $00ea
    push de
    nop
    ld [$f700], a
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
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    nop
    ld [$f500], a
    nop
    ld a, [$fd00]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    inc b
    nop
    ld [bc], a
    nop
    ld de, $0800
    nop
    sub l
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ccf
    ld d, a
    inc bc
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
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    ld [$7500], a
    nop
    cp d
    nop
    db $fd
    nop
    ld [$f700], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    ei
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
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    rlca
    inc c
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $0712
    inc de
    inc d
    ld a, [bc]
    dec d
    ld d, $07
    rla
    nop
    nop
    nop
    jr jr_014_712e

    ld a, [de]
    dec de
    inc e
    rlca
    dec e
    ld e, $0a
    rra
    jr nz, jr_014_7126

    ld hl, $0000
    nop
    ld [hl+], a
    inc hl
    inc h

jr_014_7126:
    dec h
    ld h, $07
    daa
    jr z, jr_014_7155

    ld a, [hl+]
    dec hl

jr_014_712e:
    rlca
    inc l
    dec l
    nop
    nop
    ld l, $2f
    jr nc, jr_014_7168

    ld [hl-], a
    rlca
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    rlca
    jr c, jr_014_717a

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    rlca
    rlca
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_014_7155:
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    rlca
    rlca
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    nop
    ld e, d

jr_014_7168:
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    rlca
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_014_717a:
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    rlca
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld h, [hl]
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    rlca
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    add [hl]
    rlca
    rlca
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    ld a, [hl]
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    rlca
    rlca
    rlca
    sub e
    nop
    nop
    nop
    nop
    nop
    sub h
    sub l
    ld a, [hl]
    sub [hl]
    sub a
    sbc b
    rlca
    rlca
    rlca
    rlca
    sbc c
    sbc d
    sbc e
    sbc h
    nop
    nop
    nop
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    rlca
    rlca
    and h
    and l
    and [hl]
    and a
    nop
    nop
    nop
    xor b
    xor c
    xor d
    xor e
    add c
    xor h
    rlca
    rlca
    rlca
    xor l
    xor [hl]
    xor a
    or b
    nop
    nop
    nop
    nop
    or c
    or d
    or e
    add c
    or h
    rlca
    rlca
    rlca
    or l
    or [hl]
    or a
    cp b
    nop
    nop
    nop
    nop
    cp c
    cp d
    cp e
    add c
    add c
    cp h
    rlca
    rlca
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    add c
    add c
    ret z

    rlca
    rlca
    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $07
    rlca
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld bc, $0101
    ld [bc], a
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
    nop
    nop
    ld bc, $0101
    dec b
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
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0101
    ld bc, $0202
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
    ld bc, $0101
    ld bc, $0501
    dec b
    dec b
    dec b
    ld b, $06
    ld b, $06
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    nop
    nop
    ld b, $02
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    nop
    rra
    ldh [$f1], a
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
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ldh a, [rIF]
    rrca
    nop
    nop
    nop
    jr nz, jr_014_73b0

jr_014_73b0:
    add h
    nop
    jr nz, jr_014_73b4

jr_014_73b4:
    ld a, [bc]
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
    inc b
    nop
    add hl, hl
    nop
    cp h
    nop
    db $fc
    nop
    ld e, a
    and b
    ld [$ff15], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $f4ff
    dec bc
    ld sp, hl
    ld b, $fe
    ld bc, $00ff
    ld e, a
    and b
    ld d, d
    xor l
    xor a
    ld d, b
    ld de, $2eee
    pop de
    dec d
    ld [$bf40], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    rst $38
    ld l, l
    rst $38
    ld b, d
    rst $38
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
    ld hl, sp+$00
    ccf
    ret nz

    ldh a, [$fc]
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
    add b
    ld a, a
    adc b
    ld [hl], a
    ld a, h
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
    nop
    adc b
    nop
    jr nz, jr_014_747e

jr_014_747e:
    nop
    nop
    nop
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
    xor b
    nop
    cp a
    ld b, b
    push af
    ld a, [bc]
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor l
    ld d, d
    di
    inc c
    ld e, l
    and d
    rst $38
    nop
    sbc $21
    xor d
    ld d, l
    ld d, l
    xor d
    dec d
    ld [$f708], a
    push de
    ld a, [hl+]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $c0ff
    rst $38
    ld b, c
    rst $38
    dec a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    cp $ff
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
    db $ed
    rst $38
    ld e, d
    rst $38
    xor d
    rst $38
    ld [de], a
    rst $38
    db $10
    ldh a, [rP1]
    ccf
    ret nz

    rst $20
    ld hl, sp-$02
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
    ld b, b
    cp a
    ld [c], a
    dec e
    rra
    nop
    nop
    nop
    nop
    nop
    ld [$0400], sp
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
    ld bc, $3000
    nop
    ld l, e
    nop
    db $eb
    nop
    ld e, a
    and b
    ld [$ff15], a
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, e
    add h
    sbc $21
    ld e, c
    and [hl]
    xor d
    ld d, l
    ld d, h
    xor e
    ld c, d
    or l
    ld d, b
    xor a
    add b
    ld a, a
    ld [hl+], a
    db $dd
    nop
    rst $38
    nop
    rst $38
    ccf
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
    db $e4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    ld e, h
    rst $38
    ld sp, $84ff
    rst $38
    ld [bc], a
    rst $38
    jr nz, jr_014_7591

jr_014_7591:
    nop
    nop
    nop
    ld hl, sp+$00
    ccf
    ret nz

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
    ld a, a
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
    pop af
    ld c, $0f
    nop
    stop
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
    ld bc, $0100
    nop
    inc hl
    nop
    ld h, e
    inc bc
    di
    ld b, $fc
    ld b, $fe
    rlca
    cp $07
    cp b
    ld b, a
    push de
    ld a, [hl+]
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [$1f], a
    sub l
    ld l, d
    ld e, b
    and a
    and b
    ld e, a
    db $10
    rst $28
    ld [bc], a
    db $fd
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
    nop
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
    rst $38
    rst $38
    ld sp, hl
    rst $38
    dec c
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
    ei
    rst $38
    cp e
    rst $38
    ld d, a
    rst $38
    ld h, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec d
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
    add b
    nop
    ld hl, sp+$00
    ccf
    ret nz

    rst $00
    ld hl, sp-$04
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
    add b
    ld a, a
    ld a, h
    inc bc
    inc bc
    nop
    ld d, e
    nop
    inc bc
    nop
    nop
    nop
    rlca
    nop
    dec bc
    nop
    cp e
    nop
    rst $30
    nop
    rst $18
    add b
    ld a, a
    add b
    rst $38
    pop af
    ld e, [hl]

jr_014_768f:
    pop de
    add [hl]
    jp c, $fbf6

    rrca
    ei
    xor e
    ld d, l
    cp $81
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
    rlca
    rst $38
    jr nz, jr_014_768f

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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $21ff
    rst $38
    ld [hl], c
    rst $38
    pop af
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
    jr nz, @+$01

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
    ld e, a
    rst $38
    rst $38
    rst $38
    or e
    rst $38
    sub d
    rst $38
    ld bc, $40ff
    rst $38
    ld bc, $ff8f
    ld h, c
    rra
    xor h
    rlca
    rla
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    ld de, $0a00
    nop
    dec b
    nop
    ld a, [bc]
    nop
    ld de, $0400
    nop
    ld a, [bc]
    nop
    ld [bc], a
    nop
    add hl, bc
    nop
    inc b
    nop
    ld bc, $0400
    nop
    ld bc, $0400
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    ld bc, $0200
    nop
    ld [bc], a
    nop
    ld bc, $8000
    nop
    ld hl, sp+$00
    rra
    ldh [$ef], a
    ldh a, [rIE]
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp+$7f
    ld hl, sp+$1f
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld hl, sp-$0a
    add hl, de
    cp $1d
    cp $19
    cp $39
    sub $3d
    sbc $39
    sbc $39
    sbc $39
    cp $39
    db $fc

jr_014_776b:
    ccf
    cp h
    ei
    inc a
    ei
    inc a
    ld a, e
    jr c, jr_014_776b

    ld hl, sp-$09
    ld hl, sp-$09
    xor b
    ld d, a
    ld hl, sp+$07
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$09
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
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
    ldh [rIE], a
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
    ldh a, [rIE]
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
    ei
    rst $38
    ld e, d
    rst $38
    sub h
    rst $38
    ld c, e
    rst $38
    inc b
    rst $38
    inc b
    nop
    rst $38
    ldh [rIE], a
    db $10
    rst $38
    nop
    rst $38
    ldh [$3f], a
    ld e, b
    rlca
    xor a
    ld bc, $0057
    or l
    nop
    ld e, a
    nop
    xor l
    nop
    ld d, a
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
    and d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    sub l
    nop
    ld a, [hl+]
    nop
    add l
    nop
    and d
    nop
    push de
    nop
    adc d
    nop
    push de
    nop
    xor e
    nop
    rst $10
    nop
    xor e
    nop
    rst $18
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
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$01
    ldh a, [rSCY]
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
    ld a, [bc]
    ldh [$15], a
    ldh [$0a], a
    ldh [$15], a
    ldh [$0a], a
    ldh [$15], a
    ldh [$0b], a
    ldh [rNR22], a
    ldh [rIF], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$9f], a
    ldh [$df], a
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
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
    inc sp
    rst $38
    ld h, d
    rst $38
    cp b
    rst $38
    ld d, h
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
    ld [$003f], sp
    ld a, [$fe0f]
    ld bc, $00ff
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
    rst $18
    nop
    rst $28
    nop
    ld l, a
    nop
    rst $10
    nop
    ld a, a
    nop
    rst $38
    nop
    ld e, a
    nop
    or a
    nop
    ld e, a
    nop
    rst $28
    nop
    ld d, a
    nop
    xor a
    nop
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
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
    inc b
    nop
    ld [bc], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    adc d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
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
    ld hl, sp-$04
    rrca
    ld e, h
    dec bc
    xor d
    rrca
    ld e, l
    dec bc
    cp l
    dec bc
    db $fc
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    db $fd
    add hl, bc
    rst $38
    add hl, bc
    db $fd
    add hl, bc
    rst $38
    dec c
    rst $38
    dec c
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    db $fd
    add hl, bc
    rst $38
    add hl, bc
    cp $0b
    ld hl, sp+$0f
    db $fc
    dec bc
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fd
    ei
    ld sp, hl
    rst $38
    ld hl, sp-$01
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
    rst $10
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rra
    rst $38
    ld [$52ff], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, @+$01

    ld c, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    ccf
    ld b, b
    rrca
    ld [de], a
    ld bc, $0002
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    dec b
    nop
    ld [$0100], sp
    nop
    ld [bc], a
    nop
    ld de, $2a00
    nop
    ld b, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    adc d
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
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

jr_014_79db:
    nop
    ld d, l
    nop
    xor d

jr_014_79df:
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fc]
    inc bc
    pop bc
    ld a, $03
    db $fc
    nop
    rst $38
    rrca
    rst $38
    ldh a, [rIE]
    jr nz, jr_014_79db

    and b
    ld e, a
    jr nz, jr_014_79df

    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    and b
    rst $38
    add [hl]
    rst $38
    rst $18
    ld [c], a
    ld [$09f7], sp
    or $59
    and $79
    and $e4
    rst $38
    db $e4
    rst $38
    rst $20
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld [hl], h
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
    rlca
    rst $38
    add a
    rst $38
    ld [hl], e
    rst $38
    ld e, $ff
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    inc e
    ld e, a
    rlca
    xor e
    ld bc, $0055
    ld a, [hl+]
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [hl+], a
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld [hl+], a
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec b
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [bc]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    dec d
    nop
    ld a, [hl+]
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, l
    nop
    xor e
    nop
    ld d, a
    nop
    xor a
    nop
    ld e, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$fe], a
    ld bc, $01fa
    ld a, e
    add b
    db $fc
    inc bc
    pop bc
    ld a, $3c
    rst $38
    pop bc
    cp $06
    ld sp, hl
    ld c, $f1
    dec b
    cp $22
    db $fd
    inc h

jr_014_7ae1:
    rst $38
    inc h
    cp $24
    rst $38
    jr nz, @+$01

    jr nz, jr_014_7ae1

    nop
    rst $20
    db $e4

jr_014_7aed:
    rst $38
    db $fc
    rst $38
    sub b
    rst $28
    add b
    rst $38
    sub b
    rst $28
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
    ldh a, [rIE]
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
    rst $38
    rst $38
    rst $38
    rst $18
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
    ld bc, $e2ff
    rst $38
    or $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ld [hl-], a
    rst $38
    inc [hl]
    cp $18
    db $fd
    sub b
    ld a, [$f5f0]
    jr nz, jr_014_7aed

    nop
    ld [hl], l
    nop
    xor d
    nop
    ld [hl], l
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
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld [hl], l
    nop
    cp d
    nop
    ld [hl], l
    nop
    ld a, [$7500]
    nop
    ld a, [$f500]
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    nop
    ld a, [$fd00]
    nop
    cp $00
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    ld h, c
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
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
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld e, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    ld h, b
    rst $38
    ld b, c
    cp $83
    cp $84
    db $fc
    ld [$10f8], sp
    ldh a, [rNR41]
    ldh [rLCDC], a
    ret nz

    add b
    add b
    ld b, b
    add b
    nop
    nop
    nop
    add b
    nop
    nop
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
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    nop
    nop
    add d
    nop
    inc b
    nop
    add b
    nop
    ld b, b
    nop
    adc b
    nop
    ld d, b
    nop
    and b
    nop
    ld d, h
    nop
    and b
    nop
    ld d, b
    nop
    and d
    nop
    ld d, l
    nop
    xor b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$f500], a
    nop
    ld [$f500], a
    nop
    ld a, [$ff00]
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
    ld bc, $00ff
    rst $38
    dec b
    rst $38
    rst $28
    rst $38
    push hl
    rst $38
    ldh [rIE], a
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
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld a, $ff
    ld a, $ff
    ld a, a
    rst $38
    or a
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
    rst $38
    rst $38
    rst $38
    ret nz

    ld h, b
    add b
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
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    stop
    jr nz, jr_014_7cc0

jr_014_7cc0:
    ld b, b
    nop
    and b
    nop
    ld d, c
    nop
    and d
    nop
    ld d, h
    nop
    xor b
    nop
    ld d, c
    nop
    xor d
    nop
    push de
    nop
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
    rlca
    rst $38
    ld b, d
    rst $38
    ret nc

    rst $38
    ld e, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld c, a
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    ei
    nop
    db $fc
    nop
    cp $00
    db $fc
    nop
    cp $00
    db $fd
    nop
    or [hl]
    nop
    jp hl


    nop
    ld sp, hl
    nop
    db $ed
    nop
    db $fd
    nop
    rst $38
    nop
    xor $00
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    ld a, [$fb00]
    nop
    db $fd
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
    nop
    nop
    nop
    nop
    ld b, b
    nop
    jr nz, jr_014_7d48

jr_014_7d48:
    stop
    add b
    nop
    inc b
    nop
    adc b
    nop
    ld b, l
    nop
    and d
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
    xor e
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
    db $fc
    ld a, [$fd88]
    ld c, b
    ld a, [$ff88]
    adc b
    ld a, [$ff88]
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ret z

    rst $38
    ret z

    rst $38
    ret c

    rst $38
    ret c

    rst $38
    ret c

    rst $38
    ret c

    rst $38
    ret c

    rst $38
    ret c

    rst $38
    ld hl, sp-$01
    rst $18
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld [$5500], a
    nop
    ld d, l
    nop
    ld l, d
    nop
    ld d, l
    nop
    ld l, d
    nop
    xor l
    nop
    xor d
    nop
    xor l
    nop
    or d
    nop
    xor e
    nop
    ld d, l
    nop
    xor l
    nop
    halt
    xor l
    nop
    ld d, l
    nop
    or l
    nop
    sub $00
    xor d
    nop
    dec [hl]
    nop
    sub $00
    and l
    nop
    sub [hl]
    nop
    ld [$aa00], a
    nop
    rst $10
    nop
    rst $18
    nop
    rst $18
    nop
    db $ed
    nop
    cp $00
    rst $18
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
    ld b, c
    nop
    jr z, jr_014_7e04

jr_014_7e04:
    ld b, l
    nop
    jr nz, jr_014_7e08

jr_014_7e08:
    ld b, l
    nop
    and d
    nop
    ld d, a
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $f8
    push de
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
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nc

    rst $38
    rst $38
    and h
    nop
    ld d, l
    nop
    ld d, [hl]
    nop
    xor d
    nop
    sub l
    nop
    xor d
    nop
    ld d, l
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$3500], a
    nop
    push de
    nop
    ld e, d
    nop
    xor e
    nop
    ld d, l
    nop
    xor l
    nop
    ld l, l
    nop
    or l
    nop
    xor d
    nop
    ld d, l
    nop
    jp c, Jump_014_6d00

    nop
    xor d
    nop
    or a
    nop
    rst $28
    nop
    ld l, a
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    ei
    nop
    ld a, l
    nop
    rst $30
    nop
    inc b
    nop
    nop
    nop
    inc b
    nop
    and b
    nop
    ld b, c
    nop
    xor a
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
    db $fd
    ld hl, sp-$56
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
    ld d, l
    nop
    ld a, [$ff00]
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
    add sp, $55
    nop
    ld d, l
    nop
    adc d
    nop
    adc e
    nop
    ld b, l
    nop
    xor d
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, l
    nop
    cp e
    nop
    ld e, e
    nop
    ld l, l
    nop
    push de
    nop
    ld d, [hl]
    nop
    ld e, d
    nop
    xor d
    nop
    ld d, l
    nop
    xor c
    nop
    rst $10
    nop
    ld l, a
    nop
    xor a
    nop
    ld e, a
    nop
    rst $28
    nop
    rst $18
    nop
    rst $18
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
    rst $38
    nop
    rst $38
    nop
    stop
    adc b
    nop
    ld b, c
    nop
    ld a, [hl+]
    nop
    ld e, a
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
    ld a, [$55f0]
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
    ld d, l
    nop
    xor d
    nop
    ld e, a
    nop
    cp a
    nop
    rst $38
    db $fc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    nop
    ccf
    ld b, b
    rst $38
    ret z

    ld a, a
    jp $837f


    ld a, a
    add c
    ld a, a
    and c
    ld a, a
    ld h, c
    ccf
    ld h, c
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld h, b
    ccf
    ld b, b
    ccf
    ld d, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    jr nc, jr_014_7f8d

    jr nc, jr_014_7f8f

    jr nc, jr_014_7f91

    ld sp, $321f
    rra
    jr z, jr_014_7f97

    inc h
    rra
    jr nz, jr_014_7f9b

    jr nz, @+$21

    ld a, [de]
    rrca
    jr jr_014_7f91

    jr @+$11

    jr jr_014_7f95

    inc e
    rrca
    ld a, [de]
    rrca
    db $10
    rrca
    db $10

jr_014_7f8d:
    rrca
    db $10

jr_014_7f8f:
    rrca
    inc c

jr_014_7f91:
    rlca
    ld c, $07
    inc c

jr_014_7f95:
    rlca
    dec c

jr_014_7f97:
    rlca
    inc c
    rlca
    add hl, bc

jr_014_7f9b:
    rlca
    ld [$0907], sp
    rlca
    ld [$0007], sp
    rlca
    ld b, $03
    ld b, $03
    ld b, $03
    ld b, $03
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    inc b
    inc bc
    nop
    inc bc
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld a, $3f
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    cp $fe
    cp $fc
    ldh [$aa], a
    nop
    ld d, h
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
    xor d
    nop
    ld d, l
    nop
    cp a
    nop
    ld d, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ld a, [$fdff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
