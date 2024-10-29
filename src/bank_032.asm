SECTION "ROM Bank $032", ROMX[$4000], BANK[$32]

    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    add $ff
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
    ld bc, $01fe
    cp $00
    rst $38
    rlca
    ld hl, sp+$1f
    ldh [$1f], a
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    ld [bc], a
    db $fd
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
    rra
    rst $38
    ld b, a
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0dff
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $e4
    dec de
    ret nz

    ccf
    pop hl
    rra
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    and e
    rst $38
    adc $ff
    ret c

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
    nop
    rst $38
    add h
    ei
    ld [$13f7], sp
    db $ec
    rrca
    ldh a, [$1f]
    ldh [rSB], a
    nop
    inc bc
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
    cp $01
    cp $01
    rst $38
    nop
    ld bc, $c3fe
    inc a
    rst $18

jr_032_4099:
    jr nz, jr_032_4099

    nop
    ldh a, [rP1]
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    rst $38
    nop
    db $ed
    sbc $ff
    rst $38
    rst $38
    rst $38
    ld [$c9ff], a
    rst $38
    ldh [$df], a
    ret nz

    rst $38
    adc h
    di
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    rst $38
    nop
    ld sp, hl
    nop
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    add b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    call nc, $c0ff
    rst $38
    add b
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
    ld a, a
    add b
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
    rst $38
    nop
    ccf
    ret nz

    rrca
    ldh a, [rTAC]
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ret nz

    nop
    ld a, [c]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp b
    ld b, a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    sbc $21
    db $fc
    inc bc
    ld hl, sp+$17
    pop hl
    rra
    pop hl
    rra
    rst $38
    rrca
    xor a
    ld e, a
    rrca
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    pop bc
    rst $38
    ld hl, sp-$01
    sub b
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
    nop
    rst $38
    add e
    ld a, h
    adc e
    ld [hl], h
    cp a
    ld b, b
    cp $01
    cp $01
    ld hl, sp+$07
    ld hl, sp+$07
    ldh [$1f], a
    call z, $883f
    ld a, a
    add a
    ld a, b
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
    dec d
    db $eb
    dec a
    jp Jump_000_0101


    ld bc, $e101
    ld bc, $718f
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
    inc de
    rst $38
    add c
    ld a, a
    db $fd
    inc bc
    db $fd
    inc bc
    ld a, a
    ld bc, $ff0f
    dec bc
    rst $20
    ld l, e
    add a
    ld [hl], e
    adc a
    inc bc
    rst $38
    inc de
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    ld a, [hl-]
    ld bc, $017e
    ld a, [hl+]
    ld de, $0338
    cp b
    inc bc
    ld hl, sp+$03
    ld hl, sp+$03
    ldh a, [$03]
    ldh a, [$03]
    ld hl, sp+$03
    ld a, [$7201]
    ld bc, $0330
    jr nc, @+$05

    jr c, jr_032_41e1

    ld de, $3003

jr_032_41e1:
    inc bc
    jr c, jr_032_41e7

    add hl, sp
    inc bc
    ld a, b

jr_032_41e7:
    inc bc
    inc sp
    inc bc
    ccf
    inc bc
    rst $38
    inc bc
    ld bc, $fd03
    inc bc
    rst $38
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $e3
    inc bc
    db $e3
    inc bc
    rlc e
    di
    inc bc
    rst $38
    inc bc
    ld sp, hl
    rlca
    ld a, [$fa07]
    rlca
    dec sp
    rst $00
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $0007
    rlca
    ld a, [bc]
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rrca
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $20
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    add e
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    rla
    ld hl, sp+$1f
    ldh a, [$87]
    ld a, b
    cp a
    ld c, b
    inc de
    db $ec
    db $d3
    inc l
    db $db
    inc h
    ld sp, hl
    ld b, $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $d3de
    inc l
    add h
    ld a, b
    add hl, de
    ldh [rNR50], a
    jp $8659


    pop hl
    ld e, $a3
    ld a, h
    di
    db $fc
    db $e3
    db $fc
    jp $c7fc


    ld hl, sp-$39
    ld hl, sp-$71
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$cf]
    ldh a, [$df]
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    cp $80
    cp [hl]
    ret nz

    ccf
    ret nz

    ld a, h
    add b
    ld a, h
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld a, b
    add b
    ld [hl], b
    add b
    ld a, b
    add b
    ld a, b
    add b
    ld hl, sp+$00
    db $f4
    nop
    ldh [rP1], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
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
    nop
    db $fd
    nop
    cp $00
    cp $00
    ld a, [$7f00]
    add b
    ld a, a
    add b
    ccf
    ret nz

    cp l
    ld b, b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    ret nz

    rst $18
    ldh [$df], a
    ldh [$9f], a
    ldh [$9b], a
    db $e4
    sbc l
    ld [c], a
    sbc l
    ld [c], a
    sbc c
    and $98
    rst $20
    adc h
    di
    rst $08
    ldh a, [$c6]
    ld sp, hl
    ret nz

    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
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
    rst $38
    rst $38
    push af
    rst $38
    call nz, $89ff
    rst $38
    jp nz, $80ff

    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_032_433c:
    ld b, b
    cp a
    ld e, e
    and h
    rra
    ldh [$8e], a
    ld [hl], c
    rst $38
    nop
    ld hl, sp+$07
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [hl+]
    ret nc

    or $01
    ld b, h
    add e
    jr @+$09

    jr nz, jr_032_4379

    ret nz

    ccf
    nop
    rst $38
    jp nz, $ef3d

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_032_4379:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $e3
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
    ld a, a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    db $dd
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
    rst $38
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
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
    rst $38
    nop
    cp $01
    ld a, [hl]
    add c
    ld [hl+], a
    db $dd
    and d
    ld e, l
    ret nz

    ccf
    ret nz

    ccf
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
    ld bc, $03ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
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
    rst $38
    rst $38
    rst $38
    ld l, b
    rst $38
    ret nz

    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    and b
    ld e, a
    adc e
    ld [hl], h
    xor a
    ld d, b
    ei
    inc b
    ld l, [hl]
    sub c
    db $ec
    inc de
    xor $11
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    cp a

jr_032_443e:
    ret nc

    cpl
    ldh [$1f], a
    db $f4
    dec bc
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
    rst $18
    jr nz, jr_032_443e

    jr nz, @+$01

    nop
    rst $18
    jr nz, jr_032_44aa

    cp d
    ret nz

    ccf
    call nz, $c03b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    dec c
    rst $38
    rrca
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
    cp a
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    ld de, $41ff
    rst $38
    add hl, de
    rst $38
    pop de
    rst $38

jr_032_44aa:
    pop bc
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
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
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    add hl, de
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    nop
    rst $38
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    ld a, a
    add b
    db $76
    adc c
    cp $01
    rst $38
    nop
    rst $38
    nop
    ccf
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rla
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    add c
    ld a, a
    ld bc, $01ff
    rst $38
    add c
    ld a, a
    jp $a13f


    ld e, a
    ret nz

    ccf
    pop af
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $f8
    rlca
    ld a, [$fc05]
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    add sp, $17
    ld sp, hl
    rlca
    ret nc

    cpl
    ret nz

    ccf
    jp nc, $c02f

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    jp z, $0837

    rst $38
    adc b
    ld [hl], a
    ret nz

    ccf
    ret nz

    ccf
    add c
    ld a, a
    add c
    ld a, a
    add c
    ld a, a
    inc bc
    rst $38
    add e
    ld a, a
    add a
    ld a, a
    rlca
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
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ccf
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
    cp a
    rst $38
    ld l, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rla
    rst $28
    add hl, de
    rst $20
    ld c, $f1
    ld c, $f1
    rrca
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$ef]
    ldh a, [$f3]
    db $fc
    db $e3
    db $fc
    ld [hl], e
    db $fc
    dec d
    cp $00
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    ld bc, $19fe
    and $0e
    pop af
    adc [hl]
    ld [hl], c
    rst $38
    nop
    ld e, $e1
    ld a, [hl]
    add c
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

jr_032_4616:
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
    ld sp, hl
    rst $38
    rst $38
    rst $38

jr_032_4624:
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    rst $28
    rra
    rst $30
    rrca
    ei
    rlca
    db $fd
    inc bc
    cp $01
    rst $38
    nop

jr_032_4638:
    cp $00
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    cp $00
    rst $08
    jr nc, jr_032_4624

    jr nz, jr_032_4616

    jr nc, jr_032_4638

    db $10
    ld a, l
    add d
    rst $38
    nop
    rst $38
    nop
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    ld [$e9ff], a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    ld h, b
    rst $38
    sbc $20
    ld h, b
    nop
    nop
    nop
    nop
    nop
    ld b, c
    nop
    ld b, c
    nop
    ld bc, $8300
    nop
    add a
    nop
    sbc h
    inc bc
    ret z

    scf
    sbc b
    ld [hl], a
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    xor $ff
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
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
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    add b
    rst $38
    db $ec
    rst $38
    pop bc
    rst $38
    add d
    rst $38
    ld [$f8ff], a
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ldh [rIE], a
    ret nc

    rst $38
    db $10
    rst $38
    or h
    rst $38
    add b
    rst $38
    jr z, @+$01

    or [hl]
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld e, b
    rst $38
    ld a, [$e9ff]
    rst $38
    db $f4
    rst $38
    ldh [rIE], a
    pop af
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    call z, $c0ff
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    ldh a, [rIE]
    rlca
    ld hl, sp+$7f
    add b
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ldh a, [rIF]
    add b
    ld a, a
    inc [hl]
    set 7, a
    nop
    rst $38
    nop
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
    rst $30
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, [hl]
    rst $38
    db $fc
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld b, b
    rst $38
    ld [hl+], a
    rst $38
    ld b, c
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
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    rlca
    rst $38
    ld [hl-], a
    rst $38
    ld sp, $08ff
    rst $38
    ld [$0dff], sp
    rst $38
    dec de
    rst $38
    scf
    rst $38
    rla
    rst $38
    dec bc
    rst $38
    ld b, a
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    jr nz, @+$01

    inc bc
    rst $38
    rla
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [$38ff], sp
    rst $38
    ld c, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld [de], a
    rst $38
    rlca
    rst $38
    ld l, c
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld a, h
    add e
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    pop af
    rrca
    pop hl
    rra
    or $0f
    add e
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    dec c
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
    rst $18
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
    rst $18
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rlca
    rst $38
    and a
    rst $38
    rra
    rst $38
    ld [hl], a
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    ld d, e
    rst $38
    rlca
    rst $38
    ld c, e
    rst $38
    adc e
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld hl, sp-$01
    ld a, [$feff]
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    cp $ff
    cp h
    rst $38
    ld [de], a
    rst $38
    jr @+$01

    ldh [rIE], a
    ret nc

    rst $38
    cp $ff
    ld a, [c]
    rst $38
    db $fc
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    jr nz, @+$01

    ld h, b
    rst $38
    nop
    rst $38
    nop
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
    ld b, $ff
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
    ld b, e
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    ld a, a
    rst $38
    cp a
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
    push af
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    ld [$00ff], sp
    nop
    nop
    ld bc, $0000
    ld [bc], a
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    nop
    dec c
    ld c, $0f
    db $10
    ld de, $1312
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
    dec d
    ld d, $17
    jr jr_032_4931

jr_032_4931:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    ld de, $1b00
    inc e
    dec e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $00
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
    dec h
    ld h, $27
    jr z, jr_032_4991

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $00
    nop
    nop
    nop
    cpl
    jr nc, jr_032_49a5

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_032_49b5

    ld a, [hl-]
    dec sp
    nop
    nop
    nop
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    nop
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    nop
    nop
    ld c, b

jr_032_4991:
    ld c, c
    ld c, d
    nop
    nop
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
    nop
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c

jr_032_49a5:
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
    ld h, a
    ld l, b

jr_032_49b5:
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
    nop
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
    nop
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
    nop
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
    nop
    nop
    nop
    xor [hl]
    xor a
    or b
    or c
    or d
    nop
    or e
    or h
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or l
    or [hl]
    nop
    or a
    nop
    cp b
    cp c
    nop
    cp d
    cp e
    cp h
    ld de, $bebd
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

    nop
    reti


    jp c, $dcdb

    db $dd
    sbc $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $2101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0102
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    ld bc, $0101
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
    ld bc, $0001
    ld bc, $0100
    ld bc, $0000
    nop
    nop
    jr nz, jr_032_4b5e

jr_032_4b5e:
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
    rst $38
    rst $38
    ld a, a
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
    cp a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $18
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
    ld a, h
    rst $38
    di
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    cp l
    rst $38
    ld [hl+], a
    rst $38
    inc e
    rst $38
    inc a
    rst $38
    nop
    rst $38
    add b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    add e
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    add c
    ld a, a
    ld bc, $05ff
    rst $38
    inc b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld b, b
    cp a
    ld b, d
    cp l
    ld h, d
    sbc l
    ldh a, [rIF]
    ld [hl], b
    adc a
    ret nc

    cpl
    add b
    ld a, a
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    ld b, a
    rst $38
    ld h, a
    rst $38
    scf
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    rst $08
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
    rst $28
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
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    or a
    rst $38
    or a
    rst $38
    ld d, $ff
    ld d, $ff
    db $10
    rst $38
    ld [de], a
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
    ld [$00f7], sp
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec e
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
    rra
    rst $38
    daa
    rst $38
    daa
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
    ld sp, hl
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
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    rst $08
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
    db $fd
    rst $38
    call z, $d9ff
    rst $38
    ld sp, hl
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld a, b
    rst $38
    ld [$10ff], sp
    rst $38
    nop
    rst $38
    nop
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
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ld a, [$f8ff]
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
    ld hl, sp-$01
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
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $f8
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $f8
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    jp nz, $c2fd

    db $fd
    add b
    rst $38
    add b
    rst $38
    add e
    db $fc
    add c
    cp $81
    cp $81
    cp $81
    cp $81
    cp $81
    cp $81
    cp $01
    cp $01
    cp $81
    cp $80
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    ld bc, $01fe
    cp $02
    db $fd
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rla
    ld hl, sp+$37
    ld hl, sp+$77
    ld hl, sp-$09
    ld hl, sp-$0e
    db $fd
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
    rst $18
    rst $38
    rst $38
    rst $08
    rst $18
    rst $28
    rst $28
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    db $e3
    rst $38
    rst $38
    rst $38
    push hl
    rst $38
    db $fd
    db $e3
    rst $28
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    ld [hl], b
    rst $28
    ld a, b
    rst $20
    ld a, b
    rst $20
    ld a, h
    db $e3
    ld a, h
    db $e3
    ld a, $e1
    ld e, $e1
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$9f], a
    ld h, b
    rra
    ldh [$5f], a
    and b
    rst $08
    jr nc, @-$0f

    db $10
    xor a
    ld d, b
    ld l, [hl]
    sub c
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, a
    sub b
    ld l, [hl]
    sub c
    ld l, [hl]
    sub c
    ld l, [hl]
    sub c
    ld l, h
    sub e
    ldh [$1f], a
    ret nz

    ccf
    jp $8f3f


    ld a, a
    xor a
    ld e, a
    xor a
    ld e, a
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
    rrca
    rst $38
    ld c, $ff
    adc b
    ld a, a
    adc b
    ld a, a
    adc [hl]
    ld a, a
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
    ld c, $ff
    ld [$88ff], sp
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $85fe
    ld a, d
    rlca
    ld hl, sp+$0b
    ld hl, sp-$6d
    ld [hl], b
    inc hl
    ldh [$03], a
    ret nz

    ld h, e
    add b
    db $e3
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    adc a
    ld [hl], b
    ld bc, $01fe
    cp $0b
    db $f4
    inc bc
    db $fc
    pop bc
    cp $f0
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
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
    cp $ff
    db $fc
    rst $38
    dec c
    rst $38
    inc c
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
    rst $38
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
    rra
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
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
    ld e, [hl]
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    adc l
    ld a, [c]
    adc a
    ldh a, [$cf]
    ldh a, [$f3]
    db $fc
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld l, a
    sub b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $ff
    xor $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rla
    add sp, $03
    db $fc
    nop
    rst $38
    rlca
    ld hl, sp-$7f
    cp $f0
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [$faff]
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld a, [c]
    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    pop bc
    cp $01
    cp $01
    cp $04
    ei
    rla
    add sp, $17
    add sp, $0f
    ldh a, [rIF]
    ldh a, [rNR11]
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    or a
    rst $38
    ei
    rst $38
    ei
    rst $38
    cp e
    rst $38
    or c
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ld a, [$fbff]
    rst $38
    ld hl, sp-$01
    ld a, [$faff]
    rst $38
    ld a, [$faff]
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    cp b
    rst $38
    cp $ff
    cp $fd
    adc $31
    add d
    ld bc, $0186
    add $01
    ld [hl], b
    add a
    ld e, a
    and b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    rst $38
    cp $ff
    sbc $ff
    db $fc
    rst $38
    ld c, h
    rst $38
    ld b, b
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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, e
    add h
    add c
    cp $08
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
    inc bc
    db $fc
    ld b, $f9
    inc d
    db $eb
    scf
    ret z

    nop
    rst $38
    inc bc
    db $fc
    ccf
    ret nz

    rst $18
    jr nz, @+$81

    add b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_032_50ea:
    rst $38
    nop

jr_032_50ec:
    rst $38
    nop

jr_032_50ee:
    cp $00

jr_032_50f0:
    rst $38
    nop
    ccf
    ret nz

    ldh a, [rIE]
    ld hl, sp-$01
    ldh a, [rIE]
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    di
    db $f4
    ld hl, sp-$1a
    ld hl, sp-$19
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$fd]
    ldh [$d9], a
    ldh [$d0], a
    ldh [$d0], a
    ldh [$f0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    and b
    ret nz

    ldh [$80], a
    jr nz, jr_032_50ea

    jr nz, jr_032_50ec

    jr nz, jr_032_50ee

    jr nz, jr_032_50f0

    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    add b
    ld b, b
    add b
    ld h, c
    add b
    ld h, c
    add b
    ld hl, $25c0
    ret nz

    dec [hl]
    ret nz

    dec [hl]
    ret nz

    ccf
    ret nz

    dec sp
    ret nz

    ld a, [hl-]
    ret nz

    jr c, @-$3e

    jr c, @-$3e

    jr nc, @-$3e

    db $10
    ldh [rNR23], a
    ldh [$dc], a
    ldh [$fe], a
    ldh [$ef], a
    ldh a, [$f9]
    cp $ff
    rst $38
    ei
    rst $38
    nop
    rst $38
    adc l
    ld [hl], d
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
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
    add b
    rst $38
    add b
    rst $38
    ret nz

    nop
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    inc bc
    db $fc
    inc b
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
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    ld h, b
    ld a, a
    add b
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
    db $ec
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    nop
    cp $00
    ccf
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    nop
    rst $38
    rst $38
    rst $38

jr_032_51ee:
    rst $38
    rst $38

jr_032_51f0:
    db $fc

jr_032_51f1:
    rst $38

jr_032_51f2:
    rst $08
    ldh a, [$7a]
    add b
    ret nc

    nop
    ld e, a
    jr nz, jr_032_51f1

    ld a, l
    ld a, a
    rst $38
    ld a, d
    rst $38
    ld a, d
    db $fd
    ld [hl], a
    ld hl, sp+$67
    ld hl, sp-$11
    ld [hl], b
    call z, $dc70
    ld h, b
    ret c

    ld h, b
    cp b
    ld b, b
    cp b
    ld b, b
    cp b
    ld b, b
    jr nc, jr_032_5256

    and b
    ld b, b
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], b
    add b
    jr c, jr_032_51ee

    jr nc, jr_032_51f0

    jr nc, jr_032_51f2

    or b
    ret nz

    or b
    ret nz

    or b
    ret nz

    jr nc, @-$3e

    dec e
    ldh [rP1], a
    nop
    nop
    nop
    ld b, b
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$1f]
    ldh [$03], a
    db $fc
    nop
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    add a
    ld hl, sp+$7d
    rst $38
    nop
    rst $38

jr_032_5256:
    ld e, [hl]
    and c
    rst $38
    nop
    rst $38
    nop
    ld a, [$8000]
    nop
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$e01f]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$f9], a
    ld b, $3f
    ret nz

    inc a
    jp $ff00


    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ret nz

    and b
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
    cp a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rlca
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
    nop
    ld bc, $fb00
    nop
    ei
    nop
    rst $38
    nop
    ld c, $f1
    ld a, h
    rst $38
    rst $20
    rst $38
    rst $38
    nop
    sbc a
    ld h, b
    ld b, b

jr_032_52e5:
    nop
    nop
    nop
    reti


    nop
    sub a
    ld hl, sp+$6c
    di
    ld e, $e1
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    rst $38
    ld h, b

jr_032_52f7:
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc a
    jp $c324


    ld l, $c1
    ld a, h
    add e
    jr nz, jr_032_52e5

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_032_52f7

    nop
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
    ld bc, $01ff
    rst $38
    ld b, l
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    add a
    ld a, b
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
    rst $38
    rlca
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
    nop
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $f4
    dec bc
    daa
    ret c

    ld b, $f9
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
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
    ld a, h
    add e
    ld [bc], a
    db $fd
    nop
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
    ei
    rst $38
    ld hl, sp-$01
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
    jp nz, Jump_032_7f3d

    add b
    ld a, a
    add b
    ccf
    ret nz

    ld c, a
    or b
    ld h, b
    sbc a
    nop
    rst $38
    nop
    nop
    and e
    nop
    jp $c700


    nop
    rst $38
    nop
    ld b, l
    cp d
    ld hl, sp-$01
    cp a
    rst $38
    add b
    ld a, a
    rra
    nop
    nop
    nop
    inc bc
    nop
    ld a, [c]
    dec c
    rra
    rst $38
    rra
    rst $38
    adc a
    ld a, a
    rst $00
    ccf
    rst $20
    rra
    di
    rrca
    ei
    rlca
    ld a, d
    inc b
    jr c, jr_032_53f0

    inc e
    nop
    ld e, $01

jr_032_53f0:
    rra
    nop
    rrca
    nop
    ld c, $01
    ld c, $01
    ld c, $01
    ld [bc], a
    ld bc, $0102
    rlca
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
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    dec a
    ld [bc], a
    or b
    rrca
    cp c
    ld b, $fa
    rlca
    ld a, e
    ld b, $79
    ld b, $73
    ld c, $01
    nop
    ld bc, $05ff
    rst $38
    ld bc, $81ff
    ld a, a
    add c
    ld a, a
    inc bc
    rst $38
    dec bc
    rst $38
    rra
    rst $38
    ld sp, hl
    ld b, $7f
    db $fc
    db $fd
    db $fc
    dec c
    db $fc
    ld bc, $b1fc
    ld c, h
    db $fd
    nop
    dec c
    nop
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    di
    dec c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $07f9
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    xor c
    ld d, a
    and c
    ld e, a
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
    dec b
    inc bc
    sub l
    inc bc
    ld e, c
    rlca
    ei
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
    ld e, a
    and a
    rlca
    rst $38
    rlca
    rst $38
    rst $08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rlca
    ld h, a
    rlca
    cpl
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
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    sbc a
    rra
    cp a
    rra
    sbc a
    ccf
    sbc a
    ccf
    ld a, a
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    ld a, a
    ccf
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    cp a
    cp a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    rst $18
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    cp a
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
    cp a
    ld a, a
    cp a
    ld a, a
    cp a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    cp $7f
    cp $7f
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, [hl]
    rst $38
    cp $7f
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $7f
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $7f
    ld a, [hl]
    rst $38
    ld a, a
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$fbfd]
    db $fc
    di
    db $fc
    di
    db $fc
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    di
    db $fc
    pop af
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f3
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    rst $20
    ld hl, sp-$0d
    db $fc
    di
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$0d
    db $fc
    db $e3
    db $fc
    rst $28
    ldh a, [$e3]
    db $fc
    rst $20
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp-$11
    ldh a, [$e7]
    ld hl, sp-$08
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    pop hl
    cp $f1
    cp $f0
    rst $38
    ldh [rIE], a
    pop af
    cp $f1
    cp $e2
    db $fd
    ldh [rIE], a
    db $e4
    ei
    db $e4
    ei
    call nz, $c4fb
    ei
    ld [c], a
    db $fd
    rst $00
    ld hl, sp-$39
    ld hl, sp-$11
    ldh a, [$e5]
    ld a, [$f8c7]
    set 6, h
    rst $08
    ldh a, [$ca]
    push af
    ld [$c8f5], a
    rst $30
    pop bc
    cp $c1
    cp $c3
    db $fc
    add d
    db $fd
    add c
    cp $c3
    db $fc
    rst $00
    ld hl, sp-$3b
    ld a, [$f9c6]
    add [hl]
    ld sp, hl
    add e
    db $fc
    rst $00
    ld hl, sp-$79
    ld hl, sp-$51
    ret nc

    add a
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    dec bc
    db $f4
    rrca
    ldh a, [rIF]
    ldh a, [$0b]
    db $f4
    rrca
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [$8f]
    ldh a, [$9f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR22], a
    add sp, $17
    add sp, $17
    add sp, $1f
    ldh [$1f], a
    ldh [$9f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    cpl
    ret nc

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$5f], a
    and b
    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$7f], a
    add b
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    ld [hl], h
    adc e
    dec h
    jp c, $d22d

    dec bc
    db $f4
    dec bc
    db $f4
    add hl, hl
    sub $3d
    jp nz, $d22d

    cpl
    ret nc

    ld a, a
    add b
    cp $01
    ei
    inc b
    ld a, e
    add h
    ld l, a
    sub b
    ld l, a
    sub b
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    ld e, a
    and b
    rra
    ldh [$9f], a
    ld h, b
    rst $38
    nop
    cp a
    ld b, b
    ld a, a
    add b
    ccf
    ret nz

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
    or a
    ld b, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld [$08f7], sp
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$00ff], sp
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
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
    db $fd
    rst $38
    sbc l
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
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

jr_032_577e:
    rst $38
    rst $38

jr_032_5780:
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

jr_032_578f:
    rst $38
    rst $28
    db $10
    rst $38
    nop
    rst $20
    jr jr_032_577e

    jr jr_032_578f

    add hl, de
    xor $11
    db $ed
    inc de
    rst $28
    inc de
    ld [$ea17], a
    rla
    db $eb
    ld d, $ef
    ld d, $e7
    ld e, $e1
    ld e, $c7
    jr c, jr_032_577e

    jr nc, jr_032_5780

jr_032_57b1:
    jr nc, jr_032_57b1

    ld bc, $01fe
    cp $01
    or $01
    or $01
    and $01
    rst $20
    nop
    xor $01
    cp $01
    cp $01
    or $09
    ldh [$1f], a
    ldh [$1f], a
    add sp, $17
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    or e
    ld c, h
    or e
    ld c, h
    inc sp
    call z, $0cfb
    ei
    inc c
    di
    inc c
    db $e3
    inc e
    db $eb
    inc d
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
    rst $38
    nop
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
    db $fd
    rst $38
    db $fd
    rst $38
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
    di
    nop
    di
    nop
    di
    rst $38
    rst $30
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
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
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
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ld a, $ff
    ld a, [hl]
    rst $38
    ld a, [hl]
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
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f9
    ld b, $d9
    ld h, $d9
    ld h, $d1
    ld l, $d1
    ld l, $f5
    ld c, $f7
    inc c
    rst $30
    inc c
    rst $18
    inc c
    rst $18
    inc c
    db $db
    inc c
    ei
    inc c
    db $eb
    inc e
    db $eb
    inc e
    ld c, a
    cp b
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$06
    ld sp, hl
    inc b
    ei
    inc c
    di
    inc c
    di
    sbc c
    and $99
    and $f1
    adc $b1
    adc $b1
    adc $31
    adc $33
    call z, $9966
    ld l, [hl]
    sub c
    ld l, [hl]
    sub c
    db $ec
    inc de
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    cp $03
    cp d
    ld b, a
    cp d
    ld b, a

jr_032_58e4:
    or d
    ld c, a
    or h
    ld c, a
    add h
    ld a, a
    add c
    ld a, [hl]
    add c
    ld a, [hl]
    add e
    ld a, h
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    rst $08
    jr nc, @-$2f

    jr nc, @-$2f

    jr nc, @-$2f

    jr nc, @-$2f

    jr nc, @+$01

    nop
    rst $38
    nop
    rst $18
    jr nz, jr_032_58e4

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
    ld hl, sp-$01
    db $fc
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc a
    rst $38
    ld c, $ff
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_032_59f8

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_032_5a08

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_032_5a18

    nop
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_032_5a29

jr_032_59f8:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $30
    scf
    jr c, jr_032_5a01

jr_032_5a01:
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f

jr_032_5a08:
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    jr nc, @+$32

    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c

jr_032_5a14:
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_032_5a18:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    jr nc, jr_032_5a76

    ld d, [hl]
    ld d, a
    nop
    nop
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_032_5a29:
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    jr nc, jr_032_5a93

    ld h, e
    ld h, h
    nop
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld e, a
    ld e, a
    ld l, l
    jr nc, jr_032_5aaf

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
    ld a, l
    adc h
    adc l
    nop
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
    nop
    nop
    sbc e
    sbc h
    sbc l
    jr nc, jr_032_5a14

jr_032_5a76:
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    nop
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
    nop
    cp b
    cp c

jr_032_5a93:
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
    add $00
    nop
    rst $00
    ret z

    ret


    jp z, $cccb

    nop
    nop
    call RST_00
    nop
    nop

jr_032_5aaf:
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0001
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
    ld b, $06
    ld b, $06
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0003
    nop
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    pop af
    cp $f1
    cp $f3
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
    di
    db $fc
    di
    db $fc
    ei
    db $fc
    di
    db $fc
    ei
    db $fc
    pop af
    cp $f3
    db $fc
    ld sp, hl
    cp $fb
    db $fc
    ld sp, hl
    cp $fb
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
    ld sp, hl
    cp $f9
    cp $fd
    cp $f9
    cp $fb
    db $fc
    ld sp, hl
    cp $f9
    cp $f9
    cp $f9
    cp $fd
    cp $f9
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    cp $fd
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    rst $38
    cp $ff
    db $fc

jr_032_5c87:
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
    rst $38
    rst $38
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    jr nz, jr_032_5c87

    ld h, b
    rst $18
    jr nz, @-$1f

    jr nz, @-$1f

    or b
    ld c, a
    sub c
    ld l, [hl]
    sub c
    ld l, [hl]
    or b
    ld l, a
    and b
    ld a, a
    db $fd
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $18
    ccf
    rst $18
    ccf
    rst $18
    ccf
    db $dd
    ld a, $de
    inc a
    sbc $3c
    db $fc
    inc e
    db $fc
    inc e
    db $fc
    inc e
    cp $1e
    cp $1e
    cp $1e
    xor $1f
    rst $28
    rra
    rst $28
    rra
    xor $1f
    adc $1f
    cp $0f
    rst $38
    ld c, $ff
    ld c, $ff
    ld c, $df
    ld c, $de
    ld c, $dc
    ld c, $d6
    ld c, $d7
    ld c, $d7
    ld c, $d7
    ld c, $c7
    ld c, $c7
    ld c, $ce
    rlca
    adc $07
    adc $07
    ld [$ea07], a
    rlca
    ld [$ea07], a
    rlca
    ld [$ca07], a
    rlca
    ld [c], a
    rlca
    ld [$c207], a
    rlca
    ld [c], a
    rlca

jr_032_5d14:
    jp nz, $d207

    rlca
    ld [c], a
    rlca
    ld [c], a
    rlca
    db $e3
    rlca
    jp $e707


    inc bc
    rst $20
    inc bc
    rst $20
    inc bc
    rst $20
    inc bc
    rst $20
    inc bc
    rst $20
    inc bc
    rst $20
    inc bc
    rst $00
    inc bc
    rst $00
    inc bc
    rst $00
    inc bc
    add $03
    add $03
    add $03
    rst $20
    inc bc
    pop hl
    inc bc
    pop hl
    inc bc
    pop hl
    inc bc
    ld h, b
    add e
    ld h, b
    add e
    ld h, c
    add d
    ld h, c
    add d
    ld [hl], c
    add d
    ld [hl], h
    add d
    ld [hl], b
    add d
    jr nc, jr_032_5d14

    jr nc, @-$3c

    or h
    jp nz, $c0b7

    or a
    ret nz

    or l
    ret nz

    sbc c
    db $e4
    sbc c
    db $e4
    sub l
    db $e4
    sub l
    db $e4
    sbc l
    db $e4
    sbc l
    db $e4
    cp l
    ret nz

    cp l
    ret nz

    or l
    ret z

    or c
    ret z

    or e
    ret z

    cp c
    ret z

    cp e
    ret z

    cp e
    ret z

    di
    ret z

    di
    ret z

    db $d3
    add sp, -$35
    ldh a, [$8b]
    ldh a, [$db]
    ldh a, [$db]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [$df]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$f7]
    add sp, $25
    jp c, $ff00

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
    ldh [$1f], a
    cp a
    ld a, a
    ld a, a
    rst $38
    rrca
    rst $38
    ld bc, $80ff
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp+$07
    rlca
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld hl, sp-$80
    ld a, a
    add b
    ld a, c
    add b
    ldh [rP1], a
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
    ccf
    ld b, b
    ccf
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
    add h
    ei
    add h
    ei
    add d
    db $fd
    adc b
    rst $30
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    sbc a
    ldh [$9f], a
    ldh [$80], a
    rst $38
    cp a
    rst $38
    or b
    rst $38
    adc c
    or $bf
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    adc a
    ldh a, [$80]
    add b
    ret nz

    add b
    rst $38
    add b
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
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    adc a
    rst $38
    nop
    rst $38
    db $10
    rst $28
    ld a, l
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    sbc $ff
    ldh a, [rIE]
    cp b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    and $ff
    db $fc
    rst $38
    ldh a, [rIE]
    db $f4
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    sbc $ff
    rst $38
    rst $38
    ld c, a
    or b
    rra
    ldh [$5f], a
    and b
    rst $38
    nop
    rst $08
    jr nc, jr_032_5eba

    ldh [$bf], a
    ld b, b
    rra
    ldh [$1f], a
    ldh [$e0], a
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    ld a, [$00ff]
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    add c
    ld a, a
    ldh a, [rIF]

jr_032_5eba:
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    cp $01
    dec bc
    nop
    ld hl, sp+$07
    rst $38
    rlca
    ld hl, sp+$07
    ld a, h
    inc bc
    rra
    rst $38
    rra
    rst $38
    rra
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
    rlca
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    ldh a, [rIF]
    rra
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ld bc, $2700
    nop
    cp $01
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
    cp $ff
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    rlca
    ld hl, sp+$05
    ld a, [$807f]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    cp b
    rst $38
    ldh a, [rIE]
    sub b
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

    rst $38
    add b
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    add sp, -$01
    ld hl, sp-$01
    db $fc
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$bb], a
    ld b, h
    db $10
    rst $28
    rst $10
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    jp $e33f


    rra
    jp Jump_000_1f3f


    rst $38
    rst $18
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld e, a
    cp a
    rst $18
    ccf
    rst $08
    ccf
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $20
    rra
    rst $20
    rra
    rst $30
    rrca
    rst $30
    rrca
    rst $20
    rra
    rst $20
    rra
    ld [hl], a
    rrca
    ld [hl], a
    rrca
    ld [hl], a
    rrca
    ld l, a
    rra
    ld h, a
    rra
    rst $20
    rra
    rst $20
    rra
    rst $28
    rra
    rst $20
    rra
    rst $20
    rra
    rst $30
    rrca
    rst $30
    rrca
    rst $30
    rrca
    rst $20
    rra
    di
    rrca
    dec e
    ld [bc], a
    dec sp
    ld b, $83
    ld a, [hl]
    db $fc
    inc bc
    rst $38
    nop
    ccf
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    cpl
    nop
    ld a, $01
    or $09
    db $e3
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
    db $ec
    rst $38
    db $10
    rst $38
    dec hl
    call nc, $807f
    ccf
    ret nz

    ccf
    ret nz

    rst $38
    nop
    rst $18

jr_032_601d:
    jr nz, jr_032_601d

    nop
    db $fc
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
    ld bc, $07fe
    ld hl, sp+$00
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    sbc c
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, b
    rst $38
    ld hl, sp-$01
    cp $ff

jr_032_605c:
    ld a, [c]
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
    db $fd
    ld [bc], a
    ld b, b
    cp a
    dec b
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $20
    or a
    rst $08
    rst $10
    ccf
    inc sp
    rst $38
    or e
    rst $38
    ld de, $11ff
    rst $38
    ld de, $00ff
    xor $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $e0
    ld c, $f0
    ld c, $e0
    ld c, $f0
    ld c, $e0
    ld l, $f0
    ld c, $e0
    adc [hl]
    ld [hl], b
    ld c, $e0
    ld c, $70
    ld c, $a0
    ld c, $70
    ld c, $e0
    adc [hl]
    ldh a, [$0e]
    ldh [$0e], a
    ldh a, [$0e]
    ldh [$0e], a
    ldh a, [$0e]
    ldh [$0e], a
    ldh a, [$0e]
    ldh [$0e], a
    ld d, b
    ld c, $a0
    ld c, $70
    adc [hl]
    jr nz, jr_032_605c

    db $10
    adc [hl]
    db $fd
    di
    ld a, l
    db $e3
    and l
    ld h, e
    push af
    inc hl
    push af
    inc bc
    db $fd
    inc bc
    rst $00
    dec sp
    add a
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
    add b
    rst $38
    ld a, [bc]
    push af
    di
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    add sp, $00
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
    inc c
    di
    rlca
    ld hl, sp+$2f
    ret nc

    cp a
    ld b, b
    ld a, a
    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, a
    add b
    ld a, l
    add d
    dec e
    ld [c], a
    inc b
    ei
    ld a, [bc]
    push af
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
    jr nc, @+$01

    xor [hl]
    rst $38
    ei
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
    db $fd
    ld [bc], a
    sub a
    ld l, b
    inc b
    ei
    db $e3
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
    db $fd
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    or $ff
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ret nc

    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    ldh a, [rIE]
    ld [c], a
    db $fd
    ldh a, [rIE]
    ldh a, [rIE]
    or $f9
    rst $30
    ld hl, sp-$0a
    ld hl, sp-$0a
    ld hl, sp+$07
    ld hl, sp+$23
    call c, Call_000_18e7
    rst $38
    nop
    ldh a, [rP1]
    add c
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

jr_032_61df:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    nop
    rst $38
    dec bc
    db $f4
    ld a, [hl-]
    push bc
    ld [de], a
    db $ed
    jr nc, jr_032_61df

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, c
    rst $38
    ld hl, sp-$01
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ff3
    ld c, $fe
    call c, $f739
    ld [hl], e
    rst $08
    rst $28
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
    cp $ff
    cp $ff
    rst $38
    cp $f7
    cp $f7
    cp $f7
    cp $f3
    cp $f3
    cp $93
    cp $9a
    or $b8
    or $98
    or $1c
    ld a, [c]
    ld e, $f0
    jr @-$08

    ld a, [de]
    db $f4
    ld e, $f0
    ld a, [de]
    db $f4

jr_032_6264:
    ld a, [de]
    db $f4
    ld a, [bc]
    db $f4
    ld a, [bc]
    db $f4
    ld a, [bc]
    db $f4
    ld a, [bc]
    db $f4
    jr z, jr_032_6264

    ld a, [hl+]
    db $f4
    ld a, [hl+]
    db $f4
    ld a, [hl+]
    db $f4
    ld l, d
    db $f4
    ld a, [hl+]
    db $f4
    ld a, [hl-]
    db $e4
    ld a, b
    db $e4
    ld a, h
    ldh [$7c], a
    ldh [$2f], a
    ldh a, [$2f]
    ldh a, [$7f]
    ldh [$7f], a
    ldh [$7e], a
    ldh [$7f], a
    ldh [$3e], a
    ldh [$7e], a
    ldh [$2c], a
    ldh a, [$3c]
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [$9c], a
    ld h, b
    ld d, h
    jr z, jr_032_62cb

    jr jr_032_62bd

    ld [$0806], sp
    rla
    nop
    dec de
    nop
    ld [$cc00], sp
    nop
    ld l, [hl]
    nop
    rrca
    nop
    rlca
    rst $38
    rlca
    rst $38
    add b
    ld a, a
    db $f4
    dec bc
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_032_62bd:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld c, $f1
    xor $11
    db $f4

jr_032_62cb:
    dec bc
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
    ld bc, $0300
    ld bc, $078b
    db $fc
    ld c, $f8
    add hl, sp
    ld [hl], b
    db $e3
    call nz, $bccf
    rra
    ld a, h
    ld a, a
    db $fd
    cp $f0
    rst $38
    rst $30
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$bf]
    ldh [$bf], a
    ldh [$9f], a
    ldh [$df], a

Jump_032_62ff:
    and b
    rst $18
    and b
    ld a, a
    add b
    ld a, b
    add b
    ld hl, sp+$00
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    add b
    ld b, b
    ret nz

    rst $38
    ld b, c
    cp $41
    ld [c], a
    ld b, c
    ld [c], a
    ld b, e
    ldh [rWX], a
    db $f4
    ld b, a
    ld hl, sp+$46
    ld sp, hl
    ld b, b
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
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    ld d, h
    rst $38
    and h
    rst $38
    and h
    rst $38
    and h
    rst $38
    cp h
    rst $38
    sbc h
    rst $38
    inc c
    rst $38
    ld c, $ff
    and h
    rst $38
    nop
    rst $38
    ld bc, $04ff
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc b
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
    rlca
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    ld hl, $49ff
    cp a
    ld h, e
    sbc a
    inc sp
    rst $08
    dec sp
    rst $00
    dec e
    db $e3
    ld b, $f9
    add e
    ld a, h
    add c
    ld a, [hl]
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    db $fc

jr_032_6397:
    inc bc
    cp $01
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
    rst $18
    jr nz, jr_032_6397

    rla
    ret nc

    cpl
    nop
    rst $38
    inc e
    db $e3
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
    nop
    rst $38
    nop
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
    inc bc
    rlca
    rrca
    ld a, $1c
    ld [hl], b
    add hl, sp
    di
    db $e3
    rst $00
    adc a
    rra
    rra
    rrca
    ld a, a
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
    pop af
    rrca
    db $e3
    rra
    pop af
    rrca
    pop af
    rrca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, [hl]
    ld bc, $017e
    rra
    nop
    rlca
    nop
    ld bc, $0000
    nop
    add b
    ld a, a
    ret nc

    cpl
    ldh a, [rIF]
    ld hl, sp+$07
    db $f4
    dec bc
    ld hl, sp+$07
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $18
    rst $38
    sbc [hl]
    ld bc, $01de
    cp [hl]
    ld bc, HeaderManufacturerCode
    ld a, $01
    ccf
    ld bc, HeaderManufacturerCode
    cp [hl]
    ld bc, $01ef
    ld a, [hl]
    ld bc, $017e
    ld a, h
    inc bc
    ld a, h
    inc bc
    cp $01
    cp $01
    cp $01
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, l
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, l
    ld [bc], a
    ld a, a
    nop
    ld a, l
    ld [bc], a
    ld a, a
    nop
    ld a, a
    nop
    ld a, $00
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    di
    inc c
    db $e3
    inc e
    db $e3
    inc e
    pop hl
    ld e, $f1
    ld c, $f3
    inc c
    db $e3
    inc e
    jp Jump_032_433c


    inc a
    inc bc
    inc a
    ld a, a
    sbc a
    ccf
    rst $08
    rra
    rst $20
    rrca
    di
    rlca
    ld sp, hl
    ld bc, $01fe
    cp $80
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    sbc a
    ld bc, $01ff
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld bc, $1fff
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    adc a
    rst $08
    rra
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
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    pop af
    cp $59
    cp $17
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIE]
    nop
    db $fc
    nop
    ldh a, [rP1]
    ret nz

    nop
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
    ret nz

    nop
    ldh [rP1], a
    ld h, b
    add b
    ld h, h
    add b
    ld a, b
    add b
    ld [hl], h
    add b
    ld a, [hl]
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
    rst $38
    rst $38
    rst $38
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
    rst $20
    rst $38
    call nz, $c0ff
    rst $38
    pop af
    rst $38
    or d
    rst $38
    jr nz, @+$01

    add b
    rst $38
    sub b
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
    jr nz, @+$01

    and b
    rst $38
    ldh [rIE], a
    ld b, b
    rst $38
    ld h, b
    rst $38
    and b
    rst $38
    add b
    rst $38
    sub d
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    pop bc
    rst $38
    pop hl
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$01
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
    ld a, a
    rst $38
    ccf
    ld a, a
    sbc a
    rrca
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
    inc bc
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    pop af
    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld [bc], a
    db $fd
    ld bc, $43fe
    cp h
    ld c, a
    or b
    rst $28
    db $10
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
    rst $00
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    daa
    rst $38
    ld b, $ff
    dec e
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
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    inc bc
    cp $01
    cp $01
    or $01
    db $76
    ld bc, $022f
    dec a
    ld [bc], a
    dec sp
    inc b
    cp a
    nop
    rra
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rla
    rst $38
    rrca
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
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
    ld a, a
    rst $38
    ld l, a
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
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld a, [$f805]
    rlca
    ld a, [$7205]
    dec c
    jr z, jr_032_6677

    or b
    rrca
    ret c

    rlca
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
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

jr_032_6677:
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
    ld e, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    dec e
    rst $38
    ld [$04ff], sp
    rst $38
    nop
    rst $38
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    db $f4
    dec bc
    rst $30
    ld [$00ff], sp
    cp $01
    cp $01
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
    rst $18
    nop
    cp [hl]
    ld bc, $00bf
    cp a
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
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, $01
    dec sp
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
    db $fd
    ld [bc], a
    rst $38
    nop
    xor $11
    xor $11
    ld hl, sp+$07
    ldh a, [rIF]
    or b
    ld c, a
    xor h
    ld d, e
    db $e4
    dec de
    ldh [$1f], a
    ld [hl], c
    adc [hl]
    add sp, $17
    db $fc
    inc bc
    ld hl, sp+$07
    cp b
    ld b, a
    ld a, [$fe05]
    ld bc, $0bf4
    ldh [$1f], a
    ldh [$1f], a
    ld [c], a
    dec e
    ld a, [c]
    dec c
    db $eb
    inc d
    ld a, [c]
    dec c
    di
    inc c
    ldh a, [rIF]
    ld a, [$6c05]
    inc de
    inc a
    inc bc
    cp $01
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

jr_032_6717:
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$07
    ld a, [$fa05]
    dec b
    ld a, [$fa05]
    dec b
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    jr nz, jr_032_6717

    ld [hl], b
    adc a
    ld b, b
    cp a
    ld b, b
    cp a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf

jr_032_6744:
    ret nz

    ccf
    ret nz

    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ld de, $01ef
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    add l
    ld a, e
    ldh [$1f], a
    ldh [$1f], a
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    ld a, b
    rst $38
    ld h, b
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
    rst $28
    nop
    rst $38
    ld b, d
    cp l
    ld hl, sp+$07
    db $ec
    inc de
    ret c

    daa
    ld l, h
    sub e
    call $fd32
    ld [bc], a
    call z, $de33
    ld hl, $02fd
    rst $38
    nop
    cp [hl]
    ld b, c
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_032_6744

    ld l, b
    ld a, $c1
    ccf
    ret nz

    rra
    ldh [$6e], a
    sub c
    db $fc
    inc bc
    ld sp, hl
    ld b, $fd
    ld [bc], a
    cp $01
    cp $01
    sbc [hl]
    ld h, c
    add h
    ld a, e
    call nz, $043b
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
    ld bc, $03ff
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
    inc bc
    rst $38
    inc hl
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld sp, $21ff
    rst $38
    ld [bc], a
    rst $38
    ld h, c
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    ld a, h
    rst $38
    inc a
    rst $38
    jr z, @+$01

    ld [$09ff], sp
    rst $38
    nop
    rst $38
    add h
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    add b
    ld a, a
    ld [$90ff], sp
    ld a, a
    add hl, bc
    rst $38
    rra
    rst $38
    daa
    rst $38
    rrca
    rst $38
    scf
    rst $38
    rra
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rla
    rst $38
    rla
    rst $38
    dec bc
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
    rrca
    rst $38
    and e
    rst $18
    rst $38
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    ld b, e
    rst $38
    ld [bc], a
    rst $38
    inc bc
    rst $38
    ld bc, $83fe
    ld a, h
    add b
    ld a, a
    add b
    ld a, a
    ld bc, $80ff
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, h
    cp a
    ld b, c
    cp [hl]
    pop bc
    ld a, $88
    ld [hl], a
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    add b
    ld a, a
    adc b
    ld [hl], a
    nop
    rst $38
    add c
    ld a, a
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
    rrca
    rst $38
    rrca
    rst $38
    scf
    rst $38
    rra
    rst $38
    ccf
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
    nop
    ld bc, $0101
    ld [bc], a
    inc bc
    inc b
    ld bc, $0605
    rlca
    ld [$0101], sp
    ld bc, $0901
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    ld bc, $0101
    dec d
    ld d, $17
    jr jr_032_690d

    ld a, [de]
    dec de
    ld bc, $1d1c
    ld e, $1f
    jr nz, jr_032_691e

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_032_692e

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_032_693e

jr_032_690d:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_032_694e

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_032_691e:
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

jr_032_692e:
    ld d, e
    ld d, h
    ld d, l
    ld d, l
    ld d, [hl]
    ld d, l
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

jr_032_693e:
    ld h, c
    ld h, d
    ld d, l
    ld h, e
    ld d, l
    ld h, h
    ld d, l
    ld d, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, c
    ld l, c
    ld l, c

jr_032_694e:
    ld l, d
    ld d, l
    ld l, e
    ld l, h
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld d, l
    ld l, l
    ld l, [hl]
    ld l, a
    ld l, c
    ld l, c
    ld l, c
    ld [hl], b
    ld [hl], c
    ld d, l
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
    ld l, c
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
    ld d, l
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
    ld bc, $bc01
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

    ld bc, $dedd
    rst $18
    ldh [$e1], a
    ld bc, $e3e2
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld bc, $0101
    ld [$ebb0], a
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld bc, $0101
    ld bc, $0101
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp+$01
    ld bc, $0101
    ld bc, $0101
    ld bc, $f901
    ld a, [$fcfb]
    db $fd
    cp $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0300
    inc bc
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    nop
    nop
    nop
    nop
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0000
    nop
    ld bc, $0101
    dec b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld bc, $0000
    ld bc, $0101
    dec b
    inc b
    inc b
    ld b, $04
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    dec b
    ld bc, $0001
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld b, c
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [$94ff], a
    rst $38
    add e
    db $fc
    inc bc
    db $fc
    ld e, a
    ldh [$3f], a
    ret nz

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
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    xor h
    ld d, e
    add h
    ld a, e
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    or $ff
    or [hl]
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, e
    rst $38
    ld a, a
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
    cp $ff
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    db $ed
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
    ld a, b
    rst $38
    ld a, b
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
    rst $38
    ei
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, [$faff]
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
    ld a, c
    rst $38
    dec bc
    rst $38
    cp c
    ld c, a
    ldh [$1f], a
    ldh a, [rIF]
    di
    inc c
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    set 7, a
    jp z, $caff

    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $28
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
    ld a, h
    add e
    ld a, h
    add e
    call c, $9423
    ld l, e
    sub h
    ld l, e
    add h
    ld a, e
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc h
    rst $38
    ld bc, $0fff
    rst $38
    ld [hl-], a
    rst $38
    xor e
    rst $38
    adc a
    rst $38
    cp l
    rst $38
    xor a
    rst $38
    add e
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, [$f9ff]
    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    cpl
    rst $38
    inc sp
    rst $38
    ld [hl], e
    rst $38
    ld b, a
    rst $38
    adc l
    rst $38
    sbc l
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    sbc b
    rst $38
    ld hl, sp-$01
    db $ec
    rst $38
    db $fc
    rst $38
    cp l
    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, c
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    add a
    rst $38
    rla
    rst $38
    rla
    rst $38
    rst $28
    rst $38
    rst $28
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
    rst $38
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
    or a
    rst $38
    inc d
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

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
    db $fd
    rst $38
    rra
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    or a
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
    push af
    ld a, [bc]
    ld sp, hl
    ld b, $d8
    daa
    pop bc
    ccf
    daa
    rst $18
    ld [de], a
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    dec e
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
    cp $ff
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $e4
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    ld hl, $08ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    add c
    rst $38
    ld bc, $60ff
    rst $38
    ld h, e
    rst $38
    db $e4
    rst $38
    nop
    rst $38
    ld hl, $26ff
    rst $38
    ld h, [hl]
    rst $38
    jp nc, $feff

    rst $38
    ei
    rst $38
    call c, $ffff
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $fd
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
    rst $20
    rst $38
    rst $30
    rst $38
    db $e3
    rst $38
    ld [c], a
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp z, $c7ff

    rst $38
    add a
    rst $38
    set 7, a
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
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    rst $00
    ld hl, sp-$7d
    db $fc
    add a
    ld hl, sp-$71
    ldh a, [$9f]
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ld a, h
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ret nz

    nop
    and b
    nop
    add b
    nop
    and b
    nop
    ret nz

    nop
    ret nz

    nop
    ldh a, [rP1]
    db $fc
    nop
    cp a
    ld b, b
    sbc a
    ld h, b
    rra
    ldh [$e7], a
    ld a, b
    ld hl, $70fe
    rst $38
    ld [hl], b
    rst $38
    ld [hl], c
    cp $f0
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    cp $ff
    cp $ff
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    xor a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    add c
    rst $38
    pop bc
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld bc, $20fe
    rst $18
    jr c, @-$37

    ld e, a
    ldh [$5e], a
    pop hl
    ld c, $f1
    ld c, a
    or b
    xor a
    ldh a, [rIF]
    ldh a, [$27]
    ret c

    ld b, e
    cp h
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
    cp $80
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    or $ff
    ld a, [$e8ff]
    rst $38
    ret nc

    rst $38
    sub b
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    ld b, e
    rst $38
    ld b, d
    rst $38
    ld [c], a
    rst $38
    ld b, [hl]
    rst $38
    pop de
    rst $38
    sub $ff
    call c, $ecff
    rst $38
    jp z, $e8ff

    rst $38
    ld a, [c]
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    or $ff
    xor $ff
    ldh a, [rIE]
    ldh a, [rIE]
    push hl
    rst $38
    and $ff
    ld a, [c]
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    jp hl


    rst $38
    db $dd
    rst $38
    reti


    rst $38
    cp l
    rst $38
    cp h
    rst $38
    cp h
    rst $38

jr_032_6e9a:
    cp l
    rst $38
    cp l
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
    rst $08
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    jp $c1ff


    rst $38
    pop bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    jr nz, jr_032_6e9a

    nop
    db $fc
    ld [hl], b
    adc h
    ld [hl], b
    adc h
    ld [hl], l
    adc d
    ld bc, $03ff
    db $fd
    inc bc
    db $fd
    nop
    rst $38
    add b
    rst $38
    ret nz

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld a, c
    add b
    db $fd
    nop
    db $fc
    nop
    db $fc
    nop
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld e, [hl]
    and b
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    cpl
    ret nc

    cpl
    ret nc

    ccf
    ret nz

    ld a, a
    add b
    ld d, a
    xor b
    rra
    ldh [$5f], a
    and b
    sbc a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$df], a
    ldh [$ef], a
    ldh a, [rIE]
    ldh [$f7], a
    add sp, -$01
    ldh [$ef], a
    ldh a, [$6f]
    ldh a, [$6f]
    ldh a, [$2f]
    ldh a, [$3f]
    ldh a, [rVBK]
    or b
    rst $38
    db $10

jr_032_6f26:
    ld h, a
    sbc b
    rst $20
    jr @-$0f

    db $10
    rst $20
    jr jr_032_6f26

    ld [$0ef1], sp
    di
    inc c
    ei
    inc b
    ld sp, hl
    ld b, $f0
    rrca
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, [$da07]
    daa
    db $db
    daa
    db $eb
    rla
    jp $893f


    ld [hl], a
    pop bc
    ccf
    add l
    ld a, e
    inc b
    ei
    ld [$0cf7], sp
    di
    inc c
    di
    ld [$21f7], sp
    rst $38
    ld [de], a
    db $fd
    ld [de], a
    db $fd
    jr nz, @+$01

    and c
    rst $38
    ld bc, $80ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    scf
    rst $38
    rrca
    rst $38
    ld b, a
    rst $38
    ret nz

    rst $38
    add c
    rst $38
    inc bc
    rst $38
    jp nz, Jump_032_62ff

    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $60ff
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld h, d
    db $fd
    ld [hl], b
    rst $38
    ldh a, [rIE]
    jr nc, @+$01

    ret c

    rst $38
    reti


    cp $db
    db $fc
    db $fc
    rst $38
    ldh [rIE], a
    db $fc
    rst $38
    ld hl, sp-$01
    db $ec
    rst $38
    db $ec
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    db $e4
    rst $38
    db $f4
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, b
    ccf
    jr c, @+$41

    jr c, jr_032_6fe1

    jr c, jr_032_7003

    cp b
    ld a, a
    call c, $bcff
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    ld a, [hl]
    ld [$0876], sp
    ld d, [hl]
    ld [$007e], sp
    ld a, a
    inc b
    ld a, [hl]
    inc b
    ld a, [hl]
    inc b
    ld a, b
    ld b, $78

jr_032_6fe1:
    ld b, $3a
    ld b, $ff
    ld [bc], a
    ld a, a
    ld [bc], a
    db $fd
    ld [bc], a
    ld e, l
    ld [bc], a
    ld e, h
    inc bc
    db $fc
    inc bc
    db $fd
    inc bc
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    or $01
    or a
    rst $38
    rst $30

jr_032_7003:
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
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
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    db $ed
    rst $38
    xor $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $00
    xor $00
    cp $00
    rst $38
    nop
    rst $38
    nop
    ld e, a

Call_032_703b:
    and b
    ld e, [hl]
    and b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$8f]
    ldh a, [$87]
    ld hl, sp-$39
    ld hl, sp-$19
    ld hl, sp+$43
    db $fc
    jp nz, $f6fc

    ld hl, sp-$0e
    db $fc
    ld a, [c]
    db $fc
    ldh a, [$fe]
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    ld hl, sp-$02
    cp b
    cp $3a
    db $fc
    ld a, d
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    ld e, h
    db $fc
    ld e, h
    db $fc
    inc e
    db $fc
    inc a
    db $fc
    inc d
    db $fc
    inc c
    db $fc
    inc b
    db $fc
    ld [$04fc], sp
    ld hl, sp+$0c
    ld hl, sp+$0d
    ld hl, sp+$08
    ld hl, sp+$09
    ld hl, sp+$09
    ld hl, sp+$09
    ld hl, sp+$09
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$03
    ld hl, sp-$7d
    ld a, b
    adc e
    ld [hl], b
    dec bc
    ldh a, [$0b]
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop

jr_032_70b9:
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rP1], a
    ldh [rP1], a
    ld hl, sp+$00
    db $fc
    nop
    ld a, [hl]
    add b
    cp $80
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    cp a
    ret nz

    ld a, a
    ret nz

    ld e, a
    ldh [$df], a
    ld h, b
    rst $08
    ld [hl], b
    rst $18
    ld h, b
    rst $38
    ld b, b
    sbc a
    ld h, b
    add e
    ld a, h
    add c
    ld a, [hl]
    ret nc

    jr nz, jr_032_70b9

    jr nz, @-$1e

    nop
    ret nz

    nop
    ret nc

    nop
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38

jr_032_7106:
    rst $18
    rst $38

jr_032_7108:
    di
    rst $18
    inc a
    rst $18
    ld e, $ff
    rrca
    rst $38
    rst $08
    cp a
    rst $18
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    pop bc
    cp [hl]
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    and b
    rst $18
    jr nz, jr_032_7106

    jr nz, jr_032_7108

    jr nz, @+$01

    nop
    ld e, a
    jr nz, jr_032_714e

    ld h, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
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

jr_032_714e:
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    add b
    rst $38
    add b
    ld [hl], a
    adc b
    ld a, [hl]
    add c
    ld e, l
    and d
    reti


    and [hl]
    ld b, e
    cp h
    nop

jr_032_716b:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_032_7177:
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_032_716b

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
    jr nz, jr_032_7177

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_032_719e:
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
    ldh [rIE], a
    ldh [rIE], a
    ld hl, sp-$01
    ldh a, [rIE]
    db $fc
    rst $38
    ldh [rIE], a
    ld e, a
    and b
    ldh [$1f], a
    nop
    rst $38
    nop
    rst $38

jr_032_71be:
    rlca
    rst $38
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    nop
    nop
    add b
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $00
    jr c, jr_032_71be

    jr c, jr_032_719e

    ld e, d
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    ld e, h
    rst $38
    nop
    rst $38
    ret nc

    cpl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cpl
    ret nc

    rst $38
    nop
    rst $38
    nop
    ld a, l
    nop
    rra
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
    xor [hl]
    ld d, c
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jr nz, @+$01

    nop
    push af
    ld a, [bc]
    and $19
    rst $08
    jr nc, @+$01

    nop
    ld [hl], e
    adc h
    or b
    ld c, a
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ei
    inc b
    ei
    inc b
    ld a, e
    inc b
    dec sp
    inc b
    ld e, e
    inc b
    rra
    nop
    rrca
    nop
    adc a
    nop
    adc e
    inc b
    rst $10
    nop
    rst $30
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $28
    nop
    rst $00
    nop
    add l
    rst $38
    dec bc
    rst $38
    inc hl
    rst $38
    ld bc, $31ff
    rst $38
    ld de, $1fff
    rst $38
    cpl
    rst $38
    rlca
    rst $38
    rra
    rst $38
    rra
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    jr @+$01

    ld c, $ff
    rlca
    rst $38
    dec bc
    rst $38
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
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    dec b
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
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $28
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ldh a, [rIF]
    cp $01
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rrca
    nop
    inc bc
    nop
    ld bc, $0000
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
    ldh a, [rIF]
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
    cp $01
    or $09
    ld sp, hl
    ld b, $f8
    rlca
    ret nc

    cpl
    add b
    ld a, a
    nop
    rst $38
    ldh [$1f], a
    add b
    ld a, a
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
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIF]
    db $f4
    dec bc
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
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
    cp $01
    cp $01
    ld a, [hl]
    ld bc, $017e
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    ld a, [hl]
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    ld bc, $037c
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, [hl]
    ld bc, $037c
    db $fc
    inc bc
    cp $01
    db $fd
    inc bc
    ld sp, hl
    rlca
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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ei
    rlca
    rst $38
    nop
    rrca
    nop
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    ld bc, $3fc3
    inc b
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ccf
    rst $38
    ccf
    rst $38
    inc bc
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
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ld hl, sp+$07
    ret nz

    ccf
    ld h, b
    sbc a
    ld hl, sp+$07
    cp h
    ld b, e
    cp b
    ld b, a
    cp b
    ld b, a
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $0100
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $1000
    nop
    ld b, $00
    dec e
    ld [bc], a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    cp a
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
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
    cp $ff
    cp $ff
    cp $ff
    add [hl]
    ld a, a
    add d
    ld a, a
    add h
    ld a, e
    sbc [hl]
    ld a, c
    ccf
    ld hl, sp-$05
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld h, c
    sbc [hl]
    pop af
    ld c, $c0
    ccf
    ld hl, sp+$07
    cp $01
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
    rst $08
    nop
    scf
    nop
    dec d
    nop
    ld b, $ff
    add hl, de
    rst $38
    add hl, bc
    rst $38
    ld bc, $08ff
    rst $38
    ld [$02ff], sp
    rst $38
    ld bc, $00ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $05ff
    rst $38
    rlca
    rst $38
    ld b, $ff
    dec b
    rst $38
    ld [hl], l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rra
    nop
    sbc a
    nop
    sbc a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld e, h
    inc bc
    add a
    ld a, b
    rst $38
    nop
    db $e3
    db $fc
    db $e3
    db $fc
    rst $20
    ld hl, sp-$19
    ld hl, sp-$11
    ldh a, [$e5]
    ld a, [$f0ef]
    db $eb
    db $f4
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
    ccf
    ld bc, $013e
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $017e
    ld a, a
    ld bc, $037e
    ld a, l
    inc bc
    ld a, h
    inc bc
    ld a, l
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    ld a, h
    inc bc
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, h
    rlca
    ld a, b
    ld [bc], a
    ld hl, sp+$07
    ld a, b
    rlca
    ld a, b
    rlca
    ld hl, sp+$03
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ld a, [c]
    rrca
    ldh a, [$0b]
    ldh a, [rIF]
    ldh a, [$0b]
    ldh a, [rIF]
    pop af
    dec bc
    ldh a, [rTAC]
    ldh a, [$0b]
    ldh a, [rTAC]
    ldh a, [$0b]
    ldh [rNR22], a
    ldh [$0b], a
    ldh [$15], a
    ldh [$0a], a
    ldh [$15], a
    ldh [$0a], a
    ldh [$15], a
    ldh [$0a], a
    ldh [$15], a
    ldh [$0a], a
    ldh [$15], a
    ret nz

    ld a, [bc]
    ret nz

    dec b
    ret nz

    ld a, [bc]
    ldh [rTIMA], a
    ldh [rSC], a
    ldh a, [rSB]
    ldh a, [rP1]
    ld hl, sp+$01
    db $fc
    nop
    db $fc
    nop
    cp $ff
    ld bc, $00ff
    rst $38
    nop
    rst $08
    nop
    rra
    nop
    cp a
    nop
    xor a
    nop
    rst $30
    nop
    push hl
    rst $38
    ld hl, $5bff
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    ld a, a
    rst $38
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
    cp $01
    rst $38
    nop
    cp $01
    cp $01
    rst $38
    nop
    ld hl, sp+$07
    ret nz

    ccf
    ccf
    ret nz

    rst $38
    nop
    cp $01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rTAC], a
    rst $38
    nop
    rst $38
    jr nz, @+$01

    inc b
    rst $38
    add d
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add d
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    ld a, a
    dec b
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld [bc], a
    ld a, a
    ld bc, $02ff
    ld a, a
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    cp a
    nop
    rst $18
    nop
    cp a
    nop
    rst $18
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    and b
    rst $38
    ld b, h
    rst $38
    ld [hl+], a
    rst $38
    ld b, h
    rst $38
    adc b
    rst $38
    ld b, h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00bf
    ld e, a
    nop
    cp a
    nop
    ld d, a
    nop
    cp d
    nop
    ld d, a
    nop
    xor d
    nop
    ld d, a
    nop
    xor [hl]
    nop
    ld d, l
    nop
    xor [hl]
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
    ld a, [hl+]
    nop
    ld d, h
    nop
    jr z, jr_032_76f6

jr_032_76f6:
    inc d
    add c
    ld [$0081], sp
    jp $e300


    nop
    rst $30
    db $f4
    ld [$04f8], sp
    ld hl, sp+$04
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    add sp, $17
    ld a, [$e005]
    rra
    adc b
    ld [hl], a
    ldh a, [rIF]
    ld hl, sp+$07
    ldh a, [rIF]
    jp nc, $812f

    ld a, a
    rst $08
    ccf
    ld h, b
    rst $38
    ld h, b
    sbc a
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    db $e3
    rra
    jp $f03f


    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ld [c], a
    rra
    ldh [$1f], a
    ld a, [c]
    rrca
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
    rra
    add sp, $00
    rst $38
    db $10
    rst $38
    and d
    rst $38
    ld d, l
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
    ld e, [hl]
    cp $be
    rst $38
    ld a, h
    cp $be
    rst $38
    ld a, h
    cp $be
    rst $38
    ld a, h
    cp $b8
    db $fd
    ld a, h
    cp $fc
    db $fd
    ld a, h
    cp $f8
    db $fc
    ld [hl], b
    ld a, [$fcb8]
    ld e, b
    ld hl, sp-$48
    db $fc
    ld d, c
    ld hl, sp-$5f
    db $f4
    ld d, c
    ld hl, sp+$21
    db $f4
    ld b, c
    ld hl, sp+$01
    ldh a, [rSB]
    add sp, $23
    ldh a, [rSCX]
    add sp, $03
    ldh a, [rSCX]
    ldh [$03], a
    ldh a, [rBGP]
    ldh [$87], a
    ret nc

    rlca
    ldh [rTAC], a
    ret nc

    rlca
    ldh [rIF], a
    ret nz

    rrca
    and b
    adc a
    ret nz

    rrca
    add b
    rrca
    ret nz

    rra
    add b
    rra
    ld b, b
    rra
    add b
    rra
    ld b, b
    rra
    add b
    rra
    nop
    ccf
    add b
    ccf
    nop
    ccf
    add b
    ccf
    nop
    ccf
    adc a
    add b
    rst $08
    add b
    rst $00
    add b
    rst $20
    add b
    rst $20
    add b
    rst $28
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
    ccf
    ld b, b
    ld a, a
    nop
    rra
    jr nz, jr_032_7812

    db $10
    rra
    nop
    rlca
    ld [$040b], sp
    rlca
    nop
    call c, $de03
    ld bc, $01fe
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $28
    db $10
    or a
    ld c, b
    and e
    ld e, h
    inc bc
    db $fc
    ld bc, $81fe
    ld a, [hl]
    ld b, b
    cp a
    ldh a, [rIF]
    ldh a, [rIF]
    and b
    ld e, a
    jr nz, @-$1f

    ld b, b
    cp a
    pop bc
    ccf

jr_032_7812:
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    nop
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    and e
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    sbc a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    cpl
    ret nc

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$80], a
    rra
    ret nz

    rra
    add b
    rra
    nop
    rra
    add b
    rra
    nop
    rra
    nop
    ccf
    nop
    ccf
    or $c0
    ldh a, [$c0]
    add sp, -$40
    ret nz

    ret nz

    add b
    ret nz

    call nz, $8280
    add b
    add b
    add b
    add b
    add b
    ld bc, $8080
    nop
    add b
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld b, $00
    rlca
    nop
    inc bc
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    add a
    rst $38
    inc de
    rst $38
    inc bc
    nop
    inc hl
    nop
    inc bc
    nop
    rlca
    nop
    dec sp
    inc b
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    ld de, $53ff
    rst $38
    rst $30
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
    cp $01
    cp $01
    cp $01
    xor $11
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld h, b
    sbc a
    ld b, b
    cp a
    ld b, b
    cp a
    ld h, b
    sbc a
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
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld a, [$7c07]

jr_032_7907:
    add e
    inc a
    jp $c37d


    ld e, b
    rst $20
    jr z, jr_032_7907

    db $10
    rst $38
    ld h, l
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, a
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $30
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
    rst $38
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
    ld a, a
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld a, a
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
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
    call c, $fc23
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    db $ec
    inc de
    ld hl, sp+$07
    add sp, $17
    ld hl, sp+$07
    pop af
    rrca
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]

jr_032_799c:
    ld hl, sp+$07
    db $f4
    dec bc
    ldh a, [rIF]
    ldh a, [rIF]
    or b
    ld c, a
    add d
    ld a, a
    ld b, d
    cp a
    ld [bc], a
    rst $38
    nop
    rst $38
    add l
    ld a, a
    rlca
    rst $38
    ld a, [bc]
    rst $38
    ld c, $ff
    rlca
    rst $38
    rra
    rst $38
    dec c
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    cp a
    rst $38
    add hl, sp
    rst $38
    inc a
    rst $38
    dec l
    rst $38
    ld l, a
    rst $38
    dec hl
    rst $38
    dec de
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
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rst $18
    rst $38

jr_032_79ea:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    db $fd
    ld [bc], a
    rst $08
    jr nc, jr_032_79ea

    jr nz, jr_032_799c

    ld [hl], b
    sbc a
    ld h, b
    rst $38
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    ld [bc], a
    rst $38
    nop
    xor $11
    db $fc
    inc bc
    db $ec
    inc de
    db $ec
    inc de
    adc [hl]
    ld [hl], c
    call nz, Call_032_703b
    adc a
    ld [$20f7], sp
    rst $18
    ret nz

    ccf
    add c
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    ld [bc], a
    rst $38
    rrca
    rst $38
    inc d
    rst $38
    inc de
    rst $38
    ld [de], a
    rst $38
    ld bc, $03ff
    rst $38
    rlca
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
    rra
    rst $38
    sbc a
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
    ld a, a
    rst $38
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    db $fd
    ld [bc], a
    jp hl


    ld d, $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    ld a, [$df05]
    jr nz, @-$01

    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $e8
    rla
    ldh [$1f], a
    ldh [$1f], a
    add sp, $17
    db $f4
    dec bc
    sbc $21
    ret nz

    ccf
    db $fc
    inc bc
    ret nz

    ccf
    ldh [$1f], a
    ret nz

    ccf
    pop hl
    rra
    ret nz

    ccf
    add b
    ld a, a
    pop bc
    ccf
    nop
    rst $38
    ld [bc], a

jr_032_7ab9:
    rst $38
    ld b, c
    cp a
    ld [bc], a
    rst $38
    rlca
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
    ld a, a

jr_032_7acf:
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, e
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    jr nc, jr_032_7ab9

    and b
    ld e, a
    add b
    ld a, a
    jr nz, jr_032_7acf

    nop
    rst $38
    ld b, d
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add e
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    add c
    ld a, a
    ld sp, $e3cf
    rra
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $07ff
    rst $38
    rlca
    rst $38
    rla
    rst $38
    ld d, $ff
    inc h
    rst $38
    adc e
    ld a, a
    inc de
    rst $38
    ld c, a
    cp a
    rra
    rst $38
    ld a, a
    rst $38
    ld e, a
    rst $38
    rra
    rst $38
    cp a
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
    rst $28
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
    ld [$0900], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $00
    rrca
    stop
    nop
    nop
    ld de, $1312
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_032_7b8a

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_032_7b9a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_032_7baa

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_032_7bba

    ld [hl-], a

jr_032_7b8a:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_032_7bca

    ld a, [hl-]
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_032_7b9a:
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    nop
    ld b, [hl]
    ld a, [hl-]
    ld b, a
    ld c, b
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld c, c
    ld c, d
    ld c, e
    nop

jr_032_7baa:
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
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    ld d, [hl]
    ld d, a
    ld e, b

jr_032_7bba:
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
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_032_7bca:
    ld l, c
    ld a, [hl-]
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
    ld a, [hl-]
    ld a, a
    ld a, [hl-]
    ld a, [hl-]
    add b
    add c
    add d
    add e
    ld [hl], a
    ld [hl], a
    add h
    ld a, [hl-]
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    ld a, [hl-]
    ld a, [hl-]
    ld a, [hl-]
    adc e
    adc h
    adc l
    ld [hl], a
    ld [hl], a
    adc [hl]
    ld a, [hl-]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    ld a, [hl-]
    ld a, [hl-]
    sub l
    sub [hl]
    sub a
    sbc b
    ld [hl], a
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
    jp nz, $3a3a

    ld a, [hl-]
    jp $c5c4


    add $c7
    sub [hl]
    nop
    nop
    ret z

    ret


    ld a, [hl-]
    jp z, $cccb

    call $cfce
    ret nc

    pop de
    nop
    nop
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_000_00db

    nop
    nop
    nop
    nop
    nop
    call c, $dedd
    rst $18
    ldh [$db], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    pop hl
    ld [c], a
    db $e3
    db $e4
    push hl
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and $e7
    add sp, -$17
    ld [$0101], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
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
    ld bc, $0000
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
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ld a, $ff
    rst $28
    rst $38
    rst $28
    rst $38
    cp $ff
    ld a, l
    rst $38
    or a
    rst $38
    jr @+$01

    inc b
    rst $38
    rlca
    rst $38
    ld [de], a
    rst $38
    dec c
    rst $38
    inc l
    rst $38
    ld de, $00ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $10
    rst $38
    ld bc, $01ff
    rst $38
    ld de, $03ff
    rst $38
    dec bc
    rst $38
    nop
    rst $38
    jr @+$01

    db $10
    rst $38
    ld [$20ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    dec b
    rst $38
    ld [$08ff], sp
    rst $38
    sbc l
    rst $38
    rlca
    rst $38
    add l
    rst $38
    cp $ff
    db $fc
    rst $38
    inc a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    db $f4
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
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
    or $ff
    cp $ff
    rst $28
    rst $38
    rst $20
    rst $38
    adc a
    rst $38
    sbc $ff
    rst $28
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, l
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    inc hl
    rst $38
    db $e3
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    jr c, @+$01

    ld l, b
    rst $38
    ld a, [hl+]
    rst $38
    jr @+$01

    ld d, c
    rst $38
    ld hl, $00ff
    rst $38
    ldh [rIE], a
    ld [c], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    dec de
    rst $38
    dec bc
    rst $38
    ld h, a
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ret c

    rst $38
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    cp e
    rst $38
    ld [hl], l
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    cp e
    rst $38
    sbc a
    rst $38
    ld a, $ff
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
    cp $ff
    sbc $ff
    sbc a
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    rrca
    rst $38
    rla
    rst $38
    cpl
    rst $38
    ld c, a
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld c, $ff
    ld e, h
    rst $38
    sbc h
    rst $38
    ret c

    rst $38
    ld [hl], d
    rst $38
    and $ff
    ei

Jump_032_7f3d:
    rst $38
    cp l
    rst $38
    ld hl, sp-$01
    cp $ff
    db $fd
    rst $38
    db $ec
    rst $38
    add sp, -$01
    ldh [rIE], a
    db $e3
    rst $38
    rst $28
    rst $38
    db $db
    db $fc
    rst $18
    db $fc
    rst $08
    db $fc
    rst $08
    db $fc
    push bc
    cp $c5
    cp $c3
    cp $c3
    cp $c5
    ld a, [$fbe4]
    and $f9
    and $f9
    and $f9
    rst $20
    ld hl, sp-$03
    ld a, [c]
    ei
    db $f4
    rst $30
    ld hl, sp+$77
    ld hl, sp+$7f
    ld hl, sp+$3f
    ld hl, sp+$7b
    db $fc
    dec sp
    db $fc
    ei
    db $fc
    cp a
    db $fc
    db $dd
    cp $8f
    db $fc
    rst $08
    db $fc
    push bc
    cp $c7
    cp $87
    cp $c3
    cp $c2
    rst $38
    jp $81ff


    rst $38
    add b
    rst $38
    ret nz

    rst $38
    jp nz, $e1fd

    cp $c1
    cp $c1
    cp $e3
    db $fc
    jp $a1fc


    cp $c1
    cp $c1
    cp $c5
    ld a, [$f2cd]
    xor a
    ldh a, [$87]
    ld hl, sp-$7d
    db $fc
    jp nz, $82fd

    db $fd
    sbc $e1
    sbc [hl]
    pop hl
    sbc $e1
    sub h
    db $eb
    ld b, b
    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    cp b
    rst $38
    or b
    rst $38
    or b
    rst $38
    or b
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ldh a, [rIE]
    ei
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
