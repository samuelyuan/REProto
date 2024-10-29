SECTION "ROM Bank $002", ROMX[$4000], BANK[$2]

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    inc b
    rst $38
    ld b, $ff
    rlca
    rst $38
    ld [$7dff], a
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec b
    rst $38
    ld b, $ff
    ld bc, $0fff
    rst $38
    dec e
    rst $38
    dec bc
    rst $38
    dec h
    rst $38
    db $eb
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    rra
    rst $38
    cpl
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
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld [hl], a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    ld l, e
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $28
    rst $38
    ld d, l
    rst $38
    dec bc
    rst $38
    rla

jr_002_4093:
    rst $38
    cp a
    rst $38
    sub a
    rst $38
    rlca
    rst $38
    rla
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ld a, [hl-]
    rst $38
    scf
    rst $38
    ld l, $ff
    ld [hl], c
    rst $38
    xor d
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_002_4093

    ld b, b
    cp a
    ld [$00f7], sp
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    db $10
    rst $28
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, l
    cp d
    ld a, [bc]
    push af
    ld b, l
    cp d
    adc d
    ld [hl], l
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
    ld d, l
    xor d
    xor e
    ld d, h
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, a
    xor b
    xor e
    ld d, h
    ld d, a
    xor b
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
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $0aff
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    dec e
    rst $38
    adc d
    rst $38
    dec c
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
    rra
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
    ldh a, [$f0]
    ldh [$f0], a
    ldh [$f0], a
    ldh [rSVBK], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$b0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$f0], a
    ldh [$b0], a
    ldh [$90], a
    ldh [$b0], a
    ldh [rSVBK], a
    ldh [$f0], a
    ldh [$90], a
    ldh [$30], a
    ldh [rNR10], a
    ldh [rP1], a
    ldh [rNR10], a
    ldh [rP1], a
    ldh [rNR10], a
    ldh [rP1], a
    ldh [rNR10], a
    ldh [$30], a
    ldh [rNR42], a
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    ld l, e
    rst $38
    call $8aff
    rst $38
    dec d
    rst $38
    ld a, $ff
    inc d
    rst $38
    jr z, @+$01

    jr nc, @+$01

    jr nz, @+$01

    nop
    rst $38
    ld bc, $02fe
    db $fd
    inc b
    ei
    ld [$15f7], sp
    ld [$f50a], a
    dec d
    ld [$d42b], a
    dec d
    ld [$55aa], a
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    cp d
    ld b, l
    ld d, l
    xor d
    cp d
    ld b, l
    ld [hl], l
    adc d
    xor d
    ld d, l
    ld [hl], h
    adc e
    xor d
    ld d, l
    db $f4
    dec bc
    xor d
    ld d, l
    call nc, $ea2b
    dec d
    ld d, l
    xor d
    ld [$5515], a
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    rst $38
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    ld [hl], a
    rst $38
    cp e
    rst $38
    ld [hl], l
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
    rst $28
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
    rst $30
    rst $38
    cp $ff
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    push af
    rst $38
    rst $38
    rst $38
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
    rlca
    inc bc
    ld bc, $0303
    ld bc, $0101
    add c
    ld bc, $c141
    pop hl
    pop bc
    pop bc
    pop bc
    pop hl
    pop bc
    pop bc
    pop bc
    pop hl
    pop bc
    pop bc
    pop bc
    pop hl
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    pop bc
    jp $c1c1


    ld bc, $0301
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    ld bc, $4103
    add c
    jp $c1c1


    pop bc
    jp $c1c1


    pop bc
    jp $c1c1


    pop bc
    jp $c1c1


    pop bc
    jp $c1c1


    pop bc
    jp $c1c1


    pop bc
    jp $c1c1


    pop bc
    jp $c1c1


jr_002_4297:
    pop bc
    db $e3
    pop bc
    rst $00
    rst $38
    ld [$c0ff], a
    rst $38
    add b
    rst $38
    sub h
    rst $38
    xor b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    and b
    ld e, a
    ld b, b
    cp a
    jr nz, jr_002_4297

    ld d, b
    xor a
    and c
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    ld d, b
    xor a
    and d
    ld e, l
    ld b, b
    cp a
    and d
    ld e, l
    ld b, l
    cp d
    adc d
    ld [hl], l
    ld d, l
    xor d
    xor d
    ld d, l
    dec d
    ld [$d728], a
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld d, c
    xor [hl]
    and d
    ld e, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, c
    xor [hl]
    xor d
    ld d, l
    ld d, h
    xor e
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, b
    xor a
    and b
    ld e, a
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
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

Jump_002_4303:
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
    rst $38
    rst $38
    rst $38
    rst $38
    push de
    rst $38
    rst $28
    rst $38
    ld a, l
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    push af
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    push af
    rst $38
    ld a, [$f5ff]
    rst $38
    rst $38
    rst $38
    push af
    rst $38
    cp $ff
    rst $38
    add b
    add b
    add b
    ret nz

    add b
    add b
    add b
    ret nz

    add b
    add d
    add b
    rst $00
    add e
    add e
    add e
    add $83
    add d
    add e
    add $83
    add e
    add d
    add $83
    add e
    add d
    add $83
    add e
    add d
    rst $00
    add b
    add b
    add b
    ret nz

    add b
    add b
    add b
    ret nz

    add b
    add b
    add b
    pop bc
    add b
    add e
    add e
    ld b, a
    add e
    add d
    add e
    add [hl]
    add e
    add e
    add d
    add [hl]

jr_002_437f:
    add e
    add e
    add d
    add [hl]
    add e
    add e
    add d
    add [hl]
    add e
    add e
    add d
    add [hl]
    add e
    add e
    add d
    nop
    add b
    add b
    add b
    ret nz

jr_002_4393:
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    dec b
    rst $38
    ld c, d
    cp a
    jr nz, jr_002_437f

    ld d, l
    xor d
    ld a, [hl+]

jr_002_43a3:
    push de
    ld d, l
    xor d
    ld a, [hl+]
    push de
    dec d
    ld [$f50a], a
    dec b
    ld a, [$ff00]
    db $10
    rst $28
    jr nz, jr_002_4393

    nop
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    jr nz, jr_002_43a3

    ld c, b
    cp a
    add b
    ld a, a
    ld b, b
    cp a
    add b
    ld a, a
    ld b, c
    cp [hl]
    ld [hl+], a
    db $dd
    ld d, b
    xor a
    adc b
    ld [hl], a
    ld de, $20ee
    rst $18
    ld d, c
    xor [hl]
    xor d
    ld d, l
    ld d, b
    xor a
    and d
    ld e, l
    ld b, l
    cp d
    adc d
    ld [hl], l
    ld d, l
    xor d
    adc b
    ld [hl], a
    inc d
    db $eb
    xor d
    ld d, l
    nop
    rst $38
    ld [$10f7], sp
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
    push af
    rst $38
    cp e
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
    cp $ff
    rst $30
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    push af
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$d0ff], a
    rst $38
    cp c
    cp $d2
    db $fd
    and l
    ld a, [$f46b]
    and a
    ld hl, sp+$4f
    ldh a, [$9f]
    ldh [$3f], a
    ret nz

    rst $18
    and b
    ccf
    ret nz

    ld a, a
    add b
    cp h
    ld b, b
    ld hl, sp+$00
    ld [hl], b
    ld b, b
    ret nz

    ld h, b
    ld h, b
    ld b, b
    ret nz

    ld h, b
    ldh [$c0], a
    add b
    ldh [$a0], a
    ld b, b
    ldh [rP1], a
    pop hl
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    jr nc, jr_002_44bc

    ret c

    ld h, b
    ld a, h
    ld b, b
    db $dd
    ld h, d
    sbc $61
    rst $18
    ldh [$3f], a
    ret nz

    ld l, d
    add b
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
    jr nz, jr_002_44e0

    add b
    ld h, b
    ld h, b
    ld b, b
    ret nz

    ld h, b
    ld d, b
    ld h, b
    ret c

    ld h, b
    ret c

    rst $20
    inc e
    db $e3
    ld a, $c1
    ld a, a
    add b
    xor e
    ld d, h
    ld d, a
    xor b
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l

jr_002_44bc:
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    ld a, [bc]
    push af
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    dec d

jr_002_44d3:
    rst $38
    add d
    rst $38
    dec b
    rst $38
    ld [$10ff], sp
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38

jr_002_44e0:
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
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
    jr nz, jr_002_44d3

    nop
    rst $38
    nop
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
    cp $ff
    rst $30
    rst $38
    and d
    rst $38
    ret nc

    rst $38
    cp [hl]
    rst $38
    cp $ff
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    push af
    rst $38
    ld a, [$f5ff]
    rst $38
    ld [$d5ff], a
    rst $38
    cp d
    rst $38
    ld d, h
    rst $38
    and c
    cp $53
    db $fc
    and $f8
    ld c, l
    ldh a, [$9a]
    ldh [$2d], a
    ret nc

    ld e, d
    and b
    push af
    nop
    ld l, d
    add b
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
    push af
    nop
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
    ld bc, $0102
    ld [bc], a
    add e
    ld [bc], a
    add d
    jp $c382


    add d
    jp $83c2


    jp nz, $c283

    add e
    jp nz, $c283

    add e
    sbc $83
    ld l, [hl]
    sbc a
    jr nz, jr_002_45e7

    rla
    jr z, jr_002_459a

    db $10
    rlca
    ld [$0403], sp
    ld bc, $0002
    inc bc
    inc bc
    add d
    jp nz, Jump_002_4303

    add e

jr_002_459a:
    jp Jump_002_4303


    add e
    add e
    jp $83c3


    add e
    jp $83c3


    add e
    jp $83c3


    add e
    jp $83c3


    jp $0303


    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    ld c, $07
    adc h
    ld a, a
    ld a, c
    cp $82
    ld a, l
    ld d, a
    xor b
    xor d
    ld d, l
    ld e, l
    and d
    cp [hl]
    ld b, c
    ld e, l
    and d
    xor e
    ld d, h
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    dec d
    ld [$fd02], a
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    push de
    rst $38
    ld [c], a
    rst $38
    rst $10
    rst $38
    db $eb
    rst $38
    ld b, a

jr_002_45e7:
    rst $38
    add e
    rst $38
    rlca
    rst $38
    ld c, $ff
    rra
    rst $38
    rra
    rst $38
    inc e
    rst $38
    jr z, @+$01

    ld bc, $23ff
    rst $38
    inc sp
    rst $38
    ld b, d
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
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
    ei
    rst $38
    push af
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    cp $ff
    ld [hl], l
    rst $38
    xor e
    rst $38
    ld [hl], a
    rst $38
    xor e
    rst $38
    ld e, a
    rst $38
    xor $ff
    db $dd
    rst $38
    db $eb
    rst $38
    push de
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$54ff], a
    rst $38
    xor b
    rst $38
    ld d, d
    db $fd
    and l
    ld a, [$f44b]
    ld d, [hl]
    xor b
    cp l
    ld b, b
    ld a, d
    add b
    push de
    nop
    xor b
    nop
    ld d, b
    nop
    add b
    nop
    ld d, c
    nop
    adc d
    nop
    stop
    xor d
    nop
    inc d
    nop
    xor d
    nop
    ld b, h
    nop
    and b
    nop
    ld d, h
    nop
    xor d
    nop
    ld d, l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add a
    nop
    add a
    nop
    add a
    ld [bc], a
    add e
    ld b, $87
    ld [bc], a
    add a
    ld [bc], a
    add a
    ld [bc], a
    add d
    rlca
    add [hl]
    inc bc
    add d
    rlca
    add [hl]
    inc bc
    add e
    rlca
    add d
    rlca
    add e
    rlca
    add e
    rlca
    add e
    rlca
    add d
    rlca
    add e
    rlca
    add d
    rlca
    add e
    rlca
    add d
    rlca
    add e
    rlca
    add e
    rlca
    add e
    rlca
    add e
    rlca
    add e
    rlca
    inc bc
    add a
    add e
    rlca
    inc bc
    add a
    add e
    rlca
    inc bc
    add a
    add e
    rlca
    inc bc
    add a
    add e
    rlca
    ld [bc], a
    add a
    add d
    rlca
    ld [bc], a
    add a
    add d
    rlca
    inc bc
    add [hl]
    add d
    rlca
    inc bc
    add [hl]
    sub $3f
    ld c, e
    cp [hl]
    add b
    ld a, a
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    xor b
    ld d, a
    nop
    rst $38
    nop
    rst $38
    sub d
    rst $38
    ld d, e
    rst $38
    or e
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    db $fd
    rst $38
    db $eb
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld b, [hl]
    adc $c6
    add $82
    jp nz, $c080

    ld [$8cc8], sp
    call z, $ce0e
    dec bc
    rst $38
    inc b
    cp $08
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc d
    db $fc
    nop
    inc b
    nop
    ld b, $02
    rst $38
    inc bc
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    db $dd
    rst $38
    ld a, b
    rst $38
    ld d, h
    rst $38
    ld c, $ff
    ld b, [hl]
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    push de
    rst $38
    cp d
    rst $38
    ld d, a
    rst $38
    xor d
    rst $38
    ld b, h
    rst $38
    ld bc, $0bfe
    db $f4
    ld e, [hl]
    and b
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
    adc d
    nop
    inc b
    nop
    ld [$0000], sp
    nop
    jr nz, jr_002_476a

jr_002_476a:
    stop
    and b
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
    dec d
    nop
    xor d
    nop
    ld d, a
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
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
    inc c
    inc b
    inc b
    ld c, $0e
    inc b
    inc b
    ld c, $0c
    ld b, $04
    ld c, $0c
    ld b, $04
    ld c, $0c
    ld b, $04
    ld c, $0c
    ld b, $04
    ld c, $0c
    ld b, $04
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $0c
    ld b, $04
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $04
    ld c, $06
    inc c
    ld b, $0c
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
    nop
    sub l
    ld a, a
    ccf
    rst $38
    sbc a
    ld a, a
    ld b, e
    cp a
    add a
    ld a, a
    ld d, e
    xor a
    xor b
    ld d, a
    ld b, h
    cp e
    xor b
    ld d, a
    ld b, b
    cp a
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, l
    xor d
    adc d
    ld [hl], l
    nop
    rst $38
    nop
    rst $38
    dec hl
    cp $56
    rst $38
    xor d
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    ld c, a
    ld c, a
    ld bc, $4f41
    ld c, a
    nop
    ld b, b
    ld b, b
    ld b, b
    rst $38
    rst $38
    inc c
    ld c, $04
    inc b
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    db $e4
    inc b
    inc b
    inc c
    inc c
    cp d
    rst $38
    ld [hl], b
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    and b
    rst $38
    jr nc, @+$01

    and b
    rst $38
    jr nz, @+$01

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
    ei
    rst $38
    rst $10
    rst $38
    add e
    rst $38
    pop bc
    rst $38
    and e
    rst $38
    pop de
    rst $38
    ld [hl], c
    rst $38
    push de
    ld a, a
    rst $38
    rst $38
    ld d, a
    rst $38
    cp [hl]
    rst $38
    ld [hl], a
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$15ff], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld e, l
    and d
    or a
    ld b, b
    db $eb
    nop
    ld d, c
    nop
    and b
    nop
    ld bc, $8000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0a00
    nop
    rla
    nop
    xor a
    nop
    ld a, d
    dec b
    call nc, $a02b
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    ld [bc], a
    rst $38
    jp $687c


    inc a
    jr nc, jr_002_48e8

    jr c, jr_002_48ca

    jr jr_002_48cc

    jr c, jr_002_48ce

    jr jr_002_48d0

    jr jr_002_48d2

    inc e
    inc e
    jr jr_002_48d6

    inc e
    inc e
    jr jr_002_48da

    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    jr jr_002_48e6

jr_002_48ca:
    inc e
    inc e

jr_002_48cc:
    jr c, jr_002_48ea

jr_002_48ce:
    inc e
    inc e

jr_002_48d0:
    inc e
    inc e

jr_002_48d2:
    inc e
    inc e
    inc e
    inc e

jr_002_48d6:
    inc e
    inc e
    inc e
    inc e

jr_002_48da:
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc e
    inc a

jr_002_48e6:
    ld a, h
    inc a

jr_002_48e8:
    db $fc
    ld a, h

jr_002_48ea:
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
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    ld bc, $0aff
    rst $38
    ld a, [de]
    rst $38
    ld a, [hl+]
    rst $38
    ld e, a
    rst $38
    db $db
    rst $38
    rst $18
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
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    jp z, $c0ca

    ret nz

    ret nz

    ret nz

    ld b, h
    ld b, h
    ld c, d
    ld c, [hl]
    ei
    rst $38
    inc b
    inc c
    inc b
    inc b
    and h
    db $e4
    and h
    db $e4
    inc b
    inc b
    nop
    db $e4
    ld b, b
    db $e4
    and e
    rst $38
    dec d
    rst $38
    dec hl
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rla
    rst $38
    cpl
    rst $38
    rla
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
    xor [hl]
    rst $38
    ld d, a
    rst $38
    adc [hl]
    rst $38
    rst $18
    rst $38
    xor d
    rst $38
    ld d, e
    rst $38
    and d
    rst $38
    ld e, b
    rst $30
    and d
    rst $38
    ld d, l
    rst $38
    cp e
    rst $38
    ld e, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    ld b, b
    cp a
    xor b
    ld d, a
    ld [hl], l
    adc d
    xor d
    ld d, l
    push af
    ld a, [bc]
    ld l, a
    db $10
    cp a
    nop
    ld d, a
    nop
    xor d
    nop
    ld d, l
    nop
    ld a, [hl+]
    nop
    ld b, h
    nop
    ld [bc], a
    nop
    inc b
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    ld b, l
    nop
    and d
    nop
    ld d, a
    nop
    db $fd
    ld [bc], a
    ld [$5015], a
    and e
    ld [de], a
    db $e3
    ld [bc], a
    db $e3
    nop
    rst $30
    ld a, [bc]
    rst $38
    dec b
    rst $38
    xor d
    rst $38
    add l
    ld a, a
    xor [hl]
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    daa
    rra
    ccf
    rra
    rra
    ccf
    ccf
    rra
    ld a, $1f
    rra
    rra
    ld a, [hl-]
    rra
    ld e, $1f
    ld a, [hl-]
    rra
    ccf
    rra
    ld a, [hl-]
    rlca
    inc bc
    rlca
    ld [bc], a
    rlca
    inc bc
    rlca
    ld b, $03
    rlca
    inc bc
    dec sp
    rlca
    rra
    ccf
    ld e, $3f
    ld e, $3f
    ld e, $3f
    inc e
    ccf
    ld a, [de]
    ccf
    ld e, $3f
    ld a, [de]
    ccf
    dec e
    ccf
    ld e, $3f
    ld e, $3f
    ld e, $3f
    cpl
    rla
    inc bc
    rlca
    inc bc
    rlca
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $7c
    rst $38
    and b
    rst $38
    ld bc, $08ff
    rst $38
    ld l, b
    rst $38
    ld l, [hl]
    rst $38
    rst $28
    ld a, a
    ld a, a
    rst $38
    db $fd
    rst $38
    and a
    rst $38
    rst $00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, h
    ld a, h
    ld a, b
    ld a, b
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, c
    ld a, b
    ld a, b
    ld a, h
    ld a, h
    rst $38
    rst $38
    rrca
    rrca
    rlca
    rlca
    push hl
    rst $20
    and [hl]
    rst $20
    push hl
    rst $20
    rlca
    rlca
    rrca
    rrca
    rst $28
    rst $38
    ld d, a
    rst $38
    ld l, a
    rst $38
    ld [hl], a
    rst $38
    rst $28
    rst $38
    ld [hl], a
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ccf
    rst $38
    cp d
    rst $38
    db $10
    rst $38
    add hl, hl
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld d, l
    rst $38
    xor $ff
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp e
    rst $38
    push de
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    add b
    ld a, a
    dec d
    ld [$55aa], a
    db $dd
    ld [hl+], a
    ld a, [hl]
    ld bc, $00ab
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
    xor d
    nop
    ld e, l
    nop
    ld d, a
    xor b
    xor d
    ld d, l
    dec b
    ld a, [$ff00]
    nop
    rst $38
    dec b
    rst $38
    and d
    rst $38
    ld d, l
    rst $38
    rst $28
    rst $38
    rlca
    rst $38
    xor e
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0103
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
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
    ld [$0400], sp
    nop
    ld [$0000], sp
    inc b
    ld [$0404], sp
    inc b
    inc c
    inc b
    inc b
    inc b
    inc c
    inc b
    inc b
    inc b
    ld c, $04
    ld b, $04
    inc c
    ld b, $06
    ld b, $0e
    ld b, $06
    ld b, $0e

Jump_002_4b29:
    ld b, $06
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    rst $38
    sub b
    rst $28
    nop
    rst $38
    jr nz, @+$01

    ld l, $f1
    jp nc, Jump_002_4b29

    dec [hl]
    cp e
    ld a, a
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    inc c
    inc e
    ld [$f108], sp
    ld sp, hl
    adc c
    adc c
    ldh [$e8], a
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rst $38
    rst $38
    pop bc
    pop bc
    add b
    add b
    sub a
    sbc a
    sbc b
    sbc b
    ld d, $9e
    add b
    add b
    ret nz

    ret nz

    cp $ff
    db $fd
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    rst $10
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    push af
    rst $38
    cp b
    rst $38
    ld [hl], l
    rst $38
    ld [$35ff], a
    rst $38
    ld l, $ff
    dec d
    rst $38
    dec hl
    rst $38
    dec [hl]
    rst $38
    and b
    rst $38
    ld sp, $eaff
    rst $38
    ld [hl], l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    ld a, [hl+]
    rst $38
    sbc a
    ld a, a
    ld c, d
    cp a
    and c
    ld e, a
    ld d, b
    xor a
    xor d
    ld d, l
    push af
    ld a, [bc]
    ld e, d
    dec b
    xor l
    ld [bc], a
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
    ld e, [hl]
    and b
    dec hl
    call nc, $fa05
    ld [bc], a
    db $fd
    and b
    rst $38
    ld d, b
    rst $38
    xor d
    rst $38
    inc c
    rst $38
    and d
    ld c, $06
    ld c, $06
    ld c, $06
    ld c, $86
    ld c, $06
    ld c, $07
    ld c, $0f
    rlca
    rlca
    rrca
    rlca
    rrca
    ld b, $0f
    rlca
    rrca
    rlca
    rrca
    rrca
    rlca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    ld b, $0f
    rrca
    rlca
    rlca
    rrca
    rrca
    rlca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rrca
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    or h
    rst $38
    xor b
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld [hl+], a
    rst $30
    ld e, [hl]
    and e
    rla
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
    rst $38
    cp e
    rst $38
    di
    rst $38
    and e
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld de, $0019
    ld [$c8c0], sp
    adc b
    ret z

    add hl, bc
    add hl, bc
    ret


    ret


    adc c
    ret


    sbc a
    rst $38
    pop bc
    pop bc
    nop
    add b
    sbc h
    sbc h
    sbc h
    sbc h
    add b
    add b
    sbc b
    sbc h
    sub h
    sbc h
    cp d
    rst $38
    db $fd
    rst $38
    cp [hl]
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $18
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
    db $fd
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld b, e
    cp a
    dec l
    rst $10
    db $10
    rst $28
    ld b, h
    rst $38
    add h
    rst $38
    inc b
    rst $38
    adc [hl]
    rst $38
    ld b, l
    rst $38
    ld [hl+], a
    rst $38
    ld [hl], l
    rst $38
    add d
    rst $38
    pop bc
    rst $38
    xor d
    rst $38
    ld [hl], l
    rst $38
    ld [$55ff], a
    rst $38
    cp e
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    add c
    ld a, a
    ld b, b
    cp a
    add sp, $17
    or l
    ld a, [bc]
    ld e, d
    dec b
    cp a
    nop
    ld e, [hl]
    ld bc, $00af
    ld e, a
    nop
    xor e
    nop
    ld d, a
    nop
    xor e
    nop
    ld d, l
    nop
    xor d
    nop
    push de
    nop
    ld [$fd00], a
    nop
    ld e, a
    and b
    ccf
    ret nz

    rra
    ldh [$2f], a
    ret nc

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
    ld b, b
    add e
    add e
    jp $83c3


    add e
    jp $83c3


    add a
    jp $83c3


    add e
    jp $83c3


    add e
    jp $83c3


    add e
    jp $83c3


    add e
    jp $83c3


    add e
    jp $83c3


    add e
    jp $83c3


    add e
    jp $83c3


    jp $8383


    add e
    jp $8383


    add e
    jp $8383


    add e
    jp $8383


    add e
    jp $8383


    add e
    rst $00
    add e
    add e
    add e
    jp $c383


    add e
    cp e
    rst $00
    cp $ff
    call c, $80ff
    rst $38
    nop
    rst $38
    ld bc, $24fe
    rst $18
    ld a, [de]
    rst $28
    dec h
    rst $18
    ld e, d
    rst $28
    ld a, a
    rst $38
    cp $ff
    cp $ff
    rst $38
    cp $fc
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld [$50ff], a
    rst $38
    add b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, l
    rst $38
    and h
    rst $38
    ret nz

    ret z

    add b
    adc b
    add hl, bc
    add hl, bc
    ld [$4908], sp
    ld c, c
    ret z

    ret z

    ret z

    ret z

    ei
    rst $38
    sub h
    sbc h
    adc b
    adc b
    nop
    add b
    add b
    add b
    sub h
    sub h
    adc h
    sbc h
    inc d
    sbc h
    xor d
    rst $38
    rst $30
    rst $38
    ld [$55ff], a
    rst $38
    cp b
    rst $38
    ld d, l
    rst $38
    xor e
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
    ld [$ffff], a
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
    ld d, a
    rst $38
    dec hl
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld b, l
    rst $38
    adc e
    rst $38
    ld a, l
    rst $38
    cp a
    rst $38
    ld a, h
    rst $38
    adc b
    rst $38
    ld de, $83ff
    rst $38
    ld d, l
    rst $38
    add sp, -$01
    push af
    rst $38
    cp d
    rst $38
    ld [hl], l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    dec sp
    rst $38
    ld d, a
    rst $38
    ld a, [bc]
    rst $38
    add l
    ld a, a
    ld d, d
    xor a
    xor b
    ld d, a
    ld d, b
    xor a
    xor d
    ld d, l
    push af
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
    rst $38
    nop
    cp a
    ld b, b
    cp $00
    ld a, [hl-]
    ld b, h
    ld e, [hl]
    ld h, b
    ld c, [hl]
    ld [hl], b
    ld a, [hl]
    ld h, b
    ld c, [hl]
    ld [hl], b
    ld a, [hl]
    ldh [$ca], a
    db $f4
    sbc $e0
    adc d
    db $f4
    sub h
    ld [$f4c8], a
    add [hl]
    ld hl, sp-$38
    db $f4
    and [hl]
    ld hl, sp-$40
    db $fc
    ld [c], a
    db $fc
    ldh a, [$fc]
    and d
    db $fc
    jp nc, $aafc

    db $fc
    ldh a, [$fc]
    ld [c], a
    db $fc
    ld a, [c]
    db $fc
    ld a, [c]
    db $fc
    ld a, [c]
    db $fc
    ld [$d2fc], a
    db $fc
    ld [$f2fc], a
    db $fc
    ld [$dafc], a
    db $fc
    ld a, [$f2fc]
    db $fc
    ld [c], a
    db $fc
    ldh [$fc], a
    ld [c], a
    db $fc
    ret z

    db $f4
    add d
    db $fc
    inc b
    db $fc
    ld [bc], a
    db $fc
    inc de
    db $fc
    inc b
    ei
    inc c
    di
    inc b
    ei
    add d
    ld a, l
    ld a, [bc]
    db $fd
    ld b, [hl]
    db $fd
    adc b
    rst $38
    dec b
    rst $38
    ret nz

    rst $38
    inc d
    rst $38
    jr z, @+$01

    or h
    ld a, a
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
    ld [bc], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    add b
    rst $38
    sub b
    rst $38
    adc b
    rst $38
    ret nc

    rst $38
    adc b
    rst $38
    nop
    rrca
    nop
    rrca
    ret nc

    rst $38
    jr nz, jr_002_4ef9

    ret nz

    rst $38
    ld a, [bc]
    rrca
    dec b
    rrca
    xor d
    rst $38
    add b
    add b
    add b
    add b
    dec d
    sbc a
    add d
    add e
    dec b
    sbc a
    nop
    add b
    add b
    add b
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
    push de
    rst $38
    xor d
    rst $38
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $eb
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp d
    rst $38
    rst $30
    rst $38
    rst $28

jr_002_4ef9:
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    push de
    rst $38
    db $eb
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    inc d
    rst $38
    xor h
    rst $38
    nop
    rst $38
    adc d
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld b, h
    rst $38
    and b
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ret c

    rst $38
    xor b
    rst $38
    call nc, $fcff
    rst $38
    db $f4
    rst $38
    xor d
    rst $38
    push de
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld [$85ff], sp
    ld a, a
    ld b, d
    cp a
    and b
    ld e, a
    ld d, b
    xor a
    and b
    ld e, a
    ret nc

    cpl
    and b
    ld e, a
    ld d, b
    xor a
    xor d
    ld d, l
    push af
    ld a, [bc]
    ld [$a915], a
    ld [bc], a
    ld [bc], a
    ld bc, $0300
    ld bc, $0103
    inc bc
    ld bc, $1703
    dec bc
    rrca
    rra
    ld [$1a1f], sp
    dec e
    dec c
    ld a, [de]
    ld a, [de]
    dec e
    dec c
    ld a, [de]
    ld a, [de]
    dec e
    dec c
    ld a, [de]
    ld a, [bc]
    dec e
    add hl, bc
    ld [bc], a
    ld [bc], a
    ld bc, $0300
    ld bc, $0103
    inc bc
    ld bc, $1703
    dec bc
    rra
    rra
    jr jr_002_4f99

    ld a, [de]
    dec e
    dec e
    ld a, [de]
    ld a, [de]
    dec e
    add hl, de
    ld e, $1a
    dec e
    inc e
    dec de
    jr jr_002_4fa7

    jr jr_002_4fa9

    jr jr_002_4fab

    jr jr_002_4fad

    inc c
    inc de
    nop
    inc bc
    ld bc, $0303
    inc bc
    ld bc, $0203

jr_002_4f99:
    inc bc
    rst $38
    inc bc
    cp $ff
    push bc
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b

jr_002_4fa7:
    rst $38
    xor b

jr_002_4fa9:
    rst $38
    db $10

jr_002_4fab:
    rst $38
    nop

jr_002_4fad:
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
    ld a, [bc]
    rst $38
    dec b
    rst $38
    adc d
    rst $38
    dec b
    rst $38
    adc b
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld c, l
    rst $38
    xor d
    rst $38
    dec d
    rst $38
    ld a, [hl-]
    rst $38
    dec d
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
    call nc, $aaff
    rst $38
    ld d, l
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    cp d
    rst $38
    ld e, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld [$fdff], a
    rst $38
    cp $ff
    db $fd
    rst $38
    cp $ff
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    dec d
    rst $38
    sbc a
    rst $38
    dec b
    rst $38
    ld b, b
    cp a
    ld [$24f7], sp
    ei
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [$00ff], sp
    rst $38
    ld h, b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    dec b
    rst $38
    rrca
    rst $38

jr_002_5042:
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec hl
    add a
    add c
    rlca
    ld b, $83
    add d
    rlca
    ld b, $83
    inc bc
    add a
    ld b, $83
    ld b, $83

jr_002_5058:
    ld [bc], a
    add e
    ld b, a
    add e
    ld b, $83
    ld b, [hl]
    add e
    ld b, e
    add d
    ld b, [hl]
    add e
    ld b, e
    add d
    add a
    ld b, d
    ld b, e
    add d
    add e
    ld b, d
    ld b, d
    add d
    inc bc
    jp nz, $8242

    add b
    ld b, d
    ld h, b
    add d
    add b
    ld b, d
    ld h, d
    add b
    add b
    ld b, b
    ld h, b
    add b
    and b
    ld b, b
    jr nz, jr_002_5042

    and b
    ld b, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [$80], a
    ld h, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rNR41], a
    ret nz

    ld b, b
    add b
    jr nc, jr_002_5058

    db $10
    ldh [$97], a
    ld h, b
    rlca
    rst $38
    dec b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld [$14ff], sp
    rst $38
    ld [hl+], a
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    ld de, $aaff
    rst $38
    dec d
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
    ld [$55ff], a
    rst $38
    ld [$d4ff], a
    rst $38
    add sp, -$01
    ret nc

    rst $38
    add sp, -$01
    ld d, h
    rst $38
    add sp, -$01
    call nc, $a8ff
    rst $38
    ld e, l
    rst $38
    xor d
    rst $38
    ld d, l

jr_002_5107:
    rst $38
    xor e
    rst $38
    ld [hl], l
    rst $38
    xor d
    rst $38
    push af
    rst $38
    ld [$fdff], a
    rst $38
    ld [$d5ff], a
    rst $38
    ld a, [$55ff]
    rst $38
    db $eb
    rst $38
    ld e, l
    rst $38
    ld a, [hl+]
    rst $38
    adc l
    ld a, a
    adc d
    ccf
    pop bc
    ccf
    ld b, b
    cp a
    and b
    ld e, a
    ld [hl], b
    adc a
    jr z, jr_002_5107

    inc d
    db $eb
    ld c, $f1
    add hl, bc
    ldh a, [rP1]
    ldh a, [$08]
    ldh a, [$2c]
    ret nc

    nop
    ld hl, sp+$0f
    ldh a, [rTMA]
    ld hl, sp+$42
    db $fc
    nop
    cp $01
    cp $01
    cp $40
    rst $38
    jr z, @+$01

    add sp, -$01
    ld hl, sp-$01
    sbc $ff
    cp $ff
    ld d, $ff
    ld l, $86
    add h
    ld b, $0e
    add [hl]
    adc [hl]
    ld b, $8e
    ld b, $8e
    ld b, $86
    ld c, $04
    ld c, $0c
    ld c, $0c
    ld c, $0c
    ld c, $0c
    ld c, $08
    ld c, $1c
    ld c, $08
    ld c, $18
    ld c, $1a
    inc c
    dec de
    inc c
    ld e, $08
    rrca
    jr @+$10

    jr jr_002_519b

    ld e, $1c
    ld a, [de]
    jr @+$20

    jr c, @+$20

    jr @+$20

    jr c, jr_002_51ac

    jr nc, jr_002_51ae

    jr c, jr_002_51b0

    jr nc, jr_002_51b2

    db $10
    ld a, $30
    ld e, $30
    ld a, $30

jr_002_519b:
    ld a, $30
    ld a, $30
    ld a, $30
    ld a, $30
    ld a, $20
    ld a, $70
    ld a, $20
    ld a, $b1
    ld a, [hl]

jr_002_51ac:
    ldh [rIE], a

jr_002_51ae:
    ld b, b
    rst $38

jr_002_51b0:
    nop
    rst $38

jr_002_51b2:
    nop
    rst $38
    nop
    rst $38
    ld bc, $02ff
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
    and b
    rst $38
    ld bc, $00ff
    rst $38
    dec d
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor b
    rst $38
    ld b, l
    rst $38
    adc d
    rst $38
    inc d
    rst $38
    adc d
    rst $38
    inc d
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    ld a, [bc]
    rst $38
    ld d, l
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
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, h
    rst $38
    xor d
    rst $38
    ld [hl], l
    rst $38
    cp d
    rst $38
    ld [hl], l
    rst $38
    dec b
    ld a, [$f50a]
    dec d
    ld [$d52a], a
    dec b
    ld a, [$fd02]
    ld bc, $02fe
    db $fd
    ld bc, $02fe
    db $fd
    ld bc, $00fe
    rst $38
    add c
    cp $42
    db $fd
    add c
    cp $40
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    jp hl


    cp $50
    rst $38
    and c
    cp $50
    rst $38
    and b
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ld d, d
    db $fd
    db $e4
    ei
    ret nz

    rst $38
    ld bc, $00fe
    rst $38
    dec b
    ld a, [$fd02]
    dec b
    ld a, [$7d82]
    ld d, l
    xor d
    xor d
    ld d, l
    push de
    ld a, [hl+]
    ld l, d
    dec d
    push de
    ld a, [hl+]
    ld [$d515], a
    ld a, [hl+]
    ld a, [hl+]
    dec d
    or l
    ld a, [bc]
    ld [$5515], a
    xor d
    ld a, [hl+]
    push de
    dec d
    ld [$d52a], a
    dec d
    ld [$f50a], a
    dec d
    ld [$d52a], a
    and [hl]
    ld [$0c00], sp
    ld [$180c], sp
    inc c
    ld [$180c], sp
    inc c
    ld [$180c], sp
    inc c
    ld [$180c], sp
    inc c
    ld [$180c], sp
    inc c
    ld [$1c0c], sp
    inc c
    inc c
    inc c
    inc e
    inc c
    ld [$1c0c], sp
    inc c
    ld [$1c0c], sp
    inc c
    inc c
    inc c
    inc e
    inc c
    inc c
    inc c
    inc e
    inc c
    inc c
    inc c
    db $fd
    inc c
    ld a, b
    rst $38
    ld a, l
    rst $38
    ld a, [bc]
    rst $38
    ld d, b
    rst $38
    jr z, @+$01

    inc b
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
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
    xor b
    rst $38
    ld d, l
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
    ld d, c
    rst $38
    xor b
    rst $38
    ld d, b
    rst $38
    and b
    rst $38
    ld d, c
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    adc d
    rst $38
    ld d, l
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, a
    rst $38
    ld d, a
    xor b
    xor a
    ld d, b
    ld e, a
    and b
    cp a
    ld b, b
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
    xor a
    ld d, b
    ld e, a
    and b
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
    ld e, a
    and b
    cpl
    ret nc

    ld e, a
    and b
    xor a
    ld d, b
    ld e, a
    and b
    xor a
    ld d, b
    ld a, a
    add b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld e, a
    and b
    cp a
    ld b, b
    ld d, a
    xor b
    cp a
    ld b, b
    ld [hl], a
    adc b
    rst $28
    db $10
    ld a, l
    add d
    rst $28
    db $10
    ld e, a
    and b
    xor $11
    ld e, l
    and d
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, c
    xor [hl]
    xor b
    ld d, a
    ld d, l
    xor d
    and b
    ld e, a
    xor a
    db $10
    dec h
    ld a, [de]
    dec b
    ld a, [hl-]
    jr nc, @+$21

    db $10
    ccf
    jr nc, @+$21

    ld de, $323e
    dec e
    inc d
    dec sp
    jr nc, jr_002_537b

    inc d
    dec sp
    jr nc, jr_002_537f

    db $10
    ccf
    jr nc, jr_002_5383

    db $10
    ccf
    jr nc, jr_002_5387

    db $10
    ccf
    jr nc, jr_002_538b

    db $10
    ccf
    jr nc, jr_002_538f

    db $10
    ccf
    ld sp, $1a1f
    ccf
    ld sp, $121f
    ccf
    dec [hl]

jr_002_537b:
    rra
    ld a, [de]
    ccf
    dec [hl]

jr_002_537f:
    rra
    ld [de], a
    ccf
    dec a

jr_002_5383:
    rra
    ld a, [de]
    ccf
    dec [hl]

jr_002_5387:
    rra
    ld a, [de]
    ccf
    dec a

jr_002_538b:
    rra
    ld a, [de]
    ccf
    dec hl

jr_002_538f:
    rla
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    rst $30
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
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
    ld a, [hl+]
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
    xor a
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, a
    rst $38
    xor e
    rst $38
    ld b, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp e
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
    rst $38
    cp e
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld d, a
    rst $38
    rst $28
    rst $38
    ld e, a
    rst $38
    xor a
    rst $38
    ld e, a
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
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ld e, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ei
    inc b
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, a
    xor b
    xor d
    ld d, l
    ld d, l
    xor d
    xor d
    ld d, l
    ld d, c
    xor [hl]
    nop
    rst $38
    ld d, b
    xor a
    ld [bc], a
    db $fd
    ld b, h
    cp e
    ret nz

    ccf

Jump_002_543c:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$51ff], sp
    rst $38
    adc d
    rst $38
    rst $10
    rst $38
    xor e
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    cp e
    rst $38
    ld d, l
    rst $38
    xor d
    rst $38
    ld d, l
    rst $38
    xor [hl]
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    ld [hl], a
    rst $38
    xor [hl]
    rst $38
    ld e, a
    rst $38
    xor [hl]
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    ld e, a
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
    rst $30
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    ld [hl], a
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
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    inc de
    dec d
    ld d, $16
    rla
    jr jr_002_54f7

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $0f
    rra
    jr nz, jr_002_54fa

    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_002_5519

    ld a, [hl+]
    dec hl
    inc l
    dec l
    rrca
    ld l, $2f

jr_002_54f7:
    inc de
    jr nc, jr_002_552b

jr_002_54fa:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_002_553b

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    inc de
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

jr_002_5519:
    nop
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

jr_002_552b:
    ld h, c
    inc de
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
    rrca
    ld l, l
    ld l, [hl]

jr_002_553b:
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
    adc d
    adc e
    adc h
    adc l
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
    inc de
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
    ld a, [$0000]
    ei
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_002_5614

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_002_5623

    jr z, jr_002_5626

    ld a, [hl+]
    dec hl
    inc l
    dec l
    dec c
    dec c
    ld l, $2f
    jr nc, jr_002_5638

    ld [hl-], a
    inc sp
    rrca
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_002_5649

    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_002_5614:
    ld a, $3f
    ld b, b
    ld b, b
    ld b, b
    ld b, c
    ld b, d
    rrca
    ld b, e
    ld b, h
    nop
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_002_5623:
    ld c, c
    ld c, d
    inc de

jr_002_5626:
    ld c, e
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_5638:
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

jr_002_5649:
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
    ld [$0808], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0908], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0008], sp
    ld [$0008], sp
    ld [$0808], sp
    ld [$0808], sp
    nop
    ld [$d400], sp
    ld h, d
    ld l, e
    ld sp, $1cc5
    nop
    nop
    rra
    nop
    ld l, e
    ld sp, $1cc5
    nop
    nop
    rst $38
    inc bc
    ld l, e
    ld sp, $1cc5
    nop
    nop
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    ld a, h
    nop
    nop
    ld d, h
    ld [bc], a
    adc l
    ld bc, $0000
    nop
    rst $38
    nop
    rst $38
    ld bc, $82fe
    ld a, l
    ld h, e
    sbc l
    ld h, d
    sbc l
    ld [hl], c
    adc [hl]
    di
    rrca
    ld sp, hl
    rlca
    ei
    rlca
    rst $30
    inc bc
    rst $38
    inc bc
    ld [hl], c
    add e
    or e
    ld b, c
    dec e
    db $e3
    xor a
    ei
    rst $38
    rst $20
    cp $ff
    db $f4
    rst $38
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
    ret nz

    ccf
    jr nz, @+$21

    db $10
    rrca
    ld [$0407], sp
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    add b
    nop
    and b
    nop
    ld l, b
    nop
    ld c, h
    nop
    ld d, a
    ld a, [hl+]
    rrca
    db $76
    rst $00
    ld [bc], a
    adc a
    ld bc, $0103
    ld bc, $0100
    nop
    nop
    ld bc, $007f
    ret nz

    nop
    add d
    nop
    rlca
    nop
    inc bc
    nop
    ld c, h
    nop
    dec a
    ld [bc], a
    ld l, $11
    ld sp, hl
    nop
    ld hl, sp+$00
    ld a, c
    nop
    jr c, jr_002_585a

jr_002_585a:
    ld e, b
    nop
    ld a, h
    nop
    sub b
    ld h, b
    ldh [rP1], a
    or b
    nop
    jr jr_002_5866

jr_002_5866:
    sbc [hl]
    nop
    rst $18
    nop
    ld e, e
    nop
    dec de
    nop
    rra
    nop
    dec a
    nop
    di
    nop
    ld a, e
    nop
    ei
    nop
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh [$1f], a
    db $10
    adc a
    sbc b
    rlca
    or h
    dec bc
    add b
    ld a, a
    inc d
    ei
    ret z

    or a
    ldh a, [rIE]
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
    add b
    ld a, a
    ld b, c
    ld a, $e6
    ret c

    ld hl, sp-$40
    ldh [$80], a
    add h
    nop
    add b
    nop
    cp $00
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    ld a, a
    db $fd
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [c]
    nop
    ld a, b
    add b
    db $fc
    nop
    inc c
    nop
    call nc, Call_002_7400
    add b
    ld a, d
    nop
    inc bc
    nop
    add b
    nop
    ld b, b
    nop
    stop
    nop
    nop
    inc b
    nop
    add d
    nop
    ld h, c
    nop
    stop
    ld [$0400], sp
    nop
    ret nz

    nop
    ld h, c
    nop
    ldh a, [rP1]
    ld l, h
    nop
    adc [hl]
    nop
    ld [c], a
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
    inc c
    di
    ld [hl-], a
    pop bc
    add e
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rlca
    nop
    rst $08
    nop
    ccf
    nop
    cp a
    nop
    db $fc
    inc bc
    add sp, $17
    call c, $fe3b
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
    jr nz, jr_002_592a

jr_002_592a:
    inc h
    nop
    jr nz, jr_002_592e

jr_002_592e:
    ld c, d
    nop
    ld e, $00
    inc b
    nop
    dec b
    nop
    add c
    nop
    add b
    nop
    sub b
    nop
    jr z, jr_002_593e

jr_002_593e:
    inc e
    nop
    ld c, $00
    ld b, $00
    add h
    nop
    ret nz

    nop
    jr nz, jr_002_594a

jr_002_594a:
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    jr nz, jr_002_5954

jr_002_5954:
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
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
    jr nz, jr_002_5993

    db $10
    rrca
    ld [$0207], sp
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld b, b
    nop
    add b
    nop
    and b
    nop
    jr nz, jr_002_5988

jr_002_5988:
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

jr_002_5993:
    nop
    nop
    nop
    inc c
    nop
    inc e
    inc c
    inc e
    inc c
    inc e
    nop
    nop
    nop
    ld bc, $2000
    ld bc, $015e
    ld a, h
    inc bc
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_002_59d1

    db $10
    rrca
    nop
    rlca
    nop
    inc bc
    ld [bc], a
    ld bc, $0300
    inc b
    inc bc
    ld [$0807], sp
    rlca
    db $10
    rrca
    nop
    rra
    jr nz, jr_002_59e7

    nop
    ccf
    ld b, b
    ccf
    add b
    ld a, a
    nop
    rst $38
    nop

jr_002_59d1:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_002_59e7:
    cp $00
    db $fc
    dec b
    ld hl, sp+$0b
    rst $38
    rra
    rst $38
    ld a, $ff
    ld [hl], h
    ld hl, sp+$38
    ret nz

jr_002_59f6:
    ld b, b
    add b
    ld e, b
    add b
    jr c, @-$06

    jr c, jr_002_59f6

    inc a
    ld hl, sp+$0c
    ld hl, sp+$11
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    nop
    cp $01
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
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
    nop
    rst $38
    ld bc, $87ff
    ld a, a
    ld a, [hl]
    rst $38
    cp $f8
    jp nz, $e2e1

    rst $38
    ld a, [hl]
    ld hl, sp-$20
    ld [hl], b
    ldh a, [$60]
    ldh a, [rSVBK]
    ld [hl], b
    ld [hl], b
    jr nc, jr_002_5aae

    ld a, c
    jr nc, jr_002_5a73

    ld a, a
    ld e, [hl]
    ldh [$80], a
    nop
    nop
    nop
    ld a, [de]
    dec b
    rst $18
    ccf
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
    rlca
    rst $38
    ld l, $ff
    db $76
    db $fc
    or d
    pop bc
    sub a
    rrca
    ld e, d
    inc a
    ret nc

    ldh [$80], a
    nop
    nop

jr_002_5a73:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $03
    ld [hl+], a
    inc e
    ld d, b
    ldh [$80], a
    nop
    ld bc, $0900
    rlca
    ld e, a
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
    ld a, [$50ff]
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, [$d1fc]
    ldh [$cb], a
    rlca
    ld e, a
    inc a
    ret z

    ldh a, [rP1]
    add b
    nop
    nop

jr_002_5aae:
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    ld bc, $0c13
    cp b
    ld h, b
    inc b
    add b
    stop
    dec b
    ld [bc], a
    cpl
    rra
    ld a, a
    rst $38
    rst $38

jr_002_5ac5:
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
    ld a, [$51ff]
    rst $38
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
    rlca
    rst $38
    cpl
    rst $38
    ld a, l
    cp $e8
    ldh a, [$64]
    add e
    dec l
    ld e, $60
    ld hl, sp-$40
    add b
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
    add hl, bc
    ld b, $d0
    jr c, jr_002_5ac5

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
    and b
    db $fd
    ld hl, sp-$03
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld [$55ff], a
    rst $38
    xor d
    rst $38
    ld b, l
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $03ff
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $03ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
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
    ld bc, $03ff
    rst $38
    rra
    rst $38
    ld a, $ff
    ldh [$f8], a
    and b
    ret nz

    dec b
    ld [bc], a
    inc l
    db $10
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
    ld bc, $0d00
    ld [bc], a
    ld l, [hl]
    ld de, $8245
    add a
    ld [bc], a
    inc b
    ld [bc], a
    ld b, $00
    ld b, $00
    jr z, @+$06

    ld d, b
    jr z, jr_002_5c0f

    ld sp, $0f37
    cp e
    ld a, a
    ei
    rst $00
    adc a
    rlca
    ld h, a
    adc a
    cp a
    rst $08
    ccf
    rst $08
    cp a
    rst $08
    ld e, a
    rst $28
    xor [hl]
    rst $38
    ld b, l
    rst $38
    ld c, $f7
    ld b, $ff
    or $e4
    db $f4
    db $e4
    ld hl, sp-$1c
    ldh [$ec], a
    db $ec
    ldh [$c4], a
    add sp, -$04
    ret z

    jp nc, $f8e8

    ret z

    ldh a, [$c8]
    add sp, -$30
    call c, $bcd0
    ret nc

    db $f4
    sub b
    xor h
    ret nc

    ret z

    or b
    ld [$db90], a
    and b
    rst $38
    and b
    rst $38
    and b
    cp a
    ldh [$7f], a
    and b
    cp b
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
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    dec bc
    rst $38
    dec b
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
    rlca
    rst $38
    ccf
    rst $38
    ld a, a

jr_002_5c0f:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ccf
    ld [hl], h
    jr c, @-$5e

    ld b, b
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
    rrca
    nop
    inc [hl]
    ld [$40e0], sp
    pop bc
    ld h, b
    db $e3
    rst $20
    rst $30
    rst $28
    xor a
    ld h, [hl]
    ld [hl], e
    inc h
    ld h, l
    add hl, sp
    ld a, a
    add hl, sp
    ld a, e
    ccf
    ld a, h
    ld a, $ff
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
    rst $30
    rst $38
    db $eb
    rst $38
    ld d, a
    cp $8a
    rst $38
    ld b, l
    rst $38
    inc bc
    db $fd
    rlca
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0101
    ld [bc], a
    ld bc, $0301
    nop
    inc bc
    inc b
    inc bc
    nop
    rlca
    dec d
    rlca
    add hl, de
    rlca
    dec c
    rlca
    inc de
    rrca
    scf
    rrca
    dec hl
    rra
    ld [hl], a
    rra
    rst $30
    rra
    rst $38
    rra
    adc $3f
    rst $38
    ld a, $ee
    ccf
    db $fd
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    ei
    ei
    rst $38
    rst $30
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
    ld a, a
    rst $38
    xor a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff
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
    ei
    db $fc
    call c, $c3e0
    nop
    ld bc, $0300
    nop
    rlca
    nop
    dec h
    nop
    rla
    nop
    inc bc
    inc bc
    jp $8603


    inc bc
    rla
    inc c
    ld a, a
    add hl, sp
    ld a, l
    ei
    db $fc
    pop af
    or a
    ret nz

    rst $38
    nop
    ld [hl], a
    ld hl, sp-$02
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    ld a, a
    ld a, a
    ccf
    rst $38
    ccf
    cp [hl]
    ld a, a
    db $dd
    ld a, a
    ld a, [$f47f]
    ld a, a
    ld [$747f], a
    rst $38
    add sp, -$01
    ret nc

    rst $38
    and b
    rst $38
    ld b, a
    rst $38
    cp a
    ld e, [hl]
    ld e, [hl]
    cp [hl]
    cp $bc
    ld a, a
    cp h
    cp h
    ld a, l
    rst $38
    ld a, c
    cp $79
    ld [hl], e
    ld a, [$f2fc]
    ld a, [c]
    db $f4
    db $ed
    db $f4
    db $f4
    add sp, -$22
    add sp, -$0c
    ret z

    add sp, -$30
    xor b
    ret nc

    ldh a, [$80]
    ld hl, sp-$60
    or b
    ld b, b
    db $f4
    ld b, b
    or [hl]
    ld b, b
    ld a, a
    add b
    rst $38
    add b
    ld a, a
    add b
    cp a
    pop bc
    push af
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
    cp a
    rst $38
    ld d, l
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $05
    cp $0e
    rst $38
    ld a, a
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    ei
    xor $ff
    rst $20
    adc b
    db $eb
    inc b
    rst $20
    nop
    di
    nop
    rst $38
    nop
    cp $01
    rst $30
    rrca
    rst $38
    ccf
    ld a, a
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld [c], a
    db $fd
    ld [hl], c
    adc a
    and d
    ld e, l
    add a
    db $fc
    cp a
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    ld a, a
    ld a, a
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $18
    rst $28
    rst $38
    rst $28
    rst $30
    rst $28
    rst $28
    rst $30
    ld a, a
    rst $38
    db $eb
    rst $38
    ld a, a
    ei
    ld e, a
    rst $38
    db $dd
    rst $38
    xor [hl]
    ld e, a
    ld a, a
    rst $38
    rst $38
    rst $38
    ld b, a
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld bc, $0300
    ld b, $03
    ld de, $0b07
    rlca
    inc de
    rrca
    ld a, [hl-]
    rrca
    ld [hl], a
    ld e, $ef
    ld e, $df
    ld a, $bf
    ld a, [hl]
    ld a, l
    cp $be
    db $fd
    rst $38
    db $fd
    ld a, [$fdfd]
    rst $38
    ei
    rst $38
    rst $38
    ei
    ei
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
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ld [$54ff], a
    rst $38
    add b
    ld a, a
    push de
    ccf
    cp a
    ld a, a
    rst $38
    rst $38
    rst $28
    rra
    rst $18
    ccf
    xor a
    rst $18
    db $fc
    adc a
    ldh [$df], a
    ldh a, [rIE]
    ld [$f8f7], sp
    rlca
    ld hl, sp+$07
    ld sp, hl
    rlca
    and $1f
    db $fd
    ccf
    db $eb
    rst $30
    rst $00
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld d, a
    rst $38
    cp a
    ld a, a
    cp a
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

    add b
    xor e
    nop
    ld e, a
    nop
    ccf
    nop
    ld a, a
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
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, h
    ld [bc], a
    ld [hl], c
    ld [$1264], sp
    ld b, b
    inc d
    ld b, b
    rlca
    ld d, b
    ld de, $0240
    ld l, b
    ld [$0063], sp
    ld l, h
    nop
    ld [hl], d
    ld bc, $017c
    ld a, h
    ld [bc], a
    ld a, c
    ld [bc], a
    ld a, b
    ld [bc], a
    ld a, b
    inc b
    ld [hl], d
    dec b
    ld [hl], b
    inc b
    ld [hl], c

jr_002_5e9a:
    dec b
    ld [hl], b
    inc b
    ld [hl], d
    ld [bc], a
    ld a, b
    ld [bc], a
    ld a, b
    ld [bc], a
    ld a, c
    ld bc, $017c
    ld a, h
    nop
    ld a, [hl]
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
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
    nop
    ccf
    nop
    ld e, a
    nop
    cpl
    nop
    ld d, a
    add b
    xor d
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rNR33], a
    ld [bc], a
    ret nz

    jr nz, @+$3a

    nop
    stop
    add hl, bc
    nop
    ld [$8000], sp
    rlca
    ld bc, $0e38
    pop bc
    jr nc, jr_002_5f0e

    ld b, b
    jr nz, jr_002_5e9a

    ld b, d
    ld b, $a9
    ld c, b
    inc d

jr_002_5f0e:
    db $10
    ld a, [hl+]
    jr nz, jr_002_5f29

    jr nz, @+$51

    ld b, b
    daa
    ld b, b
    inc b
    ld b, b
    nop
    ld b, b
    nop
    ld b, b
    jr nz, jr_002_5f3f

    ld b, b
    jr nz, @+$12

    db $10
    jr z, @+$4a

    inc d
    ld b, $a9
    sub c

jr_002_5f29:
    ld b, d
    ld b, b
    jr nz, jr_002_5f5d

    adc b
    ld c, $c1
    ld bc, $00f0
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

jr_002_5f3f:
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
    nop
    dec bc
    db $f4
    ld b, b
    nop
    and c
    nop
    ld [c], a

jr_002_5f59:
    nop
    dec h
    nop
    nop

jr_002_5f5d:
    nop
    nop
    cp $f8
    ld bc, $0807
    sub b
    ld h, c
    nop
    nop
    ld hl, sp+$04
    ld b, $09
    ld bc, $0002
    pop bc
    nop
    add b
    nop
    add d
    nop
    sbc $00
    rrca
    nop
    rrca
    nop
    dec bc
    nop
    ld bc, $0000
    nop
    ld [hl], b
    nop
    pop af
    ld bc, $0622
    add hl, bc
    ld hl, sp+$04
    nop
    nop
    sub b
    ld h, c
    rlca
    ld [$00f8], sp
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
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
    db $10
    ld h, e
    call nz, $4108
    ld [bc], a
    adc [hl]

jr_002_5fab:
    ld bc, $0084
    ld [bc], a
    nop
    ld e, $c0
    nop
    ld sp, $0cc1
    jr nz, jr_002_5ffb

    sub b
    inc h
    ld [$2853], sp
    add e
    add h
    ld c, c
    ld b, h
    add c
    ld b, h
    ld hl, $4422
    ld a, [hl+]
    nop
    ld [hl+], a
    ld [$002a], sp
    ld [hl+], a
    ld b, h
    ld b, h
    ld hl, $8144
    add h
    ld c, c
    jr z, jr_002_5f59

    ld [$9053], sp
    daa
    jr nz, jr_002_602b

    ret nz

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
    nop
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a

jr_002_5ffb:
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    sbc a
    jr nz, jr_002_5fab

    jr nz, jr_002_602e

    and b
    sbc a
    jr nz, jr_002_6032

    ld h, b
    rra
    ld h, b
    rra
    ld h, b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rP1], a
    nop
    nop
    nop
    rst $38

jr_002_602b:
    nop
    rst $38
    nop

jr_002_602e:
    rst $38
    nop
    rst $38
    nop

jr_002_6032:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rlc b
    cp e
    nop
    cp c
    nop
    cp d
    nop
    jp z, $ff00

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
    adc d
    nop
    xor $00
    ld [$ea00], a
    nop
    sbc d
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
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    add a
    nop
    cp d
    nop
    cp d
    nop
    add [hl]
    nop
    cp [hl]
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    adc d
    nop
    cp e
    nop
    cp d
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
    cp l
    nop
    cp l
    nop
    cp l
    nop
    cp l
    nop
    cp [hl]
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
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    dec de
    nop
    db $eb
    nop
    db $eb
    nop
    db $eb
    nop
    db $eb
    nop
    jr jr_002_60fa

jr_002_60fa:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    ld a, [$7a00]
    nop
    add hl, sp
    nop
    ld a, d
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
    rst $38
    nop
    jr jr_002_611a

jr_002_611a:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, l
    nop
    ld a, l
    nop
    ld l, l
    nop
    ld d, l
    nop
    push hl
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
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ret c

    nop
    rst $10
    nop
    rst $10
    nop
    rst $10
    nop
    rst $10
    nop
    ld e, b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    call z, $9a00
    nop
    call z, $ff00
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
    db $fc
    nop
    rst $38
    nop
    ld e, b
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
    sub e
    nop
    dec [hl]
    nop
    sub l
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
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    pop bc
    nop
    ld e, a
    nop
    jp $df00


    nop
    ld e, a
    nop
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    db $eb
    nop
    jp c, $8b00

    nop
    rst $18
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
    nop
    sbc b
    nop
    ld l, a
    nop
    ld l, [hl]
    nop
    ld l, l
    nop
    sbc l
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    pop bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    nop
    ccf
    nop
    ld l, c
    nop
    ld l, d
    nop
    xor d
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
    rst $38
    nop
    add hl, sp
    nop
    sub $00
    reti


    nop
    sub $00
    add hl, sp
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
    rst $38
    nop
    xor $00
    xor $00
    inc l
    nop
    ld l, d
    nop
    inc l
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
    rst $38
    nop
    ld b, a
    nop
    ld a, d
    nop
    rst $20
    nop
    ld a, [$c700]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    sbc a
    nop
    rst $08
    nop
    rst $38
    nop
    inc bc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc h
    nop
    rst $30
    nop
    adc $00
    cp a
    nop
    add h
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    nop
    inc bc
    inc bc
    push de
    add hl, hl
    ld a, [$fc04]
    ld [bc], a
    cp $00
    db $fc
    ld [bc], a
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    ld a, $00
    sbc $00
    ld a, $00
    sbc $00
    ld a, $00
    cp $00
    ld b, $00
    cp $00
    db $fc
    ld [bc], a
    cp $00
    db $fc
    ld [bc], a
    ld a, [$f404]
    ld a, [bc]
    ld [$5514], a
    xor c
    inc bc
    inc bc
    ld a, [hl]
    nop
    cp [hl]
    nop
    ld a, [hl]
    nop
    cp [hl]
    nop
    ld a, [hl]
    nop
    cp $00
    ld b, $00
    cp $00
    nop
    ld bc, $0302
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
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
    inc c
    dec c
    ld c, $0f
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
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
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
    jr jr_002_6336

    ld a, [de]
    dec de
    inc e
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
    dec e
    ld e, $1f
    inc bc
    inc bc
    inc bc
    inc bc

jr_002_6336:
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
    jr nz, jr_002_63bd

    ld [hl+], a
    inc hl
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
    inc h
    dec h
    ld h, $27
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

jr_002_63bd:
    inc bc
    jr z, jr_002_63e9

    ld a, [hl+]
    dec hl
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
    inc l
    dec l
    ld l, $2f
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
    jr nc, jr_002_6414

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_002_63e9:
    jr c, jr_002_63ee

    inc bc
    inc bc
    inc bc

jr_002_63ee:
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc

jr_002_6414:
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    db $76
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    db $76
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld [hl], b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    db $76
    ld [hl], b
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    db $76
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    add c
    add d
    add e
    add d
    add d
    add d
    add h
    add c
    add d
    add e
    add d
    add d
    add d
    add h
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    add l
    add [hl]
    add a
    adc b
    adc b
    adc b
    adc c
    add l
    adc d
    adc e
    adc b
    adc b
    adc b
    adc c
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    adc h
    adc l
    adc [hl]
    adc b
    adc b
    adc b
    adc c
    adc h
    adc a
    sub b
    adc b
    adc b
    adc b
    adc c
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    sub c
    sub d
    sub e
    adc b
    adc b
    adc b
    adc c
    sub c
    sub h
    sub l
    adc b
    adc b
    adc b
    adc c
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    sub [hl]
    sub a
    sbc b
    adc b
    sbc c
    adc b
    adc c
    sub [hl]
    sbc d
    sbc e
    adc b
    sbc h
    adc b
    adc c
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    sbc l
    sbc [hl]
    sbc a
    adc b
    and b
    adc b
    adc c
    sbc l
    and c
    and d
    adc b
    and e
    adc b
    adc c
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    add l
    and h
    and l
    adc b
    and [hl]
    adc b
    adc c
    add l
    and a
    xor b
    adc b
    xor c
    adc b
    adc c
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    xor d
    xor e
    xor h
    xor e
    xor l
    xor e
    xor [hl]
    xor d
    xor e
    xor e
    xor e
    xor a
    xor e
    xor [hl]
    ld l, a
    ld l, a
    ld l, a
    ld l, a
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
    ld l, a
    ld l, a
    ld l, a
    ld l, a
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
    inc b
    inc b
    inc b
    inc b
    nop
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
    ld b, $04
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    ld bc, $0105
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0505
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0505
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0505
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0505
    dec b
    ld bc, $0404
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
    ld bc, $0505
    dec b
    ld bc, $0404
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
    dec b
    dec b
    dec b
    dec b
    ld bc, $0404
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
    ld bc, $0505
    dec b
    dec b
    dec b
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
    ld bc, $0505
    dec b
    nop
    nop
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
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    rlca
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld hl, sp+$46
    ld [hl-], a
    ld b, d
    rlca
    nop
    nop
    nop
    ld a, [hl]
    ld c, e
    or l
    ld b, d
    rlca
    nop
    nop
    nop
    rst $38
    inc bc
    adc l
    dec c
    rlca
    nop
    ld hl, sp+$46
    rra
    ld b, e
    or l
    ld de, $0007
    nop
    nop
    ld hl, sp+$46
    ld [hl-], a
    ld b, d
    xor l
    ld sp, $0000
    ld a, [hl]
    ld c, e
    or l
    ld b, d
    xor l
    add hl, hl
    nop
    nop
    rst $38
    inc bc
    adc l
    dec c
    ld hl, sp+$46
    nop
    nop
    nop
    nop
    rst $38
    ld a, a
    nop
    ld a, h
    rlca
    nop
    nop
    nop
    ld d, h
    add hl, hl
    xor d
    inc d
    ld b, l
    ld [$0000], sp
    rst $38
    inc bc
    ld sp, hl
    dec d
    rst $28
    dec a
    nop
    nop
    ldh [$7f], a
    add b
    ld d, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    add c
    add b
    ld b, $01
    inc b
    inc bc
    ld a, [bc]
    rlca
    dec b
    rrca
    ld a, [bc]
    rrca
    dec e
    rrca
    dec bc
    rra
    inc bc
    rra
    dec hl
    rra
    inc sp
    rra
    ld [hl+], a
    rra
    rlca
    ccf
    ld [hl+], a
    rra
    rlca
    ccf
    ld [hl+], a
    rra
    ld b, [hl]
    ccf
    ld [hl+], a
    rra
    ld b, a
    ccf
    ld b, [hl]
    ccf
    ld b, a
    ccf
    rlca
    ld a, a
    ld b, a
    ccf
    adc a
    ld a, a
    rst $00
    ccf
    xor a
    ld a, a
    rra
    rst $38
    rrca
    rst $38
    ld d, a
    rst $38
    xor a
    rst $38
    rst $18
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
    cp d
    ld bc, $807d
    xor a
    ld d, b
    rla
    add sp, -$56
    push af
    ld b, l
    ld a, [$f48b]
    rra
    ldh [$2f], a
    ret nc

    ld e, a
    and b
    cp [hl]
    ld b, b
    ld a, a
    add b
    ld l, $d0
    ld e, l
    and b
    add d
    ld a, h
    ld e, c
    cp $82
    ld a, a
    ld d, h
    xor e
    ld hl, sp+$07
    ld [hl], l
    adc d
    ei
    inc b
    ld a, l
    add d
    ld a, [hl]
    add c
    ld a, l
    add d
    cp b
    rst $00
    push de
    ld [$f4eb], a
    rst $30
    ld hl, sp-$0d
    db $fc
    pop af
    cp $e0
    rst $38
    pop bc
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld b, c
    ld b, l
    add d
    cp [hl]
    ld b, c
    ld e, l
    and d
    ld [c], a
    dec e
    ldh a, [rIF]
    cp [hl]
    ld bc, $00d7
    xor d
    nop
    ld d, c
    nop
    xor d
    nop
    ld d, l
    nop
    xor e
    nop
    ld e, l
    nop
    or b
    rrca
    inc d
    rrca
    xor e
    inc d
    ld e, l
    nop
    xor d
    nop
    stop
    xor b
    nop
    stop
    and b
    nop
    ret nc

    nop
    ld hl, sp+$00
    db $f4
    nop
    xor b
    nop
    ld d, c
    nop
    xor d
    nop
    ld d, l
    nop
    ld [$d500], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and e
    ld b, e
    ld de, $00e1
    ldh a, [rNR10]
    ldh a, [$08]
    ldh a, [rDIV]
    ld hl, sp+$28
    db $fc
    nop
    db $fc
    jp nz, Jump_002_543c

    ld a, $a0
    ld e, $75
    ld a, [de]
    xor e
    ld d, $57
    ld [bc], a
    xor d
    rla
    sbc [hl]
    rlca
    cp d
    rlca
    dec d
    rrca
    ld l, $1f
    dec d
    ccf
    ld a, $1f
    ld d, l
    ccf
    ld a, d
    ccf
    ld a, l
    ccf
    cp [hl]
    ld a, a
    db $fc
    ld a, a
    cp $7f
    rst $38
    ld a, a
    cp a
    ld a, a
    ld a, [hl]
    ld a, a
    cp l
    ld a, a
    ld e, e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $08
    rst $08
    adc a
    adc a
    rra
    rrca
    rrca
    rrca
    rra
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rrca
    rrca
    rlca
    ld c, $07
    ld [bc], a
    rrca
    nop
    rrca
    dec c
    ld c, $07
    inc c
    ld [bc], a
    inc b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0100
    nop
    inc bc
    inc b
    inc bc
    nop
    inc bc
    inc b
    inc bc
    inc c
    inc bc
    ldh a, [$8f]
    ret nz

    rst $38

jr_002_69bc:
    nop

jr_002_69bd:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rIE], a
    adc $f0
    sbc l
    ldh [rNR34], a
    ldh [$0d], a
    ldh a, [$ca]
    jr nc, jr_002_69bc

    jr c, jr_002_69bd

    ccf
    ld h, c
    rra
    pop bc
    ccf
    ld e, l
    inc hl
    db $fc
    inc bc
    ld e, [hl]
    ld bc, $01aa
    db $f4
    ld bc, $00eb
    ld [hl], l
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld e, $e1
    rrca
    ldh a, [$03]
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_6a2a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    cp $ff
    cp $ff
    push af
    rst $38
    rst $08
    rst $38
    add b
    rst $38
    dec [hl]
    ret nz

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
    add hl, bc
    ld b, $92
    inc c
    ld b, e
    sbc h
    ld b, $98
    ld e, h
    add b
    ld [$c080], sp
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    jr nc, jr_002_6a2a

    ld l, b
    add b
    inc a
    ret nz

    ld l, d
    add b
    ld d, h
    nop
    ld [$5400], a
    add b
    xor b
    nop
    db $f4
    nop
    ld l, b
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
    nop
    nop
    nop
    nop
    nop
    sub e
    db $e3
    ld hl, $30e1
    ldh [$c0], a
    ldh [$c0], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$80], a
    ld h, b
    jr nz, jr_002_6aee

    ldh [rP1], a
    ld h, b
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    stop
    nop
    nop
    stop
    jr nz, jr_002_6ac0

jr_002_6ac0:
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
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
    ld hl, $1381
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_6aee:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $10
    stop
    nop
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    inc hl
    inc hl
    inc c
    inc c
    jr nc, jr_002_6b42

    ld bc, $0201
    ld [bc], a
    nop
    nop
    inc b
    inc b
    nop
    nop
    ld bc, $0801
    ld [$0000], sp
    inc b
    inc b
    nop
    nop
    ld [$0108], sp
    ld bc, $0000
    inc b
    inc b
    nop
    nop
    ld [bc], a
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

jr_002_6b42:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    dec bc
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
    rra
    rra
    ldh [$e0], a
    inc b
    inc b
    ld hl, $8021
    add b
    ld [$a408], sp
    and h
    ld d, b
    ld d, b
    and b
    xor e
    ld c, b
    ld d, [hl]
    inc e
    ld [hl+], a
    add b
    sbc a
    nop
    stop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ld b, c
    ld b, b
    and c
    and d
    ld d, b
    ld d, b
    and h
    and h
    ld [$8008], sp
    add b
    ld hl, $0421
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nc

    ret nc

    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp-$08
    rlca
    rlca
    jr nz, jr_002_6bee

    add h
    add h
    ld bc, $1001
    db $10
    dec h
    dec h
    ld a, [bc]
    ld a, [bc]
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    nop
    ld [$4931], sp
    jr jr_002_6c06

    nop
    inc a
    nop
    inc l
    ld bc, $0005
    nop
    add d
    ld b, d
    dec b
    push bc

jr_002_6bee:
    ld a, [bc]
    adc d
    dec h
    dec h
    db $10
    db $10
    ld bc, $8401
    add h
    jr nz, jr_002_6c1a

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_6c06:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_6c1a:
    nop
    nop
    nop
    nop
    add b
    add b
    jr nz, jr_002_6c42

    ld [$0408], sp
    inc b
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    call nz, Call_000_30c4
    jr nc, jr_002_6c3d

    inc c
    add b
    add b
    ld b, b
    ld b, b
    nop
    nop
    jr nz, jr_002_6c5a

    nop
    nop
    add b

jr_002_6c3d:
    add b
    db $10
    stop
    nop

jr_002_6c42:
    jr nz, jr_002_6c64

    nop
    nop
    db $10
    db $10
    add b
    add b
    nop
    nop
    jr nz, jr_002_6c6e

    nop
    nop
    ld b, b
    ld b, b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_6c5a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_6c64:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_002_6c6e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    ld e, $12
    dec sp
    daa
    ld [hl], c
    ld c, a
    pop hl
    sbc a
    ld [hl], c
    ld c, a
    dec sp
    daa
    ld e, $12
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    cp l
    cp l
    cp l
    cp l
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    rst $20
    rst $20
    rst $00
    rst $00
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    ld sp, hl
    ld sp, hl
    db $e3
    db $e3
    rst $08
    rst $08
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    di
    di
    di
    di
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    or e
    or e
    or e
    or e
    add c
    add c
    di
    di
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    cp a
    cp a
    add e
    add e
    ld sp, hl
    ld sp, hl
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $9fc3


    sbc a
    add e
    add e
    cp c
    cp c
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    add c
    add c
    ld sp, hl
    ld sp, hl
    ei
    ei
    di
    di
    rst $30
    rst $30
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    jp $99c3


    sbc c
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    sbc c
    sbc c
    pop bc
    pop bc
    ld sp, hl
    ld sp, hl
    jp $ffc3


    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    cp l
    cp l
    add c
    add c
    cp l
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    cp c
    cp c
    add e
    add e
    cp c
    cp c
    cp c
    cp c
    add e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    cp a
    cp a
    cp a
    cp a
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    add e
    add e
    cp c
    cp c
    cp l
    cp l
    cp l
    cp l
    cp c
    cp c
    add e
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    cp a
    cp a
    add a
    add a
    cp a
    cp a
    cp a
    cp a
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    cp a
    cp a
    add a
    add a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    cp a
    cp a
    or c
    or c
    sbc l
    sbc l
    pop bc
    pop bc
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    add c
    add c
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    db $fd
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp c
    cp c
    add e
    add e
    cp c
    cp c
    cp l
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    add c
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    sbc c
    sbc c
    add c
    add c
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    sbc l
    sbc l
    adc l
    adc l
    and l
    and l
    or c
    or c
    cp c
    cp c
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    cp l
    cp l
    cp l
    cp l
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    add e
    add e
    cp c
    cp c
    cp c
    cp c
    add e
    add e
    cp a
    cp a
    cp a
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    jp $99c3


    sbc c
    cp l
    cp l
    or e
    or e
    sub c
    sub c
    ret


    ret


    rst $38
    rst $38
    rst $38
    rst $38
    add e
    add e
    cp c
    cp c
    cp c
    cp c
    add e
    add e
    cp c
    cp c
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    jp $9fc3


    sbc a
    jp $f9c3


    ld sp, hl
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    add c
    add c
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    sbc c
    sbc c
    jp $ffc3


    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    sbc c
    sbc c
    db $db
    db $db
    jp $ffc3


    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    cp l
    cp l
    add c
    add c
    sbc c
    sbc c
    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    sbc c
    sbc c
    jp $c3c3


    jp $9999


    cp l
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    cp l
    cp l
    cp l
    cp l
    sbc c
    sbc c
    jp $e7c3


    rst $20
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    add c
    add c
    di
    di
    rst $20
    rst $20
    rst $08
    rst $08
    sbc a
    sbc a
    add c
    add c
    rst $38
    rst $38
    ld b, d
    ld b, c
    ld c, [hl]
    ld c, e
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_002_7400:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
