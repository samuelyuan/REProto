SECTION "ROM Bank $07f", ROMX[$4000], BANK[$7f]

    ld e, $40
    dec [hl]
    ld c, b
    or a
    ld c, b
    cp a
    ld b, b
    cp $00
    cp $00

jr_07f_400c:
    rst $38
    nop
    db $eb
    inc d
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    or a
    ld c, b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl
    ld b, $f5
    ld a, [bc]
    ld a, a
    add b
    db $dd
    ld [hl+], a
    ld e, [hl]
    and c
    rst $18
    jr nz, jr_07f_400c

    jr nz, @+$01

    nop
    rst $38
    nop
    rst $28
    db $10
    cp $01
    rst $38
    nop
    rst $38

jr_07f_4039:
    nop
    rst $18
    jr nz, jr_07f_4039

    inc bc
    db $fc
    inc bc
    ld e, a
    and b
    ld l, a
    sub b
    ld a, a
    add b
    ld [hl], a
    adc b
    ld [hl], a
    adc b
    db $76
    adc c
    rst $28
    db $10

jr_07f_404e:
    db $db
    inc h
    db $fc
    inc bc
    cp $01
    cp $01
    cp $01
    rst $38
    nop
    rst $18
    nop
    cp $01
    rst $28
    nop
    db $fd
    ld [bc], a
    cp $01
    db $fc
    inc bc
    db $fd
    ld [bc], a
    cp $01
    ld a, h
    add e
    db $f4
    inc bc
    or $01
    rst $18
    jr nz, jr_07f_404e

    jr nz, @+$01

    nop
    rst $38
    nop
    ei
    nop
    ei
    nop
    ei
    nop
    push af
    nop
    db $fd
    nop
    db $fd
    nop
    ld hl, sp+$00
    ld a, [$7f08]
    adc b
    or $88
    or a
    ret z

    ccf
    ret z

    sub $e8
    cp $c0
    ei
    call nz, $ecf1
    rst $10
    xor h
    or $8c
    cp a
    call nz, $847a
    dec de
    db $e4
    sbc a
    db $e4
    cp l
    add $bf
    call nz, $d0af
    rrca
    ldh a, [$bf]
    ret nc

    ld e, a
    ldh a, [$7f]
    ret nc

    rst $38
    ret nc

    cpl
    ret nc

    ld a, a
    add b
    sbc a
    ldh [$9f], a
    ldh [$ef], a
    ret nc

    sbc a
    ldh [$bf], a
    ldh [rOCPD], a
    db $f4
    ld l, e
    db $f4
    rst $28
    ldh a, [$8f]
    ldh a, [$a7]
    ld hl, sp-$49
    add sp, -$12
    pop af
    cp [hl]
    pop af
    xor e
    db $f4
    db $e3
    db $fc
    ld h, e
    db $fc
    ld h, e
    db $fc
    ld a, a
    db $fc
    or c
    cp $d1
    cp [hl]
    ld d, c
    cp [hl]
    ld e, $f9
    sub e
    db $fc
    daa
    ret c

    cpl
    ret c

    rla
    add sp, -$65
    db $e4
    adc e
    db $f4
    rst $10
    xor b
    ld c, d
    or l
    ld e, d
    xor l
    ret


    ld a, $8b
    ld a, h
    ld a, [hl-]
    db $ed
    ld h, $fd
    push hl
    cp a
    or a
    rst $38
    sbc l
    rst $38
    adc l
    rst $38
    rst $20
    rst $38
    ld e, d
    rst $38
    rst $28
    rst $38
    rst $30
    rst $38

jr_07f_410e:
    rst $30
    rst $38
    ei
    rst $38
    push af
    rst $38
    or a
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
    nop
    ccf
    ret nz

    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    ei
    inc b
    rst $18
    jr nz, jr_07f_410e

    jr nz, @-$67

    ld l, b
    ei
    inc b
    ei
    inc b
    db $db
    inc h
    rst $28
    db $10
    rst $28
    db $10
    db $eb
    inc d
    rst $28
    db $10
    xor a
    ld d, b
    cp $01
    ld a, [hl]
    add c
    ld e, h
    and e
    db $fc
    inc bc
    ccf
    ret nz

    cp d
    ld b, l
    cp d
    ld b, l
    ld c, a
    ccf
    rst $08
    ccf
    xor a
    rra
    ld l, a
    rra
    ld l, a
    rra
    ld h, a
    rra
    ld l, a
    rra
    inc hl
    rra
    ld [hl], e
    rrca
    scf
    rrca
    ld [hl], e
    rrca
    inc sp
    rrca
    dec hl
    rla
    ld [hl-], a
    rrca
    ld [$0417], sp
    dec de
    inc d
    dec bc
    jr c, @+$09

    inc a
    inc bc
    ld e, $01
    jr jr_07f_4181

    ld c, $01
    ld e, $01

Jump_07f_417e:
    inc e
    inc bc
    rst $08

jr_07f_4181:
    ccf
    adc a
    ld a, a
    rst $28
    rra
    rst $08
    ccf
    adc a
    ld a, a
    rst $08
    ccf
    rst $20
    rra
    rst $20
    rra
    db $eb
    rra
    ei
    rra
    db $e3
    rra
    ld h, e
    rra
    ld l, a
    rra
    rst $30
    rrca
    ld [hl], e
    rrca
    ld a, l
    rrca
    ld [hl], a
    rrca
    ld a, [c]
    rrca
    db $fd
    rlca
    pop af
    rrca
    db $fd
    rlca
    db $eb
    rla
    pop af
    rrca
    ei
    rlca
    ld sp, hl
    rlca
    rst $38
    inc bc
    ld sp, hl
    rlca
    db $fc
    inc bc
    or $0b
    db $fd
    inc bc
    db $ed
    inc de
    ld sp, hl
    rlca
    cp $01
    db $fd
    inc bc
    rst $38
    ld bc, $03fc
    cp [hl]
    ld b, c
    db $fc
    inc bc
    rst $38
    ld bc, $01ff
    db $fc
    inc bc
    ld a, [hl]
    add c
    db $fc
    inc bc
    db $ec
    inc bc
    db $fc
    inc bc
    rst $38
    nop
    cp $01
    cp $01
    ld a, [$af01]
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    or a
    ld b, b
    sub $21
    rst $38
    nop
    rst $38
    nop
    swap b
    rst $30
    nop
    rst $38
    nop
    ld [hl], l
    add b
    cp a
    ld b, b
    dec l
    ret nc

    ld l, a
    ret nc

    ei
    ret nz

    cpl
    ret nc

    rra
    ldh [$b7], a
    ret z

    cpl
    ret nc

    ld [c], a
    db $dd
    add c
    cp $c4
    ei
    pop de
    rst $38
    push bc
    ei
    push de
    ei
    pop hl
    rst $38
    ret c

    rst $38
    or b
    rst $38
    ld e, d
    rst $38
    add hl, sp
    cp $9d
    cp $9f
    rst $38
    cp a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld sp, hl
    rst $38
    db $fd
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
    nop
    rst $18
    nop
    ld a, l
    add d
    ei
    inc b
    rst $38
    nop
    ld a, a
    add b
    ld a, b
    add a
    ld [hl], h
    adc e
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
    sbc a
    ld a, a
    rrca
    rst $38
    rrca
    rst $38
    sbc a
    ld a, a
    rrca
    rst $38
    adc a
    ld a, a
    adc a
    ld a, a
    rst $08
    ccf
    rst $08
    ccf
    rst $18
    cpl
    rst $08
    ccf
    rst $28
    rra
    rst $00
    ccf
    rst $00
    ccf
    rst $00
    ccf
    rst $20
    rra
    and a
    ld e, a
    rst $10
    cpl
    rst $00
    ccf
    rst $20
    rra
    rst $20
    rra
    db $e3
    rra
    rst $20
    rra
    ld h, e
    rra
    di
    rrca
    db $d3
    cpl
    ld h, e
    rra
    di
    rrca
    ld c, e
    scf
    di
    rrca
    add e
    ccf
    db $e3
    rra
    ld h, e
    rra
    ld l, e
    rla
    add e
    ccf
    rst $10
    cpl
    rst $20
    rra
    rst $28
    rla
    rst $28
    rla
    rst $28
    rla
    rla
    cpl
    rst $20
    rra
    rst $00
    ccf
    ld h, a
    rra
    ld [hl], a
    rrca
    rst $38
    rrca
    cp a
    rrca
    rst $38
    rrca
    ld a, a
    rrca
    xor a
    rra
    rst $38
    rrca
    ld l, a
    rra
    adc a
    ccf
    xor a
    rra
    ld l, a
    rra
    rst $28
    rra
    ld [c], a
    rra
    ld h, b
    rra
    ld h, b
    rra
    pop bc
    ld a, $4a

Jump_07f_42f5:
    dec [hl]
    ld d, e
    inc l
    ei
    inc b
    rst $10
    jr z, jr_07f_435c

    and b
    rst $38
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
    ld a, a
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
    ld a, a
    add b
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
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
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
    cp a
    ld b, b
    rst $30
    ld [$ffff], sp
    rst $38
    rst $38
    db $f4
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    inc l
    db $d3
    cpl
    ret nc

    rst $38
    nop
    or b
    ld c, a
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_07f_435c:
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld e, e
    rst $38
    ld a, e
    rst $38
    add sp, -$01
    ld sp, hl
    rst $38
    reti


    rst $38
    db $fd
    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    pop af
    rst $38
    xor $ff
    or a
    rst $38
    db $f4
    rst $38
    ld a, [c]
    rst $38
    or b
    rst $38
    ret nz

    rst $38
    pop hl
    rst $38
    and $ff
    pop hl
    rst $38
    xor c
    rst $38
    ld a, l
    rst $38
    rst $30
    rst $38
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
    db $fd
    rst $38
    cp $ff
    cp $ff
    ld hl, sp-$01
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    ld hl, sp-$01
    pop af
    cp $f1
    cp $f0
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
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
    cp $ff
    cp $ff
    db $fc
    rst $38
    ld a, [$f8ff]
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38
    db $fc
    rst $38
    or $ff
    db $f4
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    add sp, -$01
    ldh [rIE], a
    ret nz

    rst $38
    add sp, -$01
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
    cp $ff
    db $fc
    rst $38
    cp $ff
    rst $38
    rst $38
    db $fc
    rst $38
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
    push af
    rst $38
    pop bc
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld bc, $4dfe
    or d
    dec bc
    db $f4
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
    ei
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    db $db
    rst $38
    cp [hl]
    rst $38
    cp $ff
    sbc $ff
    and b
    rst $38
    ld l, l
    rst $38
    ld a, [de]
    rst $38
    sbc a
    rst $38
    ld d, e
    rst $38
    di
    rst $38
    rst $10
    rst $38
    dec sp
    rst $38
    dec h
    rst $38
    rla
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    ccf
    rst $38
    ld l, a
    rst $38
    rra
    rst $38
    cpl
    rst $38
    ld [hl], a
    rst $38
    ld [$6fff], a
    rst $38
    db $eb
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $08
    rst $38
    scf
    rst $38
    pop bc
    cp $00
    rst $38
    ld bc, $01fe
    cp $01
    cp $27
    ret c

    ccf
    ret nz

    ccf
    ret nz

    xor a
    ld d, b
    rst $38
    nop
    ld [hl], a
    adc b
    rst $38
    nop
    rst $30
    ld [$20de], sp
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$3e], a
    pop bc
    ccf
    ret nz

    cpl
    ret nc

    ccf
    ret nz

    rra
    ldh [$1f], a
    ldh [$1f], a
    ldh [rIF], a
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    rra
    ldh [$2f], a
    ret nc

    rrca
    ldh a, [$3e]
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ld c, [hl]
    or b
    inc e
    ldh [$9f], a
    ld h, b
    call c, Call_07f_5920
    and b
    ld e, $e0
    ld a, [hl]
    add b
    inc a
    ret nz

    dec sp
    ret nz

    ld a, [hl]
    add b
    ld a, d
    add b
    ld a, h
    add b
    ld a, $c0
    ld e, a
    and b
    rra
    ldh [$7f], a
    add b
    ld a, a
    add b
    sbc a
    ld h, b
    ld e, a
    and b
    cpl
    ret nc

    cpl
    ret nc

    rlca
    ld hl, sp+$07
    ld hl, sp-$7f
    cp $85
    ld a, [$ffe0]
    cp $ff
    cp $ff
    ld hl, sp-$01
    ld sp, hl
    rst $38

Call_07f_4500:
    db $fc
    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
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
    db $fd
    rst $38
    ld sp, hl
    rst $38
    adc d
    rst $38
    add d
    rst $38
    ld bc, $00ff
    rst $38
    inc c
    di
    sbc c
    ld h, [hl]
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ld a, l
    rst $38
    cp $ff
    ei
    rst $38
    dec sp
    rst $38
    add hl, de
    rst $38
    ld c, b
    cp a
    ld [$0dff], sp
    rst $38
    scf
    rst $38
    ld a, a
    rst $38
    sbc a
    rst $38
    or $ff
    or a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld [hl], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    nop
    cp $00
    rst $30
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
    rst $38
    ret c

    rst $38
    db $f4
    rst $38
    or $ff
    xor $ff
    db $d3
    rst $38
    or $ff
    ld l, $ff
    or d
    rst $38
    db $ec
    rst $38
    and b
    rst $38
    and c
    cp $8d
    cp $fb
    cp $4d
    cp $2a
    db $fd
    sbc e
    db $fc
    dec sp
    db $fc
    or c
    cp $cb
    db $f4
    rst $10
    ld hl, sp-$7d
    db $fc
    ld b, a
    ld hl, sp+$07
    ld hl, sp-$31
    ldh a, [$8f]
    ldh a, [$9f]
    ldh [$8f], a
    ldh a, [rNR34]
    ldh [$0e], a
    ldh a, [$1f]
    ldh [$3e], a
    ret nz

    ccf
    ret nz

    ld a, $c0
    rra
    ldh [$fe], a
    ldh [$1f], a
    ldh [$bf], a
    ret nz

    sbc a
    ldh [$5f], a
    and b
    cp a
    ret nz

    ld [hl], $c8
    rst $10
    add sp, $0f
    ldh a, [$8f]
    ldh a, [$e3]
    db $fc
    reti


    cp $fc
    rst $38
    ldh a, [rP1]
    rst $38
    nop
    ld hl, sp+$00
    rst $38
    nop
    add c
    cp $0f
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [rIF], a
    ldh a, [rTAC]
    ld hl, sp+$03
    db $fc
    dec bc
    db $f4
    ld bc, $80fe
    rst $38
    add b
    rst $38
    db $fc
    rst $38
    xor $ff
    db $ec
    rst $38
    ldh [rIE], a
    inc de
    rst $38
    ld e, a
    rst $38
    rst $38
    rst $38
    ret nz

    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, h
    db $eb
    add hl, sp
    add $7f
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
    rst $38
    rst $38
    rst $38
    rst $18
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    rst $28
    rst $38
    pop af
    rst $38
    db $eb
    rst $38
    db $fd
    rst $38
    cp l
    rst $38
    sub e
    rst $38
    add hl, de
    rst $38
    ld a, a
    rst $38
    ld [hl], e
    rst $38
    inc sp
    rst $38
    cp a
    rst $38
    ld l, a
    rst $38
    rst $10
    rst $38
    daa
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    inc hl
    db $fd
    xor d
    rst $38
    cp $ff
    ld a, [c]
    rst $38
    rst $30
    rst $38
    ld l, c
    rst $38
    db $dd
    rst $38
    ld [$3aff], a
    rst $20
    jr nz, @+$01

    dec l
    db $d3
    dec h
    db $db
    ld a, [hl+]
    rst $10
    ld a, [hl]
    rst $00
    db $fc
    add e
    db $fc
    inc bc
    db $fd
    ld [bc], a
    ld a, a
    add b
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld a, [c]
    nop
    db $e4
    nop
    ldh [rP1], a
    ldh [rP1], a
    ldh [rP1], a
    ret nz

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
    add b
    nop
    add b
    nop
    add b
    nop
    ld b, b
    nop
    and b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
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
    or c
    nop
    ld sp, hl
    nop
    ei
    nop
    ei
    nop
    rst $38
    nop
    ld a, e
    add b
    ld a, a
    add b
    rst $28
    rst $38
    db $fc
    rst $38
    ld hl, sp-$01
    db $f4
    rst $38
    ld hl, sp-$01
    db $ed
    ld bc, $01ff
    rst $30
    ld bc, $01ff
    rst $38
    ld bc, $817f
    rra
    pop hl
    dec b
    ei
    inc hl
    rst $18
    ld e, a
    rst $38
    cp $ff
    cp $ff
    jr c, @+$01

    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [de], a
    db $ed
    jp z, $ed35

    ld [de], a
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
    ei
    rst $38
    cp [hl]
    rst $38
    ld a, h
    rst $38
    or l
    rst $38
    ld h, a
    rst $38
    add hl, bc
    rst $38
    adc h
    rst $38
    inc b
    rst $38
    nop
    rst $38
    db $10
    rst $28
    add c
    cp $c4
    ei
    ld a, [c]
    db $fd
    reti


    cp $fc
    rst $38
    db $fc
    rst $38
    rst $30
    rst $38
    rst $30
    rst $38
    or c
    rst $38
    ldh a, [rIE]
    rst $38
    rst $38
    ld sp, hl
    rst $38
    ld e, c
    cp $fc
    rst $38
    call $dcfe
    rst $38
    cp $ff
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
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    ld sp, hl
    cp $f9
    cp $f3
    db $fc
    ld sp, hl
    cp $f1
    cp $f1
    cp $f1
    cp $f1
    cp $e1
    cp $e1
    cp $f1
    cp $f1
    cp $f3
    db $fc
    pop hl
    cp $e3
    db $fc
    di
    db $fc
    db $ec
    rst $38
    db $ed
    cp $ef
    db $fc
    add e
    db $fc
    jp $c3fc


    db $fc
    jp $c3fc


    db $fc
    db $e3
    db $fc
    add a
    ld hl, sp-$1a
    ld hl, sp-$39
    ld hl, sp-$79
    ld hl, sp-$39
    ld hl, sp-$39
    ld hl, sp-$52
    ldh a, [$ce]
    ldh a, [$cf]
    ldh a, [$8f]
    ldh a, [$af]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$97]
    add sp, -$31
    ldh a, [$8e]
    ldh a, [$ce]
    ldh a, [$8f]
    ldh a, [$8f]
    ldh a, [$87]
    ld hl, sp-$71
    ldh a, [$8b]
    db $f4
    sbc a
    ldh [$86], a
    ld hl, sp-$31
    ldh a, [$8e]
    ldh a, [$cf]
    ldh a, [$c7]
    ld hl, sp-$39
    ld hl, sp-$19
    ld hl, sp-$1a
    ld hl, sp-$1a
    ld hl, sp-$39
    ld hl, sp-$3a
    ld hl, sp-$19
    ld hl, sp-$1d
    db $fc
    rst $20
    ld hl, sp-$1d
    db $fc
    db $eb
    db $f4
    rst $00
    ld hl, sp-$39
    ld hl, sp-$29
    ld hl, sp-$0d
    db $fc
    db $e3
    db $fc
    di
    db $fc
    ld a, [c]
    db $fd
    di
    db $fc
    ld a, [c]
    db $fd
    ld a, [c]
    db $fd
    pop af
    cp $bb
    db $fc
    inc sp
    db $fc
    add hl, bc
    cp $01
    cp $00
    rst $38
    ld [de], a
    db $ed
    dec a
    jp nz, $e01f

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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    di
    rst $38
    pop af
    rst $38
    ldh [rIE], a
    cp h
    rst $38
    ld e, $ff
    inc b
    rst $38
    nop
    rst $38
    ld bc, $2bff
    rst $38
    inc [hl]
    rst $38
    ld h, l
    rst $18
    rrca
    rst $38
    ld [hl+], a
    rst $38
    ld de, $b9ff
    rst $38
    daa
    rst $18
    add l
    rst $38
    add hl, de
    rst $28
    sub l
    db $eb
    adc e
    rst $30
    ld d, e
    rst $28
    add h
    ld a, a
    dec c
    rst $38
    ld b, l
    rst $38
    rlca
    rst $38
    inc hl
    rst $38
    pop af
    rst $38
    di
    rst $38
    ei
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    db $fd
    rst $38
    rst $20
    cp $fd
    cp $e5
    cp $f9
    cp $ed
    cp $e5
    cp $e0
    rst $38
    ret c

    rst $38
    ld [c], a
    db $fd
    jp nz, $d7fd

    ld hl, sp-$69
    ld hl, sp-$4d
    db $fc
    rst $10
    ld hl, sp-$4a
    jp hl


    xor a
    ldh a, [$96]
    jp hl


    cp [hl]
    pop hl
    adc l
    ld a, [c]
    dec l
    ld a, [c]
    adc h
    di
    ld e, l
    ld [c], a
    ld l, c
    or $ef
    ld hl, sp-$31
    ldh a, [$ee]
    ldh a, [$de]
    ldh [$9e], a
    ldh [$8a], a
    db $f4
    add e
    db $fc
    add [hl]
    ld hl, sp-$51
    ldh a, [$8f]
    ldh a, [$e3]
    db $fc
    cp l
    or $ff
    ldh [$b3], a
    db $ec
    ld a, c
    and $dd
    ld [c], a
    sbc a
    ldh [$97], a
    add sp, -$09
    ret z

    daa
    ret c

    rlca
    ld hl, sp-$31
    ldh a, [$9f]
    ldh [$db], a
    ldh [$5f], a
    ldh [$9f], a
    ldh [$9e], a
    ldh [rIE], a
    ret nz

    sbc a

Call_07f_48b7:
    ldh [$ce], a
    ldh a, [$a7]
    ld hl, sp-$72
    ldh a, [$8f]
    ldh a, [$df]
    ldh [rNR22], a
    add sp, -$71
    ldh a, [$cf]
    ldh a, [rIF]
    ldh a, [$ef]
    or b
    sub a
    ld hl, sp-$75
    db $f4
    rla
    add sp, -$31
    ldh a, [$cf]
    ldh a, [$cf]
    ldh a, [rIF]
    ldh a, [$af]
    ldh a, [$fb]
    db $f4
    db $db
    db $f4
    pop bc
    cp $e2
    rst $38
    ei
    cp $f5
    cp $e5
    cp $ef
    cp $47
    cp $97
    cp $d6
    nop
    jp c, $ed00

    nop
    or $00
    rst $30
    ld [bc], a
    rst $30
    inc bc
    ei
    inc bc
    db $fd
    inc bc
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
    push af
    nop
    rst $20
    nop
    sub a
    rst $38
    or d
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    ccf
    rst $38
    ld e, a
    rst $38
    ei
    rst $38
    rst $38
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
    rst $18
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
    rst $28
    db $10
    rst $38
    nop
    cp $01
    cp $01
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
    cp a
    ld b, b
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld a, [hl]
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
    di
    nop
    or e
    nop
    cp l
    nop
    db $ed
    nop
    or l
    nop
    xor a
    nop
    dec l
    nop
    xor c
    nop
    ld [c], a
    nop
    or [hl]
    nop
    ld [$c900], a
    nop
    ld a, [c]
    nop
    ld a, [$c900]
    nop
    or c
    nop
    db $fd
    nop
    db $fd
    nop
    ei
    nop
    pop af
    nop
    ei
    nop
    ld a, e
    nop
    rst $38
    nop
    rst $38
    nop
    db $ed
    nop
    rst $28
    nop

jr_07f_49a4:
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    db $fd
    nop
    rst $18
    nop
    rst $38
    nop
    rst $28
    nop
    rst $38
    nop
    db $db
    inc b
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
    rst $38
    nop
    rst $30
    nop
    cp $00
    rst $10
    ld [$0cf3], sp

jr_07f_49cc:
    ld a, a
    nop
    sbc $00
    rst $38
    nop
    ld h, $00
    and [hl]
    nop
    xor a
    nop
    jp nc, $f500

    nop
    xor c
    nop
    reti


    nop
    ld a, [$9200]
    ld b, b
    ldh a, [rP1]
    cp $00
    ld sp, hl
    nop
    rst $18
    jr nz, jr_07f_49cc

    jr nz, @+$01

    jr nz, @-$03

    inc h
    cp $21
    ld c, [hl]
    or c
    rst $30
    jr jr_07f_4a30

    ret c

    rst $28
    sub b
    ret c

    rst $20
    cp $e1
    and b
    ld b, b
    add c
    ld [hl], b
    ld b, b
    jr c, jr_07f_49a4

    jr nz, @-$01

    ld c, $fb
    inc b
    ei
    rlca
    rst $30
    nop
    ei
    ld bc, $08f7
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
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a

jr_07f_4a30:
    cp [hl]
    ld b, c
    jp c, $ed25

    ld [de], a
    cp $01
    ld a, [$c805]
    scf
    ret nc

    cpl
    ldh a, [rIF]
    ret nc

    cpl
    ldh [$1f], a
    call nz, $f03b
    rrca
    ret nc

    cpl
    nop
    rst $38
    ld b, b
    cp a
    nop
    rst $38
    cp $01
    ld a, [hl]
    ld bc, $00ff
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    ei
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
    db $fd
    ld [bc], a
    rst $38
    nop
    sub $00
    cp $00
    rlc b
    db $dd
    nop
    ld d, h
    nop
    add [hl]
    nop
    adc $00
    sbc a
    nop
    ret c

    nop
    jp hl


    nop
    jp nz, Jump_000_1e00

    nop
    dec c
    nop
    ei
    nop
    cp [hl]
    nop
    ld [hl], l
    nop
    ld sp, hl
    nop
    ld l, a
    nop
    ld a, a
    nop
    cp [hl]
    ld bc, $00ff
    rst $38
    nop
    ld a, a
    nop
    db $fd
    ld [bc], a
    db $f4
    dec bc
    push af
    ld a, [bc]
    rst $30
    ld [$00ff], sp
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $03
    rst $38
    nop
    rst $18
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    xor $11
    ld a, a
    ld bc, $21de
    cp $01
    and l
    dec de
    ld a, [$f905]
    ld b, $7d
    ld [bc], a
    rst $38
    nop
    ld a, a
    nop
    rst $28
    nop
    ld a, a
    nop
    adc d
    nop
    dec bc
    nop
    ld c, c
    nop
    ld c, a
    nop
    add l
    nop
    ld d, [hl]
    nop
    ld [hl], a
    nop
    cp [hl]
    ld bc, $00ff
    cp $01
    rst $38
    nop
    rst $38
    ld bc, $01fe
    rst $38
    ld bc, $0bf5
    push af
    dec bc
    or b
    ld c, a
    or b
    ld c, a
    ret nz

    ccf
    ld h, l
    sbc e
    ld b, h
    cp e
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld hl, $0c00
    nop
    xor [hl]
    nop
    ld d, c
    add b
    call $ca00
    ldh [$bb], a
    ld b, b
    xor c
    ld b, b
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18

jr_07f_4b1f:
    jr nz, jr_07f_4b1f

    nop
    rst $30
    ld [$08f7], sp
    sub $28
    ld b, a
    cp b
    add [hl]
    ld a, c
    inc d
    db $eb
    ld [$40f7], sp
    cp a
    add b
    ld a, a
    adc b
    ld [hl], a
    and b
    ld e, a
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
    ld [bc], a
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
    ld a, [hl]
    add c
    db $fc
    rlca
    ld [hl], c
    adc [hl]
    ld l, e
    sub h
    ld a, [c]
    dec c
    ld a, [$a505]
    ld e, d
    sbc $29
    sub $29
    db $d3
    inc l
    db $e3
    inc e
    rst $30
    ld [$01ff], sp
    rst $38
    ld bc, $01ff
    rst $28
    ld sp, $20df
    rst $38
    nop
    ld a, a
    nop
    ei
    nop
    ld a, a
    nop
    db $fd
    nop
    rst $38
    nop
    ei
    nop
    push de
    nop
    sbc [hl]
    ld bc, $00f7
    rst $30
    nop
    rst $38
    nop
    or $00
    ld [hl], a
    nop
    rst $18
    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp $09
    db $fc
    ld c, a
    db $f4
    ld c, a
    dec l
    jp c, $8e71

    jp hl


    ld d, $f6
    add hl, bc
    ld l, b
    sub a
    ld c, b
    or a
    db $10
    rst $28
    cp b
    rst $00
    ld d, $f9
    push hl
    ld a, [de]
    dec sp
    call nz, $98ef
    ld [hl], d
    adc l
    or l
    ld c, [hl]
    ei
    inc b
    ld a, [hl]
    add c
    dec sp
    call nz, $817e
    ld a, l
    add d

jr_07f_4bc6:
    ld a, a
    add b
    cp a
    ld b, b
    cp [hl]
    ld b, b
    rst $20
    jr jr_07f_4bc6

    ld [$007e], sp
    rst $20
    nop
    rst $00
    nop
    rst $00
    nop
    jp $8f00


    nop
    dec c
    nop
    ld h, [hl]
    nop
    rst $20
    nop
    inc sp
    nop
    ei
    nop
    rst $30
    ld [$09fe], sp
    cp $01
    cp $01
    ld h, a
    sbc b
    add d
    ld a, l
    dec bc
    db $fc
    ld l, b
    sbc a
    call Call_07f_603a
    sbc a
    sub h
    ld a, e
    ld a, [hl+]
    rst $38
    ld h, l
    rst $38
    ld a, l
    nop

jr_07f_4c02:
    dec [hl]
    nop
    and a
    nop
    db $db
    nop
    rst $00
    db $10
    sub c
    nop
    xor d
    nop
    dec a
    nop
    ld a, a
    nop
    ld a, a
    nop
    pop af
    nop
    reti


    jr nz, jr_07f_4c02

    nop
    db $d3
    nop
    xor c
    nop
    xor a
    nop
    ld e, c
    add h
    or a
    nop
    cp $00
    cp [hl]
    ld b, b
    cp $00
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    rra
    ldh [$0e], a
    pop af
    rlca
    ld hl, sp+$07
    ld hl, sp+$03
    db $fc
    nop
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    db $10
    rst $38
    ld [bc], a
    rst $38
    add l
    rst $38
    dec l
    rst $38
    adc [hl]
    rst $38
    ld a, [c]
    rst $38
    ld l, c
    rst $38
    ld a, c
    rst $38
    ld de, $6fff
    rst $38
    ld a, [hl]
    rst $38
    ld a, d
    rst $38
    and d
    ld e, a
    ld b, b
    cp a
    call $063b
    ld sp, hl
    add l
    ld a, e
    adc c
    db $76
    ret nc

    cpl
    ret z

    scf
    ld h, b
    sbc a
    ld a, [c]
    sbc l
    ld a, b
    sub a
    or b
    rrca
    db $eb
    inc d
    ld l, e
    inc d
    or c
    ld c, $ea
    dec d
    db $fc
    inc bc
    ld a, e
    add h
    ld a, l
    add d
    dec a
    add d
    ccf
    add b
    scf
    adc b
    rst $30
    ld [$00df], sp
    cp a
    nop
    xor e
    inc d
    rst $38
    nop
    cp $01
    rst $38
    nop
    db $dd
    ld [hl+], a
    ld sp, hl
    ld b, $fa
    dec b
    or e
    ld c, l
    ld [hl], a
    adc c
    ld [hl], d
    adc l
    rst $10
    cpl
    inc bc
    rst $38
    sub e
    ld a, a
    db $10
    rst $38
    add hl, bc
    rst $30
    adc d
    ld [hl], a
    add e
    ld a, a
    rst $00
    ei
    adc l
    di
    ld c, d
    cp l
    and [hl]

Jump_07f_4cb3:
    ld a, l
    ld b, h
    cp a
    and [hl]
    ld e, a
    ld b, c
    cp [hl]
    ld b, d
    cp a

jr_07f_4cbc:
    add h
    ld a, a

jr_07f_4cbe:
    ld h, h
    cp a
    sub b
    ld l, a
    adc c
    db $76
    and a
    ld e, b
    add d
    ld a, l
    or l
    ld l, d
    rst $00
    jr c, jr_07f_4cbc

    db $10
    rst $38
    db $10
    dec e
    ld h, d
    rst $38
    ld c, $c6
    ld a, l
    rst $20
    jr @-$0b

    inc c
    rst $20
    jr @+$01

    nop
    daa
    ret c

    ld a, [c]
    call $dca3
    ld c, d
    cp l
    sbc e
    ld l, h
    rst $10
    jr z, jr_07f_4cbe

    ld l, $83
    ld a, [hl]
    jp nz, $d57d

    ld a, a
    ld sp, $6dfe
    rst $38
    push de
    rst $38
    ld l, h
    rst $38
    dec [hl]
    rst $38
    dec e
    rst $38
    cp a
    rst $38
    ld e, a
    nop
    ld [hl], a
    inc c
    di
    inc c
    ld e, a
    nop
    db $db
    nop
    and a
    nop
    rst $28
    nop
    db $d3
    nop
    set 7, a
    jp hl


    rst $38
    jp hl


    rst $38
    sub e
    rst $38
    ei
    rst $38
    db $eb
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop

jr_07f_4d24:
    rst $18
    jr nz, jr_07f_4d24

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
    cp $01
    rst $18
    jr nz, @+$01

    nop
    ld a, a
    add b
    ld a, a
    add b
    dec sp
    call nz, $e01f
    rst $28
    ldh a, [$e7]
    ld hl, sp-$0f
    cp $7c
    rst $38
    ld a, [hl]
    rst $38
    rst $38
    rst $38
    db $e3
    rst $38
    xor e
    rst $38
    add a
    rst $38
    rst $20
    rst $38
    rst $20
    cp a
    inc h
    rst $38
    and d
    rst $38
    call nz, Call_07f_55ff
    rst $38
    inc d
    rst $38
    ld e, c
    rst $38
    jp z, $9aff

    rst $38
    adc l
    cp $90
    rst $38
    ld a, d
    sbc a
    ret nc

    cpl
    call c, $d827
    daa
    adc c
    ld [hl], a
    inc hl
    rst $18
    set 7, [hl]
    ld h, l
    sbc $ed
    ld d, $ec
    rra
    add l

jr_07f_4d83:
    ld a, a
    sbc b
    ld l, a
    inc c
    rst $38
    ld [$b2ff], sp
    ld e, a
    dec de
    rst $30
    inc hl

jr_07f_4d8f:
    rst $38
    ld e, a
    rst $38
    ld c, a
    rst $38
    ld c, a
    rst $38
    rst $28
    rst $30
    xor e
    rst $30
    call z, Call_07f_52f7
    rst $28
    sbc c
    xor $86
    rst $38
    call z, $e5ff
    sbc $e8
    rst $10
    and d
    rst $18
    ccf
    rst $08
    db $dd
    xor a
    ld b, l
    cp e
    jp $c33f


    ccf
    add a
    ld a, a
    add d
    ld a, a
    ld e, d
    xor l
    ld d, $ed
    ld b, c
    cp a
    jr nc, jr_07f_4d8f

    rla
    db $eb
    ld [hl], d
    adc l
    ld d, l
    xor e
    or a
    ld c, e
    ld sp, hl
    ld b, a
    cp $01
    rst $30
    ld [$00ff], sp
    ld a, d
    add l
    rst $38
    add b
    sbc e
    db $e4
    xor a
    ret nc

    adc a
    ld [hl], b
    rst $28
    jr nc, jr_07f_4d83

    ld a, c
    xor a
    ld [hl], b
    daa
    ret c

    ccf
    ret nz

    ld a, a
    add b
    ld b, a
    cp b
    ld h, c
    sbc [hl]
    ld b, h
    cp a
    sub e
    db $ed
    inc b
    ei
    add b
    nop
    ld b, d
    nop
    or b
    nop
    ld h, a
    nop
    scf
    nop
    push af
    nop
    rst $38
    nop
    sbc l
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_07f_4e06:
    rst $20
    jr jr_07f_4e06

    ld [bc], a
    db $fd
    ld b, $fb
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
    db $fd
    ld [bc], a
    rst $38
    nop
    or $09
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
    rst $38
    nop
    ld sp, hl
    ld b, $fc
    inc bc
    ld e, [hl]
    and e
    ld hl, sp+$07
    ld c, h
    or e
    ld [$5e15], a
    and c
    or e
    ld c, h
    xor l
    ld d, d
    xor l
    ld d, d
    ld d, $e9
    rst $20
    nop
    rst $30
    nop
    adc a
    nop
    ld e, $01
    cp a
    nop
    db $fd
    ld b, $95
    ld c, $36
    dec c
    di
    inc c
    ld a, [hl-]
    inc c
    scf
    ld [$00df], sp
    scf
    nop
    ld l, l
    nop
    cp l
    nop
    ld a, [hl-]
    nop
    sub d
    rst $38
    xor e
    rst $38
    sub h
    rst $38
    ld a, l
    cp a
    cp c
    ld [hl], a
    sbc d
    ld a, a
    ld e, h
    cp a
    ret nz

    ccf
    add c
    ld a, [hl]
    dec d
    cp $52
    cp a
    ld d, b
    cp a
    ld d, $ff
    ld a, [hl-]
    rst $38
    ld a, [de]
    rst $38
    sub d
    rst $38
    pop af
    rst $28
    ret nc

    rst $28
    ld sp, hl
    rst $00
    add sp, -$29
    cp d
    rst $20
    add l
    rst $38
    xor b
    rst $10
    adc b
    rst $30
    adc c
    rst $38
    adc b
    ld a, a
    rlca
    rst $38
    xor c
    rst $38
    sbc [hl]
    rst $38
    sbc l
    rst $38
    ld h, h
    rst $38
    adc e
    rst $38
    ld a, [bc]
    rst $38
    sbc l
    rst $38
    ld [$28ff], sp
    rst $10
    jp c, $08a7

    rst $30
    nop
    rst $38
    ld h, h
    db $db
    cp h
    jp $c8b7


    ld l, a
    sub b
    ld a, a
    add b
    ld l, c
    sub [hl]
    ld a, [$5405]
    xor e
    xor $39
    ld e, [hl]
    cp c
    ld h, d
    sbc l
    sbc h
    ld h, e
    ld a, b
    rst $00
    add hl, de
    rst $28
    ld l, b
    cp a
    cp c
    ld a, a
    ld b, [hl]
    rst $38
    sub d
    ld a, a
    ld c, [hl]
    or a
    cp d
    ld d, a
    ld b, a
    cp e
    inc bc
    rst $38
    ld de, $a1ff
    rst $38
    xor c
    rst $38
    ld d, l
    nop
    cp c
    nop
    db $db
    nop
    add a
    nop
    sbc a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    sub $09
    sbc l
    ld [bc], a
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $38
    nop
    ei
    inc b
    push af
    ld c, $f7
    ld c, $f9
    ld b, $fe
    ld bc, $00ff

jr_07f_4f08:
    rst $38
    nop
    ei
    inc b
    ld sp, hl
    ld b, $fb
    inc b
    rst $38
    nop
    rst $38

jr_07f_4f13:
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_07f_4f08

    db $10
    rst $28
    db $10
    rst $28
    db $10
    sub a
    ld l, b
    ld a, a
    add b
    ld b, a
    cp b
    push bc
    ld a, [hl-]
    ld [hl], h
    adc e
    ld a, b
    add a
    db $ed
    ld [de], a
    and c
    ld e, [hl]
    ld [hl+], a
    db $dd
    ld [hl], d
    adc l
    jr nz, jr_07f_4f13

    and b
    ld e, a
    ld a, [de]
    push hl
    sbc c
    ld h, [hl]
    adc c
    db $76
    swap h
    cp a
    ld b, b
    or a
    nop
    cp a
    nop
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $08
    jr nc, @+$01

    nop
    rst $18
    nop
    rst $38
    nop
    cp h
    inc bc
    call c, $de03
    ld bc, $00ff
    ld l, a
    rst $38
    jp z, Jump_07f_69ff

    rst $38
    ld e, c
    rst $38
    or l
    rst $38
    ld d, a
    rst $38
    db $d3
    rst $38
    db $ed
    rst $38
    daa
    nop
    rlc b
    ld l, a
    nop
    ld e, e
    ld bc, $019b
    xor a
    inc bc
    sbc d
    rlca
    ld l, $1e
    add e
    inc a
    jp c, $5320

    jr nz, @-$26

    inc hl
    ld c, e
    inc sp
    rst $10
    dec sp
    cp e
    ccf
    rst $30
    ccf
    scf
    ld a, a
    or b
    ld a, a
    cp $71
    dec c
    ldh a, [$2b]
    ret nc

    rra
    ld [hl], b
    cp l
    ld [hl], b
    ld h, d
    jr nc, jr_07f_500e

    jr nc, jr_07f_4fee

    jr nc, jr_07f_4fe0

    nop
    ld b, a
    db $10
    inc sp
    nop
    dec [hl]
    nop
    sbc l
    nop
    dec e
    nop
    adc a
    rst $38
    dec b
    rst $38
    ld de, $97ff
    ld a, a
    cpl
    rst $38
    or [hl]
    ld a, a
    inc sp
    rst $38
    sbc [hl]
    rst $38
    jr nz, @+$01

    adc d
    rst $38
    ld e, l
    rst $38
    ld hl, $65ff
    rst $38
    ld e, e
    rst $38
    ld d, e
    rst $38
    ccf
    rst $38
    cp a
    rst $38
    rrca
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    or $ff
    xor e
    rst $38
    ld [hl], l
    rst $38
    rst $30
    rst $38

jr_07f_4fe0:
    rst $18
    nop
    cp a
    nop
    rlc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a

jr_07f_4fee:
    cp $01
    db $ed
    inc bc
    cp $01
    rst $38
    nop
    ld a, c
    add [hl]
    ld l, a
    sub b
    ld a, a
    add b
    cp a
    ret nz

    ccf
    ret nz

    ld a, a
    add b
    ccf
    ret nz

    ld l, a
    sub b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

jr_07f_500e:
    rst $28
    db $10
    rst $38
    nop
    cp $01
    ld l, [hl]
    sub c
    cp e
    ld b, h
    ld l, a
    sub b
    ld h, l
    sbc d
    cp a
    ld b, b
    ld h, [hl]
    sbc c
    ld a, [c]
    dec c
    ret c

    daa
    cp b
    ld b, a
    push af
    ld a, [bc]
    xor c
    ld d, [hl]
    add l
    ld a, d

jr_07f_502c:
    ld d, l
    xor d
    ld a, [hl+]
    push de
    ld [bc], a
    db $fd
    ld d, $e9
    add [hl]
    ld a, c
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    ld a, a
    ld c, c
    or [hl]
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    ld a, [$fe05]
    ld bc, $51af
    db $fd
    inc bc
    cp [hl]
    ld b, e
    ld a, d
    add a
    ld a, d
    add a
    cp $07
    cp $07
    or $0f
    db $fd
    ld c, $f1
    ld c, $de
    nop
    rst $10
    ld [$18c1], sp
    rst $10
    ld [$01fe], sp
    rst $38
    nop
    db $db
    jr nz, jr_07f_502c

    ld h, d
    pop hl
    ld a, [c]
    rst $20
    ldh a, [$f5]
    jp nz, $c007

    sub a
    nop
    rst $38
    nop
    or a
    ld [$08df], sp
    ld h, a
    adc b
    rst $10
    adc b
    rst $00
    sbc b
    rst $08
    sub b
    ld l, [hl]

jr_07f_508d:
    sub b
    sbc [hl]
    ld h, c
    ld d, a
    and b
    xor $00
    db $fd
    nop
    ei
    nop
    db $fd
    nop
    rst $30
    ret z

    rst $30
    ret c

    ccf
    ret nc

    ld a, a
    db $10
    ld a, d
    ld bc, $40af
    cp a
    ld b, b
    rst $38
    ld b, b
    ei
    ld b, b
    ld a, e
    add b
    rrca
    add b
    rst $28
    rst $38
    rst $18
    rst $38
    cp a
    rst $38
    ld [hl], a
    rst $38
    rst $10
    rst $38
    ld [hl], a
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    xor a
    nop
    ld a, a
    nop
    dec sp
    inc b

jr_07f_50c6:
    xor e
    inc d
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_07f_508d

    ld b, b
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    rst $38
    nop
    rst $28
    db $10
    call $cf32
    jr nc, @-$0f

    db $10
    rst $38
    nop
    db $e3
    inc e
    rst $28
    db $10
    db $d3
    jr nz, @-$0c

    ld bc, $00ff
    ei
    inc b
    pop af
    rrca
    ld sp, hl
    ld b, $fe
    ld bc, $00ff
    db $fc
    inc bc
    rst $10
    jr c, jr_07f_50c6

    inc [hl]
    sbc [hl]
    ld h, c
    jp c, $a125

    ld a, [hl]
    pop af
    ld a, $e3
    inc e
    rst $38
    nop
    sbc e
    ld h, h
    pop af
    ld c, $f4

jr_07f_510d:
    rrca
    ld hl, sp+$07
    push af
    ld a, [bc]
    xor h
    ld d, e
    xor [hl]

jr_07f_5115:
    ld d, c
    dec h
    jp c, $cb34

    add b
    ld a, a
    sub l
    ld l, a
    jp Jump_000_263c


    reti


    and l
    ld e, d
    xor a
    ld d, b
    inc b
    ei
    dec b
    ld a, [$fa05]
    jr nz, jr_07f_510d

    sub b
    ld l, a
    add d
    ld a, a
    ld b, b
    cp a
    jr nz, jr_07f_5115

    ld [hl+], a
    db $dd
    nop
    rst $38
    ld [de], a
    rst $28
    add b

Jump_07f_513d:
    ld a, a
    ld [hl+], a
    db $dd
    nop
    nop
    nop
    nop
    nop
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
    nop
    nop
    nop
    nop
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
    jr jr_07f_518e

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07f_519e

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07f_51ae

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07f_51be

    ld [hl-], a

jr_07f_518e:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07f_51ce

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_07f_519e:
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

jr_07f_51ae:
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

jr_07f_51be:
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

jr_07f_51ce:
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

Jump_07f_523f:
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
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0202
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    nop
    ld [bc], a
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld bc, $0101
    ld bc, $0001
    ld [bc], a
    ld bc, $0500
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0100
    ld bc, $0000
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop

Call_07f_52f7:
    nop
    ld [bc], a
    ld bc, $0101
    ld [bc], a
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
    ld [bc], a
    ld bc, $0201
    nop
    ld bc, $0201
    ld [bc], a
    ld bc, $0202
    nop
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld bc, $0101
    nop
    nop
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    ld [bc], a
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
    ld [bc], a
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0202
    ld bc, $0201
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    add hl, bc
    ld bc, $0909
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
    ld bc, $0901
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
    ld bc, $ff01
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$e0ff]
    rst $38
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$03ff], sp
    rst $38
    nop
    rst $38
    ld b, h
    rst $38
    rst $38
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
    cp $c0
    rst $38
    inc b

Call_07f_53ff:
    ei
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
    ld [bc], a
    rst $38
    jr nz, @+$01

    add c
    add b
    add c
    add b
    add a
    add b
    jp $c180


    add b
    add e
    add b
    pop bc
    add b
    pop bc
    add b
    pop bc
    add b
    add c
    add b
    jp $c380


    add b
    pop bc
    add b
    jp $c180


    add b
    add e
    add b
    ret nz

    add c
    jp $c180


    add b
    pop bc
    add b
    ret nz

    add b
    jp nz, $c380

    add b
    add c
    ret nz

    add d
    ret nz

    pop bc
    add b
    add e
    ret nz

    pop bc
    add b
    add b
    ret nz

    ret nz

    add b
    pop bc
    add b
    add b
    ret nz

    add b
    ret nz

    add b
    ret nz

    add d
    ret nz

    add b
    ret nz

    add b
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

    ret nz

    ret nz

    ret nz

    pop bc
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

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

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

    ldh [$c0], a
    ldh [$c0], a
    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ret nz

    ldh [$c0], a
    ret nz

    ret nz

    ldh [$c0], a
    ldh [$c0], a
    ldh [$c0], a
    pop hl
    ret nz

    pop hl
    ret nz

    ldh [$c0], a
    pop hl
    ret nz

    pop bc
    ldh [$e0], a
    ret nz

    ldh [$c0], a
    ldh [$c0], a
    pop hl
    ret nz

    db $e3
    ret nz

    jp $c1e0


    ldh [$c0], a
    ldh [$c1], a
    ldh [$c1], a
    ldh [$c1], a
    ldh [$c0], a
    ldh [$e1], a
    ldh [$e1], a
    ldh [$e1], a
    ldh [$ed], a
    ldh [$e7], a
    ldh [$e1], a
    ldh [rIE], a
    ldh [$ef], a
    ldh [$ef], a
    ldh [rIE], a
    ldh [$f7], a
    ldh [$f7], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [rIE]
    ldh [rIE], a
    ldh [rIE], a
    ldh [$ef], a
    ldh a, [$e9]
    or $a7
    ld hl, sp+$47
    cp b
    cp a
    ld b, b
    ld a, $c1
    ld d, e
    xor h
    rrca
    ldh a, [rTIMA]
    ld a, [$ff00]
    nop
    rst $38
    ld [bc], a
    db $fd
    ld b, b
    rst $38
    ld b, b
    rst $38
    sbc a
    ld a, [hl]
    cp a
    ld a, [hl]
    cp a
    ld a, [hl]
    rst $18
    ld a, $fe
    ccf
    sbc $3f
    cp $3f
    sbc $3f
    rst $18
    ccf
    rst $08
    ccf

jr_07f_5524:
    sbc $3f
    ld e, [hl]
    ccf
    ld l, [hl]
    rra
    ld c, [hl]
    ccf
    and $1f
    adc $3f
    xor $1f
    and $1f
    push hl
    ld e, $e5
    ld e, $ea
    rra
    ldh [$1f], a
    ld h, b
    rra
    ld h, c
    ld e, $e1
    ld e, $60
    rra
    ld h, b
    rra
    ld h, b
    rra
    ldh a, [rIF]
    pop hl
    ld e, $e5
    ld e, $61
    ld e, $71
    ld c, $e1
    ld e, $69
    ld d, $79
    ld b, $69
    ld d, $f1
    ld c, $e3
    inc e
    rst $38
    nop
    ld l, a
    db $10
    ld e, a
    jr nz, jr_07f_5524

    nop
    ld [hl], l
    ld a, [bc]
    ld a, a
    nop
    db $fd
    ld [bc], a
    cp l
    ld [bc], a
    cp l
    ld [bc], a
    cp a
    nop
    or e
    inc c
    ei
    inc b
    dec sp
    inc b
    cp e
    inc b
    ld a, [hl]
    ld bc, $027d
    di
    inc c
    ei
    inc b
    rst $38
    nop
    add hl, sp
    ld b, $7b
    inc b
    dec sp
    inc b
    ld a, e
    inc b
    add hl, sp
    ld b, $3b
    inc b
    ld a, a
    rst $38
    rra
    rst $38
    rra
    rst $38
    rra
    rst $38
    add l
    ld a, a
    rla
    rst $38
    ccf
    rst $38
    rra
    rst $38
    rra
    nop
    ld e, $01
    ld a, [hl]
    ld bc, $07f8
    or c
    ld c, $79
    ld b, $b0
    rrca
    ld l, b
    rla
    ldh a, [rIF]
    ld a, [c]
    rrca
    ld [hl], b
    rrca
    ld h, b
    rra
    pop af
    rrca
    ldh [$1f], a
    ldh [$1f], a
    pop bc
    ccf
    ld d, c
    cpl
    db $fd
    rrca
    rst $28
    rra
    rst $28
    rra
    rst $28
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $08
    ccf
    adc $3f
    ret nc

    ccf
    ret nz

    ccf
    ret nz

    ccf
    ret nz

    ccf
    add b
    ld a, a
    ld bc, $03fe
    db $fc
    dec [hl]
    jp z, $08f7

    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc $20
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

jr_07f_55fd:
    nop
    db $fd

Call_07f_55ff:
    ld [bc], a
    db $fd
    ld [bc], a
    sub e
    ld l, h
    inc hl
    call c, $ec13
    nop
    rst $38
    ld a, [de]
    rst $20

jr_07f_560c:
    ld bc, $0dfe
    ld a, [c]
    ccf
    ret nz

    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $f4
    nop
    and $00
    reti


    nop
    cp l
    nop
    rst $08
    nop
    ld l, e
    add b
    xor $00
    adc $00
    or $00
    ld sp, hl
    nop
    cp $00
    ld e, a
    and b
    rst $18
    jr nz, jr_07f_560c

    jr z, jr_07f_55fd

    add hl, sp
    ld d, b
    ccf
    call nc, $9a3f
    ccf
    db $fd
    rra
    ld a, [$d81f]
    ccf
    ld a, c
    ld e, $7b
    inc e
    cp e
    inc e
    ei
    inc e
    cp d
    inc e
    cp a
    inc e
    adc e
    inc e
    adc b
    rra
    add hl, hl
    rra
    dec l
    dec de
    dec c
    dec de
    xor a
    add hl, de
    adc a
    add hl, de
    cpl
    add hl, de
    adc a
    add hl, de
    ccf
    add hl, bc
    inc e
    add hl, bc
    ld e, $09
    adc h
    add hl, de
    sbc h
    add hl, bc
    sbc l
    ld [$0994], sp
    sub l
    ld [$0895], sp
    sbc l
    ld [$0895], sp
    sbc l
    ld [$0895], sp
    inc d
    ld [$0895], sp
    dec e
    ld [$0815], sp
    sub l
    ld [$0895], sp
    sub l
    ld [$0895], sp
    inc b
    ld [$0885], sp
    sub l
    ld [$0805], sp
    sub e
    inc c
    sub c
    inc c
    rla
    inc c
    add hl, de
    inc c
    sbc [hl]
    dec c
    adc c
    rra
    sbc h
    rrca
    sbc [hl]
    dec c
    rst $18
    rrca
    cp a
    rrca
    rst $10
    rrca
    sbc a
    rrca
    rst $28
    rra
    adc d
    rra
    di
    inc c
    ld a, a
    add b
    rst $38
    nop
    rst $18
    jr nz, jr_07f_56fc

    cp h
    nop
    rst $38
    ld d, b
    rst $38
    ld a, [$ffff]
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
    ret nc

    rst $38
    ldh a, [rIE]
    add b
    rst $38
    inc b
    ei
    dec b
    ld a, [$c03f]
    ccf
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
    ld a, [$ffff]
    rst $38
    rst $10
    rst $38
    cp a
    rst $38
    rst $28
    rst $38
    ld a, a
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

jr_07f_56fc:
    rst $38
    nop
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
    cp a
    ld b, b
    ld a, a
    add b

jr_07f_570c:
    ld [hl], a
    adc b
    db $dd
    ld [hl+], a
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
    db $fd
    rst $38
    sub [hl]
    rst $38
    inc l
    rst $38
    ld b, b
    rst $38
    dec b
    ld a, [$f816]
    jr c, jr_07f_570c

    inc l
    ret nc

    add h
    ld hl, sp-$40
    cp $11
    cp $d2
    nop
    db $eb
    nop
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rra
    ldh [$80], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [hl], a
    adc b
    rst $38
    nop
    call nc, $c000
    nop
    ret nz

    nop
    add b
    nop
    ei
    nop
    xor a
    ret nc

    add a
    ld hl, sp-$1d
    db $fc
    db $eb
    db $fc
    db $fc
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
    ld sp, hl
    cp $fc
    rst $38
    pop af
    cp $f1
    cp $f3
    db $fc
    ld [c], a
    db $fd
    db $e3
    db $fc
    rst $20
    ld hl, sp-$1d
    db $fc
    rst $00
    ld hl, sp+$07
    ld hl, sp-$39
    ld hl, sp-$32
    ldh a, [$8f]
    ldh a, [$87]
    ld hl, sp-$31
    ldh a, [rTAC]
    ld hl, sp-$71
    ldh a, [$87]
    ld hl, sp-$39
    ld hl, sp-$3d
    db $fc
    rst $20
    ld hl, sp-$0f
    cp $f0
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ldh [rIE], a
    rst $38
    nop
    rst $38
    nop
    ld [bc], a
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add h
    rst $38
    ld [hl], e
    adc h
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    or b
    ld c, a
    nop
    rst $38
    ld bc, $87ff
    rst $38
    add a
    rst $38
    sub e
    rst $38
    rrca
    rst $38
    ld b, $ff
    dec b
    rst $38
    ld bc, $00ff
    rst $38
    db $10
    rst $28
    ld e, b
    and a
    ld a, a
    add b
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
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    cp e
    rst $38
    rst $18
    rst $38
    xor $ff
    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    nop
    rst $38
    nop
    db $fd
    nop
    ei
    inc b
    ld sp, hl
    ld b, $ff
    nop
    rst $38
    nop
    rst $20
    jr @+$01

    nop
    ei
    inc b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    db $fc
    inc bc
    db $fc
    inc bc
    db $f4
    dec bc
    rst $38
    rst $38
    rst $38
    rst $38
    dec sp
    rst $38
    sub a
    rst $38
    ld de, $6dff
    rst $38
    xor [hl]
    rst $38
    ld bc, $8cff
    rst $38
    inc e
    rst $38
    ld e, $ff
    ld e, $ff
    nop
    pop hl
    nop
    pop hl
    nop
    db $e3
    nop
    db $e3
    nop
    add b
    nop
    di
    push hl
    rst $38
    rst $38
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
    ld b, b
    cp a
    add sp, $17
    rst $38
    nop
    ld e, a
    nop
    ld h, [hl]
    nop
    nop
    nop
    nop
    nop
    ld de, $6d00
    nop
    push af
    nop
    rst $30
    nop
    ld sp, hl
    nop
    ldh [rP1], a
    adc e
    db $f4
    sbc a
    ldh [$3f], a
    ret nz

    ccf
    ret nz

    ld [hl], a
    add b
    ld a, l
    add b
    or $00
    or $00
    ldh a, [rP1]
    db $fc
    nop
    ldh [rIE], a
    rst $10
    ld hl, sp-$2f
    cp $cb
    db $fc
    or e
    db $fc
    rst $20
    ld hl, sp-$59
    ld hl, sp-$41
    ldh a, [$8f]
    ldh a, [$2e]
    ldh a, [$be]
    ldh [$85], a
    ld hl, sp-$24
    ldh [$ce], a
    ldh a, [$c6]
    ld hl, sp-$3f
    cp $c0
    nop
    ret nc

    nop
    ldh [rP1], a
    db $f4
    nop
    ld a, d
    add b
    rra
    ldh [$83], a
    db $fc
    inc e
    db $e3
    rst $38
    nop
    rst $28
    db $10
    ld e, h
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp $ff
    adc c
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
    adc h
    ld [hl], e
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
    ld d, b
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    or l
    ld c, d
    rst $38
    nop
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
    ld a, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
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
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp $01
    db $fd
    ld [bc], a
    rst $38
    nop
    cp $01
    db $e4
    dec de
    db $e4
    dec de
    add h
    ld a, e
    adc b
    ld a, a
    ld b, b
    cp a
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
    or a
    rst $38
    set 7, a
    inc b
    rst $38

Call_07f_5920:
    cp l
    ld a, a
    ld b, h
    ccf
    ld [hl+], a
    rra
    db $10
    rrca
    add hl, de
    ld b, $10
    rrca
    ccf
    nop
    inc l
    inc de
    dec c
    nop
    inc sp
    nop
    adc $01
    db $fd
    inc bc
    rst $38
    inc bc
    ei
    rlca
    rst $30
    rrca
    ld b, $ff
    rrca
    cp $2e
    db $fd
    sbc a
    ld a, l
    sbc l
    ld a, e
    rst $18
    dec sp
    cp a
    inc sp
    daa
    scf
    rst $08
    daa
    dec bc
    ld a, a
    db $db
    ld a, a
    or l
    ei
    or l
    ei
    rst $38
    or c
    add hl, sp
    di
    db $fc
    inc de
    sbc e
    ld [hl], c
    db $eb
    ld de, $31cb
    db $e3
    ld de, $1162
    ld c, d
    ld sp, $1122
    ld [hl-], a
    ld bc, $0112
    pop af
    ccf
    rst $18
    dec sp
    or c
    rra
    scf
    dec de
    ccf
    dec de
    ccf
    dec de
    or e
    rra
    ld sp, $b71f
    dec de
    or e
    rra
    inc sp
    rra
    dec sp
    rra
    ld [hl], e
    rra
    ld [hl], e
    rra
    rst $38
    dec de
    sub a
    ld a, e
    add hl, de
    nop
    add hl, de
    nop
    ld a, [de]
    ld bc, $112e
    ld c, $11
    and $19
    ld b, b
    cp a
    cp [hl]
    ld b, l
    cp $01
    inc b
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    ld b, c
    cp a
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $01
    cp a
    ld b, b
    nop
    rst $38
    ld b, b
    rst $38
    and b
    rst $38
    pop hl
    rst $38
    ldh a, [rIE]
    add sp, -$01
    ret nz

    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    ld d, a
    xor b
    ld a, a
    add b
    xor $11
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
    rst $30
    rst $38
    rst $18
    rst $38
    ld a, [$ffff]
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38
    cp $ff
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
    db $fd
    ld [bc], a
    cp $01
    cp d
    ld b, l
    xor a
    ld d, b
    ld c, a
    or b
    ld [$3815], a
    rst $00
    inc [hl]
    rlc d
    db $fd
    nop
    rst $38
    add b
    rst $38
    ld b, e
    db $fc
    cp $01
    ei
    rlca
    rst $38
    inc bc
    ei
    rlca
    ei
    rlca
    rst $38
    rlca
    di
    rrca
    xor $17
    inc [hl]
    ld c, $b8
    inc c
    and h
    jr @-$06

    db $10
    ld l, b
    ld de, $211b
    db $d3
    inc hl
    ld [hl], d
    ld b, a
    call c, $9d67
    xor $ad
    sbc $99
    cp $3b
    db $fc
    dec sp
    db $fc
    db $76
    ld hl, sp+$76
    ld hl, sp-$09
    ld hl, sp-$0c
    ld hl, sp-$01
    ldh a, [$ed]
    ldh a, [$ef]
    ldh a, [$e4]
    ld hl, sp-$16
    ldh a, [$e8]
    ldh a, [$f8]
    ldh [$c8], a
    ldh a, [$f8]
    ldh [$d0], a
    ldh [$f8], a
    ldh [$f4], a
    ldh [$d0], a
    ldh [$f0], a
    ldh [$f8], a
    ldh [$f8], a
    ldh [$b8], a
    ldh [$d0], a
    ldh [$d8], a
    ldh [$90], a
    ldh [rP1], a
    ldh a, [rNR23]
    ldh [rNR23], a
    ldh [$58], a
    ldh [$58], a
    ldh [rNR23], a
    ldh [rNR23], a
    ldh [$38], a
    ret nz

    sub b
    ldh [$90], a
    ldh [$90], a
    ldh [rNR10], a
    ldh [$30], a
    ret nz

    jr c, @-$3e

    jr nc, @-$3e

    jr nc, @-$3e

    ld h, b
    add b
    ld h, b
    add b
    ldh [rP1], a
    ld l, b
    add b
    ld [hl], h
    add b
    jr nc, @-$3e

    jr nc, @-$3e

    db $10
    ldh [rNR32], a
    ldh [$08], a
    ldh a, [$a8]
    ldh a, [$8e]
    ldh a, [$cd]
    ldh a, [$c4]
    ld hl, sp-$31
    ld hl, sp-$01
    ld hl, sp+$05
    ld hl, sp+$27
    ret c

    rst $38
    nop
    db $fc
    inc bc
    add sp, $17
    add b
    ld a, a
    ld [bc], a
    rst $38
    ld e, a
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
    rrca
    rst $38
    dec de
    rst $38
    rlca
    rst $38
    ld [$c0ff], sp
    ccf
    ldh [$1f], a
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
    rst $30
    nop
    ei
    nop
    rst $38
    rst $38
    rst $38
    rst $38
    cp e
    rst $38
    rst $18
    rst $38
    ld e, l
    rst $38
    push af
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
    rst $30
    ld [$d02f], sp
    and [hl]
    ld e, c
    ld de, $40fe
    cp a
    ld b, $f9
    inc bc
    db $fc
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    di
    db $e3
    db $e3
    rst $20
    rst $00
    rst $00
    rst $00
    adc a
    sbc a
    adc a
    adc a
    rra
    ccf
    rra
    ccf
    ccf
    ld a, a
    ccf
    ld a, a
    ld a, a
    rst $38
    ld a, a
    rst $38
    rst $38
    rst $38
    rst $38
    cp a
    rst $38
    daa
    rst $38
    dec bc
    rst $38
    scf
    rst $38
    rlca
    rst $38
    rst $00
    ccf
    rst $00
    ccf
    add e
    ld a, a
    add $3f
    ld [c], a
    rra
    ld a, [c]
    rrca
    ldh [$1f], a
    ld [c], a
    rra
    ld hl, sp+$07
    ld h, b
    rra
    ld h, b
    rra
    ldh a, [rIF]
    ld [hl], b
    rrca
    ld a, b
    rlca
    inc [hl]
    ld c, e
    ld l, b
    rla
    inc [hl]
    dec bc
    inc a
    inc bc
    ld d, [hl]
    add hl, bc
    ld [hl-], a
    dec c
    ld a, e
    inc b
    dec a
    ld [bc], a
    rra
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rla
    rst $38
    rra
    rst $38
    rla
    rst $38
    ccf
    rst $38
    ld l, $ff
    ld l, e
    inc b
    ld a, a
    nop
    ld e, [hl]
    ld bc, $035c
    ld l, $01
    ld a, $01
    ld a, l
    ld [bc], a
    dec a
    ld [bc], a
    cpl
    nop
    ld a, e
    inc b
    ld a, l
    ld [bc], a
    ld a, l
    ld [bc], a
    ccf
    nop
    ld a, e
    inc b
    ld l, a
    nop
    cpl
    nop
    ld e, a
    cp a
    ccf
    rst $38
    scf

jr_07f_5b95:
    rst $38
    ld e, l
    rst $38
    ccf
    rst $38
    ld [hl], a
    rst $38
    ccf
    rst $38
    rst $38
    rst $38
    ld a, a
    nop
    rst $30
    ld [$09f6], sp
    ld a, [c]
    dec c
    ldh a, [rIF]
    ldh a, [rIF]
    pop af
    ld c, $e0
    rra
    ld h, b
    sbc a
    ldh [$1f], a
    jr nz, jr_07f_5b95

    add e
    rst $38
    and b
    rst $38
    ld a, [$fcff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$00ff]
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    sbc l
    ld h, d
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $30
    rst $38
    db $fd
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
    cp a
    rst $38
    ccf
    ret nz

    adc a
    ld [hl], b
    and a
    ld e, b
    add hl, de
    and $bf
    ld b, b
    ld e, a
    and b
    rla
    add sp, $0d
    ld a, [c]
    db $fc
    rst $38
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ld hl, sp-$01
    ldh a, [rIE]
    jp hl


    cp $f1
    cp $f0
    rst $38
    ld sp, hl
    cp $f3
    db $fc
    di
    db $fc
    rst $30
    ld hl, sp-$2d
    db $fc
    push hl
    ld a, [$f8e7]
    rst $00
    ld hl, sp-$79
    ld hl, sp+$47
    ld hl, sp+$05
    ld a, [$fca3]
    ld c, d
    push af
    ld c, [hl]
    pop af
    inc d
    db $eb
    inc d
    db $eb
    inc c
    di
    dec c
    ld a, [c]
    dec de
    db $e4
    rla
    add sp, $0f
    ldh a, [$1f]
    ldh [rNR31], a
    db $e4
    rrca
    ldh a, [rNR31]
    db $e4
    ld a, a
    add b
    ld a, e
    add h
    ld a, a
    add b
    ld a, d
    add h
    rst $38
    nop
    ld a, [hl]
    add b
    ld a, [hl]
    add b
    ld a, [$fe04]
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp [hl]
    ld b, b
    rst $38
    nop
    db $fd
    nop
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    cp $00
    cp $00
    cp $00
    ld a, l
    add b
    ld a, e
    add b
    db $fc
    nop
    rst $38
    nop
    cp $00
    push af
    nop
    ld [$f200], a
    nop
    ld a, [c]
    nop
    ld [$baff], a
    rst $38
    ld a, b
    rst $38
    ld h, b
    rst $38
    ld d, b
    rst $38
    ld [hl], h
    rst $38
    ld a, [$eaff]
    rst $38
    cp $00
    ei
    nop
    cp $00
    db $fd
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cp l
    ld b, d
    ld l, a
    sub b
    rrca
    ldh a, [$2f]
    ret nc

    xor d
    call nc, $f2ed
    push af
    ld a, [$fcfb]
    db $fd
    ld a, [$faf5]
    ei
    db $fc
    ld a, [c]
    db $fd

jr_07f_5cb8:
    ld hl, sp-$01
    ld hl, sp-$01
    sbc [hl]
    rst $38
    ld [hl], b
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc b
    ei
    rst $18
    jr nz, jr_07f_5cb8

    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    cp $01
    rst $38
    nop
    add sp, $17
    rst $38
    nop
    db $fd
    ld [bc], a
    or c
    ld c, [hl]
    cp $01
    ld hl, sp+$07
    db $fc
    inc bc
    ccf
    ret nz

    ld a, [$f5ff]
    rst $38
    ld a, [c]
    rst $38
    di
    rst $38
    or $fb
    pop af
    rst $38
    pop af
    rst $38
    pop de
    rst $38
    db $f4
    ei
    cp $f9
    sub $fb
    ldh a, [rIE]
    rst $38
    ld hl, sp-$0f
    cp $93
    db $fc
    and c
    cp $b9
    or $af
    ldh a, [$a7]
    ld hl, sp-$19
    ld hl, sp-$59
    ld hl, sp-$19
    ld hl, sp-$39
    ld hl, sp-$31
    ldh a, [rIE]
    ldh a, [$cf]
    ldh a, [$ef]
    ret nc

    set 7, h
    add $fc
    ei
    call nc, $d0ff
    cp a
    ret nc

    rst $08
    ldh a, [$ef]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [rIE]
    ldh a, [$bb]
    db $f4
    cp a
    db $f4
    sbc a
    db $f4
    ld h, a
    db $fc
    rst $38
    db $f4
    inc hl
    db $fc
    inc sp
    db $ec
    add e
    db $fc
    rst $18
    ldh a, [rIF]
    ldh a, [$27]
    ld hl, sp+$0e
    pop af
    dec a
    jp nz, $f00f

    sbc $e0
    ld c, $f0
    add [hl]
    ld hl, sp+$07
    ld hl, sp-$6b
    add sp, $37
    ret z

    and [hl]
    ret c

    scf
    ret z

    or a
    ret z

    ld [hl], a
    adc b
    ld e, l
    and d
    dec sp
    call nz, $c03f
    cp l
    ld b, b
    ld a, [hl]
    add b
    ld a, a
    add b
    ld a, a
    add b
    ld a, [hl]
    add c
    ld a, [hl-]
    push bc
    ld a, d
    add l
    ld [hl], h
    add e
    ld a, h
    add e
    ld e, l
    and d
    ld a, [hl-]
    push bc
    dec e
    ld [c], a
    inc c
    ei
    adc e
    db $fc
    adc l
    ld a, [$fa4d]
    add d
    db $fd
    sub l
    cp $fc
    rst $38
    ei
    cp $bf
    cp $ff
    cp $fc
    rst $38
    ld a, [$fcff]
    nop
    db $f4
    nop
    or $00
    ld [hl], c
    add b
    ld a, l
    add b
    ld a, l
    add b
    or $00
    ld [hl], h
    add b
    ld a, [hl]
    add b
    ld e, $e0
    ld a, [de]
    ldh [rTAC], a
    ld hl, sp-$7d
    ld a, h
    pop af
    ld c, $f0
    rrca
    rst $38

jr_07f_5dbf:
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    inc bc
    or $09
    ld hl, sp+$07
    db $f4
    dec bc
    cp l
    ld b, d
    cp l
    ld b, d
    ld [hl], h
    adc e
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_07f_5de4:
    nop
    rst $38
    nop
    rst $38
    ld bc, $04ff
    rst $38
    ld bc, $06ff
    rst $38
    and c
    rst $18
    or h
    rst $08
    ld hl, sp-$79
    jr c, jr_07f_5dbf

    ld [hl], b
    adc a
    ld a, b
    add a
    ld sp, $b6ce
    ld c, e
    jr @-$17

    dec sp
    call nz, $55aa
    adc $31
    rst $38
    nop
    db $db
    inc h
    ei
    inc b
    ld a, [$fb05]
    inc b
    rst $18
    jr nz, jr_07f_5de4

    jr nz, @+$01

    nop
    cp a
    ld b, b
    cp $01
    cp a
    ld b, b
    or a
    ld b, b
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    nop
    rst $18
    nop
    sbc a
    nop
    rst $18
    nop
    rst $38
    nop
    xor a
    nop
    cp $01
    rst $38
    nop
    cp $01
    ld a, [hl]
    add c
    db $76
    adc c
    ld a, d
    add l
    cp $01
    ld a, [hl]
    add c
    cp a
    ld b, b
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    ld a, [hl]
    add c
    rst $38
    nop
    rst $38
    nop
    rst $38
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
    db $fc
    inc bc
    ld a, [hl]
    ld bc, $01fe
    cp $01
    cp $01
    rst $10
    ld [$00bf], sp
    rst $30
    nop
    or $01
    ld a, [hl]
    ld bc, $0976
    ld e, [hl]
    ld bc, $02cd
    sbc $01
    cp $01
    cp $01
    db $fc
    inc bc
    cp $01
    rst $38
    nop
    ld [hl], e
    adc h
    cp l
    ld b, d
    push af
    ld a, [bc]
    adc b
    ld [hl], a
    add c
    ld a, [hl]
    add $3d
    sub l
    ld a, [hl]
    ld [hl], a
    cp $f0
    ld a, a
    ld [hl], c
    cp $23
    db $fd
    dec [hl]
    db $eb
    ld c, l
    di
    inc l
    di
    ld sp, $b3ff
    db $fd
    db $e3
    rst $38
    ld [hl], c
    rst $38
    or a
    rst $38
    ld [hl+], a
    rst $38
    ld a, [$f9ff]
    rst $38
    ld a, l
    rst $38
    cp l
    rst $38
    cp e
    rst $38
    cp a
    rst $38
    or [hl]
    rst $38
    di
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $28
    db $10
    rst $20
    jr @+$63

    sbc [hl]
    call nz, $dc3b
    inc hl
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
    inc b
    rst $38
    daa
    rst $38
    inc bc
    rst $38
    dec bc
    rst $38
    dec hl
    rst $38
    di
    rst $38
    inc de
    rst $38
    ld a, a
    rst $38
    ld b, l
    rst $38
    sub [hl]
    rst $38
    adc e
    rst $38
    ld b, a
    rst $38
    ld bc, $0fff
    rst $38
    dec hl
    rst $38
    rlca
    rst $38
    dec e
    rst $38
    dec h
    rst $38
    inc b
    rst $38
    adc b
    ld a, a
    sub b
    ld a, a
    inc d
    rst $38
    add h
    ld a, a
    pop de
    ccf
    pop bc
    ccf
    ld c, e
    cp a
    ld e, c
    cp a
    dec b
    rst $38
    add b
    ld a, a
    or b
    ld e, a
    and h
    ld e, a
    ld a, [c]
    dec c
    ld hl, sp+$07
    db $fc
    inc bc
    ld sp, hl
    rlca
    ld a, [c]
    dec c
    call nc, $f52b
    ld a, [bc]
    rst $18
    inc h
    add sp, $17
    ld a, b
    add a
    db $ec
    sub e
    jp nc, $e02f

    rra
    jp $c03f


    ccf
    and c
    ld e, a
    ld b, l
    cp a
    db $e3
    sbc a
    ret nz

    ccf
    ld bc, $0bff
    rst $38
    ld l, l
    rst $38
    cp b
    ld e, a
    jp z, Jump_07f_6a3f

    cp a
    ld b, $ff
    inc [hl]
    rst $38
    sub l
    ld a, a
    sub a
    ld a, a
    xor b
    ld a, a
    ld [hl], c
    rst $38
    ld l, c
    rst $38
    ld [hl-], a
    rst $38
    ld a, h
    cp a
    pop af
    ld a, a
    db $d3
    ld a, a
    db $e3
    ld a, a
    and c
    ld a, a
    inc [hl]
    ei
    and l
    ld a, a
    dec [hl]
    rst $38
    ld a, l
    rst $38
    ld a, [hl]
    rst $38
    ld a, [$81ff]
    rst $38
    add a
    rst $38
    dec bc
    rst $30
    ld h, l
    sbc e
    ret z

    scf
    jp z, $ec37

    inc de
    ld c, l
    or e
    ld [$28f7], sp
    rst $10
    add sp, $17
    cp [hl]
    ld b, c
    rst $30
    ld [$837c], sp
    rst $38
    nop
    ld a, l
    add d
    db $f4
    dec bc
    ld c, c
    cp a
    ld e, e
    xor a
    dec c

jr_07f_5f9d:
    ei
    sub d
    rst $38
    dec d
    rst $38
    sbc [hl]
    ld a, a
    sbc a
    ld a, a
    rrca
    rst $38
    xor a
    rst $38
    or l
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $10
    nop
    sbc a
    nop
    rra
    nop
    rst $08
    nop
    rra
    nop
    ld e, l
    ld [bc], a
    db $dd
    ld [bc], a
    ld e, l
    ld [bc], a
    cp a
    nop
    sub a
    ld [$04fb], sp
    ld sp, hl
    ld b, $b5
    ld c, [hl]
    ld [hl], c
    adc [hl]
    jr nc, jr_07f_5f9d

    ld [de], a
    db $ed
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    nop
    rst $38
    ld [$09ff], sp
    rst $38
    ld c, $ff
    rlca
    rst $38
    inc de
    rst $38
    add hl, hl
    rst $38
    ld bc, $c1ff
    rst $38
    push de
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
    nop
    cp a
    nop
    ld a, a
    nop
    rst $38
    nop
    rra
    nop
    ld e, a
    nop
    cp a
    nop
    ld a, h
    inc bc
    xor l

Jump_07f_6001:
    ld [bc], a
    xor l
    ld [bc], a
    ld l, a
    nop
    or $01
    ld l, a
    nop
    rst $18
    nop
    ld l, l
    ld [bc], a
    rra
    nop
    rst $28
    rst $38
    sbc a
    rst $38
    xor a
    rst $38
    scf
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    scf
    rst $38
    inc de
    rst $38
    ld c, e
    rst $38
    ld d, [hl]
    rst $38
    add b
    rst $38
    ld e, a
    cp a
    rra
    rst $38
    inc b
    rst $38
    db $10
    rst $38
    ld [hl], $fb
    daa
    rst $38
    ld l, a
    rst $38
    ld e, a
    rst $38
    cp e
    rst $38
    ld e, d
    rst $38

Call_07f_603a:
    rst $28
    rst $38
    ld e, e
    rst $38
    db $ec
    rst $38
    ld h, a
    nop
    ld d, a
    nop
    rst $18
    nop
    rst $00
    ld [$08d7], sp
    ld a, a
    nop
    rst $28
    nop
    cp l
    ld [bc], a
    ld e, a
    ld [bc], a
    dec a
    ld [bc], a
    cp a
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    db $ed
    ld [bc], a
    db $dd
    ld [bc], a
    cp l
    ld [bc], a
    cp a
    nop
    ld sp, hl
    ld b, $fb
    inc b
    ld a, a
    nop
    rst $38
    nop
    or a
    ld [$00bd], sp
    xor $10
    rst $38
    nop
    or [hl]
    ld [$00ff], sp
    sbc $00
    rst $38
    nop
    ld a, a
    nop
    sbc a
    nop
    rst $38
    rst $38
    call c, $38ff
    rst $18
    ld b, d
    cp a
    sbc [hl]
    ld l, a
    add a
    ld a, a
    cp e
    ld e, a
    sub h
    ld a, e
    inc hl
    rst $38
    inc bc
    rst $38
    sbc e
    rst $38
    rla
    rst $38
    ld e, c
    rst $38
    cp l
    rst $38
    adc l
    rst $38
    rst $18
    rst $38
    sbc [hl]
    ld bc, $01de
    rst $38
    nop
    cp [hl]
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
    or $09
    rst $28
    db $10
    rst $28
    db $10
    ei
    inc b
    rst $38
    nop
    or h
    ld c, e

jr_07f_60c0:
    ld a, b
    add a
    call c, $f823
    rlca
    cp d
    ld b, l
    add sp, $17
    ld b, b
    cp a
    adc b
    ld [hl], a
    ret nz

    ccf
    or d
    ld c, a
    add h
    ld a, a
    inc h
    rst $38
    dec d
    rst $38
    add hl, bc
    rst $38
    ld c, h
    rst $38
    ld [hl], h
    rst $38
    ld hl, sp-$01
    db $fc
    rst $38

jr_07f_60e2:
    cp $ff
    rst $38
    rst $38
    rst $38
    rst $38

jr_07f_60e8:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    cp [hl]
    ld b, c
    ld [hl], e
    adc h
    db $eb
    inc e
    ld [$ff1d], a
    jr jr_07f_60e2

    jr @+$01

    nop
    rst $38
    nop

Jump_07f_6100:
    rst $18
    jr nz, jr_07f_60c0

    ld b, d
    db $fd
    ld [bc], a
    ld sp, hl
    ld b, $f8
    ld b, $fd
    ld [bc], a
    ld a, [$ff04]
    inc b
    ei
    inc b
    ei
    inc b
    cp $00
    rst $38
    nop
    cp e
    nop
    adc [hl]
    nop
    sbc a
    nop
    sbc a
    nop
    db $eb
    nop
    rst $00
    nop
    sbc $00
    ld l, l
    nop
    cpl
    nop
    ccf
    nop
    rst $18
    jr nz, @-$31

    jr nc, jr_07f_60e8

    nop
    rst $38
    nop
    ld a, a
    nop
    cp a
    nop
    cp e
    nop
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld bc, $01fe
    rst $18
    nop
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld [hl], a
    ld [$10ef], sp
    rst $30
    ld [$08f7], sp
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $38
    nop
    ld a, [hl]
    add c
    rst $38
    nop
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    ld [hl], a
    adc b
    push af
    ld a, [bc]
    rst $38
    nop
    db $eb
    nop
    ei
    rst $38
    rst $38
    rst $38
    ld c, a
    rst $38
    rst $08
    rst $38
    ld l, $ff
    add $ff
    and d
    rst $38
    and e
    rst $38
    ld h, b
    nop
    ldh a, [rP1]
    ld h, $00
    dec a
    nop
    ld a, [hl]
    nop
    ld e, e
    inc b
    ld e, a
    nop
    jp nc, Jump_07f_6100

    nop
    cp [hl]
    nop
    xor $00
    cp l
    ld [bc], a
    ld e, l
    ld [hl+], a
    ei
    inc b
    ei
    inc b
    rst $18
    nop
    cp a
    nop
    rst $38
    nop
    rst $38
    nop
    ld l, c
    sub [hl]
    db $ec
    inc de
    ld a, c
    sub [hl]
    ret nz

    ccf
    ret z

    scf
    add sp, $17
    add b
    ld a, a
    adc h
    ld [hl], a
    inc b
    rst $38
    inc b
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
    nop
    rst $38
    add b
    ld a, a
    inc b
    rst $38
    ld c, $ff
    ld b, $ff
    ld c, $ff
    ld e, h
    rst $38
    inc l
    rst $38
    inc d
    rst $38
    jr nc, @+$01

    or b
    rst $38
    and b
    rst $38
    ld h, b
    rst $38
    jr nz, @+$01

    xor d
    rst $38
    daa
    rst $38
    daa
    rst $38
    cpl
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc a
    rst $38
    rst $10
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
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
    ld bc, $21ff
    rst $18
    ldh [$1f], a
    ldh [$1f], a
    ret nz

    ccf
    jp $d23c


    dec l
    adc $31
    swap h
    and a
    ld e, b
    cp $01
    or $09
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp $01
    cp d
    dec b
    ld hl, sp+$07
    db $fc
    inc bc
    ld a, h
    inc bc
    rst $28
    db $10
    cp $01
    or $01
    cp $01
    cp $01
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld sp, hl

jr_07f_623f:
    ld b, $d9
    ld h, $9c
    ld h, e
    cp $01
    db $fc
    inc bc
    push af
    dec bc
    xor $13
    db $f4
    dec bc
    call c, $a423
    ld e, e
    rst $18

jr_07f_6253:
    jr nz, jr_07f_623f

    dec d
    call nc, $c52b
    ld a, [hl-]
    ret


    ld [hl], $c5
    ld a, [hl-]
    rst $00
    jr c, jr_07f_6253

    dec c
    di
    inc c
    push af
    ld a, [bc]
    db $dd
    inc hl
    ld l, b
    rla
    ld h, b
    rra
    adc $31
    ei
    inc b
    db $ed
    ld [bc], a
    cp $01
    ld a, [$d805]
    daa
    sbc $21
    xor $31
    db $76
    add hl, sp
    cp $21
    ld a, [hl]
    ld bc, $007f
    cp a
    nop
    ld e, a
    nop
    ld c, a
    nop
    rst $38
    nop
    ld e, a
    nop
    rst $18
    nop
    ld a, e
    inc b
    or a
    ld [$08f7], sp
    push af
    ld a, [bc]
    ld a, [c]
    dec c
    ld a, [c]
    dec c
    ld hl, sp+$07
    cp $01
    db $fd
    ld [bc], a
    db $f4
    dec bc
    or $09
    ld h, b
    sbc a
    ld d, e
    xor a
    ld sp, $6acf
    sub l
    inc sp
    call z, $fd02
    dec b
    ld a, [$7f80]
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    db $10
    rst $38
    inc d
    rst $38
    inc sp
    rst $38
    nop
    rst $38
    inc b
    rst $38
    nop
    rst $38
    inc de
    rst $38
    rla
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    rla
    rst $38
    dec de
    rst $38
    dec bc
    rst $38
    ld h, a
    rst $38
    ld b, a
    rst $38
    daa
    rst $38
    and a
    rst $38
    push bc
    rst $38
    di
    rst $38
    ei
    rst $38
    cp $ff
    pop af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    add sp, -$01
    ld bc, $02ff
    rst $38
    ld [bc], a
    rst $38
    inc h
    rst $38
    jr @+$01

    adc b
    rst $38
    add b
    rst $38
    add hl, bc
    rst $38
    adc l
    ld a, a
    adc h
    ld a, a
    dec b
    rst $38
    inc bc
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc de
    rst $38
    inc bc
    rst $38
    inc bc
    rst $38
    ld bc, $05ff
    ei
    inc b
    ei
    dec c
    di
    inc d
    db $eb
    inc e
    db $e3
    cp d
    ld b, a
    ld e, $e3
    ld c, $f3
    dec e
    ld [c], a
    ld e, $e1
    rrca
    pop af
    ld a, c
    add a
    ld e, l
    and e
    ld a, h
    add e
    ld [hl], e
    adc h
    cp c
    ld b, [hl]
    ld [hl], b
    adc a
    ld sp, hl
    ld b, $7b
    add h
    db $ec
    inc de
    ld [$f615], a
    add hl, bc
    and $19
    ld [hl], h
    adc e
    ld d, [hl]
    xor c
    inc h
    db $db
    inc h

jr_07f_634b:
    db $db
    ld d, [hl]
    xor c
    ld e, $e1
    ld d, l
    xor d
    call nc, $d22b
    dec l
    ld a, [c]
    adc l
    ld e, [hl]
    and c
    cp $01
    push af
    ld a, [bc]
    rst $20
    jr jr_07f_634b

    dec d
    pop hl
    sbc [hl]
    cp l
    jp c, $bf48

    ldh a, [rIF]
    add sp, $17
    add sp, $17
    ld [hl], d
    adc a
    ei
    ld b, $e1
    ld e, $e1
    ld e, $f7
    ld [$00ff], sp
    cp $01
    ld a, d
    add l
    rst $38
    nop
    cp $01
    rst $38
    nop
    rst $18
    jr nz, @-$0f

    db $10
    rst $30
    ld [$45ba], sp
    ld a, [$fe05]
    ld bc, $0ff0
    ld a, [de]
    push hl
    db $d3
    inc l
    or c
    ld c, [hl]
    ld h, c
    sbc [hl]
    ret nc

    cpl
    ld h, b
    sbc a
    ld a, [bc]
    rst $30
    nop
    rst $38
    ld h, b
    rst $38
    ld [hl], b
    rst $28
    ld h, b
    rst $38
    ld h, b
    rst $38
    ld b, d
    rst $38
    ld hl, $08df
    rst $38
    ld [$82ff], sp
    ld a, a
    add [hl]
    ld a, a
    and b
    ld e, a
    sub b
    ld l, a
    ld b, b
    cp a
    ld b, e
    cp a
    inc de
    rst $28
    ld e, c
    xor a
    rra
    rst $28
    sub a
    rst $28
    inc de
    rst $38
    rlca
    rst $38
    ld c, a
    rst $38
    push bc
    rst $38
    di
    rst $38
    rst $28
    rst $38
    ld a, e
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
    ld e, a
    rst $38
    ld e, $ff
    rra
    rst $38
    rrca
    rst $38
    dec de
    rst $38
    ld a, [de]
    rst $38
    sbc d
    rst $38
    adc b
    rst $38
    ld c, $ff
    ld c, $ff
    rla
    rst $38
    inc e
    rst $38
    inc c
    rst $38
    sbc b
    rst $38
    or h
    ei
    ldh a, [rIE]
    db $ec
    di
    xor $f1
    db $e3
    db $fd
    ldh [rIE], a
    ld h, c
    cp $02
    db $fd
    add b
    ld a, a
    nop
    rst $38
    add b

jr_07f_640f:
    ld a, a
    jr nz, @-$1f

    ld h, c
    sbc a
    ld d, c
    xor a
    nop
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    ld h, b
    rst $38
    ld h, h
    ei
    ldh [$7f], a
    ld h, b

jr_07f_6423:
    rst $38
    ld h, b
    rst $38
    ldh [rIE], a
    call nz, Call_000_20fb
    rst $18
    ld b, b
    cp a
    jr nz, jr_07f_640f

    ld b, c
    cp [hl]
    nop
    rst $38
    ld bc, $83fe
    ld a, h
    and d
    ld e, l
    sbc d
    ld a, l
    ld [hl], b
    cp a
    jr nc, @+$01

    jr nz, @-$1f

    jr nz, jr_07f_6423

    ld [bc], a
    db $fd
    ld b, b

jr_07f_6447:
    cp a
    add b
    ld a, a
    add b
    ld a, a
    adc b
    ld [hl], a
    sub [hl]
    ld l, e
    cp b
    ld b, a
    ld a, c
    add [hl]
    add hl, sp
    add $78
    add a
    ld sp, $28cf
    rst $10
    xor c
    ld d, [hl]
    inc [hl]
    swap d
    call $03fc
    ld a, d
    add l
    jr nz, jr_07f_6447

    inc h
    db $db
    inc c
    di
    inc c
    di
    xor h
    ld d, e
    db $fd
    ld [bc], a
    rst $38

jr_07f_6473:
    nop
    push af
    dec bc
    ret c

    daa
    ld a, b
    add a
    ld [hl-], a
    rst $08
    nop
    rst $38
    nop
    rst $38
    ld d, b
    xor a
    jr nc, jr_07f_6473

    ld h, $ff
    ld b, $ff
    inc c
    di
    ld [$83f7], sp
    rst $38
    adc h
    rst $38
    jr c, @+$01

    ld a, [hl-]
    rst $38
    scf
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    adc l
    rst $38
    add b
    rst $38
    inc b
    rst $38
    dec h
    rst $38
    ld l, b
    rst $38
    ld [hl], b
    rst $38
    di
    rst $38
    ld sp, hl
    rst $38
    and a
    rst $38
    db $ed
    rst $38
    db $ed
    rst $38
    xor a
    rst $38
    rst $28
    rst $38
    rst $30
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
    ccf
    rst $38
    ccf
    rst $38
    sbc a
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    sbc a
    rst $38
    cpl
    rst $38
    daa
    rst $38
    rlca
    rst $38
    rlca
    rst $38
    dec bc
    rst $38
    rrca
    rst $38
    rra
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    ld c, a
    rst $38
    adc a
    rst $38
    adc a
    rst $38
    rlca
    rst $38
    inc de
    rst $38
    daa
    rst $38
    dec [hl]
    rst $38
    sub l
    rst $38
    sub c
    rst $38
    or b
    rst $38
    ld h, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    jp nz, Jump_07f_523f

    cp a
    db $10
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    add b
    ld a, a
    nop
    rst $38
    db $10
    rst $28
    ld b, b
    cp a
    add b
    ld a, a
    nop
    rst $38
    ld bc, $0aff
    rst $30
    ld hl, $71ff
    rst $38
    ldh a, [rIE]
    nop
    rst $38
    nop
    rst $38
    ld b, b
    cp a
    ld d, b
    cp a
    db $10
    rst $38
    ld b, b
    rst $38
    ld l, b
    rst $38
    call nz, $43ff
    rst $38
    scf
    rst $38
    ld bc, $0fff
    di
    ld b, l
    cp e
    dec h
    db $db
    add b
    ld a, a
    nop
    rst $38
    nop
    rst $38
    ld [$80f7], sp
    ld a, a
    ld b, h
    ei
    nop
    rst $38
    ld d, b
    cp a
    add hl, bc
    rst $30
    add hl, de
    rst $20
    ld a, c
    add a
    ld [hl], e
    adc a
    dec bc
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
    ld bc, $01ff
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld bc, $41ff
    rst $38
    ld b, c
    rst $38
    add hl, hl
    rst $38
    ld bc, $21ff
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld b, c
    rst $38
    ld h, b
    rst $38
    rst $20
    rst $38
    dec sp
    rst $38
    cp a
    rst $38
    or a
    rst $38
    and [hl]
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
    rlca
    ld [$0a09], sp
    nop
    nop
    nop
    nop
    dec bc
    inc c
    dec c
    dec c
    ld c, $0f
    nop
    nop
    nop
    db $10
    ld de, $1312
    inc d
    nop
    dec d
    ld d, $17
    jr @+$1b

    dec c
    ld a, [de]
    dec de
    nop
    nop
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07f_65f6

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $0d
    daa
    jr z, jr_07f_6607

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $0d
    cpl
    jr nc, jr_07f_6618

    nop
    ld [hl-], a
    inc sp
    inc [hl]
    dec c
    dec [hl]
    ld [hl], $37
    jr c, jr_07f_662a

    add hl, sp
    ld a, [hl-]
    dec sp
    inc a
    dec a

jr_07f_65f6:
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d
    ld b, e
    inc bc
    ld b, h
    ld b, l
    ld b, [hl]
    add hl, sp
    add hl, sp
    add hl, sp
    add hl, sp
    ld b, a
    ld c, b
    ld c, c

jr_07f_6607:
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

jr_07f_6618:
    ld e, e
    ld e, h
    nop
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

jr_07f_662a:
    ld l, h
    ld l, l
    ld l, [hl]
    ld l, a
    ld [hl], b
    ld [hl], c
    ld h, d
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
    dec c
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
    nop
    adc e
    adc h
    adc l
    adc [hl]
    nop
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
    nop
    sbc c
    sbc d
    sbc e
    sbc h
    ld [hl-], a
    sbc l
    sbc [hl]
    sbc a
    and b
    and c
    and d
    and e
    and h
    and l
    nop
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
    dec c
    or a
    cp b
    nop
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
    add sp, -$25
    jp hl


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
    nop
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
    ld d, $01
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0201
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
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    ld bc, $0100
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    ld bc, $0101
    nop
    nop
    nop
    ld bc, $0101
    ld hl, $0101
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0201
    nop
    nop
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
    ld bc, $0101
    ld bc, $4101
    nop
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
    ld bc, $0021
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
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [bc], a
    ld bc, $0101
    ld bc, $0201
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
    ld [bc], a
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
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0000
    nop
    nop
    nop
    nop
    nop
    nop
    ld [$0808], sp
    ld [$0a08], sp
    nop
    add hl, bc
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld a, [bc]
    ld a, [bc]
    ld a, [bc]
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
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$bdff]
    rst $38
    inc a
    rst $38
    sub [hl]
    rst $38
    ld [hl], b
    rst $38
    ld [hl], h
    rst $38
    ldh a, [rIE]
    di
    rst $38
    and d
    rst $38
    ld d, $ff
    ld e, l
    rst $38
    ld [$6cff], a
    rst $38
    ld a, b
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
    ld bc, $00ff
    rst $38
    nop
    rst $38
    db $10
    rst $38
    jr nz, @+$01

    ld b, b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    db $10
    rst $38
    ret nz

    rst $38
    ldh [rIE], a
    ld bc, $48ff
    rst $38
    ld c, b
    rst $38
    ret nz

    rst $38
    db $10
    rst $38
    adc l
    rst $38
    ld b, l
    rst $38
    dec c
    rst $38
    db $dd
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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

    cpl
    di
    inc c
    db $fd
    ld [bc], a
    ld [hl], b
    rrca
    rst $28
    nop
    rst $08
    nop
    rst $28
    nop
    sbc e
    nop
    sub l
    nop
    cp b
    rst $38
    ld a, [c]
    rst $38
    cp b
    rst $38
    ld a, [$fcff]
    rst $38
    add sp, -$01
    db $fd
    rst $38
    rst $38
    rst $38
    xor $ff
    db $fd
    rst $38
    rst $28
    rst $38
    cp $ff
    cp $ff
    ei
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    rst $38
    rst $38
    ld a, b
    rst $38
    ld d, h
    rst $38
    add h
    rst $38
    nop
    rst $38
    ld bc, $00ff
    rst $38
    ld b, b
    rst $38
    nop
    rst $38
    add b
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
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
    jr nz, @+$01

    nop
    rst $38
    add b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    adc b
    rst $38
    xor b
    rst $38
    ret c

    rst $38
    ld hl, sp-$01
    db $fd
    rst $38
    call nz, $f83b
    rlca
    ld l, l
    sub d
    ld a, a
    add b
    rst $38
    nop
    cp c
    nop
    ld hl, sp+$00
    cp c
    nop
    ld [hl], $ff
    or c
    rst $38
    ld e, [hl]
    rst $38
    inc h
    rst $38
    inc h
    rst $38
    ld h, [hl]
    rst $38
    cp [hl]
    rst $38
    cp [hl]
    rst $38
    db $fd
    rst $38
    sbc a
    rst $38
    add e
    rst $38
    and l
    rst $38
    add l
    rst $38
    add d
    rst $38
    ld a, e
    rst $38
    db $fd
    rst $38
    cp c
    rst $38
    sbc c
    rst $38
    sub c
    rst $38
    pop de
    rst $38
    sub b
    rst $38
    cp e
    rst $38
    xor e
    rst $38
    xor $ff
    rst $28
    rst $38
    rst $28
    rst $38
    or $ff
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
    ld [$c4ff], a
    rst $38
    adc b
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
    rlca
    ld hl, sp+$03
    db $fc
    dec de
    db $e4
    daa
    ret c

    ld b, $f9
    ld [bc], a
    db $fd
    nop
    rst $38
    nop
    rst $38
    ld bc, $00fe
    rst $38
    nop
    rst $38
    ld [bc], a
    db $fd
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
    adc b
    rst $38
    inc e
    rst $38
    cp [hl]
    rst $38
    cp a
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
    ld a, a
    rst $38
    sub d
    ld l, l
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    call Call_07f_4500
    nop
    ldh a, [rP1]
    nop
    db $fc
    ld [bc], a
    db $fc
    nop
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop

Jump_07f_69ff:
    rst $38
    nop
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
    ld h, b
    rst $38
    ld d, [hl]
    rst $38
    nop
    rst $38
    nop
    rst $38
    and b
    rst $38
    jr nz, @+$01

    sub b
    rst $38
    ret nz

    rst $38
    sub $ff
    cp $ff
    xor b
    rst $38
    and h
    rst $38
    or $ff
    db $e4
    rst $38
    or h
    rst $38
    xor l
    rst $38
    cp [hl]
    rst $38
    rst $20
    rst $38
    rst $38
    rst $38
    adc $ff
    rst $28
    rst $38
    rst $30
    rst $38
    dec a
    rst $38
    ld a, d
    rst $38
    db $eb
    rst $38
    rst $38

Jump_07f_6a3f:
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    xor $ff
    rst $38
    rst $38
    ld a, [c]
    rst $38
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
    ld [bc], a
    db $fd
    add c

jr_07f_6a59:
    cp $03
    db $fc
    dec bc
    db $f4
    cpl
    ret nc

    ld a, a
    add b
    rst $28
    db $10

jr_07f_6a64:
    rst $18
    jr nz, jr_07f_6a64

    ld [bc], a
    ld a, a
    add b
    ld a, a
    add b
    cp $01
    ei
    inc b
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rra
    ldh [$2f], a
    ret nc

    sbc a
    ld h, b
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    scf
    ret z

    or [hl]
    ld c, c
    ld h, d
    sbc l
    jr nc, jr_07f_6a59

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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld [$10ff], sp
    rst $38
    db $10
    rst $38
    jr nc, @+$01

    ld a, [c]
    rst $38
    ldh a, [rIE]
    ld a, d
    rst $38
    xor $ff
    and $ff
    ld hl, sp-$01
    db $eb
    rst $38

jr_07f_6ab4:
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ei
    rst $38
    db $fd
    rst $38
    cp $ff
    cp $ff
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
    ld c, b
    or a
    rst $38
    nop
    rst $38
    nop
    rst $08
    nop
    adc e
    nop
    ld d, $00
    nop
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
    nop
    add b
    ld b, b
    add b
    nop
    ret nz

    jr nz, jr_07f_6ab4

    nop
    ldh [rP1], a
    ldh [rNR10], a
    ldh [rP1], a
    ldh a, [$08]
    ldh a, [rP1]
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    ld [bc], a
    db $fc
    nop
    cp $00
    cp $01
    cp $00
    rst $38
    nop
    rst $38
    jr nc, @+$01

    cp h
    rst $38
    sub $ff
    scf
    rst $38
    ld e, b
    rst $38
    ld [hl], b
    rst $38
    sbc $ff
    ld sp, hl
    rst $38
    ei
    rst $38
    ret c

Call_07f_6b23:
    rst $38
    db $fc
    rst $38
    db $fc
    rst $38
    cp h
    rst $38
    rst $38
    rst $38
    inc bc
    rst $38
    nop
    rst $38
    adc [hl]
    ld [hl], c
    rra
    ldh [$5b], a
    and h
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
    rst $28
    db $10
    rst $38
    nop
    rst $18
    jr nz, jr_07f_6bd6

    add b
    rst $18
    jr nz, jr_07f_6bda

    add b
    rst $30
    ld [$40bf], sp
    ld a, $c1
    cpl
    ret nc

    rlca
    ld hl, sp+$03
    db $fc
    ld bc, $02fe
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
    ld b, b
    rst $38
    ret nz

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
    or b
    rst $38
    ld a, [c]
    rst $38
    rst $30
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

jr_07f_6b9a:
    push af
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
    call nc, $ff2b
    nop
    rst $38
    nop
    rst $38
    nop
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
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38

jr_07f_6bcf:
    add b
    nop
    add b
    ld b, b
    add b
    nop
    ret nz

jr_07f_6bd6:
    nop
    ret nz

    jr nz, jr_07f_6b9a

jr_07f_6bda:
    nop
    ldh [rNR10], a
    ldh [rP1], a
    ldh a, [$08]
    ldh a, [rP1]
    ld hl, sp+$04
    ld hl, sp+$00
    db $fc
    nop
    db $fc
    ld [bc], a
    db $fc
    nop
    cp $01
    cp $88
    rst $38
    sub b
    rst $38
    ret z

    rst $38
    ret nz

    rst $38
    ret z

    rst $38
    ld a, [c]
    rst $38
    rst $38
    rst $38
    jr nc, jr_07f_6bcf

    rst $38
    rst $38
    rst $38
    rst $38
    db $fd
    rst $38
    ei
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    sbc $ff
    rst $38
    rst $38
    cp $ff
    db $fd
    rst $38
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
    rst $30
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
    cp l
    ld b, d
    rst $38
    nop
    ld a, a
    add b
    cp a
    ld b, b
    rst $38
    nop
    ld h, a
    sbc b
    ccf
    ret nz

    rrca
    ldh a, [rTMA]
    ld sp, hl
    dec c
    ld a, [c]
    inc c
    di
    dec c
    ld a, [c]
    inc d
    db $eb
    ld bc, $03fe
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
    ld d, b
    rst $38
    ld h, b
    rst $38
    add c
    rst $38
    or c
    rst $38
    db $fc
    rst $38
    db $ed
    rst $38
    rst $28
    rst $38
    ld l, [hl]
    rst $38
    ld l, a
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
    rst $38
    db $fc
    inc bc
    rst $38
    nop
    rst $18
    nop
    and $00
    db $fd
    inc bc
    db $eb
    dec d
    di
    dec c
    ei
    dec b
    di
    dec c
    push af
    dec bc
    db $f4
    dec bc
    call nz, $013b
    nop
    add c
    nop
    ld bc, $4180
    add b
    inc bc
    ret nz

    inc hl
    ret nz

    inc bc
    ldh [rNR22], a
    ldh [$e0], a
    rst $38
    dec d
    ld a, [$fdd2]
    ld bc, $0dfe
    ld a, [c]
    adc d
    push af
    ldh [rIE], a
    ret


    cp $e0
    rst $38
    ld b, b
    rst $38
    ret c

    rst $38
    add sp, -$01
    call nc, $bcff
    rst $38
    ld hl, sp-$01
    db $ed
    rst $38
    cp $ff
    rst $30
    rst $38
    or $ff
    ld sp, hl
    rst $38
    db $eb
    rst $38
    db $fd
    rst $38
    db $ed
    rst $38
    db $fd
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    db $fc
    rst $38
    rst $38
    rst $38

jr_07f_6ce8:
    cp $ff
    db $fd
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
    rst $18
    jr nz, jr_07f_6ce8

    jr nz, @+$01

    nop
    rst $38
    nop
    cp a
    ld b, b
    cp a
    ld b, b
    inc l
    db $d3
    ld e, b
    and a
    db $10
    rst $28
    db $10
    rst $28
    db $10
    rst $28
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, $ff
    ld bc, $0cff
    rst $38
    inc c
    rst $38
    inc b
    rst $38
    ld [$8aff], sp
    rst $38
    pop bc
    rst $38
    ld [bc], a
    rst $38
    sub $ff
    inc b
    rst $38
    ld c, $ff
    sbc [hl]
    rst $38
    ld a, h
    rst $38
    db $fc
    rst $38
    cp $ff
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld l, a
    rst $38
    db $fc
    inc bc
    ld a, [$9700]
    nop
    rst $20
    ld a, a
    rst $00
    rst $38
    add a
    rst $38
    rst $28
    sbc a
    rst $08
    ccf
    rst $08
    ccf
    ld e, a
    rst $38
    rra
    rst $38
    rst $38
    rra

jr_07f_6d62:
    rst $18
    ccf
    rst $38
    rra
    rst $18
    ccf
    rst $18
    ccf
    cp a
    ld a, a
    db $fd
    ld a, a
    ccf
    rst $38
    cp a
    ld a, a
    db $76
    rst $38
    dec l
    rst $38
    ld a, $ff
    ld l, d
    rst $38
    ld e, [hl]
    rst $38
    ld a, a
    rst $38
    ld a, d
    rst $38
    ret c

    rst $38
    ldh a, [rIE]
    ret


    cp $b9
    cp $32
    db $fd
    add e
    db $fc
    add c
    cp $81
    cp $d1
    cp $c7
    ld hl, sp-$5a
    reti


    rst $38
    ret nz

    cp l
    jp nz, $e0df

    ld e, a
    and b
    rst $18
    jr nz, @-$17

    jr jr_07f_6d62

    ld b, b
    cp a
    ld b, b
    scf
    ret z

    ld a, a
    add b
    cp $01
    ld a, a
    add b
    cp a
    ld b, b
    or a
    ld b, b
    ld e, l
    and d
    rra
    ldh [$67], a
    sbc b
    cp a
    ld b, b
    ld a, a
    add b
    sbc a
    ld h, b
    ld l, a
    sub b
    rst $18
    jr nz, @-$21

    ld [hl+], a
    dec e
    ld [c], a
    rla
    add sp, $1d
    ld [c], a
    dec h
    jp c, $f8c7

    ld l, c
    or $45
    ld a, [$fae5]
    ld b, $fd
    add b
    rst $38
    ld [de], a
    rst $38
    ld a, [hl-]
    rst $38
    ei
    rst $38
    di
    rst $38
    xor d
    rst $38
    ld [hl], a
    rst $38
    or l
    rst $38
    adc [hl]
    rst $38
    ld a, e
    rst $38
    rst $28
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    sbc h
    ld h, e
    cp d
    ld b, l
    sbc e
    ld h, h
    nop
    rst $38
    dec d
    cp $22
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
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld b, b
    rst $38
    ld b, h
    rst $38
    inc b
    rst $38
    inc b
    rst $38
    inc [hl]
    rst $38
    ret z

    rst $38
    ldh [rIE], a
    dec b
    rst $38
    inc sp
    rst $38
    ld sp, hl
    rst $38
    ld a, [$bfff]
    rst $38
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ccf
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
    rst $28
    db $10
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $28
    rst $38
    rst $28
    rst $38
    rst $38
    rst $38
    ld e, [hl]
    rst $38
    rst $30
    rst $38
    rst $18
    rst $38
    sbc $ff
    db $f4
    rst $38
    ld e, c
    rst $38
    ret c

    rst $38
    dec e
    rst $38
    ld bc, $08ff
    rst $30
    inc [hl]
    rst $08
    ld b, d
    cp l
    ret nc

    cpl
    cp d
    ld b, a
    ld e, b
    and a
    cp l
    ld b, d
    ld [hl], $c9
    ld b, $f9
    dec hl
    call nc, Call_07f_48b7
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $18
    nop
    rst $38
    nop
    rst $18
    nop
    rst $38
    nop
    ld a, a
    add b
    rst $28
    db $10
    pop de
    nop
    ld b, h
    add b
    cp a
    nop
    dec d
    nop
    add c
    nop
    ret


    nop
    xor [hl]
    nop
    or h
    ld [$0c12], sp
    add h
    nop
    ld hl, $3600
    nop
    ld [$fb10], a
    nop
    db $ed
    db $10
    push af
    ld [$10ef], sp
    ld l, e
    sub h
    ei
    inc b
    ld d, e
    xor h
    inc b
    ei
    dec d
    ld a, [$f788]
    ld d, [hl]
    rst $38
    call nc, $f4ff
    rst $38
    add sp, -$01
    cp l
    rst $38
    or e
    rst $38
    cp a
    rst $38
    rst $18
    rst $38
    cp [hl]
    rst $38
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
    cp $01
    ld a, [hl]
    add c
    ld a, [hl]
    add c
    ld [hl], b
    adc a
    call Call_000_1b32
    db $e4
    ld a, [bc]
    push af
    ld b, $f9
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
    nop
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
    ld h, h
    rst $38
    or [hl]
    rst $38
    ld c, $ff
    rrca
    rst $38
    rrca
    rst $38
    rst $18
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
    ccf
    rst $38
    cp $01
    rst $38

jr_07f_6f41:
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, [$bfff]
    rst $38
    rst $10
    rst $38
    rst $28
    rst $38
    push af
    rst $38
    ld h, e
    rst $38
    pop hl
    rst $38
    ld h, d
    rst $38
    ld b, d
    rst $38
    ld b, b
    rst $38
    call Call_000_2cf3
    db $d3
    xor d
    push de
    ld d, h
    db $eb
    db $10
    rst $28
    jr z, jr_07f_6f41

    ld d, c
    xor [hl]
    dec l
    jp nc, $807f

    push af
    ld a, [bc]
    ei
    inc b
    or d
    ld c, l
    rst $38
    nop
    ld a, a
    add b
    rst $38
    nop
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    nop
    rst $38
    nop
    cp $01
    rst $38
    nop
    ei
    inc b
    rst $38
    nop
    ld a, a
    nop
    cp [hl]

jr_07f_6f8f:
    ld b, c
    ei
    nop
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    ld a, a
    nop
    cp a
    nop
    ccf
    nop
    cp c
    ld b, $3f
    nop
    ld a, a
    nop
    cp $01
    or h
    dec bc
    ld a, l
    ld [bc], a
    rst $18
    jr nz, jr_07f_6f8f

    dec e
    sub h
    ld l, e
    ld d, d
    xor l
    rst $30
    ld [$22dd], sp
    sbc h
    ld h, e
    inc d
    db $eb
    inc d
    db $eb
    call nz, $80fb
    rst $38
    ld b, b
    rst $38
    db $eb
    rst $38
    ld hl, $90ff
    rst $38
    ld d, c
    rst $38
    xor e
    rst $38
    jp hl


    rst $38
    di
    rst $38
    di
    rst $38

jr_07f_6fd2:
    ld [c], a
    rst $38
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
    nop
    rst $38
    nop
    rst $38
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
    rst $08
    jr nc, jr_07f_6fd2

    jr nz, jr_07f_706e

    add [hl]
    ld l, e
    sub h
    xor l
    ld d, d
    or a
    ld c, b
    jp c, $8825

    ld [hl], a
    nop
    rst $38
    nop
    rst $38
    jr nz, @+$01

    and b
    rst $38
    adc b
    rst $38
    ret nz

    rst $38
    db $ec
    rst $38
    db $ed
    rst $38
    pop af
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, a
    rst $38
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
    db $ec
    rst $38
    rst $30
    rst $38
    db $ed
    rst $38
    ei
    rst $38
    ld l, a
    rst $38
    xor [hl]
    rst $38
    call $03ff
    rst $38
    nop
    rst $38
    add d
    ld a, a
    ld [$80f7], sp
    ld a, a
    adc b
    ld [hl], a
    ld e, c
    xor [hl]
    ld a, c
    adc a
    ld [hl], l
    adc e
    or b
    ld c, a
    db $fc
    inc bc
    ld sp, hl
    ld b, $fc
    inc bc
    rst $38
    nop
    ld a, a
    add b
    db $fc
    inc bc
    rst $38
    nop
    rst $38
    nop

jr_07f_706e:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    rst $20
    nop
    ld a, a
    add b
    ld a, d
    add b
    di
    nop
    db $f4
    nop
    db $fd
    nop
    cp $00
    ld a, a
    add b
    ld a, l
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp $00
    rst $38

Jump_07f_708f:
    nop
    rst $38
    nop
    rst $30
    ld [$807f], sp
    cp $00
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    ld a, a
    add b
    adc a
    ld [hl], b
    rst $08
    jr nc, jr_07f_70e0

    call nz, $ed12
    sub $6d
    adc h
    ld [hl], a
    ld c, a
    or $80
    rst $38
    add c
    rst $38
    ret


    rst $38

jr_07f_70b4:
    and l
    rst $38
    ld a, h
    rst $38
    ld a, [hl]
    rst $38
    ld a, l
    rst $38
    rst $30
    rst $38
    ei
    rst $38
    ld a, d
    rst $38
    scf
    rst $38
    push af
    rst $38
    rst $38
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
    ld b, b
    rst $18
    jr nz, jr_07f_70b4

    jr nz, jr_07f_70f6

    ldh [rNR22], a
    add sp, $3f
    ret nz

    rla
    add sp, $08
    rst $30

jr_07f_70e0:
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
    nop
    rst $38
    add b
    rst $38
    ld b, b
    rst $38
    nop
    rst $38

jr_07f_70f6:
    db $10
    rst $38
    nop
    rst $38
    add b
    rst $38
    call $95ff
    rst $38
    rst $30
    rst $38
    ld sp, hl
    rst $38
    rst $30
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
    db $fd
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    ld a, a
    rst $38
    db $fd
    rst $38
    ld sp, hl

jr_07f_711d:
    rst $38
    ld e, l
    rst $38
    ld l, a
    rst $38
    rst $10
    rst $38
    sbc $ff
    ld a, c
    rst $38
    cpl
    rst $38
    ld d, e
    rst $38
    ld [c], a
    rst $38
    ld h, b
    rst $38
    db $10
    rst $28
    add hl, bc
    rst $30
    jr jr_07f_711d

    ld a, [c]
    adc l
    add hl, de
    and $72
    adc l
    ld l, a
    sub b
    call c, Call_07f_6b23
    sub h
    or a
    ld c, b
    db $fd
    ld [bc], a
    cp a
    ld b, b
    ld a, a
    add b
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld l, a
    nop
    rst $38
    nop
    db $fd
    ld [bc], a
    cp a
    nop
    sbc a
    nop
    ld e, e
    nop
    rst $38
    nop
    xor a
    nop
    xor d
    inc b
    ld e, $00
    ld b, e
    nop
    rst $28
    nop
    xor c
    nop
    call nz, $5100
    nop
    jp nc, $c800

    nop
    ld a, [de]
    nop
    xor h
    nop
    pop bc
    nop
    ld d, h
    nop
    db $ec
    nop
    rst $38
    nop
    cp $00
    rst $28
    db $10
    rst $38
    nop
    db $fd
    ld [bc], a
    cp $01
    ld a, [c]
    dec c
    jp c, $f525

    ld a, [bc]
    ret nz

    ccf
    ld bc, $c9ff
    rst $30
    inc [hl]
    rst $38
    add hl, de
    rst $38
    sub $ff
    ld c, l
    rst $38
    sbc a
    rst $38
    ld a, c
    rst $38
    ld e, a
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
    nop
    rst $38
    nop
    rst $38
    nop
    pop af
    ld c, $e1
    ld e, $40
    cp a
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
    jr nz, @+$01

    add b
    rst $38
    ret nz

    rst $38
    and b
    rst $38
    ld [c], a
    rst $38
    xor c
    rst $38
    ldh [rIE], a
    db $eb
    rst $38
    ei
    rst $38
    ld a, [$ffff]
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    db $dd
    rst $38
    cp a
    rst $38
    cp a
    rst $38
    sbc a
    rst $38
    ei
    rst $38
    rst $10
    rst $38
    rst $18
    rst $38
    xor e
    rst $38
    inc a
    rst $38
    ld a, $ff
    cpl
    rst $38
    ld d, d
    rst $38
    ld [hl], $ff
    add b
    ld a, a
    ld b, b
    rst $38
    ld [bc], a
    rst $38
    ld c, b
    cp a
    add b
    ld a, a
    ret nz

    ccf
    ld l, b
    sub a
    cp d
    ld b, l
    ld a, e
    add h
    add [hl]
    ld a, c
    db $eb
    inc d
    rst $38
    nop
    rst $30
    ld [$04fb], sp
    ld sp, hl
    ld b, $fc
    inc bc
    db $76
    adc c
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    scf
    nop
    db $db
    inc b
    dec a
    ld [bc], a
    cp a
    nop
    dec hl
    nop
    ccf
    nop
    dec e
    nop
    add hl, hl
    nop
    ld h, e
    nop
    inc de
    nop
    rrca
    nop
    dec a
    nop
    cpl
    db $10
    ld c, $11
    ld e, a
    nop
    ld c, $11
    ld a, a
    nop
    cp h
    inc bc
    ld a, h
    inc bc
    db $ec
    inc de
    call $9032
    ld l, a
    ld [hl], h
    adc e
    ld c, h
    or e
    ret nz

    rst $38
    ld a, [hl]
    rst $38
    scf
    rst $38
    ld e, l
    rst $38
    rst $00
    rst $38
    ld a, a
    rst $38
    rst $10
    rst $38
    ei
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
    db $fd
    ld [bc], a
    db $fd
    ld [bc], a
    pop af
    ld c, $c1
    ld a, $f1
    ld c, $d2
    dec l
    ld c, d
    or l
    nop
    rst $38
    nop
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
    rst $38
    add b
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld bc, $01ff
    rst $38
    ld bc, $02ff
    rst $38
    ld b, b
    rst $38
    call z, $deff
    rst $38
    rst $18
    rst $38
    cp e
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    db $fd
    ld [bc], a
    rst $38
    nop
    db $fd
    ld [bc], a
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
    rst $18
    jr nz, @+$01

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
    cp a
    rst $38
    cp a
    rst $38
    rst $38
    rst $38
    db $eb
    rst $38
    cp a
    rst $38
    db $fd
    rst $38
    rst $28
    rst $38
    scf
    rst $38
    ld a, $ff
    ld [hl+], a
    rst $38
    ld c, c
    rst $38
    ld l, c
    rst $38
    ld h, c
    cp a
    ld b, b
    rst $38
    ld [$82f7], sp
    ld a, a
    add h
    ld a, a
    ld d, c
    xor a
    ld b, d
    cp l
    ld d, d
    xor l
    and l
    ld e, d
    add b
    ld a, a
    ret nz

    ccf
    xor b
    ld d, a
    or b
    ld c, a
    jp nc, $c82f

    scf
    ld h, h
    sbc e
    ld [hl], h
    adc e
    or h
    ld c, e
    push hl
    ld a, [de]
    push hl
    ld a, [de]
    db $f4
    dec bc
    call c, $e823
    rla
    add sp, $17
    sbc d
    ld h, l
    push hl
    dec de
    ld b, d
    cp a
    xor b
    ld d, a
    or c
    ld c, a
    and e
    ld a, a
    sub $3f
    inc bc
    rst $38
    scf
    rst $38
    ld [hl], a
    rst $38
    ld c, c
    rst $38
    dec e
    rst $38
    ld e, a
    rst $38
    cp a
    rst $38
    db $dd
    rst $38
    or h
    rst $38
    sbc a
    rst $38
    ld l, e
    rst $38
    rst $08
    rst $38
    rst $28
    rst $38
    rst $10
    rst $38
    ei
    rst $38
    rst $38
    rst $38
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
    nop
    rst $18
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $30
    ld [$08f7], sp
    cp $01
    db $fd
    ld [bc], a
    sbc h
    ld h, e
    ld [$01f7], sp
    cp $00
    rst $38
    nop

jr_07f_7393:
    rst $38
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
    ld [bc], a
    rst $38
    daa
    rst $38
    rrca
    rst $38
    rrca
    rst $38
    add e
    rst $38
    and [hl]
    rst $38
    or $ff
    rst $38
    rst $38
    rst $38
    rst $38
    ld e, d
    and b
    inc e
    ldh [$98], a
    ld h, b
    cp b
    ld b, b
    ret c

jr_07f_73b9:
    jr nz, jr_07f_7393

    jr nz, jr_07f_73b9

    nop
    db $fc
    nop
    ei
    cp $f1
    cp $f5
    cp $f5
    cp $f7
    db $fc
    ld a, [$f3fd]
    db $fc
    ei
    db $fc
    db $fd
    ld a, [$fcf3]
    pop af
    cp $fe
    ld sp, hl
    cp $f9
    push af
    ld a, [$fbf4]
    db $fc
    di
    or $f9
    or $f9
    ei
    db $f4
    rst $30
    ld hl, sp-$21
    ldh a, [$e3]
    db $fc
    rst $28
    ldh a, [rIE]
    ldh a, [$6e]
    ldh a, [$e7]
    ld hl, sp-$13
    ldh a, [$ee]
    ldh a, [$3e]
    ldh a, [$5f]
    ldh a, [$de]
    ldh a, [$af]
    ldh a, [$cf]
    ldh a, [$ef]
    ldh a, [$3f]
    ldh a, [$2b]
    db $f4
    ld l, e
    db $f4

jr_07f_740a:
    rrca
    ldh a, [$8f]
    ld [hl], b
    adc e
    ld [hl], h
    rrca
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [$2f]
    ldh a, [rIF]
    ldh a, [rTMA]
    ld hl, sp+$27
    ld hl, sp-$42
    pop af
    ld d, a
    ld hl, sp+$37
    ld hl, sp-$59
    ld hl, sp+$3f
    ldh a, [$e7]
    ld a, b
    ld [hl], $f9

jr_07f_742c:
    ld [hl], a
    ld hl, sp-$0f
    cp $7a
    db $fd
    or b
    rst $38
    db $f4
    rst $38
    ld sp, hl
    cp $f9
    cp $fc
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    ld a, [$fcff]
    rst $38
    ld hl, sp-$01
    ei
    rst $38
    cp $ff
    db $fc
    rst $38
    db $fd
    rst $38
    cp $ff
    rst $38
    nop
    rst $38
    nop
    xor $10
    cp [hl]
    ld b, b
    rst $18
    jr nz, jr_07f_740a

    ld d, b
    ld l, a
    sub b
    db $ed
    db $10
    rst $28
    db $10
    xor $10
    jr c, jr_07f_742c

    add hl, de
    and $2d
    jp nc, Jump_07f_708f

    rrca
    ldh a, [rBGP]
    cp b
    ld c, $f0
    rlca
    ld hl, sp-$71
    ld [hl], b
    rlca
    ld hl, sp+$01

jr_07f_7479:
    cp $07
    ld hl, sp+$03
    db $fc
    rlca
    ld hl, sp+$07
    ld hl, sp+$07
    ld hl, sp+$01
    cp $01
    cp $01
    cp $25
    ld a, [$fda2]
    add a
    cp $b1
    cp $61
    cp $f0
    rst $38
    pop de

jr_07f_7497:
    cp $f0
    rst $38
    ldh a, [rIE]
    ld hl, sp-$01
    rst $38
    cp $f8
    rst $38
    ld hl, sp-$01
    rst $38
    cp $f8
    rst $38
    cp $ff
    ld hl, sp-$01
    ld a, [$f8ff]
    rst $38
    ld a, a
    add b
    ld a, [hl]
    add b
    db $fc
    nop
    db $fc
    nop
    ld a, [hl]
    add b
    ld sp, hl
    nop
    ld hl, sp+$00
    db $f4
    nop
    ld [hl], b
    add b
    ldh a, [rP1]
    or b
    ld b, b
    ret nz

    nop
    ldh a, [rP1]
    ldh a, [rP1]
    db $f4
    nop
    db $e4
    nop
    ldh [rP1], a
    or b
    nop
    pop af
    jr nz, jr_07f_7497

    jr nz, jr_07f_7479

    nop
    add b
    nop
    ret z

    nop
    ret nz

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
    add b
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    ld de, $4000
    nop
    or b
    nop
    ld h, b
    nop
    ldh [rP1], a
    ldh a, [rP1]
    ld c, b
    nop
    ld [hl-], a
    nop
    ld bc, $3200
    nop
    stop
    ld [hl+], a
    nop
    ld [bc], a
    nop
    ld b, b
    nop
    ld [bc], a
    nop
    ld b, d
    nop
    ldh [rSB], a
    rst $20
    nop
    and [hl]
    nop
    or h
    nop
    push af
    nop
    db $e3
    nop
    ld a, e
    add b
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
    ld e, a
    and b
    db $dd
    ld [hl+], a
    inc a
    jp Jump_07f_4cb3


    ld l, [hl]
    sub c
    ld d, a
    xor b
    jp Jump_000_203c


    rst $18
    ld bc, $01ff
    rst $38
    inc c
    rst $38
    inc bc
    rst $38
    sub h
    rst $38
    sbc h
    rst $38
    ld d, e
    rst $38
    and d
    rst $38
    add b
    rst $38
    ld a, [hl-]
    rst $38
    sbc h
    rst $38
    ld a, [hl-]
    rst $38
    dec bc
    rst $38
    sbc e
    rst $38
    db $eb
    rst $38
    db $ec
    rst $38
    jp z, $ecff

    rst $38
    ld c, c
    rst $38
    inc a
    rst $38
    cp a
    rst $38
    ld a, l
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $30
    nop
    rst $38
    nop
    rst $30
    nop
    cp $01
    rst $28
    nop
    rst $20
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    ld b, b
    ei
    inc b
    rst $30
    ld [$00ff], sp
    rst $38
    nop
    rst $38
    nop
    rst $30
    ld [$00ff], sp
    rst $18

jr_07f_7597:
    jr nz, jr_07f_7597

    ld bc, $00ff
    ld l, a
    sub b
    ccf
    ret nz

    ld l, $d1
    ld c, a
    or b
    dec hl
    call nc, $fc03
    dec b
    ld a, [$f50a]
    ld [bc], a
    db $fd
    add [hl]
    ld a, c
    sub b
    nop
    and b
    nop
    jr nz, jr_07f_75b6

jr_07f_75b6:
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
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_07f_75e4

jr_07f_75e4:
    nop
    nop
    nop
    nop
    nop
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
    inc b
    nop
    ld [$0800], sp
    nop
    add l
    nop
    ld [$e800], a
    nop
    jr jr_07f_7624

    ld a, b
    nop
    ld a, b
    nop
    inc sp
    nop
    or e
    nop
    dec sp
    nop
    sbc $00
    cp [hl]
    nop
    rst $30
    nop
    ld a, a
    ld [bc], a
    ld a, a
    nop
    rst $38
    nop
    rst $38
    nop
    call c, $cf23
    ld [hl-], a
    adc a
    ld [hl], b
    rst $38
    nop

jr_07f_7624:
    ld l, l
    sub d
    pop af
    ld c, $c9
    ld a, $cb
    ccf
    reti


    ccf
    ld a, [de]
    db $fd
    inc e
    ei
    ld e, [hl]
    pop af
    add h
    ld a, e
    ld l, c
    or a
    or h
    ld l, e
    ret z

    scf
    ld b, $fb
    ld sp, $62df
    sbc a
    db $e4
    dec de
    ld e, l
    and e
    dec e
    db $e3
    sbc h
    db $e3
    cp b
    rst $00
    sbc b
    rst $20
    ld sp, $10cf
    rst $28
    ld b, d
    rst $38
    ret


    rst $38
    ld d, d
    rst $38
    rla
    rst $38
    ld [hl], b
    rst $38
    adc c
    rst $38
    xor l
    rst $38
    sbc b
    rst $38
    ld a, l
    rst $38
    scf
    rst $38
    rst $10
    rst $38
    ld a, [$ffff]
    rst $38
    ei
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
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
    cp a
    ld b, b
    rst $38
    nop
    ld a, a
    add b
    ccf
    ret nz

    ld a, a
    add b
    ld l, a
    sub b
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
    db $fd
    ld [bc], a
    ei
    inc b
    push af
    ld a, [bc]
    or e
    ld c, h
    sub e
    ld l, h
    pop bc
    ld a, [hl]
    ld bc, $10fe
    rst $28
    nop
    nop
    nop
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
    ld bc, $0000
    nop
    nop
    nop
    inc b
    nop
    ld [$1a00], sp
    nop
    ld b, $00
    dec b
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
    ld b, b
    nop
    ld [$0000], sp
    nop
    nop
    nop
    ret nz

    nop
    nop
    nop
    nop
    nop
    nop
    nop
    add b
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
    ld l, a
    nop
    rst $38
    nop
    rst $38
    nop
    di
    inc b

jr_07f_7702:
    rst $18
    jr nz, jr_07f_7702

    nop
    ld a, a
    add c
    rst $38
    inc bc
    ld hl, sp+$07
    rst $38
    nop
    rst $30
    ld [$21de], sp
    call c, $f223
    dec c
    ld a, [$260d]
    reti


    dec de
    push hl
    jp z, Jump_07f_42f5

    db $fd
    ld h, d
    db $dd
    ld e, b
    and a
    ld [$00f7], sp
    rst $38
    ld [hl+], a
    rst $18
    nop
    rst $38

jr_07f_772c:
    ld b, e
    cp a
    add h
    ld a, a
    ld e, $ef
    db $10
    rst $38
    add b
    rst $38
    inc b
    rst $38
    jr @+$01

    add e
    rst $38
    adc [hl]
    rst $38
    ld h, $ff
    add d
    rst $38
    ld bc, $95ff
    ld a, a
    and [hl]
    ld a, a
    ld l, h
    rst $38
    cp e
    rst $38
    ld a, h
    rst $38
    ret c

    rst $38
    cp b
    rst $38
    ld [hl], a
    rst $38
    ei
    rst $38
    sbc e
    rst $38
    call z, $cfff
    rst $38
    rst $28
    rst $38
    push af
    rst $38
    ld h, [hl]
    nop
    ld l, e
    nop
    add sp, $00

jr_07f_7766:
    cp $00
    sbc $20
    rst $38
    nop
    push af
    nop
    ld a, [c]
    nop
    ld a, e
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
    rst $08
    nop
    rst $28
    nop
    rst $28
    nop
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
    rst $20
    jr jr_07f_7766

    jr z, @+$01

    ld bc, $41be
    rst $28
    db $10
    rst $38
    nop
    rst $28
    db $10
    rst $08
    jr nc, jr_07f_772c

    ld [hl], b
    sbc a
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
    inc b
    nop
    ld [bc], a
    nop
    ld b, $00
    inc c
    nop
    jr nz, jr_07f_77b4

jr_07f_77b4:
    jr nz, jr_07f_77b6

jr_07f_77b6:
    ret nz

    nop
    add b
    nop
    nop
    nop
    nop
    nop
    adc c
    nop
    add b
    nop
    stop
    ld [bc], a
    nop
    stop
    inc b
    nop
    ld [$0000], sp
    nop
    ld [$0300], sp
    nop
    ld bc, $0800
    nop
    inc c
    nop
    nop
    nop
    nop
    nop
    stop
    inc d
    nop
    ld d, $00
    jr nc, jr_07f_77e4

jr_07f_77e4:
    nop
    nop
    stop
    ld a, [bc]
    nop
    sub h
    nop
    add hl, de
    nop
    dec hl
    db $10
    ld [hl], c
    nop
    ld hl, sp+$00
    db $fd
    nop
    rst $38
    nop
    xor $00
    cp [hl]
    nop
    ld a, $00
    cp a
    nop
    ld a, e
    inc b
    rst $38
    nop
    rst $38
    nop
    di
    ld c, $fb
    ld c, $fb
    inc b
    rst $38
    nop
    cp a
    ld b, b
    ccf
    ret nz

    ld a, a
    add b
    ld a, e
    add l
    jp c, $0c25

    di
    ld e, $e7
    and e
    ld e, a
    ld h, c
    cp a
    ld b, d
    cp a
    add d
    ld a, l
    add c
    rst $38
    ld bc, $64ff
    cp a
    ld h, d
    rst $38
    and [hl]
    ld a, l
    ret


    ld a, a
    inc l
    rst $38
    and a
    rst $38
    ld h, e
    rst $38
    ld h, $ff
    or $ff
    sub d
    rst $38
    ld e, [hl]
    rst $38
    adc h
    rst $38
    push af
    rst $38
    ld l, a
    rst $38
    ld bc, $c1ff
    cp $a8
    rst $38
    reti


    rst $38
    inc l
    rst $38
    or d
    rst $38
    ccf
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $20
    rst $38
    rst $00
    rst $38
    rst $08
    rst $38
    adc c
    rst $38
    push de
    rst $38
    ret


    rst $38
    ld e, d
    rst $38
    rst $38
    rst $38
    rst $30
    rst $38
    cp $ff
    cp a
    rst $38
    xor a
    rst $38
    db $dd
    rst $38
    cp $00
    db $eb
    inc d
    jp hl


    ld b, $fc
    inc bc
    db $fc
    inc bc
    cp $01
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
    ld a, a
    add b
    db $fd
    ld [bc], a
    rst $38
    nop
    inc b
    nop
    inc b
    nop
    jr nz, jr_07f_7896

jr_07f_7896:
    inc d
    nop
    dec b
    nop
    ld bc, $0100
    nop
    dec bc
    nop
    ld h, $00
    inc bc
    nop
    ld b, e
    nop
    ld d, b
    nop
    or c
    nop
    ld hl, $3f00
    nop
    rla
    nop
    ld h, e
    nop
    ld d, a
    nop
    call nc, Call_000_3800
    nop
    add hl, sp
    nop
    call nc, $ac00
    nop
    ld a, l
    nop
    ld a, h
    nop
    ld e, $00
    ld e, $00
    ld d, $00
    ld d, $00
    add hl, hl
    nop
    ld b, b
    nop
    add e
    nop
    ld de, $1100
    nop
    inc bc
    nop
    inc bc
    nop
    ld l, c
    nop
    dec b
    nop
    xor c
    nop
    dec hl
    nop
    db $ed
    nop
    sub d
    nop
    ld a, a
    nop
    rst $28
    nop

jr_07f_78e8:
    rst $38
    nop
    rst $18
    jr nz, jr_07f_796c

    jr nz, jr_07f_7962

    jr nz, jr_07f_78e8

    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    ld a, [$fe04]
    nop
    rst $38
    nop
    rst $38
    nop
    cp a
    nop
    ld a, l
    add d
    xor a
    ret nc

    rst $28
    sub b
    ld c, h
    or e
    call c, Call_000_1ba3
    db $e4
    ld de, $04ee
    ei
    sub e
    rst $28
    ld b, l
    cp $45
    ld a, [$ff42]
    dec b
    rst $38
    ld bc, $06ff
    rst $38
    or c
    rst $38
    add hl, hl
    rst $38
    ld b, l
    rst $38
    sub h
    rst $38
    call nz, Call_07f_53ff
    rst $38
    ld a, [de]
    rst $38
    cp c
    rst $38
    ld de, $56ff
    rst $38
    inc de
    rst $38
    xor c
    rst $38
    or d
    rst $38
    push af
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38

jr_07f_7942:
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
    rst $30
    rst $38
    ld c, a
    rst $38
    ld [bc], a
    nop
    sbc c
    nop
    ld e, h
    nop
    ld a, a
    nop
    ld b, a
    jr jr_07f_7942

    jr jr_07f_79bb

    add c
    ld a, a
    add b
    cp h
    ld b, b

jr_07f_7962:
    xor a
    ld b, b
    rst $38
    nop
    ld [hl], a
    add b
    ld a, a
    add b
    ld [hl], a
    add b

jr_07f_796c:
    rst $38
    nop
    rst $38
    nop
    rst $38
    nop
    db $dd
    jr nz, @+$01

    nop
    rst $38
    nop
    rst $38
    nop
    xor a
    ld d, b
    ei
    inc b
    rst $38
    nop
    rst $18
    jr nz, @+$01

    nop
    cp a
    ld b, b
    rst $30
    ld [$04fb], sp
    ret c

    daa
    ld a, [c]
    rrca
    rst $30
    rrca
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
    jr jr_07f_79c3

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07f_79d3

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07f_79e3

    ld a, [hl+]

jr_07f_79bb:
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07f_79f3

    ld [hl-], a

jr_07f_79c3:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07f_7a03

    ld a, [hl-]
    dec sp
    inc a
    dec a
    ld a, $3f
    ld b, b
    ld b, c
    ld b, d

jr_07f_79d3:
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

jr_07f_79e3:
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

jr_07f_79f3:
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

jr_07f_7a03:
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
    add l
    add l
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

    ld a, l
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
    jr jr_07f_7ac6

    ld a, [de]
    dec de
    inc e
    dec e
    ld e, $1f
    jr nz, jr_07f_7ad6

    ld [hl+], a
    inc hl
    inc h
    dec h
    ld h, $27
    jr z, jr_07f_7ae6

    ld a, [hl+]
    dec hl
    inc l
    dec l
    ld l, $2f
    jr nc, jr_07f_7af6

    ld [hl-], a

jr_07f_7ac6:
    inc sp
    inc [hl]
    dec [hl]
    ld [hl], $37
    jr c, jr_07f_7b06

    ld a, [hl-]
    dec sp
    inc a
    nop
    nop
    nop
    nop
    nop
    nop

jr_07f_7ad6:
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0000
    nop
    nop
    nop

jr_07f_7ae6:
    nop
    nop
    nop
    nop
    nop
    inc bc
    ld [bc], a
    ld bc, $0101
    ld bc, $0202
    ld [bc], a
    nop
    nop

jr_07f_7af6:
    nop
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0101
    ld bc, $0101
    ld [bc], a
    ld [bc], a
    ld [bc], a

jr_07f_7b06:
    ld [bc], a
    nop
    nop
    nop
    nop
    inc bc
    nop
    ld bc, $0002
    ld bc, $0101
    ld [bc], a
    ld bc, $0201
    ld [bc], a
    nop
    ld [bc], a
    inc bc
    inc bc
    nop
    ld bc, $0000
    ld [bc], a
    ld bc, $0002
    ld [bc], a
    ld [bc], a
    nop
    ld [bc], a
    ld [bc], a
    inc bc
    inc bc
    ld bc, $0101
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
    ld [bc], a
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
    ld bc, $0101
    ld bc, $0002
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    inc b
    inc bc
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld [bc], a
    nop
    nop
    nop
    nop
    nop
    dec b
    inc bc
    nop
    nop
    nop
    ld [bc], a
    nop
    ld bc, $0101
    ld bc, $0001
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    nop
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld bc, $0101
    ld bc, $0101
    nop
    nop
    ld [bc], a
    ld [bc], a
    ld [bc], a
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
    ld bc, $0102
    ld bc, $0101
    ld bc, $0201
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
    ld bc, $0202
    ld [bc], a
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
    ld [bc], a
    nop
    nop
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$0808], sp
    ld [$07df], sp
    rst $18
    rlca
    xor e
    rlca
    db $eb
    rlca
    ei
    inc bc
    ld d, c
    inc bc
    sbc a
    ld bc, $0198
    db $ec
    ld bc, $00f5
    rst $18
    jr nz, @-$41

    nop
    sbc [hl]
    nop
    adc [hl]
    add b
    adc a
    add b
    cp a
    nop
    ld d, l
    nop
    dec c
    nop
    ld [hl], a
    nop
    ld a, $c0
    ld l, [hl]
    add b
    pop af
    ld b, b
    sbc a
    ld h, b
    ld sp, hl
    nop
    ld [c], a
    nop
    xor d
    nop
    ldh a, [rSC]
    pop af

jr_07f_7c47:
    nop
    jp hl


    nop
    ld c, $00
    db $e4
    nop
    cp $00
    ld [hl], h
    nop
    db $fc
    nop
    add a
    ld h, b
    ld [hl+], a
    inc c
    jp hl


    db $10
    ld e, d
    nop
    ld a, l
    add b
    rst $30
    ld c, b
    ld a, e
    add b
    xor b
    ld d, h
    db $fc
    nop
    ld c, c
    nop
    ld [hl], l
    nop
    db $d3
    nop
    ld a, a

jr_07f_7c6d:
    add b
    db $f4
    nop
    ld b, b
    add b
    ldh a, [rP1]
    ret nc

    jr nz, jr_07f_7c47

    jr nz, jr_07f_7c6d

    nop
    ldh [rP1], a
    add sp, $00
    ld a, h
    nop
    cp c
    nop
    db $db
    nop
    cp $00
    rst $38
    nop
    sbc e
    nop
    ld sp, hl
    nop
    jp nz, $cd01

    nop
    ei
    nop
    ld l, d

jr_07f_7c93:
    nop
    ld b, e
    db $10
    di
    nop
    xor a
    nop
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_07f_7c93

    dec e
    sub e
    ld a, a
    sub h
    ld a, e
    sub c
    ld a, [hl]
    add h
    ei
    nop
    rst $38
    db $10
    rst $28
    xor h
    rst $10
    ld a, h
    add a
    inc hl
    sbc $ff
    rst $20
    ld l, b
    rst $30
    add e
    db $fc
    ldh a, [rIE]
    db $f4
    ei
    rst $28
    rst $38
    nop
    rst $38
    nop
    rst $38
    inc l
    rst $38
    rst $38
    rst $38
    rst $38
    nop
    ld b, $00
    jr nz, @+$01

    add b
    rst $38
    rst $38
    nop
    ld a, e
    add b
    ei
    inc b
    rst $30
    ld [$01fe], sp
    rst $18
    jr nz, @+$01

    nop
    cp $01
    dec e
    ld [c], a
    db $e3
    rst $20
    db $e3
    di
    ld [hl], e
    di
    ld [hl], c
    ei
    ld [hl], a
    rst $38
    nop
    rst $38
    inc hl
    rst $38
    ret nz

    rst $38
    ldh a, [rIE]
    ldh a, [rIE]
    ret nz

    rst $38
    sub b
    rst $38
    ret nz

    rst $38
    ret nz

    rst $38
    nop
    rst $38
    inc l
    rst $38
    db $fc
    rst $38
    cp [hl]
    rst $38
    ldh a, [rIE]
    jr @+$01

    add sp, -$01
    ldh [rIE], a
    ld bc, $c5ff
    cp d
    and $9b
    ld h, h
    sbc e
    db $e4
    dec de
    or $09
    rst $38
    nop
    rst $38
    nop
    rst $18
    jr nz, jr_07f_7d9a

    rst $38
    db $fd
    ei
    add hl, sp
    rst $38
    ld a, a
    rst $38
    db $dd
    ld a, a
    rst $38
    ld e, a
    cp a
    ld e, a
    sbc a
    ld a, a
    rst $38
    ccf
    rst $18
    ccf
    rra
    ccf

jr_07f_7d36:
    ld a, $1f
    and a
    rra
    ld l, h
    rra
    sbc d
    rrca
    cpl
    rrca
    rlca
    rrca
    ld d, h
    rlca
    ld de, $0207
    dec b
    inc c
    inc bc
    ld [bc], a
    inc bc
    add c
    inc bc
    jp nc, Jump_07f_6001

    ld bc, $0100
    stop
    inc hl
    nop
    nop
    nop
    jr nz, jr_07f_7d5c

jr_07f_7d5c:
    jr nz, jr_07f_7d6e

    ret nc

    nop
    ld d, h
    nop
    nop
    nop
    nop
    nop
    jr nz, jr_07f_7d68

jr_07f_7d68:
    jr nz, jr_07f_7d6a

jr_07f_7d6a:
    ld h, b
    nop
    nop
    nop

jr_07f_7d6e:
    ld d, [hl]
    nop
    nop
    nop
    jr c, jr_07f_7d74

jr_07f_7d74:
    ld h, b
    nop
    ret nz

    nop
    jr nc, jr_07f_7d7a

jr_07f_7d7a:
    nop
    nop
    nop
    nop
    nop
    nop
    add h
    nop
    ret nc

    nop
    jr nz, jr_07f_7d86

jr_07f_7d86:
    jr z, jr_07f_7d88

jr_07f_7d88:
    and b
    nop
    and b
    nop
    ret nc

    nop
    or b
    nop
    adc $00
    ret nc

    nop
    ret c

    jr nz, @+$52

    jr nz, jr_07f_7d36

    nop

jr_07f_7d9a:
    sbc $00
    ld c, a
    nop
    ei
    nop
    rst $28
    db $10
    or a
    ret z

    ld d, a
    add sp, -$13
    ld [de], a
    ld d, e
    adc h
    ld [hl], h
    adc a
    and $99
    and a
    ld e, b
    db $eb
    inc c
    sbc a
    ldh [rBGP], a
    or b
    cpl
    ret nc

    ld c, a
    or b
    add d
    ld a, l
    jp nc, Jump_07f_513d

    cp $00
    rst $38
    nop
    rst $38
    db $dd
    rst $38
    rst $38
    rst $38
    ld hl, sp+$00
    jr nc, jr_07f_7ddb

    nop
    rst $38
    nop
    rst $38
    rst $28
    nop
    rst $38
    nop
    db $fd
    nop
    rst $38
    nop
    ld a, a
    add b
    ld a, a

jr_07f_7ddb:
    add b
    ld a, $c1
    rra
    ldh [rSB], a
    cp $8e
    adc [hl]
    adc [hl]
    adc [hl]
    adc $cf
    add $ef
    add a
    rst $38
    nop
    rst $38
    nop
    rst $38
    rlca
    rst $38
    inc bc
    rst $38
    inc b
    rst $38
    sub b
    rst $38
    jr nc, @+$01

    ld l, b
    rst $38
    jr nc, @+$01

    jr @+$01

    jr nz, @+$01

    db $e4
    rst $38
    ld bc, $00ff
    rst $38
    nop
    rst $38
    ld [bc], a
    rst $38
    nop
    rst $38
    nop
    rst $38
    ld d, b
    rst $28
    ldh [$7f], a
    and b
    ld a, a
    and c
    ld a, a
    inc b
    ei
    add h
    ld a, e
    add [hl]
    ld a, c
    call z, $f03b
    rra
    ld a, [hl]
    sub c
    jp hl


    sub a
    ld a, l
    jp Jump_07f_417e


    rst $30
    ld c, b
    cp e
    ld b, b
    rst $38
    nop
    sbc $00
    rst $38
    nop
    db $fd
    ld [bc], a
    rst $28
    ld bc, $01fa
    db $fd
    nop
    push de
    nop
    sbc $00
    rst $38
    nop
    db $fd
    nop
    cp [hl]
    nop
    ccf
    nop
    rst $18
    nop
    rst $38
    nop
    xor d
    db $10
    db $fc
    nop
    rst $38
    rst $38
    ld a, a
    rst $38
    rst $28
    rst $38
    ld a, a
    rst $38
    rst $38
    ld a, a
    ld e, a
    rst $38
    ld a, l
    ld a, a
    ccf
    ld a, a
    dec a
    ld a, a
    ld a, e
    ccf
    dec hl
    ccf
    cpl
    dec e
    dec de
    dec c
    inc c
    rra
    ld [$191f], sp
    rrca
    ld [$040f], sp
    rrca
    inc c
    rlca
    nop
    rlca
    rlca
    inc bc
    rlca
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    inc bc
    ld bc, $0101
    ld bc, $0101
    nop
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
    nop
    nop
    stop
    nop
    nop
    and b
    nop
    add [hl]
    nop
    sub b
    nop
    or [hl]
    ld b, b

jr_07f_7ea6:
    ret z

    jr nc, jr_07f_7f25

    add b
    dec sp
    ret nz

    ld e, e
    ldh [rIE], a
    nop
    ld a, e
    add b
    rst $28
    db $10
    rst $28
    db $10
    db $fd
    ld [bc], a
    sub h
    ld c, d
    add d
    ld a, d
    ld d, a
    rst $10
    rst $38
    rst $38
    nop
    rst $38
    nop
    rst $38
    rst $38
    rst $38
    cp $c0
    ld b, e
    nop
    nop
    rst $38
    nop

jr_07f_7ecd:
    rst $38
    nop
    rst $38
    db $eb
    rst $18
    db $dd
    rst $38
    ld a, [c]
    db $fd
    sbc $ff
    db $ed
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    rst $38
    push hl
    jr c, jr_07f_7f1b

    jr c, jr_07f_7f1d

    inc a
    jr c, jr_07f_7f24

    jr c, jr_07f_7ea6

    ldh [$df], a
    jr nz, jr_07f_7ecd

    nop
    rst $38
    nop
    rst $38
    ld [$00f7], sp
    rst $38
    ld bc, $00fe
    rst $38
    dec bc
    db $f4
    db $10
    rst $28
    ld bc, $0ffe
    ldh a, [rIF]
    ldh a, [$1f]
    ldh [$3f], a
    ret nz

    ld c, a
    or b
    ld a, a
    add b
    ccf
    ret nz

    ccf
    ret nz

    ccf
    rst $38
    ld a, a
    rst $38
    ld a, a
    rst $38
    rra
    rst $38
    rlca
    rst $38
    rlca

jr_07f_7f1b:
    rst $38
    inc bc

jr_07f_7f1d:
    rst $38
    ld b, e
    cp a
    add c
    ld a, a
    push bc
    dec sp

jr_07f_7f24:
    ld d, c

jr_07f_7f25:
    xor a
    ld h, c
    sbc a
    and b
    rst $18
    sub h
    db $eb
    and b
    rst $18
    ld d, e
    db $ed
    ld l, l
    di
    sbc c
    ld h, a
    jp hl


    rla
    ei
    dec b
    ld l, c
    sub a
    ld l, c
    sub a
    ld [hl], c
    adc a
    cp e
    ld b, l
    cp e
    ld b, l
    jp hl


    rlca
    db $fc
    inc bc
    db $fc
    inc bc
    ld hl, sp+$07
    sbc l
    ld [bc], a
    inc e
    inc bc
    rst $38
    nop
    rst $38
    nop
    rst $28
    nop
    cp $01
    ld l, [hl]
    ld bc, $01fe
    rst $38
    ld bc, $01fe
    rst $38
    nop
    rst $38
    nop
    ld e, a
    nop
    rla
    ld [$09f6], sp
    rst $38
    nop
    or e
    inc b
    rst $20
    nop
    db $fd
    ld [bc], a
    ld sp, hl
    ld [bc], a
    ld a, e
    nop
    ei
    nop
    rst $30
    nop
    rst $38
    nop
    rst $38
    nop
    db $fc
    ld [bc], a
    cp $02
    ld e, a
    rst $38
    ccf
    rst $38
    cp $7f
    cp $7f
    cp $7f
    cp $7f
    db $f4
    ld a, a
    rst $38
    ld a, h
    ld a, e
    ld a, a
    dec de
    ld a, a
    ld a, [hl]
    ccf
    ld [hl], e
    ccf
    scf
    rra
    ccf
    rra
    rrca
    rra
    rrca
    rra
    dec bc
    dec e
    ld c, $0f
    ld c, $3f
    adc a
    ccf
    cpl
    rlca
    rlca
    rlca
    db $db
    rlca
    ccf
    inc bc
    adc a
    inc de
    ld sp, hl
    inc bc
    ld c, e
    ld bc, $01f1
    sub e
    ld hl, $8130
    nop
    ld hl, sp-$64
    cp h
    nop
    rst $38
    ld [$e8ff], sp
    cp $00
    nop
    inc h
    nop
    nop
    rst $38
    nop
    rst $38
    nop
    rst $38
    cp h
    rst $38
    cp d
    rst $38
    cp [hl]
    ei
    jp z, $6bff

    rst $38
    inc e
    ei
    jp hl


    rst $38
    ld [$f3ff], a
    ldh [$60], a
    ldh a, [$71]
    pop af
    ld [hl], c
    ld sp, hl
    ld [hl], c
    ld sp, hl
    ld c, a
    or b
    sub a
    ld l, d
    add hl, sp
    add $7f
    add b
    ld a, e
    add h
    rst $38
    nop
    rst $38
    nop
    cp $00
    ld l, b
    add b
    ld hl, sp+$00
    db $fd
    nop
