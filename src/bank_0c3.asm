SECTION "ROM Bank $0c3", ROMX[$4000], BANK[$c3]

    ret


    ld b, $cf
    nop
    ld l, h
    ret nz

    rst $28
    call nz, $87eb
    db $fd
    inc bc
    rst $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, d
    add c
    adc h
    inc bc
    inc b
    dec bc
    ld c, h
    inc bc
    ld b, h
    inc bc
    ld c, h
    inc bc
    dec c
    ld [bc], a
    ccf
    nop
    sbc [hl]
    ld bc, $01ba
    cp [hl]
    ld bc, $019a
    sbc b
    ld bc, $01f8
    ld e, $01
    ld a, [de]
    ld bc, $0118
    jr jr_0c3_4037

    ld a, h

jr_0c3_4037:
    ld bc, $01ff
    ld a, a
    ld bc, $019f
    adc c
    ld bc, $0100
    nop
    ld bc, $3b3a
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    add hl, de
    add hl, de
    add hl, bc
    add hl, bc
    ld e, l
    cp e
    call $f73b
    add hl, bc
    add a
    nop
    or b
    ld [$48b7], sp
    ld a, [hl-]
    pop bc
    rrca
    ldh a, [$08]
    rst $30
    pop bc
    rst $38
    pop bc
    rst $38
    ld c, [hl]
    rst $38
    ld c, $ff
    ldh [$9f], a
    add hl, bc
    cp $70
    rst $38
    cp $01
    db $fd
    inc bc
    ld [c], a
    rra
    ld c, a
    or b
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    pop hl
    ld bc, $ffe3
    ret c

    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ld b, $01
    rst $38
    nop
    ld b, e
    add b
    rst $28
    nop
    nop
    rlca
    ld [bc], a
    ccf
    inc e
    rst $38
    jp $e1fc


    rst $38
    nop
    rst $38
    rrca
    ldh a, [$9c]
    db $e3
    daa
    jp $fc02


    ld e, c
    sbc h
    inc c
    jr jr_0c3_40b1

    ld [$0804], sp
    nop

jr_0c3_40b1:
    nop
    rst $38
    nop
    nop
    rst $38
    db $fc
    inc bc
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
    ld a, a
    add b
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, e
    add h
    ld c, e
    or h
    ld b, h
    cp e
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
    add l
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ld e, $e3
    cp h
    jp $ff80


    call nz, $03ff
    rst $38
    add a
    ld a, a
    sub a
    ld a, a
    ld a, b
    rst $38
    pop hl
    cp $a0
    ld hl, sp+$10
    db $fc
    ret nc

    ld a, $87
    ld a, b
    ldh a, [$08]
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rlca
    pop hl
    ld hl, sp+$00
    ldh a, [rP1]
    ld a, a
    add b
    ld h, b
    sub b
    ldh [rP1], a
    ld [hl], b
    ld h, b
    db $fd
    ret nz

    ldh a, [rIE]
    jr nz, @+$01

    add b
    ld a, a
    add a
    ld a, a
    ld bc, $62ff
    rra
    nop
    rra
    ld c, $1f
    ccf
    rra
    rra
    ccf
    nop
    nop
    ret nz

    ld a, $04
    ld a, [$fa04]
    nop
    cp $00
    cp $c0
    ld a, $e0
    ld e, $f5
    dec bc
    push hl
    dec de
    add l
    ld a, e
    ld b, l
    cp e
    ld [hl], l
    adc e
    ld b, c
    cp a
    ld de, $83ef
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $fe
    ld b, $fe
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $e4
    rst $38
    ld b, $f9
    dec h
    db $d3
    adc c
    scf
    db $fc
    inc bc
    dec l
    di
    rrca
    rst $38
    rra
    rst $38
    ld de, $30ff
    rst $38
    and $ff
    ccf
    rst $38
    cp h
    rst $38
    rst $38
    jr @+$72

    jr nc, jr_0c3_41cd

    nop
    ld [hl], $48
    rst $30
    ld [$007e], sp
    rst $38
    nop
    inc bc
    inc a
    scf
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
    ld hl, sp-$08
    nop
    nop
    ld a, a
    nop
    adc a
    ld [hl], b
    ld e, a
    jr nz, jr_0c3_41f9

    ccf
    ld c, l
    ld a, $fb

jr_0c3_41bb:
    inc a
    ld a, h
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add b
    rst $38
    ld [bc], a
    db $fd
    ld b, e
    cp h
    ld c, c
    or h
    sbc e
    db $e4
    db $fc

jr_0c3_41cd:
    add e
    ret nc

    add l
    rst $38
    add b
    adc l
    ldh a, [$83]
    ld hl, sp-$79
    ld hl, sp+$04
    ei
    jr z, jr_0c3_41bb

    inc c
    rst $38
    ld [$80ff], sp
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    cp $f5
    ld a, [$faa5]
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    pop de
    cp $89
    cp $01

jr_0c3_41f9:
    cp $00
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr @+$01

    or b
    ld a, a
    db $10
    rst $38
    ld bc, $a0ff
    rst $18
    ld b, l
    cp a
    ld a, a
    rst $38
    call $c5ff
    rst $38
    ldh [rIE], a
    db $f4
    rst $38
    ld bc, $83ff
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    db $dd
    ld a, $36
    rrca
    rlca
    ld bc, $0001
    cp a
    nop
    inc d
    dec bc
    db $fc
    inc bc
    ld b, $00
    xor $ff
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    di
    rst $38
    ld hl, sp-$3b
    inc b
    inc bc
    pop af
    ld bc, $01f1
    sbc l
    ld h, a
    dec a
    rst $00
    ei
    rlca
    db $e3
    rra
    ld h, a
    rst $38
    adc l
    rst $38
    dec e
    rst $38
    dec c
    rst $38
    rra
    rst $38
    ccf
    rst $38
    dec c
    rst $38
    adc a
    ld a, a
    inc bc
    rst $38
    add c
    ld a, a
    ld b, c
    cp a
    ld h, c
    sbc a
    ld hl, $0ddf
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rla
    rst $38
    rla
    rst $38
    dec d
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld l, l
    rst $38
    ld h, a
    rst $38
    call Call_0c3_6dff
    rst $38
    ld a, l
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    sbc l
    ld a, a
    sbc l
    ld a, a
    dec e
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ccf
    rst $38
    db $fd
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    dec c
    rst $38
    adc l
    rst $38
    cp l
    rst $38
    dec a
    rst $38
    dec a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld sp, hl
    rlca
    cp l
    inc bc
    cp c
    rlca
    or c
    rrca
    sbc a
    ld bc, $019f
    jp $f901


    inc bc
    db $dd
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld b, $ff
    ld [bc], a
    rst $38
    add b
    rst $38
    jp nz, $e7ff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    pop hl
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0009], sp
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
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
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_0c3_4394

    ld a, [de]
    dec de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_0c3_43ab

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

jr_0c3_4394:
    dec h
    ld h, $27
    jr z, jr_0c3_43c2

    ld a, [hl+]
    dec hl
    inc l
    dec l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld l, $2f
    jr nc, jr_0c3_43d9

    ld [hl-], a
    inc sp
    inc [hl]

jr_0c3_43ab:
    dec [hl]
    ld [hl], $00
    nop
    nop
    nop
    nop
    nop
    nop
    scf
    jr c, jr_0c3_43f0

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    nop
    nop
    nop
    nop
    nop

jr_0c3_43c2:
    nop
    nop
    ld b, b
    ld b, c
    ld b, d
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
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_0c3_43d9:
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c3_43f0:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0707
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
    ld bc, $0202
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
    ld bc, $0202
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    sbc a
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    call c, $deff
    rst $38
    rst $18
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
    cp $79
    cp $fd
    cp $bc
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    ld hl, sp-$01
    jr nc, @+$01

    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret c

    cp $d9
    db $fc
    call c, $fefc
    db $fc
    rst $18
    db $fc
    db $dd
    cp $de
    db $fc
    rst $18
    db $fc
    rst $38
    db $fd
    pop af
    db $fc
    or d
    db $fc
    cp e
    db $fc
    or $fd
    ei
    rst $38
    ei
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
    ld l, [hl]
    db $fc
    ld [hl], h
    db $fc
    ld sp, hl
    db $fc
    pop af
    cp $f1
    cp $f0
    rst $38
    ldh a, [rIE]
    add sp, -$01
    add sp, -$01
    ld b, h
    rst $38
    call nz, $87ff
    cp $87
    cp $47
    cp $cd
    cp $ff
    cp $ff
    cp $ff
    cp $bf
    cp $9f
    cp $3f
    cp $10

jr_0c3_4611:
    rst $38
    jr c, @+$01

    inc a
    rst $38
    ld e, $ff
    ld e, $ff
    rra
    rst $38
    rrca
    rst $38
    add a
    rst $38
    rst $38
    rst $38
    cp l
    rst $38
    rst $30
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    rlca
    rst $38
    rlca
    ld hl, sp-$04
    add e
    and e
    call z, Call_0c3_6d92
    add b
    ld a, a
    add sp, $10
    ldh [rNR10], a
    ldh [rNR24], a
    ld h, c
    add b
    ld a, a
    add b
    ld b, d
    add b
    ld h, c
    add b
    ld [hl], e
    add b
    db $76
    add b

jr_0c3_4648:
    db $dd
    ld [bc], a
    add $18
    db $e4
    jr jr_0c3_4648

    nop
    rrca
    ld bc, $0345
    di
    jr nz, jr_0c3_4611

    ld [hl], c
    inc a
    ld h, e
    ld a, h
    scf
    db $fc
    ld a, a
    ld a, h
    rst $38
    ld a, h
    cp a
    cp $7f
    ld a, h
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $30
    rrca
    ei
    rlca
    rra
    db $e3
    push bc
    dec sp
    rst $38
    rra

jr_0c3_4684:
    ld [hl], c
    adc a
    ld a, b
    add a
    dec [hl]
    adc d
    dec de
    add h
    xor h
    ld [bc], a
    or l
    ld b, b
    ret c

    jr nz, @+$2e

    db $10
    ld h, $18
    ld c, $70
    ld c, $b0
    rla
    ldh [$f6], a
    nop
    ret nz

    ld bc, $9542
    ld [bc], a
    sbc l
    ld a, e
    add h
    dec sp
    call nz, $c837
    ei
    call nz, $f3fc
    rst $38
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    db $db
    rst $38
    db $db
    rst $38
    ld hl, sp-$01
    db $fc
    inc bc
    ld a, $c1
    rlca
    nop
    jr c, jr_0c3_4684

    ld a, h
    add b
    ld [hl], h
    nop
    dec l
    ret nc

    ld e, $e0
    ld a, $c1
    rst $30
    ld [$0df3], sp
    and l
    add hl, de
    ld c, c
    dec a
    dec bc
    dec e
    add hl, de
    ld a, $32
    ld a, h
    ld bc, $357e
    cp $e7
    db $fc
    ld b, b
    db $fc
    add b
    ld hl, sp+$1a
    ldh a, [rIF]
    ldh a, [$0c]
    di
    cpl
    ldh a, [rTMA]
    ld hl, sp+$5c
    ldh [rIF], a
    ldh a, [rDIV]
    di
    inc c
    di
    ld bc, $00f8
    ld hl, sp+$0f
    ldh a, [$c9]
    or $c0
    rst $38
    inc b
    rst $38
    nop
    rst $38
    adc d
    push af
    and [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    inc bc
    db $fc
    inc hl
    db $fc
    and b
    rst $38
    ldh [rIE], a
    pop bc
    ld a, $e3
    inc e
    dec b
    ld c, $1f
    inc b
    inc c
    inc bc
    adc [hl]
    inc bc
    ld c, a
    rlca
    dec a
    nop
    db $fc
    nop
    ld [hl], h
    ld [$c03e], sp
    sbc [hl]
    ld h, b
    add hl, bc
    ldh a, [$5c]
    and b
    ld [hl], d
    add b
    add hl, sp
    add b
    inc e
    nop
    xor $00
    rst $38
    nop
    inc bc
    ldh [rP1], a
    ldh a, [$c5]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    inc bc
    call c, $f10f
    dec l
    inc de
    inc bc
    ccf
    ld d, c
    rrca
    adc e
    rlca
    rlca
    ld [bc], a
    dec bc
    inc b
    ld [bc], a
    dec c
    and b
    rra
    ret nz

    cp a
    ld a, [$8c41]
    add e
    inc b
    dec bc
    ld c, h
    inc bc
    ld b, h
    inc bc
    ld c, h
    inc bc
    dec c
    ld [bc], a
    ccf
    nop
    sbc [hl]
    ld bc, $01ba
    cp [hl]
    ld bc, $019a
    sbc b
    ld bc, $01f8
    ld e, $01
    ld a, [de]
    ld bc, $0118
    jr jr_0c3_4787

    ld a, h

jr_0c3_4787:
    ld bc, $01ff
    ld a, a
    ld bc, $019f
    adc c
    ld bc, $0100
    nop
    ld bc, $3b3a
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    add hl, de
    add hl, de
    add hl, bc
    add hl, bc
    ld e, l
    cp e
    call $f73b
    add hl, bc
    add a
    nop
    or b
    ld [$48b7], sp
    ld a, [hl-]
    pop bc
    rrca
    ldh a, [$08]
    rst $30
    pop bc
    rst $38
    pop bc
    ld a, a
    xor $3f
    ld l, [hl]
    rra
    jr z, @+$21

    dec l
    ld e, $1e
    rrca
    adc h
    rrca
    ld e, a
    inc b
    xor l
    ld b, [hl]
    cp $04
    call $cb30
    jr nc, jr_0c3_47de

    nop
    or e
    ld bc, $ffe3
    ret c

    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    ldh [rIE], a
    ld a, a
    adc a

jr_0c3_47de:
    rst $38
    rra
    ld e, a
    cp a
    ccf
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld h, d
    db $fd
    ld c, [hl]
    pop af
    inc b
    ei
    nop
    rst $38
    rrca
    ldh a, [$9c]
    db $e3
    daa
    jp $fc02


    ld e, c
    sbc h
    inc c
    jr jr_0c3_4801

    ld [$0804], sp
    nop

jr_0c3_4801:
    nop
    rst $38
    nop
    nop
    rst $38
    db $fc
    inc bc
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
    ld a, a
    add b
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, e
    add h
    ld c, e
    or h
    ld b, h
    cp e
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
    add l
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ld e, $e3
    cp h
    jp $ff80


    call nz, $03ff
    rst $38
    add a
    ld a, a
    sub a
    ld a, a
    ld e, $ff
    rlca
    rst $38
    daa
    rst $38
    rst $30
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $30
    rrca
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    inc sp
    rst $38
    cp a
    rst $38
    cp a
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
    cp a
    rst $38
    add e
    ld a, a
    pop de
    cp a
    add hl, bc
    rst $38
    jr nz, @+$01

    add b
    ld a, a
    add a
    ld a, a
    ld bc, $62ff
    rra
    nop
    rra
    ld c, $1f
    ccf
    rra
    rra
    ccf
    nop
    nop
    ret nz

    ld a, $04
    ld a, [$fa04]
    nop
    cp $00
    cp $c0
    ld a, $e0
    ld e, $f5
    dec bc
    push hl
    dec de
    add l
    ld a, e
    ld b, l
    cp e
    ld [hl], l
    adc e
    ld b, c
    cp a
    ld de, $83ef
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $fe
    ld b, $fe
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $e4
    rst $38
    ld b, $f9
    dec h
    db $d3
    adc c
    scf
    db $fc
    inc bc
    dec l
    di
    rrca
    rst $38
    rra
    rst $38
    ld de, $30ff
    rst $38
    and $ff
    ccf
    rst $38
    dec a
    rst $38
    dec h
    rst $38
    ld a, l
    cp $fc
    rst $38
    db $fc
    rst $38
    rst $18
    rst $30
    sbc a
    and $bf
    call nz, $84ff
    scf
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
    di
    ldh a, [$f9]
    ld hl, sp-$04
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0c3_490b:
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    ld b, e
    cp a
    ld c, c
    or l
    sbc e
    db $e4
    db $fc
    add e
    ret nc

    add l
    rst $38
    add b
    adc l
    ldh a, [$83]
    ld hl, sp-$79
    ld hl, sp+$04
    ei
    jr z, jr_0c3_490b

    inc c
    rst $38
    ld [$80ff], sp
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    cp $f5
    ld a, [$faa5]
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    pop de
    cp $89
    cp $01
    cp $00
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr @+$01

    or b
    ld a, a
    db $10
    rst $38
    ld bc, $a0ff
    rst $18
    ld b, l
    cp a
    ld a, [hl]
    rst $38
    rst $08
    rst $38
    add $ff
    and $ff
    push hl
    rst $38
    ld b, $ff
    sub l
    xor $f7
    call z, $88f7
    rst $28
    db $10
    xor $10
    db $fc
    nop
    jr c, @-$3e

    sub c
    nop
    call nz, $d800
    nop
    adc a
    nop
    xor $ff
    cp $ff
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    di
    rst $38
    ld a, [$7c07]
    inc bc
    rra
    add b
    add b
    ld b, b
    rst $18
    jr nz, @+$01

    add b
    ld sp, hl
    ret nz

    db $fd
    ldh [$f2], a
    ldh a, [$f9]
    ld a, [$fffc]
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
    cp a
    ld a, a
    ld e, a
    cp a
    ld l, a
    sbc a
    daa
    rst $18
    rrca
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rla
    rst $38
    rla
    rst $38
    rla
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    ld l, a
    rst $38
    ld h, a
    rst $38
    rst $08
    rst $38
    ld l, a
    rst $38
    ld a, a
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld a, $ff
    inc c
    rst $38
    dec e
    cp $5e
    db $fc
    inc a
    db $fc
    call c, $fef4
    db $ed
    cpl
    ret nz

    inc bc
    call nz, $8007
    dec c
    or b
    dec de
    ldh [$d0], a
    ldh [$03], a
    ldh a, [rNR52]
    ret nz

    call z, $9000
    ld [$1100], sp
    nop
    ld sp, $3e40
    add b
    ld a, [hl]
    nop
    ld e, $08
    ld e, $00
    rra
    pop af
    ld c, $dd
    rst $38
    cp $ff
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38

jr_0c3_4a1a:
    cp $ff
    ld b, $ff
    ld [bc], a
    rst $38
    add b
    ld a, a
    jp nz, $e73d

    jr jr_0c3_4a1a

    inc c
    ld l, e
    inc d
    pop af
    ld c, $30
    rst $08
    ldh a, [rIF]
    ldh a, [$03]
    db $76
    add c
    ld [hl], e
    add b
    db $d3
    add c
    set 0, e
    db $e3
    db $e3
    di
    di
    rst $38
    ei
    db $fd
    db $fd
    rst $38
    rst $38

jr_0c3_4a44:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp $ff
    ld a, h
    rst $38
    ld a, c
    cp $fb
    db $fc
    cp $f8
    pop af
    cp $ff
    cp $e5
    ld hl, sp-$4d
    ret nz

    and a
    nop
    dec c
    ld [bc], a
    dec bc
    nop
    ld [hl], $00
    db $ed
    nop
    ei
    nop
    ld a, a
    add b
    rst $20
    jr jr_0c3_4a44

    dec a
    and e
    ld e, l
    ld h, c
    rra
    cp c
    rlca
    ld sp, $1f0f
    nop
    rla
    ld h, b
    inc b
    db $e3
    inc c
    db $e3
    ld [$3807], sp
    rlca
    jr nc, jr_0c3_4aa7

    jr nc, jr_0c3_4aa9

    jr nz, jr_0c3_4abb

    ld hl, $f01f
    ccf
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c3_4aa7:
    nop
    nop

jr_0c3_4aa9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c3_4abb:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    stop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_0c3_4b1e

jr_0c3_4b1e:
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
    ld e, $1f
    jr nz, jr_0c3_4b2e

jr_0c3_4b2e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, $2322
    inc h
    dec h
    ld h, $27
    jr z, jr_0c3_4b3e

jr_0c3_4b3e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c3_4b4e

jr_0c3_4b4e:
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
    ld [hl], $37
    jr c, jr_0c3_4b5e

jr_0c3_4b5e:
    nop
    nop
    nop
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
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Call_0c3_4c3f:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0707
    ld [bc], a
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
    ld bc, $0202
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
    ld bc, $0202
    ld [bc], a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, c
    rst $38
    db $fd
    rst $38
    cp h
    rst $38
    ld hl, sp-$01
    ret c

    rst $38
    ld hl, sp-$01
    jr nc, @+$01

    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    reti


    cp $d9
    db $fc
    db $dd
    db $fc
    db $fd
    db $fc
    rst $18
    cp $df
    cp $df
    cp $dd
    db $fc
    db $fd
    db $fc
    pop af
    db $fc
    or b
    db $fc
    cp b
    db $fc
    db $f4
    db $fc
    ld hl, sp-$04
    ld a, [$fffc]
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $6f
    cp $76
    db $fc
    ld a, [$f0fc]
    cp $f0
    cp $f0
    rst $38
    ldh a, [rIE]
    add sp, -$01
    add sp, -$01
    ld b, h
    rst $38
    call nz, $86ff
    db $fc
    add h
    db $fc
    ld b, a
    cp $cf
    cp $ff
    cp $ff
    cp $ff
    cp $bd
    db $fc
    sbc a
    cp $3f
    cp $10
    rst $38
    jr c, @+$01

    inc a
    rst $38
    ld e, $ff
    ld e, $ff
    rra
    rst $38
    rrca
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
    rla
    adc a
    rlca
    sbc a
    cpl
    sbc a
    add hl, hl
    sbc a
    ld e, b
    cp a
    ld a, h
    adc a
    inc c
    rlca
    ld a, h
    rlca
    db $fc
    rlca
    cp [hl]
    ld b, a
    sbc d
    ld h, a
    ret c

    daa
    jp c, $ee27

    scf
    sub $3f
    call c, Call_0c3_4c3f
    cp a
    inc c
    rst $38
    ld a, h
    add a
    adc d
    rlca
    adc b
    rlca
    add b
    rlca
    adc d
    rlca
    adc h
    rlca

Call_0c3_4dec:
    sbc l
    ld b, a
    ld sp, hl
    rla
    ld sp, hl
    rra
    dec hl
    rst $08
    rst $08
    rlca
    rst $08
    rlca
    adc e
    rlca
    adc a
    rlca
    dec bc
    rlca
    sub a
    rrca
    sbc a
    rrca
    adc a
    rra
    dec a
    sbc a
    ld [hl], $9f
    ld l, e
    or a
    ld a, e
    add a
    dec bc
    rlca
    ld a, a
    rlca
    rst $38
    rlca
    cp a
    ld b, a
    sbc e
    ld h, a
    reti


    daa
    rst $38
    daa
    rst $28
    scf
    db $d3
    ccf
    rst $18
    ccf
    ld l, e
    cp h
    ld h, c
    db $fc
    ld a, c
    add h
    add hl, bc
    call nz, $c00c
    call nz, $fec0
    ldh a, [$fb]
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
    rrca
    rst $38
    jp $0fff


    rst $38
    nop
    rst $38
    add hl, bc
    cp $05
    ld a, [$fa05]
    ld d, $f8
    ld bc, $05fe
    cp $07
    db $fc
    add b
    ld a, h
    add b
    ld a, b
    ld a, [de]
    ldh a, [rIF]
    ldh a, [$0c]
    di
    cpl
    ldh a, [rTMA]
    ld hl, sp+$5c
    ldh [rIF], a
    ldh a, [rDIV]
    di
    inc c
    di
    ld bc, $00f8
    ld hl, sp+$0f
    ldh a, [$c9]
    or $c0
    rst $38
    inc b
    rst $38
    nop
    rst $38
    adc d
    push af
    and [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    ld b, [hl]
    ld sp, hl
    inc bc
    db $fc
    inc hl
    db $fc
    jr nz, @+$01

    ld h, b
    rst $38
    pop hl
    cp $63
    db $fc
    push bc
    cp $c3
    db $fc
    ret nz

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    and h
    rst $38
    ld b, h
    rst $38
    ldh [rIE], a
    add b
    rst $38
    ld b, $ff
    ld e, $ff
    db $fd
    ld b, $fc
    rrca
    jp c, $bf3f

    ld h, c
    cp $00
    cp $00
    ld bc, $c100
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
    rst $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, d
    add c
    adc h
    inc bc
    inc b
    dec bc
    ld c, h
    inc bc
    ld b, h
    inc bc
    ld c, h
    inc bc
    dec c
    ld [bc], a
    ccf
    nop
    sbc [hl]
    ld bc, $01ba
    cp [hl]
    ld bc, $019a
    sbc b
    ld bc, $01f8
    ld e, $01
    ld a, [de]
    ld bc, $0118
    jr jr_0c3_4ee7

    ld a, h

jr_0c3_4ee7:
    ld bc, $01ff
    ld a, a
    ld bc, $019f
    adc c
    ld bc, $0100
    nop
    ld bc, $3b3a
    ld c, $0f
    rrca
    rrca
    rrca
    rrca
    add hl, de
    add hl, de
    add hl, bc
    add hl, bc
    ld e, l
    cp e
    call $f73b
    add hl, bc
    add a
    nop
    or b
    ld [$48b7], sp
    ld a, [hl-]
    pop bc
    rrca
    ldh a, [$08]
    rst $30
    pop bc
    rst $38
    pop bc
    rst $38
    ld c, [hl]
    rst $38
    ld c, $ff
    ldh [$9f], a
    add hl, bc
    cp $70
    rst $38
    cp $01
    db $fd
    inc bc
    ld [c], a
    rra
    ld c, a
    or b
    ld a, a
    nop
    ld a, a
    nop
    nop
    nop
    pop hl
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
    pop hl
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$9c]
    db $e3
    daa
    jp $fc02


    ld e, c
    sbc h
    inc c
    jr jr_0c3_4f51

    ld [$0804], sp
    nop

jr_0c3_4f51:
    nop
    rst $38
    nop
    nop
    rst $38
    db $fc
    inc bc
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
    ld a, a
    add b
    ld a, h
    add e
    ld a, h
    add e
    ld a, h
    add e
    ld a, e
    add h
    ld c, e
    or h
    ld b, h
    cp e
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
    add l
    rst $38
    rst $38
    rst $38
    rlca
    rlca
    nop
    nop
    nop
    nop
    add b
    add b
    nop
    nop
    ld e, $e3
    cp h
    jp $ff80


    call nz, $03ff
    rst $38
    add a
    ld a, a
    sub a
    ld a, a
    ld a, b
    rst $38
    pop hl
    cp $a0
    ld hl, sp+$10
    db $fc
    ret nc

    ld a, $87
    ld a, b
    ldh a, [$08]
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
    ldh a, [rIE]
    jr nz, @+$01

    add b
    ld a, a
    add a
    ld a, a
    ld bc, $62ff
    rra
    nop
    rra
    ld c, $1f
    ccf
    rra
    rra
    ccf
    nop
    nop
    ret nz

    ld a, $04
    ld a, [$fa04]
    nop
    cp $00
    cp $c0
    ld a, $e0
    ld e, $f5
    dec bc
    push hl
    dec de
    add l
    ld a, e
    ld b, l
    cp e
    ld [hl], l
    adc e
    ld b, c
    cp a
    ld de, $83ef
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld b, $fe
    ld b, $fe
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $e4
    rst $38
    ld b, $f9
    dec h
    db $d3
    adc c
    scf
    db $fc
    inc bc
    dec l
    di
    rrca
    rst $38
    rra
    rst $38
    ld de, $30ff
    rst $38
    and $ff
    ccf
    rst $38
    cp h
    rst $38
    rst $38
    jr jr_0c3_5093

    jr nc, jr_0c3_505d

    nop
    ld [hl], $48
    rst $30
    ld [$007e], sp
    rst $38
    nop
    inc bc
    inc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_0c3_503b:
    rst $38
    ld a, h
    rst $38
    rlca
    rst $38
    add a
    rst $38
    add b
    rst $38
    ld [bc], a
    db $fd
    ld b, e
    cp h
    ld c, c
    or h
    sbc e
    db $e4
    db $fc
    add e
    ret nc

    add l
    rst $38
    add b
    adc l
    ldh a, [$83]
    ld hl, sp-$79
    ld hl, sp+$04
    ei
    jr z, jr_0c3_503b

    inc c

jr_0c3_505d:
    rst $38
    ld [$80ff], sp
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    pop af
    cp $f5
    ld a, [$faa5]
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    pop de
    cp $89
    cp $01
    cp $00
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    jr @+$01

    or b
    ld a, a
    db $10
    rst $38
    ld bc, $a0ff
    rst $18
    ld b, l
    cp a
    ld a, a
    rst $38
    call $c5ff

jr_0c3_5093:
    rst $38
    ldh [rIE], a
    db $f4
    rst $38
    ld bc, $83ff
    rst $38
    ld c, a
    rst $38
    ld a, a
    rst $38
    db $dd
    ld a, $36
    rrca
    rlca
    ld bc, $0001
    cp a
    nop
    inc d
    dec bc
    db $fc
    inc bc
    ld b, $00
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    rst $38
    adc l
    rst $38
    dec e
    rst $38
    inc c
    rst $38
    rra
    cp $3f
    cp $0d
    cp $8f
    ld a, [hl]
    inc bc
    cp $81
    ld a, [hl]
    ld b, c
    cp [hl]
    ld h, c
    sbc [hl]
    ld hl, $0dde
    cp $0a
    rst $38
    rrca
    rst $38
    rla
    rst $38
    rla
    rst $38
    dec d
    cp $0f
    cp $7f
    cp $6c
    cp $67
    cp $cd
    cp $6d
    cp $7d
    cp $0b
    cp $0b
    cp $0f
    cp $9d
    ld a, [hl]
    sbc l
    ld a, [hl]
    dec e
    cp $3f
    cp $3e
    rst $38
    ld c, $ff
    rra
    rst $38
    ld e, a
    rst $38
    ld a, $ff
    db $fd
    cp $bf
    cp $3f
    cp $0d
    cp $8d
    cp $bd
    cp $3d

jr_0c3_5115:
    cp $3d
    cp $bf
    cp $3f
    cp $1e
    rst $38
    ld b, $ff
    ld sp, hl
    rlca
    cp h
    inc bc
    cp c
    ld b, $b1
    ld c, $9f
    nop
    sbc [hl]
    nop
    jp $f900


    ld [bc], a
    add b
    rst $38
    jp nz, $e7ff

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    ldh [$15], a
    adc b
    rst $18
    add b
    jp nc, Jump_0c3_708c

    call z, $01ff
    rlca
    inc bc
    db $e3
    inc bc
    ei
    inc bc
    db $db
    inc hl
    sbc c
    ld h, c
    cp c
    ld b, c
    ld sp, hl
    ld b, b
    ld a, c
    ret nz

    ld sp, hl
    ret nz

    cp b
    pop bc
    ld a, [hl+]
    pop de
    ld a, [bc]
    pop af
    ld [$1311], a
    ld bc, $0313
    inc de
    inc bc
    inc de
    inc bc
    dec d
    ld bc, $209d
    db $fd
    ld [bc], a
    ld [bc], a
    rst $38
    or e
    ld a, a
    inc bc
    ccf
    ld bc, $283f
    rla
    ld a, [bc]
    dec d
    sbc d
    dec b
    jr z, jr_0c3_5115

    sbc l
    nop
    dec d
    adc b
    rst $18
    add b
    jp nc, Jump_0c3_70cc

    db $ec
    rst $38
    nop
    rlca
    nop
    db $e3
    ld bc, $01fb
    db $db
    ld hl, $6199
    ld sp, hl
    ld b, c
    ld sp, hl
    ld b, c
    ld a, c
    ret nz

    cp c
    ret nz

    cp b
    jp $d368


    ld [$e8f7], sp
    rla
    db $10
    rrca
    db $10
    rrca
    nop
    rra
    ld bc, $101f
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_0c3_523f

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
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0c3_523c

jr_0c3_523c:
    nop
    nop
    nop

jr_0c3_523f:
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c3_527b

    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0c3_5291

    ld a, [hl-]
    dec sp
    inc a
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
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0c3_527b:
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c3_5291:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

Call_0c3_542a:
    rlca
    rlca
    rlca
    rlca
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
    rlca
    nop
    rst $38
    ld e, $f7
    or [hl]
    dec sp
    dec bc
    add hl, hl
    dec c
    ld e, b
    ld e, $08
    rrca
    jr @+$21

    jr jr_0c3_5461

    add sp, $0e
    ld hl, sp+$7e
    ld hl, sp+$0e
    ld a, b
    ld l, $a8
    ld c, $d8
    ld c, $28
    dec c
    and b

jr_0c3_5461:
    dec h
    xor b
    add hl, bc
    call c, $ec9e
    ld l, [hl]
    xor h
    adc [hl]
    db $f4
    and $dc
    call Call_0c3_4dec
    ld e, h
    dec c
    db $e4
    dec b
    call z, Call_000_0c85
    dec b
    ld [$3803], sp
    dec bc
    ldh a, [rSC]
    ld [$0c00], sp
    inc b
    ld b, $07
    ld e, $07
    ld c, $07
    ld c, $07
    ld c, $07
    xor [hl]
    rlca
    sbc $07
    and $87
    rst $20
    rlca
    ld a, [hl]
    ld b, $fd
    add c
    ld hl, sp+$00
    call z, Call_000_1f08
    inc bc
    and [hl]
    inc bc
    sbc $0b
    rst $18
    inc bc
    db $76
    inc bc
    rlca
    inc bc
    ld h, h
    ld [bc], a
    cp h
    nop
    db $db
    inc bc
    rst $38
    inc bc
    db $e3
    inc bc
    db $ed
    inc bc
    call c, $0703
    inc bc
    dec e
    inc bc
    add a
    inc bc
    rrca
    rlca
    rrca
    ld bc, $0006
    db $fc
    ld bc, $030e
    inc bc
    ld bc, $0103
    nop
    ld bc, $01a2
    ld b, e
    ld bc, $010d
    sbc [hl]
    nop
    ld [hl], c
    ld b, c
    reti


    ret nz

    ldh a, [rP1]
    ld h, c
    nop
    rrca
    nop
    nop
    nop
    call nz, $ae00
    nop
    ei
    ld bc, $ffff
    cp $fe
    add b
    ld sp, hl
    nop
    daa
    nop
    ld e, a
    daa
    ld l, b
    nop
    db $f4
    res 4, b
    ld l, h
    and b

jr_0c3_54f8:
    sbc b
    call nz, $c8d3
    or c
    ld a, [hl+]
    or c
    add [hl]
    ld b, a
    ld [hl], b
    ld l, $40
    ld b, $68
    adc h
    sub c
    ld l, b
    and l
    ld b, b
    and d
    adc h
    ld d, b
    db $dd
    ld [bc], a
    sub l
    ld c, d
    inc e
    or d
    sub b
    ld a, $18
    db $76
    ld e, b
    dec [hl]
    ld b, b
    dec a
    nop
    db $fd
    ret c

    ld a, e
    nop
    inc bc
    ld e, b
    ld a, b
    add b
    ld a, [hl-]
    ld b, b
    jp z, $f240

    ld c, c
    ld a, [$f360]
    add sp, $6b
    db $10
    sbc e
    ld d, b
    ld a, e
    ld h, b
    ldh a, [$08]
    rrca
    ld e, h
    rst $18
    ld l, b
    rst $28
    ld c, d
    ld l, a
    ld a, [bc]
    adc a
    ld c, c
    rst $08
    jr nc, jr_0c3_54f8

    or e
    inc sp
    ld b, h
    ld b, a
    add hl, de
    dec de
    ld e, d
    dec de
    dec e
    ld e, l
    dec e
    ld e, l
    ld l, h
    ld l, $6e
    ld l, [hl]
    dec l
    ld c, l
    ld h, e
    dec hl
    rlca
    ld h, a
    cpl
    ld l, a
    rlca
    rla
    ld sp, $4829
    call nc, Call_0c3_61a5
    xor c
    ld [hl], d
    ld b, c
    or $d2

jr_0c3_5569:
    ld sp, $ec00
    ret nc

    rrca
    dec sp
    add a
    nop
    ld [hl], b
    nop
    rrca
    rst $38
    rst $38
    rst $38
    adc a
    ld e, a
    nop
    jp c, Jump_0c3_7100

    nop
    add hl, hl
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld sp, hl
    add $c6
    jr z, @+$18

    ld c, h
    or b
    add c
    ld [hl], d
    add a
    ld c, b
    dec bc
    inc [hl]
    dec bc
    db $f4
    ld b, b
    or b
    ld [bc], a
    dec c
    and e
    ld e, h
    ld a, a
    nop
    sub [hl]
    jr z, jr_0c3_55f7

    ld bc, HeaderSGBFlag
    or d
    ld bc, $00bd
    ld a, d
    nop
    ld [hl], l
    nop
    push af
    nop
    db $eb
    nop
    ld d, h
    nop
    ld [bc], a
    ld de, $00e7
    add sp, $01
    ld e, b
    add d
    jp c, $d000

    ld a, [bc]
    sbc d
    jr nz, jr_0c3_5569

    db $10
    ld d, b
    ld a, [hl+]
    ld [$4002], sp
    sub b
    db $10
    jp z, $ca11

    dec h
    ld c, b
    ld h, b
    dec c
    jr nz, jr_0c3_561d

    jr nz, @+$42

    nop
    rrca
    ld bc, $01f6
    ld a, d
    nop
    cp h
    nop
    cp c
    db $10
    rst $10
    add b
    rl c
    dec a
    ld b, h
    db $dd
    ld [bc], a
    ld l, [hl]
    add hl, hl
    ld l, l
    ld sp, $56b3
    rst $10
    ld c, a
    rst $08
    adc [hl]
    adc [hl]
    ld [hl], l
    ld [hl], l
    push af
    push af
    ld a, [$f7fa]

jr_0c3_55f7:
    rst $30
    jp hl


    jp hl


    sbc $de
    sbc a
    sbc a
    ld h, a
    ld h, a
    ld hl, sp-$08
    rra
    rra
    db $e3
    db $e3
    db $fc
    db $fc
    rst $38
    rst $38
    ld l, a
    rra
    dec c
    adc a
    ld b, b
    pop bc
    nop
    jr c, jr_0c3_5617

    cp $ff
    rst $38
    rst $38

jr_0c3_5617:
    db $e3
    rst $30
    nop
    dec [hl]
    nop
    ret nz

jr_0c3_561d:
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, e
    add h
    nop
    nop
    ld a, a
    nop
    ld [hl], b
    nop
    adc l
    ld [bc], a
    or h
    dec bc
    sub b
    ld b, b
    ld c, $00
    and c
    ld b, b
    ld h, l
    add d
    add d
    dec d
    ld b, d
    add hl, sp
    add b
    ld a, e
    ldh [rDIV], a
    add b
    ld d, c
    inc h
    ld a, [bc]
    ld [$7497], sp
    ld [$a310], sp
    ld b, b
    rrca
    ld b, b
    xor [hl]
    call nz, Call_000_0011
    cp e
    ld h, h
    ld de, $42ac
    ld [$c815], sp
    inc bc
    sub b
    ld b, a
    ret nc

    ld bc, $4096
    push de
    ld [bc], a
    ld d, $01
    ret nz

    nop
    ld a, e
    nop
    ld l, e
    db $10
    or b
    nop
    dec bc

jr_0c3_566f:
    nop
    sbc h

jr_0c3_5671:
    ld b, b
    add c
    ld l, b
    ld h, $c0
    dec bc
    sub b
    db $10
    ld c, h
    ld a, [bc]
    push hl
    nop
    or $00
    ld [$d400], a
    ld hl, $153a
    sub d
    jr z, jr_0c3_5671

    ld b, b
    sbc $94
    cp e
    jr nz, jr_0c3_56cd

    jp z, $c1cf

    di
    db $f4
    db $fc
    ld l, a
    ld a, a
    sbc a
    sbc a
    rst $20
    rst $20
    ld sp, hl
    ld sp, hl
    ld a, $3e
    rst $08
    rst $08
    rst $30
    rst $30
    add hl, sp
    add hl, sp
    add $c6
    ld sp, hl
    ld sp, hl
    ld e, $1e
    db $e3
    db $e3
    db $f4
    ld e, h
    cp [hl]
    ld a, [c]
    inc b
    ld a, $40
    ld b, [hl]
    jr nc, jr_0c3_566f

    call z, $f1cc
    sub c
    call Call_0c3_5801
    nop
    jr nz, jr_0c3_56c0

jr_0c3_56c0:
    nop
    nop
    nop
    nop
    rst $18
    rst $18
    sbc [hl]
    ld b, c
    inc bc
    ld e, $88
    ld b, $61

jr_0c3_56cd:
    nop
    xor a
    ld b, b
    rrca
    nop
    ldh a, [rP1]
    dec b
    ld [bc], a
    ldh a, [rP1]
    ld [hl], e
    add h
    swap b
    ld sp, hl
    ld [bc], a
    add c
    ld b, d
    dec hl
    db $10
    inc hl
    ret nc

    ld [$09c4], sp
    inc [hl]
    ld c, b
    inc [hl]
    sub c
    inc l
    add b
    nop
    ld d, d
    inc c
    sbc $00
    add b
    ld h, b
    sub b
    rlca
    dec b
    ld [hl], d
    ld [de], a
    xor c
    db $10
    rlc c
    db $ec
    inc d
    pop hl
    db $10
    ld l, d
    sub b
    inc c
    and b
    ld c, h
    add b
    ld [hl], d
    nop
    nop
    ld [de], a
    ld bc, $24cb
    sbc h
    nop
    ld l, d
    db $10
    ld b, $f0
    adc c
    ld h, b
    inc e
    ld b, b
    and l
    jr @+$0b

    ld d, h
    xor e
    nop
    ld b, b
    sub b
    jp nz, $0228

    jr nc, jr_0c3_5725

jr_0c3_5725:
    ret nz

    ld b, [hl]
    or b
    ld b, b
    jr nc, jr_0c3_572b

jr_0c3_572b:
    sub [hl]
    add b
    db $ed
    and b
    ret nz

    add b
    db $ed
    ret nz

    ldh [rNR10], a
    dec e
    pop de
    db $dd
    ret nz

    ret nz

    set 1, e
    jr nc, jr_0c3_576e

    cp e
    cp e
    cp e
    cp e
    add b
    add b
    ld a, a
    ld a, a
    ld a, e
    ld a, a
    ld h, b
    ld h, b
    dec de
    rra
    ld hl, sp-$08
    rlca
    rlca
    pop bc
    rst $38

jr_0c3_5752:
    or b
    cp $00

jr_0c3_5755:
    add c
    ld a, a
    ld a, a
    rst $38
    sub d
    adc a
    inc c
    ccf
    inc b
    ld a, a
    nop
    nop
    nop
    rst $38
    rst $38
    add hl, sp
    or $74
    adc e
    ld hl, sp+$00
    rlca
    nop
    ld a, a
    add b

jr_0c3_576e:
    cp a
    ld b, b
    rst $38
    nop
    ld a, $00
    ld b, $80
    jr c, jr_0c3_5778

jr_0c3_5778:
    add [hl]
    nop
    cp b
    nop
    cp l
    nop
    cp l
    nop
    cp l
    nop
    dec a
    add b
    inc a
    nop
    ld b, c
    add b
    ld a, [hl-]
    nop
    ld b, e
    add b
    jr c, jr_0c3_578e

jr_0c3_578e:
    ld b, e
    add b
    jr c, jr_0c3_5752

    ld [hl], $01
    rlca
    ld b, b
    ld [hl], e
    nop
    jr nz, jr_0c3_57ee

    ld h, $50
    dec h
    adc b
    adc b
    inc h
    adc c
    jr nz, jr_0c3_572b

    ld d, d
    call nz, Call_000_0011
    cpl
    nop
    ld [bc], a
    inc d
    dec hl
    nop
    nop
    jr nc, jr_0c3_57d8

    ret nz

    add hl, de
    ld [bc], a
    ret nz

    ld d, d
    add hl, bc
    ld [$2415], sp
    ld c, c
    ld l, [hl]
    nop
    ld [hl], l
    ld [bc], a
    ld [hl], h
    nop
    ld d, d
    ld hl, $8902
    ld sp, $8400
    adc b
    inc b
    jr c, @-$7c

    and b
    adc d
    sub h
    nop
    ld hl, $9789
    nop
    jr nc, jr_0c3_5755

    adc a
    add b
    ret nc

jr_0c3_57d8:
    dec b
    rrca
    sbc a
    rst $18
    rst $18
    rst $18
    jr jr_0c3_57f8

    rst $00
    rst $00
    rra
    rra
    ret c

    ret c

    rlca
    rlca
    rst $18
    rst $18
    ret c

    ret c

    rlca
    rlca

jr_0c3_57ee:
    rst $28
    rst $28
    add sp, -$18
    rlca
    rlca
    add b
    xor $e1
    pop hl

jr_0c3_57f8:
    rst $28
    nop
    rst $38
    ld [hl], a
    ld a, [$8740]
    nop
    nop

Call_0c3_5801:
    nop
    cp a
    cp a
    nop
    add c

jr_0c3_5806:
    jr z, jr_0c3_585e

    ld a, a
    nop
    dec a
    ld [bc], a
    ld b, e
    nop
    inc d
    ld [$0061], sp
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    ldh [rP1], a
    cp $00
    db $fd
    nop
    ld a, [$7b00]
    nop
    sub a
    nop
    ld h, a
    nop
    adc a
    nop
    xor $00
    inc e
    nop
    db $db
    nop
    dec [hl]
    nop
    ld l, l
    nop
    ld l, [hl]
    nop
    db $dd
    nop
    ld hl, $0b12
    ld b, b
    ld c, c
    sub d
    ld bc, $281c
    call nz, $e300
    nop
    adc a
    nop
    ld l, a
    ld bc, $24ee
    dec bc
    nop
    jp Jump_000_0824


    ld c, h
    add c
    ld bc, $c510
    jr jr_0c3_5806

    nop
    or l
    nop
    ld h, c
    nop

jr_0c3_585e:
    adc h
    db $10
    db $d3
    nop
    adc [hl]
    ld b, b
    ld [$a321], sp
    ld b, h
    ld [de], a
    adc c
    ld c, c
    inc [hl]
    inc c
    ld a, d
    ld [hl+], a
    sbc l
    jr nz, jr_0c3_5891

    inc b
    db $db
    nop
    jr jr_0c3_5877

jr_0c3_5877:
    rst $20
    jr z, @-$12

    ld [hl], b
    di
    call nz, Call_000_39c6
    add hl, sp
    ei
    ei
    pop hl
    pop hl
    ld e, $1e
    ld hl, sp-$08
    add a
    add a
    ld a, [hl]
    ld a, [hl]
    pop af
    pop af
    rrca
    rrca
    rst $38

jr_0c3_5891:
    rst $38
    ld hl, sp-$02
    nop
    ld bc, $ffff
    rst $38
    nop
    sbc h
    nop
    call c, RST_00
    nop
    nop
    nop
    db $fc
    db $fc
    dec [hl]
    ret z

    ld [bc], a
    ld bc, $00fb
    di
    inc b
    di

jr_0c3_58ad:
    nop
    inc l
    nop
    rst $08
    nop
    inc de
    nop
    cp h
    nop
    cp a
    nop
    ld a, $00
    ld e, b
    nop
    push bc
    nop
    add hl, de
    nop
    add $00
    or $00
    ld l, $00
    call c, $af03
    db $10
    ld a, [hl]
    nop
    db $f4
    add hl, bc
    ld a, [c]
    nop
    ld l, [hl]
    ld bc, $019e
    dec sp
    inc b
    db $dd
    ld [bc], a
    sbc $01
    db $eb
    inc b
    add sp, $06
    sub b
    ld h, c
    adc d
    ld bc, $600d
    dec b
    ld l, b
    dec b
    ld l, b
    jr nz, @+$50

    db $10
    and [hl]
    ld [de], a
    and h
    ld d, $a0
    inc de
    inc b
    add c
    jr nz, jr_0c3_58ad

    ld [bc], a
    sub e
    jr z, jr_0c3_5940

    jr nc, jr_0c3_5942

    jr nc, jr_0c3_5966

    nop
    ld l, [hl]
    nop
    ld e, d
    inc b
    ld a, [bc]
    inc d
    call nz, Call_0c3_542a
    and d
    nop
    ld [$9448], a
    nop
    cp l
    ld a, [bc]
    ld [hl], c
    ld [de], a
    ld h, l
    add hl, bc
    daa
    ld bc, $0edf
    call Call_000_3424
    and d
    db $e3
    ld a, [de]
    dec de
    ld sp, hl
    ld sp, hl
    ld h, [hl]
    and $9f
    sbc a
    ld a, [hl]
    ld a, [hl]
    pop hl
    pop hl
    rra
    rra
    ld a, [hl]
    ld a, [hl]
    cp c
    cp c
    and [hl]
    and a
    call z, Call_000_00df
    jr jr_0c3_593b

    rst $20
    add b
    xor $f1
    ld [hl], c

jr_0c3_593a:
    add a

jr_0c3_593b:
    nop
    ei
    ld b, b
    ld l, [hl]
    nop

jr_0c3_5940:
    rst $08
    rst $08

jr_0c3_5942:
    ld bc, $30f3
    inc c
    ld b, $c1
    ld hl, sp+$00
    ld hl, sp+$04
    ld h, c
    sbc h
    dec sp
    nop
    rst $00
    nop
    ld [c], a
    add hl, bc
    jp c, $3501

    ld [$1c61], sp
    or $08
    db $fc
    ld [bc], a
    cp $00
    db $fc
    ld bc, $8073
    ld h, [hl]
    add c

jr_0c3_5966:
    ld e, e
    nop
    dec sp
    nop
    sbc c
    ld b, d
    rl b
    dec c
    ldh [$28], a
    ld b, l
    dec d
    and b
    ld a, [bc]
    ret nc

    jr z, jr_0c3_593a

    ld h, c
    sub b
    dec c

jr_0c3_597b:
    jp nz, $2817

    rra
    and b
    dec e
    and d
    dec d
    jp z, $8850

    nop
    add l

jr_0c3_5988:
    ld e, c
    inc h
    push af
    ld [$b548], sp
    db $fc
    ld [bc], a
    ld l, h
    ld [de], a
    ld a, d
    inc b
    ld [$c006], sp
    db $10
    sbc c
    inc h
    cp b
    inc hl
    ld [hl], c
    ld a, [hl+]
    ld d, h
    inc hl
    add b
    ld c, $8c
    ld h, [hl]
    jr nz, jr_0c3_5988

    add h
    ld e, h
    dec d
    call $bd05
    inc bc
    dec sp
    inc hl
    cp e
    rlca
    rst $10
    ld h, $e6
    ld a, [bc]
    sbc d
    ld d, l
    ld [hl], l
    ld h, h
    db $f4
    call $dbed
    db $db
    cp e
    cp e
    cp e
    cp e
    ld a, e
    ld a, e

jr_0c3_59c4:
    dec sp
    dec sp
    jp c, $96da

    sub [hl]
    ld h, h
    ld h, d
    jp nc, $d0f6

    ld [hl], c
    dec b
    dec c
    ldh [$fe], a
    ret nz

    ld hl, sp+$07
    rlca
    rst $38

jr_0c3_59d9:
    rst $38
    sub $00
    nop
    nop
    ld b, b
    nop
    ldh [$e0], a
    sub b
    ret nc

    sub b
    jr nc, jr_0c3_5a17

    ld [hl], b
    ret nc

    jr nc, jr_0c3_597b

    ld [hl], b
    ld d, b
    jr nc, jr_0c3_59ff

    ld [hl], b
    jr jr_0c3_5a6a

    sub d
    ld [hl-], a
    sub h
    inc [hl]
    sbc b
    jr c, jr_0c3_59c4

    dec bc
    sub b
    ld d, b
    add hl, de
    add hl, sp
    ld d, b

jr_0c3_59ff:
    ld [hl], b
    ld d, c
    ld sp, $3696
    sbc h
    inc a
    sbc b
    jr c, @+$13

    or c
    sbc d
    ld a, [hl-]
    db $10
    or b
    inc e
    call c, $d017
    ld de, $04d0
    ret nz

    db $10

jr_0c3_5a17:
    jr nc, jr_0c3_5a29

    ldh a, [$90]
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$80]
    add b
    nop
    ld h, b
    add b
    ldh [rP1], a

jr_0c3_5a29:
    ldh [$90], a
    ldh [$90], a
    ldh [$82], a
    ldh [$80], a
    ld h, b
    add c
    ld h, c
    add b
    ld h, b
    ld [$00e8], sp
    nop
    ld d, b
    db $10
    ld [bc], a
    ld b, d
    inc b
    ld b, h
    inc e
    call nz, $a037
    ccf
    and d
    sbc a
    and b
    rrca
    jr nz, jr_0c3_59d9

    add b
    rra
    ld b, b
    ld e, a
    ld b, c
    ld e, a
    ld b, e
    sub a
    pop bc
    sbc d
    and b
    adc a
    and b
    rra
    dec h
    adc [hl]
    xor [hl]
    adc [hl]
    add b
    ld b, h
    ld b, b
    ld b, [hl]
    ld b, b
    nop
    ld b, b
    ld [bc], a
    ld b, b
    add c
    ret nz

    add b
    ret nz

jr_0c3_5a6a:
    sub b
    ret nz

    ld a, a
    call nz, $c007
    add h
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    inc e
    ld b, b
    cp h
    add b
    ld bc, $0000
    nop
    jr nz, jr_0c3_5a80

jr_0c3_5a80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_0c3_5b0f

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
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0c3_5b0c

jr_0c3_5b0c:
    nop
    nop
    nop

jr_0c3_5b0f:
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c3_5b4b

    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0c3_5b61

    ld a, [hl-]
    dec sp
    inc a
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
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0c3_5b4b:
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c3_5b61:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
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
    rlca
    nop
    rst $38
    ld e, $f7
    or [hl]
    dec sp
    dec bc
    add hl, hl
    dec c
    ld e, b
    ld e, $08
    rrca
    jr @+$21

    jr jr_0c3_5d31

    add sp, $0e
    ld hl, sp+$7e
    ld hl, sp+$0e
    ld a, b
    ld l, $a8
    ld c, $d8
    ld c, $28
    dec c
    and b

jr_0c3_5d31:
    dec h
    xor b
    add hl, bc
    call c, $ec9e
    ld l, [hl]
    xor h
    adc [hl]
    db $f4
    and $dc
    call Call_0c3_4dec
    ld e, h
    dec c
    db $e4
    dec b
    call z, Call_000_0c85
    dec b
    ld [$3803], sp
    dec bc
    ldh a, [rSC]
    ld [$0c00], sp
    inc b
    ld b, $07
    ld e, $07
    ld c, $07
    ld c, $07
    ld c, $07
    xor [hl]
    rlca
    sbc $07
    and $87
    rst $20
    rlca
    ld a, [hl]
    ld b, $fd
    add c
    ld hl, sp+$00
    call z, Call_000_1f08
    inc bc
    and [hl]
    inc bc
    sbc $0b
    rst $18
    inc bc
    db $76
    inc bc
    rlca
    inc bc
    ld h, h
    ld [bc], a
    cp h
    nop
    db $db
    inc bc
    rst $38
    inc bc
    db $e3
    inc bc
    db $ed
    inc bc
    call c, $0703
    inc bc
    dec e
    inc bc
    add a
    inc bc
    rrca
    rlca
    rrca
    ld bc, $0006
    db $fc
    ld bc, $030e
    inc bc
    ld bc, $0103
    nop
    ld bc, $01a2
    ld b, e
    ld bc, $010d
    sbc [hl]
    nop
    ld [hl], c
    ld b, c
    reti


    ret nz

    ldh a, [rP1]
    ld h, c
    nop
    rrca
    nop
    nop
    nop
    call nz, $ae00
    nop
    ei
    ld bc, $ffff
    cp $fe
    add b
    ld sp, hl
    nop
    daa
    nop
    ld e, a
    daa
    ld l, b
    nop
    db $f4
    res 4, b
    ld l, h
    and b

jr_0c3_5dc8:
    sbc b
    call nz, $c8d3
    or c
    ld a, [hl+]
    or c
    add [hl]
    ld b, a
    ld [hl], b
    ld l, $40
    ld b, $68
    adc h
    sub c
    ld l, b
    and l
    ld b, b
    and d
    adc h
    ld d, b
    db $dd
    ld [bc], a
    sub l
    ld c, d
    inc e
    or d
    sub b
    ld a, $18
    db $76
    ld e, b
    dec [hl]
    ld b, b
    dec a
    nop
    db $fd
    ret c

    ld a, e
    nop
    inc bc
    ld e, b
    ld a, b
    add b
    ld a, [hl-]
    ld b, b
    jp z, $f240

    ld c, c
    ld a, [$f360]
    add sp, $6b
    db $10
    sbc e
    ld d, b
    ld a, e
    ld h, b
    ldh a, [$08]
    rrca
    ld e, h
    rst $18
    ld l, b
    rst $28
    ld c, d
    ld l, a
    ld a, [bc]
    adc a
    ld c, c
    rst $08
    jr nc, jr_0c3_5dc8

    or e
    inc sp
    ld b, h
    ld b, a
    add hl, de
    dec de
    ld e, d
    dec de
    dec e
    ld e, l
    dec e
    ld e, l
    ld l, h
    ld l, $6e
    ld l, [hl]
    dec l
    ld c, l
    ld h, e
    dec hl
    rlca
    ld h, a
    cpl
    ld l, a
    rlca
    rla
    ld sp, $4829
    call nc, Call_0c3_61a5
    xor c
    ld [hl], d
    ld b, c
    or $d2

jr_0c3_5e39:
    ld sp, $ec00
    ret nc

    rrca
    dec sp
    add a
    nop
    ld [hl], b
    nop
    rrca
    rst $38
    rst $38
    rst $38
    adc a
    ld e, a
    nop
    jp c, Jump_0c3_7100

    nop
    add hl, hl
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld sp, hl
    add $c6
    jr z, @+$18

    ld c, h
    or b
    add c
    ld [hl], d
    add a
    ld c, b
    dec bc
    inc [hl]
    dec bc
    db $f4
    ld b, b
    or b
    ld [bc], a
    dec c
    and e
    ld e, h
    ld a, a
    nop
    sub [hl]
    jr z, jr_0c3_5ec7

    ld bc, HeaderSGBFlag
    or d
    ld bc, $00bd
    ld a, d
    nop
    ld [hl], l
    nop
    push af
    nop
    db $eb
    nop
    ld d, h
    nop
    ld [bc], a
    ld de, $00e7
    add sp, $01
    ld e, b
    add d
    jp c, $d000

    ld a, [bc]
    sbc d
    jr nz, jr_0c3_5e39

    db $10
    ld d, b
    ld a, [hl+]
    ld [$4002], sp
    sub b
    db $10
    jp z, $ca11

    dec h
    ld c, b
    ld h, b
    dec c
    jr nz, jr_0c3_5eed

    jr nz, @+$42

    nop
    rrca
    ld bc, $01f6
    ld a, d
    nop
    cp h
    nop
    cp c
    db $10
    rst $10
    add b
    rl c
    dec a
    ld b, h
    db $dd
    ld [bc], a
    ld l, [hl]
    add hl, hl
    ld l, l
    ld sp, $56b3
    rst $10
    ld c, a
    rst $08
    adc [hl]
    adc [hl]
    ld [hl], l
    ld [hl], l
    push af
    push af
    ld a, [$f7fa]

jr_0c3_5ec7:
    rst $30
    jp hl


    jp hl


    sbc $de
    sbc a
    sbc a
    ld h, a
    ld h, a
    ld hl, sp-$08
    rra
    rra
    db $e3
    db $e3
    db $fc
    db $fc
    rst $38
    rst $38
    ld l, a
    rra
    dec c
    adc a
    ld b, b
    pop bc
    nop
    jr c, jr_0c3_5ee7

    cp $ff
    rst $38
    rst $38

jr_0c3_5ee7:
    db $e3
    rst $30
    nop
    dec [hl]
    nop
    ret nz

jr_0c3_5eed:
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, e
    add h
    nop
    nop
    ld a, a
    nop
    ld [hl], b
    nop
    adc l
    ld [bc], a
    or h
    dec bc
    sub b
    ld b, b
    ld c, $00
    and c
    ld b, b
    ld h, l
    add d
    add d
    dec d
    ld b, d
    add hl, sp
    add b
    ld a, e
    ldh [rDIV], a
    add b
    ld d, c
    inc h
    ld a, [bc]
    ld [$7497], sp
    ld [$a310], sp
    ld b, b
    rrca
    ld b, b
    xor [hl]
    call nz, Call_000_0011
    cp e
    ld h, h
    ld de, $42ad
    ld [$c817], sp
    rlca
    sbc b
    ld b, a
    sbc $01
    sbc [hl]
    ld b, c
    db $dd
    ld [bc], a
    ld e, $01
    rst $08
    nop
    ld a, a
    nop
    ld l, a
    db $10
    or a
    nop
    dec bc

jr_0c3_5f3f:
    nop
    sbc l

jr_0c3_5f41:
    ld b, d
    add e
    ld l, b
    ld h, $c1
    dec bc
    sub b
    db $10
    ld c, h
    ld a, [bc]
    push hl
    nop
    or $00
    ld [$d400], a
    ld hl, $153a
    sub d
    jr z, jr_0c3_5f41

    ld b, b
    sbc $94
    cp e
    jr nz, jr_0c3_5f9d

    jp z, $c1cf

    di
    db $f4
    db $fc
    ld l, a
    ld a, a
    sbc a
    sbc a
    rst $20
    rst $20
    ld sp, hl
    ld sp, hl
    ld a, $3e
    rst $08
    rst $08
    rst $30
    rst $30
    add hl, sp
    add hl, sp
    add $c6
    ld sp, hl
    ld sp, hl
    ld e, $1e
    db $e3
    db $e3
    db $f4
    ld e, h
    cp [hl]
    ld a, [c]
    inc b
    ld a, $40
    ld b, [hl]
    jr nc, jr_0c3_5f3f

    call z, $f1cc
    sub c
    call Call_0c3_5801
    nop
    jr nz, jr_0c3_5f90

jr_0c3_5f90:
    nop
    nop
    nop
    nop
    rst $18
    rst $18
    sbc [hl]
    ld b, c
    inc bc
    ld e, $88
    ld b, $61

jr_0c3_5f9d:
    nop
    xor a
    ld b, b
    rrca
    nop
    ldh a, [rP1]
    dec b
    ld [bc], a
    ldh a, [rP1]
    ld [hl], e
    add h
    swap b
    ld sp, hl
    ld [bc], a
    add c
    ld b, d
    dec hl
    db $10
    inc hl
    ret nc

    ld [$09c4], sp
    inc [hl]
    ld c, b
    inc [hl]
    sub c
    inc l
    add b
    nop
    ld d, d
    inc c
    sbc $00
    sub a
    ld l, b
    sub b
    ld l, a
    add l
    ld a, d
    ld d, $e9
    db $10

jr_0c3_5fcb:
    rst $28
    ld de, $16ee
    jp hl


    sub c
    ld l, [hl]
    or d
    ld c, l
    or d
    ld c, l
    adc l
    ld [hl], d
    or l
    ld c, d
    cp d
    ld b, l
    db $db
    inc h
    rst $18
    jr nz, jr_0c3_5fcb

    dec d
    rrca
    ldh a, [$8f]
    ld [hl], b
    cp a
    ld b, b
    and a
    ld e, b
    dec hl
    ld d, h
    xor e
    inc d
    ld b, a
    sbc b
    jp nz, $0228

    jr nc, jr_0c3_5ff5

jr_0c3_5ff5:
    ret nz

    ld b, [hl]
    or b
    ld b, b
    jr nc, jr_0c3_5ffb

jr_0c3_5ffb:
    sub [hl]
    add b
    db $ed
    and b
    ret nz

    add b
    db $ed
    ret nz

    ldh [rNR10], a
    dec e
    pop de
    db $dd
    ret nz

    ret nz

    set 1, e
    jr nc, jr_0c3_603e

    cp e
    cp e
    cp e
    cp e
    add b
    add b
    ld a, a
    ld a, a
    ld a, e
    ld a, a
    ld h, b
    ld h, b
    dec de
    rra
    ld hl, sp-$08
    rlca
    rlca
    pop bc
    rst $38

jr_0c3_6022:
    or b
    cp $00

jr_0c3_6025:
    add c
    ld a, a
    ld a, a
    rst $38
    sub d
    adc a
    inc c
    ccf
    inc b
    ld a, a
    nop
    nop
    nop
    rst $38
    rst $38
    add hl, sp
    or $74
    adc e
    ld hl, sp+$00
    rlca
    nop
    ld a, a
    add b

jr_0c3_603e:
    cp a
    ld b, b
    rst $38
    nop
    ld a, $00
    ld b, $80
    jr c, jr_0c3_6048

jr_0c3_6048:
    add [hl]
    nop
    cp b
    nop
    cp l
    nop
    cp l
    nop
    cp l
    nop
    dec a
    add b
    inc a
    nop
    ld b, c
    add b
    ld a, [hl-]
    nop
    ld b, e
    add b
    jr c, jr_0c3_605e

jr_0c3_605e:
    ld b, e
    add b
    jr c, jr_0c3_6022

    ld [hl], $c1
    ccf
    ret nz

    ld [hl], a
    adc b
    dec hl
    call nc, $d02f
    dec h
    jp c, Jump_0c3_659a

    sbc c
    ld h, [hl]
    xor c
    ld d, [hl]
    call z, $4033
    cp a
    ld b, b
    cp a
    ld d, h
    xor e
    ld [$7315], a
    xor h
    ld [c], a
    dec e
    ld a, [de]
    push hl
    or $29
    ld l, d
    sub l
    or h
    ld c, e
    ld a, [hl]
    add c
    ld a, l
    add d
    ld a, a
    add b
    ld e, [hl]
    and c
    ld [hl], d
    adc c
    ld sp, $8400
    adc b
    inc b
    jr c, @-$7c

    and b
    adc d
    sub h
    nop
    ld hl, $9789
    nop
    jr nc, jr_0c3_6025

    adc a
    add b
    ret nc

    dec b
    rrca
    sbc a
    rst $18
    rst $18
    rst $18
    jr jr_0c3_60c8

    rst $00
    rst $00
    rra
    rra
    ret c

    ret c

    rlca
    rlca
    rst $18
    rst $18
    ret c

    ret c

    rlca
    rlca
    rst $28
    rst $28
    add sp, -$18
    rlca
    rlca
    add b
    xor $e1
    pop hl

jr_0c3_60c8:
    rst $28
    nop
    rst $38
    ld [hl], a
    ld a, [$8740]
    nop
    nop
    nop
    cp a
    cp a
    nop
    add c

jr_0c3_60d6:
    jr z, jr_0c3_612e

    ld a, a
    nop
    dec a
    ld [bc], a
    ld b, e
    nop
    inc d
    ld [$0061], sp
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    ldh [rP1], a
    cp $00
    db $fd
    nop
    ld a, [$7b00]
    nop
    sub a
    nop
    ld h, a
    nop
    adc a

Call_0c3_60fb:
    nop
    xor $00
    inc e
    nop
    db $db
    nop
    dec [hl]
    nop
    ld l, l
    nop
    ld l, [hl]
    nop
    db $dd
    nop
    pop hl
    ld [de], a
    adc e
    ld b, b
    ld l, c
    sub d
    ld hl, $38dc
    call nz, $f300
    nop
    rst $38
    nop
    rst $38
    ld bc, $a4fe
    ld e, e
    nop
    rst $38
    and h
    ld e, b
    ld c, h
    or c
    pop hl
    db $10
    push bc
    jr c, jr_0c3_60d6

    ld b, b
    push af
    nop
    pop hl
    nop

jr_0c3_612e:
    adc h
    db $10
    db $d3
    nop
    adc [hl]
    ld b, b
    ld [$a321], sp
    ld b, h
    ld [de], a
    adc c
    ld c, c
    inc [hl]
    inc c
    ld a, d
    ld [hl+], a
    sbc l
    jr nz, jr_0c3_6161

    inc b
    db $db
    nop
    jr jr_0c3_6147

jr_0c3_6147:
    rst $20
    jr z, @-$12

    ld [hl], b
    di
    call nz, Call_000_39c6
    add hl, sp
    ei
    ei
    pop hl
    pop hl
    ld e, $1e
    ld hl, sp-$08
    add a
    add a
    ld a, [hl]
    ld a, [hl]
    pop af
    pop af
    rrca
    rrca
    rst $38

jr_0c3_6161:
    rst $38
    ld hl, sp-$02
    nop
    ld bc, $ffff
    rst $38
    nop
    sbc h
    nop
    call c, RST_00
    nop
    nop
    nop
    db $fc
    db $fc
    dec [hl]
    ret z

    ld [bc], a
    ld bc, $00fb
    di
    inc b
    di

jr_0c3_617d:
    nop
    inc l
    nop
    rst $08
    nop
    inc de
    nop
    cp h
    nop
    cp a
    nop
    ld a, $00
    ld e, b
    nop
    push bc
    nop
    add hl, de
    nop
    add $00
    or $00
    ld l, $00
    call c, $af03
    db $10
    ld a, [hl]
    nop
    db $f4
    add hl, bc
    ld a, [c]
    nop
    ld l, [hl]
    ld bc, $019e
    dec sp

Call_0c3_61a5:
    inc b
    db $dd
    ld [bc], a
    sbc $01
    db $eb
    inc b
    add sp, $06
    sub b
    ld h, c
    adc d
    ld bc, $600d
    dec b
    ld l, b
    dec b
    ld l, b
    jr nz, @+$50

    db $10
    and [hl]
    ld [de], a
    and h
    ld d, $a0
    inc de
    inc b
    add c
    jr nz, jr_0c3_617d

    ld [bc], a
    sub e
    jr z, jr_0c3_6210

    jr nc, jr_0c3_6212

    jr nc, jr_0c3_6236

    nop
    ld l, [hl]
    nop
    ld e, d
    inc b
    ld a, [bc]
    inc d
    call nz, Call_0c3_542a
    and d
    nop
    ld [$9448], a
    nop
    cp l
    ld a, [bc]
    ld [hl], c
    ld [de], a
    ld h, l
    add hl, bc
    daa
    ld bc, $0edf
    call Call_000_3424
    and d
    db $e3
    ld a, [de]
    dec de
    ld sp, hl
    ld sp, hl
    ld h, [hl]
    and $9f
    sbc a
    ld a, [hl]
    ld a, [hl]
    pop hl
    pop hl
    rra
    rra
    ld a, [hl]
    ld a, [hl]
    cp c
    cp c
    and [hl]
    and a
    call z, Call_000_00df
    jr jr_0c3_620b

    rst $20
    add b
    xor $f1
    ld [hl], c

jr_0c3_620a:
    add a

jr_0c3_620b:
    nop
    ei
    ld b, b
    ld l, [hl]
    nop

jr_0c3_6210:
    rst $08
    rst $08

jr_0c3_6212:
    ld bc, $30f3
    inc c
    ld b, $c1
    ld hl, sp+$00
    ld hl, sp+$04
    ld h, c
    sbc h
    dec sp
    nop
    rst $00
    nop
    ld [c], a
    add hl, bc
    jp c, $3501

    ld [$1c61], sp
    or $08
    db $fc
    ld [bc], a
    cp $00
    db $fc
    ld bc, $8073
    ld h, [hl]
    add c

jr_0c3_6236:
    ld e, e
    nop
    dec sp
    nop
    sbc c
    ld b, d
    rl b
    dec c
    ldh [$28], a
    ld b, l
    dec d
    and b
    ld a, [bc]
    ret nc

    jr z, jr_0c3_620a

    ld h, c
    sub b
    dec c

jr_0c3_624b:
    jp nz, $2817

    rra
    and b
    dec e
    and d
    dec d
    jp z, $8850

    nop
    add l

jr_0c3_6258:
    ld e, c
    inc h
    push af
    ld [$b548], sp
    db $fc
    ld [bc], a
    ld l, h
    ld [de], a
    ld a, d
    inc b
    ld [$c006], sp
    db $10
    sbc c
    inc h
    cp b
    inc hl
    ld [hl], c
    ld a, [hl+]
    ld d, h
    inc hl
    add b
    ld c, $8c
    ld h, [hl]
    jr nz, jr_0c3_6258

    add h
    ld e, h
    dec d
    call $bd05
    inc bc
    dec sp
    inc hl
    cp e
    rlca
    rst $10
    ld h, $e6
    ld a, [bc]
    sbc d
    ld d, l
    ld [hl], l
    ld h, h
    db $f4
    call $dbed
    db $db
    cp e
    cp e
    cp e
    cp e
    ld a, e
    ld a, e

jr_0c3_6294:
    dec sp
    dec sp
    jp c, $96da

    sub [hl]
    ld h, h
    ld h, d
    jp nc, $d0f6

    ld [hl], c
    dec b
    dec c
    ldh [$fe], a
    ret nz

    ld hl, sp+$07
    rlca
    rst $38

jr_0c3_62a9:
    rst $38
    sub $00
    nop
    nop
    ld b, b
    nop
    ldh [$e0], a
    sub b
    ret nc

    sub b
    jr nc, jr_0c3_62e7

    ld [hl], b
    ret nc

    jr nc, jr_0c3_624b

    ld [hl], b
    ld d, b
    jr nc, jr_0c3_62cf

    ld [hl], b
    jr jr_0c3_633a

    sub d
    ld [hl-], a
    sub h
    inc [hl]
    sbc b
    jr c, jr_0c3_6294

    dec bc
    sub b
    ld d, b
    add hl, de
    add hl, sp
    ld d, b

jr_0c3_62cf:
    ld [hl], b
    ld d, c
    ld sp, $3696
    sbc h
    inc a
    sbc b
    jr c, @+$13

    or c
    sbc d
    ld a, [hl-]
    db $10
    or b
    inc e
    call c, $d017
    ld de, $04d0
    ret nz

    db $10

jr_0c3_62e7:
    jr nc, jr_0c3_62f9

    ldh a, [$90]
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$80]
    add b
    nop
    ld h, b
    add b
    ldh [rP1], a

jr_0c3_62f9:
    ldh [$90], a
    ldh [$90], a
    ldh [$82], a
    ldh [$80], a
    ld h, b
    add c
    ld h, c
    add b
    ld h, b
    ld [$00e8], sp
    nop
    ld d, b
    db $10
    ld [bc], a
    ld b, d
    inc b
    ld b, h
    inc e
    call nz, $a037
    ccf
    and d
    sbc a
    and b
    rrca
    jr nz, jr_0c3_62a9

    add b
    rra
    ld b, b
    ld e, a
    ld b, c
    ld e, a
    ld b, e
    sub a
    pop bc
    sbc d
    and b
    adc a
    and b
    rra
    dec h
    adc [hl]
    xor [hl]
    adc [hl]
    add b
    ld b, h
    ld b, b
    ld b, [hl]
    ld b, b
    nop
    ld b, b
    ld [bc], a
    ld b, b
    add c
    ret nz

    add b
    ret nz

jr_0c3_633a:
    sub b
    ret nz

    ld a, a
    call nz, $c007
    add h
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    inc e
    ld b, b
    cp h
    add b
    ld bc, $0000
    nop
    jr nz, jr_0c3_6350

jr_0c3_6350:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    dec d
    ld d, $17
    jr jr_0c3_63df

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
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_0c3_63dc

jr_0c3_63dc:
    nop
    nop
    nop

jr_0c3_63df:
    nop
    nop
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_0c3_641b

    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_0c3_6431

    ld a, [hl-]
    dec sp
    inc a
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
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    nop
    nop
    nop
    nop
    nop
    nop
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

jr_0c3_641b:
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c3_6431:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
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
    rlca
    rlca
    rlca

Jump_0c3_659a:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    ld e, $f7
    or [hl]
    dec sp
    dec bc
    add hl, hl
    dec c
    ld e, b
    ld e, $08
    rrca
    jr @+$21

    jr jr_0c3_6601

    add sp, $0e
    ld hl, sp+$7e
    ld hl, sp+$0e
    ld a, b
    ld l, $a8
    ld c, $d8
    ld c, $28
    dec c
    and b

jr_0c3_6601:
    dec h
    xor b
    add hl, bc
    call c, $ec9e
    ld l, [hl]
    xor h
    adc [hl]
    db $f4
    and $dc
    call Call_0c3_4dec
    ld e, h
    dec c
    db $e4
    dec b
    call z, Call_000_0c85
    dec b
    ld [$3803], sp
    dec bc
    ldh a, [rSC]
    ld [$0c00], sp
    inc b
    ld b, $07
    ld e, $07
    ld c, $07
    ld c, $07
    ld c, $07
    xor [hl]
    rlca
    sbc $07
    and $87
    rst $20
    rlca
    ld a, [hl]
    ld b, $fd
    add c
    ld hl, sp+$00
    call z, Call_000_1f08
    inc bc
    and [hl]
    inc bc
    sbc $0b
    rst $18
    inc bc
    db $76
    inc bc
    rlca
    inc bc
    ld h, h
    ld [bc], a
    cp h
    nop
    db $db
    inc bc
    rst $38
    inc bc
    db $e3
    inc bc
    db $ed
    inc bc
    call c, $0703
    inc bc
    dec e
    inc bc
    add a
    inc bc
    rrca
    rlca
    rrca
    ld bc, $0006
    db $fc
    ld bc, $030e
    inc bc
    ld bc, $0103
    nop
    ld bc, $01a2
    ld b, e
    ld bc, $010d
    sbc [hl]
    nop
    ld [hl], c
    ld b, c
    reti


    ret nz

    ldh a, [rP1]
    ld h, c
    nop
    rrca
    nop
    nop
    nop
    call nz, $ae00
    nop
    ei
    ld bc, $ffff
    cp $fe
    add b
    ld sp, hl
    nop
    daa
    nop
    ld e, a
    daa
    ld l, b
    nop
    db $f4
    res 4, b
    ld l, h
    and b

jr_0c3_6698:
    sbc b
    call nz, $c8d3
    or c
    ld a, [hl+]
    or c
    add [hl]
    ld b, a
    ld [hl], b
    ld l, $40
    ld b, $68
    adc h
    sub c
    ld l, b
    and l
    ld b, b
    and d
    adc h
    ld d, b
    db $dd
    ld [bc], a
    sub l
    ld c, d
    inc e
    or d
    sub b
    ld a, $18
    db $76
    ld e, b
    dec [hl]
    ld b, b
    dec a
    nop
    db $fd
    ret c

    ld a, e
    nop
    inc bc
    ld e, b
    ld a, b
    add b
    ld a, [hl-]
    ld b, b
    jp z, $f240

    ld c, c
    ld a, [$f360]
    add sp, $6b
    db $10
    sbc e
    ld d, b
    ld a, e
    ld h, b
    ldh a, [$08]
    rrca
    ld e, h
    rst $18
    ld l, b
    rst $28
    ld c, d
    ld l, a
    ld a, [bc]
    adc a
    ld c, c
    rst $08
    jr nc, jr_0c3_6698

    or e
    inc sp
    ld b, h
    ld b, a
    add hl, de
    dec de
    ld e, d
    dec de
    dec e
    ld e, l
    dec e
    ld e, l
    ld l, h
    ld l, $6e
    ld l, [hl]
    dec l
    ld c, l
    ld h, e
    dec hl
    rlca
    ld h, a
    cpl
    ld l, a
    rlca
    rla
    ld sp, $4829
    call nc, Call_0c3_61a5
    xor c
    ld [hl], d
    ld b, c
    or $d2
    ld sp, $ec00
    ret nc

    rrca
    dec sp
    add a
    nop
    ld [hl], b
    nop
    rrca
    rst $38
    rst $38
    rst $38
    adc a
    ld e, a
    nop
    jp c, Jump_0c3_7100

    nop
    add hl, hl

jr_0c3_671f:
    nop
    nop
    nop
    nop
    nop
    ld sp, hl
    ld sp, hl
    add $c6
    jr z, @+$18

    ld c, h
    or b
    add c
    ld [hl], d
    add a
    ld c, b
    dec bc
    inc [hl]
    dec bc
    db $f4
    ld c, e
    or h
    ld [bc], a
    dec c
    and e
    ld e, h
    ld a, a
    nop
    sub [hl]
    jr z, jr_0c3_67b7

    ld bc, $2956
    cp [hl]
    ld bc, $02bd
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18

jr_0c3_674f:
    jr nz, jr_0c3_671f

    ld sp, $00ff
    xor $11
    ld a, l
    add d
    ei
    inc b
    push af
    ld a, [bc]
    db $db
    inc h
    xor e
    ld d, h
    ld d, l
    ld a, [hl+]
    dec c
    ld [hl], d
    ld b, a
    cp b
    inc [hl]
    swap c
    adc $25
    jp c, $9f60

    jr nz, jr_0c3_674f

    add hl, hl
    sub $00
    rst $38
    ld bc, $01fe
    cp $40
    rst $38
    nop
    rst $38
    db $10
    rst $38
    add b
    rst $38
    ld de, $44ff
    rst $18
    ld [bc], a
    ld l, a
    add hl, hl
    ld l, a
    dec [hl]
    cp a
    ld d, [hl]
    rst $18
    ld c, a
    rst $08
    adc [hl]
    adc a
    ld [hl], a
    ld [hl], a
    push af
    rst $30
    ld a, [$f7fa]
    rst $30
    jp hl


    jp hl


    sbc $de
    sbc a
    sbc a
    ld h, a
    ld h, a
    ld hl, sp-$08
    rra
    rra
    db $e3
    db $e3
    db $fc
    db $fc
    rst $38
    rst $38
    ld l, a
    rra
    dec c
    adc a
    ld b, b
    pop bc
    nop
    jr c, jr_0c3_67b7

    cp $ff
    rst $38
    rst $38

jr_0c3_67b7:
    db $e3
    rst $30
    nop
    dec [hl]
    nop
    ret nz

    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    ld a, e
    add h
    nop
    nop
    ld a, a
    nop
    ld [hl], b
    nop
    adc l
    ld [bc], a
    or h
    dec bc
    cp l
    ld b, d
    rst $18
    jr nz, @-$3f

    ld b, b
    ld a, l
    add d
    adc d
    dec d
    ld b, d
    dec a
    add h
    ld a, e
    ldh a, [rIF]
    and d
    ld e, l
    inc h
    db $db
    jr z, @-$27

    ld [hl], h
    adc e
    ld d, b
    xor a
    ldh [$1f], a
    ld d, b
    xor a
    adc $31
    ld b, h
    cp e
    db $ec
    inc de
    xor l
    ld d, d
    ld l, b
    sub a
    ld hl, sp+$07
    cp b
    ld b, a
    cp $01
    cp [hl]
    ld b, c
    db $fd
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    cp a
    ld b, b
    ld l, a

jr_0c3_680f:
    sub b
    cp l
    ld b, d
    sub e
    ld l, h
    ld l, $d1
    dec hl
    call nc, $ed12
    ld a, [bc]
    push af
    ld bc, $01fe
    cp $00
    rst $38
    ld hl, $15fe
    ld a, [$ff28]
    ld b, b
    rst $38

jr_0c3_682a:
    call nc, Call_0c3_60fb
    rst $38
    jp z, $c1ff

    rst $38
    rst $30
    rst $38
    ld l, a
    ld a, a
    sbc a
    sbc a
    rst $20
    rst $20
    ld sp, hl
    ld sp, hl
    ld a, $3e
    rst $08
    rst $08
    rst $30
    rst $30
    add hl, sp
    add hl, sp
    add $c6
    ld sp, hl
    ld sp, hl
    ld e, $1e
    db $e3
    db $e3
    db $f4
    ld e, h
    cp [hl]
    ld a, [c]
    inc b
    ld a, $40
    ld b, [hl]
    jr nc, jr_0c3_680f

    call z, $f1cc
    sub c
    call Call_0c3_5801
    nop
    jr nz, jr_0c3_6860

jr_0c3_6860:
    nop
    nop
    nop
    nop
    rst $18
    rst $18
    sbc [hl]
    ld b, c
    inc bc
    ld e, $88
    ld b, $61
    nop
    xor a
    ld b, b
    rrca
    nop
    rst $30
    ld [$02fd], sp
    rst $30
    ld [$8c73], sp

jr_0c3_687a:
    rst $08
    jr nc, jr_0c3_687a

    ld [bc], a
    cp l
    ld b, d
    ld l, a
    sub b
    dec hl
    call nc, $f40b
    ld c, e
    or h
    ld c, e
    or h
    db $d3
    inc l
    add $39
    db $d3
    inc l
    rst $18
    jr nz, jr_0c3_682a

    ld l, b
    sub b
    ld l, a
    add l
    ld a, d
    ld d, $e9
    db $10

jr_0c3_689b:
    rst $28
    ld de, $16ee
    jp hl


    sub c
    ld l, [hl]
    or d
    ld c, l
    or d
    ld c, l
    adc l
    ld [hl], d
    or l
    ld c, d
    cp d
    ld b, l
    db $db
    inc h
    rst $18
    jr nz, jr_0c3_689b

    dec d
    rrca
    ldh a, [$8f]
    ld [hl], b
    cp a
    ld b, b
    and a
    ld e, b
    xor e
    ld d, h
    xor e
    ld d, h
    ld h, a
    sbc b
    add $39
    ld b, e
    cp l
    ld a, [bc]
    push af
    ld b, [hl]
    cp c
    ld b, b
    cp a
    ld bc, $82ff
    db $fd
    and b
    rst $18
    add b
    rst $38
    push bc
    rst $38
    ldh a, [rIE]
    pop de
    rst $38
    ld a, [$fbff]
    rst $38
    jr nc, jr_0c3_690e

    cp e
    cp e
    cp e
    cp e
    add b
    add b
    ld a, a
    ld a, a
    ld a, e
    ld a, a
    ld h, b
    ld h, b
    dec de
    rra
    ld hl, sp-$08
    rlca
    rlca
    pop bc
    rst $38
    or b
    cp $00
    add c
    ld a, a
    ld a, a
    rst $38
    sub d
    adc a
    inc c
    ccf
    inc b
    ld a, a
    nop
    nop
    nop
    rst $38
    rst $38
    add hl, sp
    or $74
    adc e
    ld hl, sp+$00
    rlca
    nop
    ld a, a
    add b

jr_0c3_690e:
    cp a
    ld b, b
    rst $38
    nop
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
    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ld a, $c1
    ccf
    ret nz

    ld [hl], a
    adc b
    dec hl
    call nc, $d02f
    dec h
    jp c, Jump_0c3_659a

    sbc c
    ld h, [hl]
    xor c
    ld d, [hl]
    call z, $4033
    cp a
    ld b, b
    cp a
    ld d, h
    xor e
    ld [$7315], a
    xor h
    ld [c], a
    dec e
    ld a, [de]
    push hl
    or $29
    ld l, d
    sub l
    or h
    ld c, e
    ld a, [hl]
    add c
    ld a, l
    add d
    ld a, a
    add b
    ld e, [hl]
    and c
    db $76
    adc c
    or a
    ld c, b
    sub h
    db $eb
    ld b, [hl]
    cp c
    add [hl]
    ld sp, hl
    adc d
    push af
    adc [hl]
    pop af
    ret


    rst $30
    add h
    ei
    ret nz

    rst $38
    and c
    cp $e5
    rst $28
    sbc a
    rst $18
    rst $18
    rst $18
    jr jr_0c3_6998

    rst $00
    rst $00
    rra
    rra
    ret c

    ret c

    rlca
    rlca
    rst $18
    rst $18
    ret c

    ret c

    rlca
    rlca
    rst $28
    rst $28
    add sp, -$18
    rlca
    rlca
    add b
    xor $e1
    pop hl

jr_0c3_6998:
    rst $28
    nop
    rst $38
    ld [hl], a
    ld a, [$8740]
    nop
    nop
    nop
    cp a
    cp a
    nop
    add c
    jr z, jr_0c3_69fe

    ld a, a
    nop
    dec a
    ld [bc], a
    ld b, e
    nop
    inc d
    ld [$0061], sp
    cp $00
    rst $38
    nop
    rst $38
    nop

jr_0c3_69b8:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_0c3_69c2:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $ed
    ld [de], a
    cp e
    ld b, h
    ld l, c
    sub [hl]
    inc hl
    call c, $c738
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $a4fe
    ld e, e
    nop
    rst $38
    and h

jr_0c3_69f1:
    ld e, e
    ld c, [hl]
    or c
    push hl
    ld a, [de]
    rst $00
    jr c, jr_0c3_69b8

    ld b, b
    rst $38
    nop
    rst $38
    nop

jr_0c3_69fe:
    rst $28
    db $10
    rst $18
    jr nz, jr_0c3_69c2

    ld b, b
    ld e, [hl]
    and c
    cp e
    ld b, h
    ld [hl-], a
    call $b44b
    inc c
    ei
    ld [hl+], a
    db $dd
    jr nz, jr_0c3_69f1

    inc b
    ei
    inc h
    rst $38

jr_0c3_6a16:
    db $10
    rst $38
    jr z, jr_0c3_6a16

    ld [hl], b
    di
    call nz, Call_000_39c6
    add hl, sp
    ei
    ei
    pop hl
    pop hl
    ld e, $1e
    ld hl, sp-$08
    add a
    add a
    ld a, [hl]
    ld a, [hl]
    pop af
    pop af
    rrca
    rrca
    rst $38
    rst $38
    ld hl, sp-$02
    nop
    ld bc, $ffff
    rst $38
    nop
    sbc h
    nop
    call c, RST_00
    nop
    nop
    nop
    db $fc
    db $fc
    dec [hl]
    ret z

    ld [bc], a
    ld bc, $00fb
    di
    inc b
    di
    nop
    inc l
    nop
    rst $08
    nop
    inc de
    nop
    cp h
    nop
    cp a
    nop
    ld a, $00
    ld a, b
    nop
    db $fd
    nop
    ld sp, hl
    nop
    cp $00
    cp $00
    cp $00
    db $fc
    inc bc

jr_0c3_6a68:
    rst $28
    db $10

jr_0c3_6a6a:
    cp $01
    or $09
    cp $01
    cp $01
    cp $01
    ei
    inc b
    db $fd
    ld [bc], a
    cp $01
    ei
    inc b
    ld sp, hl
    ld b, $98
    ld h, a
    sbc d
    ld h, l
    dec c
    ld a, [c]
    add a
    ld a, b
    dec b
    ld a, [$de21]
    ld de, $53ee
    xor h
    ld e, [hl]
    and c
    ld e, e
    and h
    db $d3
    inc l
    db $fd
    ld [bc], a
    rst $10
    jr z, jr_0c3_6a68

    jr nc, jr_0c3_6a6a

    jr nc, @+$01

    nop
    rst $28
    db $10
    ei
    inc b
    ld l, e
    sub h
    push de
    ld a, [hl+]
    ld d, l
    xor d
    inc b
    ei
    ld c, b
    or a
    nop
    rst $38
    ld a, [bc]
    pop af
    ld [de], a
    push hl
    add hl, bc
    rst $20
    ld bc, $0edf
    call Call_000_3424
    and d
    db $e3
    ld a, [de]
    dec de
    ld sp, hl
    ld sp, hl
    ld h, [hl]
    and $9f
    sbc a
    ld a, [hl]
    ld a, [hl]
    pop hl
    pop hl
    rra
    rra
    ld a, [hl]
    ld a, [hl]
    cp c
    cp c
    and [hl]
    and a
    call z, Call_000_00df
    jr jr_0c3_6adb

    rst $20
    add b
    xor $f1
    ld [hl], c
    add a

jr_0c3_6adb:
    nop
    ei
    ld b, b
    ld l, [hl]
    nop
    rst $08
    rst $08
    ld bc, $30f3
    inc c
    ld b, $c1
    ld hl, sp+$00
    ld hl, sp+$04
    ld h, c
    sbc h
    dec sp
    nop
    rst $00
    nop
    ld [c], a
    add hl, bc
    jp c, $3501

    ld [$1c61], sp
    or $08
    db $fc
    ld [bc], a
    cp $00
    db $fc
    ld bc, $8073
    ld h, [hl]
    add c
    ld e, e
    nop
    dec sp
    nop
    sbc c
    ld b, d
    rl b
    dec c
    ldh [$a8], a
    ld b, l
    ld d, l
    and b
    ld l, $d0
    inc l
    jp nc, $9a65

    dec a

jr_0c3_6b1b:
    jp nz, $a857

    rra
    ldh [rNR33], a
    ld [c], a
    dec d
    ld [$8870], a
    jr nc, @-$31

jr_0c3_6b28:
    reti


    inc h
    push af
    ld [$b548], sp
    db $fc
    ld [bc], a
    db $ec
    ld [de], a
    ld a, [$4804]
    or [hl]
    ldh [rNR10], a
    reti


    inc h
    ld hl, sp+$23
    pop af
    ld a, [hl+]
    call nc, $8023
    ld c, $8c
    ld h, [hl]
    jr nz, jr_0c3_6b28

    add h
    ld e, h
    dec d
    call $bd05
    inc bc
    dec sp
    inc hl
    cp e
    rlca
    rst $10
    ld h, $e6
    ld a, [bc]
    sbc d
    ld d, l
    ld [hl], l
    ld h, h
    db $f4
    call $dbed
    db $db
    cp e
    cp e
    cp e
    cp e
    ld a, e
    ld a, e

jr_0c3_6b64:
    dec sp
    dec sp
    jp c, $96da

    sub [hl]
    ld h, h
    ld h, d
    jp nc, $d0f6

    ld [hl], c
    dec b
    dec c
    ldh [$fe], a
    ret nz

    ld hl, sp+$07
    rlca
    rst $38

jr_0c3_6b79:
    rst $38
    sub $00
    nop
    nop
    ld b, b
    nop
    ldh [$e0], a
    sub b
    ret nc

    sub b
    jr nc, jr_0c3_6bb7

    ld [hl], b
    ret nc

    jr nc, jr_0c3_6b1b

    ld [hl], b
    ld d, b
    jr nc, jr_0c3_6b9f

    ld [hl], b
    jr jr_0c3_6c0a

    sub d
    ld [hl-], a
    sub h
    inc [hl]
    sbc b
    jr c, jr_0c3_6b64

    dec bc
    sub b
    ld d, b
    add hl, de
    add hl, sp
    ld d, b

jr_0c3_6b9f:
    ld [hl], b
    ld d, c
    ld sp, $3696
    sbc h
    inc a
    sbc b
    jr c, @+$13

    or c
    sbc d
    ld a, [hl-]
    db $10
    or b
    inc e
    call c, $d017
    ld de, $04d0
    ret nz

    db $10

jr_0c3_6bb7:
    jr nc, jr_0c3_6bc9

    ldh a, [$90]
    ldh a, [$90]
    ldh a, [rNR10]
    ldh a, [$90]
    ldh a, [$80]
    add b
    nop
    ld h, b
    add b
    ldh [rP1], a

jr_0c3_6bc9:
    ldh [$90], a
    ldh [$90], a
    ldh [$82], a
    ldh [$80], a
    ld h, b
    add c
    ld h, c
    add b
    ld h, b
    ld [$00e8], sp
    nop
    ld d, b
    db $10
    ld [bc], a
    ld b, d
    inc b
    ld b, h
    inc e
    call nz, $a037
    ccf
    and d
    sbc a
    and b
    rrca
    jr nz, jr_0c3_6b79

    add b
    rra
    ld b, b
    ld e, a
    ld b, c
    ld e, a
    ld b, e
    sub a
    pop bc
    sbc d
    and b
    adc a
    and b
    rra
    dec h
    adc [hl]
    xor [hl]
    adc [hl]
    add b
    ld b, h
    ld b, b
    ld b, [hl]
    ld b, b
    nop
    ld b, b
    ld [bc], a
    ld b, b
    add c
    ret nz

    add b
    ret nz

jr_0c3_6c0a:
    sub b
    ret nz

    ld a, a
    call nz, $c007
    add h
    ret nz

    nop
    ret nz

    ld b, b
    ret nz

    inc e
    ld b, b
    cp h
    add b
    ld bc, $0000
    nop
    jr nz, jr_0c3_6c20

jr_0c3_6c20:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca

Call_0c3_6d92:
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

Call_0c3_6dff:
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
    rlca
    rlca
    rlca
    inc b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0704
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    sbc h
    ld h, e
    inc d
    db $e3

jr_0c3_6eb4:
    ld bc, $7ef2
    add c
    ld h, l
    sbc d
    ld b, l
    cp d
    inc c
    di
    ld c, e
    or a
    db $f4
    add a
    db $f4
    ld b, $f8
    add hl, bc
    ld hl, sp+$0b
    ld hl, sp+$0b
    ld hl, sp+$08
    ld hl, sp+$0b
    ld sp, hl
    dec bc
    add hl, de
    dec c
    ld [hl], b
    dec b
    cp b
    add hl, bc
    jr c, @+$0a

    jr z, jr_0c3_6ee2

    and b
    ld [bc], a
    sbc b
    ld a, [bc]
    adc b
    ld [$0838], sp

jr_0c3_6ee2:
    cp b
    ld [$0604], sp
    jr nc, jr_0c3_6ee8

jr_0c3_6ee8:
    jr c, jr_0c3_6ef4

    ld l, b
    ld a, [bc]
    ld [hl], b
    nop
    ld [hl], b
    ld b, $3a
    ld a, [bc]
    jr nc, jr_0c3_6efc

jr_0c3_6ef4:
    sbc d
    ld a, [bc]
    db $f4
    dec b
    or l
    dec b
    ld hl, sp+$08

jr_0c3_6efc:
    ld a, c
    add hl, bc

Call_0c3_6efe:
    cp e
    dec bc
    ld c, a
    cp d
    rst $08
    jr c, jr_0c3_6eb4

    ld e, d
    ld c, a
    or $4f
    or [hl]
    ld l, a
    ld a, [c]
    daa
    db $fc
    rst $30
    inc a
    sbc e
    ld a, [hl]
    db $ed
    ld e, $04
    rst $38
    adc b
    ld a, a
    ld [hl], b
    rrca
    xor $13
    jr nc, jr_0c3_6f21

    or $09
    ld h, [hl]

jr_0c3_6f21:
    jr jr_0c3_6f65

    cp h
    db $76
    add b
    ld [hl], b
    add b
    cp b
    ld b, b
    cp a
    ld b, b
    db $e4
    inc de
    rst $38
    ld a, h
    dec e
    ld a, l
    inc bc
    dec de
    ld h, c
    inc bc
    jr jr_0c3_6f38

jr_0c3_6f38:
    ld h, e
    nop
    ld [hl], $41
    ld h, a
    ld [hl], b
    ld de, $0670
    db $10
    ld c, $6c
    ld h, $6c
    ld hl, $11e4
    jr jr_0c3_6f4c

    ret c

jr_0c3_6f4c:
    ld bc, $12d4
    sub $02
    and [hl]
    ld [bc], a
    sbc d
    ld bc, $2698
    dec h
    ld b, $14
    ld [hl+], a
    ld a, b
    ld [bc], a
    ld [$7020], sp
    inc l
    add hl, hl
    dec c
    add hl, bc
    add hl, bc

jr_0c3_6f65:
    dec de
    add hl, bc
    dec hl
    ld hl, $0933
    dec hl
    add hl, hl
    dec hl
    ld b, l
    ld d, c
    sub b
    call nc, $cd81
    inc bc
    dec bc
    db $d3
    db $db
    db $d3
    db $db
    inc bc
    ld a, [bc]
    db $e3
    ld [$6b63], a
    add e
    add [hl]
    ld h, a
    ld h, [hl]
    and a
    and [hl]
    rst $00
    call nz, $e6e7
    rst $20
    ld [hl], $e7
    ld [hl], l
    rst $30
    inc d
    adc d
    ld d, h
    ld d, [hl]
    ld [$06d8], sp
    db $ed
    ld [de], a
    ld d, e
    adc h
    dec a
    add $55
    xor d
    adc c
    or $80
    nop
    db $f4
    ret nz

    ld a, [c]
    ldh [$62], a
    ldh [rNR30], a
    db $10
    dec de
    ret nc

    dec sp
    or b
    dec a
    or b
    ccf
    db $76
    ccf
    ld [hl], d
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    and b
    ccf
    or h
    ccf
    and b
    ccf
    sbc b
    daa
    add b
    ld h, a
    ld b, h
    ld a, b
    ld b, b
    jr c, @+$12

    or l
    add b
    sbc c
    sub b
    sub c
    sub b
    jr nz, jr_0c3_6fd0

jr_0c3_6fd0:
    db $d3
    xor b
    ld a, [$8e04]
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [$7e]
    and c
    inc e
    db $e3
    or h
    bit 6, l
    adc d
    scf
    ret z

    inc l
    jp nc, $807e

    rst $18
    jr nz, jr_0c3_7018

    ret nc

    adc $f0
    ld b, c
    ld a, [$fc63]
    ld b, e
    db $fc
    ld c, a
    or b
    ld c, a
    or b
    rst $00
    cp b
    ld h, e
    sbc b
    ld c, h
    cp e
    jr c, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c3_7018:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0c3_708c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0c3_70cc:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_0c3_7100:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    inc b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0704
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    sbc h
    ld h, e
    inc d
    db $e3

jr_0c3_7294:
    ld bc, $7ef2
    add c
    ld h, l
    sbc d
    ld b, l
    cp d
    inc c
    di
    ld c, e
    or a
    db $f4
    add a
    db $f4
    ld b, $f8
    add hl, bc
    ld hl, sp+$0b
    ld hl, sp+$0b
    ld hl, sp+$08
    ld hl, sp+$0b
    ld sp, hl
    dec bc
    add hl, de
    dec c
    ld [hl], b
    dec b
    cp b
    add hl, bc
    jr c, @+$0a

    jr z, jr_0c3_72c2

    and b
    ld [bc], a
    sbc b
    ld a, [bc]
    adc b
    ld [$0838], sp

jr_0c3_72c2:
    cp b
    ld [$0704], sp
    jr nc, @+$03

    jr c, jr_0c3_72d5

    ld l, b
    dec bc
    ld [hl], b
    inc bc
    ld [hl], c
    rlca
    ld a, [hl-]
    dec bc
    jr nc, jr_0c3_72df

    sbc d

jr_0c3_72d5:
    dec bc
    or $07
    or l
    rlca
    ld sp, hl
    add hl, bc
    ld a, c
    add hl, bc
    cp e

jr_0c3_72df:
    dec bc
    ld c, a
    cp d
    rst $08
    jr c, jr_0c3_7294

    ld e, d
    ld c, a
    or $4f
    or [hl]
    ld l, a
    ld a, [c]
    daa
    db $fc
    rst $30
    inc a
    sbc e
    ld a, [hl]
    db $ed
    ld e, $04
    rst $38
    adc b
    ld a, a
    ld [hl], b
    rrca
    xor $13
    jr nc, jr_0c3_7301

    or $09
    ld h, [hl]

jr_0c3_7301:
    jr jr_0c3_7345

    cp h
    db $76
    add b
    ld [hl], b
    add b
    cp b
    ld b, b
    cp a
    ld b, b
    db $e4
    inc de
    rst $38
    ld a, h
    dec e
    ld a, l
    inc bc
    dec de
    ld h, c
    inc bc
    jr jr_0c3_7318

jr_0c3_7318:
    ld h, e
    nop
    ld [hl], $41
    ld h, a
    ld [hl], b
    ld de, $0670
    db $10
    ld c, $6c
    ld h, $6c
    ld hl, $11e4
    jr jr_0c3_732c

    ret c

jr_0c3_732c:
    ld bc, $12d4
    sub $02
    and [hl]
    ld [bc], a
    sbc d
    ld bc, $26f8
    push hl
    ld h, $f4
    and d
    ld hl, sp-$5e
    ld hl, sp+$20
    ldh a, [$6c]
    ld sp, hl
    ld l, l
    ld sp, hl
    ld c, c

jr_0c3_7345:
    ei
    ret


    ei
    ld h, c
    di
    adc c
    db $eb
    add hl, hl
    dec hl
    ld b, l
    ld d, c
    sub b
    call nc, $cd81
    inc bc
    dec bc
    db $d3
    db $db
    db $d3
    db $db
    inc bc
    ld a, [bc]
    db $e3
    ld [$6b63], a
    add e
    add [hl]
    ld h, a
    ld h, [hl]
    and a
    and [hl]
    rst $00
    call nz, $e6e7
    rst $20
    ld [hl], $e7
    ld [hl], l
    rst $30
    inc d
    adc d
    ld d, h
    ld d, [hl]
    ld [$06d8], sp
    db $ed
    ld [de], a
    ld d, e
    adc h
    dec a
    add $55
    xor d
    adc c
    or $80
    nop
    db $f4
    ret nz

    ld a, [c]
    ldh [$62], a
    ldh [rNR30], a
    db $10
    dec de
    ret nc

    dec sp
    or b
    dec a
    or b
    ccf
    db $76
    ccf
    ld [hl], d
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    and b
    ccf
    or h
    ccf
    and b
    ccf
    sbc b
    daa
    add b
    ld h, a
    ld b, h
    ld a, b
    ld b, b
    jr c, @+$12

    or l
    add b
    sbc c
    sub b
    sub c
    sub b
    jr nz, jr_0c3_73b0

jr_0c3_73b0:
    db $d3
    xor b
    ld a, [$8e04]
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [$7e]
    and c
    inc e
    db $e3
    or h
    bit 6, l
    adc d
    scf
    ret z

    inc l
    jp nc, $807e

    rst $18
    jr nz, jr_0c3_73f8

    ret nc

    adc $f0
    ld b, c
    ld a, [$fc63]
    ld b, e
    db $fc
    ld c, a
    or b
    ld c, a
    or b
    rst $00
    cp b
    ld h, e
    sbc b
    ld c, h
    cp e
    jr c, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c3_73f8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    rlca
    rlca
    rlca
    inc b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0704
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    inc bc
    dec b
    dec b
    dec b
    inc b
    inc b
    inc b
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
    rlca
    rlca
    rlca
    rlca
    rlca
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
    sbc h
    ld h, e
    inc d
    db $e3

jr_0c3_7674:
    ld bc, $7ef2
    add c
    ld h, l
    sbc d
    ld b, l
    cp d
    inc c
    di
    ld c, e
    or a
    db $f4
    add a
    db $f4
    ld b, $f8
    add hl, bc
    ld hl, sp+$0b
    ld hl, sp+$0b
    ld hl, sp+$08
    ld hl, sp+$0b
    ld sp, hl
    dec bc
    add hl, de
    dec c
    ld [hl], b
    dec b
    cp b
    add hl, bc
    jr c, @+$0b

    jr z, jr_0c3_76a5

    and b
    inc bc
    sbc b
    dec bc
    adc b
    dec bc
    jr c, jr_0c3_76ad

    cp d
    dec bc
    inc b

jr_0c3_76a5:
    rlca
    jr nc, jr_0c3_76ab

    jr c, jr_0c3_76b5

    ld l, b

jr_0c3_76ab:
    dec bc
    ld [hl], b

jr_0c3_76ad:
    inc bc
    ld [hl], c
    rlca
    ld a, [hl-]
    dec bc
    jr nc, jr_0c3_76bf

    sbc d

jr_0c3_76b5:
    dec bc
    or $07
    or l
    rlca
    ei
    dec bc
    ld a, e
    dec bc
    cp e

jr_0c3_76bf:
    dec bc
    ld c, a
    cp e
    rst $08
    jr c, jr_0c3_7674

    ld e, d
    ld c, a
    or $4f
    or [hl]
    ld l, a
    ld a, [c]
    daa
    db $fc
    rst $30
    inc a
    sbc e
    ld a, [hl]
    db $ed
    ld e, $04
    rst $38
    adc b
    ld a, a
    ld [hl], b
    rrca
    xor $13
    jr nc, jr_0c3_76e1

    or $09
    ld h, [hl]

jr_0c3_76e1:
    jr jr_0c3_7725

    cp h
    db $76
    add b
    ld [hl], b
    add b
    cp b
    ld b, b
    cp a
    ld b, b
    db $e4
    inc de
    rst $38
    ld a, h
    dec e
    ld a, l
    inc bc
    dec de
    ld h, c
    inc bc
    jr jr_0c3_76f8

jr_0c3_76f8:
    ld h, e
    nop
    ld [hl], $41
    rst $28
    ldh a, [rNR33]
    ldh a, [$0e]
    ld hl, sp+$0e
    db $fc
    ld h, $fc
    inc hl
    cp $13
    cp $03
    cp $03
    cp $12
    cp $02
    cp $02
    cp $01
    db $fc
    ld h, $fd
    ld h, $fc
    and [hl]
    db $fc
    and [hl]
    db $fc
    inc h
    db $fc
    ld l, h
    ld sp, hl
    ld l, l
    ld sp, hl
    ld c, c

jr_0c3_7725:
    ei
    ret


    ei
    ld l, c
    ei
    adc c
    ei
    cp c
    ei
    push hl
    pop af
    or b
    db $f4
    add c
    call Call_000_0b03
    db $d3
    db $db
    db $d3
    db $db
    inc bc
    ld a, [bc]
    db $e3
    ld [$6b63], a
    add e
    add [hl]
    ld h, a
    ld h, [hl]
    and a
    and [hl]
    rst $00
    call nz, $e6e7
    rst $20
    ld [hl], $e7
    ld [hl], l
    rst $30
    inc d
    adc d
    ld d, h
    ld d, [hl]
    ld [$06d8], sp
    db $ed
    ld [de], a
    ld d, e
    adc h
    dec a
    add $55
    xor d
    adc c
    or $80
    nop
    db $f4
    ret nz

    ld a, [c]
    ldh [$62], a
    ldh [rNR30], a
    db $10
    dec de
    ret nc

    dec sp
    or b
    dec a
    or b
    ccf
    db $76
    ccf
    ld [hl], d
    ccf
    ld a, b
    ccf
    ld a, b
    ccf
    and b
    ccf
    or h
    ccf
    and b
    ccf
    sbc b
    daa
    add b
    ld h, a
    ld b, h
    ld a, b
    ld b, b
    jr c, @+$12

    or l
    add b
    sbc c
    sub b
    sub c
    sub b
    jr nz, jr_0c3_7790

jr_0c3_7790:
    db $d3
    xor b
    ld a, [$8e04]
    ld [hl], b
    rrca
    ldh a, [rIF]
    ldh a, [$7e]
    and c
    inc e
    db $e3
    or h
    bit 6, l
    adc d
    scf
    ret z

    inc l
    jp nc, $807e

    rst $18
    jr nz, jr_0c3_77d8

    ret nc

    adc $f0
    ld b, c
    ld a, [$fc63]
    ld b, e
    db $fc
    ld c, a
    or b
    ld c, a
    or b
    rst $00
    cp b
    ld h, e
    sbc b
    ld c, h
    cp e
    jr c, @+$01

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_0c3_77d8:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    ld b, $07
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
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
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
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc b
    inc b
    inc b
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
    inc bc
    ld [bc], a
    ld [bc], a
    dec b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [$d1ff]
    cpl
    jp nz, Jump_000_2a3f

    rst $10
    and b

jr_0c3_7a59:
    rst $38
    or d
    ld a, a
    ld de, $69ff
    rst $38
    rra
    ld [hl], b
    add a
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, c
    ld b, $fd
    inc b
    rst $38
    ld h, l
    ld a, [hl-]
    sub d
    ld a, a
    adc e
    db $76
    jp z, $8037

    ccf
    ld b, e
    cp a
    ld sp, $110f
    rrca
    ld sp, $1fcf
    ldh [$ae], a
    pop de
    dec c
    inc bc
    ld c, $01
    xor [hl]
    ld b, c
    ldh a, [rVBK]
    ld d, a
    ld [$0788], sp
    ld b, b
    rlca
    dec sp
    rst $38
    ld l, c
    cp a
    ld b, a
    cp a
    rra
    rst $38
    inc de
    rst $38
    rra
    rst $38
    dec [hl]
    rst $38
    scf
    rst $38
    ld [bc], a
    ld [bc], a
    ld c, $0f
    ld a, e
    ld a, a
    ld a, $12
    ret


    ld c, l
    ld a, [c]
    inc bc
    or b
    call nz, $b5d4
    ld d, l
    dec [hl]
    ld b, l
    dec [hl]
    db $10
    ld sp, $3838
    ld a, [hl-]
    ld a, [de]
    ld a, [hl-]
    ld a, [de]
    cp d
    sbc d
    cp d
    sbc d
    add b
    jr nz, @-$41

    sbc l
    ld e, l
    dec c
    db $dd
    call Call_0c3_6efe
    cp $2e
    cp [hl]
    ld l, $ee
    ld c, [hl]
    jr nc, jr_0c3_7a59

    ld a, b
    add a
    ld a, b
    add a
    ld hl, sp+$07
    cp e
    ld b, a
    adc a
    ld a, [hl]
    ccf
    reti


    ld a, a
    rst $20
    add sp, -$18
    ld e, b
    ld e, d
    ld de, $a61b
    and $00
    push hl
    ret nz

    reti


    nop
    jp c, Jump_000_3700

    add b
    rst $08
    nop
    db $e3
    add b
    db $ec
    nop
    dec l
    add b
    pop bc
    add b
    ret c

    ret nz

    db $db
    sbc b
    db $db
    nop
    nop
    ld [hl], b
    ld [hl], a
    sub b
    cp e
    and b
    cp b
    add b
    add e
    or d
    cp e
    call c, $c0dd
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
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
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca

jr_0c3_7d44:
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
    rlca
    rlca

jr_0c3_7d8c:
    rlca
    rlca
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

jr_0c3_7da5:
    nop
    nop

jr_0c3_7da7:
    nop
    rrca
    nop
    db $dd
    ld [bc], a
    rst $18
    nop
    and [hl]
    nop
    cp b
    nop
    adc l
    nop
    ld [hl], e
    nop
    ld [hl], e
    inc b
    xor e
    ld b, b
    adc h
    ld d, b
    add $18
    dec b
    xor b
    ld b, e
    jr nc, jr_0c3_7d44

    ld h, [hl]
    add c
    ld a, [de]
    ld b, c
    ld a, [hl-]
    ld b, b
    cp l
    jr nz, jr_0c3_7d8c

    nop
    dec d
    nop
    db $ed
    nop
    dec l
    nop
    pop bc
    nop
    ld [hl], h
    ld bc, $0095
    ld l, l
    nop
    and e
    nop
    db $dd
    nop
    ld [$d200], a

jr_0c3_7de2:
    nop
    or c
    ld bc, $007d
    ld a, h
    inc bc
    cp e
    rlca
    and a
    ld d, a
    rst $18
    ld e, $1e
    jp hl


    jp hl


    add $c6
    ld sp, $f731
    rst $30
    ldh [$e2], a
    nop
    add hl, de
    rst $20
    ld hl, sp-$71
    ldh a, [$8d]
    nop
    adc [hl]
    nop
    inc c
    nop
    inc b
    nop
    nop
    add b
    ld [bc], a
    add b
    ld b, c
    nop
    ld b, c
    add b
    ld l, l
    add b
    ld l, $40
    inc a
    ld b, b
    ld a, $40
    inc [hl]
    add b
    inc c
    add b
    inc e
    ld b, b
    jr jr_0c3_7e80

    ld b, b
    jr nz, jr_0c3_7e63

    jr nz, jr_0c3_7da5

    jr nz, jr_0c3_7da7

    jr nz, jr_0c3_7e29

jr_0c3_7e29:
    db $10
    add b
    jr nc, jr_0c3_7e2d

jr_0c3_7e2d:
    or b
    nop
    or b
    jr jr_0c3_7de2

    inc c
    or b
    ld [$0430], sp
    ret nz

    ld c, [hl]
    ret c

    ld b, h
    ret c

    ld h, $b8
    ld h, $b8
    dec l
    inc a
    rrca
    ld e, h
    inc hl
    ld h, l
    xor c
    add sp, $68
    ld l, h
    sbc h
    sbc h
    sbc [hl]
    sbc h
    ld h, a
    ld l, h
    sub b
    sub h
    ld b, d
    ld a, b
    and d
    and $16
    sbc h
    inc e
    ld h, b
    ld a, c
    add b
    sub e
    nop
    jp nz, RST_00

    nop
    nop

jr_0c3_7e63:
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

jr_0c3_7e80:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
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
    dec b
    dec b
    ld [bc], a
    dec b
    dec b
    dec b
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
