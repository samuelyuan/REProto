SECTION "ROM Bank $07b", ROMX[$4000], BANK[$7b]

Call_07b_4000:
    ld b, b
    cp [hl]
    jp nz, $803c

    ld a, h
    add b
    ld a, b
    add b
    ld [hl], b
    add b
    ld h, b
    nop
    nop
    nop
    jr jr_07b_4011

jr_07b_4011:
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
    or $00
    ld a, b
    nop
    ld hl, sp+$00
    db $f4
    nop
    add sp, $00
    ldh [rP1], a
    ret nz

    nop
    add b
    nop
    and c
    nop
    ld bc, $0100
    nop
    inc bc
    nop
    ld [bc], a
    jr nz, jr_07b_404a

    nop
    ld c, $00
    rra
    nop
    rla

jr_07b_404a:
    nop
    rra
    nop
    ccf
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    ld hl, sp+$00
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
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
    ld [bc], a
    nop
    ld b, $00
    ld [bc], a
    nop
    ld bc, $0300
    nop
    db $db
    nop
    ld [hl], a
    nop
    db $ec
    nop
    inc a
    nop
    ld e, b
    nop
    nop
    nop
    nop
    nop
    nop
    add b
    ldh a, [$f0]
    rst $38
    pop af
    rst $38
    or c
    rst $38
    pop hl
    rst $38
    pop af
    rst $38
    pop de
    rst $38
    pop af
    rst $38
    or c
    rst $38
    pop af
    rst $38
    or b
    rst $38
    or c
    rst $38
    pop af
    rst $38
    ld [hl], c
    rst $38
    or c
    rst $38
    ld [hl], c
    rst $38
    ldh a, [rIE]
    or c
    rst $38
    ld [hl], c
    rst $38
    pop af
    rst $38
    reti


jr_07b_40ab:
    rst $38
    ld hl, sp-$01
    pop af
    rst $38
    ld sp, hl
    rst $38
    ld [hl], c
    rst $38
    dec h
    rra
    nop
    inc bc
    nop
    nop
    nop
    nop
    nop

Jump_07b_40bd:
    nop
    nop
    nop
    inc b
    ei
    nop
    rst $38
    and b
    ld e, a
    db $10
    rst $28
    nop
    rst $38
    ld [hl], b
    adc a
    ld l, $d1
    xor a
    ld d, b
    dec sp
    call nz, $e41b
    ld c, a
    or b
    ld c, d
    or l
    ld h, c
    sbc [hl]
    jr nc, jr_07b_40ab

    rst $38
    nop
    rst $38
    nop
    inc b
    ld a, b
    adc b
    ld [hl], b
    nop
    ldh a, [$08]
    ldh [rNR42], a
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    nop
    nop
    nop
    stop
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

Jump_07b_40fd:
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld a, h
    nop
    ld a, c
    nop
    ld d, e
    nop
    inc hl
    nop
    ld h, h
    nop
    inc e
    nop
    ld a, b
    nop
    reti


    nop
    or d
    nop
    ld [hl], e
    nop
    ld h, c
    nop
    jp nz, $c300

    nop
    adc l
    nop
    rlca
    nop
    rlca
    nop
    rrca
    nop
    rrca
    nop
    rla
    nop
    rrca
    nop
    rrca
    nop
    rra
    nop
    ld c, a
    nop
    ld a, l
    nop
    ld a, a
    nop
    ld a, h
    nop
    cp l
    nop
    ld a, a
    nop
    ld a, e
    nop
    ld l, a
    nop
    rst $28
    nop
    cp $00
    ld a, [$f000]
    nop
    ldh [rP1], a
    ldh [rP1], a
    ret z

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0500
    nop
    ld [hl-], a
    nop
    ld [bc], a
    nop
    add b
    add b
    ldh a, [$e0]
    rst $38
    and e
    rst $38
    and e
    rst $38
    jp $a3ff


    rst $38
    jp $a3ff


    rst $38
    rst $20
    rst $38
    and a
    rst $38
    rst $00
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    and a
    rst $38
    rst $20
    rst $38
    and a
    rst $38

jr_07b_4194:
    rst $20
    rst $38
    rst $28
    rst $38
    adc a
    ld a, a
    dec bc
    rlca
    nop
    ld bc, $0000
    nop
    rst $38
    nop
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

jr_07b_41ae:
    ld hl, sp+$07
    rst $38
    nop
    rst $18
    jr nz, jr_07b_4194

    jr nz, jr_07b_41ae

    ld [$00ff], sp
    rst $28
    db $10
    cp a
    ld b, b
    ld l, a
    sub b
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $05fe
    ld a, [$fd02]
    ld [bc], a
    db $fd
    ld bc, $00fe
    nop
    nop
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $18
    nop
    rst $18
    nop
    ld e, a
    nop
    ld l, a
    nop
    ld a, a
    nop
    ld l, a
    nop
    ld a, a
    nop
    ld a, a
    nop
    rst $38

Jump_07b_4200:
    nop
    cp $00
    cp $00
    cp $00
    cp $00
    db $fc
    nop
    db $fc
    nop
    ld hl, sp+$00
    ret c

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh [rNR10], a
    ld h, b
    nop
    ld h, b
    nop
    pop bc
    nop
    ret nz

    nop
    jp $8300


    nop
    add e
    nop
    add e
    nop
    ld b, $00
    rlca
    nop
    dec b
    nop
    add hl, bc
    nop
    dec de
    nop
    inc de
    nop
    rla
    nop
    ld de, $2500
    ld bc, $0167
    ld h, e
    nop
    jp Jump_07b_4200


    nop
    dec b
    nop
    dec b
    nop
    inc b
    nop
    jr nz, jr_07b_4249

jr_07b_4249:
    add b
    add b
    ldh a, [$b8]
    cp $f1
    rst $38
    cp b
    rst $38
    cp b
    rst $38
    or b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ld [hl], b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    pop hl
    rst $38
    ld l, b
    rst $38
    dec b
    rra
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $02
    db $fd
    ld [bc], a
    db $fd
    sub b
    ld l, a
    ld sp, hl
    ld b, $fd
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
    dec b
    ld a, [$d52a]
    dec d
    ld [$d42b], a
    ld d, l
    xor d
    rla
    add sp, -$55
    ld d, h
    sub a
    ld l, b
    xor a
    ld d, b
    or a
    ld c, b
    sbc e
    ld h, h
    ld l, [hl]
    sub c
    ld e, e
    and h
    cp a
    ld b, b
    rst $28
    db $10
    ld [hl], a
    adc b
    scf
    ret z

    inc bc
    db $fc
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
    nop
    rst $08
    nop
    call nz, Call_07b_4000
    nop
    add l
    nop
    add e
    nop
    add e
    ld bc, $0117
    rla
    nop
    rla
    ld bc, $012f
    rrca
    inc bc
    ccf
    inc bc
    ccf
    inc bc
    ld a, a
    rlca
    rra
    rlca
    ccf
    inc bc
    ccf
    rlca
    ld a, a
    rrca
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    ld a, a
    rra
    cp a
    rra
    cp a
    dec de
    rst $38
    ld a, $7f
    ld a, $ff
    ld a, $7f
    db $76
    rst $38
    dec [hl]
    rst $38
    ld a, b
    rst $38
    inc a
    rst $38
    ld a, d
    rst $38
    db $fc
    rst $38
    pop de
    rst $38
    or c
    rst $38
    pop de
    rst $38
    di
    rst $38
    dec bc
    ld a, a
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
    ldh a, [rNR23]
    cp $17
    rst $38
    scf
    rst $38
    scf
    rst $38
    scf
    rst $38
    cpl
    rst $38
    scf
    rst $38
    cpl
    rst $38
    ld [hl], a
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    ld l, a
    rst $38
    sbc $ff
    rst $38
    rst $38
    cp [hl]
    rst $38
    ei
    rst $38
    or c
    rst $38
    sub l
    rst $38
    pop de
    rst $38
    inc de
    rst $38
    ld b, d
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ld b, a
    cp a
    nop
    rst $38
    nop
    rst $38
    adc c
    db $76
    jr nz, @-$1f

    ld hl, $05de
    ld a, [$8d72]
    ld c, d
    or l
    adc $31
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
    rst $38
    nop
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
    rlca
    ld hl, sp+$00
    rst $38
    call nz, $ffff
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
    ld bc, $03ff
    rst $38
    rrca
    rst $38
    rra
    rst $38
    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld h, e
    rst $38
    and a
    rst $38
    db $eb
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
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
    rst $18
    rst $38
    rst $18
    rst $38
    sbc $ff
    adc a
    rst $38
    sbc a
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
    ld a, a
    rst $38
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    ld [$feff], a
    rst $38
    adc l
    ld a, a
    nop
    rlca
    nop
    add b
    nop
    nop
    nop
    inc b
    nop
    add h
    nop
    nop
    nop
    nop
    add b
    ldh a, [$ba]
    db $fc
    cp h
    rst $38
    cp d
    rst $38
    cp d
    rst $38
    ld sp, hl
    rst $38
    ld a, c
    rst $38
    db $fd
    rst $38
    ld [hl], l
    rst $38
    di
    rst $38
    ld a, e
    rst $38
    db $eb
    rst $38
    db $eb
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    rst $08
    rst $38
    db $eb
    rst $38
    and e
    rst $38
    cp l
    rst $38
    add b
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
    adc a
    ld a, a

jr_07b_445a:
    add hl, bc
    rst $30
    sub d
    ld l, l
    add $39
    sub $29
    or c
    ld c, [hl]
    and d
    ld e, l
    db $dd
    ld [hl+], a
    push de
    ld a, [hl+]
    rst $38
    nop
    rst $18
    jr nz, jr_07b_445a

    inc d
    ld b, b
    cp a
    add h
    ld a, e
    call nz, $d23b
    dec l
    ret nc

    cpl
    xor d
    ld d, l
    inc l
    db $d3
    ld [hl], l
    adc d
    cp [hl]
    ld b, c
    xor a
    ld d, b
    xor $11
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $38
    add b
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
    ld bc, $07ff
    rst $38
    rlca
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
    rst $20
    rst $38
    and $ff
    rst $30
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
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    scf
    rst $38
    rst $30
    rst $38
    ld [hl], a
    rst $38
    ld [hl], a
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
    rst $28
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    ld c, $7f
    nop
    rrca
    nop
    nop
    nop
    ld bc, $0201
    ld bc, $0102
    ld [de], a
    nop
    ld [bc], a
    ld bc, $f2e2
    rst $38
    cp $ff
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
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    and b
    rst $38
    nop
    rst $38
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07b_4555:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    and a
    ld e, a
    cp h
    ld b, e
    ld a, l
    add d
    cp e
    ld b, h
    cp $01
    rst $28
    db $10
    rst $18
    jr nz, jr_07b_45ec

    add b
    db $dd
    ld [hl+], a
    rrca
    ldh a, [$90]
    ld l, a
    jr nz, jr_07b_4555

    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    and b
    ld e, a
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
    ldh a, [rIF]
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
    rrca
    ldh a, [rP1]
    rst $38
    nop
    rst $38
    ld a, [$fbfd]
    db $fc
    ld a, [$fbfd]
    db $fc
    ld a, [$fafd]
    db $fd
    db $fd
    ld a, [$fdfa]
    db $fd
    ld a, [$fbfc]
    push af
    ld a, [$fbf4]
    or $f9
    ldh a, [rIE]
    push af
    ld a, [$fbf4]
    cp $f1
    ld hl, sp-$09
    ld a, [$e0f5]
    rst $38
    add sp, -$09
    ld [$e1f5], a
    cp $e0
    rst $38
    ldh [rIE], a
    ldh [$e0], a
    ldh [$e0], a
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ldh [$e0], a
    ret nz

    ret nz

    ldh [$c0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

jr_07b_45ec:
    add b
    ret nz

    add b
    add b
    add b
    ret nz

    ret nz

    add b
    ret nz

    add b
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
    add b
    nop
    add b
    nop
    add b
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
    or b
    ld b, b
    dec bc
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
    nop
    rst $38
    ld bc, $01fe
    cp $03
    db $fc
    inc bc
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$0f
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [rNR34]
    ldh [rNR32], a
    ldh [$f8], a
    rst $38
    ldh [rIE], a
    jp nc, $b4ed

    res 6, l
    jp z, $9a65

    ld d, [hl]
    xor c
    db $db
    inc h
    ld l, [hl]
    sub c
    ld l, a
    sub b
    cp a
    ld b, b
    rst $28
    db $10
    ei
    inc b
    ld a, [$ff05]
    nop
    rst $30
    ld [$25da], sp
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
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
    ld b, c
    cp [hl]
    xor b
    ld d, a
    add b
    ld a, a
    ret nc

    cpl
    ldh [$1f], a
    ldh a, [rIF]
    ld hl, sp+$07
    inc c
    di
    ld c, $f1
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
    add b
    ld a, a
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
    add b
    ld a, a
    add b
    ld a, a
    nop
    rst $38
    add b
    ld a, a
    add b
    ld a, a
    and b
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ld bc, $0700
    jr c, @+$09

    jr c, @+$09

    jr c, jr_07b_46e6

    jr nc, jr_07b_46e8

    jr nc, jr_07b_46f9

jr_07b_46db:
    jr nz, jr_07b_46db

    nop
    inc a
    ret nz

    ld a, h
    add b
    ld a, b
    add b
    ld hl, sp+$00

jr_07b_46e6:
    ld hl, sp+$00

jr_07b_46e8:
    ldh a, [rP1]
    ldh [rP1], a
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
    nop

jr_07b_46f9:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    db $fd
    ld [de], a
    db $ed
    db $10
    rst $28
    ld d, l
    xor d
    or a
    ld c, b
    sbc a
    ld h, b
    rst $28
    db $10
    cp a
    ld b, b
    db $ed
    ld [de], a
    cp a
    ld b, b
    cp e
    ld b, h
    db $dd
    ld [hl+], a
    ld a, e
    add h
    xor $11
    ld [hl], a
    adc b
    rst $18
    jr nz, jr_07b_4721

jr_07b_4721:
    rst $38
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
    nop
    nop
    nop
    nop
    ld bc, $0000
    nop
    ld bc, $0100
    nop
    ld bc, $0000
    nop
    inc b
    inc b
    inc c
    inc c
    inc c
    inc e
    inc e
    inc c
    inc e
    inc c
    jr jr_07b_4768

    jr jr_07b_476a

    jr jr_07b_4768

    jr jr_07b_476a

    ld [$0800], sp
    nop
    nop
    nop

jr_07b_4768:
    nop
    nop

jr_07b_476a:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_07b_477c

jr_07b_477c:
    ld b, b
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
    nop
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
    ei
    ld [hl+], a
    db $dd
    inc h
    db $db
    inc b
    ei
    ccf
    ret nz

    or [hl]
    ld c, c
    cp l
    ld b, d
    ld a, a
    add b
    rst $28
    db $10
    rst $38
    nop
    ld [hl], a
    adc b
    sbc $21
    rst $30
    ld [$42bd], sp
    rst $28
    db $10
    or a
    ld c, b
    db $ed
    ld [de], a
    ld a, a
    add b
    rst $30
    ld [$0000], sp
    ld bc, $0200
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    nop
    nop

jr_07b_47cd:
    nop
    add hl, bc
    nop
    ld de, $0100
    nop
    ld [de], a
    nop
    add d
    nop
    and c
    nop
    xor d
    nop
    push bc
    nop
    rst $18

jr_07b_47df:
    nop
    ld a, c
    nop
    rrca
    nop
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nc, jr_07b_47cd

    jr nz, jr_07b_47df

    ret nz

    ccf
    ld b, b
    cp a
    add b
    ld a, a
    ldh a, [rIF]
    rst $18
    jr nz, jr_07b_487a

    sub b
    ld e, a
    and b
    ld a, d
    add l
    xor $11
    jp c, $fa25

    dec b
    ld [hl], a
    adc b
    xor $11
    ei
    inc b
    db $ed
    ld [de], a
    ld [hl], a
    adc b
    inc hl
    rra
    dec c
    rra
    dec c
    ld e, $1b
    ld c, $1a
    rrca
    ld b, [hl]
    rrca
    rra
    rlca
    ld b, a
    rlca
    ld bc, $0707
    inc bc
    add d
    inc bc
    ld [$1503], sp
    inc bc
    ccf
    ld bc, $011e
    ld e, $01
    and a
    nop
    dec de
    nop
    cpl
    nop
    xor a
    nop
    or a
    nop
    rrca
    nop
    ld l, a
    nop
    ld a, a
    nop
    cp a
    nop
    ld a, a
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
    ld a, a
    nop
    ccf
    nop
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
    add hl, de
    and $01
    cp $00
    rst $38
    ld [$06f7], sp
    ld sp, hl

jr_07b_487a:
    nop
    rst $38
    ld c, $f1
    ld bc, $08fe
    rst $30
    dec c
    ld a, [c]
    rlca
    ld hl, sp+$01
    cp $0f
    ldh a, [$0b]
    db $f4
    ld c, $f1
    rlca
    ld hl, sp-$73
    ld [hl], d
    rrca
    ldh a, [$65]
    sbc d
    and $19
    inc hl
    call c, $58a7
    xor d
    ld d, l
    rst $30
    ld [$2cd3], sp
    or a
    ld c, b
    di
    inc c
    xor e
    ld d, h
    db $e3
    inc e
    cp a
    ld b, b
    ld d, a
    xor b
    cp e
    ld b, h
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
    jr jr_07b_48e3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07b_48f3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07b_4903

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07b_4913

    ld [hl-], a

jr_07b_48e3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07b_4923

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_07b_48f3:
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

jr_07b_4903:
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

jr_07b_4913:
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

jr_07b_4923:
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
    ld l, b
    add [hl]
    add a
    adc b
    adc c
    ld l, b
    ld l, b
    adc d
    adc e
    adc h
    adc l
    adc [hl]
    adc a
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    sub b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    sub c
    sub d
    sub e
    adc d
    ld l, b
    ld l, b
    ld l, b
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    sbc c
    sbc d
    ld l, b
    ld l, b
    ld l, b
    sbc e
    sbc h
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    ld l, b
    ld l, b
    ld l, b
    ld l, b
    and d
    and e
    sbc b
    and h
    and l
    and [hl]
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    and a
    ld l, b
    ld l, b
    xor b
    xor c
    xor d
    xor e
    xor h
    sbc [hl]
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    xor l
    xor [hl]
    xor a
    or b
    or c
    or d
    or e
    or h
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    or l
    or [hl]
    or a
    cp b
    cp b
    cp b
    cp c
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    cp d
    cp e
    cp h
    cp b
    cp b
    cp b
    cp l
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc [hl]
    cp [hl]
    cp a
    ret nz

    cp b
    cp b
    pop bc
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    jp nz, $c4c3

    cp b
    cp b
    push bc
    add $9f
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    rst $00
    ret z

    ret


    cp b
    cp b
    jp z, $9fcb

    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    sbc a
    call z, $b8cd
    cp b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    inc b
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
    nop
    nop
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
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    nop
    nop
    nop
    ld b, h
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, d
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
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
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    nop
    inc b
    inc b
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
    inc b
    nop
    nop
    nop
    ld bc, $80ff
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    pop af
    cp $fd
    cp $fc
    rst $38
    cp $ff
    ccf
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    push af
    rst $38
    rla
    rst $38
    ld a, [bc]
    rst $38
    rra
    rst $38
    rla
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    or b
    ld a, a
    inc a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    add hl, bc
    rst $30
    add [hl]
    ld sp, hl
    ld h, d
    db $fd
    ld sp, $5cfe
    cp a
    ld l, $df
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $00fe
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
    ld b, b
    rst $38
    add b
    ld a, a
    ld b, b
    cp a
    and [hl]
    rst $18
    pop hl
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    ccf
    rst $38
    rrca
    rst $38
    and a
    rst $38
    ld hl, $00ff
    rst $38
    inc bc
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld [hl], b
    rst $38
    inc c
    rst $38
    sub b
    rst $38
    add [hl]
    rst $38
    ld c, $ff
    sbc [hl]
    rst $38
    dec sp
    rst $38
    sub d
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
    ld hl, sp-$01
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
    ld l, e
    rst $38
    ld c, $ff
    jp c, $f8ff

    rst $38
    rst $18
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    scf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld h, b
    sbc a
    nop
    rst $38
    ld hl, $a0de
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    jr nz, @+$01

    ld hl, sp-$01
    nop
    rst $38
    add e
    ld a, h
    dec l
    jp nc, $ff00

    ld [bc], a
    rst $38
    nop
    rst $38
    db $f4
    ld bc, $12ed
    ld bc, $43fe
    cp a
    ld a, a
    rst $38
    rst $38
    rst $38
    di
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], b
    adc a
    ccf
    rst $38
    sbc a
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add c
    cp $c0
    rst $38
    add sp, -$01
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, $ff
    rra
    rst $38
    rlca
    rst $38
    daa
    rst $38
    rrca
    rst $38
    inc b
    rst $38
    ld b, $ff
    ld bc, $01ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nc

    rst $38
    inc a
    rst $38
    sbc b
    ld a, a
    dec b
    rst $38
    inc bc
    rst $38
    dec h
    ei
    sub c
    cp $c0
    rst $38
    ld h, e
    rst $38
    add hl, sp
    rst $38
    inc a
    rst $38
    ld c, $ff
    ld b, a
    cp a
    inc bc
    rst $38
    add hl, bc
    rst $30
    inc c
    di
    ld [bc], a
    db $fd
    nop
    rst $38
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
    rst $38
    add b
    rst $38
    dec b
    ei
    ld b, b
    cp a
    add b
    rst $38
    add sp, -$09
    ldh a, [rIE]
    ld a, [hl]
    rst $38
    rra
    rst $38
    rrca
    rst $38
    daa
    rst $38
    dec e
    rst $38
    add hl, bc
    rst $38
    dec c
    rst $38
    jp $d1ff


    rst $38
    ld e, $ff
    adc [hl]
    rst $38
    cp d
    rst $38
    call c, $fcff
    rst $38
    ld a, b
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    cp $ff
    ld a, a
    rst $38
    ld e, a
    rst $38
    inc [hl]
    rst $38
    jr nc, @+$01

    jr nz, @+$01

    ldh [rIE], a
    ld [hl], h
    rst $38
    ei
    rst $38
    cp $ff
    cp a
    rst $38
    rlca
    rst $38
    dec sp
    rst $38
    sbc e
    rst $38
    ccf

jr_07b_4ced:
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ret nc

    rst $38
    add hl, de
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ret z

    rst $38
    inc bc
    rst $38
    nop
    rst $38
    ld e, e
    rst $38
    rst $38
    rst $38
    and b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    add sp, $17
    nop
    rst $38
    db $10
    rst $28
    ld b, b
    rst $38
    inc b
    ei
    ldh a, [rIF]
    jr nc, jr_07b_4ced

    rrca
    rst $38
    cp $ff
    jp $b7fc


    ret z

    ldh [rIE], a
    ld hl, sp-$01
    ld a, $ff
    rrca
    rst $38
    rlca
    rst $38
    ldh [rIE], a
    ldh [rIE], a
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ld hl, sp-$01
    and $ff
    db $e3
    rst $38
    ld b, e
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$04f7], sp
    ei
    nop
    rst $38
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
    dec b
    rst $38
    add l
    rst $38
    jp $c2ff


    rst $38
    add sp, -$01
    ldh a, [rIE]
    ld a, c
    rst $38
    cp l
    rst $38
    rst $18
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $01ff
    rst $38
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    jr nc, @+$01

    jr @+$01

    inc l
    rst $18
    ld b, $ff
    adc e
    rst $30
    ld h, l
    ei
    ld de, $90ff
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld [hl], c
    rst $38
    cp b
    ld a, a
    ld e, [hl]
    cp a
    daa
    rst $18
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
    ret nz

    ccf
    nop
    rst $38
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    db $fc
    rst $38
    rst $08
    rst $38
    rst $00
    rst $38
    db $d3
    rst $38
    add b
    rst $38
    ld b, $ff
    ld b, a
    rst $38
    daa
    rst $38
    and c
    rst $38
    sub d
    rst $38
    ld bc, $cfff
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    inc bc
    rst $38
    dec de
    rst $38
    ld [$c1ff], sp
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ldh a, [$fc]
    ei
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    inc bc

jr_07b_4df3:
    rst $38
    nop
    rst $38
    cp $ff
    jr nc, @+$01

    inc c
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ret nz

    ccf
    ld h, b
    sbc a
    nop
    rst $38
    nop
    rst $38
    jr nc, @-$2f

    ret nz

    ccf
    ld b, b
    cp a
    ld e, $ff
    ld b, $f9
    ld b, b
    cp a
    add d
    ld a, h
    rra
    ldh [$3f], a

jr_07b_4e27:
    ret nz

    db $fc
    inc bc
    jr c, jr_07b_4df3

    or d
    call $f7e8
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld hl, $00df
    rst $38
    sub b
    ld l, a
    ld d, b
    xor a
    jr jr_07b_4e27

    ld [$81f7], sp
    ei
    add c
    ei
    jp Jump_07b_40fd


    db $fd
    ld h, b
    rst $38

jr_07b_4e4c:
    jr nc, jr_07b_4e4c

    ld de, $18fe
    rst $38
    ld [$0cff], sp
    rst $38
    ld b, $ff
    ld b, $ff
    inc bc
    rst $38
    add e
    rst $38
    db $d3
    rst $38
    pop hl
    rst $38
    ld d, b
    rst $38
    db $10
    rst $38
    cp b
    rst $38
    ret nz

    rst $38
    ld h, c
    rst $38
    ld b, c
    rst $38
    inc bc
    rst $38
    add c
    rst $38
    add h
    rst $38
    jp nc, $f7ff

    rst $38
    ld hl, sp-$01
    ld a, b
    rst $38
    jr c, @+$01

    ld e, h
    rst $38
    inc l
    rst $38
    rla
    rst $38
    rrca
    rst $38
    rlca
    rst $38
    add e
    rst $38
    ld [hl], e
    rst $38
    ld sp, $19ff
    rst $38
    ld [$0cff], sp
    rst $38
    ld b, [hl]
    rst $38
    pop hl
    ld a, a
    jr nc, @+$01

    cp h
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    dec sp
    rst $38
    rra
    rst $38
    ld c, $ff
    inc bc
    rst $38
    ld bc, $00ff
    rst $38
    ld hl, $00ff
    rst $38
    nop
    rst $38
    ld bc, $11ff
    rst $38
    add hl, bc
    rst $38
    jr nz, @+$01

    ld [c], a
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    inc a
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp $ff
    sbc $ff
    call c, $fcff

jr_07b_4edb:
    rst $38
    cp b
    rst $38
    ld [$ffff], sp
    rst $38
    rst $38
    rst $38
    add hl, de
    rst $20
    rst $18
    pop hl
    rst $28
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
    rra
    rst $38
    ld bc, $3fff
    rst $38
    jr nz, jr_07b_4edb

    ld b, h
    cp e
    sbc a
    ldh [rTAC], a
    ld hl, sp-$23
    rst $38
    db $ed
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$18ff], sp
    cp $86
    ld sp, hl
    jr c, jr_07b_4edb

    and b
    rra
    db $e3
    rra
    ld c, $ff
    and d
    db $fd
    ld l, h
    add e
    ld bc, $fffe
    nop
    rst $28
    db $10
    add sp, $17
    or b
    ld c, a
    dec b
    ld a, [$fc03]
    add e
    ld a, h
    inc bc
    db $fc
    add b
    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    or h
    ei
    or b
    rst $38
    ld [de], a
    db $fd
    add hl, de
    cp $18
    rst $28
    inc b
    rst $38
    inc b
    rst $38
    add h
    rst $38
    and d
    rst $38
    jp nz, $c3ff

    rst $38
    inc bc
    rst $38
    add d
    ld a, a
    and d
    ld a, a
    ld b, a
    cp a
    ld bc, $90ff
    rst $38
    ld b, b
    rst $38
    ld [$80ff], sp
    rst $38
    add h
    rst $38
    call nz, Call_07b_64fb
    ei
    ld h, b
    rst $38
    jr nc, @+$01

    jr @+$01

    jr @+$01

    call z, $ccff
    rst $38
    adc $ff
    sbc d
    rst $38
    inc sp
    rst $38
    ld [hl], c
    rst $38
    ld h, c
    rst $38
    jp nz, $c0fd

    rst $38
    sub b
    rst $28
    ret nz

    cp a
    ld h, b
    sbc a
    inc b
    ei
    add c
    cp $c4
    ei
    push af
    ld [$f4eb], a
    or d
    db $fd
    ld e, d
    db $fd
    ld l, l
    cp $bc
    rst $38
    and [hl]
    rst $38
    ld c, a
    rst $38
    cpl
    rst $38
    add [hl]
    rst $38
    jp nc, $cdff

    rst $38
    rst $20
    rst $38
    ld a, [$fcff]
    rst $38
    cp $ff
    rst $38
    rst $38
    ld a, a
    rst $38
    cp a
    rst $38
    rra
    rst $38
    adc [hl]
    rst $38
    adc $fe
    db $fc

jr_07b_4fb9:
    cp $6e

jr_07b_4fbb:
    db $fc
    sbc b
    db $fc

jr_07b_4fbe:
    jr jr_07b_4fbe

    ld d, b
    ei
    jr nc, @+$01

    jr nz, jr_07b_4fbb

    ldh [$f8], a
    call nz, $c0f8
    rst $38
    sub b
    rst $20
    add c
    ld hl, sp+$00
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    jr nz, jr_07b_4fb9

    ld a, [bc]
    push af
    inc bc
    db $fc
    nop
    rst $38
    ld [$01f7], sp
    cp $80
    ld a, a
    ld bc, $0cfe
    di
    ld [bc], a
    db $fd
    nop

jr_07b_4fed:
    rst $38
    nop
    rst $38
    inc b
    ei
    ret nz

    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rla
    rst $28
    pop hl

jr_07b_4fff:
    rra
    db $fd
    ld [bc], a
    ld d, l
    rst $38
    ld [c], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    jr nz, jr_07b_4fed

    add b
    ld a, a
    nop
    rst $38
    inc bc
    rst $38
    ld a, $ff
    pop hl
    cp $23
    ret c

    jr jr_07b_4fff

    ld h, [hl]
    sbc c
    ld a, [bc]
    push af
    swap h
    ld hl, sp+$07
    ld a, b
    add a
    inc a
    jp $8976


    ccf
    ret nz

    ld a, [c]
    dec c
    ld b, d
    cp l
    db $10
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [$08ff], sp
    rst $38
    inc c
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    add [hl]
    ld a, a
    adc [hl]
    ld a, a
    dec de
    rst $38
    ld e, c
    cp a
    ld de, $31ff
    rst $38
    ld h, b
    rst $38
    ret nc

    rst $38
    ret nz

    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    and h
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    db $10
    rst $38
    jr @+$01

    ld [$04ff], sp
    rst $38
    inc b

jr_07b_5069:
    rst $38
    ld b, $ff
    add d
    rst $38
    bit 7, a
    ld c, l
    rst $38
    dec l
    rst $38
    db $10
    rst $38
    inc [hl]
    rst $18
    add h
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ld b, d
    rst $38
    db $e3
    ld a, a
    jr nz, @+$01

    add hl, sp
    rst $38
    jr @+$01

    jr c, jr_07b_5069

    inc c
    rst $38
    dec b
    rst $38
    ld b, d
    cp a
    jp nz, Jump_000_033f

    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    db $fd
    call nz, Call_07b_60f8
    ld hl, sp+$70
    ldh a, [rNR41]
    ldh a, [rNR41]
    ldh [$c0], a
    ldh [rLCDC], a
    ldh [$80], a
    ret nz

    add b
    add b
    nop
    add b
    nop
    ld b, b
    nop
    add b
    nop
    ld [hl], b
    nop
    db $10
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh [rP1], a
    ret nz

    nop
    nop
    nop
    inc b
    add c
    nop
    nop
    ret nz

    ld b, b
    jr nc, jr_07b_50e1

    inc c
    nop
    add e
    nop
    jp nz, $e000

    nop
    ldh a, [rP1]
    db $f4
    add b

jr_07b_50dd:
    ld a, [hl]
    nop
    ld l, a
    ld d, b

jr_07b_50e1:
    adc a
    nop
    rst $20
    ld bc, $06f0
    ld hl, sp+$40
    sbc [hl]
    inc b
    ei
    ld [hl+], a
    db $dd
    db $10
    rst $08
    ld [de], a
    push hl
    ld [bc], a
    db $fc
    nop
    rst $38
    jr nz, @-$1f

    add h
    ei
    pop hl

jr_07b_50fb:
    cp $f8
    rst $38
    cp $ff
    ccf
    rst $38
    cp a
    rst $38
    ld b, a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc bc
    rst $38
    ld e, $ff
    nop
    rst $38
    adc a
    ld a, a
    ldh [rIE], a
    jr c, jr_07b_50dd

    ld [hl], b
    rrca
    ld c, b
    or a
    jr nz, jr_07b_50fb

    nop
    rst $38
    ld h, c
    sbc [hl]
    ret nc

    cpl
    ld [$04f7], sp
    ei
    add hl, sp
    add $72
    adc h
    pop de
    inc l
    rrca
    pop af
    dec hl
    rst $00
    ld d, h
    cp e
    inc d
    ei
    inc c
    ei
    ld a, [bc]
    db $fd
    dec bc
    db $fc
    ld c, $fd
    ld b, $fd
    inc b
    rst $38
    ld [bc], a
    rst $38
    ld bc, $02fe
    rst $38
    ld [bc], a
    rst $38
    add e
    rst $38
    add c
    rst $38
    adc c
    rst $30
    add c
    rst $38
    jp nz, $c2ff

    rst $38
    ld b, b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    ld h, c
    cp a
    ld sp, $10ff
    rst $38
    ld e, b
    cp a
    ld [$0cff], sp
    rst $38
    ld [$04ff], sp
    rst $38
    inc b
    rst $38
    ld d, h
    rst $28
    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    add e
    rst $38
    add c
    rst $38
    add c
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    and b
    rst $38
    db $10
    rst $38
    ld d, b
    rst $38
    ret c

    rst $38
    xor b
    rst $38
    jr c, @+$01

    ld l, l
    rst $38
    ld l, l
    rst $38
    cpl
    rst $38
    ld a, $ff
    sbc a
    rst $38
    sbc a
    rst $38
    rst $08
    rst $38
    rst $18
    rst $38
    ld a, a
    rst $38
    ld [hl], a
    rst $38
    inc e
    ld a, a
    ld bc, $001e
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
    jr nz, jr_07b_51ce

jr_07b_51ce:
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

    ld b, b
    nop
    nop
    nop
    inc b
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld h, b
    nop
    or b
    nop
    ld a, h
    nop
    dec bc
    nop
    ld b, b
    nop
    ret nz

    ld [$4070], sp

jr_07b_51f1:
    adc b
    ld d, d
    add h
    jr nz, jr_07b_5208

    ld [$24c0], sp
    ret nc

    jr nz, @+$4e

    ld c, h
    or d
    nop
    di
    add b
    ld sp, hl
    ld [c], a
    db $fd
    ld hl, sp-$01
    cp $ff

jr_07b_5208:
    ld a, d
    rst $38
    ld a, [de]
    rst $38
    ld c, a
    rst $38
    ldh a, [rIE]
    jr nz, jr_07b_51f1

    db $10
    rst $28
    ld [$03f7], sp
    db $fc
    jp nz, $cd3d

    ld [hl-], a
    call nc, $7b2a
    add h
    ld b, h
    cp c
    dec c
    di
    dec de
    rst $20
    rst $28
    rra
    ld a, [hl]
    ccf
    ld a, h
    rst $38
    ld sp, hl
    cp $e2
    db $fd
    xor h
    ld a, a
    ld [$08ff], sp
    rst $38
    ld b, b
    cp a
    jr nc, @-$1f

    or h
    ld e, a
    ld b, b
    cp a
    add b
    ld a, a
    adc b
    ld a, a
    ld c, b
    cp a
    ld c, b
    cp a
    ld [$00ff], sp
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    push bc
    cp a
    jp $82bf


    rst $38
    and d
    rst $18
    ld h, d
    rst $18
    ld h, [hl]
    rst $18
    ld b, c
    rst $38
    ld h, b
    rst $38
    ld h, l
    rst $38
    dec h
    rst $38
    dec h
    rst $38
    ld b, b
    rst $38
    ld d, b
    rst $38
    jr @+$01

    jr nc, @+$01

    ld d, b
    rst $38
    ld c, b
    rst $38
    ld c, b
    rst $38
    ld [hl], c

jr_07b_5275:
    rst $38
    ld hl, $85ff
    rst $38
    sbc a
    rst $38
    sbc $ff
    ld b, a
    cp $5f
    cp $6e
    db $fd
    dec c
    cp $35
    ld a, [$fa3c]
    ld a, [de]
    db $f4
    ld [hl-], a
    db $f4
    inc [hl]
    add sp, $70
    add sp, -$40
    ld hl, sp-$18
    ret nc

    add b
    ldh a, [$d0]
    and b
    nop
    ldh [$80], a
    ld b, b
    nop
    ret nz

    ld b, b
    add b
    ld b, b
    add b
    nop
    ldh [rP1], a
    jr jr_07b_52a9

jr_07b_52a9:
    rlca
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
    cp $00
    cp $03
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rra
    rst $38
    nop
    rra
    db $10
    rra
    nop
    ld e, $00
    nop
    nop
    nop

jr_07b_52ca:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    ld [$0800], sp
    nop
    ld [$1000], sp
    nop
    jr nc, jr_07b_5275

    jr nz, jr_07b_52f7

jr_07b_52f7:
    ld h, b
    nop
    ld b, b
    nop
    ld b, b
    nop
    add b
    nop
    add b
    nop
    add b
    add b
    add b
    nop
    add b
    add b
    nop
    jr nz, jr_07b_52ca

    ret nz

    ldh a, [$c6]
    ld hl, sp+$00
    rst $38
    ld de, $00ff
    rst $38
    ld bc, $8cfe
    ld [hl], e
    inc hl
    rst $18
    add a
    ld a, a
    sbc [hl]
    ld a, a
    cp b
    ld a, a
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    ld b, l
    cp d
    ld b, d
    cp l
    sbc b
    ld h, a
    inc l

Jump_07b_532d:
    db $d3
    ld [hl], b
    adc a
    ld [hl], b
    adc a
    ld h, b
    sbc a
    ret nc

    xor a
    add sp, -$69
    or b
    rst $08
    sub c
    rst $28
    inc h
    rst $18
    dec h
    rst $18
    ld b, h
    rst $38
    ld [hl], c
    rst $08
    ld b, b
    rst $38
    ld d, b
    rst $28
    ld [de], a
    rst $28
    ld [de], a
    rst $28
    ld [de], a
    rst $28
    ld [hl-], a
    rst $28
    ld [hl-], a
    rst $28
    ld [hl+], a
    rst $38
    ld [hl+], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld d, d
    rst $38
    ld [hl], d
    rst $38
    ld a, [c]
    rst $38
    ld l, h
    rst $38
    inc l
    rst $38
    ld a, c
    cp $38
    cp $b2
    db $fc
    sub b
    db $fc
    db $e4
    ld hl, sp+$60
    ld hl, sp-$40
    ldh a, [$c0]
    ldh a, [$90]
    ldh [$80], a
    ldh [rNR41], a
    ret nz

    nop
    ret nz

    ld b, b
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
    nop
    nop
    ret nz

    nop
    jr c, jr_07b_539f

jr_07b_539f:
    ld b, $01
    sbc a

jr_07b_53a2:
    nop
    ld l, a
    add b
    ld [hl], a
    ret


    scf
    pop af
    rrca
    ld [c], a
    sbc a
    ld [c], a
    rst $38
    add $ff
    ld [bc], a
    add h
    nop
    ld b, $00
    ld c, $00
    ld c, $02
    inc e
    inc b
    jr jr_07b_53bd

jr_07b_53bd:
    stop
    jr nz, jr_07b_53c1

jr_07b_53c1:
    jr nz, jr_07b_53c3

jr_07b_53c3:
    ld b, b
    nop
    ld b, b
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
    add b
    nop
    jr nz, jr_07b_53a2

    ld [$72f0], sp
    db $fc
    ld [c], a
    rst $38
    adc d
    rst $38
    ld [bc], a
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld b, b
    cp a
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
    nop
    rst $38
    ldh [$1f], a
    nop
    rst $38
    ld bc, $00ff
    rst $38
    add d
    rst $38
    inc bc
    rst $38

jr_07b_540a:
    ld b, $ff
    ld b, $ff
    inc c
    rst $38
    adc h
    rst $38
    adc c
    cp $08
    cp $30
    db $fc
    ldh a, [$fc]
    ld h, h
    ld hl, sp-$20
    ld hl, sp+$68
    ldh a, [$c0]
    ldh a, [$d0]
    ldh [$80], a
    ldh [rNR41], a
    ret nz

    nop
    ret nz

    ld b, b
    add b
    nop
    add b
    nop
    add b
    add b
    rst $38
    add b
    rst $38
    add c
    cp $01
    cp $03
    db $fc
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
    add b
    nop
    jr nz, jr_07b_540a

    ld [$1af0], sp
    db $fc
    inc e
    ei
    jr @+$01

    jr nc, @+$01

    jr nc, @+$01

    jr nz, @+$01

    add hl, sp
    or $35
    ld a, [$f877]
    ld h, c
    cp $d0
    ldh [$80], a
    ldh [$a0], a
    ret nz

    nop
    ret nz

    nop
    ret nz

    ld b, b
    add b
    nop
    add b
    add b
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
    ld bc, $01fe
    cp $01
    cp $02
    db $fc
    ld [bc], a
    db $fc
    dec b
    ld hl, sp+$05
    ld hl, sp+$05
    ld hl, sp+$0b
    ldh a, [$0b]
    ldh a, [rNR22]
    ldh [rNR22], a
    ldh [rNR22], a
    ldh [$2f], a
    ret nz

    cpl
    ret nz

    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    cp a
    nop
    cp a
    nop
    ld a, a
    nop
    ld a, a
    nop
    ccf
    nop
    rst $00
    nop
    add hl, sp
    ret nz

    ld b, $f8
    ld bc, $00fe
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_07b_54bb:
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
    ret nz

    nop
    nop
    ldh [rDIV], a
    ld hl, sp+$05
    cp $45
    cp a
    ld [bc], a
    rst $38
    jr nz, jr_07b_54bb

    ld [bc], a
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    cp $01
    cp $02
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    dec b
    ld hl, sp+$05
    ld hl, sp+$0b
    ldh a, [$0b]
    ldh a, [rNR22]
    ldh [rNR22], a
    ldh [rNR22], a
    ldh [$2f], a
    ret nz

    cpl
    ret nz

    ld e, a
    add b
    ld e, a
    add b
    ld e, a
    add b
    cp a
    nop
    cp a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    rst $08
    nop
    inc sp
    ret nz

    inc c
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
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0100
    nop
    ld bc, $0300
    nop
    rlca
    nop
    rlca
    ld [bc], a
    rrca
    jr jr_07b_5585

    ld a, [hl]
    sbc a
    rst $18
    rst $38
    rra
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    ld bc, $02fe
    db $fc
    ld [bc], a
    db $fc
    ld [bc], a
    db $fc
    dec b
    ld hl, sp+$05
    ld hl, sp+$0b
    ldh a, [$0b]
    ldh a, [$0b]
    ldh a, [rNR22]
    ldh [rNR22], a

jr_07b_5585:
    ldh [$2f], a
    ret nz

    cpl
    ret nz

    cpl
    ret nz

    ld e, a
    add b
    ld e, a
    add b
    cp a
    nop
    cp a
    nop
    cp a
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
    ld a, a
    nop
    sbc a
    nop
    ld h, e
    add b
    inc e
    ldh [$03], a
    db $fc
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
    ld bc, $0300
    nop
    rrca
    nop
    rra
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
    rst $38
    ld bc, $03ff
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc hl
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
    rst $08
    rst $38
    di
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    cpl
    ret nz

jr_07b_55f2:
    cpl
    ret nz

    ld e, a
    add b
    ld e, a
    add b
    cp a
    nop
    cp a
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    nop
    rst $20
    nop
    jr jr_07b_55f2

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
    inc b
    ld bc, $211f
    ccf
    ld hl, $337f
    ld a, a
    ccf
    rst $38
    ld e, $fe
    ld e, $fe
    ld a, $fe
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    nop
    rst $08
    nop
    ld sp, $0ec0
    ldh a, [rSB]
    cp $00
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
    sbc e
    rst $38
    sub a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $db
    ccf
    ei
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
    nop
    ld a, a
    nop
    adc a
    nop
    ld [hl], e
    add b
    inc c
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
    inc b
    rra
    cp $ff
    jr nz, @+$01

    ld b, b
    rst $38
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp $c1
    ccf
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc a
    nop
    ld h, e
    add b
    inc e
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
    nop
    nop
    nop
    nop
    nop
    nop
    rlca
    nop
    rst $38
    ld e, $ff
    and b
    rst $38
    ld h, c
    rst $38
    ld c, e
    rst $38
    ld hl, sp-$01
    db $fd
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
    ld a, d
    ld bc, $007f
    rst $38
    nop
    rst $38
    add b
    sbc a
    ld h, b
    db $eb
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
    ccf
    nop
    rst $00
    nop
    add hl, sp
    ret nz

    ld b, $f8
    ld bc, $00fe
    nop
    nop
    nop
    nop
    nop
    nop
    rst $38
    add b
    rst $38
    nop
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    adc b
    rst $38
    rst $38
    rst $38
    adc a
    rst $38
    add e
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    and b
    ld e, a
    ret nc

    cpl
    db $e4
    dec de
    ldh a, [rIF]
    ld [$bf05], a
    nop
    ld [bc], a
    nop
    db $f4
    nop
    ei
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
    nop
    rst $38
    nop
    rst $38
    nop
    ccf
    nop
    rst $08
    nop
    inc sp
    ret nz

    inc c
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
    rst $38
    pop bc
    rst $38
    ld a, l
    rst $38
    sub $ff
    rst $38
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
    ld a, a
    ld b, b
    cp a
    or b
    ld c, a
    ld e, h
    inc bc
    adc h
    inc bc
    ld hl, $c000
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
    pop de
    rst $38
    inc hl
    rst $38
    pop bc
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
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
    rlca
    ld [$0a09], sp
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
    dec d
    ld d, $17
    jr jr_07b_5866

    ld a, [de]
    dec de
    inc e
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    dec e
    ld e, $1f
    jr nz, jr_07b_587e

    ld [hl+], a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop

jr_07b_5866:
    nop
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07b_586e

jr_07b_586e:
    nop
    nop
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
    ld l, $00

jr_07b_587e:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    cpl
    jr nc, jr_07b_58bb

    ld [hl-], a
    inc sp
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07b_58d5

    nop
    nop
    nop
    nop
    nop
    nop
    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    nop
    nop
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
    ld b, c
    ld c, e

jr_07b_58bb:
    nop
    nop
    nop
    nop
    nop
    nop
    ld c, h
    ld c, l
    ld c, [hl]
    ld c, a
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld b, c
    ld d, h
    ld d, l
    ld d, [hl]
    nop
    nop
    nop
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e

jr_07b_58d5:
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
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
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
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
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
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld h, l
    ld a, d
    ld a, e
    ld a, h
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    add e
    add h
    add l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    adc h
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    sub e
    sub h
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
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
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    ld b, c
    sbc a
    and b
    adc h
    and c
    and d
    and e
    and h
    and l
    and [hl]
    ld l, e
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
    inc b
    ld bc, $0001
    nop
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
    inc b
    inc b
    inc bc
    ld bc, $0006
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
    inc b
    ld bc, $0101
    ld b, $04
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0606
    rlca
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    rlca
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    inc b
    inc b
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
    inc b
    nop
    nop
    inc b
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
    inc b
    nop
    inc b
    inc b
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
    inc b
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    inc b
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    nop
    inc b
    inc b
    inc b
    nop
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    inc b
    inc b
    inc b
    ld bc, $0101
    rlca
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    inc b
    rlca
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    rlca
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0101
    ld bc, $0101
    inc bc
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc b
    inc b
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
    nop
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
    cp $ff
    ei
    db $fc
    ld l, e
    ldh a, [rIF]
    ldh [rNR34], a
    pop hl
    ld e, a
    and b
    adc a
    ldh a, [$8f]
    ldh a, [$87]
    ld hl, sp-$19
    ld hl, sp-$1d
    db $fc
    di
    db $fc
    ld sp, hl
    cp $fc
    rst $38
    cp $ff
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rra
    nop
    ld c, a
    nop
    rrca
    nop
    rla
    nop
    dec de
    nop
    dec de
    nop
    ld c, l
    nop
    ld b, h
    nop
    ld h, $00
    inc de
    nop
    ld bc, $0c00
    nop
    inc b
    nop
    add d
    nop
    add d
    nop
    ld h, c
    nop
    nop
    nop
    stop
    ld [$0c00], sp
    nop
    inc b
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
    ld bc, $0f01
    rrca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rlca
    rst $38
    jp $c73f


    dec sp
    ld b, l
    cp e
    ld c, l
    rst $38
    call $c6ff
    rst $38
    ld b, $ff
    jp Jump_07b_633f


    sbc a
    dec c
    inc sp
    pop de
    inc hl
    db $e3
    nop
    rst $38
    nop
    nop
    ld sp, hl
    jr @-$1b

    ld a, [de]
    push hl
    ld a, a
    add b
    ld a, [hl]
    add c
    cp $81
    cp a
    ret nz

    cp [hl]
    pop bc
    add c
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
    rra
    rst $38
    rrca
    ccf
    ld c, $7f
    ld b, $ff
    ld b, $d7
    inc b
    ld a, a
    ld [bc], a
    ccf
    ld [bc], a
    ccf

jr_07b_5b60:
    ld bc, $01cf
    rst $10
    nop
    ld l, a
    nop
    ld h, l
    nop
    inc hl
    nop
    dec de
    nop
    dec bc
    nop
    add a
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    jp nz, Jump_000_04fd

    ei
    sbc b
    ld h, a
    ret nz

    ccf
    pop hl
    ld e, $42
    sbc h
    jr c, jr_07b_5b60

    jr nz, @-$3e

    nop
    ldh [rNR11], a
    ldh [rSB], a
    ldh a, [rSB]
    ldh a, [rNR22]
    ldh [$e2], a
    inc c
    and c
    ld e, $a6
    ld e, a
    dec e
    cp $36
    ld hl, sp-$79
    ld hl, sp-$37
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
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    ld b, b
    rst $38
    jr nz, @+$01

    jr nz, @-$3f

    nop
    nop
    nop
    nop
    nop
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
    rst $38
    rst $38
    adc a
    di
    rlca
    ld sp, hl
    ld bc, $12fc
    db $fc
    dec sp
    db $fc
    ld a, l
    cp $7f
    cp $26
    rst $38
    add e
    ld a, a
    inc bc
    ld a, a
    ld b, e
    ccf
    ld bc, $433f
    ccf
    rst $30
    inc e
    xor $18
    db $f4
    nop
    add sp, $00
    and c
    nop
    push af
    inc bc
    add a
    ld a, a
    ld c, [hl]
    cp [hl]
    inc a
    db $fc
    ld a, b
    ld hl, sp-$10
    ldh a, [$c0]
    ret nz

    add b
    add b
    add b
    add b
    ldh a, [$80]
    ldh [rP1], a
    ldh [rP1], a
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
    nop
    nop
    nop
    nop

jr_07b_5c64:
    nop
    nop
    ld bc, $0f01
    rrca
    ccf
    ccf
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc c
    rst $38
    ld b, b
    cp $00
    or $80
    rst $28
    nop
    or a
    nop
    dec sp
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
    rst $38
    nop
    rst $38
    nop
    cp $7f
    rst $38
    cp a
    ld a, a
    rst $18
    ccf
    ld e, [hl]
    cp [hl]
    ld l, h
    sbc h
    jr nc, jr_07b_5c64

    sub b
    add sp, -$28
    ldh [$b8], a
    ret nz

    ld a, b

Call_07b_5ca3:
    add b
    ldh a, [rP1]
    ldh [rP1], a
    ldh [rNR41], a
    ldh [$60], a
    ldh [$e0], a
    ret nz

    ret nz

    db $fc
    add b
    ldh a, [rP1]
    ldh [rP1], a
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
    nop
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
    cp $ff
    db $fc
    rst $38
    ld b, b
    db $f4
    nop
    call nz, $6e00
    nop
    ld b, $00
    ld h, $00
    ld [hl], a
    nop
    cp a
    nop
    cp a
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    pop af
    rst $38
    rst $00
    rst $38
    sbc a
    cp $3f
    ld hl, sp+$7f
    ldh a, [rIE]
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
    cp $00
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
    inc bc
    inc bc
    rrca
    rrca
    ccf
    ccf
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$20fc], sp
    ld hl, sp-$80
    ldh a, [rP1]
    add b
    nop
    jr jr_07b_5d3f

jr_07b_5d3f:
    add hl, bc
    nop
    add hl, de
    nop
    ld c, a
    nop
    ld c, a
    nop
    rst $18
    nop
    ld a, a
    nop
    ld a, [hl]
    nop
    db $fc
    nop
    pop af
    rst $00
    rst $38
    adc a
    cp $3f
    db $fc
    ld a, a
    ldh a, [rIE]
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
    db $fc
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    pop af
    rst $38
    add b
    pop bc
    nop
    inc bc
    nop
    ld bc, $6900
    nop
    ld l, l
    nop
    ld l, c
    nop
    ld [hl], a
    nop
    ld a, a
    ld a, [hl]
    rst $38
    db $fc
    rst $38
    or b
    rst $38
    db $e3
    rst $38
    add a
    cp $1f
    ld hl, sp+$7f
    ldh a, [rIE]
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
    cp $00
    ld hl, sp+$00
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
    ld bc, $0701
    rlca
    rra
    rra
    ld a, a
    ld a, a
    inc bc
    rst $38
    inc c
    cp $10
    ld hl, sp+$40
    add sp, $00
    ret


    nop
    ld a, [bc]
    nop
    nop
    nop
    inc c
    ld c, a
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    jp $8fff


    cp $1f
    db $fc
    ld a, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    ldh a, [rP1]
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
    rrca
    rrca
    inc a
    ccf
    scf
    jr c, jr_07b_5e78

    ld [hl-], a
    scf
    ld a, [hl-]
    ld [hl], $38
    ld [hl], $38
    ld a, $30
    ld [hl], $38
    ld [hl], $38
    ld [hl], $38
    ld [hl], $38
    ld a, $30
    ld [hl-], a
    inc a
    ld [hl], $38
    inc sp
    inc a
    inc sp
    inc a
    dec [hl]
    ld a, [hl-]
    ld de, $111e
    ld e, $11
    ld e, $11
    ld e, $11
    ld e, $11
    ld e, $19
    ld e, $19
    ld e, $19
    ld e, $18
    rra
    inc e
    ld e, $10
    rra
    jr jr_07b_5e8f

    jr jr_07b_5e91

    inc e
    rra
    jr jr_07b_5e95

    ld a, [hl]
    ld a, a

jr_07b_5e78:
    cp $ff
    cp $ff
    cp $ff
    cp $ff
    nop
    sbc [hl]
    nop
    sbc $00
    sbc $00
    rst $18
    nop
    ld e, a
    nop
    rst $38
    nop
    rst $38
    nop

jr_07b_5e8f:
    rst $38
    rst $38

jr_07b_5e91:
    rst $38
    cp $ff
    adc h

jr_07b_5e95:
    rst $38
    rra
    rst $38
    rst $38
    ldh a, [rIE]
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
    nop
    rst $38
    nop
    rst $38

jr_07b_5eb5:
    nop
    rst $38
    nop
    cp $00
    ldh a, [rP1]
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
    ld bc, $1f01
    rra
    ld hl, sp-$01
    ret nz

    rst $38
    jr nz, jr_07b_5eb5

    and a
    ld e, b
    ei
    nop
    or a
    nop
    ld d, h
    rrca
    db $dd
    ld h, $bd
    ld b, [hl]
    db $fd
    ld b, $fd
    ld b, $fd
    ld b, $fd
    ld b, $fb
    inc b
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $fc
    inc bc
    ei
    inc b
    db $fc
    rlca
    push af
    ld c, $77
    adc h
    db $f4
    adc a
    ld hl, sp-$71
    ret nz

    cp a
    ld b, b
    cp a
    pop de
    cpl
    ld b, [hl]
    cp a
    inc d
    rst $38
    ld h, b
    rst $38
    add h
    rst $38
    nop
    add h
    nop
    add l
    nop
    add [hl]
    nop
    adc [hl]
    nop
    rlca
    nop
    add a
    nop
    adc a
    nop
    sbc e
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
    db $fd
    nop
    pop af
    nop
    rst $20
    adc a
    db $fc
    ccf
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld e, $1e
    ld [c], a
    cp $82
    cp $02
    cp $02
    cp $62
    sbc [hl]
    ld [$8a1e], a
    ld a, [hl]
    ld b, $fe
    call z, $c43c
    inc a
    call nz, $c43c
    inc a
    call z, $dc3c
    inc a
    call c, $dc3c
    ld a, h
    call c, $cc7c
    ld a, h
    ret z

    ld a, b
    sbc b
    ld a, b
    cp b
    ld a, b

jr_07b_5f86:
    cp b
    ld a, b

jr_07b_5f88:
    cp b
    ld a, b

jr_07b_5f8a:
    cp b
    ld a, b

jr_07b_5f8c:
    jr c, jr_07b_5f86

    jr c, jr_07b_5f88

    jr c, jr_07b_5f8a

    jr c, jr_07b_5f8c

    ld a, e
    ei
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
    rst $38
    nop
    db $fd
    nop
    cp l
    nop
    cp $00
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ldh a, [rIE]
    ldh a, [$7f]
    ldh a, [rIE]
    ldh [rIE], a
    add b
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
    db $fc
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
    ld bc, $0301
    inc bc
    rlca
    rlca
    rrca
    ld c, $1f
    dec e
    ccf
    dec sp
    ld a, a
    ld [hl], a
    rst $38
    rst $28
    ld a, a
    ld [hl], a
    ccf
    dec sp
    rra
    inc e
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
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
    rlca
    nop
    rlca
    nop
    rlca
    nop
    rlca
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
    di
    rst $38
    push af
    ei
    di
    db $fc
    rst $30
    ld hl, sp+$70
    rst $38
    ld d, b
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh [rIE], a
    ldh a, [rIE]
    ret nc

    ld a, a
    ldh [$1f], a
    ld hl, sp+$1f
    db $fc
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    ld a, c
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    inc bc
    inc bc
    rlca
    rlca
    rrca
    ld c, $1f
    dec e
    ccf
    dec sp
    ld a, a
    ld [hl], a
    rst $38
    rst $28
    rst $38
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
    ld [hl], a
    ccf
    add hl, sp
    rra
    ld e, $0f
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
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
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $18
    ccf
    rst $20
    rra

Call_07b_60f8:
    rrca
    di
    dec bc
    db $f4
    inc bc
    db $fc
    nop
    rst $38
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $2100
    nop
    ld hl, $6200
    add b
    db $e3
    ld sp, hl
    rst $38
    ld sp, hl
    ld a, a
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rlca
    rst $38
    ld bc, $01ff
    rst $38
    rlca
    rst $38
    inc e
    rst $38
    inc e
    rst $38
    db $10
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    ld c, $ff
    dec e
    ccf
    dec sp
    ld a, a
    ld [hl], a
    rst $38
    rst $08
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $fe
    db $fc
    db $fc
    ld hl, sp-$04
    ld hl, sp-$04
    ld hl, sp-$0d
    db $f4
    db $eb
    db $ec
    ld e, l
    ld e, [hl]
    cp c
    cp d
    ldh a, [$f1]
    ldh [$e1], a
    ret nz

    pop bc
    nop
    nop
    rst $38
    nop
    ccf
    nop
    rra
    nop
    rrca
    nop

jr_07b_6178:
    rlca
    nop
    rlca
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
    rst $18
    rst $38
    ld a, a
    rst $38
    nop
    rst $30
    nop
    ld sp, hl
    nop
    db $fc
    nop
    cp $00
    rst $30
    jr nz, jr_07b_6178

    ld b, b
    jp nc, $fb00

    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    rst $38
    rst $38
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
    add b
    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    inc a
    rst $38
    sbc $ff
    rst $20
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
    rst $38
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$02
    ld hl, sp-$0c
    ld hl, sp-$18
    ldh a, [$d0]
    ldh [rNR41], a
    ret nz

    ld b, b
    add c
    add b
    inc bc
    nop
    rlca
    inc bc
    rrca
    rla
    rrca
    cpl
    rra
    rra
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, a
    ccf
    ld e, $3f
    inc a
    rra
    jr z, jr_07b_622b

    sub b
    rrca
    add b
    rrca
    ld a, $c7
    add hl, de
    ld h, [hl]
    rrca
    ld [hl], b
    daa
    jr c, jr_07b_624c

    inc a
    ld a, c
    ld a, [hl]
    ld a, h
    ld a, a
    ld a, [hl]
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

jr_07b_622b:
    ccf
    rst $38
    ccf
    rst $38
    ccf
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
    ld bc, $0bff
    db $fc
    adc c
    cp $82
    db $fd
    ret nc

    rst $38
    add l
    rst $38
    sub a
    rst $38
    ei
    rst $38
    rst $38
    rst $38

jr_07b_624c:
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    ld a, a
    rst $38
    rra
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
    add b
    add b
    ldh [$e1], a
    ldh a, [$f3]
    add hl, sp
    ld a, $d3
    call c, $ffe0
    adc $f1
    sbc a
    ldh [$c5], a
    nop
    db $e3
    nop
    ld c, $01
    add h
    inc bc
    add sp, $07
    dec sp
    rlca
    dec bc
    scf
    rlca
    ld a, a
    daa
    rst $38
    ld h, a
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    xor $ff
    db $ec
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ret nz

    rst $38
    add b
    rst $38
    rlca
    ld hl, sp+$07
    ldh a, [$09]
    ldh [rNR14], a
    ret nz

    ld d, d
    add b
    xor e
    nop
    and h
    nop
    sub e
    nop
    ld d, l
    nop
    ld c, e
    nop
    add hl, hl
    nop
    dec h
    nop
    inc d
    nop
    add a
    nop
    pop bc
    nop
    pop hl
    add b
    ldh a, [$c0]
    db $fc
    ldh [$fe], a
    ld hl, sp-$01
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    rst $00
    ccf
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    ret nz

    rst $38
    add sp, -$01

Call_07b_62dc:
    ld hl, sp-$01
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
    inc a
    ccf
    ld [$021f], sp
    ld a, a
    adc $01
    add l
    inc bc
    ld l, l
    inc bc
    dec e
    inc bc
    inc sp
    rrca
    ld h, a
    rra
    rst $00
    ccf
    sub a
    ld a, a
    rla
    rst $38
    ld [hl], a
    rst $38
    ld a, a
    rst $38
    db $76
    rst $38
    cp $ff
    db $fc
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    ret nz

    rst $38
    add e
    db $fc
    add e
    db $fc
    add e
    db $fc
    rlca
    ld hl, sp+$0f
    ldh a, [$3f]
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
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

Jump_07b_633f:
    nop
    ld a, a
    nop
    rst $38
    nop
    ld a, a
    nop
    ld e, a
    nop
    rra
    nop
    push bc
    nop
    ld [$fd00], a
    ret nz

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
    ld hl, sp-$01
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rra
    rst $38
    ld l, a
    sbc a
    inc de
    rst $28
    ld b, $f9
    nop
    rst $38
    ldh a, [rIE]
    db $fc
    rst $38
    db $fc
    rst $38
    cp $ff
    ld bc, $1eff
    pop hl
    ld a, a
    add b
    ld a, a
    add b
    ccf
    ret nz

    rla
    add sp, $07
    ld hl, sp+$0f
    ldh a, [$1f]
    ldh [rNR22], a
    add sp, -$71
    ldh a, [$cf]
    ldh a, [$df]
    ldh [$ef], a
    ldh a, [rVBK]
    ldh a, [rIF]
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$7e], a

jr_07b_639d:
    add c
    ld a, h
    add e
    ld hl, sp+$07
    ei
    inc b
    rst $38
    nop
    ei
    inc b
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
    cp $00
    cp $00
    ld sp, hl
    nop
    dec bc
    db $f4
    rla
    add sp, $17
    add sp, $2e
    ret nc

    xor c
    ld d, b
    jr nc, jr_07b_639d

jr_07b_63dc:
    jp nz, $b401

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
    db $fc
    inc bc
    rlca
    rlca
    ld [bc], a
    dec b
    ld bc, $0206
    inc bc
    ld bc, $0001
    nop
    nop
    nop
    add b
    add b
    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    cp $ff
    rst $38

jr_07b_6408:
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
    inc hl
    rst $38
    ld a, [bc]
    rst $30
    sub b
    rst $28
    jp $31fc


    cp $cc
    ccf
    di
    rrca
    db $fc
    inc bc
    db $fc
    inc bc

jr_07b_6424:
    ld hl, sp+$07
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    nop
    rst $38
    nop
    cp $01
    db $fc
    inc bc

jr_07b_6436:
    ld sp, hl
    ld b, $e7
    jr jr_07b_6408

    jr nc, jr_07b_63dc

    ld h, b
    ccf
    ret nz

    rst $38
    nop
    rst $18
    jr nz, jr_07b_6424

    jr nz, jr_07b_6436

    db $10
    swap h
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    rst $10
    jr z, @+$01

    nop
    rst $38
    nop
    sbc $20
    ld a, [hl]
    add b
    ld a, d
    add b
    ld sp, hl
    nop
    push af
    nop
    jp hl


    nop
    db $e3
    nop
    and e
    nop
    rst $00
    ld bc, $018b
    sub a
    inc bc
    rrca
    rlca
    rra
    rlca
    rra
    rlca
    ccf
    rrca
    ccf
    rra
    cp a
    ccf
    ld a, a
    ld a, a
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ldh a, [$f0]
    adc b
    cp $f7
    ld sp, hl
    db $f4
    ei
    cp a
    ld a, a
    ld l, a
    sbc a
    sbc e
    rst $20
    ld [hl], d
    ld a, l
    inc c
    rrca
    inc bc
    inc bc
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
    add e
    ld a, a
    add b
    ld a, a
    db $10
    rst $38
    adc a
    ldh a, [$60]
    rst $38
    jr @+$01

    rrca
    rst $38
    inc sp
    rst $08
    ld hl, $0fdf
    ldh a, [rNR13]
    db $ec
    dec sp
    call nz, $827d
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
    rst $30
    nop
    rst $38
    ld bc, $01ef
    rst $18
    inc bc
    rst $18
    inc bc
    ld a, a
    rlca
    cp a
    rrca
    cp a
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

Call_07b_64fb:
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
    ld de, $1212
    ld [de], a
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
    jr jr_07b_6546

    ld [de], a
    ld [de], a
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07b_655e

    ld [hl+], a
    ld [de], a
    ld [de], a
    nop
    nop
    nop
    nop
    nop
    nop

jr_07b_6546:
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07b_6576

    ld a, [hl+]
    dec hl
    inc l
    nop
    nop
    nop
    nop
    nop
    nop
    dec l
    ld l, $25
    cpl
    jr nc, jr_07b_658d

    ld [hl-], a
    inc sp

jr_07b_655e:
    inc [hl]
    dec [hl]
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld [hl], $25
    scf
    jr c, jr_07b_65a5

    ld a, [hl-]
    dec sp
    inc a
    dec a
    nop
    nop
    nop
    nop
    nop
    nop

jr_07b_6576:
    nop
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
    nop
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h

jr_07b_658d:
    ld c, l
    ld c, [hl]
    ld c, a
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld d, b
    ld d, c
    ld d, d
    ld d, e
    ld [de], a
    ld d, h
    dec a
    ld b, [hl]
    dec h
    nop
    nop
    nop
    nop
    nop

jr_07b_65a5:
    nop
    ld d, l
    dec h
    ld d, [hl]
    ld d, a
    ld e, b
    ld e, c
    ld e, d
    ld e, e
    ld c, a
    dec h
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
    nop
    ld h, d
    ld h, e
    dec h
    nop
    nop
    nop
    nop
    nop
    nop
    ld h, h
    ld e, l
    ld h, l
    ld h, [hl]
    ld h, a
    ld l, b
    nop
    nop
    ld l, c
    ld l, d
    ld l, e
    ld l, e
    ld l, e
    ld l, h
    ld l, l
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld [hl], d
    ld [hl], e
    nop
    nop
    nop
    ld [hl], h
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld [hl], l
    db $76
    ld [hl], a
    ld a, b
    ld a, c
    ld a, d
    nop
    nop
    ld a, e
    ld a, h
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld a, l
    ld a, [hl]
    ld a, a
    add b
    add c
    add d
    add e
    add h
    add l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    add [hl]
    add a
    adc b
    adc c
    adc d
    adc e
    adc h
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    adc l
    adc [hl]
    adc a
    sub b
    sub c
    sub d
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    sub e
    sub h
    sub l
    sub [hl]
    sub a
    sbc b
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld [hl], l
    sbc c
    sbc d
    sbc e
    sbc h
    ld l, l
    ld l, l
    ld l, l
    ld l, l
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    inc b
    nop
    ld b, $01
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
    inc b
    inc b
    nop
    ld b, $01
    ld b, $00
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    inc b
    nop
    ld bc, $0603
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    rlca
    inc b
    inc b
    ld bc, $0303
    ld b, $00
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    nop
    ld bc, $0303
    ld b, $00
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    inc b
    nop
    ld bc, $0303
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    ld bc, $0303
    ld bc, $0001
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0307
    ld bc, $0001
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0603
    ld b, $00
    nop
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld bc, $0006
    nop
    nop
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    ld bc, $0401
    inc b
    inc b
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld bc, $0001
    inc b
    inc b
    ld [bc], a
    inc b
    inc b
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    rlca
    ld hl, $0101
    rlca
    rlca
    ld [bc], a
    ld [bc], a
    inc b
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    nop
    ld b, $06
    ld bc, $0207
    ld [bc], a
    ld [bc], a
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    ld bc, $0600
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
    ld [bc], a
    inc b
    rlca
    nop
    nop
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
    ld [bc], a
    inc b
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
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
    ld [bc], a
    ld [bc], a
    inc b
    nop
    nop
    ld bc, $0207
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
    inc b
    nop
    nop
    nop
    inc b
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    inc a
    rst $38
    nop
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
    rst $38

jr_07b_67bb:
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
    inc bc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    ld a, h
    sbc a
    jr nz, jr_07b_67bb

    cp b
    rst $00
    or h
    res 2, b
    rst $28
    or d
    rst $08
    sbc h
    db $e3
    call nc, $cbe3
    or $e1
    cp $c7
    db $fc
    db $fd
    cp $28
    rst $38
    ld a, [hl+]
    rst $38
    ld sp, $33ff
    rst $38
    inc sp
    rst $38
    dec sp
    rst $38
    ccf
    rst $38
    cp e
    rst $38
    sbc l
    rst $38
    sbc l
    rst $38
    sbc l
    rst $38
    db $dd
    rst $38
    call $ddff
    rst $38
    adc $ff
    rst $08
    rst $38
    rst $08
    rst $38
    db $e3
    rst $38
    and $ff
    rst $28
    rst $38
    or a
    rst $38
    ld h, a
    rst $38
    rst $20
    rst $38
    rst $30
    rst $38
    or a
    rst $38
    sub e
    rst $38
    ld sp, hl
    rst $38
    pop hl
    rst $38
    pop hl
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    nop
    rlca
    rlca
    ld [$0717], sp
    jr jr_07b_6871

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
    nop
    rst $38
    rra
    rst $38
    rst $38
    rst $38
    rst $38

jr_07b_6871:
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $e7
    ld hl, sp+$0e
    pop af
    db $10
    rst $28
    ld bc, $3ffe
    ret nz

    ld a, a
    add b
    rla
    ldh [$3e], a
    ret nz

    ld a, e
    call nz, Call_07b_62dc
    adc $31
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a
    add b
    sbc a
    ldh [$e3], a
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
    nop
    nop
    rst $38
    rst $38
    nop
    rst $38
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
    rst $38
    nop
    rst $38
    nop
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
    nop
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
    rst $08
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $3f
    ret nz

    rst $38
    nop
    rst $38
    nop
    rra
    ldh a, [rNR34]
    ldh a, [rIE]
    nop
    db $fd
    nop
    add hl, bc
    or $c7
    jr c, jr_07b_695c

    xor b
    ei
    inc b
    rst $30
    ld [$08f7], sp
    ld e, e
    add h
    cp c
    add $a1
    ld b, b
    cp b
    ld b, b
    rst $18
    jr nz, @+$01

    nop
    cp $00
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
    db $10
    jr nz, jr_07b_6937

    jr nz, jr_07b_6985

    ld h, b
    ld c, h
    ld [hl], b
    ld [hl], h
    ld a, b
    ld [hl], h
    ld a, b
    ld c, a
    ld [hl], e
    call z, Call_000_3ff3
    ret nz

    ret nz

jr_07b_6937:
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

jr_07b_695c:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rra
    ldh [rP1], a
    rst $38
    ld [bc], a
    db $fd
    inc bc
    db $fc
    inc d
    db $eb
    sub e
    ld l, h
    ld a, e
    add h
    xor a
    ld d, b
    db $ed
    db $10
    ei
    nop
    rst $38
    nop
    rst $18

jr_07b_6985:
    jr nz, @+$01

    nop
    db $fd
    nop
    cp a
    ld b, b
    db $fd
    nop
    cp a
    ld b, b
    rlca
    nop
    add hl, sp
    nop
    rst $10
    nop
    ld e, b
    inc bc
    rst $00
    ccf
    ld a, a
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
    rlca
    ld hl, sp-$08
    rlca
    rlca
    rst $38
    cp $fe
    db $fc
    db $fc
    db $fc
    db $fc
    ld hl, sp-$08
    rst $38
    ld hl, sp-$01
    ldh a, [rIE]
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ccf
    nop
    rst $38
    nop
    rst $38

jr_07b_69d4:
    nop
    rst $38
    nop
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
    pop af
    cp $bf
    ret nz

    cp $00
    pop af
    nop
    ld [hl], l
    adc d
    ccf
    ret nz

    rst $38
    nop
    ld e, a
    and b
    ld sp, hl
    nop
    ldh a, [rP1]
    ret nz

    nop
    nop
    nop
    add b
    nop
    ld b, e
    nop
    daa
    nop
    ld a, [hl-]
    ld bc, $0e31
    ld c, a
    jr nc, jr_07b_69d4

    ld a, b
    ld l, a
    ldh a, [$5d]
    jr nz, @+$11

    jr nc, jr_07b_6a1c

    ld hl, sp-$1d
    db $fc
    ldh a, [rIE]
    ldh a, [rIE]

jr_07b_6a1c:
    ldh a, [rIE]
    ldh a, [rIE]
    rst $30
    ld hl, sp-$0d
    db $fc
    rst $30
    ld hl, sp-$0f
    cp $f3
    db $fc
    di
    db $fc
    ld a, [$f8fd]
    rst $38
    ld a, [$f9fd]
    cp $f8
    rst $38
    ld hl, sp-$01
    ld sp, hl
    cp $fd
    cp $fd
    cp $fd
    cp $fc
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
    add b
    add b
    ld b, b
    ret nz

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
    rst $38
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rra
    ldh [$f8], a
    nop
    ld d, h
    nop
    and b
    nop
    ld b, b
    nop
    rst $38
    nop
    rst $30
    nop
    call nz, $a800
    nop
    jr nz, jr_07b_6a8a

jr_07b_6a8a:
    nop
    nop
    nop
    nop
    dec b
    nop
    jr jr_07b_6a92

jr_07b_6a92:
    cp b
    ld bc, $1ee1
    rra
    ldh [rIE], a
    nop
    rst $38
    nop
    ei
    inc b
    ldh a, [rIF]
    ccf
    nop
    ld hl, sp+$07
    ldh a, [rIF]
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    add d
    rst $38
    add [hl]
    rst $38
    ld b, $ff
    add d
    rst $38
    add b
    rst $38
    add $ff
    dec a
    jp nz, $e31c

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
    nop
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    rra
    rst $38
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
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
    rlca
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    pop af
    cp $1e
    ldh [$e8], a
    nop
    sub c
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    or e
    nop
    add b
    nop
    nop
    nop
    ld [bc], a
    nop
    rrca
    nop
    ccf
    nop
    jr c, jr_07b_6b0e

jr_07b_6b0e:
    ld e, [hl]
    ld bc, $3a45
    inc sp
    call z, $04fb
    ld sp, hl
    ld b, $f2
    rrca
    db $e3
    rra
    rrca
    rst $38
    rra
    rst $38
    jp nz, Jump_000_023f

    rst $38
    ld [bc], a
    rst $38
    rla

jr_07b_6b27:
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    rlca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rla
    rst $38
    cpl
    rst $38
    ld e, a
    rst $38
    ret nc

    cpl
    and b
    ld e, a
    ret nz

    ccf
    jr nz, jr_07b_6b27

    nop
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
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
    nop
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    sbc a
    ldh [rNR22], a
    ld l, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    nop
    cp a
    nop
    cp $00
    cp $00
    rst $30

jr_07b_6b99:
    nop
    cp h
    inc bc
    db $e3
    inc e
    rra
    ldh [rP1], a
    nop
    inc bc
    nop
    rlca
    nop
    inc a
    inc bc
    ldh a, [rIF]
    ret nz

jr_07b_6bab:
    ccf
    ld [bc], a
    rst $38
    ld [de], a
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    ld [de], a
    rst $38
    db $10
    rst $38
    ld bc, $01ff
    rst $38
    sub e
    rst $38
    dec d
    rst $38
    jr z, jr_07b_6b99

    inc hl
    call c, $d12e
    ld [hl], $c9
    inc h
    db $db
    jr nz, jr_07b_6bab

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
    rra
    rst $38
    ld hl, sp-$01
    ldh [rIE], a
    add b
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
    ld sp, hl
    rst $38
    rst $20
    rst $38
    sbc a
    rst $38
    ld a, a
    rst $38
    nop
    rst $38
    ld bc, $7fff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ccf
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0e00
    nop
    ld [hl], c
    nop
    adc a
    nop
    ld a, b
    rlca
    rrca
    ccf
    rst $38
    rra
    rst $18
    ccf
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
    rst $18
    ccf
    rst $18
    ccf
    sbc a
    ld a, a
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
    inc e
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld sp, hl
    rst $38
    rst $20
    rst $38
    sbc a
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
    rst $38
    rst $38
    rst $38
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
    add b
    ld a, a
    ld [hl], l
    rrca
    dec c
    inc bc
    nop
    ld bc, $0000
    nop
    nop
    nop
    nop
    inc d
    nop
    dec h
    nop
    ld d, a
    nop
    cp b
    nop
    rst $00
    nop
    dec a
    inc bc
    rst $28
    rra
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    rst $38
    nop
    ldh a, [rP1]
    nop
    nop
    nop
    nop
    add hl, bc
    nop
    ccf
    nop
    ld a, a
    nop
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    ccf
    ccf
    ccf
    rra
    sbc a
    rra
    sbc a
    rra
    ccf
    rra
    ld a, a
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
    rst $38
    rst $38
    cp $ff
    ldh a, [rIE]
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
    add b
    rst $38
    add b
    rst $38
    add b
    rst $38
    inc bc
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    cp $00
    nop
    nop
    nop
    nop
    nop
    nop
    ld bc, $0704
    inc c
    rrca
    ld a, h
    ld a, a
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
    db $fc
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
    ld [$0cdf], sp
    ccf
    inc b
    ld a, a
    dec b
    rst $38
    ld [bc], a
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    ld hl, sp-$01
    ld a, h
    rst $38
    cp [hl]
    rst $38
    rst $18
    rst $38
    rst $20
    rst $38
    ei
    rst $38
    db $fd
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
    rst $38
    ld bc, $1fff
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld a, a
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    rst $18
    rst $28
    sbc $ef
    db $dd
    xor $dd
    xor $dd
    xor $ee
    rst $30
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
    rst $38
    rst $38
    db $fd
    db $fd
    ldh a, [$f1]
    add b
    adc a
    ld b, $09
    ld bc, $0006
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
    add b
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld hl, sp-$01
    ld a, h
    rst $38
    cp [hl]
    rst $38
    rst $18
    rst $38
    rst $28
    rst $38
    di
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    rst $38
    rst $38
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld hl, sp+$00
    db $fc
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld b, $ff
    ld b, $ff
    rlca
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    rlca

jr_07b_6e7b:
    rst $38
    rlca
    rst $38
    ld c, $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    add c
    ld a, [hl]
    jr jr_07b_6e7b

    rst $38
    nop
    rrca
    add b
    sub c
    ldh [$f0], a
    cp $f8
    rst $38
    ccf
    rst $38
    rst $08
    rst $38
    add $ff
    db $e3
    rst $38
    pop bc
    rst $38
    add b
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    ccf
    ld a, d
    add l
    dec c
    ld [hl], d
    inc bc
    inc c
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, h
    rst $38
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
    ld hl, sp-$08
    rst $38
    rst $38
    ld hl, sp-$08
    db $fc
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    db $fc
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    add b
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    db $f4
    rst $38
    rst $38
    rst $38
    rst $18
    ccf
    inc sp
    rst $08
    push bc
    dec sp
    ld a, [c]
    dec c
    rst $38
    nop
    ld a, $01
    rlca
    rst $38
    rst $38
    rst $38
    cp $fe
    ld a, h
    db $fc
    ld a, h
    db $fc
    ld a, $fe
    sbc a
    cp $9f
    cp $ce
    db $fd
    db $fd
    ld a, [c]
    db $db
    inc h
    ld l, l
    sub d
    cp e
    ld b, h
    xor $11
    dec a
    jp nz, $3906

    ld bc, $0006
    ld bc, $00ff
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
    ld hl, sp+$00
    ldh a, [rP1]
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
    nop
    nop
    nop
    nop
    nop
    nop
    ret nz

    ret nz

    cp $fe
    rst $38
    rra
    rst $38
    ld l, a
    rst $38
    ld l, a
    ld l, a
    sbc a
    rra
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add b
    rst $38
    nop
    di
    nop
    reti


    nop
    ld a, [$fe00]
    nop
    pop af
    nop
    db $dd
    nop
    xor e
    nop
    db $dd
    add b
    db $eb
    ret nz

    db $fc
    ld b, b
    ld a, a
    ret nz

    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ldh a, [rIE]
    rra
    rra
    rlca
    rlca
    nop
    nop
    nop
    nop
    ret nz

    nop
    ld a, b
    add b
    xor $10
    cp e
    ld b, h
    ld [hl], l
    adc d
    sbc $21
    or a
    ld c, b
    db $dd
    ld [hl+], a
    db $76
    adc c
    ld hl, sp+$06
    ret nc

    jr z, jr_07b_700f

    sub b
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
    nop
    rst $38
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
    nop
    nop
    ldh a, [$f0]
    rst $38
    rst $38
    rst $38
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
    rra
    nop
    ld bc, $0000
    nop
    add b
    nop
    nop
    nop
    add b
    nop
    add b
    nop
    inc c
    nop
    xor h
    nop
    ld [hl], h
    nop
    ld h, d
    nop
    db $fd
    nop
    rst $38
    nop

jr_07b_700f:
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
    ret nz

    nop
    or b
    ld c, b
    ldh [rNR10], a
    add b
    ld h, b
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
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    nop
    nop
    add b
    add b
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
    nop
    cp $00
    rst $38
    nop
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
    jr nc, jr_07b_7075

jr_07b_7075:
    add b
    nop
    jr nz, jr_07b_7079

jr_07b_7079:
    jr c, jr_07b_707b

jr_07b_707b:
    cp $00
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fc
    db $fc
    rst $38
    db $fc
    rst $38
    db $fc
    ei
    dec de
    inc e
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
    ld [$0e07], sp
    add hl, bc
    rlca
    rlca
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    nop
    ldh a, [rP1]
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
    ldh [$e0], a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    nop
    rst $38
    nop
    xor $00
    rst $28
    nop
    rst $38
    nop
    cp $00
    ld a, a
    nop
    inc bc
    nop
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
    add b
    nop
    ld [bc], a
    nop
    ld bc, $f300
    rst $38
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
    rst $38
    ld a, a
    rst $38
    ccf

jr_07b_70f0:
    ccf
    rst $38

jr_07b_70f2:
    ccf
    rst $38
    dec sp
    ei
    jr c, jr_07b_70f0

    jr c, jr_07b_70f2

    ld [hl], b
    ldh a, [$80]
    add b
    nop
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
    nop
    nop
    nop
    nop
    nop
    ld l, [hl]
    nop
    db $fc
    nop
    ret c

    ld bc, $00d0
    cp $00
    rst $38
    nop
    rst $38
    nop
    ccf
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
    add b
    nop
    ld b, b
    nop
    nop
    nop
    ld [$0500], sp
    nop
    sub d
    nop
    ld c, h
    nop
    rst $28
    nop
    xor a
    nop
    cp a
    ei
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
    ldh a, [rP1]
    nop
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
    jr @+$1b

    ld a, [de]
    dec de
    inc e
    dec e
    rrca
    rrca
    ld e, $1f
    jr nz, jr_07b_7195

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07b_71a5

    ld a, [hl+]
    dec hl
    rrca
    rrca
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07b_71b7

    ld [hl-], a
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07b_719d

    rrca
    rrca
    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_07b_7195:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    ld b, h
    ld b, l

jr_07b_719d:
    ld b, [hl]
    ld b, a
    ld c, b
    ld c, c
    ld c, d
    ld c, e
    ld c, h
    ld c, l

jr_07b_71a5:
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
    ld e, a

jr_07b_71b7:
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
    adc h
    adc l
    adc c
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
    adc c
    sbc b
    sbc c
    adc h
    adc c
    adc c
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

jr_07b_7210:
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
    ld a, [$fb89]
    db $fc
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
    jr jr_07b_7290

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07b_72a0

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07b_7210

    add hl, hl
    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, @+$33

jr_07b_7290:
    ld b, $06
    ld b, $06
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop

jr_07b_72a0:
    ld b, $06
    ld b, $06
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    ld b, $06
    ld b, $05
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    ld b, $06
    ld b, $06
    ld b, $05
    dec b
    dec b
    nop
    dec b
    dec b
    ld b, $02
    dec b
    dec b
    nop
    ld b, $06
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    dec b
    dec b
    ld b, $06
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    nop
    ld b, $06
    ld b, $05
    dec b
    nop
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    ld b, $02
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    nop
    nop
    dec b
    ld b, $02
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
    dec b
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    dec b
    nop
    jr nz, jr_07b_7335

jr_07b_7335:
    nop
    nop
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
    dec b
    dec b
    dec b
    nop
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    dec b
    dec b
    dec b
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $05
    dec b
    dec b
    dec b
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    ld b, $05
    dec b
    ld bc, $0101
    ld bc, $0206
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    ld bc, $0501
    dec b
    ld b, $03
    inc bc
    ld [bc], a
    ld b, $06
    ld b, $06
    dec b
    dec b
    dec b
    dec b
    nop
    nop
    nop
    ld bc, $0101
    rlca
    ld c, $0e
    ld c, $0e
    ld c, $0e
    dec c
    dec c
    dec c
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    dec c
    ld c, $0a
    dec c
    dec c
    dec c
    dec c
    dec c
    dec c
    ld [$0909], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    rrca
    dec c
    dec c
    dec c
    dec c
    ld [$0008], sp
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    add hl, bc
    rrca
    add hl, bc
    ld hl, sp+$05
    call c, $fc21
    ld bc, $02fc
    cp $00
    ld d, [hl]
    xor b
    ld e, $61
    rra
    ld h, b
    ccf
    nop
    cpl
    sub b
    rst $28
    ld d, b
    adc l
    ld [hl-], a
    inc c
    db $d3
    inc b
    db $db
    add h
    ld e, e
    add $29
    and $09
    db $e3
    inc e
    rst $30
    ld [$00f7], sp
    ld [hl], e

jr_07b_73f9:
    adc h
    ld [hl], c
    adc d
    or c
    ld c, d
    reti


    jr nz, @-$22

    ld hl, $03fc
    ld l, [hl]
    sub b
    ld c, $f0
    inc b
    ld a, e
    nop
    ld a, a
    nop
    ld a, a
    ld [bc], a
    cp c
    ld bc, $083a
    rla
    nop
    dec e
    inc b
    ld e, e
    nop
    ld l, [hl]
    inc b
    db $eb
    nop
    rlca
    ld [$034f], sp
    db $fc
    inc bc
    db $fc
    ld bc, $00fa
    rst $38
    nop
    rst $38
    nop

jr_07b_742b:
    rst $38
    nop
    sbc $00
    ld a, [hl]
    nop
    ccf
    ld b, b
    ld a, a
    ld b, b
    rst $38
    nop
    sbc a
    jr nz, jr_07b_73f9

    jr nz, jr_07b_742b

    nop
    rst $08
    db $10
    rst $38
    db $10
    or a
    ld [$088f], sp
    rst $38
    inc b
    rst $30
    inc b
    rst $38
    nop
    reti


    ld [bc], a
    ld a, [de]
    inc bc
    dec hl
    inc e
    sbc h
    cp h
    cp h
    ld a, b
    ld a, b
    daa
    daa
    jr jr_07b_7472

    dec b
    dec b
    ld bc, $0101
    ld bc, $0800
    nop
    nop
    nop
    ld hl, $0000
    nop
    ld [$4000], sp
    nop
    nop
    nop
    nop
    nop
    nop

jr_07b_7472:
    nop
    nop
    nop
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    add b
    nop
    ret nz

    nop
    ld l, b
    nop
    jr nc, jr_07b_7483

jr_07b_7483:
    dec bc
    nop
    ld b, $00
    inc bc
    nop
    adc c
    nop
    push bc
    nop
    pop bc
    nop
    ldh [rP1], a
    ld h, b
    nop
    ld [hl], b
    nop
    cp [hl]
    nop
    sbc $00
    ld a, [hl]
    nop
    rst $38
    nop
    sub a
    nop
    dec hl
    nop
    rst $00
    nop
    ld c, [hl]
    nop
    sbc c
    nop
    ld h, e
    nop
    ld d, e
    nop
    dec e
    nop
    inc e
    nop
    jr nz, jr_07b_74b5

    ld b, $00
    inc b
    nop

jr_07b_74b5:
    jr jr_07b_74b7

jr_07b_74b7:
    jr nz, jr_07b_74b9

jr_07b_74b9:
    ret nz

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
    ld b, e
    cp b
    add c
    ld a, d
    nop
    ld sp, hl
    add hl, bc
    ldh a, [rSB]
    db $fc
    nop
    db $fd
    inc b
    ld a, e
    ld [hl+], a
    ld e, h
    ld a, $81
    scf
    adc b
    cp a

jr_07b_74e5:
    nop
    rra
    and b
    rra
    add b
    daa
    ld hl, sp-$39
    ld [$28c7], sp
    ret nz

    cpl
    nop
    rst $28
    ld b, d
    cp l
    ld [hl], b
    add a
    or b
    ld b, a
    or b
    ld c, a
    or b
    ld c, e
    ld d, b
    adc e
    ret z

    inc sp
    ld b, b
    cp l
    ldh [rNR33], a
    jr nz, jr_07b_74e5

    ld b, b
    ld [hl], $10
    ld l, [hl]
    nop
    ld a, $00
    cp [hl]
    nop
    cp a
    nop
    or a
    nop
    sbc a
    nop
    rst $18
    ld [bc], a
    reti


    nop
    db $eb
    nop
    db $ed
    nop
    push hl
    or a
    ld c, b
    sub e
    ld l, h
    pop bc
    ld a, $c1
    ld a, [hl-]
    ld b, b
    cp a
    ld c, b
    or a
    ld c, b
    or l
    db $10
    db $ed
    nop
    rst $38
    nop
    cp $00
    ld a, [hl]
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
    nop
    adc a
    db $10
    rst $30
    nop
    rst $20
    ld [$0efc], sp
    xor $10
    sub b
    ret nz

    ret nz

    ld b, $06
    ld a, [bc]
    dec bc
    ld [hl], d
    ld [hl], d
    jp $c9c3


    ret


    ret


    ret


    ld hl, sp-$08
    db $fc
    db $fc
    push af
    push af
    rst $30
    rst $30
    ld a, a
    ld a, a
    rra
    rra
    rrca
    rrca
    rlca
    rlca
    inc bc
    inc bc
    ld bc, $0001
    inc c
    nop
    ld b, $00
    ld bc, $0000
    nop
    jr z, jr_07b_7579

jr_07b_7579:
    ld [hl], $00
    rrca
    nop
    rra
    nop
    rrca
    nop
    rlca
    nop
    inc bc
    nop
    ld de, $3500
    nop
    ld d, a
    nop

jr_07b_758b:
    db $ec
    nop
    ld hl, sp+$00
    ld a, d
    nop
    cp $00
    ld a, [de]
    nop
    rrca
    nop
    rlca
    nop
    dec de
    nop
    ld bc, $c700
    nop
    add a
    nop
    ld a, [c]
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    db $f4
    nop
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    rst $30
    ld [$00f7], sp
    rst $30
    ld [$0cf3], sp
    ei
    nop
    ei
    nop
    ld sp, hl
    ld b, $f5
    ld [$a15c], sp
    jr c, jr_07b_758b

    ld a, h
    ld [bc], a
    inc a
    jp nz, $803e

    sbc [hl]
    ld hl, $059a
    sbc h
    inc bc
    adc l
    ld d, d

jr_07b_75d2:
    dec e
    jp nz, $d20d

    dec c
    ld [c], a
    rlca
    add sp, $16
    ld sp, hl
    ld b, $e1
    rlca
    add sp, -$09
    ld [$08f7], sp
    or $09
    and e

jr_07b_75e7:
    ld e, h
    ei
    inc b
    db $e3

jr_07b_75eb:
    inc e
    ld b, c
    cp [hl]
    ld h, l
    sbc d
    ld a, l
    add d
    ld [hl], l
    adc d

jr_07b_75f4:
    ld a, $c1
    cp [hl]
    ld bc, $46b8
    sbc [hl]
    ld h, c
    adc a
    ld [hl], b
    sub d
    ld l, l
    rst $08
    jr nc, jr_07b_75d2

    jr nc, jr_07b_75f4

    db $10
    and a
    ld e, b
    add a
    ld a, b
    rst $00
    jr c, jr_07b_75e7

    dec h
    ld [$18f7], sp
    rst $20
    jr z, jr_07b_75eb

    inc c
    pop af
    inc l
    ld d, c
    add b
    cp $00
    ld a, $00
    ld a, $00
    cp [hl]
    inc bc
    db $db
    inc l
    db $ec
    jr nc, jr_07b_7656

    add b
    add b
    ld [$6009], sp
    ld h, l
    nop
    ld h, $00
    or $00
    or $04
    scf
    inc b
    inc [hl]
    inc b
    inc b
    add d
    adc $82
    add d
    jp $4fc3


    ld c, a
    db $fd
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
    ccf
    cp a
    rra
    ld e, a
    rrca
    xor a

jr_07b_7656:
    inc b
    call nc, $7800
    nop
    ld a, [de]
    nop
    call $ef00
    nop
    rst $30
    nop
    ei
    nop
    cp $00
    db $fd
    nop
    ld a, a
    nop
    ld a, $00
    rra
    nop
    rla
    nop
    ld h, e
    nop
    rrca
    nop
    ld e, $00
    ret


    nop
    ret nz

    nop
    ldh [rP1], a
    ret nz

    nop
    and b
    nop
    ld b, b
    nop
    nop
    nop
    nop
    nop
    nop

jr_07b_7688:
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    sbc [hl]
    ld b, c
    rst $08
    db $10
    rst $08
    db $10
    rst $08
    jr nc, jr_07b_7688

    nop
    rst $08
    jr nz, jr_07b_76ec

jr_07b_769d:
    or b
    and a
    ld e, b
    and a
    ld e, b
    and a
    ld d, b
    ld d, a
    xor b
    inc sp
    call z, $c833
    ld b, c
    cp d
    ld e, b
    and a

jr_07b_76ae:
    ld a, c
    ld b, $39
    add $0d
    ldh a, [$3d]
    ret nz

    cp l
    ld b, d
    ld a, $c1
    sbc [hl]
    ld h, c
    sub [hl]
    ld c, c
    sbc h
    ld b, e
    call z, $c013
    ccf
    add b
    ld l, a
    ldh [rTAC], a
    ld h, c
    add [hl]
    ld h, b
    sbc a
    jr nc, jr_07b_769d

    and b
    ld d, a
    or b
    ld c, a
    db $10
    add sp, $10
    db $ec
    db $10
    add sp, $08
    db $f4
    ld b, b
    inc a
    nop
    ld a, l
    nop
    ld a, l
    jr nz, jr_07b_76fe

    inc [hl]
    adc d
    ld [hl-], a
    adc h
    ld [bc], a
    sbc h

jr_07b_76e8:
    jr nz, jr_07b_76e8

    nop
    ld e, h

jr_07b_76ec:
    nop
    inc c
    nop
    rrca
    rrca
    ldh [rTIMA], a
    ld [$ef00], a
    inc b
    di
    ld bc, $0cf5
    db $fc
    jr nc, jr_07b_76ae

jr_07b_76fe:
    ret nz

    ret nz

    nop
    ld bc, $0f02
    ld [bc], a
    ccf
    ld [bc], a
    rra
    ld b, b
    call nc, $9101
    ld bc, $2181
    ld h, c
    ld de, $1891
    jr jr_07b_7730

    dec de
    ld e, a
    ld e, a
    ccf
    ccf
    ccf
    ccf
    xor a
    xor a
    rst $18
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

jr_07b_772b:
    rst $38
    db $fc
    db $fd
    ld hl, sp-$08

jr_07b_7730:
    ldh [$e0], a
    ret nz

    ret nz

    nop
    nop
    jr nz, @+$22

    ld b, b
    ld b, c
    add b
    add c
    ld b, b
    ld b, b
    nop
    add e
    nop
    jp $f100


    nop

jr_07b_7745:
    ld sp, hl
    nop
    db $fd
    nop
    cp [hl]
    nop
    call c, $e800
    ld [$00fc], sp
    pop de
    ld [$00a8], sp
    ld b, b
    ld bc, $0001
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld a, b
    add e
    ld a, b
    inc bc
    ld a, b
    add a
    jr c, @-$37

    dec a
    jp nz, Jump_07b_40bd

    cp l
    ld b, d
    cp l
    ld b, b
    or b

jr_07b_7771:
    ld c, a
    sub h

jr_07b_7773:
    ld l, d
    sbc $20
    sbc $21
    sbc $21
    jp c, $fa25

    dec b
    rst $28
    db $10
    xor $11
    db $ed
    ld [bc], a
    push af
    ld a, [bc]
    or $09
    or $09
    or $09
    ld b, d
    cp l
    jp nc, Jump_07b_532d

    xor h
    ld e, b
    and a
    jr nz, @-$1f

    ld l, d
    sub l
    jr z, jr_07b_7771

    jr z, jr_07b_7773

jr_07b_779c:
    jr nc, jr_07b_772b

    jr jr_07b_7745

    db $10
    db $ed
    db $10
    ld l, [hl]
    nop
    sbc $00
    ld e, [hl]
    ld [$00c6], sp
    adc $00
    adc [hl]
    nop
    adc a
    dec hl
    call nc, Call_07b_5ca3
    dec b
    ld a, [$ec13]
    inc bc
    db $fc
    ld sp, $60ce
    sbc a
    ld [hl], b
    adc e
    ld [hl], b
    adc d
    jr nz, jr_07b_779c

    add b
    jr nz, jr_07b_7807

    ret nz

    nop
    ld bc, $0d00
    nop
    inc e
    nop
    sbc $01
    rst $28
    nop
    xor $00
    xor $00
    rlc b
    jp nz, $ca08

    add hl, bc
    add hl, bc
    inc c
    inc c
    add [hl]
    rst $38
    add a
    rst $38
    rst $00
    rst $38
    rst $10
    rst $38
    rst $30
    rst $38
    di
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
    ldh [$e4], a
    add b
    add b
    nop
    ld b, l
    nop
    dec b
    nop
    ld bc, $4e00
    nop
    ld sp, $7300
    nop

jr_07b_7807:
    xor a
    nop
    ld l, a
    nop
    ld a, e
    nop
    di
    nop
    rst $28
    nop
    nop
    adc b
    adc b
    db $10
    db $10
    and b
    and b
    add l
    add h
    adc d
    adc b
    db $10
    db $10
    jr nz, jr_07b_7840

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
    pop bc
    cp $40
    ld a, a
    nop
    rra
    nop
    rra
    jr nz, jr_07b_7877

    nop
    rrca
    db $10
    rra
    db $10
    rra
    nop
    rlca

jr_07b_7840:
    nop
    rlca
    nop
    rlca
    nop
    inc bc
    inc b
    rlca
    nop
    ld bc, $0302
    ld [bc], a
    inc bc
    nop
    nop
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
    ld [bc], a
    rst $38
    dec c
    or d
    inc e
    jp $c31c


    ld e, $c0
    inc c
    ld a, [c]
    ld h, h
    sbc d
    db $ec
    ld [bc], a
    db $ec
    ld [bc], a
    db $e4
    dec bc
    and $19
    ld h, h
    sbc e
    ld b, h

jr_07b_7877:
    or e
    add [hl]
    ld a, c
    add [hl]

jr_07b_787b:
    ld [hl], c
    ld b, $f1
    ld b, d
    or l
    nop
    ld [hl], a
    ld bc, $007e
    ei
    nop
    ei
    nop
    ei
    nop
    ei
    nop

jr_07b_788d:
    or e
    add b
    inc de
    nop
    cp e
    ld bc, $80be
    ld a, a
    add b
    ld e, l
    sub b
    ld c, l
    add b
    ld e, l
    nop
    call $c600
    xor $11
    xor $11
    xor $11
    xor $11
    rst $38
    nop
    db $f4
    dec bc
    ld [hl], l
    adc d
    ld [hl], h
    adc e
    ld a, b
    add a
    ld a, b
    add a
    jr c, @-$37

    jr c, jr_07b_787b

    jr z, jr_07b_788d

    and b
    ld e, b
    nop
    ldh a, [rP1]
    add b
    add b
    add c
    nop

Jump_07b_78c3:
    dec b
    nop
    dec e
    nop
    db $fc
    nop
    cp $00
    cp $01
    rst $28
    nop
    add sp, $00
    db $e4
    nop
    db $f4
    nop
    ld h, b
    ld [$0048], sp
    nop
    nop
    nop
    ld c, $0e
    sub [hl]
    sub [hl]
    ld b, a
    ld b, a
    ld l, a
    ld l, a
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f3]
    ldh [$e8], a
    add b
    and b
    nop
    ret nz

    nop
    jr nc, jr_07b_78f5

jr_07b_78f5:
    ld h, a
    nop
    rrca
    nop
    dec sp
    nop
    ld [hl], a
    nop
    xor $00
    dec a
    add c
    add b
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld b, $00
    ld e, $00
    add hl, hl
    nop
    ccf
    ld [$00e7], sp
    dec b
    nop
    dec bc
    nop
    add a
    nop
    rst $08
    nop
    ld e, $00
    cp c
    add b
    rla
    nop
    cpl

jr_07b_7921:
    ret nc

    sbc $21
    dec a
    jp nz, $9c63

    rst $20
    jr jr_07b_799a

    sub b
    ld e, $e1
    dec a
    jp nz, $ec13

    daa
    ret c

    rrca
    ldh a, [rNR31]
    db $e4
    inc d
    db $eb
    ld b, c
    cp [hl]
    sub b
    ld l, a
    ld hl, $0bde
    db $f4
    inc d
    db $eb
    inc e
    db $e3
    ld hl, $43de
    cp h
    inc bc
    db $fc
    rrca
    ldh a, [rIF]
    ldh a, [rNR32]
    nop
    sub b
    add b
    ret nz

    add b
    ret nc

    add b
    and c
    add b
    cp e
    add b
    ld c, a
    nop
    and [hl]
    jr nz, jr_07b_7921

    dec e
    add b
    ld l, h
    add b
    ld a, [hl]

jr_07b_7966:
    nop
    cp $08
    and $08
    and $08
    and $06
    add sp, -$13
    db $10
    push af
    ld [$09f5], sp
    ld [hl], l
    adc c
    pop af
    add hl, bc
    pop hl
    add hl, bc
    di
    add hl, bc
    rst $20
    ld [$ff00], sp
    ld b, c
    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    add h
    ld a, a
    add b
    ld e, a
    and b
    ld a, a
    inc h
    rst $38
    inc b
    rst $08
    ld b, h
    sub l

jr_07b_7994:
    ld b, h
    add l
    nop
    pop hl
    ld [bc], a
    db $e3

jr_07b_799a:
    ld [bc], a
    ld [c], a
    ld [bc], a
    ld [c], a
    ld [bc], a
    ld [c], a
    nop
    ldh [$80], a
    ld h, b
    jr nz, jr_07b_7966

    nop
    ld h, b
    nop
    ld b, b
    ld bc, $0161
    ld h, c
    nop
    ld [hl], b
    inc [hl]
    ld c, e
    nop
    cp $04
    db $f4

jr_07b_79b6:
    nop
    and b

jr_07b_79b8:
    nop
    nop
    nop
    inc bc
    nop
    ld a, [de]
    nop
    db $db
    nop
    jp c, $f120

    jr nz, jr_07b_79b6

    jr nz, jr_07b_79b8

    ld [hl+], a
    and d
    ld [bc], a
    add d
    ld [bc], a
    ld [bc], a
    inc sp
    inc sp
    dec sp
    rst $38
    dec [hl]
    rst $38
    push af
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
    ldh a, [$f0]
    ldh [$f1], a
    add b
    or c
    nop
    ld [$1b00], sp
    nop
    ld a, a
    nop
    sbc a
    nop
    ccf
    add [hl]
    add b
    nop
    nop
    add b
    add b
    jr nz, jr_07b_79f8

jr_07b_79f8:
    ld [$0000], sp
    nop
    ld b, $00
    inc c
    nop
    dec de
    db $e4
    rst $20
    jr jr_07b_7994

    ld [hl], b
    sbc a
    ld h, b
    inc sp
    call z, $10ef
    sbc $21
    db $fd
    ld [bc], a
    di

jr_07b_7a11:
    inc c
    rst $20
    jr @-$30

    ld sp, $42bd
    ld a, e
    add h
    rst $30
    ld [$10ef], sp
    sbc [hl]
    ld h, c
    ld a, l
    add d
    di
    inc c
    rst $28
    db $10
    sbc $21
    cp l
    ld b, d
    ld a, e
    add h
    rst $30
    ld [$10ef], sp
    rst $08
    jr nc, jr_07b_7a11

    ld hl, $c23d
    ld a, e
    add h
    rst $30
    ld [$10ef], sp
    rst $18

jr_07b_7a3d:
    jr nz, jr_07b_7a3d

    ld bc, $02fd
    ei
    inc b
    ei
    inc b
    rst $30
    ld [$10ef], sp
    ld e, a
    and b
    cp [hl]
    ld b, c
    ld a, l
    add d
    dec sp
    call nz, $cc33
    ld h, l
    sbc d
    jp hl


    ld d, $98
    ld h, a
    sub b
    ld l, a
    ld a, [bc]
    push af
    dec e
    ld [c], a
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    call nz, $d43b
    dec hl
    adc h
    ld [hl], e
    add b
    ld a, l
    ldh [rNR33], a
    nop
    rst $38
    rra
    rst $38
    rst $28
    ldh a, [$7d]
    add d
    db $eb
    inc d
    ld a, a
    add b
    ld a, a
    add b
    ei
    add h
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
    cp b
    rst $00
    xor a
    ret nc

    ld a, h
    jp $c37c


    ld a, b
    rst $00
    ld e, b
    rst $20
    ld e, h
    db $e3
    ld e, h
    db $e3
    ld e, h
    db $e3
    ld c, h
    di
    ld c, h
    di
    ld a, l
    db $e3
    dec l
    di
    dec l
    di
    add hl, hl
    rst $30
    ld hl, $21ff
    rst $38
    inc sp
    rst $38
    jr nz, jr_07b_7af0

    jr nz, jr_07b_7ae2

    jr nz, jr_07b_7ae2

    db $10
    ld [hl], h
    db $10
    ld a, b
    db $10
    jr nc, jr_07b_7acd

    jr nc, jr_07b_7ad0

    ld [hl], c
    jr jr_07b_7afa

    db $10
    db $10
    dec de

jr_07b_7ac5:
    dec de
    ld e, a
    ld e, a
    ld e, a
    ld e, a
    rst $18
    rst $18
    rst $18

jr_07b_7acd:
    rst $18
    rst $38
    rst $38

jr_07b_7ad0:
    rst $38
    rst $38
    cp $fe
    db $fc
    db $fc
    ldh a, [$f0]
    ldh [$e0], a
    add b

jr_07b_7adb:
    add b

jr_07b_7adc:
    nop
    ld bc, $3500
    ld sp, hl
    ld sp, hl

jr_07b_7ae2:
    and d
    and d
    ret nz

    ret nz

    add b
    add b
    nop
    nop
    nop
    nop
    ld bc, $0300
    nop

jr_07b_7af0:
    ld a, [bc]
    push af
    jr jr_07b_7adb

    ld a, e
    add h
    daa
    ret c

    inc e

jr_07b_7af9:
    db $e3

jr_07b_7afa:
    ccf
    ret nz

    ld d, a
    xor b
    cp $01
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$11ee], sp
    sbc h
    ld h, d
    ld a, e
    add h
    rst $30
    ld [$11ea], sp
    sbc l
    ld h, d
    ld a, e
    add h
    or $08

jr_07b_7b16:
    add sp, $10
    db $dd
    jr nz, jr_07b_7ac5

    ld b, b
    ld [hl], b
    adc h
    add sp, $10
    ld e, h
    jr nz, jr_07b_7adc

    ld b, b
    db $76
    add b
    ld hl, sp+$04
    db $f4
    ld [$10e8], sp
    call c, $ba20
    ld b, c
    ld e, l
    add d
    di
    inc b
    or $08
    rst $20
    db $10
    db $db
    jr nz, jr_07b_7af9

    ld b, c
    ld l, l
    add d
    ei
    inc b
    push af
    ld [$08f7], sp
    rst $28
    db $10
    rst $18
    jr nz, @-$40

    ld b, c
    ld l, l
    add d
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$30cf], sp
    rst $18
    jr nz, jr_07b_7b16

    ld b, b
    ld a, $c1
    ld a, [hl]
    add c
    db $fc
    inc bc
    ei
    inc b
    nop
    add sp, $00
    cp h
    nop
    or h
    nop
    or h
    nop
    and h
    nop
    or [hl]
    nop
    or [hl]
    nop
    and b
    ld a, a
    rst $38
    pop hl
    rst $38
    add c
    ld a, a
    dec b
    ei
    dec b
    ei
    ld bc, $61ff
    sbc a
    ld [hl], c
    sbc a
    jp hl


    rra
    pop bc
    ccf
    add c
    ld a, a
    adc e
    ld a, a
    adc e
    ld a, a
    rlca
    rst $38
    ld bc, $0bff
    rst $38
    nop
    db $f4
    nop
    ldh [rP1], a
    ld [c], a
    ld bc, $00e1
    ld a, [c]
    nop
    ldh a, [rSB]
    pop af
    nop
    ldh a, [rP1]
    ldh a, [rP1]
    ldh a, [rP1]
    di
    ld bc, $03c7
    add a
    rrca
    ld c, a
    rrca
    rrca
    rrca
    rrca
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
    cp $ff

jr_07b_7bca:
    db $fc
    rst $38
    ldh a, [rIE]
    ldh [rIE], a
    adc c
    adc c
    inc b
    inc b
    nop
    nop
    nop
    nop
    nop
    or e
    nop
    ld c, h
    nop
    dec sp
    nop
    ld a, a
    nop
    nop
    ld b, c
    ld b, b
    ld [bc], a
    nop
    inc l
    jr nz, jr_07b_7bf0

    nop
    ld c, a
    nop
    adc c
    nop
    inc de
    nop

jr_07b_7bf0:
    rst $30
    ld [$01fe], sp
    ld sp, hl
    ld b, $77
    adc b
    xor $11
    db $dd
    ld [hl+], a
    cp e
    ld b, h
    ld [hl], a
    adc b
    xor $11
    reti


    ld [hl+], a
    jr c, jr_07b_7bca

    ldh [$08], a
    ld h, c
    db $10
    add d
    jr nz, @+$06

    ret nz

    adc b
    nop
    stop
    ld hl, $4200
    nop
    add h
    nop
    ld [$1000], sp
    nop
    ld hl, $4200
    nop
    add h
    nop
    ld [$0800], sp
    nop
    stop
    ld hl, $4200
    nop
    add h
    nop
    ld [$0800], sp
    nop
    stop
    and b
    nop
    add c
    ld b, b
    ld b, d
    add b
    add [hl]
    nop
    xor h
    nop
    cp d
    nop
    rst $28
    db $10
    db $dd
    jr nz, @-$42

    ld b, c
    ld a, [hl]
    add c
    db $ed
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, @-$3f

    ld b, b
    ld a, [hl]
    add c
    ld a, l
    add d
    ld sp, hl
    ld b, $fb
    inc b
    ld [hl], a
    adc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fc
    rst $38
    ldh a, [rIE]
    pop hl
    rst $38
    adc b
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    nop
    rst $38
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld b, b
    nop
    sub d
    nop
    inc l
    nop
    sbc $00
    cp a
    nop
    rst $38
    ld bc, $17fe
    add sp, $6e
    sub c
    cp c
    ld b, [hl]
    ld [hl], e
    adc h
    and $19
    db $dd
    ld [hl+], a
    cp a
    ld b, b
    ld [hl], a
    adc b
    db $ec
    inc de
    db $dd
    ld [hl+], a
    ld [hl-], a
    call z, $10ef
    call c, $ab23
    ld b, h
    ld [hl], l
    adc b
    and b
    db $10
    ld hl, $4200
    nop
    add h
    nop
    ld [$1000], sp
    nop
    ld hl, $4200
    nop

jr_07b_7d00:
    add h
    nop
    ld [$1000], sp
    nop
    ld hl, $4200
    nop
    add h
    nop
    ld [$0800], sp
    nop
    stop
    ld hl, $4100
    nop
    add d
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    jr nc, jr_07b_7d20

jr_07b_7d20:
    ld h, c
    nop
    ld b, c
    nop
    add d
    nop
    inc b
    nop
    ld [$1800], sp
    nop
    stop
    jr nz, jr_07b_7d30

jr_07b_7d30:
    or h
    ld b, c
    ld e, [hl]
    add c
    pop af
    ld [bc], a
    ld sp, hl
    inc b
    rst $10
    ld [$0877], sp
    rst $28
    db $10
    rst $18
    jr nz, jr_07b_7d00

    ld b, b
    ld a, $c1
    ld a, l
    add d
    db $fd
    ld [bc], a
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    pop bc
    jp $c9c9


    jp hl


    jp hl


    jp hl


    jp hl


    ei
    ei
    ld a, [$fafa]
    ld a, [$fdfd]
    ld hl, sp-$01
    cp $ff
    ld a, [$faff]
    rst $38
    rst $38
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
    rlca
    rst $38
    ld bc, $00ff
    rst $38
    inc h
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    ld bc, $0001
    nop
    nop
    stop
    ld h, h
    nop
    cp [hl]
    nop
    cp e
    nop
    rst $38
    nop
    rst $38
    add b
    ld a, a
    ld [hl], b
    adc a
    db $ec
    inc de
    rst $38
    nop
    ld [hl], e
    adc h
    xor $11
    db $dd
    ld [hl+], a
    cp e
    ld b, h
    ld [hl], a
    adc b
    xor $11
    db $dd
    ld [hl+], a
    cp e
    ld b, h
    ld [hl], l
    adc b
    xor $11
    sbc l
    ld [hl+], a
    dec sp
    ld b, h
    add l
    ld [$0010], sp
    ld de, $2200
    nop
    ld b, h
    nop
    add h
    nop

jr_07b_7dbc:
    ld [$1000], sp
    nop
    ld hl, $4200
    nop
    add h
    nop
    ld [$0800], sp
    nop
    stop
    ld hl, $4100
    nop
    add d
    nop
    add h
    nop
    ld [$1800], sp
    nop
    stop
    jr nz, jr_07b_7ddc

jr_07b_7ddc:
    ld b, c
    nop
    add d
    nop
    add h
    nop
    inc b
    nop
    ld [$1000], sp
    nop
    jr nz, jr_07b_7dea

jr_07b_7dea:
    ld hl, $4100
    nop

jr_07b_7dee:
    add d
    nop
    rlc h
    ei
    inc b
    ld [hl], d
    ld [$10ef], sp
    xor a
    db $10
    rst $18
    jr nz, jr_07b_7dbc

    ld b, b
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    db $fd
    ld [bc], a
    ei
    inc b
    di
    inc c
    rst $30
    ld [$10ef], sp
    rst $08
    jr nc, jr_07b_7dee

    jr nz, jr_07b_7e31

    cpl
    add b
    rst $08
    db $10
    rra
    nop
    rrca
    ld [$f00b], sp
    di
    jr nz, jr_07b_7e49

    nop
    dec de
    jr nz, @+$3d

    nop
    rla
    and b
    cp e
    nop
    dec de
    nop
    dec de
    add b
    adc e
    ld b, b
    ld c, e
    ret nz

    set 0, h

jr_07b_7e31:
    rst $18
    nop
    dec bc
    ld b, b
    ld a, e
    nop
    nop
    ld b, b
    ld d, b
    ld b, b
    ld l, b
    ld b, b
    ld d, b
    ld b, b
    ld b, b
    ld c, b
    ld l, b
    adc c
    xor c
    ret z

    ld hl, sp-$38
    ret c

    ret z

jr_07b_7e49:
    ret z

    ret c

    ret c

    ret z

    ret z

    ld [c], a
    ld [c], a
    ld a, [c]
    rst $38
    ld a, [c]
    rst $38
    sbc [hl]
    rst $38
    rst $30
    rst $38
    cp $ff

jr_07b_7e5a:
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
    cp $ff
    ei
    db $fc
    rst $38
    ldh a, [$f8]
    ldh a, [$f8]
    ldh a, [$fe]
    ldh a, [$fe]
    pop af
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    rst $38
    pop af
    rst $38
    di
    rst $38
    pop af
    rst $38
    db $fd
    rst $38
    rst $38
    ld a, a
    rst $38
    ld l, a
    sbc a
    pop bc
    ccf
    or e
    ld c, h
    rla
    add sp, -$11
    db $10
    rst $18
    jr nz, jr_07b_7e5a

    ld b, h
    ld [hl], a
    adc b
    xor $11
    db $dd
    ld [hl+], a
    cp e
    ld b, h
    ld a, e
    add h
    rst $30
    ld [$11ee], sp
    ld e, [hl]
    ld hl, $42ad
    sbc b
    inc b
    dec b
    ld [$0011], sp
    jr nz, jr_07b_7ebb

    ld b, b

jr_07b_7ebb:
    ld bc, $0043
    add h
    nop
    ld [$1800], sp
    nop
    stop
    ld hl, $4200
    nop
    add d
    nop
    add h
    nop
    ld [$1000], sp
    nop
    stop
    ld hl, $4200
    nop
    add d
    nop
    add h
    nop
    ld [$1800], sp
    nop
    ld [de], a
    nop
    ld hl, $4100
    nop
    ld b, d
    ld bc, $028d
    dec d
    ld [bc], a
    dec sp
    inc b
    rst $10
    ld [$08f7], sp
    rst $28
    db $10
    rst $18
    jr nz, @-$20

    ld hl, $41be
    ld a, l
    add d
    ld a, e
    add h
    ei
    inc b
    rst $30
    ld [$08f7], sp
    rst $28
    db $10
    rst $18
    jr nz, @-$1f

    jr nz, jr_07b_7f48

    ld b, b
    cp a
    ld b, b
    ld a, [hl]
    add c
    dec sp
    call nz, $c43b
    dec sp
    call nz, $cc33
    inc b
    ei
    dec [hl]
    jp z, $ea15

    inc [hl]
    rl h
    db $eb
    db $76
    adc c
    ld h, [hl]
    sbc c
    ld [hl], b
    adc a
    inc h
    db $db
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
    nop
    rst $38
    inc b
    ld sp, hl
    nop
    rst $38
    nop
    db $fd
    nop
    db $dd
    nop
    rst $18
    nop
    rst $18
    nop
    rst $18
    nop
    ld e, a

jr_07b_7f48:
    nop
    ld e, a
    nop
    ld e, a
    nop
    ld e, a
    nop
    rra
    nop
    add hl, de
    nop
    add hl, de
    nop
    db $10
    ldh [$e0], a
    sbc h
    sbc h
    jp Jump_07b_78c3


    ld a, b
    ld c, c
    ld c, c
    rst $38
    rst $38
    di
    rst $38
    db $ec
    di
    rst $18
    ldh [$7c], a
    add a
    ld hl, sp+$0f
    ld hl, sp+$3f
    ld hl, sp+$7f
    db $fc
    rst $38
    ld [$000f], sp
    nop
    nop
    ldh [rP1], a
    db $ec
    ld a, $c1
    rrca
    ldh a, [rIF]
    ldh a, [$27]
    jr c, jr_07b_7fc5

    pop bc
    nop
    db $fc
    inc d
    rst $38
    add b
    rst $38
    push hl
    rst $38
    di
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
    ld a, a
    ld a, a
    adc a
    db $ed
    inc de
    call nz, $993b
    ld h, [hl]
    ld [hl], c
    adc [hl]
    rst $30
    ld [$11ee], sp
    sbc $21
    cp l
    ld b, d
    ld a, e
    add h
    rst $30
    ld [$10ef], sp
    xor $11
    sbc $21
    cp l
    ld b, d
    ld e, e
    add h
    rst $30
    ld [$0877], sp
    xor $11
    ld e, l
    ld [hl+], a
    xor l
    ld b, d
    cp e
    ld b, h
    ld h, a

jr_07b_7fc5:
    adc b
    ld [hl], a
    ld [$102f], sp
    ld e, l
    jr nz, @+$60

    ld hl, $017e
    cp l
    ld [bc], a
    sbc e
    inc b
    dec de
    inc b
    ld d, a
    ld [$102f], sp
    rst $28
    db $10
    sbc $21
    dec a
    ld b, d
    cp l
    ld b, d
    dec sp
    add h
    ld a, e
    add h
    rst $30
    ld [$10ef], sp
    rst $28
    db $10
    rst $18
    jr nz, @-$1f

    jr nz, @+$40

    ld b, c
    ld a, [hl]
    add c
    ld a, l
    add d
    db $fd
    ld [bc], a
    db $eb
    inc b
    ei
    inc b
    rst $30
    ld [$10ef], sp
