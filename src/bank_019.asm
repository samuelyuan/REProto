SECTION "ROM Bank $019", ROMX[$4000], BANK[$19]

    rst $08
    nop
    rst $38
    db $10
    rst $20
    nop
    di
    nop
    rst $38
    inc b
    ld sp, hl
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $1fff
    rst $38
    rra
    rst $18
    rra
    rst $18
    rra
    rst $38
    ccf
    rst $38
    ccf
    cp a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    di
    rst $38
    di
    rst $38
    rst $30
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
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    jr nz, jr_019_407e

    db $10
    db $10
    inc c
    inc c
    ld b, $06
    ld [bc], a
    ld [bc], a
    add c
    add c
    add b
    add b
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
    rst $28
    rst $38
    db $fc
    rst $38
    cp b
    rst $38
    ret nz

    rst $38

jr_019_407e:
    add b
    rst $38
    xor b
    nop
    add $06
    ld h, b
    ld h, b
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    rst $28
    nop
    ld a, [c]
    nop
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
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    or b
    rst $38
    dec [hl]
    rst $38
    ld a, [hl-]
    rst $38
    dec e
    rst $38
    dec sp
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
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
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, [$fbfa]
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
    rra
    rra
    inc bc
    inc bc
    nop
    nop
    ld b, b
    ld b, b
    nop
    nop
    jr nz, jr_019_4110

    inc e
    inc e
    ld [hl], $36
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    ld b, b
    ld b, b
    nop
    nop
    db $10
    db $10
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop

jr_019_4110:
    nop
    nop
    nop
    nop
    jr nz, jr_019_4116

jr_019_4116:
    ld d, b
    nop
    xor b
    nop
    cp $00
    ld hl, sp+$00
    adc $0e
    ldh [$e0], a
    jr nc, jr_019_4124

jr_019_4124:
    sbc b
    nop
    stop
    nop
    nop
    ld b, b
    nop
    ld [$0000], sp
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    cp c
    rst $38
    dec e
    rst $38
    ld b, $ff
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    db $f4
    rst $38
    xor h
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

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
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    inc hl
    inc hl
    rrca
    rrca
    ld e, a
    ld e, a
    cp a
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
    ei
    ei
    ld a, h
    ld a, h
    inc de
    inc de
    dec b
    dec b
    rlca
    rlca
    rlca
    rlca
    ret nc

    ret nc

    nop
    nop
    nop
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
    add b
    add b
    nop
    nop
    nop
    nop
    db $10
    db $10
    ld b, b
    nop
    xor b
    nop
    stop
    jr z, jr_019_41c6

jr_019_41c6:
    inc d
    nop
    ld bc, $1c01
    inc e
    jp z, $35c0

    nop
    rst $00
    rst $38
    db $e3
    rst $38
    ret z

    rst $38
    xor $ff
    rst $08
    rst $38
    add $ff
    pop bc
    rst $38
    ld a, [c]
    rst $38
    push af
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld e, $ff
    ret nz

    rst $38
    ldh [rIE], a
    or $f9
    ld hl, sp-$01
    ld [hl], d
    db $fd
    ld bc, $00fe
    rst $38
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
    inc b
    ei
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
    ret nz

    rst $38
    cp d
    ld b, l
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
    ld [$0309], sp
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    nop
    nop
    nop
    db $10
    ld de, $1209
    ld a, [bc]
    inc de
    inc d
    inc c
    dec d
    ld d, $17
    jr jr_019_4259

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_019_4269

    ld [hl+], a
    inc hl
    inc h
    dec h
    dec h
    ld h, $27
    jr z, jr_019_427a

    ld a, [hl+]
    dec hl
    dec h
    dec h
    dec h
    dec h
    dec h
    dec h

jr_019_4259:
    dec h
    dec h
    dec h
    dec h
    ld h, $2c
    dec l
    ld l, $2f
    dec h
    jr nc, jr_019_4296

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]

jr_019_4269:
    ld [hl], $37
    jr c, jr_019_42a6

    ld a, [hl-]
    dec sp
    nop
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_019_427a:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
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
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    nop
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a

jr_019_4296:
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
    ld l, a

jr_019_42a6:
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], e
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    dec h
    ld a, b
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add b
    add c
    add d
    add e
    add h
    add l
    dec h
    add [hl]
    add a
    adc b
    dec h
    dec h
    adc c
    adc d
    adc d
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    dec h
    sub c
    sub d
    sub e
    sub h
    dec h
    dec h
    dec h
    sub l
    sub [hl]
    sub a
    nop
    sbc b
    sbc c
    sbc d
    sbc e
    dec h
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    nop
    nop
    nop
    nop
    and e
    and h
    nop
    and l
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    nop
    or e
    or h
    or l
    or [hl]
    db $10
    ld de, $03b7
    xor d
    cp b
    cp c
    inc c
    inc c
    cp d
    nop
    cp e
    cp h
    cp l
    cp [hl]
    nop
    nop
    nop
    nop
    cp a
    ret nz

    xor d
    xor d
    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret z

    ret


    xor d
    jp z, $cb05

    call z, $cecd
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    rst $08
    ret


    xor d
    ret nc

    pop de
    jp nc, Jump_000_00d3

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    call nc, $aaaa
    push de
    sub $d7
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    nop
    nop
    nop
    nop
    ld b, $06
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    ld b, $02
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
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    nop
    ld [bc], a
    ld [bc], a
    ld b, $00
    ld b, $00
    nop
    nop
    inc b
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $00
    nop
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    nop
    inc bc
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $00
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
    ld b, $00
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    nop
    nop
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $00
    nop
    ld [bc], a
    ld [bc], a
    ld b, $20
    jr nz, jr_019_4446

jr_019_4446:
    jr nz, jr_019_4448

jr_019_4448:
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld b, $00
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
    ld [bc], a
    ld [bc], a
    ld b, $00
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
    jr nz, jr_019_4470

    ld b, $00

jr_019_4470:
    nop
    nop
    nop
    nop
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
    ld b, $06
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
    ld bc, $02ff
    rst $38
    ld bc, $02ff
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
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
    ld d, a
    rst $38
    xor a
    rst $38
    ld e, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0700
    nop
    rrca
    ld bc, $021f
    ld a, a
    inc b
    rst $38
    ld [$31fe], sp
    cp $41
    ld hl, sp-$79
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $00ff
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
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    ld d, l
    rst $38
    xor e
    rst $38
    ld d, l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $0300
    nop
    rlca
    ld bc, $061f
    ccf
    ld [$11fe], sp
    db $fc
    inc hl
    ld hl, sp+$47
    ldh a, [$8f]
    ldh [$1f], a
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
    rst $38
    nop
    rst $38
    nop
    cp $00
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
    ld [bc], a
    rst $38
    dec d
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
    ld d, a
    rst $38
    xor a
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
    inc bc
    rrca
    rlca
    inc a
    dec bc
    ld a, b
    scf
    ldh a, [rVBK]
    ldh [$9f], a
    ret nz

    ccf
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
    ld hl, sp+$00
    ld hl, sp+$00
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
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec b
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [bc]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    ld a, [hl+]
    rst $38
    dec d
    rst $38
    dec hl
    rst $38
    dec d
    rst $38
    dec hl
    rst $38
    ld d, l
    rst $38
    dec hl
    rst $38
    ld d, l
    rst $38
    xor e
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
    ld d, a
    rst $38
    xor a
    rst $38
    ld bc, $0157
    xor a
    ld bc, $015f
    xor a
    ld bc, $015f
    xor a
    ld bc, $015f
    cp a
    inc bc
    ld e, a
    inc bc
    cp a
    inc bc
    ld e, a
    inc bc
    cp a
    inc bc
    ld a, a
    inc bc
    cp a
    inc bc
    ld a, a
    rlca
    cp a
    rlca
    ld a, a
    rlca
    rst $38
    rlca
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $02fe
    db $fd
    ld bc, $03fe
    db $fc
    ld b, a
    cp b
    or a
    ld c, b
    ld [hl], a
    adc b
    rst $30
    ld [$4f3f], sp
    cpl
    rst $10
    ccf
    ld b, b
    daa
    ret c

    jr @+$81

    ccf
    rst $18
    rra
    ld a, a
    rra
    rst $38
    rra
    nop
    rrca
    db $10
    rlca
    jr jr_019_4737

jr_019_4737:
    rra
    jr nz, jr_019_473d

    inc a
    nop
    ccf

jr_019_473d:
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
    or h
    ld c, e
    db $ec
    inc de
    ld l, h
    sub e
    db $fc
    inc bc
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
    rra
    ldh [rSB], a
    ld a, [hl]
    add b
    rlca
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
    rrca
    ldh a, [rP1]
    ccf
    ret nz

    inc bc
    db $fc
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
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
    db $fc
    db $fc
    db $fc
    db $fc
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
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
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

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    ret nz

    pop bc
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    add c
    add b
    ld bc, $0380
    add b
    dec de
    add b
    dec sp
    add b
    ld a, e
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or b
    ld c, a
    db $f4
    dec bc
    cp $01
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    inc bc
    db $fc
    nop
    rra
    ldh [rSB], a
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rP1]
    ccf
    jp $fcfc


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
    ld b, e
    nop
    ld a, h
    ld b, e
    rst $38
    nop
    rst $38
    inc c
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
    ld [$0807], sp
    nop
    rra
    nop
    ld [de], a
    nop
    dec de
    nop
    ld d, $00
    ld a, [de]
    nop
    ld d, $12
    rst $38
    ld d, $ff
    ld a, [de]
    rst $38
    ld [de], a
    rst $38
    ld a, [de]
    rst $38
    ld a, [de]
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    add hl, hl
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    inc sp
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld c, a
    ldh a, [rVBK]
    ldh a, [rLCDC]
    ldh [rLCDC], a
    ldh [rLCDC], a
    ldh [rLCDC], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    add b
    add b
    add b
    add b
    add b
    add b
    add c
    add b
    db $fc
    add b
    db $fc
    add b
    ld hl, sp-$80
    ldh a, [$80]
    ret nz

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
    rst $38
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
    ld b, b
    push af
    ld a, [hl-]
    adc b
    ld a, a
    ld h, h
    sbc a
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld a, a
    add b
    ld e, a
    and b
    rst $38
    rra
    rst $38
    rst $38
    rst $38
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
    rst $38
    rrca
    sub b
    inc bc
    ldh [$90], a
    ld l, h
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$00
    rra
    ldh [$03], a
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
    rrca
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
    ccf
    ccf
    inc bc
    jp Jump_000_3c00


    nop
    inc bc
    nop
    ret nz

    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    db $fc
    inc bc
    ccf
    ret nz

    ld bc, $00fe
    ld d, l
    nop
    ld l, [hl]
    nop
    ld b, l
    nop
    ld b, h
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld c, b
    rst $38
    ld a, c
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
    ld hl, sp-$07
    cp $fb
    db $fc
    rra
    ld hl, sp+$1f
    ld hl, sp+$1f
    ld sp, hl
    ld e, $fb
    ld a, $fa
    ld a, $fa
    ld a, $fa
    ld a, $fa
    ld a, [hl]
    ld a, [$fa7e]
    cp $fa
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
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
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

jr_019_4a07:
    nop
    rst $38
    nop
    rrca
    ldh a, [$f7]
    ld [$e01f], sp
    ld bc, $80fe
    rst $38
    ldh [$5f], a
    jr nc, jr_019_4a07

    db $fc
    dec de
    rst $38
    inc b
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
    nop
    rst $38
    nop
    rst $38
    nop

jr_019_4a2b:
    rst $38
    nop
    rst $38

jr_019_4a2e:
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    rrca
    add b
    pop bc
    jr nc, jr_019_4a2b

    ld c, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    rlca
    ld hl, sp+$01
    ld a, $c0
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rSB], a
    ld a, $c0
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ccf
    ccf
    inc bc
    jp Jump_000_3c00


    nop
    inc bc
    nop
    ret nz

    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    cp $01
    rra
    ldh [rP1], a
    cp a
    nop
    ld d, l
    nop
    ld c, d
    ld c, b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    sub c
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
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    nop
    rst $00
    jr c, jr_019_4a2e

    ld a, h
    ld bc, $01fe
    cp $ff
    jr nc, @+$01

    ld [hl], b
    rst $18
    ldh a, [$9f]
    ret nc

    rra
    sub b
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    ccf
    jr nz, jr_019_4b08

    jr nz, jr_019_4b0a

    jr nz, @+$41

    jr nz, jr_019_4b0e

    jr nz, jr_019_4b10

    jr nz, jr_019_4b12

    jr nz, jr_019_4b14

    jr nz, jr_019_4b16

    jr nz, jr_019_4b18

    ldh [rIE], a
    ldh [rIE], a
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
    ldh a, [rIF]
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
    rrca
    rst $38
    nop
    rst $38
    nop
    add a
    ld a, b
    db $fd
    ld [bc], a
    nop
    rst $38
    dec b
    ld a, [$e01f]

jr_019_4b08:
    dec bc
    db $f4

jr_019_4b0a:
    rst $18
    jr nz, @+$01

    rst $38

jr_019_4b0e:
    rst $38
    rst $38

jr_019_4b10:
    rst $38
    rst $38

jr_019_4b12:
    rst $38
    rst $38

jr_019_4b14:
    nop
    rst $38

jr_019_4b16:
    nop
    rst $38

jr_019_4b18:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld h, b
    sbc a
    ld d, b
    xor a
    dec a
    jp nz, $c13e

    rra
    ldh [rIF], a
    ldh a, [rTAC]
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
    ccf
    nop
    add a
    ld b, b
    ldh a, [$08]
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rSB], a
    ld a, [hl]
    add b
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rSB]
    ld e, $c0
    ld hl, $02fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    inc bc
    jp Jump_000_3c00


    nop
    inc bc
    nop
    ret nz

    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [$1f], a
    rst $38
    nop
    rlca
    ld hl, sp+$00
    xor a
    push de
    rst $38
    sbc d
    rst $38
    sub e
    rst $38
    sub d
    rst $38
    ld a, [hl+]
    rst $38
    ld l, d
    rst $38
    jp z, $8adf

    sbc a
    adc d
    sbc a
    ld a, [bc]
    rra
    ld a, [bc]
    rra
    ld a, [bc]
    rra
    ld a, [bc]
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    add hl, bc
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    inc c
    rra
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    rst $38
    xor $ff
    and $ff
    and $ff
    ld [bc], a
    rra
    ld b, $1f
    ld b, $1f
    ld b, $1f
    ld b, $1f
    ld b, $1f
    ld b, $1f
    nop
    rra
    pop af
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    and b
    ld e, a
    db $dd
    ld [hl+], a
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$87], a
    ld a, b
    or a
    ld c, b
    push af
    ld a, [bc]
    rst $38
    nop
    rrca
    nop
    ld bc, $50f0
    xor [hl]
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    cpl
    ret nc

    inc bc
    db $fc
    nop
    rrca
    ldh [rP1], a
    db $fc
    ld [bc], a
    cp $01
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rP1], a
    rra
    pop hl
    sbc $fe
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
    jp Jump_000_3c00


    nop
    ld [bc], a
    nop
    jp nz, $f200

    nop
    ld a, [c]
    nop
    ld a, [c]
    nop
    ld a, [c]
    add b
    ld [hl], b
    nop
    ld a, [c]
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ld [hl], d
    rst $38
    ld [hl], d
    rst $38
    ld [hl], b
    rst $38
    ld [hl], d
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], d
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
    ld h, b
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
    ldh [rIE], a
    ldh [rIE], a
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    jp nz, $caff

    rst $38
    jp c, $dfff

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec c
    ld a, [c]
    ld [hl+], a
    db $dd
    ld a, b
    add a
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
    ccf
    nop
    rlca
    ret nz

    nop
    ld hl, sp+$40
    cp a
    sub b
    ld l, a
    ret z

    scf
    dec b
    ld a, [$ff00]
    nop
    rra
    nop
    db $e3
    nop
    db $fc
    add b
    ld a, a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rra
    ldh [rSB], a
    db $fc
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, h
    ld a, a
    ld a, b
    ld a, a
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld h, b
    ld a, a
    ld b, b
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
    ccf
    nop
    ccf
    nop
    ccf
    nop
    ccf
    ccf
    ccf
    ccf
    ccf
    ld b, b
    ccf
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

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_4d8e:
    nop
    nop
    jp c, $3e25

    pop bc
    rst $08
    jr nc, jr_019_4d8e

    ld [$03fc], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    ldh [rP1], a
    db $fc
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    jp $f800


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
    pop hl
    add b
    ld a, [hl]
    ret nz

    ccf
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    cp $01
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
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
    nop
    rst $38
    nop
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    add b
    ld a, a
    ret nc

    cpl
    db $fc
    inc bc
    ld hl, sp+$07
    nop
    rst $38
    ret nz

    ccf
    ldh a, [rIF]
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
    ld hl, sp+$01
    ld [hl], b
    inc bc
    nop
    add a
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
    ld a, e
    nop
    add a
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
    jr jr_019_4e7d

jr_019_4e7d:
    ldh [rP1], a
    ld hl, sp-$04
    ld [bc], a
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    add e
    cp $81
    cp $81
    cp $81
    add b
    ld a, h
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [hl]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$00
    nop
    rst $38
    nop
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
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$01
    ldh a, [$03]
    ldh [rTAC], a
    ldh [rIF], a
    ret nz

    rrca
    add b
    rra
    nop
    ccf
    nop
    ld a, [hl]
    nop
    db $fd
    nop
    ei
    nop
    rst $30
    nop
    rst $28
    nop
    rst $18
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $00
    db $fc
    nop
    ldh a, [$e0]
    ld e, $e0
    dec e
    ret nz

    ld a, [hl-]
    nop
    push af
    nop
    ld [$d500], a
    nop
    xor d
    nop
    ld d, l
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
    push de
    rst $38
    xor d
    rst $38
    push de
    rst $38
    ld [$d5ff], a
    rst $38
    ld [$f5ff], a
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$fdff]
    rst $38
    nop
    cp $00
    rst $38
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
    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add b
    nop

jr_019_4f79:
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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38
    jp c, $c025

    rrca
    add b
    rra
    nop
    ccf
    nop
    ld a, a
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
    rst $28
    nop
    rst $18
    ld bc, $05be
    ld a, d
    ld a, [bc]
    push af
    ld [$00f7], sp
    db $fc
    ld hl, sp-$5a
    ldh a, [$0c]
    ldh [rNR23], a
    ret nz

    jr nc, jr_019_4f79

    ld h, b
    nop

jr_019_4ffb:
    ret nz

    nop
    add b
    nop
    nop
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
    push de
    rst $38
    ld [$f5ff], a
    rst $38
    ld a, [$f5ff]
    rst $38
    ld a, [$fdff]
    rst $38
    cp $ff
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_019_5037:
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld a, a
    add b
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
    inc bc
    db $f4
    inc bc
    db $ec
    dec b
    jp c, $b40b

    rlca
    ld a, b
    ld c, $f1
    inc e
    db $e3
    jr c, jr_019_5037

    cp $61
    ld hl, sp-$1a
    ldh a, [$cc]
    ldh [rNR10], a
    ret nz

    jr nc, jr_019_4ffb

    ld b, b
    nop
    add b
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
    rst $38
    nop
    rst $38
    add b

jr_019_508d:
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    xor b
    rst $38
    ld d, h
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
    push de
    rst $38
    ld [$f5ff], a
    rst $38
    ld a, [$fdff]
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
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
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
    rst $38
    nop
    rst $38
    rst $38
    nop
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
    db $10
    rst $28
    dec bc
    db $f4
    nop
    rst $38
    jr z, @-$27

    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    ldh [$fe], a
    pop bc
    db $fc
    jp nz, $8cf0

    ldh [rNR23], a
    ret nz

    jr nc, jr_019_508d

    ld b, b
    nop
    add b
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
    ld b, b
    rst $38
    and b
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
    ld [$f5ff], a
    rst $38
    cp $00
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    add b
    ld a, a
    ld b, d
    cp l
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    or h
    ld c, e
    dec bc
    db $f4
    ld [bc], a
    db $fd
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
    add b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    ld d, b
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
    push af
    rst $38
    ld a, [$ffff]
    rst $38
    nop
    nop
    rst $38
    nop
    rra
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
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    rst $38
    add b
    ld a, a
    jr z, @-$27

    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ret c

    daa
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
    xor b
    rst $38
    ld d, h
    rst $38
    nop

jr_019_51e1:
    xor d
    ret nz

    push de
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
    nop
    rlca
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    jr z, jr_019_51e1

    dec b
    ld a, [$ff00]
    nop
    rst $38

TeaRoom1FScene1Tilemap::
    db $00, $01, $02, $03, $03, $03, $03, $03, $03, $03, $03, $03, $04, $05, $06, $06
    db $07, $08, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $09, $06, $06
    db $0a, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $0b, $06, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $0c, $06, $06, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $0d, $0e, $06, $06, $06
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $0f, $10, $06, $06, $06, $11, $12
    db $03, $03, $03, $03, $03, $03, $03, $13, $14, $15, $16, $17, $18, $19, $1a, $1b
    db $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b
    db $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b
    db $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47, $48, $49, $4a, $4b
    db $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b
    db $5c, $5d, $5e, $5f, $60, $61, $62, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
    db $6c, $6d, $6e, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $79, $7a, $7b
    db $7c, $7d, $03, $7e, $7f, $80, $81, $82, $83, $84, $85, $86, $87, $88, $89, $8a
    db $8b, $8c, $8d, $8e, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a
    db $9b, $9c, $9d, $9e, $9f, $a0, $a1, $a2, $a3, $a4, $a5, $04, $03, $03, $03, $a6
    db $a7, $a8, $a9, $aa, $ab, $ac, $ad, $ae, $af, $03, $03, $03, $03, $03, $03, $03
    db $03, $b0, $b1, $b2, $b3, $b4, $b5, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $b6, $b7, $b8, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    db $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03, $03
    
TeaRoom1FScene1PaletteIndex::
    db $00, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $04, $04, $04, $01, $01, $01, $01, $01, $07, $00, $00, $00, $00, $00, $00, $00
    db $03, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $04, $07, $07, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $06, $06, $06, $04, $00, $00, $00, $00, $00, $00, $00, $03, $03, $01, $01, $00
    db $04, $00, $00, $00, $00, $00, $00, $00, $00, $03, $03, $43, $01, $01, $01, $01
    db $03, $04, $00, $00, $00, $00, $07, $04, $03, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $06, $00, $04, $04, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $03, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

TeaRoom1FScene1Tileset::
    INCBIN "gfx/image_019_5490.2bpp"

    INCBIN "gfx/image_019_5f90.2bpp"

TeaRoom1FScene2Tilemap::
    db $00, $01, $01, $01, $01, $01, $01, $02, $03, $03, $03, $03, $03, $03, $03, $03
    db $04, $05, $01, $01, $01, $01, $01, $06, $07, $03, $03, $03, $03, $03, $03, $03
    db $08, $09, $0a, $01, $01, $01, $01, $01, $0b, $03, $03, $03, $03, $03, $03, $0c
    db $08, $08, $0d, $01, $01, $01, $01, $01, $0b, $03, $03, $03, $03, $03, $0c, $0e
    db $08, $0f, $10, $01, $01, $01, $01, $06, $07, $03, $03, $03, $03, $11, $12, $13
    db $14, $15, $01, $01, $01, $01, $01, $16, $03, $03, $03, $17, $18, $19, $1a, $1b
    db $1c, $1d, $01, $01, $01, $01, $1e, $1f, $03, $03, $20, $21, $22, $23, $24, $25
    db $26, $27, $28, $29, $2a, $2b, $2c, $03, $03, $2d, $2e, $2f, $30, $31, $32, $33
    db $34, $35, $36, $03, $03, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41
    db $03, $42, $43, $44, $45, $2a, $2a, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e
    db $03, $03, $4f, $50, $51, $52, $53, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c
    db $03, $5d, $5e, $5f, $01, $01, $01, $60, $61, $62, $63, $64, $65, $66, $67, $68
    db $03, $69, $6a, $01, $01, $01, $01, $6b, $6c, $6d, $6e, $6f, $70, $71, $72, $73
    db $03, $69, $74, $01, $75, $76, $77, $6b, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f
    db $80, $81, $82, $83, $84, $85, $86, $87, $88, $03, $89, $8a, $8b, $8c, $8d, $8e
    db $01, $01, $01, $01, $01, $01, $8f, $90, $91, $92, $03, $03, $93, $94, $95, $96
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $97, $98, $03, $03, $99, $9a
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $9b, $03, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $9c, $03, $03
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $9d, $9e, $03, $03, $03
    
TeaRoom1FScene2PaletteIndex::
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $00
    db $01, $01, $01, $01, $01, $01, $01, $21, $21, $01, $01, $01, $01, $04, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $04, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $03, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $04, $04
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

TeaRoom1FScene2Tileset::
    INCBIN "gfx/image_019_62a0.2bpp"

    INCBIN "gfx/image_019_6ba0.2bpp"

TeaRoom1FScene3Tilemap::
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $01, $02, $03, $04, $05, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $06, $05, $05, $05
    db $00, $00, $07, $08, $00, $00, $00, $00, $00, $00, $00, $00, $09, $05, $05, $05
    db $0a, $0b, $0c, $0c, $0d, $0e, $00, $00, $00, $00, $00, $00, $00, $0f, $05, $05
    db $0c, $0c, $10, $11, $0c, $0c, $12, $00, $00, $00, $00, $00, $13, $05, $14, $15
    db $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e, $1f, $20, $21, $22, $23, $24, $0c
    db $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d, $2e, $2f, $30, $31, $32, $33, $34
    db $35, $36, $37, $38, $39, $3a, $3b, $3c, $3d, $3e, $3f, $40, $41, $42, $43, $44
    db $45, $46, $47, $48, $49, $4a, $4b, $4c, $4d, $4e, $4f, $50, $42, $51, $52, $53
    db $45, $54, $55, $56, $57, $58, $59, $5a, $5b, $5c, $5d, $42, $5e, $5f, $60, $61
    db $45, $54, $62, $63, $64, $0c, $65, $66, $67, $68, $69, $6a, $6b, $6c, $6d, $6e
    db $45, $6f, $70, $71, $72, $73, $74, $75, $76, $77, $78, $42, $42, $79, $60, $7a
    db $7b, $7c, $7d, $7e, $7f, $7f, $80, $81, $82, $83, $84, $85, $42, $60, $86, $87
    db $88, $89, $8a, $8b, $8c, $05, $05, $05, $05, $8d, $82, $8e, $8f, $90, $91, $92
    db $93, $94, $95, $96, $97, $7f, $7f, $98, $99, $9a, $05, $8d, $82, $8e, $0c, $9b
    db $00, $9c, $9d, $9e, $9f, $07, $00, $00, $00, $a0, $a1, $05, $05, $8d, $82, $8e
    db $a2, $a3, $a4, $a5, $0c, $0c, $a6, $00, $00, $00, $a7, $a8, $05, $05, $05, $8d
    db $a9, $0c, $0c, $0c, $0c, $aa, $ab, $00, $00, $00, $00, $ac, $05, $05, $05, $05
    db $00, $ad, $ae, $ae, $af, $00, $00, $00, $00, $00, $b0, $05, $05, $05, $05, $05
    db $00, $00, $00, $00, $00, $00, $00, $00, $00, $b1, $b2, $05, $05, $05, $05, $05

TeaRoom1FScene3PaletteIndex::
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $06, $06, $06, $04, $04, $04, $04, $04, $04, $01, $01, $01, $00
    db $01, $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $04, $04, $04, $04, $04, $07, $07, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $07, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $03, $01, $03, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $04, $07, $00, $00, $00, $00, $00, $00, $20, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $07, $00, $00, $00, $20, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00, $00, $00
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $00, $00
    db $01, $01, $02, $01, $01, $41, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $41, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01, $01

TeaRoom1FScene3Tileset::
    INCBIN "gfx/image_019_6f10.2bpp"

    INCBIN "gfx/image_019_7a10.2bpp"

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
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld b, $00
    nop
    nop
    nop
    nop
    rlca
    ld [$0202], sp
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    add hl, bc
    ld a, [bc]
    dec bc
    dec bc
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
    ld de, $0b0b
    ld [de], a
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
    ld de, $0b0b
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_019_7abe

    ld a, [de]
    dec de
    inc e
    add hl, bc
    ld [bc], a
    dec e
    dec bc
    dec bc
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_019_7ae2

    ld a, [hl+]
    dec bc
    dec bc
    dec hl
    inc l

jr_019_7abe:
    dec l
    ld l, $2f
    jr nc, jr_019_7af4

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    jr z, jr_019_7aff

    dec bc
    scf
    jr c, jr_019_7b06

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    dec bc
    dec bc
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_019_7ae2:
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
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]

jr_019_7af4:
    ld e, a
    ld h, b
    dec bc
    dec bc
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a

jr_019_7aff:
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, h
    ld l, l

jr_019_7b06:
    ld l, [hl]
    dec bc
    dec bc
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
    dec bc
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
    dec bc
    adc l
    adc [hl]
    ld l, h
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    dec bc
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
    nop
    and c
    and d
    and e
    dec bc
    dec bc
    and h
    and l
    and [hl]
    and a
    xor b
    nop
    nop
    nop
    nop
    nop
    nop
    xor c
    xor d
    xor e
    dec bc
    dec bc
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    nop
    nop
    nop
    nop
    nop
    or d
    nop
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp h
    cp l
    cp [hl]
    cp a
    ret nz

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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    nop
    rlca
    rlca
    ld bc, $0101
    ld bc, $0101
    ld b, c
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
    jr nz, jr_019_7c09

jr_019_7c09:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0303
    inc bc
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
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
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld a, a
    add b
    ld a, a
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
    ld bc, $03ff
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
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0900
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
    ld bc, $037f
    cp $07
    cp $07
    db $fc
    rrca
    ld hl, sp+$7f
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld e, a
    ld h, b
    ld e, a
    ccf
    jr nz, jr_019_7e5c

    jr nz, jr_019_7e5e

    jr nz, jr_019_7e60

    jr nz, jr_019_7e62

    jr nc, jr_019_7e64

    jr nc, jr_019_7e66

    jr nc, jr_019_7e68

    jr nc, jr_019_7e6a

    ld [hl-], a
    ccf
    ccf
    rra
    rra
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
    rlca
    rst $38
    rlca
    rst $38

jr_019_7e5c:
    rlca
    rst $38

jr_019_7e5e:
    rlca
    rst $38

jr_019_7e60:
    rlca
    rst $38

jr_019_7e62:
    rlca
    rst $38

jr_019_7e64:
    rlca
    rst $38

jr_019_7e66:
    rlca
    rst $38

jr_019_7e68:
    rlca
    rst $38

jr_019_7e6a:
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
    ld bc, $00ff
    rst $38
    ld bc, $03ff
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
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
    ld a, a
    nop
    ld a, a
    ld bc, $02ff
    ld a, a
    inc b
    rst $38
    dec b
    cp $0b
    db $fc
    rla
    ld hl, sp+$1f
    ldh a, [$3f]
    ldh [$5f], a
    ldh [$bf], a
    ret nz

    rst $38
    add b
    ld a, a
    add h
    rst $38
    ld [$11ff], sp
    rst $38
    ld bc, $03fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
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
    ld bc, $31ff
    rst $38
    scf
    rst $28
    ld bc, $33ff
    rst $28
    push hl
    rst $38
    db $fc
    rst $28
    rst $28
    ld c, a
    ld c, a
    dec l
    dec l
    cpl
    cpl
    cpl
    cpl
    rrca
    rrca
    cpl
    cpl
    rrca
    rrca
    rlca
    rlca
    daa
    daa
    rlca
    rlca
    rlca
    rlca
    add a
    add a
    add a
    add a
    rlca
    rlca
    daa
    daa
    rlca
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
    inc bc
    inc bc
    inc bc
    ld d, e
    ld d, e
    inc hl
    dec h
    rlca
    nop
    inc b
    ld [bc], a
    ld bc, $0107
    rlca
    ld hl, $0027
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    nop
    nop
    inc bc
    nop
    inc bc
    nop
    rra
    nop
    ccf
    ld bc, $023f
    ccf
    inc b
    ld a, a
    inc b
    rst $38
    ld [$10df], sp
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld b, c
    cp $87
    ld hl, sp-$61
    ldh [$3f], a
    pop bc
    ld e, a
    add c
    cp a
    ld [bc], a
    rst $38
    inc b
    rst $30
    inc b
    rst $38
    ld [$08ff], sp
    cp $11
    cp $21
    db $fc
    inc hl
    db $fc
    ld b, e
    ld hl, sp-$79
    ld hl, sp-$79
    pop af
    cpl
    ld [hl], c
    rst $08
    inc hl
    sbc $ff
    nop
    rst $38
    rra
    nop
    rst $38
    ccf
    pop bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $30
    ld [hl-], a
    ld [hl], a
    dec d
    ld [hl], a
    inc [hl]
    ld [hl], a
    rla
    ld [hl], a
    dec [hl]
    ld [hl], a
    ld h, [hl]
    ld [hl], a
    rla
    ld [hl], a
    ld d, [hl]
    ld [hl], a
    db $76
    ld a, e
    ld a, e
    cp e
    cp e
    dec sp
    dec sp
    dec sp
    dec hl
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    dec sp
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp e
    cp l
    cp l
    cp l
    cp l
    sbc c
    sbc c
    sbc c
    sbc c
    add hl, de
    add hl, de
    sbc c
    sbc c
    sbc c
    sbc c
    add hl, de
    add hl, de
