SECTION "ROM Bank $036", ROMX[$4000], BANK[$36]

    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
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
    adc h
    adc h
    adc h
    adc l
    adc [hl]
    adc [hl]
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
    ld c, $0e
    ld c, $0e
    sbc e
    sub b
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and h
    and l
    adc h
    adc h
    and [hl]
    and a
    xor b
    xor c
    xor d
    xor e
    xor h
    xor l
    xor [hl]
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    xor a
    or b
    or c
    or d
    or e
    or h
    or l
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    or [hl]
    or a
    cp b
    cp c
    cp d
    cp e
    cp h
    adc h
    cp l
    adc [hl]
    cp [hl]
    cp a
    cp a
    ret nz

    ld c, $0e
    ld c, $c1
    jp nz, $c30e

    call nz, Call_000_0ec5
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $c1
    jp nz, $c60e

    rst $00
    ret z

    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    pop bc
    jp nz, $c90e

    jp z, Jump_000_03cb

    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    ld bc, $0001
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
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
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    rlca
    rlca
    ld [bc], a
    ld bc, $0001
    ld bc, $0001
    nop
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld bc, $0404
    ld bc, $0101
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld b, $04
    inc b
    ld bc, $0101
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld b, $04
    inc b
    ld bc, $0101
    rlca
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
    inc bc
    inc bc
    rlca
    rlca
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
    inc bc
    inc bc
    inc bc
    inc b
    rlca
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
    inc bc
    inc bc
    inc b
    inc b
    rlca
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
    inc bc
    inc bc
    inc b
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_036_4197

    nop
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_036_4197:
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
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
    inc b
    ld bc, $0400
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
    inc b
    ld bc, $0400
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
    inc b
    ld bc, $0400
    inc b
    inc b
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
    ld hl, sp-$08
    ld hl, sp-$08
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    ld hl, sp+$00
    db $fc
    ld [$fcfc], sp
    db $fc
    db $fc
    db $fc
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
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
    ret nz

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
    ld bc, $07fe
    ld hl, sp+$0f
    ldh a, [$1f]
    db $e3
    ld a, a
    add a
    rst $38
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
    rst $38
    rst $38
    rst $38
    cp $ff
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
    rst $38
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$0f
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
    rrca
    rst $38
    rra
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
    ld bc, $07fe
    ld hl, sp+$0f
    pop af
    rra
    db $e3
    ld a, a
    add a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$0f
    ldh a, [$1f]
    pop hl
    rra
    db $e3
    ccf
    rst $00
    ld a, a
    add a
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
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
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
    ld bc, $07fe
    ld hl, sp+$0f
    pop af
    rra
    db $e3
    ld a, a
    adc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$07
    ld sp, hl
    rrca
    pop af
    rra
    db $e3
    ccf
    rst $00
    ld a, a
    adc a
    ldh a, [rIF]
    ldh [$1f], a
    ret nz

    ccf
    add b
    ld a, a
    add d
    ld a, l
    inc bc
    db $fc
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    ld de, $42ff
    rst $38
    ld h, c
    sbc a
    ld a, l
    sbc a
    rst $28
    ccf
    ld a, a
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
    rrca
    pop af
    rra
    rst $20
    ld a, a
    adc a
    rst $38
    rra
    rst $38
    ccf
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
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
    ld bc, $03fe
    db $fc
    inc bc
    db $fc
    rlca
    ld sp, hl
    rrca
    di
    rra
    db $e3
    ccf
    rst $00
    ld a, a
    adc a
    ld a, a
    sbc a
    rst $38
    rra
    ret nz

    ccf
    add d
    ld a, l
    nop
    rst $38
    inc bc
    cp $03
    cp $02
    rst $38
    ld bc, $13ff
    rst $28
    ld l, d
    rst $18
    dec a
    rst $18
    ccf
    rst $18
    ld a, l
    rst $08
    ccf
    rst $08
    res 7, a
    ld l, d
    cp a
    di
    rra
    ld [c], a
    sbc a
    res 7, a
    add $ff
    rst $00
    rst $38
    jp $c3ff


    rst $38
    add e
    rst $38
    jp nz, Jump_000_00ff

    rst $38
    nop
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
    rrca
    di
    rra
    rst $20
    ccf
    rst $08
    rst $38
    rra
    rst $38
    ld a, a
    db $fc
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
    ld bc, $01fe
    cp $03
    db $fc
    rlca
    ld sp, hl
    rrca
    di
    rra
    rst $20
    rra
    rst $20
    ccf
    rst $08
    ld a, a
    sbc a
    rst $38
    ccf
    rst $38
    ccf
    rst $38

jr_036_44af:
    ld a, e
    rlca

jr_036_44b1:
    ei
    dec de
    rst $28
    cpl
    di
    dec e
    di
    rra
    di
    add h
    ei
    reti


    ccf
    xor c
    ld a, a
    ld a, c
    rst $38
    ld sp, hl
    cp a
    ld sp, hl
    ccf
    or c
    ld a, a
    sbc b
    ld a, a
    sbc $7d
    ld [de], a
    db $fd
    rra
    ld hl, sp-$61
    ld hl, sp-$61
    ld hl, sp+$1a
    db $fd
    sbc [hl]
    ld sp, hl
    sbc h
    ei
    sbc h
    ld [c], a
    cp h
    jp nz, $96e8

    ld a, b
    add h
    ret nc

    inc l
    ldh a, [$08]
    or b
    ld c, b
    ld h, b
    sbc b
    ld h, b
    sub b
    ret nz

    jr nc, jr_036_44af

    jr nc, jr_036_44b1

    rst $38
    pop bc
    cp $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    db $e3
    db $fc
    rst $20
    ld hl, sp-$19
    ld hl, sp-$19
    ld hl, sp-$09
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$02
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld sp, hl
    cp $f9
    ld a, [$fbfd]
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
    ei
    db $fc
    ld sp, hl
    cp $f9
    cp $fc

jr_036_453b:
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
    ld bc, $03fe
    db $fd
    rrca
    di
    rra
    rst $20
    ccf
    rst $08
    cp $3f
    db $fc
    ld a, a
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ret nz

    rst $38
    add c
    cp $03
    db $fd
    rlca
    ld sp, hl
    rrca
    di
    rrca
    rst $30
    rra
    xor $3f
    adc $7f
    sbc d
    rst $38
    ccf
    rst $38
    ld a, e
    rst $38
    ld a, e
    rst $38
    rst $28
    rst $38
    rst $38
    inc a
    rst $28
    ld a, [de]
    rst $28
    cp h
    ld l, a
    ld h, h
    rst $38
    dec h
    cp $81
    ld a, [hl]
    xor c
    ld a, [hl]
    scf
    db $fd
    xor d
    db $fd
    inc [hl]
    ei
    and h
    ld a, [$f6a8]
    xor b
    db $f4
    xor b
    push af
    sub b
    db $ec
    ld d, b
    xor b
    ld h, b
    sbc b
    or b
    ld d, b
    ld h, b
    sub b
    ld b, b
    or b
    ret nz

    jr nz, jr_036_453b

    ld b, b
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    nop
    add b
    inc bc
    add e
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0008], sp
    nop
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
    ld a, a
    rst $38
    db $fc
    rst $38
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    adc a
    ld a, a
    rrca
    ld a, a
    rrca
    ld a, a
    ld b, a
    ccf
    ld b, a
    ccf
    ld b, a
    ccf
    ld b, a
    ccf
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    ccf
    nop
    ccf
    nop
    ccf
    jr nz, jr_036_461f

    rst $18
    ccf
    rst $18
    ccf
    rst $38
    rra
    sbc a
    rra
    rra
    adc a
    add a
    rrca
    ld b, a
    adc a
    rst $10
    rrca
    inc e
    inc bc
    inc e
    inc bc
    inc e
    inc bc
    dec e
    inc bc
    dec e
    inc bc
    dec e
    inc bc
    dec e
    inc bc
    dec e

jr_036_461f:
    inc bc
    dec e
    inc bc
    dec a
    inc bc
    dec a
    inc bc
    dec a
    inc bc
    ld a, l
    inc bc
    ld a, l
    inc bc
    ld l, l
    inc de
    db $ec
    inc de
    dec de
    rst $38
    dec de
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fd
    rrca
    di
    rra
    rst $20
    ld a, $df
    db $fc
    ccf
    ld hl, sp+$7f
    pop af
    cp $e3
    db $fd
    add e
    rst $38
    rlca
    ei
    rrca
    rst $30
    rra
    rst $28
    ccf
    rst $18
    ld a, a
    sub a
    ld a, a
    cp a
    rst $38
    ld l, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    sbc l
    rst $38
    rst $38
    rst $38
    ld a, e
    ret z

    db $f4
    adc b
    db $f4
    cp b
    ldh [rNR10], a
    add sp, -$80
    ldh a, [$c0]
    ldh a, [$a0]
    ret nz

    ret nz

    and b
    ret nz

    and b
    nop
    pop hl
    add b
    ld b, b
    nop
    ret nz

    nop
    add b
    nop
    add b
    nop
    add b
    nop
    add h
    cp $ff
    cp $ff
    cp $ff
    cp $fd
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$02
    rst $38
    cp $e0
    db $fd
    ldh [$fa], a
    ldh [$ee], a
    call nz, $c0fb
    rst $38
    nop
    rst $38
    and b
    rst $38
    adc h
    rst $38
    add c
    rst $38
    sub l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    ld sp, $3fff
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    inc b
    rst $38
    rst $38
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
    ldh a, [rIE]
    rra
    ldh [$1f], a
    ldh [$1f], a
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
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld sp, hl
    rst $38
    ld sp, hl
    rst $38
    ld hl, sp-$01
    ld sp, hl
    rst $38
    db $fd
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
    nop
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
    ld a, [$f0ff]
    rst $38
    db $e4
    ei
    pop hl
    cp $c2
    db $fc
    ret nz

    db $fc
    add b
    ld hl, sp-$80
    cp $80
    ldh a, [$80]
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rNR12], a
    pop hl
    ld b, [hl]
    add b
    jr z, @+$14

    add hl, bc
    db $e4
    nop
    push af
    inc b
    cp d
    ld b, b
    db $db
    db $10
    ld b, l
    push af
    cp e
    nop
    sub a
    nop
    rst $18
    ld bc, $41ff
    cp a
    ld bc, $037f
    rst $38
    ld bc, $c1ff
    rst $38
    ld [hl], l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    rst $38
    rst $38
    rst $38
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
    ei
    rst $38
    pop af
    rst $38
    ld sp, hl
    rst $38
    jp hl


    rst $38
    rst $38
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
    nop
    rst $38
    rlca
    ld hl, sp-$40
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
    cp $00
    db $fc
    nop
    ld hl, sp+$00
    rst $38
    rst $38
    nop
    rst $38
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rst $20
    rst $38
    daa
    db $fc
    daa
    db $fc
    dec h
    cp $25
    cp $64
    rst $38
    ld h, h
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    db $e4
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    pop hl
    rst $38
    add a
    rst $38
    add b
    rst $38
    add b
    rst $38
    adc c
    halt
    rst $18
    jr nz, jr_036_4849

    add b
    ld de, $0788
    add a
    nop
    add b
    ld bc, $1180
    add b
    nop
    adc c
    inc d
    sub h
    inc bc
    add d
    ld e, l
    nop
    rst $10
    adc b
    rst $30
    add l
    ld a, [$dda2]
    and b
    rst $18
    adc d
    push af
    jp nz, $a0bf

    rst $18
    inc b
    rst $38
    adc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rla
    rst $38
    rrca
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    ld a, a
    rst $38
    cp a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    ld a, a

jr_036_4849:
    rst $38
    adc a
    rst $38
    add e
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
    ldh [$1f], a
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
    ld hl, sp+$07
    inc bc
    nop
    ld bc, $0000
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
    pop af
    rrca
    ld sp, hl
    rlca
    ld sp, hl
    rst $20
    ld sp, hl
    daa
    ld sp, hl
    daa
    ld sp, hl
    daa
    pop af
    cpl
    pop af
    cpl
    ld hl, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    ld hl, $21ff
    rst $38
    cpl
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    dec hl
    rst $38
    add hl, bc
    rst $38
    add a
    rst $38
    inc d
    rst $28
    inc b
    rst $38
    ld a, [bc]
    push af
    ld b, $3b
    ld [$b5f7], sp
    ld a, [bc]
    add hl, bc
    ld d, a
    ld d, l
    ld a, [hl+]
    ld d, b
    xor l
    ld l, d
    dec d
    nop
    rst $38
    add l
    ld a, d
    ld b, b
    cp a
    adc b
    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $28
    db $10
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    ld hl, $3fff
    rst $38
    ret c

    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    ld a, $ff
    inc e
    rst $38
    inc e
    rst $38
    rra
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
    and $ff
    db $ec
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$09
    db $fc
    di
    cp $e1
    cp $e1
    cp $e1
    cp $c1
    cp $c1
    cp $c1
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    add c
    rst $38
    add c
    rst $38
    ld de, $31ef
    rst $08
    ld sp, $31cf
    rst $08
    ld sp, $31cf
    rst $08
    ld sp, $39cf
    rst $00
    ld a, c
    add a
    ld a, c
    add a
    ld a, c
    add a
    reti


    daa
    add hl, sp
    daa
    add hl, sp
    daa
    reti


    daa
    ld a, c
    add a
    ld sp, hl
    rlca
    ld a, c
    add a
    ld a, c
    add a
    ld a, c
    add a
    ld a, c
    add a
    add hl, sp
    rst $00
    ld a, e
    add a
    inc sp
    rst $08
    inc sp
    rst $08
    inc de
    rst $28
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add a
    rst $38
    add a
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $20
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ret nz

    ccf
    ldh a, [$cf]
    db $fc
    di
    ld a, a
    db $fc
    rra
    rst $38
    rlca
    rst $38
    jp $e03f


    rst $18
    ldh a, [$ef]
    db $fc
    di
    cp $dd
    rst $38
    cp $ff
    rst $18
    rst $38
    rst $20
    ret nc

    rst $38
    xor h
    ei
    sub e
    cp $42
    cp a
    ld hl, $055f
    ccf
    ld [de], a
    cpl
    dec bc
    rla
    nop
    rrca
    nop
    rrca
    ld [bc], a
    dec b
    ld bc, $0002
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    cp a
    ld a, a
    rrca
    rst $38
    ld c, e
    cp a
    daa
    rst $18
    inc bc
    rst $38
    add b
    cp a
    pop bc
    ld a, [hl]
    inc d
    db $eb
    ld c, c
    or $4c
    di
    and b
    ld a, a
    jr nz, @+$01

    ld hl, $10fe
    rst $38
    db $dd
    xor $10
    rst $38
    add hl, bc
    rst $38
    ld e, b
    rst $38
    reti


    rst $30
    db $ec
    rst $38
    db $f4
    rst $38
    and $ff
    or $ff
    rst $10
    rst $38
    rst $38
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $17ff
    rst $38
    ld a, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    nop
    rst $38
    nop
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

    ccf
    ldh a, [$cf]
    db $fc
    di
    rst $38
    db $fc
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    ld bc, $80ff
    ld a, a
    ret nz

    cp a
    ldh [$df], a
    ldh a, [$ef]
    db $fc
    di
    cp $fd
    rst $38
    cp [hl]
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    dec c
    ld a, [$ff52]
    ld d, d
    rst $38
    ld d, d
    rst $38
    sub h
    ld a, a
    add d
    ld a, a
    ld d, [hl]
    cp a
    ld a, [hl+]
    rst $10
    jr nz, @+$61

    ld d, $6f
    ld [$0437], sp
    dec de
    inc b
    dec bc
    ld [bc], a
    dec c
    ld [bc], a
    dec d
    ld bc, $3f82
    db $fc
    cp a
    ld e, d
    rra
    cp $0f
    rst $38
    rla
    rst $28
    ld b, a
    ei
    ld hl, $40df
    rst $38
    add b
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    add b
    rst $38
    inc h
    rst $38
    inc h
    ei
    ld [$ffff], sp
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    adc h
    rst $38
    db $ec
    rst $38
    cp h
    rst $38
    cp h
    rst $38
    call z, $c7ff
    rst $38
    db $e3
    rst $38
    pop af
    rst $38
    xor a
    rst $38
    or b
    rst $38
    or b
    rst $38
    rst $10
    rst $38
    rst $38
    rst $38
    dec bc
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
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    ret nz

    nop
    ret nz

    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    rst $18
    ld a, a
    ld e, a
    rst $38
    rst $18
    cp $be
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
    rst $38
    rst $38
    rst $38
    ld a, $ff
    daa
    rst $38
    cp e
    ld a, a
    ld b, b
    cp a
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, a
    ld a, a
    nop
    ld bc, $2000
    nop
    ld d, c
    ld c, a
    or e
    db $10
    rst $28
    ld [bc], a
    db $fd
    nop
    rst $38
    adc b
    ld [hl], a
    ld bc, $01fe
    cp $dd
    ld a, [$ff08]
    jr @+$01

    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add c

jr_036_4b2d:
    rst $38
    pop bc
    rst $38
    sbc b
    rst $38
    set 7, a
    cp b
    rst $38
    add sp, -$01
    ld a, b
    rst $38
    rst $38
    rst $38
    call nc, Call_000_00ff
    rst $38
    ld b, $f9
    inc c
    di
    jr jr_036_4b2d

    add hl, de
    and $11
    xor $31
    adc $33
    call z, $cc33
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld h, e
    sbc h
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld h, a
    sbc b
    ld b, a
    cp b
    ld b, a
    cp b
    rlca
    ld hl, sp+$47
    cp b
    rlca
    ld hl, sp+$47
    cp b
    ld b, a
    cp b
    rlca
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
    ld bc, $01fe
    cp $00
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
    nop
    rst $38
    nop
    rst $38
    ld hl, sp-$01
    db $ec
    rst $38
    call c, $aeb7
    rst $38
    ld l, $df
    cp e
    ld a, a
    ld a, [hl]
    rst $38
    rst $38
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
    ld bc, $ffff
    rst $38
    add c
    cp $0f
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    jr nz, jr_036_4bbd

jr_036_4bbd:
    stop
    or b
    ei
    rst $30
    rst $38
    rst $38
    ld e, a
    cp c
    ld l, a
    sbc l
    rlca
    rst $38
    rla
    rst $28
    dec sp
    call nz, $fb07
    ld de, $12ee
    rst $28
    dec b
    ei
    add hl, bc
    cp $2c
    rst $30
    inc h
    rst $38
    ld a, [bc]
    db $fd
    jr nz, @+$01

    inc d
    rst $38
    sub h
    rst $38
    ld d, c
    rst $38
    nop
    rst $38
    adc a
    rst $38
    ld hl, sp-$21
    inc d
    rst $38
    ld [$7fff], sp
    add c
    ld a, a
    add c
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
    ld a, a
    add e
    ccf
    jp $f30f


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
    nop
    rrca
    nop
    rrca
    ldh a, [rIF]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    inc e
    di
    rra
    db $fc
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
    ei
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
    ld hl, sp-$19
    db $fc
    di
    cp $f9
    rst $38
    cp $e0
    ccf
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    nop
    rlca
    nop
    rlca
    ld [$080f], sp
    cpl
    dec bc
    rrca
    ld a, [bc]
    xor a
    ld c, $4f
    ld c, $af
    inc c
    rra
    inc b
    cpl
    inc b
    rrca
    inc b
    cpl
    ld [$045f], sp
    xor a
    ld [$044f], sp
    rra
    ld [$0c0f], sp
    cpl
    inc c
    rrca
    inc b
    dec bc
    rra
    nop
    rra
    ld b, b
    dec de
    inc h
    ld c, l
    ld [hl], d
    ld c, $31
    rlca
    jr c, jr_036_4cc2

    inc e
    nop
    rst $38

jr_036_4cc2:
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
    ldh a, [$cf]
    cp $f1
    rst $38
    cp $ff
    rst $38
    rst $38
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
    nop
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
    ldh [$9f], a
    ld hl, sp-$19
    db $fc
    di
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38

Call_036_4cff:
    rst $38
    rst $38
    ld a, a
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    add h
    rst $38
    ret nz

    rra
    ldh [rIF], a
    ldh a, [rIF]
    ld hl, sp+$07
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
    add b
    ld a, a
    add b
    ld a, a
    ldh [$3f], a
    ldh [$1f], a
    ld a, [c]
    rrca
    ld [hl], d
    adc a
    cp $ff

jr_036_4d32:
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    add b
    ld a, [hl]
    ldh [$9e], a
    ld hl, sp-$1a
    rst $38
    ld hl, sp-$01
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
    rrca
    rst $38
    inc bc
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
    cp $80
    ld a, [hl]
    ret nz

    ld a, $f0
    adc [hl]
    jr c, jr_036_4d32

    inc c
    ldh a, [rTAC]
    ld hl, sp+$03
    rst $38
    rlca
    rst $38
    add e
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add a
    ld a, a
    add a
    ld a, a
    rst $10
    ld a, a
    rst $08
    ld [hl], a
    rst $18
    inc hl
    ld c, b
    or a
    ld h, l
    sbc a
    rst $00
    ccf
    dec bc
    rst $38
    ld b, a
    rst $38
    ld h, a
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld l, e
    rst $38
    ld l, a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $fb
    db $fc
    rst $38
    di
    ei
    rst $30
    db $fd
    and $ff
    ret z

    cp $91
    ld a, a
    and c
    ccf
    jp $cf77


    rst $08
    rst $38
    rst $18
    rst $38
    ld e, a
    rst $38
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
    rst $38
    rst $38
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
    add b
    db $fc
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ldh [$1f], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ldh a, [rIE]
    rst $38
    nop
    ccf
    rst $38
    rst $38
    rst $38
    dec c
    di
    cp $01
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    inc bc
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
    ld b, $07
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
    dec c
    ld c, $0f
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
    ld d, $17
    jr jr_036_4ee8

    ld a, [de]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_4f00

    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_036_4ee8:
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_036_4f18

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_4f28

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_4f38

    ld a, [hl-]

jr_036_4f00:
    dec sp
    inc a
    dec a
    ld a, $3f
    dec sp
    dec sp
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
    ld c, e
    ld c, [hl]
    ld c, a

jr_036_4f18:
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld d, h
    ld d, l
    ld d, [hl]
    ld d, a
    nop
    ld e, b
    ld e, c
    dec sp
    dec sp
    ld e, d
    nop
    ld e, e

jr_036_4f28:
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
    nop
    ld e, e

jr_036_4f38:
    ld l, c
    ld l, d
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    nop
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld e, e
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
    nop
    sub l
    sub [hl]
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sbc l
    ld [hl], e
    ld [hl], e
    ld [hl], e
    sbc [hl]
    dec sp
    dec sp
    sbc a
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
    nop
    nop
    cp d
    cp e
    cp h
    cp l
    cp [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp a
    ret nz

    pop bc
    jp nz, RST_00

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jp Jump_036_73c4


    nop
    nop
    nop
    nop
    nop
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
    add $00
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
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
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
    inc bc
    inc bc
    inc bc
    inc b
    inc bc
    rlca
    ld [bc], a
    ld [bc], a
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
    rlca
    rlca
    rlca
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
    inc bc
    inc bc
    inc bc
    rlca
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
    inc bc
    inc bc
    rlca
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
    inc bc
    inc bc
    rlca
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
    inc bc
    inc bc
    rlca
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
    inc bc
    inc bc
    rlca
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
    inc bc
    inc bc
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
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
    nop
    nop
    nop
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
    inc bc

Call_036_50ff:
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
    inc bc
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld sp, hl
    ccf
    rst $00
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
    db $fc
    rlca
    ei
    rra
    rst $20
    ld a, a
    sbc a
    rst $38
    ld a, a
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
    ld bc, $04ff
    rst $38
    ld [$22ff], sp
    rst $38
    db $10
    rst $28
    add hl, de
    and $01
    cp $03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$3f
    rst $00
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
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    nop

jr_036_5197:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ei
    rra
    rst $20
    ld a, a
    sbc a
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
    ld [bc], a
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    dec l
    rst $30
    sub c
    rst $28
    ld [hl-], a
    rst $08
    jr nc, jr_036_5197

    ld h, b
    sbc a
    ld a, b
    add a
    ld a, c
    add a
    ld a, [$b007]
    ld c, a
    ld [c], a
    rra
    pop hl
    rra
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
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$1f
    rst $20
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
    cp $ff
    ld hl, sp-$01
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
    inc bc
    db $fc
    rlca
    ei
    rra
    rst $20
    ccf
    rst $18
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
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    ld [$0bf7], sp
    or $03
    db $fc
    inc bc
    db $fc
    rlca
    db $fc
    inc bc
    db $fc
    nop
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld e, b
    rst $28
    db $10
    rst $28
    db $10
    rst $28
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
    inc bc
    db $fc
    rra
    db $e3
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
    cp $ff
    ld hl, sp-$01
    ldh [rIE], a
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
    ld bc, $07fe
    ld sp, hl
    rra
    rst $20
    ccf
    rst $18
    rst $38
    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld [$20ff], sp
    rst $38
    ld [$4aff], sp
    cp a
    ldh [$3f], a
    ret nz

    ccf
    add sp, $1f
    add sp, $1f
    ret z

    ccf
    ret nz

    ccf
    adc c
    ld a, [hl]
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
    ld bc, $03fe
    db $fc
    ld b, b
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    db $fc
    rra
    db $e3
    ld a, a
    sbc a
    rst $38

jr_036_52d3:
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    ldh [rIE], a
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

jr_036_52ed:
    ld sp, hl
    rra
    rst $20
    ccf
    rst $18
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
    rst $28
    dec de
    rst $28
    jr nc, jr_036_52d3

    ld sp, hl
    ld b, [hl]
    ld a, $c7
    ld [hl], h
    adc a
    ld [hl], b
    adc a
    jr nz, jr_036_52ed

jr_036_530e:
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38

jr_036_531f:
    rst $38
    ld bc, $02fe
    db $fd
    inc b
    ei
    jr z, jr_036_531f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_036_530e

    add b
    ld a, h
    nop
    db $fd
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    add b
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    pop af
    ld a, a
    adc a
    rst $38
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld sp, hl
    rrca
    rst $30
    ccf
    rst $08
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    jr nc, @+$01

    add hl, bc
    cp $78
    rst $08
    or h
    ld c, a
    ld hl, sp+$4f
    ld [hl], b

jr_036_537b:
    adc a
    ld h, [hl]
    sbc l
    ld [hl], d
    sbc l
    rst $38
    db $fd
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
    ld [de], a
    db $ed
    nop
    rst $38
    inc b
    ei
    nop
    rst $38
    inc b
    rst $38
    jr nz, jr_036_537b

    ld h, b
    sbc [hl]
    add b
    ld a, h
    rst $38
    ld [bc], a
    rst $38
    rrca
    ld hl, sp+$17
    db $f4
    dec de
    ld sp, hl
    ld a, $fe
    ld a, l
    ld hl, sp-$09
    and h
    ld e, e
    add sp, -$29
    add b
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    and b
    rst $38
    jr nz, @+$01

    ret nz

    rst $38
    ld h, c
    cp $f0
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    di
    cp $f1
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$02
    ld sp, hl
    db $fc
    ei
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc c
    ldh a, [$7c]
    adc h
    db $fc
    ld a, h
    db $fc
    db $fc
    db $fc
    db $fc
    rst $30
    rst $38
    rst $00
    ld hl, sp+$07
    rst $38
    rlca
    cp $07
    db $fc
    rlca
    db $fc
    rlca
    cp $0f
    rst $30
    ccf
    adc $ff
    ccf
    ld bc, $01fe
    cp $03
    db $fc
    nop
    rst $38

jr_036_5468:
    inc bc
    db $fc
    inc bc
    db $fc
    ldh [$3f], a
    add b
    ld a, h
    ret nc

    inc l
    and b
    ld a, h
    ret nz

    ld a, h
    nop
    db $fc
    nop
    db $fc
    add b
    ld a, h
    add b
    ld a, h
    db $10
    db $ec
    nop
    cp $00
    cp $00
    cp $90
    ld l, [hl]
    jr nz, jr_036_5468

    nop
    db $fc
    nop
    ld hl, sp+$00
    ld hl, sp-$01
    rrca
    rst $38
    rra
    rst $38
    ccf
    ld hl, sp+$7f
    ld sp, hl
    or $82
    db $fd
    push de
    ld a, [hl+]
    ld bc, $34fe
    db $db
    nop
    rst $38
    ld d, h
    xor e
    adc c
    db $76
    ld b, h
    cp e
    ld d, b
    xor a
    add hl, bc
    or $a4
    ld e, e
    ld [bc], a
    db $fd
    ld [hl+], a
    db $dd
    ld bc, $10fe
    rst $28
    ld b, l
    cp e
    dec [hl]
    jp z, Jump_036_7f82

    ld d, d
    xor l
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh [$1f], a
    ldh [$1f], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_036_5511:
    nop
    nop
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
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    push af
    rst $38
    ld e, a
    rst $38
    ld b, $ff
    ld a, b
    rst $38
    ret


    rst $38
    ld e, e
    rst $38
    ld l, e
    rst $38
    cp e
    jr nc, jr_036_5511

    ld [hl], b
    adc a
    or $09
    ld h, $d9
    ei
    inc b
    cp a
    ld b, b
    nop
    rst $38
    nop
    nop
    db $fd
    rst $38
    db $fd
    rst $38
    db $f4
    rst $38
    db $e4
    rst $18
    ret nz

    ld a, a
    sub c
    rst $28
    ld [$92f7], sp
    ld l, a
    add b
    rst $38
    call nz, $80bf
    rst $38
    sub b
    ld a, a
    jr nz, @+$01

    sub a
    xor $80
    rst $38
    inc c
    di
    jp nz, $90fd

jr_036_5573:
    rst $28
    inc b
    ei
    ld c, b
    or a
    ld d, d
    xor l
    xor b
    ld d, a
    add hl, hl
    rst $10
    ld d, d
    xor a
    ld a, [bc]
    push af
    db $e4
    ld a, a
    and h
    ld e, a
    add hl, bc
    or $d8
    cpl
    ld d, l
    cp d
    ld de, $aafe
    ld [hl], l
    ld l, d
    or l
    ld d, c
    xor $91
    xor $88
    ld d, l
    ld [de], a
    xor c
    jr z, jr_036_5573

    adc b
    scf
    and c
    ld e, [hl]
    rra
    rst $38
    rra

jr_036_55a3:
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

Jump_036_55ae:
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr jr_036_55a3

    ld e, $e1
    rra
    ldh [$e0], a
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [$ef]
    ld hl, sp-$19
    db $fc
    db $e3
    db $fc
    db $e3
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    cp $e1
    db $fc
    db $e3
    db $fc
    db $e3
    ld hl, sp-$19
    ldh a, [$ef]
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    db $e3
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    adc a
    rst $38
    rrca
    ld hl, sp+$0f
    db $fd
    rrca
    ld sp, hl
    rra
    push af
    ld a, a
    rst $30
    rst $38
    rst $30
    rst $38
    or $0c
    di
    inc c
    di
    rrca
    ldh a, [rP1]
    rst $38
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ld a, [c]
    nop
    ldh a, [$f0]
    rrca
    db $f4
    dec bc
    ldh a, [rIF]
    ld sp, hl
    rrca
    rst $38
    rra
    cp $3f
    db $fd
    ld a, a
    adc h
    rst $38
    push de

jr_036_5641:
    rst $38
    sub a
    rst $38
    dec e
    rst $38
    ld b, e
    rst $38
    rlca
    rst $38
    nop
    rst $38
    ld a, e
    rst $38
    ld bc, $91ff
    rst $38
    ld [de], a
    rst $38
    rrca
    rst $38
    call nz, Call_000_08ff
    rst $38
    ld a, d
    cp a
    ld sp, $10ff
    rst $38
    jr nz, jr_036_5641

    jr nz, @+$01

    ld b, b
    rst $38
    adc h
    di
    sub b
    ld l, a
    ld a, [bc]
    push af
    ld c, b
    or a
    sub c
    ld l, [hl]
    ld a, [bc]
    push af
    call z, $0473
    ei
    ld b, b
    xor c
    xor e
    ld d, h
    inc d
    db $eb
    inc d
    add sp, -$58
    ld b, d
    ld b, b
    cp h
    ld [$02b0], sp
    and l
    ld [hl], c
    ld a, [bc]
    nop
    call c, $ae00
    nop
    ld e, h
    ret nc

    inc c
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
    add b
    ld a, a
    ccf
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
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
    rra
    rst $38
    ccf
    rst $38
    ld a, a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cpl
    rst $38
    ld a, $ff
    jr nz, @+$01

    add l
    rst $38
    scf
    rst $38
    sub d
    rst $38
    ld d, [hl]
    ei
    inc b
    add b
    ld a, a
    rst $38
    nop
    nop
    rst $38
    nop
    nop
    nop
    ld bc, $2400
    nop
    ld d, b
    dec e
    call c, Call_036_6b97
    ld [bc], a
    db $fd
    nop
    rst $38
    add h
    rst $38
    call z, Call_036_4cff
    rst $38
    ld a, [$b0ff]
    rst $38
    ld a, $ff
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld a, [hl]
    rst $38
    add c
    rst $38
    rst $18
    rst $38
    ccf
    rst $38
    ld a, l
    rst $38
    or $ff

jr_036_5714:
    di
    rst $38
    ld [bc], a
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld a, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add d
    db $fd
    inc b
    ei
    ld bc, $42fe
    cp l
    jr jr_036_5714

    inc h
    reti


    add b
    ld a, [hl]
    jr z, jr_036_5788

    ld a, [hl-]
    push de
    nop
    ld a, a
    ld b, h
    cp b
    ld a, [hl+]
    ret nz

    adc h
    inc hl
    ld bc, $0000
    nop
    nop
    nop
    nop
    add b
    nop
    inc c
    ld [bc], a
    dec b
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
    db $fc
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ret nz

    rst $38
    add b
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
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    inc bc
    db $fc
    ld bc, $00fe
    rst $38

jr_036_5788:
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
    adc a
    rst $38
    db $fd
    rst $38
    ld d, e
    rst $38

jr_036_57a9:
    sub l
    rst $38
    rrca
    rst $38
    xor c
    rst $38
    jp z, $03fc

    ld b, b
    cp a
    ld a, a
    add b
    nop
    rst $38
    nop
    nop
    nop
    inc b
    nop
    add b
    nop
    or b
    rst $38
    rst $38
    rst $38
    rst $38
    xor a
    ld e, a
    db $10
    jp hl


    jr nz, jr_036_57a9

    ld [$88f7], sp
    rst $38
    nop
    rst $38
    ld b, d
    rst $38
    ld sp, hl
    rst $38
    db $fc
    rst $38
    cp $ff
    rst $18
    rst $38
    rst $18
    rst $38
    or a
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    dec a
    rst $38
    rrca
    rst $38
    add hl, de
    rst $38
    ld bc, $f7ff
    cp $05
    rst $38
    add c
    rst $38
    ld h, c
    cp a
    add d
    ld a, l
    ld b, d
    cp a
    ld h, $db
    ld [de], a
    xor $0a
    sub d
    ld b, $49
    ld [bc], a
    sub l
    inc b
    ld d, d
    ld d, h
    xor d
    dec h
    ld e, [hl]
    inc b
    jr nc, @+$06

    nop
    inc b
    ld [$020c], sp
    ld [$0804], sp
    nop
    ld [$0800], sp
    nop
    ld [$0850], sp
    add b
    db $10
    rrca
    db $10
    rrca
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
    inc bc
    db $fc
    rrca
    ldh a, [$3f]
    ret nz

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$1f
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
    ld a, a
    add b
    rra
    ldh [rIF], a
    ldh a, [$03]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    ld h, l
    rst $38
    ld b, l
    rst $38
    ld d, a
    rst $38
    ld c, a
    rst $38
    ld e, e
    cp [hl]
    ld b, c
    inc e
    db $e3
    call Call_000_0032
    rst $38
    nop
    nop
    nop
    ld d, [hl]
    nop
    nop
    nop
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rra
    cpl
    ld c, a
    dec hl
    rst $10
    ld c, b
    di
    ld [de], a
    db $ed
    ld b, b
    rst $38
    ret nz

    cp a
    ld c, [hl]
    db $fd
    db $f4
    rst $38
    ld a, [hl]
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
    ei
    rst $38
    db $fc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $7bff
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld b, [hl]
    cp c
    sbc d
    ld h, l
    ld [bc], a
    db $fd
    ld b, h
    sbc c
    and b
    inc e
    jp z, $0121

    ret c

    dec b
    nop
    ld c, l
    or d
    nop
    nop
    nop
    nop
    nop
    ld bc, $0004
    nop
    nop
    nop
    ld b, b
    nop
    inc c
    nop
    nop
    nop
    ld a, a
    nop
    ld a, a
    nop
    db $e3
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    nop
    rst $38
    nop
    rst $38
    ld b, $f9
    ld a, a
    add b
    cp $00
    cp $00
    cp $00
    inc bc
    db $fc
    inc bc
    db $fc
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
    db $fd
    ld [bc], a
    db $fc
    inc bc
    ld a, [c]
    inc bc
    ld a, [c]
    inc bc
    ld a, [c]
    inc bc
    db $fc
    inc bc
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    dec a
    jp nz, $fe01

    ld bc, $01fe
    cp $00
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    di
    rst $38
    rst $38
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
    cp $fd
    rst $38
    cp $03
    rst $38
    ld bc, $01ff
    rst $38
    ld hl, sp-$01
    db $fc
    ei
    cp $f9
    cp $05
    rst $38
    and h
    rst $38
    ld h, $ff
    ld h, $ff
    ld c, a
    adc b
    ld [hl], a
    cp b
    ld b, a
    ldh a, [rIF]
    ld bc, $00fe
    rlca
    nop
    and a
    nop
    rlca
    nop
    rla
    ld bc, $0102
    ld [bc], a
    nop
    inc bc
    nop
    inc bc
    ld bc, $0002
    ld bc, $2100
    nop
    sub c
    ccf
    cp $1f
    rst $38
    rra
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $08
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    rst $10
    ei
    inc bc
    rst $38
    inc bc
    rst $38
    inc hl
    rst $18
    ld b, e
    cp a
    add e
    ld a, e
    and a
    ld e, e
    ld b, d
    dec hl
    nop
    db $ed
    ld b, b
    cp a
    or b
    ld c, a
    nop
    ld a, a
    jr nc, jr_036_5a2d

    ld e, b
    daa
    nop
    rlca
    nop
    ld e, e
    nop
    ld l, [hl]
    nop
    ld a, l
    nop
    rrca
    nop
    ccf
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    adc h
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$0c]
    ldh a, [$f3]
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    di
    db $fc
    ld [hl], e
    db $fc
    ld [hl], e
    db $fc
    ld [hl], e
    db $fc
    ld [hl], e
    db $fc
    ld [hl], e
    db $fc
    or c
    ld a, [hl]
    cp c
    ld a, [hl]
    cp c
    ld a, [hl]
    cp c
    ld a, [hl]
    cp c

jr_036_5a2d:
    ld a, [hl]
    cp c
    ld a, [hl]
    cp c
    ld a, [hl]
    cp b
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, a
    cp b
    ld a, a
    cp h
    ld a, a
    cp h
    ld a, a
    cp h
    ld a, a
    cp h
    ld a, a
    cp h
    ld a, a
    inc a
    rst $38
    ld a, h
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
    add b
    ld a, a
    ret nz

    cp a
    ret nz

    rst $38
    ldh [$df], a
    ldh a, [$ef]
    ld a, b
    rst $30
    inc a
    ei
    ld a, $fd
    rra
    cp $8f
    ld a, [hl]
    adc a
    ld a, a
    add a
    ld a, a
    rst $00
    cp a
    db $e3
    sbc a
    pop hl
    rst $18
    pop hl
    ld e, a
    ldh a, [$6f]
    ldh a, [$6f]
    ld hl, sp+$37
    ld hl, sp-$09
    db $fc
    db $d3
    db $fc
    db $db
    cp $f9
    cp $fd
    rst $38
    db $ec
    rst $38
    ld l, [hl]
    rst $38
    cp $80
    ld a, a
    inc c
    di
    inc c
    di
    ld b, b
    cp a
    inc b
    ld a, e
    inc b
    ld a, e
    inc de
    ld l, h
    inc bc
    ld a, h
    ld bc, $007e
    ccf
    ld bc, $013e
    ld a, $00
    ccf
    nop
    ccf
    nop
    ccf
    nop
    rra
    nop
    ld e, a
    nop
    rra
    nop

jr_036_5ac5:
    rra
    nop
    adc a
    inc b
    dec bc
    nop
    rrca
    nop
    daa
    nop
    rlca
    nop
    rlca
    inc b
    rlca
    ld bc, $0006
    inc bc
    ld bc, $008e
    inc bc
    nop
    inc bc
    nop
    inc bc
    rst $38
    ld a, [hl]
    ld a, a
    cp $3f
    cp $3f
    cp $3f
    cp $ff
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
    ld a, [hl]
    add c
    ld a, h
    add e
    jr c, jr_036_5ac5

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
    ret nz

    rst $38
    ldh [rIE], a
    pop af
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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

    cp a
    ldh [$df], a
    ldh a, [$ef]
    ld hl, sp-$09
    db $fc
    di
    cp $f9
    ld a, [hl]
    db $fd
    ld a, a
    cp $3f
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    add e
    ld a, a
    add c
    ld a, a
    pop bc
    ccf
    ret nz

    cp a
    ldh [$9f], a
    ldh [$df], a
    ldh a, [$cf]
    ldh a, [$ef]
    ld hl, sp-$19
    ld hl, sp-$19
    db $fc
    di
    db $fc
    di
    cp $f9
    cp $f9
    rst $38
    cp h
    rst $38
    cp h
    rst $38
    sbc h
    ld hl, $40de
    cp a
    ld b, b

jr_036_5b65:
    cp a
    ld b, b
    cp a
    nop
    rst $38
    nop

jr_036_5b6b:
    rst $38
    jr jr_036_5b65

    inc c
    di
    inc c
    di
    ld c, $f3
    rrca
    ldh a, [$0d]
    di
    ld b, $f9
    inc b
    ei
    dec b
    ei
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $60ff
    sbc a
    jr nz, jr_036_5b6b

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
    db $fc
    inc bc
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$07
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
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $03ff
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
    add b
    ld a, a
    ret nz

    cp a
    ldh [$df], a
    ldh a, [$cf]
    ld hl, sp-$19
    ld hl, sp-$09
    db $fc
    ei
    cp $fd
    rst $38
    cp $ff
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
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$9f], a
    ldh [$1f], a
    ldh a, [$cf]
    ldh a, [$cf]
    ld hl, sp-$19
    ld hl, sp-$19
    db $fc
    db $e3
    db $fc
    di
    cp $f1
    cp $f9
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    ld b, c
    cp $01
    cp $00
    rst $38
    ret nz

    cp a
    ld h, b
    sbc a
    ld h, b
    sbc a
    ld [hl], b
    sbc a
    jr nz, @-$1f

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
    rst $38
    rst $38
    rst $38
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$9f], a
    ldh [$df], a
    ldh a, [$ef]
    ld hl, sp-$09
    db $fc
    ei
    cp $f9
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
    ld a, a
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
    rlca
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    ccf
    ldh [$1f], a
    ldh [$9f], a
    ldh a, [$8f]
    ldh a, [$cf]
    ld hl, sp-$39
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    cp a
    ldh [$df], a
    ldh a, [$ef]
    ld hl, sp-$19
    db $fc
    di
    cp $f9
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
    ld a, a
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
    rlca
    rst $38
    rlca
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
    add b
    ld a, a
    ret nz

    cp a
    ldh [$9f], a
    ldh a, [$cf]
    ld hl, sp-$19
    db $fc
    di
    db $fc
    ei
    cp $fd
    rst $38
    db $fc
    rst $38
    cp $ff
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
    add b
    ld a, a
    ret nz

    ccf
    ldh [$9f], a
    ldh a, [$cf]
    ld hl, sp-$19
    ld hl, sp-$09
    db $fc
    di
    cp $f9
    rst $38
    db $fc
    rst $38
    cp $ff
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
    nop
    nop
    nop
    nop
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
    nop
    ld a, [bc]
    dec bc
    inc c
    dec c
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0f
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    nop
    nop
    nop
    nop
    nop
    nop
    jr jr_036_5df7

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_5e07

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    daa
    jr z, jr_036_5e18

    ld a, [hl+]
    dec hl
    dec hl
    inc l
    dec l
    ld l, $00
    cpl

jr_036_5df7:
    jr nc, jr_036_5e2a

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_5e2c

    dec hl
    add hl, sp
    dec l
    ld a, [hl-]
    nop
    dec sp

jr_036_5e07:
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    dec hl
    dec hl
    ld b, d
    dec l
    ld b, e
    ld b, h
    ld b, l
    ld b, [hl]

jr_036_5e18:
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld b, c
    ld b, c
    ld b, c
    ld c, h
    ld c, l
    dec l
    ld c, [hl]
    nop
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e

jr_036_5e2a:
    ld d, h
    ld d, l

jr_036_5e2c:
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld e, h
    ld e, l
    nop
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
    nop
    nop
    nop
    nop
    nop
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
    add h
    add l
    dec hl
    add [hl]
    add a
    dec l
    dec l
    dec l
    adc b
    adc c
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    dec hl
    sub b
    sub c
    sub d
    sub e
    sub h
    sub l
    sub [hl]
    nop
    nop
    sub a
    sbc b
    sbc c
    sbc d
    sbc e
    sbc h
    sub e
    sbc l
    sbc [hl]
    sbc a
    nop
    nop
    nop
    nop
    nop
    nop
    and b
    and c
    and d
    and e
    and h
    and l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    and [hl]
    and a
    xor b
    ld b, c
    ld b, c
    xor c
    xor d
    xor e
    nop
    nop
    nop
    nop
    nop
    ld e, d
    xor h
    xor l
    xor [hl]
    xor a
    or b
    or c
    ld b, c
    ld b, c
    or d
    or e
    nop
    nop
    nop
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

    nop
    nop
    nop
    nop
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
    inc bc
    inc bc
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
    inc bc
    inc bc
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
    inc bc
    inc bc
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
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld bc, $0003
    nop
    nop
    inc bc
    inc bc
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
    dec b
    dec b
    dec b
    dec b
    dec b
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc bc
    inc b
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
    inc bc
    inc bc
    inc b
    rlca
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
    inc bc
    inc bc
    inc b
    rlca
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
    inc bc
    inc bc
    inc b
    rlca
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
    inc bc
    inc bc
    inc b
    rlca
    rlca
    rlca
    rlca
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    nop
    inc bc
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    rlca
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
    inc bc
    inc bc
    inc bc
    rlca
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
    inc bc
    inc bc
    inc b
    rlca
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
    inc bc
    dec b
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
    dec b
    dec b
    dec b
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
    ld b, e
    inc bc
    inc bc
    dec b
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
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $3ffe
    ret nz

    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
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
    rra
    ldh [rIE], a
    nop
    db $fc
    inc bc
    add h
    ld a, a
    nop
    rst $38
    inc e
    rst $20
    dec e
    rst $20
    ld [bc], a
    rst $38
    ld a, [de]
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    rst $38
    rlca
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
    rlca
    ld hl, sp-$01
    nop
    rst $38
    nop
    ldh [$1f], a
    nop
    rst $38
    ld e, $e1
    ld e, $e1
    ld a, h
    add e
    pop af
    cpl
    ld b, b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld a, a
    add b
    rst $38
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop
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
    rst $38
    ld b, $f9
    inc b
    ei
    add c
    rst $38
    add l
    rst $38
    inc d
    rst $38
    ld a, [hl+]
    rst $38
    inc c
    rst $38
    dec b
    rst $38
    rrca
    ldh a, [rIE]
    nop
    rst $38
    rlca
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
    ld bc, $3ffe
    ret nz

    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld a, a
    rst $38

jr_036_60bd:
    ld sp, hl
    rst $38
    ldh a, [$3f]
    ret nz

    xor [hl]
    db $d3
    jr z, jr_036_60bd

    jr nz, @+$01

    or b
    rst $38
    ld d, b
    rst $38
    ld e, e
    db $fc
    rrca
    ld hl, sp-$02
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld bc, $3fff
    rst $38
    rst $38
    cp $ff
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    rst $38
    ld bc, $1fff
    rst $38
    db $fd
    rst $38
    db $fc
    rst $38
    ld a, a
    rst $38
    rst $38
    db $10
    rst $38
    adc d
    rst $38
    adc c
    rst $38
    dec b
    rst $38
    ld [bc], a
    db $fd
    ccf
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $20
    ld a, h
    db $ec
    ld a, a
    db $fd
    ld a, [hl]
    ld a, l
    cp [hl]
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    cp [hl]
    ld a, [hl]
    cp [hl]
    ld a, l
    cp [hl]
    db $fd
    cp [hl]
    or l
    sbc $bc
    db $db
    cp a
    ret c

    cp a
    ret c

    rst $38
    ret c

    rst $38
    ret c

    db $db
    db $ec
    rst $18
    db $ec
    rst $18
    db $ec
    rst $18
    db $ec
    rst $38
    db $ec
    rst $38
    db $ec
    db $ed
    or $ed
    or $ef
    or $ff
    or $ff
    or $ff
    or $f6
    ei
    rst $30
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ei
    rst $38
    ld sp, hl
    ei
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    db $fd
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
    nop
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
    ld hl, sp-$01
    nop
    rst $38
    rlca
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
    ld bc, $7ffe
    add b
    rst $38
    nop
    add sp, $1f
    ld [bc], a
    db $fd
    rlca
    ld hl, sp+$1f
    ldh [$3e], a
    pop bc
    inc e
    di
    and b
    rst $38
    and b
    rst $38
    ld d, b
    rst $38
    inc de
    db $fc
    rrca
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rIE], a
    nop
    ld hl, sp+$07
    rst $38
    nop
    rst $18
    nop
    rst $08
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
    inc bc
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
    cp a
    ld b, b
    add a
    ld a, b
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
    ret c

    ccf
    rst $18
    cp a
    rst $18
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
    ld c, a
    cp a
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
    nop
    rrca
    nop
    adc a
    rrca
    add b
    rlca
    add a
    rlca
    add a
    inc b
    add a
    ld b, $87
    ld [bc], a
    jp $c33e


    ld a, $c3
    ccf
    jp $c33f


    rra
    db $e3
    rra
    db $e3
    rra
    db $e3
    rra
    pop hl
    ld bc, $01e1
    pop af
    ld bc, $01f1
    pop af
    ld bc, $01f1
    pop af
    ld bc, $00f9
    ld hl, sp-$08
    rst $38
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
    ld bc, $3fff
    rst $38
    rst $38
    cp $ff
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    nop
    rst $38
    rrca
    ret nz

    rst $38
    nop
    rst $38
    jr nz, @+$01

    jr nz, @+$01

    call nc, Call_036_50ff
    rst $38
    add c
    rst $38
    ld a, [bc]
    rst $38
    ld [bc], a
    rst $38
    ld e, [hl]
    pop hl
    cp $01
    rst $28
    db $10
    rst $38
    nop
    db $fd
    inc bc
    ret z

    ccf
    rlca
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    add b
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
    nop
    rst $38
    rra
    ldh [rIE], a
    rra
    rst $38
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
    rra
    ldh [rIE], a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ret c

    rst $38
    pop af
    inc b
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    add h
    rst $38
    adc a
    ld hl, sp-$20
    sbc a
    cp a
    ret nz

    rst $38
    rst $00
    db $fc
    rst $38
    ret nz

    rst $38
    pop bc
    rst $38
    ret nz

    rst $38
    ret nz

    ld a, a
    add sp, $7f
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, b
    ld a, a
    ld b, h
    ld a, a
    ld h, b
    ld a, a
    ld h, b
    ld a, a
    ld l, l
    ld a, a
    ld h, b
    ld a, a
    jr nz, jr_036_637f

    jr nz, @+$41

    jr nz, jr_036_6383

    jr nz, jr_036_6385

    and b
    ccf
    and b
    ccf
    or b
    ccf
    or b
    ccf
    sub b
    rra
    ret nc

    rra
    ret nc

    rra
    ret nc

    rra
    jr jr_036_6377

    jr c, jr_036_6399

    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    db $fc
    rrca
    db $ec
    rrca
    db $ec
    rrca
    db $ec
    rrca
    inc c
    rrca
    inc c
    rrca
    db $fc
    rst $38
    db $fc
    rst $38
    dec bc
    db $fc
    dec de
    db $fc
    dec de
    db $fc
    dec bc

jr_036_6377:
    db $fc
    adc c
    cp $8d
    ld a, [$fa05]
    ld b, l

jr_036_637f:
    ld a, [$ee51]
    ld [hl], c

jr_036_6383:
    adc $9d

jr_036_6385:
    ld h, d
    ld sp, hl
    ld b, $a1
    ld e, [hl]
    ld c, c
    or $7d
    add d
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

jr_036_6399:
    nop
    rst $38
    nop
    db $fc
    inc bc
    ret nz

    ccf
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
    rra
    ldh [rIE], a
    rra
    rst $38
    rst $38
    ldh [rIE], a
    nop
    rst $38
    nop

jr_036_63bb:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rra
    ldh [rIE], a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    cp $22
    rst $18
    jr nz, jr_036_63bb

    ld a, a
    add b
    ldh a, [rIF]
    ld hl, sp+$07
    inc b
    ei
    add hl, hl
    sub $54
    xor d
    adc d
    ld [hl], h
    ld d, b
    ld h, $00
    call z, Call_000_000a
    nop
    nop
    nop
    ld [$9000], sp
    ld [bc], a
    ld bc, $0034
    adc b
    nop
    nop
    jr c, jr_036_63ff

jr_036_63ff:
    nop
    nop
    ld [hl-], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    db $fc
    inc bc
    ld hl, sp+$07
    ldh a, [rIF]
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
    inc bc
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rra
    rst $38
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
    rra
    ldh [$e0], a
    rra
    nop
    rst $38
    nop
    rst $38
    add d
    ld a, a
    jp nz, $e03f

    ccf
    add b
    ld a, a
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld e, b
    and a
    inc bc
    db $fc
    rst $38
    nop
    ldh [$1f], a
    nop
    ldh a, [rDIV]
    ei
    xor b
    ld d, a
    inc b
    ei
    and c
    inc e
    ld d, c
    xor [hl]
    nop
    ld [$1240], a
    ld c, h
    add e
    add b
    ld b, [hl]
    jr nz, @+$03

    ld h, $19
    ldh [rP1], a
    nop
    jr nz, jr_036_649b

jr_036_649b:
    nop
    db $10
    ret nz

    stop
    nop
    inc de
    nop
    nop
    nop
    adc b
    ld [$0800], sp
    nop
    nop
    nop
    nop
    inc b
    inc b
    nop
    nop
    dec b
    nop
    inc d
    nop
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
    ld bc, $1fe0
    ldh [$1f], a
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
    ld bc, $03ff
    rst $38
    rlca
    rst $38
    rrca
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
    rrca
    ldh a, [rIE]
    rrca
    rst $38
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
    rra
    ldh [rIE], a
    rra
    nop
    rst $38
    nop
    rst $38
    ld b, c
    cp $03
    db $fc
    inc bc
    db $fc
    inc b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld c, c
    cp $24
    rst $18
    ld bc, $fcfe
    inc bc
    nop
    rst $38
    nop
    ldh [rP1], a
    nop
    sbc a
    rst $38
    ccf
    rst $38
    rst $38
    ld a, a
    dec b
    ei
    rra
    rst $28
    daa
    db $db
    ld d, h
    dec hl
    ld hl, $8256
    ld c, c
    ld d, h
    cpl
    xor d
    ld d, h
    ld c, d
    ld sp, $5728
    ld [de], a
    ld hl, $0e00
    ld [$1107], sp
    ld b, h
    nop
    inc bc
    ld bc, $0102
    nop
    add d
    add hl, hl
    nop
    inc de
    nop
    nop
    ld a, [bc]
    dec d
    jp nz, Jump_000_00ea

    inc bc
    ld [bc], a
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
    rlca
    nop
    nop
    ld b, b
    nop
    nop
    nop
    nop
    ld bc, $1800
    jr nz, jr_036_6588

jr_036_6588:
    nop
    jr nz, jr_036_658b

jr_036_658b:
    nop
    nop
    db $10
    stop
    nop
    stop
    ld [$0008], sp
    ld [$0903], sp
    ld [bc], a
    ld [$0405], sp
    dec b
    inc b
    dec bc
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
    rst $38
    rrca
    ldh a, [rIE]
    rrca
    rst $38
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
    rra
    ldh [rIE], a
    rra
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld de, $21fe
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
    ld hl, $0fdf
    ldh a, [$60]
    sbc a
    nop
    rst $38
    nop
    ret nz

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
    ei
    rst $38
    rst $38
    rst $30
    ei
    rst $38
    ld c, a
    or a
    ld a, a
    rst $18
    cpl
    rst $30
    sub a
    ld l, e
    ld d, l
    cp e
    inc de
    db $fd
    adc a
    ld [hl], a
    ld e, d
    cp l
    cp a
    ld a, a
    cpl
    push de
    and l
    ld e, a
    ld d, e
    dec l
    inc bc
    rst $30
    sub e
    daa
    dec bc
    ld d, a
    ld h, c
    sbc a
    ld [hl+], a
    db $dd
    sub e
    ld l, l
    ld b, [hl]
    sub a
    cp a
    ld e, a
    ld a, [bc]
    push de
    sub a
    cpl
    dec bc
    ld [hl], a
    rrca
    or [hl]
    add l
    ld a, e
    inc de
    ld c, a
    ld [de], a
    dec l
    ld [$0417], sp
    dec sp
    nop
    ccf
    nop
    ld e, a
    dec h
    sbc d
    nop

jr_036_666f:
    db $fd
    dec d
    adc e
    and b
    ld e, a
    jr nz, jr_036_66d5

    ld [$1127], sp
    ccf
    inc b
    ld e, e
    ld [bc], a
    ccf
    nop
    rst $18
    ld [$0137], sp
    ld a, [hl]
    nop
    ld l, a
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_036_666f

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rrca
    ldh a, [rIE]
    rrca
    rst $38
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
    rra
    ldh [rIE], a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, c
    cp a
    pop de
    ccf
    add c
    ld a, a
    ld b, c
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $11ff
    xor $01
    rst $38
    ld bc, $00fe
    rst $38
    nop
    cp $00
    add b
    nop
    nop
    ld [bc], a
    ld bc, $0003
    ld bc, $0002
    inc bc
    nop

jr_036_66d5:
    ld bc, $0001
    ld bc, $0100
    nop
    ld bc, $0508
    and b
    rlca
    ld [$0502], sp
    inc bc
    inc b
    ld bc, $0106
    ld b, $00
    rlca
    nop
    rlca
    nop
    add a
    nop
    ld b, a
    ld bc, $012f
    rlca
    nop
    rrca
    nop
    ld e, a
    db $10
    cpl
    db $10
    rrca
    jr @+$49

    jr @+$09

    inc c
    inc de
    inc c
    inc de
    ld b, $49
    ld b, $09
    inc bc
    inc b
    inc bc
    inc b
    ld bc, $0182
    ld [de], a
    ld bc, $0002
    ld hl, $0100
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    add b
    ccf
    rst $38
    sbc a
    rst $38
    ld l, a
    rst $38
    ld c, a
    rst $38
    add hl, bc
    rst $38
    rla
    rst $38
    inc [hl]
    rst $38
    nop
    rst $38
    ld b, $ff
    ld b, h
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    dec c
    rst $38
    dec bc
    rst $38
    ld bc, $17ff
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    cp $00
    cp $02
    db $fc
    rlca
    cp $03
    rst $38
    ld bc, $00ff
    cp $00
    cp $00
    cp $04
    cp $06
    cp $0e
    cp $0e
    cp $0c
    db $fc
    inc c
    db $fc
    inc c
    db $fc
    inc e
    db $fc

jr_036_677a:
    inc e
    db $fc

jr_036_677c:
    inc e
    db $fc

jr_036_677e:
    inc e
    db $fc

jr_036_6780:
    jr jr_036_677a

    jr jr_036_677c

    jr jr_036_677e

    jr c, jr_036_6780

    ccf
    ld hl, sp+$3f
    ld hl, sp+$3f
    ld hl, sp+$3f
    ldh a, [$30]
    ldh a, [$30]
    ldh a, [rSVBK]
    ldh a, [rSVBK]
    ldh a, [$f0]
    ld [hl], b
    ldh a, [$f0]
    ldh [$e0], a
    ld h, b
    ldh [$60], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$c0], a
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

jr_036_67b7:
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

jr_036_67c5:
    add b
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

    ld b, b
    ret nz

    ld b, b
    ldh [$a0], a
    ldh a, [$90]
    ld [hl], b
    ld d, b
    ld a, b
    ld c, b
    jr c, jr_036_6808

    inc a
    inc [hl]
    inc e
    inc d
    ld e, $1a
    adc a
    adc c
    adc a
    dec c
    rst $00
    ld b, h
    rst $00
    ld b, $e3
    and d
    ld h, b
    add e
    jr nz, jr_036_67c5

    jr nc, jr_036_67b7

    db $10
    add sp, $18
    ldh [$08], a
    db $f4
    adc h
    ldh a, [rDIV]

jr_036_67ff:
    ld a, [$f827]
    ld [de], a
    db $ed
    ld [hl+], a
    db $fd
    jr z, jr_036_67ff

jr_036_6808:
    ld [$02f7], sp
    db $fd
    nop
    rst $38
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
    ld h, b
    sbc a
    ld h, b
    sbc a
    inc hl
    ld e, h
    inc a
    ld b, e
    rst $38
    ret nz

    rst $38
    rst $20
    rst $38
    rst $38
    cp a
    rst $38
    adc a
    rst $38
    cp $ff
    cp $ff
    ld e, [hl]
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    daa
    rst $38
    inc a
    rst $38
    ld sp, hl
    rst $38
    jr nc, @+$01

    ld hl, sp-$01
    ret z

    rst $38
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
    cp $01
    db $fc
    inc bc
    db $fc
    inc bc
    ldh a, [rIF]
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
    add b
    sbc a
    add a
    cp b
    rst $38
    ld b, a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    ldh a, [rIE]
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    ld a, a
    sbc a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    call $8fff
    rst $38
    rra
    rst $38
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    ld bc, $3efe
    pop bc
    ret nz

    ccf
    nop
    ld hl, sp-$01
    ld a, a
    rst $38
    rst $38
    cp $ff
    cp $ff
    cp $ff
    or c
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ld a, [c]
    rst $38
    pop af
    rst $38
    add c
    rst $38
    add d
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, a
    rst $38
    ld e, [hl]
    rst $38
    cp $01
    cp $01
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
    rra
    ldh [rIE], a
    rra
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
    ld bc, $1ffe
    rst $20
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
    ld a, a
    ld d, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$02ff], sp
    cp $00
    cp $1c
    db $e3
    ldh [$1f], a
    nop
    ldh a, [rP1]
    and b
    nop
    nop
    ret nc

    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    db $e4
    rst $38
    db $ec
    rst $38
    jp nz, $e2ff

    rst $38
    reti


    rst $38
    di
    cp $cd
    rst $38
    db $f4
    rst $38
    ldh [rIE], a
    ret nz

    rst $38
    ret nz

    rst $38
    nop
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
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    db $fc
    rst $38
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38

Jump_036_6a10:
    db $fc
    jp $03fc


    ld hl, sp+$07
    ld hl, sp+$07
    ldh a, [rIF]
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
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
    ld b, b
    nop
    add b
    nop
    and b
    nop
    or b
    nop
    add sp, $00
    db $ec
    nop
    push af
    add b
    rst $38
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
    ld e, $ff
    dec c
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    cpl
    cp $3e
    db $dd
    ret nc

    rst $28
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    inc bc
    db $fd
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
    ldh [$1f], a
    ret nz

    ccf
    ret nz

    ccf
    and d
    ld a, a
    sub b
    ld a, a
    ld [$05ff], sp
    ld a, a
    jp nz, $c0ff

    rst $38
    add b
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
    inc b
    nop
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld c, b
    db $10
    and c
    ld b, b
    sbc l
    db $10
    db $eb
    inc b
    ei
    inc d
    db $eb
    ld bc, $08fe
    rst $30
    ld [bc], a
    db $fd
    add b
    rst $38
    inc bc
    cp $b8
    rst $28
    ret nc

    rst $28
    nop
    rst $38
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
    nop
    rst $38
    ld c, $f9
    rrca
    db $fc
    rra
    cp $1f
    rst $38
    ccf
    rst $30
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    ei
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
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    ccf
    ei
    rra
    nop
    rrca
    nop
    rlca
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
    ld [bc], a
    ld [$4010], sp
    nop
    ld bc, $0200
    nop
    ld bc, $8000
    nop
    ld b, b
    jr nz, jr_036_6b14

jr_036_6b14:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc b
    ld [bc], a
    nop
    ld bc, $8000
    nop
    nop
    ld b, b
    ld b, b
    ld [bc], a
    ld hl, $0000
    ldh a, [rNR10]
    and b
    adc b
    dec b
    ld c, $d0
    add c
    ld d, [hl]
    and a
    ld e, h
    ld [hl], d
    cp l
    ret nz

    rst $38
    ld h, h
    sbc d
    sub d
    ld l, l
    add hl, bc
    or $42
    cp l
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
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    ldh [$1f], a
    ldh a, [$cf]
    ld hl, sp-$19
    cp $f9
    ccf
    db $fc
    rra
    cp $0f
    rst $38
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    add b
    ld a, a
    ret nz

    cp a
    ldh [$df], a
    ld hl, sp-$19
    db $fc
    di
    cp $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $28
    ld h, b
    rst $18
    add c
    rst $38
    add c
    rst $38
    add d

Call_036_6b97:
    rst $38
    ld bc, $04ff
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
    ld a, a
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    rst $28
    ld a, a
    rst $30
    ccf
    ei
    rra
    db $fd
    rrca
    cp $87
    rst $38
    inc bc
    rst $38
    add hl, bc
    rst $38
    jr z, @+$01

    ld [$00ff], sp
    rst $38
    ld bc, $0000
    inc hl
    ld bc, $0002
    ld [bc], a
    nop
    ld bc, $4200
    ld [$0123], sp
    nop
    nop
    add b
    ld [bc], a
    ld d, l
    ld h, b
    add b
    jr nz, jr_036_6bd8

jr_036_6bd8:
    nop
    stop
    ld [$1c00], sp
    nop
    ld h, $02
    jr nz, @+$03

    ld [$0000], sp
    inc b
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
    ld b, $01
    nop
    nop
    add [hl]
    db $10
    rst $00
    jr nz, jr_036_6c07

    nop
    inc l
    nop
    ld sp, $aa17
    ld a, [$0041]
    rlc b
    ld d, l
    add b

jr_036_6c07:
    dec h
    add b
    xor c
    ld b, b
    inc h
    jr nz, @-$2c

    and b
    ld c, d
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0002
    inc bc
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
    nop
    dec bc
    inc c
    dec c
    ld c, $0e
    ld c, $0e
    rrca
    db $10
    ld de, $1312
    inc d
    dec d
    ld d, $17
    jr jr_036_6c58

    ld a, [de]
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_036_6c72

    ld [hl+], a
    inc hl
    ld c, $24
    dec h
    ld h, $27

jr_036_6c58:
    jr z, jr_036_6c83

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_6c93

    ld [hl-], a
    inc sp
    nop
    nop
    nop
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_6ca7

    ld a, [hl-]
    dec sp
    nop
    nop

jr_036_6c72:
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    nop
    nop
    nop

jr_036_6c83:
    nop
    nop
    nop
    nop
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

jr_036_6c93:
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
    nop
    ld e, h
    ld e, l
    ld e, [hl]
    ld e, a
    ld h, b
    ld h, c

jr_036_6ca7:
    ld h, d
    ld h, e
    ld h, h
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    ld l, c
    ld l, d
    nop
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    nop
    ld [hl], c
    ld [hl], d
    ld [hl], e
    ld [hl], h
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    nop
    ld a, c
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
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
    or e
    rlca
    ld [$0030], sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or h
    or l
    or [hl]
    or a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cp b
    cp c
    sbc l
    cp d
    cp e
    ld d, c
    cp h
    cp l
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, $0e
    ld c, $0e
    ld c, $be
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
    ld c, $0e
    ld c, $0e
    ld c, $0e
    ld c, $be
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
    nop
    nop
    nop
    inc bc
    inc bc
    nop
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
    inc bc
    nop
    inc bc
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
    inc bc
    nop
    inc bc
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
    inc bc
    inc bc
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
    inc bc
    inc bc
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    rlca
    ld [bc], a
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
    inc b
    rlca
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
    inc bc
    inc bc
    inc bc
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    inc bc
    inc bc
    inc bc
    inc b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    inc b
    inc bc
    ld bc, $0101
    rlca
    dec b
    dec b
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    ld bc, $0404
    inc b
    ld bc, $0507
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    ld bc, $0404
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0001
    nop
    nop
    inc bc
    inc bc
    inc bc
    rlca
    rlca
    rlca
    rlca
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
    inc bc
    inc bc
    inc bc
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
    inc b
    jr nz, jr_036_6e62

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
    nop
    inc bc
    inc bc
    ld b, b
    nop

jr_036_6e62:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld bc, $00ff
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
    rst $38
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ld l, $f1
    rlca
    ld hl, sp+$28
    rst $38
    rlca
    ld hl, sp+$4f
    ldh a, [$88]
    rst $38
    ret nz

    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    jp nz, $e1ff

    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
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
    nop
    rst $38
    ldh [$1f], a
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
    adc d
    ld a, a
    rst $38
    nop
    nop
    rst $38
    db $fd
    ld [bc], a
    rst $38
    nop
    rrca
    ldh a, [$09]
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ldh a, [rIE]
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
    ld hl, sp-$01
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
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    cp $ff
    cp $ff
    db $fd
    ld [bc], a
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
    nop
    cp $fe
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
    nop
    rst $38
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
    ld [bc], a
    rst $38
    add b
    ld a, a
    pop de
    ld a, $13
    db $fc
    ldh a, [$1f]
    ret nz

    ccf
    ld d, d
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld b, $ff
    ld h, $ff
    rla
    rst $38
    nop
    nop
    nop
    nop
    ld bc, $0200
    ld bc, $0305
    add hl, de
    rlca
    inc hl
    rra
    jp Jump_000_033f


    rst $38
    inc b
    db $fc
    ld [$10f8], sp
    ldh a, [rP1]
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
    nop
    ld bc, $0300
    nop
    rlca
    ld bc, $030f
    ld e, a
    rlca
    ccf
    rrca
    ld a, a
    rra
    cp $3f
    db $fd
    ld a, [hl]
    ld a, d
    db $fd
    ld a, l
    ld a, [$fa75]
    ld a, a
    ldh a, [rPCM34]
    ld sp, hl
    rst $38
    di
    rst $28
    ld [hl], e
    or a
    ld l, e
    cp e
    rst $20
    xor a
    rst $30
    or a
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
    rst $38
    ccf
    rst $38
    ld d, e
    rst $38
    ld l, e
    rst $38
    ld e, e
    cp $5b
    db $fc
    dec sp
    db $fc
    scf
    ld sp, hl
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
    nop
    rst $38
    add b
    ld a, a
    ret nz

    ccf
    ldh [$1f], a
    ldh [$1f], a
    ldh a, [rIF]
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
    ld b, b
    cp a
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
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    nop
    rlca
    rlca
    nop
    rlca
    rlca
    rlca
    rlca
    rlca
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
    inc bc
    nop
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0700
    ld bc, $070f
    ccf
    rrca
    ld a, a
    ccf
    rst $38
    ld a, a
    cp $ff
    ld hl, sp-$07
    ldh a, [$f1]
    ret nz

    pop bc
    add c
    add b
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    ld bc, $0307
    rrca
    rlca
    rra
    rrca
    ld a, a
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, [$fff7]
    rst $20
    db $dd
    rst $28
    xor d
    rst $10
    ld e, [hl]
    and a
    or [hl]
    ld c, a
    ld l, [hl]
    sbc a
    sbc $3f
    rst $38
    ccf
    rst $38
    ld a, a
    cp $ff
    rst $38
    rst $38
    rst $38
    cp $fd
    cp $fb
    db $fc
    cp $f9
    db $fd
    ld a, [c]
    rst $28
    ldh a, [$fb]
    db $e4
    rst $30
    ret


    xor a
    db $d3
    ld l, a
    sub e
    rst $18
    daa
    or [hl]
    ld c, a
    cp $0f
    ld a, h
    sbc a
    ld hl, sp+$3f
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    nop
    rst $38
    push af
    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    sub l
    rst $38
    push de
    add sp, -$69
    sub b
    rst $28
    nop
    rst $38
    sub b
    ld l, a
    inc c
    rst $38
    ld c, b
    cp a
    inc b
    rst $38
    ld hl, sp+$07
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    rst $00
    ld a, b
    ret nz

    rst $38
    ret nz

    rst $38
    ret nz

    ret nz

    add b
    add b
    add d
    rst $38
    ld a, [bc]
    rst $38
    add e
    rst $38
    add d
    rst $38
    xor c
    rst $38
    add b
    rst $38
    rst $38
    rst $38
    and b
    rst $38
    sbc c
    rst $38
    and a
    rst $38
    jp nc, $c4ff

    ei
    call z, $c8ff
    rst $38
    ret nc

    rst $38
    ldh a, [rIE]
    add b
    add b
    ret nz

    ld b, b
    ld h, b
    add b
    ld d, b
    or b
    ldh a, [$31]
    ldh a, [rSVBK]
    ld h, b

jr_036_723d:
    ldh [$c0], a
    ret nz

    pop bc
    rst $38
    pop bc
    rst $38
    add b
    rst $38
    add b
    rst $38
    call z, $0cff
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
    jr nz, @+$01

    ld d, e
    rst $38
    rst $30
    rst $38
    rst $08
    rst $38
    rst $00
    ret nc

    cpl
    nop
    rst $38
    jr z, jr_036_723d

    add b
    rst $38
    add c
    rst $38
    sub d
    rst $28
    ld [bc], a
    rst $38
    add l
    ei
    cp $01
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
    rst $38
    nop
    nop
    db $f4
    rst $38
    ld c, a
    rst $38
    sbc c
    rst $38
    or b
    rst $38
    inc hl
    rst $38
    jr nz, @+$01

    ld [hl], b
    rst $38
    adc e
    cp $00
    rst $38
    ld bc, $01ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    add c
    rst $38
    add b
    rst $38
    inc d
    rst $38
    nop
    rst $38
    cp $bd
    ld b, l
    ei
    ld a, [$f0fd]
    rst $38
    db $10
    rst $38
    adc c
    cp $16
    rst $38
    ld bc, $80ff
    rst $38
    inc b
    rst $38
    nop
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
    inc bc
    db $fc
    rlca
    ei
    rra
    rst $20
    ccf

jr_036_72d1:
    rst $18
    cp $3f
    ld hl, sp-$01
    ldh a, [rIE]
    ldh [rIE], a
    ld bc, $03fe
    db $fd
    rlca
    ei
    rrca
    or $1f
    xor $ff
    dec de
    rst $38

jr_036_72e7:
    dec sp

jr_036_72e8:
    rst $38
    ei
    rst $38
    db $db
    rst $38
    rst $18
    rst $38
    rst $08
    ld [hl], $df
    scf
    db $fc
    ld e, e
    db $fc
    rla
    ld hl, sp+$16
    ld sp, hl
    ld a, [hl]
    pop hl
    inc e
    db $e3
    jr jr_036_72e7

    jr jr_036_72e8

    jr nc, jr_036_72d1

    ldh [rNR33], a
    ldh [rNR24], a
    nop
    ld sp, hl
    nop
    di
    nop
    rst $20
    nop
    rlca
    ld b, $ff
    add b
    rst $38
    ld c, b
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    jr nz, @+$01

    rst $30
    cp $24
    db $db
    ldh [rIE], a
    ld bc, $8cfe
    ld [hl], a
    ld bc, $08fe
    rst $38
    dec h
    ld a, [$de21]
    ld bc, $82fe
    db $fd
    ld [bc], a
    db $fd
    ld a, [bc]
    rst $30
    ld h, $dd
    inc l
    rst $30
    dec b
    cp $0a
    db $fd
    xor b
    ld [hl], a
    ld d, b
    cp a
    inc d
    db $eb
    ld [de], a
    db $fd
    ld [hl+], a
    db $fd
    ld [hl+], a
    db $fd
    ld c, c
    or [hl]
    ld d, h
    db $eb
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    dec bc
    rst $30
    rra
    db $e3
    dec e
    db $e3
    ccf
    pop bc
    ccf
    ret nz

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
    add h
    ei
    add [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    add [hl]
    ld sp, hl
    add $f9
    add $f9
    add $f9
    add $f9
    add $f9
    add $f9
    jp nz, $c2fd

    db $fd
    ld [c], a
    db $fd
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
    nop
    ld hl, sp+$00
    ld hl, sp+$00
    db $fd
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $03fe
    db $fd
    rrca
    di

Jump_036_73c4:
    ld e, $ef
    ld a, h
    sbc a
    ldh a, [$7f]
    pop hl
    cp $c3
    db $fd
    add a
    ei
    rrca
    rst $30
    rra
    db $ed
    ccf
    db $db
    ld a, a
    cp d
    rst $38
    ld a, e
    rst $38
    rst $28
    rst $38
    sbc $ff
    ld a, [hl-]
    ld l, e
    cp h
    and h
    ld a, e
    dec l
    di
    xor c
    rst $30
    db $d3
    rst $28
    di
    rst $08
    ld h, h
    sbc h
    jp hl


    add hl, de
    inc sp
    ld a, [hl-]
    ld h, a
    ld a, h
    ld h, a
    ld a, c
    rst $08
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$1f]
    ldh [$7f], a
    pop af
    ld a, a
    sbc c
    cp h
    rst $08
    sbc h
    rst $20

jr_036_7406:
    ld b, c
    rst $38
    di
    rst $38
    cp b
    rst $38
    rst $28
    rst $38
    adc a
    rst $38
    cp d
    rst $38
    and h
    rst $38
    ld b, l
    ld a, [$ff08]
    ld [$12ff], sp
    db $fd
    ld [de], a
    db $fd
    inc d
    ei
    ld hl, $28fe
    push af
    add b
    ld a, [$a450]
    ld b, b
    push af
    and h
    ld e, c
    add b
    rst $38
    nop
    xor c
    jr nz, jr_036_7406

    db $10
    adc l
    inc d
    xor e
    inc b
    xor e
    adc c
    db $76
    ret nz

    cp d
    dec b
    ld a, [$4285]
    ld b, d
    sbc l
    add h
    ld [hl], e
    ld b, c
    sub d
    ld [bc], a
    push de
    add c
    ld l, d
    nop
    rst $30
    dec h
    jp z, Jump_036_748a

    ld a, a
    rst $38
    ld a, a
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
    add c
    ld a, [hl]
    ld a, [hl]
    rst $38
    ld a, h
    rst $38
    ld a, b
    rst $38
    ld a, b
    rst $38
    ld [hl], b
    rst $38
    ld [hl], b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    nop
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
    ld [$080f], sp
    rrca
    rrca
    rrca
    rrca
    rrca
    rrca
    cpl
    rrca
    cpl
    rrca
    cpl

Jump_036_748a:
    rrca
    ccf
    rrca
    ccf
    rrca
    ccf
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
    adc a
    ld a, a
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
    rrca
    rst $38
    ld l, a
    cp a
    rst $08
    ld a, a
    adc a
    rst $38
    rrca
    rst $38
    ccf
    rst $08

jr_036_74b6:
    ld a, a
    cp a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $08
    ld a, a
    rst $08
    ld a, a
    rst $08
    rst $38
    rst $08
    cp a
    adc a
    ld a, a
    add b
    ld b, b
    add b
    ld b, b
    nop
    add b
    inc l

jr_036_74d1:
    rst $38
    nop
    rst $38
    add b
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    cp $01
    rst $38
    nop
    rst $38
    db $fc
    cp $02
    rst $38
    ld bc, $91ff
    cp $61
    sbc $61
    sbc [hl]
    pop hl
    sbc [hl]
    pop hl
    inc a
    jp $cf3f


    ccf
    reti


    dec a
    di
    ld a, [hl-]
    rst $20
    nop
    rst $38
    jr @+$01

    ld h, d
    rst $38
    ld a, [bc]
    rst $38
    dec b
    ld bc, $c108
    db $10
    add sp, -$7c
    ld a, d
    add b
    ld l, e
    ld [bc], a
    db $f4
    sub l
    ld l, d
    ld b, b
    or l
    ld d, h
    xor d
    ld [bc], a
    ld [hl], c
    ld l, h
    sub b
    jr nz, jr_036_74b6

    ld de, $0020
    ld a, [hl+]
    ld c, b
    and b
    nop
    ld de, $410a
    nop
    db $10
    inc b
    or b
    inc d
    ldh [rP1], a
    ret nz

    nop
    nop
    ld c, b
    or l
    ld b, l
    jr jr_036_74d1

    ld e, b
    ld b, b
    and d

jr_036_7534:
    ld l, c
    nop
    add b
    ld d, [hl]
    inc b
    ld e, d
    nop
    or c
    nop
    or $00
    ld l, [hl]
    rst $38
    rst $38
    cp $ff
    rlca
    ld hl, sp+$1f
    ldh [$3f], a
    ret nz

    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    nop
    rst $38
    ld bc, $03fe
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$1f], a
    ldh [$e0], a
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    rra
    ldh [$fe], a
    ret nz

    rst $18
    ldh [$60], a
    add b
    jr c, jr_036_7534

    inc a
    ret nz

    inc c
    ldh a, [$7c]
    cp h
    ld e, [hl]
    and h
    ld c, a
    or h
    ld b, a
    cp h
    ld b, a
    cp h
    rlca
    db $fc
    inc b
    rst $38
    ld b, $fd
    inc b
    rst $38
    add h
    rst $38
    add h
    rst $38
    cp b
    rst $38
    ld hl, sp-$01
    db $fd
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
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    ld a, [bc]
    rst $38
    db $10
    rst $38
    adc b
    rst $38
    inc d
    ld a, a
    nop
    ccf
    nop
    ccf
    ld de, $283f
    rst $38
    pop af
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rra
    push af
    dec d
    db $fd
    rra
    pop bc
    dec b
    and d
    ld h, $a2
    ld l, $02
    ld [hl-], a
    rst $20
    and e
    ld [bc], a
    dec bc
    ld [hl+], a
    ld d, l
    ld [de], a
    ld a, [bc]
    ld d, e
    add h
    and h
    ld d, d
    ld [bc], a
    db $f4
    xor h
    ld b, d
    nop
    ld b, h
    inc b
    jp nz, Jump_036_55ae

    inc b
    nop
    inc [hl]
    add b
    ld b, h
    db $10
    inc b
    and b
    inc b
    ld b, c
    add b
    inc b
    ld [$0800], sp
    nop
    ld [$0890], sp
    nop
    ld [$0800], sp
    nop
    ld [$5f80], sp
    and b
    ld [$0000], sp
    jr jr_036_7665

    nop
    ld d, b
    add b
    stop
    stop
    stop
    stop
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
    cp $01
    inc bc
    db $fc
    ld b, $00
    ld [bc], a
    nop
    add d
    nop
    jp nz, $f100

    ld [de], a
    jp hl


    ld [de], a
    db $fd
    ld [de], a
    db $fd
    ld [de], a
    jp nz, Jump_036_6a10

    sub b
    ld l, a

jr_036_7665:
    sub b
    cpl
    ret nc

    inc d
    ei
    db $10
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    nop
    rst $38
    ld bc, $03ff
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
    nop
    nop
    nop
    ld b, h
    nop
    nop
    rst $18
    or e
    ld b, c
    rlca
    ld bc, $85bf
    dec bc
    add a
    rrca
    add b
    ld bc, $5ba0
    add e
    dec c
    pop de
    xor a
    rlca
    rrca
    adc a
    sbc a
    add l
    sbc e
    inc bc
    ccf
    ld b, e
    ld h, a
    adc a
    rst $08
    ccf
    ld a, a
    cp $bf
    rrca
    rst $38
    inc bc
    rst $38
    add e
    rst $38
    inc d
    ld l, a
    rra
    ccf
    ld de, $431f
    rlca
    rlca
    ret c

    add b
    ld a, a
    add e
    inc [hl]
    ld b, c
    adc d
    db $10
    rst $20
    nop
    inc e
    nop
    ld a, a
    jr nz, jr_036_76e1

    add hl, bc
    nop
    add b
    ld [hl], h
    dec b
    ld a, [bc]
    nop
    nop
    ld [bc], a
    nop
    nop
    ld bc, $0000
    nop
    ld b, b
    nop

jr_036_76e1:
    dec bc
    nop
    nop
    nop
    ld bc, $0040
    nop
    ld sp, $0700
    nop
    ld [bc], a
    nop
    ldh [rIF], a
    stop
    nop
    nop
    inc b
    nop
    ld [bc], a
    nop
    inc bc
    nop
    rlca
    nop
    nop
    nop
    nop
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    ld hl, sp-$02
    ld sp, hl
    cp $f9
    cp $f9
    cp $f9
    cp $01
    cp $01
    ld a, [$fa05]
    dec b
    ld a, [c]
    dec b
    ld a, [c]
    dec b
    ld [hl-], a
    dec b
    ei
    rlca
    ei
    rlca
    ei
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
    ld sp, hl
    rlca
    push bc
    rrca
    call $c50f
    rrca
    ld sp, hl
    rlca
    ld a, l
    add e
    ld a, l
    add e
    ld a, l
    add e
    ld a, l
    add e
    ld sp, hl
    add a
    ld a, e
    add a
    db $eb
    sub a
    ei
    add a
    db $eb
    sub a
    ei
    add a
    db $eb
    sub a
    add b
    rlca
    add b
    rlca
    add b
    add a
    add b
    add a
    add b
    add a
    add b
    add a
    add b
    add a
    add b

jr_036_775f:
    add a
    add b

jr_036_7761:
    and a
    nop
    xor a
    nop
    xor a
    nop
    rst $28
    nop
    rst $28
    nop

jr_036_776b:
    rst $28
    nop
    rst $38
    jr nc, jr_036_775f

    jr nc, jr_036_7761

    jr jr_036_776b

    ld hl, sp+$17
    db $ec
    db $db
    db $fc
    set 6, [hl]
    db $ed
    or $ed
    ei
    and $1d
    ld [c], a
    ld c, h
    or e
    ld c, [hl]
    or c
    ld c, $f1
    rlca
    ld hl, sp+$07
    ld a, b
    daa
    ld e, b
    daa
    ld e, b
    inc bc
    inc a
    rla
    jr z, jr_036_77a8

    inc l
    ld de, $112e
    ld l, $01
    ld e, $08
    ld d, a
    ld [$0857], sp
    rla
    ld [$0497], sp
    dec bc
    inc b
    dec bc

jr_036_77a8:
    inc b
    dec bc
    inc b
    dec bc
    nop
    rlca
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    ld [bc], a
    dec b
    nop
    inc bc
    ld bc, $0102
    ld [bc], a
    ld bc, $0102
    ld [bc], a
    ccf
    or $9f
    ld l, [hl]
    ld c, a
    or h
    rla
    ld l, [hl]
    dec bc
    or $07
    ld a, [hl]
    inc bc
    rst $38
    ld bc, $01ff

jr_036_77d1:
    ld h, a
    ld bc, $027f
    db $fd
    nop
    ld a, a
    nop
    rst $10
    nop
    ccf
    nop
    rra
    nop
    ld c, a
    nop
    ccf
    nop
    cpl
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_036_77d1

    nop
    rst $38
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
    inc bc
    add c
    ldh [$80], a
    pop hl
    add c
    pop hl
    add c
    pop bc
    add c
    pop bc
    add c
    pop bc
    add b
    pop bc
    add a
    ret nz

    add a
    ret nz

    sub a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$9f], a
    ldh [$8f], a
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$87]
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$79
    ld hl, sp-$7d
    db $fc
    add e
    db $fc
    add c
    cp $80
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
    pop af
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

jr_036_787b:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    cp a
    ret nz

    cp a
    ldh [$9f], a
    ldh [$df], a
    ld [hl], b
    rst $08
    ld [hl], b
    rst $28
    jr c, jr_036_787b

    jr c, @-$07

    cp b
    ld [hl], a
    sbc h
    ld a, e
    sbc h
    ld a, e
    adc $3d
    adc $3d
    rst $08
    ld a, $e7
    sbc [hl]
    rst $20
    sbc [hl]
    db $e3
    ld e, a
    di
    rst $08
    di
    rst $08
    pop af
    rst $08
    ld sp, hl
    rst $20
    ld hl, sp-$59
    ld hl, sp-$19
    db $fc

jr_036_78b5:
    db $d3
    db $fc
    or e
    db $fc
    di
    cp $e9
    cp $e9
    cp $e9
    rst $38
    db $fc
    rst $38
    ld l, h
    rst $38
    ld a, h
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    cp d
    rst $38
    cp d
    rst $38
    cp a
    ld b, b
    cp a
    ld b, b
    cp a
    jr nz, jr_036_78b5

    jr nz, jr_036_7937

    jr nz, jr_036_7939

    ld hl, $315f
    ld c, a
    db $10
    cpl
    db $10
    cpl
    ld de, $102f
    cpl
    add hl, bc
    scf
    ld [$0817], sp
    rla
    ld [$0c17], sp
    inc de
    inc b
    dec de
    inc b
    dec de
    dec b
    dec bc
    inc b
    dec bc
    ld b, $09
    ld [bc], a
    dec c
    ld [bc], a
    dec c
    ld [bc], a
    dec b
    inc a
    jp $c3bc


    cp h
    jp $c3bc


    cp h
    jp $c3bc


    cp b
    rst $00
    jr c, @-$37

    ld a, b
    add a
    ld a, b
    add a
    ld a, b
    add a
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
    pop hl
    rra
    pop hl
    rra
    pop hl

jr_036_7937:
    rra
    pop hl

jr_036_7939:
    rra
    pop hl
    rra
    db $e3
    rra
    jp $c33f


    ccf
    jp $c33f


    ccf
    jp $873f


    ld a, a
    add a
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
    add b
    ld a, a
    add b
    ld a, a
    ret nz

    ccf
    ret nz

    cp a
    ldh [$9f], a
    ldh [$df], a
    ldh a, [$cf]
    ldh a, [$ef]
    ld hl, sp-$19
    ld a, b
    rst $30
    ld a, b
    rst $30
    ld a, h
    di
    inc a
    ei
    ld a, $f9
    ld e, $fd
    rra
    db $fc
    rra
    cp $8f
    ld a, [hl]
    adc a
    ld a, a
    add a
    ld a, a
    rst $00
    ccf
    rst $00
    ccf
    jp $e33f


    rra
    pop hl
    sbc a
    pop hl
    sbc a
    pop af
    adc a
    ldh a, [$cf]
    ldh a, [$cf]
    ld hl, sp-$79
    ld hl, sp+$67
    ld hl, sp+$27
    db $fc
    db $e3
    db $fc
    di
    db $fc
    sub e
    cp $b1
    cp $f1
    cp $f9
    rlca
    ld hl, sp+$07
    ld hl, sp+$13
    db $fc
    inc de
    db $fc
    inc bc
    db $fc
    ld bc, $09fe
    or $10
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
    ret nz

    ccf
    ret nz

    cp a
    ldh [$9f], a
    ldh [$9f], a
    ldh a, [$cf]
    ldh a, [$cf]
    ld hl, sp-$19
    ld hl, sp-$19
    db $fc
    di
    db $fc
    di
    ld a, h
    ei
    ld a, [hl]
    ld sp, hl
    ld a, [hl]
    db $fd
    ccf
    db $fc
    ccf
    cp $1f
    cp $1f
    cp $1f
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    add a
    ld a, a
    add e
    ld a, a
    add e
    ld a, a
    pop bc
    ccf
    pop bc
    ccf
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
    ret nz

    ccf
    ret nz

    ccf
    ldh [$9f], a
    ldh [$9f], a
    ldh a, [$cf]
    ldh a, [$cf]
    ld hl, sp-$19
    ld hl, sp-$19
    db $fc
    di
    db $fc
    di
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
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
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
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld hl, sp-$01
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
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    ld hl, sp-$01
    db $fc
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
    ld bc, $0200
    nop
    nop
    inc bc
    inc b
    dec b
    ld b, $07
    ld [$0009], sp
    nop
    nop
    nop
    ld bc, $0a00
    nop
    dec bc
    inc c
    dec c
    ld c, $0f
    db $10
    ld de, $0012
    nop
    nop
    nop
    inc de
    inc d
    dec d
    nop
    ld d, $17
    jr jr_036_7af5

    ld a, [de]
    nop
    dec de
    inc e
    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $00
    rra
    jr nz, @+$23

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $00
    nop
    nop
    nop
    nop

jr_036_7af5:
    dec e
    daa
    jr z, jr_036_7b22

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_036_7b01

jr_036_7b01:
    nop
    nop
    nop
    nop
    dec e
    ld sp, $3332
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_036_7b48

    ld a, [hl-]
    nop
    nop
    nop
    nop
    nop
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
    ld b, [hl]

jr_036_7b22:
    ld b, a
    ld c, b
    nop
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

jr_036_7b48:
    ld l, e
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    inc b
    ld [hl], h
    ld [hl], l
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
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
    nop
    nop
    nop
    sub b
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
    inc b
    or h
    or l
    ld d, [hl]
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
    ld b, a
    jp nc, RST_00

    nop
    db $d3
    nop
    call nc, $d6d5
    rst $10
    ret c

    reti


    jp c, $dcdb

    nop
    nop
    nop
    nop
    nop
    dec e
    db $dd
    sbc $df
    ldh [$e1], a
    ld [c], a
    db $e3
    db $e4
    push hl
    and $00
    nop
    nop
    nop
    nop
    dec e
    daa
    dec bc
    rst $20
    add sp, -$17
    ld [$eceb], a
    db $ed
    xor $00
    nop
    nop
    nop
    nop
    ld bc, $0001
    nop
    inc bc
    ld [bc], a
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
    ld bc, $0001
    inc bc
    inc bc
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
    ld bc, $0001
    inc bc
    inc bc
    inc b
    inc b
    inc b
    ld bc, $0404
    nop
    nop
    nop
    nop
    nop
    ld bc, $0001
    inc bc
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
    ld bc, $0301
    inc bc
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
    ld bc, $0301
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    ld [bc], a
    rlca
    nop
    nop
    nop
    nop
    nop
    ld bc, $0300
    inc b
    inc b
    inc b
    inc b
    rlca
    rlca
    rlca
    inc b
    nop
    nop
    nop
    nop
    nop
    ld bc, $0403
    inc b
    inc b
    rlca
    rlca
    rlca
    inc b
    ld bc, $0001
    nop
    nop
    nop
    nop
    ld bc, $0403
    inc b
    rlca
    rlca
    ld [bc], a
    inc b
    ld bc, $0101
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0301
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0203
    inc b
    inc b
    ld bc, $0101
    ld bc, $0207
    ld [bc], a
    dec b
    ld bc, $0101
    ld bc, $0103
    inc b
    inc b
    inc b
    ld bc, $0101
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    inc b
    inc bc
    ld bc, $0401
    inc b
    inc b
    ld bc, $0101
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    rlca
    rlca
    nop
    ld bc, $0401
    inc b
    ld bc, $0101
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld bc, $0303
    inc bc
    inc bc
    inc b
    rlca
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
    inc bc
    inc bc
    inc b
    inc b
    rlca
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
    inc bc
    inc bc
    inc bc
    inc b
    inc b
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    jr nz, jr_036_7d02

jr_036_7d02:
    nop
    nop
    nop
    inc bc
    nop
    inc bc
    inc b
    inc b
    inc b
    inc b
    rlca
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
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    rlca
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    inc bc
    inc hl
    inc hl
    inc bc
    inc b
    inc b
    inc b
    inc b
    inc b
    inc b
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $0ffe
    ldh a, [$3f]
    ret nz

    rst $38
    ld bc, $0fff
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
    nop
    rst $38
    nop
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
    ld e, a
    rst $38
    ld e, a
    cp a
    cp a
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    cp [hl]
    rst $38
    cp a
    cp $be
    rst $38
    sbc a
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
    rst $18
    rst $38
    rst $28
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld [hl], a
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    sub a
    rst $38
    ccf
    rst $38
    rla
    rst $38
    dec de
    rst $38
    dec de
    rst $38
    ld e, e
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$3f
    ret nz

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
    nop
    rst $38
    nop
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
    cp $1f
    db $fc
    ld a, [hl]
    db $fd
    rst $38
    ld sp, hl
    push af
    ei
    rst $38
    di
    rst $38
    ld a, [c]
    rst $38
    ldh a, [rIE]
    db $e4
    rst $18
    add sp, -$01
    ret c

    rst $10
    cp b
    rst $38
    ld sp, $23ff
    rst $18
    ld h, e
    rst $38
    ld b, e
    rst $18
    ld h, a
    rst $20
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld h, a
    rst $38
    ld [hl], a
    rst $38
    or e
    rst $38
    or e
    rst $38
    or e
    rst $38
    cp e
    rst $38
    or e
    rst $38
    or e
    rst $38
    or c
    rst $38
    reti


    rst $38
    reti


    rst $38
    reti


    rst $38
    rst $18
    rst $38
    rst $18
    rst $38
    rst $18
    cp $ff
    db $fc
    rst $18
    ld hl, sp-$01
    ld hl, sp-$12
    ld sp, hl
    db $ed
    ei
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
    rra
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    ld bc, $07fe
    ld hl, sp+$3f
    ret nz

    rst $38
    inc bc
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

jr_036_7eae:
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    rrca
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rra
    rst $38
    rra
    cp a
    ld a, a
    rst $38
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
    cp $ff
    rst $38
    db $fc
    ei
    db $fc
    rst $30
    ld hl, sp-$11
    pop af
    rst $18
    db $e3
    cp a
    rst $00
    ld a, a
    adc [hl]
    rst $38
    inc e
    rst $18
    jr c, jr_036_7eae

    ld a, b
    ld l, a
    ldh a, [rIE]
    ldh [$fe], a
    pop bc
    rst $38
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
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    ld hl, sp+$3f
    ret nz

    rst $38
    inc bc
    rst $38
    rra
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
    rst $38
    nop
    rst $38
    ld bc, $07ff
    rst $38
    rra
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    cp $f7
    cp $f7
    cp $f7
    cp $f6
    rst $38
    or $ff
    or $ff
    sub $ff
    sub a
    rst $38
    sub [hl]
    rst $38
    sbc e
    rst $38
    adc a
    rst $38
    sbc e
    rst $38
    adc e
    rst $38
    set 7, a
    set 7, a
    set 7, a
    set 7, a
    rst $08
    rst $38
    set 7, a
    call $cbff
    rst $38
    rst $20
    rst $38
    db $ed
    rst $38
    push hl
    rst $38
    push hl
    rst $38
    rst $18
    rst $20
    cp a
    rst $00
    ld a, a
    adc [hl]

Jump_036_7f82:
    rst $38
    inc e
    rst $38
    jr c, @+$01

    ld [hl], b
    rst $38
    ldh [$fe], a
    pop bc
    db $fd
    add e
    ei
    rlca
    rst $30
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    ld a, a
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp+$3f
    ret nz

    rst $38
    rlca
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
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rrca
    rst $30
    ld e, a
    rst $20
    rst $38
    rst $08
    rst $38
    rst $18
    cp a
    rst $18
    ei
    add a
    rst $18
    and a
    rst $30
    rrca
    cp a
    ld c, a
    rst $38
    rrca
    ld l, a
    sbc a
    ld a, a
    sbc a
    ld a, a
    sbc a
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    ld e, a
    rst $38
    sbc a
    rst $38
    ld e, a
    rst $38
    ld e, a
    rst $38
