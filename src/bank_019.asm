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
    ld b, $06
    rlca
    ld [$0303], sp
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    add hl, bc
    ld b, $06
    ld a, [bc]
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
    dec bc
    ld b, $06
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
    inc c
    ld b, $06
    ld b, $03
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
    dec c
    ld c, $06
    ld b, $06
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    rrca
    db $10
    ld b, $06
    ld b, $11
    ld [de], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc de
    inc d
    dec d
    ld d, $17
    jr jr_019_5297

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_019_52a7

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_019_52b7

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_019_52c7

    ld [hl-], a

jr_019_5297:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_019_52d7

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_019_52a7:
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

jr_019_52b7:
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
    ld h, d

jr_019_52c7:
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

jr_019_52d7:
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
    inc bc
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
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    inc b
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    or b
    or c
    or d
    or e
    or h
    or l
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
    or [hl]
    or a
    cp b
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
    ld bc, $0001
    inc b
    inc b
    inc b
    ld bc, $0101
    ld bc, $0701
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0704
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
    ld b, $06
    ld b, $04
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld bc, $0001
    inc b
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
    ld b, e
    ld bc, $0101
    ld bc, $0403
    nop
    nop
    nop
    nop
    rlca
    inc b
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld b, $00
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
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
    nop
    nop
    nop
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
    ldh [rTAC], a
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
    rst $38
    nop
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
    cp $01
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
    cp $01
    ld hl, sp+$07
    ldh [$1f], a
    nop
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh [$1f], a
    ret nz

    ccf
    nop
    rst $38
    rst $38
    nop
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
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
    rst $38
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
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
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
    ld bc, $01ff
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
    ld bc, $01ff
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
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
    db $fd
    rrca
    ld sp, hl
    rrca
    db $fd
    rrca
    db $fd
    rrca
    cp $0f
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rlca
    rst $38
    rlca
    db $fd
    rlca
    cp $07
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
    cp $03
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    ei
    rlca
    ei
    rlca
    ei
    rlca
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
    rst $28
    rra
    rst $28
    rra
    rst $08
    ccf
    rst $08
    ccf
    rst $08
    ccf
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
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, $3f
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    ld a, h
    ld a, a
    db $fc
    rst $38
    ld bc, $0303
    inc bc
    rlca
    rlca
    dec b
    rlca
    rlca
    rlca
    dec b
    rlca
    dec b
    rlca
    rrca
    rrca
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
    rrca
    rrca
    rrca
    rrca
    dec c
    dec c
    ld c, $0f
    ld e, $1f
    ld a, $3f
    inc e
    rra
    inc e
    rra
    inc e
    rra
    inc e
    rra
    jr @+$21

    jr @+$21

    ld a, b
    ld a, a
    ld a, b
    ld a, a
    jr c, jr_019_5757

    jr nc, @+$41

    jr nc, @+$41

    jr nc, @+$41

    jr nc, @+$41

    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    ld a, a
    ld [hl], b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
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
    ccf
    db $e3
    ccf
    db $e3
    ccf
    rst $20
    ccf

jr_019_5757:
    rst $20
    ld a, $e7
    ld a, $ef
    ld a, $ef
    ld a, $ef
    ldh [$e1], a
    ld [c], a
    ld h, e
    ld [c], a
    ld h, e
    ld [c], a
    ld h, c
    ldh [$e3], a
    and b
    ld h, e
    ld [c], a
    pop hl
    ld [c], a
    pop hl
    db $e4
    rst $20
    db $e4
    rst $20
    db $e4
    rst $20
    db $e4
    ld h, a
    ld h, d
    push hl
    ld h, b
    rst $20
    ld h, c
    and $24
    and e
    jr nz, @-$4f

    jr nz, @-$4f

    nop
    rrca
    nop
    rrca
    nop
    rrca
    add b
    adc a
    add b
    adc a
    add b
    adc a
    add b
    adc a
    add b
    adc a
    nop
    rrca
    ld b, b
    ld e, a
    ld b, b
    ld e, a
    ld b, d
    ld e, l
    ld a, [bc]
    dec d
    ld b, b
    ld e, a
    ld h, b
    ld a, a
    ld hl, $213f
    ccf
    ld hl, $033f
    dec a
    dec bc
    dec [hl]
    ld h, a
    ld e, c
    daa
    ld e, c
    and e
    db $dd
    cpl
    ld d, c
    rst $28
    sub c
    rst $20
    sbc c
    rst $00
    cp d
    rst $00
    cp d
    ld a, a
    add d
    ld a, a
    add d
    ld a, a
    add d
    cp a
    ld b, d
    cp a
    ld b, d
    cp a
    ld b, d
    or d
    rst $08
    or d
    rst $08
    or d
    rst $08
    or $cb
    rst $30
    call z, $fec5
    ld d, l
    xor $64
    rst $38
    ld h, l
    cp $44
    rst $38
    call nz, $beff
    push bc
    cp $bd
    cp $b7
    rst $38
    cp [hl]
    rst $38
    sbc $f7
    or [hl]
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    or a
    rst $30
    and a
    rst $30
    rst $30
    rst $30
    rst $20
    rst $30
    rst $30
    rst $30
    rst $30
    push af
    push af
    ld [hl], a
    rst $30
    ld l, a
    rst $28
    cpl
    rst $28
    cpl
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rra
    rst $30
    rra
    rst $38
    rra
    rst $30
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, $ef
    ld a, $ff
    ld a, $ff
    inc a
    rst $28
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $38
    inc a
    rst $28
    inc a
    rst $38
    jr c, @+$01

    jr c, @+$01

    ld a, b
    rst $18
    ld a, h
    rst $38
    ld a, h
    rst $18
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $18
    ld a, a
    rst $18
    ld a, l
    rst $18
    ld a, a
    rst $18
    ld a, l
    rst $18
    ld a, a
    db $dd
    rst $38
    cp a
    db $fd
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    cp a
    xor $ee
    rst $28
    rst $28
    xor $ee
    xor $ee
    xor $ee
    and a
    rst $08
    jp hl


    rst $38
    ld h, c
    rst $38
    ld hl, $29ff
    rst $30
    add hl, hl
    rst $30
    ld sp, hl
    daa
    ld a, c
    and a
    ld l, l
    or e
    ld a, l
    and e
    ld h, l
    cp e
    ld h, [hl]
    cp e
    ld h, d
    cp a
    ld d, d
    rst $28
    ld b, d
    rst $38
    ld h, e
    rst $38
    rst $08
    ld [hl], a
    ld l, l
    db $dd
    ld a, a
    rst $08
    ld l, l
    db $fd
    ld a, l
    db $fd
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, l
    db $fd
    ld a, l
    ld a, l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, l
    ld a, l
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, l
    ld a, l
    ld [hl], l
    ld e, l
    scf
    ld e, e
    ld d, a
    ccf
    ld c, [hl]
    ccf
    rlca
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld h, d
    sbc a
    ld h, d
    sbc a
    ld l, [hl]
    sub e
    ld a, [hl]
    add e
    ld a, d
    add a
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fc
    rlca
    db $fd
    ld b, $7c
    add a
    ld a, h
    add a
    db $fd
    ld b, $fc
    rlca
    db $ec
    rla
    db $ec
    rla
    db $e4
    rra
    and $1d
    and $1d
    add $3d
    rst $00
    inc a
    push bc
    ccf
    add $3d
    push hl
    rra
    or [hl]
    ld c, a
    dec e
    rst $20
    scf
    rst $08
    dec sp
    srl a
    rst $38
    ccf
    rst $38
    ei
    dec sp
    ld a, e
    cp e
    ei
    ld a, e
    ld a, e
    ei
    rst $38
    cp a
    cp $fe
    rst $38
    rst $38
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    di
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    di
    db $f4
    di
    db $f4
    di
    db $e4
    di
    add sp, -$01
    ret z

    rst $38
    ret z

    rst $38
    adc b
    rst $38
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    ld [$08ff], sp
    rst $38
    db $10

jr_019_5931:
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr jr_019_5931

    db $10
    rst $38
    sbc b
    rst $30
    sub b
    rst $38
    ret c

    rst $30
    ldh [$ef], a
    add sp, -$19
    add sp, -$19
    ld l, b
    add a
    ret z

    and a
    ld c, b
    and a
    ret z

    ld h, a
    db $ed
    db $ed
    db $fd
    db $fd
    db $ed
    db $ed
    db $fd
    db $fd
    push af
    db $fd
    push de
    ld hl, sp-$63
    db $fd
    ld d, b
    cp l
    inc sp
    db $dd
    inc sp
    db $dd
    dec sp
    push de
    ccf
    pop de
    dec sp
    push de
    ld [hl], a
    sbc c
    inc sp
    db $dd
    inc sp
    db $dd
    inc sp
    db $dd
    dec [hl]
    db $db
    dec d
    ei
    sub c
    rst $38
    db $d3
    cp l
    db $db
    rst $38
    ei
    db $fd
    db $ed
    db $eb
    rst $38

jr_019_5981:
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38

jr_019_5987:
    rst $38
    rst $38
    rst $38
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_019_5991:
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp a
    rst $10
    sub l

jr_019_599f:
    ei
    ldh a, [$df]
    sub c

jr_019_59a3:
    cp $d0
    cp a
    jr jr_019_599f

    jr c, jr_019_5981

    jr jr_019_59a3

    ld e, b
    or a
    jr c, jr_019_5987

    ld e, b
    or a
    inc a
    db $d3
    ld a, h
    sub e
    inc e
    di
    jr c, jr_019_5991

    ld a, [hl-]
    push de
    rra
    ldh a, [$1f]
    ldh a, [$1f]
    ldh a, [rNR31]
    db $f4
    dec de
    db $f4
    inc de
    db $fc
    sub c
    ld a, [hl]
    db $10
    rst $38
    sub b
    ld a, a
    ld d, b
    cp a
    and d
    ld d, l
    ldh [$d7], a
    and d
    push af
    pop hl
    or $e5
    ld a, [c]
    ld [c], a
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    rst $30
    and $f2
    add l
    di
    inc b
    di
    inc b
    di
    inc b
    di
    inc b
    di
    ld c, $f9
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc c
    ei
    ld c, $f9
    inc c
    ei
    ld c, $f9
    inc c
    ei
    inc c
    ei
    dec c
    ld a, [$fa0d]
    dec c
    ei
    dec c
    ld a, [$fa0d]
    inc c
    ei

jr_019_5a32:
    dec c
    ld a, [$f90e]

jr_019_5a36:
    dec c
    ld a, [$fb0c]
    inc c
    ei
    inc c
    ei
    inc c
    ei
    inc e
    ei
    inc a
    db $db
    inc e
    db $eb
    inc a
    db $eb
    ld e, h
    cp e
    inc e
    ei
    inc a
    db $eb
    inc e
    ei
    or b
    or b
    or b
    or b
    add b
    add b
    sub b
    sub b
    or b
    or b
    ret c

    ret c

    jr jr_019_5a36

    sbc b
    ld e, b
    jr jr_019_5a32

    add h
    ld e, h
    adc h
    ld d, h
    add h
    ld e, h
    add b
    ld e, h
    ret nz

    inc e
    ldh a, [rNR32]
    ld [hl-], a
    sbc $12
    cp $12
    cp $52
    cp [hl]
    ld d, b
    cp [hl]
    sub b
    ld a, [hl]
    or b
    ld e, a
    or b
    ld e, a
    ldh a, [rNR22]
    ld [hl], b
    scf
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], e
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld a, b
    ld a, e
    ld l, b
    ld a, e
    jr nc, jr_019_5b0b

    ld d, b
    db $eb
    ld c, [hl]
    rst $30
    ld b, [hl]
    rst $38
    ld b, [hl]
    rst $38
    ld b, d
    rst $38
    add $7b
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld h, d
    rst $18
    ld [c], a
    ld e, a
    pop hl
    ld e, a
    pop hl
    ld e, a
    ld h, c
    rst $18
    ld h, c
    rst $18
    pop hl
    ld e, a
    ld h, l
    db $db
    db $ed
    inc sp
    jp hl


    scf
    xor c
    ld [hl], a
    and c
    ld a, [hl]
    jr nc, @+$01

    ld l, c
    or $29
    or $69
    cp [hl]
    add hl, hl
    rst $30
    ld [hl], c
    rst $28
    ld a, e
    cp l
    ld a, e
    db $ec
    push af
    cp [hl]
    cp e
    cp $7e
    db $fd
    db $fd
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    db $eb
    db $eb
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    xor $ef
    xor a
    rst $28
    rst $28
    xor $af
    rst $20
    rst $20
    rst $28
    db $eb
    rst $28
    rst $28
    rst $20
    di
    rst $30
    rst $30
    rst $30
    ld [hl], e
    rst $30
    rla
    rst $30
    dec b
    di
    rrca

jr_019_5b0b:
    ei
    dec c
    ei
    dec bc
    db $fd
    dec bc
    db $fd
    dec c
    ei
    dec c
    ei
    dec c
    ei
    dec bc
    db $fd
    dec bc
    db $fd
    dec c
    ei
    add hl, bc
    rst $38
    ld c, $fd
    dec b
    rst $38
    ld l, $d5
    dec l
    cp $5c
    rst $38
    or l
    xor $54
    rst $28
    ld l, [hl]
    push de
    xor [hl]
    ld d, l
    xor l
    ld d, [hl]
    sub h
    rst $28
    ld e, [hl]
    and l
    xor [hl]
    push de
    ld e, l
    and [hl]
    xor [hl]
    ld d, l
    xor h
    ld d, a
    add $3b
    ld a, [hl-]
    rst $00
    adc $33
    cp d
    rst $00
    adc d
    rst $30
    and [hl]
    ld e, e
    sbc $23
    ld l, [hl]
    sub e
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

    cp a
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$cf], a
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$09
    ld hl, sp-$0d
    db $fc
    di
    db $fc
    pop af
    cp $f1
    cp $f9
    cp $f8
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
    rst $38
    rst $38
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rNR10]
    ldh a, [rNR41]
    ldh a, [$58]
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$28
    ld hl, sp+$10
    ld hl, sp+$08
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    nop
    db $fc
    add b
    db $fc
    add b
    cp $80
    cp $80
    db $fc
    add b
    cp $80
    cp $80
    cp $80
    cp $80
    cp $80
    cp $80
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp e
    add b
    or c
    add b
    or b
    add b
    or b
    add b
    or b
    ret nz

    ret nc

    ret nz

    ret c

    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    ld e, a
    ret nz

    ld e, a
    ret nz

    ld e, a
    ret nz

    rst $18
    ret nz

    rst $18
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    add sp, $6f
    ld l, h
    xor e
    and b
    rst $28
    ret c

    ld a, a
    ld l, h
    db $db
    cp b
    ld l, a
    ld e, h
    ei
    cp h
    ld a, e
    call c, $7c7b
    db $db
    sbc d
    ld a, l
    xor b
    rst $18
    ld e, h
    xor a
    adc h
    rst $38
    xor h
    rst $18
    call c, $94af
    rst $28
    db $ec
    sub a
    xor h
    ld d, a
    inc c
    rst $30
    inc d
    rst $28
    add [hl]
    ld a, a
    add [hl]
    ld a, a
    add $3f
    ld b, [hl]
    cp e
    adc $73
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld b, a
    cp d
    ld b, e
    rst $38
    ld b, e
    db $fd
    ld b, e
    cp l
    ld h, e
    sbc l
    inc hl
    db $dd
    inc hl
    db $dd
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

jr_019_5c65:
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
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
    ld a, [hl]
    add c
    ld a, h
    add e
    jr jr_019_5c65

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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    add b
    add e
    add b
    add e
    add b
    add a
    add c
    add a
    add c
    add a
    pop bc
    rst $00
    pop bc
    rst $00
    jp $c3cf


    rst $08
    db $e3
    rst $28
    rst $20
    rst $28
    rst $00
    rst $18
    rst $20
    rst $38
    add hl, bc
    add hl, de
    ld de, $0211
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
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld bc, $0001
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

jr_019_5d19:
    rst $38
    nop
    rst $38
    nop
    cp $00
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

jr_019_5d30:
    add b
    ld a, a
    and b
    ld e, a
    add c
    ld a, [hl]
    and b
    ld e, a
    jr nz, jr_019_5d19

    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    pop af
    cp $f1
    cp $f1
    cp $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    jp $c7fc


    ld hl, sp-$39
    ld hl, sp-$7a
    ld hl, sp-$7a
    ld hl, sp+$0e
    ldh a, [$0e]
    ldh a, [$0c]
    ldh a, [$0e]
    ldh a, [$0c]
    ldh a, [rNR32]
    ldh [rNR32], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [$30], a
    ret nz

    jr nc, jr_019_5d30

    rst $08
    ccf
    rst $08
    ccf
    rrca
    ld a, a
    rrca
    ld a, a
    rrca
    ld a, a
    rra
    ld a, a
    rra
    ld a, a
    rra
    rst $38
    ld a, $f8
    ld a, [hl-]
    db $fc
    dec sp
    db $fc
    dec a
    cp $7d
    cp $5e
    rst $18
    ld e, [hl]
    rst $18
    rra
    sbc a
    cp a
    cp a
    cp a
    cp a
    cp a
    cp a
    ld a, $3e
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
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
    cp $fe
    cp $fe
    ld a, [hl]
    ld a, [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc [hl]
    inc l
    inc l
    add hl, bc
    add hl, bc
    add hl, de
    add hl, de
    ld de, $1111
    ld de, $3333
    inc hl
    inc hl
    daa
    daa
    daa
    daa
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, a
    ld b, e
    ld b, e
    jp $81c3


    ld b, c

jr_019_5dd4:
    ldh [$a0], a
    ldh [$80], a
    ret nc

    ldh a, [$d0]
    ldh [$a8], a
    sbc b
    or $ca
    ld e, l
    inc hl
    ld a, [hl]
    ld h, [hl]
    ld d, h
    ld d, h
    ld bc, $2101
    ld hl, $0000
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fd
    cp $fd
    cp $fd
    cp $fb
    db $fc
    ei
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc

jr_019_5e1e:
    rst $38
    db $fc
    rst $38
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
    nop
    add b
    jr nz, jr_019_5dd4

    nop
    add b
    nop
    add b
    ld h, b
    ldh [$a0], a
    ld h, b
    jr nz, jr_019_5e1e

    ld h, b
    ldh [rNR32], a
    db $fc
    ld c, $fe
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld h, a
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ld bc, $0106
    ld b, $11
    ld [de], a
    jr @+$1d

    jr @+$1b

    inc e
    inc e
    inc a
    inc a
    ld a, [hl]
    ld a, [hl]
    ccf
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    cp $ff
    db $fc
    db $fd
    ld hl, sp-$05
    ld hl, sp-$05
    ld sp, hl
    ei
    pop af
    rst $30
    pop af
    rst $30
    di
    rst $30
    db $e3
    rst $20
    db $e3
    rst $28
    ld b, a
    ld c, a
    rlca
    rrca
    rlca
    rra
    rrca
    rra
    adc a
    rra
    adc a
    rra
    sbc a
    ccf
    cp a
    ld a, a
    rst $38
    ld a, a
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    or e
    cp a
    or e
    cp a
    ld de, $191f
    rra
    add hl, bc
    rrca
    ld l, e
    ld l, a
    ld h, a
    ld h, a
    ld [hl], a
    ld [hl], a
    rst $30
    rst $30
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
    db $fd
    rst $38
    db $fd
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
    ld a, a
    ld a, a
    db $fd
    cp $fd
    cp $f9
    cp $fb
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$09
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$df]
    ldh [$df], a
    ldh [$bf], a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    ld a, a
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
    add b
    rst $38
    ret nz

    rst $38
    ret nz

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
    rst $38
    ret nz

    ld a, a
    ldh [rIE], a
    ldh a, [$7f]
    ld hl, sp+$7f
    ld hl, sp+$3f
    db $fc
    rra
    cp $0f
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ld b, $38
    ld [bc], a
    inc a
    add c
    sbc [hl]
    add c
    sbc [hl]
    ret nz

    rst $08
    ldh [$e7], a
    ldh [$e7], a
    ldh a, [$f3]
    ldh a, [$f1]
    ld hl, sp-$07
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, [$fafe]
    cp $f9
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $f4
    rst $38
    add sp, -$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    or c
    cp $f1
    cp $f9
    cp $e7
    db $fc
    di
    db $fc
    or $f9
    rst $20
    ld sp, hl
    pop hl
    rst $38
    pop af
    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    adc $fe
    rst $18
    cp $9f
    db $fc
    cp a
    db $fc
    cp a
    ld hl, sp+$7f
    ld hl, sp+$7f
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [$1f], a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

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

jr_019_5f92:
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

    nop
    rra
    nop
    rrca
    nop
    rlca
    add b
    rlca
    ret nz

    inc bc
    ret nz

    ld bc, $00e0
    ldh a, [rP1]
    jr jr_019_5f92

    ld [$2cf0], sp
    ret nc

    ld d, [hl]
    xor b
    cpl
    ld d, c
    ccf
    ld bc, HeaderManufacturerCode
    sbc a
    add e
    jp $47ff


    rst $38
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    cp $07
    cp $07
    cp $07
    db $fc
    cpl
    db $fc
    rra
    ld hl, sp+$5f
    ld hl, sp+$3f
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

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
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
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
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0601
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [$0a09], sp
    ld bc, $0101
    ld bc, $0b01
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc c
    ld [$0d08], sp
    ld bc, $0101
    ld bc, $0b01
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc c
    ld c, $08
    rrca
    db $10
    ld bc, $0101
    ld bc, $0706
    inc bc
    inc bc
    inc bc
    inc bc
    ld de, $1312
    inc d
    dec d
    ld bc, $0101
    ld bc, $1601
    inc bc
    inc bc
    inc bc
    rla
    jr jr_019_6097

    ld a, [de]
    dec de
    inc e
    dec e
    ld bc, $0101
    ld bc, $1f1e
    inc bc
    inc bc
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_019_60bd

    ld a, [hl+]
    dec hl
    inc l

jr_019_6097:
    inc bc
    inc bc
    dec l
    ld l, $2f
    jr nc, jr_019_60cf

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $03
    inc bc
    scf
    jr c, jr_019_60e1

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    inc bc
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld a, [hl+]
    ld a, [hl+]
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e

jr_019_60bd:
    ld c, h
    ld c, l
    ld c, [hl]
    inc bc
    inc bc
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

jr_019_60cf:
    ld e, h
    inc bc
    ld e, l
    ld e, [hl]
    ld e, a
    ld bc, $0101
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    inc bc

jr_019_60e1:
    ld l, c
    ld l, d
    ld bc, $0101
    ld bc, $6c6b
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    inc bc
    ld l, c
    ld [hl], h
    ld bc, $7675
    ld [hl], a
    ld l, e
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
    inc bc
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ld bc, $0101
    ld bc, $0101
    adc a
    sub b
    sub c
    sub d
    inc bc
    inc bc
    sub e
    sub h
    sub l
    sub [hl]
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $9897
    inc bc
    inc bc
    sbc c
    sbc d
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    sbc e
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $039c
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $9d01
    sbc [hl]
    inc bc
    inc bc
    inc bc
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
    ld bc, $0401
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $2121
    ld bc, $0101
    ld bc, $0004
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0404
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
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
    ld bc, $0003
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
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
    ld bc, $0404
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc b
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc b
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
    cp $00
    db $fc
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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

    inc bc
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
    add b
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
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
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ldh a, [rP1]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0301
    inc bc
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
    ld hl, sp-$08
    db $ec
    db $ec
    db $f4
    db $f4
    ret z

    ret z

    and b
    and b
    and b
    and b
    add b
    add b
    ld b, h
    ld b, h
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
    rst $38
    nop
    rst $38
    nop
    ld bc, $0301
    inc bc
    ld b, $07
    dec c
    rrca
    dec de
    rra
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    pop hl
    pop hl
    pop hl
    pop hl
    add h
    add h
    add c
    add c
    ld c, d
    ld c, d
    db $10
    db $10
    add b
    add b
    nop
    nop
    ld b, b
    ld b, b
    jr nz, jr_019_63f6

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
    rst $38
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
    rst $38
    nop

jr_019_63f6:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$1f], a
    add b
    ld a, a
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
    ld bc, $0201
    inc bc
    inc b
    rlca
    add hl, bc
    rrca
    inc de
    rra
    scf
    ccf
    ld l, a
    ld a, a
    ld e, [hl]
    ld a, a
    cp a
    rst $38
    ld [hl], a
    rst $30
    call nc, $eed5
    rst $28
    ld e, h
    ld e, [hl]
    xor h
    xor h
    inc a
    inc a
    ret nc

    ret c

    and c
    or c
    ld h, d
    ld h, d
    ld b, l
    ld b, l
    ld [de], a
    ld [de], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    add hl, bc
    add hl, bc
    ld de, $0013
    inc bc
    daa
    daa
    ld b, b
    ld b, b
    nop
    nop
    inc e
    inc e
    inc l
    dec a
    inc c
    dec a
    jr z, jr_019_649b

    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
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
    rst $38
    nop
    rst $38
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
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop

jr_019_649b:
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
    ld bc, $0302
    dec b
    rlca
    dec bc
    rrca
    inc de
    rra
    daa
    ccf
    cpl
    ccf
    ld e, l
    ld a, a
    cp d
    rst $38
    ld a, $ff
    ld [hl], c
    ei
    ld sp, hl
    db $fd
    rst $30
    rst $38
    ld d, e
    ld a, e
    daa
    ld [hl], a
    sub [hl]
    or a
    dec l
    ld l, a
    sbc l
    rst $18
    inc e
    sbc h
    sbc l
    sbc l
    dec hl
    dec hl
    inc [hl]
    inc [hl]
    ld d, [hl]
    db $76
    xor [hl]
    xor [hl]
    xor d
    xor $95
    sub l
    sub b
    sub e
    jr c, jr_019_651f

    db $10
    ld [hl], a
    ld [hl], b
    ld [hl], a
    inc c
    dec bc
    inc c
    dec bc
    ret c

    rst $10
    ret c

    rst $10
    or b
    adc a
    ld h, b
    ld e, a
    ld h, b
    ld e, a
    ret nz

    cp a
    ret nz

    cp a
    add b
    ld a, a
    add b
    ld a, a
    nop
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
    add b

jr_019_651f:
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
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0301
    inc bc
    rlca
    rlca
    dec bc
    rrca
    rla
    rra
    rrca
    ccf
    rra
    ccf
    rra
    ld a, a
    or a
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    and a
    rst $30
    jp Jump_000_17f3


    rst $30
    sbc a
    rst $18
    ld [hl], h
    db $fc
    or $fe
    ld [$d8fa], a
    ld sp, hl
    db $fc
    db $fd
    or b
    di
    add sp, -$15
    ldh a, [$f7]
    ld [hl], b
    ld [hl], a
    ldh [$ef], a
    add b
    adc a
    ret nz

    rst $18
    add b

jr_019_65b3:
    cp a
    add b
    cp a
    nop

jr_019_65b7:
    ld a, a
    nop
    ld a, a
    ld b, b
    cp a
    nop
    rst $38
    add b
    ld a, a
    inc bc
    db $fd
    inc bc
    db $fd
    ld b, $fb
    ld b, $fb
    inc c
    rst $30
    inc c
    rst $30
    inc e
    rst $20
    jr c, @-$2f

    ld a, [de]
    rst $28
    jr nc, jr_019_65b3

    ld [hl], b
    sbc a
    jr nc, jr_019_65b7

    ld h, b
    cp a
    ld h, b
    cp a
    ret nz

    ld a, a
    ret nz

    ld a, a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
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
    rlca
    ei
    inc bc
    db $fd
    inc bc
    db $fd
    ld bc, $01fe
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
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $03
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rrca
    ld bc, $030f
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    cp h
    db $fc
    db $fc
    db $fd
    db $ec
    db $fd
    ldh a, [$f3]
    ei
    ei
    push hl
    rst $20
    ldh [$e7], a
    ret z

    rst $08
    ret nc

    rst $18
    jp nc, $80df

    cp a
    add c
    cp a
    ld bc, $037f
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld c, $ff
    ld c, $ff
    inc c
    rst $38
    inc e
    rst $38
    jr @+$01

    jr c, @+$01

    jr nc, @+$01

    jr nz, @+$01

    ld [hl], c
    sbc $72
    rst $18
    ei
    xor a
    rst $30
    rst $38
    di
    db $fd
    ld a, e
    db $fd
    db $76
    ei
    ld h, $fb
    or $fb
    ld e, h
    rst $38
    ld c, $fd
    dec c
    cp $1c
    rst $30
    jr @+$01

    jr @+$01

    jr c, @-$0f

    jr nc, @+$01

    jr nc, @+$01

    ld d, b
    rst $38
    ld h, c
    rst $38
    ld h, e
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
    ldh a, [rIE]
    ld hl, sp-$01
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    rst $38
    rra
    rst $18
    ccf
    adc a
    ld a, a
    rst $08
    ld a, a
    rst $18
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    pop hl
    rst $28
    pop hl
    rst $28
    jp $c3df


    rst $18
    sbc a
    cp a
    cp a
    cp a
    ld e, a
    ld a, a
    adc e
    rst $38
    dec c
    rst $38
    rra
    rst $38
    inc d
    rst $38
    rla
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    dec l
    rst $38
    dec l
    rst $38
    inc l
    rst $38
    ld h, b
    rst $38
    ld c, c
    rst $38
    ld b, c
    rst $38
    ld c, b
    rst $38
    ret c

    and a
    adc d
    rst $30
    sub a
    ld [$ff17], a
    rra
    di
    rrca
    ei
    rrca
    ei
    rla
    rst $38
    rlca
    cp $07
    cp $07
    cp $47
    cp $46
    rst $38
    ld c, $fd
    rlca
    db $fc
    inc d
    rst $38
    ld b, $fd
    inc c
    rst $38
    ld c, $f9
    dec c
    ld a, [$fd0a]
    rst $38
    rst $38
    rst $38
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
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
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
    ld bc, $01fe
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
    rst $38
    rst $38
    inc b
    inc b
    nop
    nop
    inc b
    inc b
    cp $fe
    adc l
    adc l
    dec a
    dec a
    ld d, [hl]
    ld d, [hl]
    rst $38
    rst $38
    nop
    nop
    ld de, $91ff
    rst $38
    di
    rst $38
    di
    rst $38
    and e
    rst $38
    ld l, e
    rst $38
    jp $c3ff


    rst $38
    rst $00
    rst $38
    add a
    rst $38
    add h
    rst $38
    add a
    rst $38
    rlca
    db $fc
    rrca
    cp $08
    rst $38
    ld [$0aff], sp
    rst $38
    dec bc
    rst $38
    ld e, $ff
    ld [hl], b
    rst $18
    ld [hl], c
    sbc a
    ld d, c
    cp a
    db $10
    rst $38
    jr nz, @+$01

    and b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld h, b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld b, b
    rst $38
    add c
    rst $38
    pop bc
    cp a
    pop bc
    cp a
    pop bc
    cp a
    add c
    rst $38
    ld bc, $81ff
    ld a, a
    add c
    ld a, a
    add e
    ld a, l
    add a
    ld a, d
    inc bc
    cp $03
    cp $03
    cp $4f
    cp d
    adc a
    ld a, [hl]
    sbc a
    db $76
    rrca
    cp $1f
    ld a, [$f51e]
    ld e, $fd
    adc [hl]
    ld a, l
    ld c, $fd
    ld e, $f5
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
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
    rst $38
    nop
    ccf
    ret nz

    rra
    ldh [rTAC], a
    ld hl, sp+$03
    db $fc
    rst $38
    rst $38
    sub d
    sub d
    inc b
    inc b
    nop
    nop
    rst $10
    rst $10
    ld [hl], a
    ld [hl], a
    sub h
    sub h
    sub e
    sub e
    rst $38
    rst $38
    nop
    nop
    ld a, d
    rst $38
    ld a, [de]
    rst $38
    sbc $ff
    ei
    rst $38
    ld a, d
    rst $38
    ld a, [hl+]
    rst $38
    or a
    cp $eb
    cp $e3
    cp $b3
    xor $33
    cp $e3
    cp $f7
    xor $ef
    ld [hl], d
    adc l
    ld a, a
    ld bc, $85ff
    rst $38
    add c
    rst $38
    sub c
    rst $28
    ld bc, $81ff
    rst $38
    add c
    ld a, a
    add c
    ld a, a
    pop bc
    cp a
    pop hl
    rst $18
    pop hl
    rst $18
    add e
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    add c
    rst $38
    jp Jump_000_03bf


    rst $38
    add c
    ld a, a
    add c
    ld a, a
    add l
    ld a, e
    jp $833d


    ld a, l
    add c
    ld a, a
    add c
    ld a, a
    add c
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
    db $10
    rst $38
    ld [$18ff], sp
    rst $38
    ccf
    rst $38
    ld a, e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    add b
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
    nop
    rst $38
    rst $30
    rst $30
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rst $30
    rst $30
    rst $38
    rst $38
    adc e
    adc e
    or $f7
    rst $38
    rst $38
    nop
    nop
    rst $38
    rst $38
    ld b, h
    rst $38
    ld b, e
    rst $38
    ld [hl], a
    rst $38
    or a
    rst $38
    and e
    rst $38
    ld a, c
    rst $38
    xor e
    rst $38
    ld hl, $10ff
    rst $38
    rra
    ld a, [$fd12]
    sub e
    ld a, [hl]
    db $10
    rst $38
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc b
    ld a, a
    adc d
    ld a, l
    adc [hl]
    ld [hl], l
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add h
    ld a, a
    add h
    rst $38
    xor [hl]
    ld d, e
    adc d
    ld [hl], a
    adc d
    ld [hl], a
    adc d
    ld [hl], a
    add d
    ld a, a
    sbc e
    ld l, l
    adc e
    ld [hl], l
    sbc c
    ld h, a
    xor e
    ld d, l
    add l
    ld a, e
    add l
    ld a, e
    add l
    ld a, d
    add c
    ld a, [hl]
    pop bc
    cp [hl]
    ldh [$3f], a
    add [hl]
    ld a, l
    pop de
    cp $c4
    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    ret nz

    cp a
    jp nz, $c0bf

    cp a
    jp nz, $c2ff

    cp a
    ret nz

    cp a
    ret nz

    cp a
    pop bc
    cp a
    pop bc
    rst $38
    rst $38
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
    rst $38
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
    ld hl, sp+$00
    ldh a, [rP1]
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
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
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
    rst $18
    rst $18
    ld [$d408], sp
    call nc, $9d8d
    rst $38
    rst $38
    ld d, b
    ld d, b
    rra
    rst $38
    ld l, $2e
    nop
    nop
    xor $ee
    or $09
    ld bc, $fffe
    rst $38
    cp $ff
    inc [hl]
    rst $38
    db $ed
    rst $38
    rra
    rst $38
    add d
    rst $38
    rst $38
    rst $38
    add b
    cp $80
    cp $7f
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld [hl], l
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld de, $11ff
    rst $38
    ld de, $18ff
    rst $28
    ld c, b
    cp a
    ld [$04fc], sp
    db $fd
    dec b
    db $fd
    nop
    cp $20
    cp $68
    cp $d0
    ld a, [hl]
    ld h, b
    rst $38
    or b
    ld a, a
    jr z, @+$01

    sub b
    ld a, a
    xor b
    ld a, a
    ret nc

    cp a
    add sp, -$41
    call nc, $c0bf
    cp a
    ret nz

    cp a
    ld h, b

jr_019_6a85:
    rst $18
    ld h, b

jr_019_6a87:
    rst $18
    ld h, b

jr_019_6a89:
    rst $18
    ld h, b
    rst $18
    ld h, b
    rst $18
    ld [hl-], a
    db $ed
    jr nc, @+$01

    inc [hl]

jr_019_6a93:
    rst $28
    jr nc, jr_019_6a85

    jr nc, jr_019_6a87

    jr nc, jr_019_6a89

    jr jr_019_6a93

    jr @-$07

    jr @-$07

    ld bc, $01fe
    cp $01
    cp $03
    db $fc

jr_019_6aa8:
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
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp+$07
    ld hl, sp-$19
    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$17

    jr @-$37

    jr c, jr_019_6aa8

    jr c, @-$3b

    inc a
    jp $c33c


    inc a
    jp $033c


    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    inc bc
    inc a
    ld bc, $013e
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $00
    ccf
    nop
    ld a, a
    nop
    ld a, a
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
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, a
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
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    rst $38
    rst $38
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    ld c, a
    and a
    and a
    daa
    daa
    inc hl
    inc hl
    sub e
    sub e
    db $d3
    db $d3
    add hl, bc
    add hl, bc
    dec bc
    dec bc
    ld l, e
    ld l, e
    inc h
    inc h
    dec b
    add l
    inc b
    add h
    ld [hl-], a
    or d
    inc d
    call nc, $c101
    nop
    ret nz

    db $10
    ret nc

    inc b
    db $e4
    inc b
    db $e4
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
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
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $01
    cp $00
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp a
    cp a
    cp a
    cp a
    rra
    rra
    rra
    rra
    cpl
    cpl
    rrca
    rrca
    ld d, a
    ld d, a
    ld b, a
    ld b, a
    ld [hl], a
    ld [hl], a
    ld h, a
    ld h, a
    inc sp
    inc sp
    inc hl
    inc hl
    ld sp, $1131
    ld de, $1919
    ld a, [de]
    ld a, [de]
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

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
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
    ld hl, sp+$01
    cp $38
    rst $00
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    ldh [$1f], a
    ldh [$1f], a
    add b
    ld a, a
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
    ld bc, $0302
    inc b
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
    ld b, $05
    dec b
    dec b
    nop
    nop
    rlca
    ld [$0000], sp
    nop
    nop
    nop
    nop
    nop
    nop
    add hl, bc
    dec b
    dec b
    dec b
    ld a, [bc]
    dec bc
    inc c
    inc c
    dec c
    ld c, $00
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    dec b
    dec b
    inc c
    inc c
    db $10
    ld de, $0c0c
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    inc de
    dec b
    inc d
    dec d
    ld d, $17
    jr jr_019_6cfd

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_019_6d0d

    ld [hl+], a
    inc hl
    inc h
    inc c
    dec h
    ld h, $27
    jr z, jr_019_6d1e

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_019_6d2e

jr_019_6cfd:
    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_019_6d3e

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_019_6d0d:
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
    ld b, d
    ld d, c

jr_019_6d1e:
    ld d, d
    ld d, e
    ld b, l
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
    ld b, d
    ld e, [hl]
    ld e, a

jr_019_6d2e:
    ld h, b
    ld h, c
    ld b, l
    ld d, h
    ld h, d
    ld h, e
    ld h, h
    inc c
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h

jr_019_6d3e:
    ld l, l
    ld l, [hl]
    ld b, l
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
    ld b, d
    ld b, d
    ld a, c
    ld h, b
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    ld b, d
    ld h, b
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    dec b
    dec b
    dec b
    dec b
    adc l
    add d
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
    ld a, a
    ld a, a
    sbc b
    sbc c
    sbc d
    dec b
    adc l
    add d
    adc [hl]
    inc c
    sbc e
    nop
    sbc h
    sbc l
    sbc [hl]
    sbc a
    rlca
    nop
    nop
    nop
    and b
    and c
    dec b
    dec b
    adc l
    add d
    adc [hl]
    and d
    and e
    and h
    and l
    inc c
    inc c
    and [hl]
    nop
    nop
    nop
    and a
    xor b
    dec b
    dec b
    dec b
    adc l
    xor c
    inc c
    inc c
    inc c
    inc c
    xor d
    xor e
    nop
    nop
    nop
    nop
    xor h
    dec b
    dec b
    dec b
    dec b
    nop
    xor l
    xor [hl]
    xor [hl]
    xor a
    nop
    nop
    nop
    nop
    nop
    or b
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
    nop
    nop
    or c
    or d
    dec b
    dec b
    dec b
    dec b
    dec b
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
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld b, $06
    ld b, $04
    inc b
    inc b
    inc b
    inc b
    inc b
    ld bc, $0101
    nop
    ld bc, $0101
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
    ld bc, $0101
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0701
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0103
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
    ld bc, $0101
    ld bc, $0101
    inc b
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_019_6e90

jr_019_6e90:
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    rlca
    nop
    nop
    nop
    jr nz, jr_019_6e9f

jr_019_6e9f:
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0201
    ld bc, $4101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
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
    ld bc, $4101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
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

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
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
    ld a, a
    add b
    ccf
    ret nz

    rrca
    ldh a, [$03]
    db $fc
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
    cp $00
    cp $00
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
    rst $38
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

    rst $38
    nop
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
    nop
    nop
    nop
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
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    cp $00
    cp $00
    rst $38
    nop
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ldh [rP1], a
    rra
    rra
    ld b, h
    ld b, h
    ld h, h
    ld h, h
    ld h, a
    ld h, a
    ld a, h
    ld a, h
    ld b, b
    ld b, b
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    pop hl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$1f], a
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
    db $fc
    inc bc
    cp $01
    cp $01
    ld a, [hl]
    ld bc, $017e
    ld a, [hl]
    ld bc, $017e
    cp $01
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
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
    ldh a, [$ef]
    ldh a, [$ee]
    ldh a, [$ee]
    ldh a, [$ee]
    ldh a, [$cc]
    ldh a, [$cc]
    ldh a, [$8c]
    ldh a, [$f3]
    rrca
    di
    rrca
    di
    rrca
    ld a, [c]
    rrca
    ld a, [c]
    rrca
    ld a, [$fa07]
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rlca
    ld sp, hl
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
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
    inc bc
    db $fd
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
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
    db $fd
    inc bc
    pop af
    rrca
    pop bc
    ccf
    ld bc, $03ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add a
    ld a, a
    jp $c13f


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
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    nop
    rst $38
    rst $38
    rst $38
    rla
    rst $38
    ld a, a
    rst $38
    rst $38
    cp $ff
    cp $1f
    cp $ff
    ld hl, sp-$03
    ld a, [$fe39]
    dec a
    ld a, [$fe79]
    jr c, @+$01

    jr c, @+$01

    jr c, @+$01

    ld a, d
    db $fd
    ld a, d
    db $fd
    ld a, b
    rst $38
    ld a, b
    rst $38
    cp [hl]
    db $fd
    db $fc
    rst $38
    cp l
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
    rst $38
    rst $38
    rst $30
    rst $38
    rst $00
    rst $38
    adc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, [hl]
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
    cp [hl]
    rst $18
    sbc [hl]
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
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
    ld a, [hl]
    cp $7e
    cp $7e
    cp $7d
    db $fd
    ld a, l
    db $fd
    ld a, l
    db $fd
    ld a, e
    ei
    ld a, e
    ei
    ld [hl], a
    rst $30
    ld [hl], a
    rst $30
    scf
    ld [hl], a
    ld l, $6f
    ld l, $6f
    dec l
    ld l, a
    dec e
    ld e, a
    dec e
    ld e, e
    dec de
    ld e, a
    scf
    ld a, e
    inc sp
    ccf
    ld [hl], a
    ld a, [hl]
    ld h, [hl]
    ld a, a
    ld b, e
    ld a, [hl]
    add $fd
    add [hl]
    db $fd
    rst $38
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
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
    db $fd
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
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
    ret nz

    adc a
    ret nz

    rrca
    ret nz

    rrca
    ret nz

    rrca
    ret nz

    rrca
    ret nz

    rrca
    ret nz

    rrca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    rlca
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    ld bc, $01c0
    ret nz

    ld bc, $00c0
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$80], a
    ldh [$81], a
    pop hl
    add c
    pop hl
    add e
    db $e3
    add e
    db $e3
    add a
    rst $20
    add a
    rst $20
    adc a
    rst $28
    adc a
    rst $28
    sbc a
    rst $38
    sbc a
    rst $38
    jr nz, jr_019_7362

    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and b
    and c
    and c
    and c
    and c
    and c
    and c
    and e
    and e
    and e
    and e
    and e
    and e
    and a
    and a
    and a
    and a
    xor a
    xor a
    xor a
    xor a
    xor a
    xor a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    cp [hl]
    cp a
    cp a
    cp a
    ld a, a
    ld a, a
    ld a, l
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc $ff
    db $eb
    rst $38
    xor d
    rst $38
    cp h
    rst $38
    db $fc
    rst $18
    ld a, c
    rst $30
    ret c

    or a
    cp c
    ld [hl], a
    or c
    ld l, a
    ld sp, $b1ef
    rst $28
    inc sp
    xor $63
    sbc $63
    sbc $ff
    rst $38

jr_019_7362:
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    cp $3f
    rst $38
    rra
    rst $38
    rrca
    rst $30
    rrca
    di
    rrca
    pop af
    rrca
    pop af
    ld c, $f9
    ld b, $f9
    ld b, $fb
    inc b
    ei
    inc b
    db $db
    inc b
    adc e
    inc b
    db $db
    inc b
    adc e
    ld [hl], h
    ld e, d
    and l
    ld a, [bc]
    push af
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
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ei
    inc b
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $f8
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    pop af
    rrca
    pop af
    rrca
    ld [hl], e
    adc a
    ld [hl], e
    adc a
    daa
    rst $18
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ld e, $1f
    ld a, $3f
    inc a
    ccf
    ld a, h
    ld a, a
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    dec bc
    rrca
    ld a, [bc]
    rrca
    dec d
    ld e, $14
    rra
    dec d
    rra
    dec hl
    ccf
    dec l
    ccf
    dec a
    ccf
    ld a, [hl]
    ld a, a
    db $76
    ld a, a
    rst $30
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
    ei
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
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
    cp $f7
    cp $ef
    cp $ff
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    rst $28
    db $dd
    ld b, a
    rst $38
    rst $28
    sub a
    rst $10
    xor l
    rst $18
    xor a
    rst $08
    cp e
    rst $08
    cp e
    adc a

jr_019_7443:
    ld a, e
    adc h

jr_019_7445:
    ld a, e
    adc h

jr_019_7447:
    ld a, e
    sbc b
    ld [hl], a
    jr jr_019_7443

    jr jr_019_7445

    jr jr_019_7447

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
    ldh a, [rIE]
    rst $38
    ld a, a
    rst $38
    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ld h, b
    rra
    ld a, $3f
    ld a, a
    ccf
    ld a, d
    cp a
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld a, [$fa3f]
    ccf
    ld a, [$fb3f]
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
    ldh [$7f], a
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    rst $38
    ccf
    ccf
    ccf
    ccf
    ld [hl], a
    ld a, a
    ld l, [hl]
    ld a, a
    xor a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
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
    ei
    rst $38
    ld l, e
    rst $38
    xor a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    ld [hl-], a
    rst $38
    ld d, d
    rst $38
    ld d, a
    rst $38
    ld d, e
    rst $38
    rst $10
    rst $38
    cp a
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
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    rst $38
    rst $38
    rst $18
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $db
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
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, [hl]
    db $fd
    db $76
    db $fd
    db $76
    db $fd
    xor [hl]
    db $fd
    ld d, [hl]
    db $fd
    or [hl]
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
    ld d, e
    rst $38
    rst $08
    rst $38
    nop
    rst $38
    rst $38
    set 7, a
    rst $38
    db $fd
    db $fd
    db $fd
    db $fd
    cp l
    cp l
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
    rst $38
    rst $38
    rst $38
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
    rst $28
    ld [$eaff], a
    rst $38
    db $eb
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
    rst $28
    rst $28
    rst $38
    and l
    rst $38
    push hl
    rst $38
    dec h
    rst $38
    and l
    rst $38
    and l
    rst $38
    ld h, a
    rst $38
    and [hl]
    rst $38
    db $ec
    rst $38
    rst $20
    db $fc
    db $ed
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $28
    di
    rst $28
    rst $30
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    ei
    rst $28
    di
    rst $28
    rst $30
    rst $28
    di
    rst $38
    rst $30
    rst $38
    di
    rst $38
    db $e3
    rst $38
    di
    rst $28
    di
    rst $28
    ei
    rst $20
    ei
    rst $20
    or l
    db $eb
    ld [hl], a
    db $eb
    inc sp
    rst $28
    inc sp
    rst $28
    or e
    rst $28
    inc sp
    rst $28
    ld sp, $31ef
    rst $28
    ld sp, $00ef
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
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld c, $ff
    inc e
    rst $38
    jr c, @+$01

    ld a, b
    rst $30
    db $fc
    db $e3
    call c, Call_000_1ce3
    db $e3
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld [hl], $c1
    and $c1
    ld a, [c]
    push bc
    ld [hl], d
    call $c1fe
    cp $c1
    cp $c1
    cp $c1
    cp $c1
    cp $c1
    cp $c1
    cp $c1
    cp $c1
    cp $c1
    call c, $dce3
    db $e3
    call c, $dce3
    db $e3
    call c, $dce3
    db $e3
    call c, $dcc0
    ret nz

    db $fc
    ldh [$e8], a
    ldh [rSVBK], a
    ldh a, [rSVBK]
    ldh a, [$38]
    ld hl, sp+$38
    ld hl, sp+$3c
    db $fc
    inc e
    db $fc
    ld e, $fe
    ld c, $fe
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add b
    ld hl, sp-$30
    db $fc
    ldh [$fc], a
    ldh a, [$fc]
    ld hl, sp-$02
    ld a, [$fcfe]
    cp $ff
    rst $38
    or [hl]
    rst $38
    sbc [hl]
    rst $38
    ld e, [hl]
    rst $38
    ld c, a
    rst $38
    ld b, e
    rst $38
    ld b, e
    rst $38
    dec hl
    rst $30
    or e
    rst $38
    cp e
    rst $38
    xor a
    rst $38
    rst $30
    xor a
    rst $38
    rst $28
    rst $28
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $18
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
    cp $ff
    or l
    rst $38
    db $fd
    rst $30
    cp e
    rst $30
    ld a, l
    di
    cp b
    rst $30
    jp c, $f875

    ld [hl], a
    ret c

    ld [hl], a
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
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
    ld a, a
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    ei
    cp $f1
    xor $f1
    sbc $e1
    sbc a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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

    ld e, a
    add b
    rrca
    add b
    ld e, a
    add b
    rrca
    ldh a, [rNR22]
    add sp, $07
    ld hl, sp+$3f
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

    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld a, $c1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    inc e
    db $e3
    ld [$80f7], sp
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    db $fc
    db $fc
    db $fc
    ld a, [hl]
    cp $7e
    cp $7f
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    and b
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [$60]
    ldh a, [$78]
    ld hl, sp-$08
    ld hl, sp-$10
    ld hl, sp-$10
    db $fc
    or b
    db $fc
    ldh a, [$fe]
    cp b
    cp $ec
    cp $fc
    rst $38
    sbc $ff
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
    ld a, a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp l
    rst $38
    xor [hl]
    rst $38
    push af
    rst $18
    cp $df
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
    add b
    rst $38
    add b
    rst $38
    db $fc
    rst $38
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
    nop
    nop
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    cp h
    db $fc
    db $fc
    db $fc
    cp $fe
    xor $fe
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
    ldh [rIE], a
    ret nz

    rst $38
    add b
    rst $38
    ld bc, $01fe
    cp $01
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
    ldh [$1f], a
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

    ccf
    ret nz

    rra
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
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $00fe
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rIF]
    rst $38
    ld a, [$fa02]
    ld [bc], a
    cp $0e
    ei
    inc bc
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
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
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
    rst $38
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
    ld a, a
    nop
    rst $38
    add b
    jr nz, jr_019_7982

    ld h, b
    ld h, b
    ld h, b
    ld h, b
    ldh [$e0], a
    jr nz, jr_019_798a

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
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld hl, sp+$00
    rst $38
    nop

jr_019_7982:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_019_798a:
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
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
    nop
    rst $38
    nop
    rst $38
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    inc bc
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
    ld a, a
    nop
    rst $38
    nop
    cp $01
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$07
    ldh [$1f], a
    add b
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
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
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
