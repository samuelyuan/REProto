SECTION "ROM Bank $052", ROMX[$4000], BANK[$52]

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
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $30
    nop
    di
    nop
    pop af
    nop
    rst $00
    jr c, jr_052_4022

jr_052_4022:
    inc a
    nop
    ld a, $00
    halt
    ld a, h
    nop
    db $fd
    nop

jr_052_402c:
    rst $38
    nop
    ld a, [hl]
    add b
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    push af
    ld [$20dd], sp
    push de
    jr z, jr_052_40ac

    sub b
    xor $10
    cp [hl]
    ld b, b
    adc a
    ld [hl], b
    or e
    ld c, h
    ld e, e
    and h
    cp a
    ld b, b
    rst $18
    jr nz, jr_052_402c

    jr nz, @+$01

    nop
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    add hl, bc
    ld [$0809], sp
    ld bc, $ff00
    rst $38
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
    ld bc, $0100
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $00
    or $00
    or $00
    db $e4
    nop
    db $e4
    ld bc, $01e5
    push hl
    ld bc, $02c9
    jp z, Jump_052_4202

jr_052_40ac:
    ld [bc], a
    ld b, d
    nop
    ld b, c
    dec b
    ld b, h
    dec b
    inc b
    ld bc, $0982
    adc d
    dec bc
    adc b
    dec de
    jr jr_052_40d0

    inc d
    rla
    db $10
    scf
    jr nc, @+$29

    jr nz, jr_052_40f4

    jr nz, jr_052_4136

    ld h, b
    ld c, a
    ld b, b
    ld e, a
    ld b, b
    ld a, a
    ld b, b
    cp a
    add b

jr_052_40d0:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_052_40d6:
    nop
    db $fc

jr_052_40d8:
    nop
    ld hl, sp+$00
    ldh [rP1], a
    nop
    nop
    nop
    nop
    add b

jr_052_40e2:
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_052_40f4:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld sp, hl
    ld bc, $01f9
    ld hl, sp+$01
    ld a, [c]
    inc bc
    ld a, [c]
    inc bc
    ld a, [c]
    inc bc
    ldh a, [$03]
    db $e4
    rlca
    push hl
    rlca
    pop hl
    rlca
    ret


    rrca
    rrc a
    jp $2d8f


    call z, $ca29
    add hl, hl
    jp z, $987b

    ld d, e
    sub h
    ld d, e
    sub h
    rst $30
    jr nc, jr_052_40d6

    jr z, jr_052_40d8

    jr z, jr_052_40e2

    jr nz, @+$51

    ld d, b

jr_052_4136:
    ld c, a
    ld d, b
    ld e, a
    ld b, b
    ld e, a
    ld b, b
    sbc a
    and b
    cp a
    add b
    cp a
    add b
    ccf
    ld b, b
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    add b
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
    ld bc, $01fe
    cp $01
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    rlca
    ld sp, hl
    rlca
    add hl, sp
    rra
    ld bc, $030f
    rrca
    inc bc
    rra
    inc bc
    rra
    rlca
    ld e, $27
    ld e, $67
    ld a, $cf
    inc a
    rst $08
    inc a
    rst $08
    ld a, h
    adc a
    ld a, h
    sbc a
    add [hl]
    ld e, $86
    ld e, $26
    ld a, $0c
    inc a
    ld c, h
    ld a, h
    ld c, h
    ld a, h
    jr jr_052_4206

    jr jr_052_4208

    ld h, a
    ld h, b
    rst $08
    ret nz

    rst $08
    ret nz

    rst $08
    ret nz

    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    ccf
    nop
    ccf
    ld b, b
    ccf
    ld b, b
    ld a, a
    nop
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
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    pop af
    ld bc, $01f1
    di
    inc bc
    db $e3
    inc bc
    rst $20
    rlca
    rst $20
    rlca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    rst $08
    rrca
    sbc a
    rra
    sbc a
    rra
    sbc a
    rra
    ccf
    ccf
    ld a, $3e
    ld a, $3c
    ld a, [hl]
    ld a, b
    ld a, h
    ld a, b
    ld a, h
    ld a, b
    ld e, h
    ld [hl], b
    ret c

    ldh a, [$b8]
    ldh a, [$b8]
    ldh a, [$30]
    ldh [rSVBK], a
    ldh [rSVBK], a
    ldh [$60], a
    ret nz

    ld h, b
    ret nz

    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b

Jump_052_4200:
    ret nz

    add b

Jump_052_4202:
    add b
    nop
    add b
    nop

jr_052_4206:
    add b
    nop

jr_052_4208:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rlca
    ld [$0009], sp
    nop
    nop
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
    dec bc
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_052_427d

jr_052_427d:
    nop
    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_052_42a8

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_052_42b8

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2e
    ld l, $2e
    cpl
    jr nc, jr_052_42cb

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_052_42db

    ld a, [hl-]
    ld l, $2e
    ld l, $3b
    inc a

jr_052_42a8:
    dec a
    ld a, $3f
    ld b, b
    nop
    ld b, c
    ld b, d
    ld b, e
    ld l, $2e
    ld l, $44
    ld b, l
    ld b, [hl]
    nop
    nop

jr_052_42b8:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    nop
    nop
    nop
    nop
    ld c, e
    ld c, h
    ld c, l
    nop
    nop
    nop
    nop
    nop
    ld c, [hl]
    ld c, a
    ld d, b

jr_052_42cb:
    ld d, c
    nop
    ld d, d
    ld d, e
    ld d, h
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
    ld d, [hl]

jr_052_42db:
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, $6b
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $73
    ld [hl], h
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld [hl], l
    db $76
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld [hl], a
    ld a, b
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld l, $2e
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
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
    ld bc, $0301
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
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    ld bc, $0202
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
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop

Jump_052_4400:
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
    ld bc, $0301
    ld bc, $0101
    ld bc, $0001
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld a, a
    ld a, a
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
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
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
    ld bc, $ffff
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$03
    ld hl, sp-$05
    ldh a, [$ee]
    ldh [$f5], a
    ldh [$fc], a
    ret nz

Call_052_4500:
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
    rst $38
    rrca
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
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
    rst $38
    ld a, $c1
    ld a, $c1
    ld b, $f9
    ld [hl], $c9
    ld [hl], $c9
    ld [hl], $c9
    ld [hl], $c9
    ld [hl], $c9
    rla
    add sp, $17
    add sp, $17
    add sp, -$18
    ldh [$e8], a
    ldh [$f4], a
    ldh [$e4], a
    ldh [$e4], a
    ldh [$e4], a
    ldh [$e4], a
    ldh [$e4], a
    ldh [$e4], a
    ldh [$e4], a
    ldh [$e4], a
    ldh [$f4], a
    ldh a, [$fc]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$fe]
    ldh a, [$f2]
    ldh a, [$f2]
    pop af
    ldh a, [$f7]
    ld a, [c]
    db $fc
    ld a, [c]
    ldh a, [$f1]
    ldh a, [$f9]
    ldh a, [$fd]
    ldh a, [$f9]
    ldh a, [$fd]
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$03
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$05
    ld hl, sp-$07
    ld hl, sp-$03
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    cp $fc
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
    db $fc
    rst $38
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp+$0f
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
    rst $38
    rst $38
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
    rst $38
    nop
    db $fd
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
    pop hl
    nop
    cp a
    nop
    nop
    ld c, $00
    ld de, $2100
    nop
    jr nz, jr_052_464a

jr_052_464a:
    ld b, b
    nop
    ld b, b
    nop
    jr nz, jr_052_4650

jr_052_4650:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $7f80
    add b
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
    rst $38
    add b
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
    ccf
    ld b, b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

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

    ccf
    ret nz

    rra
    and b
    rra
    and b
    rra
    ldh [$1f], a
    and b
    rra
    ldh [$1f], a
    and b
    rra
    and b
    rra
    and b
    nop
    rst $38
    inc bc
    nop
    rra
    nop
    rra
    nop
    ld a, a
    nop
    rst $38
    nop
    nop
    rst $38
    dec e
    ld [c], a
    nop
    rst $38
    and [hl]
    ld e, c
    nop
    rst $38
    adc a
    ld [hl], b
    ld e, b
    daa
    ld a, h
    inc bc
    sbc h
    inc bc
    rst $38
    nop
    rst $30
    ld [$0000], sp
    nop
    jr nz, jr_052_46e5

jr_052_46e5:
    jr nz, jr_052_46e7

jr_052_46e7:
    ld b, b
    nop
    adc $00
    rst $38
    nop
    cp $00
    db $fc
    nop
    ld a, [$fc00]
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    cp $00
    cp $00
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
    ld e, a
    nop
    rrca
    nop
    adc [hl]
    nop
    adc l
    nop
    inc e
    nop
    jr jr_052_4729

jr_052_4729:
    add hl, de
    nop
    inc sp
    nop
    ld h, e
    nop
    ld h, a
    nop
    ld h, e
    nop
    ld h, [hl]
    nop
    ld b, c
    nop
    ret


    nop
    push hl
    nop
    add c
    nop
    ld b, e
    nop
    ld de, $0000
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
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$1f], a
    add b
    ld a, a
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
    nop
    rst $38
    xor b
    ld d, a
    nop
    rst $38
    ccf
    ret nz

    dec de
    db $e4
    ld a, [hl]
    add b
    ld a, $c0
    ccf
    ret nz

    ld c, [hl]
    add b
    cp $00
    db $76
    add b
    nop
    nop
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $c200
    nop
    ld [bc], a
    nop
    jp nz, Jump_052_4400

    nop
    inc b
    nop
    add h
    nop
    call z, $0900
    nop
    add hl, de
    nop
    dec de
    nop
    ld [de], a
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $eb
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
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
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld l, a
    nop
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_052_47fc:
    nop
    rst $38
    nop
    rst $38

Jump_052_4800:
    nop
    rst $18
    nop
    ei
    nop
    rst $10
    nop
    cp a
    nop
    sbc a
    nop
    adc a
    nop
    adc a
    nop
    rlca
    inc bc
    nop
    inc bc
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
    ccf
    nop
    ld a, a
    nop
    rst $38

Jump_052_4835:
    nop
    rst $38
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
    cp $ff
    cp $00
    cp $00
    xor $00
    ldh [rP1], a
    ldh [rP1], a
    ccf
    ret nz

    rst $38
    nop
    ld d, a
    xor b
    ei
    inc b
    ld [c], a
    jr jr_052_47fc

    nop
    inc bc
    nop
    add b
    nop
    stop
    nop
    nop
    and e
    nop
    ld [hl], e
    add b
    di
    nop
    ldh a, [rP1]
    ld hl, sp+$00
    xor b
    nop
    xor b
    nop
    sbc d
    nop
    sub l
    nop
    nop
    ld a, [hl]
    nop
    ld d, a
    nop
    cp $00
    cp $00
    db $fd
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
    ei
    nop
    ei
    nop
    db $db
    nop
    db $d3
    nop
    rst $10
    nop
    db $eb
    nop
    rst $18
    nop
    rst $18
    nop
    adc a
    nop
    xor a
    nop
    ld e, a
    nop
    ld d, a
    nop
    inc hl
    nop
    inc sp
    nop
    rrca
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
    add hl, sp
    nop
    nop
    nop
    adc a
    nop
    rst $20
    nop
    and a
    nop
    ld [$6300], sp
    nop
    rst $38
    nop
    rst $30
    nop
    rst $08
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
    ccf
    nop
    rra
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
    ld b, a
    nop
    rst $38
    nop
    ei
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp $00
    cp $00
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
    db $fd
    nop
    db $fd
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
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    db $fc
    nop
    db $f4
    nop
    db $f4
    nop
    push af
    nop
    rst $30
    nop
    rst $38
    nop
    push af
    nop
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    db $f4
    nop
    db $f4
    nop
    db $fc
    nop
    ldh a, [rP1]
    inc [hl]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $18
    nop
    sbc $00
    ld hl, sp+$00
    jr c, jr_052_4a35

jr_052_4a35:
    jr c, jr_052_4a37

jr_052_4a37:
    jr jr_052_4a39

jr_052_4a39:
    jr jr_052_4a3b

jr_052_4a3b:
    jr jr_052_4a3d

jr_052_4a3d:
    jr jr_052_4a3f

jr_052_4a3f:
    jr jr_052_4a41

jr_052_4a41:
    jr jr_052_4a43

jr_052_4a43:
    jr jr_052_4a45

jr_052_4a45:
    jr jr_052_4a47

jr_052_4a47:
    jr jr_052_4a49

jr_052_4a49:
    ld [$0800], sp
    nop
    ld [$0800], sp
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
    ld a, a
    ccf
    ld a, a
    ccf
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
    ldh [rIE], a
    ldh [rIE], a
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $fb
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
    rst $38
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
    ld l, a
    nop
    xor a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp $00
    ld a, [$fb00]
    nop
    ld e, d
    nop
    ld a, [de]
    nop
    jr @+$03

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
    ldh a, [rIF]
    ldh a, [$1f]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    jr c, jr_052_4b53

jr_052_4b53:
    nop
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld [hl], a
    nop
    ld d, e
    nop
    ld b, d
    rlca
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
    nop
    rst $38
    nop
    rst $38
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
    ret c

    nop
    rst $38
    nop
    cp $00
    add b
    nop
    add b
    ld a, l
    ld [bc], a
    ld a, [hl]
    ld bc, $0001
    nop
    nop
    nop
    nop
    ccf
    nop
    ld e, a
    nop
    ld a, a
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
    ldh [rP1], a
    rst $38
    nop
    ccf
    nop
    nop
    ldh a, [rIF]
    ld [$fcf7], sp
    inc bc
    rrca
    nop
    rrca
    nop
    ld [c], a
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
    nop
    nop
    dec d
    dec d
    inc bc
    inc bc
    nop
    ldh [rP1], a
    rst $38
    add hl, bc
    or $24
    db $db
    ld [$f8f7], sp
    rlca
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $00
    cp $00
    db $fc
    ld [bc], a
    db $fc
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$04
    ld hl, sp+$04
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    nop
    nop
    ld b, b
    ld b, b
    rst $38
    rst $38
    rra
    rra
    nop
    ldh [$c0], a
    ccf
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    cp $01
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
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    pop hl
    ld bc, $01e1
    pop hl
    ld bc, $01c1
    pop bc
    ld bc, $03c3
    jp $8203


    ld b, d
    add [hl]
    ld b, [hl]
    add h
    inc b
    add h
    inc b
    inc b
    add h
    inc c
    adc h
    ld [$0c88], sp
    adc h
    ld [$0c08], sp
    inc c
    jr jr_052_4cc0

    inc e
    inc e
    rra
    rra
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

jr_052_4cc0:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    rra
    rra
    rra
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp [hl]
    ld b, c
    rst $38
    nop
    rst $38
    nop
    nop
    ld bc, $0302
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
    dec b
    ld b, $07
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
    nop
    ld [$0409], sp
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
    nop
    nop
    nop
    ld a, [bc]
    dec bc
    inc c
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
    dec c
    ld c, $0f
    inc b
    inc b
    inc b
    db $10
    ld de, $1312
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc d
    dec d
    ld d, $04
    inc b
    inc b
    inc b
    rla
    jr jr_052_4d60

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_052_4d70

    ld [hl+], a
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_052_4d87

    ld a, [hl+]
    dec hl

jr_052_4d60:
    inc l
    dec l
    ld l, $04
    inc b
    inc b
    inc b
    cpl
    jr nc, jr_052_4d9b

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37

jr_052_4d70:
    nop
    nop
    nop
    jr c, jr_052_4d79

    inc b
    inc b
    add hl, sp
    ld a, [hl-]

jr_052_4d79:
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    nop
    nop
    nop
    ld b, d
    ld b, e
    inc b
    inc b

jr_052_4d87:
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    nop
    nop
    nop
    nop
    ld c, l
    inc b
    inc b
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c

jr_052_4d9b:
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
    inc b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    ld l, c
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
    ld l, c
    ld l, c
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
    nop
    nop
    nop
    adc a
    ld l, c
    ld l, c
    ld l, c
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    ld l, c
    ld l, c
    sub [hl]
    nop
    nop
    nop
    nop
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    sub a
    sbc b
    sbc c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    sbc d
    nop
    nop
    nop
    nop
    ld l, c
    ld l, c
    ld l, c
    sbc e
    sbc h
    sbc l
    sbc [hl]
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    sbc a
    nop
    nop
    nop
    nop
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    ld l, c
    and b
    and c
    nop
    nop
    nop
    ld b, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0500
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    dec b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
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
    nop
    nop
    nop
    ld hl, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    ldh a, [rTAC]
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
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld bc, $01fe
    cp $ff
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    ldh a, [rTAC]
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    cp $01
    cp $01
    cp $01
    rst $38
    nop
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
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
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
    nop
    rst $38
    nop
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
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
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
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    ld hl, sp+$07
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$03
    ld hl, sp+$00
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ld hl, sp+$01
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rSB]
    ldh a, [rTIMA]
    ldh a, [rSB]
    ldh a, [rTAC]
    ldh a, [$03]
    ldh a, [$03]
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ldh [$03], a
    ld h, b
    add e
    ld h, b
    add d
    jr nz, @-$3b

    nop
    and $00
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
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
    cp l
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
    rst $30
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
    cp a
    nop
    rst $18
    nop
    or a
    nop
    rst $38
    nop
    cp l
    nop
    pop de
    nop
    cp c
    nop
    sbc b
    nop
    inc e
    nop
    push af
    nop
    xor l
    nop
    cp h
    nop
    db $fd
    nop
    db $ed
    nop
    db $fd
    nop
    rst $30
    nop
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    di
    nop
    db $e3
    nop
    rst $20
    nop
    rst $38
    nop
    pop af
    nop
    pop af
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $fd
    nop
    dec [hl]
    nop
    dec a
    nop
    scf
    nop
    or a
    nop
    dec [hl]
    nop
    and a
    nop
    ld a, [hl+]
    nop
    ld [hl+], a
    nop
    and b
    nop
    jr nz, jr_052_5211

jr_052_5211:
    jr nz, jr_052_5213

jr_052_5213:
    jr z, jr_052_5215

jr_052_5215:
    jr nz, jr_052_5217

jr_052_5217:
    stop
    nop
    nop
    inc h
    nop
    inc h
    nop
    inc h
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
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

    rra
    ldh [$1f], a
    ldh [$1f], a
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
    ld bc, $fffe
    rst $38
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
    and e
    nop
    and a
    nop
    nop
    and d
    nop
    ld [hl-], a
    nop
    inc sp
    nop
    ld [hl-], a
    nop
    pop af
    nop
    sub b
    nop
    sub c
    nop
    sub c
    nop
    add hl, de
    nop
    stop
    sub b
    nop
    ld d, b
    nop
    ld e, c
    nop
    sub b
    nop
    jr nc, jr_052_527f

jr_052_527f:
    stop
    stop
    sub b
    nop
    sbc b
    nop
    sub b
    nop
    add b
    nop
    stop
    stop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    xor b
    nop
    ld l, b
    nop
    ld c, b
    nop
    ld c, b
    nop
    ld [$00f3], sp
    db $e3
    db $10
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    ei
    nop
    ld hl, sp+$00
    ei
    nop
    cp $01
    ei
    nop
    ei
    nop
    ld a, e
    nop
    ld a, e
    nop
    ld a, [de]
    ld bc, $001b
    ld a, [hl-]
    ld bc, $013a
    ld a, [hl-]
    ld bc, $003b
    ld a, d
    ld bc, $007b
    ld a, e
    nop
    add hl, sp
    nop
    ld a, l
    nop
    ld a, l
    nop
    dec e
    jr nz, jr_052_5353

    ld bc, $007d
    inc a
    ld bc, HeaderLogo
    ld sp, hl
    inc b
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [$03]
    db $fc
    ld bc, $00fe
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
    cp $00
    nop
    cp $00
    xor $00
    xor $00
    ld [c], a
    nop
    ld sp, $2000
    nop
    stop
    add hl, de
    nop
    stop
    stop
    sub b
    nop
    sub h
    nop
    ret c

    nop
    ret c

    nop
    call c, $fc00
    nop
    ld a, [$ff00]
    nop
    ld a, a
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    rrca
    nop
    inc c
    rst $30
    nop
    rst $30
    nop
    ei
    nop
    db $eb
    db $10
    ld a, e
    add b
    ld a, a
    add b
    ld l, a
    sub b
    ld a, h
    add b
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

jr_052_534c:
    nop
    inc bc
    nop
    inc hl

jr_052_5350:
    ld a, [hl]
    add b

jr_052_5352:
    sbc [hl]

jr_052_5353:
    ld b, b
    cp [hl]

jr_052_5355:
    ld b, b
    db $e4
    nop
    or b
    ld b, b
    cp h
    ld b, b
    ldh [rP1], a
    ldh a, [rP1]
    db $fd
    nop
    ei
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $10
    jr z, jr_052_5350

    jr nz, jr_052_5352

    jr nz, jr_052_534c

    jr z, jr_052_5355

    ld hl, $9b64
    sub $29
    jp z, Jump_052_4835

    or a
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    xor d
    nop
    ld [hl+], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    ld l, l
    ld [bc], a
    rst $38
    nop
    ld a, [$fa05]
    dec b
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rTAC]
    ld [hl], b
    rlca
    ld a, b
    rlca
    ld a, h
    inc bc
    inc [hl]
    dec bc
    or d
    dec c
    ld a, [$3a05]
    dec b
    ld a, $01
    ld a, $01
    ccf
    nop
    ccf
    nop
    ld e, l
    ld [bc], a
    cp a
    nop
    sbc a
    nop
    rst $10
    ld [$00de], sp
    ldh [rP1], a
    ldh [rP1], a
    pop hl
    nop
    ld sp, hl
    nop
    db $ed
    nop
    nop
    dec de
    nop
    inc de
    nop
    dec de
    nop
    dec bc
    nop
    add hl, de
    nop
    dec bc
    nop
    dec bc
    nop
    adc l
    nop
    sbc l
    nop
    cp [hl]
    nop
    ld b, [hl]
    nop
    ld c, h
    nop
    call z, $f400
    nop
    cp $00
    ldh a, [$03]
    nop
    dec b
    nop
    inc b
    ld bc, $0184
    inc b
    ld bc, $011e
    ld a, [hl]
    ld bc, $235c
    ld e, [hl]
    ld hl, $245b
    push de
    ld a, [hl+]
    db $d3
    inc l
    push bc
    ld a, [hl-]
    ld l, b
    sub a
    ldh [$1f], a
    or c
    ld c, [hl]
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    ret nz

    cp $00
    cp $00
    adc $00
    ld c, [hl]
    nop
    ld b, h
    nop
    jr nz, jr_052_5450

jr_052_5450:
    rst $38
    nop
    ld a, a
    add b
    db $fd
    ld [bc], a
    ld d, a
    xor b
    ret c

    daa
    ld a, [de]
    push hl
    ld [$08f7], sp
    rst $30
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
    ld b, $f9
    rrca
    ldh a, [$37]
    ret z

    scf
    ret z

    adc a

jr_052_5475:
    ld [hl], b
    sbc $20
    adc $20
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rrca
    nop
    ld [hl+], a
    nop
    and d
    nop
    ldh [rP1], a
    or b
    nop
    or b
    nop
    sub h
    nop
    db $fc
    nop
    db $ec
    nop
    call z, $c600
    nop
    add $00
    jp nz, $e200

    nop
    ld h, b
    nop
    pop hl
    sbc $00
    ld e, a
    nop
    cp a
    ld b, b
    cp [hl]
    ld b, c
    rst $18
    jr nz, jr_052_5475

    dec [hl]
    cp [hl]
    ld b, c
    sub $29
    ret nz

    ccf
    ret z

    scf
    and h
    ld e, e
    ld b, b
    cp a
    inc b
    ei
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
    ld [bc], a
    db $fd
    ld a, [$7805]
    add a
    inc a
    jp Jump_000_00f0


    ldh [rP1], a
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
    ld [$08f0], sp
    ldh a, [$08]
    ldh a, [$08]
    ldh a, [rNR23]
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [$38], a
    ret nz

    inc a

jr_052_552f:
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    inc a
    ret nz

    ld a, $c0
    ld a, $c0
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
    ccf
    ret nz

    ccf
    ld b, b
    ccf

jr_052_554b:
    ld b, b
    rra
    ld h, b
    rra
    jr nz, jr_052_5571

    ldh [$30], a
    ldh a, [rNR11]
    ldh a, [rNR11]
    ldh a, [rNR24]
    ld hl, sp+$09
    ld hl, sp+$09
    ld hl, sp+$0f
    db $fc
    ld l, b
    sub e
    cp b
    ld b, e
    jr nc, jr_052_552f

    ld a, h
    add c
    inc a
    pop bc
    jr c, @-$3e

    ldh a, [rP1]
    or b
    ld b, b
    ld a, b

jr_052_5571:
    add b
    db $fc
    nop
    ld a, h
    add b
    db $fc
    nop
    db $fc
    nop
    ld [hl], b
    nop
    ld [hl], b
    nop
    ld a, b
    nop
    nop
    call nz, Call_052_4500
    nop
    ld b, d
    nop
    ld h, d
    nop
    ld [hl+], a
    nop
    ld sp, $3100
    nop
    inc [hl]
    db $ed
    nop
    xor $00
    rst $28
    nop
    rst $30
    nop
    rst $38
    nop
    db $fc
    inc bc
    ei
    inc b
    db $fd
    ld [bc], a
    ld [$ad15], a
    ld d, d
    ld a, h
    inc bc
    ld a, [hl]
    ld bc, $0df2
    jr nz, jr_052_554b

    ld b, d
    cp l
    ld [hl+], a

jr_052_55af:
    db $dd
    nop
    rst $38
    ld hl, $00de
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_052_55af

    inc c
    nop
    jr @+$04

    db $10
    ld bc, $0132
    ld [hl-], a
    ld bc, HeaderDestinationCode
    jp nz, Jump_000_0201

    ld bc, $0102
    inc b
    ld [bc], a
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff

jr_052_560c:
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
    ld hl, sp-$01
    ld hl, sp-$02
    ld hl, sp-$02
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fc]
    ldh a, [$fc]
    ldh [$fc], a
    pop hl
    db $fc
    pop hl
    db $fc
    pop hl
    ld hl, sp-$1f
    ld hl, sp-$3f
    ld hl, sp-$3d
    ld hl, sp-$3d
    ld hl, sp-$3d
    ldh a, [$c3]
    ldh a, [$82]
    ldh a, [$79]
    rrca
    ld a, c
    rrca
    ld a, e
    rra
    ld a, d
    rra
    ld a, d
    rra
    cp $1f
    cp $1f
    db $f4
    rra
    ld a, [bc]
    ret nz

    nop
    ret nz

    ld [bc], a
    ret nz

    ld [bc], a
    ret nz

    ld [bc], a
    ret nz

    nop
    add b
    ld [$0480], sp
    add b
    nop
    add b
    ld [bc], a
    add b
    ld [bc], a
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
    rst $38
    nop
    rst $38
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ld a, a
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
    sub b
    nop
    jr jr_052_560c

    ld l, b
    add b
    ld l, b
    add b
    ld a, e
    add b
    cp a
    ld b, b
    cp l
    ld b, b
    dec e

jr_052_5697:
    ldh [$0d], a

jr_052_5699:
    ldh a, [rVBK]
    or b
    ld [hl], $c8
    rlca
    ld hl, sp+$07
    ld hl, sp+$0b
    db $f4
    inc bc
    db $fc
    add e
    ld a, h
    add c
    ld a, [hl]
    ld bc, $01fe
    cp $00
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    jr nz, jr_052_5697

    jr nz, jr_052_5699

    db $10
    rst $28
    nop
    rst $38
    ld de, $ffee
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $08
    rst $28
    rst $10
    rst $20
    db $db
    add a
    ei
    add e
    db $fd
    add c
    cp $80
    rst $38
    add b
    rst $38
    nop
    rst $28
    nop
    rst $20
    ld [$1ce3], sp
    pop bc
    ld e, $c0
    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    rra
    ret nz

    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
    add b
    ccf
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
    ld e, a
    jr nz, jr_052_5768

    jr jr_052_5766

    inc e
    db $e3
    inc c
    pop de
    ld c, $d9
    ld b, $dc
    inc bc
    call c, $be03
    ld bc, $01be
    ccf
    nop
    ccf
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    db $fd
    nop
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc c
    nop
    inc c
    nop
    ld [$8800], sp
    nop
    sbc b
    nop
    ret c

    nop
    sub b
    nop
    sub b
    nop
    or b
    ld c, a
    nop
    rst $18
    nop
    ld d, a
    nop
    dec a
    nop
    sbc [hl]
    jr nz, jr_052_5752

    jr nc, jr_052_5774

    jr jr_052_5762

    inc c
    db $ec
    di

jr_052_5752:
    sbc $f9
    push de
    ld hl, sp-$2e
    db $fd
    sbc $ff
    call c, $f4ff
    rst $38
    db $e4
    rst $38
    nop
    db $e4

jr_052_5762:
    nop
    db $fc
    nop
    db $fc

jr_052_5766:
    nop
    ld sp, hl

jr_052_5768:
    nop
    db $fd
    ld bc, $01f6
    ld a, [c]
    ld bc, $03e2
    call nz, $c403

jr_052_5774:
    rlca
    adc b
    rlca
    adc b
    rlca
    adc b
    rrca
    sub b
    rrca
    db $10
    rrca
    db $10
    rra
    jr nz, @+$21

    jr nz, @+$41

    ld b, b
    ccf
    ld b, b
    ccf
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
    ld c, a
    ld b, b
    ld b, a
    ld b, b
    ld h, a
    ld h, b
    ld h, e
    ld h, b
    inc hl
    jr nz, @+$25

    jr nz, jr_052_57d6

    jr nc, jr_052_57b6

    db $10
    ld de, $0910
    ld [$0000], sp
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a

jr_052_57b6:
    ccf
    rst $18
    rra
    rst $28
    rrca
    rst $30
    rrca
    di
    rlca
    ei
    inc bc
    ld a, l

jr_052_57c2:
    add c
    ld a, $c0
    rra
    ldh [rIF], a
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop

jr_052_57d6:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03ff

jr_052_57e0:
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ccf
    add b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    rra
    ld h, b
    adc a
    ld [hl], b
    rst $08
    jr nc, jr_052_57c2

    jr c, jr_052_57e0

    inc e
    di
    inc c
    pop af
    ld c, $f9
    ld b, $f8
    rlca
    db $fc
    inc bc
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
    ldh [rNR34], a
    ldh [rNR34], a
    ret nz

    ld a, $c1
    dec a
    pop bc
    dec a
    jp Jump_000_033b


    ld a, e
    add e
    ld a, e
    add a
    ld [hl], a
    rlca
    rst $30
    rrca
    rst $28
    rrca
    rst $28
    rrca
    rst $28
    rra
    rst $18
    rra
    rst $18
    ccf
    cp a
    ccf
    cp a
    ccf
    cp a
    ldh [$80], a
    ld hl, sp-$80
    cp $80
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    cp a
    ccf
    rst $18
    rra
    rst $28
    rra
    rst $28
    rrca
    rst $30
    rlca
    ei
    add e
    ld a, l
    pop bc
    ccf
    rst $20
    rra
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
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    di
    rrca
    pop hl
    rra
    ldh [rNR34], a
    ret nz

    ld a, $c1
    dec a
    pop bc
    dec a
    add e
    ld a, e
    add e
    ld a, e
    add e
    ld a, e
    add a
    ld [hl], a
    rlca
    rst $30
    rlca
    rst $30
    rrca
    rst $28
    rrca
    rst $28
    rra

jr_052_58ad:
    rst $18
    rra
    rst $18
    rra
    rst $18
    ccf
    cp a
    ccf
    cp a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38

jr_052_58bf:
    rst $38
    nop
    nop

jr_052_58c2:
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    nop
    ld bc, $3800
    ld bc, $03c4
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc b
    ld bc, $0208
    db $10
    inc b
    db $10
    inc b
    jr nz, jr_052_58f0

    jr nz, jr_052_58f4

    ld b, b
    inc bc

jr_052_58f0:
    ld b, b
    nop
    ld b, b
    nop

jr_052_58f4:
    add b
    nop
    inc b
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    ld [hl], b
    adc b
    sub b
    inc c
    nop
    inc c
    inc b
    ld [$0880], sp
    add b
    jr jr_052_58ad

    jr nc, jr_052_58bf

    ld h, b
    jr z, jr_052_58c2

    call nz, Call_052_6008
    inc b
    jr nc, jr_052_593c

    nop
    inc d
    nop
    inc d

jr_052_593c:
    nop
    inc d
    nop
    inc d
    jr @+$06

    db $10
    inc c
    db $10
    jr z, jr_052_59b7

    ld [$9060], sp
    ret nz

    jr nz, jr_052_594d

jr_052_594d:
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
    ld bc, $0f00
    nop
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
    ld bc, $0100
    nop
    inc bc
    nop
    rlca
    nop
    rrca
    nop
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
    ld de, $1111
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_052_59b6

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld de, $2120
    ld [hl+], a
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc h
    dec h
    ld h, $23
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl

jr_052_59b6:
    inc hl

jr_052_59b7:
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    daa
    jr z, jr_052_59ea

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    inc hl
    jr nc, jr_052_5a01

    ld [hl-], a
    dec hl
    inc sp
    dec l
    dec l
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_052_5a14

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $23
    inc hl
    inc hl
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, e
    ld b, h

jr_052_59ea:
    ld b, l
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    inc hl
    inc hl
    inc hl
    ld c, e
    ld c, h
    ld c, l
    ld c, l
    ld c, [hl]
    ld c, a
    ld c, l
    ld c, l
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l

jr_052_5a01:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
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

jr_052_5a14:
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
    ld a, a
    add b
    add c
    add d
    add e
    ld c, $84
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
    ld d, [hl]
    cp c
    cp d
    ld c, $0e
    ld c, $0e
    ld c, $0e
    cp e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
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
    nop
    ld bc, $0101
    ld bc, $0401
    inc b
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
    ld bc, $0000
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
    ld bc, $0121
    ld hl, $0121
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    ld bc, $0101
    ld bc, $0003
    nop
    nop
    nop
    nop
    dec b
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0203
    ld [bc], a
    ld [bc], a
    nop
    nop
    inc bc
    rlca
    rlca
    inc b
    rlca
    rlca
    rlca
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    inc b
    dec b
    dec b
    inc bc
    inc bc
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0100
    inc b
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc b
    ld bc, $0501
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    inc b
    inc b
    inc b
    rlca
    rlca
    rlca
    nop
    nop
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld b, c
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $18
    rst $38
    rst $38
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    rst $28
    ld l, a
    ld l, a
    ld l, a
    ld l, a
    ld e, a
    ld e, a
    rlca
    rlca
    ld b, $06
    ld c, $0e
    add [hl]
    add [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc [hl]
    adc d
    adc d
    adc d
    adc d
    ld [bc], a
    ld [bc], a
    ld a, [bc]
    ld a, [bc]
    ld b, [hl]
    ld b, [hl]
    inc b
    inc b
    ld b, l
    push bc
    dec b
    add l
    dec d
    sub l
    dec c
    adc l
    dec bc
    adc e
    ld a, [bc]
    adc d
    dec hl
    ld l, e
    ld c, $4e
    ld a, [bc]
    ld c, d
    ld a, [bc]
    ld c, d
    ld c, $4e
    dec d
    ld d, l
    sbc a
    rst $18
    sub a
    rst $10
    sub a
    rst $30
    add a
    and a
    adc a
    xor a
    adc a
    xor a
    adc a
    xor a
    adc a
    xor a
    adc a
    xor a
    ld b, a
    ld d, a
    ld b, b
    ld d, b
    ret nz

    ld b, b
    rst $08
    ld c, a
    rst $28
    ld l, a
    rst $28
    ld l, a
    rst $20
    ld h, a
    rst $38
    ld a, a
    rst $30
    ld [hl], a
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
    ccf
    ccf
    rlca
    rlca
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

jr_052_5cf2:
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
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld bc, $0380
    add b
    rlca
    add b
    rra
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp a
    add b
    cp a
    add b
    cp a
    add b
    cp a
    add b
    rra
    nop
    sbc a
    and b
    sbc a
    and b
    sbc a
    and b
    rra
    jr nz, jr_052_5cf2

    and b
    rra
    nop
    rra
    nop
    ld c, a
    ld d, b
    adc a
    sub b
    rrca
    db $10
    adc a
    sub b
    rrca
    db $10
    adc a
    sub b
    rrca
    nop
    rrca
    nop
    rlca
    ld [$0807], sp
    ld b, a
    ld c, b
    rlca
    ld [$8887], sp
    rst $00
    ret z

    add a
    add b
    rst $00
    ret nz

    add e
    add h
    add e
    add h
    ld h, e
    ld h, h
    ld b, e
    ld b, h
    ld b, e
    ld b, h
    ld h, e
    ld h, h
    db $eb
    add sp, -$15
    add sp, -$17
    ld [$faf9], a
    pop af
    ld a, [c]
    dec [hl]
    ld [hl], $35
    ld [hl], $f9
    ld a, [$fcfd]
    db $fd
    db $fc
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    db $fc
    db $fd
    cp $ff
    cp $ff
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld [bc], a
    ld [bc], a
    nop
    rst $38
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
    nop
    inc bc
    nop
    inc bc
    nop
    nop
    inc bc
    nop
    rlca
    ld [bc], a
    dec b
    dec b
    ld [bc], a
    inc b
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_052_5e44:
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
    nop
    nop
    ld b, b
    jr nc, jr_052_5e44

    ccf
    rst $38
    ccf
    cp a
    ld a, b
    ld a, b
    ldh a, [$f0]
    cp $fe
    cp $fe
    rlca
    nop
    add sp, $10
    ccf
    ret nz

    rst $18
    jr nz, jr_052_5ee8

    add b
    and e
    ld e, h
    ccf
    ret nz

    add hl, bc
    or $03
    nop
    nop
    nop
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    rst $38
    nop
    nop
    nop
    cp a
    ld b, b
    rst $38
    nop
    cp $00
    cp l
    ld b, b
    db $fc
    nop
    db $fc
    nop
    ldh [$1f], a
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
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc

jr_052_5ee8:
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
    nop
    nop
    jr nz, jr_052_5f05

jr_052_5f05:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    rra
    nop
    ld b, b
    nop
    dec bc
    nop
    cp [hl]
    nop
    ld d, [hl]
    nop
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
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
    ldh [$3f], a
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
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
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
    cp $80
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
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    rrca
    pop af
    rrca
    di
    rrca
    rst $30
    rrca
    ldh a, [rP1]
    nop
    ld bc, $0300
    nop
    rlca
    nop
    ld c, a
    nop
    rst $38
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    ld e, $00
    rst $38
    nop
    ld a, [hl+]
    nop
    ld a, [c]
    nop
    db $f4
    nop
    db $fd
    nop
    ld sp, hl
    nop
    nop
    nop
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
    rra
    nop
    rra
    nop
    rra
    nop
    rra
    nop
    db $10
    rrca

Call_052_6008:
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rrca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ccf
    jp $c33f


    ccf
    jp $e31f


    rra
    db $e3
    rra
    db $e3
    rrca
    di
    rrca
    di
    rlca
    ei
    rlca
    ei
    rlca
    ei
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
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    ldh [$f7], a
    ret nz

    rst $28
    add b
    rst $18
    nop
    sbc a
    nop
    cp [hl]
    nop
    ld a, $00
    inc a
    nop
    nop
    ld a, a
    nop
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    ret nc

    nop
    or c
    nop
    and e
    nop
    ld h, e
    nop
    jp $c600


    nop
    call nz, $fc00
    nop
    call z, $8900
    nop
    sbc b
    nop
    jr nc, jr_052_60b1

jr_052_60b1:
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$07
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
    inc bc
    inc e
    inc bc
    inc c
    inc bc
    inc c
    rlca
    jr jr_052_60fe

    db $10
    rlca
    nop
    rlca
    nop
    rlca
    nop

jr_052_60fe:
    rlca
    nop
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, [$f000]
    nop
    db $f4
    nop
    ldh [rP1], a
    ret nz

    nop
    ret nz

    nop
    add c
    nop
    ld bc, $00bc
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $30
    nop
    db $fc
    inc bc
    xor $01
    db $fd
    ld [bc], a
    db $dd
    ld [bc], a
    sbc $00
    cp a
    nop
    ccf
    nop
    ld [hl], a
    nop
    ei
    nop
    cp $00
    rst $30
    nop
    nop
    ld bc, $0e00
    nop
    rra
    nop
    dec e
    nop
    add hl, hl
    nop
    ld sp, $3b00
    nop
    ld b, a
    rst $38
    ccf
    rst $18
    ccf
    rst $08
    ccf
    rst $20
    rra
    db $e3
    rra
    pop hl
    rra
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld sp, hl
    ld b, $f9
    ld b, $f9
    ld b, $f8
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
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
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld b, b
    cp a
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
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ret nz

    cp $80
    db $fd
    add b
    ld sp, hl
    add b
    add sp, -$80

jr_052_61f0:
    db $dd

jr_052_61f1:
    nop
    cp l
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, l
    ld [bc], a
    push af
    ld a, [bc]
    push af
    ld a, [bc]
    di
    inc c
    db $ed
    ld [de], a
    rst $28
    db $10
    xor a
    db $10
    rst $30
    ld [$0877], sp
    rst $28
    db $10
    ld c, e
    or h
    rst $08
    jr nc, jr_052_61f0

    jr nz, jr_052_61f1

jr_052_6213:
    jr nz, jr_052_6213

    nop
    db $fd
    nop
    db $fd
    nop
    ld hl, sp+$00
    cp e
    nop
    pop af
    nop
    nop
    ld a, l
    nop
    ld a, $00
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rst $38
    nop
    adc $00
    rst $08
    nop
    sbc e
    nop
    cp e
    nop
    cp e
    nop
    di
    nop
    rst $10
    rst $38
    rlca
    rst $30
    inc bc
    rst $28
    inc bc
    db $e3
    ld bc, $01f3
    pop af
    nop
    or c
    nop
    add b
    add b
    cp $3f
    rst $38
    rra
    db $e3
    rrca
    db $ed
    rrca
    db $ed
    rlca
    adc $07
    rst $00
    rlca
    add $06
    add $06
    add $06
    add $06
    add $06
    add $06
    add $06
    add [hl]
    ld b, $84
    ld b, $f8
    ld b, $e8
    ld b, $88
    ld b, $c9
    ld b, $e9
    ld b, $f9
    ld b, $f9
    ld b, $f9
    ld b, $86
    ld b, $86
    ld b, $84
    ld b, $86
    ld b, $c6
    ld b, $c6
    ld b, $c7
    ld b, $c7
    ld b, $c7
    ld b, $c7
    ld b, $c7
    ld b, $c5
    ld b, $cd
    ld b, $cd
    ld b, $cf
    ld b, $cf
    ld b, $cf
    ld b, $cf
    ld b, $cf
    ld b, $ef
    ld b, $ef
    ld b, $ef
    ld b, $ef
    ld b, $ef
    ld b, $f9
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$0f
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$f8], a
    ldh [$f8], a
    ret nz

    ld hl, sp-$40
    ld a, [$0080]
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $08
    nop
    adc a
    nop
    sub a
    nop
    ld b, $00
    inc b
    cp e
    ld b, b
    ei
    nop
    ei
    nop
    rst $30
    nop
    rst $30
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $20
    nop
    db $e3
    nop
    push bc
    nop
    cp [hl]
    ld bc, $03fc
    cp h
    ld b, e
    or $09
    rst $28
    stop
    nop
    nop
    adc b
    nop
    ld [$0900], sp
    nop
    ld [$1000], sp
    nop
    ld [hl-], a
    nop
    db $76
    push bc
    nop
    adc a
    nop
    inc e
    inc bc
    ld d, $09
    ld e, $01
    ccf
    nop
    dec sp
    inc b
    ccf
    nop
    ld a, h
    ld [bc], a
    ld a, c
    inc b
    dec de
    inc h
    rst $30
    ld [$00fd], sp
    rst $18
    jr nz, jr_052_63ba

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
    add b
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    nop
    nop
    rra
    rra
    ccf
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
    ld hl, sp+$00
    ret nz

    nop
    add b
    nop
    ld b, b
    nop
    jr nz, jr_052_6374

jr_052_6374:
    jr nz, jr_052_6376

jr_052_6376:
    ld b, b
    nop
    add b
    nop
    ccf
    nop
    ccf
    rra
    ccf
    db $10
    cpl
    db $10
    cpl
    inc de
    cpl
    inc d
    ld l, $15
    ld l, $15
    ld l, $15
    inc h
    rra
    inc h
    rra
    inc h
    rra
    dec h
    ld e, $25
    ld e, $25
    ld e, $25
    ld e, $24
    rra
    inc hl
    rra
    dec hl
    inc e
    db $eb
    ldh [$ee], a
    ldh [$ee], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [rIE], a
    nop

jr_052_63ba:
    rst $38
    nop
    rst $38
    nop
    xor a
    nop
    db $fd
    nop
    rst $38
    nop
    jp $803c


    ld a, a
    nop
    rst $38
    rrca
    ldh a, [$f1]
    nop
    pop hl
    nop
    nop
    ld a, [de]
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
    rst $38
    nop
    rst $38
    nop
    di
    nop
    ld a, [c]
    nop
    ld [c], a
    nop
    ld b, b
    adc e
    nop
    jp nz, $ba00

    nop
    ld h, a
    nop
    ld [hl], d
    dec b
    ld [hl], l
    ld [bc], a
    db $fc
    inc bc
    xor [hl]
    ld d, c

jr_052_6400:
    ld l, [hl]
    sub c
    cp b
    ld b, a
    ld e, d
    and l
    db $10
    rst $28
    db $10
    rst $28
    ld de, $b5ee
    ld c, d
    push hl
    ld a, [de]
    db $eb
    inc d
    push hl
    ld [de], a
    di
    inc b
    cp a
    nop
    sub [hl]
    add hl, hl
    ld [hl-], a
    add hl, bc
    ld [hl], e
    ld [$116a], sp
    ld [hl], e

jr_052_6421:
    ld [$0972], sp
    db $db
    jr nz, jr_052_6421

    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    cp a
    ld b, b
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    ld a, [$fb01]
    nop
    ld a, e
    nop
    ld a, h
    nop
    nop
    nop
    nop
    nop
    rrca
    rrca
    rra
    rra
    nop
    nop
    ccf
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    nop
    rra
    ldh [$78], a
    nop
    or c
    ld b, $b3
    inc b
    or a
    nop
    sub a
    jr nz, jr_052_6400

    inc [hl]
    inc bc
    or h
    inc bc
    or h
    inc bc
    or h
    inc bc
    or h
    inc bc
    or h
    add e
    inc [hl]
    add a
    jr nc, jr_052_648d

jr_052_648d:
    ld a, b
    inc bc
    db $fc
    nop
    add a
    nop
    ld c, e
    nop
    ld c, e
    nop
    ld c, e
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
    rst $20
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    rrca
    nop
    ld a, a
    nop
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ret z

    scf
    ld hl, sp+$07
    xor $01
    nop
    ld b, d
    nop
    ld a, [c]
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
    db $fc
    nop
    db $f4
    nop

jr_052_64db:
    db $e4
    nop
    ld l, h
    nop
    ld b, h
    cp e
    nop
    rst $38
    nop
    ei
    nop
    rst $28
    db $10
    cp l
    ld b, d
    call c, $8c23
    ld [hl], e
    add h
    ld a, e
    add h
    ld a, e
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    ld [hl], a
    ld [$08f7], sp
    rst $30
    ld [$48f7], sp
    or a
    ld [$08f7], sp
    rst $30
    ld c, b
    or a
    adc b
    ld [hl], a
    jr nc, jr_052_64db

    or c
    ld c, [hl]
    or c
    ld c, [hl]
    pop de
    ld l, $b1
    ld c, [hl]
    rst $30
    ld [$04fb], sp
    di
    inc c
    rst $38
    nop
    ld a, e
    add h
    rst $38
    nop
    rst $10
    ld [$08f7], sp
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
    rra
    nop
    ei
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    db $10
    rst $38
    ldh a, [$f8]
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    add b
    nop
    ret nz

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld sp, hl
    nop
    db $fd
    ld [bc], a
    dec e
    ld [bc], a
    dec e
    ld [bc], a
    inc h
    ld [bc], a
    ld b, h
    ld [bc], a
    ld b, h
    ld [bc], a
    jr z, @+$04

    ld de, $f102
    ld [bc], a
    ld de, $d1e2
    ld h, $16
    ldh [rNR21], a
    ldh [$96], a
    ldh [$96], a
    ldh [$96], a
    ldh [$96], a
    ldh [$96], a
    ldh [$96], a
    ldh [$96], a
    ldh [$96], a
    ldh [$96], a
    ldh [$96], a
    ldh [$96], a
    ldh [$96], a
    ldh [rNR21], a
    ldh [$96], a
    ld h, b
    ld d, $e0
    sub $e0
    sub $e0
    sub $e0
    sub $e0
    sub $e0
    sub $e0
    sub $e0
    sub $e0
    sub $e0
    sub $e0
    sub $e0
    or $f0
    cp $f8
    cp [hl]
    ld hl, sp-$02
    db $fc
    ld h, $fc
    add [hl]
    ld a, [hl]
    add d
    ld a, [hl]
    ld [c], a
    ld e, $f2
    ld c, $e6
    ld e, $96
    ld a, [hl]
    ld a, $fe
    ld bc, $001e
    rra

jr_052_65c4:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, [hl]
    nop
    ld a, [hl]
    nop
    ld a, $00
    ld a, $ff
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
    cp a
    ld b, b
    rst $28
    db $10
    xor a
    ld d, b
    sbc a
    ld h, b
    sub a
    ld l, b
    adc a
    ld [hl], b
    add a
    ld a, b
    add c
    ld a, [hl]
    adc d
    ld [hl], l
    adc e
    ld [hl], h
    adc l
    ld [hl], d
    sub a
    ld l, b
    rst $30
    ld [$40bf], sp
    reti


    jr nz, jr_052_65c4

    ld b, b
    ld a, e
    add b
    ei
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    ccf
    nop
    rra
    nop
    ld a, a
    nop
    ccf
    nop
    rra
    nop
    dec hl
    nop
    sbc a
    nop
    sbc e
    nop
    sub a
    nop
    cp a
    nop
    or $00
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    ld h, a
    nop
    daa
    nop
    daa
    rst $38
    rst $38
    ld a, [hl]
    cp $fe
    cp $fe
    cp $6e
    ld a, [hl]
    ld l, $3e
    ld l, $3e
    ld l, [hl]
    ld a, [hl]
    ld l, [hl]
    ld a, $e6
    ld a, $ee
    ld a, $ee
    ld a, $ee
    ld a, $ee
    ld a, $ee
    ld a, $ee
    ld a, $ee
    ld a, $ee
    ld a, $6e
    ld a, $ee
    ld a, $ee
    ld a, $ef
    ld a, $ff
    inc a
    rst $28
    inc a
    ld a, h
    inc a
    ld e, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld e, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    ld a, h
    call c, $fc7c
    ld a, h
    call c, $dc7c
    ld a, h
    db $fc
    ld a, h
    call c, $dc7c
    ld a, h
    ret c

    ld a, b
    ret c

    ld a, b
    ret c

    ld a, b
    ret c

    ld a, b
    ret c

    ld a, b
    ret c

    ld a, b
    sbc b
    ld a, b
    sbc b
    ld a, b
    sbc b
    ld hl, sp+$67
    ld h, b
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld b, a
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ld c, a
    ld b, b
    ldh a, [$f0]
    ldh a, [$f0]
    pop af
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f1]
    ldh a, [$f3]
    ldh a, [$f7]
    ldh a, [rIF]
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    ld e, a
    rra
    rra
    rra
    rra
    rra
    ld e, a
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
    rra
    rra
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
    rla
    rlca
    rla
    rlca
    rla
    rlca
    rra
    rlca
    ccf
    rlca
    rra
    rlca
    rra
    rlca
    ccf
    rlca
    ld a, e
    inc bc
    dec sp
    inc bc
    ccf
    inc bc
    cp a
    inc bc
    cp a
    inc bc
    cp a
    inc bc
    cp l
    ld bc, $01bf
    cp a
    ld bc, $01bf
    cp a
    ld bc, $00be
    sbc [hl]
    nop
    ldh a, [rIF]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    ld a, h
    inc bc
    inc a
    inc bc
    ld a, $01
    ld a, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld e, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, $01
    ld a, [hl]
    ld bc, $037c
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
    db $fc
    inc bc
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
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
    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1211
    inc de
    inc d
    add hl, bc
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    dec d
    dec d
    ld d, $17
    jr jr_052_67ff

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_052_680f

    ld a, [bc]
    ld a, [bc]
    dec d
    dec d
    dec d
    ld [hl+], a
    inc hl
    dec d
    inc h
    dec h
    ld h, $27
    jr z, jr_052_6825

    ld a, [hl+]
    dec hl
    inc l

jr_052_67ff:
    ld hl, $1515
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec l
    ld l, $2f
    jr nc, jr_052_683f

    ld [hl-], a

jr_052_680f:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    dec d
    jr c, jr_052_6857

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b

jr_052_6825:
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
    rla
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
    dec d
    ld d, [hl]
    ld d, a
    ld e, b

jr_052_683f:
    ld e, c
    rla
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    dec d
    dec d
    dec d
    dec d
    dec d
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    rla
    ld e, d
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b

jr_052_6857:
    ld l, c
    dec d
    dec d
    dec d
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    rla
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    dec d
    dec d
    dec d
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    rla
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    dec d
    dec d
    add e
    add h
    add l
    add [hl]
    add a
    rla
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
    rla
    sub a
    sbc b
    sbc c
    rla
    sbc d
    sbc e
    sbc h
    sbc l
    dec d
    dec d
    sbc [hl]
    sbc a
    and b
    and c
    and d
    rla
    and e
    and h
    and l
    rla
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
    ld a, [bc]
    ld a, [bc]
    cp a
    ret nz

    pop bc
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, Jump_000_0a0a

    ld a, [bc]
    ld a, [bc]
    set 1, h
    call $cfce
    ret nc

    pop de
    jp nc, $0ad3

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    call nc, $d6d5
    rst $10
    ret c

    reti


    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jp c, $dcdb

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    nop
    rlca
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
    nop
    ld b, $07
    ld b, $01
    ld bc, $0004
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
    ld bc, $0706
    nop
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
    ld b, $07
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
    ld bc, $0101
    ld b, $07
    rlca
    rlca
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    nop
    nop
    ld bc, $0005
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0202
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
    ld bc, $0202
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
    ld [bc], a
    ld bc, $0202
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
    ld bc, $0202
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
    ld [bc], a
    ld [bc], a
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0202
    ld [bc], a
    ld bc, $0301
    ld [bc], a
    inc bc
    ld bc, $0301
    inc bc
    inc bc
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0600
    rlca
    rlca
    rlca
    nop
    nop
    nop
    nop
    ld bc, $0101
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
    rrca
    rrca
    rlca
    rlca
    add a
    add a
    add a
    add a
    add e
    add e
    jp $c3c3


    jp $e1e1


    ld e, $ff
    ld e, $ff
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
    rrca
    pop af
    ret nz

    rst $38
    add b
    rst $38
    add h
    rst $30
    sub [hl]
    db $e3
    sub $e3
    jp $e1f3


    pop af
    pop hl
    ld hl, sp-$10
    db $fc
    ld hl, sp-$02
    db $fc
    rst $38
    ld [$c0f1], a
    ldh a, [$d4]
    ldh [$80], a
    db $e4
    adc b
    ret nz

    ret nc

    ret z

    ret nz

    ret nc

    ldh [$d0], a
    ldh [$f8], a
    ldh a, [$f8]
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$08
    db $fc
    ld hl, sp-$02
    db $fc
    db $fc
    cp $fe
    db $fd
    rst $38
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    scf
    scf
    rra
    sbc a
    rra
    sbc a
    dec e
    db $dd
    rrca
    rst $08
    rrca
    rst $28
    rlca
    rst $20
    rlca
    rst $30
    inc bc
    di
    inc bc
    ei
    ld bc, $8179
    ld a, c
    add b
    inc a
    ret nz

    inc a
    ret nz

    ld e, $e0
    ld e, $e0
    rrca
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$03
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rra
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$87]
    ld hl, sp-$79
    ld hl, sp+$7c
    cp a
    ld a, h
    cp a
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
    add b
    nop
    ret nz

    and b
    ld b, b
    ld b, b
    jr nz, jr_052_6b2f

jr_052_6b2f:
    jr nc, jr_052_6b51

    db $10
    ld [$2c10], sp
    db $10
    inc l
    db $10
    ld c, [hl]
    jr nc, jr_052_6b51

    ld h, b
    ld b, d
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0300
    inc b
    inc bc
    nop
    rlca
    cp b
    rlca
    nop
    rrca
    nop
    rst $38
    nop
    rst $38
    rst $38

jr_052_6b51:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    cp a
    rra
    sbc a
    rra
    rst $18
    rrca
    rst $08
    rrca
    rst $28
    rlca
    rst $20
    rlca
    rst $30
    inc bc
    di
    inc bc
    ld a, e
    add c
    ld a, c
    add c
    dec a
    ret nz

    inc a
    ret nz

    ld e, $e0
    ld e, $e0
    ld c, $f0
    rrca
    ldh a, [rTAC]
    ld hl, sp+$07
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rrca
    nop
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
    nop
    nop
    nop
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
    rlca
    nop
    rrca
    db $10
    rra
    jr nc, jr_052_6c0d

    ld hl, sp-$01
    rst $00
    ld hl, sp-$39
    ld hl, sp-$3d
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    pop hl
    cp $71
    cp $70
    rst $38
    adc a
    adc a
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    rst $00
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    db $e3
    pop af
    pop af
    pop af
    pop af
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    db $eb
    rst $38

jr_052_6c0d:
    rst $38
    cp $fe
    db $fd
    db $fd
    db $fd
    db $fd
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    dec e
    dec e
    ld e, $1e
    ld c, $0e
    ld c, $8e
    ld b, $86
    ld [bc], a
    jp nz, $c707

    inc bc
    jp $e303


    ld bc, $01e1
    ld [hl], c
    add c
    ld [hl], c
    add b
    jr c, @-$3e

    jr c, @-$3e

    inc e
    ldh [rNR32], a
    ldh [$0e], a
    ldh a, [$0e]
    ldh a, [$0e]
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
    nop
    ld a, a
    nop
    rra
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
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$8f], a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$cf]
    ldh a, [$c7]
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$1d
    db $fc
    db $e3
    db $fc
    ld [hl], e
    db $fc
    ld [hl], c
    cp $71
    cp $39
    cp $38
    rst $38
    cp b
    rst $38
    ld e, h
    rst $38
    sbc h
    rst $38
    call c, $aeff
    rst $38
    ld c, [hl]
    rst $38
    sub b
    sub b
    ret z

    ret z

    adc b

jr_052_6cc5:
    adc b
    ret z

    jp z, $c4c4

    call nz, $a2c4
    and e
    ld b, d
    ld b, d
    ld b, b
    ld b, b
    ld [$0908], sp
    add hl, bc
    inc b
    inc b
    add h
    add h
    add h
    add h
    jp nz, $c2c2

    jp nz, $e1e1

    ld [hl], c
    ld [hl], c
    ld a, b
    ld a, b
    ld a, b

jr_052_6ce7:
    ld a, b
    ld a, h
    ld a, h
    inc [hl]
    inc [hl]
    ld a, $3e
    ld d, $16
    ld [bc], a
    ld [bc], a
    inc bc
    add e
    inc bc
    jp $c101


    ld bc, $01e1
    pop hl
    nop
    ldh a, [$80]
    ld [hl], b
    add b
    ld [hl], b
    ret nz

    jr c, jr_052_6cc5

    jr c, jr_052_6ce7

    inc e
    ldh [rNR32], a
    ldh a, [$0c]
    ldh a, [$0e]
    ld hl, sp+$07
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
    add b
    rst $38
    add b
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    sbc a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$cf], a
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [$ef]
    ldh a, [$e7]
    ld hl, sp-$19
    ld hl, sp+$77
    db $fc
    rst $30
    db $fc
    rst $30
    db $fc
    ei
    db $fc
    ei
    cp $fb
    cp $ff
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
    ld [bc], a
    nop
    ld [bc], a
    nop
    inc bc
    nop
    ld bc, $8180
    add b
    add c
    add b
    add b
    add b
    add b
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
    nop
    inc c
    nop
    inc b
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
    ret nz

    nop
    ldh [$80], a
    ld h, b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
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
    rst $38
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, $1f
    ld e, $1f
    ld e, $9e
    inc e
    ld e, $1c
    ld [$0008], sp
    nop
    nop
    inc b
    db $10
    inc d
    ld [$2a08], sp
    ld a, [hl+]
    inc d
    inc d
    inc d
    inc d
    ld a, $3e
    ld e, $1e
    ld a, h
    ld a, h
    inc a
    inc a
    inc a
    inc a
    inc a
    inc a
    jr c, jr_052_6e34

    ld a, b
    ld a, b
    ld a, b
    ld a, b
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
    nop
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0102
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
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00

jr_052_6e34:
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

    rra
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
    ldh a, [rTAC]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
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
    nop
    rst $38
    nop
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
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh [$f7], a
    ret nz

    rst $30
    ret nz

    rst $30
    ret nz

    rst $20
    add b
    rst $28
    add b
    nop
    add $00
    adc $00
    add a
    nop
    adc h
    nop
    ld [$0800], sp
    nop
    jr jr_052_6edf

jr_052_6edf:
    db $10
    db $eb

jr_052_6ee1:
    nop
    rst $00

jr_052_6ee3:
    nop
    rst $08
    nop
    rst $08
    nop
    rst $18
    nop
    rst $38
    nop
    rst $38
    nop
    xor $11
    db $ec
    inc de
    call z, $c433
    dec sp
    adc b
    ld [hl], a
    add h
    ld a, e
    nop
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    rst $38
    rst $38
    ld bc, $00ff

jr_052_6f05:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh [$08], a
    ldh [rP1], a
    ldh [$80], a
    ld h, b
    add b
    ld h, b
    add b
    ld [hl], b
    ret nz

    jr nc, jr_052_6ee1

    jr nc, jr_052_6ee3

    jr nc, jr_052_6f05

    db $10
    ldh [rNR10], a
    ldh [rNR10], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
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
    add b
    rlca
    add b
    rlca
    add b
    rlca
    add b
    ld b, a
    add b
    rlca
    add b
    inc hl
    add b
    ld h, e
    add b
    inc hl
    add b
    inc sp
    ret nz

    dec sp
    ret nz

    inc sp
    ret nz

    dec sp
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ret nz

    rra
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
    db $fc
    inc bc
    db $fc
    inc bc
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    di
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ei
    nop
    or $00
    cp $00
    xor [hl]
    nop
    xor [hl]
    nop
    rst $08
    nop
    rlc b
    ld e, d
    ld h, l
    nop
    ld h, l
    nop
    rst $00
    nop
    jp nc, $fe00

    nop
    cp d
    inc b
    cp d
    inc b
    xor a
    ld d, b
    dec sp
    ld b, h
    ld d, a
    jr z, jr_052_6fec

    ld e, b
    sub a
    ld l, b
    rrca
    ldh a, [rTAC]
    ld hl, sp+$27
    ret c

    rla
    add sp, $27
    ret c

    ld bc, $04fe
    ei
    nop
    rst $38
    ld bc, $02fe
    db $fc
    rlca
    ld hl, sp+$06
    ld sp, hl
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

jr_052_6fec:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $146a
    dec hl
    inc d
    ccf
    nop
    ld a, a
    nop
    scf
    nop
    call nz, $be00
    ld b, b
    ccf
    ret nz

    ld e, $c0
    ccf
    ret nz

    dec sp
    ret nz

    cpl
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    cp [hl]
    ld b, b
    adc d
    ld h, b
    add e
    ld h, b
    adc l
    ld h, b
    adc [hl]
    ld h, b
    and l
    ld b, b
    xor c
    ld b, b
    rrca
    ld h, b
    dec bc
    ld h, b
    ld l, e
    nop
    ld h, d
    nop
    ld h, d
    nop
    ld [hl+], a
    nop
    ld [hl+], a
    nop
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop

jr_052_7045:
    cpl
    nop
    scf
    nop
    ld d, a
    nop
    ld b, a
    nop
    ld a, a
    nop
    ld e, a
    nop
    rst $30
    nop
    xor a
    nop
    xor a
    nop
    dec bc
    nop
    ld e, [hl]
    nop
    ld e, $00
    inc e
    nop
    add hl, de
    nop

jr_052_7061:
    inc sp
    nop
    jr nc, jr_052_7065

jr_052_7065:
    add hl, hl
    nop
    ld hl, $2000
    nop
    ld sp, $4900
    nop
    add hl, bc
    push bc
    nop
    rst $00
    nop
    call z, $df01
    nop
    ei
    inc b
    db $dd
    ld [hl+], a
    jr c, jr_052_7045

    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    add hl, sp
    add $39
    add $38
    rst $00
    cp b
    ld b, a
    ld b, b
    rlca
    ret nz

    rlca
    and b
    ld b, a
    xor b
    ld b, a
    and b
    ld b, a
    jr z, jr_052_7061

    and b
    ld b, a
    and b
    ld b, a
    and h
    ld b, e
    and h
    ld b, e
    add h
    ld h, e
    and h
    ld b, e
    call nz, $a423
    ld b, e
    call nz, $6423
    inc bc
    add $21
    and $01
    and $01
    and $01
    and $01
    and a
    nop
    and a
    nop
    and a
    nop
    ld b, a
    nop
    nop
    ld hl, sp+$00
    ei
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
    cp $00
    cp $00
    db $fc
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
    cp a
    nop
    cp a
    nop
    ccf
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
    jr nz, jr_052_7112

jr_052_7112:
    nop
    nop
    add hl, de
    nop
    dec a
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    di
    inc c
    xor $11
    rst $30
    ld [$0ef1], sp
    db $ec
    inc de
    db $eb
    inc d
    ld b, d
    cp l
    ld [$08f7], sp
    rst $30
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
    db $10
    ldh [rTAC], a
    ldh [rNR10], a
    rst $20
    nop
    rst $20
    nop
    rst $20
    db $10
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    nop
    rst $20
    add b
    ld h, a
    and d
    ld b, l
    and a
    ld b, b
    rst $20
    nop
    db $e3
    nop
    ld h, c
    nop
    ld b, b
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
    rrca
    nop
    jr jr_052_719f

    inc bc
    nop
    nop
    nop
    nop
    nop
    nop

jr_052_719f:
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
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop
    db $fd
    nop

jr_052_71c7:
    inc e
    nop
    add hl, de
    nop
    jr jr_052_71cd

jr_052_71cd:
    jr c, jr_052_71cf

jr_052_71cf:
    inc d
    rst $28

jr_052_71d1:
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $28
    nop
    rst $00
    jr nz, jr_052_71c7

    ld bc, $00ef
    cp h
    ld b, e
    sub h
    ld l, e
    jr jr_052_71d1

    ld bc, $21fe
    sbc $81
    ld a, [hl]
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
    nop
    rlca
    nop
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc sp
    nop
    ldh a, [rP1]
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
    dec b
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$01
    ld hl, sp+$00
    ld sp, hl
    ld bc, $09f8
    ldh a, [$09]
    ldh a, [$09]
    ldh a, [$31]
    ret nz

    pop af
    nop
    ldh a, [rP1]
    add c
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_052_7250:
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], b
    add b
    ld sp, hl
    nop
    nop
    ld bc, $0100
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_052_727c:
    nop
    ei
    nop
    rst $38
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $30
    nop
    cp a
    nop
    cp l
    nop
    or c
    nop
    ld sp, $3100
    nop
    ld sp, $3500
    nop
    dec l
    nop
    ld h, l
    nop
    ld h, c
    nop
    daa
    nop
    ld [hl], l
    adc h
    nop
    cp [hl]
    nop
    xor a
    db $10
    ld [$f714], a
    ld [$54ab], sp
    xor e
    ld d, h
    db $db
    inc h
    db $db
    inc h
    rst $10
    jr z, jr_052_727c

    jr c, jr_052_7250

    ld h, [hl]
    dec bc
    db $f4
    add hl, bc
    or $23
    call c, $fa05
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
    nop
    rrca
    ldh a, [rTAC]
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$8e]
    ld [hl], b
    rrca
    ld [hl], b
    rrca
    ld [hl], b
    adc [hl]
    ld [hl], b
    adc [hl]
    ld [hl], b
    adc [hl]
    ld [hl], b
    adc [hl]
    ld [hl], b
    sub [hl]
    ld l, b
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $28
    rrca
    rst $30
    rra
    rst $20
    rrca
    di
    rra
    db $e3
    rra
    pop hl
    dec a
    pop bc
    cpl
    ret nz

    ld [hl-], a
    pop bc
    ld [hl+], a
    pop bc
    ld h, d
    add c
    jp $c200


    ld bc, $01c2
    add c
    ld [bc], a
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
    rlca
    nop
    dec b
    nop
    inc bc
    nop
    ld bc, $0200
    nop
    add c
    nop
    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp l
    nop
    db $fd
    nop
    cp l
    nop
    cp a
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
    ld a, h
    nop
    db $fc
    nop
    db $fc
    nop
    inc e
    nop
    ld e, h
    nop
    inc e
    nop
    sbc h
    nop
    ld a, h
    ld bc, $011d
    dec a
    ld bc, $033d
    rra
    inc bc
    rra
    inc bc
    rra
    inc bc
    rlca
    inc bc
    rrca
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
    nop
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$f0], a
    ldh [$f8], a
    ldh [$fc], a
    ldh [$fe], a
    rst $38
    rra
    ld a, a
    rra
    ld a, a
    rra
    ccf
    rra
    ld a, a
    ccf
    ld a, a
    ccf
    rst $38
    ccf
    rst $38
    ccf
    nop
    ld bc, $003e
    ld b, c
    ld a, $7f
    nop
    ld [bc], a
    ld b, b
    inc e
    ld b, d
    inc e
    ld b, d
    ld a, d
    inc b
    rst $20
    ld h, c
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
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    cp $1e
    cp $1e
    cp $1e
    cp $1e
    db $fd
    inc e
    db $fd
    inc e
    db $fd
    inc e
    ld a, l
    inc e
    ld a, c
    jr jr_052_74ba

    jr jr_052_74ba

    jr jr_052_74bc

    jr jr_052_74b8

    db $10
    ld [hl], a
    db $10
    ld [hl], d
    db $10
    ld h, d
    nop
    ld h, $00
    ld c, h
    nop
    ld bc, $010d
    dec c
    ld bc, $035d
    dec de
    inc bc
    sbc e
    inc bc
    dec de
    rlca
    scf
    rlca
    scf
    ld b, $36
    ld c, $7e
    ld c, $4e
    inc c
    inc c
    inc c
    dec c
    inc d
    dec d
    jr jr_052_7487

    db $10
    inc de
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

jr_052_7487:
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
    ld bc, $0100
    nop
    ld bc, $0102
    ld [bc], a
    inc bc
    nop
    inc bc
    nop
    inc bc
    nop
    inc bc
    inc b
    adc a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_052_74b8:
    rst $38
    nop

jr_052_74ba:
    rst $38
    nop

jr_052_74bc:
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
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    add e
    ccf
    jp $c33f


    rra
    rst $20
    rlca
    rst $38
    rlca
    rst $38
    ld hl, sp+$07
    pop af
    rrca
    pop af
    rrca
    pop af
    rrca
    di
    rrca
    db $e3
    rra
    db $e3
    rra
    and $1f
    and $1f
    adc $3f
    adc $3f
    call c, $dc3f
    ccf
    sbc h
    ld a, a
    cp h
    ld a, a
    ld hl, sp+$7f
    ld hl, sp+$7f

jr_052_7502:
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ld e, $5e
    ld e, $5e
    ld a, $7e
    inc a
    ld a, l
    inc a
    cp l
    inc a
    cp l
    ld a, h
    rst $38
    ld a, b
    ei
    ld a, b
    ld a, e
    ld [hl], b
    ld [hl], a
    ld [hl], b
    ld [hl], a
    ldh a, [$f7]
    ldh [$ef], a
    ldh [$ef], a
    ldh [$ef], a
    ret nz

    rst $08

jr_052_7530:
    ret nz

    rst $18
    ret nz

    rst $18
    add b
    cp a
    add c
    cp [hl]
    add c
    cp [hl]

jr_052_753a:
    ld bc, $033e
    ld a, h

jr_052_753e:
    inc bc
    ld a, h

jr_052_7540:
    inc bc
    ld a, h
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$79], a
    ld b, $79
    ld b, $79
    ld b, $73
    inc c
    di
    inc c
    di
    inc c
    di
    inc c
    db $e3
    inc e
    rst $20
    jr @-$17

    jr @-$17

    jr @-$17

    jr jr_052_7530

    jr c, jr_052_753a

    jr nc, @-$2f

    jr nc, jr_052_753e

    jr nc, jr_052_7540

    jr nc, jr_052_7502

    ld [hl], b
    adc a
    ld [hl], b
    sbc a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld h, b
    ld de, $0ee1
    rst $28
    nop
    sbc a
    inc bc
    inc a
    rrca
    jr nc, jr_052_7596

    ld de, $010f
    rrca
    ld bc, $030f
    rrca
    inc bc
    rrca
    inc bc
    ld c, $02
    inc e
    nop

jr_052_7596:
    db $10
    ld bc, $0720
    ld b, c
    rrca
    ld b, e
    rra
    rst $00
    rra
    rst $08
    rla
    adc a
    scf
    adc [hl]
    ld a, $8e
    ld a, $86
    inc a
    add $3c
    ldh a, [$3e]
    pop af
    ld a, $f8
    ld a, $fc
    inc a

jr_052_75b4:
    db $fc
    jr c, jr_052_75b4

    ld a, b
    db $fd
    ld a, b
    db $fd
    ld a, c
    db $fd
    ld a, c
    rst $38
    ld sp, hl
    di
    di
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $20
    rst $28
    rst $28
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    rst $08
    sbc a
    sbc a
    sbc a
    sbc a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, $3e
    ld a, $3e
    ld a, [hl]
    ld a, [hl]
    ld a, h
    ld a, l
    ld a, h
    ld a, l
    ld a, h
    ld a, l
    db $fc
    db $fd
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$05
    ld hl, sp-$01
    ldh a, [$f7]
    ldh a, [$f7]
    ldh a, [rIE]
    ldh [$ef], a
    ldh [$ef], a
    ldh [rIE], a
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $38
    add b
    cp a
    add b
    cp a
    nop
    ccf
    ld bc, $017e
    ld a, [hl]
    ld bc, $037e
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
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
    cp $02
    cp $02
    cp $06
    cp $06
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc b
    db $fc
    inc c
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$08
    ld hl, sp+$18
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [rNR10]
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [$30]
    ldh [rNR41], a
    pop hl
    ld h, c
    pop hl
    ld h, c
    pop hl
    ld h, c
    ld h, c
    pop hl
    inc bc
    db $e3
    rrca
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $00
    rst $18
    rst $00
    rst $18
    add a
    sbc a
    add a
    sbc a
    rrca
    ccf
    rrca
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $18
    rst $08
    rst $18
    adc a
    cp a
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ccf
    cp $3e
    cp $3e
    cp $3e
    db $fc
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, l
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$05
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f7]
    ldh a, [$f7]
    ldh [$e7], a
    ldh [$ef], a
    ldh [$ef], a
    ret nz

    rst $08
    ret nz

    rst $18
    ret nz

    rst $18
    ret nz

    rst $18
    add b
    sbc a
    add b
    cp a
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
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
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
    rst $38
    nop
    rst $38
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
    rra
    rra
    rra
    rra
    rra
    rra
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
    ld a, a
    ld a, a
    ld a, [hl]
    ld a, [hl]
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    db $fd
    db $fc
    db $fd
    ld hl, sp-$07
    ld hl, sp-$05
    ld hl, sp-$05
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f7]
    ldh [$e7], a
    ldh [$e7], a
    ldh [$ef], a
    ret nz

    rst $08
    ret nz

    rst $08
    ret nz

    rst $18
    ret nz

    rst $18
    add b
    sbc a
    add b
    cp a
    add b
    cp a
    nop
    ccf
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
    ld bc, $01fe
    cp $01
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
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
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f3]
    ldh a, [$f7]
    ldh [$e7], a
    ldh [$e7], a
    ldh [$e7], a
    ret nz

    rst $08
    ret nz

    rst $08
    ret nz

    rst $08
    add b
    sbc a
    add b
    sbc a
    add b
    sbc a
    add b
    cp a
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
    rst $38
    nop
    rst $38
    nop
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
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
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
    cp $03
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
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

    ld a, a
    add b
    ld a, a
    add b
    rst $38
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    ld b, $06
    rlca
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $06
    rrca
    ld b, $06
    ld b, $06
    ld b, $06
    ld [$0808], sp
    db $10
    ld de, $0612
    inc de
    inc d
    dec d
    ld d, $17
    jr @+$08

    ld b, $06
    add hl, de
    ld a, [de]
    dec de
    ld [$1d1c], sp
    ld e, $06
    ld b, $06
    rra
    jr nz, @+$23

    ld b, $06
    ld b, $06
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $06
    ld b, $06
    ld b, $27
    jr z, @+$2b

    ld b, $06
    ld b, $06
    ld b, $06
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    dec b
    ld b, $30
    ld sp, $0606
    ld b, $06
    ld b, $32
    inc sp
    inc [hl]
    dec [hl]
    ld [$3736], sp
    jr c, jr_052_78b4

    ld a, [hl-]
    ld b, $06
    ld b, $06
    ld b, $06
    dec sp
    inc a
    dec a
    ld [$3e08], sp
    ccf
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, $06
    ld b, $44
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
    ld b, $06
    ld b, $51
    ld d, c
    ld d, c
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
    ld d, c
    ld d, c
    ld e, [hl]
    ld e, a

jr_052_78b4:
    ld h, b
    ld h, c
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld b, $06
    ld b, $06
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
    ld b, $06
    ld b, $06
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
    ld b, $06
    ld b, $06
    ld d, c
    add b
    add c
    ld b, $82
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    ld b, $06
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    ld b, $8f
    sub b
    sub c
    ld b, $92
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    ld b, $06
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
    ld d, c
    ld d, c
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

    ld b, $c1
    jp nz, $c4c3

    push bc
    add $c7
    ret z

    ret


    jp z, $cccb

    call $cfce
    ret nc

    pop de
    jp nc, $0606

    ld b, $d3
    call nc, $d6d5
    rst $10
    ret c

    dec [hl]
    ld d, c
    reti


    jp c, $dcdb

    db $dd
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
    dec b
    ld [bc], a
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
    dec b
    dec b
    dec b
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
    dec b
    ld [bc], a
    dec b
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
    nop
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
    nop
    nop
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
    ld [bc], a
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
    ld bc, $0001
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0301
    ld [bc], a
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0100
    ld bc, $0301
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0303
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
    ld bc, $0000
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
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    nop
    ld c, b
    nop
    ld c, h
    nop
    inc b
    nop
    jr nz, jr_052_7a99

jr_052_7a99:
    add h
    nop
    add d
    nop
    sub d
    nop
    ld [de], a
    nop
    ld c, d
    nop
    ld c, b
    nop
    ld hl, $2100
    nop
    jr nz, jr_052_7aab

jr_052_7aab:
    nop
    nop
    jr nz, jr_052_7aaf

jr_052_7aaf:
    jp nc, $d000

    nop
    ret nc

    nop
    ld h, b
    nop
    ld l, c
    nop
    add c
    nop
    add l
    nop
    adc h
    nop
    call z, $c600
    nop
    jp nz, Jump_052_4200

    nop
    db $e3
    nop
    and e
    nop
    or c
    nop
    db $d3
    nop
    sub $00
    rst $20
    nop
    db $e3
    nop
    ei
    nop
    ei
    nop
    ld sp, hl
    nop
    db $fd
    nop
    db $ec
    nop
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
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    ld b, b
    nop
    jr nz, jr_052_7b07

jr_052_7b07:
    and b
    nop
    and b
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    inc b
    nop
    add d
    nop
    add b
    nop
    add b
    nop
    nop
    nop
    ld [$0800], sp
    nop
    ld b, b
    nop
    and h
    nop
    and b
    nop
    or b
    nop
    and b
    nop
    jp c, $da00

    nop
    ld c, b
    nop
    jp hl


    nop
    rst $28
    nop
    xor [hl]
    nop
    or [hl]
    nop
    rst $10
    nop
    ld d, e
    nop
    ld a, e
    nop
    ld l, e
    nop
    dec hl
    nop
    cpl
    nop
    sub l
    nop
    sub a
    nop
    jp c, $ca00

    nop
    db $eb
    nop
    db $ed
    nop
    db $fd
    nop
    push af
    nop
    rst $30
    nop
    cp $00
    ld a, [$ff00]
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
    rst $38
    nop
    rst $38
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
    and b
    nop
    add b
    nop
    ld b, b
    nop
    ld b, b
    nop
    ld h, c
    nop
    ld [hl], e
    nop
    ld a, c
    nop
    cp [hl]
    nop
    cp a
    nop
    rst $18
    nop
    rst $18
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    cp a
    nop
    cp a
    nop
    rst $18
    nop
    sbc a
    nop
    adc a
    nop
    adc a
    nop
    adc a
    nop
    rst $08
    nop
    rst $08
    nop
    rst $20
    nop
    rst $20
    nop
    db $e3
    nop
    db $e3
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
    cp $ff
    db $fd
    cp $ff
    db $fc
    cp $fc
    db $fc
    rst $38
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
    db $e4
    inc bc
    db $e4
    inc bc
    ld [c], a
    ld bc, $01f2
    ld a, [c]
    ld bc, $01f2
    di
    nop
    ld sp, hl
    nop
    nop
    ld b, $00
    ld b, $00
    ld b, $00
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
    inc bc
    nop
    ld bc, $0100
    nop
    ld bc, $0100
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
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    pop bc
    nop
    pop bc
    nop
    pop hl
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh a, [rP1]
    db $f4
    nop
    ldh a, [rP1]
    ld a, [c]
    nop
    ei
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
    di
    ld hl, sp-$08
    ldh a, [$f8]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$02
    ld sp, hl
    cp $fd
    call $0ffe
    rst $38
    ld [hl], e
    adc a
    adc [hl]
    ld [hl], c
    ld l, e
    add h
    ret nz

    inc bc
    ld b, c
    nop
    ld bc, $a300
    nop
    cp a
    ret nz

    rst $08
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    add b
    ld a, a
    add b
    ld a, a
    and b
    ld e, a
    add b
    ld a, a
    jr nz, jr_052_7d21

    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    ld b, b
    ccf
    nop
    ccf
    jr nz, jr_052_7ced

    jr z, jr_052_7ce7

    jr nz, jr_052_7cf1

    nop
    rra
    sbc b
    rlca
    sub h
    dec bc
    sbc h
    inc bc
    sbc [hl]
    ld bc, $018e
    adc $01
    nop
    jr nc, jr_052_7ce3

jr_052_7ce3:
    jr nc, jr_052_7ce5

jr_052_7ce5:
    jr nc, jr_052_7ce7

jr_052_7ce7:
    jr jr_052_7ce9

jr_052_7ce9:
    jr jr_052_7ceb

jr_052_7ceb:
    jr jr_052_7ced

jr_052_7ced:
    jr jr_052_7cef

jr_052_7cef:
    inc e
    nop

jr_052_7cf1:
    adc h
    nop
    adc h
    nop
    adc h
    nop
    adc h
    nop
    adc $00
    and $00
    ld h, [hl]
    nop
    ld h, [hl]
    sbc a
    ld a, a
    rrca
    rrca
    rla
    rrca
    add e
    rra
    db $e3
    rra
    pop hl
    rra
    cp c
    ld b, a
    add hl, de
    rst $20
    sub [hl]
    ld [$8c53], sp
    ld [hl], e
    inc c
    inc hl
    inc e
    ld sp, $e10e
    ld c, $69
    add [hl]
    and h
    ld b, e
    adc e

jr_052_7d21:
    ld e, h
    cp a
    ld c, b
    cp c
    ld c, [hl]
    ld [hl], a
    adc h
    dec de
    db $e4
    db $eb
    db $f4
    rst $30
    ld hl, sp-$08
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    inc b
    ei
    ld b, h
    cp e
    ld b, [hl]
    cp c
    ld b, [hl]
    cp c

jr_052_7d40:
    add $39
    ld b, [hl]
    cp c
    db $e3
    inc e
    rst $20
    jr jr_052_7d40

    ld [$0cf3], sp
    di
    inc c
    di
    inc c
    di
    inc c
    ei
    inc b
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
    nop
    nop
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
    ret nz

    nop
    ret nz

    nop
    ret nz

    nop
    call nz, $e400
    nop
    and $00
    and $00
    and $00
    ld a, [c]
    nop
    di
    nop
    di
    nop
    di
    nop
    ld sp, hl
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
    ccf
    nop
    ccf
    nop
    rst $38
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
    ld [bc], a
    db $fd
    inc bc
    db $fc
    rlca
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    dec bc
    db $f4
    ld l, e
    sub h
    ld l, e
    sub h
    xor e
    ld d, h
    cp e
    ld b, h
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
    jr nc, jr_052_7df7

jr_052_7df7:
    jr nc, jr_052_7df9

jr_052_7df9:
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
    ld h, b
    nop
    jr nz, jr_052_7e09

jr_052_7e09:
    jr nz, jr_052_7e0b

jr_052_7e0b:
    jr nc, jr_052_7e0d

jr_052_7e0d:
    jr nc, jr_052_7e0f

jr_052_7e0f:
    jr nc, jr_052_7e11

jr_052_7e11:
    ld [hl], b
    nop
    jr nc, jr_052_7e15

jr_052_7e15:
    ld [hl], c
    nop
    ld [hl], b
    nop
    ld a, c
    nop
    ld a, c
    nop
    cp l
    nop
    dec a
    nop
    inc a
    nop
    inc a
    nop
    cp [hl]
    nop
    cp h
    nop
    sbc [hl]
    nop
    cp [hl]
    nop
    sbc h
    nop
    sbc $00
    sbc $00
    sbc $00
    cp $00
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
    nop
    rst $38
    ld bc, $13fe
    db $ec
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    dec bc
    db $f4
    dec sp
    call nz, $c03f
    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

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
    nop
    nop
    nop
    stop
    nop
    nop
    ld [$0900], sp
    nop
    add hl, bc
    nop
    add hl, bc
    nop
    stop
    inc e
    nop
    jr jr_052_7e85

jr_052_7e85:
    ld e, $00
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld a, [de]
    nop
    ld a, [bc]
    nop
    dec bc
    nop
    dec bc
    nop
    dec bc
    nop
    dec c
    nop
    dec b
    nop
    dec b
    nop
    ld hl, $8400
    nop
    add b
    nop
    ret nz

    nop
    add b
    nop
    ret nz

    nop
    or e
    nop
    db $d3
    nop
    pop de
    nop
    pop de
    nop
    jp nc, Jump_052_4800

    nop
    ld l, b
    nop
    ld a, b
    nop
    ld a, h
    nop
    ld a, l
    nop
    ld a, a
    nop
    ld a, a
    nop
    cp l
    nop
    or l
    nop
    push af
    nop
    push af
    nop
    db $fd
    nop
    db $fd
    nop
    db $fc
    nop
    db $fd
    nop
    rst $38
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR10], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh a, [$08]

jr_052_7efe:
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [rNR32], a
    ld h, b
    sbc h
    ld h, b
    sbc h
    ld b, b
    cp h
    ld h, b
    sbc h
    ld b, b
    cp h
    jr nz, @-$21

    ld bc, $07ff
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add e
    ld a, h
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $e4
    inc bc
    db $e4
    rlca

jr_052_7f37:
    ld hl, sp+$07

jr_052_7f39:
    ld hl, sp-$79
    ld a, b
    adc a

jr_052_7f3d:
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld [hl], b
    add a
    ld a, b
    add a
    ld a, b
    add [hl]
    ld a, c
    add d
    ld a, l
    add [hl]
    ld a, c
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    rlca
    ld a, b
    ld c, $70
    ld c, $70
    adc $30
    adc $30
    adc $30
    ld c, [hl]
    jr nc, @-$70

    jr nc, @-$70

    jr nc, jr_052_7f37

    jr nc, jr_052_7f39

    jr nc, @-$70

    jr nc, jr_052_7f3d

    jr nc, @-$70

    jr nc, @-$70

    jr nc, @-$70

    db $10
    adc [hl]
    db $10
    and [hl]
    jr jr_052_7efe

    inc c
    adc l
    ld [bc], a
    sub $00
    nop
    ld de, $ad00
    nop
    db $ed
    nop
    db $fd
    nop
    db $fc
    nop
    db $f4
    nop
    db $f4
    nop
    db $f4
    nop
    db $f4
    nop
    db $f4
    nop
    db $fc
    nop
    db $f4
    nop
    db $fc
    nop
    cp $00
    db $fc
    nop
    cp $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    nop
    db $10
    rrca
    nop
    rra
    rst $28
    nop
    rra
    ldh [rP1], a
    rst $38
    cp $01
    rst $38
    nop
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ld h, a
    ld h, a
    add e
    ld [hl], e
    add l
    ld a, c
    add e
    add hl, sp
    rst $00
    add hl, de
    ld b, e
    ld hl, $7183
    add a
    ld a, c
    add a
    ld [hl], c
    add a
    ld sp, $017f
    rst $38
    ld bc, $01ff
    ld a, [hl-]
    ld [bc], a
    ld d, h
    ld d, h
    xor l
    xor l
    ld [hl], $36
    ld hl, sp+$00
    rlca
    nop
    jr nc, jr_052_7ffe

jr_052_7ffe:
    db $08
    db $30
