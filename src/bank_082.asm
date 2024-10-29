SECTION "ROM Bank $082", ROMX[$4000], BANK[$82]

    ld [$0807], sp
    rlca
    ld [$0007], sp
    rlca
    nop
    rlca
    nop
    rlca
    db $10
    rlca
    nop
    rlca
    db $10
    rlca
    jr jr_082_401b

    ld [$1a07], sp
    rlca
    ld a, [de]
    rlca
    dec sp

jr_082_401b:
    rlca
    ccf
    inc bc
    rra
    inc hl
    rst $38
    inc bc

jr_082_4022:
    cp h
    inc bc
    inc c
    nop
    nop
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    nop
    rst $38
    nop
    rst $38
    rst $20
    jr jr_082_4022

    db $10
    sbc $21
    rst $30
    ld [$31ce], sp
    ccf
    rst $38
    ccf
    rst $38
    ret nz

Jump_082_403f:
    ccf
    ccf
    rst $38
    rrca
    rst $38
    ld e, a
    rst $38
    ld sp, $73ff
    rst $38
    pop de
    rst $38
    ret


    rst $38
    add a
    rst $38
    ld l, l
    rst $38
    rst $38
    rst $38
    xor c
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    ld e, l
    rst $38
    jr nc, @+$01

    rst $38
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld [$00ff], sp
    rst $38
    or e
    rst $38
    push af
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    cp a
    rst $38
    ld hl, sp-$01

jr_082_4082:
    ld b, $ff
    cp $ff
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
    jp nz, $afff

    rst $38
    db $fd
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld bc, $08ff
    rst $38
    nop
    rst $38
    ld [hl+], a
    rst $38
    ld a, e
    rst $38
    jr nz, @+$01

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jr jr_082_4082

    add a

jr_082_40c3:
    ld [hl], b
    and e

jr_082_40c5:
    inc e
    ret c

    rlca
    add [hl]
    ld bc, $00d1
    add sp, $00
    push af
    nop
    db $fd
    nop
    xor [hl]
    nop
    inc l
    nop
    rlca
    nop
    inc d
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
    ld h, h
    nop
    nop
    ld h, b
    inc e
    ld h, b
    ld h, b
    ld e, $3c
    nop
    ldh [rP1], a
    ld a, [hl-]
    rst $08
    jr nz, jr_082_40c3

    jr nz, jr_082_40c5

    inc bc
    ldh [$03], a
    ldh [$1f], a
    ldh [rNR10], a
    rst $28
    db $10

Jump_082_40ff:
    rst $28
    rra
    ldh [rNR21], a
    rst $28
    rrca
    ldh a, [$0c]
    di
    rlca

jr_082_4109:
    rst $38
    ld e, $e7
    sbc h
    rst $38
    or a
    ld hl, sp-$0c
    ei
    dec d
    cp $00
    nop
    jr nc, jr_082_4118

jr_082_4118:
    rst $30
    nop
    db $fc
    inc bc
    dec de
    rst $30
    ld [hl], a
    rst $38
    jr jr_082_4109

    jr @-$17

    sub d
    ld l, l
    ld b, $f9
    rlca
    ld hl, sp-$3d
    db $fc
    jp z, Jump_000_18f5

    rst $20
    di
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a

Jump_082_4135:
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    scf
    rst $38
    dec sp
    rst $38
    di
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    or l
    rst $38
    call nc, $aaff
    rst $38
    db $fc
    rst $38
    rst $30
    rst $38
    ld b, b
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    rst $18
    rst $38
    sub a
    rst $38
    and h
    rst $38
    rst $38
    rst $38
    nop

jr_082_4163:
    rst $38
    ld bc, $83ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $ffff
    rst $38
    inc bc
    rst $38
    ld [bc], a
    rst $38
    sub l
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
    pop bc
    rst $38
    ld b, c
    rst $38
    cp $ff
    ld [de], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ldh [rIE], a
    rst $30
    rst $38
    nop

jr_082_419b:
    rst $38
    db $10
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    inc b
    rst $38
    jr z, @+$01

    nop
    rst $38
    nop
    jr nz, jr_082_4163

    nop
    ret nc

    jr nz, jr_082_419b

    nop
    rlca
    ldh a, [$81]
    ld a, h
    ret nz

    inc a
    ld c, b
    scf
    rla
    rst $38
    dec d
    rst $38
    inc de
    rst $38
    inc d
    rst $38
    rla
    rst $38
    rla
    rst $38
    inc bc
    rst $20
    inc bc
    jp Jump_000_03c0


    ret nz

    inc bc
    ret nz

    inc bc
    ret nz

    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    ld [bc], a
    ld bc, $0300
    ld [bc], a
    ld bc, $0102
    ld bc, $0002
    inc bc
    nop
    inc bc
    inc bc
    nop
    nop
    rst $38
    ld c, b
    sub a
    ret z

    rla
    adc e
    inc d
    adc $10
    call z, Call_000_2913
    rst $10
    ld h, b
    sbc a
    ldh [$1f], a
    db $e3
    inc e
    pop hl
    rra
    ld h, e
    sbc a
    ld h, e
    sbc a
    ldh [$1f], a
    db $10
    rst $38
    adc h
    ld [hl], a
    ld a, [de]
    db $fd
    nop
    rst $38
    inc d
    jr nz, @+$62

    nop
    cp a
    nop
    ld e, a
    or a
    rst $38
    rst $38
    rst $38
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
    rst $38
    rst $38
    rst $18
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
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
    ret nc

    rst $38
    adc a
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    push af
    rst $38
    ld a, [bc]
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    or c
    rst $38
    cp a
    rst $38
    add sp, -$01
    di
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    rlca
    rst $38
    jr c, @+$01

    ldh [rIE], a
    rst $38
    rst $38
    and d
    rst $38
    sub b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    rst $28
    rst $38
    ldh a, [rIE]
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld c, b
    rst $38
    ld hl, sp-$01
    and d
    rst $38
    rst $38
    rst $38
    ld d, b
    rst $38
    add sp, -$01
    nop
    rst $38
    inc b
    rst $38
    ld bc, $f0ff
    rst $38
    rrca
    rst $38
    ld bc, $08ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$f7ff], sp
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_082_42d7

    ldh [rIF], a
    cp [hl]
    ld bc, $01fe
    nop
    db $d3
    add b
    rst $38
    ld a, h
    ei
    ld bc, $bffe
    ld b, b
    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$af], a
    ld b, b
    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rNR34], a

jr_082_42d7:
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [rNR32], a
    ldh [$80], a
    ld h, b
    add b
    ld h, b
    add b
    ld h, b
    ldh a, [rP1]
    db $ec
    nop
    ret z

    ld [bc], a
    ld a, $c0
    ld [c], a
    inc e
    nop
    rst $38
    ld d, h
    xor a
    ld [de], a
    dec l
    ld d, $29
    ld d, $29
    ld d, b
    xor a
    sub d
    dec l
    ld c, [hl]

Jump_082_42ff:
    ld sp, $338c
    add $3f
    add $bf
    ld b, h
    cp a
    ld b, c
    cp a
    jp Jump_000_1a3f


    rst $38
    nop
    rst $38
    sbc $20
    ldh [rP1], a
    nop
    nop
    ld bc, $9f00
    ld l, a
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
    ld bc, $03ff
    rst $38
    ld bc, $00ff
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld de, $4cff
    rst $38
    ld a, [bc]
    rst $38
    nop
    rst $38

jr_082_4350:
    nop
    rst $38
    ld l, a
    rst $38
    rst $18
    rst $38
    cp $ff
    rst $38
    rst $38
    add [hl]
    rst $38
    ei
    rst $38
    rrca
    rst $38
    xor $ff
    rst $38
    rst $38
    xor a
    rst $38
    inc c
    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    rst $38
    rst $38
    ld bc, $20ff
    rst $38
    nop
    rst $38
    add c
    rst $38
    cp a
    rst $38
    db $f4
    rst $38
    ld [$fbff], a
    rst $38
    rst $38
    rst $38
    ld bc, $22ff
    rst $38
    add b
    rst $38
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    ld h, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    rrca
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    rst $38
    ld b, b
    rst $38
    ld a, l
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    db $10
    ret nz

    dec bc
    ldh [$f4], a
    nop
    ldh a, [rP1]
    nop
    cp b
    nop
    rst $38
    nop
    rst $38
    ld a, a
    add b
    ld c, c
    add b
    ld c, l
    add b
    ld a, l
    add b
    ld [hl], l
    add b
    jr nz, jr_082_4350

    ld a, a
    add b
    ld a, a
    add b
    ld a, a
    add b
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
    nop
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
    sub b
    nop
    jp c, $ff00

    nop
    cp $00
    ld a, a
    add b
    ld a, [hl]
    add b
    or b
    ld b, b
    nop
    add b
    nop
    nop
    nop
    nop
    rlca
    nop
    di
    inc c
    rst $38
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
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
    cp $ff
    ld a, [$deff]
    rst $38
    ld a, [$b8ff]
    rst $38
    sbc b
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    push de
    rst $38
    ei
    rst $38
    jr nz, @+$01

    cp [hl]
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    cp d
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    rst $38
    nop
    rst $38
    xor b
    rst $38
    ld a, a
    rst $38
    ld [hl], h
    rst $38
    ld d, b
    rst $38
    db $fd
    rst $38
    ld a, b
    rst $38
    ld l, b
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    inc b
    rst $38
    add hl, bc
    rst $38
    or $ff
    rra
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld a, [c]
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    dec c
    rst $38
    adc b
    rst $38
    cp $ff
    ld a, a
    rst $38
    add hl, bc
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $ff
    nop
    rst $38
    ld e, h
    nop
    inc a
    nop
    rra
    nop
    db $fc
    nop
    ldh a, [rSB]
    nop
    ld l, a
    nop
    dec e
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    ld [de], a
    nop
    ld c, c
    nop
    rst $28
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    cp a
    nop
    db $fd
    ld [bc], a
    adc a
    nop
    add b
    nop
    ld bc, $0600
    ld bc, $0f13
    ld c, a
    ccf
    ccf
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
    rlca
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
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    ld hl, sp-$01
    ld a, a
    rst $38
    rst $38
    rst $38
    ld [$00ff], sp

Call_082_44ff:
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    db $ed
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld [c], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    ld a, [de]
    db $fd
    ld a, [de]
    db $fd
    ld a, [hl-]
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    ldh a, [rIE]
    ld bc, $80ff
    rst $38
    db $e3
    rst $38
    cp $ff
    rst $28
    rst $38
    nop
    rst $38
    add b
    rst $38
    and b
    rst $38
    nop
    rst $38
    cp $ff
    dec b
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
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
    ld [$04ff], sp
    rst $38
    ret nz

    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rra
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    cp a
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    ld e, l
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
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0700
    nop
    rla
    nop
    ccf
    nop
    cp a

jr_082_45b1:
    nop
    cp $01
    sbc h
    ld h, e
    sbc h
    ld h, e
    ld a, b
    rlca
    jr nz, jr_082_45db

    or b
    ld a, a
    db $f4
    rst $38
    rrca
    ldh a, [rTAC]
    ld hl, sp+$02
    db $fd
    inc e
    db $e3
    jr jr_082_45b1

    ld a, h
    rst $38
    ld h, l
    sbc d
    rlca
    ld hl, sp-$13
    ld a, [c]
    push hl
    ld a, [$ee11]
    dec b
    ld a, [$ff00]
    inc bc

jr_082_45db:
    db $fc
    nop
    rst $38
    ld c, [hl]
    or c
    ei
    rst $38
    rst $38
    rst $38
    dec a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    jr nc, @+$01

    nop
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    cp $ff
    and h
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
    ld bc, $00fe
    rst $38
    ld [$00ff], sp
    rst $38
    ld l, b
    rst $30
    nop
    rst $38
    rrca
    ldh a, [rSB]
    cp $50
    rst $38
    ld bc, $01fe

jr_082_461d:
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr z, jr_082_461d

    ld c, a
    or b
    ld a, a
    add b
    rst $18
    jr nz, @+$0d

    db $f4
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp c, $80ff

    ld a, a
    inc c
    di
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp $fd
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, $fb
    ld b, $ff
    ld b, $ff
    ld c, $ff
    ld c, $ff
    inc c
    rst $38
    call Call_000_00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, a
    rst $38
    ld h, a
    rst $38
    cp l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    jp hl


    ld d, $fd
    ld [bc], a
    ei
    inc b
    ldh [$1f], a
    ldh [$1f], a
    pop hl
    ld e, $04
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
    db $fd
    ld [bc], a
    rst $30
    ld [$ff00], sp
    inc d
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld d, $ff
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    ld b, d
    rst $38
    adc $ff
    xor $ff
    and $ff
    add c
    rst $38
    ld c, a
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, e
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $ec
    rst $38
    ld a, a
    rst $38
    ld a, e
    rst $38
    cp $ff
    adc $ff
    ld h, a
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    sub b
    rst $38
    nop
    rst $38
    nop
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
    ld [$ffff], sp
    nop
    rrca
    ldh a, [$0a]
    push af
    ld [bc], a
    db $fd
    ld a, a
    add b
    rlca
    ld hl, sp+$08
    rst $38
    rra
    ldh [$f8], a
    rst $38
    ldh [rIE], a
    ld [bc], a
    rst $38
    ldh [rIE], a
    pop bc
    rst $38
    ld [bc], a

jr_082_471b:
    rst $38

jr_082_471c:
    ld c, b
    rst $38
    rst $38
    rst $38
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$60], a
    sbc a
    rst $28
    db $10
    rst $28
    jr nc, jr_082_471c

    jr nc, jr_082_474f

    rst $38
    di
    inc c
    di
    inc c
    di
    inc c
    rlca
    ld hl, sp+$2a
    push af
    jr nz, jr_082_471b

    inc bc
    db $fc
    add e
    ld a, h
    inc bc
    db $fc
    ld bc, $f1fe
    rst $38
    rlca
    ld hl, sp+$01
    cp $0d
    ld a, [c]
    cpl
    ret nc

    ld e, c

jr_082_474f:
    and [hl]
    inc bc
    db $fc
    nop
    rst $38
    ld [bc], a
    db $fd
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $28
    add b
    ld a, a
    nop
    db $fc
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    rst $38
    rst $38
    ld hl, sp-$01
    rrca
    ldh a, [$fe]
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, $c0
    ld a, [hl]
    add b
    cp $00
    cp $00
    cp $00
    ld hl, sp+$00
    ld hl, sp+$00
    ldh a, [rP1]
    ret nc

    nop
    ldh a, [rP1]
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ret nc

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    ret nc

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    add b
    ld [hl], b
    add b
    ld [hl], d
    add b
    ld a, d
    add b
    ld a, [hl]
    add b
    ld a, $c0
    ccf
    ret nz

    cpl
    ret nc

    rrca
    ldh a, [$8f]
    ldh a, [$0d]
    ld a, [c]
    add c
    cp $81
    cp $90
    rst $38
    sub b
    rst $38
    inc d
    rst $38
    add h
    rst $38
    sub b
    rst $38
    sbc h
    rst $38
    cp h
    rst $38
    sbc h
    rst $38
    inc e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, l
    rst $38
    ld [bc], a
    rst $38
    add d
    rst $38
    xor d
    rst $38
    cp b
    rst $38
    ei
    rst $38
    and b
    rst $38
    adc b
    rst $38
    cp $ff
    ld a, e
    rst $38
    or a
    rst $38
    inc sp
    rst $38
    daa
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    rrca
    ldh a, [$ad]
    ld d, e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec b
    ld a, [$ff01]
    jr nz, @+$01

    db $e3
    rst $38
    add hl, bc
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    db $f4
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    db $fd
    nop
    or $00
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
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ldh [rIE], a
    db $fd
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    db $10
    rst $38
    ld c, b
    rst $38
    ld [$8eff], sp
    rst $38
    ei
    inc b
    ld [bc], a
    db $fd
    inc b
    rst $38
    nop
    rst $38
    ld a, [bc]
    rst $38
    ld d, c
    rst $38
    ld [bc], a
    rst $38
    ld [$7cff], sp
    nop
    ld e, a
    nop
    nop
    db $ed
    nop
    db $f4
    inc b
    ldh a, [rP1]
    ei
    nop
    cp $a8
    rst $38
    nop
    rst $38
    db $fd
    nop
    and b
    nop
    ld b, b
    nop
    ret nc

    nop
    ld b, b
    nop
    jr nz, jr_082_487e

jr_082_487e:
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    ret nc

    nop
    ldh a, [rP1]
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, a
    sub b
    rrca
    ldh a, [$0d]
    ld a, [c]
    ld [$80f7], sp
    rst $38
    ret nc

    rst $38
    ret nc

    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    call c, Call_000_00ff
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    rst $38
    rst $38
    adc [hl]
    rst $38
    call nz, Call_000_00ff
    rst $38
    nop
    rst $38
    ld a, c
    rst $38
    ld bc, $01ff
    rst $38
    add b
    rst $38
    jr nz, @+$01

    rst $38
    rst $38
    cp $ff
    inc bc
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $ffff
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    jp hl


    rst $38
    add h
    rst $38
    ld a, a
    add b
    cp a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    scf
    ret z

    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38
    nop
    cp a
    nop
    call nc, $be00
    nop
    rst $38
    nop
    db $ec
    nop
    ld [de], a
    nop
    rst $38
    nop
    db $eb
    nop
    xor b
    nop
    db $e4
    nop
    db $fd
    nop
    rst $18
    nop
    db $e4
    nop
    ld a, [$0000]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    rst $38
    ldh [rIE], a
    dec bc
    rst $38
    nop
    rst $38
    db $10
    rst $38
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
    add hl, hl
    sub $00
    rst $38
    ld b, c
    cp $21
    cp $03
    nop
    ld [hl], e
    dec c
    ld b, a
    rra
    xor b
    nop
    ld h, a
    nop
    nop
    ld b, d
    nop
    or a
    nop
    rst $38
    nop
    rst $38
    ld a, [hl+]
    nop
    nop
    nop
    nop
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
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    nop
    nop
    nop
    ld b, c
    nop
    ei
    nop
    ld c, a
    nop
    rst $18
    nop
    rst $08
    nop
    cp $01
    push af
    ld a, [bc]
    set 7, a
    rst $38
    rst $38
    rst $38
    rst $38
    db $ed
    add b
    nop
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
    ldh [$fd], a
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
    nop
    rst $38
    adc h
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    adc c
    rst $38
    inc c
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    rst $38
    nop
    ld a, a
    add b
    adc a
    ld [hl], b
    pop af
    ld c, $ef
    db $10
    ld l, a
    sub b
    nop
    rst $38
    nop
    rst $38
    adc b
    rst $38
    ld b, b
    rst $38
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, a
    nop
    nop
    nop
    cp $00
    rst $18
    nop
    cp [hl]
    nop
    rst $38
    nop
    inc c
    nop
    ld [$a000], sp
    nop
    ld l, d
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    db $ed
    nop
    ld [de], a
    nop
    dec b
    nop
    or l
    nop
    rst $38
    nop
    add [hl]
    nop
    jp nc, $ed00

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
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    inc bc
    db $fc
    add b
    ld a, a
    nop
    rst $38
    inc bc
    db $fc
    add b
    ld a, a
    xor b
    ld b, b
    ei
    db $fc
    ret nz

    rst $38
    ld de, $1080
    add c
    nop
    sub a
    nop
    rst $38
    rlca
    ei
    ld [bc], a
    db $fd
    ld a, [hl+]
    add b
    inc bc
    add b
    ld bc, $0780
    add b
    ld bc, $0180
    add b
    nop
    add b
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
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0500
    nop
    rlca
    nop
    daa
    nop
    scf
    nop
    ccf
    nop
    ld a, e
    inc b
    rst $38
    nop
    ei
    inc b
    ret nc

    cpl
    ret nz

    ccf
    or b
    ld c, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rrca
    rlca
    and a
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
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
    rst $38
    rst $38
    dec bc
    rst $38
    ld c, c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $01ff
    rst $38
    ld de, $21ff
    rst $38
    db $fd
    inc bc
    db $fc
    inc bc
    ld h, l
    inc bc
    nop
    inc bc
    ld e, h
    inc bc
    jp Jump_082_6001


    ld bc, $0180
    jp c, $ed25

    ld [de], a
    cp a
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
    cp a
    nop
    nop
    nop
    nop
    nop
    rrca
    nop
    rst $10
    nop
    xor l
    nop
    rla
    nop
    nop
    nop
    nop
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    nop
    nop
    sub b
    nop
    inc bc
    nop
    jr z, jr_082_4ae0

jr_082_4ae0:
    ld d, b
    nop
    ld [$ff00], a
    nop
    xor b
    nop
    ld d, l
    nop
    ld d, b
    nop
    db $ed
    nop
    rst $38
    nop
    ld b, a
    nop
    db $eb
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

Jump_082_4aff:
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_082_4b0c

    db $fc
    sbc l
    ld h, d

jr_082_4b0c:
    cp a
    ld b, b
    rst $08
    jr nc, jr_082_4b47

    dec bc
    ld [bc], a
    rra
    ld [bc], a
    rst $38
    ld c, d
    rla
    inc c
    ld [hl], a
    inc c
    rst $30
    ld [$fcf7], sp
    ld [hl], a
    add sp, $17
    add sp, $17
    ld l, [hl]
    dec d
    ld l, d
    dec d
    add sp, $17
    add sp, $17
    ld a, [$b005]
    rrca
    ld [hl], c
    ld c, $31
    ld c, $30
    rrca
    ld sp, $230e
    inc c
    inc sp
    inc c
    inc sp
    inc c
    ld h, $09
    scf
    ld [$0836], sp
    ld h, [hl]
    jr jr_082_4bad

jr_082_4b47:
    jr jr_082_4baf

    jr jr_082_4b91

    jr c, jr_082_4b94

    jr c, jr_082_4b8f

    ccf
    rra
    ccf
    ld de, $1531
    scf
    ld d, l
    scf
    dec hl
    ld l, a
    dec hl
    ld l, a
    dec hl
    ld l, a
    ld a, [hl+]
    ld l, [hl]
    xor d
    ld l, [hl]
    xor d
    ld l, [hl]
    xor d
    ld l, [hl]
    xor d
    ld l, [hl]
    ld e, d
    sbc $5a
    sbc $55
    db $dd
    ld d, l
    db $dd
    ld d, l
    db $dd
    ld d, l
    db $dd
    ld d, l
    db $dd
    ld d, l
    db $dd
    ld d, l
    db $dd
    ld d, l
    db $dd
    xor e
    cp e
    xor e
    cp e
    xor e
    cp e
    cp e
    adc e
    ei
    ld hl, sp-$01
    rst $38
    call z, $efbb
    cp e
    rst $28
    cp e
    db $ec

jr_082_4b8f:
    cp e
    db $e4

jr_082_4b91:
    cp e
    db $e4
    cp e

jr_082_4b94:
    db $e4
    cp e
    add $bb
    adc d
    ld [hl], a
    adc b
    ld [hl], a
    ret z

    ld [hl], a
    ld c, b
    rst $30
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_082_4bad:
    rst $38
    add b

jr_082_4baf:
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld e, a

Jump_082_4bb5:
    rst $38
    rst $18
    ld a, a
    cp a
    ld a, a
    rst $28
    ccf
    rst $18
    ccf
    rst $30
    rra
    rst $38
    rra
    dec de
    rrca
    rlca
    rrca
    adc a
    rlca
    ld a, [$bf07]
    inc bc
    rst $38
    inc bc
    rrca
    ld bc, $0102
    ccf
    nop
    ld a, a
    nop
    rrca
    db $10
    dec e
    nop
    rlca
    ld [$08a7], sp
    rrca
    nop
    inc bc
    inc b
    ld b, a
    nop
    db $fd
    ld [bc], a
    ld a, l
    ld [bc], a
    rla
    nop
    xor d
    ld bc, $016c
    rst $38
    nop
    rst $38
    nop
    ld hl, sp+$00
    ld sp, hl
    nop
    cp $00
    ld a, [hl]
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    sbc a
    nop
    rst $30
    nop
    ld [$ff00], a
    nop
    rst $28
    db $10
    ld hl, $ffde
    nop
    ei
    inc b
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
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    rst $28
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    and $ff
    add $ff
    call nz, $f4ff
    rst $38
    call nc, $efff
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $28
    db $10
    rst $38
    nop
    ei
    nop
    ld sp, hl
    nop
    ldh a, [rP1]
    ldh [rP1], a
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
    rst $38
    nop
    nop
    rst $38
    db $fc
    rst $38
    inc b
    rlca
    ld [hl], h
    ld a, a
    ld [hl], h
    ld a, a
    ld [hl], h
    ld a, a
    ld [hl], h
    ld a, a
    ld [hl], h
    ld a, a
    add sp, -$01
    add sp, -$02
    add sp, -$02
    add sp, -$02
    add sp, -$02
    add sp, -$02
    add sp, -$02
    add sp, -$02
    ret nc

    cp $d2
    db $fc
    jp nc, $d2fc

    db $fc
    jp nc, $d2fc

    db $fc
    jp nc, $c0fc

    db $fc
    ret nz

    db $fc
    ret nc

    db $fc
    pop de
    db $fc
    pop de
    inc a
    pop af
    db $fc
    push hl
    ld hl, sp+$47
    ld hl, sp+$26
    ld sp, hl
    add a
    ld hl, sp+$27
    ld hl, sp-$7a
    ld sp, hl
    rlca
    ld hl, sp+$07
    ld hl, sp+$05
    ld a, [$fa05]
    dec b
    ld a, [$f20d]
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    push af
    rst $38
    or $ff
    push af
    rst $38
    rst $30
    rst $38
    db $f4
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    xor $ff
    xor $ff
    xor $ff
    or $ff
    cp $ff
    cp [hl]
    rst $38
    cp $9f
    xor a
    rst $18
    db $fd
    rst $08
    or l
    rst $28

jr_082_4ccc:
    db $ed
    rst $30
    db $fc
    di
    ldh a, [$fb]
    ei
    db $fc
    ld a, d
    db $fd
    cp l
    ld a, [hl]
    rst $38
    ld a, $de
    ccf
    rst $38
    rra
    rst $28
    rra
    rst $28
    rra
    rst $38
    rlca
    rst $38
    rlca
    ei
    rlca
    ei
    rlca
    rst $38
    inc bc
    db $fd
    inc bc
    ld a, a
    add c
    ld a, [hl]
    add c
    cp a
    ld b, b
    cp a
    ld b, b
    ccf
    ld b, b
    ld e, a
    jr nz, jr_082_4d3a

    jr nz, jr_082_4ccc

    jr nc, @+$01

Call_082_4cff:
    db $10
    rst $20
    jr @-$07

    ld [$0cfb], sp
    ei
    inc b
    rst $38
    inc b
    ld hl, sp+$07
    ld hl, sp+$07
    xor $13
    ld b, h
    rst $38
    ld c, $fd
    sbc b
    ld a, a
    ld [$1aff], sp
    db $ed
    jr nz, @+$01

    nop
    rst $38
    inc b
    ei
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, [$fbff]
    rst $38
    ld a, [$f2ff]
    rst $38
    ld [hl-], a
    rst $38
    adc l
    ld [hl], d
    ld l, a
    sub b
    rst $38
    nop
    rst $30
    nop
    cp $00

jr_082_4d3a:
    ld d, h
    nop
    inc h
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec [hl]
    nop
    rst $38
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $29ff
    rst $38
    ld a, c
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld b, b
    rst $38
    ld [hl], b
    rst $38
    ld [de], a
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    inc d
    rst $38
    sub l
    rst $38
    add l
    rst $38
    sub h
    rst $38
    dec e
    rst $38
    dec c
    rst $38
    dec l
    rst $38
    inc l
    rst $38
    dec l
    rst $38
    dec l
    rst $38
    ccf
    rst $38
    dec sp
    rst $38
    dec sp
    rst $38
    add hl, sp
    rst $38
    dec de
    rst $38
    ld d, e
    rst $38
    ld a, l
    rst $38
    ld e, c
    rst $38
    ld a, c
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    push af
    rst $38
    db $f4
    rst $38
    and $ff
    rst $20
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $28
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
    ld a, a
    sbc a
    ld a, a
    rst $18
    ccf
    rst $18
    cp a
    cp a
    rst $18
    rst $28
    rst $18
    rst $10
    rst $28
    rst $38
    rst $20
    db $eb
    rst $30
    rst $30
    ei
    db $fd
    ei
    ei
    db $fd
    rst $38
    db $fc
    db $fd
    cp $7e
    rst $38
    cp a
    ld a, a
    cp a
    ld a, a
    ld e, a
    cp a
    ld e, a
    cp a
    cp a

Call_082_4dff:
    ld e, a
    rst $28
    rra
    rst $38
    rrca
    rst $30
    rrca
    rst $18
    daa
    dec sp
    rst $00
    add e
    ld a, a
    ld e, l
    and e
    ld hl, $04df
    rst $38
    inc b
    rst $38
    ld b, h
    cp a
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld bc, $00ff
    rst $38

Jump_082_4e20:
    rst $38
    rst $38
    ld a, [$7aff]
    rst $38
    ei
    rst $38
    ld h, e
    rst $38
    ld c, c
    rst $38
    ld [hl+], a
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    or [hl]
    nop
    sub a
    nop
    ld b, $00
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
    ld bc, $0100
    nop
    ld bc, $0100
    nop
    rla
    nop
    rla
    nop
    cp a
    nop
    cp [hl]
    ld bc, $00ff
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    ld [hl], $ff
    ld a, h
    rst $38
    ld [hl], l
    rst $38
    ei
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ret z

    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    db $ec
    rst $38
    jp hl


    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    push af
    rst $38
    ld sp, hl
    rst $38
    db $fd
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
    ei
    rst $38
    ei
    rst $38
    di
    rst $38
    ei
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
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
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    cp a
    ld a, a
    ld a, a
    cp a
    cp a
    rst $18
    xor a
    rst $18
    rst $18
    rst $28
    rst $30
    rst $28
    rst $28
    rst $30
    di
    rst $38
    rst $38
    ei
    ei
    db $fd
    cp $fd
    db $fd
    cp $fe
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    adc a
    cp $9f
    rst $38
    adc l
    rst $38
    rst $08
    rst $38
    adc d
    rst $38
    adc b
    rst $30
    adc b
    ld [hl], a
    db $10
    rst $38
    ld bc, $01fe
    cp $20
    rst $18
    add b
    ld a, a
    ld h, b
    cp a
    ldh [$1f], a
    ret


    ld [hl], $d4
    dec hl
    db $dd
    ld [hl+], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld a, a
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
    ld e, a
    nop
    ld e, a
    nop
    cpl
    nop
    cpl
    nop
    rra
    nop
    xor a
    nop
    sbc a
    nop
    cpl
    nop
    ccf
    nop
    rra
    nop
    ld e, a
    nop
    ld e, a
    nop
    ccf
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $01
    cp $01
    cp $01
    ld e, $e1
    add $39
    ret nc

    cpl
    ret nc

    cpl
    ret nc

    cpl
    sub b
    ld l, a
    nop
    rst $38
    add d
    ld a, a
    jp nz, Jump_082_403f

    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    ld b, l
    rst $38
    ld b, l
    rst $38
    push de
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or $ff
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $e3
    rst $38
    di
    rst $38
    db $e3
    rst $38
    push hl
    rst $38
    db $e3
    rst $38
    pop hl
    rst $38
    jp $cbff


    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    pop af
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
    rst $38
    ld a, a
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
    db $10
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_082_4ff5

    ld a, [de]
    dec de
    inc e
    dec e
    db $10
    db $10
    ld e, $1f
    jr nz, jr_082_5007

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_082_5017

    ld a, [de]
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f

jr_082_4ff5:
    jr nc, jr_082_5028

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_082_5038

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c

jr_082_5007:
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

jr_082_5017:
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

jr_082_5028:
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c

Call_082_502f:
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d

jr_082_5038:
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

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    ld a, [de]
    add hl, hl
    jr nz, jr_082_510a

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37

Jump_082_50ff:
    jr c, @+$03

    ld bc, $0101
    ld bc, $0101
    ld bc, $0101

jr_082_510a:
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
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
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
    dec b
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
    dec b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0000
    ld bc, $0301
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0100
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
    ld bc, $0101
    dec b
    dec b
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0505
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0501
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
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0941
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    dec c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    ld bc, $8000
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
    ld h, b
    nop
    ld h, b
    nop
    and b
    nop
    or b
    nop
    ld hl, sp+$00
    ret nc

    nop
    ret c

    nop
    ret c

    nop
    ldh [$08], a
    sbc h
    nop
    call c, $ae00
    nop
    sbc $00
    cp $00
    db $fc
    ld [bc], a
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
    ld a, a
    add b
    ccf
    add b
    rst $38
    add b
    ccf
    ret nz

    ld a, a
    ret nz

    ld a, a
    ret nz

    rra
    ldh [$3f], a
    ldh [$3e], a
    pop hl
    rrca
    ldh a, [rNR31]
    db $f4
    ld d, $f9
    sbc a
    add sp, $0f
    ld hl, sp-$75
    db $fc
    add a
    db $fc
    ld b, h
    rst $38
    ld h, [hl]
    rst $38
    ld h, [hl]
    rst $38
    inc hl
    rst $38
    inc de
    rst $38
    ld de, $29ff
    rst $38
    sbc a
    rst $38
    rst $30
    rst $38
    ld c, [hl]
    rst $38
    call c, $f8ff
    rst $38
    ldh a, [rIE]
    ld [c], a
    rst $38
    ld [c], a
    rst $38
    ld [$e4ff], a
    rst $38
    ld h, l
    rst $38
    ld [hl], $ff
    db $10
    rst $38
    ld e, $ff
    inc c
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld b, $ff
    ld a, [bc]
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    dec d
    rst $38
    dec d
    rst $38
    add hl, sp
    rst $38
    jr z, @+$01

    inc h
    rst $38
    inc b
    rst $38
    nop
    rst $38
    sub b
    rst $38
    ret c

    rst $38
    sub $ff
    push bc
    rst $38
    xor $ff
    ld a, h
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    ld a, e
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    add hl, sp
    rst $38

jr_082_530c:
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    db $e3
    rst $38
    ld [hl], c
    rst $38
    ld [hl], c
    rst $38
    ccf
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    cp a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_082_534a:
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
    ld b, $00
    ld [bc], a
    nop
    inc bc
    nop
    sub e
    nop
    cp c
    nop
    ld sp, $7380
    add b
    ld [hl], a
    add b
    cp c
    ld b, b
    cp c
    ld b, b
    cp e
    ld b, b
    db $dd
    jr nz, jr_082_534a

    jr nz, jr_082_530c

    ld h, b
    rst $28
    db $10
    rst $38
    nop
    and a
    ld e, b

jr_082_5376:
    adc a
    ld a, b
    rst $18
    jr z, jr_082_5376

    inc b
    ld h, a
    sbc b
    daa
    call c, $da25
    inc hl
    sbc $32
    rst $08
    rla
    db $eb
    ld b, e
    cp a
    ld b, c
    cp a
    ld bc, $91ff
    rst $38
    sub e
    rst $38
    inc de
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, e
    rst $38
    ld l, c
    rst $38
    inc h
    rst $38
    inc [hl]
    rst $38
    inc e
    rst $38
    add d
    rst $38
    adc d
    rst $38
    ld bc, $05ff
    rst $38
    ld h, [hl]
    rst $38
    db $76
    rst $38
    di
    rst $38
    ld l, e
    rst $38
    ld [hl], e
    rst $38
    ld a, e
    rst $38
    ld e, l
    rst $38
    dec l
    rst $38
    sbc h
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    ld [hl], e
    rst $38
    ld [hl], e
    rst $38
    ld [hl], d
    rst $38
    add hl, sp
    rst $38
    cp l
    rst $38
    call c, $feff
    rst $38
    sbc $ff
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
    rst $38
    rst $38
    rst $38
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
    ccf
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $30
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
    ld [bc], a
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
    inc b
    nop
    inc b
    nop
    sub b
    nop
    add b
    nop
    jp nz, $ca00

    nop
    ld e, h
    nop
    ld a, l
    nop
    push af
    nop
    ld a, l
    nop
    call $f520
    nop
    or $00
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    rst $30
    ld [$6c93], sp
    dec sp
    call nz, $c43b
    add hl, bc
    or $a9
    sub $a1
    sbc $80
    rst $38
    ret nz

    rst $38
    call nz, $c0fb
    rst $38
    ldh [rIE], a
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld [hl], h
    rst $38
    ld [hl-], a
    rst $38
    ld [hl], $ff
    ld a, $ff
    rra
    rst $38
    sbc l
    rst $38
    call $cfff
    rst $38
    ld l, a
    rst $38
    and a
    rst $38
    or a
    rst $38
    rst $18
    rst $38
    rst $18
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

Call_082_54ab:
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
    scf
    rst $38
    cp a
    rst $38
    rst $18
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
    rst $18
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
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
    nop
    nop
    nop
    nop
    nop
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
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0100
    nop
    add hl, bc
    nop
    dec bc
    nop
    ld [$8a00], sp
    nop
    adc a
    nop
    rrca
    db $10
    ld h, a
    nop
    ld b, a
    nop
    ld b, a
    nop
    ld b, e
    nop
    inc bc
    nop
    inc hl
    nop
    inc hl
    nop
    ld hl, $0100
    nop
    ld hl, $1300
    nop
    ld de, $3100
    nop
    inc d
    nop
    adc l
    nop
    sbc l
    nop
    ld a, a
    add b
    ccf
    add b
    ld e, a
    add b
    rst $18
    nop
    xor a
    ld b, b
    xor l
    ld b, d
    ld b, e
    rst $38
    inc hl
    rst $38
    daa
    rst $38
    inc hl
    rst $38
    inc bc
    rst $38
    ld sp, $23ff
    rst $38
    inc sp
    rst $38
    call nz, $c63b
    add hl, sp
    ld l, d
    cp l
    ld c, b
    or a
    ld b, d
    cp l
    ld b, h
    cp a
    add h
    rst $38
    ld b, h
    rst $38
    call nz, $427f
    rst $38
    ld b, d
    rst $38
    ld [hl+], a
    rst $38
    and c
    rst $38
    push hl
    rst $38
    di
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $eb
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rrca
    rst $38
    adc l
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    ld sp, hl
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    or $ff
    rst $38
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
    cp $ff
    cp $fc
    rst $38
    cp $fd
    ei
    db $fd
    db $fd
    ei
    rst $38
    ei
    ei
    rst $30
    ei
    rst $30
    rst $28
    rst $30
    rst $38
    rst $28
    rst $10
    rst $28
    db $ec
    rst $18
    and $df
    db $db
    cp [hl]
    sbc d
    rst $38
    inc l
    rst $38
    daa
    nop
    ld bc, $0200
    nop
    ld [$0000], sp
    nop
    ld [bc], a
    nop
    db $ed
    ld [bc], a
    ld a, a
    nop
    ccf
    nop
    ccf
    nop
    ld a, a
    nop
    dec a
    ld [bc], a
    ccf
    nop
    sbc a
    nop
    sbc e
    nop
    sbc a
    nop
    adc a
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld c, a
    nop
    ld c, a
    nop
    cpl
    nop
    ccf
    ld bc, $043b
    inc h
    nop
    inc h
    nop
    inc d
    nop
    stop
    sub h
    nop
    sub [hl]
    nop
    sbc [hl]
    nop
    cp $00
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    inc b
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld [de], a
    rst $38
    sub b
    rst $38
    sub b
    rst $38
    ld l, h
    sub e
    ld l, b
    sub a
    and [hl]
    ld e, c
    add [hl]
    ld a, c
    sub $69
    ld a, [hl-]
    push bc
    cp d
    ld b, l
    cp b
    ld b, a
    jr @-$17

    ld e, b
    and a
    ld e, d
    and a
    ld e, [hl]
    and e
    ld c, h
    or e
    ld c, $f3
    inc e
    di
    nop
    rst $38
    ld bc, $01ff
    rst $38
    add hl, bc
    rst $38
    jr z, @+$01

    ld c, b
    rst $38
    ld b, h
    rst $38
    inc d
    rst $38
    inc l
    rst $38
    inc l
    rst $38
    ld a, $ff
    ld a, $ff
    ld e, $ff
    rra
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    xor l
    rst $38
    xor l
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $28
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
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    cp $ff
    cp $fc
    rst $38
    rst $38
    db $fd
    ei
    db $fd
    db $fd
    ei
    db $fd
    ei
    pop af
    rst $38
    ei
    rst $30
    pop hl
    cp $f0
    rst $28
    ret nc

    rst $28
    db $e3
    sbc $39
    sbc $5d
    cp [hl]
    ld [hl], a
    cp h
    ld a, e
    cp h
    xor a
    ld a, b
    rst $28
    ld a, b
    rst $30
    ld hl, sp-$01
    ldh a, [$ef]
    ldh a, [$ef]
    ldh a, [$7f]
    ldh [$df], a
    ldh [rIE], a
    ret nz

    cp [hl]
    pop bc
    cp [hl]
    pop bc
    rst $38
    add b
    ld a, h
    add d
    cp $00
    rst $38
    nop
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rra
    nop
    ld c, l
    nop
    inc sp
    nop
    adc h
    nop
    inc hl
    nop
    xor e
    ld d, l
    ld b, c
    ccf
    ld [hl], b
    rrca
    jr nc, jr_082_5707

    sub c
    cpl
    sub b
    cpl
    ret nz

    ccf
    ldh [$1f], a
    dec e
    rst $38
    rra
    rst $38
    dec d
    rst $38
    dec d

jr_082_5707:
    rst $38
    dec d
    rst $38
    ld d, l
    rst $38
    dec e
    rst $38
    rrca
    rst $38
    rra
    rst $38
    dec hl
    rst $38
    dec sp
    rst $38
    ld l, e
    rst $38
    dec hl
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    jr c, jr_082_5769

    and b

jr_082_5723:
    ld e, a
    jr nz, jr_082_5785

    ldh a, [rIF]
    ld sp, hl
    rlca
    call nc, $c42b
    dec sp
    ret nz

    ccf
    ret z

    ccf
    ret z

    scf
    ld d, b
    xor a
    ret c

    daa
    jp c, $8927

    ld [hl], a
    add hl, bc
    rst $30
    add b
    ld a, a
    add b
    ld a, a
    jr nz, jr_082_5723

    nop
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [hl+], a
    rst $38
    rlca
    rst $38
    ld h, $ff
    or $cf
    cp a
    ld e, a
    ld l, a
    sbc a
    cpl
    rst $18
    cpl
    rst $18
    ccf
    rst $08
    rrca
    rst $38
    rrca
    rst $38
    dec bc
    rst $38
    dec bc
    rst $38
    daa
    rst $38
    ld l, a
    rst $38
    xor c

jr_082_5769:
    rst $38
    xor l
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
    cp $ff
    db $fc
    rst $38
    rst $38
    db $fd
    db $fd
    rst $38
    ei
    rst $38
    ei
    rst $38
    di

jr_082_5785:
    rst $38
    rst $38
    rst $30
    and $ff
    cp $ef
    rst $38
    xor $cc
    rst $38
    rst $38
    call c, $fd9a
    ei
    cp h
    dec a
    ld a, [$79b6]
    ei
    ld [hl], h
    ld l, l
    ld a, [c]
    db $eb
    db $f4
    db $ec
    di
    rst $00
    ld hl, sp-$09
    ret z

    jp hl


    sub $97
    add sp, -$3b
    cp d
    ld d, e
    xor h
    ld c, a
    or b
    adc a
    ld [hl], b
    and [hl]
    ld e, b
    sub $28
    sbc [hl]
    ld h, b
    xor $10
    xor h
    ld d, b
    ld l, [hl]
    sub b
    call c, $fc20
    nop
    cp b
    ld b, b
    cp b
    ld b, b
    ldh a, [rP1]
    ldh a, [rP1]
    ld [hl], b
    add b
    ld [hl-], a
    add b
    ld a, [c]
    nop
    ld h, d
    nop
    ld b, b
    nop
    ret nc

    nop
    ld b, c
    add b
    add c
    nop
    add e
    nop
    add c
    nop
    ld bc, $ff00
    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    nop
    rst $38
    nop
    ccf
    nop
    rst $08
    nop
    scf
    nop
    sbc $ff
    db $fc
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld a, [hl]
    rst $38
    ld a, $ff
    ld a, [hl]
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
    rrca
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    ld e, a
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
    cpl
    rst $38
    ccf
    rst $38
    cpl
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
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
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    ld a, l
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld a, [c]
    rst $38
    or $ff
    or $ef
    db $ec
    rst $38
    db $ec
    rst $38
    ret z

    rst $38
    ret c

    rst $38
    sbc b
    rst $38
    or b
    rst $38
    or b
    ld a, a
    ld h, b
    rst $38
    ld l, b
    rst $30
    ld l, c
    or $dc
    db $e3
    rst $18
    ldh [$f9], a
    add $bb
    call nz, $8cf3
    ld [hl], a
    adc b
    ld [hl], $c8
    db $db
    inc h
    ld l, a
    sub b
    xor a
    ld d, b
    ld a, a
    add b
    jp c, Jump_082_4e20

    or b
    ld a, [$3e00]
    ret nz

    cp [hl]
    ld b, b
    sbc [hl]
    ld h, b
    ld a, $c0
    dec a
    ret nz

    ld h, l
    add b
    push de
    nop
    call z, $fb01
    nop
    db $e3
    nop
    and a
    nop
    add h
    inc bc
    ld b, $01
    rla
    nop
    dec c
    nop
    rlca
    nop
    rrca
    nop
    rra
    nop
    db $eb
    nop
    dec de
    nop
    ld e, e
    nop
    sub a
    nop
    rla
    nop
    or a
    nop
    cp a
    nop
    inc l
    nop
    inc sp
    nop
    ld l, a
    nop
    call c, $b003
    rrca
    add b
    rra
    add b
    ccf
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
    ld a, a
    ld b, b
    ccf
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
    rst $30
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    jr c, @+$01

    jr @+$01

    jr c, @+$01

    jr z, @+$01

    jr c, @+$01

    jr z, @+$01

    add hl, hl
    rst $38
    ld a, [bc]
    rst $38
    xor b
    rst $38
    jr @+$01

    rra
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rra
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    xor a
    rst $38
    rst $18
    rst $38
    sbc l
    rst $38
    db $dd
    rst $38
    call $cdff
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    rst $20
    rst $38
    jp $d7ff


    rst $38
    db $e3
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    ret nz

    rst $38
    add l
    rst $38
    add [hl]
    rst $38
    ld b, a
    rst $38
    ld b, [hl]
    rst $38
    rst $18

jr_082_5951:
    rst $28
    ldh [$df], a
    add c
    rst $38
    add e
    db $fc
    add c
    cp $03
    db $fc
    ld b, $f9
    rra
    ldh [$09], a
    or $1c
    db $e3
    add hl, sp
    rst $00
    ld a, [de]
    push hl
    jr jr_082_5951

jr_082_596a:
    ld a, h
    add e
    ld l, l
    sub d
    add b
    ld a, a
    db $fd
    ld [bc], a
    ld a, [$7d05]
    add d
    rst $38
    nop
    sbc $01
    ret


    ld b, $56
    add hl, bc
    cp d
    dec b
    db $dd
    ld [bc], a
    db $ed
    ld [de], a
    rst $30
    ld [$04bb], sp
    db $ed
    ld [de], a
    sbc e
    inc h
    ld [hl], e
    inc c
    cp $01
    ld a, b
    rlca
    inc [hl]
    ld c, e
    cp d
    ld b, l
    or $09
    and $19
    rst $10
    jr z, jr_082_596a

    ld [hl-], a
    ld a, l
    add d
    xor a
    ld d, b
    cp [hl]
    ld b, c
    db $db
    inc h
    jp c, $fb25

    inc b

jr_082_59aa:
    dec b
    ld a, [$5ca3]
    or a
    ld [$00ff], sp
    db $fd
    ld [bc], a
    rst $10
    ld [$10cf], sp
    rst $28
    db $10
    db $ed
    ld [de], a
    cp [hl]
    ld bc, $10ef
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    jr nz, @-$1f

    jr nz, jr_082_59aa

    jr nz, jr_082_59d4

    ld hl, sp+$03
    db $fc
    ccf
    add $07
    ei

jr_082_59d4:
    inc bc
    db $fd
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, a
    rst $38
    rst $38
    rst $38
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
    rst $20
    rst $38
    push hl
    rst $38
    ld [hl], e
    rst $38
    jp hl


    rst $38
    push af
    rst $38
    ld [hl], l
    rst $38
    ld a, e
    rst $38
    ei
    rst $38
    pop af
    rst $38
    adc e
    rst $38
    reti


    rst $38
    sbc c
    rst $38
    or l
    rst $38
    cp e
    rst $38
    rst $30
    rst $38
    cp a
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
    ret


    rst $38
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
    rst $38
    rst $38
    inc c
    di
    ld a, [$ec07]
    rla
    adc e
    ld [hl], h
    add hl, bc
    or $3d
    jp nz, $ca35

    call z, $adff
    rst $38
    ld d, h
    rst $38
    cp d
    rst $38
    inc [hl]
    rst $38
    dec [hl]
    rst $38
    reti


    rst $38
    ld d, b
    rst $38
    ld c, c
    rst $38
    ld h, l
    rst $38
    ld h, e
    rst $38
    pop bc
    rst $38
    add c
    rst $38
    ld b, d
    rst $38
    ld h, b
    rst $38
    db $d3
    rst $38
    xor l
    ld d, d
    ld sp, hl
    ld [bc], a
    dec a
    jp nz, $c23d

    ld a, e

jr_082_5a89:
    add h
    ld e, a
    and b
    db $dd
    ld [hl+], a
    ld a, e
    add h
    and b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [$80ff], sp
    rst $38
    ld c, b
    rst $38
    adc b
    rst $38
    ld c, b
    rst $38
    ld d, c
    rst $38
    jp nz, $0aff

    rst $38
    ld e, b
    rst $38
    db $10
    rst $38
    cp c
    rst $38
    ld b, [hl]
    rst $38
    sub $29
    db $db
    inc h
    ld e, a
    and b
    ld c, [hl]
    or c
    rst $18
    jr nz, jr_082_5a89

    ld sp, $2b54
    ld a, e
    inc b
    ld l, [hl]
    ld de, $48b7
    adc d
    ld [hl], l
    cp [hl]
    ld b, c
    push af
    ld a, [bc]
    ld e, [hl]
    and c
    db $eb
    inc d
    jp nc, $802d

    nop
    jp z, $8200

    add b
    add h
    add b
    ret nc

    add b
    adc c
    ret nz

    xor d
    ret nz

    adc c
    ret nz

    rst $38
    push bc
    rst $38
    push bc
    rst $38
    sbc c
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    dec b
    ld a, [$f807]
    add e
    db $fc
    nop
    rst $38
    add hl, bc
    cp $0f
    ld hl, sp+$0d
    ld a, [$fa4d]
    ld l, b
    rst $38
    ret z

    rst $38
    add sp, -$01
    ld hl, sp-$01
    ld a, b
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    xor a
    rst $38
    dec bc
    rst $38
    ccf
    rst $38
    ld l, $ff
    rst $38
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38

jr_082_5b1f:
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    reti


    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, [$feff]
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

jr_082_5b3d:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop

jr_082_5b45:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $00ff
    rst $38
    rst $38
    rst $38
    db $10
    rst $28
    db $10
    rst $28
    jr c, jr_082_5b1f

    add hl, bc
    or $98

jr_082_5b5b:
    ld h, a
    jr jr_082_5b45

    cp b
    ld b, a
    adc b
    ld [hl], a
    ld e, b
    and a
    jr z, jr_082_5b3d

    ld [hl], h
    adc a
    ret nc

    xor a
    ld d, b
    xor a
    ld h, c
    sbc [hl]
    or a
    ld c, b
    ccf
    ret z

    ld d, e
    xor h

jr_082_5b74:
    and l
    ld e, d
    ld d, a
    xor b
    ld l, a
    sub b
    rst $18
    jr nz, jr_082_5b74

    ld [$22dd], sp
    ld [de], a
    rst $38
    add h

jr_082_5b83:
    rst $38
    ld [bc], a
    rst $38
    dec b
    rst $38
    ld [bc], a
    rst $38
    ld de, $08ff
    rst $38
    ld a, [bc]
    rst $38
    ld a, [$fb05]
    inc b
    or $01
    ld [$fd01], a
    nop
    rst $00
    jr nz, jr_082_5b83

    nop
    db $e3
    nop
    jp hl


    nop
    db $eb
    nop
    db $e4
    nop
    or e
    ld b, b
    ld sp, hl
    nop
    db $fc
    nop
    db $dd
    jr nz, jr_082_5b5b

    ld d, b
    sbc a
    ld h, b
    ccf
    ret nz

    or a
    ld c, b
    cp e
    ld b, h
    cp a
    ld b, b
    xor a
    ld d, b
    sbc a
    ld h, b
    add hl, hl
    call nc, Call_000_20dd
    and a
    ld e, b
    ld sp, hl
    inc b
    ccf
    ret nz

    ccf
    ret nz

    dec a
    ret nz

    scf
    ret z

    ld c, e
    or h
    cp $01
    db $76
    adc c
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    rst $38
    nop
    ld sp, hl
    inc b
    ld sp, hl
    inc b
    db $ec
    ld de, $ff11
    inc h
    rst $38
    add c
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
    ld b, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], c
    rst $38
    ld b, c
    rst $38
    ld bc, $c1ff
    rst $38
    ld a, $c1
    ld a, $c1
    ld e, $e1
    ld e, $e1
    ld e, $e1
    ld [$01f7], sp
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld l, e
    rst $38
    or $ff
    cp $ff
    rst $38
    rst $38
    ei
    rst $38
    and $ff
    xor $ff
    rst $28
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a

jr_082_5c29:
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
    ld [hl], a
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    rst $38
    rst $38
    rst $30
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
    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    and b
    ld e, a
    add b
    ld a, a
    jr nc, jr_082_5c29

    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    cp $ff
    pop af
    cp $67
    ld hl, sp-$33
    ldh a, [$80]
    ret nz

    nop
    add b
    nop
    add b
    add b
    nop
    add b
    nop
    ldh [rP1], a
    ldh [rP1], a
    db $fc
    nop
    db $fc
    nop
    cp $00
    ld a, a
    add b
    cp a
    ret nz

    ld a, a
    ret nz

    ld c, a
    ldh a, [rPCM34]
    ld hl, sp+$40
    rst $38
    ld c, d
    rst $38
    add $ff
    jp nz, $c3ff

    rst $38
    sub [hl]
    ld l, c
    inc l
    db $d3
    ld a, h
    add e
    ld a, [de]
    rst $20
    ld sp, $d4ce
    dec hl
    cp b
    ld b, a
    db $f4
    dec bc
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
    cp $ff
    add b
    rst $38
    ld a, a
    add b
    ld a, a
    add b
    ld d, h
    xor e
    db $76
    adc c
    cp $81
    ld a, [hl]
    add c
    db $76
    adc c
    ld a, [hl]
    add c
    pop bc
    rst $38
    add c
    rst $38
    add e
    rst $38
    add c
    rst $38
    push bc
    rst $38
    sub c
    rst $38
    sub l
    rst $38
    sub c
    rst $38
    xor c
    rst $38
    or c
    rst $38
    ld bc, $21ff
    rst $38
    add hl, bc
    rst $38
    ld b, l
    rst $38
    ld de, $01ff
    rst $38
    dec h
    rst $38
    inc bc
    rst $38
    ld b, l
    rst $38
    inc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08f0], sp
    ldh a, [$08]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [$08]
    ldh a, [rBGP]
    ld hl, sp+$04
    rst $38
    rst $38
    nop
    rst $30
    ld [$48b7], sp
    dec b
    ld a, [$fa05]
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld [$f8ff], sp
    rst $38
    ld [$09ff], sp
    rst $38
    inc c
    rst $38
    ld e, $ff
    ld e, e
    rst $38
    ld a, d
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    di
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, [c]
    rst $38
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    or $ff
    pop af
    rst $38
    di
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add e
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    ld c, h
    rst $38
    ld d, b
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
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

jr_082_5d6c:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [c]
    nop
    rst $38
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
    rst $38
    ld l, a
    rst $38
    rst $28
    rra
    rst $38
    add b
    sbc [hl]
    pop hl
    ld hl, sp-$01
    db $ec
    rst $38
    ld l, h
    rst $38
    db $ec
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    call nz, Call_082_4dff
    or [hl]
    inc a
    rst $00
    db $fd
    ld b, $eb
    inc d
    ei
    inc b
    rst $38
    nop
    db $eb
    inc d
    rst $18
    jr nz, jr_082_5d6c

    ld b, h
    ld sp, hl
    ld b, $fc
    inc bc
    db $ed
    ld [de], a
    cp c
    ld b, [hl]
    ld h, [hl]
    sbc e
    jp z, $da37

    daa
    ld [hl], b
    adc a
    or $0b
    ld d, l
    xor e
    call c, $3d23
    jp Jump_082_4bb5


    ld e, e
    and l
    push af
    dec bc
    ld l, [hl]
    ld bc, $0758
    ld d, b
    rrca
    jr nz, jr_082_5df7

    jr nz, jr_082_5df9

    and b
    rra
    and b
    rra
    and b
    rra
    ret nz

    rra
    and b
    rra
    ldh [$1f], a
    or d
    rrca
    rlca
    rlca
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0807], sp
    rlca
    ld [$0807], sp

jr_082_5df7:
    rlca
    nop

jr_082_5df9:
    rlca
    ld a, [bc]
    rlca
    ld h, c
    rra
    ld sp, $5aff
    and l
    ret


    scf
    sub b
    ld l, a
    ld de, $01ef
    rst $38
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    ld b, e
    rst $38
    ld c, e
    rst $38
    ld c, e
    rst $38
    add $ff
    rst $08
    rst $38
    ld e, [hl]
    rst $38
    ld [$feff], a
    rst $38
    xor $ff
    cp $ff
    sub $ff
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp $ff
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $7bff
    rst $38
    rst $38
    rst $38
    ld b, b
    rst $38
    add e
    rst $38
    ld bc, $22ff
    rst $38
    jr nz, @+$01

    ld bc, $01ff
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    rst $30
    rrca
    dec b
    inc bc
    ld [bc], a
    ld bc, $0013
    ld h, c
    nop
    nop
    nop
    add hl, de
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    inc de
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
    inc bc
    rst $20
    rra
    ld d, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    add b
    ld a, a
    db $10
    rst $28
    ld [$64ff], sp
    cp a
    ret nz

    cp a
    ld b, b
    cp a
    reti


    ld [hl], $7f
    sub b
    ld d, b
    rst $38
    sub b
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld [$09ff], sp
    rst $38
    and $19
    or [hl]
    ld c, c
    and $19
    or c
    ld c, [hl]
    ld e, d
    and l
    ld [hl], e
    adc h
    ld b, a
    cp h
    or l
    ld c, [hl]
    ld h, c
    sbc [hl]
    sub e
    ld l, [hl]
    and d
    ld e, a
    ld a, [$8007]
    inc bc
    ld [$43f4], sp
    cp [hl]
    nop
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    cpl
    rst $38
    dec b
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld bc, $00ff
    rst $38
    dec hl
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
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    ld h, d
    sbc a
    ld b, b
    cp a
    nop
    rst $38
    dec b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec c
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    jr z, @+$01

    ld [$0eff], sp
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ret z

    rst $38
    jr @+$01

    ret c

    rst $38
    pop de
    rst $38
    rst $18
    rst $38
    jp nc, $92ff

    rst $38
    push af
    rst $38
    or h
    rst $38
    jr nc, @+$01

    or c
    rst $38
    inc sp
    rst $38
    or c
    rst $38
    or c
    rst $38
    and c
    rst $38
    and c
    rst $38
    pop hl
    rst $38
    db $e3
    rst $38
    ld a, [c]
    rst $38
    db $e3
    rst $38
    db $e3
    rst $38
    ld a, [c]
    rst $38
    db $e3
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
    push de
    rst $38
    rst $38
    rst $38
    daa
    rst $38
    rlca
    rst $38
    inc hl

jr_082_5f57:
    rst $38
    dec [hl]
    rst $38
    add hl, sp
    rst $38
    dec e
    rst $38
    dec de
    rst $38
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    ld [$44ff], sp
    rst $38
    add h
    rst $38
    ld c, h
    rst $38
    inc b
    ld a, a
    ld c, d
    ld a, a
    ld a, [hl]
    ccf
    ld c, b
    ld [hl], a
    ld [hl], a
    ld l, c
    ld l, l
    inc sp
    ld a, [de]
    ld h, l
    dec d
    ld h, d
    sub a
    ld a, b
    dec c
    ld a, [c]
    inc c
    di
    inc bc
    db $fc
    ld h, $d9
    ld [de], a
    db $ed
    inc de
    db $ec
    ld h, e
    call c, $f609
    dec d
    ld [c], a
    or c
    ld b, [hl]
    pop de

jr_082_5f93:
    and [hl]
    push hl
    add d
    xor h
    jp $c1bf


    db $76
    adc c
    or [hl]
    ld c, c

jr_082_5f9e:
    cp d
    ld b, l
    sbc h
    ld h, e
    rra
    ldh [$d6], a
    add hl, hl
    rst $10

jr_082_5fa7:
    jr z, jr_082_5f9e

    ld a, [hl+]
    jp z, $a835

    ld d, a
    xor d
    ld d, l
    db $e4
    dec de
    call nz, $c13b
    ccf
    ld b, b
    cp a
    jr z, @-$1f

    inc c
    ei
    ld d, b
    xor a
    jp nc, $f02d

    rrca
    jp z, Jump_082_4135

    cp [hl]
    jr nz, jr_082_5fa7

    ld a, b
    add a
    jr c, jr_082_5f93

    ld a, [hl-]
    ld b, a
    jr c, jr_082_5f57

    ld d, a
    nop
    xor a
    add b
    xor $c0
    db $eb
    ldh [$ed], a
    ldh [$fb], a
    ldh [$f7], a
    ldh [$7f], a
    ldh [$fe], a
    ldh [$f8], a
    ldh [$f7], a
    ldh [$e3], a
    ret nz

    ld a, [c]
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$08ff], sp
    rst $38
    rrca
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    dec h

Jump_082_6001:
    rst $38
    jr nz, @+$01

    inc h
    rst $38
    dec h
    rst $38
    ld hl, $69ff
    rst $38
    ld bc, $49ff
    rst $38
    ret nz

    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    jp nz, $46ff

    rst $38
    jp nz, $88ff

    rst $38
    add h
    rst $38
    call nz, $84ff
    rst $38
    add h
    rst $38
    add h
    rst $38
    xor b
    rst $38
    jr @+$01

    ret c

    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    add hl, de
    rst $38
    ldh a, [rIE]
    di
    rst $38
    ld a, [c]
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ld [hl], c
    rst $38
    push hl
    rst $38
    push hl
    rst $38
    dec d
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, b
    rst $38
    rst $38
    rst $38
    add $ff
    jp nz, $a0ff

    rst $38
    and b
    rst $38
    ldh a, [rIE]
    or b
    rst $38
    adc b
    rst $38
    adc h
    rst $38
    db $fd
    rst $38
    ld b, b
    rst $38
    jp nz, Jump_082_42ff

    rst $38
    ld hl, $23ff
    rst $38
    ld h, c
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [$28ff], sp
    rst $38
    nop
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld h, $ff
    sbc d
    ld a, a
    add e
    ld a, a
    push bc
    ccf
    ret


    ccf
    ld [$40ff], sp
    cp a
    nop
    rst $38
    db $10
    rst $38
    ld b, b
    cp a
    pop bc
    ccf
    xor b
    ld e, a
    add b
    ld a, a
    ldh [$1f], a
    call nc, Call_082_502f

jr_082_609d:
    xor a
    ld b, c
    cp a
    ld b, d
    cp a
    and b
    rst $18
    ld hl, $a1df
    rst $18
    ld h, c
    rst $18
    ret nz

    ld a, a
    add b
    ld a, a
    ldh [$5f], a
    jr nz, @+$01

    jr nz, @+$01

    ld [de], a
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    jr z, jr_082_609d

    ld c, b
    cp a
    sbc d
    ld l, l
    adc h
    ld a, a
    inc b
    rst $38
    inc b
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld h, [hl]
    rst $18
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [$11f7], sp
    rst $28
    nop
    rst $38
    inc hl
    db $dd
    ld h, $d9
    ld e, c
    and [hl]
    and c
    sbc $d2
    xor l
    inc d
    db $eb
    nop
    rst $38
    adc b
    ld [hl], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld bc, $40ff
    rst $38
    ret z

    rst $38
    ld b, d
    rst $38
    ld b, d
    rst $38
    ld [de], a
    rst $38
    add d
    rst $38
    sub b
    rst $38
    add b
    rst $38
    push de
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
    db $10
    rst $38
    ld d, b
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ld bc, $61ff
    rst $38
    ld sp, $31ff
    rst $38
    ld [hl-], a
    rst $38
    ld [hl], d
    rst $38
    ld l, d
    rst $38
    ld h, d
    rst $38
    ld l, d
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    xor h
    rst $38
    db $fc
    rst $38
    db $ec
    rst $38
    ld [hl], d
    rst $38
    ld a, b
    rst $38
    ld a, c
    cp $d0
    cp $03
    db $fc
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $fd
    adc d
    db $fd
    rst $38
    db $fc
    inc hl
    db $fc
    inc bc
    db $fc
    ld b, b
    rst $38
    ld bc, $01ff
    rst $38
    adc b
    rst $38
    jr nz, @+$01

    ld b, c
    rst $38
    ld b, d
    rst $38
    jr nz, @+$01

    ld hl, $18ff
    rst $38
    db $10
    rst $38
    ld [$a4ff], sp
    rst $38
    add h
    rst $38
    ld b, h
    rst $38
    ld b, e
    rst $38
    jp z, Jump_000_23ff

    rst $38
    ld l, c
    rst $38
    sub b
    rst $38
    ld e, $ff
    dec bc
    rst $38
    ld c, $ff
    ld c, a
    rst $38
    dec d
    rst $38
    add l
    rst $38
    add d
    rst $38
    jp nz, Jump_082_4aff

    rst $38
    ld b, l
    rst $38
    ld l, c
    rst $38
    jr z, @+$01

    ld h, b
    rst $38
    jr nz, @+$01

    inc [hl]
    rst $38
    jr @+$01

    ld a, [bc]
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc e
    rst $38
    ld l, $ff
    ld l, $ff
    ld a, [bc]
    rst $38
    add e
    rst $38
    add a
    rst $38
    add e
    rst $38
    ld b, c
    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    jr nz, @+$01

    rra
    rst $38
    db $10
    rst $38
    rla
    ld hl, sp+$0f
    ld hl, sp-$75
    db $fc
    add hl, de
    cp $46
    db $fd
    ld b, $fd
    ld b, $fd
    inc bc
    db $fc
    ld [bc], a
    rst $38
    ld de, $2cee
    db $d3
    cp a
    ld b, c
    and e
    ld e, a
    sbc e
    db $fd
    add c
    rst $38
    call nc, $80bf
    rst $38
    ld b, c
    cp $40
    rst $38
    ld e, d
    push hl
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    inc c
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$08ff], sp
    rst $38
    ld a, [bc]
    rst $38
    db $10
    rst $38
    nop
    rst $38

jr_082_6200:
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    jr nz, @+$01

    ld h, c
    rst $38
    ld h, c
    rst $38
    ld h, c
    rst $38
    jp nz, Jump_082_50ff

    rst $38
    ld d, d
    rst $38
    ld [c], a
    rst $38
    add [hl]
    rst $38
    add h
    rst $38
    cp h
    rst $38
    sub h
    rst $38
    db $fc
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    ld [$09ff], sp
    rst $38
    inc de
    rst $38
    jr @+$01

    ld de, $12ff
    rst $38
    ld d, $ff
    inc hl
    rst $38
    ld l, a
    rst $38
    inc bc
    rst $38
    sub b
    pop bc
    jr nz, jr_082_6200

    adc h
    ld [hl], b
    db $e3
    inc e
    rst $38
    nop
    db $fc
    nop
    db $f4
    ld [$26d9], sp
    or [hl]
    pop bc
    rst $28
    ret nz

    rra
    ret nz

    ld d, a
    adc b
    scf
    ret z

    and $79
    ld a, l
    cp d
    rst $38
    sbc a
    ld [hl], e
    adc a
    scf
    ret z

    daa
    ret c

    rra
    ldh [rNR13], a
    db $ec
    ld c, $fd
    add hl, bc
    rst $38
    call nz, Call_082_44ff
    rst $38
    ld b, d
    rst $38
    ld bc, $31fe
    rst $38
    inc d
    rst $38
    nop
    rst $38
    ld a, [hl+]
    rst $18
    ld [bc], a
    rst $38
    add h
    rst $38
    add b
    rst $38
    ld c, a
    ld a, [c]
    sub $e9
    ld c, [hl]
    pop af
    xor d
    push af
    dec d
    ld a, [$f817]
    add hl, bc
    cp $78
    rst $38
    push de
    cp $03
    db $fc
    sub e
    cp $92
    rst $38
    ld c, l
    rst $38
    ld d, c
    rst $38
    ldh [rIE], a
    ld l, c
    rst $38
    or h
    rst $38
    dec d
    rst $38
    ld de, $08ff
    rst $38
    jr @+$01

    add h
    rst $38
    add h
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    add e
    rst $38
    pop de
    rst $38
    add b
    rst $38
    ld d, b
    rst $38
    ld h, l
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    jr nz, @+$01

    ret nz

    ccf
    jp nc, Jump_000_203f

    rst $18
    ld c, b
    cp a
    ldh a, [rIF]
    call nc, $cc2f
    scf
    add a
    nop
    ld h, a
    nop
    pop hl
    inc bc
    ld h, b
    rlca
    adc b
    rlca
    call c, $8c07
    rlca
    sbc $07
    ld d, e
    adc a
    rlc a
    adc c
    ld b, a
    ret


    rlca
    xor b
    ld b, a
    db $10
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
    jr nz, @+$01

    nop
    rst $38
    ld [$00ff], sp
    rst $38
    ld de, $41ff
    rst $38
    ld bc, $03ff
    rst $38
    add e
    rst $38
    add a
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    cpl
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
    ccf
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    dec a
    rst $38
    ccf
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
    ld a, a
    rst $38
    ccf
    ld a, a
    rst $18
    ccf
    rst $38
    rra
    sbc a
    ccf
    sub a
    rrca
    add a
    inc bc
    add a
    inc bc
    inc bc
    rst $28
    db $fd
    inc bc
    ld hl, $c183
    inc bc
    adc e
    inc bc
    adc a
    inc bc
    adc e
    rlca
    ld d, e
    xor a
    db $fd
    rst $38
    db $fc
    rlca
    ret c

    rrca
    call nz, $5c1f
    cp a
    db $fc
    rst $38
    ld a, l
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    rra
    rst $38
    ld e, a
    rst $38
    rrca
    rst $30
    rst $38
    add a
    dec sp
    rst $00
    ld a, l
    jp $e51b


    xor h
    di
    dec e
    ld a, [c]
    call c, $d8ff
    rst $38
    db $ec
    rst $38
    db $e4
    rst $38
    ld a, [c]
    rst $38
    ld [c], a
    rst $38
    ld l, c
    rst $38
    dec [hl]
    rst $38
    swap h
    push hl
    ld a, [de]
    push af
    ld a, [bc]
    ldh a, [rIF]
    add sp, $17
    jr c, @-$37

    db $fc
    add e
    sbc h
    db $e3
    ld c, [hl]
    pop af
    ld d, l
    ld [$f926], a
    daa
    ld hl, sp+$11
    cp $17
    ld hl, sp+$09
    cp $88
    rst $38
    inc b
    rst $38
    ld d, $ff
    ld b, e
    cp $03
    cp $a1
    cp $81
    rst $38
    jp nz, Jump_082_40ff

    rst $38
    ret nz

    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    ld [hl], h
    rst $38
    db $10
    rst $38
    xor d
    rst $38
    ld [$35ff], sp
    rst $38
    rst $38
    nop
    rst $38
    cp $ff
    rst $38
    cp a
    rst $38
    daa
    rst $38
    add hl, hl
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh a, [rIE]
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
    ld a, l
    rst $38
    ld a, l
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
    ei
    rst $38
    rst $38
    rst $38
    cp $ff
    rst $28
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, a
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, [$fbff]
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
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rlca
    ei

jr_082_6450:
    add e
    db $fd
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld a, h
    rst $38
    cp $7f
    or $3f
    ret nz

    ccf
    ldh [$1f], a
    ld d, l
    ld c, $d3
    inc c
    ei
    inc b
    ld [hl], a
    add b
    ld h, e
    add b
    add c
    ld b, b
    jp hl


    nop
    ret nc

    jr nz, @-$1a

    db $10
    ld [$b710], a
    ld c, b
    di
    inc c
    dec sp
    call nz, $a05e
    ld a, a
    add b
    cp h
    ld b, c
    sub a
    ld l, b
    rst $10
    jr z, jr_082_6450

    inc a
    ld h, e
    sbc h
    push af
    ld a, [bc]
    pop af
    ld c, $1b
    db $e4
    dec de
    db $e4
    sbc l
    ld [c], a
    adc h
    ld [hl], e
    add d
    db $fd
    add d
    db $fd
    ld b, b
    rst $38
    ld b, h
    ei
    inc h
    ei
    ld hl, $12fe
    db $fd
    ld de, $08fe
    rst $38
    dec bc
    db $fc
    cp $00
    cp $00
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [$7f]
    ld hl, sp-$61
    db $fc
    ld c, a
    cp $07
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    nop
    nop
    nop
    nop
    reti


    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    or a
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $eb
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $18
    rst $38
    sub $ff
    ld l, a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    cp $ff
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    ld a, [$faff]
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $18
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
    cp a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
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
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    jr nz, @+$01

    ld h, b
    cp a
    ccf
    ret nz

    ret nz

    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add c
    rst $38
    ld bc, $ffff
    nop
    or $00
    nop
    nop
    rst $38
    nop
    ld a, [$7e00]
    nop
    cp l
    nop
    or [hl]
    nop
    jp c, Jump_000_1900

    ld b, b
    inc l
    nop
    inc [hl]
    nop
    ld e, $00
    dec c
    nop
    dec bc
    nop
    dec b
    nop
    ld [bc], a
    nop
    add d
    nop
    pop de
    nop
    and c
    ld b, b
    ldh [rP1], a
    ldh a, [rP1]
    ldh [rNR10], a
    ld hl, sp+$00
    db $f4
    ld [$40bc], sp
    ld c, $f0
    ld c, l
    or d
    dec b
    ld a, [$fe7f]
    xor a
    ld d, b
    ccf
    ret nz

    ld l, a
    ret nc

    dec hl
    db $f4
    dec de
    db $f4
    ld sp, $0dde
    ld a, [$f906]
    ld b, $fd
    db $e3
    sbc h
    ld [hl-], a
    rst $08
    dec sp
    rst $00
    sbc a
    db $e3
    sbc b
    rst $20
    adc d
    push af
    ret nz

    rst $38
    add $f9
    dec [hl]
    cp $21
    cp $11
    cp $10
    rst $38
    xor a
    nop
    ld e, [hl]
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
    jr jr_082_6603

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_082_6613

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_082_6623

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_082_6633

    ld [hl-], a

jr_082_6603:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_082_6643

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_082_6613:
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

jr_082_6623:
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

jr_082_6633:
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

jr_082_6643:
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
    ld b, b
    ld b, b
    ret nc

    pop de
    jp nc, $d4d3

    push de
    sub $d7
    ret c

    reti


    jp c, $dcdb

    db $dd
    ld b, b
    ld b, b
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $e7
    add sp, -$17
    ld [$40eb], a
    ld b, b
    db $ec
    db $ed
    xor $ef
    ldh a, [$f1]
    ld a, [c]
    di
    db $f4
    push af
    or $f7
    ld hl, sp-$07
    ld b, b
    ld b, b
    ld a, [$fcfb]
    db $fd
    cp $ff
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld b, b
    ld [$0a09], sp
    dec bc
    inc c
    dec c
    ld c, $0e
    dec c
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_082_670e

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a

jr_082_670e:
    inc sp
    inc [hl]
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    nop
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0000
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
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
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    ld bc, $0007
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    inc b
    ld [bc], a
    rlca
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0400
    inc b
    ld bc, $0007
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $0909
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld c, c
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld bc, $02ff
    rst $38
    nop
    rst $38
    xor d
    ld a, a
    add b
    ld a, a
    add c
    ld a, a
    pop de
    ccf
    ret nc

    ccf
    ld b, b
    cp a
    ld b, l
    cp a
    ld h, b
    sbc a
    ld l, c
    sbc a
    ldh [$1f], a
    and b
    ld e, a
    and l
    ld e, a
    or e
    ld c, h
    ld h, $ff
    ld h, $ff
    and $ff
    db $d3
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    ld h, d
    sbc l
    ld h, [hl]
    sbc c
    ld h, d
    sbc l
    inc hl
    call c, Call_082_54ab
    and d
    ld e, l
    sub c
    ld l, [hl]
    db $db
    ld h, $da

jr_082_6891:
    daa
    ld c, b
    or a
    add hl, bc
    rst $30
    add hl, bc
    rst $30
    ld bc, $00ff
    rst $38
    inc b
    ei
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], h
    rst $38
    ld e, b
    rst $20
    jr jr_082_6891

    ld a, $e3
    inc e
    db $e3
    inc c
    di
    rra
    pop af
    rra
    pop af
    ld d, $f9
    inc b
    ei
    ld [$00ff], sp
    rst $38
    ld b, d
    db $fd
    ld b, h
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    ld [hl+], a
    rst $38
    ld a, [hl+]
    rst $38
    inc [hl]
    rst $38
    dec d
    rst $38
    rla
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    xor d
    rst $38
    xor e
    db $fc
    call z, $f0f3
    rst $08
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
    ldh [rIE], a
    db $e3
    rst $38
    rst $00
    cp $79
    add [hl]
    ld a, h
    add b
    cp $00
    inc a
    ret nz

    adc b
    ld [hl], b
    ldh a, [rIF]
    cp $01
    rst $38
    nop
    rst $38
    nop
    ccf
    ret nz

    ld l, l
    db $10
    sbc $00
    cpl
    nop
    cpl
    nop
    rst $30
    nop
    db $ec
    nop
    ldh [rP1], a
    ld a, b
    nop
    ld e, [hl]
    nop
    cp a
    nop
    inc de
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    nop
    jr jr_082_6920

jr_082_6920:
    rlca

jr_082_6921:
    nop
    inc bc
    nop
    ld bc, $0400
    nop
    jr nz, jr_082_692a

jr_082_692a:
    dec l
    nop
    jp nz, $7500

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
    inc b
    ld hl, sp+$10
    ldh [$c0], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nc, jr_082_6921

    dec h
    rst $18
    nop
    rst $38
    ld [$01f7], sp
    rst $38
    ld [hl+], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    db $10
    rst $38
    sub b
    rst $38
    ld bc, $09ff
    rst $38
    ld [$40ff], sp
    rst $38
    ld b, b
    rst $38
    call nz, Call_000_247f
    rst $38
    and h
    ld a, a
    ldh [$3f], a
    jp nz, $f23f

    rra
    ld d, d
    cp a
    sub e
    ld a, a
    inc sp
    rst $18
    xor c
    rst $18
    add hl, bc
    rst $38
    add hl, bc
    rst $38
    inc c
    rst $38
    ld b, a
    rst $38
    inc b
    rst $38
    ld h, $fd
    inc h
    rst $38
    jr nz, @+$01

    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    inc de
    rst $38
    ld de, $81ff
    rst $38
    adc c
    rst $38
    add hl, bc
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    ld b, a
    rst $38
    dec b
    rst $38
    ld h, a
    rst $38
    inc sp
    rst $38
    inc bc
    rst $38
    ld de, $11ff
    rst $38
    and c
    rst $38
    xor c
    rst $38
    add hl, bc
    rst $38
    ld [$78ff], sp
    rst $38
    ld d, h
    rst $38
    ld c, h
    rst $38
    inc l
    rst $38
    ld l, $ff
    ld a, $ff
    ld a, $ff
    ld d, $ff
    ld [de], a
    db $fd
    ld [$a0f7], sp
    rst $18
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    jr @+$01

    inc h
    ei
    add b
    rst $38
    ld l, b
    sub a
    call c, Call_082_7f23
    add b
    ld c, l
    ld a, [c]
    ld h, e
    inc e
    ld e, b
    daa
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $08
    jr nc, @+$01

    nop
    cp $01
    cp e
    nop
    push de
    nop
    and l
    nop
    pop hl
    nop
    jr c, jr_082_6a08

jr_082_6a08:
    rra
    nop
    rlca
    nop
    or a
    nop
    ld a, c
    nop
    or a
    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    ld c, a
    nop
    dec [hl]
    nop
    dec hl
    nop
    rlca
    nop
    inc bc
    nop
    jp $ff00


    nop
    ld [hl], d
    dec c
    dec de
    inc b
    ld c, e
    inc b
    ld a, b
    rlca
    db $fc
    inc bc
    ld bc, $01ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld [$0eff], sp
    ldh a, [$d0]
    nop
    jr jr_082_6a40

jr_082_6a40:
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
    rrca
    ldh a, [$87]
    ld hl, sp+$07
    ld hl, sp+$47
    ld hl, sp+$47
    ld hl, sp+$03
    db $fc
    add e
    db $fc
    inc bc
    db $fc
    inc bc
    db $fc
    ld hl, $01fe
    cp $10
    rst $38
    ld e, b
    rst $38
    inc b
    ei
    add b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, l
    ei
    ld d, c
    rst $38
    ld c, c
    rst $38
    ld l, b
    rst $38
    ld h, b
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    ld h, h
    rst $38
    or d
    rst $38
    sub d
    rst $38
    sbc d
    rst $38
    or e
    rst $38
    sbc e
    rst $38
    adc l
    rst $38
    ld e, l
    rst $38
    ld c, a
    rst $38
    ld l, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    inc [hl]
    rst $38
    inc [hl]
    rst $38
    inc a
    rst $38
    ld d, $ff
    sub [hl]
    rst $38
    sbc $ff
    adc d
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
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
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    rra
    rst $38
    ld a, $ff
    ld a, [$f1fd]
    rst $38
    rst $28
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld [hl], b
    rst $38
    ld c, $ff
    nop
    rst $38
    ld [bc], a
    db $fd
    ld hl, $e0fe
    rra
    ld hl, sp+$07
    rst $28
    db $10
    adc b
    rst $38
    ldh [rIE], a
    inc e
    rst $38
    rla
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    jr nz, @+$01

    di
    inc c
    ld a, [hl]
    ld bc, $00ff
    ld a, a
    nop
    add e
    nop
    rst $38
    nop
    rst $28
    db $10
    ei
    inc b
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
    inc c
    rst $38
    inc bc
    rst $38
    cp $01
    rst $38
    nop
    ld a, a
    add b
    sbc a
    ld h, b
    rst $38
    jr nz, jr_082_6b7a

    or b
    ccf
    ret nz

    or e
    call z, $ffe7
    sbc a
    rst $38
    ld hl, sp-$01
    add a
    ld hl, sp+$79

jr_082_6b39:
    add b
    jr z, jr_082_6b3c

jr_082_6b3c:
    nop
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    inc bc
    nop
    rrca
    ld [bc], a
    inc c
    inc b
    jr jr_082_6b39

    nop
    add sp, $00
    add sp, $00
    ldh a, [rP1]
    or h
    nop
    db $f4
    nop
    db $f4
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
    ccf
    ret nz

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [$9f], a
    ldh [$8b], a
    db $f4

jr_082_6b7a:
    add e
    db $fc
    and e
    db $fc
    sub c
    cp $e1
    cp $f1
    cp $f0
    rst $38
    jp z, $c8ff

    rst $38
    call z, $edff
    rst $38
    ccf
    rst $38
    ld l, a
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
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    ld a, [hl]
    rst $38
    cp $ff
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $38

jr_082_6bb5:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
    add b
    rst $38
    ld b, b
    rst $38
    ld bc, $07ff
    rst $38
    rrca
    rst $38
    ld a, a
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $08
    rst $38
    sbc b
    rst $20
    ret


    or $c8
    rst $38
    rrca
    rst $38
    nop
    rst $38
    add b
    rst $38
    dec a
    rst $38
    inc bc
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    ld a, $ff
    rlca
    rst $38
    nop
    rst $38
    jr c, jr_082_6bb5

    ld b, d
    db $fd
    ld d, h
    cp a
    ldh [$1f], a
    add b
    ld a, a
    nop
    rst $38
    inc h
    ei
    ret z

    ccf
    db $eb
    rla
    db $fc
    inc bc
    ld hl, sp+$07
    ld h, h
    sbc e
    adc b
    ld [hl], a
    ret nz

    ccf
    ret c

    rlca
    or $09
    rst $38
    nop
    rst $38
    nop
    jp nz, Jump_082_72ff

    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld de, $09ff
    rst $38
    ld de, $1fff
    ldh [$84], a
    ld a, e
    pop hl
    ld e, $e3
    rra
    pop af
    rrca
    db $ec
    inc de
    ld a, [c]
    dec c
    ld h, b
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    db $fc
    nop
    stop
    jr nz, jr_082_6c3c

jr_082_6c3c:
    add b
    nop
    nop
    nop
    ld c, b
    stop
    db $fc
    ld sp, $08ce
    rst $00
    inc b
    rst $38
    ld d, b
    ccf
    db $10
    rst $38
    ldh a, [$7f]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ret nz

    nop
    and b
    nop
    ld hl, sp+$00
    add sp, $00
    ld hl, sp+$00
    cp $00
    db $fd
    nop
    rst $38
    nop
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    cp $ff
    cp $ff
    ld a, [$faff]
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    add sp, -$01
    ldh [rIE], a
    push af
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
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
    rst $38
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    di
    rst $38
    add h
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    sbc [hl]
    rst $38
    db $eb
    rst $38
    cp $ff
    dec e
    rst $38
    and c
    ld e, a
    inc b

jr_082_6cd9:
    rst $38
    ld [hl], b
    rst $38
    adc [hl]
    rst $38
    add hl, bc
    rst $38
    add b
    rst $38
    ld a, b
    rst $38
    inc de
    rst $38
    inc bc

jr_082_6ce7:
    rst $38
    add b
    rst $38
    ldh a, [rIE]
    jr @+$01

    add hl, hl
    rst $30
    ld d, a
    add sp, -$41
    ret nz

    ld h, $f9
    inc e
    rst $38
    nop
    rst $38
    ld bc, $06fe
    ld sp, hl
    db $e3
    db $fd
    ld de, $47ff
    cp a
    ld h, b
    sbc a
    jr nz, jr_082_6ce7

    jr nc, jr_082_6cd9

    nop
    rst $38
    jr @+$01

    inc bc
    rst $38
    ld bc, $20ff
    rst $18
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr c, @+$01

    inc d
    rst $38
    ld c, l
    or e
    xor [hl]
    ld d, c
    daa
    ret c

    ld [de], a
    db $ed
    ld bc, $e3fe
    db $fc
    ld a, $f9
    inc e
    rst $38
    and a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, h
    or e
    jr nz, jr_082_6d38

jr_082_6d38:
    add b
    nop
    nop
    nop
    ld bc, $0800
    rlca
    db $10
    rrca
    nop
    ccf
    rrca
    ld a, a
    ld [$1fff], sp
    rst $38
    jr @+$01

    dec c
    ccf
    sub e
    cpl
    nop
    rlca
    nop
    rlca
    inc b
    inc bc
    inc b
    inc bc
    inc b
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
    ld [bc], a
    ld bc, $0103
    inc bc
    ld bc, $0101
    ld bc, $0001
    ld bc, $0021
    ld bc, $0500
    nop
    dec d
    nop
    rla
    nop
    dec a
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
    rst $30
    ld [$02fd], sp
    or $09
    rst $38
    nop
    ld h, [hl]
    sbc c
    ld h, $d9
    ld b, $f9
    ld [bc], a
    db $fd
    ld [de], a
    db $fd
    nop
    rst $38
    ld e, b
    rst $38
    call nc, $fcff
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    db $fc
    rst $38
    ldh a, [rIE]
    ld b, b
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, [hl]
    rst $38
    ei
    rst $38
    ld a, [c]
    rst $38
    ei
    rst $38
    ld a, [hl]
    rst $38
    inc e
    rst $38
    ret nz

    rst $38
    ld a, [$efff]
    rst $38
    ld a, [hl]
    rst $38
    rrca
    rst $38
    ld bc, $d0ff
    rst $38
    jr @+$01

    rst $38
    rst $38
    rst $38

jr_082_6dd7:
    rst $38
    dec bc
    rst $38
    ld bc, $04ff
    rst $38
    pop af
    rst $38
    inc a
    rst $38
    add hl, bc
    rst $38
    ld b, b
    rst $38
    jp nz, Jump_082_7eff

    rst $38
    rrca
    rst $38
    rra
    rst $38
    rst $30
    rst $38
    ld a, [hl+]
    rst $38
    rst $20
    rra
    nop
    rst $38
    jr nz, jr_082_6dd7

    nop
    rst $38
    ld [hl], b
    rst $38
    adc $ff
    pop bc
    rst $38
    daa
    rst $38
    dec b
    rst $38
    jp nz, Jump_000_3fff

    rst $38
    rrca
    rst $38
    add hl, bc
    rst $38
    adc b
    rst $38
    inc c
    rst $38
    ret nz

    rst $38
    jr c, @+$01

    rrca
    rst $38
    inc hl
    rst $38
    ld h, b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    ld a, [hl]
    rst $38
    add e
    ld a, a
    sub c
    ld a, a
    ret c

    ccf
    ld [hl], c
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    cp b
    rlca
    ld [$2c00], sp
    nop
    nop
    nop
    ld b, b
    cp b
    ld bc, $03f8
    ld hl, sp-$77
    ldh a, [$81]
    ldh a, [$cb]
    ldh a, [rLCDC]
    rst $38
    ld c, a
    db $f4
    db $10
    ldh [$09], a
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add [hl]
    ld a, a
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [$28ff], sp
    rst $38
    ld e, b
    rst $38
    ld c, d
    rst $38
    add hl, bc
    rst $38
    jr z, @+$01

    adc c
    rst $38
    xor c
    rst $38
    jp hl


    rst $38
    db $ed
    rst $38
    cp l
    rst $38
    pop hl
    rst $38
    cp b
    rst $38
    sbc l
    rst $38
    sbc h
    rst $38
    db $fd
    rst $38
    cp $ff
    ld d, l
    rst $38
    ld l, d
    rst $38
    ld a, h
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rlca
    rst $38
    ld sp, hl
    ld a, a
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
    jr nz, @+$01

    rlca
    rst $38
    jp $fcff


    rst $38
    rst $18
    rst $38
    ld bc, $1cff
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ldh a, [rIE]
    cp $ff
    rst $38
    rst $38
    ld a, [hl]
    rst $38
    rst $30
    rst $38
    dec a
    rst $38
    nop
    rst $38
    ldh [rIE], a
    rst $28
    rst $38
    ld l, [hl]
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld a, d
    rst $38
    jp $80ff


    rst $38
    jr @+$01

    ld [bc], a
    rst $38
    jr nz, @+$01

    ld hl, sp-$01
    set 7, a
    ret nz

    rst $38
    ld [hl], b
    rst $38
    ld c, $ff
    add e
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    adc b
    rst $38
    ldh a, [rIE]
    cp $ff
    sbc a
    rst $38
    reti


    rst $38
    db $e3
    rst $38
    ld a, $ff
    ld bc, $f1ff
    rrca
    ld b, b
    rst $38
    add sp, -$01
    ld a, d
    rst $38
    add a
    rst $38
    ld hl, $85ff
    rst $38
    add d
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ccf
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    add d
    rst $38
    ld sp, hl
    rst $38
    ld a, $ff
    ld b, a
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ldh [rIE], a
    ld a, c
    rst $38
    rrca
    rst $38
    inc hl
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
    rst $38
    rst $00
    ccf
    db $fc
    ld bc, $00dc
    db $db
    nop
    cp a
    nop
    push bc
    nop
    and l
    nop
    add e
    nop
    and e
    nop
    adc h
    ld [hl], c
    ldh [$1f], a
    jr nc, jr_082_6f5f

    nop
    rst $38
    nop
    rst $38
    add hl, bc
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10

jr_082_6f5f:
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    ld b, d
    rst $38
    ld c, [hl]
    rst $38
    ret nz

    rst $38
    ld c, b
    rst $38
    ld b, b
    rst $38
    ld l, b
    rst $38
    ld c, c
    rst $38
    and b
    rst $38
    ld l, c
    rst $38
    and b
    rst $38
    xor c
    rst $38
    jp hl


    rst $38
    push af
    rst $38
    ld d, l
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    or e
    rst $38
    ld [hl+], a
    rst $18
    ld a, [bc]
    push af
    and b
    rst $38
    ld l, $f1
    ld [$98ff], sp
    rst $38
    ld hl, sp-$01
    ld a, [hl]
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    ld a, $ff
    ld e, b
    rst $38
    sub c
    rst $28
    ld hl, sp-$01
    ldh [rIE], a
    ld b, b
    rst $38
    ret nc

jr_082_6fb7:
    rst $38
    xor h
    rst $38
    ret c

    rst $38
    db $10
    rst $38
    ld a, [hl-]
    push af
    ld b, b
    cp a
    rlca
    ld hl, sp+$00
    rst $38
    ret nc

    rst $38
    and b
    rst $38
    add d
    rst $38
    ld d, b
    rst $38
    ld a, b
    rst $38
    rrca
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    jr nc, @+$01

    nop
    rst $38
    jr z, jr_082_6fb7

    ldh [rIE], a
    jr @+$01

    add hl, bc
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    scf
    rst $38
    daa
    rst $38
    db $f4
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $20
    rst $38
    ld c, e
    rst $38
    ld [hl], e
    rst $38
    rra
    rst $38
    adc e
    rst $38
    nop
    rst $38
    add h
    rst $38
    ldh [rIE], a
    inc a
    rst $38
    rlca
    rst $38
    ld de, $00ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    inc a
    rst $38
    rra
    rst $38
    inc hl
    rst $38
    daa
    rst $38
    xor [hl]
    rst $38
    call $effe
    db $fc
    inc e
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld [$20ff], sp
    rst $38
    inc h
    rst $38
    sub b
    rst $38
    ld [hl], b
    rst $38
    rst $38
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
    ld c, a
    ccf
    and e
    rlca
    dec d
    nop
    nop
    nop
    add b
    nop
    sub a
    ld c, b
    nop
    cp $01
    cp $01
    cp $01
    cp $01
    cp $00
    rst $38
    add d
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, h
    rst $38
    ccf
    ld hl, sp+$3a
    ldh a, [$03]
    or $02
    rst $30
    cpl
    jp nc, $f818

    ld c, $fd
    ld [bc], a
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    ld c, b
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    ld c, d
    rst $38
    ld c, d
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld c, d
    rst $38
    ld a, [bc]
    rst $38
    ld a, [bc]
    rst $38
    ret z

    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    jr @+$01

    adc c
    rst $38
    inc b
    rst $38
    cp b
    ld b, a
    ld bc, $30fe
    rst $08
    jp $c0fc


    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    and $ff
    ld c, h
    rst $38
    jp nz, $c0ff

    rst $38
    ld hl, sp-$01
    sub l
    rst $38
    db $f4
    rst $38
    ld a, a
    add b
    adc a
    ld [hl], b
    rst $38
    nop
    rra
    ldh [$03], a
    db $fc
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    add b
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $38
    dec b
    rst $38
    nop
    rst $38
    inc b
    ei
    inc c
    rst $38
    nop
    rst $38
    sub b
    rst $38
    cp b
    rst $38
    ld [bc], a
    rst $38
    ret nz

    rst $38
    ld sp, hl
    rst $38
    ld a, [hl]
    rst $38
    ld b, a
    rst $38
    dec b
    rst $38
    adc b
    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, $ff
    rst $20
    rst $38
    ld hl, sp-$01
    rra
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ld [$3cff], a
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld bc, $e0ff
    rst $38
    nop
    rst $38
    jp $f43f


    dec bc
    db $ec
    inc de
    ld [hl], a
    adc b
    scf
    ret z

    call c, Call_000_38e3
    rst $38
    rlca
    rst $38
    ld bc, $50ff
    rst $38
    nop
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
    jr @+$01

    ret


    rst $38
    inc c
    rst $38
    ld a, a
    rst $38
    ld e, a
    ccf
    ld d, e
    rrca
    dec d
    inc bc
    ld c, c
    nop
    nop
    nop
    nop
    nop
    ld bc, $3f00
    ret nz

    dec hl
    ret nc

    inc hl
    ret nc

    ld de, $20e0
    ret nc

    jr nz, @-$2e

    add b
    ldh a, [$a0]
    ret nc

    ldh [$50], a
    ld d, b
    ld h, b
    ret nz

    ld [hl], b
    nop
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rNR41]
    ret nc

    ld b, b
    ldh a, [rSB]
    ldh a, [$c1]
    ldh a, [rSTAT]
    ldh a, [rSB]
    ldh a, [$0b]
    ldh a, [rWX]
    ldh a, [rVBK]
    ldh a, [rIF]
    ldh a, [rWX]
    ldh a, [rIF]
    ldh a, [rKEY1]
    di
    ld b, a
    rst $38
    ld c, $ff
    ld [$80ff], sp
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
    cp $02
    db $fc
    inc bc
    db $fd
    dec b
    cp $83
    db $fc
    inc bc
    db $fc
    ld bc, $a2fe
    rst $38
    add b
    rst $38
    ret c

    rst $38
    or b
    rst $38
    ld a, h
    add e
    add $3f
    db $e4
    rra
    db $ec
    rra
    ld a, [c]
    rrca
    ld sp, hl
    rlca
    cp [hl]
    ld b, c
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
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld a, b
    rst $38
    rlca
    rst $38
    nop
    rst $38
    or b
    rst $38
    inc a
    rst $38
    dec d
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    ld hl, sp-$01
    sbc $ff
    jr nc, @+$01

    jr nc, @+$01

    add sp, -$09
    pop af
    cp $ff
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    rst $38
    ld a, [$fcff]
    rst $38
    rlca
    rst $38
    ld bc, $28ff
    rst $38
    and b
    rst $38
    ld [c], a
    rst $38
    inc e
    rst $38
    dec bc
    rst $38
    add b
    rst $38
    inc b
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ret c

    ccf
    ldh [$1f], a
    add h
    ld a, e
    dec c
    ld a, [c]
    dec c
    ld a, [c]
    add l
    ld a, d
    call nz, $7dfb
    ld a, [$ff1c]
    inc bc
    rst $38
    inc b
    rst $38
    ld [$30ff], sp
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
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
    cp [hl]
    ld a, a
    ld h, a
    rra
    dec bc
    rlca
    ld c, [hl]
    inc bc
    nop
    ld hl, sp+$00
    ld hl, sp+$00
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
    rst $38
    nop
    db $fc
    inc bc
    db $fd
    nop
    db $fc
    inc bc
    ld bc, $0103
    inc bc
    ld bc, $0007
    rlca
    inc bc
    rrca
    rlca
    inc e
    rrca
    inc e
    rrca
    ccf
    sbc a
    rst $38
    ld a, [bc]
    rst $38
    ld l, d
    rst $38
    cp h
    ldh a, [$f0]
    pop af
    nop
    db $eb
    nop
    ccf
    nop
    nop
    rst $38
    nop
    rst $38
    ld bc, $3cfe
    ret nz

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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [rP1], a
    rst $38
    ld a, l
    rst $38
    ld [bc], a
    db $fd
    ld c, d
    db $fd
    rst $00
    db $fd
    inc c
    rst $38
    ret nz

    rst $38
    ld [de], a
    rst $38
    and c
    rst $38
    ld sp, hl
    rlca
    ldh [rP1], a
    cp e
    nop
    rst $30
    nop
    ld a, a
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
    inc b
    ld [hl], e
    adc h
    rrca
    ld hl, sp+$00
    rst $38
    and b
    rst $38
    ccf
    rst $38
    ld bc, $84ff
    rst $38
    ld hl, sp-$01
    add [hl]
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    inc d
    rst $38
    ld bc, $c0fe

Call_082_72f3:
    ccf
    inc b
    ei
    pop bc
    cp $00
    rst $38
    ret nc

    cpl
    db $dd
    ld [hl+], a
    ld a, h

Jump_082_72ff:
jr_082_72ff:
    add e
    jp nc, Jump_000_1def

    cp $07
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    db $fc
    rst $38
    ld a, $ff
    rlca
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    db $fc
    rst $38
    ccf
    rst $38
    rlca
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    or b
    ld a, a
    db $e4
    rra
    jp hl


    rla
    and c
    ld e, [hl]
    nop
    rst $38
    jr nc, jr_082_72ff

    jp nz, Jump_082_73fd

    db $fc
    inc c
    rst $38
    inc de
    rst $38
    nop
    rst $38
    nop
    rst $38
    add hl, hl
    rst $38
    ld bc, $a9ff
    rst $38
    db $eb
    rst $38
    dec de
    rst $38
    rlca
    rst $38
    adc l
    ld [hl], e
    xor b
    ld d, a
    pop bc
    cp [hl]
    ld [hl+], a
    db $dd
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
    add h
    ld hl, sp-$7c
    ld hl, sp+$04
    db $fc
    inc b
    db $fc
    db $fc
    inc e
    ld a, h
    sub b
    ld hl, sp-$08
    sbc b
    ldh a, [$38]
    ldh [$f8], a
    add b
    rst $38
    ld hl, sp-$01
    ld hl, sp-$31
    ld hl, sp+$0e
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp-$70
    rst $38
    cp e
    ldh [$3f], a
    ret nz

    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rlca
    nop
    inc bc
    nop
    ld bc, $0300
    ld [bc], a
    ld a, [hl]
    ld bc, $01fe
    cp $01
    cp $01
    db $fc
    inc bc
    ldh [$1f], a
    nop
    rst $38
    ldh [rIE], a
    rlca
    ld hl, sp-$80
    rst $38
    add c
    rst $38
    inc b
    rst $38
    ret nz

    rst $38
    inc bc
    rst $38
    cp c
    cp $1f
    ldh [rIE], a
    nop
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
    cp e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ldh a, [rIF]
    ld a, h
    add e
    nop
    rst $38
    rlca
    rst $38
    sub $ff
    inc a
    rst $38
    add b
    rst $38
    add c
    rst $38
    ld hl, sp-$01
    rrca
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld c, $ff
    nop
    rst $38
    ld bc, $78fe
    rst $38
    add b
    ld a, a
    inc b
    ei
    inc bc
    db $fc

Jump_082_73fc:
    add b

Jump_082_73fd:
    ld a, a
    add b
    rst $38
    ld h, c
    sbc a
    ld h, h
    sbc e
    ret nz

    rst $38
    ld hl, sp-$01
    rrca
    rst $38
    ld bc, $01ff
    rst $38
    ret z

    rst $38
    ld sp, hl
    rst $38
    ld e, $ff
    ld bc, $03ff
    db $fc
    inc bc
    db $fc
    jp Jump_082_73fc


    db $fc
    ld c, h
    rst $38
    ld bc, $94ff
    rst $38
    ld [$10ff], sp
    rst $28
    adc b
    rst $30
    nop
    rst $38
    add d
    ld a, a
    nop
    rst $38
    ld [hl], c
    adc [hl]
    jp nz, Jump_000_183d

    rst $20
    call nz, $f0ff
    rst $38
    db $ec
    rst $18
    cp e
    rst $00
    ld a, [c]
    adc l
    db $fd
    add d
    ld a, a
    add b
    rst $38
    nop
    ld a, a
    add b
    rst $18
    ldh [$33], a
    db $fc
    adc l
    ld a, [hl]
    inc bc
    rst $38
    db $f4
    nop
    xor h
    nop
    ld c, b
    nop
    ld c, b
    nop
    add sp, $00
    ldh [rP1], a
    ld d, b
    nop
    stop
    or b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ld b, b
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
    ld [bc], a
    nop
    ld l, $00
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    xor c
    nop
    rst $38
    nop
    rrca
    ldh a, [$f5]
    ld a, [bc]
    ccf
    nop
    rrca
    nop
    inc bc
    nop
    rlca
    nop
    ld bc, $0000
    nop
    ld bc, $0000
    nop
    nop
    nop
    add e
    nop
    rst $20
    nop
    add b
    nop
    ld [bc], a
    nop
    ld [$0600], a
    nop
    rst $38
    nop
    ei
    inc b
    di
    inc c
    ld a, b
    add a
    ld a, h
    add e
    ld a, a
    add b
    db $fd
    ld [bc], a
    rst $38
    nop
    ld b, b
    add b
    nop
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld b, a
    rst $38
    rst $38
    nop
    ldh [$1f], a
    ld a, b
    add a
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$0eff], sp
    pop af
    ld [hl+], a
    db $fd
    nop
    rst $38
    ld d, b
    rst $38
    ldh a, [rIE]
    ld e, $ff
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld b, b
    cp a
    nop
    rst $38
    ld bc, $20fe
    rst $38
    add d
    ld a, a
    inc l
    db $d3
    dec b
    ld a, [$fee1]
    dec d
    rst $38
    inc de
    rst $38
    nop
    rst $38
    ld bc, $c0ff
    rst $38
    inc a
    rst $38
    ld l, c
    rst $30
    ld a, [hl]
    pop hl
    ld e, a
    ldh [$df], a
    ldh [$79], a
    cp $36
    rst $08
    jr nc, @-$2f

    or c
    rst $08
    nop
    rst $38
    call z, Call_082_72f3
    rst $38
    ld l, $ff
    and c
    rst $38
    ld a, [bc]
    db $fd
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    inc h
    ei
    ld b, b
    cp a
    ld [bc], a
    rst $38
    ld h, $d9
    ld a, [bc]
    push af
    rlca
    ld hl, sp+$37
    ret z

    ld l, a
    ldh a, [$cb]
    inc a
    ld [$7e17], a
    add c
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    scf
    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc h
    nop
    ld l, d
    nop
    db $fc
    nop
    cp $00
    cp $00
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
    ccf
    ret nz

    ret nc

    cpl
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    cp $00
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    rlca
    nop
    rst $20
    nop
    cp e
    nop
    ld a, a
    nop
    sbc d
    nop
    cpl
    nop
    ld a, e
    nop
    ld a, l
    nop
    add b
    rst $38
    nop
    rst $38
    ret z

    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    dec de
    rst $38
    db $fc
    inc bc
    dec e
    ld [c], a
    ldh [$1f], a
    add b
    ld a, a
    ret nz

    ccf
    nop
    rst $38
    add h
    ld a, a
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    ld [bc], a
    rst $38
    inc d
    rst $38
    ld b, c
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    db $10
    rst $28
    db $10
    rst $28
    inc b
    ei
    db $10
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    inc e
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    inc b
    rst $38
    ret z

    ccf
    inc e
    db $e3
    ld b, b
    rst $38
    ld b, b
    rst $38
    adc d
    ld a, a
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    inc de
    rst $38
    inc b
    ei
    ld [bc], a
    db $fd
    add b
    rst $38
    or b
    ld a, a
    ldh [$1f], a
    db $fc
    inc bc
    rst $38
    nop
    ccf
    ret nz

    ld e, a
    ldh [rNR24], a
    cp $0a
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    ld b, b
    cp a
    call nc, Call_000_33eb
    db $fc
    ld [$58ff], sp
    rst $20
    ld bc, $10fe
    rst $28
    add hl, bc
    or $01
    cp $0a
    db $fd
    ldh [$1f], a
    ld hl, sp+$07
    rst $38
    nop
    rst $38
    nop
    adc b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld a, h
    rst $38
    rrca
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    db $10
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
    ld [bc], a
    nop
    inc sp
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    rst $38
    and b
    ret nz

    ld b, b
    add b
    ld h, b

jr_082_764d:
    add b
    ld a, b
    add b
    ld a, a
    add b
    ld a, a
    add b
    rst $38
    ret nz

    rra
    ld hl, sp+$1f
    rst $38
    dec a
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    adc b
    ld a, a
    ldh [$1f], a
    ldh [$1f], a
    db $76
    add hl, bc
    rrca
    nop
    ldh [rP1], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld b, c
    add b
    ld a, a
    ld bc, $08ff
    rst $38
    inc c
    ei
    jr c, jr_082_764d

    ld [$01ff], sp
    rst $38
    nop
    rst $38
    ld bc, $45ff
    rst $38
    ld a, c
    rst $00
    jr nz, @+$01

    inc bc

jr_082_768d:
    rst $38
    jr nc, @+$01

    ld c, a
    rst $38
    ldh [rIE], a
    ld d, $ff
    jr nc, @+$01

    nop
    rst $38
    ld bc, $91ff
    rst $38
    ld e, c
    rst $38
    ld bc, $01ff
    rst $38
    db $10
    rst $38
    ld a, b
    add a
    rst $38
    nop
    ld a, [hl+]
    push af
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    jr nc, jr_082_768d

    rlca
    ld hl, sp-$7c
    ei
    add hl, bc
    cp $c0
    ccf
    ld l, $d1
    inc hl
    call c, $fe41
    ld hl, $90fe
    rst $28
    db $10
    rst $28
    inc c
    di
    ld b, l
    ld a, [$7f80]
    ldh a, [rIF]
    rst $38
    nop
    rst $38
    nop
    ld a, [hl]
    add c
    ld b, a
    ld hl, sp+$01
    cp $18
    rst $20
    inc a
    jp $8976


    ccf
    ret nz

    adc a
    ldh a, [$27]
    ld hl, sp-$58
    ld [hl], a
    scf
    add sp, -$41
    ld h, b
    ccf
    ldh [$f7], a
    ld l, b
    ld d, l
    ld [$79a6], a
    ld [c], a
    rra
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $93ff
    rst $38
    add e
    rst $38
    db $e3
    rst $38
    ld a, a
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
    nop
    nop
    nop
    ld l, c
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, d
    rra
    dec b
    inc bc
    inc bc
    ld bc, $011f
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    rrca
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld bc, $a4fe
    rst $38
    ld bc, $0efe
    pop af
    cp $01
    cpl
    nop
    ei
    nop
    ei
    inc b
    rst $38
    nop
    rlca
    ld hl, sp+$00
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ld [$00ff], sp
    rst $38
    jr nc, @+$01

    ret nc

    rst $38
    ld e, $ff
    ld b, d
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    add hl, bc
    rst $38
    ret nz

    rst $38
    dec c
    rst $38
    ld bc, $18ff
    rst $38
    inc c
    rst $38
    xor b
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    add h
    ei
    ld hl, $08ff

jr_082_7785:
    rst $30
    nop
    rst $38
    ret nz

    ccf
    xor h
    ld d, e
    ld l, h

jr_082_778d:
    sub e
    ld [$20f7], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ld hl, sp-$39
    ld hl, sp-$39
    sbc b
    rst $20
    ret nz

    ccf
    ld [hl], h
    adc a
    db $10
    rst $28
    jr nz, jr_082_7785

    nop
    rst $38
    and b
    ld e, a
    ld h, b
    sbc a
    jr nz, jr_082_778d

    ld b, b
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    jp nz, Jump_000_003f

    rst $38
    add c
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
    add c
    ld a, a
    add c
    ld a, a
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    add d
    ld a, a
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    inc bc
    cp $03
    cp $03
    cp $02
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    dec b
    rst $38
    dec b
    rst $38
    rlca
    db $fd
    rlca
    db $fd
    rlca
    db $fd
    rrca
    db $fd
    add hl, bc
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop
    cpl
    nop
    rst $38
    nop
    ei
    nop
    ld a, e
    nop
    rst $30
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld l, b
    sub a
    ld c, b

jr_082_780b:
    or a
    ld bc, $f0ff
    rrca
    ret nz

    ccf
    nop
    rst $38

jr_082_7814:
    ldh [rIE], a
    ccf
    rst $38
    pop bc
    ccf
    ld b, b
    cp a
    rst $08
    jr nc, jr_082_7814

    ld a, [bc]
    ldh a, [rIF]
    jr jr_082_780b

    ld e, b
    rst $20
    cp [hl]
    ld b, c
    rst $38
    nop
    db $ed
    ld [de], a
    rst $38
    nop
    rst $38
    nop
    ld [hl], b
    adc a
    ld e, [hl]
    and c
    nop
    rst $38
    ld bc, $21ff
    rst $38
    ld bc, $21ff
    rst $38
    rlca
    rst $38
    ld h, e
    rst $38
    rlca
    rst $38
    add e
    ld a, a
    cpl
    rst $10
    inc hl
    rst $38
    adc e
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    cp a
    rst $38
    rst $10
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    cpl
    rst $38
    ld l, a
    rst $38
    rra
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
    ld e, a
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
    cp a
    rst $38
    cp a
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
    rst $38
    ld a, l
    rst $38
    ld a, a
    rst $38
    cp $7f
    cp $7f
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], l
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    xor $f7
    db $fc
    rst $30
    db $fd
    rst $30
    db $f4
    rst $38
    call Call_000_00ff
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
    ld bc, $0100
    nop
    rlca
    nop
    ccf
    nop
    rst $30
    nop
    ld a, [hl]
    ld bc, $017e
    cp $01
    rst $38
    ld bc, $03fd
    xor l
    ld d, e
    xor a
    ld d, e
    ld c, e
    or a
    inc bc
    rst $38
    rlca
    rst $38
    and a
    rst $38
    and a
    rst $38
    ld h, a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rst $28
    rst $38
    rst $28
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
    cp a
    ld a, a
    ld a, a
    rst $38
    rst $38
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
    rst $30
    rst $38
    db $fd
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    jp hl


    rst $38
    db $eb
    rst $38
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    jp nc, $d4ff

    rst $38
    db $f4
    rst $38
    ld a, [$e8ff]
    rst $38
    xor l
    rst $38
    jp hl


    rst $38
    ld e, b
    rst $38
    ld d, d
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    db $e4
    rst $38
    add sp, -$01
    add sp, -$01
    ret c

    rst $38
    ret c

    rst $38
    pop de
    rst $38
    pop de
    rst $38
    db $d3
    rst $38
    ld [c], a
    rst $38
    and d
    rst $38
    and [hl]
    rst $38
    call z, Call_082_4cff
    rst $38
    ld c, [hl]

jr_082_7983:
    rst $38
    sbc d
    rst $38
    sub b
    rst $38
    sbc b
    rst $30
    jr jr_082_7983

    ld [$28f7], sp
    rst $30
    add hl, sp
    rst $20
    add hl, de
    rst $20
    ei
    rst $00
    ld a, d
    rst $00
    cp d
    rst $00
    cp b
    rst $00
    cp a
    call nz, $cc33
    rla
    rrca
    rla
    rrca
    rlca
    rra
    rrca
    rra
    cpl
    rra
    cpl
    rra
    rrca
    ccf
    rra
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld a, a
    ccf
    ccf
    ld a, a
    cp a
    ld a, a
    cp a
    ld a, a
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
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ei
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    rst $20
    rst $38
    xor $ff
    xor [hl]
    rst $38
    xor [hl]
    rst $38
    adc $ff
    call c, $fcff
    rst $18
    inc e
    rst $38
    cp c
    rst $38
    ld sp, hl
    rst $38
    ld a, [$feff]
    rst $38
    ld a, [hl]
    rst $38
    ld a, b
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    db $f4
    rst $38
    ld hl, sp-$01
    add sp, -$01
    add sp, -$01
    ldh [rIE], a
    ldh a, [rIE]
    di
    cp $eb
    cp $e9
    cp $e3
    db $fc
    db $e3
    db $fc
    rst $20

jr_082_7a39:
    ld hl, sp-$39
    ld hl, sp-$35
    ld hl, sp-$7d
    ld hl, sp-$7d
    ld hl, sp-$61
    ldh a, [$86]
    ld sp, hl
    inc bc
    db $fd
    jr nc, jr_082_7a39

    ld d, $eb
    ld e, $e3
    ld a, [hl]
    jp $c73e


    inc a
    rst $00
    ld [hl], b
    adc a
    ld a, b
    adc a
    ld l, b
    sbc a
    ld h, c
    sbc [hl]
    ldh a, [$1f]
    ld de, $41fe
    cp [hl]
    ld h, c
    cp [hl]
    ld [hl+], a
    db $fd
    ld b, d
    db $fd
    ld b, e
    db $fd
    ld b, b
    rst $38
    add d
    rst $38
    add e
    cp $01
    cp $07
    db $fc
    inc bc
    db $fc
    rrca
    ld hl, sp+$0f
    ld hl, sp+$67
    sbc b
    rst $18
    jr nc, jr_082_7a98

    or $43
    cp h
    ld l, a
    or b
    ld l, $f1
    ld c, a
    ldh a, [$6f]
    ret nc

    adc d
    push af
    adc e
    db $f4
    jp z, Jump_000_1eb5

    pop hl
    sbc $21
    adc l
    ld [hl], e
    dec b
    ei

jr_082_7a98:
    add d
    ld a, a
    adc e
    db $76
    sub l
    ld l, [hl]
    rla
    db $ec
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
    push af
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, [$feff]
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    db $e4
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    ret z

    rst $38
    ret z

    rst $38
    pop bc
    rst $38
    sub c
    rst $38
    sub c
    rst $38
    sub b
    rst $38
    ld [hl-], a
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld b, h
    rst $38
    ld b, h
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    adc b
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    ld sp, $31ff
    rst $38
    sub [hl]
    ld a, e
    ld [hl], $db
    inc sp
    sbc $70
    sbc a
    ld l, h
    sbc a
    ld a, h
    adc a
    ld a, d
    adc l
    ld sp, hl
    ld c, $ec
    dec de
    db $f4
    dec de
    ret nc

    ccf
    ld b, b
    cp a

jr_082_7b34:
    pop hl
    ld a, $e1
    ld a, $05
    ld a, d
    and $59
    ld a, d
    push bc
    adc e
    ld [hl], l
    jp $84bd


    ei
    rlca
    ld a, [$f609]
    dec c
    or $07

jr_082_7b4b:
    db $fc
    ld [bc], a
    db $fd
    rrca
    ld hl, sp+$07
    ld hl, sp+$55
    cp d
    db $dd
    ld [hl-], a
    sbc a
    ld [hl], b
    ld l, $f1
    cpl
    ldh a, [rBGP]
    ld hl, sp-$0a
    ld c, c
    cpl
    ret nc

    adc [hl]
    pop af
    sbc a
    ldh [$1f], a
    ldh [$7f], a
    add b
    rst $18
    jr nz, jr_082_7b4b

    ld hl, $e11f
    dec e
    db $e3
    ld c, $f3
    ld c, [hl]
    or e
    ld c, d
    or a
    inc d
    rst $28
    sbc l
    ld l, [hl]
    cp e
    ld c, h
    ld l, b
    sbc a
    ld [hl], d
    sbc l
    sub e
    ld a, h
    rst $30
    jr c, jr_082_7b34

    ld [hl], d
    xor a
    ld [hl], b
    rst $08
    ld [hl], b
    ld a, a
    ret nz

    cp a
    ret nz

    rst $30
    adc b
    ld l, a
    sub b

jr_082_7b94:
    ld a, a
    add b
    ld a, l
    add d
    ld a, a
    add b
    rst $18
    jr nz, jr_082_7b94

    ld [$20df], sp
    nop
    ld bc, $0302
    inc b
    dec b
    ld b, $07
    ld [$0a09], sp
    dec bc
    inc c
    dec bc
    dec c
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_082_7bd4

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_082_7be4

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_082_7bf4

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_082_7c04

    ld [hl-], a

jr_082_7bd4:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_082_7c14

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_082_7be4:
    dec [hl]
    dec [hl]
    dec [hl]
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

jr_082_7bf4:
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

jr_082_7c04:
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

jr_082_7c14:
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
    dec bc
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
    xor h
    xor l
    xor [hl]
    xor a
    dec [hl]
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
    jr jr_082_7cc9

    add hl, de
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, @+$23

jr_082_7cc9:
    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, @+$2b

    ld a, [hl+]
    dec hl
    inc l
    dec bc
    dec l
    ld l, $2f
    jr nc, @+$33

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    nop
    ld bc, $0202
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0200
    ld [bc], a
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0101
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    ld bc, $0000
    nop
    ld bc, $0001
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
    ld bc, $0101
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld bc, $0001
    nop
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0000
    ld bc, $0001
    nop
    ld bc, $0100
    ld bc, $0100
    ld bc, $0101
    ld bc, $0000
    nop
    ld bc, $0001
    ld bc, $0101
    nop
    nop
    ld bc, $0909
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0808], sp
    add hl, bc
    add hl, bc
    ld [$0908], sp
    add hl, bc
    ld [$0809], sp
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    ld [$0909], sp
    add hl, bc
    add hl, bc
    nop
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    set 7, a
    db $db
    rst $38
    rst $10
    rst $38
    db $db
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $30
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
    rst $30
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
    ei
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
    ei
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    ld a, a
    db $fd
    ccf
    rst $38
    rra

jr_082_7e96:
    rst $38
    rra
    rst $38
    rra
    db $fd
    rrca
    ld a, [hl]
    adc a
    ld a, l
    adc a
    ld a, a
    adc a
    xor $1f
    cp $1f
    cp $1f
    cp $3f
    cp $3f
    cp $7f
    cp $ff
    cp $ff
    cp $ff
    cp $ff
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
    rst $38
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

Jump_082_7eff:
    rst $38
    rst $38
    rst $38
    ld a, l
    rst $38
    di
    rst $38
    rst $20
    rst $38
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    nop
    add b
    nop
    jr jr_082_7e96

    ld a, d
    add h
    ld e, a
    and b
    rst $38
    add b
    rst $38
    add b
    cp a
    ret nz

    add c
    cp $c0

Call_082_7f23:
    rst $38
    or h
    rst $38
    sub a
    rst $38
    jp nz, $c0ff

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ei
    cp $fa
    rst $38
    ld [c], a
    rst $38
    ld a, [c]
    rst $38
    jp nc, $f0ff

    rst $38
    jp nc, $d0ff

    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    or $f9
    or $f9
    and $f9
    or $e9
    rst $28
    ldh a, [$e3]
    ld hl, sp-$20
    ld hl, sp-$1b
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$09
    ld hl, sp-$09
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$fd]
    ld a, [c]
    rst $38
    ldh a, [$fe]
    pop af
    rst $38
    ldh a, [rIE]
    ldh a, [$fb]
    db $f4
    rst $30
    ld hl, sp-$0b
    ld a, [$f8f7]
    rst $38
    ld hl, sp-$03
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$03
    ld a, [$fafd]
    db $fd
    ld a, [$fcfb]
    rst $38
    ld hl, sp+$7e
    ld sp, hl
    ei
    db $fc
    ei
    db $fc
    ld a, a
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    db $fc
    nop
    ld a, a
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    ld a, a
    inc bc
    rst $38
    inc bc
    ld a, a
    inc bc
    rst $38
    inc bc
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    cp a
    nop
    cp a
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp [hl]
    rst $38
    rst $38
    cp $fe
    rst $38
    cp [hl]
    rst $38
    cp $ff
    cp $ff
    cp $ff
    rst $18
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
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
    db $ed
    rst $38
    di
    rst $38
    rst $28
    rst $38
    sbc a
    rst $38
