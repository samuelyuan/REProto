SECTION "ROM Bank $0a6", ROMX[$4000], BANK[$a6]

    call z, $bfdd
    cp [hl]
    sbc [hl]
    sbc $dd
    call z, $e3f3
    pop hl
    db $eb
    sbc a
    call c, $bebf
    sbc h
    sbc $fc
    call $f3e3
    pop hl
    db $eb
    sbc a
    call c, $bfbe
    cp [hl]
    sbc $ce
    db $dd
    db $e3
    db $e3
    db $e3
    db $e3
    db $dd
    call c, Call_000_3e3e
    cp [hl]
    ld a, $d8
    call $e9cb
    di
    db $e3
    db $fd
    ret


    cp h
    sbc [hl]
    ld a, a
    ld a, $ff
    sbc h
    call $ffdd
    db $e3
    rst $38
    db $e3
    cp $dd
    rst $38
    ld a, $ff
    ld a, $fe
    sbc l
    rst $28
    reti


    rst $38
    db $e3
    push de
    db $eb
    cp [hl]
    db $dd
    rst $38
    ld a, $ff
    ld a, $ff
    nop
    rst $38
    nop
    cp e
    call z, Call_0a6_46fd
    ld a, a
    ld h, d
    jp hl


    inc sp
    cp l
    ld sp, $e5ff
    rst $38
    ld e, $ff
    rst $18
    db $fd
    xor $ef
    di
    rst $28
    db $db
    ld e, c
    cp a
    cp h
    ld a, a
    ret c

    rst $38
    rst $10
    rst $28
    ccf
    rst $30
    ld a, [$79ff]
    rst $38
    and [hl]
    rst $38
    rra
    rst $38
    xor $ff
    di
    rst $38
    dec e
    rst $38
    sbc $ff
    dec d
    rrca
    add b
    nop
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
    di
    rrca
    nop
    nop
    nop
    nop
    call z, $fff0
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $01
    rst $38
    nop
    rst $38
    nop
    db $fc
    rst $38
    jp hl


    db $eb
    ld e, [hl]
    sbc h
    ld a, $3e
    sbc h
    sbc $ed
    jp hl


    db $e3
    di
    call Call_000_1ecd
    ld a, $5e
    sbc [hl]
    rst $08
    call c, $e3f9
    di
    db $e3
    call z, Call_000_3fdd
    ld a, $9e
    sbc $ff
    call z, $f3e9
    db $fd
    db $e3
    adc $dd
    ld a, $3f
    sbc a
    sbc $ed
    sbc $f3
    pop hl
    di
    pop hl
    db $ed
    call z, Call_000_1e3f
    rst $38
    ld e, $ef
    call z, $e5e9
    di
    di
    db $e4
    db $ed
    sbc a
    sbc $1f
    ccf
    xor $de
    rst $18
    db $ec
    rst $28
    pop af
    rst $38
    pop hl
    db $fd
    adc $ff
    rra
    cp $1f
    db $fd
    adc $f6
    db $ed
    db $fd
    di
    rst $38
    push hl
    rst $38
    adc $df
    ccf
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $30
    call z, Call_000_227f
    db $fd
    ld de, $08de
    ld l, e
    adc h
    ld a, [$f5f5]
    db $eb
    rst $18
    dec a
    rst $38
    cp [hl]
    cp $dd
    rst $18
    rst $20
    rst $30
    rst $08
    or a
    ld a, a
    ld a, l
    ld a, [$f739]
    cp $9f
    ld l, a
    rst $38
    db $ec
    rst $38
    di
    rst $38
    dec de
    rst $38
    cp h
    rst $38
    jp c, $cfff

    rst $38
    db $76
    rst $38
    ld a, c
    rst $38
    dec [hl]
    rrca
    ret nz

    nop
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
    ld c, $01
    nop
    nop
    nop
    nop
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
    rst $38
    rra
    inc b
    nop
    cp $01
    nop
    rst $38
    rst $00
    rst $38
    sbc c
    cp e
    dec a
    dec a
    inc a
    cp h
    db $db
    db $db
    rst $20
    rst $20
    set 3, e
    dec a
    cp l
    cp h
    ld a, $9d
    cp l
    di
    set 4, e
    rst $20
    db $dd
    db $db
    dec a
    ld a, $3d
    cp [hl]
    sbc l
    db $dd
    rst $20
    db $eb
    rst $38
    db $e3
    rst $18
    db $dd
    rst $38
    ld a, $5d
    cp [hl]
    rst $38
    db $dd
    jp hl


    db $e3
    di
    db $e3
    db $dd
    call $3e1e
    cp [hl]
    ld e, $fd
    call $e9e7
    rst $20
    di
    set 5, l
    rst $38
    ld e, $fe
    ccf
    db $ed
    sbc $de
    db $ed
    rst $28
    di
    rst $38
    pop hl
    db $fd
    adc $ff
    rra
    rst $38
    ld e, $df
    db $ec
    rst $38
    push hl
    db $fd
    di
    or $ed
    ld l, a
    sbc $df
    ccf
    rst $28
    db $10
    rst $38
    nop
    rst $28
    ld de, $cc77
    xor $33
    ld c, a
    sbc b
    db $fd
    add $f5
    ld b, d
    sbc $ef
    rst $30
    jp hl


    db $d3
    rst $28
    ld a, a
    cp e
    cp $7d
    db $fd
    cp d
    cp $b7
    rst $28
    sbc a
    cp $ef
    ld sp, hl
    rst $30
    rst $08
    ei
    cp l
    ld a, a
    cp h
    rst $38
    jp c, $cfff

    rst $38
    ld [hl], a
    rst $38
    di
    rst $38
    ld e, l
    rst $38
    db $fc
    rst $38
    call c, $e7ff
    rst $38
    cpl
    rla
    ldh [rP1], a
    ret nc

    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $08
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $28
    rst $08
    rst $08
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $30
    rst $28
    rst $30
    rst $28
    rst $28
    rst $30
    rst $28
    rst $30
    rst $28
    rst $30
    rst $38
    rst $30
    scf
    rst $30
    rrca
    nop
    rrca
    nop
    rrca
    ldh a, [rIE]
    rst $30
    rst $30
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    di
    rst $30
    ei
    rst $30
    rst $38
    di
    rst $38
    di
    ei
    di
    di
    ei
    ei
    ei
    ei
    ei
    ei
    ei
    ld a, a
    nop
    ld bc, $09fe
    or $ff
    rst $38
    scf
    or a
    ld a, [hl]
    ld [hl], d
    db $fc
    ld a, c
    ccf
    or d
    rst $00
    rst $08
    rst $28
    sub a
    ld a, [hl-]
    ld a, e
    ld a, l
    ld a, h
    cp l
    ld a, d
    ei
    sub a
    rst $20
    rst $08
    db $db
    or a
    cp b
    ld a, a
    ld a, h
    inc a
    cp d
    cp c
    rst $00
    db $d3
    rst $20
    rst $00
    ei
    sbc e
    ld a, l
    inc a
    db $fd
    inc a
    sbc a
    cp c
    rst $38
    jp $e7e7


    sbc l
    db $db
    rst $38
    inc a
    rst $38
    inc a
    rst $18
    reti


    rst $38
    set 7, e
    rst $20
    rst $38
    ret


    ld a, a
    sbc h
    rst $38
    ld a, $fe
    db $dd
    ei
    call $f3ef
    push af
    db $eb
    rst $38
    call c, Call_000_3ffe
    cp a
    ld e, [hl]
    rst $18
    db $ed
    di
    db $ed
    rst $38
    di
    cp $ed
    ld a, a
    sbc $df
    ccf
    rst $38
    nop
    rst $38
    nop
    db $ec
    inc de
    ld [hl], a
    call z, $33dd
    ld [$3a8c], a
    ld h, e
    rst $38
    nop
    rst $38
    ld a, $ff
    sbc $c7
    ei
    rst $30
    rst $08
    rst $38
    ld [hl], a
    db $fd
    ld a, [$f9ff]
    rst $08
    ld a, l
    ld a, [hl]
    cp a
    db $fc
    rst $18
    rst $00
    rst $38
    or a
    rst $38
    ld [hl], a
    rst $38
    ld sp, hl
    rst $38
    ld l, l
    rst $38
    dec a
    rst $38
    ret c

    rst $38
    rst $08
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    ld l, e
    rst $38
    cp l
    rst $38
    ld l, d
    rra
    ldh a, [rP1]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, $01
    ld bc, $0100
    nop
    ccf
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    nop
    rst $38
    ret nz

    ccf
    add sp, -$01
    ld l, [hl]
    ld e, a
    ld l, [hl]
    db $ed
    rst $38
    di
    ld l, a
    push af
    ld l, a
    sbc [hl]
    sbc [hl]
    rra
    ld a, [hl]
    ld h, h
    ei
    pop af
    ei
    pop af
    ld a, [hl]
    ld h, $df
    adc a
    and [hl]
    cpl
    db $fd
    ld [hl], d
    ld a, c
    ld sp, hl
    ld a, a
    ld [hl], b
    cp a
    and a
    rst $08
    rst $08
    scf
    or a
    db $fd
    ld a, d
    rst $38
    ld a, b
    rst $38
    ld a, [hl-]
    rst $28
    sub a
    rst $30
    rst $08
    rst $18
    or e
    cp e
    ld a, h
    cp a
    ld a, h
    rst $18
    cp e
    ei
    rst $10
    rst $18
    rst $20
    or a
    db $db
    ld a, [hl]
    cp l
    cp l
    ld a, [hl]
    ei
    sbc l
    rst $38
    db $db
    rst $38
    rst $20
    rst $18
    db $eb
    cp a
    db $dd
    rst $38
    ld a, $dc
    cp a
    reti


    rst $28
    rst $30
    db $eb
    rst $28
    di
    rst $18
    db $ed
    ccf
    sbc $fe
    ccf
    rst $38
    nop
    rst $38
    nop
    db $ec
    inc sp
    ld [hl], a
    call z, $11ff
    db $fd
    ld b, [hl]
    xor a
    db $10
    rst $38
    nop
    cp a
    db $dd
    cp a
    ld a, l
    db $fd
    cp [hl]
    sbc a
    rst $30
    rst $28
    sbc a
    rst $38
    rst $28
    db $fc
    rst $28
    db $eb
    rst $30
    sbc e
    rst $38
    ld a, d
    rst $38
    ld [hl], c
    rst $38
    sbc [hl]
    rst $38
    ld e, $ff
    call c, $e7ff
    rst $38
    or a
    rst $38
    ld sp, hl
    rst $38
    ld l, a
    rst $38
    dec a
    rst $38
    db $fc
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    db $eb
    rra
    rst $38
    nop
    dec bc
    db $f4
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
    rst $18
    nop
    rst $38
    nop
    cp a
    nop
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
    db $fd
    cp a
    cp c
    cp d
    rst $30
    rst $00
    rst $30
    rst $00
    db $fd
    sbc e
    ccf
    inc a
    rst $18
    reti


    rst $38
    db $e3
    ei
    rst $20
    db $fd
    bit 3, l
    ld a, $bd
    ld e, [hl]
    ei
    db $ed
    rst $38
    di
    db $ed
    di
    rst $38
    ld c, h
    cp $9f
    rst $18
    ld l, [hl]
    ei
    push af
    rst $38
    pop af
    ld a, a
    push af
    ld a, a
    xor [hl]
    rst $28
    sbc a
    rst $30
    ld l, $76
    ld sp, hl
    ld a, [hl]
    ld sp, hl
    cp $37
    rst $38
    and a
    rst $38
    rst $08
    rst $38
    or a
    db $fd
    ld a, d
    ei
    ld a, h
    rst $30
    cp e
    sbc e
    rst $30
    rst $10
    rst $28
    ei
    rst $10
    ld sp, hl
    cp a
    db $fc
    ld a, a
    ld sp, hl
    cp a
    rst $38
    db $db
    rst $30
    rst $28
    di
    rst $28
    ld sp, hl
    rst $18
    ld a, [hl]
    cp a
    inc a
    rst $38
    rst $38
    nop
    rst $38
    nop
    call z, $d933
    ld h, [hl]
    ld a, e
    adc h
    cp l
    ld h, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    cp a
    db $db
    ld a, c
    rst $38
    ld a, d
    db $fd
    and a
    ld a, [hl]
    ld e, $ff
    sbc $ff
    db $dd
    rst $38
    rst $00
    rst $38
    scf
    rst $38
    db $f4
    rst $38
    db $eb
    rst $38
    db $db
    rst $38
    ld a, l
    rst $38
    cp d
    rst $38
    sbc [hl]
    rst $38
    cp $ff
    rst $20
    rst $38
    scf
    rst $38
    rst $30
    rst $38
    ld a, [$3cff]
    rst $38
    ld hl, sp-$01
    rst $38
    ld hl, sp-$0b
    ld [$00fc], sp
    adc [hl]
    nop
    adc [hl]
    nop
    rst $08
    nop
    adc $00
    rst $08
    nop
    rst $00
    nop
    rst $00
    nop
    rst $00
    nop
    ld b, a
    add b
    rst $20
    add b
    rst $20
    add b
    and a
    ret nz

    and e
    ret nz

    rst $20
    ret nz

    db $e3
    ret nz

    db $e3
    ret nz

    db $e3
    ret nz

    di
    ret nz

    di
    ret nz

    pop de
    ldh [$f1], a
    ldh [$f3], a
    ldh [$f3], a
    ldh [$fb], a
    ldh [$f9], a
    ldh [$f8], a
    ldh [$e9], a
    ldh a, [$e9]
    ldh a, [$f8]
    ldh a, [$eb]
    db $10
    ei
    nop
    cp $00
    rra
    ldh [$f5], a
    ld hl, sp-$0b
    ld hl, sp-$03
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$06
    db $fc
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    cp $7d
    or $77
    xor [hl]
    cp a
    adc $ff
    ld [hl], $7f
    ld hl, sp-$01
    ld a, [hl-]
    rst $28
    rst $10
    rst $30
    rst $08
    cp a
    rst $10
    db $fd
    ld a, [hl-]
    rst $38
    inc a
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    rst $20
    ld sp, hl
    rst $18
    rst $38
    ld a, $fe
    db $dd
    db $fd
    db $eb
    rst $38
    di
    pop af
    rst $28
    ld l, h
    rst $18
    cp $1f
    ld a, a
    xor $fb
    push af
    pop af
    rst $38
    ld h, a
    cp $fe
    cpl
    xor a
    rst $18
    and [hl]
    ld a, a
    ld hl, sp-$01
    ld hl, sp-$01
    or [hl]
    ld a, a
    ld [hl], a
    cp a
    rst $18
    rst $28
    sub a
    rst $38
    cp d
    ld a, a
    ld a, h
    rst $38
    dec sp
    rst $38
    rst $10
    rst $38
    rst $20
    rst $38
    jp $99ff


    rst $38
    ld a, $ff
    inc bc
    db $fc
    rst $38
    nop
    ld h, [hl]
    sbc c
    call z, $9933
    ld h, [hl]
    dec sp
    call nz, Call_000_18e7
    rst $38
    nop
    rst $38
    nop
    db $fc
    rst $28
    rst $38
    rst $20
    cp a
    rst $30
    rst $30
    rst $38
    pop af
    rst $38
    ret


    rst $38
    dec a
    rst $38
    ld a, h
    rst $38
    or [hl]
    rst $38
    sbc [hl]
    rst $38
    rst $18
    cp $e7
    db $fc
    adc $fd
    ld a, h
    ei
    ld sp, hl
    rst $30
    ei
    rst $20
    ld d, a
    rst $28
    xor a
    rst $18
    rst $18
    cp a
    sbc a
    ld a, a
    cp a
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
    ld a, a
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    cp a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    cp a
    ccf
    cp a
    ccf
    rst $38
    ccf
    rst $18
    ccf
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
    rst $28
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $28
    rrca
    xor $0f
    rst $38
    inc c
    ei
    inc b
    and $19
    pop af
    rrca
    di
    rrca
    rst $30
    rrca
    rst $38
    rlca
    ei
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    ei
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $017f
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    ld bc, $01fe
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
    rst $38
    nop
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
    cp a
    ld b, b
    cp a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    ret nz

    rra
    ldh [$5f], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$7f], a
    ldh [$6f], a
    ldh a, [$8f]
    ldh a, [$2f]
    ldh a, [$7f]
    ldh a, [$f7]
    ld hl, sp+$77
    ld hl, sp-$59
    ld hl, sp-$39
    ld hl, sp-$6d
    db $fc
    or a
    ld hl, sp+$73
    db $fc
    sbc e
    ld h, h
    rst $38
    nop
    ret


    ld [hl], $88
    ld [hl], a
    sbc c
    ld h, [hl]
    sbc c
    ld h, [hl]
    scf
    ret z

    rst $38
    nop
    rst $38
    nop
    cp a
    cp $db
    db $fc
    rst $08
    db $fc
    ld l, l
    ld a, [$f2ed]
    ei
    rst $20
    di
    rst $08
    ld h, a
    rst $18
    rst $08
    cp a
    rst $18
    ccf
    cp a
    ld a, a
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
    db $fc
    rst $38
    ld hl, sp-$11
    ldh a, [$fe]
    pop bc
    ld sp, hl
    rlca
    di
    rrca
    rst $28
    rra
    sbc a
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
    db $fd
    cp $ff
    ldh a, [$bf]
    ret nz

    ld a, a
    add b
    inc a
    jp $df2f


    ccf
    rst $38
    xor $ff
    cp a
    rst $38
    db $dd
    rst $38
    ld l, a
    rst $38
    cp e

Call_0a6_46fd:
    ld a, a
    ld a, [hl]
    rst $38
    scf
    rst $38
    rst $28
    ld a, a
    or $7f
    cp e
    ld a, a
    cp l
    ld a, a
    cp a
    ld a, a
    cp e
    ld a, a
    rst $30
    ccf
    ei
    ccf
    call $de3f
    ccf
    rst $18
    ccf
    db $dd
    ccf
    ei
    rra
    db $fd
    rra
    rst $28
    rra
    rst $28
    rra
    rst $38
    rra
    xor $1f
    rst $38
    rrca
    rst $38
    rrca
    or a
    ld c, a
    or a
    ld c, a
    cp a
    ld c, a
    rst $10
    cpl
    rst $18
    daa
    rst $10
    cpl
    db $d3
    cpl
    db $d3
    cpl
    rst $08
    scf
    db $eb
    rla
    xor a
    ld d, e
    rst $28
    inc de
    and c
    ld e, a
    pop hl
    rra
    pop af
    rrca
    rst $00
    dec sp
    push de
    dec hl
    rst $10
    add hl, hl
    rst $10
    add hl, hl
    ldh [$1f], a
    db $10
    rst $28
    add b
    ld a, a
    sbc c
    ld h, [hl]
    sbc c
    ld h, [hl]
    ccf
    ret nz

    rst $38
    nop
    cp $01
    sbc a
    ld a, a
    ccf
    rst $38
    rst $38
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ld a, a
    ccf
    ccf
    ccf
    cp a
    ccf
    cp a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    rst $18
    sbc a
    adc a
    rst $18
    rst $18
    rst $08
    rst $08
    rst $08
    rst $28
    rst $08
    rst $28
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    db $e3
    rst $30
    rst $30
    di
    di
    di
    ei
    di
    ld sp, hl
    di
    ei
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    db $fc
    ld sp, hl
    db $fd
    db $fc
    db $fd
    db $fc
    db $fc
    db $fc
    cp $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    cp $81
    db $fd
    inc bc
    di
    rrca
    rst $08
    ccf
    cp a
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
    ei
    db $fc
    rst $38
    ldh [rIE], a
    add b
    rst $38
    nop
    ld sp, hl
    rlca
    rst $08
    ccf
    cp l
    ld a, a
    ei
    rst $38
    ld [hl], e
    rst $38
    ld [hl], l
    rst $38
    cp $ff
    cpl
    rst $38
    adc a
    rst $38
    add $ff
    cp c
    rst $38
    cp b
    rst $38
    ld a, e
    rst $38
    rst $10
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    jp hl


    rst $38
    ld e, [hl]
    rst $38
    cp [hl]
    rst $38
    sbc l
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    push af
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $08
    rst $38
    or $ff
    cp d
    rst $38
    ld a, l
    rst $38
    cp e
    rst $38
    db $db
    rst $38
    rst $30
    rst $38
    db $eb
    rst $38
    ld a, l
    rst $38
    db $dd
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
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
    sbc a
    ld a, a
    rlca
    rst $38
    ld [bc], a
    db $fd
    sbc b
    ld h, a
    sbc b
    ld h, a
    rst $38
    nop
    rst $38
    nop
    rst $20
    jr @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ld [hl], b
    rra
    ld h, b
    ld a, a
    nop
    ld a, [hl]
    ld bc, $07f9
    rst $30
    rrca
    rst $08
    ccf
    ccf
    sbc a
    rra
    sbc a
    sbc a
    sbc a
    sbc a
    rst $08
    rst $18
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $20
    rst $28
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $30
    db $e3
    rst $30
    di
    di
    di
    di
    di
    ld sp, hl
    di
    ei
    ld sp, hl
    ei
    ld hl, sp-$01
    ldh a, [$bf]
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    rlca
    rst $28
    rra
    ccf
    rst $38
    rst $38
    rst $30
    add a
    rst $38
    rst $00
    rst $38
    jp $dcff


    rst $38
    cp [hl]
    rst $38
    dec a
    rst $38
    add hl, de
    rst $38
    ld c, e
    rst $38
    di
    rst $38
    db $f4
    rst $38
    rst $28
    rst $38
    ld c, a
    rst $38
    adc a
    rst $38
    and [hl]
    rst $38
    or d
    rst $38
    ld a, b
    rst $38
    ld a, e
    rst $38
    dec sp
    rst $38
    rst $10
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    db $dd
    rst $38
    cp [hl]
    rst $38
    ld a, $ff
    ld e, l
    rst $38
    push hl
    rst $38
    di
    rst $38
    pop af
    rst $38
    db $76
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    cp e
    rst $38
    ld a, d
    rst $38
    ld a, h
    rst $38
    cp c
    rst $38
    db $db
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    db $dd
    rst $38
    cp $ff
    ld e, a
    rst $38
    xor $ff
    push af
    rst $38
    db $fd
    rst $38
    ld sp, hl
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
    cp a
    ld a, a
    inc e
    db $e3
    ldh [$1f], a
    rst $38
    nop
    xor $11
    inc sp
    call z, Boot
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
    ld de, $1212
    ld [de], a
    ld [de], a
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0a6_4936

    ld a, [de]
    rrca
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a6_4947

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a6_4957

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a6_4967

jr_0a6_4936:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a6_4977

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_0a6_4947:
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
    ld [de], a
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_0a6_4957:
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    rrca
    ld e, d
    ld [de], a
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_0a6_4967:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    rrca
    ld l, b
    ld [de], a
    ld [de], a
    ld [de], a
    ld l, c
    ld l, d
    ld l, e

jr_0a6_4977:
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
    ld [de], a
    ld [de], a
    ld [de], a
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    rrca
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    ld [de], a
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
    ld [de], a
    ld [de], a
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
    ld [de], a
    ld [de], a
    ld [de], a
    sub e
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
    rrca
    jp nz, $c4c3

    push bc
    add $c7
    ld c, [hl]
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


    jp c, $db41

    call c, $dedd
    rst $18
    ld b, c
    ldh [$e1], a
    ld [c], a
    db $e3
    ld [de], a
    db $e4
    push hl
    rrca
    and $e7
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $4e
    rst $28
    ldh a, [rNR12]
    pop af
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$4e4e]
    ei
    db $fc
    db $fd
    cp $ff
    nop
    ld bc, $0241
    inc bc
    inc b
    dec b
    ld b, $4e
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    rlca
    ld [$09b4], sp
    ld b, c
    ld b, c
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld c, [hl]
    ld de, $1312
    rlca
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    rlca
    ld [bc], a
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
    ld b, $07
    inc bc
    inc bc
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
    rlca
    inc bc
    rlca
    rlca
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
    ld bc, $0101
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
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0000
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
    nop
    nop
    nop
    jr nz, jr_0a6_4af7

jr_0a6_4af7:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0008], sp
    ld [$0808], sp
    ld [$0008], sp
    nop
    nop
    nop
    ld [$0008], sp
    ld [$0000], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0000], sp
    nop
    nop
    ld [$0808], sp
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
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
    ccf
    rst $38
    adc a
    rst $38
    rst $00
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    cp $ff
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
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    sub a
    rst $38
    sub a
    rst $38
    inc de
    rst $38
    rrca
    pop af
    ldh a, [rIF]
    rst $38
    ldh [rIE], a
    ld c, $7c

jr_0a6_4be9:
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, $c1
    ld a, $c1
    inc a
    jp $e11e


    rrca
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
    ld hl, sp+$0f
    ldh a, [rIE]
    nop
    nop
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    db $f4
    rra
    db $e4
    ccf
    add $3f
    rst $00
    ld a, a
    add a
    cp a
    ld b, a
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
    rlca
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    cp $01
    db $fd
    inc bc
    ld a, [c]
    ld c, $e8
    jr jr_0a6_4be9

    ld [hl], b
    ld h, b
    ldh [$80], a
    add b
    nop
    nop
    add b
    nop
    ld hl, sp+$00
    ldh a, [rP1]
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
    nop
    nop
    nop
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
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    pop hl
    rra
    rst $38
    ld bc, $ff01
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $81ff
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    pop bc
    ccf
    pop af
    rrca
    pop af
    rrca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    db $fd
    inc bc
    rst $00
    jr c, @+$3f

    jp Jump_000_03fd


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
    db $fd
    inc bc
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $80
    add c
    ret nz

    pop bc
    ret nz

    pop bc
    ldh [$e1], a
    add sp, -$17
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    ei
    rlca
    rst $20
    inc e
    rst $18
    jr nc, jr_0a6_4d5e

    ldh [$cf], a
    ldh a, [rIE]
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
    or a
    ld c, b
    ccf
    ret nz

    dec bc
    db $f4
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    cp a
    rst $38
    add e
    rst $38
    add e
    rst $38

jr_0a6_4d5e:
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
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
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    dec b
    ld a, [$f40b]
    rrca
    ldh a, [rIF]
    ldh a, [$0b]
    db $f4
    dec b
    ld a, [$f00f]
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$06
    ld sp, hl
    ld b, $f9
    dec b
    ld a, [$fe01]
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
    ldh [rIE], a
    ld a, h
    rst $38
    rst $38
    rst $38
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$04
    rlca
    inc bc
    ld b, a
    inc bc
    rst $10
    inc bc
    ld d, a
    inc bc
    rst $10
    inc bc
    ld e, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh a, [rP1]
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
    rst $30
    nop
    rst $38
    nop
    ccf
    nop
    ld [$ea00], a
    nop
    db $fd
    nop
    db $dd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec a
    nop
    cp $00
    cp $00
    nop
    nop
    jp $e13f


    rra
    pop hl
    rra
    pop af
    rrca
    ld sp, hl
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    ld l, [hl]
    sub c
    ld c, $f1
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    db $fc
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
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc d
    db $eb
    ccf
    ret nz

    ld a, e
    add h
    rst $38
    nop
    ld a, a
    add b
    cp $01
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
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
    rst $28
    db $10
    rst $28
    db $10
    or a
    ld c, b
    ld d, e
    xor h
    inc hl
    call c, $f40b
    dec b
    ld a, [$fc03]
    rlca
    ld hl, sp+$01
    cp $02
    db $fd
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    pop bc
    cp $c0
    rst $38
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    cp $fe
    add b
    rst $38
    rla
    add sp, $1f
    ldh [$80], a
    inc d
    ld bc, $01a8
    ld b, b
    dec bc
    add b
    rrca
    nop
    rrca
    add b
    cpl
    nop
    dec l
    add b
    adc $31

jr_0a6_4ef2:
    db $ec
    inc de
    db $ed
    inc de
    push hl
    dec de
    add c
    ld a, a
    add a
    ld a, a
    adc h
    ld a, h
    adc b
    ld a, b
    jr nc, jr_0a6_4ef2

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
    rst $38
    nop
    db $fc
    nop
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
    rst $38
    nop
    db $e4
    nop
    sub $00
    sbc a
    nop
    sbc a
    nop
    rst $18
    nop
    xor b
    nop
    jp c, $ca00

    nop
    ld l, l
    nop
    db $f4
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld bc, $e100
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
    rst $38
    rrca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    ldh [$1f], a
    ld [hl], h
    adc e
    ld hl, sp+$07
    rst $38
    nop
    db $fd
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    cp $00
    cp $00
    cp $00
    cp $00
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$87], a
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$7d
    db $fc
    add c
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $38
    add a
    ld hl, sp-$7f
    cp $80
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0e
    ldh a, [$3c]
    ret nz

    ld a, b
    add b
    ldh a, [rP1]
    rra
    ldh [$7f], a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    ld l, l
    nop
    rla
    nop
    add a
    nop
    inc b
    nop
    and b
    nop
    add sp, $00
    nop
    nop
    ret nc

    nop
    inc l
    nop
    ret nz

    nop
    add h
    nop
    stop
    nop
    nop
    adc b
    nop
    ld d, b
    nop
    ld c, b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rIE], a
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
    rst $28
    rst $38
    db $eb
    rst $38
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    or h
    ld c, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    xor $00
    db $fc
    nop
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
    nop
    add b
    nop
    add b
    nop
    add b
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
    ld a, a
    add b
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
    rst $38
    nop
    ld a, a
    add b
    rrca
    ldh a, [$e0]
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
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
    cp $00
    rst $08
    nop
    ld [hl], l
    nop
    sbc e
    nop
    rst $38
    nop
    db $fc
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
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $00ff
    rst $38
    and c
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
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rst $38
    inc bc
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
    rst $38
    nop
    rst $38
    ldh a, [rIF]
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
    cp a
    nop
    dec de
    nop
    ld de, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ret z

    nop
    ret z

    nop
    xor h
    nop
    daa
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
    ld sp, hl
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    pop hl
    nop
    pop hl
    nop
    pop af
    nop
    ldh a, [rP1]
    db $f4
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    rst $38
    nop
    cp $00
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
    nop
    rst $38
    ld a, a
    add b
    push af
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
    ld [hl], a
    nop
    db $ed
    nop
    pop hl
    nop
    and a
    nop
    rst $28
    nop
    ld hl, $0100
    nop
    ld b, $00
    rlca
    nop
    ld l, a
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh [rIE], a
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
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    db $fc
    inc bc
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
    rst $38
    nop
    rst $38
    nop
    db $e3
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh [rP1], a
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
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    pop af
    nop
    ei
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
    and e
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    ld b, e
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    sub e
    ld l, h
    rst $38
    nop
    add h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    daa
    nop
    rrca
    nop
    rrca
    nop
    ld [bc], a
    nop
    ld bc, $0300
    nop
    ld bc, $0100
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $ff00
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [$1f], a
    ld hl, sp+$07
    cp $01
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
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
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

jr_0a6_5331:
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
    cp $01
    ld [bc], a
    nop
    rlca
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    db $fc
    inc bc
    rrca
    nop
    ld e, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    jr z, jr_0a6_5331

    cp $01
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
    ld a, [hl]
    ld bc, $037c
    db $fc
    inc bc
    ld sp, hl
    rlca
    pop bc
    ccf
    add c
    ld a, a
    add c
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
    ret nz

    nop
    ret nz

    nop
    ret nz

    inc b
    ret nz

    or c
    ret nz

    cp l
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
    cp $81
    cp h
    jp $ef90


    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add e
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
    ld a, a
    rst $38
    rra
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
    ld c, $ff
    add $3f
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], a
    ld [$003f], sp
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
    ccf
    inc bc
    inc a
    rlca
    cp b
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ldh [$3f], a
    ld hl, sp+$3f
    rst $38
    ccf
    sbc a
    ld a, a
    rrca
    rst $38
    rst $38
    rrca
    ei
    rlca
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    jp Jump_000_1f3f


    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld hl, sp+$07
    rst $38
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
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$1f], a
    ld bc, $78ff
    rst $38
    rst $18
    ccf
    daa
    rst $18
    db $10
    rst $28
    inc b
    ei
    inc bc
    db $fc
    add c
    cp $20
    rst $38
    db $10
    rst $38
    ld [$26ff], sp
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rla
    nop
    sub a
    nop
    ld d, a
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
    ld hl, sp+$07
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
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
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    ldh [rIE], a
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
    ret nz

    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld h, a
    rst $38
    ld l, a
    rst $38
    rst $08

jr_0a6_5515:
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    sub e
    rst $38
    jr jr_0a6_5515

    cpl
    ldh a, [$bf]
    ld h, b
    xor a
    ld [hl], b
    cp a
    ld h, b
    ccf

jr_0a6_5527:
    ld h, b
    daa
    ld h, b
    nop
    ld h, b
    ld bc, $0160
    ld h, b
    ld b, b
    ld h, b
    ld b, b
    ld h, b
    nop
    ld h, b
    rst $18
    ld h, b
    sbc a
    ld h, b
    cp a
    ld h, b
    cp a
    ld h, b
    rst $18
    ld h, b
    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ret nz

    ccf
    ld h, b
    sbc a
    jr nc, jr_0a6_5527

    inc c
    di
    inc de
    db $fd
    adc a
    rst $38
    rst $28
    rst $38
    ld h, c
    ld e, $e0
    rra
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
    nop
    rst $38
    ld bc, $6fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    ei
    db $f4
    ei
    or $f9
    or $f9
    or $f9
    or $f9
    db $76
    ld sp, hl
    db $76
    ld sp, hl
    db $76
    ld sp, hl
    db $76
    ld sp, hl
    db $76
    ld sp, hl
    db $76
    ld sp, hl
    db $76
    ld sp, hl
    db $76
    ld sp, hl
    ld [hl], h
    ei
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    pop af
    cp $f0
    rst $38
    ret nc

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, $ff
    add h
    ld a, a
    ldh a, [rIF]
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
    ld a, h
    inc bc
    ld a, h
    inc bc
    inc a
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
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
    ldh a, [rIE]
    ld [$02ff], sp
    rst $38
    ld bc, $07ff
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
    ret z

    ccf
    jr @+$01

    jr c, @+$01

    jr c, @+$01

    ld a, b
    rst $38
    ld a, b
    rst $38
    ldh a, [rIE]
    pop af
    cp $f1
    cp $f3
    db $fc
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret z

    rst $38
    sbc b
    rst $38
    or b
    rst $38
    jr nc, @+$01

    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    cp $f1
    cp $f1
    cp $f3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    rst $20
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$31
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$9f]
    ldh [$93], a
    db $ec
    xor [hl]
    ret nz

    rst $20
    add b
    and $00
    xor [hl]
    ld b, b
    ld l, $c0
    ld l, $c0
    cpl
    ret nz

    rra
    ret nz

    ld e, a
    add b
    rra
    ret nz

    rra
    ret nz

    ld e, [hl]
    add b
    ld c, $c0
    ld e, [hl]
    add b
    ld c, [hl]
    add b
    ld e, $c0
    ld c, h
    add b
    ld c, b
    add h
    ld c, d
    add h
    adc $00
    ld c, b
    add h
    ret c

    inc b
    ret c

    inc b
    ld e, b
    add h
    ld e, b
    add h
    ret c

    inc b
    ret c

    inc b
    ret c

    inc b
    ld e, b
    add h
    ret c

    inc b
    ret nc

    inc c
    ld d, b
    adc h
    ret nc

    inc c
    ld [de], a
    call z, $cc12
    ld a, [c]
    call z, $ff3f
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
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
    rst $18
    inc b
    db $d3
    ld a, [bc]
    pop de
    add hl, bc
    ret nc

    ld c, $d0
    ld c, $d0
    rst $08
    db $10
    add $19
    nop
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    ld e, a
    and b
    scf
    ret z

    dec a
    jp nz, $ec13

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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    inc d
    db $e3
    add hl, sp
    add $39
    add $71
    adc [hl]
    pop hl
    ld e, $e3
    inc e
    call nz, $853b
    ld a, d
    adc c
    db $76
    dec bc
    db $f4
    ld b, $f9
    inc b
    ld a, [$fc02]
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rSVBK]
    add b
    ld [hl], c
    add b
    ld e, h
    and d
    ld b, h
    cp h
    ld l, b
    sub b
    ld [hl], b
    add b
    ld d, b
    and c
    ld [hl], d
    add e
    ld c, b
    or [hl]
    ld [bc], a
    cp h
    and $18
    sbc [hl]
    ld h, b
    ld a, [$fa40]
    nop
    ld a, [$f200]
    nop
    ld [c], a
    nop
    db $e4
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    nop

jr_0a6_577e:
    ld d, e
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
    cp $00
    ld a, d
    nop
    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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

    add b
    ld a, b
    ld hl, sp+$1c
    ld hl, sp+$1c
    cp $3f
    cp $3f
    cp $7c
    cp $fe
    db $fc
    ld a, [$fafc]
    ld hl, sp-$0d
    ld hl, sp-$1d
    ldh a, [$f3]
    ldh [$c7], a
    ldh [$e7], a
    ret nz

    scf
    ret nz

    ld [hl], a
    add b
    ccf
    ret nz

    sbc a
    ld h, b
    ld c, a
    jr nc, jr_0a6_577e

    jr jr_0a6_57d9

jr_0a6_57d9:
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
    rst $38
    nop
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
    ret z

    ccf
    rst $38
    ccf
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
    sbc a
    ld a, a
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    cp $02
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$10
    ldh a, [rNR41]
    ldh [$61], a
    ret nz

    ld [bc], a
    pop bc
    inc b
    add d
    nop
    inc b
    nop
    ld [$1000], sp
    db $10
    ld hl, $4320
    ret nz

    rlca
    add c
    ld [bc], a
    db $10
    inc c
    nop
    jr jr_0a6_5827

jr_0a6_5827:
    jr nc, jr_0a6_582a

    ld h, b

jr_0a6_582a:
    ld bc, $01c0
    add b
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
    dec bc
    nop
    rlca
    nop
    dec c
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rra
    nop
    dec bc
    nop
    dec bc
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    rra
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    rra
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
    db $fd
    nop
    cp a
    nop
    cp [hl]
    nop
    dec a
    nop
    jr jr_0a6_5872

jr_0a6_5872:
    stop
    nop
    nop
    stop
    ld de, $1000
    nop
    stop
    stop
    stop
    stop
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
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    dec bc
    nop
    rla
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
    ld a, a
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
    nop
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
    cp $0a
    db $fc
    ldh [rNR23], a
    and l
    ld [hl], b
    ld h, e
    ret nz

    sub $80
    inc e
    ld hl, $ff01
    rst $38
    rst $38
    rst $38
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
    nop
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
    ld [bc], a
    ld [$0004], sp
    ld [$1000], sp
    db $10
    jr nz, jr_0a6_592b

    ld b, c
    ld b, b
    add e
    add l
    inc bc
    dec bc
    ld b, $17

jr_0a6_5913:
    inc c
    cpl
    jr jr_0a6_5976

    jr nc, jr_0a6_5958

    ldh [$7f], a
    ret nz

    rst $38
    add b
    ld a, a
    add b
    nop
    nop
    ld d, d
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_0a6_592b:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fd
    ld [bc], a
    and $19
    db $fc
    inc bc
    rst $08
    jr nc, jr_0a6_5913

    dec [hl]
    ret nz

    ccf
    add b
    ld a, a
    add h
    ld a, e
    call nz, $ce3b
    ld sp, $01fe
    rst $38
    nop

jr_0a6_5958:
    rst $38
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

jr_0a6_5976:
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
    rst $38
    nop
    rst $38
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    add sp, $17
    ldh a, [rIF]
    ldh a, [rIF]
    ret nz

    ccf
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    cp $ff
    ld hl, $40de
    rra
    cp d
    dec b
    ld d, b
    rrca
    and c
    rra
    ld hl, $707f
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rrca
    inc b
    rra
    dec bc
    inc a
    rla
    ld a, b
    cpl
    ldh a, [$7f]
    ret nz

    rst $38
    add b
    rst $38
    nop
    nop
    nop
    and a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    di
    inc c
    ld sp, hl
    ld b, $f9
    ld b, $e1
    ld e, $e9
    ld d, $f0
    rrca
    ldh a, [rIF]
    ret nz

    ccf
    ld [hl], b
    adc a
    sub b
    ld l, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    inc a
    rst $38
    ld l, $ff
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    xor h
    ld e, a
    call z, $e83f
    rra
    ldh [$1f], a
    ldh a, [rIF]
    ldh [$1f], a
    ld hl, sp+$0f
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
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
    ldh [$1f], a
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
    inc e
    cp $22
    cp $20
    cp $28
    db $fc
    xor h
    db $fc
    inc c
    db $fc
    db $fc
    ld e, l
    ld e, l
    rst $38
    dec e
    rst $38
    ld c, b
    cp a
    add hl, bc
    rst $38
    ld e, h
    rst $38
    rst $08
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
    rra
    rst $38
    ld bc, $7fff
    nop
    sub a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $1300
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
    rst $38
    nop
    rst $38
    nop
    ld e, a
    and b
    ld a, a
    add b
    ld d, [hl]
    xor c
    ld [hl], h
    adc e
    ld [hl+], a
    db $dd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    add h
    ei
    ld b, $f9
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$65
    sbc d
    add hl, hl
    sub $0b
    db $f4
    ld bc, $01fe
    cp $13

jr_0a6_5b09:
    db $ec
    ld c, $f1
    rlca
    ld hl, sp+$03
    db $fc
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08f7], sp
    rst $30
    inc c
    di
    jr jr_0a6_5b09

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ei
    nop
    rst $30
    nop
    rst $20
    nop
    rst $00
    nop
    adc a
    nop
    ld c, $0c
    ld c, $08
    inc c
    db $10
    jr jr_0a6_5b79

    ld sp, $7120
    ld h, b
    di
    ldh [$f7], a
    db $e3
    rst $28
    ldh [rIE], a
    ret c

    rst $38
    ld d, b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a6_5b79:
    rst $38
    cp $ff
    cp $ff
    db $e4
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
    rra
    nop
    ld e, a
    nop
    rrca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    sbc a
    nop
    ld a, a
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
    cp $01
    db $ec
    inc de
    jp z, $a035

    ld e, a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    inc c
    rst $38
    db $10
    rst $38
    ld b, d
    db $fd
    inc bc
    db $fc
    ld [bc], a
    db $fd
    add a
    ld a, b
    add a
    ld a, b
    adc [hl]
    ld [hl], c
    ld c, [hl]
    or c
    rst $00
    jr c, jr_0a6_5c1e

    or d
    call z, $8c33
    ld [hl], e
    call z, $9833
    ld h, a
    call c, $d823
    daa
    ldh a, [rIF]
    ret nc

    cpl
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
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
    add b
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld sp, hl
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

jr_0a6_5c1e:
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
    cp $01
    db $fc
    inc bc
    db $f4
    dec bc
    ldh [$1f], a
    ld h, b
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
    nop
    rst $38
    ld b, b
    cp a
    rlca
    rst $38
    rra
    rst $38
    dec a
    rst $38
    ld c, c
    rst $38
    ld [$08ff], sp
    rst $38
    add b
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    inc bc
    db $fc
    add d
    ld a, l
    nop

jr_0a6_5c61:
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, [bc]
    push af
    ld b, $f9
    rrca
    ldh a, [$03]
    db $fc
    nop
    rst $38
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
    ld b, c
    cp [hl]
    nop
    rst $38
    ld b, b
    cp a
    jr nz, jr_0a6_5c61

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rra
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    ld sp, hl
    rst $38
    db $fc
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
    ld d, $16
    rla
    jr jr_0a6_5cf4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a6_5d04

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0a6_5d14

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0a6_5d25

jr_0a6_5cf4:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a6_5d25

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_0a6_5d04:
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
    ld [hl-], a
    ld c, h
    ld c, l
    inc bc
    ld c, [hl]

jr_0a6_5d14:
    ld c, a
    ld d, b
    inc bc
    ld d, c
    ld d, $52
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld [hl-], a
    ld [hl-], a
    ld d, a
    ld e, b
    inc bc
    ld e, c
    ld e, d

jr_0a6_5d25:
    ld e, e
    ld e, h
    inc bc
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
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
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl-], a
    ld [hl-], a
    ld [hl], d
    ld [hl], e
    inc bc
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl-], a
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
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
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
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
    inc bc
    xor c
    inc bc
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    ld [hl-], a
    ld [hl-], a
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
    ld [hl-], a
    ld [hl-], a
    ld [hl-], a
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


    jp z, Jump_000_3232

    set 1, h
    call $cfce
    ret nc

    ld d, $d1
    jp nc, $d316

    call nc, $d6d5
    rst $10
    ld [hl-], a
    ret c

    reti


    jp c, $dcdb

    db $dd
    ld d, $16
    sbc $16
    ld d, $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $03
    rst $20
    add sp, -$17
    jp hl


    ld [$ebe9], a
    db $ec
    db $ed
    xor $ef
    ldh a, [rNR21]
    ld d, $16
    pop af
    ld a, [c]
    di
    db $f4
    push af
    push af
    or $f7
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $2929
    add hl, hl
    add hl, hl
    add hl, hl
    add hl, hl
    ld [bc], a
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0000
    ld bc, $0001
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
    ld bc, $0001
    ld [bc], a
    ld [bc], a
    rlca
    inc bc
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0001
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    rlca
    rlca
    rlca
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
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    rlca
    nop
    nop
    nop
    ld [$0008], sp
    nop
    nop
    nop
    nop
    nop
    rrca
    dec bc
    rrca
    dec bc
    rrca
    push bc
    ld a, $c3
    ld a, $e2
    rra
    ld [hl+], a
    ld e, a
    ld [hl], c
    ccf
    add hl, sp
    ccf
    jr jr_0a6_5f6d

    inc c
    rra
    inc b
    dec bc
    ld a, [bc]
    ld bc, $010e
    ld e, $21
    ld h, $19
    sbc [hl]
    ld bc, $81ce
    ld c, d
    pop bc
    ld [$ee61], a
    ld sp, $19f6
    xor $19
    rst $30
    inc c
    db $fc
    rlca
    rst $38

jr_0a6_5f6d:
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
    nop
    ei
    inc b
    ei
    inc b
    ld sp, hl
    ld b, $d1
    ld l, $e1
    ld e, $e0
    rra
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
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
    ldh a, [rIF]
    pop af
    rrca
    ldh [$1f], a
    pop hl
    rra
    pop hl
    rra
    pop hl
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    jp $c33f


    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    add a
    ld a, a
    add [hl]
    ld a, a
    adc h
    ld a, a
    adc b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc c
    di
    ld [$38f7], sp
    rst $00
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
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
    add b
    ld a, a
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$f9]
    ld a, [hl]
    cp e
    ld a, h
    cp e
    ld a, h
    ld e, e
    cp h
    dec de
    db $fc
    sbc e
    db $fc
    adc e
    db $fc
    set 7, h
    db $eb
    db $fc
    ei
    db $fc
    ei
    db $fc
    ld h, b
    rst $38
    ld a, a
    ldh [$6f], a
    ldh a, [$6f]
    ldh a, [$6f]
    ldh a, [$7f]
    ldh [$3f], a
    ldh [$2f], a
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$2a]
    ldh a, [$0c]
    ldh a, [$2a]
    ldh a, [$8e]
    ld [hl], b
    adc d
    ld [hl], b
    ld a, [bc]
    ldh a, [$8e]
    ld [hl], b
    ld c, $f0
    ld c, $f0
    adc h
    ld [hl], b
    adc a
    ld [hl], b
    adc h
    ld [hl], b
    dec c
    ldh a, [$8c]
    ld [hl], b
    ld c, $f0
    adc a
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$02
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
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, e
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
    rst $38
    rst $38
    rst $38
    sbc a
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
    ldh a, [rIE]
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
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp d
    ld b, l
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jp $ff3c


    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp e
    nop
    push de
    nop
    ld l, c
    nop
    jr nz, jr_0a6_6160

jr_0a6_6160:
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
    ld d, b
    nop
    ldh [rP1], a
    push hl
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
    nop
    nop
    nop
    rra
    db $10
    rra
    ld a, [bc]
    rra
    ld a, [bc]
    rra
    dec d
    rra
    ld a, [de]
    rra
    dec d
    rra
    ld a, [bc]
    rrca
    dec c
    rrca
    ld c, $0f
    dec c
    rrca
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $38
    nop
    ld hl, sp-$70
    ld hl, sp+$40
    ld hl, sp-$60
    ld hl, sp-$0e
    db $fd
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, [$fcfd]
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
    rst $38
    rst $38
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
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38

jr_0a6_61f8:
    inc bc
    db $fc

jr_0a6_61fa:
    inc bc
    db $fc
    rlca
    ld hl, sp+$15
    ld [$e11e], a
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
    ld a, [$fc00]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_0a6_61fa

    jr c, jr_0a6_61f8

    inc a
    ret nz

    ccf
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
    cp a
    nop
    ccf
    nop
    ld d, l
    nop
    ld d, l
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld sp, $d200
    nop
    rst $38
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
    ld a, [bc]
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
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    add b
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    ld h, b
    rst $38
    sbc h
    rst $38
    ldh [rIE], a
    nop
    rst $38
    jr nz, jr_0a6_62c3

    nop
    rra
    nop
    rra
    nop
    rra
    nop
    rst $38
    ldh a, [rIF]
    ld b, b
    adc a
    rlca
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    rst $38
    nop
    nop
    rst $38
    inc e
    db $e3
    ld [$e0f7], sp
    rst $38
    ldh [rIE], a
    rst $20

jr_0a6_62c3:
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld [c], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$1f]
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
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ld [c], a
    nop
    ret nz

    nop
    add b
    nop
    ld bc, $be00
    nop
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
    dec l
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
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    rst $00
    jr c, @+$01

    nop
    rst $38
    nop
    rst $38
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
    dec d
    nop
    rlca
    nop
    inc c
    nop
    inc bc
    nop
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
    nop
    nop
    ld de, $4800
    nop
    jp z, $1500

    nop
    ld d, a
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
    nop
    nop
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
    cp $00
    cp $00
    cp $00
    add b
    inc de
    db $fc
    ld [$40ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    db $fc
    rst $38
    rra
    rst $38
    rrca
    ldh a, [rIE]
    nop
    ld bc, $03fe
    db $fc
    nop
    rst $38
    jr z, @+$01

    inc a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
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

jr_0a6_63c7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0a6_63cc:
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    add b
    rst $38
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    db $fd
    nop
    push af
    nop
    or $00
    and $00
    add sp, $00
    ld d, b
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    or b
    nop
    nop
    nop
    ld a, a
    nop
    rst $18
    jr nz, jr_0a6_63cc

    jr c, jr_0a6_63c7

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
    add c
    ld a, [hl]
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cpl
    nop
    ld a, e
    nop
    rrca
    nop
    inc bc
    nop
    add hl, de
    nop
    ld a, [bc]
    nop
    inc e
    nop
    ld e, $00
    sbc b
    nop
    cp e
    nop
    ld a, d
    nop
    jp hl


    nop
    db $fc
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
    ld a, a
    add b
    ld a, a
    add b
    scf
    ret z

    dec b
    ld a, [$fc03]
    ld b, b
    cp a
    nop
    rst $38
    ld a, [$f2ff]
    ld bc, $03fc
    db $fc
    inc bc
    cp $03
    rlca
    ei
    inc bc
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
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
    ldh [rIE], a
    rlca
    ld hl, sp+$0f
    ldh a, [$7f]
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
    ldh [rP1], a
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
    dec de
    db $e4
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    rra
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
    nop
    db $f4
    nop
    or h
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
    add sp, $00
    ld [$f100], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    ldh a, [rP1]
    ld a, [$f800]
    nop
    db $fc
    nop
    ccf
    ret nz

    rrca
    ldh a, [rTIMA]
    ld a, [$fa05]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    scf
    rst $08
    dec de
    rst $20
    ld e, $e3
    ld a, $c1
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
    ldh [rP1], a
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
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh a, [rIF]
    ld hl, sp+$07
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld sp, hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    di
    nop
    ld hl, sp+$00
    add sp, $00
    ldh [rP1], a
    ld [hl], b
    nop
    and b
    nop
    nop
    nop
    jr nz, jr_0a6_65a8

jr_0a6_65a8:
    ldh [rP1], a
    ldh [rP1], a
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
    ld b, b
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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
    add b
    nop
    ldh [rP1], a
    ldh [rP1], a
    db $f4
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
    rst $08
    jr nc, @+$21

    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
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
    ld a, h
    nop
    add b
    cp a
    ret nz

    rst $18
    ldh [rIE], a
    ldh [$ef], a
    ldh [$ef], a
    ret nz

    call nz, $efe0
    ldh [$ee], a
    rst $20
    rst $20
    rst $20
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    db $fc
    rst $20
    ld hl, sp-$19
    rra
    ldh [rIE], a
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
    nop
    ccf
    ret nz

    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $c1ff
    ccf
    pop hl
    rra
    ld sp, hl
    rlca
    db $fd
    inc bc
    cp $01
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
    ld a, [$f200]
    nop
    ldh [rP1], a
    xor b
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    adc $00
    rst $38
    nop
    rst $38
    nop
    dec h
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ccf
    nop
    rst $38
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    db $ed
    nop
    ld a, [$ff00]
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld hl, sp+$00
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
    db $fd
    nop
    cp $00
    ld hl, sp+$00
    db $f4
    nop
    rst $38
    nop
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
    ei
    rlca
    rst $30
    rrca
    rst $28
    rra
    rst $38
    rra
    rst $18
    ccf
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    cp $fe
    db $fc
    ld a, [$f5fc]
    ld hl, sp-$15
    ldh a, [$d7]
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    cp $00
    nop
    nop
    nop
    nop
    db $fc
    nop
    sbc $00
    cp [hl]
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
    nop
    nop
    ld bc, $0200
    nop
    rla
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add sp, $17
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$00
    pop bc
    nop
    cp $01
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    ret nz

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
    ld a, [$0b00]
    nop
    inc l
    nop
    or [hl]
    nop
    ret nz

    nop
    or b
    nop
    ldh [rP1], a
    add b
    nop
    and b
    nop
    jr nz, jr_0a6_678e

jr_0a6_678e:
    ld a, [hl]
    nop
    cp $00
    rst $38
    nop
    db $dd
    nop
    and a
    nop
    db $fd
    nop
    rst $30
    nop
    ld a, [$c500]
    nop
    ld l, a
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [rP1], a
    add b
    nop
    ld bc, $e000
    rst $38
    ldh [rIE], a
    pop bc
    cp $c3
    db $fc
    add a
    ld hl, sp-$72
    ldh a, [rNR23]
    ldh [rNR41], a
    ret nz

    ld b, h
    add b
    add b
    nop
    nop
    nop
    and b
    nop
    ld b, b
    nop
    ld c, b
    nop
    or h
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
    jp nz, $c000

    nop
    ld a, a
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    rst $28
    nop
    dec bc
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rrca
    nop
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, [$c005]
    ccf
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld hl, sp+$00
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
    ldh [rP1], a
    rst $38
    rlca
    db $e3
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
    nop
    rst $38
    db $10
    rst $28
    rst $38
    nop
    add sp, $00
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
    ld a, a
    nop
    xor d
    nop
    rst $10
    nop
    ld e, a
    nop
    rra
    nop
    nop
    nop
    inc b
    nop
    inc c
    nop
    rlca
    nop
    ld b, $00
    and l
    nop
    ld c, a
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    ld a, e
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    ei
    nop
    ld [hl], e
    nop
    ldh a, [rP1]
    cp a
    nop
    ld e, a
    nop
    rrca
    nop
    ei
    nop
    ld [hl], c
    add b
    and c
    nop
    ld [$d200], a
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
    ld bc, $0200
    ld bc, $030d
    rla
    rrca
    ccf
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    or $0f
    or [hl]
    rrca
    dec [hl]
    ld c, $e0
    rrca
    ld a, [$7e07]
    rlca
    ld e, h
    rlca
    jr c, jr_0a6_68bd

    jr c, jr_0a6_68bf

    jr c, jr_0a6_68c1

    jr c, jr_0a6_68c3

    add hl, sp

jr_0a6_68bd:
    ld b, $1b

jr_0a6_68bf:
    inc b
    dec de

jr_0a6_68c1:
    inc b
    dec de

jr_0a6_68c3:
    inc b
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
    rra
    nop
    rra
    nop
    rra
    nop
    ccf
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
    rst $30
    ld [$1fe0], sp

jr_0a6_68e6:
    pop hl
    ld e, $f1
    ld c, $f7
    ld [$08f7], sp
    rst $38

jr_0a6_68ef:
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
    ld [$18e7], sp
    rst $20
    jr jr_0a6_68e6

    jr jr_0a6_6939

    nop
    ld a, b
    nop
    ld a, h
    nop
    ld a, h
    nop
    db $fc
    nop
    db $fc
    nop
    pop af
    jr nz, jr_0a6_68ef

    ld h, a
    ldh [rSVBK], a
    ldh [$e0], a
    ldh [$30], a
    nop
    rst $38
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    ldh [$08], a
    nop
    nop
    rra
    rrca
    add c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, b
    rst $38
    nop
    rst $38
    ld a, a
    add b
    rst $38
    nop
    ld a, a

jr_0a6_6939:
    nop
    ccf
    nop
    inc de
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
    ld a, a
    nop
    rst $18
    nop
    ld a, a
    nop
    adc a
    nop
    rst $10
    nop
    ld l, a
    nop
    ccf
    nop
    rst $08
    nop
    xor d
    nop
    xor a
    nop
    sbc a
    nop
    rst $38
    nop
    rst $38
    nop
    push de
    nop
    sbc h
    nop
    ld a, [$f000]
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    db $e3
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
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    inc bc
    dec de
    rlca
    ccf
    rrca
    rst $18
    ccf
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    add c
    cp $87
    ld hl, sp+$1c
    db $e3
    inc a
    jp $35ca


    adc a
    ld [hl], b
    ld c, $f1
    inc e
    db $e3
    dec a
    jp nz, $c23d

    ld a, l
    add d
    ld a, l
    add d
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    cp $01
    db $fd
    ld [bc], a
    cp $01
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
    cp a
    ld b, b
    sbc [hl]
    ld h, c
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    push bc
    nop
    cp a
    nop
    ccf
    add b
    rrca
    ld h, b
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    db $10
    rrca
    ret nz

    rrca
    ret nz

    rrca
    nop
    ldh a, [rIF]
    db $f4
    dec bc
    db $fc
    rst $28
    db $fc
    rst $28
    db $fc
    rst $28
    db $fc
    rst $28
    db $ec
    rst $38
    xor $ff
    rlca
    rst $38
    dec c
    di
    rst $38
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
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rrca
    rlca
    rra
    rrca
    rra
    ccf
    cp a
    ld a, a
    cp $ff
    ldh a, [rIE]
    ldh a, [rIE]
    and b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    inc b
    ld hl, sp+$1b
    ldh [$2f], a
    ret nz

    rst $30
    ld [$ff00], sp
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38

jr_0a6_6a6a:
    inc e
    rst $38
    jr c, jr_0a6_6a6a

    ldh [$f0], a
    ld bc, $04c0
    jp $fc02


    ld [$20f0], sp
    ret nz

    ld b, d
    add c
    rla
    rst $08
    add hl, de
    cp $fa
    ldh [$fe], a
    nop
    rst $38
    nop
    rst $38
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
    rrca
    rlca
    ld [$0807], sp
    and a
    ld [$08f7], sp
    ld b, a
    ld [$0847], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    rlca
    ld [$0807], sp
    ld b, a
    ld [$0807], sp
    rlca
    ld [$0c03], sp
    ld [hl], b
    rrca
    ld [hl], a
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$0837], sp
    rst $00
    ld [$08f7], sp
    rst $30
    ld [$20ff], sp
    rst $30
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ld [hl], b
    ld a, a
    ld de, $077f
    rra
    rlca
    rrca
    rrca
    rrca
    ld [$0ffc], sp
    ld [hl], l
    rrca
    ccf
    nop
    ccf
    nop
    rra
    nop
    inc de
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    ret


    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $04fe
    ld hl, sp+$11
    ldh [$27], a
    ret nz

    sbc a
    nop
    ccf
    nop
    rst $38
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    call $6302
    sbc a
    inc c
    rst $38
    ld [hl-], a
    db $fc
    ret nz

    ldh a, [rP1]
    ret nz

    inc bc
    nop
    rrca
    nop
    ld [hl-], a
    inc c
    sub b
    ld h, b
    ld b, b
    add b
    ld [bc], a
    ld bc, $0f17
    reti


    ld a, $ef
    ldh a, [$3f]
    ret nz

    db $fc
    inc bc
    rlca
    nop
    adc a
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_0a6_6b67:
    rlca
    nop
    ld a, a
    ld a, a
    add a
    rst $38
    jr jr_0a6_6b67

    rra
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$17
    db $fc
    inc de
    db $fc
    inc de
    db $fc
    inc de
    cp $11
    cp $31
    jr nc, jr_0a6_6bb2

    jr nc, jr_0a6_6bb4

    jr nc, @+$32

    inc sp
    dec [hl]
    ld bc, $05fe
    ld a, [$f20f]
    ld [$fff7], sp
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$17
    ld hl, sp+$37
    db $fc
    inc sp
    db $fc
    inc sp

jr_0a6_6bb2:
    cp $31

jr_0a6_6bb4:
    rst $38
    jr nc, @+$01

    jr nc, @+$01

    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [c]
    rst $38
    add d
    rst $38
    nop
    rst $38
    rst $38
    nop
    adc a
    ld [hl], b
    push hl
    ld e, d
    ld a, c
    ld b, $1c
    inc bc
    inc bc
    nop
    ld bc, $0000
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
    ld bc, $7f00
    rst $38
    rst $38
    cp $4a
    db $fc
    dec bc
    ldh a, [rNR50]
    jp $0798


    jr nz, jr_0a6_6c1d

    ldh a, [rIF]
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
    inc c
    rst $38

jr_0a6_6c0c:
    jr nc, jr_0a6_6c0c

    ret c

    ldh a, [$a0]
    ret nz

    add c
    nop
    rlca
    nop
    rra
    nop
    db $fc
    nop
    ldh [rP1], a
    add b

jr_0a6_6c1d:
    nop
    ld [bc], a
    ld bc, $0f17
    ret c

    ccf
    db $e3
    db $fc
    ld a, [hl-]
    push bc
    ld a, [c]
    dec c
    ldh [$1f], a
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
    ld hl, sp+$07
    ret nz

    ccf
    ret nz

    ccf
    ccf
    nop
    ld a, b
    rlca
    nop
    ccf
    ld bc, $fffe
    rrca
    db $fc
    jp Jump_0a6_7f80


    nop
    rst $38
    nop
    nop
    nop
    nop
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp+$78
    db $fc
    ld a, h
    db $fc
    inc a
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
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
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
    ld a, a
    add b
    cpl
    ret nc

    rlca
    ld hl, sp-$3d
    inc a
    ld [hl], c
    ld c, $1c
    inc bc
    rlca
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
    rrca
    nop
    nop
    nop
    nop
    nop
    ld a, b
    add a
    ldh [$1f], a
    ret nz

    ccf
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
    inc bc
    rst $38
    dec c
    rst $38
    jr nc, @+$01

    ret nz

    rst $38
    db $10
    rst $28
    nop
    adc a
    ld [$0007], sp
    rrca
    ld b, b
    ccf
    ret nz

    ccf
    or b
    ld c, a
    nop
    rrca
    nop
    rrca
    rla
    rrca
    sbc b
    ld a, a
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
    rst $38
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
    ret nz

    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    nop
    rst $38
    rlca
    ld hl, sp-$01
    ld e, $f0
    rrca
    nop
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
    ccf
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
    rst $38
    nop
    rst $38
    add b
    ld a, a
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
    ccf
    ret nz

    rrca
    ldh a, [$c7]
    jr c, @+$75

    inc c
    dec e
    nop
    rlca
    nop
    inc bc
    nop
    nop
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    rrca
    nop
    ld [hl], e
    nop
    inc bc
    nop
    inc de
    nop
    ld bc, $0000
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
    ld b, b
    rst $38
    ld b, b
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    db $ec
    inc de
    rst $38
    nop
    nop
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
    ret nz

    ccf
    nop
    rst $38
    rra
    rst $20
    rst $38
    db $fc
    add c
    ld a, [hl]
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
    cp $01
    cp $01
    cp $01
    cp $fd
    ld [bc], a
    ld a, a
    add b
    nop
    rst $38
    ret nz

    ccf
    ccf
    ret nz

    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    nop
    ld bc, $0840
    jr nz, jr_0a6_6e05

jr_0a6_6e05:
    ld d, b
    nop
    jr nz, jr_0a6_6e09

jr_0a6_6e09:
    ld b, b
    ld [$0e20], sp
    nop
    ld c, $00
    pop af
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f1
    ld c, $f3
    ld c, $e7
    ld e, $e7
    ld e, $ef
    ld e, $e7
    ld e, $e7
    ld e, $ef
    ld e, $ef
    ld e, $ee
    rra
    db $ec
    rra
    xor $1f
    db $ec
    rra
    xor $1f
    db $ec
    rra
    ld l, h
    rra
    ld c, $3f
    rrca
    rra
    jp $e13f


    rra
    sub b
    ld l, a
    ld hl, sp+$07
    ldh [$1f], a
    cp $01
    ldh [$1f], a
    cp $01
    nop
    rst $38
    ret nz

    ccf
    ret nc

    cpl
    ldh a, [rIF]
    or $09
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fc
    inc bc
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    sbc a
    ld a, a
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
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
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    sbc a
    ld a, a
    ld sp, hl
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
    nop
    ld d, b
    nop
    xor d
    nop
    ld d, a
    nop
    xor d
    nop
    rlca
    nop
    ld [bc], a
    inc bc
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $6100
    ld de, $1f40
    nop
    rrca
    nop
    ld bc, $8006
    rlca
    add b
    rlca
    add b
    ld b, $a0
    ld bc, $00d8
    cp $00
    ei
    nop
    rst $38
    nop
    add b
    rst $38
    ldh [rIE], a
    jr c, @+$01

    ld b, $0f
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld bc, $00ff
    rst $38
    dec b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $01ff
    rst $38
    ld bc, $07ff
    rst $38
    adc e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld a, [$38fd]
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    ld d, l
    nop
    adc b
    nop
    add c
    ld b, b
    xor b
    nop
    sub l
    nop
    and b
    ld b, b
    dec b
    ret nz

    nop
    ld l, a

jr_0a6_6f81:
    ldh a, [rIE]
    ld [hl], b
    ld [hl], a
    ld hl, sp+$67
    ld hl, sp+$27
    ld hl, sp+$77
    ld hl, sp+$47
    cp b
    rst $38
    add b
    ld h, c
    ld c, $58
    add e
    ld b, e
    add b
    ld b, e
    nop
    rst $00
    nop
    add a
    nop
    ld l, e
    nop
    rst $30
    nop
    jr nz, jr_0a6_6f81

    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    ld b, e
    db $fc
    jr nc, jr_0a6_6fed

    inc c
    rra
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    inc c
    inc c
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    inc c
    inc c
    inc c
    inc c
    jr jr_0a6_6fea

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0a6_6ffa

    ld [hl+], a
    inc hl
    inc h
    inc c
    inc c
    dec h
    ld h, $27
    jr z, jr_0a6_700c

    ld a, [hl+]
    dec hl
    inc c
    inc l
    dec l
    ld l, $2f

jr_0a6_6fea:
    jr nc, jr_0a6_6ff8

    inc c

jr_0a6_6fed:
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0a6_702f

    ld a, [hl-]
    dec sp

jr_0a6_6ff8:
    inc a
    dec a

jr_0a6_6ffa:
    ld a, $0c
    inc c
    ccf
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
    inc c
    inc c

jr_0a6_700c:
    inc c
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
    inc c
    inc c
    inc c
    inc c
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
    ld h, h
    inc c
    inc c
    inc c
    ld h, l
    ld h, [hl]

jr_0a6_702f:
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
    inc c
    inc c
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
    inc c
    inc c
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
    inc c
    inc c
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
    inc c
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

    inc c
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


    inc c
    jp c, $dcdb

    db $dd
    inc c
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, $0c
    inc c
    inc c
    inc c
    inc c
    jp hl


    ld [$eceb], a
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    inc c
    ld hl, sp-$07
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    push af
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
    ld d, $00
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
    nop
    nop
    dec b
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
    nop
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
    dec b
    ld b, $03
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0008], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ei
    rst $38
    di
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
    rst $18
    ccf
    ld e, l
    or [hl]
    db $f4
    add c
    cp d
    push bc
    ldh [$c6], a
    add sp, -$30
    and $c0
    ret c

    ldh [$c2], a
    ldh [$c2], a
    ldh [$f8], a
    ldh [$f7], a
    ld hl, sp-$0d
    cp $0b
    or $ff
    ret nz

    cp $c0
    rst $38
    jp nz, $cfcf

    rst $38
    ld e, $fc
    ld hl, sp-$08
    ret nz

    rst $38
    ret nz

    ret nz

    nop
    ldh [rP1], a
    ei
    ld d, b
    ei
    ld e, b
    ei
    ld b, b
    ldh [rP1], a
    ldh [rP1], a
    rst $38
    ld h, b
    db $e4
    inc bc
    daa
    rst $38
    rst $38
    rst $38
    ei
    rst $30
    rst $38
    di
    xor a
    ld d, c
    db $eb
    ld [hl], l
    rst $38
    rst $38
    rrca
    rst $38
    ld e, $ff
    ld a, a
    db $fd
    rst $38
    db $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    ccf
    db $fc
    rrca
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
    rst $38
    ld sp, hl
    cp $fb
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$41
    db $fc
    inc bc
    db $fc
    ld b, c
    cp [hl]
    add c
    cp $60
    sbc a
    nop
    rst $38
    nop
    rst $38
    rst $18
    rst $38
    add c
    rst $38
    add e
    rst $38
    and a
    rst $18
    rst $08
    rst $38
    rst $18
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    db $fc
    rst $08
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
    rst $38
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
    add sp, -$01
    add sp, -$01
    ret


    cp $d8
    rst $38
    ld sp, hl
    cp $fc
    rst $38
    db $fd
    cp $f1
    cp $ec
    di
    push bc
    ld a, [hl-]
    scf
    ld b, b
    ld l, l
    sub d
    jr nz, jr_0a6_7331

    ld d, [hl]
    add c
    ld d, $01
    reti


    ld bc, $01d4
    ld [$c011], sp
    ld bc, $0118
    add d
    ld b, c
    reti


    nop
    rst $38

jr_0a6_7331:
    nop
    rst $30
    ld bc, $00e3
    add e
    nop
    rlca
    rlca
    rra
    rrca
    ccf
    inc e
    db $dd
    ld [$0031], sp
    ld bc, $0320
    ld hl, $072f
    cp a
    rrca
    cpl
    ld e, $38
    inc c
    add sp, $00
    ld hl, $c3c0
    add c
    adc e
    rlca
    cp a
    rrca
    sbc $3f
    ld a, e
    db $fc
    rst $30
    ld hl, sp-$21
    ldh [$81], a
    rst $38
    rlca
    rst $38
    ret


    cp $fd
    cp $fd
    cp $fb
    cp $f9
    cp $fd
    cp $ff
    cp $fd
    cp $fd
    cp $f9
    cp $f9
    cp $f0
    rst $38
    ld hl, sp-$01
    ld a, a
    rst $38
    ld a, a
    rst $38
    nop
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $3f
    cp c
    cp $fa
    rst $30
    rst $38
    rst $28
    rst $38
    db $fc
    rst $38
    ld hl, sp-$49
    rst $08
    rst $28
    sbc a
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
    ldh a, [rIE]
    ldh [rIE], a
    pop bc
    rst $38
    add e
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
    inc a
    rst $38
    ld a, l
    rst $38
    ld a, c
    rst $38
    ei
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    cp $fc
    ld a, [hl]
    db $fc
    ld a, [hl]
    db $fc
    ld a, [hl]
    db $fc
    ld a, [hl]
    db $fc
    ld a, a
    db $fc
    db $fc
    ld a, [hl]
    ld a, a
    cp $7f
    rst $38
    inc bc
    rst $38
    and $7f
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld e, l
    ld h, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    ld c, c
    rst $38
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
    rst $38
    ld a, a
    rst $38
    ld a, a
    pop af
    ld a, a
    ldh a, [$7f]
    cp b
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, a
    ld a, [$003d]
    rst $38
    ld hl, sp+$3f
    ld hl, sp+$3f
    jr c, @+$01

    ld a, b
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    cp $00
    rst $38
    ld bc, $ffff
    rst $38
    ld sp, hl
    rlca
    or $0f
    rst $38
    ld a, $ff
    rst $38
    rst $28
    ld a, a
    rst $38
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
    ld hl, sp-$01
    ldh a, [rIE]
    pop hl
    rst $38
    jp Jump_000_07ff


    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    sbc [hl]
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
    ei
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    ld l, c
    rst $38
    jp hl


    rra
    jp hl


    rla
    reti


    inc bc
    ld a, b
    add c
    cp [hl]
    ld bc, $01e0
    cp c
    nop
    inc bc
    nop
    pop hl
    add b
    add hl, de
    ldh [rSCY], a
    db $fd
    ld sp, hl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld hl, sp+$07
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, b
    or a
    ld a, e
    or a
    rst $28
    scf
    rst $28
    scf
    rst $18
    jr nc, jr_0a6_7530

    ld hl, sp+$03
    db $fc
    ld a, c
    cp $3d
    ld a, [$f97e]
    ld a, a
    ld sp, hl
    ld a, [hl]
    ld sp, hl
    ld a, [$b6fd]
    ld sp, hl
    cp $33
    cp $7f
    ldh a, [rIE]
    ldh [rIE], a
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38

jr_0a6_7530:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    rst $00
    rst $38
    add a
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
    rst $30
    rst $38
    ei
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    cp $ff
    rst $18
    rst $38
    rst $28
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
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
    rlca
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
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc a
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
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    cp a
    rst $18
    cpl
    rst $18
    xor a
    rst $18
    rst $28
    sbc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    xor a
    rst $18
    xor a
    rst $18
    cp a
    rst $08
    cpl
    rst $18
    rst $18
    rst $28
    rst $10
    rst $28
    rst $18
    rst $28
    inc c
    rst $38
    add e
    ld a, a
    adc a
    ld a, a
    xor a
    ld e, a
    rra
    rst $38
    ld a, a
    rst $38
    daa
    rst $38
    rst $10
    ld l, a
    ld d, a
    rst $28
    db $fd
    ld c, [hl]
    ld a, d
    db $fd
    ld c, e
    rst $38
    rst $08
    ccf
    sbc a
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, c
    rst $38
    ld [hl], a
    rst $38
    adc a
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    ret nz

    rst $38
    ccf
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
    db $fd
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp a
    rst $38
    cp $ff
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld a, b
    rst $38
    ld a, c
    rst $38
    sbc [hl]
    rst $38
    ei
    rst $20
    ld sp, hl
    di
    db $f4
    ld sp, hl
    db $fc
    ldh a, [$f1]
    cp $f2
    db $fd
    di
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
    rst $28
    rst $38
    rst $28
    rst $38
    cp $ff
    xor $ff
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    db $ed
    rst $30
    jp nz, $ebfd

    push af
    set 6, l
    call nz, $c4ff
    rst $38
    call nz, $84fe
    rst $38
    add a
    db $fc
    add h
    db $fc
    add h
    db $fc
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    db $fd
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fc
    ret nz

    db $fd
    ret nz

    db $fc
    jp $c7ff


    rst $38
    jp $c3ff


    rst $38
    jp $e3ff


    rst $38
    jp $e3ff


    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    db $e3
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rst $00
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
    di
    rst $38
    rst $18
    rst $20
    ld l, a
    sbc a
    cp a
    ld a, a
    di
    rst $38
    rst $38
    and c
    rst $38
    and c
    db $fd
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    reti


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
    db $fd
    rst $38
    sbc $ff
    rst $28
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp l
    rst $38

jr_0a6_770a:
    cp $ff
    rst $28
    rst $38
    rst $30
    rst $38
    di
    rst $38
    ld a, a
    rst $38
    inc a
    rst $38
    sbc $ff
    rst $08
    rst $38
    rst $28
    rst $38
    ei
    rst $30
    ei
    rst $38
    ei
    rst $38
    cp $ff
    rst $18
    rst $38
    ld a, b
    rst $38
    ld a, h
    rst $38
    ret nz

    jr nc, jr_0a6_770a

    ld [hl-], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sub h
    db $ec
    inc [hl]
    rst $38
    call $bcfe
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    ld e, $ff
    ld [bc], a
    cp $02
    and [hl]
    ld a, [bc]
    add d
    rst $38
    ld [bc], a
    db $fc
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    ld bc, $8100
    nop
    add c
    nop
    ld bc, $0100
    nop
    pop bc
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    ldh a, [rIE]
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    db $fc
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
    ei
    cp $fa
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    rst $00
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
    db $fd
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    di
    rst $38
    rst $38
    rst $38
    cp h
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ccf
    rst $38
    cp a
    cp $c3
    rst $38
    rst $08
    rst $38
    nop
    ei
    nop
    rst $20
    nop
    ld hl, sp+$00
    cp $00
    ld hl, sp+$00
    inc e
    nop
    ld c, $00
    add [hl]
    nop
    rst $00
    nop
    ldh [rP1], a
    pop af
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    add sp, $00
    nop
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    db $fc
    rst $38
    add l
    rst $38
    or a
    rst $08
    or a
    rst $08
    or a
    rst $08
    rst $30
    rst $08
    rst $08
    rst $38
    nop
    rst $38
    ld b, d
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
    nop
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
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    rst $38
    cp a
    jp $c3bf


    cp a
    jp $c3bf


    cp a
    ccf
    add c
    dec e
    jp $c31d


    jp $dfdf


    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld b, [hl]
    rst $38
    pop af
    rst $38

jr_0a6_7854:
    rst $28
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    jr nz, @+$01

    rra
    rst $38
    ld a, a
    rst $38
    ld [$fef5], a
    rst $38
    pop hl
    cp $e4
    ei
    jp z, $cff5

    ldh a, [$ef]
    ret nc

    rst $28
    ret nc

    rst $38
    ret nz

    ldh [$d0], a
    ldh a, [$c0]
    ret nc

    ret nz

    jp $fcf0


    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    dec bc
    db $f4
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    sbc $ff
    rst $38
    rst $38
    rst $38
    rst $38
    inc a
    rst $38
    cp $ff
    rst $08
    rst $38
    pop af
    rst $38
    di
    rst $38
    cp a
    rst $38
    sbc $ff
    rst $20
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    ld [hl], c
    rst $38
    sbc [hl]
    rst $38
    jr z, @+$19

    xor h
    ld b, e
    rst $00
    jr c, jr_0a6_7932

    inc b
    ld a, [hl]
    add c
    ld a, e
    inc b
    ld a, l
    add d
    ld a, l
    jr c, jr_0a6_7854

    nop
    rst $18
    nop
    ld [bc], a
    db $fd
    inc a
    jp $ec13


    inc e
    ld h, e
    ld [hl], b
    rrca
    adc b
    ld [hl], a
    jr nz, @-$1f

    add d
    ld a, a
    ld b, c
    cp a
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld bc, $00fe
    rra
    and $1f
    rst $30
    rrca
    rst $20
    rrca
    rst $10
    cpl
    rst $00
    cpl
    rst $10
    cpl
    rst $20
    cpl
    rst $20
    cpl
    rst $20
    cpl
    and a
    ld a, a
    and a
    ld a, a
    rst $20
    ccf
    daa
    ccf
    daa
    ccf
    inc hl
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
    rst $38

jr_0a6_7917:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $18
    ccf
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld d, h
    xor e
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rra

jr_0a6_7932:
    cp a
    ld a, a
    ld bc, $00ff
    rst $38
    sub c
    ld l, [hl]
    db $dd
    jr nz, jr_0a6_7917

    ld hl, $23d4

jr_0a6_7940:
    rst $38
    nop
    ld h, a
    jr jr_0a6_7940

    inc b
    ei
    inc b
    ld [hl], a
    adc b
    ld l, a
    sub b
    ld e, a
    and b
    rst $10
    add sp, -$15
    db $f4
    db $f4
    ei
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
    rla
    rst $38
    ld e, d
    and l
    inc de
    db $ec
    db $fc
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp l
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    sbc $ff
    rst $38
    rst $38
    rst $30
    rst $38
    dec a
    rst $38
    cp $ff
    rst $28
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28

jr_0a6_798b:
    rst $38
    di
    rst $38
    ld e, c
    rst $38
    ld [hl], h
    adc a
    ld l, b
    sub a
    add e
    ld a, h
    db $ec
    inc de
    inc e
    db $e3
    pop hl
    ld e, $d0
    cpl
    db $ed
    ld [hl], d
    nop
    nop
    ret z

    scf
    nop
    rst $38
    ld [c], a
    dec e
    inc c
    di
    jr nz, jr_0a6_798b

    ld [$80f7], sp
    ld a, a
    add h
    rst $38
    inc bc
    rst $38
    ld [$cdff], sp
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    nop
    rst $38
    add a
    db $10
    ld a, d
    ld bc, $9067
    and d
    pop bc
    rst $10
    ldh [$f6], a
    pop hl
    rst $30
    ldh [$e7], a
    ldh a, [$f6]
    pop hl
    and $f0
    db $f4
    ldh [$f4], a
    ldh [$f5], a
    ldh [$e7], a
    ldh a, [$f4]
    pop hl
    push hl
    ld a, [c]
    or $e1
    rst $20
    ldh a, [$e0]
    ldh [$e7], a
    ldh a, [$e9]
    or $ed
    di
    ld hl, sp-$09
    rst $28
    pop af
    rst $38
    ldh a, [$fe]
    pop af
    db $fc
    di
    ldh a, [rIE]
    ld hl, sp-$09
    pop af
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    jp nc, $d1ff

    rst $38
    ld a, [c]
    rst $38
    ret nz

    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    dec a
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [hl], l
    rst $38
    dec d
    rst $38
    ld b, b
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
    ei
    inc b
    db $e4
    dec de
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $28
    db $10
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20

jr_0a6_7a4f:
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld sp, hl

jr_0a6_7a59:
    rst $38
    sbc $ff
    cp $ff
    di
    rst $38
    db $fd
    rst $38
    sbc $ff
    rst $20
    rst $38
    di
    rst $38
    dec a
    rst $38
    cp h
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    ld a, $cf
    add b
    ld a, a
    add l
    ld a, d
    jr z, jr_0a6_7a4f

    jr nz, jr_0a6_7a59

    add e
    ld a, h
    sub e
    rst $28
    cp h
    jp Jump_000_0002


    or d
    rst $18
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    add h
    rst $38
    ld d, e
    rst $38
    ld sp, $9eff
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
    cp a
    rst $38
    ld bc, $69fe
    sub [hl]
    or h
    ld c, e
    ld l, c
    sub [hl]
    or a
    ld c, c
    ld l, c
    sub [hl]
    sbc $29
    ld l, l
    sub d
    rst $28
    nop
    call c, Call_0a6_7f23

jr_0a6_7ab7:
    add b
    ld e, e
    nop
    dec l
    nop
    db $76
    add hl, bc
    ld a, e
    add h
    ld d, h
    dec hl
    jp c, $9601

    ld l, c
    db $f4
    dec bc
    rst $38
    nop
    ld [hl], l
    adc d
    ld b, b
    cp a
    ld c, c
    rst $38
    sub h
    rst $38
    add b
    ld a, a
    ld l, b
    sub a
    jr nz, jr_0a6_7ab7

    add [hl]
    rst $38
    ld bc, $80ff
    rst $38
    cpl
    rst $38
    nop
    rst $38
    nop
    rst $38
    sub c
    rst $38
    or a
    rst $38
    dec hl
    rst $38
    ld bc, $17ff
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
    nop
    rst $38
    ld d, l
    rst $38
    ld e, [hl]
    rst $38
    adc h
    rst $38
    rst $38
    nop
    add b
    ld a, a
    ld a, [c]
    dec c
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    or b
    ld c, a
    ret z

    scf
    nop
    rst $38
    nop
    rst $38
    dec b
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
    inc bc
    rst $38
    sub $29
    dec bc
    db $f4
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    call c, $e7ff
    rst $38
    dec sp
    rst $38
    cp h
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    dec a
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ld a, c
    rst $38
    cp l
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld a, a
    rst $38
    rst $18
    rst $38
    ld b, $ff
    ld [hl], b
    rst $38
    jr nz, @+$01

    cpl
    rst $18
    nop
    rst $38
    jr nz, @+$01

    xor a
    rst $18
    rst $38
    nop
    ld a, h
    inc bc
    db $fd
    ld a, a
    ld [bc], a
    rst $38
    db $10
    rst $38
    rlca
    rst $38
    inc [hl]
    rst $38
    add a
    rst $38
    rst $20
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
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld b, c
    cp a
    add c
    ld a, a
    or b
    rst $18
    sbc c
    ld l, a
    sub e
    cp $99
    ld l, a
    ld c, b
    or a
    add c
    ld a, a
    nop
    rst $38
    ld b, b
    cp a
    db $f4
    dec bc
    ld a, [de]
    and l
    sub c
    ld l, a
    ld c, h
    or a
    adc c
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    db $fc
    inc bc
    ld de, $06ff
    rst $38
    ld l, a
    rst $38
    or a
    rst $38
    ld c, e
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, c
    cp a
    rrca
    rst $38
    ld [bc], a
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
    ld bc, $bbfe
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
    rst $38
    rst $38
    db $fc
    rst $38
    call $f9fe
    cp $cb
    db $fc
    and e
    ld e, h
    ld a, a
    add b
    rrca
    ldh a, [rIE]
    rst $38
    sbc h
    rst $38
    di
    rst $38
    cp l
    rst $38
    db $dd
    cp $e3
    rst $38
    dec a
    rst $38
    sbc a
    cp $e3
    rst $38
    ld h, e
    rst $38
    sbc [hl]
    rst $38
    db $ec
    rst $38
    di
    rst $38
    ld a, l
    rst $38
    sbc [hl]
    rst $38
    rst $38
    rst $38
    di
    rst $38
    db $fd
    rst $38
    daa
    rst $38
    ei
    cp $2f
    cp $0f
    cp $f1
    cp $4f
    db $fc
    ld e, $fd
    cp $01
    di
    db $fd
    ei
    db $fd
    jr @+$01

    ld [$1bff], a
    rst $38
    call c, $ffff
    rst $38
    cp l
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld a, [$fcfd]
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    pop af
    rst $38
    add sp, -$01
    jr @+$01

    ld [bc], a
    db $fd
    db $10
    rst $38
    sbc b
    rst $38
    dec bc
    db $fc
    sub c
    cp $12
    db $fc
    jp c, $03fc

    db $fc
    sub l
    ld hl, sp+$10
    ld hl, sp-$80
    ld a, b
    dec d
    ld hl, sp+$13
    db $fc
    add b
    rst $38
    ld [hl-], a
    db $fd
    sub b
    rst $38
    add hl, sp
    rst $38
    ld sp, $31ff
    rst $38
    or b
    rst $38
    or c
    rst $38
    sub c
    rst $38
    push de
    rst $38
    inc sp
    rst $38
    ld sp, $f9ff
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $fd

jr_0a6_7cb1:
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei

jr_0a6_7cb7:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $08
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    ld a, a
    db $fd
    ld a, l
    db $fd
    ld e, $fd
    ccf
    call nz, $ef14
    jr nc, jr_0a6_7cb7

    jr c, jr_0a6_7cb1

    inc sp
    rst $08
    inc bc
    rst $38
    add e
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ret nc

    rst $38
    inc bc
    db $fc
    dec bc
    db $fc
    rrca
    db $fc
    ld b, $ff
    nop
    rst $38
    rlca
    ld hl, sp+$3f
    ret nz

    ccf
    ret nz

    add b
    rst $38
    ld h, c
    rst $38
    dec de
    push hl
    ld [hl], a
    adc [hl]
    adc [hl]
    ld [hl], c
    ld a, a
    add b
    ld a, [hl-]
    rst $00
    add a
    ld a, b
    ld c, $f1
    rst $30
    rst $08
    ld a, [c]
    ld a, a
    dec sp
    db $fc
    db $d3
    rst $28
    add e
    rst $38
    jr c, @+$01

    sbc l
    cp $e3
    rst $38
    rst $00
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    scf
    rst $38
    ld a, a
    rst $38
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld c, $ff
    ld l, $ff
    inc c
    rst $38
    inc c
    cp $00
    db $fc
    nop
    ld hl, sp+$08
    db $fc
    jr @-$02

jr_0a6_7d75:
    jr jr_0a6_7d75

jr_0a6_7d77:
    jr jr_0a6_7d77

jr_0a6_7d79:
    jr jr_0a6_7d79

    jr @+$80

    ld [$087e], sp
    ld a, [hl]
    jr jr_0a6_7dc1

    ld e, $3e
    inc c
    ld a, $00
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    cp [hl]
    nop
    cp [hl]
    db $10
    ret z

    ld [hl], $c8
    ld [hl], $84
    ld a, d
    ld a, [bc]
    db $f4
    inc c
    ld a, [c]
    nop
    cp $04
    ld a, [$fa44]
    ld b, [hl]
    ld hl, sp-$7e
    db $fc
    ld [c], a
    db $fc
    ret nz

    cp $e2
    db $fc
    ld h, d
    db $fc
    pop hl
    cp $f9
    cp $e9
    cp $eb
    db $fc
    db $ed
    cp $f9
    cp $fa
    db $fd
    db $fd
    cp $fc
    rst $38
    ld a, [$f8fd]

jr_0a6_7dc1:
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$f8fd]
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    rst $38
    ld a, [c]
    db $fd
    ld a, [$fafd]
    db $fd
    ld a, d
    db $fd
    ld [$ea7d], a
    ld a, l
    ld [$eafd], a
    db $fd
    ld l, d
    db $fd
    ld [$eafd], a
    db $fd
    ld [$fefd], a
    ld sp, hl
    ld a, [$fefd]
    ld sp, hl
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    ld a, [$f2f9]
    ld sp, hl
    ld a, [c]
    ld sp, hl
    db $f4
    ei
    db $f4
    ei
    push af
    ei
    rst $30
    ei
    rst $30
    ei
    dec [hl]
    ei
    rst $00
    dec sp
    rst $20
    dec de
    ei
    rra
    ret nc

    ccf
    nop
    rst $38
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    or d
    db $fd
    rst $38
    add h
    rst $18

jr_0a6_7e23:
    jr nz, jr_0a6_7e23

    add b
    cp a
    jp nz, Jump_000_00ff

    cp a
    ret nz

    db $dd
    db $e3
    rst $30
    add hl, bc
    or c
    ld c, [hl]
    rst $28
    pop af
    db $fd
    ld h, e
    cp [hl]
    rst $18
    ld h, [hl]
    rst $38
    ei
    db $fd
    or [hl]
    rst $38
    rst $28
    rst $18
    db $fc
    ei
    ld hl, sp-$01
    add sp, -$01
    ld [c], a
    db $fd
    ld [c], a
    db $fd
    ld a, [c]
    db $fd
    db $db
    db $f4
    rst $30
    db $fc
    jp nz, $e4fc

    ld a, [$fac5]
    rst $30
    add sp, -$39
    ld hl, sp-$39
    ld hl, sp-$34
    pop af
    db $dd
    ldh [$fd], a
    ret nc

    cp $00
    ld b, $00
    ld c, $00
    ld c, $00
    rrca
    inc c
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    rrca
    inc b
    dec c
    inc c
    ld c, $0c
    dec c
    ld [$001a], sp
    inc e
    nop
    dec de
    ld de, $061f
    ccf
    ld [$081f], sp
    rra
    nop
    rra
    nop
    rrca
    nop
    rra
    nop
    rra
    nop
    dec [hl]
    ld a, [bc]
    dec sp
    ld c, $70
    rrca
    ld [hl], b
    rrca
    ldh a, [rIF]
    push af
    rrca
    ldh a, [rIF]
    ld [c], a
    rra
    add sp, $1f
    add sp, $1f
    ldh [$1f], a
    pop hl
    rra
    pop hl
    rra
    and d
    ld e, a
    jp nz, $da3f

    ccf
    rra
    rst $38
    rra
    rst $38
    dec e
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
    ld e, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    dec l
    rst $38
    inc e
    rst $38
    ld l, [hl]
    rst $18
    ld h, a
    rst $18
    ld b, a
    cp a
    ld a, e
    and a
    dec e
    db $e3
    sbc h
    db $e3
    cp [hl]
    pop de
    or a
    ret c

    rst $00
    cp b
    db $ed
    or h
    rst $08
    or h
    sbc a
    xor $9e
    rst $28
    xor l
    rst $18
    rst $38
    rst $18
    ld e, e
    cp a
    ccf
    rst $30
    cp a
    ld [hl], a
    rst $30
    cpl

jr_0a6_7f0c:
    rst $08
    ccf
    rst $38
    rra
    db $fd
    rra
    rst $28
    dec de
    ei
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    ei
    rlca
    rst $38
    inc bc
    rst $38

Call_0a6_7f23:
    add e
    db $fd
    add e
    ld a, l
    add e
    cp c
    ld b, a
    ld a, [$c0c5]
    rst $38
    ld h, b
    rst $38
    cp [hl]
    ld b, b
    or [hl]
    ld b, b
    db $e4
    db $10
    ldh a, [rP1]
    di
    nop
    xor d
    ld bc, $00e3
    push bc
    nop
    dec e
    add b
    reti


    nop
    rlc b
    daa
    ld b, b
    dec bc
    ld b, h
    ld c, e
    inc b
    or a
    nop
    cp a
    jr nz, jr_0a6_7f0c

    jr nz, jr_0a6_7f8d

    add b
    jp z, $8210

    ld d, c
    sub b
    ld b, c
    ret nz

    inc b
    dec c
    nop
    ld l, c
    ld [bc], a
    ld l, b
    inc b
    sbc c
    nop
    jr nz, jr_0a6_7f69

    ld c, e
    inc b
    sub c

jr_0a6_7f69:
    ld [$006d], sp
    add [hl]
    ld b, b
    rst $20
    nop
    sbc e
    nop
    db $dd
    ld [bc], a
    rst $38
    nop
    ld a, h
    inc bc
    and [hl]
    ld e, c
    or b
    ld c, a
    add hl, bc
    or $64
    cp a

Jump_0a6_7f80:
    db $e4
    cp a
    and h
    rst $38
    inc bc
    rst $38
    ld c, e
    rst $38
    db $db
    ld a, a
    ld e, e
    rst $38
    ld d, d

jr_0a6_7f8d:
    rst $38
    ld [hl], $ff
    xor l
    rst $38
    xor l
    rst $38
    ld l, l
    rst $38
    ld l, l
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    or $ff
    or $ff
    or $ff
    rst $38
    rst $38
    ld a, a
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
    rst $30
    rst $38
    cp $ff
    cp $ff
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
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc l
    ld a, a
    cp a
    ld e, a
    rst $38
    rra
    or a
    ld e, a
    rst $30
    rra
    ld [hl], a
    xor a
    di
    rst $08
    di
    rst $08
    rst $18
    rst $28
    rst $28
    rst $38
    rst $28
    rst $38
    ld sp, hl
    rst $38
