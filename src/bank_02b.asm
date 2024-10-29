SECTION "ROM Bank $02b", ROMX[$4000], BANK[$2b]

    ld h, [hl]
    rst $38
    db $e3
    rst $38
    and e
    rst $38
    and e
    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld sp, hl
    rst $38
    ei
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    ld a, h
    rst $38
    inc [hl]
    rst $38
    ld a, h
    rst $38
    ld a, l
    rst $38
    ccf
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc l
    rst $38
    rst $18
    rst $38
    ld c, a
    ld a, a
    ld c, a
    ld a, a
    ld h, a
    ld a, a
    ld h, a
    ld a, a
    daa
    ccf
    daa
    ccf
    scf
    ccf
    inc de
    rra
    inc de
    rra
    dec de
    rra
    add hl, bc
    rra
    ld [$080f], sp
    rrca
    inc c
    rrca
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ld a, $3f
    ld a, [hl]
    ld a, a
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    or a
    db $fd
    ccf
    rst $30
    cpl
    rst $38
    adc a
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp [hl]
    rst $38
    cp $ff
    db $fc
    cp $fd
    db $fd
    ld hl, sp-$03
    ld hl, sp-$01
    ldh a, [$fb]
    db $f4
    di
    pop hl
    or $e9
    xor $c9
    xor $dc
    rst $18
    or h
    rst $38
    or $bd
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
    nop
    add b
    nop
    add c
    ld bc, $0383
    adc a
    rrca
    sbc a
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
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    db $e3
    rst $38
    rst $00
    rst $38
    ld c, $ff
    ld a, $ff
    ld [hl], a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    jp $a3ff


    rst $38
    or e
    rst $38
    di
    rst $38
    di
    rst $38
    ld [hl], a
    rst $38
    ld h, a
    rst $38
    ld b, a
    rst $38
    ld h, a
    rst $38
    ld d, e
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    sub e
    rst $38
    db $d3
    rst $38
    push de
    rst $38
    pop de
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld [hl+], a
    rst $38
    inc h
    rst $38
    xor b
    rst $38
    or c
    rst $38
    and e
    rst $38
    add d
    rst $38
    adc h
    rst $38
    jr nc, @+$01

    db $10
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    ld e, b
    rst $38
    inc a
    rst $38
    ld l, $ff
    ld e, $ff
    ld e, $ff
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    cp [hl]
    rst $38
    sub [hl]
    rst $38
    sub [hl]
    rst $38
    rst $10
    rst $38
    ld l, c
    rst $38
    ei
    rst $38
    or $ff
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    db $e3
    rst $38
    inc hl
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    db $fc
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
    cp [hl]
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    ei
    rst $30
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $28
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    cp $bf
    ld hl, sp-$44
    db $e3
    and b
    cp a
    ld a, [bc]
    cp a
    ld a, l
    ld a, a
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld [hl], b
    rst $38
    cp d
    ld h, a
    reti


    ld h, $fa
    dec b
    ldh a, [rIF]
    db $f4
    rrca
    ldh a, [$0e]
    ld h, b
    sbc [hl]
    ld bc, $00fd
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
    rlca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $e3
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    dec e
    rst $38
    add hl, hl
    rst $38
    pop af
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    adc c
    rst $38
    adc l
    rst $38
    adc l
    rst $38
    xor l
    rst $38
    ld l, a
    rst $38
    ld l, l
    rst $38
    ld a, c
    rst $38
    ld l, c
    rst $38
    ld l, c
    rst $38
    jp hl


    rst $38
    jp hl


    rst $38
    ld l, c
    rst $38
    ld l, e
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, d
    rst $38
    ld b, [hl]
    rst $38
    ld c, d
    rst $38
    ld d, d
    rst $38
    ld h, d
    rst $38
    ld [bc], a
    rst $38
    ld c, $ff
    ld h, $ff
    ld h, $ff
    xor [hl]
    rst $38
    xor [hl]
    rst $38
    xor [hl]
    rst $38
    sbc $ff
    ld e, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    jp hl


    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    rra
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
    cp $ff
    cp $ff
    db $fd
    rst $38
    ei
    rst $38
    or $ff
    rst $28
    rst $38
    sbc $ff
    db $fd
    rst $38
    dec de
    ccf

jr_02b_4254:
    rst $00
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    sbc $ff
    cp l
    rst $38
    db $76
    rst $38
    sbc $fe
    db $fc
    db $fd
    db $fd
    ei
    ei
    ld sp, hl
    ld sp, hl
    rst $30
    di
    push af
    di
    db $ed
    ldh [$de], a
    ldh [$e1], a
    ret


    rst $38
    ret nc

    rst $38
    add b
    rst $38
    add b
    ld sp, hl
    nop
    ld sp, hl
    nop
    pop af
    nop
    db $fc
    nop
    db $ec
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    pop af
    nop
    di
    add c
    db $e3
    ld bc, $00e7
    rst $08
    nop
    rst $18
    db $10
    db $db
    jr c, jr_02b_4254

    inc a
    ld a, [hl]
    ld a, d
    rst $38
    db $fd
    rst $38
    jp hl


    rst $38
    ld a, a
    rlca
    ld a, a
    rrca
    ld a, a
    ccf
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
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    call c, $9cfc
    db $fc
    inc e
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, b
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$78
    ld hl, sp+$70
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$71]
    pop af
    ld [hl], c
    pop af
    ld [hl], e
    di
    ld [hl], a
    rst $30
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
    db $fd
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $38
    ld e, a
    rst $30
    ei
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld [c], a
    rst $38
    add [hl]
    cp $0e
    ld a, [hl]
    inc c
    ld a, [hl]
    ret c

    cp $58
    rst $38
    or c
    rst $38
    and e
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    cp h
    rst $38
    ld [$017c], sp
    ld [$fc01], sp
    ld bc, $01fa
    ld a, [$f403]
    inc bc
    ld l, h
    inc bc
    add hl, de
    inc bc
    dec de
    inc bc
    dec sp
    ld b, e
    ld a, a
    ld bc, $01fb
    di
    ld [bc], a
    di
    inc bc
    di
    rlca
    rst $30
    rlca
    rst $30
    ld b, $f7
    ld c, $ef
    ld b, $ef
    dec hl
    xor $2f
    ld l, [hl]
    dec c
    ld c, $0d
    adc [hl]
    ld b, e
    db $e4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$20
    ld hl, sp-$40
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    call c, $ccf7
    di
    rst $38
    ld sp, hl
    ccf
    db $fc
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc
    rst $38
    pop af
    rst $38
    set 7, a
    or e
    rst $38
    scf
    rst $38
    rlca
    rst $18
    rrca
    rst $18
    rlca
    cp a
    ld [hl], c
    rrca
    ld a, h
    inc bc
    ld a, b
    inc b
    inc hl
    ld d, e
    ld b, $ab
    sub [hl]
    ld c, e
    ld l, $d3
    dec bc
    or a
    inc c
    ld d, e
    ret nz

    ld hl, $07f8
    ei
    rra
    rst $38
    ld a, a
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
    rst $18
    rst $38
    rst $18
    rst $38
    xor a
    rst $18
    ccf
    rst $08
    db $76
    adc a
    ld a, [hl]
    add a
    ld a, h
    add e
    db $fd
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
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
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    pop hl
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ldh [$fe], a
    ldh [$fd], a
    ld b, b
    ei
    ld [bc], a
    ei
    add a
    rst $28
    rlca
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rst $18
    rst $38
    adc $ff
    call z, $8fdf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, e
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    ld a, a
    ld a, l
    ld a, a
    ld a, a
    ld a, a
    ld a, e
    ld a, a
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    add b
    rst $30
    ld sp, hl
    rst $38
    db $fd
    rst $38
    di
    rst $38
    rst $30
    ei
    rst $28
    pop af
    rst $28
    ldh a, [$dd]
    db $e3
    cp e
    rst $00
    cp a
    rst $18
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
    cp $ff
    cp $fe
    cp $fe
    cp $fe
    db $fc
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
    ccf
    ccf
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
    add b
    add b
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
    ccf
    rst $38
    ld b, e
    rst $38
    ld b, a
    rst $38
    inc bc
    rst $18
    add e
    rst $30
    add $ff
    ld sp, hl
    rst $38
    db $dd
    rst $38
    rst $38
    rra
    ld a, l
    add a
    ld a, l
    add a
    dec e
    rst $20
    rst $38
    ld [hl], a
    rst $38
    db $fd
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
    cp a
    rst $38
    sbc $ff
    cp [hl]
    rst $38
    ld a, [hl]
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    pop bc
    rst $38
    add l
    rst $38
    ld c, c
    rst $38
    call $d3ff
    rst $38
    sub [hl]
    rst $38
    sub [hl]
    rst $38
    or d
    rst $38
    or [hl]
    rst $38
    inc e
    cp $18
    cp $58
    db $fc
    ld bc, $00fd
    pop hl
    nop
    nop
    pop de
    rst $38
    add b
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    ld a, [$f7ff]
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    di
    rst $38
    pop hl
    rst $38
    ld [c], a
    rst $38
    db $ec
    di
    sbc $ed
    ld a, l
    sbc $7f
    call c, $bdfa
    sbc a
    db $fc
    cp l
    cp $be
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
    db $fc
    rst $38
    db $f4
    rst $38
    ld a, c
    cp $14
    ei
    adc c
    ld a, a
    ld b, h
    rst $38
    ldh [$d7], a
    ld [c], a
    db $d3
    jp nz, $c4ed

    rst $28
    add a
    rst $08
    add a
    rst $18
    rla
    cp a
    inc de
    cp a
    dec sp
    ccf
    jr c, jr_02b_46cc

    ld a, b
    ld a, l
    ld a, c
    ei
    ldh a, [rIE]
    ldh [$f3], a
    nop
    pop hl
    ld b, $a6
    rrca
    rst $38
    rlca
    rst $28
    rrca
    rst $28
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
    ld a, a
    ld a, a
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    rst $28
    rst $38
    jp Jump_02b_49ff


    or $f3
    call c, $fcdb
    rst $30
    ld hl, sp-$0a
    ld hl, sp-$12
    ldh a, [$5c]
    pop hl
    dec c
    pop af
    ld l, c
    di
    sub e
    rst $38
    ld c, e
    rst $30
    dec bc
    rst $38
    and a
    ld e, e
    adc e
    ld [hl], a
    ld [c], a
    rra
    db $db
    daa
    di
    rrca
    ld [hl], b
    adc a
    scf
    rst $08
    or a
    rst $08
    rst $30
    adc a
    rlca
    rst $38
    scf
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
    ei
    ei
    ei
    ei
    ld a, e
    ei
    sbc e
    ei
    jp $cbf7


    db $eb
    sbc e
    db $db
    dec sp
    dec sp

jr_02b_46cc:
    ld d, e
    ei
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cpl
    rst $38
    rrca
    rrca
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
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    cp a
    ccf
    ld a, a
    rlca
    ld a, a
    add hl, hl
    ei
    ld b, c
    rst $38
    ld [$81fd], sp
    db $fd
    db $e3
    rst $28
    di
    ei
    rst $38
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
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
    ldh a, [rIE]
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
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
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
    add c
    add b
    db $e3
    ldh [rIE], a
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
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
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    add b
    add b
    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0001
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
    nop
    nop
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
    ld c, $07
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_02b_4857

    ld a, [de]
    dec de
    inc e
    dec e
    rlca
    rlca
    ld e, $1f
    jr nz, jr_02b_4869

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    daa
    nop
    jr z, jr_02b_487c

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_02b_4857:
    ld l, $2f
    jr nc, jr_02b_488c

    ld [hl-], a
    inc sp
    inc [hl]
    nop
    nop
    nop
    nop
    dec [hl]
    ld [hl], $37
    jr c, jr_02b_48a0

    ld a, [hl-]
    dec sp

jr_02b_4869:
    inc a
    dec a
    ld a, $3f
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b

jr_02b_487c:
    ld c, c
    nop
    nop
    nop
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

jr_02b_488c:
    ld d, [hl]
    nop
    jr z, jr_02b_48e7

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
    ld h, e
    nop
    ld h, h
    ld h, l
    ld h, [hl]

jr_02b_48a0:
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
    nop
    nop
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

jr_02b_48e7:
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
    or [hl]
    or [hl]
    cp c
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

    pop bc
    jp nz, $b6c3

    call nz, $b6c5
    or [hl]
    or [hl]
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    or [hl]
    or [hl]
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
    nop
    nop
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr @+$1b

    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    ld bc, $0001
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0001
    ld bc, $0101
    inc b
    inc b
    ld bc, $0101
    inc b
    inc b
    rlca
    inc b
    inc b
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    ld bc, $0401
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    nop
    inc b
    rlca
    rlca
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0107
    nop
    inc b
    rlca
    rlca
    rlca
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    inc b
    ld bc, $0401
    inc b
    inc b
    rlca
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    ld bc, $0704
    inc b
    inc b
    inc b
    inc b
    ld bc, $0321
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0401
    nop
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    rlca
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0401
    rlca
    inc b
    ld bc, $0101
    inc b
    nop
    nop
    nop

Jump_02b_49ff:
    nop
    ld bc, $0101
    ld bc, $0704
    inc b
    inc b
    ld bc, $0404
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0005
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0505
    dec b
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0405
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0909
    add hl, bc
    add hl, bc
    inc c
    add hl, bc
    inc c
    inc c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0101
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    inc c
    inc c
    inc c
    inc c
    inc c
    inc c
    add hl, bc
    add hl, bc
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

jr_02b_4aaf:
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
    inc bc
    ld [bc], a
    inc bc
    inc de
    inc bc
    ld b, b
    ld h, b
    ld b, h
    ret nz

    ld [$3014], sp
    ldh a, [$ca]
    ldh [$88], a
    call nz, $c452
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
    ld [bc], a
    nop
    ld [$04e3], sp
    jr nz, @+$22

    add hl, bc
    and d
    add hl, bc
    ld de, $0c08
    ld [bc], a
    ld a, [bc]
    ld [bc], a
    nop
    nop
    ld [bc], a
    jr jr_02b_4b61

    ld [hl], h
    dec b
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
    adc $00
    ld [$4000], sp
    nop
    inc bc
    nop
    rlca
    nop
    rra
    inc bc
    ld a, a
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
    db $fc
    cp $f8
    ld hl, sp-$10
    ldh a, [$ce]
    rst $08
    add h
    add h
    jr nz, jr_02b_4b2c

jr_02b_4b2c:
    ld b, b
    jr nz, jr_02b_4aaf

    ld bc, $0101
    nop
    nop
    ld [$0c00], sp
    nop
    ld [$cc04], sp
    ld [bc], a
    jr nz, @+$04

    db $10
    ld bc, $0142
    ld b, b
    ld bc, $0011
    nop
    stop
    stop
    inc d
    add b
    ret nc

    add l
    add b
    ret nz

    add c
    ld h, d
    add b
    stop
    jr jr_02b_4b78

    inc b
    stop
    nop
    ld bc, $0200
    nop
    nop

jr_02b_4b61:
    nop
    nop
    jr nz, @+$4a

    ld h, b
    and d
    ld h, d
    nop
    ld b, $00
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

jr_02b_4b78:
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
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
    ei
    rlca
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $28
    ccf
    rst $28
    ccf
    cp $3f
    ld a, [$f81f]
    rra
    db $fc
    rra
    cp $1f
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc de
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    inc bc
    ld [$3101], sp
    jr jr_02b_4be3

    inc de
    inc h
    ld de, $0100
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp $00
    rst $30

jr_02b_4be3:
    nop
    rst $18
    nop
    ld a, a
    nop
    db $fc
    nop
    di
    nop
    rrca
    ld bc, $071f
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
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    jr jr_02b_4c16

jr_02b_4c16:
    db $10
    jr @+$42

    ld [bc], a
    inc b
    ld c, $04
    inc b
    nop
    cp h
    add b
    add b
    add b
    nop
    ld b, b
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
    jr nz, @+$22

    jr nz, jr_02b_4c3b

jr_02b_4c3b:
    nop
    add b
    ld b, b
    nop
    ld b, b
    jr nz, jr_02b_4c42

jr_02b_4c42:
    nop
    jr nz, jr_02b_4c45

jr_02b_4c45:
    jr nz, jr_02b_4c57

    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    ld [$000c], sp
    nop
    ld bc, $0000
    nop
    nop

jr_02b_4c57:
    nop
    ld bc, $0000
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
    add b
    rst $38
    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    di
    rst $38
    ld h, e
    rst $38
    ld h, e
    rst $38
    inc hl
    rst $38
    rst $08
    scf
    ld h, a
    sbc a
    rst $30
    adc a
    sub a
    rst $08
    rst $20
    rst $08
    rst $00
    rst $38
    jp $fbff


    rst $20
    di
    rst $20
    db $eb
    rst $30
    db $eb
    rst $30
    pop hl
    rst $30
    push af
    di
    pop af
    di
    pop af
    ei
    push af
    ei
    ei
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $30
    rlca
    rst $00
    rlca
    rst $00
    inc bc
    rst $20
    inc bc
    rst $20
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
    cp $fe
    ld hl, sp-$04
    pop af
    ldh a, [$e1]
    ret nz

    add c
    add b
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
    ld bc, $0000
    ld bc, $0000
    nop
    inc c
    inc b
    ld c, $00
    nop
    nop
    nop
    jr nz, jr_02b_4d00

jr_02b_4d00:
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
    add b
    add b
    nop
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [rIE], a
    ldh [rIE], a
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
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$f9]
    ldh a, [$f8]
    ldh a, [$fc]
    ldh a, [$bc]
    ld hl, sp-$44
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $18
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    db $fd
    db $fc
    rra
    cp $7f
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
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    and $ff
    cp [hl]
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fc
    cp $fa
    ld hl, sp-$08
    ldh a, [$e3]
    ret nz

    add b
    nop
    ld b, b
    nop
    ld c, b
    nop
    adc h
    nop
    nop
    nop
    nop
    ld bc, $8000
    ld bc, $0080
    add b
    nop
    nop
    nop
    nop
    add b
    add b
    ld bc, $0000
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
    add b
    ld b, b
    add b
    add b
    add b
    add b
    add b
    ld b, b
    ret nz

    ld b, b
    add b
    add b
    jr nz, jr_02b_4e21

    nop
    ld b, b
    nop
    nop
    jr nz, jr_02b_4e27

    nop
    nop
    nop
    jr nz, jr_02b_4dec

jr_02b_4dec:
    jr nz, jr_02b_4dee

jr_02b_4dee:
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
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ld h, a
    nop
    rlca
    nop
    rlca
    nop

jr_02b_4e14:
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
    rst $38
    nop
    db $10

jr_02b_4e21:
    jr nc, jr_02b_4e33

    ret nc

    nop
    nop
    add c

jr_02b_4e27:
    ld h, b
    nop
    inc b
    nop
    and $00
    ld [bc], a
    ld bc, $fe00
    nop
    rst $38

jr_02b_4e33:
    nop
    rst $38
    nop
    inc bc
    nop
    ret nz

    nop
    ld hl, sp+$00

jr_02b_4e3c:
    cp $00
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $28
    rst $38
    cp [hl]
    rst $38
    di
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $fe
    ld hl, sp-$01
    add sp, -$08
    inc [hl]
    ldh [$2a], a
    ret nz

    ld h, [hl]
    nop
    inc d
    ld c, b
    and d
    ret c

    ld bc, $42f3
    cp l
    ld [hl], b
    inc b
    nop
    jr nz, jr_02b_4eb1

    ld [$4800], sp
    inc d
    nop
    adc b
    ld [bc], a
    nop
    add d
    nop
    nop
    nop
    nop
    nop
    db $10
    ld b, $41
    ld bc, $9044
    ld [bc], a
    nop
    nop
    ld bc, $0060
    ld b, $05
    rra
    jr nz, jr_02b_4e14

    nop
    nop
    nop
    inc b
    nop
    inc c
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0000
    inc b
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

jr_02b_4eb1:
    nop
    nop
    nop
    nop
    nop
    add b
    ld [$0000], sp
    jr jr_02b_4e3c

    nop
    db $10
    ld b, h
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
    adc a
    nop
    rrca
    nop
    add hl, sp
    nop
    pop af
    nop
    ret nz

    nop
    nop
    nop
    inc bc
    nop
    rrca
    inc bc
    rra
    rrca
    rst $38
    ccf
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
    cp $fe
    ld e, b
    ld hl, sp-$30
    ldh a, [$c0]
    ld hl, sp-$80
    sub b
    inc d
    pop bc
    ld d, h
    ld [$c010], sp
    ld h, c
    nop
    add b
    nop
    jr z, jr_02b_4f00

jr_02b_4f00:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_02b_4f09:
    nop
    ld b, b
    nop
    nop
    nop
    ld [bc], a

Call_02b_4f0f:
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    stop
    ldh a, [$80]
    pop hl
    jr nz, jr_02b_4eb1

    ld b, b
    nop
    and b
    nop
    ld b, b
    nop
    nop
    nop
    ld [$8000], sp
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
    add b
    nop
    nop
    nop
    add b
    nop
    nop
    nop
    rst $38
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
    pop bc
    nop
    ret nz

    nop
    ldh [rNR41], a
    ldh a, [$30]
    ld hl, sp+$78
    ld hl, sp+$78
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, h
    db $fc
    inc e
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld e, $3e
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    cp $7e
    cp $7e
    cp $7e
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, [hl]
    ld a, [hl]
    ld a, a
    cp $7e
    cp $3e
    cp $3e
    ld a, [hl]
    ld a, $7e
    ld a, $fe
    ld a, $fe
    ld a, $3e
    ld a, $7e
    ld a, $7e
    cp a
    ccf
    cp a
    ccf
    ccf
    ccf
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    ld a, [$f8fe]
    db $fd
    ld [c], a
    push af
    ret nz

    pop bc
    nop
    nop
    nop
    nop
    add hl, bc
    inc b
    nop
    nop
    nop
    ld b, h
    ret nz

    push hl
    jr nz, jr_02b_500a

    ld h, b
    inc b
    nop
    inc b
    add h
    inc b
    nop
    inc b
    inc b
    inc b
    nop
    nop
    ld bc, $0002
    ld [bc], a
    nop
    ld [bc], a
    dec b
    ld [bc], a
    ld bc, $0102
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    ld [bc], a
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
    ld b, $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    inc bc
    nop
    ld bc, $0100
    ld [bc], a
    nop
    nop
    nop
    nop
    nop

jr_02b_500a:
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
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
    cpl
    ccf
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
    rrca
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
    rst $38
    nop
    rst $10
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    dec bc
    nop
    rst $28
    nop
    rst $28
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $28
    nop
    ld h, a
    nop
    rlca
    nop
    jp $df00


    nop
    nop
    nop
    nop
    nop
    db $fc
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
    cp $ff
    db $fc
    db $fd
    ld hl, sp-$04
    ldh [$f0], a
    rst $00
    ret nz

    ld [bc], a
    nop
    nop
    ld [bc], a
    add d
    nop
    nop
    jr nz, jr_02b_50d7

    jr nz, jr_02b_5099

jr_02b_5099:
    jr z, @+$06

    ld [$0481], sp
    jr @+$22

    ld b, b
    add d
    ld d, b
    nop
    nop
    ld c, $01
    ld b, $00
    adc d
    inc b
    ld bc, $0022
    ld [bc], a
    db $10
    ret nz

    ld de, $2500
    inc bc
    ld [$0811], sp
    ld [$080c], sp
    ld [$0002], sp
    nop
    ld c, $01
    nop
    nop
    add hl, bc
    nop
    inc e
    nop
    ld bc, $0810
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0105
    ld [bc], a
    nop
    ld [bc], a

jr_02b_50d7:
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ld a, $3f
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ld hl, sp-$01
    ei
    rst $38
    cp $ff
    cp $ff
    ld a, [$f8ff]
    rst $38
    db $f4
    rst $38
    db $f4
    rst $38
    db $e4
    rst $38
    db $e4
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
    ld hl, sp+$00
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc c
    rst $38
    inc c
    db $fc
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38

jr_02b_5137:
    nop
    rst $38
    inc b
    cp $0c
    rst $38
    inc c
    rst $38
    inc c
    inc c
    inc c
    inc c
    inc c
    adc h
    inc c
    dec c
    inc c
    inc c
    inc c
    inc c
    ld c, $0c
    inc c
    inc h
    inc c
    ld l, h
    inc c
    inc c
    inc c
    ld b, h
    inc c
    inc h
    inc b
    ld b, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0707
    rrca
    rrca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    cp $dc
    db $fc
    ret nc

    db $fc
    ret nz

    rst $00
    sub h
    add c
    jr jr_02b_5137

    dec b
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
    add b
    ld b, b
    ld bc, $0100
    ld bc, $0001
    ld bc, $0000
    nop
    ld bc, $8101
    add b
    nop
    add b
    nop
    add b
    nop
    inc h
    nop
    nop
    nop
    add b
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
    add b
    jr nz, jr_02b_51ac

jr_02b_51ac:
    nop
    nop
    ld b, b
    nop
    nop
    nop
    add b
    ld b, b
    ld b, b
    nop
    nop
    add b
    nop
    add b
    ld b, b
    add b
    nop
    add b
    nop
    nop
    nop
    add b
    nop
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
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    ld e, $1f
    ld a, $3f
    ld a, a
    ld a, a
    ld a, h
    ld a, a
    ld hl, sp-$01
    pop af
    rst $38
    di
    rst $38
    db $e3
    rst $38
    sub $ff
    jp $87ff


    rst $08
    inc bc
    rst $08
    rlca
    adc a
    rrca
    xor a
    inc c
    sbc a
    rlca
    rra
    rlca
    cp a
    rrca
    rst $38
    ld e, $ff
    ld e, $ff
    ld c, $ff
    ld l, $ee
    inc h
    xor $70
    db $f4
    ldh a, [$fb]
    ldh a, [$fb]
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
    ld a, a
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
    rst $38
    nop
    rrca
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $18
    nop
    rra
    nop
    rst $18
    nop
    rst $08
    nop
    rst $08
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    ld a, a
    nop
    ccf
    nop
    adc a
    nop
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp b
    db $fc
    ldh [$f0], a
    ret z

    ldh a, [rP1]
    ret nz

    ld h, b
    db $10
    ret nc

    inc c
    ld c, b
    nop
    nop
    stop
    jr z, jr_02b_5275

jr_02b_5275:
    jr nc, jr_02b_5277

jr_02b_5277:
    nop
    ld [$0010], sp
    ld [$0808], sp
    nop
    nop
    inc b
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
    ld [$ff04], sp
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
    rlca
    rst $38
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    ld a, e
    ld a, a
    db $fd
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $db
    rst $38
    db $db
    rst $38
    sub d
    cp $00
    db $fd
    ld a, b
    ei
    ld hl, sp-$04
    ldh a, [rIE]
    di
    rst $38
    rst $20
    rst $38
    rrca
    rst $38
    sbc b
    rst $38
    ret c

    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $28
    add b
    rst $18
    nop
    rst $18
    add b
    cp a
    add b
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    sbc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    add a
    nop
    add a
    nop
    add a
    nop
    adc a
    nop
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    sbc a
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
    rlca
    nop
    rlca
    nop
    ld a, a
    inc bc
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp b
    db $fd
    db $fd
    ld hl, sp-$1f
    ldh a, [$80]
    ret nz

    inc l
    stop
    ld a, h
    ld [$005c], sp
    inc l
    inc b
    ld b, h
    nop
    ld b, [hl]
    ld b, b
    nop
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    inc b
    nop
    inc b
    nop
    nop
    nop
    nop
    nop
    inc b
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
    inc b
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
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    ccf
    ccf
    dec sp
    ccf
    ld a, e
    ld a, a
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    xor a
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    or $ff
    ld a, [$fcff]
    rst $38
    cp h
    rst $38
    db $fd
    db $fd
    ld a, l
    rst $38
    db $fc
    rst $38
    ld a, a
    rst $38
    ld [$00a9], sp
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, $00
    adc $c0
    di
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    rst $30
    nop
    rst $38
    nop
    cp $00
    xor $00
    cp $00
    ld a, [$f900]
    nop
    ld sp, hl
    nop
    ei
    nop
    ei
    nop
    rst $30
    nop
    ldh [rP1], a
    ld [hl], a
    nop
    adc a
    nop
    rst $08
    nop
    adc a
    nop
    sbc a
    nop
    sbc a
    nop
    cp a
    nop
    cp a
    ld b, b
    rst $38
    ldh a, [rIE]
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
    rst $18
    nop
    sbc a
    nop
    sbc a
    nop
    adc a
    nop
    adc a
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    sbc a
    nop
    adc a
    nop
    rrca
    nop
    sbc a
    ld bc, $07bf
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $20
    rst $30
    add a
    rst $00
    add a
    rst $00
    rrca
    rlca
    rlca
    add a
    rlca
    add a
    rlca
    ld b, a
    ld e, a
    add a
    sbc a
    rlca
    add a
    rlca
    and a
    rlca
    and a
    rla
    daa
    rlca
    rrca
    rrca
    rrca
    rrca
    rra
    rrca
    rra
    rrca
    rrca
    rrca
    cpl
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
    rrca
    rrca
    rrca
    ld c, $0f
    rra
    rra
    dec sp
    ccf
    ld a, a
    ld a, a
    ld h, a
    ld a, a
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
    rst $30
    rst $38
    rst $30
    rst $38
    ldh [rIE], a
    ret z

    cp $b8
    cp $78
    db $fc
    ld a, b
    db $fc
    ld hl, sp-$04
    ld [hl], b
    db $fc
    ld b, b
    cp $10
    cp $70
    cp $70
    cp $40
    rst $38
    nop
    cp $80
    cp $c0
    db $fc
    ret nz

    ei
    ldh [$f7], a
    ldh [$ef], a
    nop
    ld c, $82
    rst $28
    nop
    rst $30
    nop
    ei
    ld b, $ff
    ld [bc], a
    cp a
    nop
    rst $38
    nop
    db $fd
    ld b, b
    rst $20
    ld h, b
    rst $28
    ret nz

    rst $38
    nop
    cp a
    ld e, $bf
    ld e, $7f
    ld e, $5f
    ld c, $df
    ld e, $ff
    inc c
    rst $28
    inc b
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    rst $28
    ld bc, $01ef
    rst $28
    nop
    rst $28
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
    rst $38
    nop
    db $fd
    inc b
    rst $38
    inc e
    rst $38
    cp b
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
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
    ld hl, sp+$00
    ldh a, [rP1]
    or b
    nop
    or b
    nop
    or b
    nop
    or b
    nop
    or b
    nop
    or b
    nop
    or b
    nop
    cp a
    rra
    rst $38
    ccf
    rst $38
    rst $38
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
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $30
    rst $38
    or d
    rst $38
    ld [hl], l
    rst $38
    ld hl, sp-$03
    ldh [$fc], a
    or b
    db $fc
    or b
    ld sp, hl
    ld b, c
    db $fd
    push hl
    rst $38
    ld [hl], l
    rst $38
    pop hl
    rst $38
    push hl
    rst $38
    ld b, $ff
    ld b, [hl]
    rst $38
    inc c
    rst $38
    nop
    ld [hl], e
    jr nz, jr_02b_5600

    inc c
    rra
    rlca
    cp a
    rlca
    ccf
    ld b, $7f
    ld [bc], a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $007f
    cp a
    ld b, b
    rst $08
    nop
    rst $30
    nop
    ei
    ccf
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    rst $18
    rst $38
    ld a, l
    rst $38
    ld a, c
    rst $38
    ld a, e
    rst $38
    ld a, b
    rst $38
    inc sp
    rst $38
    ld [hl], $ff
    ld l, $ff
    nop
    rst $38
    add sp, -$01
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    rst $38
    ld d, e
    rst $38
    daa
    rst $38
    and [hl]
    rst $38
    db $ec

jr_02b_55d7:
    rst $38
    xor h
    rst $38
    and b
    rst $38
    ld d, h
    rst $38
    jr nc, jr_02b_55d7

    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [$f4]
    jp hl


    db $eb
    sbc b
    cp e
    ld a, b
    ld a, e
    ld sp, hl
    ei
    ld b, b
    rst $38
    nop
    rst $38
    ld [$fdff], sp
    rst $38
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop

jr_02b_5600:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    add h
    rst $38
    sbc l
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    sub a
    rst $38
    cp a
    rst $38
    rra
    cp a
    rla
    rst $38
    rla
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    xor e
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
    rst $38
    rst $38
    ld a, e
    rst $38
    ld l, b
    ld a, a
    ld sp, $f1bf
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld hl, sp-$01
    ld a, e
    rst $38
    ei
    rst $38
    ldh a, [$fe]
    ld a, b
    rst $38
    ld e, b
    rst $38
    ld h, [hl]
    rst $38
    di
    rst $38
    di
    rst $38
    ei
    rst $38
    ld a, [$f8ff]
    db $fd
    cp e
    ei
    db $10
    ei
    nop
    rst $30
    nop
    rst $28
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $28
    ldh [rIE], a
    ret nz

    rst $38
    ldh [$ef], a
    nop
    xor $00
    db $fd
    nop
    rst $28
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    nop
    db $fd
    nop
    rst $18
    nop
    scf
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
    ld h, h
    rst $38
    and a
    rst $38
    cp a
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
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    rst $38
    rst $38
    xor $ff
    cp $ff
    cp [hl]
    rst $38
    cp $ff
    ld l, h
    rst $38
    push af
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    or b
    rst $38
    cp b
    rst $38
    ret c

    rst $38
    xor b
    rst $38
    ld a, h
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    cp h
    rst $38
    or c
    rst $38
    ld b, b

jr_02b_5731:
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld b, $b7
    ld b, $af
    add h
    adc $00
    pop bc
    nop
    pop hl
    nop
    pop hl
    nop
    pop af
    nop
    ei
    nop
    rst $38
    add b
    db $eb
    nop
    ld e, e
    ld [bc], a
    cp e
    nop
    or a
    nop
    or a
    nop
    cp e
    add b
    cp h
    add c
    sbc a
    ld bc, $014f
    di
    inc b
    rst $38
    ld b, $ff
    ld bc, $07ff
    rst $38
    rlca
    rst $18
    ld bc, $00ff
    rst $18
    nop
    rst $10
    ld hl, $30bf
    cp e
    jr nc, jr_02b_5731

    ld h, b
    ld [hl], a
    rlca
    ld [hl], a
    inc bc
    rst $30
    inc bc
    rst $30
    inc bc
    db $eb
    ld bc, $01ed
    xor l
    nop
    dec c
    nop
    ld c, $00
    ld c, $00
    rrca
    nop
    rra
    nop
    sbc a
    nop
    sbc a
    nop
    sbc a
    inc e
    rst $38
    rrca
    rst $38
    ld c, b
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
    ld bc, $0100
    nop
    nop
    ld bc, $0001
    ld bc, $0000
    nop
    ld bc, $0200
    ld bc, $0103
    inc bc
    ld bc, $0102
    ld b, $01
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
    rst $10
    db $fd
    rst $38
    db $fd
    db $fd
    rst $38
    ld a, $fd
    ld l, a
    db $fc
    cp $fd
    db $dd
    cp $bf
    cp $f8
    db $fc
    add sp, -$08
    ld e, b
    ld hl, sp-$08

jr_02b_57f9:
    ld hl, sp+$7a
    db $fc
    inc a
    ld sp, hl
    jr jr_02b_57f9

    ld e, c
    ei
    db $db
    ei
    ei
    rst $38
    ld sp, hl
    rst $38
    ld a, e
    ei
    ld a, [$3afb]
    cp $b3
    ld a, [$f6f2]
    ld [hl], h
    cp $14
    db $f4
    jr z, @-$02

jr_02b_5818:
    ld e, $fc

jr_02b_581a:
    db $fc
    rst $38

jr_02b_581c:
    ld sp, hl
    rst $38
    ld a, [hl]
    cp $30
    ld hl, sp+$30
    ldh a, [rNR10]
    ld a, [c]
    jr nc, jr_02b_5818

    jr nc, jr_02b_581a

    jr nc, jr_02b_581c

    jr nc, @-$0a

    ld [hl], b
    ldh a, [$60]
    ldh a, [$f4]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$71
    ld hl, sp-$0e
    pop af
    ld a, [c]
    pop af
    di
    di
    ldh a, [$f2]
    or [hl]
    or $b0
    db $f4
    ld [c], a

jr_02b_584b:
    and h
    xor b
    db $e4
    ld h, h
    and d
    jr nz, jr_02b_584b

    and c
    ld h, b
    and b
    ldh [$e0], a
    push hl
    pop hl
    ldh [$e4], a
    ldh [$e0], a
    ldh [$f1], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld [hl], b
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ld [hl], b
    or b
    inc de
    rst $38
    ld a, h
    rst $38
    db $eb
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld c, $00
    rrca
    nop
    rrca
    nop
    ld c, $00
    inc c
    nop
    inc e
    nop
    rst $38
    db $fc
    db $fd
    ldh a, [rIE]
    ldh a, [$3f]
    jr nc, jr_02b_58e8

    jr nc, jr_02b_58ea

    jr jr_02b_58ec

    db $10
    ccf
    db $10
    add hl, sp
    db $10
    ld a, c
    jr c, jr_02b_5934

    jr jr_02b_5926

    inc e
    dec sp
    ld c, h
    rrca
    ld hl, sp-$42
    db $fc
    adc [hl]
    db $fc
    ld l, a
    rst $08
    ld e, a
    ld l, a
    ld e, a
    rst $08
    adc $ff
    or [hl]
    cp $86
    or [hl]
    ld d, $ce
    rst $20
    rst $30
    ld h, a
    rst $30
    add a

jr_02b_58d3:
    rst $38
    inc de
    add a
    inc bc

jr_02b_58d7:
    jp $832b


jr_02b_58da:
    sub e
    db $e3
    inc sp
    add e
    or e
    add e
    ld de, $c1ab
    rst $28
    ret


    rst $18
    sbc e
    rst $38

jr_02b_58e8:
    pop bc
    cp l

jr_02b_58ea:
    add hl, de
    and l

jr_02b_58ec:
    and b
    sbc c
    inc de
    ld b, c
    and c
    and c
    nop
    ld h, b
    nop
    and c
    db $10
    add b
    jr c, jr_02b_58da

    ld b, h
    ld c, h
    and b
    call z, $c000
    and b
    add sp, $40
    ldh [rLCDC], a
    ld b, b
    inc h
    ld b, b
    inc c
    ldh [$84], a
    add b
    call nz, Call_000_1090
    and b
    ld [$8280], sp
    ret nz

    ld bc, $0182
    ld b, h
    inc b
    ld b, h
    add b
    inc e
    adc c
    jr @+$06

    ld de, $3916
    ld e, $1b
    jr jr_02b_5944

jr_02b_5926:
    ld hl, $0b1e
    jr nz, jr_02b_5933

    ld h, d
    ld [hl-], a
    ld [hl], e
    ld b, b
    jr nz, jr_02b_5932

    ld c, b

jr_02b_5932:
    ld d, b

jr_02b_5933:
    ld b, c

jr_02b_5934:
    nop
    ret nz

    add h
    sub b
    sub d
    sub b
    add b
    sub b
    nop
    add b
    ld [$0000], sp
    nop
    inc h
    nop

jr_02b_5944:
    dec bc
    scf
    ld bc, $300f
    ld c, b
    call nz, $8070
    jr nz, @+$42

    db $10
    ld h, b
    jr nz, jr_02b_58d3

    ld [hl], b
    nop
    jr nz, jr_02b_58d7

    ld sp, $20a0
    ld c, b
    jr nz, @+$12

    nop
    ld c, b
    db $10
    ld d, b
    ld d, $00
    ld d, $26
    db $10
    ld [bc], a
    nop
    db $10
    ld [$0000], sp
    ld b, $00
    ld [bc], a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02b_5975:
    ld hl, sp-$01
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $ec
    nop
    xor h
    nop
    ld l, h
    nop
    ld c, h
    nop
    ld c, b
    nop
    ret z

    nop
    jr jr_02b_5990

jr_02b_5990:
    ld a, c
    nop
    ld h, c
    nop
    ld h, a
    nop
    rst $28
    nop
    adc [hl]
    nop
    cp [hl]
    nop
    ccf
    nop
    daa
    nop
    jr nz, jr_02b_59a2

jr_02b_59a2:
    daa
    nop
    ld l, a
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
    ret nz

    cp $10
    db $fc
    add b
    db $fc
    nop
    db $fc
    jr nz, jr_02b_5975

    nop
    db $fc
    nop
    ld a, a
    nop
    ld a, l
    nop
    ld hl, sp-$10
    ld hl, sp-$20
    ld hl, sp+$00
    pop af
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    rst $38
    nop
    ret z

    nop
    rst $28
    nop
    cp a
    ld bc, $83ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    and $e1
    db $e3
    ldh [$e1], a
    ret nz

    ldh [$c0], a
    ret nz

    jp nz, $e0e0

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$f0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp+$78
    ld hl, sp+$78
    ld a, b
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ccf
    ccf
    cp a
    ccf
    ld a, a
    ccf
    ccf
    ccf
    rra
    ccf
    ld e, a
    ccf
    rra
    rra
    rra
    rra
    ccf
    ccf
    sbc a
    ccf
    sbc a
    rra
    rrca
    rra
    rra
    rra
    rrca
    rra
    rrca
    rrca
    adc a
    rra
    rrca
    cpl
    call nz, Call_000_2247
    push bc
    rlca
    rlca
    rlca
    rlca
    add a
    rrca
    rlca
    adc a
    inc bc
    rrca
    inc bc
    rlca
    rlca
    add a
    inc hl
    add e
    ld h, e
    inc bc
    inc bc
    sbc a
    rlca
    ld b, e
    inc hl
    ld b, e
    inc de
    rst $00
    rlca
    ld b, e
    add c
    ld bc, $0101
    ld hl, $0101
    ld bc, $8101
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    cp $5c
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
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    pop hl
    nop
    jp $ff00


    nop
    inc bc
    nop
    inc bc
    nop
    cp a
    nop
    rst $38
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
    ccf
    nop
    rst $28
    nop
    rrca
    nop
    rrca
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    ld h, b
    rst $38
    ld l, b
    rst $38
    ld e, b
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    jr nc, @+$01

    jr @+$01

    nop
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, [$f000]
    nop
    rst $38
    nop
    nop
    ret nz

    ld b, b
    sub b
    ld d, b
    nop
    ret nz

    inc bc
    ld [bc], a
    ld b, c
    add b
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
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
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
    ei
    rst $38
    ei
    rst $38
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ldh [$ef], a
    ret nz

    rst $38
    ret nz

    rst $28
    ret nz

    rst $20
    ret nz

    rst $20
    ret nz

    db $e3
    ret nz

    rst $20
    ret nz

    db $e3
    ret nz

    rst $20
    ret nz

    push af
    ldh [$f5], a
    ldh [$f5], a
    ldh [$f2], a
    ldh [$f3], a
    ldh a, [$fa]
    ldh a, [$fb]
    ldh a, [$fb]
    ldh a, [$f9]
    ldh a, [rIE]
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$04
    ld hl, sp-$02
    db $fc
    cp $fc
    cp $fc
    cp $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
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
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ret nz

    nop
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
    db $e3
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
    ld [$0cff], sp
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
    ld a, a
    dec b
    ld a, a
    inc a
    jr c, jr_02b_5ba0

jr_02b_5ba0:
    jr jr_02b_5ba2

jr_02b_5ba2:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$8800], sp
    nop
    adc b
    nop
    ret z

    nop
    nop
    nop
    nop
    nop
    jr nz, jr_02b_5bb6

jr_02b_5bb6:
    inc a
    nop
    ld h, b
    ret nz

    nop
    ld bc, $0102
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    inc b
    ld [bc], a
    inc b
    ld c, b
    nop
    db $fc
    db $fc
    ei
    ld a, [c]
    ld a, [c]
    ld a, [c]
    ld hl, sp-$04
    ldh a, [$fa]
    db $f4
    ld a, [c]
    ldh a, [$f2]
    ldh a, [$f0]
    ldh [$e0], a
    ldh a, [$f0]
    ldh [$f0], a
    ret nz

    ldh a, [$f0]
    ldh a, [$dc]
    call c, Call_02b_4f0f
    rlca
    ld b, a
    ld h, b
    pop bc
    ld b, b
    ld h, b
    inc bc
    ld d, b
    ld e, b
    ret nc

    nop
    ldh [rP1], a
    ld h, b
    nop
    nop
    ld [$1200], sp
    nop
    ld de, $0501
    rlca
    ld [bc], a
    rlca
    ld b, $03
    inc bc
    inc bc
    nop
    ld bc, $0000
    rst $38
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
    cp a
    nop
    cp a
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
    add d
    add b
    add b
    add b
    add b
    add b
    adc d
    add b
    nop
    ld bc, $0302
    inc b
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
    ld b, $07
    ld [$0509], sp
    ld a, [bc]
    dec bc
    inc c
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $05
    dec b
    dec b
    dec b
    dec b
    rla
    jr jr_02b_5c8b

    ld a, [de]
    dec de
    inc e
    dec e
    dec b
    ld e, $1f
    jr nz, jr_02b_5c80

    dec b
    ld hl, $0505
    ld [hl+], a

jr_02b_5c80:
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_02b_5cb0

    ld a, [hl+]
    dec hl
    inc l
    dec l

jr_02b_5c8b:
    ld l, $2f
    jr nc, jr_02b_5cc0

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02b_5cd0

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

jr_02b_5cb0:
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
    ld c, l
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_02b_5cc0:
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
    ld c, l
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b

jr_02b_5cd0:
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
    dec b
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
    dec b
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
    dec b
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
    dec b
    dec b
    or h
    or l
    or [hl]
    dec b
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

    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    dec b
    ret


    ret z

    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d4d3

    dec b
    dec b
    push de
    sub $05
    rst $10
    ret c

    reti


    jp c, $dcdb

    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    dec b
    db $e3
    db $e4
    inc b
    push hl
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    dec b
    dec b
    dec b
    dec b
    dec b
    ld e, h
    dec b
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    dec b
    dec b
    dec b
    db $f4
    jr nz, jr_02b_5d80

    dec b
    dec b
    dec b
    dec b
    dec b

jr_02b_5d80:
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    ld bc, $0404
    inc b
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0404
    inc b
    ld bc, $0401
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
    nop
    ld bc, $0606
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0401
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    dec b
    dec b
    dec b
    dec b
    ld bc, $0005
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    ld bc, $0005
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0505
    dec b
    ld bc, $0005
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    inc b
    ld bc, $0404
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    ld bc, HeaderLogo
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0401
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0401
    nop
    nop
    ld bc, $0101
    ld bc, $0704
    inc b
    ld bc, $0401
    inc b
    inc b
    ld bc, $0001
    nop
    ld bc, $0404
    inc b
    rlca
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    dec b
    ld bc, $0401
    rlca
    ld bc, $4404
    ld bc, $0101
    ld bc, $0101
    ld bc, $0500
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0401
    inc b
    ld bc, HeaderLogo
    dec b
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
    inc b
    ld bc, $0404
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $4401
    ld bc, $0404
    rlca
    rlca
    inc b
    inc b
    ld bc, $0101
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    db $10
    stop
    jr jr_02b_5ecd

    jr @+$0a

    inc e
    inc e
    ld e, $19
    ld e, $38

jr_02b_5ecd:
    ccf
    jr c, jr_02b_5f0f

    jr c, jr_02b_5f11

    jr nc, jr_02b_5f13

    jr c, jr_02b_5f55

    ld hl, sp+$7f
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], c
    cp $10
    ld a, [hl]
    db $10
    ld a, $00
    ld e, $00
    inc e
    ld [de], a
    inc a
    nop
    inc e
    nop
    inc e
    nop
    jr jr_02b_5efb

    jr c, jr_02b_5ef1

jr_02b_5ef1:
    jr jr_02b_5f03

    stop
    stop
    nop
    nop
    nop
    nop

jr_02b_5efb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02b_5f03:
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

jr_02b_5f0f:
    nop
    rst $38

jr_02b_5f11:
    nop
    rst $38

jr_02b_5f13:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld c, $0f
    inc c
    dec c
    inc c
    inc c
    inc c
    ld c, $0c
    ld c, $0c
    inc c
    nop
    inc c
    nop
    inc c
    nop
    inc b
    nop
    add h
    nop
    add b
    nop
    add b
    add hl, bc
    add b
    db $10
    add b
    nop
    add b
    add b
    nop
    nop
    dec b
    ld de, $0607
    ld b, $0c
    ld b, $04
    inc b
    nop
    inc b
    ld [$0800], sp

jr_02b_5f4f:
    nop
    nop

jr_02b_5f51:
    nop
    ld [$0001], sp

jr_02b_5f55:
    ld bc, $0108
    nop
    ld bc, $0208
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0100
    nop
    nop
    inc b
    nop
    ld bc, $0101
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a

jr_02b_5fa5:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_02b_5f4f

    jr nc, jr_02b_5f51

    inc [hl]
    and b
    jr nc, @+$22

    jr nz, jr_02b_5fb7

jr_02b_5fb7:
    jr nz, jr_02b_5fb9

jr_02b_5fb9:
    nop
    nop
    ld [$0880], sp
    nop
    nop
    nop
    ld [$2800], sp
    nop
    ld d, b
    nop
    jr jr_02b_5fc9

jr_02b_5fc9:
    jr @+$0a

    ld [$0800], sp
    jr nc, @+$32

    jr nc, jr_02b_6042

    jr nc, jr_02b_6004

    jr c, jr_02b_6006

    jr nz, jr_02b_600c

    jr nz, jr_02b_6012

    jr nc, jr_02b_6014

    jr nc, @+$7a

    jr nc, jr_02b_6010

    jr c, jr_02b_6012

    jr nc, jr_02b_5ff4

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, b
    jr nz, jr_02b_600e

    db $10
    jr jr_02b_6009

    inc e
    nop
    sub b

jr_02b_5ff4:
    nop
    add b
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    nop
    nop
    nop
    jr nz, jr_02b_5fff

jr_02b_5fff:
    jr nz, jr_02b_5fa5

    jr nc, jr_02b_6033

    ld [hl], b

jr_02b_6004:
    or b
    ld [hl], b

jr_02b_6006:
    sub b
    jr nc, jr_02b_6009

jr_02b_6009:
    jr nc, jr_02b_600b

jr_02b_600b:
    sub b

jr_02b_600c:
    ld b, b
    ret nz

jr_02b_600e:
    ld b, b
    ld b, b

jr_02b_6010:
    nop
    nop

jr_02b_6012:
    nop
    nop

jr_02b_6014:
    nop
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
    nop
    ld b, b
    nop
    jr nz, jr_02b_6024

jr_02b_6024:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02b_6033:
    ld [bc], a
    nop
    inc bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    rlca
    nop
    dec b
    rrca
    rrca

jr_02b_6042:
    add a
    adc a
    rlca
    add a
    rlca
    rlca
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0101
    ld bc, $0100
    inc b
    ld bc, $0301
    nop
    inc bc
    nop
    ld [bc], a
    nop
    inc bc
    ld bc, $0001
    inc bc
    ld bc, $0002
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0000
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    inc b
    nop
    nop
    nop
    ld [bc], a
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
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0101
    ld bc, $0000
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
    ld b, b
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
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    add a
    rrca
    adc a
    rrca
    rrca
    rra
    sbc a
    ret nz

    call nc, $f8c0
    ret c

    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    cp $fc
    ld a, h
    ld a, [hl]
    ld a, h
    ld a, [hl]

jr_02b_6100:
    ld a, [hl]
    ld a, a
    inc a
    inc a
    ld a, $3c
    inc e
    dec a
    inc a
    ccf
    ld a, $3f
    ld e, a
    ld a, a
    rra
    ld e, a
    dec a
    ld a, a
    sbc h
    dec a
    ld e, [hl]
    inc a
    ld e, h
    ccf
    inc a
    ccf
    ld a, h
    ld a, $3e
    ld a, a
    ld a, $7e
    ld e, $1e
    ld e, $3e
    ld e, $3f
    sbc a
    ld e, a
    rrca
    rst $28
    ld c, a
    rst $08
    rrca
    ld e, a
    ld bc, $471d
    dec d
    dec b
    dec d
    inc b
    dec b
    inc h
    dec d
    ld h, b
    inc d
    inc b
    inc c
    jr nz, jr_02b_616b

    jr z, @+$2a

    nop
    jr z, jr_02b_6143

jr_02b_6143:
    ld [$3004], sp
    ld h, b
    jr nc, jr_02b_614d

    ld h, h
    ld b, h
    ld h, h
    dec [hl]

jr_02b_614d:
    inc a
    jr nz, jr_02b_6184

    ld bc, $00b4
    add hl, de
    nop
    inc b
    nop
    stop
    ld de, $1011
    nop
    stop
    ld [$0002], sp
    ld [$0000], sp
    nop
    ld bc, $1010
    db $10
    db $10

jr_02b_616b:
    db $10
    db $10
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, b
    ld b, b
    ret nz

    ld d, b
    ld b, b
    ld d, b
    nop
    ld b, b
    jr jr_02b_6100

    nop
    nop
    add hl, bc
    db $10

jr_02b_6184:
    ld b, c
    nop
    nop
    ld h, b
    ld [$0020], sp
    jr nc, jr_02b_619d

    stop
    jr nc, jr_02b_6191

jr_02b_6191:
    ld h, b
    ld b, b
    ld h, b
    nop
    ld [hl], b
    nop
    ld h, b
    nop
    nop
    ld [$0040], sp

jr_02b_619d:
    nop
    nop
    nop
    nop
    ld h, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_02b_61ab

jr_02b_61ab:
    ld b, b
    nop
    jr nz, jr_02b_61af

jr_02b_61af:
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
    ld h, b
    nop
    nop
    nop
    nop
    add b
    inc b
    nop
    inc b
    nop
    nop
    ld bc, $0101
    ld b, c
    inc bc
    jp $8707


    ld b, $c7
    ld c, $cf
    ld c, $4f
    inc e
    sbc a
    inc a
    ccf
    inc a
    ccf
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$f7], a
    ldh [$fb], a
    ret nz

    ei
    ret nz

    ld sp, hl
    ret nz

    cp $c0
    rst $38
    or b
    rst $38
    or h
    rst $38
    db $fc
    ld a, a
    ld a, [$f47f]
    ld a, a
    pop hl
    ld a, a
    db $f4
    ccf
    ld a, [$f93f]
    ccf
    ld sp, hl
    ccf
    db $fd
    ccf
    ldh a, [$3f]
    ld [hl], b
    ccf
    db $fc
    cp a
    sbc $1f
    ld e, h
    rra
    db $fd
    rra
    ld a, $1f
    rst $38
    sbc a
    cp h
    sbc a
    reti


    sbc a
    cp b
    sbc a
    cp h
    adc a
    sbc h
    adc a
    ld e, $0f
    sbc b
    rrca
    ld e, [hl]
    ld c, a
    ld a, $2f
    sbc a
    rrca
    cp h
    rrca
    rra
    rrca
    rra
    rlca
    rst $38
    rst $20
    rst $38
    rst $30
    or $f7
    xor [hl]
    and a
    rst $10
    rst $10
    adc $c7
    db $dd
    rst $10
    rst $00
    jp $c3ce


    rst $30
    rst $30
    rst $38
    rst $38
    jp $f1ff


    rst $38
    ld [hl], b
    ld a, b
    jr nc, @+$3a

    jr nc, jr_02b_6288

    inc a
    inc a
    jr jr_02b_628c

    inc e
    cp h
    cp h
    cp h
    inc e
    cp h
    inc c
    ld a, h
    ld c, h
    adc [hl]
    inc c
    ld e, $98
    ld e, $1e
    rra
    dec e
    ld e, $07
    ld e, $9f

jr_02b_6265:
    ld c, $26
    rra
    inc de
    rra
    inc de
    rra
    ld [bc], a
    scf
    ld [de], a
    rra
    ld [bc], a
    ld c, $0f
    rra
    dec de
    rra
    nop
    ld c, $00
    ld bc, $0d00
    ld [$0309], sp
    nop
    ld [$0100], sp
    ld [bc], a
    nop
    nop
    stop

jr_02b_6288:
    ld [bc], a
    nop
    nop
    nop

jr_02b_628c:
    ld bc, $0000
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
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    inc b
    rla
    inc c
    rrca
    jr z, jr_02b_6265

    db $10
    rra
    db $10
    rra
    jr c, jr_02b_62fb

    ld h, b
    ld a, a
    ld a, b
    ld a, a
    pop bc
    cp $c3
    db $fc
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    add b
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    rst $28
    nop
    rst $18
    nop
    cp a
    nop
    ld a, a
    nop
    cp a
    nop
    cp [hl]
    dec b
    rst $38
    ld sp, $41ff
    rst $38
    and l
    rst $38
    sub d
    rst $38
    nop

jr_02b_62fb:
    rst $38
    pop de
    rst $38
    add hl, bc
    rst $38
    add d
    rst $38
    ld [hl-], a
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    dec bc
    rst $38
    ldh [rIE], a
    dec b
    rst $38
    ld d, d
    rst $38
    add sp, -$01
    db $76
    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    xor b
    rst $38
    ld l, d
    rst $38
    inc h
    rst $38
    jp nz, $b0ff

    rst $38
    ld [$91ff], sp
    rst $38
    ld c, h
    rst $38
    call nc, Call_02b_72ff
    rst $38
    ld l, h
    rst $38
    ld b, c
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    push af
    rst $38
    db $d3
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    db $fc
    rst $38
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
    ld b, b
    nop
    jr nz, jr_02b_635e

jr_02b_635e:
    ld b, b
    nop
    jr nz, jr_02b_6362

jr_02b_6362:
    ld [$4101], sp
    nop
    ld b, b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ei
    rst $38
    inc bc
    ld [$0400], sp
    dec b
    nop
    ld [de], a
    nop
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh [rIE], a
    add b
    rst $38
    ld a, a
    rst $38
    add $ff
    dec de
    rst $20
    rla
    rst $28
    ld sp, $22cf
    rst $18
    ld b, b
    cp a
    add e
    ld a, a
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $18
    nop
    ld a, [hl]
    add c
    ld a, $c1
    ld a, $c1
    inc e
    db $e3
    inc e
    db $e3
    ld [$08f7], sp
    or $78
    add a
    call nz, $063b
    ld sp, hl
    ld [bc], a
    db $fd
    ld bc, $01fe
    cp $00
    rst $38
    ld [$18f7], sp
    rst $20
    inc e
    jp $c31c


    inc e
    jp Jump_000_017e


    rst $38
    nop
    rrca
    rst $38
    sub d
    rst $38
    ld a, [hl+]
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld bc, $10ff
    rst $38
    ld sp, $80ff
    rst $38
    ld [$a0ff], sp
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    or h
    rst $38
    ld l, e
    rst $38
    pop bc
    rst $38
    and h
    rst $38
    and c
    rst $38
    inc b
    rst $38
    and b
    rst $38
    nop
    rst $38
    ld [$05ff], sp
    rst $38
    sub b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld c, d
    rst $38
    ld hl, $08ff
    rst $38
    sub b
    rst $38
    ld b, b
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    dec bc
    rst $38
    ld [bc], a
    rst $38
    ld c, $ff
    ld [bc], a
    rst $38
    ld [$1cff], sp
    rst $38
    inc h
    rst $38
    ld l, $ff
    ld d, $ff
    jp c, $01ff

    rra
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_02b_648c

    ld a, b
    ld a, b
    db $fc
    db $fc
    db $fc
    db $fc
    db $ec
    db $fc
    db $dd
    db $fc
    call nz, $d4fc
    db $fc
    call c, $dcf8
    ld hl, sp-$2c
    db $fc
    rst $38
    rst $38
    ccf
    ccf
    nop
    ld b, $02
    nop
    nop
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    ld [$0000], sp
    nop
    nop

jr_02b_6487:
    nop
    nop
    nop
    nop
    nop

jr_02b_648c:
    nop
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
    nop
    rst $38
    nop
    rst $38
    add sp, -$01
    ld [hl], h
    rst $38
    cp b
    rst $38
    rst $28
    ldh a, [$f6]
    ld sp, hl
    cp b
    rst $38
    jr z, @+$01

    pop hl
    rst $38
    pop hl
    rst $38
    ldh [$7f], a
    ld hl, sp+$3f
    inc a
    rst $00
    ld e, [hl]
    db $e3
    inc c
    ldh a, [rP1]
    di
    nop
    rst $28
    ld c, h
    rst $08
    call c, Call_000_1cdf
    rst $18
    nop
    ld e, a
    jr jr_02b_6487

    inc c
    rst $18
    ld [$00ef], sp
    rst $20
    nop
    rst $38
    add c
    ld a, [hl]
    ld b, e
    cp h
    scf
    ret z

    rra
    pop hl
    rlca
    ld hl, sp+$0b
    db $fc
    dec bc
    db $fc
    nop
    rst $38
    ld e, b
    rst $38
    ld b, $ff
    ld b, b
    rst $38
    push de
    rst $38
    ld l, l
    rst $38
    inc c
    rst $38
    nop
    rst $38
    xor b
    rst $38
    add b
    rst $38
    ld h, d
    rst $38
    and l
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld c, l
    rst $38
    ld h, e
    rst $38
    ld d, c
    rst $38
    or h
    rst $38
    ld b, h
    rst $38
    ld h, b
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [$28ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc l
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld d, h
    rst $38
    ld b, $ff
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
    jr nz, @+$01

    inc hl
    rst $38
    ld de, $00ff
    rst $38
    ld c, c
    rst $38
    ld [bc], a
    rst $38
    ld l, c
    rst $38
    and h
    rst $38
    dec b
    ccf
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
    ld e, $1e
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    dec e
    ccf
    ccf
    ld a, $3f
    ccf
    ccf
    ccf
    dec hl
    ccf
    db $eb
    rst $38
    rst $38
    rst $38
    rra
    ld e, a
    jr nc, jr_02b_656b

    ld [$0003], sp

jr_02b_656b:
    inc bc
    ld b, $00
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

jr_02b_6581:
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    ld sp, hl
    rst $38
    ld e, a
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    inc c
    di
    rra
    ldh [$7f], a
    add b
    rlca
    ld hl, sp-$20
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp a
    jr nc, jr_02b_6581

    ld de, $12e6
    db $ed
    inc c
    di
    db $f4
    dec bc
    add e
    ld a, h
    ld bc, $003e
    rst $08
    nop
    rst $30
    sub b
    ld a, e
    jp nz, $e239

    add hl, de
    ei
    nop
    adc e
    ld [hl], b
    inc bc
    ld hl, sp+$03
    ld hl, sp-$7e
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    add d
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [$46ff], sp
    rst $38
    ld [hl+], a
    rst $38
    cp b
    rst $38
    adc l
    rst $38
    ld b, c
    rst $38
    ld [de], a
    rst $38
    ld b, d
    rst $38
    db $10
    rst $38
    ld h, d
    rst $38
    ld [de], a
    rst $38
    or b
    rst $38
    and a
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld d, c
    rst $38
    ld b, b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    call nc, Call_000_10ff
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld hl, $40ff
    rst $38
    jr z, @+$01

    dec c
    rst $38
    add hl, de
    rst $38
    dec e
    rst $38
    add a
    rst $38
    dec bc
    rst $38
    ld l, $fe
    ld l, $fe
    inc c
    db $fc
    ld [$b8f8], sp
    ld hl, sp-$18
    ld hl, sp-$20
    ld hl, sp-$20
    ld hl, sp+$30
    ld hl, sp-$80
    ld hl, sp+$00
    ld hl, sp+$10
    ld a, b
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
    rlca
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    inc c
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rst $38
    ldh a, [rIE]
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
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rrca

jr_02b_6667:
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
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    xor a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    adc $7f
    push hl
    rra
    adc [hl]
    rst $38
    ld [bc], a
    rst $38
    nop
    ei
    nop
    rst $20
    rlca
    ret z

    ld bc, $000e
    rra
    nop
    ccf
    nop
    ld a, a
    db $10
    rst $28
    jr c, jr_02b_6667

    ld a, h
    add d
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, $c1
    inc e
    db $e3
    ld [$00f7], sp
    rst $30
    db $10
    ei
    nop
    db $fd
    inc b
    db $fd
    nop
    cp $80
    ld a, a
    ret nz

    inc a
    ldh [rNR13], a
    sub d
    rst $38
    nop
    rst $38
    ld h, d
    rst $38
    daa
    rst $38
    ld d, $ff
    ld [hl+], a
    rst $38
    adc b
    rst $38
    dec d
    rst $38
    nop
    rst $38
    add c
    rst $38
    ld b, l
    rst $38
    sbc d
    rst $38
    ld c, b
    rst $38
    inc b
    rst $38
    ld bc, $35ff
    rst $38
    inc l
    rst $38
    sbc b
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    ld b, [hl]
    rst $38
    nop
    rst $38
    add d
    rst $38
    dec hl
    rst $38
    ld d, l
    rst $38
    scf
    rst $38
    ld d, a
    rst $38
    ld b, $fe
    ld l, $fe
    inc a
    db $fc
    cp b
    ld hl, sp+$78
    ld hl, sp+$70
    ldh a, [$60]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    add h
    add b
    inc b
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
    nop
    inc c
    nop
    add hl, bc
    ld bc, $0303
    rlca
    rlca
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    cp $ff
    ld hl, sp-$10
    pop af
    ld [$58f0], a
    add b
    ret nz

    ld bc, $4000
    ld b, d
    nop
    ld [bc], a
    nop
    ld b, c
    add b
    ld b, b
    nop
    inc bc
    add b
    nop
    nop
    add h
    nop
    nop
    nop
    ld bc, $0000
    ld [bc], a
    inc b
    nop
    nop
    nop
    ld [bc], a
    nop
    inc b
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

jr_02b_6763:
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
    ret nz

    ret nz

    ldh a, [$f0]
    db $fc
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
    inc bc
    ld a, a
    pop bc
    cp b
    rst $00
    dec [hl]
    rst $28
    ld [$18f7], sp
    rst $20
    scf
    ret z

    ld [hl+], a
    rst $18
    ld b, b
    cp a
    db $10
    rst $28
    jr nc, jr_02b_6763

    jr nz, jr_02b_67f5

    ret nz

    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    cp a
    nop
    rst $18
    nop
    rst $28
    nop
    rst $38
    nop
    cp $00
    ei
    nop
    rst $38
    nop
    ld a, e
    nop
    ei
    nop
    ei
    ld b, $ff
    ld c, d
    rst $38
    dec h
    rst $38
    ld [de], a
    rst $38
    add h
    rst $38
    ld d, h
    rst $38
    inc d
    rst $38
    and e
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    ld de, $a3ff
    rst $38
    scf
    rst $38
    and a
    rst $38
    ld h, a
    rst $38
    sbc [hl]
    cp $ec
    db $fc
    inc a
    db $fc
    ld hl, sp-$08
    cp b
    ld hl, sp+$70
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    inc e
    nop
    inc e
    inc b
    inc e
    inc b
    inc e
    inc b
    inc a

jr_02b_67f5:
    nop
    inc a
    nop
    inc e
    inc b
    inc e
    inc b
    inc e
    inc b
    inc e
    inc b
    add hl, de
    nop
    inc de
    inc bc
    rla
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
    cp $f3
    ld hl, sp-$30
    ldh a, [$d3]
    ldh a, [$c3]
    ldh [$81], a
    ret nz

    jr nz, @-$3e

    nop
    nop
    ld [bc], a
    add c
    ld h, c
    nop
    db $10
    ld b, c
    add b
    ld b, b
    ld bc, $2000
    nop
    ld b, b
    jr nz, @+$43

    nop
    ld hl, $4200
    nop
    inc b
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0002
    add d
    ld bc, $0000
    add b
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    nop
    add b
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
    stop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38

jr_02b_6869:
    ldh [rIE], a

jr_02b_686b:
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_02b_6875:
    sbc a
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    ld b, c
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    ld a, [hl]
    add c
    jr @+$01

    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    rrca
    ld [hl], b
    inc bc
    cp $00
    db $fc
    inc bc
    ld a, b
    add a
    jr nc, jr_02b_6869

    jr nc, jr_02b_686b

    jr nz, jr_02b_6875

    nop
    rst $38
    ld b, a
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    sbc $fe
    ld e, [hl]
    cp $3c
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld [hl], b
    ldh a, [$e0]
    ldh [$e0], a
    ldh [$c0], a
    ret nz

    add b
    add b
    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $00
    ld e, $00
    ld a, $02
    ld a, $06
    ld a, $06
    ld a, $06
    ld a, $06
    ld a, [hl]
    ld [bc], a
    ld a, [hl]
    ld [bc], a
    ld a, $06
    ld a, $06
    ld a, $06
    ld a, $06
    ld a, $06
    ld a, $06
    ld a, $06
    ccf
    dec b
    ccf
    inc bc
    ccf
    rlca
    ccf
    rrca
    ccf
    rra
    ld a, a
    ccf
    rst $38
    ld a, a
    cp [hl]
    cp $fe
    rst $38
    db $fc
    cp $f9
    db $fc
    ldh [$f0], a
    call nz, $84e0
    add b
    ld b, b
    nop
    ld d, b
    add b
    ld h, b
    nop
    ld [hl+], a
    nop
    xor h
    nop
    add b
    nop
    inc b
    nop
    nop
    nop
    jr nz, jr_02b_6910

jr_02b_6910:
    inc b
    nop
    nop
    inc b
    and b
    nop
    nop
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
    ld [bc], a
    nop
    ret nz

    ld [bc], a
    nop
    add d
    inc b
    add b
    ld [hl+], a
    nop
    nop
    nop
    add b
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
    inc b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    ldh a, [$f0]
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
    ld a, a
    rst $38
    ccf
    rlca
    rst $38
    ld bc, $00ff
    db $fd
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $02
    cp $01
    db $fc
    dec b
    ld a, h
    ld bc, $01fc
    cp h
    inc bc
    ret c

    inc bc
    ret c

    inc bc
    ld hl, sp-$7f
    add b
    add c
    add b
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    ld bc, $0707
    rlca
    rlca
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$fcfe]
    db $fc
    db $e4
    ldh [$88], a
    add b
    jr jr_02b_69e0

jr_02b_69e0:
    nop
    nop
    inc [hl]
    or h
    ld [hl], b
    db $76
    ld c, $1c
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    ld [$0800], sp
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
    ld [bc], a
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
    inc b
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
    ret nz

    rst $38
    ld hl, sp-$01
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
    ccf
    ld a, a
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    ld a, a
    sub b
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$02
    db $fc
    ld bc, $00fe
    rst $38
    nop
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    sbc a
    rra
    rra
    rra
    rra
    rra
    ld e, a
    rra
    ld e, $1e
    ld e, [hl]
    ld e, $1e
    ld e, $1d
    dec e
    dec de
    dec de
    dec d
    rla
    ld c, a
    rrca
    inc e
    sbc a
    ccf
    ccf
    ld a, [hl]
    ld a, a
    or $ff
    ei
    rst $38
    and e
    rst $38
    di
    rst $38
    sub $fe
    or d
    cp $f4
    ld hl, sp-$20
    ld [c], a
    ret nz

    jp $c080


    ld b, b
    ld b, b
    nop
    ld b, b
    nop
    add b
    ld b, b
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    nop
    nop
    ld bc, $0200
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
    ld bc, $0000
    inc b
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
    add b
    rst $38
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
    inc bc
    db $e3
    ld bc, $00f1
    ld a, h
    nop
    cp $00
    rst $38
    nop
    ld a, a
    add b
    add b
    add b
    add c
    add b
    add b
    add d
    add b
    adc b
    add b
    add b
    adc b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add c
    add c
    add e
    add e
    add a
    add a
    adc a
    rrca
    rra
    rra
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [$e0]
    ldh [$80], a
    ret nz

    add b
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
    add b
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
    ld a, a
    ld a, a
    ccf
    ccf
    rrca
    cp a
    inc bc
    rst $18
    add b
    ret nz

    and b
    add b
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    adc $ff
    db $fc
    cp $f8
    db $fc
    add d
    sbc c
    nop
    dec b
    dec b
    inc b
    inc b
    dec d
    db $10
    dec d
    inc b
    ld d, c
    nop
    ld b, c
    ld b, h
    add hl, bc
    add hl, hl
    inc c
    and h
    inc c
    inc b
    inc b
    ld b, b
    ld [de], a
    ld c, d
    ld [de], a
    ld b, $00
    dec b
    ld [$0824], sp
    ld c, $18
    nop
    ld a, [hl-]
    nop
    ld a, [hl-]
    add h
    inc e
    ld [$010c], sp
    inc d
    ld [bc], a
    inc d
    inc b
    db $10
    add b
    inc de
    nop
    ld de, $0108
    inc b
    ld bc, $1812
    add c
    ld [$0800], sp
    add h
    nop
    nop
    inc b
    ld [bc], a
    nop
    ld bc, $0001
    dec b
    inc b
    inc c
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    nop
    ld b, $00
    ld b, $01
    ld [bc], a
    ld bc, $0002
    inc b
    inc c
    inc b
    inc b
    ld b, $0c
    ld b, $88
    ld b, $00
    ld [bc], a
    add b
    inc bc
    ld [$0803], sp
    ld [bc], a
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
    ld bc, $0000
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
    ldh [$e0], a
    ld hl, sp-$08
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
    sbc a
    sbc a
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, h
    cp $f8
    ld a, [$f0e1]
    ret nz

    ret nz

    add [hl]
    adc b
    dec e
    sbc l
    add hl, bc
    add hl, bc
    nop
    nop
    sub b
    ldh [$c0], a
    ldh a, [rNR10]
    ld [hl], e
    ld bc, $323b
    ld [hl-], a
    nop
    sub b
    add b
    nop
    ret nz

    inc b
    nop
    nop
    ld e, d
    ld [$3892], sp
    jr nc, jr_02b_6cbe

    jr z, jr_02b_6cb2

    ld h, d
    ld l, d
    ld [bc], a
    inc hl
    ld b, $0e
    inc b
    ld b, $46
    ld b, a
    nop
    inc bc
    nop
    ld [$0000], sp
    ld h, b
    ld l, b
    ld b, [hl]
    ld h, b
    ret nz

    ld l, h
    add b
    ld c, b
    jr jr_02b_6cf2

    inc c
    inc c
    add h
    inc b
    stop
    ld [bc], a
    nop

jr_02b_6cb2:
    add c
    nop
    add hl, bc
    db $10
    inc d
    jr jr_02b_6cc1

    ld de, $8105
    jr nz, jr_02b_6cff

jr_02b_6cbe:
    nop
    jr nz, jr_02b_6cc1

jr_02b_6cc1:
    jr nz, jr_02b_6cd3

    ld [hl+], a
    ld [bc], a
    inc bc
    add e
    ld [bc], a
    nop
    nop
    ld [$0000], sp
    nop
    nop
    nop
    db $10
    jr jr_02b_6d03

jr_02b_6cd3:
    ldh a, [rP1]
    jr nc, jr_02b_6cd7

jr_02b_6cd7:
    inc b
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

jr_02b_6cf2:
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

jr_02b_6cff:
    nop
    jr nz, jr_02b_6d02

jr_02b_6d02:
    nop

jr_02b_6d03:
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
    add b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    db $f4
    ei
    ldh a, [$f6]
    ld b, b
    add d
    ld d, b
    add c
    ret nz

    ld bc, $6220
    nop
    ld h, d
    ld b, b
    ld b, b
    jr nz, @+$13

    jr nz, jr_02b_6d59

    ld [$029d], sp
    sbc c
    ld b, d
    sbc b
    ld b, [hl]
    db $10
    sub [hl]
    nop
    ld b, [hl]
    ret nz

    ld a, [bc]
    call nz, $0407
    ld [bc], a
    nop
    ld b, b
    nop
    ld h, b
    ld h, b
    jr nz, jr_02b_6d78

    nop

jr_02b_6d59:
    nop
    ld hl, $0200
    nop
    ld b, $06
    ld b, $07
    nop
    db $10
    db $10
    db $10
    db $10
    ld d, $00
    stop
    db $10
    ld [$081c], sp
    ld [$3c08], sp
    db $10
    inc a
    nop
    inc b
    nop
    nop

jr_02b_6d78:
    nop
    inc d
    nop
    ld b, b
    inc b
    nop
    nop
    nop
    inc b
    jr nc, jr_02b_6db3

    jr nz, jr_02b_6de5

    ld [$0800], sp
    add b
    ld [$0800], sp
    nop
    nop
    nop
    nop
    db $10
    ld b, $00
    ld [bc], a
    inc b
    nop
    ld b, b
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
    nop
    nop
    ret nz

    ret nz

    ldh a, [$f8]
    cp $fe
    db $f4
    ldh a, [$e0]

jr_02b_6db3:
    ldh [$c0], a
    ret nz

    adc b
    add b
    ld [$0000], sp
    nop
    ld [$1c00], sp
    nop
    db $10
    inc c
    db $10
    inc c
    adc h
    add h
    inc b
    inc b
    inc b
    ld b, $04
    ld h, h
    inc b
    call nz, Call_000_0444
    nop
    add l
    nop
    nop
    nop
    ld b, b
    nop
    ld b, b
    ld b, b
    pop bc
    ld b, h
    ld b, c
    ld h, b
    ld [hl], a
    db $10
    ld d, $00
    nop
    nop
    stop

jr_02b_6de5:
    ld [bc], a
    nop
    ld b, $00
    ld b, $00
    ld [bc], a
    nop
    ld b, d
    ld bc, $00c0
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
    jr jr_02b_6e43

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_02b_6e53

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_02b_6e63

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_02b_6e73

    ld [hl-], a

jr_02b_6e43:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_02b_6e83

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_02b_6e53:
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
    rlca
    ld c, [hl]
    db $10
    db $10
    ld c, a

jr_02b_6e63:
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
    inc [hl]

jr_02b_6e73:
    ld e, a
    ld b, l
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
    ld b, l
    ld b, l
    ld l, e

jr_02b_6e83:
    ld l, h
    ld b, l
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
    ld b, l
    ld b, l
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
    ld b, l
    ld b, l
    add [hl]
    ld b, l
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
    ld b, l
    ld b, l
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    rlca
    rlca
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    sbc [hl]
    ld b, l
    ld b, l
    sbc a
    and b
    and c
    and d
    and e
    rlca
    rlca
    rlca
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    ld b, l
    ld b, l
    xor d
    xor e
    xor h
    rlca
    rlca
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    ld b, l
    ld b, l
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
    jp nz, $45c3

    ld b, l
    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $d345

    call nc, $d6d5
    rst $10
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

    rlca
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld bc, $0401
    inc b
    inc b
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
    ld bc, $0105
    ld bc, $0001
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
    ld bc, $0501
    ld bc, $0001
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0604
    inc b
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
    ld bc, $0101
    ld bc, $0400
    ld bc, $0101
    ld bc, $0501
    dec b
    ld bc, $0001
    nop
    ld bc, $0101
    inc b
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0501
    nop
    nop
    nop
    ld bc, $0101
    inc b
    ld bc, $0303
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0004
    nop
    nop
    nop
    ld bc, $0101
    inc b
    ld bc, $0303
    inc bc
    ld bc, $0004
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
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
    ld bc, $0301
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
    ld bc, $0301
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
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc b
    inc b
    ld bc, $0004
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0401
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0404
    inc b
    inc b
    ld b, $06
    ld b, $01
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    ld b, $06
    inc b
    inc b
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    inc b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    ld c, $0e
    ld c, $0e
    inc c
    inc c
    ld c, $0e
    ld [$0808], sp
    ld c, $0e
    ld c, $0e
    ld c, $0c
    ld c, $0e
    ld c, $0c
    inc c
    ld c, $0e
    ld c, $08
    nop
    ld [$0e0e], sp
    ld c, $0e
    ld c, $f0
    nop
    or b
    nop
    or b
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
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
    ld [$0900], sp
    add b
    add c
    sub b
    and b
    ret nc

    pop de
    jp nz, $c0e0

    ret nz

    ret nz

    ret nc

    pop hl
    db $e4
    db $e3
    ld [c], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$10
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$10
    ld hl, sp-$08
    ld hl, sp-$04
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
    pop af
    rst $38
    inc sp
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    ei
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
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$ef], a
    ret nz

    pop bc
    add b
    add c
    nop
    inc b
    nop
    ld sp, $0800
    nop
    add b
    nop
    ld [bc], a
    nop
    ld b, e
    nop
    add b
    nop
    add b
    nop
    ld h, c
    nop
    inc bc
    nop
    ld bc, $2100
    nop
    inc bc
    nop
    nop
    nop
    add b
    nop
    adc d
    nop
    ld [$0000], sp
    nop
    nop
    nop
    inc b
    ld [bc], a
    inc b
    ld [bc], a
    inc b
    nop
    and b
    ld [bc], a
    add hl, de
    nop
    jr nc, @+$03

    jr nz, jr_02b_7155

jr_02b_7155:
    ldh [rP1], a
    ldh a, [rDIV]
    ret nz

    ld [$0240], sp
    nop
    ld [de], a
    inc bc
    ld b, $00
    ld [$8200], sp
    ld bc, $0080
    add b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    jr nc, jr_02b_7171

jr_02b_7171:
    jr nz, jr_02b_7177

    jr jr_02b_7177

    add hl, bc
    add b

jr_02b_7177:
    ld bc, $0081
    add b
    nop
    add b
    nop
    add b
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
    ld h, b
    nop
    nop
    nop
    stop
    sbc b
    nop

jr_02b_71ac:
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld sp, hl
    add c
    ld sp, hl
    ld bc, $00fc
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    db $fd
    nop
    rst $38
    nop
    ld hl, sp+$00
    db $fc
    nop
    cp $00
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
    rst $18
    rst $38
    cp $ff
    rst $38
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
    ei
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
    db $fc
    ld hl, sp-$05
    ldh a, [$f3]
    ldh [$e3], a
    ret nz

    jp $8180


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
    ld bc, $0000
    ld bc, $4000
    nop
    ld b, b
    ld b, h
    nop
    ld bc, $0a00
    add b
    jr nc, jr_02b_71ac

    nop
    add b
    ldh [$98], a
    add b
    nop
    nop
    add b
    ld [$0c80], sp
    add b
    inc b
    add b
    ld b, b
    nop
    ld [bc], a
    nop
    ld bc, $0000
    nop
    nop
    jr nz, jr_02b_7291

    jr nz, jr_02b_726d

    nop
    ld de, $1e06
    ld [bc], a
    add b
    ld [bc], a
    ld a, [bc]
    add b
    jr nz, jr_02b_7262

    nop
    ld bc, $0990
    adc c
    ret nz

    nop
    nop
    ld [bc], a
    inc b
    add b
    inc h
    ld [bc], a
    jr nz, jr_02b_7261

jr_02b_7261:
    nop

jr_02b_7262:
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [$0080], sp

jr_02b_726d:
    nop
    nop
    nop
    nop
    nop
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
    ld b, b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    jr jr_02b_728d

jr_02b_728d:
    ld [$0c00], sp
    rlca

jr_02b_7291:
    ld bc, $000f
    rra
    db $10
    rra
    db $10
    rrca
    ld [$080f], sp
    rrca
    ld [$080f], sp
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    rlca
    inc b
    add e
    ld [bc], a
    ld b, e
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0701
    ld bc, $0101
    ld b, c
    ld bc, $0100
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
    inc bc
    nop
    ld b, $00
    jr jr_02b_72cc

jr_02b_72cc:
    ld d, b
    nop
    and b
    nop
    add b
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    ld b, a
    rlca
    ld c, a
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    dec sp
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, h
    rst $38
    db $76
    rst $38
    di
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    cp $64
    db $fc
    add d
    ld hl, sp+$33
    ldh a, [$81]
    add sp, -$80

Call_02b_72ff:
    ret nz

    add c
    or b
    ld bc, $0030
    nop
    ld [$0000], sp
    nop
    dec a
    nop
    inc a
    nop
    dec bc
    jr nz, jr_02b_7351

    nop
    ld c, b
    add b
    inc b
    ld b, b
    ld [de], a
    nop
    inc h
    nop
    adc b
    inc b
    ret nz

    nop
    db $10
    ld b, b
    jr nz, jr_02b_7362

    ld [$0800], sp
    nop
    nop
    nop
    ld c, $00
    inc c
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    ld [$0800], sp
    nop
    inc b
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ld [$1000], sp
    nop
    nop
    nop
    stop
    nop
    nop
    jr nz, jr_02b_735c

    jr nz, jr_02b_734e

jr_02b_734e:
    ld b, b
    nop
    ld b, b

jr_02b_7351:
    db $10
    add h
    ldh a, [rHDMA4]
    nop
    nop
    nop
    inc c
    nop
    nop
    inc h

jr_02b_735c:
    ld bc, $0804
    nop
    inc b
    nop

jr_02b_7362:
    jr nz, jr_02b_7384

    jr nz, jr_02b_7366

jr_02b_7366:
    nop
    nop
    sub b
    nop
    nop
    ld b, b
    ld [bc], a
    ld h, b
    ld a, [hl+]
    nop
    nop
    nop
    add hl, bc
    inc b
    nop
    nop
    ld [$1200], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_02b_7384:
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    ldh a, [$f0]
    ldh a, [$f8]
    nop
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
    db $db
    nop
    ld l, a
    nop
    ld a, $80
    rst $18
    nop
    db $ed
    nop
    ei
    nop
    db $dd
    nop
    ei
    nop
    nop
    nop
    nop
    nop
    ld bc, $8100
    add h
    ret nc

    add b
    add l
    add b
    sub h
    add b
    ret z

    ld b, b
    ld a, a
    ld b, c
    ccf
    ld b, e
    rst $08
    rrca
    rrca
    rrca
    rlca
    rlca
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
    db $fc
    ei
    ld hl, sp-$0f
    ldh a, [$e1]
    ldh [$c1], a
    ret nz

    and h
    add b
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl+], a
    nop
    nop
    nop
    sbc h
    nop
    inc c
    nop
    ld b, $00
    ld [hl+], a
    nop
    or d
    nop
    stop
    stop
    ld [de], a
    nop
    sub [hl]
    ld bc, $0081
    sub e
    nop
    add hl, de
    nop
    ld bc, $0000
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    nop
    nop
    inc c
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
    nop
    nop
    ld b, b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    jr nz, jr_02b_7445

jr_02b_7445:
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
    nop
    nop
    nop
    nop
    add b
    nop
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_02b_746a

jr_02b_746a:
    ld [$0000], sp
    nop
    ld [$0100], sp
    ld b, c
    ld bc, $0301
    inc bc
    daa
    rlca
    cpl
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
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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
    db $fc
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    rst $38
    rrca
    rst $38
    ccf
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ei
    rst $38
    dec sp
    rst $38
    ld d, e
    rst $38
    ld h, e
    rst $38
    db $ed
    rst $38
    db $dd
    rst $38
    cp $ff
    db $fc
    db $fc
    ld a, c
    ld hl, sp-$50
    ldh a, [$a0]
    ld [c], a
    sub h
    ret


    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $031f
    rrca
    inc bc
    rrca
    ld bc, $010f
    adc a
    add c
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
    nop
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
    nop
    ld [bc], a
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
    nop
    nop
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
    rlca
    rlca
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    nop
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
    rst $20
    rst $38
    rst $20
    rst $38
    adc a
    rst $38
    and a
    rst $38
    or a
    rst $38
    cp [hl]
    cp $ba
    ld hl, sp-$18
    ldh a, [$92]
    ret nz

    add d
    add b
    ld b, $00
    ld b, b
    nop
    ld d, $20
    ld b, d
    jr nz, jr_02b_75cd

    db $10
    ld a, [de]
    db $10
    ld d, d
    ld [$002a], sp
    ld b, $38
    ld h, b
    inc c
    ld bc, $1c00
    nop
    add d
    inc b
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca

jr_02b_75cd:
    ld c, $1f
    inc e
    ccf
    jr c, jr_02b_7652

    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    and c
    rst $38
    or c
    rst $38
    and c
    rst $38
    pop de
    rst $38
    pop de
    rst $38
    pop bc
    ld a, a
    ld h, b
    ld a, a
    ld h, c
    ld a, a
    ld h, b
    ccf
    jr nc, jr_02b_7632

    jr nc, jr_02b_7634

    inc [hl]
    rra
    ld de, $1b1f
    ld e, $1a
    ld e, $1e
    inc c
    inc c
    ld a, a
    ld [$003f], sp
    ccf
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
    rrca
    nop
    rlca
    nop
    rlca
    ld bc, $0103
    inc bc
    inc bc
    rlca
    rlca
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02b_7632:
    rst $38
    rst $38

jr_02b_7634:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    pop bc
    rst $38
    ld bc, $00f9
    db $fd
    nop
    db $fc
    nop
    ei
    ret nz

    ei
    ldh [$fb], a
    ldh [$fb], a
    db $e4
    di

jr_02b_7652:
    ldh a, [$f7]
    ldh [$f7], a
    ldh a, [$f0]
    inc sp
    rst $30
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
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
    ld hl, sp-$04
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    ld b, $0f
    inc c
    rra
    jr @+$41

    jr nc, jr_02b_7724

    ld h, b
    rst $38
    ret nz

    rst $38
    adc b
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$18ff], sp
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, c
    rst $38
    pop bc
    cp $c2
    db $fc
    db $e4
    ld hl, sp-$18
    ld hl, sp-$78
    ldh a, [rNR10]
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ld b, b
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
    ld bc, $01ff
    rst $38
    inc bc
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
    ld a, [hl]
    ccf
    ld a, [hl]
    ld a, a
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
    cpl
    rst $38
    cpl
    rst $38
    or e
    rst $38
    ldh a, [rIE]
    ld hl, sp-$03
    db $fc
    cp $e4
    rst $38
    ldh [$e1], a
    jp nz, $c3fc

    db $fc
    rst $00
    ld hl, sp-$71
    ret nc

    rra
    ret nz

    and $f8
    pop af
    db $fc

jr_02b_7724:
    ldh a, [$f5]
    ld bc, $0186
    ld a, [hl]
    ld [hl+], a
    sbc l
    ld b, $c9
    inc b
    rst $30
    ld bc, $01fb
    db $fd
    nop
    add d
    nop
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
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add b
    nop
    add b
    nop
    nop
    nop
    ld b, b
    nop
    nop
    nop
    add b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ret nz

    add b
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh [rNR41], a
    ldh [rNR41], a
    ret nz

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
    nop
    nop
    nop
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    rra
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    jp nz, $9dff

    rst $38
    ld c, h
    rst $38
    nop
    rst $38
    inc c
    rst $18
    rrca
    rst $18
    inc bc
    ld a, e
    ldh a, [rIE]
    ldh a, [$fe]
    rst $30
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    rst $30
    rst $38
    dec a
    rst $38
    rrca
    ccf
    ld b, e
    rst $18
    ld bc, $f10f
    rlca
    or b
    rra
    ld sp, hl
    dec b
    ld a, a
    inc bc
    db $e3
    rrca
    add b
    ld a, a
    ld b, b
    ccf
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
    ret nz

    rst $18
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    cp l
    db $fd
    rst $38
    ld sp, hl
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    rst $38
    rlca
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    rst $30
    ld [$88f7], sp
    rst $30
    adc b
    rst $38
    add b
    rst $30
    adc b
    rst $30
    adc b
    rst $30
    adc b
    rst $38
    add b
    cp a
    ret nz

    or a

Jump_02b_782d:
    ret z

    or a
    ret z

    or a
    ret z

    or a
    ret z

    ld [hl], e
    ld c, h
    ld [hl], a
    ld c, b
    ld d, e
    ld l, h
    ld b, a
    ld a, h
    ld b, h
    ld a, a
    ld b, h
    ld a, a
    ld h, h
    ld a, a
    ld h, h
    ld a, a
    ld h, h
    ld a, a
    ld h, h
    ld a, a
    ld h, h
    ld a, a
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    inc h
    ccf
    inc l
    ccf
    inc a
    ccf
    inc a
    ccf
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld e, $1f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    rrca

jr_02b_7881:
    rrca
    rra
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
    ei
    rst $38
    ld a, [hl-]
    ei
    adc a
    ei
    xor l
    di
    ld hl, sp-$09
    ld e, b
    rst $10
    ld [de], a
    rst $28
    ld [hl-], a
    rst $08
    ldh [$df], a
    jr nz, jr_02b_7881

    ldh a, [rIF]
    adc [hl]
    ldh a, [rNR43]
    ei
    ld d, d
    ld a, a
    ld a, h
    rst $38
    cpl
    ld a, a
    rst $08
    rst $28
    inc hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    db $fc
    ld a, a
    ldh a, [$7f]
    ldh a, [rIE]
    ldh a, [$fe]
    pop bc
    ld hl, sp-$39
    rst $20
    sbc a
    rra
    rst $38
    adc e
    rst $38
    ld e, a
    rst $38
    inc bc
    rst $38
    sub [hl]
    rst $38
    ld c, $ff
    inc b
    cp $04
    db $fd
    nop
    rst $20
    nop
    adc a
    nop
    rra
    nop
    ld a, a
    nop
    ld a, a
    nop
    adc a
    ldh a, [$f2]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    nop
    nop
    rst $38
    rst $38
    rst $20
    jr @+$01

    nop
    rst $38
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
    ld a, a
    add b
    ld a, l
    add d
    ld a, h
    add e
    reti


    ld h, $dc
    inc hl
    pop hl
    ld e, $c0
    ccf
    add sp, $77
    nop
    rst $38
    ld d, b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld e, $ff
    ld d, b
    rst $38
    ld d, c
    rst $38
    ld d, d
    rst $38
    add [hl]
    rst $38
    sub e
    rst $38
    ld [$55ff], sp
    rst $38
    push bc
    rst $38
    ld d, c
    rst $38
    ret


    rst $38
    ld c, a
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
    rst $30
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    ret


    rst $38
    inc e
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    and a
    rst $38
    ld [hl], h
    ld a, a
    ld h, h
    rst $38
    ld bc, $d0ff
    ccf
    jp hl


    sbc [hl]
    ei
    inc b
    db $fc
    db $e3
    ld a, [$48e7]
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    adc a
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
    ld a, a
    adc a
    ccf
    jp $e09f


    rst $00
    ld hl, sp-$6d
    db $fc
    cp c
    cp $f8
    rst $38
    rst $38
    rst $38
    ccf
    cp a
    rrca
    ld a, a
    rlca
    rst $38
    inc bc
    db $fd
    rrca
    ldh a, [$3f]
    ret nz

    ld a, [hl]
    add b
    db $fc
    nop
    ld hl, sp+$00
    nop
    nop
    db $10
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
    rst $38
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    nop

jr_02b_79cd:
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp l
    ld b, d
    cp a
    ld b, b
    cp a
    ld b, b
    cp [hl]
    ld b, c
    sbc [hl]
    ld h, c
    db $f4
    dec bc
    push af
    ld a, [bc]
    rst $30
    ld [$08f7], sp
    or $09
    rst $30
    ld [$03fc], sp
    rst $08
    jr nc, jr_02b_79cd

    ld hl, $ff00
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [$00ff], sp
    rst $38
    dec d
    rst $38
    dec c
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    dec l

jr_02b_7a09:
    rst $38
    ld a, [de]
    rst $38
    ld b, $ff
    ld c, c
    rst $38

jr_02b_7a10:
    rlca
    rst $38
    add hl, de
    rst $38
    add hl, sp
    rst $38
    ld e, e
    rst $38
    ccf
    rst $38
    sub a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    nop
    rst $38
    and d
    db $fd
    add b
    rst $38
    ld b, b
    rst $38
    jr nz, jr_02b_7a10

    nop
    rst $38
    ld bc, $80fe
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
    cp $01
    ld a, [hl]
    ld b, b
    ld a, a
    nop
    cp a
    jr nz, jr_02b_7a09

    and b
    cp a
    add b
    cp a
    pop de
    sbc $c0
    rst $18
    ld [c], a
    rst $38
    push bc
    rst $38
    add b
    rst $38
    scf
    rst $18
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    ld a, a
    rst $38
    inc bc
    rst $38
    call c, $feff
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, c
    ld a, a
    rra
    rra
    rlca
    daa
    ld bc, $005b
    ld [$6200], sp
    nop
    adc h
    nop
    ld a, [c]
    nop
    db $fc
    nop
    nop
    nop
    nop
    ldh [$e0], a
    rra
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rra
    ldh [$e0], a
    rra
    db $fd
    ld [bc], a
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    db $fd
    ld [bc], a
    xor h
    ld d, e
    ldh a, [rIF]
    ldh [$1f], a
    nop
    rst $38
    ld h, h
    sbc e
    or $09
    ld c, b
    or a
    jp nc, Jump_02b_782d

    add a
    sub c
    ld l, a
    add e
    ld a, a
    rlca
    rst $38
    inc [hl]
    rst $38
    add c
    rst $38
    ld b, l
    rst $38
    sub a
    rst $38
    and l
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    ld d, l
    rst $38
    ld h, e

jr_02b_7ac1:
    rst $38
    ld h, a
    rst $38
    rst $28
    rst $38
    ld l, e
    rst $38
    rst $18
    rst $38
    di
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor e
    rst $38
    cpl
    rst $38
    ld b, b
    cp a
    ld a, [hl+]
    push de
    ld [bc], a
    ld a, l
    ld [bc], a
    db $ed
    ld b, b
    cp a
    ld a, [hl+]
    sub c
    nop
    rst $38
    add b
    ld l, a
    nop
    db $eb
    add hl, bc
    halt
    rst $38
    ld hl, $08ce
    rst $30
    ld [$12d7], sp
    db $ed
    jr c, jr_02b_7ac1

    ld a, h
    add e
    cp $01
    rst $38
    nop
    rra
    ldh [rP1], a
    call nc, $bf39
    db $10
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
    ld sp, hl
    rra
    pop af
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ldh [$7f], a
    cp $ff
    rst $38
    xor a
    rst $38
    ldh a, [rIE]
    rst $18
    rst $38
    rst $08
    rst $38
    ld bc, $007f
    sbc a
    nop
    ld h, a
    nop
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    db $fc
    db $fc
    inc bc
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    inc bc
    db $fc
    xor h
    ld d, e
    db $ed
    inc de
    push de
    dec hl
    add l
    ld a, e
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc sp
    rst $38
    dec e
    rst $38
    add c
    rst $38
    ld h, e
    rst $38
    ld d, a
    rst $38
    or a
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    cp $fc
    db $fc
    db $fd
    db $fc
    cp $fc
    db $fd
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$10
    ldh a, [$f0]
    ldh a, [$fc]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ld b, b
    cp a
    adc b
    ld [hl], a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $30
    nop
    rst $38
    nop
    rst $18
    ld [$90ff], sp
    ld l, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    ld a, [hl+]
    rlca
    rst $38
    cpl
    rst $38
    rst $18
    rst $38
    rrca
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    di
    rst $38
    db $fd
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
    rst $38
    ld a, a
    rst $38
    add a
    rst $10
    cp $ff
    rst $28
    rst $38
    rst $28
    rst $38

jr_02b_7bec:
    ld h, a
    rst $38
    scf
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    jr nc, jr_02b_7bec

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
    ldh [$e3], a
    push hl
    ldh [$c0], a
    ldh [$c4], a
    ret nz

    ret nz

    ret nz

    ret z

    ret nz

    ret nz

    pop bc
    call nz, $c4c1
    ret nz

    ret nz

    jp nz, $8288

    add b
    add h
    add h
    add h
    add b
    add h
    add b
    add h
    add b
    add c
    sub b
    add d
    add b
    adc c
    inc b
    ld bc, $0b00
    nop
    add hl, bc
    nop
    ld [bc], a
    nop
    ld [bc], a
    stop
    nop
    inc b
    nop
    nop
    nop
    inc b
    db $10
    ld bc, $0020
    ld [de], a
    nop
    inc b
    nop
    ld [bc], a
    nop
    add hl, de
    nop
    inc b
    jr nz, jr_02b_7c51

jr_02b_7c51:
    nop
    ld [$1200], sp
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld b, h
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    db $fd
    call nz, $fcfd
    db $fd
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ld a, $fe
    ld a, [hl]
    cp $1e
    cp $de
    cp $ff
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
    rrca
    rst $38
    ld l, a
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
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
    rst $18
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    ei
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    db $fd
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    ld a, a
    inc bc
    inc hl
    inc bc
    ld b, a
    inc hl
    inc bc
    inc bc
    sub e
    inc hl
    ld d, e
    inc de
    rlca
    inc bc
    add e
    ld bc, $1307
    ld b, a
    scf
    dec b
    rrca
    rlca
    rrca
    rlca
    cpl
    rrca
    ld c, a
    rrca
    rrca
    rlca
    sub a
    rlca
    rst $08
    rrca
    rst $30
    rlca
    di
    inc bc
    di
    inc bc
    di
    ld bc, $01f3
    di
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
    rst $20
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    rst $08
    nop
    rst $08
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    sbc a
    nop
    sbc a
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
    rst $38
    nop
    sub b
    ld b, d
    nop
    ld b, h
    db $10
    ld b, d
    ld hl, $4001
    ld bc, $0010
    and b
    nop
    ld b, b
    nop
    ld b, c
    ld bc, $03a9
    add b
    inc bc
    db $10
    rlca
    jr nz, jr_02b_7d71

    ld [$4807], sp
    ld [bc], a
    sub b
    nop
    db $10

jr_02b_7d71:
    dec c
    nop
    ld [$0150], sp
    add b
    nop
    add b
    add b
    and b
    add b
    adc d
    add b
    add b
    add b
    add b
    add c
    sub b
    add c
    ret z

    pop bc
    ret nz

    jp nz, $c2c0

    ret nc

    ret nz

    call nz, $c0c0
    jp $e1ff


    di
    ldh [$f3], a
    ldh [$fd], a
    ldh [rIE], a
    ldh [$e6], a
    ldh [$f3], a
    ld hl, sp-$0d
    ld hl, sp-$0f
    db $fc
    pop af
    ldh a, [rIE]
    ldh a, [$fb]
    ldh a, [$fa]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$05
    ld hl, sp-$01
    nop
    rst $38
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
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $01
    cp $01
    db $fc
    ld bc, $01fa
    db $fc
    ld bc, $83fc
    db $fd
    add c
    ld hl, sp-$7d
    ld hl, sp-$7f
    db $fc
    add e
    ldh [$e3], a
    ld hl, sp-$07
    db $f4
    rst $30
    db $fc
    rst $38
    cp h
    cp a
    ld hl, sp-$07
    nop
    ld h, h
    ld bc, $04b7
    cp h
    ld [bc], a
    ld a, [$f400]
    ld bc, $80df
    db $fd
    ret nz

    rst $38
    ldh [rIE], a
    ldh [$ee], a
    ld hl, sp-$02
    ld hl, sp-$05
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_02b_7e05:
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
    ld a, a
    rra
    ccf
    rra
    rra
    ld c, a
    rrca
    rla
    ld c, a
    inc bc
    ld e, a
    ld c, c
    rra
    nop
    add hl, de
    ld [bc], a
    sbc c
    nop
    nop
    sub b
    nop
    ld bc, $1400
    dec b
    inc b
    rrca
    ld c, b
    inc c
    nop
    ld c, h
    nop
    ld bc, $00ff
    ccf
    nop
    ld a, e
    ld b, b
    and b
    dec b
    sub d
    nop
    or a
    inc b
    ld d, e
    ld b, b
    rst $38
    nop
    and [hl]
    nop
    adc $02
    db $ec
    inc h
    cp [hl]
    jr nc, jr_02b_7e05

    ld bc, $02ba
    rst $28
    inc bc
    ld a, d
    nop
    add hl, hl
    inc bc
    nop
    dec [hl]
    jr nz, @+$37

    ld hl, $00e1
    ld b, b
    ld [$2040], sp
    ld a, [bc]
    ld [bc], a
    rlca
    and d
    adc e
    add b
    add sp, $11
    nop
    add h
    ld bc, $4380
    ld a, [bc]
    ld b, d
    ld [bc], a
    jp nz, $c640

    ld b, b
    ld c, c
    ld bc, $2008
    ld [$4401], sp
    ld bc, $000c
    sbc b
    nop
    db $10
    ld [$7f00], sp
    nop
    ld d, a
    ld bc, $01e4
    or $00
    rst $38
    nop
    ld hl, sp+$00
    ld a, l
    nop
    rst $38
    nop
    cp [hl]
    nop
    db $ed
    inc b
    db $fd
    inc b
    db $fc
    nop
    rst $30
    nop
    rst $38
    nop
    ld a, d
    nop
    rla
    add b
    ld bc, $80f6
    ld a, a
    call c, $df21
    jr nz, @-$05

    ld b, $fc
    ld [bc], a
    ld a, a
    add b
    ld a, a
    add b
    rra
    ldh [$e1], a
    ld c, $88
    dec [hl]
    sbc h
    ld [bc], a
    sbc b
    ld h, $98
    inc hl
    cp d
    ld b, l
    adc b
    ld d, [hl]
    add b
    scf
    adc b
    rra
    nop
    rrca
    nop
    xor [hl]
    nop
    ld [hl], d
    nop
    rst $38
    nop
    ld l, a
    nop
    ld a, [$fb00]
    nop
    db $dd
    add b
    ld a, [$ef48]
    nop
    rst $30
    nop
    ld e, l
    nop
    ld a, [$fd00]
    nop
    rst $30
    nop
    cp [hl]
    nop
    rst $28
    nop
    sub [hl]
    nop
    ld e, a
    nop
    ld a, a
    add c
    cp e
    inc bc
    db $eb
    rlca
    rst $30
    dec c
    db $fd
    inc b
    xor $00
    ld l, a
    nop
    db $dd
    ld bc, $00f6
    db $ed
    nop
    rst $10
    ld bc, $81ba
    call c, $ecc1
    ret nz

    rst $18
    pop af
    ld a, [$f4f3]
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28

jr_02b_7f16:
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
    ld e, a
    rst $38
    cpl
    ccf
    rra
    rst $18
    rrca
    adc a
    ld c, a
    rrca
    rlca
    rlca
    add e
    inc sp
    ld sp, $5e39
    nop
    halt
    rst $20
    nop
    rrca
    nop
    ld l, [hl]
    ldh [rPCM34], a
    ld h, b
    ld e, e
    ld b, d
    pop af
    nop
    ld e, e
    nop
    ei
    add b
    dec [hl]
    inc b
    db $10
    ld b, b
    ld [hl], h
    adc a
    inc b
    rst $18
    inc c
    rst $08
    adc h
    adc [hl]
    ld [bc], a
    inc [hl]
    add b
    db $d3
    add b
    sbc d
    and b
    add l
    jr nc, @+$09

    inc a
    dec b
    ret c

    ld b, d
    ld e, b
    inc bc
    ld [$d826], sp
    rlca
    ldh [rNR30], a
    ld b, b
    ld [hl+], a
    jp z, $c02a

    dec a
    ret


    inc h
    jr z, jr_02b_7fc6

    jr jr_02b_7f16

jr_02b_7f72:
    inc hl
    cp e
    ld [bc], a
    db $d3
    inc c
    ldh a, [$84]
    ld a, [hl+]
    jp nz, Jump_02b_4f09

    nop
    ld l, a
    nop
    ld l, a
    nop
    rst $38
    nop
    dec hl
    nop
    rst $38
    db $10
    adc h
    nop
    ld b, a
    ld d, b
    db $e3
    ld [$00b2], sp
    jr nz, jr_02b_7f92

jr_02b_7f92:
    inc h
    nop
    ld b, d
    nop
    jr nz, jr_02b_7f98

jr_02b_7f98:
    inc d
    nop
    add d
    nop
    jr nz, jr_02b_7f9e

jr_02b_7f9e:
    ld bc, $4000
    cp [hl]
    ldh [rNR22], a
    ld h, b
    sbc [hl]
    add b
    dec a
    ldh [rNR33], a
    jr c, jr_02b_7f72

    rrca
    ret nc

    add b
    ld e, [hl]
    add b
    ld e, e
    ldh a, [rTAC]
    ldh a, [rIF]
    db $10
    rst $28
    nop
    ei
    nop
    or a
    nop
    sub $08
    or a
    nop
    ld a, d
    ld [$41a7], sp
    ld a, [hl]

jr_02b_7fc6:
    and e
    xor d
    pop bc
    adc $01
    ld l, [hl]
    inc bc
    db $e4
    inc bc
    ldh [$03], a
    db $fc
    inc bc
    db $fc
    ld b, $f8
    rlca
    ld hl, sp+$07
    cp b
    dec b
    sbc b
    ld l, a
    ld h, b
    ld c, a
    ld b, c
    dec c
    or b
    dec e
    ldh [$1f], a
    ld h, b
    dec de
    ldh [rNR22], a
    ldh [$2f], a
    add b
    or a
    add b
    ld a, $02
    ld a, $00
    ld e, a
    jr @+$78

    sub b
    ld a, a
    nop
    ld a, a
    nop
    cp a
    ld b, b
    ldh [rNR30], a
    nop
    rst $28
