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
    nop
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
    ld e, $00
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_013_50a5

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $1f
    cpl
    jr nc, jr_013_50b6

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_013_50c6

    ld a, [hl-]
    dec sp
    rra
    inc a
    rra
    cpl
    dec a
    ld a, $3e
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]
    ld b, a
    inc a
    rra
    ld c, b
    ld c, c
    ld c, d

jr_013_50a5:
    ld c, e
    ld a, $4c
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    inc a
    rra
    ld c, b
    ld d, l
    ld d, [hl]
    ld d, a

jr_013_50b6:
    ld a, $58
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    inc a
    rra
    ld h, c
    ld h, d
    ld a, $3e

jr_013_50c6:
    ld a, $63
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    ld l, e
    inc a
    rra
    ld l, h
    ld l, l
    ld l, [hl]
    ld a, $3e
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld d, c
    ld [hl], l
    db $76
    inc a
    rra
    ld [hl], a
    ld bc, $3e78
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
    rra
    ld [hl], a
    add h
    add l
    add [hl]
    add l
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    add e
    rra
    sub b
    sub c
    add l
    add l
    add l
    add l
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    add e
    rra
    sbc d
    sbc e
    add l
    add l
    add l
    add l
    add l
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    add e
    rra
    sbc d
    and e
    add l
    add l
    add l
    add l
    add l
    and h
    add l
    and l
    and [hl]
    and a
    xor b
    xor c
    add e
    rra
    sbc d
    xor d
    add l
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    add l
    or b
    or c
    or d
    or e
    or h
    add e
    rra
    or l
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    ld b, b
    cp l
    cp [hl]
    cp a
    ret nz

    and a
    pop bc
    jp nz, $c3b5

    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    call $a7ce
    add l
    ld bc, $cfb5
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $35
    rst $10
    ret c

    and a
    reti


    add l
    ld bc, $dbda
    call c, $dedd
    rst $18
    ldh [$e1], a
    ld [c], a
    add l
    db $e3
    db $e4
    push hl
    and $85
    ld bc, $e8e7
    jp hl


    ld [$eceb], a
    add l
    add l
    db $ed
    add l
    xor $ef
    cp a
    ldh a, [rSB]
    ld bc, $0003
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc bc
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0304
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    dec b
    dec b
    dec b
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    nop
    nop
    nop
    nop
    ld b, $02
    inc bc
    rlca
    ld bc, $4101
    ld bc, $0101
    ld bc, $4304
    nop
    nop
    nop
    rlca
    rlca
    rlca
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0304
    nop
    nop
    nop
    rlca
    rlca
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc bc
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    inc b
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc bc
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0304
    nop
    inc bc
    inc bc
    dec b
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0001
    ld bc, $0401
    inc bc
    inc bc
    dec b
    dec b
    dec b
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0001
    ld bc, $0441
    inc bc
    inc bc
    dec b
    inc bc
    nop
    dec b
    inc bc
    ld bc, $0101
    ld bc, $0100
    ld bc, $0441
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    dec b
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld b, c
    inc b
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    nop
    nop
    ld [bc], a
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
    rst $38
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
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    jr nc, jr_013_531d

    ld e, $01
    ld bc, $0100
    nop
    inc b
    nop
    add e
    nop
    add e
    add b
    add b
    add b
    add c

jr_013_531d:
    add b
    ret nz

    ret nz

    pop bc
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    add sp, -$20
    ld [hl], b
    ldh [$7c], a
    ldh [$7f], a
    ldh a, [$3f]
    ldh a, [$f0]
    inc sp
    ld hl, sp+$33
    ld sp, hl
    jr nc, @+$01

    jr c, @+$01

    rra
    rst $38
    rra
    rst $38
    inc bc
    rst $38
    ldh [$1f], a
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    ld h, b
    ld h, b
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh [$e0], a
    inc a
    inc a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld hl, sp-$08
    inc a
    inc a
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
    ld a, $3e
    rlca
    rlca
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    ccf
    rrca
    rrca
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    rrca
    rrca
    rst $18
    rst $18
    rst $38
    rst $38
    rst $08
    rst $08
    add e
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
    ld bc, $c101
    pop bc
    di
    di
    rst $38
    rst $38
    ei
    ei
    ldh a, [$f0]
    ldh [$e0], a
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
    nop
    nop
    nop
    nop
    nop
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
    nop
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
    nop
    nop
    nop
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
    ld a, a
    rst $38
    nop
    rst $38
    nop
    nop
    db $dd
    nop
    ld [hl], a
    nop
    dec [hl]
    nop
    ld a, a
    nop
    ccf
    nop
    rrca
    nop
    rlca
    nop
    ld c, c
    rrca
    nop
    inc bc
    jr c, jr_013_5415

jr_013_5415:
    inc l
    db $10
    dec h
    nop
    rrca
    nop
    ld c, e
    nop
    ld b, a
    nop
    scf
    jr nz, jr_013_5431

    and h
    inc bc
    ld a, [de]
    ld bc, $0044
    cp $f8
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38

jr_013_5431:
    add b
    ld a, a
    cp $81
    rst $38
    ld a, h
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
    ldh a, [rIE]
    rrca
    rrca
    inc bc
    inc bc
    rra
    rra
    ld a, a
    ld a, a
    rst $18
    rst $18
    nop
    nop
    ld bc, $0301
    inc bc
    rrca
    rrca
    sbc a
    sbc a
    rst $38
    rst $38
    jp Jump_000_00c3


    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rst $00
    rst $00
    rst $38
    rst $38
    rst $30
    rst $30
    ldh [$e0], a
    ret nz

    ret nz

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
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

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
    ld a, [hl]
    ld a, [hl]
    inc e
    inc e
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
    ccf
    ccf
    rrca
    rrca
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
    ldh a, [$f0]
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
    ld a, a
    add b
    ccf
    add b
    cp l
    ld [bc], a
    ld a, e
    add h
    ccf
    ret nz

    adc l
    ld [hl], d
    rst $18
    jr nz, @+$01

    nop
    rra
    ldh [$5f], a
    and b
    ld c, e
    jr nz, jr_013_554a

    cp h
    ld d, e
    inc h
    inc hl
    ld e, h
    ld a, a
    nop
    dec b
    ldh [rNR12], a
    ldh [rP1], a
    cp $08
    jp nz, Jump_000_1e20

    db $fd
    ld hl, sp-$01
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    inc bc
    rst $38
    ld hl, sp+$07
    rst $38
    ldh a, [rIE]
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
    ld hl, sp-$08
    ldh [$e0], a
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38

jr_013_554a:
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    inc a
    inc a
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
    ld a, h
    ld a, h
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
    ccf
    ccf
    rlca
    rlca
    nop
    nop
    ld bc, $0301
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    adc a
    adc a
    rst $38
    rst $38
    rst $28
    rst $28
    pop bc
    pop bc
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
    ret nz

    ret nz

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
    cp $fe
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ld [hl], b
    ld [hl], b
    db $fc
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
    ldh [$1f], a
    rra
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
    db $e3
    db $fc
    rst $28
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [$f0]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$78]
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38
    ld hl, sp+$38

jr_013_55f3:
    ld hl, sp-$08
    jr c, jr_013_55f3

    inc e
    db $fc
    inc e
    db $fc
    inc e
    call c, Call_013_5c1c
    inc e
    cp h
    inc c
    cp $0e
    adc [hl]
    ld c, $be
    ld c, $0e
    ld c, $0f
    ld e, a
    rst $20
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    ldh [$1f], a
    rst $38
    add b
    rst $38
    ld a, [hl]
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
    ret nz

    rst $38
    ld a, $3f
    rrca
    rrca
    ccf
    ccf
    ld a, a
    ld a, a
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    ld bc, $0301
    inc bc
    rlca
    rlca
    rst $08
    rst $08
    rst $38
    rst $38
    db $e3
    db $e3
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
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$e0], a
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
    ld a, a
    ld a, a
    rrca
    rrca
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
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    adc a
    adc a
    inc bc
    inc bc
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
    rst $38
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
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
    ret nz

    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    db $fc
    inc bc
    rst $38
    ldh a, [rIE]
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
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ld hl, sp-$08
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
    inc a
    inc a
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
    rra
    rra
    inc bc
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0301
    inc bc
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

    ret nz

    add b
    add b
    nop
    nop
    add b
    add b
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
    rst $38
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    inc e
    inc e
    ld c, $0e
    rra
    rra
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
    nop
    nop
    nop
    rst $38
    nop
    rst $38
    ld a, l
    add d
    ld hl, sp+$07
    push af
    ld a, [bc]
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    db $ed
    ld [de], a
    push af
    ld a, [bc]
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$0f
    ld hl, sp+$0f
    db $fc
    rla
    db $f4
    rra
    ld a, [$c73f]
    rlca
    add e
    inc bc
    add b
    inc bc
    add b
    inc bc
    rst $00
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
    ldh [rP1], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    ret nz

    rst $38
    ld a, $ff
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
    ld hl, sp-$01
    rlca
    rlca
    rrca
    rrca
    rra
    rra
    cp a
    cp a
    rst $38
    rst $38
    add e
    add e
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

    db $fc
    db $fc
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    ldh a, [$f0]
    ldh [$e0], a
    ld a, h
    ld a, h
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
    rra
    rra
    inc bc
    inc bc
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
    cp a
    cp a
    rst $38
    rst $38
    rst $18
    rst $18
    add e
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
    ret nz

    ret nz

    ldh a, [$f0]
    cp $fe
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
    ldh [$1f], a
    ld a, a
    add b
    cp a
    ld b, b
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
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
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
    ret nz

    rst $38
    ccf
    rst $38
    nop
    rst $38
    ld hl, sp-$01
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
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    jr c, jr_013_58be

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
    ccf
    ccf
    inc bc
    inc bc
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    rlca
    rlca
    add a
    add a
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    add b
    add b
    ret nz

    ret nz

    ld hl, sp-$08
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_013_58be:
    rst $38
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
    ld e, $1e
    inc bc
    inc bc
    rlca
    rlca
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
    cp a
    cp a
    rst $38
    rst $38
    rst $18
    rst $18
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
    nop
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
    nop
    rst $38
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
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    db $fc
    inc bc
    rst $38
    ret nz

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rra
    rra
    nop
    nop
    ld bc, $0101
    ld bc, $e3e3
    rst $38
    rst $38
    db $fd
    db $fd
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ret nz

    ret nz

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
    rst $38
    rst $38
    ld a, a
    ld a, a
    rrca
    rrca
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rst $28
    rst $28
    rst $38
    rst $38
    di
    di
    ldh [$e0], a
    ret nz

    ret nz

    ret nz

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
    ldh [$e0], a
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
    rst $38
    rst $38
    nop
    rst $38
    ldh [rIE], a
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $ffff
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rTAC]
    ldh a, [rTAC]
    ldh a, [$0b]
    ld hl, sp+$0c
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rst $38
    ld e, $1f
    ld bc, $0101
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    rst $00
    rst $00
    rst $38
    rst $38
    ei
    ei
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    add b
    add b
    ldh [$e0], a
    cp $fe
    rst $38
    rst $38
    rrca
    rrca
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0303
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    ld hl, sp-$08
    ldh a, [$f0]
    ldh a, [$f0]
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
    nop
    rst $38
    add b
    ld a, a
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
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
    cp $01
    cp $01
    db $fc
    inc bc
    ldh a, [rIF]
    ret nz

    ccf
    rst $38
    nop
    pop af
    nop
    ret nz

    nop
    sbc a
    rra
    xor [hl]
    rra
    nop
    adc [hl]
    nop
    ld h, b
    jr z, jr_013_5a90

    ld bc, $0301
    inc bc
    ld b, $07
    add hl, bc
    adc h
    ld [bc], a
    add b
    sub h
    pop bc
    xor b
    add d
    ret nz

    push de

jr_013_5a90:
    ld b, b
    db $eb
    ld h, b
    rst $38
    ld sp, $1fff
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
    inc bc
    rst $38
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
    rrca
    rst $38
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    rrca
    rrca
    rst $28
    rst $28
    rst $38
    rst $38
    di
    di
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

    ldh [$e0], a
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
    rst $38
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
    rlca
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop

jr_013_5b19:
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
    ld b, b
    ld a, a
    ld b, b
    rst $18
    ldh [$dc], a
    db $e3
    sbc b
    rst $10
    sub b
    ccf
    db $10
    ld e, a
    jr nz, jr_013_5b19

    jr nz, jr_013_5bdb

    ccf
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $18
    cp a
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
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
    ret nz

    ret nz

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
    ld bc, $8101
    add c
    pop af
    pop af
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
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    ld hl, sp-$08
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rst $38
    rlca
    rst $38
    nop
    rst $38

jr_013_5bdb:
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
    ret nz

    nop
    ldh a, [rP1]
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp-$80
    cp $fe
    ld sp, hl
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
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

Call_013_5c1c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, [hl]
    ld a, [hl]
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
    rrca
    rrca
    rst $18
    rst $18
    rst $38
    rst $38
    di
    di
    ldh a, [$f0]
    ldh a, [$f0]
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ret nz

    ld a, b
    ld a, b
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
    rra
    rra
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
    rst $38
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    db $fc
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
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
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
    add c
    pop af
    pop af
    rst $38
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
    cp $fe
    db $fc
    db $fc
    ld a, h
    ld a, h
    ld c, $0e
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
    rst $38
    nop
    rst $38
    ret nz

    ccf
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    inc a
    ccf
    rra
    rra
    rra
    rra
    ccf
    ccf
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    db $e3
    db $e3
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rra
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
    ret nz

    ret nz

    db $fc
    db $fc
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
    ld bc, $0000
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
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0103
    rlca
    inc bc
    rlca
    ld [bc], a
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
    rlca
    inc bc
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
    inc c
    db $f4
    inc c
    db $f4
    rrca
    rrca
    nop
    rrca
    rlca
    add hl, de
    add hl, bc
    ld e, $0e
    rra
    rrca
    jr jr_013_5dc4

    inc a
    nop
    ccf
    nop
    ccf
    inc a
    inc bc
    inc bc

jr_013_5dc4:
    nop
    nop
    db $fc
    db $fc
    inc bc
    rst $38
    add b
    rst $38
    ld a, h
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    ld a, $3e
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
    jp $ffc3


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
    ld a, $3e
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
    add e
    add e
    di
    di
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
    inc bc
    ld bc, $0307
    rrca
    rlca
    inc e
    inc c
    jr c, jr_013_5e5a

    ld [hl], b
    jr nc, jr_013_5ec4

    ccf
    rst $38
    ld a, a
    rst $38
    ld c, a
    rst $38
    ld [hl], c
    rst $38
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38

jr_013_5e5a:
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [rIE], a
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
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    dec d
    rst $38
    nop
    rlca
    ld b, b
    ld hl, sp-$03
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    nop
    rrca
    ldh a, [rIE]
    nop
    rst $38
    ldh a, [rIF]
    rrca
    nop
    nop
    ldh [$e0], a
    rra
    rst $38
    nop
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
    ldh a, [rIE]
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
    ldh [$e0], a
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

jr_013_5ec4:
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
    ret nz

    ret nz

    db $fc
    db $fc
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
    ld hl, sp+$07
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    ld a, a
    rst $38
    rst $30
    sbc a
    sub a
    rra
    inc de
    rrca
    dec bc
    rrca
    dec bc
    rlca
    inc bc
    rst $28
    db $ed
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    ld a, $ff
    add $f8
    rst $38
    cp $ff
    nop
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    cp $fe
    jp $c3fc


    db $fc
    db $fd
    db $fc
    push bc
    db $fc
    db $e3
    inc e
    rst $38
    ldh [rIE], a
    ld sp, hl
    ei
    ld sp, hl
    ei
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    pop af
    rst $30
    di
    rst $30
    di
    rst $30
    di
    rst $30
    db $e3
    rst $28
    rst $20
    ld l, a
    rlca
    inc c
    ldh [$e9], a
    rst $20
    db $ec
    rst $00
    reti


    rst $08
    db $db
    rst $08
    db $10
    rst $08
    rra
    adc a
    ld d, e
    pop af
    ld bc, $00ff
    rst $38
    ret nz

    ccf
    ccf
    nop
    nop
    add b
    add b
    ld a, h
    db $fc
    inc bc
    rst $38
    add b
    rst $38
    ld a, [hl]
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
    add b
    rst $38
    ld a, h
    ld a, a
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
    inc a
    inc a
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
    inc bc
    inc bc
    inc bc
    inc bc
    jp $fbc3


    ei
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
    rst $38
    sbc $ff
    db $dd
    rst $38
    db $dd
    rst $38
    cp e
    rst $38
    or a
    rst $38
    xor [hl]
    ld hl, $1fff
    rst $38
    rra
    rst $38
    nop
    rst $38
    ccf
    ld a, a
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    adc a
    adc a
    nop
    nop
    add b
    add b
    db $fc
    db $fc
    cp $1e
    rst $38
    ldh [$e0], a
    ldh [$fc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    cp [hl]
    rst $38
    inc a
    rst $38
    rst $38
    db $10
    rra
    ld h, b
    pop hl
    db $e4
    cp $fe
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    pop af
    ldh a, [$f0]
    nop
    nop
    db $fc
    nop
    rst $38
    add b
    ld a, a
    ld a, b
    rlca
    rlca
    nop
    nop
    ldh a, [$f0]
    rrca
    rst $38
    nop
    rst $38
    ldh a, [rIE]
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
    ret nz

    ret nz

    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rrca
    ld bc, $0001
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
    ret nz

    rst $38
    ldh a, [rIE]
    call z, $c2ff
    rst $38
    call $9fff
    rst $38
    cp [hl]
    rst $38
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    add b
    rst $38
    rst $38
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    adc b
    adc b
    nop
    nop
    nop
    nop
    inc b
    inc b
    inc bc
    inc bc
    add c
    ld bc, $017f
    inc bc
    nop
    inc bc
    ld [bc], a
    add e
    add d
    ld a, e
    ld a, d
    ld a, [hl]
    ld a, h
    ld a, $3c
    ld c, h
    ld c, b
    inc c
    ld [$7cfb], sp
    di
    inc e
    rst $30
    jr @+$09

    ld e, b
    rst $30
    ld hl, sp-$11
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$30]
    jr nz, jr_013_6153

    ld b, b
    ldh [$c0], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [$e0], a
    nop
    nop
    nop
    nop
    rst $38
    ret nz

    ccf
    cp $01
    rst $38
    ret nz

    rst $38
    ld a, $ff
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh a, [rIE]
    rst $08
    rst $08
    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ld hl, sp-$08
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
    rlca
    rlca
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    rra
    inc bc
    inc bc
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_013_6153:
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
    ret nz

    add b
    ret nz

    add b
    ldh [$c0], a
    ldh a, [$e0]
    ldh a, [$e0]
    ld hl, sp-$30
    ld hl, sp+$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$10
    ld hl, sp-$20
    ldh a, [rP1]
    ldh a, [$80]
    ldh a, [$e0]
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    ret nz

    add b
    ret nz

    add b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    ld hl, sp-$01
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
    ld hl, sp-$01
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
    ldh [$e0], a
    ld a, [hl]
    ld a, [hl]
    ld a, a
    ld a, a
    nop
    nop
    ld bc, $0302
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    ld c, $0f
    inc b
    inc b
    inc b
    db $10
    ld de, $1207
    inc de
    nop
    nop
    inc d
    dec d
    ld d, $17
    jr jr_013_6221

    ld a, [de]
    inc b
    inc b
    dec de
    inc e
    dec e
    ld e, $1f
    nop
    nop
    jr nz, jr_013_6235

    inc b
    ld [hl+], a
    inc hl
    inc h
    dec h
    inc b
    inc b
    ld h, $27
    jr z, jr_013_6248

    ld a, [hl+]
    nop

jr_013_6221:
    dec hl
    inc l
    dec l
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
    ld l, $2f
    rlca
    jr nc, jr_013_6260

    ld [hl-], a
    nop
    inc sp
    inc [hl]
    dec [hl]
    inc b

jr_013_6235:
    inc b
    inc b
    inc b
    inc b
    inc b
    ld [hl], $37
    jr c, jr_013_6277

    ld a, [hl-]
    add hl, hl
    nop
    dec sp
    inc a
    dec a
    inc b
    inc b
    inc b
    inc b

jr_013_6248:
    inc b
    inc b
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    nop
    ld b, h
    ld b, l
    ld b, [hl]
    inc b
    inc b
    inc b
    inc b
    inc b
    ld b, a
    ld c, b
    rlca
    ld c, c
    ld b, e
    ld c, d
    ld c, e

jr_013_6260:
    nop
    ld c, h
    ld [bc], a
    rlca
    ld c, l
    inc b
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    add hl, hl
    nop
    ld d, a
    dec bc
    rlca
    ld e, b
    inc b
    ld e, c

jr_013_6277:
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c
    ld h, d
    nop
    ld h, e
    rlca
    rlca
    rlca
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    rlca
    ld l, c
    ld l, d
    add hl, hl
    ld l, e
    ld l, h
    nop
    ld l, l
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    nop
    db $76
    rlca
    rlca
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
    add hl, hl
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
    rlca
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    nop
    dec hl
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
    sbc e
    sbc h
    inc sp
    sbc l
    inc b
    sbc [hl]
    sbc a
    and b
    inc b
    and c
    and d
    and e
    and h
    and l
    and [hl]
    and a
    add hl, hl
    xor b
    dec sp
    xor c
    inc b
    inc b
    inc b
    inc b
    inc b
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    ld b, h
    or e
    ld b, a
    or h
    or l
    inc b
    inc b
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
    jp nz, $04c3

    call nz, $c6c5
    rst $00
    ret z

    ret


    jp z, $cccb

    add hl, hl
    call $04ce
    rst $08
    ret nc

    inc b
    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, Jump_000_0101

    inc b
    inc bc
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
    ld bc, $0401
    inc bc
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
    ld bc, $0401
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
    ld bc, $0001
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
    ld [bc], a
    ld bc, $0101
    ld bc, $0401
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0100
    inc b
    inc bc
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
    inc b
    inc bc
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
    inc b
    inc bc
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    ld bc, $0304
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    ld [bc], a
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
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0004
    nop
    nop
    inc bc
    inc bc
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0001
    ld bc, $0401
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0504
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0504
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    dec b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0401
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    inc b
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    rlca
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc e
    db $e3
    ld a, h
    add e
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr c, @+$01

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

jr_013_64e4:
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr c, jr_013_64e4

    ret nz

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
    add b
    add b
    add b
    add b
    add b
    add b
    add b
    nop
    rst $38
    ld bc, $ffff
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], c
    adc [hl]
    pop af
    ld c, $71
    adc [hl]
    ld sp, $39ce
    add $00
    rst $38
    nop
    rst $38
    ldh [$1f], a
    ld hl, sp+$07
    ldh a, [rIF]
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    rra
    ret nz

    rlca
    add a
    ld bc, $0187
    adc a
    ld bc, $018f
    adc a
    ld bc, $018f
    rst $00
    ld bc, $00c7
    rst $00
    nop
    rst $20
    nop
    rst $30
    ld bc, $00f3
    ld sp, hl
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
    ldh [$1f], a
    rrca
    rst $38
    ldh a, [$7f]
    add b
    rst $38
    ld bc, $0eff
    rst $38
    ld [hl], b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc e
    db $fc
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0f01
    rrca
    ccf
    ccf
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
    ldh a, [rP1]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    nop
    ccf
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ldh a, [$8f]
    ld [hl], b
    add a
    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    rrca
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rrca
    ldh a, [rTAC]
    ld hl, sp+$01
    cp $01
    cp $00
    cp $00
    rst $38
    nop
    cp $02
    db $fc
    inc bc
    db $fc
    add a
    ld hl, sp-$19
    ld hl, sp-$09
    ld hl, sp-$01
    ld a, b
    rst $38
    inc a
    rst $38
    ld a, $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    pop hl
    add b
    add b
    add b
    nop
    add b
    nop
    nop
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
    db $fc
    rra
    ldh [rIE], a
    nop
    rst $38
    inc bc
    rst $38
    inc a
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
    inc bc
    rst $38
    rra
    rst $38
    rst $28
    rst $28
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
    ld c, $0e
    ld a, b
    ld a, b
    ld hl, sp-$08
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, a
    rst $38
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
    ldh a, [rP1]
    nop
    nop
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
    adc a
    nop
    rst $00
    nop
    rst $20
    nop
    rst $20
    nop
    di
    nop
    di
    nop
    ld sp, hl
    nop
    ld sp, hl
    nop
    ld sp, hl
    add b
    ld sp, hl
    add b
    ld sp, hl
    nop
    ei
    nop
    rst $30
    nop
    rst $28
    nop
    sbc a
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
    rlca
    rlca
    ld a, b
    ccf
    ret nz

    rst $38
    ld bc, $0eff
    rst $38
    ld [hl], b
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
    ld bc, $0fff
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
    cp $fe
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    rra
    nop
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0f0e
    ld [hl], b
    ld a, a
    add b
    rst $38
    inc bc
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    inc a
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    ld sp, hl
    pop bc
    pop bc
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
    nop
    rst $38
    nop
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
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
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

    ccf
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
    inc bc
    inc bc
    inc e
    rra
    ldh [rIE], a
    nop
    rst $38
    rrca
    rst $38
    ld [hl], b
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

jr_013_67e8:
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr c, jr_013_67e8

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
    rlca
    rlca
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
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
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
    ld hl, sp+$07
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
    rlca
    rlca
    jr c, jr_013_6889

    ret nz

    rst $38
    inc bc
    rst $38
    inc e
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rst $20
    rst $20
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
    nop
    rlca
    rlca
    rra
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_013_6889:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
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
    ldh a, [rP1]
    nop
    nop
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
    ldh [$1f], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rlca
    ld bc, $0f1e
    ldh a, [rIE]
    nop
    rst $38
    rlca
    rst $38
    ld a, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld bc, $0fff
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
    ldh [$e0], a
    ldh [$e0], a
    rst $20
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, a
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    rrca
    nop
    ccf
    nop
    ld a, a
    inc bc
    db $fc
    ccf
    ret nz

    rst $38
    inc bc
    rst $38
    inc e
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
    rst $38
    nop
    rst $38
    ld bc, $0eff
    cp $30
    ldh a, [$f0]
    ldh a, [$f0]
    ldh a, [$f8]
    ld hl, sp-$08
    ld hl, sp-$04
    db $fc
    db $fc
    db $fc
    cp $fe
    cp $fe
    cp $fe
    rst $38
    rst $38
    db $fd
    db $fd
    ldh [$e0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    ccf
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
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
    rst $38
    ldh [rIE], a
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    inc bc
    db $fc
    ccf
    ret nz

    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
    rra
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$7f
    add b
    rst $38
    rlca
    rst $38
    jr c, @+$01

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

jr_013_6a42:
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr c, jr_013_6a42

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
    inc bc
    inc bc
    rra
    rra
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
    ld a, a
    ld a, a
    ld a, a
    ld a, a
    ccf
    ccf
    ccf
    ccf
    rra
    rra
    ld e, $1e
    jr nc, jr_013_6aaa

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
    rlca
    rst $38
    rst $38
    ld hl, sp-$01
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a

jr_013_6aaa:
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rIF]
    adc h
    ld a, a
    ld a, h
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    inc a
    db $fc
    ld a, h
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$04
    ret nz

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
    ld bc, $1ffe
    ldh [rIE], a
    inc bc
    rst $38
    inc e
    rst $38
    ldh [rIE], a
    nop
    rst $38
    inc bc
    rst $38
    rra
    rst $38
    rst $38
    rst $38
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
    inc bc
    inc bc
    rrca
    rrca
    ld a, a
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
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
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    add b
    add c
    add c
    nop
    rst $38
    ld bc, $ffff
    cp $ff
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    rst $38
    db $fc
    ccf
    ret nz

    rst $38
    rlca
    rst $38
    jr c, @+$01

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
    inc bc
    rst $38
    inc c
    db $fc
    ld a, h
    db $fc
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
    cp $fe
    ldh a, [$f0]
    add b
    add b
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

    ret nz

    ret nz

    ldh [$e0], a
    ldh [$e0], a
    di
    di
    rst $38
    rst $38
    rst $28
    rst $28
    adc a
    adc a
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
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
    ld bc, $0701
    rlca
    rra
    rra
    ld a, a
    ld a, a
    rst $38
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
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    rst $38
    nop
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
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    ld c, $0f
    inc c
    rra
    ld e, $1f
    ld e, $1f
    ld e, $1f
    rra
    rra
    rra
    rra
    rra
    rra
    rra
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
    jr nc, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [$7f]
    add c
    rst $38
    ld e, $ff
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
    rst $38
    ld bc, $0eff
    cp $70
    ldh a, [$80]
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
    add b
    add b
    add b
    add b
    pop bc
    pop bc
    rst $28
    rst $28
    rst $38
    rst $38
    sbc a
    sbc a
    rrca
    rrca
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0001
    nop
    ld bc, $0701
    rlca
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
    ld a, a
    ld a, a
    ld a, h
    ld a, h
    ld h, b
    ld h, b
    ldh [$e0], a
    ldh a, [$f0]
    ldh a, [$f0]
    ld hl, sp-$08
    ld hl, sp-$08
    ld a, a
    rst $38
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    ldh a, [rP1]
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
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$3f], a
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
    rst $38
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld b, $ff
    add hl, bc
    rst $30
    ld d, $e9
    ld l, $d1
    dec b
    ld a, [$fb05]
    ld a, [hl-]
    push bc
    ld [hl], h
    adc e
    ld [hl], b
    adc a
    ccf
    ret nz

    ccf
    ret nz

    ld a, $c1
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $10
    rst $28
    cp a
    rst $08
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rra
    ldh [rIE], a
    rlca
    rst $38
    jr c, @+$01

    ret nz

    rst $38
    rlca
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a
    ccf
    ccf
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
    rrca
    rrca
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
    rst $38
    cp $fe
    ldh a, [$f0]
    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
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
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    cp $ff
    jp Jump_013_7cfc


    add e
    cp $01
    ccf
    pop bc
    rra
    pop hl
    ld e, a
    pop hl
    sbc a
    pop hl
    db $dd
    db $e3
    db $dd
    db $e3
    rst $18
    db $e3
    cp e
    rst $00
    and e
    rst $18
    inc bc
    rst $38
    daa
    rst $18
    rlca
    rst $38
    rst $00
    ccf
    cp a
    ld e, a
    ld a, a
    cp [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $fd
    cp $fc
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rlca
    ld hl, sp+$3f
    pop bc
    rst $38
    ld c, $ff
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
    rst $38
    inc bc
    rst $38
    inc e
    db $fc
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
    cp $fe
    ld hl, sp-$08
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    ld hl, sp-$08
    ei
    ei
    rst $38
    rst $38
    di
    di
    add c
    add c
    nop
    nop
    nop
    nop
    ld bc, $0701
    rlca
    rra
    rra
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
    rlca
    rlca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0000
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    cp $00
    ldh a, [rP1]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    nop
    nop
    add b
    nop
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh [$7f], a
    rlca
    rst $38
    jr c, @+$01

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
    inc bc
    rst $38
    rra
    rst $38
    pop hl
    pop hl
    nop
    nop
    nop
    nop
    nop
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
    rst $00
    rst $00
    rst $38
    rst $38
    rst $38
    rst $38
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
    inc bc
    inc bc
    rra
    rra
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
    ld e, $1e
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
    db $fc
    db $fc
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    db $fc
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    rra
    pop hl
    rst $38
    ld c, $ff
    ld [hl], b
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
    inc bc
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
    ld e, $1e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh [$e0], a
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
    db $fc
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

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
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

    nop
    nop
    nop
    nop
    rrca
    ldh a, [rIE]
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
    cp $01
    cp $01
    cp $01
    cp $01
    db $fc
    inc bc
    ld hl, sp+$07
    ld sp, hl
    rlca
    di
    rrca
    di
    rrca
    rst $30
    rrca
    rst $30
    rrca
    ld a, [$f807]
    rlca
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
    jr c, jr_013_7005

    jp Jump_000_3cff


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

jr_013_6fd6:
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    jr c, jr_013_6fd6

    ret nz

    ret nz

    nop
    nop
    add b
    add b
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    db $fc
    db $fc
    ldh [$e0], a
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
    pop af
    pop af

jr_013_7002:
    rst $38
    rst $38
    rst $38

jr_013_7005:
    rst $38
    jp $01c3


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
    add c
    add c
    rst $00
    rst $00
    rst $18
    rst $18
    rst $38
    rst $38
    sbc a
    sbc a
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
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ld a, a

jr_013_7048:
    ccf
    ccf
    rra
    rra
    rra
    rra
    rrca
    rrca
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_013_7058:
    ld a, a
    rst $38
    rst $38
    add b
    rst $38
    nop
    ldh a, [rP1]
    nop
    rst $38
    dec b
    ld a, [$02fd]
    ldh [$1f], a
    db $db
    inc h
    db $db
    inc h
    or [hl]
    ld c, c
    or [hl]
    ld c, c
    or l
    ld c, d
    add c
    ld a, [hl]
    jp $e73c


    jr jr_013_7048

    jr nc, jr_013_7002

    ld a, b
    inc bc
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    di
    rra
    db $e4
    ccf
    call nz, $c8bf
    rst $18
    ld hl, sp-$01
    pop af
    call c, $98e0
    ldh [$38], a
    ret nz

    jr c, jr_013_7058

    ld a, h
    add b
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
    ld bc, $0e01
    rrca
    pop af
    rst $38
    ld c, $ff
    ld [hl], b
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
    rlca
    rst $38
    ccf
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
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0301
    inc bc
    rra
    rra
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
    rlca
    rlca
    ld c, $0e
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
    ld e, $1e
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
    ld a, a
    ld a, a
    ccf
    ccf
    rra
    rra
    rrca
    rrca
    inc c
    inc c
    ld a, $3e
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
    rra
    rst $38
    rst $38
    ldh [rIE], a
    nop
    ldh a, [rP1]
    nop
    nop
    rrca
    ldh a, [rIE]
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
    ld b, b
    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    ld a, a
    ld b, b
    ccf
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
    dec a
    ccf
    jp Jump_000_1cff


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
    inc bc
    rst $38
    inc e
    db $fc
    ldh [$e0], a
    ret nz

    ret nz

    ldh a, [$f0]
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
    db $fc
    db $fc
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$e0], a
    ldh a, [$f0]
    db $fc
    db $fc
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    ldh a, [$f0]
    add b
    add b
    nop
    nop
    nop
    nop
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
    db $fc
    db $fc
    ldh a, [$f0]
    ret nz

    ret nz

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
    db $fc
    db $fc
    ldh a, [$f0]
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
    add b
    add b
    add b
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

Jump_013_7cfc:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
