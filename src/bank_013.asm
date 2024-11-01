SECTION "ROM Bank $013", ROMX[$4000], BANK[$13]

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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$fe]
    ld hl, sp-$08
    ldh [$c0], a
    nop
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    db $e3
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $30
    ret z

    db $fd
    ld b, d
    ei
    ld h, [hl]
    rst $38
    ld l, e
    ldh a, [$7f]
    cp b
    ld a, a
    cp b
    ld a, a
    ld hl, sp+$3f
    ld a, h
    ccf
    ld e, h
    ccf
    ld e, h
    ccf
    sbc $3f
    cp [hl]
    rra
    adc h
    ccf
    xor [hl]
    rra
    ld l, [hl]
    rra
    ld c, h
    rra
    ld e, h
    rrca
    ld d, h
    rrca
    ld [hl], $0f
    or [hl]
    rrca
    and a
    rrca
    xor [hl]
    rlca
    sbc h
    nop
    sbc c
    inc b
    ld d, e
    inc b
    ld e, e
    inc b
    ld c, h
    inc bc
    ld c, l
    ld [bc], a
    dec l
    ld [bc], a
    inc l
    inc bc
    xor [hl]
    ld bc, $01b6
    sub [hl]
    ld bc, $00d7
    rst $10

jr_013_408f:
    nop
    and h
    ld e, e
    or h
    ld c, e
    sub h
    ld l, e
    sub h
    ld l, e
    add b
    ld a, a
    jp nz, Jump_013_4a3d

    or l
    ld b, b
    cp a
    ld b, b
    cp a
    ld h, c
    sbc [hl]
    and b
    ld e, a
    and b
    ld e, a
    and b
    ld e, a
    sub b
    ld l, a
    sub b
    ld l, a
    ret nc

    cpl
    ld c, b
    or a
    ld l, b
    sub a
    ld c, b
    or a
    jr z, jr_013_408f

    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    rst $38
    ld hl, sp-$1d
    db $e4
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0102
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
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

    add b
    add b
    add b
    add b
    add b
    add b
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
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
    rst $38
    rst $38
    rst $38
    ld a, [$f9ff]
    db $fd
    ld a, a
    ld hl, sp+$3f
    db $fc
    cp a
    db $fd
    sbc [hl]
    cp $9f
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $28
    ccf
    rst $38
    rst $18
    ccf
    rst $18
    scf
    adc [hl]
    ld a, a
    rra
    rst $20
    ld c, a
    or a
    ld c, a
    cp a
    rst $18
    cpl
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    ld h, a
    rst $38
    or e
    rst $38
    inc de
    ld a, a
    adc e
    rst $38
    inc de
    sub a
    rst $38
    rra
    rst $38
    ccf
    ret nz

    nop
    nop
    ld e, a
    nop
    rst $38
    nop
    ldh [$1f], a
    rlca
    ld hl, sp+$00
    nop
    nop
    nop
    nop
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
    ld a, a
    add b
    ld a, h
    add b
    ld b, b
    add b
    add b
    ld b, b
    ret nz

    nop
    add b
    ld b, b
    ret nz

    nop
    ldh [rP1], a
    jp $ff20


    inc bc
    rst $18
    ccf
    rst $38
    rra
    rst $28
    rra
    ldh [rNR10], a
    ldh [rNR10], a
    rst $28
    db $10
    ld [$0800], sp
    nop
    ld [$0800], sp
    nop
    inc b
    nop
    inc b
    nop
    inc b
    nop
    inc b

Jump_013_41bf:
    nop
    ld hl, sp+$07
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $ed
    inc de
    db $ec
    ld [de], a
    xor $11
    ld b, c
    nop
    ld c, e
    nop
    ld l, b
    nop
    jr z, jr_013_41d8

jr_013_41d8:
    jr z, jr_013_41da

jr_013_41da:
    inc d
    nop
    dec d
    nop
    ld d, $00
    ld [de], a
    nop
    ld a, c
    nop
    add hl, hl
    nop
    ld a, d
    nop
    xor c
    nop
    or l
    nop
    push de
    nop
    add $00
    ld a, h
    add e
    ld e, l
    and d
    ccf
    ret nz

    ld c, $f1
    rst $30
    adc a
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rra
    rra
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
    db $fc
    db $fc
    db $fc
    inc h
    db $fc
    adc h
    inc l
    db $f4
    ld d, h
    xor h
    ld c, [hl]
    or d
    ld e, [hl]
    and d
    cp $02
    db $76
    adc d
    cp [hl]
    jp nz, $c2fe

    cp $e2
    cp $e2
    cp $e2
    rst $38
    pop hl
    rst $38
    pop hl
    rst $18
    pop hl
    ld a, l
    jp Jump_013_41bf


    cp l
    ld b, e
    cp c
    ld b, a
    pop af
    rrca
    di
    rrca
    ei
    add a
    add [hl]
    rst $38
    add a
    rst $38
    add a
    rst $38
    add [hl]
    rst $38
    and a
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38

jr_013_4295:
    nop
    rst $38
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
    rst $38
    ret nz

    rst $38
    nop
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
    rra
    nop
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    inc bc
    add e
    ccf
    rst $38
    inc a
    db $fc
    inc a
    db $fc
    inc a
    db $fc
    cp h
    ld a, h
    db $fc
    inc a
    sbc b
    ld a, b
    ret c

    jr c, jr_013_4295

    ld e, b
    adc b
    ld a, b
    ld c, b
    cp b
    ld l, b
    sbc b
    ld d, b
    or b
    rra
    rst $38
    rst $38
    rst $38
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
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [$e0], a
    add b
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    rst $38
    add b
    rst $38
    add b
    ccf
    ld b, b
    cp a
    ld b, b
    cp a
    ld b, b
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
    nop
    rst $38
    nop
    ret nz

    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$fe]
    ld bc, $3fc0
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
    ldh [rP1], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
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
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    jr @+$01

    jr @+$01

    inc c
    ld a, a
    ld c, $7f
    rrca
    ld a, a
    rrca
    cp $0e
    cp $0e
    rst $38
    ld c, $7e
    ld b, $3e
    ld b, $3f
    ld b, $1e
    ld b, $0e
    ld b, $06
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $07
    ld b, $03
    ld [bc], a
    inc bc
    ld [bc], a
    inc bc
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
    inc bc
    inc bc
    ld bc, $0101
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh [$1f], a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
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
    ldh [rP1], a
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $fefe
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    rst $38
    rst $38
    cp a
    cp a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    db $fc
    db $fc
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
    pop hl
    pop hl
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    ld hl, sp+$08
    ldh a, [rNR10]
    ldh a, [$f0]
    nop
    nop
    nop
    nop
    ret nc

    nop
    ret nz

    nop
    ret nc

    nop
    ret nz

    nop
    ret nc

    nop
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rP1], a
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    add b
    ld hl, sp-$80
    db $fc
    add b
    ld hl, sp-$80
    db $fc
    add b
    ld hl, sp-$80
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    db $fc
    add b
    db $fc
    ret nz

    db $fc
    ret nz

    cp $c0
    cp $c0
    cp $c0
    pop bc
    cp $c1
    cp $e1
    cp $c0
    rst $38
    pop bc
    ld a, a
    pop bc
    ld a, a
    pop bc
    ld a, a
    ld b, c
    ld a, a
    ld b, c
    ld a, a
    ld b, h
    ld a, [hl]
    ld b, b
    ld a, a
    jr nz, jr_013_4567

    jr nz, jr_013_4569

    ld hl, $e13f
    ccf
    pop af
    rst $38
    rst $38
    pop hl
    rst $38
    jp hl


    ccf
    jr z, jr_013_4576

    jr z, jr_013_4558

    jr jr_013_455a

    db $10
    rra
    db $10
    rra
    db $10
    rra
    db $10
    rra
    inc d
    rra
    inc d
    rra
    db $10
    rra
    inc d
    rrca
    ld [$0c0f], sp
    rrca
    ld [$0ff8], sp
    ld sp, hl
    rrca
    rst $38
    rst $38
    rlca
    rlca

jr_013_4558:
    rlca
    rlca

jr_013_455a:
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
    inc bc
    inc bc
    ld a, a

jr_013_4567:
    ld a, a
    rst $38

jr_013_4569:
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

jr_013_4576:
    nop
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
    rst $38

jr_013_4583:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
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
    jr nz, jr_013_4583

    db $10
    rst $28
    ld [$04f7], sp
    ei
    ld [bc], a
    db $fd
    ld bc, $00fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp+$07
    ld hl, sp-$08
    nop
    ei
    nop
    ei
    add b
    ld sp, hl
    add b
    ld a, [$f880]
    add b
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp-$08
    add e
    nop
    ei
    nop
    rst $38
    ld a, h
    rst $38
    ldh a, [rIE]
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
    add b
    add b
    add b
    add b
    add b
    add b
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
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    ld a, $3e
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    rst $38
    rlca
    rst $38
    rrca
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
    jr nz, @+$01

jr_013_4683:
    jr c, @+$01

    ccf
    rst $38
    ccf
    ei
    jr c, jr_013_4683

    dec sp
    ld hl, sp+$7b
    ld hl, sp-$45
    cp b
    dec sp
    ld hl, sp+$3b
    ld hl, sp+$3b
    ld hl, sp+$3b
    ld hl, sp+$3b
    ld hl, sp+$3b
    ld hl, sp+$3b
    ld hl, sp+$3b
    db $fc
    dec a
    db $fc
    dec e
    cp $0e
    cp $0e
    rst $38
    daa
    rst $30
    scf
    ei
    dec de
    rst $38
    dec a
    db $76
    rst $38
    ldh [rIE], a
    rst $00
    ld hl, sp-$71
    ld hl, sp+$1f
    ldh [$1f], a
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rra
    rst $20
    rrca
    di
    rlca
    ld sp, hl
    inc bc
    db $fc
    cp $00
    cp $00
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
    db $fc
    rst $38
    nop
    ret nz

    nop
    ccf
    nop
    rst $38
    ld bc, $fffe
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    inc bc
    rlca
    rlca
    rst $28
    rlca
    rst $28
    rlca
    adc a
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rlca
    rst $08
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
    rst $28
    rlca
    xor $06
    pop hl
    nop
    rst $38
    ld bc, $fefe
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

    ret nz

    ret nz

    ldh [$e0], a
    pop hl
    pop hl
    rst $38
    rst $38
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
    ld a, [hl]
    ld a, [hl]
    db $fc
    db $fc
    cp $fe
    cp $fe
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
    rst $38
    ld b, c
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rlca
    ei
    rrca
    or $0f
    or $1f
    db $ec
    ccf
    ld e, c
    cp e
    cp e
    rst $30
    or $ff
    rst $28
    dec de
    rst $38
    ld bc, $f8ff
    rlca
    db $fc
    rlca
    cp $c1
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    cp $f9
    db $fc
    ei
    db $fc
    di
    ld hl, sp-$19
    ldh a, [$cf]
    rra
    nop
    rra
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
    nop
    db $fc
    nop
    inc bc
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
    nop
    rst $38
    ld bc, $ffff
    rra
    rra
    rra
    rra
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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    jp $ffc3


    rst $38
    rst $38

jr_013_481b:
    rst $38
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
    rrca
    rrca
    rrca
    rrca
    nop
    rst $38
    ld [bc], a
    db $fd
    inc b
    ei
    ld [$10f7], sp
    rst $28
    jr nz, jr_013_481b

    ret nz

    cp a
    ret nz

    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ret nz

    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add c
    nop
    rst $28
    ret nz

    rst $38
    ldh [$e6], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    db $ec
    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    rst $38
    ret nz

    db $fc
    jp $dfe0


    ldh [$df], a
    ldh [$1f], a
    ld bc, $feff
    cp $fe
    cp $fe
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
    cp $fe
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
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    rst $28
    rst $28
    rst $38
    rst $38
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
    ld bc, $0101
    ld bc, $0000
    rra
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
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
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
    rrca
    rlca
    rrca
    rlca
    rrca
    rlca
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
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    ccf
    rra
    rst $18
    ccf
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
    nop
    ldh [rSB], a
    rra
    rst $38
    nop
    rst $38
    ccf
    ld a, a
    ld a, a
    ld a, a
    ld b, e
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    inc bc
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    rlca
    ld a, a
    ld a, a
    rst $38
    rlca
    add a
    ld a, a
    rst $38
    ld a, a
    ld a, a
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add b
    add b
    jp $ffc3


    rst $38
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $3f01
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
    ld hl, sp-$08
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
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    ldh a, [$fc]
    ldh a, [$fc]
    ld hl, sp-$02
    ld hl, sp-$01
    cp $ff
    cp $ff
    cp $ff
    db $fc
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh a, [$fe]
    ldh [$fe], a
    ldh [$fe], a
    ldh [$fe], a
    ldh [$fe], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a
    ldh [$fc], a

Jump_013_4a3d:
    ldh a, [$fc]
    ldh [$fc], a
    ret nz

    db $fc
    ret nz

    db $fd
    ret nz

    ld sp, hl
    ret nz

    ld sp, hl
    ret nz

    ld sp, hl
    ret nz

    ld sp, hl
    ret nz

    ld sp, hl
    ret nz

    and [hl]
    ld sp, hl
    add a
    ld sp, hl
    rst $00
    ld sp, hl
    rst $00
    ld sp, hl
    rst $08
    ldh a, [$c6]
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$08
    ret nz

    ld hl, sp-$80
    ld hl, sp-$80
    ld hl, sp+$40
    ld hl, sp+$40
    ld hl, sp+$00
    di
    nop
    ldh a, [rLCDC]
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [$80]
    rst $38
    add c
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
    rra
    rra
    rra
    rra
    rrca
    rrca
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    db $fc
    db $fc
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
    rst $38
    rst $38
    rst $38
    rst $38
    pop bc
    pop bc
    nop
    nop
    nop
    nop
    nop
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

    nop
    ret nc

    ld bc, $0190
    sub c
    ld [bc], a
    inc de
    add h
    inc bc
    db $fc
    dec sp
    call nz, $c837
    ret z

    nop
    ret z

    nop
    ret z

    nop
    adc b
    nop
    adc b
    nop
    adc b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    sub b
    nop
    ld hl, $2300
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
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
    ld bc, $017f
    ld a, a
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
    nop
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
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$04
    nop
    nop
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
    ld bc, $fefe
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    ld sp, hl
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
    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    rst $20
    rst $20
    rst $38
    rst $38
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
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
    rst $38
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
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $ff01
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    ccf
    ccf
    scf
    dec a
    scf
    ccf
    ld a, $3f
    inc [hl]
    ccf
    ld l, h
    ld a, a
    db $76
    ld a, a
    ld l, h
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, [hl]
    ld a, a
    ld a, a
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    db $e3
    rst $38
    or e
    rst $38
    db $eb
    rst $38
    db $db
    rst $38
    cp a
    rst $38
    rst $38
    ret nz

    nop
    nop
    ld d, l
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
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
    rrca
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $ffff
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    rlca
    rlca
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
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    rlca
    rlca
    rra
    rra
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
    rra
    rra
    ld a, h
    ld a, h
    ld hl, sp-$08
    db $fc
    db $fc
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
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    ld bc, $0001
    nop
    nop
    nop
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop af
    rst $38
    pop hl
    ei
    rst $20
    ei
    rst $20
    rst $38
    rst $30
    rst $38
    db $d3
    rst $38
    cp e
    rst $38
    cp e
    rst $38
    xor e
    rst $38
    daa
    rst $20
    cp l
    rst $20
    cp c
    rst $28
    inc sp
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $28
    sbc a
    rst $38
    sbc l
    rst $38
    adc a
    rst $38
    sbc a
    rst $38
    sbc $c0
    nop
    ld a, [bc]
    nop
    ld e, a
    nop
    rst $38
    rra
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
    rst $38
    rst $38
    rst $38
    cp $fe
    nop
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    rra
    ldh [$fe], a
    ld bc, $7f80
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
    rlca
    nop
    ld hl, sp+$00
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    ld bc, $fefe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    pop hl
    pop hl
    pop af
    pop af
    ld hl, sp-$08
    db $fc
    db $fc
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
    add b
    add b
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
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
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    db $fc
    rst $38
    cp $fe
    rst $38
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ei
    db $f4
    xor $f1
    ld a, [$d9e5]
    rst $20
    ei
    rst $08
    reti


    rst $28
    db $fd
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    cp $ff
    inc bc
    ld bc, $ab01
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
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
    rra
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ld bc, HeaderManufacturerCode
    rst $38
    ld bc, $03fe
    cp $03
    cp $03
    inc bc
    ld [bc], a
    rlca
    inc b
    rlca
    inc b
    rst $00
    inc b
    rrca
    ld [$080f], sp
    rrca
    ld [$080e], sp
    pop af
    cp $10
    rra
    db $10
    rra
    and d
    cp l
    ldh [rIE], a
    ldh [rIE], a
    pop af
    cp $c5
    ld a, [$c0fa]
    db $fd
    ret nz

    db $fd
    ret nz

    rst $38
    ret nz

    cp $c0
    cp $80
    ld a, [$ff80]
    add b
    add l
    ld a, [$dca3]
    rst $18
    ldh [rIE], a
    rst $38
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
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
    inc bc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
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
    rrca
    rrca
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
    db $fc
    rst $38
    db $fc
    ld sp, hl
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$10
    ldh a, [$f0]
    sub b
    ldh a, [$d0]
    or b
    ret nc

    ld h, b
    and b
    ld h, b
    and b
    ldh [rNR41], a
    ldh [rNR41], a
    ldh [$60], a
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    ret nz

    ld b, b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    add c
    add b
    rst $00
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [$08ff], sp
    cp $08
    cp $08
    cp $10
    cp $10
    db $fd
    db $10
    push af
    jr nz, @+$3f

    jr nz, jr_013_4efd

    jr nz, jr_013_4eef

    jr nz, jr_013_4f31

    ld b, b
    db $76
    ld b, b
    push af
    ld b, b
    push af
    add b
    push af
    add b
    pop hl
    add b
    add sp, -$80
    ld [$ca00], a
    nop
    ret nc

    nop
    ret nc

    nop
    pop de
    nop
    pop hl
    nop
    xor b
    nop
    xor d
    nop
    ldh [rP1], a
    ld d, b
    nop
    ld d, b
    nop
    ld d, b
    nop
    pop hl
    nop
    and b

jr_013_4eef:
    nop
    and c
    nop
    add c
    nop
    pop bc
    nop
    ld b, e
    nop
    ld b, e
    ld bc, $0183
    add a

jr_013_4efd:
    ld bc, $0387
    db $76
    adc [hl]
    and $1e
    rst $10
    cpl
    rst $20
    rra
    ld l, a
    sbc a
    rst $28
    rra
    ld l, a
    sbc a
    rst $18
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
    ld a, $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rra
    rrca
    rrca
    rra
    rra
    rst $38

jr_013_4f31:
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
    rra
    rra
    rra
    rra
    rrca
    rrca
    rra
    rra
    rst $38
    rst $38
    db $fc
    db $fc
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
    ld bc, $01ff
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld a, [$fe06]
    inc bc
    db $fc
    rlca
    db $fc
    dec b
    db $fc
    dec b
    ld hl, sp+$0d
    ld hl, sp+$0e
    ld hl, sp+$0a
    ld hl, sp+$0a
    ldh a, [rNR32]
    ldh a, [rNR32]
    ldh a, [rNR32]
    ldh [$3d], a
    db $e4
    add hl, sp
    ldh [$3b], a
    ldh [$2a], a
    ret nz

    ld a, d
    jp z, $c670

    ld [hl], b
    add b
    db $f4
    add b
    push af
    sbc l
    ldh [$87], a
    add sp, $12
    add sp, $16
    add sp, $2e
    ret nc

    ld b, $d0
    ld hl, $71d4
    add h
    ld c, a
    and b
    ld b, e
    xor b
    ld l, d
    add b
    cp d
    ld b, b
    add [hl]
    ld d, b
    sub h
    ld b, b
    ld [hl], h
    add b
    ld a, $80
    rrca
    and b
    ld l, d
    add b
    db $ed
    nop
    db $fd
    nop
    inc de
    ld b, b
    ld a, [$fa01]
    ld bc, $8166
    ld a, l
    add d
    push af
    ld [bc], a
    db $fd
    ld [bc], a
    ei
    inc b
    db $eb
    inc b
    ei
    inc b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $20
    jr jr_013_5009

    nop
    jr c, jr_013_4fd4

jr_013_4fd4:
    inc a
    nop
    ld a, [hl]
    nop
    ld a, a
    nop
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    nop
    nop
    nop
    nop
    add b
    add b
    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    rst $38
    rst $38
    pop hl
    pop hl
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    pop bc
    pop bc
    nop
    nop
    nop
    nop
    add b

jr_013_5009:
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    nop
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

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    db $fc
    db $fc
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
    ld hl, sp-$08
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    db $00, $01, $02, $03, $04, $05, $06, $07, $08, $09, $0a, $0b, $0c, $0d, $0e, $0f
    db $00, $10, $11, $12, $13, $14, $15, $16, $17, $18, $19, $1a, $1b, $1c, $1d, $1e
    db $00, $1f, $20, $21, $22, $23, $24, $25, $26, $27, $28, $29, $2a, $2b, $2c, $2d
    db $2e, $1f, $2f, $30, $31, $32, $33, $34, $35, $36, $37, $38, $39, $3a, $3b, $1f
    db $3c, $1f, $2f, $3d, $3e, $3e, $3e, $3f, $40, $41, $42, $43, $44, $45, $46, $47
    db $3c, $1f, $48, $49, $4a, $4b, $3e, $4c, $4d, $4e, $4f, $50, $51, $52, $53, $54
    db $3c, $1f, $48, $55, $56, $57, $3e, $58, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60
    db $3c, $1f, $61, $62, $3e, $3e, $3e, $63, $64, $65, $66, $67, $68, $69, $6a, $6b
    db $3c, $1f, $6c, $6d, $6e, $3e, $3e, $6f, $70, $71, $72, $73, $74, $51, $75, $76
    db $3c, $1f, $77, $01, $78, $3e, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $81, $82
    db $83, $1f, $77, $84, $85, $86, $85, $87, $88, $89, $8a, $8b, $8c, $8d, $8e, $8f
    db $83, $1f, $90, $91, $85, $85, $85, $85, $92, $93, $94, $95, $96, $97, $98, $99
    db $83, $1f, $9a, $9b, $85, $85, $85, $85, $85, $9c, $9d, $9e, $9f, $a0, $a1, $a2
    db $83, $1f, $9a, $a3, $85, $85, $85, $85, $85, $a4, $85, $a5, $a6, $a7, $a8, $a9
    db $83, $1f, $9a, $aa, $85, $ab, $ac, $ad, $ae, $af, $85, $b0, $b1, $b2, $b3, $b4
    db $83, $1f, $b5, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $40, $bd, $be, $bf, $c0, $a7
    db $c1, $c2, $b5, $c3, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $cd, $ce, $a7
    db $85, $01, $b5, $cf, $d0, $d1, $d2, $d3, $d4, $d5, $d6, $35, $d7, $d8, $a7, $d9
    db $85, $01, $da, $db, $dc, $dd, $de, $df, $e0, $e1, $e2, $85, $e3, $e4, $e5, $e6
    db $85, $01, $e7, $e8, $e9, $ea, $eb, $ec, $85, $85, $ed, $85, $ee, $ef, $bf, $f0
    db $01, $01, $03, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $05, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $03, $02, $02, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $00, $05, $05, $05, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $00, $01, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $06, $02, $03, $07, $01, $01, $41, $01, $01
    db $01, $01, $04, $43, $00, $00, $00, $07, $07, $07, $03, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $00, $00, $00, $07, $07, $03, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $00, $00, $00, $00, $03, $01, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $00, $00, $00, $00, $00, $02, $01, $01, $01, $00, $01, $01
    db $01, $01, $04, $03, $00, $03, $03, $05, $03, $03, $01, $01, $01, $01, $01, $01
    db $01, $01, $04, $03, $03, $03, $03, $05, $05, $03, $01, $01, $01, $01, $01, $00
    db $01, $01, $04, $03, $03, $05, $05, $05, $05, $03, $01, $01, $01, $01, $01, $00
    db $01, $41, $04, $03, $03, $05, $03, $00, $05, $03, $01, $01, $01, $01, $00, $01
    db $01, $41, $04, $03, $03, $03, $03, $03, $05, $03, $02, $01, $01, $01, $01, $01
    db $01, $41, $04, $03, $03, $03, $03, $03, $00, $00, $02, $01, $01, $01, $01, $01

    INCBIN "gfx/image_013_52d0.2bpp"

    INCBIN "gfx/image_013_61d0.2bpp"

DiningRoom1FScene3Tilemap::
    db $00, $00, $01, $02, $03, $04, $04, $04, $04, $04, $04, $05, $06, $07, $08, $09
    db $00, $00, $0a, $0b, $0c, $0d, $0e, $0f, $04, $04, $04, $10, $11, $07, $12, $13
    db $00, $00, $14, $15, $16, $17, $18, $19, $1a, $04, $04, $1b, $1c, $1d, $1e, $1f
    db $00, $00, $20, $21, $04, $22, $23, $24, $25, $04, $04, $26, $27, $28, $29, $2a
    db $00, $2b, $2c, $2d, $04, $04, $04, $04, $04, $04, $2e, $2f, $07, $30, $31, $32
    db $00, $33, $34, $35, $04, $04, $04, $04, $04, $04, $36, $37, $38, $39, $3a, $29
    db $00, $3b, $3c, $3d, $04, $04, $04, $04, $04, $04, $3e, $3f, $40, $41, $42, $43
    db $00, $44, $45, $46, $04, $04, $04, $04, $04, $47, $48, $07, $49, $43, $4a, $4b
    db $00, $4c, $02, $07, $4d, $04, $4e, $4f, $50, $51, $52, $53, $54, $55, $56, $29
    db $00, $57, $0b, $07, $58, $04, $59, $5a, $5b, $5c, $5d, $5e, $5f, $60, $61, $62
    db $00, $63, $07, $07, $07, $64, $65, $66, $67, $68, $07, $69, $6a, $29, $6b, $6c
    db $00, $6d, $07, $07, $07, $07, $07, $07, $6e, $6f, $70, $71, $72, $73, $74, $75
    db $00, $76, $07, $07, $77, $78, $79, $7a, $7b, $7c, $7d, $7e, $7f, $80, $29, $81
    db $00, $82, $83, $84, $85, $86, $87, $88, $89, $07, $8a, $8b, $8c, $8d, $8e, $00
    db $2b, $8f, $90, $91, $92, $93, $94, $95, $96, $97, $98, $99, $9a, $00, $9b, $9c
    db $33, $9d, $04, $9e, $9f, $a0, $04, $a1, $a2, $a3, $a4, $a5, $a6, $a7, $29, $a8
    db $3b, $a9, $04, $04, $04, $04, $04, $aa, $ab, $ac, $ad, $ae, $af, $b0, $b1, $b2
    db $44, $b3, $47, $b4, $b5, $04, $04, $b6, $b7, $b8, $b9, $ba, $bb, $bc, $bd, $be
    db $bf, $c0, $c1, $c2, $c3, $04, $c4, $c5, $c6, $c7, $c8, $c9, $ca, $cb, $cc, $29
    db $cd, $ce, $04, $cf, $d0, $04, $d1, $d2, $d3, $d4, $d5, $d6, $d7, $d8, $d9, $da

DiningRoom1FScene3PaletteIndex::
    db $01, $01, $04, $03, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01
    db $01, $01, $04, $03, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01
    db $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $00, $01
    db $01, $01, $04, $00, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01
    db $01, $04, $03, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $00
    db $01, $04, $03, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01
    db $01, $04, $03, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01
    db $01, $04, $03, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $00
    db $01, $04, $03, $00, $00, $00, $00, $03, $00, $02, $01, $01, $01, $01, $01, $01
    db $01, $04, $00, $00, $00, $00, $00, $03, $03, $02, $01, $01, $01, $00, $01, $01
    db $01, $04, $00, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01
    db $01, $04, $00, $00, $00, $03, $03, $00, $02, $01, $01, $01, $01, $01, $00, $01
    db $01, $04, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01
    db $01, $04, $00, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01
    db $04, $05, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $00, $01
    db $04, $05, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $05, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01
    db $04, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01, $00
    db $04, $00, $00, $00, $00, $00, $02, $01, $01, $01, $01, $01, $01, $01, $01, $01

DiningRoom1FScene3Tileset::
    INCBIN "gfx/image_013_6460.2bpp"

    INCBIN "gfx/image_013_7160.2bpp"

    nop
    nop
    nop
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    ld a, [bc]
    dec bc
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    ld a, [bc]
    inc d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_013_7254

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $0a
    ld a, [bc]
    rra
    jr nz, jr_013_7266

    ld [hl+], a
    inc hl
    nop
    nop
    nop
    nop
    inc h
    dec h
    ld h, $27
    jr z, jr_013_725b

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_013_7254:
    ld a, [bc]
    ld a, [bc]
    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    nop

jr_013_725b:
    nop
    nop
    dec l
    ld l, $2f
    ld a, [bc]
    jr nc, jr_013_726d

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_013_7266:
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld sp, $3332

jr_013_726d:
    inc [hl]
    dec [hl]
    nop
    ld a, [bc]
    ld [hl], $37
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    jr c, jr_013_72b5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    inc de
    ld b, e
    ld b, h
    ld a, [bc]
    ld a, [bc]
    ld b, l
    add hl, sp
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
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld e, h
    ld e, l
    ld e, [hl]
    nop
    ld e, a
    ld h, b
    ld h, c
    ld a, [bc]
    ld h, d
    ld h, e
    nop
    ld h, h
    ld h, l
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]

jr_013_72b5:
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld a, [bc]
    ld l, l
    ld l, [hl]
    nop
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
    ld a, [bc]
    ld a, e
    ld a, h
    ld a, l
    ld a, [bc]
    jr nc, jr_013_7351

    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld b, e
    ld a, a
    ld a, [bc]
    ld a, [bc]
    add b
    add c
    add d
    add e
    add h
    add hl, sp
    add l
    ld [hl], $0a
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    nop
    sub h
    ld a, [bc]
    add hl, hl
    sub l
    sub [hl]
    sub a
    sbc b
    nop
    nop
    nop
    nop
    nop
    nop
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    sbc a
    and b
    and c
    and d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc c
    and e
    and h
    and l
    and [hl]
    and a
    xor b
    xor c
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
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
    nop
    nop
    nop
    or e
    or h
    or l
    or [hl]
    or a
    cp b
    cp c
    ld a, [bc]
    cp d
    ld d, [hl]
    cp e
    cp h
    nop

jr_013_7351:
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
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
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
    dec b
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
    inc bc
    inc bc
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
    inc bc
    inc bc
    nop
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
    inc bc
    inc bc
    inc bc
    nop
    dec b
    dec b
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
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    dec b
    nop
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    dec b
    inc bc
    nop
    dec b
    inc bc
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    dec b
    inc bc
    nop
    dec b
    inc bc
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
    inc bc
    inc bc
    nop
    dec b
    dec b
    dec b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    jr nz, jr_013_7418

jr_013_7418:
    nop
    nop
    inc bc
    inc bc
    nop
    dec b
    dec b
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
    inc bc
    inc bc
    nop
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
    inc bc
    inc bc
    dec b
    inc bc
    nop
    dec b
    nop
    jr nz, jr_013_7443

jr_013_7443:
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
    nop
    nop
    inc bc
    inc bc
    inc bc
    dec b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_013_746d

    inc bc
    inc bc
    inc bc

jr_013_746d:
    inc bc
    inc bc
    dec b
    nop
    nop
    nop
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
    nop
    nop
    inc bc
    inc bc
    inc bc
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
    rst $38
    rst $38
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
    rra
    rra
    rra
    sbc a
    rra
    adc a
    rrca
    rst $08
    rrca
    rst $00
    rlca
    rst $00
    add a
    rst $20
    add a
    db $e3
    ld b, e
    di
    ld b, e
    ld [hl], c
    ld hl, $2179
    cp b
    db $10
    cp b
    db $10
    call c, $dc10
    adc b
    xor $88
    xor $44
    xor $44
    rst $30
    ld [hl+], a
    rst $30
    ld [hl+], a
    ei
    ld [de], a
    ei
    ld de, $11fd
    db $fd
    ld [$08fd], sp
    cp $04
    cp $04
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ccf
    jr nz, jr_013_753c

    jr nz, jr_013_751e

    db $10
    rst $38
    db $10
    rst $38
    ld [$08ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
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

jr_013_751e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [$e0], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_013_753c:
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    inc bc
    nop
    db $fc
    nop
    nop
    nop
    ld bc, $ff00
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
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    sbc a
    rra
    adc a
    rrca
    rst $08
    rrca
    rst $08
    adc a
    rst $00
    add a
    rst $20
    ld b, a
    db $e3
    ld b, e
    ld [hl], e
    ld b, e
    ld [hl], e
    inc hl
    or c
    ld hl, $11b9
    cp b
    db $10
    call c, $dc88
    adc b
    db $ec
    ld c, b
    xor $44
    or $44
    rst $30
    ld [hl+], a
    rst $30
    ld [hl+], a
    ei
    ld de, $11fb
    db $fd
    add hl, bc
    db $fd
    ld [$08fe], sp
    cp $04
    cp $04
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    db $10
    rst $38
    db $10
    rst $38
    ld a, b
    adc a
    adc b
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $fe00
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
    ldh a, [rIE]
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
    rst $38
    db $fc
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
    ld a, a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    sbc a
    rra
    sbc a
    rra
    adc a
    rrca
    rst $08
    adc a
    rst $00
    add a
    rst $20
    ld b, a
    rst $20
    ld b, a
    ld h, e
    inc hl
    ld [hl], e
    inc hl
    or c
    ld hl, $11b9
    reti


    sub c
    call c, $dc88
    adc b
    db $ec
    ld c, b
    xor $44
    or $24
    rst $30
    ld [hl+], a
    ei
    ld [de], a
    ei
    ld de, $11fb
    db $fd
    add hl, bc
    db $fd
    ld [$04fe], sp
    cp $04
    rst $38
    add d
    rst $38
    add d
    ld a, a
    ld b, d
    ld a, a
    ld b, c
    ccf
    ld hl, $203f
    rra
    db $10
    rra
    db $10
    rrca
    ld [$080f], sp
    rlca
    inc b
    rlca
    inc b
    inc bc
    ld [bc], a
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $00ff
    nop
    nop
    nop
    nop
    ccf
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
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    rst $38
    db $fc
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
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    sbc a
    rra
    sbc a
    rra
    rst $08
    adc a
    rst $08
    adc a
    rst $00
    ld b, a
    ld h, a
    ld b, a
    ld h, a
    daa
    ld [hl], e
    inc hl
    or e
    inc hl
    cp c
    ld de, $91d9
    reti


    adc c
    db $ec
    ld c, b
    db $ec
    ld b, h
    xor $44
    or $24
    or $22
    ei
    ld [de], a
    ei
    ld de, $09fd
    db $fd
    ld [$88fd], sp
    cp $84
    ld a, [hl]
    ld b, h
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    inc hl
    rst $38
    ld de, $ff00
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fe
    db $fc
    cp $fc
    cp $fc
    cp $fc
    rst $38
    ld a, a
    db $fc
    ld a, a
    db $fc
    ccf
    rst $38
    ccf
    rst $38
    ccf
    ld a, a
    sbc a
    sbc a
    sbc a
    rst $08
    adc a
    rst $08
    adc a
    rst $08
    ld c, a
    ld h, a
    ld b, a
    ld h, a
    daa
    or e
    inc hl
    or e
    inc de
    inc c
    di
    ld b, $f9
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    pop bc
    rst $38
    rst $38
    cp $ff
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

jr_013_77cd:
    nop
    cp $00
    inc bc
    db $fc
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ccf
    ccf
    ret nz

    rst $38
    nop

jr_013_77e7:
    rst $38
    ccf
    rst $38
    ldh [rIE], a
    add c
    rst $38
    sbc a
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
    ld h, b
    sbc a
    jr nc, jr_013_77cd

    jr jr_013_77e7

    inc c
    di
    ld b, $f9
    inc bc
    db $fc
    ld bc, $03ff
    cp $07
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
    nop
    rst $38
    nop
    rst $38
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
    ldh [rP1], a
    add b
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
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    ccf
    ccf
    ret nz

    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    sbc a
    ldh a, [rNR10]
    ldh a, [$f8]
    ld hl, sp-$08
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
    rst $38
    cp $ff
    cp $00
    rst $38
    nop
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
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    ld b, a
    rst $38
    rst $20
    cp a
    rst $00
    ld a, a
    rst $00
    cp a
    ld h, e
    sbc a
    inc sp
    rst $08
    dec de
    rst $20
    rrca
    di
    rlca
    ei
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    ld e, $ff
    inc a
    rst $38
    jr c, @+$01

    jr nc, @+$01

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
    ld a, a
    ld a, a
    rst $38
    add b
    rst $38
    nop
    cp $00
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    ccf
    ret nz

    rst $38
    ld bc, $ffff
    cp $fe
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    nop
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
    ret nz

    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    nop
    stop
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
    add b
    adc a
    add b
    adc a
    add b
    adc a
    add b
    adc a
    ret nz

    rst $00
    ret nz

    rst $00
    ret nz

    rst $00
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ldh [$e3], a
    ldh a, [$71]
    ld hl, sp+$78
    ld hl, sp+$38
    db $fc
    inc e
    cp $1e
    cp $0e
    rst $38
    rlca
    rst $20
    ei
    rst $28
    pop af
    rst $38
    pop af
    ld a, [hl]
    db $fd
    cp $ff
    rst $38
    rst $38
    rst $30
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ld hl, sp+$1f
    ld hl, sp+$3f
    jp $c33f


    ccf
    jp $c33f


    ccf
    jp $c33f


    ccf
    jp $c33f


    ccf
    jp $c33f


    ccf
    pop bc
    rra
    pop hl
    rra
    pop hl
    rrca
    ldh a, [$03]
    db $fc
    ld bc, $00fe
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
    rra
    rra
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
    rst $38
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
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ccf
    ccf
    ret nz

    rst $38
    inc bc
    rst $38
    rst $38
    db $fc
    db $fc
    nop
    nop
    inc bc
    inc bc
    rlca
    rlca
    rrca
    rrca
    rst $18
    rrca
    rst $18
    rrca
    rst $18
    rrca
    sbc a
    rrca
    rra
    rrca
    rra
    rrca
    rra
    rlca
    rrca
    rlca
    rrca
    rlca
    rrca
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
    ld bc, $0180
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
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    rra
    ret nz

    rst $00
    ldh [$e3], a
    di
    ldh a, [$f9]
    ld hl, sp-$01
    ld a, a
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    inc bc
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
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
    ld a, a
    add a
    ret nz

    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp-$01
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
    nop
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
    ld a, a
    ld a, a
    add b
    rst $38
    rlca
    rst $38
    rst $38
    ld hl, sp+$3f
    rlca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld hl, sp-$01
    add b
    ld hl, sp+$07
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
    ld bc, $03fe
    db $fc
    rlca
    ld sp, hl
    rlca
    ld sp, hl
    rrca
    di
    ccf
    rst $00
    ld a, [hl]
    sbc [hl]
    db $fd
    dec a
    rst $38
    ld a, e
    rst $38
    di
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    nop
    nop
    rst $38
    cp $01
    cp $01
    cp $01
    rst $38
    ld bc, $01ff
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [$fc]
    db $e3
    ld hl, sp-$39
    ldh a, [$8f]
    ldh [$1f], a
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $fffe
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
    add b
    nop
    nop
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    add b
    rst $38
    rlca
    rst $38
    ld hl, sp-$01
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
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
    jp $03ff


    rst $08
    inc sp
    rrca
    di
    rrca
    di
    rrca
    di
    rrca
    di
    rra
    rst $20
    ld e, $e6
    rra
    rst $20
    rra
    and $1e
    and $1e
    and $1f
    and $1f
    and $1f
    and $1f
    and $1f
    and $1f
    and $3f
    adc $3f
    call z, $cc3f
    ccf
    call z, $cc3f
    ccf
    call z, $cc3f
    ccf
    call z, $9c7f
    ld a, a
    sbc h
    ld a, a
    sbc b
    ld a, a
    sbc b
    jr c, @+$01

    jr nc, @+$01

    jr nc, @+$01

    ld h, b
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    sbc h
    rst $38
    sbc h
    rst $38
    db $fc
    ccf
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    cp [hl]
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
    add b
    rst $38
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
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    ld a, a
    ld a, a
    add b
    rst $38
    rrca
    rst $38
    rst $38
    ldh a, [$30]
    ret nz

    ret nz

    db $fc
    db $fc
    cp $fe
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    db $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $fc
    cp $18
    rst $20
    or b
    rst $08
    ldh [$5f], a
    ldh [$bf], a
    ldh a, [$5f]
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr nc, @+$01

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
    ld a, a
    ld a, a
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
    rrca
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
    ld a, a
    add b
    nop
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    ldh [$e0], a
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
    ld a, a
    nop
    ld a, a
    nop
    ld a, b
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
    ld [$00f7], sp
    nop
    ccf
    ccf
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rra
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
    ld bc, $fffe
    nop
    rst $38
    nop
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
    ccf
    rst $38
    db $fc
    rst $00
    call nz, Call_000_0707
    rlca
    rrca
    rrca
    rrca
    rrca
    rrca
    rst $08
    rrca
    rst $08
    rra
    sbc a
    rra
    sbc a
    rra
    rra
    rra
    rra
    rra
    rra
    ccf
    ccf
    jr nz, jr_013_7d83

    cpl
    ccf
    ld a, b
    ld a, a
    ld b, b
    ld b, b
    ld b, b
    ld b, b
    rst $38
    rst $38
    rst $38
    rst $38
    nop
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

jr_013_7d83:
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
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
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
    rlca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ldh [$1f], a
    db $fc
    inc bc
    cp $01
    db $fd
    nop
    nop
    nop
    nop
    nop
    ld bc, $ff01
    cp $ff
    nop
    rst $38
    ld a, a
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rra
    ccf
    rra
    rra
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
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
    ld a, a
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $18
    ccf
    ld l, a
    rra
    rra
    rrca
    rst $38
    rst $38
    rst $38
    add hl, bc
    rst $38
    rst $38
    rst $38
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
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$0d
    pop af
    di
    pop af
    rst $20
    ld [c], a
    rst $20
    ld [c], a
    rst $20
    ld [c], a
    rst $08
    push bc
    rst $08
    push bc
    sbc a
    adc d
    sbc a
    adc d
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
    cp $ff
    cp $ff
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$07
    ld hl, sp-$0d
    pop af

jr_013_7e88:
    di
    pop af
    rst $20
    ld [c], a
    rst $20
    ld [c], a
    rst $20
    ld [c], a
    rst $08
    push bc
    rst $08
    push bc
    sbc a

jr_013_7e95:
    adc d
    sbc a
    adc d
    sbc a
    adc d
    ccf
    inc d
    ccf
    inc d
    ld a, a
    jr z, jr_013_7f20

    jr z, jr_013_7f22

    jr z, @+$01

    ret nc

    cp $50
    cp $a0
    db $fc
    and b
    db $fd
    and b
    ld hl, sp+$40
    ld b, a
    ld hl, sp-$79
    ld hl, sp-$71
    ldh a, [$8f]
    ldh a, [$1f]
    ldh [rNR10], a
    rst $28
    jr nz, jr_013_7e88

    jr nz, jr_013_7e95

    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$05
    ld sp, hl
    di
    pop af
    di
    pop af
    rst $20
    ld [c], a
    rst $20
    ld [c], a
    rst $20
    ld [c], a
    rst $08
    push bc
    rst $08
    push bc
    sbc a
    adc c
    sbc a
    adc d
    sbc a
    adc d
    ccf
    inc d
    ccf
    dec d
    ld a, a
    add hl, hl
    ld a, a
    add hl, hl
    ld a, a
    ld a, [hl+]
    rst $38
    ld d, d
    rst $38
    ld d, h
    cp $a4
    cp $a8
    cp $a8
    db $fc
    ld b, b
    db $fc
    ld b, b
    ld hl, sp-$80
    ld hl, sp-$80
    ldh a, [$80]
    rst $30
    nop
    rst $30
    nop
    ldh [rP1], a
    ldh [rP1], a
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
    rrca
    nop
    ldh a, [rP1]
    nop
    nop

jr_013_7f20:
    rst $38
    nop

jr_013_7f22:
    rst $38
    nop
    rst $38
    nop
    cp $01
    nop
    cp $00
    ld d, l
    nop
    xor d
    nop
    ld d, l
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$05
    ld sp, hl
    di
    pop af
    di
    pop af
    rst $20
    ld [c], a
    rst $20
    ld [c], a
    rst $28
    db $e4
    rst $08
    push bc
    rst $08
    push bc
    sbc a
    adc c
    sbc a
    adc d
    cp a
    sub d
    ccf
    inc d
    ccf
    inc d
    ld a, a
    dec h
    ld a, a
    add hl, hl
    rst $38
    ld c, c
    rst $38
    ld d, d
    rst $38
    ld d, d
    rst $38
    sub h
    rst $38
    and h
    rst $38
    jr z, @+$01

    ld c, c
    rst $38
    ld c, c
    db $fc
    ld d, b
    db $fc
    sub b
    ld hl, sp-$60
    ld hl, sp+$20
    ldh a, [rLCDC]
    ldh a, [rLCDC]
    ldh [rLCDC], a
    ldh [$80], a
    ldh [$80], a
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
    rra
    nop
    ldh [rP1], a
    nop
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    nop
    rst $38
    nop
    ld a, [$5500]
    nop
    xor d
    nop
    ld d, l
    cp $fe
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld sp, hl
    ld hl, sp-$07
    ld hl, sp-$05
    ld hl, sp-$0d
    pop af
    di
    pop af
    rst $20
    ld [c], a
    rst $20
    ld [c], a
    rst $28
    db $e4
    rst $08
    call nz, $c5cf
    sbc a
    adc c
    sbc a
    adc d
    cp a
    sub d
    ccf
    inc d
    ccf
    inc d
    ld a, a
    inc h
    ld a, a
    jr z, @+$01

    ld c, c
    rst $38
    ld d, c
    rst $38
    ld d, d
    rst $38
    sub d
    rst $38
    and h
    rst $38
    inc h
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    sub b
    cp $90
